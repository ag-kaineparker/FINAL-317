USE [master]
GO
/****** Object:  Database [PlantAndHealth]    Script Date: 13/12/2023 01:03:11 ******/
CREATE DATABASE [PlantAndHealth]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PlantAndHealth', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER02\MSSQL\DATA\PlantAndHealth.mdf' , SIZE = 11264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'PlantAndHealth_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER02\MSSQL\DATA\PlantAndHealth_log.ldf' , SIZE = 7616KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [PlantAndHealth] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PlantAndHealth].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PlantAndHealth] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PlantAndHealth] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PlantAndHealth] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PlantAndHealth] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PlantAndHealth] SET ARITHABORT OFF 
GO
ALTER DATABASE [PlantAndHealth] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PlantAndHealth] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PlantAndHealth] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PlantAndHealth] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PlantAndHealth] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PlantAndHealth] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PlantAndHealth] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PlantAndHealth] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PlantAndHealth] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PlantAndHealth] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PlantAndHealth] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PlantAndHealth] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PlantAndHealth] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PlantAndHealth] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PlantAndHealth] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PlantAndHealth] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PlantAndHealth] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PlantAndHealth] SET RECOVERY FULL 
GO
ALTER DATABASE [PlantAndHealth] SET  MULTI_USER 
GO
ALTER DATABASE [PlantAndHealth] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PlantAndHealth] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PlantAndHealth] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PlantAndHealth] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [PlantAndHealth] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PlantAndHealth] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'PlantAndHealth', N'ON'
GO
ALTER DATABASE [PlantAndHealth] SET QUERY_STORE = OFF
GO
USE [PlantAndHealth]
GO
/****** Object:  Table [dbo].[ARTICULOS]    Script Date: 13/12/2023 01:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ARTICULOS](
	[CODIGO_PRODUCTO] [nvarchar](255) NOT NULL,
	[NOMBRE] [nvarchar](255) NULL,
	[FAMILIA] [nvarchar](255) NULL,
	[PRECIO_UNITARIO] [int] NULL,
	[COSTO_UNITARIO] [int] NULL,
 CONSTRAINT [PK_ARTICULOS] PRIMARY KEY CLUSTERED 
(
	[CODIGO_PRODUCTO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CLIENTES]    Script Date: 13/12/2023 01:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLIENTES](
	[NRO] [smallint] NULL,
	[ID_CLIENTE] [nvarchar](255) NOT NULL,
	[NOMBRE] [nvarchar](255) NULL,
	[APELLIDO] [nvarchar](255) NULL,
	[EDAD] [smallint] NULL,
	[ESTADO_CIVIL] [nvarchar](255) NULL,
	[RESIDENCIA] [nvarchar](255) NULL,
	[ORIGEN] [nvarchar](255) NULL,
 CONSTRAINT [PK_CLIENTES] PRIMARY KEY CLUSTERED 
(
	[ID_CLIENTE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientesSauco]    Script Date: 13/12/2023 01:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientesSauco](
	[ID_CLIENTE] [nvarchar](255) NULL,
	[NOMBRE] [nvarchar](255) NULL,
	[APELLIDO] [nvarchar](255) NULL,
	[EDAD] [smallint] NULL,
	[LUGAR ORIGEN] [nvarchar](255) NULL,
	[PREFERENCIA COLOR] [nvarchar](255) NULL,
	[TIPO DE COMIDA] [nvarchar](255) NULL,
	[ESTADO CIVIL] [nvarchar](255) NULL,
	[CANTIDAD DE HIJOS] [smallint] NULL,
	[FIDELIDAD] [nvarchar](255) NULL,
	[COMPRASAUCO] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DETALLE_VENTA]    Script Date: 13/12/2023 01:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DETALLE_VENTA](
	[DOCUMENTO] [nvarchar](255) NULL,
	[CODIGO_PRODUCTO] [nvarchar](255) NULL,
	[PRECIO_UNITARIO] [int] NULL,
	[CANTIDAD] [int] NULL,
	[TOTAL] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProspectosClientesSauco]    Script Date: 13/12/2023 01:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProspectosClientesSauco](
	[NRO_CLIENTE] [smallint] NULL,
	[ID_CLIENTE] [nvarchar](255) NULL,
	[NOMBRE] [nvarchar](255) NULL,
	[APELLIDO] [nvarchar](255) NULL,
	[EMAIL] [nvarchar](255) NULL,
	[EDAD] [smallint] NULL,
	[RESIDENCIA] [nvarchar](255) NULL,
	[ORIGEN] [nvarchar](255) NULL,
	[PREFERENCIA COLOR] [nvarchar](255) NULL,
	[TIPO DE COMIDA] [nvarchar](255) NULL,
	[ESTADO CIVIL] [nvarchar](255) NULL,
	[CANTIDAD DE HIJOS] [smallint] NULL,
	[FIDELIDAD] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VENDEDORES]    Script Date: 13/12/2023 01:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VENDEDORES](
	[ID_VENDEDOR] [smallint] NOT NULL,
	[Nombre] [nvarchar](255) NULL,
	[Apellido] [nvarchar](255) NULL,
	[TIPO_ CAPACITACION] [nvarchar](255) NULL,
	[HORAS_CAPACITACION] [smallint] NULL,
 CONSTRAINT [PK_VENDEDORES] PRIMARY KEY CLUSTERED 
(
	[ID_VENDEDOR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VENTAS]    Script Date: 13/12/2023 01:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VENTAS](
	[DOCUMENTO] [nvarchar](255) NOT NULL,
	[FECHA] [datetime] NULL,
	[ID_CLIENTE] [nvarchar](255) NULL,
	[TIPO_DOCUMENTO] [nvarchar](255) NULL,
	[ID_VENDEDOR] [smallint] NULL,
	[TOTAL_NETO] [int] NULL,
	[IMPUESTO] [int] NULL,
	[TOTAL_DOCUMENTO] [int] NULL,
 CONSTRAINT [PK_VENTAS] PRIMARY KEY CLUSTERED 
(
	[DOCUMENTO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DETALLE_VENTA]  WITH CHECK ADD  CONSTRAINT [FK_DETALLE_VENTA_ARTICULOS1] FOREIGN KEY([CODIGO_PRODUCTO])
REFERENCES [dbo].[ARTICULOS] ([CODIGO_PRODUCTO])
GO
ALTER TABLE [dbo].[DETALLE_VENTA] CHECK CONSTRAINT [FK_DETALLE_VENTA_ARTICULOS1]
GO
ALTER TABLE [dbo].[DETALLE_VENTA]  WITH CHECK ADD  CONSTRAINT [FK_DETALLE_VENTA_VENTAS] FOREIGN KEY([DOCUMENTO])
REFERENCES [dbo].[VENTAS] ([DOCUMENTO])
GO
ALTER TABLE [dbo].[DETALLE_VENTA] CHECK CONSTRAINT [FK_DETALLE_VENTA_VENTAS]
GO
ALTER TABLE [dbo].[VENTAS]  WITH CHECK ADD  CONSTRAINT [FK_VENTAS_CLIENTES] FOREIGN KEY([ID_CLIENTE])
REFERENCES [dbo].[CLIENTES] ([ID_CLIENTE])
GO
ALTER TABLE [dbo].[VENTAS] CHECK CONSTRAINT [FK_VENTAS_CLIENTES]
GO
ALTER TABLE [dbo].[VENTAS]  WITH CHECK ADD  CONSTRAINT [FK_VENTAS_VENDEDORES] FOREIGN KEY([ID_VENDEDOR])
REFERENCES [dbo].[VENDEDORES] ([ID_VENDEDOR])
GO
ALTER TABLE [dbo].[VENTAS] CHECK CONSTRAINT [FK_VENTAS_VENDEDORES]
GO
USE [master]
GO
ALTER DATABASE [PlantAndHealth] SET  READ_WRITE 
GO
