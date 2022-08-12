using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data.Entity.Infrastructure;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebApplication5.Models;

namespace WebApplication5.Controllers
{
    public class HomeController : Controller
    {
        private DBProizvod db = new DBProizvod();

        [HttpGet]
        public ActionResult Index()
        {
            return View(db.Proizvods.ToList());
        }

        public ActionResult GetData()
        {
            using(DBProizvod db = new DBProizvod())
            {
                List<Proizvod> ProizvodList = db.Proizvods.ToList<Proizvod>();

                return Json(new { data = ProizvodList }, JsonRequestBehavior.AllowGet);
            }
        }

        [HttpPost]
        public ActionResult Upload(HttpPostedFileBase jsonFile)
        {
            using (DBProizvod db = new DBProizvod())
            {
                if (!jsonFile.FileName.EndsWith(".json"))
                {
                    ViewBag.Error = "Invalid file type(Only JSON file allowed)";
                }
                else
                {
                    jsonFile.SaveAs(Server.MapPath("~/FileUpload/" + Path.GetFileName(jsonFile.FileName)));
                    StreamReader streamReader = new StreamReader(Server.MapPath("~/FileUpload/" + Path.GetFileName(jsonFile.FileName)));
                    string data = streamReader.ReadToEnd();
                    List<Proizvod> products = JsonConvert.DeserializeObject<List<Proizvod>>(data);

                    products.ForEach(p =>
                    {
                        Proizvod product = new Proizvod()
                        {
                            Naziv = p.Naziv,
                            Opis = p.Opis,
                            Kategorija = p.Kategorija,
                            Proizvodjac = p.Proizvodjac,
                            Dobavljac = p.Dobavljac,
                            Cena = p.Cena
                        };
                        db.Proizvods.Add(product);
                        db.SaveChanges();
                    });
                    ViewBag.Success = "File uploaded Successfully..";
                }
            }
            return View("Index");
        }
    }
}