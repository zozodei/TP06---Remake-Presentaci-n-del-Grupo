USE [master]
GO
/****** Object:  Database [TP06 - Remake Presentación del Grupo]    Script Date: 10/7/2025 14:26:11 ******/
CREATE DATABASE [TP06 - Remake Presentación del Grupo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TP06 - Remake Presentación del Grupo', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\TP06 - Remake Presentación del Grupo.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TP06 - Remake Presentación del Grupo_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\TP06 - Remake Presentación del Grupo_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [TP06 - Remake Presentación del Grupo] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TP06 - Remake Presentación del Grupo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TP06 - Remake Presentación del Grupo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TP06 - Remake Presentación del Grupo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TP06 - Remake Presentación del Grupo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TP06 - Remake Presentación del Grupo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TP06 - Remake Presentación del Grupo] SET ARITHABORT OFF 
GO
ALTER DATABASE [TP06 - Remake Presentación del Grupo] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TP06 - Remake Presentación del Grupo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TP06 - Remake Presentación del Grupo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TP06 - Remake Presentación del Grupo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TP06 - Remake Presentación del Grupo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TP06 - Remake Presentación del Grupo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TP06 - Remake Presentación del Grupo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TP06 - Remake Presentación del Grupo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TP06 - Remake Presentación del Grupo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TP06 - Remake Presentación del Grupo] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TP06 - Remake Presentación del Grupo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TP06 - Remake Presentación del Grupo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TP06 - Remake Presentación del Grupo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TP06 - Remake Presentación del Grupo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TP06 - Remake Presentación del Grupo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TP06 - Remake Presentación del Grupo] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TP06 - Remake Presentación del Grupo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TP06 - Remake Presentación del Grupo] SET RECOVERY FULL 
GO
ALTER DATABASE [TP06 - Remake Presentación del Grupo] SET  MULTI_USER 
GO
ALTER DATABASE [TP06 - Remake Presentación del Grupo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TP06 - Remake Presentación del Grupo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TP06 - Remake Presentación del Grupo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TP06 - Remake Presentación del Grupo] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TP06 - Remake Presentación del Grupo] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'TP06 - Remake Presentación del Grupo', N'ON'
GO
ALTER DATABASE [TP06 - Remake Presentación del Grupo] SET QUERY_STORE = OFF
GO
USE [TP06 - Remake Presentación del Grupo]
GO
/****** Object:  User [alumno]    Script Date: 10/7/2025 14:26:11 ******/
CREATE USER [alumno] FOR LOGIN [alumno] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[DatoFamiliar]    Script Date: 10/7/2025 14:26:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatoFamiliar](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdUsuario] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellido] [varchar](50) NOT NULL,
	[Parentesco] [varchar](50) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_DatoFamiliar] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DatoInteres]    Script Date: 10/7/2025 14:26:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatoInteres](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdUsuario] [int] NOT NULL,
	[TipoInteres] [varchar](50) NOT NULL,
	[Interes] [varchar](50) NOT NULL,
 CONSTRAINT [PK_DatoInteres] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 10/7/2025 14:26:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellido] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Contraseña] [varchar](50) NOT NULL,
	[FechaNacimiento] [datetime] NOT NULL,
	[Foto] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DatoFamiliar] ON 

INSERT [dbo].[DatoFamiliar] ([Id], [IdUsuario], [Nombre], [Apellido], [Parentesco], [Descripcion]) VALUES (2, 2, N'Elena', N'Acquistapace', N'hermana', N'ama el hockey')
INSERT [dbo].[DatoFamiliar] ([Id], [IdUsuario], [Nombre], [Apellido], [Parentesco], [Descripcion]) VALUES (3, 3, N'Lola', N'Mandel', N'hermana', N'le gusta la joda')
INSERT [dbo].[DatoFamiliar] ([Id], [IdUsuario], [Nombre], [Apellido], [Parentesco], [Descripcion]) VALUES (4, 4, N'Oscar', N'Cardoso', N'padre', N'juega al padel')
SET IDENTITY_INSERT [dbo].[DatoFamiliar] OFF
GO
SET IDENTITY_INSERT [dbo].[DatoInteres] ON 

INSERT [dbo].[DatoInteres] ([Id], [IdUsuario], [TipoInteres], [Interes]) VALUES (2, 2, N'hobby', N'pasear')
INSERT [dbo].[DatoInteres] ([Id], [IdUsuario], [TipoInteres], [Interes]) VALUES (3, 3, N'deporte', N'futbol')
INSERT [dbo].[DatoInteres] ([Id], [IdUsuario], [TipoInteres], [Interes]) VALUES (4, 4, N'serie', N'casa de papel')
SET IDENTITY_INSERT [dbo].[DatoInteres] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuario] ON 

INSERT [dbo].[Usuario] ([Id], [Nombre], [Apellido], [Email], [Contraseña], [FechaNacimiento], [Foto]) VALUES (2, N'Zoe', N'Acquistapace', N'zoeacquista@gmail.com', N'zoe1234', CAST(N'2008-12-19T00:00:00.000' AS DateTime), N'fotoZoe')
INSERT [dbo].[Usuario] ([Id], [Nombre], [Apellido], [Email], [Contraseña], [FechaNacimiento], [Foto]) VALUES (3, N'Manuel', N'Mandel', N'manumandel@gmail.com', N'manunu12', CAST(N'2008-04-13T00:00:00.000' AS DateTime), N'fotoManu')
INSERT [dbo].[Usuario] ([Id], [Nombre], [Apellido], [Email], [Contraseña], [FechaNacimiento], [Foto]) VALUES (4, N'Facundo', N'Cardoso', N'facucardoso@gmail.com', N'facu1141', CAST(N'2008-10-02T00:00:00.000' AS DateTime), N'fotoFacu')
SET IDENTITY_INSERT [dbo].[Usuario] OFF
GO
ALTER TABLE [dbo].[DatoFamiliar]  WITH CHECK ADD  CONSTRAINT [FK_DatoFamiliar_Usuario1] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[DatoFamiliar] CHECK CONSTRAINT [FK_DatoFamiliar_Usuario1]
GO
ALTER TABLE [dbo].[DatoInteres]  WITH CHECK ADD  CONSTRAINT [FK_DatoInteres_Usuario1] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[DatoInteres] CHECK CONSTRAINT [FK_DatoInteres_Usuario1]
GO
USE [master]
GO
ALTER DATABASE [TP06 - Remake Presentación del Grupo] SET  READ_WRITE 
GO
