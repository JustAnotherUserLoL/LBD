USE [DbTkt]
GO
ALTER TABLE [dbo].[PagosM] DROP CONSTRAINT [FK_PagosM_Venta]
GO
ALTER TABLE [dbo].[Evento] DROP CONSTRAINT [FK_Evento_Artistas]
GO
ALTER TABLE [dbo].[Evento] DROP CONSTRAINT [FK_Evento_Arena]
GO
ALTER TABLE [dbo].[DetalleVentas] DROP CONSTRAINT [FK_DetalleVentas_Venta]
GO
ALTER TABLE [dbo].[DetalleVentas] DROP CONSTRAINT [FK_DetalleVentas_Lugar]
GO
ALTER TABLE [dbo].[DetalleVentas] DROP CONSTRAINT [FK_DetalleVentas_Boletos]
GO
ALTER TABLE [dbo].[Boletos] DROP CONSTRAINT [FK_Boletos_Evento]
GO
/****** Object:  Table [dbo].[Venta]    Script Date: 10/03/2018 11:01:31 ******/
DROP TABLE [dbo].[Venta]
GO
/****** Object:  Table [dbo].[PagosM]    Script Date: 10/03/2018 11:01:31 ******/
DROP TABLE [dbo].[PagosM]
GO
/****** Object:  Table [dbo].[Lugar]    Script Date: 10/03/2018 11:01:31 ******/
DROP TABLE [dbo].[Lugar]
GO
/****** Object:  Table [dbo].[Evento]    Script Date: 10/03/2018 11:01:31 ******/
DROP TABLE [dbo].[Evento]
GO
/****** Object:  Table [dbo].[DetalleVentas]    Script Date: 10/03/2018 11:01:31 ******/
DROP TABLE [dbo].[DetalleVentas]
GO
/****** Object:  Table [dbo].[Boletos]    Script Date: 10/03/2018 11:01:31 ******/
DROP TABLE [dbo].[Boletos]
GO
/****** Object:  Table [dbo].[Artistas]    Script Date: 10/03/2018 11:01:31 ******/
DROP TABLE [dbo].[Artistas]
GO
/****** Object:  Table [dbo].[Arena]    Script Date: 10/03/2018 11:01:31 ******/
DROP TABLE [dbo].[Arena]
GO
USE [master]
GO
/****** Object:  Database [DbTkt]    Script Date: 10/03/2018 11:01:31 ******/
DROP DATABASE [DbTkt]
GO
/****** Object:  Database [DbTkt]    Script Date: 10/03/2018 11:01:31 ******/
CREATE DATABASE [DbTkt]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DbTkt', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\DbTkt.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DbTkt_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\DbTkt_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DbTkt] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DbTkt].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DbTkt] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DbTkt] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DbTkt] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DbTkt] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DbTkt] SET ARITHABORT OFF 
GO
ALTER DATABASE [DbTkt] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DbTkt] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [DbTkt] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DbTkt] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DbTkt] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DbTkt] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DbTkt] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DbTkt] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DbTkt] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DbTkt] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DbTkt] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DbTkt] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DbTkt] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DbTkt] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DbTkt] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DbTkt] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DbTkt] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DbTkt] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DbTkt] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DbTkt] SET  MULTI_USER 
GO
ALTER DATABASE [DbTkt] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DbTkt] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DbTkt] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DbTkt] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [DbTkt]
GO
/****** Object:  Table [dbo].[Arena]    Script Date: 10/03/2018 11:01:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Arena](
	[idArena] [int] NOT NULL,
	[Direccion] [varchar](50) NOT NULL,
	[NombreArena] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Arena] PRIMARY KEY CLUSTERED 
(
	[idArena] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Artistas]    Script Date: 10/03/2018 11:01:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Artistas](
	[idArtista] [int] NOT NULL,
	[Psuedonimo] [varchar](50) NOT NULL,
	[Nombre] [varchar](50) NULL,
 CONSTRAINT [PK_Artistas] PRIMARY KEY CLUSTERED 
(
	[idArtista] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Boletos]    Script Date: 10/03/2018 11:01:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Boletos](
	[idBoleto] [int] NOT NULL,
	[idEvento] [int] NOT NULL,
	[idLugar] [int] NOT NULL,
	[Precio] [money] NOT NULL,
 CONSTRAINT [PK_Boletos] PRIMARY KEY CLUSTERED 
(
	[idBoleto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DetalleVentas]    Script Date: 10/03/2018 11:01:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleVentas](
	[idVenta] [int] NULL,
	[idBoleto] [int] NOT NULL,
	[idLugar] [int] NOT NULL,
	[Precio] [money] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Evento]    Script Date: 10/03/2018 11:01:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Evento](
	[idArena] [int] NOT NULL,
	[idEvento] [int] NOT NULL,
	[ideArtista] [int] NOT NULL,
	[FechayArena] [varchar](50) NOT NULL,
	[nombreEvento] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Evento] PRIMARY KEY CLUSTERED 
(
	[idEvento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Lugar]    Script Date: 10/03/2018 11:01:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Lugar](
	[idLugar] [int] NOT NULL,
	[NumeroAsiento] [int] NOT NULL,
	[zona] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Lugar] PRIMARY KEY CLUSTERED 
(
	[idLugar] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PagosM]    Script Date: 10/03/2018 11:01:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PagosM](
	[idVenta] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[Tipo] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Venta]    Script Date: 10/03/2018 11:01:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Venta](
	[idVenta] [int] NOT NULL,
	[Precio] [money] NOT NULL,
	[MetodoDePago] [bit] NOT NULL,
	[FechaVenta] [date] NOT NULL,
	[Vendedor] [varchar](50) NOT NULL,
	[Iva] [money] NOT NULL,
	[Subtotal] [money] NOT NULL,
	[Total] [money] NOT NULL,
 CONSTRAINT [PK_Venta] PRIMARY KEY CLUSTERED 
(
	[idVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Boletos]  WITH CHECK ADD  CONSTRAINT [FK_Boletos_Evento] FOREIGN KEY([idEvento])
REFERENCES [dbo].[Evento] ([idEvento])
GO
ALTER TABLE [dbo].[Boletos] CHECK CONSTRAINT [FK_Boletos_Evento]
GO
ALTER TABLE [dbo].[DetalleVentas]  WITH CHECK ADD  CONSTRAINT [FK_DetalleVentas_Boletos] FOREIGN KEY([idBoleto])
REFERENCES [dbo].[Boletos] ([idBoleto])
GO
ALTER TABLE [dbo].[DetalleVentas] CHECK CONSTRAINT [FK_DetalleVentas_Boletos]
GO
ALTER TABLE [dbo].[DetalleVentas]  WITH CHECK ADD  CONSTRAINT [FK_DetalleVentas_Lugar] FOREIGN KEY([idLugar])
REFERENCES [dbo].[Lugar] ([idLugar])
GO
ALTER TABLE [dbo].[DetalleVentas] CHECK CONSTRAINT [FK_DetalleVentas_Lugar]
GO
ALTER TABLE [dbo].[DetalleVentas]  WITH CHECK ADD  CONSTRAINT [FK_DetalleVentas_Venta] FOREIGN KEY([idVenta])
REFERENCES [dbo].[Venta] ([idVenta])
GO
ALTER TABLE [dbo].[DetalleVentas] CHECK CONSTRAINT [FK_DetalleVentas_Venta]
GO
ALTER TABLE [dbo].[Evento]  WITH CHECK ADD  CONSTRAINT [FK_Evento_Arena] FOREIGN KEY([idArena])
REFERENCES [dbo].[Arena] ([idArena])
GO
ALTER TABLE [dbo].[Evento] CHECK CONSTRAINT [FK_Evento_Arena]
GO
ALTER TABLE [dbo].[Evento]  WITH CHECK ADD  CONSTRAINT [FK_Evento_Artistas] FOREIGN KEY([ideArtista])
REFERENCES [dbo].[Artistas] ([idArtista])
GO
ALTER TABLE [dbo].[Evento] CHECK CONSTRAINT [FK_Evento_Artistas]
GO
ALTER TABLE [dbo].[PagosM]  WITH CHECK ADD  CONSTRAINT [FK_PagosM_Venta] FOREIGN KEY([idVenta])
REFERENCES [dbo].[Venta] ([idVenta])
GO
ALTER TABLE [dbo].[PagosM] CHECK CONSTRAINT [FK_PagosM_Venta]
GO
USE [master]
GO
ALTER DATABASE [DbTkt] SET  READ_WRITE 
GO
