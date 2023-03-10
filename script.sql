USE [master]
GO
/****** Object:  Database [10190162]    Script Date: 17.12.2022 13:18:14 ******/
CREATE DATABASE [10190162]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'10190162', FILENAME = N'C:\databases\10190162.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'10190162_log', FILENAME = N'C:\databases\10190162_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [10190162] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [10190162].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [10190162] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [10190162] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [10190162] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [10190162] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [10190162] SET ARITHABORT OFF 
GO
ALTER DATABASE [10190162] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [10190162] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [10190162] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [10190162] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [10190162] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [10190162] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [10190162] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [10190162] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [10190162] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [10190162] SET  ENABLE_BROKER 
GO
ALTER DATABASE [10190162] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [10190162] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [10190162] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [10190162] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [10190162] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [10190162] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [10190162] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [10190162] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [10190162] SET  MULTI_USER 
GO
ALTER DATABASE [10190162] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [10190162] SET DB_CHAINING OFF 
GO
ALTER DATABASE [10190162] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [10190162] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [10190162] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [10190162] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [10190162] SET QUERY_STORE = OFF
GO
USE [10190162]
GO
/****** Object:  User [college\t.spiridonova]    Script Date: 17.12.2022 13:18:14 ******/
CREATE USER [college\t.spiridonova] FOR LOGIN [college\t.spiridonova] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [college\o.kopets]    Script Date: 17.12.2022 13:18:14 ******/
CREATE USER [college\o.kopets] FOR LOGIN [college\o.kopets] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [college\m.erina]    Script Date: 17.12.2022 13:18:14 ******/
CREATE USER [college\m.erina] FOR LOGIN [college\m.erina] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [college\g.glebov]    Script Date: 17.12.2022 13:18:14 ******/
CREATE USER [college\g.glebov] FOR LOGIN [college\g.glebov] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [college\g.fedorova]    Script Date: 17.12.2022 13:18:14 ******/
CREATE USER [college\g.fedorova] FOR LOGIN [college\g.fedorova] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [college\a.vagin]    Script Date: 17.12.2022 13:18:14 ******/
CREATE USER [college\a.vagin] FOR LOGIN [college\a.vagin] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [college\a.r.popova]    Script Date: 17.12.2022 13:18:14 ******/
CREATE USER [college\a.r.popova] FOR LOGIN [college\a.r.popova] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [college\a.berezhkov]    Script Date: 17.12.2022 13:18:14 ******/
CREATE USER [college\a.berezhkov] FOR LOGIN [college\a.berezhkov] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [college\10190162]    Script Date: 17.12.2022 13:18:14 ******/
CREATE USER [college\10190162] FOR LOGIN [college\10190162] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [college\t.spiridonova]
GO
ALTER ROLE [db_owner] ADD MEMBER [college\o.kopets]
GO
ALTER ROLE [db_owner] ADD MEMBER [college\m.erina]
GO
ALTER ROLE [db_owner] ADD MEMBER [college\g.glebov]
GO
ALTER ROLE [db_owner] ADD MEMBER [college\g.fedorova]
GO
ALTER ROLE [db_owner] ADD MEMBER [college\a.vagin]
GO
ALTER ROLE [db_owner] ADD MEMBER [college\a.r.popova]
GO
ALTER ROLE [db_owner] ADD MEMBER [college\a.berezhkov]
GO
ALTER ROLE [db_owner] ADD MEMBER [college\10190162]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 17.12.2022 13:18:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manufacturer]    Script Date: 17.12.2022 13:18:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manufacturer](
	[ManufacturerID] [int] IDENTITY(1,1) NOT NULL,
	[ManufacturerName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Manufacturer] PRIMARY KEY CLUSTERED 
(
	[ManufacturerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 17.12.2022 13:18:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[OrderStatus] [int] NOT NULL,
	[OrderDeliveryDate] [datetime] NOT NULL,
	[OrderPickupPointID] [int] NOT NULL,
	[OrderUserID] [int] NULL,
	[OrderGiveCode] [int] NOT NULL,
 CONSTRAINT [PK__Order__C3905BAF3CFAEB02] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderProduct]    Script Date: 17.12.2022 13:18:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderProduct](
	[OrderID] [int] NOT NULL,
	[ProductArticleNumber] [nvarchar](100) NOT NULL,
	[ProductCount] [int] NOT NULL,
 CONSTRAINT [PK__OrderPro__817A2662F318627A] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[ProductArticleNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 17.12.2022 13:18:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[OrderStatus] [int] NOT NULL,
	[OrderDeliveryDate] [date] NOT NULL,
	[OrderPickupPointID] [int] NOT NULL,
	[OrderUserID] [int] NULL,
	[OrderGiveCode] [int] NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PickPoint]    Script Date: 17.12.2022 13:18:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PickPoint](
	[PickPointID] [int] IDENTITY(1,1) NOT NULL,
	[PickPointIndex] [int] NULL,
	[TownID] [int] NOT NULL,
	[PickPointStreet] [nvarchar](50) NOT NULL,
	[PickPointHome] [int] NULL,
 CONSTRAINT [PK_PickPoint] PRIMARY KEY CLUSTERED 
(
	[PickPointID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 17.12.2022 13:18:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductArticleNumber] [nvarchar](100) NOT NULL,
	[ProductName] [nvarchar](max) NOT NULL,
	[ProductDescription] [nvarchar](max) NOT NULL,
	[ProductCategory] [int] NOT NULL,
	[ProductSupplier] [int] NOT NULL,
	[ProductManufacturer] [int] NOT NULL,
	[ProductCost] [int] NOT NULL,
	[ProductDiscountAmount] [int] NULL,
	[ProductQuantityInStock] [int] NOT NULL,
	[ProductStatus] [nvarchar](max) NULL,
	[ProductImage] [nvarchar](max) NULL,
	[ProductUnit] [int] NOT NULL,
	[ProductMaxDiscount] [int] NULL,
 CONSTRAINT [PK__Product__2EA7DCD596EB2C64] PRIMARY KEY CLUSTERED 
(
	[ProductArticleNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 17.12.2022 13:18:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 17.12.2022 13:18:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[IDStatus] [int] IDENTITY(1,1) NOT NULL,
	[StatusName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[IDStatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 17.12.2022 13:18:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[SupplierID] [int] IDENTITY(1,1) NOT NULL,
	[SupplierName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[SupplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Town]    Script Date: 17.12.2022 13:18:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Town](
	[TownID] [int] IDENTITY(1,1) NOT NULL,
	[TownName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Town] PRIMARY KEY CLUSTERED 
(
	[TownID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Unit]    Script Date: 17.12.2022 13:18:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Unit](
	[UnitID] [int] IDENTITY(1,1) NOT NULL,
	[UnitName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Unit] PRIMARY KEY CLUSTERED 
(
	[UnitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 17.12.2022 13:18:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserSurname] [nvarchar](100) NOT NULL,
	[UserName] [nvarchar](100) NOT NULL,
	[UserPatronymic] [nvarchar](100) NOT NULL,
	[UserLogin] [nvarchar](max) NOT NULL,
	[UserPassword] [nvarchar](max) NOT NULL,
	[UserRole] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (1, N'Мужской парфюм')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (2, N'Женский парфюм')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Manufacturer] ON 

INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (1, N'Dragon')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (2, N'Paris Line')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (3, N'Parfums Constantine')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (4, N'Today Parfum')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (5, N'Dilis Parfum')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (6, N'TRUSSARDI')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (7, N'Yves de Sistelle')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (8, N'HUGO BOSS')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (9, N'DOLCE & GABBANA')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (10, N'LACOSTE')
SET IDENTITY_INSERT [dbo].[Manufacturer] OFF
GO
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [ProductCount]) VALUES (1, N'F893T5', 2)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [ProductCount]) VALUES (1, N'А112Т4', 2)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [ProductCount]) VALUES (2, N'E530Y6', 1)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [ProductCount]) VALUES (2, N'F346G5', 2)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [ProductCount]) VALUES (3, N'D344Y7', 2)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [ProductCount]) VALUES (3, N'J432E4', 1)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [ProductCount]) VALUES (4, N'D378D3', 2)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [ProductCount]) VALUES (4, N'E245R5', 1)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [ProductCount]) VALUES (5, N'H732R5', 3)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [ProductCount]) VALUES (5, N'R464G6', 2)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [ProductCount]) VALUES (6, N'E573G6', 3)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [ProductCount]) VALUES (6, N'K535G6', 3)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [ProductCount]) VALUES (7, N'F344S4', 6)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [ProductCount]) VALUES (7, N'G532R5', 5)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [ProductCount]) VALUES (8, N'D526R4', 5)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [ProductCount]) VALUES (8, N'S753T5', 4)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [ProductCount]) VALUES (9, N'A436H7', 3)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [ProductCount]) VALUES (9, N'V472S3', 3)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [ProductCount]) VALUES (10, N'E479G6', 1)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [ProductCount]) VALUES (10, N'O875F6', 4)
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderPickupPointID], [OrderUserID], [OrderGiveCode]) VALUES (1, 1, CAST(N'2022-05-10' AS Date), 24, NULL, 201)
INSERT [dbo].[Orders] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderPickupPointID], [OrderUserID], [OrderGiveCode]) VALUES (2, 1, CAST(N'2022-05-11' AS Date), 25, NULL, 202)
INSERT [dbo].[Orders] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderPickupPointID], [OrderUserID], [OrderGiveCode]) VALUES (3, 1, CAST(N'2022-05-12' AS Date), 26, NULL, 203)
INSERT [dbo].[Orders] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderPickupPointID], [OrderUserID], [OrderGiveCode]) VALUES (4, 1, CAST(N'2022-05-13' AS Date), 27, NULL, 204)
INSERT [dbo].[Orders] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderPickupPointID], [OrderUserID], [OrderGiveCode]) VALUES (5, 1, CAST(N'2022-05-14' AS Date), 28, NULL, 205)
INSERT [dbo].[Orders] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderPickupPointID], [OrderUserID], [OrderGiveCode]) VALUES (6, 1, CAST(N'2022-05-15' AS Date), 29, NULL, 206)
INSERT [dbo].[Orders] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderPickupPointID], [OrderUserID], [OrderGiveCode]) VALUES (7, 1, CAST(N'2022-05-16' AS Date), 30, NULL, 207)
INSERT [dbo].[Orders] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderPickupPointID], [OrderUserID], [OrderGiveCode]) VALUES (8, 1, CAST(N'2022-05-17' AS Date), 31, NULL, 208)
INSERT [dbo].[Orders] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderPickupPointID], [OrderUserID], [OrderGiveCode]) VALUES (9, 1, CAST(N'2022-05-18' AS Date), 32, NULL, 209)
INSERT [dbo].[Orders] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderPickupPointID], [OrderUserID], [OrderGiveCode]) VALUES (10, 2, CAST(N'2022-05-19' AS Date), 33, NULL, 210)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[PickPoint] ON 

INSERT [dbo].[PickPoint] ([PickPointID], [PickPointIndex], [TownID], [PickPointStreet], [PickPointHome]) VALUES (1, 344288, 1, N' ул. Чехова', 1)
INSERT [dbo].[PickPoint] ([PickPointID], [PickPointIndex], [TownID], [PickPointStreet], [PickPointHome]) VALUES (2, 614164, 1, N'  ул. Степная', 30)
INSERT [dbo].[PickPoint] ([PickPointID], [PickPointIndex], [TownID], [PickPointStreet], [PickPointHome]) VALUES (3, 394242, 1, N' ул. Коммунистическая', 43)
INSERT [dbo].[PickPoint] ([PickPointID], [PickPointIndex], [TownID], [PickPointStreet], [PickPointHome]) VALUES (4, 660540, 1, N' ул. Солнечная', 25)
INSERT [dbo].[PickPoint] ([PickPointID], [PickPointIndex], [TownID], [PickPointStreet], [PickPointHome]) VALUES (5, 125837, 1, N' ул. Шоссейная', 40)
INSERT [dbo].[PickPoint] ([PickPointID], [PickPointIndex], [TownID], [PickPointStreet], [PickPointHome]) VALUES (6, 125703, 1, N' ул. Партизанская', 49)
INSERT [dbo].[PickPoint] ([PickPointID], [PickPointIndex], [TownID], [PickPointStreet], [PickPointHome]) VALUES (7, 625283, 1, N' ул. Победы', 46)
INSERT [dbo].[PickPoint] ([PickPointID], [PickPointIndex], [TownID], [PickPointStreet], [PickPointHome]) VALUES (8, 614611, 1, N' ул. Молодежная', 50)
INSERT [dbo].[PickPoint] ([PickPointID], [PickPointIndex], [TownID], [PickPointStreet], [PickPointHome]) VALUES (9, 454311, 1, N' ул. Новая', 19)
INSERT [dbo].[PickPoint] ([PickPointID], [PickPointIndex], [TownID], [PickPointStreet], [PickPointHome]) VALUES (10, 660007, 1, N' ул. Октябрьская', 19)
INSERT [dbo].[PickPoint] ([PickPointID], [PickPointIndex], [TownID], [PickPointStreet], [PickPointHome]) VALUES (11, 603036, 1, N' ул. Садовая', 4)
INSERT [dbo].[PickPoint] ([PickPointID], [PickPointIndex], [TownID], [PickPointStreet], [PickPointHome]) VALUES (12, 450983, 1, N' ул. Комсомольская', 26)
INSERT [dbo].[PickPoint] ([PickPointID], [PickPointIndex], [TownID], [PickPointStreet], [PickPointHome]) VALUES (13, 394782, 1, N' ул. Чехова', 3)
INSERT [dbo].[PickPoint] ([PickPointID], [PickPointIndex], [TownID], [PickPointStreet], [PickPointHome]) VALUES (14, 603002, 1, N' ул. Дзержинского', 28)
INSERT [dbo].[PickPoint] ([PickPointID], [PickPointIndex], [TownID], [PickPointStreet], [PickPointHome]) VALUES (15, 450558, 1, N' ул. Набережная', 30)
INSERT [dbo].[PickPoint] ([PickPointID], [PickPointIndex], [TownID], [PickPointStreet], [PickPointHome]) VALUES (16, 394060, 1, N' ул. Фрунзе', 43)
INSERT [dbo].[PickPoint] ([PickPointID], [PickPointIndex], [TownID], [PickPointStreet], [PickPointHome]) VALUES (17, 410661, 1, N' ул. Школьная', 50)
INSERT [dbo].[PickPoint] ([PickPointID], [PickPointIndex], [TownID], [PickPointStreet], [PickPointHome]) VALUES (18, 625590, 1, N' ул. Коммунистическая', 20)
INSERT [dbo].[PickPoint] ([PickPointID], [PickPointIndex], [TownID], [PickPointStreet], [PickPointHome]) VALUES (19, 625683, 1, N' ул. 8 Марта', NULL)
INSERT [dbo].[PickPoint] ([PickPointID], [PickPointIndex], [TownID], [PickPointStreet], [PickPointHome]) VALUES (20, 400562, 1, N' ул. Зеленая', 32)
INSERT [dbo].[PickPoint] ([PickPointID], [PickPointIndex], [TownID], [PickPointStreet], [PickPointHome]) VALUES (21, 614510, 1, N' ул. Маяковского', 47)
INSERT [dbo].[PickPoint] ([PickPointID], [PickPointIndex], [TownID], [PickPointStreet], [PickPointHome]) VALUES (22, 410542, 1, N' ул. Светлая', 46)
INSERT [dbo].[PickPoint] ([PickPointID], [PickPointIndex], [TownID], [PickPointStreet], [PickPointHome]) VALUES (23, 620839, 1, N' ул. Цветочная', 8)
INSERT [dbo].[PickPoint] ([PickPointID], [PickPointIndex], [TownID], [PickPointStreet], [PickPointHome]) VALUES (24, 443890, 1, N' ул. Коммунистическая', 1)
INSERT [dbo].[PickPoint] ([PickPointID], [PickPointIndex], [TownID], [PickPointStreet], [PickPointHome]) VALUES (25, 603379, 1, N' ул. Спортивная', 46)
INSERT [dbo].[PickPoint] ([PickPointID], [PickPointIndex], [TownID], [PickPointStreet], [PickPointHome]) VALUES (26, 603721, 1, N' ул. Гоголя', 41)
INSERT [dbo].[PickPoint] ([PickPointID], [PickPointIndex], [TownID], [PickPointStreet], [PickPointHome]) VALUES (27, 410172, 1, N' ул. Северная', 13)
INSERT [dbo].[PickPoint] ([PickPointID], [PickPointIndex], [TownID], [PickPointStreet], [PickPointHome]) VALUES (28, 420151, 1, N' ул. Вишневая', 32)
INSERT [dbo].[PickPoint] ([PickPointID], [PickPointIndex], [TownID], [PickPointStreet], [PickPointHome]) VALUES (29, 125061, 1, N' ул. Подгорная', 8)
INSERT [dbo].[PickPoint] ([PickPointID], [PickPointIndex], [TownID], [PickPointStreet], [PickPointHome]) VALUES (30, 630370, 1, N' ул. Шоссейная', 24)
INSERT [dbo].[PickPoint] ([PickPointID], [PickPointIndex], [TownID], [PickPointStreet], [PickPointHome]) VALUES (31, 614753, 1, N' ул. Полевая', 35)
INSERT [dbo].[PickPoint] ([PickPointID], [PickPointIndex], [TownID], [PickPointStreet], [PickPointHome]) VALUES (32, 426030, 1, N' ул. Маяковского', 44)
INSERT [dbo].[PickPoint] ([PickPointID], [PickPointIndex], [TownID], [PickPointStreet], [PickPointHome]) VALUES (33, 450375, 1, N'ул. Клубная', 44)
INSERT [dbo].[PickPoint] ([PickPointID], [PickPointIndex], [TownID], [PickPointStreet], [PickPointHome]) VALUES (34, 625560, 1, N' ул. Некрасова', 12)
INSERT [dbo].[PickPoint] ([PickPointID], [PickPointIndex], [TownID], [PickPointStreet], [PickPointHome]) VALUES (35, 630201, 1, N' ул. Комсомольская', 17)
INSERT [dbo].[PickPoint] ([PickPointID], [PickPointIndex], [TownID], [PickPointStreet], [PickPointHome]) VALUES (36, 190949, 1, N' ул. Мичурина', 26)
SET IDENTITY_INSERT [dbo].[PickPoint] OFF
GO
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductSupplier], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductImage], [ProductUnit], [ProductMaxDiscount]) VALUES (N'A436H7', N'Туалетная вода', N'Туалетная вода Dilis Parfum Aqua Cool, 100 мл', 1, 1, 5, 1000, 15, 12, N'', N'', 1, 15)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductSupplier], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductImage], [ProductUnit], [ProductMaxDiscount]) VALUES (N'C323R4', N'Парфюмерная вода', N'Парфюмерная вода TRUSSARDI Donna Trussardi (2011), 50 мл', 1, 1, 6, 4100, 4, 8, N'', N'', 1, 25)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductSupplier], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductImage], [ProductUnit], [ProductMaxDiscount]) VALUES (N'D344Y7', N'Парфюмерная вода', N'Парфюмерная вода Today Parfum Prestige №6 Eclat, 17 мл', 2, 1, 4, 223, 5, 16, N'', N'D344Y7.jpg', 1, 10)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductSupplier], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductImage], [ProductUnit], [ProductMaxDiscount]) VALUES (N'D378D3', N'Туалетная вода', N'Духи Dilis Parfum Classic Collection №18, 30 мл', 2, 1, 5, 1500, 3, 16, N'', N'D378D3.jpg', 1, 10)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductSupplier], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductImage], [ProductUnit], [ProductMaxDiscount]) VALUES (N'D526R4', N'Парфюмерная вода', N'Парфюмерная вода DOLCE & GABBANA Dolce&Gabbana pour', 2, 1, 9, 3600, 3, 6, N'', N'', 1, 10)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductSupplier], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductImage], [ProductUnit], [ProductMaxDiscount]) VALUES (N'D634D4', N'Туалетная вода', N'Туалетная вода Paris Line Parfums Dollar Diamond, 100 мл', 1, 2, 2, 367, 2, 14, N'', N'', 1, 15)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductSupplier], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductImage], [ProductUnit], [ProductMaxDiscount]) VALUES (N'E245R5', N'Туалетная вода', N'Туалетная вода Dilis Parfum Mila, 100 мл', 2, 2, 5, 1000, 5, 2, N'', N'E245R5.jpg', 1, 15)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductSupplier], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductImage], [ProductUnit], [ProductMaxDiscount]) VALUES (N'E479G6', N'Туалетная вода', N'Туалетная вода HUGO BOSS Boss Bottled, 100 мл', 1, 2, 8, 6100, 5, 3, N'', N'', 1, 25)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductSupplier], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductImage], [ProductUnit], [ProductMaxDiscount]) VALUES (N'E530Y6', N'Парфюмерная вода', N'Парфюмерная вода Parfums Constantine Mademoiselle 5, 50 мл', 2, 1, 3, 519, 3, 9, N'', N'E530Y6.jpg', 1, 15)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductSupplier], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductImage], [ProductUnit], [ProductMaxDiscount]) VALUES (N'E573G6', N'Духи', N'Духи Dilis Parfum Classic Collection №34, 30 мл', 2, 2, 5, 1087, 5, 13, N'', N'', 1, 15)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductSupplier], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductImage], [ProductUnit], [ProductMaxDiscount]) VALUES (N'F344S4', N'Туалетная вода', N'Туалетная вода Today Parfum Cola Cherry, 50 мл', 2, 2, 4, 546, 2, 9, N'', N'', 1, 5)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductSupplier], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductImage], [ProductUnit], [ProductMaxDiscount]) VALUES (N'F346G5', N'Туалетная вода', N'Туалетная вода Today Parfum G-Club Egoist, 100 мл', 2, 2, 4, 450, 3, 18, N'', N'F346G5.jpg', 1, 5)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductSupplier], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductImage], [ProductUnit], [ProductMaxDiscount]) VALUES (N'F893T5', N'Туалетная вода', N'Туалетная вода Paris Line Parfums Cosa Nostra Platinum, 100 мл', 2, 2, 2, 327, 2, 14, N'', N'F893T5.jpg', 1, 15)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductSupplier], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductImage], [ProductUnit], [ProductMaxDiscount]) VALUES (N'G532R5', N'Парфюмерная вода', N'Парфюмерная вода Parfums Constantine New York Perfume Six, 50 мл', 1, 1, 3, 640, 3, 16, N'', N'', 1, 10)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductSupplier], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductImage], [ProductUnit], [ProductMaxDiscount]) VALUES (N'G832G6', N'Туалетная вода', N'Туалетная вода Paris Line Parfums Vodka Extreme, 100 мл', 2, 2, 2, 368, 4, 7, N'', N'G832G6.jpg', 1, 10)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductSupplier], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductImage], [ProductUnit], [ProductMaxDiscount]) VALUES (N'H647R5', N'Туалетная вода', N'Туалетная вода Parfums Constantine Gentleman №3, 100 мл', 2, 2, 3, 555, 4, 6, N'', N'', 1, 10)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductSupplier], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductImage], [ProductUnit], [ProductMaxDiscount]) VALUES (N'H732R5', N'Туалетная вода', N'Туалетная вода Paris Line Parfums Cosa Nostra, 100 мл', 2, 2, 2, 500, 5, 7, N'', N'', 1, 15)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductSupplier], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductImage], [ProductUnit], [ProductMaxDiscount]) VALUES (N'J432E4', N'Туалетная вода', N'Туалетная вода Paris Line Parfums Dollar, 100 мл', 2, 2, 2, 341, 2, 4, N'', N'J432E4.jpg', 1, 5)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductSupplier], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductImage], [ProductUnit], [ProductMaxDiscount]) VALUES (N'K535G6', N'Парфюмерная вода', N'Парфюмерная вода Yves de Sistelle Incidence pour Femme, 65 мл', 2, 2, 7, 1200, 2, 5, N'', N'', 1, 15)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductSupplier], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductImage], [ProductUnit], [ProductMaxDiscount]) VALUES (N'K742T5', N'Туалетная вода', N'Туалетная вода Dilis Parfum Cool&Grey, 100 мл', 1, 1, 5, 900, 4, 6, N'', N'', 1, 15)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductSupplier], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductImage], [ProductUnit], [ProductMaxDiscount]) VALUES (N'L533E4', N'Туалетная вода', N'Туалетная вода HUGO BOSS Boss Bottled, 50 мл', 1, 2, 8, 3900, 4, 15, N'', N'', 1, 15)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductSupplier], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductImage], [ProductUnit], [ProductMaxDiscount]) VALUES (N'O875F6', N'Парфюмерная вода', N'Dilis Parfum Мужской Walker Breeze', 1, 2, 5, 600, 2, 5, N'', N'', 1, 10)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductSupplier], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductImage], [ProductUnit], [ProductMaxDiscount]) VALUES (N'R464G6', N'Духи', N'Духи Dilis Parfum Ночная Фиалка, 9.5 мл', 2, 1, 5, 290, 2, 11, N'', N'', 1, 5)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductSupplier], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductImage], [ProductUnit], [ProductMaxDiscount]) VALUES (N'R563E3', N'Туалетная вода', N'Туалетная вода Today Parfum G-Club Millioner, 100 мл', 1, 1, 4, 418, 4, 9, N'', N'', 1, 5)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductSupplier], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductImage], [ProductUnit], [ProductMaxDiscount]) VALUES (N'S346H6', N'Туалетная вода', N'Туалетная вода Dilis Parfum Steelman Zone, 100 мл', 1, 1, 5, 1000, 4, 12, N'', N'', 1, 10)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductSupplier], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductImage], [ProductUnit], [ProductMaxDiscount]) VALUES (N'S753T5', N'Парфюмерная вода', N'Парфюмерная вода DOLCE & GABBANA Dolce Shine, 75 мл', 2, 1, 9, 5200, 4, 3, N'', N'', 1, 5)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductSupplier], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductImage], [ProductUnit], [ProductMaxDiscount]) VALUES (N'V324R5', N'Парфюмерная вода', N'Парфюмерная вода Parfums Constantine Mademoiselle 7, 50 мл', 2, 1, 3, 519, 3, 5, N'', N'V324R5.jpg', 1, 5)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductSupplier], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductImage], [ProductUnit], [ProductMaxDiscount]) VALUES (N'V472S3', N'Парфюмерная вода', N'Парфюмерная вода LACOSTE Lacoste pour Femme, 30 мл', 1, 2, 10, 2640, 4, 7, N'', N'', 1, 30)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductSupplier], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductImage], [ProductUnit], [ProductMaxDiscount]) VALUES (N'V493E3', N'Туалетная вода', N'Туалетная вода DOLCE & GABBANA 3 L''Imperatrice, 50 мл', 2, 1, 9, 3200, 2, 8, N'', N'', 1, 10)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductSupplier], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductImage], [ProductUnit], [ProductMaxDiscount]) VALUES (N'А112Т4', N'Одеколон', N'Одеколон Dragon Parfums Dragon Noir, 100 мл', 1, 1, 1, 660, 5, 6, N'', N'А112Т4.jpg', 1, 30)
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (1, N'Администратор')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (2, N'Менеджер')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (3, N'Клиент')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Status] ON 

INSERT [dbo].[Status] ([IDStatus], [StatusName]) VALUES (1, N'Новый ')
INSERT [dbo].[Status] ([IDStatus], [StatusName]) VALUES (2, N'Завершен')
SET IDENTITY_INSERT [dbo].[Status] OFF
GO
SET IDENTITY_INSERT [dbo].[Supplier] ON 

INSERT [dbo].[Supplier] ([SupplierID], [SupplierName]) VALUES (1, N'Летуаль')
INSERT [dbo].[Supplier] ([SupplierID], [SupplierName]) VALUES (2, N'Рив Гош')
SET IDENTITY_INSERT [dbo].[Supplier] OFF
GO
SET IDENTITY_INSERT [dbo].[Town] ON 

INSERT [dbo].[Town] ([TownID], [TownName]) VALUES (1, N' г. Ангарск')
SET IDENTITY_INSERT [dbo].[Town] OFF
GO
SET IDENTITY_INSERT [dbo].[Unit] ON 

INSERT [dbo].[Unit] ([UnitID], [UnitName]) VALUES (1, N'шт.')
SET IDENTITY_INSERT [dbo].[Unit] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (1, N'Константинова ', N'Вероника', N'Агафоновна', N'loginDEsgg2018', N'qhgYnW', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (2, N'Меркушев ', N'Мартын', N'Федотович', N'loginDEdcd2018', N'LxR6YI', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (3, N'Казаков ', N'Федот', N'Кондратович', N'loginDEisg2018', N'Cp8ddU', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (4, N'Карпов ', N'Улеб', N'Леонидович', N'loginDEcph2018', N'7YpE0p', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (5, N'Королёв ', N'Матвей', N'Вадимович', N'loginDEgco2018', N'nMr|ss', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (6, N'Юдин ', N'Герман', N'Кондратович', N'loginDEwjg2018', N'9UfqWQ', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (7, N'Беляева ', N'Анна', N'Вячеславовна', N'loginDEjbz2018', N'xIAWNI', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (8, N'Беляев ', N'Валентин', N'Артёмович', N'loginDEmgu2018', N'0gC3bk', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (9, N'Семёнов ', N'Герман', N'Дмитрьевич', N'loginDErdg2018', N'ni0ue0', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (10, N'Шестаков ', N'Илья', N'Антонинович', N'loginDEjtv2018', N'f2ZaN6', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (11, N'Власов ', N'Вадим', N'Васильевич', N'loginDEtfj2018', N'{{ksPn', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (12, N'Савельев ', N'Арсений', N'Авксентьевич', N'loginDEpnb2018', N'{ADBdc', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (13, N'Ефимов ', N'Руслан', N'Якунович', N'loginDEzer2018', N'5&R+zs', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (14, N'Бурова ', N'Марфа', N'Федотовна', N'loginDEiin2018', N'y9l*b}', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (15, N'Селезнёв ', N'Александр', N'Никитевич', N'loginDEqda2018', N'|h+r}I', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (16, N'Кулакова ', N'Виктория', N'Георгьевна', N'loginDEbnj2018', N'#ИМЯ?', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (17, N'Дорофеева ', N'Кира', N'Демьяновна', N'loginDEqte2018', N'dC8bDI', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (18, N'Сафонова ', N'Нинель', N'Якововна', N'loginDEfeo2018', N'8cI7vq', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (19, N'Ситникова ', N'София', N'Лукьевна', N'loginDEvni2018', N'e4pVIv', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (20, N'Медведев ', N'Ириней', N'Геннадьевич', N'loginDEjis2018', N'A9K++2', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (21, N'Суханова ', N'Евгения', N'Улебовна', N'loginDExvv2018', N'R1zh}|', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (22, N'Игнатьев ', N'Владлен', N'Дамирович', N'loginDEadl2018', N'F&IWf4', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (23, N'Ефремов ', N'Христофор', N'Владиславович', N'loginDEyzn2018', N'P1v24R', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (24, N'Кошелев ', N'Ростислав', N'Куприянович', N'loginDEphn2018', N'F}jGsJ', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (25, N'Галкина ', N'Тамара', N'Авксентьевна', N'loginDEdvk2018', N'NKNkup', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (26, N'Журавлёва ', N'Вера', N'Арсеньевна', N'loginDEtld2018', N'c+CECK', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (27, N'Савина ', N'Таисия', N'Глебовна', N'loginDEima2018', N'XK3sOA', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (28, N'Иванов ', N'Яков', N'Мэлорович', N'loginDEyfe2018', N'4Bbzpa', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (29, N'Лыткин ', N'Ким', N'Алексеевич', N'loginDEwqc2018', N'vRtAP*', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (30, N'Логинов ', N'Федот', N'Святославович', N'loginDEgtt2018', N'7YD|BR', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (31, N'Русакова ', N'Марина', N'Юлиановна', N'loginDEiwl2018', N'LhlmIl', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (32, N'Константинов ', N'Пётр', N'Кондратович', N'loginDEyvi2018', N'22beR}', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (33, N'Поляков ', N'Анатолий', N'Игоревич', N'loginDEtfz2018', N'uQY0ZQ', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (34, N'Панфилова ', N'Василиса', N'Григорьевна', N'loginDEikb2018', N'*QkUxc', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (35, N'Воробьёв ', N'Герман', N'Романович', N'loginDEdmi2018', N'HOGFbU', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (36, N'Андреев ', N'Ростислав', N'Федосеевич', N'loginDEtlo2018', N'58Jxrg', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (37, N'Бобров ', N'Агафон', N'Владимирович', N'loginDEsnd2018', N'lLHqZf', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (38, N'Лапин ', N'Алексей', N'Витальевич', N'loginDEgno2018', N'4fqLiO', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (39, N'Шестаков ', N'Авдей', N'Иванович', N'loginDEgnl2018', N'wdio{u', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (40, N'Гаврилова ', N'Алина', N'Эдуардовна', N'loginDEzna2018', N'yz1iMB', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (41, N'Жуков ', N'Юлиан', N'Валерьянович', N'loginDEsyh2018', N'&4jYGs', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (42, N'Пономарёв ', N'Максим', N'Альвианович', N'loginDExex2018', N'rnh36{', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (43, N'Зиновьева ', N'Мария', N'Лаврентьевна', N'loginDEdjm2018', N'KjI1JR', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (44, N'Осипов ', N'Артём', N'Мэлорович', N'loginDEgup2018', N'36|KhF', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (45, N'Лапин ', N'Вячеслав', N'Геласьевич', N'loginDEdat2018', N'ussd8Q', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (46, N'Зуев ', N'Ириней', N'Вадимович', N'loginDEffj2018', N'cJP+HC', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (47, N'Коновалова ', N'Агафья', N'Митрофановна', N'loginDEisp2018', N'dfz5Ii', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (48, N'Исаев ', N'Дмитрий', N'Аристархович', N'loginDEfrp2018', N'6dcR|9', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (49, N'Белозёрова ', N'Алевтина', N'Лаврентьевна', N'loginDEaee2018', N'5&qONH', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (50, N'Самсонов ', N'Агафон', N'Максимович', N'loginDEthu2018', N'|0xWzV', 3)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD  CONSTRAINT [FK__OrderProd__Produ__695C9DA1] FOREIGN KEY([ProductArticleNumber])
REFERENCES [dbo].[Product] ([ProductArticleNumber])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderProduct] CHECK CONSTRAINT [FK__OrderProd__Produ__695C9DA1]
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD  CONSTRAINT [FK_OrderProduct_Orders] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([OrderID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderProduct] CHECK CONSTRAINT [FK_OrderProduct_Orders]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_PickPoint] FOREIGN KEY([OrderPickupPointID])
REFERENCES [dbo].[PickPoint] ([PickPointID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_PickPoint]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Status] FOREIGN KEY([OrderStatus])
REFERENCES [dbo].[Status] ([IDStatus])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Status]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_User] FOREIGN KEY([OrderUserID])
REFERENCES [dbo].[User] ([UserID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_User]
GO
ALTER TABLE [dbo].[PickPoint]  WITH CHECK ADD  CONSTRAINT [FK_PickPoint_Town] FOREIGN KEY([TownID])
REFERENCES [dbo].[Town] ([TownID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PickPoint] CHECK CONSTRAINT [FK_PickPoint_Town]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([ProductCategory])
REFERENCES [dbo].[Category] ([CategoryID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Manufacturer] FOREIGN KEY([ProductManufacturer])
REFERENCES [dbo].[Manufacturer] ([ManufacturerID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Manufacturer]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Supplier] FOREIGN KEY([ProductSupplier])
REFERENCES [dbo].[Supplier] ([SupplierID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Supplier]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Unit] FOREIGN KEY([ProductUnit])
REFERENCES [dbo].[Unit] ([UnitID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Unit]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD FOREIGN KEY([UserRole])
REFERENCES [dbo].[Role] ([RoleID])
GO
USE [master]
GO
ALTER DATABASE [10190162] SET  READ_WRITE 
GO
