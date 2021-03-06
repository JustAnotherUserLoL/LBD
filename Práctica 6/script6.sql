USE [Practica6]
GO
/****** Object:  Table [dbo].[VentasPerArt]    Script Date: 05/05/2018 04:36:53 p. m. ******/
DROP TABLE [dbo].[VentasPerArt]
GO
/****** Object:  Table [dbo].[Precios]    Script Date: 05/05/2018 04:36:53 p. m. ******/
DROP TABLE [dbo].[Precios]
GO
/****** Object:  Table [dbo].[Lugar]    Script Date: 05/05/2018 04:36:53 p. m. ******/
DROP TABLE [dbo].[Lugar]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 05/05/2018 04:36:53 p. m. ******/
DROP TABLE [dbo].[Clientes]
GO
/****** Object:  Table [dbo].[Boletos]    Script Date: 05/05/2018 04:36:53 p. m. ******/
DROP TABLE [dbo].[Boletos]
GO
/****** Object:  Table [dbo].[Artistas]    Script Date: 05/05/2018 04:36:53 p. m. ******/
DROP TABLE [dbo].[Artistas]
GO
/****** Object:  Table [dbo].[Arenas]    Script Date: 05/05/2018 04:36:53 p. m. ******/
DROP TABLE [dbo].[Arenas]
GO
USE [master]
GO
/****** Object:  Database [Practica6]    Script Date: 05/05/2018 04:36:53 p. m. ******/
DROP DATABASE [Practica6]
GO
/****** Object:  Database [Practica6]    Script Date: 05/05/2018 04:36:53 p. m. ******/
CREATE DATABASE [Practica6]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Practica4', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Practica4.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Practica4_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Practica4_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Practica6] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Practica6].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Practica6] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Practica6] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Practica6] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Practica6] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Practica6] SET ARITHABORT OFF 
GO
ALTER DATABASE [Practica6] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Practica6] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Practica6] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Practica6] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Practica6] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Practica6] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Practica6] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Practica6] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Practica6] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Practica6] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Practica6] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Practica6] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Practica6] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Practica6] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Practica6] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Practica6] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Practica6] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Practica6] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Practica6] SET  MULTI_USER 
GO
ALTER DATABASE [Practica6] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Practica6] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Practica6] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Practica6] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Practica6] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Practica6] SET QUERY_STORE = OFF
GO
USE [Practica6]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [Practica6]
GO
/****** Object:  Table [dbo].[Arenas]    Script Date: 05/05/2018 04:36:54 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Arenas](
	[Arena] [varchar](50) NOT NULL,
	[Localización] [varchar](50) NOT NULL,
	[Renta] [money] NULL,
	[idArena] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Artistas]    Script Date: 05/05/2018 04:36:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Artistas](
	[ArtistaBanda] [varchar](50) NOT NULL,
	[Nacionalidad] [varchar](50) NOT NULL,
	[idArtista] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Boletos]    Script Date: 05/05/2018 04:36:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Boletos](
	[idArena] [int] NOT NULL,
	[idLugar] [int] NOT NULL,
	[idArtista] [int] NOT NULL,
	[idCliente] [int] NOT NULL,
	[idBoleto] [int] NOT NULL,
	[ventas] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 05/05/2018 04:36:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[NombreCliente] [varchar](50) NOT NULL,
	[Edad] [int] NOT NULL,
	[Sexo] [nchar](10) NOT NULL,
	[idCliente] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lugar]    Script Date: 05/05/2018 04:36:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lugar](
	[Lugar] [varchar](50) NOT NULL,
	[idArena] [int] NOT NULL,
	[idPrecio] [int] NOT NULL,
	[idLugar] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Precios]    Script Date: 05/05/2018 04:37:00 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Precios](
	[PrecioNeto] [money] NOT NULL,
	[Descuento] [money] NOT NULL,
	[Total] [money] NOT NULL,
	[idPrecio] [int] NOT NULL,
	[idArtista] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VentasPerArt]    Script Date: 05/05/2018 04:37:00 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VentasPerArt](
	[ventas] [int] NULL,
	[ArtistaBanda] [varchar](50) NOT NULL,
	[idArtista] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Arenas] ([Arena], [Localización], [Renta], [idArena]) VALUES (N'Estadio Tigres', N'CiudadUniversitaria', 700.0000, 2)
INSERT [dbo].[Arenas] ([Arena], [Localización], [Renta], [idArena]) VALUES (N'Estadio Monterrey', N'A lado de bosque Magico', 500.0000, 3)
INSERT [dbo].[Arenas] ([Arena], [Localización], [Renta], [idArena]) VALUES (N'FCFM', N'Ciudad Universitaria', 700.0000, 5)
INSERT [dbo].[Arenas] ([Arena], [Localización], [Renta], [idArena]) VALUES (N'FacDyc', N'Ciudad Universitaria', 500.0000, 6)
INSERT [dbo].[Arenas] ([Arena], [Localización], [Renta], [idArena]) VALUES (N'Fudidora', N'Cerca del metro San Berna', 500.0000, 7)
INSERT [dbo].[Arenas] ([Arena], [Localización], [Renta], [idArena]) VALUES (N'KidsZania', N'Otra carretera', 700.0000, 8)
INSERT [dbo].[Arenas] ([Arena], [Localización], [Renta], [idArena]) VALUES (N'Mundo de adeveras', N'La carretera', 500.0000, 9)
INSERT [dbo].[Arenas] ([Arena], [Localización], [Renta], [idArena]) VALUES (N'Fundidora', N'A lado del metro estación Y griega', 500.0000, 10)
INSERT [dbo].[Arenas] ([Arena], [Localización], [Renta], [idArena]) VALUES (N'Estadio Baseball', N'Monterrey', 100.0000, 1)
INSERT [dbo].[Arenas] ([Arena], [Localización], [Renta], [idArena]) VALUES (N'Parque Industrial', N'Santa Catarina', 300.0000, 4)
INSERT [dbo].[Artistas] ([ArtistaBanda], [Nacionalidad], [idArtista]) VALUES (N'Green Day', N'E.U.', 1)
INSERT [dbo].[Artistas] ([ArtistaBanda], [Nacionalidad], [idArtista]) VALUES (N'Nickelback', N'E.U.', 2)
INSERT [dbo].[Artistas] ([ArtistaBanda], [Nacionalidad], [idArtista]) VALUES (N'Camilla Cabello', N'Colombia', 3)
INSERT [dbo].[Artistas] ([ArtistaBanda], [Nacionalidad], [idArtista]) VALUES (N'Simple Plan', N'E.U.', 4)
INSERT [dbo].[Artistas] ([ArtistaBanda], [Nacionalidad], [idArtista]) VALUES (N'Vicente Fernandez', N'México', 5)
INSERT [dbo].[Artistas] ([ArtistaBanda], [Nacionalidad], [idArtista]) VALUES (N'My Chemical Romance', N'E.U.', 6)
INSERT [dbo].[Artistas] ([ArtistaBanda], [Nacionalidad], [idArtista]) VALUES (N'Morat', N'Colombia', 7)
INSERT [dbo].[Artistas] ([ArtistaBanda], [Nacionalidad], [idArtista]) VALUES (N'Rammstein', N'Alemania', 8)
INSERT [dbo].[Artistas] ([ArtistaBanda], [Nacionalidad], [idArtista]) VALUES (N'Sum 41', N'E.U.', 9)
INSERT [dbo].[Artistas] ([ArtistaBanda], [Nacionalidad], [idArtista]) VALUES (N'Blink 182', N'E.U.', 10)
INSERT [dbo].[Boletos] ([idArena], [idLugar], [idArtista], [idCliente], [idBoleto], [ventas]) VALUES (1, 1, 2, 10, 1, 9)
INSERT [dbo].[Boletos] ([idArena], [idLugar], [idArtista], [idCliente], [idBoleto], [ventas]) VALUES (3, 2, 4, 9, 2, 9)
INSERT [dbo].[Boletos] ([idArena], [idLugar], [idArtista], [idCliente], [idBoleto], [ventas]) VALUES (5, 3, 6, 8, 3, 8)
INSERT [dbo].[Boletos] ([idArena], [idLugar], [idArtista], [idCliente], [idBoleto], [ventas]) VALUES (7, 4, 8, 7, 4, 5)
INSERT [dbo].[Boletos] ([idArena], [idLugar], [idArtista], [idCliente], [idBoleto], [ventas]) VALUES (9, 5, 10, 6, 5, 3)
INSERT [dbo].[Boletos] ([idArena], [idLugar], [idArtista], [idCliente], [idBoleto], [ventas]) VALUES (2, 6, 1, 5, 6, 8)
INSERT [dbo].[Boletos] ([idArena], [idLugar], [idArtista], [idCliente], [idBoleto], [ventas]) VALUES (4, 7, 3, 4, 7, 2)
INSERT [dbo].[Boletos] ([idArena], [idLugar], [idArtista], [idCliente], [idBoleto], [ventas]) VALUES (6, 8, 5, 3, 8, 13)
INSERT [dbo].[Boletos] ([idArena], [idLugar], [idArtista], [idCliente], [idBoleto], [ventas]) VALUES (8, 9, 7, 2, 9, 6)
INSERT [dbo].[Boletos] ([idArena], [idLugar], [idArtista], [idCliente], [idBoleto], [ventas]) VALUES (10, 10, 9, 1, 10, 0)
INSERT [dbo].[Clientes] ([NombreCliente], [Edad], [Sexo], [idCliente]) VALUES (N'Marco', 18, N'H         ', 1)
INSERT [dbo].[Clientes] ([NombreCliente], [Edad], [Sexo], [idCliente]) VALUES (N'Arenita', 21, N'M         ', 2)
INSERT [dbo].[Clientes] ([NombreCliente], [Edad], [Sexo], [idCliente]) VALUES (N'Patrick', 32, N'H         ', 3)
INSERT [dbo].[Clientes] ([NombreCliente], [Edad], [Sexo], [idCliente]) VALUES (N'Bob', 25, N'H         ', 4)
INSERT [dbo].[Clientes] ([NombreCliente], [Edad], [Sexo], [idCliente]) VALUES (N'Gabriela', 23, N'M         ', 5)
INSERT [dbo].[Clientes] ([NombreCliente], [Edad], [Sexo], [idCliente]) VALUES (N'Marcela', 22, N'M         ', 6)
INSERT [dbo].[Clientes] ([NombreCliente], [Edad], [Sexo], [idCliente]) VALUES (N'Ana', 27, N'M         ', 7)
INSERT [dbo].[Clientes] ([NombreCliente], [Edad], [Sexo], [idCliente]) VALUES (N'Karen', 19, N'M         ', 8)
INSERT [dbo].[Clientes] ([NombreCliente], [Edad], [Sexo], [idCliente]) VALUES (N'Brandon', 30, N'H         ', 9)
INSERT [dbo].[Clientes] ([NombreCliente], [Edad], [Sexo], [idCliente]) VALUES (N'Brenda', 19, N'M         ', 10)
INSERT [dbo].[Lugar] ([Lugar], [idArena], [idPrecio], [idLugar]) VALUES (N'A', 1, 1, 1)
INSERT [dbo].[Lugar] ([Lugar], [idArena], [idPrecio], [idLugar]) VALUES (N'B', 1, 2, 2)
INSERT [dbo].[Lugar] ([Lugar], [idArena], [idPrecio], [idLugar]) VALUES (N'C', 1, 3, 3)
INSERT [dbo].[Lugar] ([Lugar], [idArena], [idPrecio], [idLugar]) VALUES (N'D', 1, 4, 4)
INSERT [dbo].[Lugar] ([Lugar], [idArena], [idPrecio], [idLugar]) VALUES (N'E', 1, 5, 5)
INSERT [dbo].[Lugar] ([Lugar], [idArena], [idPrecio], [idLugar]) VALUES (N'F', 1, 6, 6)
INSERT [dbo].[Lugar] ([Lugar], [idArena], [idPrecio], [idLugar]) VALUES (N'G', 1, 7, 7)
INSERT [dbo].[Lugar] ([Lugar], [idArena], [idPrecio], [idLugar]) VALUES (N'H', 1, 8, 8)
INSERT [dbo].[Lugar] ([Lugar], [idArena], [idPrecio], [idLugar]) VALUES (N'I', 1, 9, 9)
INSERT [dbo].[Lugar] ([Lugar], [idArena], [idPrecio], [idLugar]) VALUES (N'J', 1, 10, 10)
INSERT [dbo].[Precios] ([PrecioNeto], [Descuento], [Total], [idPrecio], [idArtista]) VALUES (100.0000, 50.0000, 50.0000, 1, 3)
INSERT [dbo].[Precios] ([PrecioNeto], [Descuento], [Total], [idPrecio], [idArtista]) VALUES (1200.0000, 200.0000, 1000.0000, 2, 1)
INSERT [dbo].[Precios] ([PrecioNeto], [Descuento], [Total], [idPrecio], [idArtista]) VALUES (500.0000, 300.0000, 200.0000, 3, 5)
INSERT [dbo].[Precios] ([PrecioNeto], [Descuento], [Total], [idPrecio], [idArtista]) VALUES (300.0000, 0.0000, 300.0000, 4, 4)
INSERT [dbo].[Precios] ([PrecioNeto], [Descuento], [Total], [idPrecio], [idArtista]) VALUES (200.0000, 150.0000, 50.0000, 5, 7)
INSERT [dbo].[Precios] ([PrecioNeto], [Descuento], [Total], [idPrecio], [idArtista]) VALUES (700.0000, 500.0000, 200.0000, 6, 8)
INSERT [dbo].[Precios] ([PrecioNeto], [Descuento], [Total], [idPrecio], [idArtista]) VALUES (100.0000, 30.0000, 70.0000, 7, 6)
INSERT [dbo].[Precios] ([PrecioNeto], [Descuento], [Total], [idPrecio], [idArtista]) VALUES (350.0000, 100.0000, 250.0000, 8, 9)
INSERT [dbo].[Precios] ([PrecioNeto], [Descuento], [Total], [idPrecio], [idArtista]) VALUES (400.0000, 200.0000, 200.0000, 9, 2)
INSERT [dbo].[Precios] ([PrecioNeto], [Descuento], [Total], [idPrecio], [idArtista]) VALUES (1600.0000, 300.0000, 1300.0000, 10, 10)
INSERT [dbo].[VentasPerArt] ([ventas], [ArtistaBanda], [idArtista]) VALUES (8, N'Green Day', 1)
INSERT [dbo].[VentasPerArt] ([ventas], [ArtistaBanda], [idArtista]) VALUES (9, N'Nickelback', 2)
INSERT [dbo].[VentasPerArt] ([ventas], [ArtistaBanda], [idArtista]) VALUES (9, N'Simple Plan', 4)
INSERT [dbo].[VentasPerArt] ([ventas], [ArtistaBanda], [idArtista]) VALUES (13, N'Vicente Fernandez', 5)
INSERT [dbo].[VentasPerArt] ([ventas], [ArtistaBanda], [idArtista]) VALUES (8, N'My Chemical Romance', 6)
USE [master]
GO
ALTER DATABASE [Practica6] SET  READ_WRITE 
GO
