USE [Practica4]
GO
/****** Object:  Table [dbo].[Artistas]    Script Date: 04/05/2018 06:23:08 p. m. ******/
DROP TABLE [dbo].[Artistas]
GO
/****** Object:  Table [dbo].[Arenas]    Script Date: 04/05/2018 06:23:08 p. m. ******/
DROP TABLE [dbo].[Arenas]
GO
USE [master]
GO
/****** Object:  Database [Practica4]    Script Date: 04/05/2018 06:23:08 p. m. ******/
DROP DATABASE [Practica4]
GO
/****** Object:  Database [Practica4]    Script Date: 04/05/2018 06:23:08 p. m. ******/
CREATE DATABASE [Practica4]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Practica4', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Practica4.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Practica4_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Practica4_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Practica4] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Practica4].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Practica4] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Practica4] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Practica4] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Practica4] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Practica4] SET ARITHABORT OFF 
GO
ALTER DATABASE [Practica4] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Practica4] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Practica4] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Practica4] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Practica4] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Practica4] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Practica4] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Practica4] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Practica4] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Practica4] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Practica4] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Practica4] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Practica4] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Practica4] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Practica4] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Practica4] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Practica4] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Practica4] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Practica4] SET  MULTI_USER 
GO
ALTER DATABASE [Practica4] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Practica4] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Practica4] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Practica4] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Practica4] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Practica4] SET QUERY_STORE = OFF
GO
USE [Practica4]
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
USE [Practica4]
GO
/****** Object:  Table [dbo].[Arenas]    Script Date: 04/05/2018 06:23:09 p. m. ******/
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
/****** Object:  Table [dbo].[Artistas]    Script Date: 04/05/2018 06:23:13 p. m. ******/
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
INSERT [dbo].[Arenas] ([Arena], [Localización], [Renta], [idArena]) VALUES (N'Estadio Tigres', N'CiudadUniversitaria', 700.0000, 2)
INSERT [dbo].[Arenas] ([Arena], [Localización], [Renta], [idArena]) VALUES (N'Estadio Monterrey', N'A lado de bosque Magico', 500.0000, 3)
INSERT [dbo].[Arenas] ([Arena], [Localización], [Renta], [idArena]) VALUES (N'FCFM', N'Ciudad Universitaria', 700.0000, 5)
INSERT [dbo].[Arenas] ([Arena], [Localización], [Renta], [idArena]) VALUES (N'FacDyc', N'Ciudad Universitaria', 500.0000, 6)
INSERT [dbo].[Arenas] ([Arena], [Localización], [Renta], [idArena]) VALUES (N'Fudidora', N'Cerca del metro San Berna', 500.0000, 7)
INSERT [dbo].[Arenas] ([Arena], [Localización], [Renta], [idArena]) VALUES (N'KidsZania', N'Otra carretera', 700.0000, 8)
INSERT [dbo].[Arenas] ([Arena], [Localización], [Renta], [idArena]) VALUES (N'Mundo de adeveras', N'La carretera', 500.0000, 9)
INSERT [dbo].[Arenas] ([Arena], [Localización], [Renta], [idArena]) VALUES (N'Fundidora', N'A lado del metro estación Y griega', 500.0000, 10)
INSERT [dbo].[Artistas] ([ArtistaBanda], [Nacionalidad], [idArtista]) VALUES (N'Green Day', N'E.U.', 1)
INSERT [dbo].[Artistas] ([ArtistaBanda], [Nacionalidad], [idArtista]) VALUES (N'Nickelback', N'E.U', 2)
INSERT [dbo].[Artistas] ([ArtistaBanda], [Nacionalidad], [idArtista]) VALUES (N'Simple Plan', N'E.U.', 4)
INSERT [dbo].[Artistas] ([ArtistaBanda], [Nacionalidad], [idArtista]) VALUES (N'My Chemical Romance', N'E.U', 6)
INSERT [dbo].[Artistas] ([ArtistaBanda], [Nacionalidad], [idArtista]) VALUES (N'Rammstein', N'Alemania', 8)
INSERT [dbo].[Artistas] ([ArtistaBanda], [Nacionalidad], [idArtista]) VALUES (N'Sum 41', N'E.U.', 9)
INSERT [dbo].[Artistas] ([ArtistaBanda], [Nacionalidad], [idArtista]) VALUES (N'Blink 182', N'E.U', 10)
USE [master]
GO
ALTER DATABASE [Practica4] SET  READ_WRITE 
GO
