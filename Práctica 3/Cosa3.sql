USE [Cosa3]
GO
ALTER TABLE [dbo].[PuestosLibres] DROP CONSTRAINT [FK_PuestosLibres_AreaTrabajo]
GO
ALTER TABLE [dbo].[PagoFinal] DROP CONSTRAINT [FK_PagoFinal_Impuestos]
GO
ALTER TABLE [dbo].[PagoFinal] DROP CONSTRAINT [FK_PagoFinal_Empleados1]
GO
ALTER TABLE [dbo].[PagoFinal] DROP CONSTRAINT [FK_PagoFinal_AreaTrabajo]
GO
ALTER TABLE [dbo].[Impuestos] DROP CONSTRAINT [FK_Impuestos_Empleados]
GO
ALTER TABLE [dbo].[Empleados] DROP CONSTRAINT [FK_Empleados_AreaTrabajo]
GO
/****** Object:  Table [dbo].[PuestosLibres]    Script Date: 03/03/2018 09:06:27 a.m. ******/
DROP TABLE [dbo].[PuestosLibres]
GO
/****** Object:  Table [dbo].[PagoFinal]    Script Date: 03/03/2018 09:06:27 a.m. ******/
DROP TABLE [dbo].[PagoFinal]
GO
/****** Object:  Table [dbo].[Impuestos]    Script Date: 03/03/2018 09:06:27 a.m. ******/
DROP TABLE [dbo].[Impuestos]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 03/03/2018 09:06:27 a.m. ******/
DROP TABLE [dbo].[Empleados]
GO
/****** Object:  Table [dbo].[AreaTrabajo]    Script Date: 03/03/2018 09:06:27 a.m. ******/
DROP TABLE [dbo].[AreaTrabajo]
GO
USE [master]
GO
/****** Object:  Database [Cosa3]    Script Date: 03/03/2018 09:06:27 a.m. ******/
DROP DATABASE [Cosa3]
GO
/****** Object:  Database [Cosa3]    Script Date: 03/03/2018 09:06:27 a.m. ******/
CREATE DATABASE [Cosa3]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Cosa3', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Cosa3.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Cosa3_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Cosa3_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Cosa3] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Cosa3].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Cosa3] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Cosa3] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Cosa3] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Cosa3] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Cosa3] SET ARITHABORT OFF 
GO
ALTER DATABASE [Cosa3] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Cosa3] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Cosa3] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Cosa3] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Cosa3] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Cosa3] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Cosa3] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Cosa3] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Cosa3] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Cosa3] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Cosa3] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Cosa3] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Cosa3] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Cosa3] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Cosa3] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Cosa3] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Cosa3] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Cosa3] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Cosa3] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Cosa3] SET  MULTI_USER 
GO
ALTER DATABASE [Cosa3] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Cosa3] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Cosa3] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Cosa3] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Cosa3]
GO
/****** Object:  Table [dbo].[AreaTrabajo]    Script Date: 03/03/2018 09:06:27 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AreaTrabajo](
	[id] [uniqueidentifier] NOT NULL,
	[AreaTrabajo] [varchar](50) NOT NULL,
	[Sueldo] [money] NOT NULL,
	[idEmpleado] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_AreaTRabajo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 03/03/2018 09:06:27 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empleados](
	[id] [uniqueidentifier] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Edad] [int] NOT NULL,
	[FechaReclutamiento] [smalldatetime] NOT NULL,
	[SueldoBase] [money] NOT NULL,
 CONSTRAINT [PK_Empleados] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Impuestos]    Script Date: 03/03/2018 09:06:27 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Impuestos](
	[id] [uniqueidentifier] NOT NULL,
	[Iva] [money] NULL,
	[Seguro] [money] NULL,
	[Pension] [money] NULL,
	[idTrabajador] [nchar](10) NULL,
 CONSTRAINT [PK_Impuestos] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PagoFinal]    Script Date: 03/03/2018 09:06:27 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PagoFinal](
	[id] [uniqueidentifier] NOT NULL,
	[idEmpleado] [uniqueidentifier] NOT NULL,
	[Pago2] [nchar](10) NULL,
	[Impuesto] [nchar](10) NULL,
	[Pago1] [money] NOT NULL,
 CONSTRAINT [PK_PagoFinal] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PuestosLibres]    Script Date: 03/03/2018 09:06:27 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PuestosLibres](
	[id] [uniqueidentifier] NOT NULL,
	[idArea] [uniqueidentifier] NOT NULL,
	[PuestosArLibres] [int] NOT NULL,
 CONSTRAINT [PK_PuestosLibres] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [FK_Empleados_AreaTrabajo] FOREIGN KEY([id])
REFERENCES [dbo].[AreaTrabajo] ([id])
GO
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [FK_Empleados_AreaTrabajo]
GO
ALTER TABLE [dbo].[Impuestos]  WITH CHECK ADD  CONSTRAINT [FK_Impuestos_Empleados] FOREIGN KEY([id])
REFERENCES [dbo].[Empleados] ([id])
GO
ALTER TABLE [dbo].[Impuestos] CHECK CONSTRAINT [FK_Impuestos_Empleados]
GO
ALTER TABLE [dbo].[PagoFinal]  WITH CHECK ADD  CONSTRAINT [FK_PagoFinal_AreaTrabajo] FOREIGN KEY([id])
REFERENCES [dbo].[AreaTrabajo] ([id])
GO
ALTER TABLE [dbo].[PagoFinal] CHECK CONSTRAINT [FK_PagoFinal_AreaTrabajo]
GO
ALTER TABLE [dbo].[PagoFinal]  WITH CHECK ADD  CONSTRAINT [FK_PagoFinal_Empleados1] FOREIGN KEY([id])
REFERENCES [dbo].[Empleados] ([id])
GO
ALTER TABLE [dbo].[PagoFinal] CHECK CONSTRAINT [FK_PagoFinal_Empleados1]
GO
ALTER TABLE [dbo].[PagoFinal]  WITH CHECK ADD  CONSTRAINT [FK_PagoFinal_Impuestos] FOREIGN KEY([id])
REFERENCES [dbo].[Impuestos] ([id])
GO
ALTER TABLE [dbo].[PagoFinal] CHECK CONSTRAINT [FK_PagoFinal_Impuestos]
GO
ALTER TABLE [dbo].[PuestosLibres]  WITH CHECK ADD  CONSTRAINT [FK_PuestosLibres_AreaTrabajo] FOREIGN KEY([idArea])
REFERENCES [dbo].[AreaTrabajo] ([id])
GO
ALTER TABLE [dbo].[PuestosLibres] CHECK CONSTRAINT [FK_PuestosLibres_AreaTrabajo]
GO
USE [master]
GO
ALTER DATABASE [Cosa3] SET  READ_WRITE 
GO
