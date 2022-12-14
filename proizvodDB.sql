USE [Proizvod]
GO
/****** Object:  Table [dbo].[Proizvod]    Script Date: 8/12/2022 11:47:26 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Proizvod]') AND type in (N'U'))
DROP TABLE [dbo].[Proizvod]
GO
/****** Object:  Table [dbo].[Proizvod]    Script Date: 8/12/2022 11:47:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proizvod](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Naziv] [nvarchar](50) NOT NULL,
	[Opis] [nvarchar](50) NOT NULL,
	[Kategorija] [nvarchar](50) NOT NULL,
	[Proizvodjac] [nvarchar](50) NOT NULL,
	[Dobavljac] [nvarchar](50) NOT NULL,
	[Cena] [int] NOT NULL,
 CONSTRAINT [PK_Proizvod] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Proizvod] ON 

INSERT [dbo].[Proizvod] ([Id], [Naziv], [Opis], [Kategorija], [Proizvodjac], [Dobavljac], [Cena]) VALUES (13, N'Nike majca', N'Majca za Trcanje.', N'Majca', N'Nike', N'N Sport', 9000)
INSERT [dbo].[Proizvod] ([Id], [Naziv], [Opis], [Kategorija], [Proizvodjac], [Dobavljac], [Cena]) VALUES (14, N'Air Max', N'Patike za napolje', N'Patike', N'Nike', N'N sport', 12000)
INSERT [dbo].[Proizvod] ([Id], [Naziv], [Opis], [Kategorija], [Proizvodjac], [Dobavljac], [Cena]) VALUES (15, N'Nike 95', N'Patike za napolje', N'Patike', N'Nike', N'N sport', 12000)
INSERT [dbo].[Proizvod] ([Id], [Naziv], [Opis], [Kategorija], [Proizvodjac], [Dobavljac], [Cena]) VALUES (16, N'Nike 96', N'Patike za napolje', N'Patike', N'Nike', N'N sport', 12000)
INSERT [dbo].[Proizvod] ([Id], [Naziv], [Opis], [Kategorija], [Proizvodjac], [Dobavljac], [Cena]) VALUES (18, N'Air Max', N'Patike za napolje', N'Patike', N'Nike', N'N sport', 12000)
INSERT [dbo].[Proizvod] ([Id], [Naziv], [Opis], [Kategorija], [Proizvodjac], [Dobavljac], [Cena]) VALUES (19, N'Nike 95', N'Patike za napolje', N'Patike', N'Nike', N'N sport', 12000)
INSERT [dbo].[Proizvod] ([Id], [Naziv], [Opis], [Kategorija], [Proizvodjac], [Dobavljac], [Cena]) VALUES (20, N'Nike 96', N'Patike za napolje', N'Patike', N'Nike', N'N sport', 12000)
INSERT [dbo].[Proizvod] ([Id], [Naziv], [Opis], [Kategorija], [Proizvodjac], [Dobavljac], [Cena]) VALUES (21, N'Jordan', N'Patike za sport', N'Patike', N'Nike', N'N sport', 12000)
INSERT [dbo].[Proizvod] ([Id], [Naziv], [Opis], [Kategorija], [Proizvodjac], [Dobavljac], [Cena]) VALUES (22, N'Air Max', N'Patike za napolje', N'Patike', N'Nike', N'N sport', 12000)
INSERT [dbo].[Proizvod] ([Id], [Naziv], [Opis], [Kategorija], [Proizvodjac], [Dobavljac], [Cena]) VALUES (23, N'Nike 95', N'Patike za napolje', N'Patike', N'Nike', N'N sport', 12000)
INSERT [dbo].[Proizvod] ([Id], [Naziv], [Opis], [Kategorija], [Proizvodjac], [Dobavljac], [Cena]) VALUES (24, N'Nike 96', N'Patike za napolje', N'Patike', N'Nike', N'N sport', 12000)
INSERT [dbo].[Proizvod] ([Id], [Naziv], [Opis], [Kategorija], [Proizvodjac], [Dobavljac], [Cena]) VALUES (25, N'Jordan', N'Patike za sport', N'Patike', N'Nike', N'N sport', 12000)
SET IDENTITY_INSERT [dbo].[Proizvod] OFF
GO
