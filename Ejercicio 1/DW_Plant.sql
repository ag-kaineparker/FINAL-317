USE [master]
GO
/****** Object:  Database [DW_Plant]    Script Date: 12/12/2023 20:52:26 ******/
CREATE DATABASE [DW_Plant]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DW_Plant', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER02\MSSQL\DATA\DW_Plant.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DW_Plant_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER02\MSSQL\DATA\DW_Plant_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [DW_Plant] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DW_Plant].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DW_Plant] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DW_Plant] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DW_Plant] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DW_Plant] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DW_Plant] SET ARITHABORT OFF 
GO
ALTER DATABASE [DW_Plant] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DW_Plant] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DW_Plant] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DW_Plant] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DW_Plant] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DW_Plant] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DW_Plant] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DW_Plant] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DW_Plant] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DW_Plant] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DW_Plant] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DW_Plant] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DW_Plant] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DW_Plant] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DW_Plant] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DW_Plant] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DW_Plant] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DW_Plant] SET RECOVERY FULL 
GO
ALTER DATABASE [DW_Plant] SET  MULTI_USER 
GO
ALTER DATABASE [DW_Plant] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DW_Plant] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DW_Plant] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DW_Plant] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DW_Plant] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DW_Plant] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'DW_Plant', N'ON'
GO
ALTER DATABASE [DW_Plant] SET QUERY_STORE = ON
GO
ALTER DATABASE [DW_Plant] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [DW_Plant]
GO
/****** Object:  Table [dbo].[D_cliente]    Script Date: 12/12/2023 20:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D_cliente](
	[id_cliente] [nvarchar](50) NOT NULL,
	[nombre_cliente] [nvarchar](50) NULL,
	[edad] [int] NULL,
	[estado_civil] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[D_sucursal]    Script Date: 12/12/2023 20:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D_sucursal](
	[id_sucursal] [int] NOT NULL,
	[nombre_sucursal] [nvarchar](50) NULL,
	[nombre_region] [nvarchar](50) NULL,
	[nombre_comuna] [nvarchar](50) NULL,
	[nombre_ciudad] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_sucursal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[D_tiempo]    Script Date: 12/12/2023 20:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D_tiempo](
	[id_tiempo] [nvarchar](50) NOT NULL,
	[mes] [int] NULL,
	[año] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_tiempo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[D_vendedor]    Script Date: 12/12/2023 20:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D_vendedor](
	[id_vendedor] [int] NOT NULL,
	[nombre_vendedor] [nvarchar](50) NULL,
	[tipo_capacitacion] [nvarchar](50) NULL,
	[horas_capacitacion] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_vendedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[H_ventas]    Script Date: 12/12/2023 20:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[H_ventas](
	[id_ventas] [int] IDENTITY(1,1) NOT NULL,
	[id_producto] [nvarchar](50) NULL,
	[id_sucursal] [int] NULL,
	[id_cliente] [nvarchar](50) NULL,
	[id_vendedor] [int] NULL,
	[id_tiempo] [nvarchar](50) NULL,
	[cant_venta] [int] NULL,
	[monto_venta] [int] NULL,
 CONSTRAINT [PK_H_ventas] PRIMARY KEY CLUSTERED 
(
	[id_ventas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_producto]    Script Date: 12/12/2023 20:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_producto](
	[id_producto] [nvarchar](50) NOT NULL,
	[nombre_producto] [nvarchar](50) NULL,
	[tipo_producto] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[H_ventas]  WITH CHECK ADD  CONSTRAINT [FK_H_ventas_D_cliente] FOREIGN KEY([id_cliente])
REFERENCES [dbo].[D_cliente] ([id_cliente])
GO
ALTER TABLE [dbo].[H_ventas] CHECK CONSTRAINT [FK_H_ventas_D_cliente]
GO
ALTER TABLE [dbo].[H_ventas]  WITH CHECK ADD  CONSTRAINT [FK_H_ventas_D_sucursal] FOREIGN KEY([id_sucursal])
REFERENCES [dbo].[D_sucursal] ([id_sucursal])
GO
ALTER TABLE [dbo].[H_ventas] CHECK CONSTRAINT [FK_H_ventas_D_sucursal]
GO
ALTER TABLE [dbo].[H_ventas]  WITH CHECK ADD  CONSTRAINT [FK_H_ventas_D_tiempo] FOREIGN KEY([id_tiempo])
REFERENCES [dbo].[D_tiempo] ([id_tiempo])
GO
ALTER TABLE [dbo].[H_ventas] CHECK CONSTRAINT [FK_H_ventas_D_tiempo]
GO
ALTER TABLE [dbo].[H_ventas]  WITH CHECK ADD  CONSTRAINT [FK_H_ventas_D_vendedor] FOREIGN KEY([id_vendedor])
REFERENCES [dbo].[D_vendedor] ([id_vendedor])
GO
ALTER TABLE [dbo].[H_ventas] CHECK CONSTRAINT [FK_H_ventas_D_vendedor]
GO
ALTER TABLE [dbo].[H_ventas]  WITH CHECK ADD  CONSTRAINT [FK_H_ventas_T_producto] FOREIGN KEY([id_producto])
REFERENCES [dbo].[T_producto] ([id_producto])
GO
ALTER TABLE [dbo].[H_ventas] CHECK CONSTRAINT [FK_H_ventas_T_producto]
GO
USE [master]
GO
ALTER DATABASE [DW_Plant] SET  READ_WRITE 
GO
