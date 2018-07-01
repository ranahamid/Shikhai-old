USE [master]
GO
/****** Object:  Database [DB_A2C6ED_shodypati]    Script Date: 1/24/2018 11:30:38 PM ******/
CREATE DATABASE [DB_A2C6ED_shodypati]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DB_A2C6ED_shodypati_Data', FILENAME = N'H:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\DB_A2C6ED_shodypati_DATA.mdf' , SIZE = 8192KB , MAXSIZE = 512000KB , FILEGROWTH = 10%)
 LOG ON 
( NAME = N'DB_A2C6ED_shodypati_Log', FILENAME = N'H:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\DB_A2C6ED_shodypati_Log.LDF' , SIZE = 39232KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DB_A2C6ED_shodypati] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DB_A2C6ED_shodypati].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DB_A2C6ED_shodypati] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DB_A2C6ED_shodypati] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DB_A2C6ED_shodypati] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DB_A2C6ED_shodypati] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DB_A2C6ED_shodypati] SET ARITHABORT OFF 
GO
ALTER DATABASE [DB_A2C6ED_shodypati] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DB_A2C6ED_shodypati] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DB_A2C6ED_shodypati] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DB_A2C6ED_shodypati] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DB_A2C6ED_shodypati] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DB_A2C6ED_shodypati] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DB_A2C6ED_shodypati] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DB_A2C6ED_shodypati] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DB_A2C6ED_shodypati] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DB_A2C6ED_shodypati] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DB_A2C6ED_shodypati] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DB_A2C6ED_shodypati] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DB_A2C6ED_shodypati] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DB_A2C6ED_shodypati] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DB_A2C6ED_shodypati] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DB_A2C6ED_shodypati] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [DB_A2C6ED_shodypati] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DB_A2C6ED_shodypati] SET RECOVERY FULL 
GO
ALTER DATABASE [DB_A2C6ED_shodypati] SET  MULTI_USER 
GO
ALTER DATABASE [DB_A2C6ED_shodypati] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DB_A2C6ED_shodypati] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DB_A2C6ED_shodypati] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DB_A2C6ED_shodypati] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [DB_A2C6ED_shodypati] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DB_A2C6ED_shodypati] SET QUERY_STORE = OFF
GO
USE [DB_A2C6ED_shodypati]
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
USE [DB_A2C6ED_shodypati]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 1/24/2018 11:30:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 1/24/2018 11:30:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 1/24/2018 11:30:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 1/24/2018 11:30:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 1/24/2018 11:30:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 1/24/2018 11:30:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[Address] [nvarchar](256) NULL,
	[IsFakeEmail] [bit] NULL,
	[DoctorName] [nvarchar](256) NULL,
	[HospitalName] [nvarchar](256) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BannerImageTbl]    Script Date: 1/24/2018 11:30:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BannerImageTbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BannerId] [int] NOT NULL,
	[URL] [nvarchar](256) NULL,
	[ImagePath] [nvarchar](256) NULL,
	[Description] [nvarchar](256) NULL,
	[DisplayOrder] [int] NOT NULL,
	[MerchantId] [int] NOT NULL,
	[CategoryId] [int] NOT NULL,
 CONSTRAINT [PK_BannerImage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BannerTbl]    Script Date: 1/24/2018 11:30:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BannerTbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[CreatedOnUtc] [datetime2](7) NULL,
	[UpdatedOnUtc] [datetime2](7) NULL,
	[Published] [bit] NULL,
 CONSTRAINT [PK_Banner] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BazarListTbl]    Script Date: 1/24/2018 11:30:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BazarListTbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[MainImagePath] [nvarchar](100) NULL,
	[Address] [nvarchar](255) NULL,
	[Number] [nvarchar](20) NULL,
	[CreatedOnUtc] [datetime2](7) NULL,
	[UpdatedOnUtc] [datetime2](7) NULL,
 CONSTRAINT [PK_BazarListTbl] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BrandTbl]    Script Date: 1/24/2018 11:30:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BrandTbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name_English] [nvarchar](256) NULL,
	[Name_Bangla] [nvarchar](256) NULL,
	[Logo] [nvarchar](128) NULL,
	[DisplayOrder] [int] NULL,
	[CreatedOnUtc] [datetime2](7) NULL,
	[UpdatedOnUtc] [datetime2](7) NULL,
	[Published] [bit] NULL,
 CONSTRAINT [PK_Brand] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CampaignProductsTbl]    Script Date: 1/24/2018 11:30:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CampaignProductsTbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
 CONSTRAINT [PK_CampaignProducts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CategoryTbl]    Script Date: 1/24/2018 11:30:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoryTbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name_English] [nvarchar](256) NULL,
	[Name_Bangla] [nvarchar](256) NULL,
	[Description] [nvarchar](max) NULL,
	[DisplayOrder] [int] NULL,
	[ImagePath] [nvarchar](256) NULL,
	[Parent1Id] [int] NULL,
	[ShowOnHomePage] [bit] NULL,
	[IncludeInTopMenu] [bit] NULL,
	[CreatedOnUtc] [datetime2](7) NULL,
	[UpdatedOnUtc] [datetime2](7) NULL,
	[Published] [bit] NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerSearchTbl]    Script Date: 1/24/2018 11:30:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerSearchTbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[Keyword] [nvarchar](512) NULL,
	[IpAddress] [nvarchar](128) NULL,
	[CreatedOnUtc] [datetime2](7) NULL,
 CONSTRAINT [PK_CustomerSearch] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GeoZoneTbl]    Script Date: 1/24/2018 11:30:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GeoZoneTbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](128) NULL,
	[Description] [nvarchar](max) NULL,
	[DateAdded] [int] NULL,
	[DateModified] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LogTbl]    Script Date: 1/24/2018 11:30:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LogTbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ExceptionMessage] [nvarchar](3050) NULL,
	[ExceptionStackTrace] [nvarchar](max) NULL,
	[ControllerName] [nvarchar](256) NULL,
	[IpAddress] [nvarchar](256) NULL,
	[Browser] [nvarchar](3050) NULL,
	[OS] [nvarchar](256) NULL,
	[UserId] [uniqueidentifier] NULL,
	[ActionName] [nvarchar](256) NULL,
	[CreatedOnUtc] [datetime2](7) NULL,
 CONSTRAINT [PK_LogTbl] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MedicineListTbl]    Script Date: 1/24/2018 11:30:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MedicineListTbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[MedicineName] [nvarchar](50) NULL,
	[Quantity] [nvarchar](50) NULL,
	[Price] [int] NULL,
	[FinishTime] [datetime2](7) NULL,
 CONSTRAINT [PK_MedicineListTbl] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MerchantTbl]    Script Date: 1/24/2018 11:31:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MerchantTbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[URL] [nvarchar](128) NULL,
	[Name_English] [nvarchar](128) NULL,
	[Name_Bangla] [nvarchar](128) NULL,
	[Logo] [nvarchar](128) NULL,
	[TypeOfGoods] [nvarchar](128) NULL,
	[Notes] [nvarchar](max) NULL,
	[DiscountAvailable] [bit] NULL,
	[DisplayOrder] [int] NULL,
	[CreatedOnUtc] [datetime2](7) NULL,
	[UpdatedOnUtc] [datetime2](7) NULL,
	[Published] [bit] NULL,
 CONSTRAINT [PK_Merchant] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderPaymentMethodTbl]    Script Date: 1/24/2018 11:31:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderPaymentMethodTbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](128) NULL,
	[Instructions] [nvarchar](max) NULL,
	[InstructionsImageUrl] [nvarchar](256) NULL,
	[Published] [bit] NULL,
 CONSTRAINT [PK_Payment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderPaymentStatusTbl]    Script Date: 1/24/2018 11:31:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderPaymentStatusTbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[DefaultStatus] [bit] NULL,
 CONSTRAINT [PK_OrderPaymentStatusTbl] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrdersAddressTbl]    Script Date: 1/24/2018 11:31:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrdersAddressTbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderGuidId] [uniqueidentifier] NULL,
	[IsShipping] [bit] NULL,
	[IsBilling] [bit] NULL,
	[Address1] [nvarchar](256) NULL,
	[Address2] [nvarchar](256) NULL,
	[Division] [nvarchar](128) NULL,
	[District] [nvarchar](128) NULL,
	[Thana] [nvarchar](128) NULL,
	[PostOffice] [nvarchar](128) NULL,
	[PostCode] [nvarchar](18) NULL,
	[MobileNumber] [nvarchar](20) NULL,
 CONSTRAINT [PK_dbo.UserAddress] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderShippingTbl]    Script Date: 1/24/2018 11:31:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderShippingTbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Note] [nvarchar](1024) NULL,
 CONSTRAINT [PK_OrderShippingMethodTbl] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrdersProductTbl]    Script Date: 1/24/2018 11:31:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrdersProductTbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderGuidId] [uniqueidentifier] NULL,
	[ProductId] [int] NOT NULL,
	[ProductName_English] [nvarchar](128) NULL,
	[ProductName_Bangla] [nvarchar](128) NULL,
	[UnitPrice] [int] NULL,
	[OfferPrice] [int] NULL,
	[Quantity] [int] NULL,
	[TotalPrice] [int] NULL,
	[MainImagePath] [nvarchar](250) NULL,
	[Discount] [int] NULL,
	[TotalPriceAfterDiscount] [int] NULL,
	[Size] [nvarchar](200) NULL,
	[Color] [nvarchar](200) NULL,
	[Weight] [nvarchar](200) NULL,
	[Length] [nvarchar](200) NULL,
	[Width] [nvarchar](200) NULL,
	[Height] [nvarchar](200) NULL,
	[BrandId] [int] NULL,
	[MerchantId] [int] NULL,
	[Note] [nvarchar](max) NULL,
 CONSTRAINT [PK_OrdersProduct] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderStatusTbl]    Script Date: 1/24/2018 11:31:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderStatusTbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[DefaultStatus] [bit] NULL,
 CONSTRAINT [PK_OrderStatusTbl] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrdersTbl]    Script Date: 1/24/2018 11:31:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrdersTbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GuidId] [uniqueidentifier] NULL,
	[CustomerId] [uniqueidentifier] NULL,
	[OrderStatusId] [int] NULL,
	[OrderStatus] [nvarchar](128) NULL,
	[ShippingMethodId] [int] NULL,
	[ShippingMethod] [nvarchar](128) NULL,
	[TotalProductPrice] [int] NULL,
	[ShippingPrice] [int] NULL,
	[TotalPriceAfterShipping] [int] NULL,
	[OrderDiscountPrice] [int] NULL,
	[TotalPriceAfterShippingAndDiscount] [int] NULL,
	[PaymentMethodId] [int] NULL,
	[PaymentMethod] [nvarchar](128) NULL,
	[OrderDate] [datetime2](7) NULL,
	[ShippingDate] [datetime2](7) NULL,
	[BillingDate] [datetime2](7) NULL,
	[PickUpInStore] [bit] NULL,
	[PaymentStatus] [nvarchar](128) NULL,
	[PaymentStatusId] [int] NULL,
	[Active] [bit] NULL,
	[CreatedOnUtc] [datetime2](7) NULL,
	[UpdatedOnUtc] [datetime2](7) NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductImageTbl]    Script Date: 1/24/2018 11:31:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductImageTbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[ImagePath] [nvarchar](256) NULL,
	[Description] [nvarchar](256) NULL,
	[DisplayOrder] [int] NULL,
 CONSTRAINT [PK_ProductImage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductRelatedTbl]    Script Date: 1/24/2018 11:31:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductRelatedTbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NULL,
	[RelatedProductId] [int] NULL,
 CONSTRAINT [PK_ProductRelatedTbl] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductReviewTbl]    Script Date: 1/24/2018 11:31:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductReviewTbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProdcutId] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[IsApproved] [bit] NULL,
	[Title] [nvarchar](128) NULL,
	[ReviewText] [nvarchar](max) NULL,
	[ReplyText] [nvarchar](max) NULL,
	[Rating] [int] NULL,
	[CreatedOnUtc] [datetime2](7) NULL,
 CONSTRAINT [PK_ProductReviewTbl] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductTbl]    Script Date: 1/24/2018 11:31:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductTbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductName_English] [nvarchar](200) NULL,
	[ProductName_Bangla] [nvarchar](200) NULL,
	[Description_English] [nvarchar](max) NULL,
	[Description_Bangla] [nvarchar](max) NULL,
	[CategoryId] [int] NULL,
	[QuantityInStock] [int] NULL,
	[MainImagePath] [nvarchar](255) NULL,
	[UnitPrice] [int] NULL,
	[OfferPrice] [int] NULL,
	[DiscountPercentage] [decimal](18, 4) NULL,
	[DiscountAmount] [decimal](18, 4) NULL,
	[DiscountStartDateUtc] [datetime2](7) NULL,
	[DiscountEndDateUtc] [datetime2](7) NULL,
	[DiscountRequiresCouponCode] [bit] NULL,
	[CouponCode] [nvarchar](100) NULL,
	[DisplayOrder] [int] NULL,
	[IsHot] [bit] NULL,
	[BrandId] [int] NULL,
	[MerchantId] [int] NULL,
	[AllowCustomerReviews] [bit] NULL,
	[IsShipEnabled] [bit] NULL,
	[IsFreeShipping] [bit] NULL,
	[ShipSeparately] [bit] NULL,
	[AdditionalShippingCharge] [decimal](18, 4) NULL,
	[DisplayStockAvailability] [bit] NULL,
	[DisplayStockQuantity] [bit] NULL,
	[OrderMinimumQuantity] [int] NULL,
	[OrderMaximumQuantity] [int] NULL,
	[NotReturnable] [bit] NULL,
	[DisableBuyButton] [bit] NULL,
	[AvailableForPreOrder] [bit] NULL,
	[PreOrderAvailabilityStartDateTimeUtc] [datetime2](7) NULL,
	[ProductCost] [int] NULL,
	[MarkAsNew] [bit] NULL,
	[MarkAsNewStartDateTimeUtc] [datetime2](7) NULL,
	[MarkAsNewEndDateTimeUtc] [datetime2](7) NULL,
	[Size] [nvarchar](200) NULL,
	[Color] [nvarchar](200) NULL,
	[Weight] [nvarchar](200) NULL,
	[Length] [nvarchar](200) NULL,
	[Width] [nvarchar](200) NULL,
	[Height] [nvarchar](200) NULL,
	[AvailableStartDateTimeUtc] [datetime2](7) NULL,
	[AvailableEndDateTimeUtc] [datetime2](7) NULL,
	[RelatedProductId] [int] NULL,
	[CreatedOnUtc] [datetime2](7) NULL,
	[UpdatedOnUtc] [datetime2](7) NULL,
	[Published] [bit] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShipmentTbl]    Script Date: 1/24/2018 11:31:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShipmentTbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NULL,
	[TrackingNumber] [nvarchar](128) NULL,
	[CreatedOnUtc] [datetime2](7) NULL,
	[ShippedDateUtc] [datetime2](7) NULL,
	[DeliveryDateUtc] [datetime2](7) NULL,
	[AdminComment] [nvarchar](max) NULL,
 CONSTRAINT [PK_ShipmentTbl] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StockStatusTbl]    Script Date: 1/24/2018 11:31:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StockStatusTbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NameEnglish] [nvarchar](128) NULL,
	[NameBangla] [nvarchar](128) NULL,
	[DescriptionEnglish] [nvarchar](1024) NULL,
	[DescriptionBangla] [nvarchar](1024) NULL,
 CONSTRAINT [PK_StockStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserTbl]    Script Date: 1/24/2018 11:31:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserTbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[FirstName] [nvarchar](128) NULL,
	[LastName] [nvarchar](128) NULL,
	[Company] [nvarchar](128) NULL,
	[NoOfVisits] [int] NULL,
	[LastLoginDateUtc] [datetime2](7) NULL,
	[LastLoginIP] [nvarchar](128) NULL,
	[FailedLoginAttempts] [int] NULL,
	[CannotLoginUntilDateUtc] [datetime2](7) NULL,
	[CreatedOnUtc] [datetime2](7) NULL,
	[UpdatedOnUtc] [datetime2](7) NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'034c549d-9e78-4037-97d1-07d5c08b2d16', N'Admin')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'ddc2287a-910a-4272-8033-58df34cca189', N'Customer')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'f3af0aef-3683-48f5-94a8-0ab54c79f480', N'Patient')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'17fe6280-8ad7-46e8-8d54-5a6250ed8f9e', N'ddc2287a-910a-4272-8033-58df34cca189')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'38c58189-61ed-4b79-a14f-0b0275030b72', N'ddc2287a-910a-4272-8033-58df34cca189')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3c963905-01ab-41cb-944f-6779b453398e', N'ddc2287a-910a-4272-8033-58df34cca189')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3dc2f407-571a-4964-a31a-aca6f2782ee6', N'ddc2287a-910a-4272-8033-58df34cca189')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3fca3000-93d2-4b0b-8fb7-bd7a068a7d45', N'034c549d-9e78-4037-97d1-07d5c08b2d16')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'4309db6e-d727-4e5c-b3c0-0151cfb2f9c0', N'ddc2287a-910a-4272-8033-58df34cca189')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'444b5462-656b-4482-a56f-4b6cfa0bbb58', N'ddc2287a-910a-4272-8033-58df34cca189')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'59d6cac7-0281-4617-b119-606700683ed2', N'ddc2287a-910a-4272-8033-58df34cca189')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'5c921c24-cb60-449c-b4d7-7ad1151f4043', N'ddc2287a-910a-4272-8033-58df34cca189')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'64ac28fe-5c51-4b91-a092-3bb322d5a07d', N'ddc2287a-910a-4272-8033-58df34cca189')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'64e7f1f3-5fe9-4afd-beda-781f00513888', N'ddc2287a-910a-4272-8033-58df34cca189')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'69dc1435-84ab-42d4-8ffe-2e960b0a64c1', N'ddc2287a-910a-4272-8033-58df34cca189')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'69e35015-10c1-4be1-9432-eeaa370af4a6', N'ddc2287a-910a-4272-8033-58df34cca189')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6b4fdb5e-bf4a-4cdd-8a0c-c06c1f4f027c', N'ddc2287a-910a-4272-8033-58df34cca189')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6f574bed-c891-4ee8-a6bd-decd200e0724', N'ddc2287a-910a-4272-8033-58df34cca189')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6f8fd7b1-4caa-4cc7-80a4-34faca6d818c', N'ddc2287a-910a-4272-8033-58df34cca189')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'7938758d-b081-4dbf-85db-627be01c747a', N'ddc2287a-910a-4272-8033-58df34cca189')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'79463a14-ded7-4288-97d2-c621c748ac91', N'ddc2287a-910a-4272-8033-58df34cca189')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'7ba05311-7f12-457f-9acf-667f7cfd4cf2', N'ddc2287a-910a-4272-8033-58df34cca189')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'7cd3ea2f-9894-4b82-9817-f39555d61557', N'ddc2287a-910a-4272-8033-58df34cca189')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'80c5892b-59a6-4293-a6e2-a691a9d2d3f9', N'ddc2287a-910a-4272-8033-58df34cca189')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'8692c32d-d245-4d3a-bd98-f3130a5958b8', N'ddc2287a-910a-4272-8033-58df34cca189')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'8e9aa5ac-aa4d-4cb2-95b8-77d423f8d121', N'ddc2287a-910a-4272-8033-58df34cca189')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'923364df-c4fb-4683-85ab-51a6abea2c34', N'ddc2287a-910a-4272-8033-58df34cca189')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'960a692b-7f74-4468-a592-c9fa637a9f2c', N'ddc2287a-910a-4272-8033-58df34cca189')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'9d652bf1-6804-4a6d-9c47-18b84d113294', N'ddc2287a-910a-4272-8033-58df34cca189')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'9e431c3a-6c88-45c6-836e-b60366468c83', N'f3af0aef-3683-48f5-94a8-0ab54c79f480')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'9ea8b551-4776-4c30-b46e-affeedab2368', N'ddc2287a-910a-4272-8033-58df34cca189')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'a5caf7c5-4ede-4e18-8bef-d7fc80aa8be6', N'ddc2287a-910a-4272-8033-58df34cca189')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'a6ceaa64-04df-41d2-be3f-b3b19997171d', N'ddc2287a-910a-4272-8033-58df34cca189')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'b8a4fe74-c391-4a15-a3ad-a30db3791d3a', N'ddc2287a-910a-4272-8033-58df34cca189')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'bf35e4d7-3bc9-4655-812a-d117974fb3e1', N'ddc2287a-910a-4272-8033-58df34cca189')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c2d39a40-17c3-4469-b129-8b8bad55268d', N'ddc2287a-910a-4272-8033-58df34cca189')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c76c5ba2-d1b0-49e7-afb0-8ae21b287b0c', N'034c549d-9e78-4037-97d1-07d5c08b2d16')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'cc66c7cb-a146-4880-8a3b-dcaeda373fe3', N'f3af0aef-3683-48f5-94a8-0ab54c79f480')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'cd345f47-4788-4186-bcf3-a587426d8f6c', N'f3af0aef-3683-48f5-94a8-0ab54c79f480')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'cf192814-e705-41c3-beea-5bfe0f250840', N'ddc2287a-910a-4272-8033-58df34cca189')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'd0741342-0fcc-4c9b-8679-67ed87212bb5', N'034c549d-9e78-4037-97d1-07d5c08b2d16')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'dccfaa1d-138d-4413-af5b-828a1c15bca2', N'ddc2287a-910a-4272-8033-58df34cca189')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ddc6f541-6177-4f09-a122-20fbc20bfc85', N'ddc2287a-910a-4272-8033-58df34cca189')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e3898a4d-7294-4268-bcc3-16cad0430e36', N'ddc2287a-910a-4272-8033-58df34cca189')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e7bbb86a-10ef-4481-85a7-c057b9fd5bf7', N'ddc2287a-910a-4272-8033-58df34cca189')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'f3b51ed0-6414-4bed-ade4-c185eb7d7f4e', N'ddc2287a-910a-4272-8033-58df34cca189')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Address], [IsFakeEmail], [DoctorName], [HospitalName], [Description]) VALUES (N'00c2641a-aecc-4f97-b607-7b12e16e7c17', N'temp60477623636483046892721172@gmail.com', 0, N'ADlubfJibbdoWquoB4m3FjIbHy5Gko1nwmO0+8+mFeTA0VieUixDj0fILtsrJWFs+Q==', N'9041dae3-0709-4bdf-8817-805fd8f7e9a7', N'0185111', 0, 0, NULL, 1, 0, N'0185111', N'yoi', NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Address], [IsFakeEmail], [DoctorName], [HospitalName], [Description]) VALUES (N'17fe6280-8ad7-46e8-8d54-5a6250ed8f9e', N'temp99565666636488075807143750@gmail.com', 0, N'ANbWXQfvkNQWggJM612lIfNFw1oU6zfc+DBvtRhH6SyPzMRbHFzdthLXmlNJZL6u/w==', N'06cb9038-c7fe-4a10-8952-753f7b6d69fa', N'147258369', 0, 0, NULL, 1, 0, N'147258369', N'opp', NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Address], [IsFakeEmail], [DoctorName], [HospitalName], [Description]) VALUES (N'27d04f82-b98a-4ff2-9a9c-8c0b4a1078df', N'temp86681721636482946592564922@gmail.com', 0, N'AEssIuZPK47cwsxPLaMQzg06ckMBS5JJ7P+MTWLK3LmhKCeiQR6cetyxMALkrIM0oQ==', N'776d1b1c-e925-486a-8b77-f82d648cd000', N'25803', 0, 0, NULL, 1, 0, N'25803', N'rrggyhh', NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Address], [IsFakeEmail], [DoctorName], [HospitalName], [Description]) VALUES (N'37b958dc-ad8c-490e-ad8c-107073fe2dc1', N'temp10018632636483041357316926@gmail.com', 0, N'ABRuVnicUdBuh2h0Ey6g5ja8QZ854neA71Wb09ILj2uRqoPS75yTwhmE/mSJvUeiTA==', N'1db43fb9-27c8-488b-a371-78599f7eecc0', N'2', 0, 0, NULL, 1, 0, N'2', NULL, NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Address], [IsFakeEmail], [DoctorName], [HospitalName], [Description]) VALUES (N'38c58189-61ed-4b79-a14f-0b0275030b72', N'ataur3543@gmail.com', 0, N'ANYTYduQNjh+BdSYx8dNrDOjm6O8A1cKuYcULVki/03VmyQ6UlZ8UfhEshrTcgKIgg==', N'6f22deef-557d-443e-9a9b-7c8e337cf039', N'01722651859', 0, 0, NULL, 1, 0, N'01722651859', N'Ataur Rahman', N'Ka/46,Mohakahli South area,Banani,Dhaka-1213', 0, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Address], [IsFakeEmail], [DoctorName], [HospitalName], [Description]) VALUES (N'3c0e657d-353b-410d-826d-aeb8f8846531', N'b4s42@a.com', 0, N'AMDdJJ9ZhLDJgDW6BbcbOEmjqZUITf4OVi58153UihhcAolS6d4puytgaBZJKz0Pxw==', N'd667b393-de25-4090-b883-6b0361507f6a', N'017256214s423', 0, 0, NULL, 1, 0, N'017256214s423', N'Rana Hamid', N'Uttara, Dhaka', 0, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Address], [IsFakeEmail], [DoctorName], [HospitalName], [Description]) VALUES (N'3c963905-01ab-41cb-944f-6779b453398e', N'temp45991615636508086235498047@gmail.com', 0, N'ADAoGHQsnWuYKGDfcPPmaeL3pAyql1L7KwOZDKAKrWhRVH2DNOvxY+tYIAIk39AuRQ==', N'c1314ebd-613d-4c69-a8ec-bccd3b8bf4cd', N'01820159681', 0, 0, NULL, 1, 0, N'01820159681', N'জুয়েল মিয়া', NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Address], [IsFakeEmail], [DoctorName], [HospitalName], [Description]) VALUES (N'3dc2f407-571a-4964-a31a-aca6f2782ee6', N'temp36141376636488136689175000@gmail.com', 0, N'AHSyW9i18vsOVJ0KFVp+33Ju87enNg0ajjyssP2HH4MuuhAuqKNoU7WYE/68Y82ykw==', N'2e89a707-e429-4d6f-a671-b6524b718f7d', N'01624982354', 0, 0, NULL, 1, 0, N'01624982354', N'shamim rahman', NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Address], [IsFakeEmail], [DoctorName], [HospitalName], [Description]) VALUES (N'3fca3000-93d2-4b0b-8fb7-bd7a068a7d45', N'riaz.netbd@gmail.com', 1, N'AEhYPtItFSnnRbkVdb6aqZ8bcVn0kKi3GeFj5AQFAU7r02sREx03z/LWmgPPy9myRw==', N'1cb7f463-1a66-4c70-8922-ce57dd187b3b', N'01911736165', 0, 0, NULL, 1, 0, N'01911736165', N'Riaz Ahmed', N'Comilla', 0, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Address], [IsFakeEmail], [DoctorName], [HospitalName], [Description]) VALUES (N'4309db6e-d727-4e5c-b3c0-0151cfb2f9c0', N'temp90339241636505647512851562@gmail.com', 0, N'AHtZbDhCSdEp6QvF7QaNKg27/BXtyREZTgIrYdbhcVCWN2NF30rW2hk8P6+TmzwyFw==', N'12509ac6-a159-44ac-9299-c714e652f18a', N'01720046199', 0, 0, NULL, 1, 0, N'01720046199', N'sadia', NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Address], [IsFakeEmail], [DoctorName], [HospitalName], [Description]) VALUES (N'444b5462-656b-4482-a56f-4b6cfa0bbb58', N'temp17008157636498399977092109@gmail.com', 0, N'AHjcTg2S4E2i4V7IkqwM7/UUjFlf3bTjJ+qRijqH4aFdeRgEFAhnbyLhwO2UxmjYdA==', N'ee727a0a-c8b0-43b6-a112-2d9a30ad746b', N'01996476870', 0, 0, NULL, 1, 0, N'01996476870', N'Hridoy', NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Address], [IsFakeEmail], [DoctorName], [HospitalName], [Description]) VALUES (N'4ec30dc2-214a-4fd8-836f-84178452b457', N'test@test.com', 0, N'APPSrskiuL3kBsQbuS/AxAP2uGzmqRSsigYt9sIK/uIFQaXnIImOsqWQeRg4HkCnqg==', N'a48346ab-7dcf-4377-af65-20d54cb83386', N'45', 0, 0, NULL, 1, 0, N'45', N'test', N'test', 0, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Address], [IsFakeEmail], [DoctorName], [HospitalName], [Description]) VALUES (N'51462807-bbe9-4f39-90c8-ff10d301a7a8', N'temp41075322636483046019283672@gmail.com', 0, N'AEETVCnq34kk3f9QmfpdnUjXyMQN252mEmO3OtGb3ZTWcHWmQ5mRq6kEg38hXwmpnQ==', N'524f23d2-2d27-4c39-beed-10d20019be07', N'01851115863', 0, 0, NULL, 1, 0, N'01851115863', N'rtrt', NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Address], [IsFakeEmail], [DoctorName], [HospitalName], [Description]) VALUES (N'5262e40e-32f3-4f11-9041-c20b09f76594', N'temp35163099636482859741158672@gmail.com', 0, N'AA7IIqAWe6U7TGSko323hxyGlaOUYLpz79u5nO1zfdqgbDjw40rNCBYFNP+wxWf64g==', N'c08d28a4-6d6c-4fdf-90fd-0fe22a76b88a', N'0852963', 0, 0, NULL, 1, 0, N'0852963', N'raselCheck', NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Address], [IsFakeEmail], [DoctorName], [HospitalName], [Description]) VALUES (N'59d6cac7-0281-4617-b119-606700683ed2', N'temp49734814636508035409326172@gmail.com', 0, N'AAcOwpWtizp7F21BExI4kWpj9pZ2sITuvt714emI/FIjKT5RagHQQZvE1zsI+s8X0Q==', N'f51047af-f402-4e6c-a786-22bd8b0bc2bb', N'01878636094', 0, 0, NULL, 1, 0, N'01878636094', N'Shila', NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Address], [IsFakeEmail], [DoctorName], [HospitalName], [Description]) VALUES (N'5bd8b37d-4fa7-42cc-a706-b6aaf6ab59d8', N'b2@a.com', 0, N'AGEQnpilXneMBAduhIf4wNQs+G0Jl5sRRcRfumSUTocREf+6fGb3e8NzcsRGmPhdnA==', N'e49ce6f8-d9f2-46b4-a931-a01f0636025f', N'0172562123', 0, 0, NULL, 1, 0, N'0172562123', N'Rana Hamid', N'Uttara, Dhaka', 0, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Address], [IsFakeEmail], [DoctorName], [HospitalName], [Description]) VALUES (N'5c921c24-cb60-449c-b4d7-7ad1151f4043', N'temp89806820636509854628183594@gmail.com', 0, N'ALVNEAEXIFrA2v0C8BXWfnuiOhCcow+Ss5xYJm7VYo9kt6cNGoSok813aahIwAhHWg==', N'5c2b468c-b109-4516-86fa-c8db8689ce2e', N'01879918102', 0, 0, NULL, 1, 0, N'01879918102', N'Rifat', NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Address], [IsFakeEmail], [DoctorName], [HospitalName], [Description]) VALUES (N'64ac28fe-5c51-4b91-a092-3bb322d5a07d', N'temp41347809636509880683457031@gmail.com', 0, N'AD9hFBPGlN9CQP5ocpEXGziP5mbM1OgF9CDmkCcCeCRYwVuCufaucYnS2yWu6rAYeg==', N'a5ccc45e-503d-4eb9-b795-0c906feba006', N'01832505487', 0, 0, NULL, 1, 0, N'01832505487', N'md al mamun', NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Address], [IsFakeEmail], [DoctorName], [HospitalName], [Description]) VALUES (N'64c04408-c849-4071-8c41-3f2fa80d6add', N'temp83886006636483037557541083@gmail.com', 0, N'AACQY7xgh2nkqOkPa96Dxgum9brTwA5uNSl6hpiNhsoQqshQwmnl26KMteny/tsMUg==', N'f956b1f9-c5ae-4809-8b70-d0c6007b6da0', N'01', 0, 0, NULL, 1, 0, N'01', NULL, NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Address], [IsFakeEmail], [DoctorName], [HospitalName], [Description]) VALUES (N'64e7f1f3-5fe9-4afd-beda-781f00513888', N'temp71237873636494409000172734@gmail.com', 0, N'AC/2GYsmbPkdJdlxwWdqRaXOkkAvfMNlELGqj4Tgk+MiSMam16smyZTbuIdzqtPhJw==', N'361126bd-5266-4351-b300-92c923a99bfc', N'01922849105', 0, 0, NULL, 1, 0, N'01922849105', N'Md Shohag', NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Address], [IsFakeEmail], [DoctorName], [HospitalName], [Description]) VALUES (N'661429c1-9489-43b7-8f6a-cab1992c6952', N'temp82752175636483046439752422@gmail.com', 0, N'ALjkVZn5otAoSb/5s9Q4h2S8/YARf1aMWezGvgHd6rH1RvQDREAMXJ1KdhPr7yAtng==', N'0066bd7e-4f54-4cef-a8c5-cb8370f9fe57', N'01851115660', 0, 0, NULL, 1, 0, N'01851115660', N'you', NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Address], [IsFakeEmail], [DoctorName], [HospitalName], [Description]) VALUES (N'69dc1435-84ab-42d4-8ffe-2e960b0a64c1', N'temp23987210636522695795851162@gmail.com', 0, N'AFg/PFSBNPpFad1yKUVPGghVNBgML1kb6OhiNUbL7GESwNM8IW1E997r1eDRUWbUeg==', N'6d20eca4-1395-438b-b8e3-eac94a97ca34', N'01771213491', 0, 0, NULL, 1, 0, N'01771213491', N'selim hossain', NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Address], [IsFakeEmail], [DoctorName], [HospitalName], [Description]) VALUES (N'69e35015-10c1-4be1-9432-eeaa370af4a6', N'temp17496291636493248133857500@gmail.com', 0, N'AIv+PTgQjwFkSeBdkOhwX1PjGcdIJSH6PIJ3oP0VLsTLv6kg37d3qH+maPyoz9KE7Q==', N'6c37edde-ed85-48b5-a915-f04e2a5ce396', N'01836088123', 1, 0, NULL, 1, 0, N'01836088123', N'Anwar', N'Shodypati,Moonplaza', 1, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Address], [IsFakeEmail], [DoctorName], [HospitalName], [Description]) VALUES (N'6b4fdb5e-bf4a-4cdd-8a0c-c06c1f4f027c', N'temp16666061636490037503706250@gmail.com', 0, N'ADKCTqttNNR3XgqQjrFhSveGhrObOcC73iv8tnDyVlc+xkMArX6OZojVCyLgTDIJ+Q==', N'6c8997a5-b7f6-411c-89dc-f235ce0a8991', N'01938922202', 0, 0, NULL, 1, 0, N'01938922202', N'washim', NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Address], [IsFakeEmail], [DoctorName], [HospitalName], [Description]) VALUES (N'6f574bed-c891-4ee8-a6bd-decd200e0724', N'temp61495192636488076978862500@gmail.com', 0, N'AHHSNbo6rZan9qO5OxvMXZM7dbu5nUBElQ3GxD6Iq1vh3Zkr+ebjHV/NAGQfJEx6QQ==', N'e05e0ec3-9fd3-42e4-9ae6-91043e3bc997', N'01914625065', 0, 0, NULL, 1, 0, N'01914625065', N'rasel', NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Address], [IsFakeEmail], [DoctorName], [HospitalName], [Description]) VALUES (N'6f8fd7b1-4caa-4cc7-80a4-34faca6d818c', N'temp97499160636510009157080078@gmail.com', 0, N'AKhBYqRPjwkGeC+r8iE8XEt82n5Vn5H/hh0J6H3Dvi5mwpnWaiBcJGXa6n3nhdjBEw==', N'5615a062-bfb7-46bf-ac08-9bf27aaf0d17', N'01754351445', 0, 0, NULL, 1, 0, N'01754351445', N'faysal', NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Address], [IsFakeEmail], [DoctorName], [HospitalName], [Description]) VALUES (N'70b6896b-31c6-4307-b136-0abbb6bf0ce1', N'temp19755692636482865528971172@gmail.com', 0, N'AAJK+yWK4w37cMALkYQc+FEwMY56INeLASpColmn7gr96eIQ2E4lR2hUyc4mdYKWLA==', N'bae7b1ef-2173-41ec-84d6-bf05f289e053', N'4567', 0, 0, NULL, 1, 0, N'4567', N'xsw', NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Address], [IsFakeEmail], [DoctorName], [HospitalName], [Description]) VALUES (N'775913ba-cef9-447a-910b-12af8cc42738', N'b442@a.com', 0, N'AA4whO/+BleHJLCHtcmlI2cjTEmzbj/bJxicoQa42hX4+AZ2P4XSdnp45QiKnpavcQ==', N'3435b575-f512-4e5b-bfe7-8073e80eeeb3', N'017256214423', 0, 0, NULL, 1, 0, N'017256214423', N'Rana Hamid', N'Uttara, Dhaka', 0, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Address], [IsFakeEmail], [DoctorName], [HospitalName], [Description]) VALUES (N'78b2ad81-4348-492e-8232-f1dc4b611f6d', N'temp31281637636482653340689922@gmail.com', 0, N'ANtAfeZNutd0KgEnnHEA0pIXTx4ghBnBZTakIQyoQTI/0l70H6wHT55J6UVYS5ibGw==', N'894bb4f4-8453-477f-8f91-a89fc3b1e250', N'01sffsd72562123', 0, 0, NULL, 1, 0, N'01sffsd72562123', N'Rana Hamid', N'Uttara, Dhaka', 1, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Address], [IsFakeEmail], [DoctorName], [HospitalName], [Description]) VALUES (N'7938758d-b081-4dbf-85db-627be01c747a', N'temp40113309636500949452783203@gmail.com', 0, N'APBbuyc/KypmbJXNdoKxNpghgEfvnxTntGnc5GNDFvGR42xkExswvC6ut1Sybihn8g==', N'26205fc9-2581-43df-bea5-5045eaf60848', N'01711226979', 0, 0, NULL, 1, 0, N'01711226979', N'বাশির আহাম্মাদ', NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Address], [IsFakeEmail], [DoctorName], [HospitalName], [Description]) VALUES (N'79463a14-ded7-4288-97d2-c621c748ac91', N'temp6219898636488072868081250@gmail.com', 0, N'AD6J54F6PMKHl6DGp+CpcmmZT3vX0iEj+9hJMTqPYdzKBuTumXp6/8uuDztyPHR7cw==', N'7ea160ea-0846-4fc2-9636-1e2a0d9c5dc6', N'0852147', 0, 0, NULL, 1, 0, N'0852147', N'rrrr', NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Address], [IsFakeEmail], [DoctorName], [HospitalName], [Description]) VALUES (N'7ba05311-7f12-457f-9acf-667f7cfd4cf2', N'temp74861026636505671229726562@gmail.com', 0, N'AKi2H84H+0dBDm+/deMyI52PXCpMZ9UriZ7Z3hLLF/4SwYRAvPQGxYf0b88yoXZyQA==', N'ab76d294-5df2-48d7-bf09-b70e8d9f349c', N'01950062801', 0, 0, NULL, 1, 0, N'01950062801', N'Rashed bhuiyan', NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Address], [IsFakeEmail], [DoctorName], [HospitalName], [Description]) VALUES (N'7cd3ea2f-9894-4b82-9817-f39555d61557', N'temp71840292636506350246308593@gmail.com', 0, N'AEA4IP8sxvBm5CxmGVjJri1jTs5Ur8AkKoYLYS8IB+yQoDqfU6jC8ETOBPolGuezKg==', N'965ab236-39ad-463a-923b-8dea2961a182', N'01905523199', 0, 0, NULL, 1, 0, N'01905523199', N'rifat', NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Address], [IsFakeEmail], [DoctorName], [HospitalName], [Description]) VALUES (N'80c5892b-59a6-4293-a6e2-a691a9d2d3f9', N'temp50684380636490724107607500@gmail.com', 0, N'AIvgMaB9zywv12TzbhGIv/O78v35Vh3nCuTGHxWF9x5m+ah/nlBEGZZBFmfj0NGQyA==', N'0321b5a4-3eea-4315-866f-5af25f36846a', N'01829540113', 0, 0, NULL, 1, 0, N'01829540113', N'Dkm Ashraful Islam Ishaq', NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Address], [IsFakeEmail], [DoctorName], [HospitalName], [Description]) VALUES (N'84c14199-3aac-46b2-bcaa-ca2e6e1bab47', N'temp86992147636482851903814922@gmail.com', 0, N'AFiR8GlQBzwHQ43V5FWbj7ztJAfmUhIOv5/jpTlYSa33hdRP/QipWmX9cJGw4JTveg==', N'26709003-b33e-43db-b1b6-c56074278313', N'101782113', 0, 0, NULL, 1, 0, N'101782113', N'Rana', NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Address], [IsFakeEmail], [DoctorName], [HospitalName], [Description]) VALUES (N'8692c32d-d245-4d3a-bd98-f3130a5958b8', N'temp35507274636488081167768750@gmail.com', 0, N'ABuWUb2j/3Wk2gVQ62BYifd1af36HIF1DeHTj2oH+8ddLK7K1pcwZ9MpFcR53rym0Q==', N'58ca774a-304a-4fd6-b25c-bc55dc635393', N'55555', 0, 0, NULL, 1, 0, N'55555', N'ffff', NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Address], [IsFakeEmail], [DoctorName], [HospitalName], [Description]) VALUES (N'8e9aa5ac-aa4d-4cb2-95b8-77d423f8d121', N'temp7770409636489839479018750@gmail.com', 0, N'ALyPSR94naK9l0FZxWB7Ntlhft9tgaCIkAJcMZ8X8sLlxwzHlurvMLhjyLUnVyXjbg==', N'51d92e21-d16f-45e9-9a76-46e689b019eb', N'01931575482', 0, 0, NULL, 1, 0, N'01931575482', N'Md Alamin islam', NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Address], [IsFakeEmail], [DoctorName], [HospitalName], [Description]) VALUES (N'910225fe-952d-4708-bd9a-7423308ceb4f', N'temp37244585636482846850377422@gmail.com', 0, N'AMDG5HjO8ickJTXEAHIZve3HQcBjOfs65mXeW7xtsuvi0Pc/TrhLo54f03n38Bzjqg==', N'0b0d7afb-5dea-4486-9772-7637c1632fce', N'0172562113', 0, 0, NULL, 1, 0, N'0172562113', N'Rana', N'Uttara, Dhaka', 1, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Address], [IsFakeEmail], [DoctorName], [HospitalName], [Description]) VALUES (N'923364df-c4fb-4683-85ab-51a6abea2c34', N'temp877051636488075117300000@gmail.com', 0, N'ALq0yGkMM0gcbNcd+WRcTd671TkANKnQP1ekdFDrp5ZAFzghgpm52kG+TwiqH63SGQ==', N'960c03d6-bf35-4f2b-ac20-039bd8fbb106', N'01922386771', 0, 0, NULL, 1, 0, N'01922386771', N'we', NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Address], [IsFakeEmail], [DoctorName], [HospitalName], [Description]) VALUES (N'960a692b-7f74-4468-a592-c9fa637a9f2c', N'b4412@a.com', 0, N'ADo+Yook6AW5ju7YRDFEMqCRhTAQ/tqImHOQJW8EMFJqUdRt3nwl36eoMhLoDnZFPg==', N'a171b5c0-e11b-4b5d-9119-030fa07a5475', N'0172562114423', 0, 0, NULL, 1, 0, N'0172562114423', N'Rana Hamid', N'Uttara, Dhaka', 0, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Address], [IsFakeEmail], [DoctorName], [HospitalName], [Description]) VALUES (N'96ad3c4d-c0cd-455d-9aa7-10c93944b7bf', N'ranahamidcse001@gmail.com', 0, N'AIN7PDPcqqFrE4i7ne4MdSxPeT1QrQLGZPQePiQN0XGjC3rCxSoYRls/vfXIz1QRjw==', N'd5b752de-bea8-4bf2-b817-0792fa5649f7', N'01725620123', 1, 0, NULL, 1, 0, N'01725620123', N'Rana hamid', N'Uttara, Dhaka', 0, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Address], [IsFakeEmail], [DoctorName], [HospitalName], [Description]) VALUES (N'9d652bf1-6804-4a6d-9c47-18b84d113294', N'temp47573358636502113055732422@gmail.com', 0, N'AAjUggr/j10iDOZ0z02f3uEbz60O1/ip5caaydNtl80iqflGZI+WB8FQWQEkmOH1QQ==', N'c738238f-802f-485f-9f0f-5d993a6c410b', N'01636546929', 0, 0, NULL, 1, 0, N'01636546929', N'Nil Akash', NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Address], [IsFakeEmail], [DoctorName], [HospitalName], [Description]) VALUES (N'9e431c3a-6c88-45c6-836e-b60366468c83', N'b@a.com', 0, N'AICVrGj+q65S8Hfuwv+/KCjNzdgceJ9EOSyW7XnHVSQaV+E/eq33tNUbAh2oZoGdAg==', N'b319d681-f6b5-4475-bcd7-27691a87c7eb', N'32434235', 0, 0, NULL, 1, 0, N'32434235', N'as', N'dfgdf', 0, N'gdf', N'gfdg', N'dfg')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Address], [IsFakeEmail], [DoctorName], [HospitalName], [Description]) VALUES (N'9ea8b551-4776-4c30-b46e-affeedab2368', N'temp55055768636488074601831250@gmail.com', 0, N'AIkHsOgiGorIlCfv50TsskGfA38pv5Wyx06H0Vm6llQGURxQarCUsbX3sDaoUkVh+w==', N'c9a5eefc-2523-4a76-9210-ff1675c5353c', N'1234567890', 0, 0, NULL, 1, 0, N'1234567890', N'yyou', NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Address], [IsFakeEmail], [DoctorName], [HospitalName], [Description]) VALUES (N'a5caf7c5-4ede-4e18-8bef-d7fc80aa8be6', N'temp75572842636494283974013750@gmail.com', 0, N'AGuTxT4o3N2pubQn/hwCZjRRJcUY4I7o/a38HgGDNPHtYKSw5Z6OID/Kw9gmiqweDw==', N'080ec1d8-7e17-48c8-b6f2-44e52f6fa8c4', N'01704536307', 0, 0, NULL, 1, 0, N'01704536307', N' MD.Sajib Ahmed', NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Address], [IsFakeEmail], [DoctorName], [HospitalName], [Description]) VALUES (N'a6ceaa64-04df-41d2-be3f-b3b19997171d', N'temp30480009636506232281005859@gmail.com', 0, N'APpFWAUZBDfK63dB7e8mOpv2IyN2VgyQ3CeFlR8bYSLEtj+yfGGZ0Khlby711rNVjQ==', N'8832b31b-3eb7-4a7d-9bf7-aadf964fbabf', N'01705607854', 0, 0, NULL, 1, 0, N'01705607854', N'md ashik', NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Address], [IsFakeEmail], [DoctorName], [HospitalName], [Description]) VALUES (N'b8a4fe74-c391-4a15-a3ad-a30db3791d3a', N'temp33365879636490020165112500@gmail.com', 0, N'ABcJuaJI0IFJIaDtwGeZxx7/UtmflXh9aTfxTTS5hkQY1RgknDOddDbXfoyG6f1kQg==', N'61d0bd37-8af0-44fd-8ef7-d1dcabf78de9', N'01785011008', 0, 0, NULL, 1, 0, N'01785011008', N'oli', NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Address], [IsFakeEmail], [DoctorName], [HospitalName], [Description]) VALUES (N'bf35e4d7-3bc9-4655-812a-d117974fb3e1', N'temp72455409636519916912921101@gmail.com', 0, N'AFLDOE9TYG7dp9RRDDfeGgSy3QrVJ3BZ5/VYa4rYXO9+KdZuOu6yuvhwx+X5PMthpQ==', N'6a541257-c117-4ab6-8dd4-b8bca68ce711', N'01706394803', 0, 0, NULL, 1, 0, N'01706394803', N'Nurjahan', NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Address], [IsFakeEmail], [DoctorName], [HospitalName], [Description]) VALUES (N'c2d39a40-17c3-4469-b129-8b8bad55268d', N'temp69467520636520485487214913@gmail.com', 0, N'AEYGEUPjjPiYbS5epY4K7XMMuMXPzKz8b41zVnQoqXwEK10O91ou8WRDMeDTICD27A==', N'd41bf12d-b331-4099-a2ec-0ca386bd1eaa', N'01864377239', 0, 0, NULL, 1, 0, N'01864377239', N'Tanvir Ahmed', NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Address], [IsFakeEmail], [DoctorName], [HospitalName], [Description]) VALUES (N'c76c5ba2-d1b0-49e7-afb0-8ae21b287b0c', N'ranahamid007@gmail.com', 0, N'AFK49j3/ssoLmie6eOUvWUzqj0oQ3EVeeKR4kEORxKMzjngvYNi8s5+ityTfICF4lw==', N'14e33029-55ef-4f09-a04c-8be97f2fc8ca', N'01725620123', 1, 0, NULL, 0, 0, N'01717623876', NULL, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Address], [IsFakeEmail], [DoctorName], [HospitalName], [Description]) VALUES (N'cc66c7cb-a146-4880-8a3b-dcaeda373fe3', N'bee442@a.com', 0, N'ALRUStCKxJYwtrjgRjKABEXYGTfMz79BsLRwyABz5UfNJH2+dmWyjDN/52K3jxCdDg==', N'f03e2f10-abae-4f78-9e92-2e36e7184ccb', N'01ee7256214423', 0, 0, NULL, 1, 0, N'01ee7256214423', N'Rana Hamid', N'Uttara, Dhaka', 0, N'Mr. Kr', N'Appolo', N'lorem ipsum')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Address], [IsFakeEmail], [DoctorName], [HospitalName], [Description]) VALUES (N'cd345f47-4788-4186-bcf3-a587426d8f6c', N'a@a.com', 0, N'ABtaY5kbUeC7semoxHgZrYUbWnUqgHxKkQFnQllAZD6TIQV+WkHtDeyJsTEkJu0Z4w==', N'7b72dc47-62ea-48d8-a396-9bd85f369f65', N'111', 0, 0, NULL, 1, 1, N'111', N'Rana Hamid', N'23423', 0, N'4234', N'23423', N'4234')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Address], [IsFakeEmail], [DoctorName], [HospitalName], [Description]) VALUES (N'ce0ff08d-ecf1-4ee5-834f-6c1170b2c4c9', N'temp61682117636482851643502422@gmail.com', 0, N'ALXGl7q++tK5OEthhLCezeZRq+EDZ985QPX9sqB5plljJjXRCLC+aS/DhqhSVRx5jQ==', N'd3fbc3ec-f193-49c9-a390-bbea9128f4a1', N'101782562113', 0, 0, NULL, 1, 0, N'101782562113', N'Rana', N'Uttara, Dhaka', 1, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Address], [IsFakeEmail], [DoctorName], [HospitalName], [Description]) VALUES (N'cf192814-e705-41c3-beea-5bfe0f250840', N'temp2680594636488073295268750@gmail.com', 0, N'AAzEnkcT5DWCQa6lxfHLmAfcIFfI5GiPFyfQo38WJXFWJkJNiivbFXj6zzHXdTIzSw==', N'6646faf5-8f09-43c6-8c49-21fc3693bc72', N'101782562', 0, 0, NULL, 1, 0, N'101782562', N'Rana', NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Address], [IsFakeEmail], [DoctorName], [HospitalName], [Description]) VALUES (N'd0741342-0fcc-4c9b-8679-67ed87212bb5', N'majed.cseru@gmail.com', 0, N'AFqedoXSDg15ijj88EI5C+90diwngTYweGcpXLBwI+P3avByUxMSFW98opzcEU6f0w==', N'c6503bba-a793-40fc-ae46-44648e5b014e', N'111', 1, 0, NULL, 1, 0, N'01626323219', N'Majedur Rahaman', N'Uttara, Dhaka', 0, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Address], [IsFakeEmail], [DoctorName], [HospitalName], [Description]) VALUES (N'dccfaa1d-138d-4413-af5b-828a1c15bca2', N'mdriponsarkar.786@gmail.com', 0, N'APPPm68RA/UkfCeZPHytp+bUZtO9EeoKz1AXzYnDwVcvkJZADAYxMMr0K0OMllv2dA==', N'3ad1ec1e-b259-4da2-927b-88bdaff312b6', N'01814737447', 0, 0, NULL, 1, 0, N'01814737447', N'Mohammad Ripon', N'Bolighar,Muradnogor,Comilla', 0, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Address], [IsFakeEmail], [DoctorName], [HospitalName], [Description]) VALUES (N'ddc6f541-6177-4f09-a122-20fbc20bfc85', N'temp30995826636488072433862500@gmail.com', 0, N'AAhqM/k3o1fbe0jdg9i39auhFjq/Ht30lwqvpbezkMNNR5PIM4k3X/HLFKWMN1PikQ==', N'3c0a649d-6805-41b0-95b2-67b47b703e4d', N'2580', 0, 0, NULL, 1, 0, N'2580', N'gsgsg', NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Address], [IsFakeEmail], [DoctorName], [HospitalName], [Description]) VALUES (N'ddf26318-3d37-4823-89d9-d20ac92bb87d', N'sb2@a.com', 0, N'ABwYW1WE0KyVpshmgy1CEbELMG1WA+jgIO4ByOtoojvwNKUyDjPlQo4csuHe0M3Ktw==', N'5997631c-87ea-4714-8db2-bba1535220e8', N'01s72562123', 0, 0, NULL, 1, 0, N'01s72562123', N'Rana Hamid', N'Uttara, Dhaka', 0, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Address], [IsFakeEmail], [DoctorName], [HospitalName], [Description]) VALUES (N'e3898a4d-7294-4268-bcc3-16cad0430e36', N'temp2240202636498600914933906@gmail.com', 0, N'AAd6Xif9i/baZZxGSy1s8JPyfX4cmeJkApcAP7HD+35a61O5Yi/iTd0HV8SOyuelHw==', N'b241bc1d-c2ed-492b-a55b-4f47cb8e909d', N'01701304466', 0, 0, NULL, 1, 0, N'01701304466', N'JOY KHAN', NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Address], [IsFakeEmail], [DoctorName], [HospitalName], [Description]) VALUES (N'e7bbb86a-10ef-4481-85a7-c057b9fd5bf7', N'temp23450645636503057129257812@gmail.com', 0, N'AEUXxaJlz1eaOEUTNIFPNZc1QSjK5VcKqEnhPg2AdJ57zuKXAVQ7ZsK3jYWnWRG3KA==', N'6ea07cca-cca4-4b87-8283-21ada6674217', N'01766093207', 0, 0, NULL, 1, 0, N'01766093207', N'Mohin', NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Address], [IsFakeEmail], [DoctorName], [HospitalName], [Description]) VALUES (N'f3b51ed0-6414-4bed-ade4-c185eb7d7f4e', N'temp51422773636489995590737500@gmail.com', 0, N'AGu5r3yZxAtHFDMBiBQGmBYEHkgEk8nhtKlMt+gs8zXhMC4Ag8yaF2PdTgMgKfnlRA==', N'89a434d7-729a-47de-b5e2-4eef9cefc99e', N'01827535687', 0, 0, NULL, 1, 0, N'01827535687', N'JONAYEDTELECOM', NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Address], [IsFakeEmail], [DoctorName], [HospitalName], [Description]) VALUES (N'f45df11d-a6aa-4581-9e00-999ec420e7d1', N'temp39425807636482942948033672@gmail.com', 0, N'AKtuE9r3AvRdKRbRck1oVujDfl6AdAQ3rIk7Y36PveK1zY8zJo5CU56YEZhB5KWP5Q==', N'd0ecb670-9a3d-470e-86f1-0d7c4d1fc3c3', N'0852369', 0, 0, NULL, 1, 0, N'0852369', N'rasel', NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Address], [IsFakeEmail], [DoctorName], [HospitalName], [Description]) VALUES (N'fd2dae2a-c3b6-4394-b9bb-f9e663e07ac2', N'temp11527550636483047410221172@gmail.com', 0, N'AO96NclhXEgAHdS6dxWnmz9PE8pFGEHODrT8jxnrvAKzxMl15mDrJdp4wsnueRrRag==', N'c41c8eb0-cee4-4f4c-87a0-ee6f13a6e148', N'01922386770', 0, 0, NULL, 1, 0, N'01922386770', N'dummy', NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Address], [IsFakeEmail], [DoctorName], [HospitalName], [Description]) VALUES (N'ff31c354-4c60-4d98-8f8f-08c06df645d8', N'temp90014884636482859367721172@gmail.com', 0, N'AIBHUTzPngfY8vCfR1b4UiWTdce52YBnw7JV8ALkY4N8PvI96BCLmaS2IylGXn1ygQ==', N'57d9dc0e-c5c2-4c35-beca-2bcd1f699144', N'018245462424', 0, 0, NULL, 1, 0, N'018245462424', N'checkMe', NULL, 1, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[BannerImageTbl] ON 

INSERT [dbo].[BannerImageTbl] ([Id], [BannerId], [URL], [ImagePath], [Description], [DisplayOrder], [MerchantId], [CategoryId]) VALUES (1, 1, NULL, N'Content/images/banner/Top Banner-Home App.jpg', NULL, 2, 1, 1)
INSERT [dbo].[BannerImageTbl] ([Id], [BannerId], [URL], [ImagePath], [Description], [DisplayOrder], [MerchantId], [CategoryId]) VALUES (3, 1, NULL, N'Content/images/banner/Medicine.jpg', NULL, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[BannerImageTbl] OFF
SET IDENTITY_INSERT [dbo].[BannerTbl] ON 

INSERT [dbo].[BannerTbl] ([Id], [Name], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (1, N'HomePageBanner', CAST(N'2017-11-09T14:58:05.9397048' AS DateTime2), CAST(N'2017-11-09T14:58:05.9397048' AS DateTime2), 1)
SET IDENTITY_INSERT [dbo].[BannerTbl] OFF
SET IDENTITY_INSERT [dbo].[BazarListTbl] ON 

INSERT [dbo].[BazarListTbl] ([Id], [Name], [Description], [MainImagePath], [Address], [Number], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (16, N'from api postmant-web', NULL, N'Content/images/BazarList/22815243_1351795698262249_4097848018057592791_n.jpg', N'uttara', N'01717623876', CAST(N'2017-12-19T03:15:55.0576250' AS DateTime2), CAST(N'2017-12-19T03:15:55.0576250' AS DateTime2))
INSERT [dbo].[BazarListTbl] ([Id], [Name], [Description], [MainImagePath], [Address], [Number], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (17, N'not Given', NULL, N'Content/images/BazarList/firsttmp.jpg', N'not Given', N'0185222369', CAST(N'2017-12-19T04:53:12.3701250' AS DateTime2), CAST(N'2017-12-19T04:53:12.3701250' AS DateTime2))
INSERT [dbo].[BazarListTbl] ([Id], [Name], [Description], [MainImagePath], [Address], [Number], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (18, N'not Given', NULL, N'Content/images/BazarList/firsttmp.jpg', N'not Given', N'01911736165', CAST(N'2017-12-19T23:34:57.0888750' AS DateTime2), CAST(N'2017-12-19T23:34:57.0888750' AS DateTime2))
INSERT [dbo].[BazarListTbl] ([Id], [Name], [Description], [MainImagePath], [Address], [Number], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (19, N'not Given', NULL, N'Content/images/BazarList/firsttmp.jpg', N'not Given', N'01818382426', CAST(N'2017-12-20T00:31:25.2295000' AS DateTime2), CAST(N'2017-12-20T00:31:25.2295000' AS DateTime2))
INSERT [dbo].[BazarListTbl] ([Id], [Name], [Description], [MainImagePath], [Address], [Number], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (20, N'not Given', NULL, N'Content/images/BazarList/firsttmp.jpg', N'not Given', N'01911736165', CAST(N'2017-12-20T01:18:14.3232500' AS DateTime2), CAST(N'2017-12-20T01:18:14.3232500' AS DateTime2))
INSERT [dbo].[BazarListTbl] ([Id], [Name], [Description], [MainImagePath], [Address], [Number], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (21, N'not Given', NULL, N'Content/images/BazarList/firsttmp.jpg', N'not Given', N'01624982354', CAST(N'2017-12-20T06:07:01.6201250' AS DateTime2), CAST(N'2017-12-20T06:07:01.6201250' AS DateTime2))
INSERT [dbo].[BazarListTbl] ([Id], [Name], [Description], [MainImagePath], [Address], [Number], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (22, N'not Given', NULL, N'Content/images/BazarList/firsttmp.jpg', N'not Given', N'01624982354', CAST(N'2017-12-20T06:43:08.4795000' AS DateTime2), CAST(N'2017-12-20T06:43:08.4795000' AS DateTime2))
INSERT [dbo].[BazarListTbl] ([Id], [Name], [Description], [MainImagePath], [Address], [Number], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (23, N'not Given', NULL, N'Content/images/BazarList/firsttmp.jpg', N'not Given', N'01624982354', CAST(N'2017-12-20T23:11:42.7763750' AS DateTime2), CAST(N'2017-12-20T23:11:42.7763750' AS DateTime2))
INSERT [dbo].[BazarListTbl] ([Id], [Name], [Description], [MainImagePath], [Address], [Number], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (24, N'not Given', NULL, N'Content/images/BazarList/firsttmp.jpg', N'not Given', N'01911736165', CAST(N'2017-12-20T23:57:46.9013750' AS DateTime2), CAST(N'2017-12-20T23:57:46.9013750' AS DateTime2))
INSERT [dbo].[BazarListTbl] ([Id], [Name], [Description], [MainImagePath], [Address], [Number], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (25, N'not Given', NULL, N'Content/images/BazarList/71346731/firsttmp.jpg', N'not Given', N'01776100310', CAST(N'2017-12-23T22:40:14.4072266' AS DateTime2), CAST(N'2017-12-23T22:40:14.4072266' AS DateTime2))
INSERT [dbo].[BazarListTbl] ([Id], [Name], [Description], [MainImagePath], [Address], [Number], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (26, N'not Given', NULL, N'Content/images/BazarList/44622838/firsttmp.jpg', N'not Given', N'01731568183', CAST(N'2018-01-02T02:18:30.0126954' AS DateTime2), CAST(N'2018-01-02T02:18:30.0126954' AS DateTime2))
INSERT [dbo].[BazarListTbl] ([Id], [Name], [Description], [MainImagePath], [Address], [Number], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (27, N'not Given', NULL, N'Content/images/BazarList/1155432/firsttmp.jpg', N'not Given', N'01818254173', CAST(N'2018-01-07T06:54:09.4570312' AS DateTime2), CAST(N'2018-01-07T06:54:09.4570312' AS DateTime2))
INSERT [dbo].[BazarListTbl] ([Id], [Name], [Description], [MainImagePath], [Address], [Number], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (28, N'not Given', NULL, N'Content/images/BazarList/99474499/firsttmp.jpg', N'not Given', N'01863069232', CAST(N'2018-01-21T12:53:44.0525857' AS DateTime2), CAST(N'2018-01-21T12:53:44.0525857' AS DateTime2))
INSERT [dbo].[BazarListTbl] ([Id], [Name], [Description], [MainImagePath], [Address], [Number], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (29, N'not Given', NULL, N'Content/images/BazarList/41371351/firsttmp.jpg', N'not Given', N'01860833987', CAST(N'2018-01-24T05:27:50.0642513' AS DateTime2), CAST(N'2018-01-24T05:27:50.0642513' AS DateTime2))
SET IDENTITY_INSERT [dbo].[BazarListTbl] OFF
SET IDENTITY_INSERT [dbo].[BrandTbl] ON 

INSERT [dbo].[BrandTbl] ([Id], [Name_English], [Name_Bangla], [Logo], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (1, N'movie time', N'movie time', N'http://movietime4u.com/wp-content/uploads/2017/10/1200px-Movietime.svg_-300x126.png', 1, CAST(N'2017-11-11T12:51:36.2024531' AS DateTime2), CAST(N'2017-11-11T09:56:08.0598156' AS DateTime2), NULL)
INSERT [dbo].[BrandTbl] ([Id], [Name_English], [Name_Bangla], [Logo], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (2, N'Test Brand', N'টেস্ট ব্যান্ড', N'https://www.google.com/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png', 1, CAST(N'2017-11-01T00:25:38.1636252' AS DateTime2), CAST(N'2017-11-06T22:01:43.8808597' AS DateTime2), NULL)
INSERT [dbo].[BrandTbl] ([Id], [Name_English], [Name_Bangla], [Logo], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (3, N'Inspiron (dell)', N'ইন্সপায়রন', NULL, 0, CAST(N'2017-11-09T15:20:50.5618281' AS DateTime2), CAST(N'2017-11-09T12:30:43.2566649' AS DateTime2), NULL)
INSERT [dbo].[BrandTbl] ([Id], [Name_English], [Name_Bangla], [Logo], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (4, N'Bata', N'বাটা', N'https://www.google.com/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png', 2, CAST(N'2017-11-01T00:25:29.2091756' AS DateTime2), CAST(N'2017-11-01T00:25:29.2101761' AS DateTime2), NULL)
SET IDENTITY_INSERT [dbo].[BrandTbl] OFF
SET IDENTITY_INSERT [dbo].[CampaignProductsTbl] ON 

INSERT [dbo].[CampaignProductsTbl] ([Id], [ProductId]) VALUES (1003, 1)
INSERT [dbo].[CampaignProductsTbl] ([Id], [ProductId]) VALUES (1004, 2)
INSERT [dbo].[CampaignProductsTbl] ([Id], [ProductId]) VALUES (1005, 3)
INSERT [dbo].[CampaignProductsTbl] ([Id], [ProductId]) VALUES (1006, 4)
INSERT [dbo].[CampaignProductsTbl] ([Id], [ProductId]) VALUES (1007, 5)
INSERT [dbo].[CampaignProductsTbl] ([Id], [ProductId]) VALUES (1008, 6)
SET IDENTITY_INSERT [dbo].[CampaignProductsTbl] OFF
SET IDENTITY_INSERT [dbo].[CategoryTbl] ON 

INSERT [dbo].[CategoryTbl] ([Id], [Name_English], [Name_Bangla], [Description], [DisplayOrder], [ImagePath], [Parent1Id], [ShowOnHomePage], [IncludeInTopMenu], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (1, N'Sugar, cooking oil', N'চিনি,রান্নার তেল', NULL, NULL, N'Content/images/categories/base_1483645356-1666666666.jpg', 0, 1, 1, CAST(N'2017-10-29T05:53:57.6848750' AS DateTime2), CAST(N'2017-11-11T21:33:47.3411105' AS DateTime2), 1)
INSERT [dbo].[CategoryTbl] ([Id], [Name_English], [Name_Bangla], [Description], [DisplayOrder], [ImagePath], [Parent1Id], [ShowOnHomePage], [IncludeInTopMenu], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (3, N'Birth day market', N'জন্ম দিনের বাজার', NULL, NULL, N'Content/images/categories/birthday.jpg', 0, 1, 1, CAST(N'2017-10-29T08:51:28.5911250' AS DateTime2), CAST(N'2017-10-29T08:51:28.5911250' AS DateTime2), 1)
INSERT [dbo].[CategoryTbl] ([Id], [Name_English], [Name_Bangla], [Description], [DisplayOrder], [ImagePath], [Parent1Id], [ShowOnHomePage], [IncludeInTopMenu], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (4, N'Gas stove, gas', N'গ্যাসের চুলা,গ্যাস', NULL, NULL, N'Content/images/categories/gas.jpg', 0, 1, 1, CAST(N'2017-10-29T06:02:42.2630000' AS DateTime2), CAST(N'2017-10-29T06:02:42.2630000' AS DateTime2), 1)
INSERT [dbo].[CategoryTbl] ([Id], [Name_English], [Name_Bangla], [Description], [DisplayOrder], [ImagePath], [Parent1Id], [ShowOnHomePage], [IncludeInTopMenu], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (5, N'Mobile', N'মোবাইল', N'মোবাইল', NULL, N'Content/images/categories/lava-a67-dual-sim-android-mobile-phone-medium_3a86d70832ad27694f49cea1aba8dd81.jpg', 0, 1, 1, CAST(N'2017-10-29T08:47:43.6848750' AS DateTime2), CAST(N'2017-11-19T02:28:48.4978895' AS DateTime2), 1)
INSERT [dbo].[CategoryTbl] ([Id], [Name_English], [Name_Bangla], [Description], [DisplayOrder], [ImagePath], [Parent1Id], [ShowOnHomePage], [IncludeInTopMenu], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (6, N'Cleaning Materials', N'পরিষ্কার সামগ্রী', NULL, NULL, N'Content/images/categories/spring-cleaning2.jpg', 0, 1, 1, CAST(N'2017-10-29T06:14:12.4505000' AS DateTime2), CAST(N'2017-10-29T06:14:12.4505000' AS DateTime2), 1)
INSERT [dbo].[CategoryTbl] ([Id], [Name_English], [Name_Bangla], [Description], [DisplayOrder], [ImagePath], [Parent1Id], [ShowOnHomePage], [IncludeInTopMenu], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (7, N'Vegetables', N'শাক সবজি', NULL, NULL, N'Content/images/categories/vegetables.jpg', 0, 1, 1, CAST(N'2017-10-29T07:41:53.2473750' AS DateTime2), CAST(N'2017-10-29T07:41:53.2473750' AS DateTime2), 1)
INSERT [dbo].[CategoryTbl] ([Id], [Name_English], [Name_Bangla], [Description], [DisplayOrder], [ImagePath], [Parent1Id], [ShowOnHomePage], [IncludeInTopMenu], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (8, N'Cosmetics', N'কসমেটিক্স', NULL, NULL, N'Content/images/categories/41913Top-Disadvantages-of-Using-Cosmetics-and-Beauty-Products.jpg', 0, 1, 1, CAST(N'2017-10-29T08:26:00.2161250' AS DateTime2), CAST(N'2017-10-29T08:26:00.2161250' AS DateTime2), 1)
INSERT [dbo].[CategoryTbl] ([Id], [Name_English], [Name_Bangla], [Description], [DisplayOrder], [ImagePath], [Parent1Id], [ShowOnHomePage], [IncludeInTopMenu], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (9, N'Dishes', N'বাসনকোসন', NULL, NULL, N'Content/images/categories/3e9f71b87a526206a14b7e1a1a84022c--vintage-pyrex-vintage-dishes.jpg', 0, 1, 1, CAST(N'2017-10-29T08:41:10.3098750' AS DateTime2), CAST(N'2017-10-29T08:41:10.3098750' AS DateTime2), 1)
INSERT [dbo].[CategoryTbl] ([Id], [Name_English], [Name_Bangla], [Description], [DisplayOrder], [ImagePath], [Parent1Id], [ShowOnHomePage], [IncludeInTopMenu], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (10, N'Milk, eggs', N'দুধ,ডিম', NULL, NULL, N'Content/images/categories/dairyandeggs.jpg', 0, 1, 1, CAST(N'2017-10-29T09:18:42.1692500' AS DateTime2), CAST(N'2017-10-29T09:18:42.1692500' AS DateTime2), 1)
INSERT [dbo].[CategoryTbl] ([Id], [Name_English], [Name_Bangla], [Description], [DisplayOrder], [ImagePath], [Parent1Id], [ShowOnHomePage], [IncludeInTopMenu], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (11, N'Home decoration', N'গৃহ সজ্জা', NULL, NULL, N'Content/images/categories/decorating-hacks-modern-coffee-table.jpg', 0, 1, 1, CAST(N'2017-10-29T06:27:10.2473750' AS DateTime2), CAST(N'2017-10-29T06:27:10.2473750' AS DateTime2), 1)
INSERT [dbo].[CategoryTbl] ([Id], [Name_English], [Name_Bangla], [Description], [DisplayOrder], [ImagePath], [Parent1Id], [ShowOnHomePage], [IncludeInTopMenu], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (12, N'Game item', N'খেলার আইটেম', NULL, NULL, N'Content/images/categories/item-all-800x600_1x.jpg', 0, 1, 1, CAST(N'2017-10-29T09:14:16.3567500' AS DateTime2), CAST(N'2017-10-29T09:14:16.3567500' AS DateTime2), 1)
INSERT [dbo].[CategoryTbl] ([Id], [Name_English], [Name_Bangla], [Description], [DisplayOrder], [ImagePath], [Parent1Id], [ShowOnHomePage], [IncludeInTopMenu], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (13, N'Girls shopping', N'মেয়েদের শপিং', NULL, NULL, N'Content/images/categories/shopping-girls-1024x576.jpg', 0, 1, 1, CAST(N'2017-10-29T07:05:42.6380000' AS DateTime2), CAST(N'2017-10-29T07:05:42.6380000' AS DateTime2), 1)
INSERT [dbo].[CategoryTbl] ([Id], [Name_English], [Name_Bangla], [Description], [DisplayOrder], [ImagePath], [Parent1Id], [ShowOnHomePage], [IncludeInTopMenu], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (14, N'Dry food', N'শুকনা খাবার', NULL, NULL, N'Content/images/categories/3948095-Nuts-and-corn-hazelnuts-cashews-almonds-pistachios-dried-cranberry-and-walnuts-background-Dry-food--Stock-Photo.jpg', 0, 1, 1, CAST(N'2017-10-29T09:07:33.9036250' AS DateTime2), CAST(N'2017-10-29T09:07:33.9036250' AS DateTime2), 1)
INSERT [dbo].[CategoryTbl] ([Id], [Name_English], [Name_Bangla], [Description], [DisplayOrder], [ImagePath], [Parent1Id], [ShowOnHomePage], [IncludeInTopMenu], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (15, N'Rice, Dal, salt', N'চাল,ডাল,লবণ', NULL, NULL, N'Content/images/categories/placeholder.png', 0, 1, 1, CAST(N'2017-10-29T05:50:52.4036250' AS DateTime2), CAST(N'2017-10-29T05:50:52.4036250' AS DateTime2), 1)
INSERT [dbo].[CategoryTbl] ([Id], [Name_English], [Name_Bangla], [Description], [DisplayOrder], [ImagePath], [Parent1Id], [ShowOnHomePage], [IncludeInTopMenu], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (16, N'Material of education', N'লেখাপড়ার সামগ্রী', NULL, NULL, N'Content/images/categories/placeholder.png', NULL, 0, 0, CAST(N'2017-10-29T07:34:46.2161250' AS DateTime2), CAST(N'2018-01-11T02:51:40.6447538' AS DateTime2), 0)
INSERT [dbo].[CategoryTbl] ([Id], [Name_English], [Name_Bangla], [Description], [DisplayOrder], [ImagePath], [Parent1Id], [ShowOnHomePage], [IncludeInTopMenu], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (17, N'Fruit', N'ফল মূল', NULL, NULL, N'Content/images/categories/placeholder.png', 0, 1, 1, CAST(N'2017-10-29T07:36:55.1223750' AS DateTime2), CAST(N'2017-10-29T07:36:55.1223750' AS DateTime2), 1)
INSERT [dbo].[CategoryTbl] ([Id], [Name_English], [Name_Bangla], [Description], [DisplayOrder], [ImagePath], [Parent1Id], [ShowOnHomePage], [IncludeInTopMenu], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (18, N'Wedding market', N'বিয়ের বাজার', NULL, NULL, N'Content/images/categories/placeholder.png', 0, 1, 1, CAST(N'2017-10-29T09:05:21.4817500' AS DateTime2), CAST(N'2017-10-29T09:05:21.4817500' AS DateTime2), 1)
INSERT [dbo].[CategoryTbl] ([Id], [Name_English], [Name_Bangla], [Description], [DisplayOrder], [ImagePath], [Parent1Id], [ShowOnHomePage], [IncludeInTopMenu], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (19, N'Plastic, melamine materials', N'প্লাষ্টিক,মেলামাইন সামগ্রী', NULL, NULL, N'Content/images/categories/placeholder.png', 0, 1, 1, CAST(N'2017-10-29T06:04:26.6067500' AS DateTime2), CAST(N'2017-10-29T06:04:26.6067500' AS DateTime2), 1)
INSERT [dbo].[CategoryTbl] ([Id], [Name_English], [Name_Bangla], [Description], [DisplayOrder], [ImagePath], [Parent1Id], [ShowOnHomePage], [IncludeInTopMenu], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (20, N'betel, jerda', N'পান,সুপারি,জর্দ্দা', NULL, NULL, N'Content/images/categories/placeholder.png', 0, 1, 1, CAST(N'2017-10-29T09:20:34.2005000' AS DateTime2), CAST(N'2017-10-29T09:20:34.2161250' AS DateTime2), 1)
INSERT [dbo].[CategoryTbl] ([Id], [Name_English], [Name_Bangla], [Description], [DisplayOrder], [ImagePath], [Parent1Id], [ShowOnHomePage], [IncludeInTopMenu], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (21, N'Newborn baby item', N'নিউবর্ন বেবি আইটেম', NULL, NULL, N'Content/images/categories/baby.jpg', NULL, 0, 0, CAST(N'2017-11-20T09:32:51.7088640' AS DateTime2), CAST(N'2018-01-11T05:50:37.4978122' AS DateTime2), 0)
INSERT [dbo].[CategoryTbl] ([Id], [Name_English], [Name_Bangla], [Description], [DisplayOrder], [ImagePath], [Parent1Id], [ShowOnHomePage], [IncludeInTopMenu], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (22, N'Jute and leather goods', N'পাট ও চামড়াজাত পণ্য', NULL, NULL, N'Content/images/categories/placeholder.png', 0, 1, 1, CAST(N'2017-10-29T09:29:24.5130000' AS DateTime2), CAST(N'2017-10-29T09:29:24.5130000' AS DateTime2), 1)
INSERT [dbo].[CategoryTbl] ([Id], [Name_English], [Name_Bangla], [Description], [DisplayOrder], [ImagePath], [Parent1Id], [ShowOnHomePage], [IncludeInTopMenu], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (23, N'Rod, cement, brick, tin', N'রড,সিমেন্ট,ইট,টিন', NULL, NULL, N'Content/images/categories/placeholder.png', 0, 1, 1, CAST(N'2017-10-29T09:23:09.9817500' AS DateTime2), CAST(N'2017-10-29T09:23:09.9817500' AS DateTime2), 1)
INSERT [dbo].[CategoryTbl] ([Id], [Name_English], [Name_Bangla], [Description], [DisplayOrder], [ImagePath], [Parent1Id], [ShowOnHomePage], [IncludeInTopMenu], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (24, N'Gift item', N'গিফট আইটেম', NULL, NULL, N'Content/images/categories/placeholder.png', 0, 1, 1, CAST(N'2017-10-29T08:42:43.4348750' AS DateTime2), CAST(N'2017-10-29T08:42:43.4348750' AS DateTime2), 1)
INSERT [dbo].[CategoryTbl] ([Id], [Name_English], [Name_Bangla], [Description], [DisplayOrder], [ImagePath], [Parent1Id], [ShowOnHomePage], [IncludeInTopMenu], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (25, N'Book', N'বই', NULL, NULL, N'Content/images/categories/book.png', NULL, 0, 0, CAST(N'2017-11-20T09:16:54.6619890' AS DateTime2), CAST(N'2018-01-11T05:35:03.7414466' AS DateTime2), 0)
INSERT [dbo].[CategoryTbl] ([Id], [Name_English], [Name_Bangla], [Description], [DisplayOrder], [ImagePath], [Parent1Id], [ShowOnHomePage], [IncludeInTopMenu], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (26, N'Baby Food', N'শিশু খাদ্য', NULL, NULL, N'Content/images/categories/placeholder.png', 0, 1, 1, CAST(N'2017-10-29T05:32:54.2786250' AS DateTime2), CAST(N'2017-10-29T05:32:54.2786250' AS DateTime2), 1)
INSERT [dbo].[CategoryTbl] ([Id], [Name_English], [Name_Bangla], [Description], [DisplayOrder], [ImagePath], [Parent1Id], [ShowOnHomePage], [IncludeInTopMenu], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (27, N'Animal feed', N'পশু,পাখি,মাছের খাবার', NULL, NULL, N'Content/images/categories/placeholder.png', 0, 1, 1, CAST(N'2017-10-29T09:11:31.5598750' AS DateTime2), CAST(N'2017-10-29T09:11:31.5598750' AS DateTime2), 1)
INSERT [dbo].[CategoryTbl] ([Id], [Name_English], [Name_Bangla], [Description], [DisplayOrder], [ImagePath], [Parent1Id], [ShowOnHomePage], [IncludeInTopMenu], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (28, N'Horlicks, Health Nutrition', N'হরলিকস,সাস্থ্য পুস্টি', NULL, NULL, N'Content/images/categories/placeholder.png', 0, 1, 1, CAST(N'2017-10-29T06:17:01.7005000' AS DateTime2), CAST(N'2017-10-29T06:17:01.7005000' AS DateTime2), 1)
INSERT [dbo].[CategoryTbl] ([Id], [Name_English], [Name_Bangla], [Description], [DisplayOrder], [ImagePath], [Parent1Id], [ShowOnHomePage], [IncludeInTopMenu], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (29, N'FastFasting, Eid Marketing', N'রোজা,ঈদের বাজার', NULL, NULL, N'Content/images/categories/placeholder.png', 0, 1, 1, CAST(N'2017-10-29T09:16:55.7473750' AS DateTime2), CAST(N'2017-10-29T09:16:55.7473750' AS DateTime2), 1)
INSERT [dbo].[CategoryTbl] ([Id], [Name_English], [Name_Bangla], [Description], [DisplayOrder], [ImagePath], [Parent1Id], [ShowOnHomePage], [IncludeInTopMenu], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (30, N'Laptop', N'ল্যাপটপ', NULL, NULL, N'Content/images/categories/placeholder.png', 0, 1, 1, CAST(N'2017-10-29T08:49:31.0755000' AS DateTime2), CAST(N'2017-10-29T08:49:31.0755000' AS DateTime2), 1)
INSERT [dbo].[CategoryTbl] ([Id], [Name_English], [Name_Bangla], [Description], [DisplayOrder], [ImagePath], [Parent1Id], [ShowOnHomePage], [IncludeInTopMenu], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (31, N'Ready Mix', N'রেডি মিক্স', NULL, NULL, N'Content/images/categories/placeholder.png', 0, 1, 1, CAST(N'2017-10-29T09:24:46.7786250' AS DateTime2), CAST(N'2017-10-29T09:24:46.7786250' AS DateTime2), 1)
INSERT [dbo].[CategoryTbl] ([Id], [Name_English], [Name_Bangla], [Description], [DisplayOrder], [ImagePath], [Parent1Id], [ShowOnHomePage], [IncludeInTopMenu], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (32, N'computer', N'কম্পিউটার', NULL, NULL, N'Content/images/categories/placeholder.png', 0, 1, 1, CAST(N'2017-10-29T08:48:41.0130000' AS DateTime2), CAST(N'2017-10-29T08:48:41.0130000' AS DateTime2), 1)
INSERT [dbo].[CategoryTbl] ([Id], [Name_English], [Name_Bangla], [Description], [DisplayOrder], [ImagePath], [Parent1Id], [ShowOnHomePage], [IncludeInTopMenu], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (34, N'parent1', N'parent1', N'dse', 1, N'Content/images/categories/placeholder.png', 0, 1, 1, NULL, CAST(N'2017-10-25T13:59:36.8611977' AS DateTime2), NULL)
INSERT [dbo].[CategoryTbl] ([Id], [Name_English], [Name_Bangla], [Description], [DisplayOrder], [ImagePath], [Parent1Id], [ShowOnHomePage], [IncludeInTopMenu], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (35, N'Fish, meat, dried', N'মাছ,মাংশ,সুটকি', NULL, NULL, N'Content/images/categories/placeholder.png', 0, 1, 1, CAST(N'2017-10-29T08:30:47.6848750' AS DateTime2), CAST(N'2017-10-29T08:30:47.6848750' AS DateTime2), 1)
INSERT [dbo].[CategoryTbl] ([Id], [Name_English], [Name_Bangla], [Description], [DisplayOrder], [ImagePath], [Parent1Id], [ShowOnHomePage], [IncludeInTopMenu], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (36, N'Onion,Garlic,Spice', N'পিয়াজ,রসুন,মশলা', NULL, NULL, N'Content/images/categories/placeholder.png', 0, 1, 1, CAST(N'2017-10-29T05:47:58.5911250' AS DateTime2), CAST(N'2017-10-29T05:47:58.5911250' AS DateTime2), 1)
INSERT [dbo].[CategoryTbl] ([Id], [Name_English], [Name_Bangla], [Description], [DisplayOrder], [ImagePath], [Parent1Id], [ShowOnHomePage], [IncludeInTopMenu], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (37, N'Frozen canned food', N'হিমায়িত,টিনজাত খাবার', NULL, NULL, N'Content/images/categories/placeholder.png', 0, 1, 1, CAST(N'2017-10-29T09:27:21.3255000' AS DateTime2), CAST(N'2017-10-29T09:27:21.3255000' AS DateTime2), 1)
INSERT [dbo].[CategoryTbl] ([Id], [Name_English], [Name_Bangla], [Description], [DisplayOrder], [ImagePath], [Parent1Id], [ShowOnHomePage], [IncludeInTopMenu], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (38, N'Boys shopping', N'ছেলেদের শপিং', NULL, NULL, N'Content/images/categories/placeholder.png', 0, 1, 1, CAST(N'2017-10-29T07:07:15.6536250' AS DateTime2), CAST(N'2017-10-29T07:07:15.6536250' AS DateTime2), 1)
INSERT [dbo].[CategoryTbl] ([Id], [Name_English], [Name_Bangla], [Description], [DisplayOrder], [ImagePath], [Parent1Id], [ShowOnHomePage], [IncludeInTopMenu], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (40, N'Medicine', N'ঔষধ', NULL, NULL, N'Content/images/categories/placeholder.png', NULL, 0, 0, CAST(N'2017-10-29T05:59:41.8255000' AS DateTime2), CAST(N'2018-01-11T02:50:28.8932410' AS DateTime2), 0)
INSERT [dbo].[CategoryTbl] ([Id], [Name_English], [Name_Bangla], [Description], [DisplayOrder], [ImagePath], [Parent1Id], [ShowOnHomePage], [IncludeInTopMenu], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (41, N'Freeze, TV, Oven', N'ফ্রিজ,টিভি,ওভেন', NULL, NULL, N'Content/images/categories/placeholder.png', 0, 1, 1, CAST(N'2017-10-29T07:43:52.7630000' AS DateTime2), CAST(N'2017-10-29T07:43:52.7630000' AS DateTime2), 1)
INSERT [dbo].[CategoryTbl] ([Id], [Name_English], [Name_Bangla], [Description], [DisplayOrder], [ImagePath], [Parent1Id], [ShowOnHomePage], [IncludeInTopMenu], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (42, N'Tea, coffee, drinks', N'চা,কফি,পানীয়', NULL, NULL, N'Content/images/categories/placeholder.png', 0, 1, 1, CAST(N'2017-10-29T05:56:12.1692500' AS DateTime2), CAST(N'2017-10-29T05:56:12.1692500' AS DateTime2), 1)
INSERT [dbo].[CategoryTbl] ([Id], [Name_English], [Name_Bangla], [Description], [DisplayOrder], [ImagePath], [Parent1Id], [ShowOnHomePage], [IncludeInTopMenu], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (43, N'Mosquitoes', N'মশা,মাছি মারার ঔষধ', NULL, NULL, N'Content/images/categories/placeholder.png', 0, 1, 1, CAST(N'2017-10-29T07:23:13.4505000' AS DateTime2), CAST(N'2017-10-29T07:23:13.4505000' AS DateTime2), 1)
INSERT [dbo].[CategoryTbl] ([Id], [Name_English], [Name_Bangla], [Description], [DisplayOrder], [ImagePath], [Parent1Id], [ShowOnHomePage], [IncludeInTopMenu], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (44, N'Clothes', N'কাপড়', NULL, NULL, N'Content/images/categories/placeholder.png', 0, 1, 1, CAST(N'2017-10-29T08:32:48.7942500' AS DateTime2), CAST(N'2017-10-29T08:32:48.7942500' AS DateTime2), 1)
INSERT [dbo].[CategoryTbl] ([Id], [Name_English], [Name_Bangla], [Description], [DisplayOrder], [ImagePath], [Parent1Id], [ShowOnHomePage], [IncludeInTopMenu], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (45, N'jam jelly', N'জেম,জেলী', NULL, NULL, N'Content/images/categories/Shezan orange jelly 440gm.jpeg', 34, NULL, NULL, CAST(N'2017-12-13T06:32:54.9956250' AS DateTime2), CAST(N'2017-12-13T06:32:54.9956250' AS DateTime2), 1)
INSERT [dbo].[CategoryTbl] ([Id], [Name_English], [Name_Bangla], [Description], [DisplayOrder], [ImagePath], [Parent1Id], [ShowOnHomePage], [IncludeInTopMenu], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (48, N'Atta,Flour,Suji', N'আটা,ময়দা,সুজি', NULL, NULL, N'Content/images/categories/25537337/khula atta.jpg', NULL, 1, 1, CAST(N'2017-12-23T06:02:44.6962891' AS DateTime2), CAST(N'2017-12-23T06:02:44.6962891' AS DateTime2), 1)
INSERT [dbo].[CategoryTbl] ([Id], [Name_English], [Name_Bangla], [Description], [DisplayOrder], [ImagePath], [Parent1Id], [ShowOnHomePage], [IncludeInTopMenu], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (49, N'Toothpaste, toothbrush', N'টুথপেস্ট,টুথব্রাশ', NULL, NULL, N'Content/images/categories/62135660/13.jpg', NULL, 1, 1, CAST(N'2017-12-24T00:05:07.1601563' AS DateTime2), CAST(N'2017-12-24T00:05:07.1601563' AS DateTime2), 1)
INSERT [dbo].[CategoryTbl] ([Id], [Name_English], [Name_Bangla], [Description], [DisplayOrder], [ImagePath], [Parent1Id], [ShowOnHomePage], [IncludeInTopMenu], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (1050, N'Mobile Servicing', N'মোবাইল  সার্ভিসিং', NULL, NULL, N'', NULL, NULL, NULL, CAST(N'2018-01-14T06:03:36.8436091' AS DateTime2), CAST(N'2018-01-14T06:03:36.8436091' AS DateTime2), 1)
SET IDENTITY_INSERT [dbo].[CategoryTbl] OFF
SET IDENTITY_INSERT [dbo].[LogTbl] ON 

INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (9, N'Cannot deserialize the current JSON array (e.g. [1,2,3]) into type ''Shodypati.Models.Product'' because the type requires a JSON object (e.g. {"name":"value"}) to deserialize correctly.
To fix this error either change the JSON to a JSON object (e.g. {"name":"value"}) or change the deserialized type to an array or a type that implements a collection interface (e.g. ICollection, IList) like List<T> that can be deserialized from a JSON array. JsonArrayAttribute can also be added to the type to force it to deserialize from a JSON array.
Path '''', line 1, position 1.', N'   at Newtonsoft.Json.Serialization.JsonSerializerInternalReader.EnsureArrayContract(JsonReader reader, Type objectType, JsonContract contract)
   at Newtonsoft.Json.Serialization.JsonSerializerInternalReader.CreateList(JsonReader reader, Type objectType, JsonContract contract, JsonProperty member, Object existingValue, String id)
   at Newtonsoft.Json.Serialization.JsonSerializerInternalReader.CreateValueInternal(JsonReader reader, Type objectType, JsonContract contract, JsonProperty member, JsonContainerContract containerContract, JsonProperty containerMember, Object existingValue)
   at Newtonsoft.Json.Serialization.JsonSerializerInternalReader.Deserialize(JsonReader reader, Type objectType, Boolean checkAdditionalContent)
   at Newtonsoft.Json.JsonSerializer.DeserializeInternal(JsonReader reader, Type objectType)
   at Newtonsoft.Json.JsonConvert.DeserializeObject(String value, Type type, JsonSerializerSettings settings)
   at Newtonsoft.Json.JsonConvert.DeserializeObject[T](String value, JsonSerializerSettings settings)
   at Newtonsoft.Json.JsonConvert.DeserializeObject[T](String value)
   at Shodypati.Controllers.ProductsController.<Edit>d__17.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\ProductsController.cs:line 238
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Products', N'127.0.0.1', N'Chrome 62.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Edit', CAST(N'2017-12-02T13:29:00.6841025' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (10, N'Cannot deserialize the current JSON array (e.g. [1,2,3]) into type ''Shodypati.Models.Product'' because the type requires a JSON object (e.g. {"name":"value"}) to deserialize correctly.
To fix this error either change the JSON to a JSON object (e.g. {"name":"value"}) or change the deserialized type to an array or a type that implements a collection interface (e.g. ICollection, IList) like List<T> that can be deserialized from a JSON array. JsonArrayAttribute can also be added to the type to force it to deserialize from a JSON array.
Path '''', line 1, position 1.', N'   at Newtonsoft.Json.Serialization.JsonSerializerInternalReader.EnsureArrayContract(JsonReader reader, Type objectType, JsonContract contract)
   at Newtonsoft.Json.Serialization.JsonSerializerInternalReader.CreateList(JsonReader reader, Type objectType, JsonContract contract, JsonProperty member, Object existingValue, String id)
   at Newtonsoft.Json.Serialization.JsonSerializerInternalReader.CreateValueInternal(JsonReader reader, Type objectType, JsonContract contract, JsonProperty member, JsonContainerContract containerContract, JsonProperty containerMember, Object existingValue)
   at Newtonsoft.Json.Serialization.JsonSerializerInternalReader.Deserialize(JsonReader reader, Type objectType, Boolean checkAdditionalContent)
   at Newtonsoft.Json.JsonSerializer.DeserializeInternal(JsonReader reader, Type objectType)
   at Newtonsoft.Json.JsonConvert.DeserializeObject(String value, Type type, JsonSerializerSettings settings)
   at Newtonsoft.Json.JsonConvert.DeserializeObject[T](String value, JsonSerializerSettings settings)
   at Newtonsoft.Json.JsonConvert.DeserializeObject[T](String value)
   at Shodypati.Controllers.ProductsController.<Edit>d__17.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\ProductsController.cs:line 238
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Products', N'127.0.0.1', N'Chrome 62.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Edit', CAST(N'2017-12-02T13:31:07.8334343' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (11, N'The view ''Index'' or its master was not found or no view engine supports the searched locations. The following locations were searched:
~/Views/logs/Index.aspx
~/Views/logs/Index.ascx
~/Views/Shared/Index.aspx
~/Views/Shared/Index.ascx
~/Views/logs/Index.cshtml
~/Views/logs/Index.vbhtml
~/Views/Shared/Index.cshtml
~/Views/Shared/Index.vbhtml', N'   at System.Web.Mvc.ViewResult.FindView(ControllerContext context)
   at System.Web.Mvc.ViewResultBase.ExecuteResult(ControllerContext context)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResult(ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultWithFilters(ControllerContext controllerContext, IList`1 filters, ActionResult actionResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'logs', N'127.0.0.1', N'Chrome 62.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Index', CAST(N'2017-12-03T16:34:11.6303871' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (12, N'Exception', N'   at Shodypati.Controllers.OrderPaymentMethodsController.<Index>d__1.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\OrderPaymentMethodsController.cs:line 41
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'OrderPaymentMethods', N'127.0.0.1', N'Chrome 62.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Index', CAST(N'2017-12-05T12:20:08.2878599' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (13, N'Exception', N'   at Shodypati.Controllers.OrderPaymentMethodsController.<Index>d__1.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\OrderPaymentMethodsController.cs:line 41
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'OrderPaymentMethods', N'127.0.0.1', N'Chrome 62.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Index', CAST(N'2017-12-05T12:22:22.9828112' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (14, N'An error occurred while executing the command definition. See the inner exception for details.', N'   at System.Data.Entity.Core.EntityClient.Internal.EntityCommandDefinition.<ExecuteStoreCommandsAsync>d__c.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Data.Entity.Core.Objects.Internal.ObjectQueryExecutionPlan.<ExecuteAsync>d__0`1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Data.Entity.Utilities.TaskExtensions.CultureAwaiter`1.GetResult()
   at System.Data.Entity.Core.Objects.ObjectContext.<ExecuteInTransactionAsync>d__3d`1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Data.Entity.SqlServer.DefaultSqlExecutionStrategy.<ExecuteAsyncImplementation>d__9`1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Data.Entity.Utilities.TaskExtensions.CultureAwaiter`1.GetResult()
   at System.Data.Entity.Core.Objects.ObjectQuery`1.<GetResultsAsync>d__e.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Data.Entity.Utilities.TaskExtensions.CultureAwaiter`1.GetResult()
   at System.Data.Entity.Internal.LazyAsyncEnumerator`1.<FirstMoveNextAsync>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Data.Entity.Infrastructure.IDbAsyncEnumerableExtensions.<FirstOrDefaultAsync>d__25`1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Microsoft.AspNet.Identity.TaskExtensions.CultureAwaiter`1.GetResult()
   at Microsoft.AspNet.Identity.EntityFramework.UserStore`6.<GetUserAggregateAsync>d__6c.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Microsoft.AspNet.Identity.TaskExtensions.CultureAwaiter`1.GetResult()
   at Microsoft.AspNet.Identity.UserValidator`2.<ValidateUserName>d__4.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Microsoft.AspNet.Identity.UserValidator`2.<ValidateAsync>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Microsoft.AspNet.Identity.UserManager`2.<CreateAsync>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Microsoft.AspNet.Identity.UserManager`2.<CreateAsync>d__d.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter`1.GetResult()
   at Shodypati.Controllers.AccountController.<Register>d__7.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\AccountController.cs:line 194
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Account', N'127.0.0.1', N'Chrome 62.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Register', CAST(N'2017-12-08T02:04:19.0897790' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (15, N'An error occurred while executing the command definition. See the inner exception for details.', N'   at System.Data.Entity.Core.EntityClient.Internal.EntityCommandDefinition.<ExecuteStoreCommandsAsync>d__c.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Data.Entity.Core.Objects.Internal.ObjectQueryExecutionPlan.<ExecuteAsync>d__0`1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Data.Entity.Utilities.TaskExtensions.CultureAwaiter`1.GetResult()
   at System.Data.Entity.Core.Objects.ObjectContext.<ExecuteInTransactionAsync>d__3d`1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Data.Entity.SqlServer.DefaultSqlExecutionStrategy.<ExecuteAsyncImplementation>d__9`1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Data.Entity.Utilities.TaskExtensions.CultureAwaiter`1.GetResult()
   at System.Data.Entity.Core.Objects.ObjectQuery`1.<GetResultsAsync>d__e.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Data.Entity.Utilities.TaskExtensions.CultureAwaiter`1.GetResult()
   at System.Data.Entity.Internal.LazyAsyncEnumerator`1.<FirstMoveNextAsync>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Data.Entity.Infrastructure.IDbAsyncEnumerableExtensions.<FirstOrDefaultAsync>d__25`1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Microsoft.AspNet.Identity.TaskExtensions.CultureAwaiter`1.GetResult()
   at Microsoft.AspNet.Identity.EntityFramework.UserStore`6.<GetUserAggregateAsync>d__6c.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Microsoft.AspNet.Identity.TaskExtensions.CultureAwaiter`1.GetResult()
   at Microsoft.AspNet.Identity.Owin.SignInManager`2.<PasswordSignInAsync>d__29.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter`1.GetResult()
   at Shodypati.Controllers.AccountController.<Login>d__3.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\AccountController.cs:line 103
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Account', N'127.0.0.1', N'Chrome 62.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Login', CAST(N'2017-12-08T02:04:29.2829236' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (16, N'An error occurred while executing the command definition. See the inner exception for details.', N'   at System.Data.Entity.Core.EntityClient.Internal.EntityCommandDefinition.<ExecuteStoreCommandsAsync>d__c.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Data.Entity.Core.Objects.Internal.ObjectQueryExecutionPlan.<ExecuteAsync>d__0`1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Data.Entity.Utilities.TaskExtensions.CultureAwaiter`1.GetResult()
   at System.Data.Entity.Core.Objects.ObjectContext.<ExecuteInTransactionAsync>d__3d`1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Data.Entity.SqlServer.DefaultSqlExecutionStrategy.<ExecuteAsyncImplementation>d__9`1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Data.Entity.Utilities.TaskExtensions.CultureAwaiter`1.GetResult()
   at System.Data.Entity.Core.Objects.ObjectQuery`1.<GetResultsAsync>d__e.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Data.Entity.Utilities.TaskExtensions.CultureAwaiter`1.GetResult()
   at System.Data.Entity.Internal.LazyAsyncEnumerator`1.<FirstMoveNextAsync>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Data.Entity.Infrastructure.IDbAsyncEnumerableExtensions.<FirstOrDefaultAsync>d__25`1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Microsoft.AspNet.Identity.TaskExtensions.CultureAwaiter`1.GetResult()
   at Microsoft.AspNet.Identity.EntityFramework.UserStore`6.<GetUserAggregateAsync>d__6c.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Microsoft.AspNet.Identity.TaskExtensions.CultureAwaiter`1.GetResult()
   at Microsoft.AspNet.Identity.Owin.SignInManager`2.<PasswordSignInAsync>d__29.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter`1.GetResult()
   at Shodypati.Controllers.AccountController.<Login>d__3.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\AccountController.cs:line 103
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Account', N'127.0.0.1', N'Chrome 62.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Login', CAST(N'2017-12-08T02:04:39.3061741' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (17, N'An error occurred while executing the command definition. See the inner exception for details.', N'   at System.Data.Entity.Core.EntityClient.Internal.EntityCommandDefinition.<ExecuteStoreCommandsAsync>d__c.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Data.Entity.Core.Objects.Internal.ObjectQueryExecutionPlan.<ExecuteAsync>d__0`1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Data.Entity.Utilities.TaskExtensions.CultureAwaiter`1.GetResult()
   at System.Data.Entity.Core.Objects.ObjectContext.<ExecuteInTransactionAsync>d__3d`1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Data.Entity.SqlServer.DefaultSqlExecutionStrategy.<ExecuteAsyncImplementation>d__9`1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Data.Entity.Utilities.TaskExtensions.CultureAwaiter`1.GetResult()
   at System.Data.Entity.Core.Objects.ObjectQuery`1.<GetResultsAsync>d__e.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Data.Entity.Utilities.TaskExtensions.CultureAwaiter`1.GetResult()
   at System.Data.Entity.Internal.LazyAsyncEnumerator`1.<FirstMoveNextAsync>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Data.Entity.Infrastructure.IDbAsyncEnumerableExtensions.<FirstOrDefaultAsync>d__25`1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Microsoft.AspNet.Identity.TaskExtensions.CultureAwaiter`1.GetResult()
   at Microsoft.AspNet.Identity.EntityFramework.UserStore`6.<GetUserAggregateAsync>d__6c.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Microsoft.AspNet.Identity.TaskExtensions.CultureAwaiter`1.GetResult()
   at Microsoft.AspNet.Identity.Owin.SignInManager`2.<PasswordSignInAsync>d__29.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter`1.GetResult()
   at Shodypati.Controllers.AccountController.<Login>d__3.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\AccountController.cs:line 103
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Account', N'127.0.0.1', N'Chrome 62.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Login', CAST(N'2017-12-08T02:05:03.1312147' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (18, N'An error occurred while executing the command definition. See the inner exception for details.', N'   at System.Data.Entity.Core.EntityClient.Internal.EntityCommandDefinition.<ExecuteStoreCommandsAsync>d__c.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Data.Entity.Core.Objects.Internal.ObjectQueryExecutionPlan.<ExecuteAsync>d__0`1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Data.Entity.Utilities.TaskExtensions.CultureAwaiter`1.GetResult()
   at System.Data.Entity.Core.Objects.ObjectContext.<ExecuteInTransactionAsync>d__3d`1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Data.Entity.SqlServer.DefaultSqlExecutionStrategy.<ExecuteAsyncImplementation>d__9`1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Data.Entity.Utilities.TaskExtensions.CultureAwaiter`1.GetResult()
   at System.Data.Entity.Core.Objects.ObjectQuery`1.<GetResultsAsync>d__e.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Data.Entity.Utilities.TaskExtensions.CultureAwaiter`1.GetResult()
   at System.Data.Entity.Internal.LazyAsyncEnumerator`1.<FirstMoveNextAsync>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Data.Entity.Infrastructure.IDbAsyncEnumerableExtensions.<FirstOrDefaultAsync>d__25`1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Microsoft.AspNet.Identity.TaskExtensions.CultureAwaiter`1.GetResult()
   at Microsoft.AspNet.Identity.EntityFramework.UserStore`6.<GetUserAggregateAsync>d__6c.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Microsoft.AspNet.Identity.TaskExtensions.CultureAwaiter`1.GetResult()
   at Microsoft.AspNet.Identity.UserValidator`2.<ValidateUserName>d__4.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Microsoft.AspNet.Identity.UserValidator`2.<ValidateAsync>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Microsoft.AspNet.Identity.UserManager`2.<CreateAsync>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Microsoft.AspNet.Identity.UserManager`2.<CreateAsync>d__d.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter`1.GetResult()
   at Shodypati.Controllers.AccountController.<Register>d__7.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\AccountController.cs:line 194
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Account', N'127.0.0.1', N'Chrome 62.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Register', CAST(N'2017-12-08T02:05:50.0782107' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (19, N'An error occurred while executing the command definition. See the inner exception for details.', N'   at System.Data.Entity.Core.EntityClient.Internal.EntityCommandDefinition.<ExecuteStoreCommandsAsync>d__c.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Data.Entity.Core.Objects.Internal.ObjectQueryExecutionPlan.<ExecuteAsync>d__0`1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Data.Entity.Utilities.TaskExtensions.CultureAwaiter`1.GetResult()
   at System.Data.Entity.Core.Objects.ObjectContext.<ExecuteInTransactionAsync>d__3d`1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Data.Entity.SqlServer.DefaultSqlExecutionStrategy.<ExecuteAsyncImplementation>d__9`1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Data.Entity.Utilities.TaskExtensions.CultureAwaiter`1.GetResult()
   at System.Data.Entity.Core.Objects.ObjectQuery`1.<GetResultsAsync>d__e.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Data.Entity.Utilities.TaskExtensions.CultureAwaiter`1.GetResult()
   at System.Data.Entity.Internal.LazyAsyncEnumerator`1.<FirstMoveNextAsync>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Data.Entity.Infrastructure.IDbAsyncEnumerableExtensions.<FirstOrDefaultAsync>d__25`1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Microsoft.AspNet.Identity.TaskExtensions.CultureAwaiter`1.GetResult()
   at Microsoft.AspNet.Identity.EntityFramework.UserStore`6.<GetUserAggregateAsync>d__6c.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Microsoft.AspNet.Identity.TaskExtensions.CultureAwaiter`1.GetResult()
   at Microsoft.AspNet.Identity.UserValidator`2.<ValidateUserName>d__4.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Microsoft.AspNet.Identity.UserValidator`2.<ValidateAsync>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Microsoft.AspNet.Identity.UserManager`2.<CreateAsync>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Microsoft.AspNet.Identity.UserManager`2.<CreateAsync>d__d.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter`1.GetResult()
   at Shodypati.Controllers.AccountController.<Register>d__7.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\AccountController.cs:line 194
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Account', N'127.0.0.1', N'Chrome 62.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Register', CAST(N'2017-12-08T02:09:32.6446627' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (20, N'An error occurred while executing the command definition. See the inner exception for details.', N'   at System.Data.Entity.Core.EntityClient.Internal.EntityCommandDefinition.<ExecuteStoreCommandsAsync>d__c.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Data.Entity.Core.Objects.Internal.ObjectQueryExecutionPlan.<ExecuteAsync>d__0`1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Data.Entity.Utilities.TaskExtensions.CultureAwaiter`1.GetResult()
   at System.Data.Entity.Core.Objects.ObjectContext.<ExecuteInTransactionAsync>d__3d`1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Data.Entity.SqlServer.DefaultSqlExecutionStrategy.<ExecuteAsyncImplementation>d__9`1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Data.Entity.Utilities.TaskExtensions.CultureAwaiter`1.GetResult()
   at System.Data.Entity.Core.Objects.ObjectQuery`1.<GetResultsAsync>d__e.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Data.Entity.Utilities.TaskExtensions.CultureAwaiter`1.GetResult()
   at System.Data.Entity.Internal.LazyAsyncEnumerator`1.<FirstMoveNextAsync>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Data.Entity.Infrastructure.IDbAsyncEnumerableExtensions.<FirstOrDefaultAsync>d__25`1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Microsoft.AspNet.Identity.TaskExtensions.CultureAwaiter`1.GetResult()
   at Microsoft.AspNet.Identity.EntityFramework.UserStore`6.<GetUserAggregateAsync>d__6c.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Microsoft.AspNet.Identity.TaskExtensions.CultureAwaiter`1.GetResult()
   at Microsoft.AspNet.Identity.UserValidator`2.<ValidateUserName>d__4.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Microsoft.AspNet.Identity.UserValidator`2.<ValidateAsync>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Microsoft.AspNet.Identity.UserManager`2.<CreateAsync>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Microsoft.AspNet.Identity.UserManager`2.<CreateAsync>d__d.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter`1.GetResult()
   at Shodypati.Controllers.AccountController.<Register>d__7.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\AccountController.cs:line 194
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Account', N'127.0.0.1', N'Chrome 62.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Register', CAST(N'2017-12-08T02:11:43.1271677' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (21, N'The required anti-forgery cookie "__RequestVerificationToken" is not present.', N'   at System.Web.Helpers.AntiXsrf.TokenValidator.ValidateTokens(HttpContextBase httpContext, IIdentity identity, AntiForgeryToken sessionToken, AntiForgeryToken fieldToken)
   at System.Web.Helpers.AntiXsrf.AntiForgeryWorker.Validate(HttpContextBase httpContext)
   at System.Web.Helpers.AntiForgery.Validate()
   at System.Web.Mvc.ValidateAntiForgeryTokenAttribute.OnAuthorization(AuthorizationContext filterContext)
   at System.Web.Mvc.ControllerActionInvoker.InvokeAuthorizationFilters(ControllerContext controllerContext, IList`1 filters, ActionDescriptor actionDescriptor)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__19(AsyncCallback asyncCallback, Object asyncState)', N'Account', N'127.0.0.1', N'Unknown 0.0, 0.0', N'Unknown', N'00000000-0000-0000-0000-000000000000', N'Register', CAST(N'2017-12-08T02:53:45.3425158' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (22, N'Value cannot be null or empty.
Parameter name: linkText', N'   at System.Web.Mvc.Html.LinkExtensions.ActionLink(HtmlHelper htmlHelper, String linkText, String actionName, String controllerName, RouteValueDictionary routeValues, IDictionary`2 htmlAttributes)
   at System.Web.Mvc.Html.LinkExtensions.ActionLink(HtmlHelper htmlHelper, String linkText, String actionName, Object routeValues)
   at ASP._Page_Views_Orders_Details_cshtml.Execute() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Views\Orders\Details.cshtml:line 27
   at System.Web.WebPages.WebPageBase.ExecutePageHierarchy()
   at System.Web.Mvc.WebViewPage.ExecutePageHierarchy()
   at System.Web.WebPages.StartPage.RunPage()
   at System.Web.WebPages.StartPage.ExecutePageHierarchy()
   at System.Web.WebPages.WebPageBase.ExecutePageHierarchy(WebPageContext pageContext, TextWriter writer, WebPageRenderingBase startPage)
   at System.Web.Mvc.RazorView.RenderView(ViewContext viewContext, TextWriter writer, Object instance)
   at System.Web.Mvc.BuildManagerCompiledView.Render(ViewContext viewContext, TextWriter writer)
   at System.Web.Mvc.ViewResultBase.ExecuteResult(ControllerContext context)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResult(ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultWithFilters(ControllerContext controllerContext, IList`1 filters, ActionResult actionResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Orders', N'127.0.0.1', N'Chrome 62.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Details', CAST(N'2017-12-12T18:51:06.2388889' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (23, N'D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Views\Orders\Details.cshtml(258): error CS1525: Invalid expression term ''|''', N'   at System.Web.Compilation.AssemblyBuilder.Compile()
   at System.Web.Compilation.BuildProvidersCompiler.PerformBuild()
   at System.Web.Compilation.BuildManager.CompileWebFile(VirtualPath virtualPath)
   at System.Web.Compilation.BuildManager.GetVPathBuildResultInternal(VirtualPath virtualPath, Boolean noBuild, Boolean allowCrossApp, Boolean allowBuildInPrecompile, Boolean throwIfNotFound, Boolean ensureIsUpToDate)
   at System.Web.Compilation.BuildManager.GetVPathBuildResultWithNoAssert(HttpContext context, VirtualPath virtualPath, Boolean noBuild, Boolean allowCrossApp, Boolean allowBuildInPrecompile, Boolean throwIfNotFound, Boolean ensureIsUpToDate)
   at System.Web.Compilation.BuildManager.GetVirtualPathObjectFactory(VirtualPath virtualPath, HttpContext context, Boolean allowCrossApp, Boolean throwIfNotFound)
   at System.Web.Compilation.BuildManager.GetCompiledType(VirtualPath virtualPath)
   at System.Web.Compilation.BuildManager.GetCompiledType(String virtualPath)
   at System.Web.Mvc.BuildManagerWrapper.System.Web.Mvc.IBuildManager.GetCompiledType(String virtualPath)
   at System.Web.Mvc.BuildManagerCompiledView.Render(ViewContext viewContext, TextWriter writer)
   at System.Web.Mvc.ViewResultBase.ExecuteResult(ControllerContext context)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResult(ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultWithFilters(ControllerContext controllerContext, IList`1 filters, ActionResult actionResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Orders', N'127.0.0.1', N'Chrome 62.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Details', CAST(N'2017-12-12T19:04:32.7936437' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (24, N'D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Views\Orders\Details.cshtml(258): error CS1525: Invalid expression term ''|''', N'   at System.Web.Compilation.AssemblyBuilder.Compile()
   at System.Web.Compilation.BuildProvidersCompiler.PerformBuild()
   at System.Web.Compilation.BuildManager.CompileWebFile(VirtualPath virtualPath)
   at System.Web.Compilation.BuildManager.GetVPathBuildResultInternal(VirtualPath virtualPath, Boolean noBuild, Boolean allowCrossApp, Boolean allowBuildInPrecompile, Boolean throwIfNotFound, Boolean ensureIsUpToDate)
   at System.Web.Compilation.BuildManager.GetVPathBuildResultWithNoAssert(HttpContext context, VirtualPath virtualPath, Boolean noBuild, Boolean allowCrossApp, Boolean allowBuildInPrecompile, Boolean throwIfNotFound, Boolean ensureIsUpToDate)
   at System.Web.Compilation.BuildManager.GetVirtualPathObjectFactory(VirtualPath virtualPath, HttpContext context, Boolean allowCrossApp, Boolean throwIfNotFound)
   at System.Web.Compilation.BuildManager.GetCompiledType(VirtualPath virtualPath)
   at System.Web.Compilation.BuildManager.GetCompiledType(String virtualPath)
   at System.Web.Mvc.BuildManagerWrapper.System.Web.Mvc.IBuildManager.GetCompiledType(String virtualPath)
   at System.Web.Mvc.BuildManagerCompiledView.Render(ViewContext viewContext, TextWriter writer)
   at System.Web.Mvc.ViewResultBase.ExecuteResult(ControllerContext context)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResult(ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultWithFilters(ControllerContext controllerContext, IList`1 filters, ActionResult actionResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Orders', N'127.0.0.1', N'Chrome 62.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Details', CAST(N'2017-12-12T19:05:37.6358500' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (25, N'D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Views\Orders\Details.cshtml(258): error CS1525: Invalid expression term ''|''', N'   at System.Web.Compilation.AssemblyBuilder.Compile()
   at System.Web.Compilation.BuildProvidersCompiler.PerformBuild()
   at System.Web.Compilation.BuildManager.CompileWebFile(VirtualPath virtualPath)
   at System.Web.Compilation.BuildManager.GetVPathBuildResultInternal(VirtualPath virtualPath, Boolean noBuild, Boolean allowCrossApp, Boolean allowBuildInPrecompile, Boolean throwIfNotFound, Boolean ensureIsUpToDate)
   at System.Web.Compilation.BuildManager.GetVPathBuildResultWithNoAssert(HttpContext context, VirtualPath virtualPath, Boolean noBuild, Boolean allowCrossApp, Boolean allowBuildInPrecompile, Boolean throwIfNotFound, Boolean ensureIsUpToDate)
   at System.Web.Compilation.BuildManager.GetVirtualPathObjectFactory(VirtualPath virtualPath, HttpContext context, Boolean allowCrossApp, Boolean throwIfNotFound)
   at System.Web.Compilation.BuildManager.GetCompiledType(VirtualPath virtualPath)
   at System.Web.Compilation.BuildManager.GetCompiledType(String virtualPath)
   at System.Web.Mvc.BuildManagerWrapper.System.Web.Mvc.IBuildManager.GetCompiledType(String virtualPath)
   at System.Web.Mvc.BuildManagerCompiledView.Render(ViewContext viewContext, TextWriter writer)
   at System.Web.Mvc.ViewResultBase.ExecuteResult(ControllerContext context)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResult(ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultWithFilters(ControllerContext controllerContext, IList`1 filters, ActionResult actionResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Orders', N'127.0.0.1', N'Chrome 62.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Details', CAST(N'2017-12-12T19:06:07.1154440' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (26, N'Exception', N'   at Shodypati.Controllers.OrdersController.<Details>d__2.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\OrdersController.cs:line 63
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Orders', N'127.0.0.1', N'Chrome 62.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Details', CAST(N'2017-12-13T00:26:10.1651001' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (27, N'Exception', N'   at Shodypati.Controllers.OrdersController.<Details>d__2.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\OrdersController.cs:line 63
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Orders', N'127.0.0.1', N'Chrome 62.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Details', CAST(N'2017-12-13T00:57:47.1195448' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (28, N'Exception', N'   at Shodypati.Controllers.OrdersController.<Details>d__2.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\OrdersController.cs:line 63
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Orders', N'127.0.0.1', N'Chrome 62.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Details', CAST(N'2017-12-13T00:58:10.4493256' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (29, N'Exception', N'   at Shodypati.Controllers.OrdersController.<Details>d__2.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\OrdersController.cs:line 63
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Orders', N'127.0.0.1', N'Chrome 62.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Details', CAST(N'2017-12-13T01:06:53.7618337' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (30, N'Exception', N'   at Shodypati.Controllers.OrdersController.<Details>d__2.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\OrdersController.cs:line 63
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Orders', N'127.0.0.1', N'Chrome 62.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Details', CAST(N'2017-12-13T01:08:56.1257253' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (31, N'Exception', N'   at Shodypati.Controllers.OrdersController.<Details>d__2.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\OrdersController.cs:line 63
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Orders', N'127.0.0.1', N'Chrome 62.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Details', CAST(N'2017-12-13T01:09:32.0673853' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (32, N'Exception', N'   at Shodypati.Controllers.OrdersController.<Details>d__2.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\OrdersController.cs:line 63
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Orders', N'127.0.0.1', N'Chrome 62.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Details', CAST(N'2017-12-13T01:15:24.5159525' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (33, N'Exception', N'   at Shodypati.Controllers.OrdersController.<Details>d__2.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\OrdersController.cs:line 63
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Orders', N'127.0.0.1', N'Chrome 62.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Details', CAST(N'2017-12-13T01:27:08.7265500' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (34, N'Exception', N'   at Shodypati.Controllers.OrdersController.<Details>d__2.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\OrdersController.cs:line 63
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Orders', N'127.0.0.1', N'Chrome 62.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Details', CAST(N'2017-12-13T01:27:19.7377763' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (35, N'Exception', N'   at Shodypati.Controllers.OrdersController.<Details>d__2.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\OrdersController.cs:line 63
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Orders', N'127.0.0.1', N'Chrome 62.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Details', CAST(N'2017-12-13T01:40:57.4604534' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (36, N'Exception', N'   at Shodypati.Controllers.OrdersController.<Details>d__2.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\OrdersController.cs:line 63
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Orders', N'127.0.0.1', N'Chrome 62.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Details', CAST(N'2017-12-13T01:42:01.2332251' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (37, N'Exception', N'   at Shodypati.Controllers.OrdersController.<Details>d__2.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\OrdersController.cs:line 63
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Orders', N'127.0.0.1', N'Chrome 62.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Details', CAST(N'2017-12-13T01:43:44.7462852' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (38, N'Sequence contains no elements', N'   at System.Data.Linq.SqlClient.SqlProvider.Execute(Expression query, QueryInfo queryInfo, IObjectReaderFactory factory, Object[] parentArgs, Object[] userArgs, ICompiledSubQuery[] subQueries, Object lastResult)
   at System.Data.Linq.SqlClient.SqlProvider.ExecuteAll(Expression query, QueryInfo[] queryInfos, IObjectReaderFactory factory, Object[] userArguments, ICompiledSubQuery[] subQueries)
   at System.Data.Linq.SqlClient.SqlProvider.System.Data.Linq.Provider.IProvider.Execute(Expression query)
   at System.Data.Linq.DataQuery`1.System.Linq.IQueryProvider.Execute[S](Expression expression)
   at System.Linq.Queryable.Single[TSource](IQueryable`1 source)
   at Shodypati.Controllers.BaseController.GetMarchantName(Nullable`1 Id) in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\BaseController.cs:line 405
   at Shodypati.Controllers.ProductsController.<Delete>d__19.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\ProductsController.cs:line 324
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Products', N'103.16.75.78', N'Chrome 62.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Delete', CAST(N'2017-12-13T04:34:56.7768750' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (39, N'Cannot deserialize the current JSON array (e.g. [1,2,3]) into type ''Shodypati.Models.Product'' because the type requires a JSON object (e.g. {"name":"value"}) to deserialize correctly.
To fix this error either change the JSON to a JSON object (e.g. {"name":"value"}) or change the deserialized type to an array or a type that implements a collection interface (e.g. ICollection, IList) like List<T> that can be deserialized from a JSON array. JsonArrayAttribute can also be added to the type to force it to deserialize from a JSON array.
Path '''', line 1, position 1.', N'   at Newtonsoft.Json.Serialization.JsonSerializerInternalReader.EnsureArrayContract(JsonReader reader, Type objectType, JsonContract contract)
   at Newtonsoft.Json.Serialization.JsonSerializerInternalReader.CreateList(JsonReader reader, Type objectType, JsonContract contract, JsonProperty member, Object existingValue, String id)
   at Newtonsoft.Json.Serialization.JsonSerializerInternalReader.CreateValueInternal(JsonReader reader, Type objectType, JsonContract contract, JsonProperty member, JsonContainerContract containerContract, JsonProperty containerMember, Object existingValue)
   at Newtonsoft.Json.Serialization.JsonSerializerInternalReader.Deserialize(JsonReader reader, Type objectType, Boolean checkAdditionalContent)
   at Newtonsoft.Json.JsonSerializer.DeserializeInternal(JsonReader reader, Type objectType)
   at Newtonsoft.Json.JsonConvert.DeserializeObject(String value, Type type, JsonSerializerSettings settings)
   at Newtonsoft.Json.JsonConvert.DeserializeObject[T](String value, JsonSerializerSettings settings)
   at Newtonsoft.Json.JsonConvert.DeserializeObject[T](String value)
   at Shodypati.Controllers.ProductsController.<Edit>d__17.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\ProductsController.cs:line 238
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Products', N'127.0.0.1', N'Chrome 62.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Edit', CAST(N'2017-12-13T15:48:48.8392610' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (40, N'Exception', N'   at Shodypati.Controllers.ProductsController.<DeleteConfirmed>d__20.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\ProductsController.cs:line 348
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'products', N'27.147.206.41', N'Chrome 62.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Delete', CAST(N'2017-12-13T04:55:43.9018750' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (41, N'Exception', N'   at Shodypati.Controllers.ProductsController.<DeleteConfirmed>d__20.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\ProductsController.cs:line 348
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Products', N'27.147.206.41', N'Chrome 62.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Delete', CAST(N'2017-12-13T06:48:55.6987500' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (42, N'Exception', N'   at Shodypati.Controllers.ProductsController.<DeleteConfirmed>d__20.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\ProductsController.cs:line 348
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Products', N'27.147.206.41', N'Chrome 62.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Delete', CAST(N'2017-12-13T06:50:08.9800000' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (43, N'Exception', N'   at Shodypati.Controllers.ProductsController.<DeleteConfirmed>d__20.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\ProductsController.cs:line 348
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Products', N'27.147.206.41', N'Chrome 62.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Delete', CAST(N'2017-12-13T07:10:48.2768750' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (44, N'Exception', N'   at Shodypati.Controllers.ProductsController.<DeleteConfirmed>d__20.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\ProductsController.cs:line 348
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'products', N'27.147.206.41', N'Chrome 62.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Delete', CAST(N'2017-12-13T07:22:46.2143750' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (45, N'Exception', N'   at Shodypati.Controllers.ProductsController.<DeleteConfirmed>d__20.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\ProductsController.cs:line 348
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'products', N'27.147.206.41', N'Chrome 62.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Delete', CAST(N'2017-12-13T07:27:16.9487500' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (46, N'Exception', N'   at Shodypati.Controllers.ProductsController.<DeleteConfirmed>d__20.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\ProductsController.cs:line 348
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'products', N'27.147.206.41', N'Chrome 62.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Delete', CAST(N'2017-12-13T07:34:24.2925000' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (47, N'Exception', N'   at Shodypati.Controllers.CategoriesController.<DeleteConfirmed>d__18.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\CategoriesController.cs:line 227
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'categories', N'27.147.206.41', N'Chrome 62.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Delete', CAST(N'2017-12-13T07:35:24.9175000' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (48, N'Exception', N'   at Shodypati.Controllers.CategoriesController.<DeleteConfirmed>d__18.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\CategoriesController.cs:line 227
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'categories', N'103.16.75.78', N'Chrome 62.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Delete', CAST(N'2017-12-14T01:45:11.1362500' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (49, N'Object reference not set to an instance of an object.', N'   at ASP._Page_Views_UsersAdmin_Edit_cshtml.Execute() in d:\DZHosts\LocalUser\ranahamid007\www.Shodypati.somee.com\Views\UsersAdmin\Edit.cshtml:line 58
   at System.Web.WebPages.WebPageBase.ExecutePageHierarchy()
   at System.Web.Mvc.WebViewPage.ExecutePageHierarchy()
   at System.Web.WebPages.StartPage.RunPage()
   at System.Web.WebPages.StartPage.ExecutePageHierarchy()
   at System.Web.WebPages.WebPageBase.ExecutePageHierarchy(WebPageContext pageContext, TextWriter writer, WebPageRenderingBase startPage)
   at System.Web.Mvc.RazorView.RenderView(ViewContext viewContext, TextWriter writer, Object instance)
   at System.Web.Mvc.BuildManagerCompiledView.Render(ViewContext viewContext, TextWriter writer)
   at System.Web.Mvc.ViewResultBase.ExecuteResult(ControllerContext context)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResult(ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultWithFilters(ControllerContext controllerContext, IList`1 filters, ActionResult actionResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'UsersAdmin', N'27.147.206.41', N'Chrome 62.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Edit', CAST(N'2017-12-13T23:57:43.1104467' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (50, N'Object reference not set to an instance of an object.', N'   at ASP._Page_Views_UsersAdmin_Edit_cshtml.Execute() in d:\DZHosts\LocalUser\ranahamid007\www.Shodypati.somee.com\Views\UsersAdmin\Edit.cshtml:line 58
   at System.Web.WebPages.WebPageBase.ExecutePageHierarchy()
   at System.Web.Mvc.WebViewPage.ExecutePageHierarchy()
   at System.Web.WebPages.StartPage.RunPage()
   at System.Web.WebPages.StartPage.ExecutePageHierarchy()
   at System.Web.WebPages.WebPageBase.ExecutePageHierarchy(WebPageContext pageContext, TextWriter writer, WebPageRenderingBase startPage)
   at System.Web.Mvc.RazorView.RenderView(ViewContext viewContext, TextWriter writer, Object instance)
   at System.Web.Mvc.BuildManagerCompiledView.Render(ViewContext viewContext, TextWriter writer)
   at System.Web.Mvc.ViewResultBase.ExecuteResult(ControllerContext context)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResult(ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultWithFilters(ControllerContext controllerContext, IList`1 filters, ActionResult actionResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'UsersAdmin', N'27.147.206.41', N'Chrome 62.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Edit', CAST(N'2017-12-13T23:58:01.4394089' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (51, N'The required anti-forgery form field "__RequestVerificationToken" is not present.', N'   at System.Web.Helpers.AntiXsrf.TokenValidator.ValidateTokens(HttpContextBase httpContext, IIdentity identity, AntiForgeryToken sessionToken, AntiForgeryToken fieldToken)
   at System.Web.Helpers.AntiXsrf.AntiForgeryWorker.Validate(HttpContextBase httpContext)
   at System.Web.Helpers.AntiForgery.Validate()
   at System.Web.Mvc.ValidateAntiForgeryTokenAttribute.OnAuthorization(AuthorizationContext filterContext)
   at System.Web.Mvc.ControllerActionInvoker.InvokeAuthorizationFilters(ControllerContext controllerContext, IList`1 filters, ActionDescriptor actionDescriptor)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__19(AsyncCallback asyncCallback, Object asyncState)', N'Account', N'116.58.200.89', N'Chrome 36.0, 3.0', N'Unknown', N'00000000-0000-0000-0000-000000000000', N'Login', CAST(N'2017-12-15T08:49:38.3706250' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (52, N'The model item passed into the dictionary is of type ''System.Collections.Generic.List`1[Shodypati.Models.BazarList]'', but this dictionary requires a model item of type ''System.Collections.Generic.IEnumerable`1[Shodypati.Models.OrderMobile]''.', N'   at System.Web.Mvc.ViewDataDictionary`1.SetModel(Object value)
   at System.Web.Mvc.ViewDataDictionary..ctor(ViewDataDictionary dictionary)
   at System.Web.Mvc.WebViewPage`1.SetViewData(ViewDataDictionary viewData)
   at System.Web.Mvc.RazorView.RenderView(ViewContext viewContext, TextWriter writer, Object instance)
   at System.Web.Mvc.BuildManagerCompiledView.Render(ViewContext viewContext, TextWriter writer)
   at System.Web.Mvc.ViewResultBase.ExecuteResult(ControllerContext context)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResult(ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultWithFilters(ControllerContext controllerContext, IList`1 filters, ActionResult actionResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'BazarLists', N'27.147.206.41', N'Chrome 63.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Index', CAST(N'2017-12-16T05:27:25.8706250' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (53, N'Sequence contains no elements', N'   at System.Data.Linq.SqlClient.SqlProvider.Execute(Expression query, QueryInfo queryInfo, IObjectReaderFactory factory, Object[] parentArgs, Object[] userArgs, ICompiledSubQuery[] subQueries, Object lastResult)
   at System.Data.Linq.SqlClient.SqlProvider.ExecuteAll(Expression query, QueryInfo[] queryInfos, IObjectReaderFactory factory, Object[] userArguments, ICompiledSubQuery[] subQueries)
   at System.Data.Linq.SqlClient.SqlProvider.System.Data.Linq.Provider.IProvider.Execute(Expression query)
   at System.Data.Linq.DataQuery`1.System.Linq.IQueryProvider.Execute[S](Expression expression)
   at System.Linq.Queryable.Single[TSource](IQueryable`1 source)
   at Shodypati.Controllers.BaseController.GetMarchantName(Nullable`1 Id) in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\BaseController.cs:line 379
   at Shodypati.Controllers.ProductsController.<Delete>d__19.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\ProductsController.cs:line 324
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Products', N'103.16.75.78', N'Chrome 63.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Delete', CAST(N'2017-12-17T01:19:16.5263750' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (54, N'Exception', N'   at Shodypati.Controllers.ProductsController.<DeleteConfirmed>d__20.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\ProductsController.cs:line 348
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Products', N'103.16.75.78', N'Chrome 63.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Delete', CAST(N'2017-12-18T05:00:51.6201250' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (55, N'Exception', N'   at Shodypati.Controllers.BazarListsController.<DeleteConfirmed>d__19.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\BazarListsController.cs:line 189
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'BazarLists', N'27.147.206.41', N'Chrome 63.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Delete', CAST(N'2017-12-19T01:59:23.5263750' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (56, N'Object reference not set to an instance of an object.', N'   at ASP._Page_Views_Medicines_Create_cshtml.Execute() in C:\Websites\shodypati\shodypati.com\wwwroot\Views\Medicines\Create.cshtml:line 22
   at System.Web.WebPages.WebPageBase.ExecutePageHierarchy()
   at System.Web.Mvc.WebViewPage.ExecutePageHierarchy()
   at System.Web.WebPages.StartPage.RunPage()
   at System.Web.WebPages.StartPage.ExecutePageHierarchy()
   at System.Web.WebPages.WebPageBase.ExecutePageHierarchy(WebPageContext pageContext, TextWriter writer, WebPageRenderingBase startPage)
   at System.Web.Mvc.RazorView.RenderView(ViewContext viewContext, TextWriter writer, Object instance)
   at System.Web.Mvc.BuildManagerCompiledView.Render(ViewContext viewContext, TextWriter writer)
   at System.Web.Mvc.ViewResultBase.ExecuteResult(ControllerContext context)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResult(ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultWithFilters(ControllerContext controllerContext, IList`1 filters, ActionResult actionResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Medicines', N'27.147.206.41', N'Chrome 63.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Create', CAST(N'2017-12-21T13:25:50.0993046' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (57, N'Exception', N'   at Shodypati.Controllers.CategoriesController.<DeleteConfirmed>d__18.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\CategoriesController.cs:line 212
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'categories', N'27.147.206.41', N'Chrome 63.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Delete', CAST(N'2017-12-21T14:24:18.7848515' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (58, N'Object reference not set to an instance of an object.', N'   at Shodypati.Controllers.AccountController.<Login>d__4.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\AccountController.cs:line 70
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Account', N'27.147.206.41', N'Chrome 63.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Login', CAST(N'2017-12-21T15:15:22.4918828' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (59, N'An error occurred while sending the request.', N'   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Shodypati.Controllers.HomeController.<Index>d__0.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\HomeController.cs:line 33
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Home', N'169.53.184.5', N'Unknown 0.0, 0.0', N'Unknown', N'00000000-0000-0000-0000-000000000000', N'Index', CAST(N'2018-01-09T20:38:24.3574219' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (60, N'An error occurred while sending the request.', N'   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Shodypati.Controllers.HomeController.<Index>d__0.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\HomeController.cs:line 33
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Home', N'27.147.206.41', N'Chrome 63.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Index', CAST(N'2018-01-10T01:46:55.5078125' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (61, N'An error occurred while sending the request.', N'   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Shodypati.Controllers.HomeController.<Index>d__0.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\HomeController.cs:line 33
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Home', N'27.147.206.41', N'Chrome 63.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Index', CAST(N'2018-01-10T01:47:40.0117188' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (62, N'An error occurred while sending the request.', N'   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Shodypati.Controllers.HomeController.<Index>d__0.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\HomeController.cs:line 33
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Home', N'27.147.206.41', N'Chrome 63.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Index', CAST(N'2018-01-10T01:50:45.5468750' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (63, N'An error occurred while sending the request.', N'   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Shodypati.Controllers.LogsController.<Index>d__1.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\LogsController.cs:line 30
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'logs', N'27.147.206.41', N'Chrome 63.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Index', CAST(N'2018-01-10T01:50:52.4843750' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (64, N'An error occurred while sending the request.', N'   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Shodypati.Controllers.CategoriesController.<Index>d__9.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\CategoriesController.cs:line 52
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'categories', N'27.147.206.41', N'Chrome 63.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Index', CAST(N'2018-01-10T01:51:23.2695313' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (65, N'An error occurred while sending the request.', N'   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Shodypati.Controllers.ProductsController.<Index>d__9.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\ProductsController.cs:line 53
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Products', N'27.147.206.41', N'Chrome 63.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Index', CAST(N'2018-01-10T01:51:30.1289063' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (66, N'An error occurred while sending the request.', N'   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Shodypati.Controllers.CampaignProductsController.<Index>d__1.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\CampaignProductsController.cs:line 33
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'CampaignProducts', N'27.147.206.41', N'Chrome 63.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Index', CAST(N'2018-01-10T01:51:41.0117188' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (67, N'An error occurred while sending the request.', N'   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Shodypati.Controllers.CampaignProductsController.<Index>d__1.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\CampaignProductsController.cs:line 33
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'CampaignProducts', N'27.147.206.41', N'Chrome 63.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Index', CAST(N'2018-01-10T01:51:54.5898438' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (68, N'An error occurred while sending the request.', N'   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Shodypati.Controllers.HomeController.<Index>d__0.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\HomeController.cs:line 33
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Home', N'27.147.206.41', N'Chrome 63.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Index', CAST(N'2018-01-10T02:13:39.4785157' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (69, N'An error occurred while sending the request.', N'   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Shodypati.Controllers.HomeController.<Index>d__0.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\HomeController.cs:line 33
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Home', N'27.147.206.41', N'Chrome 63.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Index', CAST(N'2018-01-10T02:13:53.8906250' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (70, N'An error occurred while sending the request.', N'   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Shodypati.Controllers.HomeController.<Index>d__0.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\HomeController.cs:line 33
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Home', N'27.147.206.41', N'Chrome 63.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Index', CAST(N'2018-01-10T02:14:30.7890625' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (71, N'An error occurred while sending the request.', N'   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Shodypati.Controllers.HomeController.<Index>d__0.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\HomeController.cs:line 33
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Home', N'27.147.206.41', N'Chrome 63.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Index', CAST(N'2018-01-10T02:15:05.7343750' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (72, N'An error occurred while sending the request.', N'   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Shodypati.Controllers.CategoriesController.<Index>d__9.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\CategoriesController.cs:line 52
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'categories', N'27.147.206.41', N'Chrome 63.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Index', CAST(N'2018-01-10T02:41:50.1416016' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (73, N'An error occurred while sending the request.', N'   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Shodypati.Controllers.CategoriesController.<Index>d__9.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\CategoriesController.cs:line 52
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'categories', N'27.147.206.41', N'Chrome 63.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Index', CAST(N'2018-01-10T03:40:46.5126954' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (74, N'An error occurred while sending the request.', N'   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Shodypati.Controllers.HomeController.<Index>d__0.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\HomeController.cs:line 33
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Home', N'27.147.206.41', N'Chrome 63.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Index', CAST(N'2018-01-10T03:47:32.3603516' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (75, N'An error occurred while sending the request.', N'   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Shodypati.Controllers.HomeController.<Index>d__0.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\HomeController.cs:line 33
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Home', N'27.147.206.41', N'Chrome 63.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Index', CAST(N'2018-01-10T03:51:03.0751954' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (76, N'An error occurred while sending the request.', N'   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Shodypati.Controllers.HomeController.<Index>d__0.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\HomeController.cs:line 33
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Home', N'27.147.206.41', N'Chrome 63.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Index', CAST(N'2018-01-10T03:51:06.7031250' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (77, N'An error occurred while sending the request.', N'   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Shodypati.Controllers.CategoriesController.<Index>d__9.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\CategoriesController.cs:line 52
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'categories', N'27.147.206.41', N'Chrome 63.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Index', CAST(N'2018-01-10T03:51:19.4296875' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (78, N'An error occurred while sending the request.', N'   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Shodypati.Controllers.HomeController.<Index>d__0.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\HomeController.cs:line 33
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Home', N'27.147.206.41', N'Chrome 63.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Index', CAST(N'2018-01-10T03:52:50.1835938' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (79, N'An error occurred while sending the request.', N'   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Shodypati.Controllers.HomeController.<Index>d__0.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\HomeController.cs:line 33
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Home', N'27.147.206.41', N'Chrome 63.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Index', CAST(N'2018-01-10T06:25:26.7187500' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (80, N'An error occurred while sending the request.', N'   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Shodypati.Controllers.ProductsController.<Index>d__9.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\ProductsController.cs:line 53
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Products', N'27.147.206.41', N'Chrome 63.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Index', CAST(N'2018-01-10T06:25:57.3779297' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (81, N'An error occurred while sending the request.', N'   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Shodypati.Controllers.HomeController.<Index>d__0.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\HomeController.cs:line 33
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Home', N'27.147.206.41', N'Chrome 63.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Index', CAST(N'2018-01-10T06:41:59.6787110' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (82, N'An error occurred while sending the request.', N'   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Shodypati.Controllers.ProductsController.<Index>d__9.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\ProductsController.cs:line 53
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Products', N'27.147.206.41', N'Chrome 63.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Index', CAST(N'2018-01-10T06:42:20.0302735' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (83, N'An error occurred while sending the request.', N'   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Shodypati.Controllers.CampaignProductsController.<Index>d__1.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\CampaignProductsController.cs:line 33
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'CampaignProducts', N'27.147.206.41', N'Chrome 63.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Index', CAST(N'2018-01-10T06:42:24.6005860' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (84, N'An error occurred while sending the request.', N'   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Shodypati.Controllers.MerchantsController.<Index>d__1.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\MerchantsController.cs:line 34
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Merchants', N'27.147.206.41', N'Chrome 63.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Index', CAST(N'2018-01-10T06:42:29.4287110' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (85, N'An error occurred while sending the request.', N'   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Shodypati.Controllers.HomeController.<Index>d__0.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\HomeController.cs:line 33
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Home', N'27.147.206.41', N'Chrome 63.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Index', CAST(N'2018-01-10T06:42:35.9833985' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (86, N'An error occurred while sending the request.', N'   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Shodypati.Controllers.BannersController.<Index>d__9.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\BannersController.cs:line 53
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Banners', N'27.147.206.41', N'Chrome 63.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Index', CAST(N'2018-01-10T06:42:44.9208985' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (87, N'An error occurred while sending the request.', N'   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Shodypati.Controllers.CategoriesController.<Index>d__9.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\CategoriesController.cs:line 52
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'categories', N'27.147.206.41', N'Chrome 63.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Index', CAST(N'2018-01-10T06:42:58.6552735' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (88, N'An error occurred while sending the request.', N'   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Shodypati.Controllers.HomeController.<Index>d__0.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\HomeController.cs:line 33
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Home', N'27.147.206.41', N'Chrome 63.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Index', CAST(N'2018-01-10T07:31:42.6142579' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (89, N'An error occurred while sending the request.', N'   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Shodypati.Controllers.HomeController.<Index>d__0.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\HomeController.cs:line 33
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Home', N'45.113.237.68', N'Firefox 52.0, 3.0', N'WinXP', N'00000000-0000-0000-0000-000000000000', N'Index', CAST(N'2018-01-10T07:34:05.0810547' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (90, N'An error occurred while sending the request.', N'   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Shodypati.Controllers.HomeController.<Index>d__0.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\HomeController.cs:line 33
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Home', N'45.113.237.68', N'Firefox 52.0, 3.0', N'WinXP', N'00000000-0000-0000-0000-000000000000', N'Index', CAST(N'2018-01-10T07:35:57.5654297' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (91, N'An error occurred while sending the request.', N'   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Shodypati.Controllers.HomeController.<Index>d__0.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\HomeController.cs:line 33
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Home', N'27.147.206.41', N'Chrome 63.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Index', CAST(N'2018-01-10T10:28:45.7529297' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (92, N'An error occurred while sending the request.', N'   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Shodypati.Controllers.HomeController.<Index>d__0.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\HomeController.cs:line 33
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Home', N'74.115.214.137', N'Mozilla 0.0, 3.0', N'Unknown', N'00000000-0000-0000-0000-000000000000', N'Index', CAST(N'2018-01-10T16:24:11.6523438' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (93, N'An error occurred while sending the request.', N'   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Shodypati.Controllers.HomeController.<Index>d__0.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\HomeController.cs:line 33
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Home', N'142.234.115.154', N'Mozilla 0.0, 3.0', N'Unknown', N'00000000-0000-0000-0000-000000000000', N'Index', CAST(N'2018-01-11T05:48:37.0019531' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (94, N'An error occurred while sending the request.', N'   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Shodypati.Controllers.HomeController.<Index>d__0.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\HomeController.cs:line 33
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Home', N'74.115.214.134', N'Mozilla 0.0, 3.0', N'Unknown', N'00000000-0000-0000-0000-000000000000', N'Index', CAST(N'2018-01-11T20:06:03.1357421' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (95, N'An error occurred while sending the request.', N'   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Shodypati.Controllers.HomeController.<Index>d__0.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\HomeController.cs:line 33
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Home', N'74.115.214.139', N'Mozilla 0.0, 3.0', N'Unknown', N'00000000-0000-0000-0000-000000000000', N'Index', CAST(N'2018-01-11T22:32:20.2158203' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (1073, N'An error occurred while sending the request.', N'   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Shodypati.Controllers.HomeController.<Index>d__0.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\HomeController.cs:line 33
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Home', N'142.234.115.154', N'Mozilla 0.0, 3.0', N'Unknown', N'00000000-0000-0000-0000-000000000000', N'Index', CAST(N'2018-01-13T00:35:15.6787110' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (1074, N'An error occurred while sending the request.', N'   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Shodypati.Controllers.HomeController.<Index>d__0.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\HomeController.cs:line 33
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Home', N'142.234.115.154', N'Mozilla 0.0, 3.0', N'Unknown', N'00000000-0000-0000-0000-000000000000', N'Index', CAST(N'2018-01-13T00:41:42.3935547' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (1075, N'Out of memory.', N'   at System.Drawing.Image.FromStream(Stream stream, Boolean useEmbeddedColorManagement, Boolean validateImageData)
   at System.Web.Helpers.WebImage.ValidateImageContent(Byte[] content, String paramName)
   at System.Web.Helpers.WebImage..ctor(Stream imageStream)
   at Shodypati.Helpers.FilesHelper.UploadWholeFile(HttpContextBase requestContext, List`1 statuses) in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Helpers\FilesHelper.cs:line 156
   at Shodypati.Helpers.FilesHelper.UploadAndShowResults(HttpContextBase ContentBase, List`1 resultList) in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Helpers\FilesHelper.cs:line 118
   at Shodypati.Controllers.ProductsController.Upload() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\ProductsController.cs:line 152
   at lambda_method(Closure , ControllerBase , Object[] )
   at System.Web.Mvc.ActionMethodDispatcher.Execute(ControllerBase controller, Object[] parameters)
   at System.Web.Mvc.ReflectedActionDescriptor.Execute(ControllerContext controllerContext, IDictionary`2 parameters)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionMethod(ControllerContext controllerContext, ActionDescriptor actionDescriptor, IDictionary`2 parameters)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<BeginInvokeSynchronousActionMethod>b__39(IAsyncResult asyncResult, ActionInvocation innerInvokeState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`2.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'products', N'103.16.75.78', N'Firefox 57.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Upload', CAST(N'2018-01-12T23:43:07.4342606' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (1076, N'Out of memory.', N'   at System.Drawing.Graphics.CheckErrorStatus(Int32 status)
   at System.Drawing.Graphics.DrawImage(Image image, Int32 x, Int32 y, Int32 width, Int32 height)
   at System.Web.Helpers.WebImage.GetBitmapFromImage(Image image, Int32 width, Int32 height, Boolean preserveResolution)
   at System.Web.Helpers.WebImage.ResizeTransformation.ApplyTransformation(Image image)
   at System.Web.Helpers.WebImage.ApplyTransformationsAndSetProperties()
   at System.Web.Helpers.WebImage.GetBytes(String requestedFormat)
   at System.Web.Helpers.WebImage.Save(HttpContextBase context, Action`2 saveAction, String filePath, String imageFormat, Boolean forceWellKnownExtension)
   at System.Web.Helpers.WebImage.Save(String filePath, String imageFormat, Boolean forceCorrectExtension)
   at Shodypati.Helpers.FilesHelper.UploadWholeFile(HttpContextBase requestContext, List`1 statuses) in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Helpers\FilesHelper.cs:line 156
   at Shodypati.Helpers.FilesHelper.UploadAndShowResults(HttpContextBase ContentBase, List`1 resultList) in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Helpers\FilesHelper.cs:line 118
   at Shodypati.Controllers.ProductsController.Upload() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\ProductsController.cs:line 152
   at lambda_method(Closure , ControllerBase , Object[] )
   at System.Web.Mvc.ActionMethodDispatcher.Execute(ControllerBase controller, Object[] parameters)
   at System.Web.Mvc.ReflectedActionDescriptor.Execute(ControllerContext controllerContext, IDictionary`2 parameters)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionMethod(ControllerContext controllerContext, ActionDescriptor actionDescriptor, IDictionary`2 parameters)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<BeginInvokeSynchronousActionMethod>b__39(IAsyncResult asyncResult, ActionInvocation innerInvokeState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`2.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'products', N'103.16.75.78', N'Firefox 57.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Upload', CAST(N'2018-01-12T23:46:57.0543887' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (1077, N'Out of memory.', N'   at System.Drawing.Graphics.CheckErrorStatus(Int32 status)
   at System.Drawing.Graphics.DrawImage(Image image, Int32 x, Int32 y, Int32 width, Int32 height)
   at System.Web.Helpers.WebImage.GetBitmapFromImage(Image image, Int32 width, Int32 height, Boolean preserveResolution)
   at System.Web.Helpers.WebImage.ResizeTransformation.ApplyTransformation(Image image)
   at System.Web.Helpers.WebImage.ApplyTransformationsAndSetProperties()
   at System.Web.Helpers.WebImage.GetBytes(String requestedFormat)
   at System.Web.Helpers.WebImage.Save(HttpContextBase context, Action`2 saveAction, String filePath, String imageFormat, Boolean forceWellKnownExtension)
   at System.Web.Helpers.WebImage.Save(String filePath, String imageFormat, Boolean forceCorrectExtension)
   at Shodypati.Helpers.FilesHelper.UploadWholeFile(HttpContextBase requestContext, List`1 statuses) in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Helpers\FilesHelper.cs:line 156
   at Shodypati.Helpers.FilesHelper.UploadAndShowResults(HttpContextBase ContentBase, List`1 resultList) in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Helpers\FilesHelper.cs:line 118
   at Shodypati.Controllers.ProductsController.Upload() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\ProductsController.cs:line 152
   at lambda_method(Closure , ControllerBase , Object[] )
   at System.Web.Mvc.ActionMethodDispatcher.Execute(ControllerBase controller, Object[] parameters)
   at System.Web.Mvc.ReflectedActionDescriptor.Execute(ControllerContext controllerContext, IDictionary`2 parameters)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionMethod(ControllerContext controllerContext, ActionDescriptor actionDescriptor, IDictionary`2 parameters)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<BeginInvokeSynchronousActionMethod>b__39(IAsyncResult asyncResult, ActionInvocation innerInvokeState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`2.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'products', N'103.16.75.78', N'Firefox 57.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Upload', CAST(N'2018-01-12T23:55:24.1866407' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (1078, N'Out of memory.', N'   at System.Drawing.Image.FromStream(Stream stream, Boolean useEmbeddedColorManagement, Boolean validateImageData)
   at System.Web.Helpers.WebImage.ValidateImageContent(Byte[] content, String paramName)
   at System.Web.Helpers.WebImage..ctor(Stream imageStream)
   at Shodypati.Helpers.FilesHelper.UploadWholeFile(HttpContextBase requestContext, List`1 statuses) in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Helpers\FilesHelper.cs:line 156
   at Shodypati.Helpers.FilesHelper.UploadAndShowResults(HttpContextBase ContentBase, List`1 resultList) in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Helpers\FilesHelper.cs:line 118
   at Shodypati.Controllers.ProductsController.Upload() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\ProductsController.cs:line 152
   at lambda_method(Closure , ControllerBase , Object[] )
   at System.Web.Mvc.ActionMethodDispatcher.Execute(ControllerBase controller, Object[] parameters)
   at System.Web.Mvc.ReflectedActionDescriptor.Execute(ControllerContext controllerContext, IDictionary`2 parameters)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionMethod(ControllerContext controllerContext, ActionDescriptor actionDescriptor, IDictionary`2 parameters)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<BeginInvokeSynchronousActionMethod>b__39(IAsyncResult asyncResult, ActionInvocation innerInvokeState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`2.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'products', N'103.16.75.78', N'Firefox 57.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Upload', CAST(N'2018-01-12T23:56:14.4292901' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (1079, N'Out of memory.', N'   at System.Drawing.Graphics.CheckErrorStatus(Int32 status)
   at System.Drawing.Graphics.DrawImage(Image image, Int32 x, Int32 y, Int32 width, Int32 height)
   at System.Web.Helpers.WebImage.GetBitmapFromImage(Image image, Int32 width, Int32 height, Boolean preserveResolution)
   at System.Web.Helpers.WebImage.ResizeTransformation.ApplyTransformation(Image image)
   at System.Web.Helpers.WebImage.ApplyTransformationsAndSetProperties()
   at System.Web.Helpers.WebImage.GetBytes(String requestedFormat)
   at System.Web.Helpers.WebImage.Save(HttpContextBase context, Action`2 saveAction, String filePath, String imageFormat, Boolean forceWellKnownExtension)
   at System.Web.Helpers.WebImage.Save(String filePath, String imageFormat, Boolean forceCorrectExtension)
   at Shodypati.Helpers.FilesHelper.UploadWholeFile(HttpContextBase requestContext, List`1 statuses) in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Helpers\FilesHelper.cs:line 156
   at Shodypati.Helpers.FilesHelper.UploadAndShowResults(HttpContextBase ContentBase, List`1 resultList) in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Helpers\FilesHelper.cs:line 118
   at Shodypati.Controllers.ProductsController.Upload() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\ProductsController.cs:line 152
   at lambda_method(Closure , ControllerBase , Object[] )
   at System.Web.Mvc.ActionMethodDispatcher.Execute(ControllerBase controller, Object[] parameters)
   at System.Web.Mvc.ReflectedActionDescriptor.Execute(ControllerContext controllerContext, IDictionary`2 parameters)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionMethod(ControllerContext controllerContext, ActionDescriptor actionDescriptor, IDictionary`2 parameters)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<BeginInvokeSynchronousActionMethod>b__39(IAsyncResult asyncResult, ActionInvocation innerInvokeState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`2.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'products', N'103.16.75.78', N'Firefox 57.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Upload', CAST(N'2018-01-12T23:59:13.1777401' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (1080, N'Value cannot be null.
Parameter name: address', N'   at System.Net.Mail.MailAddress..ctor(String address, String displayName, Encoding displayNameEncoding)
   at Shodypati.Models.EmailService.configSendMailasync(IdentityMessage message) in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\App_Start\IdentityConfig.cs:line 100
   at Shodypati.Models.EmailService.SendAsync(IdentityMessage message) in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\App_Start\IdentityConfig.cs:line 93
   at Microsoft.AspNet.Identity.UserManager`2.<SendEmailAsync>d__129.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Shodypati.Controllers.AccountController.<Register>d__10.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\AccountController.cs:line 245
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Account', N'58.145.189.241', N'Firefox 57.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Register', CAST(N'2018-01-13T01:39:23.9266804' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (1081, N'An error occurred while sending the request.', N'   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Shodypati.Controllers.HomeController.<Index>d__0.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\HomeController.cs:line 33
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Home', N'196.52.43.56', N'Unknown 0.0, 0.0', N'Unknown', N'00000000-0000-0000-0000-000000000000', N'Index', CAST(N'2018-01-13T05:09:09.0087891' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (1082, N'An error occurred while sending the request.', N'   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Shodypati.Controllers.HomeController.<Index>d__0.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\HomeController.cs:line 33
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Home', N'142.234.115.154', N'Mozilla 0.0, 3.0', N'Unknown', N'00000000-0000-0000-0000-000000000000', N'Index', CAST(N'2018-01-13T18:42:44.7675782' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (1083, N'Out of memory.', N'   at System.Drawing.Graphics.FromImage(Image image)
   at System.Web.Helpers.WebImage.GetBitmapFromImage(Image image, Int32 width, Int32 height, Boolean preserveResolution)
   at System.Web.Helpers.WebImage.ResizeTransformation.ApplyTransformation(Image image)
   at System.Web.Helpers.WebImage.ApplyTransformationsAndSetProperties()
   at System.Web.Helpers.WebImage.GetBytes(String requestedFormat)
   at System.Web.Helpers.WebImage.Save(HttpContextBase context, Action`2 saveAction, String filePath, String imageFormat, Boolean forceWellKnownExtension)
   at System.Web.Helpers.WebImage.Save(String filePath, String imageFormat, Boolean forceCorrectExtension)
   at Shodypati.Helpers.FilesHelper.UploadWholeFile(HttpContextBase requestContext, List`1 statuses) in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Helpers\FilesHelper.cs:line 156
   at Shodypati.Helpers.FilesHelper.UploadAndShowResults(HttpContextBase ContentBase, List`1 resultList) in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Helpers\FilesHelper.cs:line 118
   at Shodypati.Controllers.ProductsController.Upload() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\ProductsController.cs:line 152
   at lambda_method(Closure , ControllerBase , Object[] )
   at System.Web.Mvc.ActionMethodDispatcher.Execute(ControllerBase controller, Object[] parameters)
   at System.Web.Mvc.ReflectedActionDescriptor.Execute(ControllerContext controllerContext, IDictionary`2 parameters)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionMethod(ControllerContext controllerContext, ActionDescriptor actionDescriptor, IDictionary`2 parameters)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<BeginInvokeSynchronousActionMethod>b__39(IAsyncResult asyncResult, ActionInvocation innerInvokeState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`2.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'products', N'103.16.75.78', N'Firefox 57.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Upload', CAST(N'2018-01-14T06:09:01.2613532' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (1084, N'C:\D\Home\Google Drive\Projects_Clients\Shodypati\Shodypati\Shodypati\Views\Home\Index.cshtml(42): error CS1061: ''CategoryMobile'' does not contain a definition for ''MainImagePath'' and no extension method ''MainImagePath'' accepting a first argument of type ''CategoryMobile'' could be found (are you missing a using directive or an assembly reference?)', N'   at System.Web.Compilation.AssemblyBuilder.Compile()
   at System.Web.Compilation.BuildProvidersCompiler.PerformBuild()
   at System.Web.Compilation.BuildManager.CompileWebFile(VirtualPath virtualPath)
   at System.Web.Compilation.BuildManager.GetVPathBuildResultInternal(VirtualPath virtualPath, Boolean noBuild, Boolean allowCrossApp, Boolean allowBuildInPrecompile, Boolean throwIfNotFound, Boolean ensureIsUpToDate)
   at System.Web.Compilation.BuildManager.GetVPathBuildResultWithNoAssert(HttpContext context, VirtualPath virtualPath, Boolean noBuild, Boolean allowCrossApp, Boolean allowBuildInPrecompile, Boolean throwIfNotFound, Boolean ensureIsUpToDate)
   at System.Web.Compilation.BuildManager.GetVirtualPathObjectFactory(VirtualPath virtualPath, HttpContext context, Boolean allowCrossApp, Boolean throwIfNotFound)
   at System.Web.Compilation.BuildManager.GetCompiledType(VirtualPath virtualPath)
   at System.Web.Compilation.BuildManager.GetCompiledType(String virtualPath)
   at System.Web.Mvc.BuildManagerWrapper.System.Web.Mvc.IBuildManager.GetCompiledType(String virtualPath)
   at System.Web.Mvc.BuildManagerCompiledView.Render(ViewContext viewContext, TextWriter writer)
   at System.Web.Mvc.ViewResultBase.ExecuteResult(ControllerContext context)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResult(ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultWithFilters(ControllerContext controllerContext, IList`1 filters, ActionResult actionResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Home', N'127.0.0.1', N'Chrome 63.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Index', CAST(N'2018-01-15T01:53:49.9882716' AS DateTime2))
GO
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (1085, N'C:\D\Home\Google Drive\Projects_Clients\Shodypati\Shodypati\Shodypati\Views\Home\Index.cshtml(42): error CS1061: ''CategoryMobile'' does not contain a definition for ''MainImagePath'' and no extension method ''MainImagePath'' accepting a first argument of type ''CategoryMobile'' could be found (are you missing a using directive or an assembly reference?)', N'   at System.Web.Compilation.AssemblyBuilder.Compile()
   at System.Web.Compilation.BuildProvidersCompiler.PerformBuild()
   at System.Web.Compilation.BuildManager.CompileWebFile(VirtualPath virtualPath)
   at System.Web.Compilation.BuildManager.GetVPathBuildResultInternal(VirtualPath virtualPath, Boolean noBuild, Boolean allowCrossApp, Boolean allowBuildInPrecompile, Boolean throwIfNotFound, Boolean ensureIsUpToDate)
   at System.Web.Compilation.BuildManager.GetVPathBuildResultWithNoAssert(HttpContext context, VirtualPath virtualPath, Boolean noBuild, Boolean allowCrossApp, Boolean allowBuildInPrecompile, Boolean throwIfNotFound, Boolean ensureIsUpToDate)
   at System.Web.Compilation.BuildManager.GetVirtualPathObjectFactory(VirtualPath virtualPath, HttpContext context, Boolean allowCrossApp, Boolean throwIfNotFound)
   at System.Web.Compilation.BuildManager.GetCompiledType(VirtualPath virtualPath)
   at System.Web.Compilation.BuildManager.GetCompiledType(String virtualPath)
   at System.Web.Mvc.BuildManagerWrapper.System.Web.Mvc.IBuildManager.GetCompiledType(String virtualPath)
   at System.Web.Mvc.BuildManagerCompiledView.Render(ViewContext viewContext, TextWriter writer)
   at System.Web.Mvc.ViewResultBase.ExecuteResult(ControllerContext context)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResult(ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultWithFilters(ControllerContext controllerContext, IList`1 filters, ActionResult actionResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Home', N'127.0.0.1', N'Chrome 63.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Index', CAST(N'2018-01-15T01:54:22.0415042' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (1086, N'Out of memory.', N'   at System.Drawing.Graphics.FromImage(Image image)
   at System.Web.Helpers.WebImage.GetBitmapFromImage(Image image, Int32 width, Int32 height, Boolean preserveResolution)
   at System.Web.Helpers.WebImage.ResizeTransformation.ApplyTransformation(Image image)
   at System.Web.Helpers.WebImage.ApplyTransformationsAndSetProperties()
   at System.Web.Helpers.WebImage.GetBytes(String requestedFormat)
   at System.Web.Helpers.WebImage.Save(HttpContextBase context, Action`2 saveAction, String filePath, String imageFormat, Boolean forceWellKnownExtension)
   at System.Web.Helpers.WebImage.Save(String filePath, String imageFormat, Boolean forceCorrectExtension)
   at Shodypati.Helpers.FilesHelper.UploadWholeFile(HttpContextBase requestContext, List`1 statuses) in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Helpers\FilesHelper.cs:line 156
   at Shodypati.Helpers.FilesHelper.UploadAndShowResults(HttpContextBase ContentBase, List`1 resultList) in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Helpers\FilesHelper.cs:line 118
   at Shodypati.Controllers.ProductsController.Upload() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\ProductsController.cs:line 152
   at lambda_method(Closure , ControllerBase , Object[] )
   at System.Web.Mvc.ActionMethodDispatcher.Execute(ControllerBase controller, Object[] parameters)
   at System.Web.Mvc.ReflectedActionDescriptor.Execute(ControllerContext controllerContext, IDictionary`2 parameters)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionMethod(ControllerContext controllerContext, ActionDescriptor actionDescriptor, IDictionary`2 parameters)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<BeginInvokeSynchronousActionMethod>b__39(IAsyncResult asyncResult, ActionInvocation innerInvokeState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`2.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'products', N'103.16.75.78', N'Firefox 57.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Upload', CAST(N'2018-01-15T00:25:14.0234482' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (1087, N'Out of memory.', N'   at System.Drawing.Graphics.FromImage(Image image)
   at System.Web.Helpers.WebImage.GetBitmapFromImage(Image image, Int32 width, Int32 height, Boolean preserveResolution)
   at System.Web.Helpers.WebImage.ResizeTransformation.ApplyTransformation(Image image)
   at System.Web.Helpers.WebImage.ApplyTransformationsAndSetProperties()
   at System.Web.Helpers.WebImage.GetBytes(String requestedFormat)
   at System.Web.Helpers.WebImage.Save(HttpContextBase context, Action`2 saveAction, String filePath, String imageFormat, Boolean forceWellKnownExtension)
   at System.Web.Helpers.WebImage.Save(String filePath, String imageFormat, Boolean forceCorrectExtension)
   at Shodypati.Helpers.FilesHelper.UploadWholeFile(HttpContextBase requestContext, List`1 statuses) in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Helpers\FilesHelper.cs:line 156
   at Shodypati.Helpers.FilesHelper.UploadAndShowResults(HttpContextBase ContentBase, List`1 resultList) in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Helpers\FilesHelper.cs:line 118
   at Shodypati.Controllers.ProductsController.Upload() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\ProductsController.cs:line 152
   at lambda_method(Closure , ControllerBase , Object[] )
   at System.Web.Mvc.ActionMethodDispatcher.Execute(ControllerBase controller, Object[] parameters)
   at System.Web.Mvc.ReflectedActionDescriptor.Execute(ControllerContext controllerContext, IDictionary`2 parameters)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionMethod(ControllerContext controllerContext, ActionDescriptor actionDescriptor, IDictionary`2 parameters)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<BeginInvokeSynchronousActionMethod>b__39(IAsyncResult asyncResult, ActionInvocation innerInvokeState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`2.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'products', N'103.16.75.78', N'Firefox 57.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Upload', CAST(N'2018-01-15T00:36:52.3297323' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (1088, N'Out of memory.', N'   at System.Drawing.Graphics.FromImage(Image image)
   at System.Web.Helpers.WebImage.GetBitmapFromImage(Image image, Int32 width, Int32 height, Boolean preserveResolution)
   at System.Web.Helpers.WebImage.ResizeTransformation.ApplyTransformation(Image image)
   at System.Web.Helpers.WebImage.ApplyTransformationsAndSetProperties()
   at System.Web.Helpers.WebImage.GetBytes(String requestedFormat)
   at System.Web.Helpers.WebImage.Save(HttpContextBase context, Action`2 saveAction, String filePath, String imageFormat, Boolean forceWellKnownExtension)
   at System.Web.Helpers.WebImage.Save(String filePath, String imageFormat, Boolean forceCorrectExtension)
   at Shodypati.Helpers.FilesHelper.UploadWholeFile(HttpContextBase requestContext, List`1 statuses) in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Helpers\FilesHelper.cs:line 156
   at Shodypati.Helpers.FilesHelper.UploadAndShowResults(HttpContextBase ContentBase, List`1 resultList) in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Helpers\FilesHelper.cs:line 118
   at Shodypati.Controllers.ProductsController.Upload() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\ProductsController.cs:line 152
   at lambda_method(Closure , ControllerBase , Object[] )
   at System.Web.Mvc.ActionMethodDispatcher.Execute(ControllerBase controller, Object[] parameters)
   at System.Web.Mvc.ReflectedActionDescriptor.Execute(ControllerContext controllerContext, IDictionary`2 parameters)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionMethod(ControllerContext controllerContext, ActionDescriptor actionDescriptor, IDictionary`2 parameters)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<BeginInvokeSynchronousActionMethod>b__39(IAsyncResult asyncResult, ActionInvocation innerInvokeState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`2.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'products', N'103.16.75.78', N'Firefox 57.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Upload', CAST(N'2018-01-15T00:54:34.1035966' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (1089, N'Out of memory.', N'   at System.Drawing.Graphics.FromImage(Image image)
   at System.Web.Helpers.WebImage.GetBitmapFromImage(Image image, Int32 width, Int32 height, Boolean preserveResolution)
   at System.Web.Helpers.WebImage.ResizeTransformation.ApplyTransformation(Image image)
   at System.Web.Helpers.WebImage.ApplyTransformationsAndSetProperties()
   at System.Web.Helpers.WebImage.GetBytes(String requestedFormat)
   at System.Web.Helpers.WebImage.Save(HttpContextBase context, Action`2 saveAction, String filePath, String imageFormat, Boolean forceWellKnownExtension)
   at System.Web.Helpers.WebImage.Save(String filePath, String imageFormat, Boolean forceCorrectExtension)
   at Shodypati.Helpers.FilesHelper.UploadWholeFile(HttpContextBase requestContext, List`1 statuses) in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Helpers\FilesHelper.cs:line 156
   at Shodypati.Helpers.FilesHelper.UploadAndShowResults(HttpContextBase ContentBase, List`1 resultList) in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Helpers\FilesHelper.cs:line 118
   at Shodypati.Controllers.ProductsController.Upload() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\ProductsController.cs:line 152
   at lambda_method(Closure , ControllerBase , Object[] )
   at System.Web.Mvc.ActionMethodDispatcher.Execute(ControllerBase controller, Object[] parameters)
   at System.Web.Mvc.ReflectedActionDescriptor.Execute(ControllerContext controllerContext, IDictionary`2 parameters)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionMethod(ControllerContext controllerContext, ActionDescriptor actionDescriptor, IDictionary`2 parameters)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<BeginInvokeSynchronousActionMethod>b__39(IAsyncResult asyncResult, ActionInvocation innerInvokeState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`2.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'products', N'103.16.75.78', N'Firefox 57.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Upload', CAST(N'2018-01-15T01:18:40.1464252' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (1090, N'Out of memory.', N'   at System.Drawing.Graphics.FromImage(Image image)
   at System.Web.Helpers.WebImage.GetBitmapFromImage(Image image, Int32 width, Int32 height, Boolean preserveResolution)
   at System.Web.Helpers.WebImage.ResizeTransformation.ApplyTransformation(Image image)
   at System.Web.Helpers.WebImage.ApplyTransformationsAndSetProperties()
   at System.Web.Helpers.WebImage.GetBytes(String requestedFormat)
   at System.Web.Helpers.WebImage.Save(HttpContextBase context, Action`2 saveAction, String filePath, String imageFormat, Boolean forceWellKnownExtension)
   at System.Web.Helpers.WebImage.Save(String filePath, String imageFormat, Boolean forceCorrectExtension)
   at Shodypati.Helpers.FilesHelper.UploadWholeFile(HttpContextBase requestContext, List`1 statuses) in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Helpers\FilesHelper.cs:line 156
   at Shodypati.Helpers.FilesHelper.UploadAndShowResults(HttpContextBase ContentBase, List`1 resultList) in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Helpers\FilesHelper.cs:line 118
   at Shodypati.Controllers.ProductsController.Upload() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\ProductsController.cs:line 152
   at lambda_method(Closure , ControllerBase , Object[] )
   at System.Web.Mvc.ActionMethodDispatcher.Execute(ControllerBase controller, Object[] parameters)
   at System.Web.Mvc.ReflectedActionDescriptor.Execute(ControllerContext controllerContext, IDictionary`2 parameters)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionMethod(ControllerContext controllerContext, ActionDescriptor actionDescriptor, IDictionary`2 parameters)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<BeginInvokeSynchronousActionMethod>b__39(IAsyncResult asyncResult, ActionInvocation innerInvokeState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`2.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'products', N'103.16.75.78', N'Firefox 57.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Upload', CAST(N'2018-01-15T01:54:17.2884204' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (1091, N'Out of memory.', N'   at System.Drawing.Graphics.FromImage(Image image)
   at System.Web.Helpers.WebImage.GetBitmapFromImage(Image image, Int32 width, Int32 height, Boolean preserveResolution)
   at System.Web.Helpers.WebImage.ResizeTransformation.ApplyTransformation(Image image)
   at System.Web.Helpers.WebImage.ApplyTransformationsAndSetProperties()
   at System.Web.Helpers.WebImage.GetBytes(String requestedFormat)
   at System.Web.Helpers.WebImage.Save(HttpContextBase context, Action`2 saveAction, String filePath, String imageFormat, Boolean forceWellKnownExtension)
   at System.Web.Helpers.WebImage.Save(String filePath, String imageFormat, Boolean forceCorrectExtension)
   at Shodypati.Helpers.FilesHelper.UploadWholeFile(HttpContextBase requestContext, List`1 statuses) in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Helpers\FilesHelper.cs:line 156
   at Shodypati.Helpers.FilesHelper.UploadAndShowResults(HttpContextBase ContentBase, List`1 resultList) in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Helpers\FilesHelper.cs:line 118
   at Shodypati.Controllers.ProductsController.Upload() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\ProductsController.cs:line 152
   at lambda_method(Closure , ControllerBase , Object[] )
   at System.Web.Mvc.ActionMethodDispatcher.Execute(ControllerBase controller, Object[] parameters)
   at System.Web.Mvc.ReflectedActionDescriptor.Execute(ControllerContext controllerContext, IDictionary`2 parameters)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionMethod(ControllerContext controllerContext, ActionDescriptor actionDescriptor, IDictionary`2 parameters)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<BeginInvokeSynchronousActionMethod>b__39(IAsyncResult asyncResult, ActionInvocation innerInvokeState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`2.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'products', N'103.16.75.78', N'Firefox 57.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Upload', CAST(N'2018-01-15T02:19:37.3772649' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (1092, N'An error occurred while sending the request.', N'   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Shodypati.Controllers.OrdersController.<Index>d__1.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\OrdersController.cs:line 35
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'orders', N'27.147.206.41', N'Chrome 63.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Index', CAST(N'2018-01-16T12:00:17.9795497' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (1093, N'An error occurred while sending the request.', N'   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Shodypati.Controllers.OrdersController.<Index>d__1.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\OrdersController.cs:line 35
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'orders', N'27.147.206.41', N'Chrome 63.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Index', CAST(N'2018-01-16T12:00:31.0320036' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (1094, N'An error occurred while sending the request.', N'   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Shodypati.Controllers.HomeController.<Index>d__0.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\HomeController.cs:line 33
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Home', N'27.147.206.41', N'Chrome 63.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Index', CAST(N'2018-01-16T12:00:37.7663587' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (1095, N'An error occurred while sending the request.', N'   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Shodypati.Controllers.HomeController.<Index>d__0.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\HomeController.cs:line 33
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Home', N'27.147.206.41', N'Chrome 63.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Index', CAST(N'2018-01-16T12:00:40.5007557' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (1096, N'An error occurred while sending the request.', N'   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Shodypati.Controllers.HomeController.<Index>d__0.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\HomeController.cs:line 33
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Home', N'27.147.206.41', N'Chrome 63.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Index', CAST(N'2018-01-16T12:01:45.9052441' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (1097, N'Exception', N'   at Shodypati.Controllers.OrdersController.<Delete>d__7.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\OrdersController.cs:line 142
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'orders', N'27.147.206.41', N'Chrome 63.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Delete', CAST(N'2018-01-16T12:05:16.2218178' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (1098, N'An error occurred while sending the request.', N'   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Shodypati.Controllers.HomeController.<Index>d__0.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\HomeController.cs:line 33
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Home', N'196.52.43.116', N'Unknown 0.0, 0.0', N'Unknown', N'00000000-0000-0000-0000-000000000000', N'Index', CAST(N'2018-01-17T04:42:55.3085938' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (1099, N'Exception of type ''System.OutOfMemoryException'' was thrown.', N'   at System.Web.Configuration.CompilationSection.LoadAssemblyHelper(String assemblyName, Boolean starDirective)
   at System.Web.Configuration.CompilationSection.LoadAllAssembliesFromAppDomainBinDirectory()
   at System.Web.Configuration.CompilationSection.LoadAssembly(AssemblyInfo ai)
   at System.Web.Compilation.BuildManager.GetReferencedAssemblies(CompilationSection compConfig)
   at System.Web.Compilation.WebDirectoryBatchCompiler..ctor(VirtualDirectory vdir)
   at System.Web.Compilation.BuildManager.BatchCompileWebDirectoryInternal(VirtualDirectory vdir, Boolean ignoreErrors)
   at System.Web.Compilation.BuildManager.BatchCompileWebDirectory(VirtualDirectory vdir, VirtualPath virtualDir, Boolean ignoreErrors)
   at System.Web.Compilation.BuildManager.CompileWebFile(VirtualPath virtualPath)
   at System.Web.Compilation.BuildManager.GetVPathBuildResultInternal(VirtualPath virtualPath, Boolean noBuild, Boolean allowCrossApp, Boolean allowBuildInPrecompile, Boolean throwIfNotFound, Boolean ensureIsUpToDate)
   at System.Web.Compilation.BuildManager.GetVPathBuildResultWithNoAssert(HttpContext context, VirtualPath virtualPath, Boolean noBuild, Boolean allowCrossApp, Boolean allowBuildInPrecompile, Boolean throwIfNotFound, Boolean ensureIsUpToDate)
   at System.Web.Compilation.BuildManager.GetVirtualPathObjectFactory(VirtualPath virtualPath, HttpContext context, Boolean allowCrossApp, Boolean throwIfNotFound)
   at System.Web.Compilation.BuildManager.GetCompiledType(VirtualPath virtualPath)
   at System.Web.Compilation.BuildManager.GetCompiledType(String virtualPath)
   at System.Web.Mvc.BuildManagerWrapper.System.Web.Mvc.IBuildManager.GetCompiledType(String virtualPath)
   at System.Web.Mvc.BuildManagerCompiledView.Render(ViewContext viewContext, TextWriter writer)
   at System.Web.Mvc.ViewResultBase.ExecuteResult(ControllerContext context)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResult(ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultWithFilters(ControllerContext controllerContext, IList`1 filters, ActionResult actionResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Account', N'93.158.161.60', N'Mozilla 0.0, 3.0', N'Unknown', N'00000000-0000-0000-0000-000000000000', N'Login', CAST(N'2018-01-18T08:11:01.4490182' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (1100, N'Exception of type ''System.OutOfMemoryException'' was thrown.', N'   at System.Web.Configuration.CompilationSection.LoadAssemblyHelper(String assemblyName, Boolean starDirective)
   at System.Web.Configuration.CompilationSection.LoadAllAssembliesFromAppDomainBinDirectory()
   at System.Web.Configuration.CompilationSection.LoadAssembly(AssemblyInfo ai)
   at System.Web.Compilation.BuildManager.GetReferencedAssemblies(CompilationSection compConfig)
   at System.Web.Compilation.WebDirectoryBatchCompiler..ctor(VirtualDirectory vdir)
   at System.Web.Compilation.BuildManager.BatchCompileWebDirectoryInternal(VirtualDirectory vdir, Boolean ignoreErrors)
   at System.Web.Compilation.BuildManager.BatchCompileWebDirectory(VirtualDirectory vdir, VirtualPath virtualDir, Boolean ignoreErrors)
   at System.Web.Compilation.BuildManager.CompileWebFile(VirtualPath virtualPath)
   at System.Web.Compilation.BuildManager.GetVPathBuildResultInternal(VirtualPath virtualPath, Boolean noBuild, Boolean allowCrossApp, Boolean allowBuildInPrecompile, Boolean throwIfNotFound, Boolean ensureIsUpToDate)
   at System.Web.Compilation.BuildManager.GetVPathBuildResultWithNoAssert(HttpContext context, VirtualPath virtualPath, Boolean noBuild, Boolean allowCrossApp, Boolean allowBuildInPrecompile, Boolean throwIfNotFound, Boolean ensureIsUpToDate)
   at System.Web.Compilation.BuildManager.GetVirtualPathObjectFactory(VirtualPath virtualPath, HttpContext context, Boolean allowCrossApp, Boolean throwIfNotFound)
   at System.Web.Compilation.BuildManager.GetCompiledType(VirtualPath virtualPath)
   at System.Web.Compilation.BuildManager.GetCompiledType(String virtualPath)
   at System.Web.Mvc.BuildManagerWrapper.System.Web.Mvc.IBuildManager.GetCompiledType(String virtualPath)
   at System.Web.Mvc.BuildManagerCompiledView.Render(ViewContext viewContext, TextWriter writer)
   at System.Web.Mvc.ViewResultBase.ExecuteResult(ControllerContext context)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResult(ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultWithFilters(ControllerContext controllerContext, IList`1 filters, ActionResult actionResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Account', N'77.88.47.74', N'Mozilla 0.0, 3.0', N'Unknown', N'00000000-0000-0000-0000-000000000000', N'Login', CAST(N'2018-01-18T08:11:08.9958846' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (1101, N'Exception of type ''System.OutOfMemoryException'' was thrown.', N'   at System.Web.Configuration.CompilationSection.LoadAssemblyHelper(String assemblyName, Boolean starDirective)
   at System.Web.Configuration.CompilationSection.LoadAllAssembliesFromAppDomainBinDirectory()
   at System.Web.Configuration.CompilationSection.LoadAssembly(AssemblyInfo ai)
   at System.Web.Compilation.BuildManager.GetReferencedAssemblies(CompilationSection compConfig)
   at System.Web.Compilation.WebDirectoryBatchCompiler..ctor(VirtualDirectory vdir)
   at System.Web.Compilation.BuildManager.BatchCompileWebDirectoryInternal(VirtualDirectory vdir, Boolean ignoreErrors)
   at System.Web.Compilation.BuildManager.BatchCompileWebDirectory(VirtualDirectory vdir, VirtualPath virtualDir, Boolean ignoreErrors)
   at System.Web.Compilation.BuildManager.CompileWebFile(VirtualPath virtualPath)
   at System.Web.Compilation.BuildManager.GetVPathBuildResultInternal(VirtualPath virtualPath, Boolean noBuild, Boolean allowCrossApp, Boolean allowBuildInPrecompile, Boolean throwIfNotFound, Boolean ensureIsUpToDate)
   at System.Web.Compilation.BuildManager.GetVPathBuildResultWithNoAssert(HttpContext context, VirtualPath virtualPath, Boolean noBuild, Boolean allowCrossApp, Boolean allowBuildInPrecompile, Boolean throwIfNotFound, Boolean ensureIsUpToDate)
   at System.Web.Compilation.BuildManager.GetVirtualPathObjectFactory(VirtualPath virtualPath, HttpContext context, Boolean allowCrossApp, Boolean throwIfNotFound)
   at System.Web.Compilation.BuildManager.GetCompiledType(VirtualPath virtualPath)
   at System.Web.Compilation.BuildManager.GetCompiledType(String virtualPath)
   at System.Web.Mvc.BuildManagerWrapper.System.Web.Mvc.IBuildManager.GetCompiledType(String virtualPath)
   at System.Web.Mvc.BuildManagerCompiledView.Render(ViewContext viewContext, TextWriter writer)
   at System.Web.Mvc.ViewResultBase.ExecuteResult(ControllerContext context)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResult(ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultWithFilters(ControllerContext controllerContext, IList`1 filters, ActionResult actionResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Account', N'84.201.133.94', N'Mozilla 0.0, 3.0', N'Unknown', N'00000000-0000-0000-0000-000000000000', N'Login', CAST(N'2018-01-18T08:11:16.6056190' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (1102, N'An error occurred while sending the request.', N'   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Shodypati.Controllers.HomeController.<Index>d__0.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\HomeController.cs:line 33
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Home', N'96.47.226.19', N'Mozilla 0.0, 3.0', N'Unknown', N'00000000-0000-0000-0000-000000000000', N'Index', CAST(N'2018-01-18T18:38:08.7177734' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (1103, N'An error occurred while sending the request.', N'   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Shodypati.Controllers.HomeController.<Index>d__0.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\HomeController.cs:line 33
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Home', N'74.115.214.129', N'Mozilla 0.0, 3.0', N'Unknown', N'00000000-0000-0000-0000-000000000000', N'Index', CAST(N'2018-01-18T20:32:26.9082031' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (1104, N'An error occurred while sending the request.', N'   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Shodypati.Controllers.HomeController.<Index>d__0.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\HomeController.cs:line 33
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Home', N'74.115.214.133', N'Mozilla 0.0, 3.0', N'Unknown', N'00000000-0000-0000-0000-000000000000', N'Index', CAST(N'2018-01-19T01:36:40.8242188' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (1105, N'An error occurred while sending the request.', N'   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Shodypati.Controllers.HomeController.<Index>d__0.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\HomeController.cs:line 33
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Home', N'96.47.226.19', N'Mozilla 0.0, 3.0', N'Unknown', N'00000000-0000-0000-0000-000000000000', N'Index', CAST(N'2018-01-19T06:04:13.8486328' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (1106, N'An error occurred while sending the request.', N'   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Shodypati.Controllers.HomeController.<Index>d__0.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\HomeController.cs:line 33
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Home', N'74.115.214.132', N'Mozilla 0.0, 3.0', N'Unknown', N'00000000-0000-0000-0000-000000000000', N'Index', CAST(N'2018-01-21T04:01:34.4238282' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (1107, N'An error occurred while sending the request.', N'   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Shodypati.Controllers.HomeController.<Index>d__0.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\HomeController.cs:line 33
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Home', N'172.241.151.26', N'Mozilla 0.0, 3.0', N'Unknown', N'00000000-0000-0000-0000-000000000000', N'Index', CAST(N'2018-01-21T11:44:41.9931641' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (1108, N'An error occurred while sending the request.', N'   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Shodypati.Controllers.HomeController.<Index>d__0.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\HomeController.cs:line 33
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Home', N'96.47.226.20', N'Mozilla 0.0, 3.0', N'Unknown', N'00000000-0000-0000-0000-000000000000', N'Index', CAST(N'2018-01-21T14:35:14.1347657' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (1109, N'An error occurred while sending the request.', N'   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Shodypati.Controllers.HomeController.<Index>d__0.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\HomeController.cs:line 33
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Home', N'74.115.214.152', N'Mozilla 0.0, 3.0', N'Unknown', N'00000000-0000-0000-0000-000000000000', N'Index', CAST(N'2018-01-22T02:13:00.0058594' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (1110, N'An error occurred while sending the request.', N'   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Shodypati.Controllers.HomeController.<Index>d__0.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\HomeController.cs:line 33
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Home', N'74.115.214.140', N'Mozilla 0.0, 3.0', N'Unknown', N'00000000-0000-0000-0000-000000000000', N'Index', CAST(N'2018-01-22T02:28:31.0009766' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (1111, N'An error occurred while sending the request.', N'   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Shodypati.Controllers.HomeController.<Index>d__0.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\HomeController.cs:line 33
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Home', N'74.115.214.151', N'Mozilla 0.0, 3.0', N'Unknown', N'00000000-0000-0000-0000-000000000000', N'Index', CAST(N'2018-01-22T02:28:32.1416016' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (1112, N'An error occurred while sending the request.', N'   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Shodypati.Controllers.HomeController.<Index>d__0.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\HomeController.cs:line 33
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Home', N'196.52.43.84', N'Unknown 0.0, 0.0', N'Unknown', N'00000000-0000-0000-0000-000000000000', N'Index', CAST(N'2018-01-23T06:51:30.5371094' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (1113, N'An error occurred while sending the request.', N'   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Shodypati.Controllers.HomeController.<Index>d__0.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\HomeController.cs:line 33
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Home', N'74.115.214.147', N'Mozilla 0.0, 3.0', N'Unknown', N'00000000-0000-0000-0000-000000000000', N'Index', CAST(N'2018-01-23T07:21:00.8310547' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (1114, N'An error occurred while sending the request.', N'   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Shodypati.Controllers.HomeController.<Index>d__0.MoveNext() in D:\Multiversal\MTS\Projects_Clients\Shodypati\Shodypati\Shodypati\Controllers\HomeController.cs:line 33
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Mvc.Async.TaskAsyncActionDescriptor.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass37.<BeginInvokeAsynchronousActionMethod>b__36(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Home', N'74.115.214.142', N'Mozilla 0.0, 3.0', N'Unknown', N'00000000-0000-0000-0000-000000000000', N'Index', CAST(N'2018-01-23T10:04:14.4628907' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (1115, N'The view ''Index'' or its master was not found or no view engine supports the searched locations. The following locations were searched:
~/Views/categories/Index.aspx
~/Views/categories/Index.ascx
~/Views/Shared/Index.aspx
~/Views/Shared/Index.ascx
~/Views/categories/Index.cshtml
~/Views/categories/Index.vbhtml
~/Views/Shared/Index.cshtml
~/Views/Shared/Index.vbhtml', N'   at System.Web.Mvc.ViewResult.FindView(ControllerContext context)
   at System.Web.Mvc.ViewResultBase.ExecuteResult(ControllerContext context)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResult(ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultWithFilters(ControllerContext controllerContext, IList`1 filters, ActionResult actionResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'categories', N'27.147.206.41', N'Chrome 63.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'Index', CAST(N'2018-01-24T04:53:07.5237401' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (1116, N'The view ''ErrorException'' or its master was not found or no view engine supports the searched locations. The following locations were searched:
~/Views/Account/ErrorException.aspx
~/Views/Account/ErrorException.ascx
~/Views/Shared/ErrorException.aspx
~/Views/Shared/ErrorException.ascx
~/Views/Account/ErrorException.cshtml
~/Views/Account/ErrorException.vbhtml
~/Views/Shared/ErrorException.cshtml
~/Views/Shared/ErrorException.vbhtml', N'   at System.Web.Mvc.ViewResult.FindView(ControllerContext context)
   at System.Web.Mvc.ViewResultBase.ExecuteResult(ControllerContext context)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResult(ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultWithFilters(ControllerContext controllerContext, IList`1 filters, ActionResult actionResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Account', N'27.147.206.41', N'Chrome 63.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'ErrorException', CAST(N'2018-01-24T04:53:08.1174732' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (1117, N'The view ''ErrorException'' or its master was not found or no view engine supports the searched locations. The following locations were searched:
~/Views/Account/ErrorException.aspx
~/Views/Account/ErrorException.ascx
~/Views/Shared/ErrorException.aspx
~/Views/Shared/ErrorException.ascx
~/Views/Account/ErrorException.cshtml
~/Views/Account/ErrorException.vbhtml
~/Views/Shared/ErrorException.cshtml
~/Views/Shared/ErrorException.vbhtml', N'   at System.Web.Mvc.ViewResult.FindView(ControllerContext context)
   at System.Web.Mvc.ViewResultBase.ExecuteResult(ControllerContext context)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResult(ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultWithFilters(ControllerContext controllerContext, IList`1 filters, ActionResult actionResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Account', N'27.147.206.41', N'Chrome 63.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'ErrorException', CAST(N'2018-01-24T04:53:08.6330922' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (1118, N'The view ''ErrorException'' or its master was not found or no view engine supports the searched locations. The following locations were searched:
~/Views/Account/ErrorException.aspx
~/Views/Account/ErrorException.ascx
~/Views/Shared/ErrorException.aspx
~/Views/Shared/ErrorException.ascx
~/Views/Account/ErrorException.cshtml
~/Views/Account/ErrorException.vbhtml
~/Views/Shared/ErrorException.cshtml
~/Views/Shared/ErrorException.vbhtml', N'   at System.Web.Mvc.ViewResult.FindView(ControllerContext context)
   at System.Web.Mvc.ViewResultBase.ExecuteResult(ControllerContext context)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResult(ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultWithFilters(ControllerContext controllerContext, IList`1 filters, ActionResult actionResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Account', N'27.147.206.41', N'Chrome 63.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'ErrorException', CAST(N'2018-01-24T04:53:09.1487423' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (1119, N'The view ''ErrorException'' or its master was not found or no view engine supports the searched locations. The following locations were searched:
~/Views/Account/ErrorException.aspx
~/Views/Account/ErrorException.ascx
~/Views/Shared/ErrorException.aspx
~/Views/Shared/ErrorException.ascx
~/Views/Account/ErrorException.cshtml
~/Views/Account/ErrorException.vbhtml
~/Views/Shared/ErrorException.cshtml
~/Views/Shared/ErrorException.vbhtml', N'   at System.Web.Mvc.ViewResult.FindView(ControllerContext context)
   at System.Web.Mvc.ViewResultBase.ExecuteResult(ControllerContext context)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResult(ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultWithFilters(ControllerContext controllerContext, IList`1 filters, ActionResult actionResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Account', N'27.147.206.41', N'Chrome 63.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'ErrorException', CAST(N'2018-01-24T04:53:09.6487193' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (1120, N'The view ''ErrorException'' or its master was not found or no view engine supports the searched locations. The following locations were searched:
~/Views/Account/ErrorException.aspx
~/Views/Account/ErrorException.ascx
~/Views/Shared/ErrorException.aspx
~/Views/Shared/ErrorException.ascx
~/Views/Account/ErrorException.cshtml
~/Views/Account/ErrorException.vbhtml
~/Views/Shared/ErrorException.cshtml
~/Views/Shared/ErrorException.vbhtml', N'   at System.Web.Mvc.ViewResult.FindView(ControllerContext context)
   at System.Web.Mvc.ViewResultBase.ExecuteResult(ControllerContext context)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResult(ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultWithFilters(ControllerContext controllerContext, IList`1 filters, ActionResult actionResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Account', N'27.147.206.41', N'Chrome 63.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'ErrorException', CAST(N'2018-01-24T04:53:10.1643724' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (1121, N'The view ''ErrorException'' or its master was not found or no view engine supports the searched locations. The following locations were searched:
~/Views/Account/ErrorException.aspx
~/Views/Account/ErrorException.ascx
~/Views/Shared/ErrorException.aspx
~/Views/Shared/ErrorException.ascx
~/Views/Account/ErrorException.cshtml
~/Views/Account/ErrorException.vbhtml
~/Views/Shared/ErrorException.cshtml
~/Views/Shared/ErrorException.vbhtml', N'   at System.Web.Mvc.ViewResult.FindView(ControllerContext context)
   at System.Web.Mvc.ViewResultBase.ExecuteResult(ControllerContext context)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResult(ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultWithFilters(ControllerContext controllerContext, IList`1 filters, ActionResult actionResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Account', N'27.147.206.41', N'Chrome 63.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'ErrorException', CAST(N'2018-01-24T04:53:10.6643630' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (1122, N'The view ''ErrorException'' or its master was not found or no view engine supports the searched locations. The following locations were searched:
~/Views/Account/ErrorException.aspx
~/Views/Account/ErrorException.ascx
~/Views/Shared/ErrorException.aspx
~/Views/Shared/ErrorException.ascx
~/Views/Account/ErrorException.cshtml
~/Views/Account/ErrorException.vbhtml
~/Views/Shared/ErrorException.cshtml
~/Views/Shared/ErrorException.vbhtml', N'   at System.Web.Mvc.ViewResult.FindView(ControllerContext context)
   at System.Web.Mvc.ViewResultBase.ExecuteResult(ControllerContext context)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResult(ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultWithFilters(ControllerContext controllerContext, IList`1 filters, ActionResult actionResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Account', N'27.147.206.41', N'Chrome 63.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'ErrorException', CAST(N'2018-01-24T04:53:11.1799926' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (1123, N'The view ''ErrorException'' or its master was not found or no view engine supports the searched locations. The following locations were searched:
~/Views/Account/ErrorException.aspx
~/Views/Account/ErrorException.ascx
~/Views/Shared/ErrorException.aspx
~/Views/Shared/ErrorException.ascx
~/Views/Account/ErrorException.cshtml
~/Views/Account/ErrorException.vbhtml
~/Views/Shared/ErrorException.cshtml
~/Views/Shared/ErrorException.vbhtml', N'   at System.Web.Mvc.ViewResult.FindView(ControllerContext context)
   at System.Web.Mvc.ViewResultBase.ExecuteResult(ControllerContext context)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResult(ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultWithFilters(ControllerContext controllerContext, IList`1 filters, ActionResult actionResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Account', N'27.147.206.41', N'Chrome 63.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'ErrorException', CAST(N'2018-01-24T04:53:11.6799689' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (1124, N'The view ''ErrorException'' or its master was not found or no view engine supports the searched locations. The following locations were searched:
~/Views/Account/ErrorException.aspx
~/Views/Account/ErrorException.ascx
~/Views/Shared/ErrorException.aspx
~/Views/Shared/ErrorException.ascx
~/Views/Account/ErrorException.cshtml
~/Views/Account/ErrorException.vbhtml
~/Views/Shared/ErrorException.cshtml
~/Views/Shared/ErrorException.vbhtml', N'   at System.Web.Mvc.ViewResult.FindView(ControllerContext context)
   at System.Web.Mvc.ViewResultBase.ExecuteResult(ControllerContext context)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResult(ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultWithFilters(ControllerContext controllerContext, IList`1 filters, ActionResult actionResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Account', N'27.147.206.41', N'Chrome 63.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'ErrorException', CAST(N'2018-01-24T04:53:12.1956162' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (1125, N'The view ''ErrorException'' or its master was not found or no view engine supports the searched locations. The following locations were searched:
~/Views/Account/ErrorException.aspx
~/Views/Account/ErrorException.ascx
~/Views/Shared/ErrorException.aspx
~/Views/Shared/ErrorException.ascx
~/Views/Account/ErrorException.cshtml
~/Views/Account/ErrorException.vbhtml
~/Views/Shared/ErrorException.cshtml
~/Views/Shared/ErrorException.vbhtml', N'   at System.Web.Mvc.ViewResult.FindView(ControllerContext context)
   at System.Web.Mvc.ViewResultBase.ExecuteResult(ControllerContext context)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResult(ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultWithFilters(ControllerContext controllerContext, IList`1 filters, ActionResult actionResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Account', N'27.147.206.41', N'Chrome 63.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'ErrorException', CAST(N'2018-01-24T04:53:12.7112197' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (1126, N'The view ''ErrorException'' or its master was not found or no view engine supports the searched locations. The following locations were searched:
~/Views/Account/ErrorException.aspx
~/Views/Account/ErrorException.ascx
~/Views/Shared/ErrorException.aspx
~/Views/Shared/ErrorException.ascx
~/Views/Account/ErrorException.cshtml
~/Views/Account/ErrorException.vbhtml
~/Views/Shared/ErrorException.cshtml
~/Views/Shared/ErrorException.vbhtml', N'   at System.Web.Mvc.ViewResult.FindView(ControllerContext context)
   at System.Web.Mvc.ViewResultBase.ExecuteResult(ControllerContext context)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResult(ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultWithFilters(ControllerContext controllerContext, IList`1 filters, ActionResult actionResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Account', N'27.147.206.41', N'Chrome 63.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'ErrorException', CAST(N'2018-01-24T04:53:13.2268658' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (1127, N'The view ''ErrorException'' or its master was not found or no view engine supports the searched locations. The following locations were searched:
~/Views/Account/ErrorException.aspx
~/Views/Account/ErrorException.ascx
~/Views/Shared/ErrorException.aspx
~/Views/Shared/ErrorException.ascx
~/Views/Account/ErrorException.cshtml
~/Views/Account/ErrorException.vbhtml
~/Views/Shared/ErrorException.cshtml
~/Views/Shared/ErrorException.vbhtml', N'   at System.Web.Mvc.ViewResult.FindView(ControllerContext context)
   at System.Web.Mvc.ViewResultBase.ExecuteResult(ControllerContext context)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResult(ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultWithFilters(ControllerContext controllerContext, IList`1 filters, ActionResult actionResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Account', N'27.147.206.41', N'Chrome 63.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'ErrorException', CAST(N'2018-01-24T04:53:13.7268420' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (1128, N'The view ''ErrorException'' or its master was not found or no view engine supports the searched locations. The following locations were searched:
~/Views/Account/ErrorException.aspx
~/Views/Account/ErrorException.ascx
~/Views/Shared/ErrorException.aspx
~/Views/Shared/ErrorException.ascx
~/Views/Account/ErrorException.cshtml
~/Views/Account/ErrorException.vbhtml
~/Views/Shared/ErrorException.cshtml
~/Views/Shared/ErrorException.vbhtml', N'   at System.Web.Mvc.ViewResult.FindView(ControllerContext context)
   at System.Web.Mvc.ViewResultBase.ExecuteResult(ControllerContext context)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResult(ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultWithFilters(ControllerContext controllerContext, IList`1 filters, ActionResult actionResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Account', N'27.147.206.41', N'Chrome 63.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'ErrorException', CAST(N'2018-01-24T04:53:14.2581124' AS DateTime2))
SET IDENTITY_INSERT [dbo].[LogTbl] OFF
SET IDENTITY_INSERT [dbo].[MedicineListTbl] ON 

INSERT [dbo].[MedicineListTbl] ([Id], [UserId], [MedicineName], [Quantity], [Price], [FinishTime]) VALUES (5, N'c76c5ba2-d1b0-49e7-afb0-8ae21b287b0c', N'1', N'1', 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[MedicineListTbl] ([Id], [UserId], [MedicineName], [Quantity], [Price], [FinishTime]) VALUES (6, N'c76c5ba2-d1b0-49e7-afb0-8ae21b287b0c', N'2', N'10 pcs', 3214234, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[MedicineListTbl] ([Id], [UserId], [MedicineName], [Quantity], [Price], [FinishTime]) VALUES (7, N'c76c5ba2-d1b0-49e7-afb0-8ae21b287b0c', N'32', N'234', 20, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[MedicineListTbl] ([Id], [UserId], [MedicineName], [Quantity], [Price], [FinishTime]) VALUES (8, N'c76c5ba2-d1b0-49e7-afb0-8ae21b287b0c', N'234', N'10 pcs', 20, CAST(N'2017-12-12T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[MedicineListTbl] ([Id], [UserId], [MedicineName], [Quantity], [Price], [FinishTime]) VALUES (9, N'c76c5ba2-d1b0-49e7-afb0-8ae21b287b0c', N'sidakin', N'ert', 4, CAST(N'2017-12-12T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[MedicineListTbl] ([Id], [UserId], [MedicineName], [Quantity], [Price], [FinishTime]) VALUES (15, N'cd345f47-4788-4186-bcf3-a587426d8f6c', N'123', N'21423', 234, CAST(N'2017-12-12T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[MedicineListTbl] ([Id], [UserId], [MedicineName], [Quantity], [Price], [FinishTime]) VALUES (16, N'cd345f47-4788-4186-bcf3-a587426d8f6c', N'234', N'3', 3214234, CAST(N'1991-07-07T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[MedicineListTbl] ([Id], [UserId], [MedicineName], [Quantity], [Price], [FinishTime]) VALUES (17, N'cd345f47-4788-4186-bcf3-a587426d8f6c', N'napa', N'ert', 30, CAST(N'2017-11-11T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[MedicineListTbl] ([Id], [UserId], [MedicineName], [Quantity], [Price], [FinishTime]) VALUES (18, N'cd345f47-4788-4186-bcf3-a587426d8f6c', N'32', N'234', 20, CAST(N'2017-12-12T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[MedicineListTbl] ([Id], [UserId], [MedicineName], [Quantity], [Price], [FinishTime]) VALUES (21, N'9e431c3a-6c88-45c6-836e-b60366468c83', N'Napa Extra', N'10', 30, CAST(N'2017-12-05T04:15:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[MedicineListTbl] OFF
SET IDENTITY_INSERT [dbo].[MerchantTbl] ON 

INSERT [dbo].[MerchantTbl] ([Id], [URL], [Name_English], [Name_Bangla], [Logo], [TypeOfGoods], [Notes], [DiscountAvailable], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (1, N'https://erecruitment.bb.org.bd/', N'BB', N'বাংলাদেশ ব্যাংক', N'https://erecruitment.bb.org.bd/homeimages/topleft.jpg', N'Example of type ', N'Lorem', NULL, 1, CAST(N'2017-11-01T00:26:07.2293379' AS DateTime2), CAST(N'2017-11-01T00:26:07.2293379' AS DateTime2), NULL)
INSERT [dbo].[MerchantTbl] ([Id], [URL], [Name_English], [Name_Bangla], [Logo], [TypeOfGoods], [Notes], [DiscountAvailable], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (2, N'https://bb.org.bd/', N'test merchants', N'ব্যাংক', N'https://erecruitment.bb.org.bd/homeimages/topleft.jpg', N'Solid', N'Lorem ipsum', NULL, 2, CAST(N'2017-11-01T00:25:59.3432256' AS DateTime2), CAST(N'2017-11-01T00:25:59.3442269' AS DateTime2), NULL)
SET IDENTITY_INSERT [dbo].[MerchantTbl] OFF
SET IDENTITY_INSERT [dbo].[OrderPaymentMethodTbl] ON 

INSERT [dbo].[OrderPaymentMethodTbl] ([Id], [Name], [Instructions], [InstructionsImageUrl], [Published]) VALUES (1, N'Bkash', N'01. Go to your bKash Mobile Menu by dialing *247#
02. Choose “Payment”
03. Enter the Merchant bKash Account Number you want to pay to
04. Enter the amount you want to pay
05. Enter a reference* against your payment (you can mention the purpose of the transaction in one word. e.g. Bill)
06. Enter the Counter Number* (the salesperson at the counter will tell you the number)
07. Now enter your bKash Mobile Menu PIN to confirm

 ', N'Content\images\payment\bKash_payment_Process.png', NULL)
INSERT [dbo].[OrderPaymentMethodTbl] ([Id], [Name], [Instructions], [InstructionsImageUrl], [Published]) VALUES (2, N'Rocket', N'Customer can pay bills of various organizations using this payment option. To make a payment please follow the following instruction.To get this service from Dutch-Bangla Bank Rocket account you just need to dial *322# from any operator except citycell. in case if you are using Citycell mobile phones then just send an empty sms to 16216. Once you dial *322# or send an sms to 16216 you will get the following screen. From the screen please select the option 1.', N'Content\images\payment\rocket-payment.png', NULL)
INSERT [dbo].[OrderPaymentMethodTbl] ([Id], [Name], [Instructions], [InstructionsImageUrl], [Published]) VALUES (3, N'Internet Banking', NULL, NULL, NULL)
INSERT [dbo].[OrderPaymentMethodTbl] ([Id], [Name], [Instructions], [InstructionsImageUrl], [Published]) VALUES (4, N'Credit Card', NULL, NULL, NULL)
INSERT [dbo].[OrderPaymentMethodTbl] ([Id], [Name], [Instructions], [InstructionsImageUrl], [Published]) VALUES (5, N'Debit Card', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[OrderPaymentMethodTbl] OFF
SET IDENTITY_INSERT [dbo].[OrderPaymentStatusTbl] ON 

INSERT [dbo].[OrderPaymentStatusTbl] ([Id], [Name], [DefaultStatus]) VALUES (1, N'InComplete', 1)
INSERT [dbo].[OrderPaymentStatusTbl] ([Id], [Name], [DefaultStatus]) VALUES (2, N'Complete', 0)
SET IDENTITY_INSERT [dbo].[OrderPaymentStatusTbl] OFF
SET IDENTITY_INSERT [dbo].[OrdersAddressTbl] ON 

INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (1, N'3579de69-32f2-4044-a0c4-3afb89404d88', 1, 0, N'Digi para', N'Madhail bazar', N'Rajshahi', N'Naogaon', N'Patnitala', N'Madhail Bazar', N'6561', N'01717623876')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (3, N'3579de69-32f2-4044-a0c4-3afb89404d88', 0, 1, N'House#18, Road#03', N'Sector#12', N'Dhaka', N'Dhaka', N'Uttara', N'Uttara Model Post Office', N'1216', N'01725620123')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (4, N'00000000-0000-0000-0000-000000000000', 0, 1, N'House#18, Road#03', N'Sector#12', N'Dhaka', N'Dhaka', N'Uttara', N'Uttara Model Post Office', N'1216', N'01725620123')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (5, N'00000000-0000-0000-0000-000000000000', 1, 0, N'Digi para-1', N'Madhail bazar-1', N'Rajshahi-1', N'Naogaon-1', N'Patnitala-1', N'Madhail Bazar-1', N'6561-1', N'01717623876-1')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (6, N'00000000-0000-0000-0000-000000000000', 0, 1, N'House#18, Road#03', N'Sector#12', N'Dhaka', N'Dhaka', N'Uttara', N'Uttara Model Post Office', N'1216', N'01725620123')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (7, N'00000000-0000-0000-0000-000000000000', 1, 0, N'Digi para-1', N'Madhail bazar-1', N'Rajshahi-1', N'Naogaon-1', N'Patnitala-1', N'Madhail Bazar-1', N'6561-1', N'01717623876-1')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (8, N'00000000-0000-0000-0000-000000000000', 0, 1, N'House#18, Road#03', N'Sector#12', N'Dhaka', N'Dhaka', N'Uttara', N'Uttara Model Post Office', N'1216', N'01725620123')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (9, N'00000000-0000-0000-0000-000000000000', 1, 0, N'Digi para-1', N'Madhail bazar-1', N'Rajshahi-1', N'Naogaon-1', N'Patnitala-1', N'Madhail Bazar-1', N'6561-1', N'01717623876-1')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (10, N'00000000-0000-0000-0000-000000000000', 0, 1, N'House#18, Road#03', N'Sector#12', N'Dhaka', N'Dhaka', N'Uttara', N'Uttara Model Post Office', N'1216', N'01725620123')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (11, N'00000000-0000-0000-0000-000000000000', 1, 0, N'Digi para-1', N'Madhail bazar-1', N'Rajshahi-1', N'Naogaon-1', N'Patnitala-1', N'Madhail Bazar-1', N'6561-1', N'01717623876-1')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (12, N'00000000-0000-0000-0000-000000000000', 0, 1, N'House#18, Road#03', N'Sector#12', N'Dhaka', N'Dhaka', N'Uttara', N'Uttara Model Post Office', N'1216', N'01725620123')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (13, N'00000000-0000-0000-0000-000000000000', 1, 0, N'Digi para-1', N'Madhail bazar-1', N'Rajshahi-1', N'Naogaon-1', N'Patnitala-1', N'Madhail Bazar-1', N'6561-1', N'01717623876-1')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (14, N'00000000-0000-0000-0000-000000000000', 0, 1, N'House#18, Road#03', N'Sector#12', N'Dhaka', N'Dhaka', N'Uttara', N'Uttara Model Post Office', N'1216', N'01725620123')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (15, N'00000000-0000-0000-0000-000000000000', 1, 0, N'Digi para-1', N'Madhail bazar-1', N'Rajshahi-1', N'Naogaon-1', N'Patnitala-1', N'Madhail Bazar-1', N'6561-1', N'01717623876-1')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (16, N'00000000-0000-0000-0000-000000000000', 0, 1, N'House#18, Road#03', N'Sector#12', N'Dhaka', N'Dhaka', N'Uttara', N'Uttara Model Post Office', N'1216', N'01725620123')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (17, N'00000000-0000-0000-0000-000000000000', 1, 0, N'Digi para-1', N'Madhail bazar-1', N'Rajshahi-1', N'Naogaon-1', N'Patnitala-1', N'Madhail Bazar-1', N'6561-1', N'01717623876-1')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (18, N'00000000-0000-0000-0000-000000000000', 0, 1, N'House#18, Road#03', N'Sector#12', N'Dhaka', N'Dhaka', N'Uttara', N'Uttara Model Post Office', N'1216', N'01725620123')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (19, N'00000000-0000-0000-0000-000000000000', 1, 0, N'Digi para-1', N'Madhail bazar-1', N'Rajshahi-1', N'Naogaon-1', N'Patnitala-1', N'Madhail Bazar-1', N'6561-1', N'01717623876-1')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (20, N'00000000-0000-0000-0000-000000000000', 0, 1, N'House#18, Road#03', N'Sector#12', N'Dhaka', N'Dhaka', N'Uttara', N'Uttara Model Post Office', N'1216', N'01725620123')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (21, N'00000000-0000-0000-0000-000000000000', 1, 0, N'Digi para-1', N'Madhail bazar-1', N'Rajshahi-1', N'Naogaon-1', N'Patnitala-1', N'Madhail Bazar-1', N'6561-1', N'01717623876-1')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (22, N'00000000-0000-0000-0000-000000000000', 0, 1, N'House#18, Road#03', N'Sector#12', N'Dhaka', N'Dhaka', N'Uttara', N'Uttara Model Post Office', N'1216', N'01725620123')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (23, N'00000000-0000-0000-0000-000000000000', 1, 0, N'Digi para-1', N'Madhail bazar-1', N'Rajshahi-1', N'Naogaon-1', N'Patnitala-1', N'Madhail Bazar-1', N'6561-1', N'01717623876-1')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (24, N'8c44361d-be96-45c6-8e9e-59ad4402886c', 0, 1, N'House#18, Road#03', N'Sector#12', N'Dhaka', N'Dhaka', N'Uttara', N'Uttara Model Post Office', N'1216', N'01725620123')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (25, N'8c44361d-be96-45c6-8e9e-59ad4402886c', 1, 0, N'Digi para-1', N'Madhail bazar-1', N'Rajshahi-1', N'Naogaon-1', N'Patnitala-1', N'Madhail Bazar-1', N'6561-1', N'01717623876-1')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (26, N'f390e161-8cdd-4214-81fe-37c7f2a2b221', 0, 1, N'House#18, Road#03', N'Sector#12', N'Dhaka', N'Dhaka', N'Uttara', N'Uttara Model Post Office', N'1216', N'01725620123')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (27, N'f390e161-8cdd-4214-81fe-37c7f2a2b221', 1, 0, N'Digi para-1', N'Madhail bazar-1', N'Rajshahi-1', N'Naogaon-1', N'Patnitala-1', N'Madhail Bazar-1', N'6561-1', N'01717623876-1')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (28, N'b62dd547-222d-47dd-8b65-5dee93a0acb5', 0, 1, N'House#18, Road#03', N'Sector#12', N'Dhaka', N'Dhaka', N'Uttara', N'Uttara Model Post Office', N'1216', N'01725620123')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (29, N'b62dd547-222d-47dd-8b65-5dee93a0acb5', 1, 0, N'Digi para-1', N'Madhail bazar-1', N'Rajshahi-1', N'Naogaon-1', N'Patnitala-1', N'Madhail Bazar-1', N'6561-1', N'01717623876-1')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (30, N'9214fbf0-9845-4ddc-938b-0190fd5f50ec', 0, 1, N'House#18, Road#03', N'Sector#12', N'Dhaka', N'Dhaka', N'Uttara', N'Uttara Model Post Office', N'1216', N'01725620123')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (31, N'9214fbf0-9845-4ddc-938b-0190fd5f50ec', 1, 0, N'Digi para-1', N'Madhail bazar-1', N'Rajshahi-1', N'Naogaon-1', N'Patnitala-1', N'Madhail Bazar-1', N'6561-1', N'01717623876-1')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (32, N'd2e76066-1638-4d44-acdd-dd67669b7dba', 0, 1, N'ghg', N'hjhh', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'25803')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (33, N'd2e76066-1638-4d44-acdd-dd67669b7dba', 1, 0, N'ghg', N'hjhh', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'25803')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (34, N'4b2251d6-1e60-4ab1-a524-33bc08dbf881', 0, 1, N'check', N'check', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01922386770')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (35, N'4b2251d6-1e60-4ab1-a524-33bc08dbf881', 1, 0, N'check', N'check', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01922386770')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (36, N'21e6f2c8-4b69-4f74-b3c9-5c0318a1095b', 0, 1, N'fggg', N'ghhhh', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01911736165')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (37, N'21e6f2c8-4b69-4f74-b3c9-5c0318a1095b', 1, 0, N'fggg', N'ghhhh', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01911736165')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (38, N'fd06b10e-cedb-429a-bde6-ec7f79ad1ae8', 0, 1, N'ghhb', N'fth', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01911736165')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (39, N'fd06b10e-cedb-429a-bde6-ec7f79ad1ae8', 1, 0, N'ghhb', N'fth', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01911736165')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (40, N'bf32aef8-47e1-479a-801f-0998b57c7536', 0, 1, N'ghhj', N'rtyyyy', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01911736165')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (41, N'bf32aef8-47e1-479a-801f-0998b57c7536', 1, 0, N'ghhj', N'rtyyyy', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01911736165')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (42, N'468a6fa3-5054-4500-83b6-2a543a3d62d8', 0, 1, N'gh', N'ggh', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01911736165')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (43, N'468a6fa3-5054-4500-83b6-2a543a3d62d8', 1, 0, N'gh', N'ggh', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01911736165')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (44, N'd6c20b46-7cb0-453c-98b4-06cb59c847c6', 0, 1, N'yaya', N'gaggs', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01914625065')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (45, N'd6c20b46-7cb0-453c-98b4-06cb59c847c6', 1, 0, N'yaya', N'gaggs', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01914625065')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (46, N'5437f6a0-7398-4937-8bbb-11d2ab97cc64', 0, 1, N'bg', N'fcf', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'55555')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (47, N'5437f6a0-7398-4937-8bbb-11d2ab97cc64', 1, 0, N'bg', N'fcf', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'55555')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (48, N'4712591c-8a55-4d80-bf44-a900f29c2b86', 0, 1, N'gggg', N'gggg', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'25255')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (49, N'4712591c-8a55-4d80-bf44-a900f29c2b86', 1, 0, N'gggg', N'gggg', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'25255')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (50, N'7993ed2e-c39d-4125-89d5-22c1a9a1b88c', 0, 1, N'text', N'text', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'1234')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (51, N'7993ed2e-c39d-4125-89d5-22c1a9a1b88c', 1, 0, N'text', N'text', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'1234')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (52, N'89419120-b7d4-4bc5-ac6d-3ae60279eddc', 0, 1, N'text', N'text', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'1234')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (53, N'89419120-b7d4-4bc5-ac6d-3ae60279eddc', 1, 0, N'text', N'text', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'1234')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (54, N'f752d8e3-3929-48c1-80fb-7daa25268d07', 0, 1, N'text', N'text', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'1234')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (55, N'f752d8e3-3929-48c1-80fb-7daa25268d07', 1, 0, N'text', N'text', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'1234')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (56, N'40d14032-b139-419b-96a0-afd8a195c7ed', 0, 1, N'shahedagope', N'hhjj', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01818382426')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (57, N'40d14032-b139-419b-96a0-afd8a195c7ed', 1, 0, N'shahedagope', N'hhjj', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01818382426')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (58, N'10f8dd6d-be87-4983-bb50-eb53e0e7177e', 0, 1, N'Dhaka', N'Dhaka abcd test', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'0123456789')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (59, N'10f8dd6d-be87-4983-bb50-eb53e0e7177e', 1, 0, N'Dhaka', N'Dhaka abcd test', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'0123456789')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (60, N'ed0c3edf-332c-4e60-a3db-8f8647d5c32b', 0, 1, N'jaforpur', N'jaforpur,ibrahimpur,nabinagur,b-baria', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01931575482')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (61, N'ed0c3edf-332c-4e60-a3db-8f8647d5c32b', 1, 0, N'jaforpur', N'jaforpur,ibrahimpur,nabinagur,b-baria', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01931575482')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (62, N'd8ea7d0f-2172-470e-bee4-9dc996e340f3', 0, 1, N'House#18, Road#03', N'Sector#12', N'Dhaka', N'Dhaka', N'Uttara', N'Uttara Model Post Office', N'1216', N'01725620123')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (63, N'd8ea7d0f-2172-470e-bee4-9dc996e340f3', 1, 0, N'Digi para-1', N'Madhail bazar-1', N'Rajshahi-1', N'Naogaon-1', N'Patnitala-1', N'Madhail Bazar-1', N'6561-1', N'01717623876-1')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (64, N'7da71e27-0225-4d0a-b3b8-8d59488cb0b4', 0, 1, N'sreekail', N'borobari', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01624982354')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (65, N'7da71e27-0225-4d0a-b3b8-8d59488cb0b4', 1, 0, N'sreekail', N'borobari', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01624982354')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (66, N'e559456c-b56b-4a49-a8a2-837e3987944a', 0, 1, N'House#18, Road#03', N'Sector#12', N'Dhaka', N'Dhaka', N'Uttara', N'Uttara Model Post Office', N'1216', N'01725620123')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (67, N'e559456c-b56b-4a49-a8a2-837e3987944a', 1, 0, N'Digi para-1', N'Madhail bazar-1', N'Rajshahi-1', N'Naogaon-1', N'Patnitala-1', N'Madhail Bazar-1', N'6561-1', N'01717623876-1')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (68, N'ad6eeffd-f7ac-4dcd-8379-f8e4be941601', 0, 1, N'House#18, Road#03', N'Sector#12', N'Dhaka', N'Dhaka', N'Uttara', N'Uttara Model Post Office', N'1216', N'01725620123')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (69, N'ad6eeffd-f7ac-4dcd-8379-f8e4be941601', 1, 0, N'Digi para-1', N'Madhail bazar-1', N'Rajshahi-1', N'Naogaon-1', N'Patnitala-1', N'Madhail Bazar-1', N'6561-1', N'01717623876-1')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (70, N'7a2d730e-8a92-4993-a711-4bdcdd37e22a', 0, 1, N'Kawranbazar', N'Shumina goni tower', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01851115865')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (71, N'7a2d730e-8a92-4993-a711-4bdcdd37e22a', 1, 0, N'Kawranbazar', N'Shumina goni tower', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01851115865')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (72, N'b281275d-8f0b-431f-87f9-b60caeb10333', 0, 1, N'tgh', N'dfg', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'56655')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (73, N'b281275d-8f0b-431f-87f9-b60caeb10333', 1, 0, N'tgh', N'dfg', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'56655')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (74, N'5709eda4-46cf-4a9a-88a3-2728cadaacd1', 0, 1, N'vvv', N'fvv', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'558')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (75, N'5709eda4-46cf-4a9a-88a3-2728cadaacd1', 1, 0, N'vvv', N'fvv', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'558')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (76, N'd669147c-3ce3-4fa1-a201-8947c2290dd8', 0, 1, N'jaforpur.ebrahimpur.nabinagar', N'jaforpur tahermolla bari', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01931575482')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (77, N'd669147c-3ce3-4fa1-a201-8947c2290dd8', 1, 0, N'jaforpur.ebrahimpur.nabinagar', N'jaforpur tahermolla bari', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01931575482')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (78, N'05cda10c-6cf3-4d79-bbe4-229ba6316a00', 0, 1, N'test', N'test', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01911736165')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (79, N'05cda10c-6cf3-4d79-bbe4-229ba6316a00', 1, 0, N'test', N'test', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01911736165')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (80, N'04436024-0cc8-4094-83f8-66442152e9a6', 0, 1, N'sahedagop', N'munshi bari', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01624982354')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (81, N'04436024-0cc8-4094-83f8-66442152e9a6', 1, 0, N'sahedagop', N'munshi bari', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01624982354')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (82, N'5f921c18-c906-4399-aa4b-371ff6c7faf4', 0, 1, N'shahedagope', N'hhdh', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01818382426')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (83, N'5f921c18-c906-4399-aa4b-371ff6c7faf4', 1, 0, N'shahedagope', N'hhdh', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01818382426')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (84, N'7ef6f5e8-61ed-40e1-84ea-5d676e946ad4', 0, 1, N'b baria', N'rohim bari', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01624982354')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (85, N'7ef6f5e8-61ed-40e1-84ea-5d676e946ad4', 1, 0, N'b baria', N'rohim bari', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01624982354')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (86, N'7fbfb34b-7306-478f-9dd7-496a25e0ff15', 0, 1, N'hhh', N'hhh', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'63')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (87, N'7fbfb34b-7306-478f-9dd7-496a25e0ff15', 1, 0, N'hhh', N'hhh', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'63')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (88, N'0079935c-f830-4fd9-be72-438385656cbe', 0, 1, N'check', N'fff', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'8858')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (89, N'0079935c-f830-4fd9-be72-438385656cbe', 1, 0, N'check', N'fff', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'8858')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (90, N'ba9a7129-95ef-4807-be84-04b998cdb597', 0, 1, N'সাহেদাগোপ', N'মধ্যপাড়া,,বড় বাড়ির সাথে,,শরীফের বোন', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01704536307')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (91, N'ba9a7129-95ef-4807-be84-04b998cdb597', 1, 0, N'সাহেদাগোপ', N'মধ্যপাড়া,,বড় বাড়ির সাথে,,শরীফের বোন', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01704536307')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (92, N'db9a4faa-d425-4d76-ac35-0ad79b201383', 0, 1, N'shahedagope', N'monshibari', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01776100310')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (93, N'db9a4faa-d425-4d76-ac35-0ad79b201383', 1, 0, N'shahedagope', N'monshibari', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01776100310')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (94, N'c752abd2-4ecb-4540-acfd-a9106f78f98b', 0, 1, N'shahedagope', N'kg school', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01825176488')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (95, N'c752abd2-4ecb-4540-acfd-a9106f78f98b', 1, 0, N'shahedagope', N'kg school', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01825176488')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (96, N'c6792365-6cbf-459e-9c86-d157b818720e', 0, 1, N'fff', N'fff', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'0552')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (97, N'c6792365-6cbf-459e-9c86-d157b818720e', 1, 0, N'fff', N'fff', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'0552')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (98, N'0dfa7d02-b5ac-4341-a932-bf82907b1a88', 0, 1, N'yhh', N'yh', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'555')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (99, N'0dfa7d02-b5ac-4341-a932-bf82907b1a88', 1, 0, N'yhh', N'yh', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'555')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (100, N'7ef837f2-460d-4378-839c-60b090c3c945', 0, 1, N'Shahedagop', N'Monsibari', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01818382426')
GO
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (101, N'7ef837f2-460d-4378-839c-60b090c3c945', 1, 0, N'Shahedagop', N'Monsibari', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01818382426')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (102, N'd35dac74-b1cd-4760-adfa-021616f86940', 0, 1, N'shahedagopr', N'uttorpara', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01814167990')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (103, N'd35dac74-b1cd-4760-adfa-021616f86940', 1, 0, N'shahedagopr', N'uttorpara', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01814167990')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (104, N'101c539d-ca1a-43a9-9933-c3311e68f98c', 0, 1, N'সাহেদাগোপ ', N'ঈদগার পাশের বাড়ি ', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01863069243')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (105, N'101c539d-ca1a-43a9-9933-c3311e68f98c', 1, 0, N'সাহেদাগোপ ', N'ঈদগার পাশের বাড়ি ', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01863069243')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (106, N'6320c076-e15e-4aac-bd31-61ba3b2e4f57', 0, 1, N'চার পাড়া ', N'হানিফ মিয়ার বাড়ি, নবিনগর বি বাড়িয়া', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01820203856')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (107, N'6320c076-e15e-4aac-bd31-61ba3b2e4f57', 1, 0, N'চার পাড়া ', N'হানিফ মিয়ার বাড়ি, নবিনগর বি বাড়িয়া', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01820203856')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (108, N'9e680424-2886-41ac-962d-ac50980cb9c5', 0, 1, N'charpara', N'charpara pak bangora nobinogor b-baria', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01820203856')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (109, N'9e680424-2886-41ac-962d-ac50980cb9c5', 1, 0, N'charpara', N'charpara pak bangora nobinogor b-baria', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01820203856')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (110, N'ed63cb20-b65d-4631-be34-368e5ece609c', 0, 1, N'charpara', N'charpara pak bangora nobinogor b-baria', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01820203856')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (111, N'ed63cb20-b65d-4631-be34-368e5ece609c', 1, 0, N'charpara', N'charpara pak bangora nobinogor b-baria', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01820203856')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (112, N'c69f17bb-80aa-47bc-b931-1556951bf89f', 0, 1, N'চার পারা, পাক বাংগরা, নবিনগর, বি-বারিয়া', N'হানিফ সরদারের বারি', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01820203856')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (113, N'c69f17bb-80aa-47bc-b931-1556951bf89f', 1, 0, N'চার পারা, পাক বাংগরা, নবিনগর, বি-বারিয়া', N'হানিফ সরদারের বারি', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01820203856')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (114, N'5809ec70-4937-4b24-b76a-2c7cc11f8fd4', 0, 1, N'পীর কাশিম পুর মুরাদনগর কুমিল্লা ', N'পীর কাশিম পুর মধ্যে পাড়া ভুইয়া বাড়ি', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01681512551')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (115, N'5809ec70-4937-4b24-b76a-2c7cc11f8fd4', 1, 0, N'পীর কাশিম পুর মুরাদনগর কুমিল্লা ', N'পীর কাশিম পুর মধ্যে পাড়া ভুইয়া বাড়ি', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01681512551')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (116, N'b284e217-1c05-431c-95d5-bdaf476b14ce', 0, 1, N'জাফরপুর', N'জাফরপুর মোল্লা বাড়ী', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01636546929')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (117, N'b284e217-1c05-431c-95d5-bdaf476b14ce', 1, 0, N'জাফরপুর', N'জাফরপুর মোল্লা বাড়ী', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01636546929')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (118, N'6c52b3e1-52e8-458a-a64c-2da1a329b2aa', 0, 1, N'sahedagup', N'mastar house', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01624982354')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (119, N'6c52b3e1-52e8-458a-a64c-2da1a329b2aa', 1, 0, N'sahedagup', N'mastar house', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01624982354')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (120, N'5740f537-0936-448c-a71b-d60589bedfb3', 0, 1, N'sahedagup', N'mijan sarker bari', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01817115584')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (121, N'5740f537-0936-448c-a71b-d60589bedfb3', 1, 0, N'sahedagup', N'mijan sarker bari', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01817115584')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (122, N'cc2f8e9a-8769-474f-b02b-3266ed82b020', 0, 1, N'sahedagup', N'munshi bari', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01624982354')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (123, N'cc2f8e9a-8769-474f-b02b-3266ed82b020', 1, 0, N'sahedagup', N'munshi bari', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01624982354')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (124, N'77b67ab0-46cb-458a-a5bf-0cdb88667158', 0, 1, N'sahedagup', N'purbo hati', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01624982354')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (125, N'77b67ab0-46cb-458a-a5bf-0cdb88667158', 1, 0, N'sahedagup', N'purbo hati', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01624982354')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (126, N'3be18885-dd58-4ae6-9932-4d4460c0349b', 0, 1, N'sahedagup', N'munshi bari', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01624982354')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (127, N'3be18885-dd58-4ae6-9932-4d4460c0349b', 1, 0, N'sahedagup', N'munshi bari', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01624982354')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (128, N'03d70ed3-a85c-4843-a3d3-c188d55506e3', 0, 1, N'সাহেদাগোপ', N'সাহেদাগোপ মাদ্রাসা', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01857442275')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (129, N'03d70ed3-a85c-4843-a3d3-c188d55506e3', 1, 0, N'সাহেদাগোপ', N'সাহেদাগোপ মাদ্রাসা', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01857442275')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (130, N'9ec8d55a-c10b-49f6-a95c-3b16143cc89e', 0, 1, N'জাংগাল', N'আনজুআরা বিলা।', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01827535687')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (131, N'9ec8d55a-c10b-49f6-a95c-3b16143cc89e', 1, 0, N'জাংগাল', N'আনজুআরা বিলা।', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01827535687')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (132, N'1ba73168-c815-428b-9ea8-7f3b0c863fd2', 0, 1, N'bangora', N'malo doctorer bari', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01837182183')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (133, N'1ba73168-c815-428b-9ea8-7f3b0c863fd2', 1, 0, N'bangora', N'malo doctorer bari', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01837182183')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (134, N'00f03c0b-a57e-4610-bda9-7a85d74d1de7', 0, 1, N'metanggor', N'metanggor .', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01725794146')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (135, N'00f03c0b-a57e-4610-bda9-7a85d74d1de7', 1, 0, N'metanggor', N'metanggor .', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01725794146')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (136, N'04379b9b-738b-442d-bb20-507620e466d7', 0, 1, N'পির কাসিমপুর', N'সরকার বাড়ী ', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01715874714')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (137, N'04379b9b-738b-442d-bb20-507620e466d7', 1, 0, N'পির কাসিমপুর', N'সরকার বাড়ী ', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01715874714')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (138, N'3567b92f-8b83-4786-99a4-540d850ac6d4', 0, 1, N'banggora ,nabinagr', N'borobari', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01938392215')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (139, N'3567b92f-8b83-4786-99a4-540d850ac6d4', 1, 0, N'banggora ,nabinagr', N'borobari', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01938392215')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (140, N'2e72f397-0623-4f20-af96-c23792f3ad3a', 0, 1, N'গাজীপুর ', N'বিল্লাল মেম্বারের বাড়ি', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01762309570')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (141, N'2e72f397-0623-4f20-af96-c23792f3ad3a', 1, 0, N'গাজীপুর ', N'বিল্লাল মেম্বারের বাড়ি', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01762309570')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (142, N'c451485b-96f7-4910-a5f6-bbca5558cae1', 0, 1, N'গাজীপুর', N'বিল্লাল মেম্বারের বাড়ি', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01762309570')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (143, N'c451485b-96f7-4910-a5f6-bbca5558cae1', 1, 0, N'গাজীপুর', N'বিল্লাল মেম্বারের বাড়ি', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01762309570')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (144, N'5000ba6e-89fd-456d-b405-adcd8c64583f', 0, 1, N'গাজীপুর', N'গ্রাম+পোস্ট : গাজীপুর, থানা বাঙ্গরা বাজার, জেলা কুমিল্লা', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01762250314')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (145, N'5000ba6e-89fd-456d-b405-adcd8c64583f', 1, 0, N'গাজীপুর', N'গ্রাম+পোস্ট : গাজীপুর, থানা বাঙ্গরা বাজার, জেলা কুমিল্লা', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01762250314')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (146, N'070ab6d9-9843-4e40-8e77-f0ad85821f9a', 0, 1, N'jaforpur', N'mollabari', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01931575482')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (147, N'070ab6d9-9843-4e40-8e77-f0ad85821f9a', 1, 0, N'jaforpur', N'mollabari', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01931575482')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (148, N'2e7698fa-5d23-4297-9373-fe776b655692', 0, 1, N'গাজিপুর', N'রাইয়ান ব্রাটিস stor', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01949915013')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (149, N'2e7698fa-5d23-4297-9373-fe776b655692', 1, 0, N'গাজিপুর', N'রাইয়ান ব্রাটিস stor', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01949915013')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (150, N'e5918a67-b694-4f4e-827e-7a87bf7f13c5', 0, 1, N'jangal', N'sumon vair vari', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01832505487')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (151, N'e5918a67-b694-4f4e-827e-7a87bf7f13c5', 1, 0, N'jangal', N'sumon vair vari', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01832505487')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (152, N'2ac2ce59-e5e7-4270-97be-4e72e284d148', 0, 1, N'হাজীপুর', N'ডঃ বাড়ি ', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01754351445')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (153, N'2ac2ce59-e5e7-4270-97be-4e72e284d148', 1, 0, N'হাজীপুর', N'ডঃ বাড়ি ', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01754351445')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (154, N'7e9428c6-2d8b-456e-b2ad-92751241ac12', 0, 1, N'House#18, Road#03', N'Sector#12', N'Dhaka', N'Dhaka', N'Uttara', N'Uttara Model Post Office', N'1216', N'01725620123')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (155, N'7e9428c6-2d8b-456e-b2ad-92751241ac12', 1, 0, N'Digi para-1', N'Madhail bazar-1', N'Rajshahi-1', N'Naogaon-1', N'Patnitala-1', N'Madhail Bazar-1', N'6561-1', N'01717623876-1')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (172, N'f77e5649-19aa-4381-a5bf-1e4a2bf1924a', 0, 1, N' teefyhgf', N'frfggdf', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'52346885443')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (173, N'f77e5649-19aa-4381-a5bf-1e4a2bf1924a', 1, 0, N' teefyhgf', N'frfggdf', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'52346885443')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (174, N'c4ad3c4a-fa11-4970-b1a5-28f072c47c03', 0, 1, N'সাহেদাগোপ', N'উত্তর পারা', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01931748087')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (175, N'c4ad3c4a-fa11-4970-b1a5-28f072c47c03', 1, 0, N'সাহেদাগোপ', N'উত্তর পারা', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01931748087')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (176, N'ca6f60eb-0f8b-4cfd-8e6c-308a3f2f65e2', 0, 1, N'test', N'test', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01851115865')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (177, N'ca6f60eb-0f8b-4cfd-8e6c-308a3f2f65e2', 1, 0, N'test', N'test', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01851115865')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (178, N'2c1cbe31-7e67-444a-9f1a-a6804c1b73b3', 0, 1, N'test', N'test', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01851115865')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (179, N'2c1cbe31-7e67-444a-9f1a-a6804c1b73b3', 1, 0, N'test', N'test', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01851115865')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (180, N'3163d034-4312-406a-bd99-34261bab2e7c', 0, 1, N'ttt', N'rrt', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'55555')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (181, N'3163d034-4312-406a-bd99-34261bab2e7c', 1, 0, N'ttt', N'rrt', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'55555')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (182, N'1f4b7c0b-fca2-4cbc-8b7e-87283ad9879c', 0, 1, N'ttt', N'rrt', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'55555')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (183, N'1f4b7c0b-fca2-4cbc-8b7e-87283ad9879c', 1, 0, N'ttt', N'rrt', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'55555')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (184, N'64019eac-1a62-49d4-9098-0670434131dc', 0, 1, N'gggg', N'ggg', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'08528')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (185, N'64019eac-1a62-49d4-9098-0670434131dc', 1, 0, N'gggg', N'ggg', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'08528')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (186, N'53bf01a1-8e26-4778-9753-1f671c0224b7', 0, 1, N'fgg', N'ggh', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'5555')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (187, N'53bf01a1-8e26-4778-9753-1f671c0224b7', 1, 0, N'fgg', N'ggh', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'5555')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (204, N'ce93b899-8b20-4b08-8a3f-fb5488bbbe1a', 0, 1, N'Haidarabad', N'Haque bari', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01765287368')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (205, N'ce93b899-8b20-4b08-8a3f-fb5488bbbe1a', 1, 0, N'Haidarabad', N'Haque bari', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01765287368')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (206, N'201332d6-c442-468b-a53b-d0b8912d827a', 0, 1, N'hfdd', N'xxcv', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'5808')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (207, N'201332d6-c442-468b-a53b-d0b8912d827a', 1, 0, N'hfdd', N'xxcv', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'5808')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (208, N'2a7e0a3f-86e7-4200-a5aa-9e689dc4e681', 0, 1, N'cc', N'ff', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'225885858')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (209, N'2a7e0a3f-86e7-4200-a5aa-9e689dc4e681', 1, 0, N'cc', N'ff', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'225885858')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (210, N'c173c8e9-4d94-4f25-b000-f4eeef93ac79', 0, 1, N'sreekaile', N'bepari bari', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01624982354')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (211, N'c173c8e9-4d94-4f25-b000-f4eeef93ac79', 1, 0, N'sreekaile', N'bepari bari', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01624982354')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (212, N'03609892-45a4-4ea7-9955-64f62b918b63', 0, 1, N'rasel', N'rasel', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01851115865')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (213, N'03609892-45a4-4ea7-9955-64f62b918b63', 1, 0, N'rasel', N'rasel', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01851115865')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (214, N'ba225dd0-42f8-4b93-9a94-877254d9612e', 0, 1, N'rasel', N'rasel', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01851115865')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (215, N'ba225dd0-42f8-4b93-9a94-877254d9612e', 1, 0, N'rasel', N'rasel', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01851115865')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (216, N'a4a98a76-0f31-48f1-856d-df01a7ff8659', 0, 1, N'test', N'test', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01851115865')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (217, N'a4a98a76-0f31-48f1-856d-df01a7ff8659', 1, 0, N'test', N'test', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01851115865')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (218, N'4fe28240-f42e-46a1-87af-56bca4b965b7', 0, 1, N'সাহেদা গোপ', N'সাহেদা গোপ নাজির হোসেন মিয়ার বাড়ি পন্চিম পাড়া ', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01852789655')
INSERT [dbo].[OrdersAddressTbl] ([Id], [OrderGuidId], [IsShipping], [IsBilling], [Address1], [Address2], [Division], [District], [Thana], [PostOffice], [PostCode], [MobileNumber]) VALUES (219, N'4fe28240-f42e-46a1-87af-56bca4b965b7', 1, 0, N'সাহেদা গোপ', N'সাহেদা গোপ নাজির হোসেন মিয়ার বাড়ি পন্চিম পাড়া ', N'not Given', N'not Given', N'not Given', N'not Given', N'not Given', N'01852789655')
SET IDENTITY_INSERT [dbo].[OrdersAddressTbl] OFF
SET IDENTITY_INSERT [dbo].[OrderShippingTbl] ON 

INSERT [dbo].[OrderShippingTbl] ([Id], [Name], [Note]) VALUES (1, N'Home Delivery', NULL)
INSERT [dbo].[OrderShippingTbl] ([Id], [Name], [Note]) VALUES (2, N'Office Pickup', NULL)
INSERT [dbo].[OrderShippingTbl] ([Id], [Name], [Note]) VALUES (3, N'Courier', NULL)
SET IDENTITY_INSERT [dbo].[OrderShippingTbl] OFF
SET IDENTITY_INSERT [dbo].[OrdersProductTbl] ON 

INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (62, N'ad6eeffd-f7ac-4dcd-8379-f8e4be941601', 1, N'Garlic', N'রসুন', 100, 95, 2, 190, N'Content/images/products/garlic.jpg', 0, 190, NULL, NULL, N'1.0000', NULL, NULL, NULL, 0, 0, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (63, N'ad6eeffd-f7ac-4dcd-8379-f8e4be941601', 2, N'Oven', N'ওভেন', 500, 400, 2, 800, N'Content/images/products/LG MC2886BRUM.jpg', 0, 800, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (64, N'7a2d730e-8a92-4993-a711-4bdcdd37e22a', 40, N'Harpic', N'হারপিক', 85, 80, 1, 80, N'Content/images/products/Harpic.jpg', 0, 80, NULL, NULL, N'১ বোতল', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (65, N'b281275d-8f0b-431f-87f9-b60caeb10333', 46, N'BM LP Gas', N'বি এম গ্যাস', 1000, 1000, 1, 1000, N'Content/images/products/bm lpg.jfif', 0, 1000, NULL, NULL, N'১২ কেজি', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (66, N'5709eda4-46cf-4a9a-88a3-2728cadaacd1', 46, N'BM LP Gas', N'বি এম গ্যাস', 1000, 1000, 1, 1000, N'Content/images/products/bm lpg.jfif', 0, 1000, NULL, NULL, N'১২ কেজি', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (67, N'd669147c-3ce3-4fa1-a201-8947c2290dd8', 45, N'Bashondara Gas', N'বসুন্ধরা', 980, 980, 1, 980, N'Content/images/products/bashundara.jfif', 0, 980, NULL, NULL, N'১২ কেজি', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (68, N'05cda10c-6cf3-4d79-bbe4-229ba6316a00', 10, N'Sugar', N'চিনি', 55, 52, 1, 52, N'http://shodypati.somee.com/Content/images/products/suger.jpg', 0, 52, NULL, NULL, N'১ কেজি', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (69, N'05cda10c-6cf3-4d79-bbe4-229ba6316a00', 51, N'wheel washing powder', N'হূইল ওয়াশিং পাউডার', 52, 50, 1, 50, N'Content/images/products/wheel 500g.jpg', 0, 50, NULL, NULL, N'৫০০ গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (70, N'05cda10c-6cf3-4d79-bbe4-229ba6316a00', 32, N'Shezan orange jelly', N'সেজান অরেন্জ জেলী', 120, 110, 1, 110, N'Content/images/products/Shezan orange jelly 440gm.jpeg', 0, 110, NULL, NULL, N'৪৪০গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (71, N'05cda10c-6cf3-4d79-bbe4-229ba6316a00', 12, N'onion indian', N'পিয়াজ ইন্ডিয়ান', 75, 72, 1, 72, N'http://shodypati.somee.com/Content/images/products/onion%20indian.jpg', 0, 72, NULL, NULL, N'১ কেজি', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (72, N'04436024-0cc8-4094-83f8-66442152e9a6', 48, N'Padama Gas ', N'পদ্মা-এলপি গ্যাস', 1000, 1000, 1, 1000, N'Content/images/products/padma.jfif', 0, 1000, NULL, NULL, N'১২ কেজি', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (73, N'04436024-0cc8-4094-83f8-66442152e9a6', 46, N'BM LP Gas', N'বি এম গ্যাস', 1000, 1000, 1, 1000, N'Content/images/products/bm lpg.jfif', 0, 1000, NULL, NULL, N'১২ কেজি', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (74, N'5f921c18-c906-4399-aa4b-371ff6c7faf4', 55, N'Cerelac-3', N'সেরেলাক-৩', 375, 370, 1, 370, N'Content/images/products/cerelac 3.jfif', 0, 370, NULL, NULL, N'৪০০ গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (75, N'7ef6f5e8-61ed-40e1-84ea-5d676e946ad4', 45, N'Bashondara Gas', N'বসুন্ধরা', 980, 980, 1, 980, N'Content/images/products/bashundara.jfif', 0, 980, NULL, NULL, N'১২ কেজি', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (76, N'7fbfb34b-7306-478f-9dd7-496a25e0ff15', 31, N'LUX', N'লাক্স', 42, 40, 3, 120, N'Content/images/products/lux Perfume 150gm-42tk.jpg', 0, 120, NULL, NULL, N'১৫০গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (77, N'7fbfb34b-7306-478f-9dd7-496a25e0ff15', 51, N'wheel washing powder', N'হূইল ওয়াশিং পাউডার', 52, 50, 1, 50, N'Content/images/products/wheel 500g.jpg', 0, 50, NULL, NULL, N'৫০০ গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (78, N'0079935c-f830-4fd9-be72-438385656cbe', 31, N'LUX', N'লাক্স', 42, 40, 3, 120, N'Content/images/products/lux Perfume 150gm-42tk.jpg', 0, 120, NULL, NULL, N'১৫০গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (79, N'0079935c-f830-4fd9-be72-438385656cbe', 51, N'wheel washing powder', N'হূইল ওয়াশিং পাউডার', 52, 50, 1, 50, N'Content/images/products/wheel 500g.jpg', 0, 50, NULL, NULL, N'৫০০ গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (80, N'ba9a7129-95ef-4807-be84-04b998cdb597', 10, N'Sugar', N'চিনি', 55, 52, 1, 52, N'Content/images/products/suger.jpg', 0, 52, NULL, NULL, N'১ কেজি', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (81, N'ba9a7129-95ef-4807-be84-04b998cdb597', 72, N'Vim', N'ভিম বার', 30, 30, 1, 30, N'Content/images/products/vim soap.jfif', 0, 30, NULL, NULL, N'৩২৫ গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (82, N'db9a4faa-d425-4d76-ac35-0ad79b201383', 31, N'LUX', N'লাক্স', 42, 40, 2, 80, N'Content/images/products/lux Perfume 150gm-42tk.jpg', 0, 80, NULL, NULL, N'১৫০গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (83, N'db9a4faa-d425-4d76-ac35-0ad79b201383', 92, N'Taaza', N'তাজা চা', 165, 162, 1, 162, N'Content/images/products/91001787/taza_h5wg-un_1.jpg', 0, 162, NULL, NULL, N'৪০০ গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (84, N'db9a4faa-d425-4d76-ac35-0ad79b201383', 6, N'Moshur Dal (Deshi)', N'মাসুরুর ডাল(দেশী)', 100, 95, 1, 95, N'Content/images/products/moshur-dal-deshi.jpg', 0, 95, NULL, NULL, NULL, NULL, NULL, NULL, 2, 2, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (85, N'db9a4faa-d425-4d76-ac35-0ad79b201383', 100, N'Bashondara Atta', N'বসুন্ধরা আটা', 35, 33, 5, 165, N'Content/images/products/46953193/bashundara atta.jfif', 0, 165, NULL, NULL, N'১ কেজি', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (86, N'db9a4faa-d425-4d76-ac35-0ad79b201383', 101, N'Rupchada oil', N'রূপচাঁদা সয়াবিন তেল', 216, 215, 1, 215, N'Content/images/products/19950203/rupchada 2.5 ltr.jfif', 0, 215, NULL, NULL, N'২ লিটার', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (87, N'db9a4faa-d425-4d76-ac35-0ad79b201383', 52, N'Total Gas', N'টোটাল গ্যাস', 1070, 1070, 1, 1070, N'Content/images/products/total gas.jfif', 0, 1070, NULL, NULL, N'১২ কেজি', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (88, N'db9a4faa-d425-4d76-ac35-0ad79b201383', 106, N'colgate active salt', N'কোলগেট', 120, 110, 1, 110, N'Content/images/products/33774989/colgate active salt.jfif', 0, 110, NULL, NULL, N'২০০ গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (89, N'c752abd2-4ecb-4540-acfd-a9106f78f98b', 103, N'sugar 50kg', N'চিনির বস্তা', 2700, 2600, 1, 2600, N'Content/images/products/53599136/Suger-BG20170429213437.jpg', 0, 2600, NULL, NULL, N'৫০ কেজি', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (90, N'c6792365-6cbf-459e-9c86-d157b818720e', 81, N'Rice polaw', N'চাষী চিনি গুড়া চাল', 125, 110, 2, 220, N'Content/images/products/chasi chinigura chawal.jfif', 0, 220, NULL, NULL, N'১ কেজি', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (91, N'c6792365-6cbf-459e-9c86-d157b818720e', 37, N'soybean oil', N'সয়াবিন তেল', 540, 520, 1, 520, N'Content/images/products/shoyabin oil 5L 540.jpg', 0, 520, NULL, NULL, N'৫ লিটার', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (92, N'c6792365-6cbf-459e-9c86-d157b818720e', 15, N'Gas Cylinder', N'গ্যাস', 950, 940, 3, 2820, N'Content/images/products/gas.jpg', 0, 2820, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (93, N'c6792365-6cbf-459e-9c86-d157b818720e', 99, N'Atta', N'খোলা আটা', 1350, 1250, 2, 2500, N'Content/images/products/17177027/atta50kg.jpg', 0, 2500, NULL, NULL, N'৫০ কেজি', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (94, N'0dfa7d02-b5ac-4341-a932-bf82907b1a88', 109, N'Minicat Dada', N'মিনিকেট দাদা', 3055, 3050, 1, 3050, N'Content/images/products/39427896/best quility.jfif', 0, 3050, NULL, NULL, N'৫০ কেজি', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (95, N'7ef837f2-460d-4378-839c-60b090c3c945', 47, N'Jamuna gas', N'যমুনা এলপি গ্যাস', 1000, 1000, 1, 1000, N'Content/images/products/Jamuna-Gas-cylinder-1.jpg', 0, 1000, NULL, NULL, N'১২ কেজি', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (96, N'd35dac74-b1cd-4760-adfa-021616f86940', 47, N'Jamuna gas', N'যমুনা এলপি গ্যাস', 1000, 1000, 1, 1000, N'Content/images/products/Jamuna-Gas-cylinder-1.jpg', 0, 1000, NULL, NULL, N'১২ কেজি', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (97, N'101c539d-ca1a-43a9-9933-c3311e68f98c', 8, N'Garlic deshi', N'আদা দেশী', 80, 75, 1, 75, N'Content/images/products/ginger%20DESHI.gif', 0, 75, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (98, N'101c539d-ca1a-43a9-9933-c3311e68f98c', 3, N'onion deshi', N'পিয়াজ দেশী', 50, 48, 2, 96, N'Content/images/products/onion%20deshi.jpg', 0, 96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (99, N'101c539d-ca1a-43a9-9933-c3311e68f98c', 1, N'Garlic', N'রসুন', 60, 58, 1, 58, N'Content/images/products/garlic.jpg', 0, 58, NULL, NULL, N'১ কেজি', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (100, N'101c539d-ca1a-43a9-9933-c3311e68f98c', 104, N'Closeup', N'ক্লোজ-আপ', 105, 100, 1, 100, N'Content/images/products/31768523/close up.jpg', 0, 100, NULL, NULL, N'১৪৫ গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (101, N'101c539d-ca1a-43a9-9933-c3311e68f98c', 83, N'Aci Pure salt', N'এসি আই পিওর লবণ', 35, 32, 1, 32, N'Content/images/products/aci pure salt.jfif', 0, 32, NULL, NULL, N'১ কেজি', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (102, N'101c539d-ca1a-43a9-9933-c3311e68f98c', 6, N'Moshur Dal (Deshi)', N'মাসুরুর ডাল(দেশী)', 100, 95, 1, 95, N'Content/images/products/moshur-dal-deshi.jpg', 0, 95, NULL, NULL, NULL, NULL, NULL, NULL, 2, 2, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (103, N'101c539d-ca1a-43a9-9933-c3311e68f98c', 51, N'wheel washing powder', N'হূইল ওয়াশিং পাউডার', 52, 50, 1, 50, N'Content/images/products/wheel 500g.jpg', 0, 50, NULL, NULL, N'৫০০ গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (104, N'101c539d-ca1a-43a9-9933-c3311e68f98c', 78, N'Parasuit coconut oil', N'প্যারাসুট তৈল', 110, 100, 1, 100, N'Content/images/products/parasuit oil.jfif', 0, 100, NULL, NULL, N'২০০মিলি.গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (105, N'101c539d-ca1a-43a9-9933-c3311e68f98c', 37, N'soybean oil', N'সয়াবিন তেল', 540, 520, 1, 520, N'Content/images/products/shoyabin oil 5L 540.jpg', 0, 520, NULL, NULL, N'৫ লিটার', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (106, N'6320c076-e15e-4aac-bd31-61ba3b2e4f57', 55, N'Cerelac-3', N'সেরেলাক-৩', 375, 370, 1, 370, N'Content/images/products/cerelac 3.jfif', 0, 370, NULL, NULL, N'৪০০ গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (107, N'6320c076-e15e-4aac-bd31-61ba3b2e4f57', 3, N'onion deshi', N'পিয়াজ দেশী', 50, 48, 3, 144, N'Content/images/products/onion%20deshi.jpg', 0, 144, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (108, N'6320c076-e15e-4aac-bd31-61ba3b2e4f57', 83, N'Aci Pure salt', N'এসি আই পিওর লবণ', 35, 32, 1, 32, N'Content/images/products/aci pure salt.jfif', 0, 32, NULL, NULL, N'১ কেজি', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (109, N'6320c076-e15e-4aac-bd31-61ba3b2e4f57', 72, N'Vim', N'ভিম বার', 30, 30, 1, 30, N'Content/images/products/vim soap.jfif', 0, 30, NULL, NULL, N'৩২৫ গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (110, N'6320c076-e15e-4aac-bd31-61ba3b2e4f57', 31, N'LUX', N'লাক্স', 42, 40, 1, 40, N'Content/images/products/lux Perfume 150gm-42tk.jpg', 0, 40, NULL, NULL, N'১৫০গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (111, N'9e680424-2886-41ac-962d-ac50980cb9c5', 55, N'Cerelac-3', N'সেরেলাক-৩', 375, 370, 1, 370, N'Content/images/products/cerelac 3.jfif', 0, 370, NULL, NULL, N'৪০০ গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (112, N'9e680424-2886-41ac-962d-ac50980cb9c5', 3, N'onion deshi', N'পিয়াজ দেশী', 50, 48, 3, 144, N'Content/images/products/onion%20deshi.jpg', 0, 144, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (113, N'9e680424-2886-41ac-962d-ac50980cb9c5', 83, N'Aci Pure salt', N'এসি আই পিওর লবণ', 35, 32, 1, 32, N'Content/images/products/aci pure salt.jfif', 0, 32, NULL, NULL, N'১ কেজি', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (114, N'9e680424-2886-41ac-962d-ac50980cb9c5', 72, N'Vim', N'ভিম বার', 30, 30, 1, 30, N'Content/images/products/vim soap.jfif', 0, 30, NULL, NULL, N'৩২৫ গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (115, N'9e680424-2886-41ac-962d-ac50980cb9c5', 31, N'LUX', N'লাক্স', 42, 40, 1, 40, N'Content/images/products/lux Perfume 150gm-42tk.jpg', 0, 40, NULL, NULL, N'১৫০গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (116, N'ed63cb20-b65d-4631-be34-368e5ece609c', 55, N'Cerelac-3', N'সেরেলাক-৩', 375, 370, 1, 370, N'Content/images/products/cerelac 3.jfif', 0, 370, NULL, NULL, N'৪০০ গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (117, N'ed63cb20-b65d-4631-be34-368e5ece609c', 3, N'onion deshi', N'পিয়াজ দেশী', 50, 48, 3, 144, N'Content/images/products/onion%20deshi.jpg', 0, 144, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (118, N'ed63cb20-b65d-4631-be34-368e5ece609c', 83, N'Aci Pure salt', N'এসি আই পিওর লবণ', 35, 32, 1, 32, N'Content/images/products/aci pure salt.jfif', 0, 32, NULL, NULL, N'১ কেজি', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (119, N'ed63cb20-b65d-4631-be34-368e5ece609c', 72, N'Vim', N'ভিম বার', 30, 30, 1, 30, N'Content/images/products/vim soap.jfif', 0, 30, NULL, NULL, N'৩২৫ গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (120, N'ed63cb20-b65d-4631-be34-368e5ece609c', 31, N'LUX', N'লাক্স', 42, 40, 1, 40, N'Content/images/products/lux Perfume 150gm-42tk.jpg', 0, 40, NULL, NULL, N'১৫০গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (121, N'c69f17bb-80aa-47bc-b931-1556951bf89f', 55, N'Cerelac-3', N'সেরেলাক-৩', 375, 370, 1, 370, N'Content/images/products/cerelac 3.jfif', 0, 370, NULL, NULL, N'৪০০ গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (122, N'c69f17bb-80aa-47bc-b931-1556951bf89f', 3, N'onion deshi', N'পিয়াজ দেশী', 50, 48, 3, 144, N'Content/images/products/onion%20deshi.jpg', 0, 144, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (123, N'c69f17bb-80aa-47bc-b931-1556951bf89f', 83, N'Aci Pure salt', N'এসি আই পিওর লবণ', 35, 32, 3, 96, N'Content/images/products/aci pure salt.jfif', 0, 96, NULL, NULL, N'১ কেজি', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (124, N'c69f17bb-80aa-47bc-b931-1556951bf89f', 72, N'Vim', N'ভিম বার', 30, 30, 2, 60, N'Content/images/products/vim soap.jfif', 0, 60, NULL, NULL, N'৩২৫ গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (125, N'c69f17bb-80aa-47bc-b931-1556951bf89f', 31, N'LUX', N'লাক্স', 42, 40, 3, 120, N'Content/images/products/lux Perfume 150gm-42tk.jpg', 0, 120, NULL, NULL, N'১৫০গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (126, N'c69f17bb-80aa-47bc-b931-1556951bf89f', 91, N'Taaza', N'তাজা চা', 85, 82, 1, 82, N'Content/images/products/76957472/taza_h5wg-un_1.jpg', 0, 82, NULL, NULL, N'২০০ গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (127, N'c69f17bb-80aa-47bc-b931-1556951bf89f', 105, N'Closeup-Medium', N'ক্লোজ-আপ(মিডিয়াম)', 78, 75, 1, 75, N'Content/images/products/4816270/close up.jpg', 0, 75, NULL, NULL, N'১০০ গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (128, N'c69f17bb-80aa-47bc-b931-1556951bf89f', 39, N'Dove', N'ডাব', 95, 90, 1, 90, N'Content/images/products/Dove.jpg', 0, 90, NULL, NULL, N'১৩৫ গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (129, N'5809ec70-4937-4b24-b76a-2c7cc11f8fd4', 106, N'colgate active salt', N'কোলগেট', 120, 110, 1, 110, N'Content/images/products/33774989/colgate active salt.jfif', 0, 110, NULL, NULL, N'২০০ গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (130, N'b284e217-1c05-431c-95d5-bdaf476b14ce', 69, N'Jewellery-1', N'গোল্ড প্লেটেড নেকলেস উইথ ম্যাচিং ইয়ার রিং', 5500, 5000, 1, 5000, N'Content/images/products/jL.jpg', 0, 5000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (131, N'6c52b3e1-52e8-458a-a64c-2da1a329b2aa', 45, N'Bashondara Gas', N'বসুন্ধরা', 980, 980, 2, 1960, N'Content/images/products/bashundara.jfif', 0, 1960, NULL, NULL, N'১২ কেজি', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (132, N'6c52b3e1-52e8-458a-a64c-2da1a329b2aa', 52, N'Total Gas', N'টোটাল গ্যাস', 1070, 1070, 2, 2140, N'Content/images/products/total gas.jfif', 0, 2140, NULL, NULL, N'১২ কেজি', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (133, N'5740f537-0936-448c-a71b-d60589bedfb3', 52, N'Total Gas', N'টোটাল গ্যাস', 1070, 1070, 1, 1070, N'Content/images/products/total gas.jfif', 0, 1070, NULL, NULL, N'১২ কেজি', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (134, N'cc2f8e9a-8769-474f-b02b-3266ed82b020', 52, N'Total Gas', N'টোটাল গ্যাস', 1070, 1070, 1, 1070, N'Content/images/products/total gas.jfif', 0, 1070, NULL, NULL, N'১২ কেজি', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (135, N'77b67ab0-46cb-458a-a5bf-0cdb88667158', 45, N'Bashondara Gas', N'বসুন্ধরা', 980, 980, 1, 980, N'Content/images/products/bashundara.jfif', 0, 980, NULL, NULL, N'১২ কেজি', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (136, N'3be18885-dd58-4ae6-9932-4d4460c0349b', 46, N'BM LP Gas', N'বি এম গ্যাস', 1000, 1000, 1, 1000, N'Content/images/products/bm lpg.jfif', 0, 1000, NULL, NULL, N'১২ কেজি', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (137, N'3be18885-dd58-4ae6-9932-4d4460c0349b', 3, N'onion deshi', N'পিয়াজ দেশী', 50, 48, 2, 96, N'Content/images/products/onion%20deshi.jpg', 0, 96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (138, N'3be18885-dd58-4ae6-9932-4d4460c0349b', 12, N'onion indian', N'পিয়াজ ইন্ডিয়ান', 75, 72, 1, 72, N'Content/images/products/onion%20indian.jpg', 0, 72, NULL, NULL, N'১ কেজি', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (139, N'3be18885-dd58-4ae6-9932-4d4460c0349b', 91, N'Taaza', N'তাজা চা', 85, 82, 1, 82, N'Content/images/products/76957472/taza_h5wg-un_1.jpg', 0, 82, NULL, NULL, N'২০০ গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (140, N'3be18885-dd58-4ae6-9932-4d4460c0349b', 106, N'colgate active salt', N'কোলগেট', 120, 110, 1, 110, N'Content/images/products/33774989/colgate active salt.jfif', 0, 110, NULL, NULL, N'২০০ গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (141, N'3be18885-dd58-4ae6-9932-4d4460c0349b', 70, N'Harpic', N'হারপিক', 115, 110, 1, 110, N'Content/images/products/harpic.jfif', 0, 110, NULL, NULL, N'750gm', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (142, N'3be18885-dd58-4ae6-9932-4d4460c0349b', 71, N'rin power white', N'রিন পাওয়ার হোয়াইট', 52, 48, 1, 48, N'Content/images/products/rin power white.jfif', 0, 48, NULL, NULL, N'৫০০ গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (143, N'3be18885-dd58-4ae6-9932-4d4460c0349b', 51, N'wheel washing powder', N'হূইল ওয়াশিং পাউডার', 52, 50, 2, 100, N'Content/images/products/wheel 500g.jpg', 0, 100, NULL, NULL, N'৫০০ গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (144, N'3be18885-dd58-4ae6-9932-4d4460c0349b', 73, N'vim ', N'ভিম লিকুইড', 80, 78, 1, 78, N'Content/images/products/vim lique.jfif', 0, 78, NULL, NULL, N'২৫০মিলি.গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (145, N'3be18885-dd58-4ae6-9932-4d4460c0349b', 37, N'soybean oil', N'সয়াবিন তেল', 540, 520, 2, 1040, N'Content/images/products/shoyabin oil 5L 540.jpg', 0, 1040, NULL, NULL, N'৫ লিটার', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (146, N'3be18885-dd58-4ae6-9932-4d4460c0349b', 10, N'Sugar', N'চিনি', 55, 52, 2, 104, N'Content/images/products/suger.jpg', 0, 104, NULL, NULL, N'১ কেজি', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (147, N'3be18885-dd58-4ae6-9932-4d4460c0349b', 96, N'Fresh Milk', N'ফ্রেশ দুধ', 215, 210, 1, 210, N'Content/images/products/8717966/fresh milk400gm.jpeg', 0, 210, NULL, NULL, N'৪০০ গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (148, N'3be18885-dd58-4ae6-9932-4d4460c0349b', 6, N'Moshur Dal (Deshi)', N'মাসুরুর ডাল(দেশী)', 100, 95, 1, 95, N'Content/images/products/moshur-dal-deshi.jpg', 0, 95, NULL, NULL, NULL, NULL, NULL, NULL, 2, 2, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (149, N'3be18885-dd58-4ae6-9932-4d4460c0349b', 99, N'Atta', N'খোলা আটা', 1350, 1250, 15, 18750, N'Content/images/products/17177027/atta50kg.jpg', 0, 18750, NULL, NULL, N'৫০ কেজি', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (150, N'03d70ed3-a85c-4843-a3d3-c188d55506e3', 47, N'Jamuna gas', N'যমুনা এলপি গ্যাস', 1000, 1000, 1, 1000, N'Content/images/products/Jamuna-Gas-cylinder-1.jpg', 0, 1000, NULL, NULL, N'১২ কেজি', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (151, N'9ec8d55a-c10b-49f6-a95c-3b16143cc89e', 45, N'Bashondara Gas', N'বসুন্ধরা', 980, 980, 1, 980, N'Content/images/products/bashundara.jfif', 0, 980, NULL, NULL, N'১২ কেজি', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (152, N'1ba73168-c815-428b-9ea8-7f3b0c863fd2', 46, N'BM LP Gas', N'বি এম গ্যাস', 1000, 1000, 1, 1000, N'Content/images/products/bm lpg.jfif', 0, 1000, NULL, NULL, N'১২ কেজি', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (153, N'00f03c0b-a57e-4610-bda9-7a85d74d1de7', 99, N'Atta', N'খোলা আটা', 1350, 1250, 1, 1250, N'Content/images/products/17177027/atta50kg.jpg', 0, 1250, NULL, NULL, N'৫০ কেজি', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (154, N'04379b9b-738b-442d-bb20-507620e466d7', 47, N'Jamuna gas', N'যমুনা এলপি গ্যাস', 1000, 1000, 1, 1000, N'Content/images/products/Jamuna-Gas-cylinder-1.jpg', 0, 1000, NULL, NULL, N'১২ কেজি', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (155, N'3567b92f-8b83-4786-99a4-540d850ac6d4', 47, N'Jamuna gas', N'যমুনা এলপি গ্যাস', 1000, 1000, 1, 1000, N'Content/images/products/Jamuna-Gas-cylinder-1.jpg', 0, 1000, NULL, NULL, N'১২ কেজি', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (156, N'2e72f397-0623-4f20-af96-c23792f3ad3a', 83, N'Aci Pure salt', N'এসি আই পিওর লবণ', 35, 32, 4, 128, N'Content/images/products/aci pure salt.jfif', 0, 128, NULL, NULL, N'১ কেজি', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (157, N'c451485b-96f7-4910-a5f6-bbca5558cae1', 3, N'onion deshi', N'পিয়াজ দেশী', 50, 48, 2, 96, N'Content/images/products/onion%20deshi.jpg', 0, 96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (158, N'5000ba6e-89fd-456d-b405-adcd8c64583f', 10, N'Sugar', N'চিনি', 55, 52, 1, 52, N'Content/images/products/suger.jpg', 0, 52, NULL, NULL, N'১ কেজি', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (159, N'070ab6d9-9843-4e40-8e77-f0ad85821f9a', 110, N'Atash Chikon', N'আটাশ-চিকন', 2310, 2300, 1, 2300, N'Content/images/products/69584061/images.jfif', 0, 2300, NULL, NULL, N'৫০ কেজি', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (160, N'070ab6d9-9843-4e40-8e77-f0ad85821f9a', 45, N'Bashondara Gas', N'বসুন্ধরা', 980, 980, 1, 980, N'Content/images/products/bashundara.jfif', 0, 980, NULL, NULL, N'১২ কেজি', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (161, N'2e7698fa-5d23-4297-9373-fe776b655692', 3, N'onion deshi', N'পিয়াজ দেশী', 50, 48, 40, 1920, N'Content/images/products/onion%20deshi.jpg', 0, 1920, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (162, N'e5918a67-b694-4f4e-827e-7a87bf7f13c5', 45, N'Bashondara Gas', N'বসুন্ধরা', 980, 980, 1, 980, N'Content/images/products/bashundara.jfif', 0, 980, NULL, NULL, N'১২ কেজি', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (163, N'2ac2ce59-e5e7-4270-97be-4e72e284d148', 39, N'Dove', N'ডাব', 95, 90, 1, 90, N'Content/images/products/Dove.jpg', 0, 90, NULL, NULL, N'১৩৫ গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (164, N'7e9428c6-2d8b-456e-b2ad-92751241ac12', 1, N'Garlic', N'রসুন', 60, 58, 2, 116, N'Content/images/products/garlic.jpg', 0, 116, NULL, NULL, N'১ কেজি', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (165, N'7e9428c6-2d8b-456e-b2ad-92751241ac12', 2, N'Oven', N'ওভেন', 0, 0, 2, 0, N'Content/images/products/LG%20MC2886BRUM.jpg', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (182, N'f77e5649-19aa-4381-a5bf-1e4a2bf1924a', 45, N'Bashondara Gas', N'বসুন্ধরা', 980, 980, 1, 980, N'Content/images/products/bashundara.jfif', 0, 980, NULL, NULL, N'১২ কেজি', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (183, N'c4ad3c4a-fa11-4970-b1a5-28f072c47c03', 47, N'Jamuna gas', N'যমুনা এলপি গ্যাস', 1000, 1000, 1, 1000, N'Content/images/products/Jamuna-Gas-cylinder-1.jpg', 0, 1000, NULL, NULL, N'১২ কেজি', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (184, N'ca6f60eb-0f8b-4cfd-8e6c-308a3f2f65e2', 104, N'Closeup', N'ক্লোজ-আপ', 105, 100, 1, 100, N'Content/images/products/31768523/close up.jpg', 0, 100, NULL, NULL, N'১৪৫ গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (185, N'2c1cbe31-7e67-444a-9f1a-a6804c1b73b3', 104, N'Closeup', N'ক্লোজ-আপ', 105, 100, 1, 100, N'Content/images/products/31768523/close up.jpg', 0, 100, NULL, NULL, N'১৪৫ গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (186, N'3163d034-4312-406a-bd99-34261bab2e7c', 104, N'Closeup', N'ক্লোজ-আপ', 105, 100, 1, 100, N'Content/images/products/31768523/close up.jpg', 0, 100, NULL, NULL, N'১৪৫ গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (187, N'1f4b7c0b-fca2-4cbc-8b7e-87283ad9879c', 104, N'Closeup', N'ক্লোজ-আপ', 105, 100, 1, 100, N'Content/images/products/31768523/close up.jpg', 0, 100, NULL, NULL, N'১৪৫ গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (188, N'64019eac-1a62-49d4-9098-0670434131dc', 104, N'Closeup', N'ক্লোজ-আপ', 105, 100, 1, 100, N'Content/images/products/31768523/close up.jpg', 0, 100, NULL, NULL, N'১৪৫ গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (189, N'53bf01a1-8e26-4778-9753-1f671c0224b7', 37, N'soybean oil', N'সয়াবিন তেল', 540, 520, 1, 520, N'Content/images/products/shoyabin oil 5L 540.jpg', 0, 520, NULL, NULL, N'৫ লিটার', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (206, N'ce93b899-8b20-4b08-8a3f-fb5488bbbe1a', 47, N'Jamuna gas', N'যমুনা এলপি গ্যাস', 1000, 1000, 2, 2000, N'Content/images/products/Jamuna-Gas-cylinder-1.jpg', 0, 2000, NULL, NULL, N'১২ কেজি', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (207, N'201332d6-c442-468b-a53b-d0b8912d827a', 106, N'colgate active salt', N'কোলগেট', 120, 110, 1, 110, N'Content/images/products/33774989/colgate active salt.jfif', 0, 110, NULL, NULL, N'২০০ গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (208, N'2a7e0a3f-86e7-4200-a5aa-9e689dc4e681', 69, N'Jewellery-1', N'গোল্ড প্লেটেড নেকলেস উইথ ম্যাচিং ইয়ার রিং', 5500, 5000, 4, 20000, N'Content/images/products/jL.jpg', 0, 20000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (209, N'c173c8e9-4d94-4f25-b000-f4eeef93ac79', 46, N'BM LP Gas', N'বি এম গ্যাস', 1000, 1000, 1, 1000, N'Content/images/products/bm lpg.jfif', 0, 1000, NULL, NULL, N'১২ কেজি', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (210, N'c173c8e9-4d94-4f25-b000-f4eeef93ac79', 3, N'onion deshi', N'পিয়াজ দেশী', 50, 48, 2, 96, N'Content/images/products/onion%20deshi.jpg', 0, 96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (211, N'c173c8e9-4d94-4f25-b000-f4eeef93ac79', 12, N'onion indian', N'পিয়াজ ইন্ডিয়ান', 65, 60, 1, 60, N'Content/images/products/onion%20indian.jpg', 0, 60, NULL, NULL, N'১ কেজি', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (212, N'c173c8e9-4d94-4f25-b000-f4eeef93ac79', 91, N'Taaza', N'তাজা চা', 85, 82, 1, 82, N'Content/images/products/76957472/taza_h5wg-un_1.jpg', 0, 82, NULL, NULL, N'২০০ গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (213, N'c173c8e9-4d94-4f25-b000-f4eeef93ac79', 106, N'colgate active salt', N'কোলগেট', 120, 110, 1, 110, N'Content/images/products/33774989/colgate active salt.jfif', 0, 110, NULL, NULL, N'২০০ গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (214, N'c173c8e9-4d94-4f25-b000-f4eeef93ac79', 70, N'Harpic', N'হারপিক', 115, 110, 1, 110, N'Content/images/products/harpic.jfif', 0, 110, NULL, NULL, N'750gm', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (215, N'c173c8e9-4d94-4f25-b000-f4eeef93ac79', 71, N'rin power white', N'রিন পাওয়ার হোয়াইট', 52, 48, 1, 48, N'Content/images/products/rin power white.jfif', 0, 48, NULL, NULL, N'৫০০ গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (216, N'c173c8e9-4d94-4f25-b000-f4eeef93ac79', 51, N'wheel washing powder', N'হূইল ওয়াশিং পাউডার', 52, 50, 1, 50, N'Content/images/products/wheel 500g.jpg', 0, 50, NULL, NULL, N'৫০০ গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (217, N'c173c8e9-4d94-4f25-b000-f4eeef93ac79', 73, N'vim ', N'ভিম লিকুইড', 80, 78, 1, 78, N'Content/images/products/vim lique.jfif', 0, 78, NULL, NULL, N'২৫০মিলি.গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (218, N'c173c8e9-4d94-4f25-b000-f4eeef93ac79', 37, N'soybean oil', N'সয়াবিন তেল', 540, 520, 2, 1040, N'Content/images/products/shoyabin oil 5L 540.jpg', 0, 1040, NULL, NULL, N'৫ লিটার', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (219, N'c173c8e9-4d94-4f25-b000-f4eeef93ac79', 10, N'Sugar', N'চিনি', 55, 52, 2, 104, N'Content/images/products/suger.jpg', 0, 104, NULL, NULL, N'১ কেজি', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (220, N'c173c8e9-4d94-4f25-b000-f4eeef93ac79', 96, N'Fresh Milk', N'ফ্রেশ দুধ', 215, 210, 1, 210, N'Content/images/products/8717966/fresh milk400gm.jpeg', 0, 210, NULL, NULL, N'৪০০ গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (221, N'c173c8e9-4d94-4f25-b000-f4eeef93ac79', 6, N'Moshur Dal (Deshi)', N'মাসুরুর ডাল(দেশী)', 100, 95, 1, 95, N'Content/images/products/moshur-dal-deshi.jpg', 0, 95, NULL, NULL, NULL, NULL, NULL, NULL, 2, 2, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (222, N'c173c8e9-4d94-4f25-b000-f4eeef93ac79', 99, N'Atta', N'খোলা আটা', 1350, 1250, 2, 2500, N'Content/images/products/17177027/atta50kg.jpg', 0, 2500, NULL, NULL, N'৫০ কেজি', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (223, N'03609892-45a4-4ea7-9955-64f62b918b63', 37, N'soybean oil', N'সয়াবিন তেল', 540, 520, 18, 9360, N'Content/images/products/shoyabin oil 5L 540.jpg', 0, 9360, NULL, NULL, N'৫ লিটার', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (224, N'03609892-45a4-4ea7-9955-64f62b918b63', 43, N'premier cement', N'প্রিমিয়ার সিমেন্ট', 400, 390, 3, 1170, N'Content/images/products/bag.png', 0, 1170, NULL, NULL, N'১ ব্যাগ', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (225, N'03609892-45a4-4ea7-9955-64f62b918b63', 108, N'sensodyne', N'সেনসুডাইন', 195, 185, 1, 185, N'Content/images/products/77220882/sensodyne.jfif', 0, 185, NULL, NULL, N'৭০গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (226, N'ba225dd0-42f8-4b93-9a94-877254d9612e', 37, N'soybean oil', N'সয়াবিন তেল', 540, 520, 2, 1040, N'Content/images/products/shoyabin oil 5L 540.jpg', 0, 1040, NULL, NULL, N'৫ লিটার', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (227, N'a4a98a76-0f31-48f1-856d-df01a7ff8659', 102, N'shodagor oil', N'সওদাগর সয়াবিন তেল', 500, 490, 4, 1960, N'Content/images/products/1459583/shodagor oil.jpg', 0, 1960, NULL, NULL, N'৫লিটার', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (228, N'a4a98a76-0f31-48f1-856d-df01a7ff8659', 101, N'Rupchada oil', N'রূপচাঁদা সয়াবিন তেল', 216, 215, 1, 215, N'Content/images/products/19950203/rupchada 2.5 ltr.jfif', 0, 215, NULL, NULL, N'২ লিটার', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrdersProductTbl] ([Id], [OrderGuidId], [ProductId], [ProductName_English], [ProductName_Bangla], [UnitPrice], [OfferPrice], [Quantity], [TotalPrice], [MainImagePath], [Discount], [TotalPriceAfterDiscount], [Size], [Color], [Weight], [Length], [Width], [Height], [BrandId], [MerchantId], [Note]) VALUES (229, N'4fe28240-f42e-46a1-87af-56bca4b965b7', 101, N'Rupchada oil', N'রূপচাঁদা সয়াবিন তেল', 216, 215, 1, 215, N'Content/images/products/19950203/rupchada 2.5 ltr.jfif', 0, 215, NULL, NULL, N'২ লিটার', NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[OrdersProductTbl] OFF
SET IDENTITY_INSERT [dbo].[OrderStatusTbl] ON 

INSERT [dbo].[OrderStatusTbl] ([Id], [Name], [DefaultStatus]) VALUES (1, N'Pending', 1)
INSERT [dbo].[OrderStatusTbl] ([Id], [Name], [DefaultStatus]) VALUES (2, N'Processing', 0)
INSERT [dbo].[OrderStatusTbl] ([Id], [Name], [DefaultStatus]) VALUES (3, N'Processed', 0)
INSERT [dbo].[OrderStatusTbl] ([Id], [Name], [DefaultStatus]) VALUES (4, N'Shipped', 0)
INSERT [dbo].[OrderStatusTbl] ([Id], [Name], [DefaultStatus]) VALUES (5, N'Refunded', 0)
INSERT [dbo].[OrderStatusTbl] ([Id], [Name], [DefaultStatus]) VALUES (6, N'Failed', 0)
INSERT [dbo].[OrderStatusTbl] ([Id], [Name], [DefaultStatus]) VALUES (7, N'Expired', 0)
INSERT [dbo].[OrderStatusTbl] ([Id], [Name], [DefaultStatus]) VALUES (8, N'Complete', 0)
INSERT [dbo].[OrderStatusTbl] ([Id], [Name], [DefaultStatus]) VALUES (9, N'Canceled', 0)
SET IDENTITY_INSERT [dbo].[OrderStatusTbl] OFF
SET IDENTITY_INSERT [dbo].[OrdersTbl] ON 

INSERT [dbo].[OrdersTbl] ([Id], [GuidId], [CustomerId], [OrderStatusId], [OrderStatus], [ShippingMethodId], [ShippingMethod], [TotalProductPrice], [ShippingPrice], [TotalPriceAfterShipping], [OrderDiscountPrice], [TotalPriceAfterShippingAndDiscount], [PaymentMethodId], [PaymentMethod], [OrderDate], [ShippingDate], [BillingDate], [PickUpInStore], [PaymentStatus], [PaymentStatusId], [Active], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (36, N'ad6eeffd-f7ac-4dcd-8379-f8e4be941601', N'c76c5ba2-d1b0-49e7-afb0-8ae21b287b0c', 1, N'Pending', 1, N'Home Delivery', 990, 100, 1090, 25, 1065, 1, N'Bkash', CAST(N'2017-12-16T04:54:31.6675000' AS DateTime2), NULL, NULL, 0, N'InComplete', 1, 1, CAST(N'2017-12-16T04:54:31.6675000' AS DateTime2), CAST(N'2017-12-16T04:54:31.6675000' AS DateTime2))
INSERT [dbo].[OrdersTbl] ([Id], [GuidId], [CustomerId], [OrderStatusId], [OrderStatus], [ShippingMethodId], [ShippingMethod], [TotalProductPrice], [ShippingPrice], [TotalPriceAfterShipping], [OrderDiscountPrice], [TotalPriceAfterShippingAndDiscount], [PaymentMethodId], [PaymentMethod], [OrderDate], [ShippingDate], [BillingDate], [PickUpInStore], [PaymentStatus], [PaymentStatusId], [Active], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (37, N'7a2d730e-8a92-4993-a711-4bdcdd37e22a', N'bbd59a68-7d93-4311-80bf-9a5a5f3abcf7', 1, N'Pending', 1, N'Home Delivery', 80, 0, 80, 0, 80, 1, N'Bkash', CAST(N'2017-12-17T03:16:00.8388750' AS DateTime2), NULL, NULL, 0, N'InComplete', 1, 1, CAST(N'2017-12-17T03:16:00.8388750' AS DateTime2), CAST(N'2017-12-17T03:16:00.8388750' AS DateTime2))
INSERT [dbo].[OrdersTbl] ([Id], [GuidId], [CustomerId], [OrderStatusId], [OrderStatus], [ShippingMethodId], [ShippingMethod], [TotalProductPrice], [ShippingPrice], [TotalPriceAfterShipping], [OrderDiscountPrice], [TotalPriceAfterShippingAndDiscount], [PaymentMethodId], [PaymentMethod], [OrderDate], [ShippingDate], [BillingDate], [PickUpInStore], [PaymentStatus], [PaymentStatusId], [Active], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (38, N'b281275d-8f0b-431f-87f9-b60caeb10333', N'bbd59a68-7d93-4311-80bf-9a5a5f3abcf7', 1, N'Pending', 1, N'Home Delivery', 1000, 0, 1000, 0, 1000, 1, N'Bkash', CAST(N'2017-12-18T03:10:17.1826250' AS DateTime2), NULL, NULL, 0, N'InComplete', 1, 1, CAST(N'2017-12-18T03:10:17.1826250' AS DateTime2), CAST(N'2017-12-18T03:10:17.1826250' AS DateTime2))
INSERT [dbo].[OrdersTbl] ([Id], [GuidId], [CustomerId], [OrderStatusId], [OrderStatus], [ShippingMethodId], [ShippingMethod], [TotalProductPrice], [ShippingPrice], [TotalPriceAfterShipping], [OrderDiscountPrice], [TotalPriceAfterShippingAndDiscount], [PaymentMethodId], [PaymentMethod], [OrderDate], [ShippingDate], [BillingDate], [PickUpInStore], [PaymentStatus], [PaymentStatusId], [Active], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (39, N'5709eda4-46cf-4a9a-88a3-2728cadaacd1', N'bbd59a68-7d93-4311-80bf-9a5a5f3abcf7', 1, N'Pending', 1, N'Home Delivery', 1000, 0, 1000, 0, 1000, 1, N'Bkash', CAST(N'2017-12-18T03:16:47.5732500' AS DateTime2), NULL, NULL, 0, N'InComplete', 1, 1, CAST(N'2017-12-18T03:16:47.5732500' AS DateTime2), CAST(N'2017-12-18T03:16:47.5732500' AS DateTime2))
INSERT [dbo].[OrdersTbl] ([Id], [GuidId], [CustomerId], [OrderStatusId], [OrderStatus], [ShippingMethodId], [ShippingMethod], [TotalProductPrice], [ShippingPrice], [TotalPriceAfterShipping], [OrderDiscountPrice], [TotalPriceAfterShippingAndDiscount], [PaymentMethodId], [PaymentMethod], [OrderDate], [ShippingDate], [BillingDate], [PickUpInStore], [PaymentStatus], [PaymentStatusId], [Active], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (40, N'd669147c-3ce3-4fa1-a201-8947c2290dd8', N'8e9aa5ac-aa4d-4cb2-95b8-77d423f8d121', 1, N'Pending', 1, N'Home Delivery', 980, 0, 980, 0, 980, 1, N'Bkash', CAST(N'2017-12-18T03:50:27.9795000' AS DateTime2), NULL, NULL, 0, N'InComplete', 1, 1, CAST(N'2017-12-18T03:50:27.9795000' AS DateTime2), CAST(N'2017-12-18T03:50:27.9795000' AS DateTime2))
INSERT [dbo].[OrdersTbl] ([Id], [GuidId], [CustomerId], [OrderStatusId], [OrderStatus], [ShippingMethodId], [ShippingMethod], [TotalProductPrice], [ShippingPrice], [TotalPriceAfterShipping], [OrderDiscountPrice], [TotalPriceAfterShippingAndDiscount], [PaymentMethodId], [PaymentMethod], [OrderDate], [ShippingDate], [BillingDate], [PickUpInStore], [PaymentStatus], [PaymentStatusId], [Active], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (41, N'05cda10c-6cf3-4d79-bbe4-229ba6316a00', N'bbd59a68-7d93-4311-80bf-9a5a5f3abcf7', 1, N'Pending', 1, N'Home Delivery', 284, 0, 284, 0, 284, 1, N'Bkash', CAST(N'2017-12-18T06:11:14.3701250' AS DateTime2), NULL, NULL, 0, N'InComplete', 1, 1, CAST(N'2017-12-18T06:11:14.3701250' AS DateTime2), CAST(N'2017-12-18T06:11:14.3701250' AS DateTime2))
INSERT [dbo].[OrdersTbl] ([Id], [GuidId], [CustomerId], [OrderStatusId], [OrderStatus], [ShippingMethodId], [ShippingMethod], [TotalProductPrice], [ShippingPrice], [TotalPriceAfterShipping], [OrderDiscountPrice], [TotalPriceAfterShippingAndDiscount], [PaymentMethodId], [PaymentMethod], [OrderDate], [ShippingDate], [BillingDate], [PickUpInStore], [PaymentStatus], [PaymentStatusId], [Active], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (42, N'04436024-0cc8-4094-83f8-66442152e9a6', N'3dc2f407-571a-4964-a31a-aca6f2782ee6', 1, N'Pending', 1, N'Home Delivery', 2000, 0, 2000, 0, 2000, 1, N'Bkash', CAST(N'2017-12-19T04:35:17.0576250' AS DateTime2), NULL, NULL, 0, N'InComplete', 1, 1, CAST(N'2017-12-19T04:35:17.0576250' AS DateTime2), CAST(N'2017-12-19T04:35:17.0576250' AS DateTime2))
INSERT [dbo].[OrdersTbl] ([Id], [GuidId], [CustomerId], [OrderStatusId], [OrderStatus], [ShippingMethodId], [ShippingMethod], [TotalProductPrice], [ShippingPrice], [TotalPriceAfterShipping], [OrderDiscountPrice], [TotalPriceAfterShippingAndDiscount], [PaymentMethodId], [PaymentMethod], [OrderDate], [ShippingDate], [BillingDate], [PickUpInStore], [PaymentStatus], [PaymentStatusId], [Active], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (43, N'5f921c18-c906-4399-aa4b-371ff6c7faf4', N'bbd59a68-7d93-4311-80bf-9a5a5f3abcf7', 1, N'Pending', 1, N'Home Delivery', 370, 0, 370, 0, 370, 1, N'Bkash', CAST(N'2017-12-20T01:31:07.7607500' AS DateTime2), NULL, NULL, 0, N'InComplete', 1, 1, CAST(N'2017-12-20T01:31:07.7607500' AS DateTime2), CAST(N'2017-12-20T01:31:07.7607500' AS DateTime2))
INSERT [dbo].[OrdersTbl] ([Id], [GuidId], [CustomerId], [OrderStatusId], [OrderStatus], [ShippingMethodId], [ShippingMethod], [TotalProductPrice], [ShippingPrice], [TotalPriceAfterShipping], [OrderDiscountPrice], [TotalPriceAfterShippingAndDiscount], [PaymentMethodId], [PaymentMethod], [OrderDate], [ShippingDate], [BillingDate], [PickUpInStore], [PaymentStatus], [PaymentStatusId], [Active], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (44, N'7ef6f5e8-61ed-40e1-84ea-5d676e946ad4', N'3dc2f407-571a-4964-a31a-aca6f2782ee6', 1, N'Pending', 1, N'Home Delivery', 980, 0, 980, 0, 980, 1, N'Bkash', CAST(N'2017-12-20T06:33:12.8232500' AS DateTime2), NULL, NULL, 0, N'InComplete', 1, 1, CAST(N'2017-12-20T06:33:12.8232500' AS DateTime2), CAST(N'2017-12-20T06:33:12.8232500' AS DateTime2))
INSERT [dbo].[OrdersTbl] ([Id], [GuidId], [CustomerId], [OrderStatusId], [OrderStatus], [ShippingMethodId], [ShippingMethod], [TotalProductPrice], [ShippingPrice], [TotalPriceAfterShipping], [OrderDiscountPrice], [TotalPriceAfterShippingAndDiscount], [PaymentMethodId], [PaymentMethod], [OrderDate], [ShippingDate], [BillingDate], [PickUpInStore], [PaymentStatus], [PaymentStatusId], [Active], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (45, N'7fbfb34b-7306-478f-9dd7-496a25e0ff15', N'bbd59a68-7d93-4311-80bf-9a5a5f3abcf7', 1, N'Pending', 1, N'Home Delivery', 170, 0, 170, 0, 170, 1, N'Bkash', CAST(N'2017-12-20T23:29:19.8701250' AS DateTime2), NULL, NULL, 0, N'InComplete', 1, 1, CAST(N'2017-12-20T23:29:19.8701250' AS DateTime2), CAST(N'2017-12-20T23:29:19.8701250' AS DateTime2))
INSERT [dbo].[OrdersTbl] ([Id], [GuidId], [CustomerId], [OrderStatusId], [OrderStatus], [ShippingMethodId], [ShippingMethod], [TotalProductPrice], [ShippingPrice], [TotalPriceAfterShipping], [OrderDiscountPrice], [TotalPriceAfterShippingAndDiscount], [PaymentMethodId], [PaymentMethod], [OrderDate], [ShippingDate], [BillingDate], [PickUpInStore], [PaymentStatus], [PaymentStatusId], [Active], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (46, N'0079935c-f830-4fd9-be72-438385656cbe', N'bbd59a68-7d93-4311-80bf-9a5a5f3abcf7', 1, N'Pending', 1, N'Home Delivery', 170, 0, 170, 0, 170, 1, N'Bkash', CAST(N'2017-12-20T23:34:07.0576250' AS DateTime2), NULL, NULL, 0, N'InComplete', 1, 1, CAST(N'2017-12-20T23:34:07.0576250' AS DateTime2), CAST(N'2017-12-20T23:34:07.0576250' AS DateTime2))
INSERT [dbo].[OrdersTbl] ([Id], [GuidId], [CustomerId], [OrderStatusId], [OrderStatus], [ShippingMethodId], [ShippingMethod], [TotalProductPrice], [ShippingPrice], [TotalPriceAfterShipping], [OrderDiscountPrice], [TotalPriceAfterShippingAndDiscount], [PaymentMethodId], [PaymentMethod], [OrderDate], [ShippingDate], [BillingDate], [PickUpInStore], [PaymentStatus], [PaymentStatusId], [Active], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (47, N'ba9a7129-95ef-4807-be84-04b998cdb597', N'bbd59a68-7d93-4311-80bf-9a5a5f3abcf7', 1, N'Pending', 1, N'Home Delivery', 82, 0, 82, 0, 82, 1, N'Bkash', CAST(N'2017-12-21T04:41:51.0263750' AS DateTime2), NULL, NULL, 0, N'InComplete', 1, 1, CAST(N'2017-12-21T04:41:51.0263750' AS DateTime2), CAST(N'2017-12-21T04:41:51.0263750' AS DateTime2))
INSERT [dbo].[OrdersTbl] ([Id], [GuidId], [CustomerId], [OrderStatusId], [OrderStatus], [ShippingMethodId], [ShippingMethod], [TotalProductPrice], [ShippingPrice], [TotalPriceAfterShipping], [OrderDiscountPrice], [TotalPriceAfterShippingAndDiscount], [PaymentMethodId], [PaymentMethod], [OrderDate], [ShippingDate], [BillingDate], [PickUpInStore], [PaymentStatus], [PaymentStatusId], [Active], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (48, N'db9a4faa-d425-4d76-ac35-0ad79b201383', N'bbd59a68-7d93-4311-80bf-9a5a5f3abcf7', 1, N'Pending', 1, N'Home Delivery', 1897, 0, 1897, 0, 1897, 1, N'Bkash', CAST(N'2017-12-24T02:10:48.0048828' AS DateTime2), NULL, NULL, 0, N'InComplete', 1, 1, CAST(N'2017-12-24T02:10:48.0048828' AS DateTime2), CAST(N'2017-12-24T02:10:48.0048828' AS DateTime2))
INSERT [dbo].[OrdersTbl] ([Id], [GuidId], [CustomerId], [OrderStatusId], [OrderStatus], [ShippingMethodId], [ShippingMethod], [TotalProductPrice], [ShippingPrice], [TotalPriceAfterShipping], [OrderDiscountPrice], [TotalPriceAfterShippingAndDiscount], [PaymentMethodId], [PaymentMethod], [OrderDate], [ShippingDate], [BillingDate], [PickUpInStore], [PaymentStatus], [PaymentStatusId], [Active], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (49, N'c752abd2-4ecb-4540-acfd-a9106f78f98b', N'bbd59a68-7d93-4311-80bf-9a5a5f3abcf7', 1, N'Pending', 1, N'Home Delivery', 2600, 0, 2600, 0, 2600, 1, N'Bkash', CAST(N'2017-12-24T02:15:38.8720703' AS DateTime2), NULL, NULL, 0, N'InComplete', 1, 1, CAST(N'2017-12-24T02:15:38.8720703' AS DateTime2), CAST(N'2017-12-24T02:15:38.8720703' AS DateTime2))
INSERT [dbo].[OrdersTbl] ([Id], [GuidId], [CustomerId], [OrderStatusId], [OrderStatus], [ShippingMethodId], [ShippingMethod], [TotalProductPrice], [ShippingPrice], [TotalPriceAfterShipping], [OrderDiscountPrice], [TotalPriceAfterShippingAndDiscount], [PaymentMethodId], [PaymentMethod], [OrderDate], [ShippingDate], [BillingDate], [PickUpInStore], [PaymentStatus], [PaymentStatusId], [Active], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (50, N'c6792365-6cbf-459e-9c86-d157b818720e', N'bbd59a68-7d93-4311-80bf-9a5a5f3abcf7', 1, N'Pending', 1, N'Home Delivery', 6060, 0, 6060, 0, 6060, 1, N'Bkash', CAST(N'2017-12-24T06:54:00.9589844' AS DateTime2), NULL, NULL, 0, N'InComplete', 1, 1, CAST(N'2017-12-24T06:54:00.9589844' AS DateTime2), CAST(N'2017-12-24T06:54:00.9589844' AS DateTime2))
INSERT [dbo].[OrdersTbl] ([Id], [GuidId], [CustomerId], [OrderStatusId], [OrderStatus], [ShippingMethodId], [ShippingMethod], [TotalProductPrice], [ShippingPrice], [TotalPriceAfterShipping], [OrderDiscountPrice], [TotalPriceAfterShippingAndDiscount], [PaymentMethodId], [PaymentMethod], [OrderDate], [ShippingDate], [BillingDate], [PickUpInStore], [PaymentStatus], [PaymentStatusId], [Active], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (51, N'0dfa7d02-b5ac-4341-a932-bf82907b1a88', N'bbd59a68-7d93-4311-80bf-9a5a5f3abcf7', 1, N'Pending', 1, N'Home Delivery', 3050, 0, 3050, 0, 3050, 1, N'Bkash', CAST(N'2017-12-26T13:39:04.8808594' AS DateTime2), NULL, NULL, 0, N'InComplete', 1, 1, CAST(N'2017-12-26T13:39:04.8964844' AS DateTime2), CAST(N'2017-12-26T13:39:04.8964844' AS DateTime2))
INSERT [dbo].[OrdersTbl] ([Id], [GuidId], [CustomerId], [OrderStatusId], [OrderStatus], [ShippingMethodId], [ShippingMethod], [TotalProductPrice], [ShippingPrice], [TotalPriceAfterShipping], [OrderDiscountPrice], [TotalPriceAfterShippingAndDiscount], [PaymentMethodId], [PaymentMethod], [OrderDate], [ShippingDate], [BillingDate], [PickUpInStore], [PaymentStatus], [PaymentStatusId], [Active], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (52, N'7ef837f2-460d-4378-839c-60b090c3c945', N'bbd59a68-7d93-4311-80bf-9a5a5f3abcf7', 1, N'Pending', 1, N'Home Delivery', 1000, 0, 1000, 0, 1000, 1, N'Bkash', CAST(N'2017-12-26T21:07:00.6796875' AS DateTime2), NULL, NULL, 0, N'InComplete', 1, 1, CAST(N'2017-12-26T21:07:00.6796875' AS DateTime2), CAST(N'2017-12-26T21:07:00.6796875' AS DateTime2))
INSERT [dbo].[OrdersTbl] ([Id], [GuidId], [CustomerId], [OrderStatusId], [OrderStatus], [ShippingMethodId], [ShippingMethod], [TotalProductPrice], [ShippingPrice], [TotalPriceAfterShipping], [OrderDiscountPrice], [TotalPriceAfterShippingAndDiscount], [PaymentMethodId], [PaymentMethod], [OrderDate], [ShippingDate], [BillingDate], [PickUpInStore], [PaymentStatus], [PaymentStatusId], [Active], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (53, N'd35dac74-b1cd-4760-adfa-021616f86940', N'bbd59a68-7d93-4311-80bf-9a5a5f3abcf7', 1, N'Pending', 1, N'Home Delivery', 1000, 0, 1000, 0, 1000, 1, N'Bkash', CAST(N'2017-12-26T21:10:29.4560547' AS DateTime2), NULL, NULL, 0, N'InComplete', 1, 1, CAST(N'2017-12-26T21:10:29.4560547' AS DateTime2), CAST(N'2017-12-26T21:10:29.4560547' AS DateTime2))
INSERT [dbo].[OrdersTbl] ([Id], [GuidId], [CustomerId], [OrderStatusId], [OrderStatus], [ShippingMethodId], [ShippingMethod], [TotalProductPrice], [ShippingPrice], [TotalPriceAfterShipping], [OrderDiscountPrice], [TotalPriceAfterShippingAndDiscount], [PaymentMethodId], [PaymentMethod], [OrderDate], [ShippingDate], [BillingDate], [PickUpInStore], [PaymentStatus], [PaymentStatusId], [Active], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (54, N'101c539d-ca1a-43a9-9933-c3311e68f98c', N'bbd59a68-7d93-4311-80bf-9a5a5f3abcf7', 1, N'Pending', 1, N'Home Delivery', 1126, 0, 1126, 0, 1126, 1, N'Bkash', CAST(N'2017-12-27T14:53:37.7792969' AS DateTime2), NULL, NULL, 0, N'InComplete', 1, 1, CAST(N'2017-12-27T14:53:37.7792969' AS DateTime2), CAST(N'2017-12-27T14:53:37.7792969' AS DateTime2))
INSERT [dbo].[OrdersTbl] ([Id], [GuidId], [CustomerId], [OrderStatusId], [OrderStatus], [ShippingMethodId], [ShippingMethod], [TotalProductPrice], [ShippingPrice], [TotalPriceAfterShipping], [OrderDiscountPrice], [TotalPriceAfterShippingAndDiscount], [PaymentMethodId], [PaymentMethod], [OrderDate], [ShippingDate], [BillingDate], [PickUpInStore], [PaymentStatus], [PaymentStatusId], [Active], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (55, N'6320c076-e15e-4aac-bd31-61ba3b2e4f57', N'bbd59a68-7d93-4311-80bf-9a5a5f3abcf7', 1, N'Pending', 1, N'Home Delivery', 616, 0, 616, 0, 616, 1, N'Bkash', CAST(N'2017-12-28T06:13:21.4365234' AS DateTime2), NULL, NULL, 0, N'InComplete', 1, 1, CAST(N'2017-12-28T06:13:21.4365234' AS DateTime2), CAST(N'2017-12-28T06:13:21.4365234' AS DateTime2))
INSERT [dbo].[OrdersTbl] ([Id], [GuidId], [CustomerId], [OrderStatusId], [OrderStatus], [ShippingMethodId], [ShippingMethod], [TotalProductPrice], [ShippingPrice], [TotalPriceAfterShipping], [OrderDiscountPrice], [TotalPriceAfterShippingAndDiscount], [PaymentMethodId], [PaymentMethod], [OrderDate], [ShippingDate], [BillingDate], [PickUpInStore], [PaymentStatus], [PaymentStatusId], [Active], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (56, N'9e680424-2886-41ac-962d-ac50980cb9c5', N'bbd59a68-7d93-4311-80bf-9a5a5f3abcf7', 1, N'Pending', 1, N'Home Delivery', 616, 0, 616, 0, 616, 1, N'Bkash', CAST(N'2017-12-28T10:37:53.2128906' AS DateTime2), NULL, NULL, 0, N'InComplete', 1, 1, CAST(N'2017-12-28T10:37:53.2128906' AS DateTime2), CAST(N'2017-12-28T10:37:53.2128906' AS DateTime2))
INSERT [dbo].[OrdersTbl] ([Id], [GuidId], [CustomerId], [OrderStatusId], [OrderStatus], [ShippingMethodId], [ShippingMethod], [TotalProductPrice], [ShippingPrice], [TotalPriceAfterShipping], [OrderDiscountPrice], [TotalPriceAfterShippingAndDiscount], [PaymentMethodId], [PaymentMethod], [OrderDate], [ShippingDate], [BillingDate], [PickUpInStore], [PaymentStatus], [PaymentStatusId], [Active], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (57, N'ed63cb20-b65d-4631-be34-368e5ece609c', N'bbd59a68-7d93-4311-80bf-9a5a5f3abcf7', 1, N'Pending', 1, N'Home Delivery', 616, 0, 616, 0, 616, 1, N'Bkash', CAST(N'2017-12-28T10:38:00.6191406' AS DateTime2), NULL, NULL, 0, N'InComplete', 1, 1, CAST(N'2017-12-28T10:38:00.6191406' AS DateTime2), CAST(N'2017-12-28T10:38:00.6191406' AS DateTime2))
INSERT [dbo].[OrdersTbl] ([Id], [GuidId], [CustomerId], [OrderStatusId], [OrderStatus], [ShippingMethodId], [ShippingMethod], [TotalProductPrice], [ShippingPrice], [TotalPriceAfterShipping], [OrderDiscountPrice], [TotalPriceAfterShippingAndDiscount], [PaymentMethodId], [PaymentMethod], [OrderDate], [ShippingDate], [BillingDate], [PickUpInStore], [PaymentStatus], [PaymentStatusId], [Active], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (58, N'c69f17bb-80aa-47bc-b931-1556951bf89f', N'bbd59a68-7d93-4311-80bf-9a5a5f3abcf7', 1, N'Pending', 1, N'Home Delivery', 1037, 0, 1037, 0, 1037, 1, N'Bkash', CAST(N'2017-12-29T02:10:41.3808594' AS DateTime2), NULL, NULL, 0, N'InComplete', 1, 1, CAST(N'2017-12-29T02:10:41.3808594' AS DateTime2), CAST(N'2017-12-29T02:10:41.3808594' AS DateTime2))
INSERT [dbo].[OrdersTbl] ([Id], [GuidId], [CustomerId], [OrderStatusId], [OrderStatus], [ShippingMethodId], [ShippingMethod], [TotalProductPrice], [ShippingPrice], [TotalPriceAfterShipping], [OrderDiscountPrice], [TotalPriceAfterShippingAndDiscount], [PaymentMethodId], [PaymentMethod], [OrderDate], [ShippingDate], [BillingDate], [PickUpInStore], [PaymentStatus], [PaymentStatusId], [Active], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (59, N'5809ec70-4937-4b24-b76a-2c7cc11f8fd4', N'bbd59a68-7d93-4311-80bf-9a5a5f3abcf7', 1, N'Pending', 1, N'Home Delivery', 110, 0, 110, 0, 110, 1, N'Bkash', CAST(N'2017-12-29T08:09:05.3779297' AS DateTime2), NULL, NULL, 0, N'InComplete', 1, 1, CAST(N'2017-12-29T08:09:05.3779297' AS DateTime2), CAST(N'2017-12-29T08:09:05.3779297' AS DateTime2))
INSERT [dbo].[OrdersTbl] ([Id], [GuidId], [CustomerId], [OrderStatusId], [OrderStatus], [ShippingMethodId], [ShippingMethod], [TotalProductPrice], [ShippingPrice], [TotalPriceAfterShipping], [OrderDiscountPrice], [TotalPriceAfterShippingAndDiscount], [PaymentMethodId], [PaymentMethod], [OrderDate], [ShippingDate], [BillingDate], [PickUpInStore], [PaymentStatus], [PaymentStatusId], [Active], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (60, N'b284e217-1c05-431c-95d5-bdaf476b14ce', N'9d652bf1-6804-4a6d-9c47-18b84d113294', 1, N'Pending', 1, N'Home Delivery', 5000, 0, 5000, 0, 5000, 1, N'Bkash', CAST(N'2017-12-30T06:38:41.7011719' AS DateTime2), NULL, NULL, 0, N'InComplete', 1, 1, CAST(N'2017-12-30T06:38:41.7011719' AS DateTime2), CAST(N'2017-12-30T06:38:41.7011719' AS DateTime2))
INSERT [dbo].[OrdersTbl] ([Id], [GuidId], [CustomerId], [OrderStatusId], [OrderStatus], [ShippingMethodId], [ShippingMethod], [TotalProductPrice], [ShippingPrice], [TotalPriceAfterShipping], [OrderDiscountPrice], [TotalPriceAfterShippingAndDiscount], [PaymentMethodId], [PaymentMethod], [OrderDate], [ShippingDate], [BillingDate], [PickUpInStore], [PaymentStatus], [PaymentStatusId], [Active], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (61, N'6c52b3e1-52e8-458a-a64c-2da1a329b2aa', N'3dc2f407-571a-4964-a31a-aca6f2782ee6', 1, N'Pending', 1, N'Home Delivery', 4100, 0, 4100, 0, 4100, 1, N'Bkash', CAST(N'2018-01-01T01:45:03.5419922' AS DateTime2), NULL, NULL, 0, N'InComplete', 1, 1, CAST(N'2018-01-01T01:45:03.5419922' AS DateTime2), CAST(N'2018-01-01T01:45:03.5419922' AS DateTime2))
INSERT [dbo].[OrdersTbl] ([Id], [GuidId], [CustomerId], [OrderStatusId], [OrderStatus], [ShippingMethodId], [ShippingMethod], [TotalProductPrice], [ShippingPrice], [TotalPriceAfterShipping], [OrderDiscountPrice], [TotalPriceAfterShippingAndDiscount], [PaymentMethodId], [PaymentMethod], [OrderDate], [ShippingDate], [BillingDate], [PickUpInStore], [PaymentStatus], [PaymentStatusId], [Active], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (62, N'5740f537-0936-448c-a71b-d60589bedfb3', N'3dc2f407-571a-4964-a31a-aca6f2782ee6', 1, N'Pending', 1, N'Home Delivery', 1070, 0, 1070, 0, 1070, 1, N'Bkash', CAST(N'2018-01-01T01:46:42.6835938' AS DateTime2), NULL, NULL, 0, N'InComplete', 1, 1, CAST(N'2018-01-01T01:46:42.6835938' AS DateTime2), CAST(N'2018-01-01T01:46:42.6835938' AS DateTime2))
INSERT [dbo].[OrdersTbl] ([Id], [GuidId], [CustomerId], [OrderStatusId], [OrderStatus], [ShippingMethodId], [ShippingMethod], [TotalProductPrice], [ShippingPrice], [TotalPriceAfterShipping], [OrderDiscountPrice], [TotalPriceAfterShippingAndDiscount], [PaymentMethodId], [PaymentMethod], [OrderDate], [ShippingDate], [BillingDate], [PickUpInStore], [PaymentStatus], [PaymentStatusId], [Active], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (63, N'cc2f8e9a-8769-474f-b02b-3266ed82b020', N'3dc2f407-571a-4964-a31a-aca6f2782ee6', 1, N'Pending', 1, N'Home Delivery', 1070, 0, 1070, 0, 1070, 1, N'Bkash', CAST(N'2018-01-01T01:47:28.9726563' AS DateTime2), NULL, NULL, 0, N'InComplete', 1, 1, CAST(N'2018-01-01T01:47:28.9726563' AS DateTime2), CAST(N'2018-01-01T01:47:28.9726563' AS DateTime2))
INSERT [dbo].[OrdersTbl] ([Id], [GuidId], [CustomerId], [OrderStatusId], [OrderStatus], [ShippingMethodId], [ShippingMethod], [TotalProductPrice], [ShippingPrice], [TotalPriceAfterShipping], [OrderDiscountPrice], [TotalPriceAfterShippingAndDiscount], [PaymentMethodId], [PaymentMethod], [OrderDate], [ShippingDate], [BillingDate], [PickUpInStore], [PaymentStatus], [PaymentStatusId], [Active], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (64, N'77b67ab0-46cb-458a-a5bf-0cdb88667158', N'3dc2f407-571a-4964-a31a-aca6f2782ee6', 1, N'Pending', 1, N'Home Delivery', 980, 0, 980, 0, 980, 1, N'Bkash', CAST(N'2018-01-01T01:48:29.1035157' AS DateTime2), NULL, NULL, 0, N'InComplete', 1, 1, CAST(N'2018-01-01T01:48:29.1035157' AS DateTime2), CAST(N'2018-01-01T01:48:29.1035157' AS DateTime2))
INSERT [dbo].[OrdersTbl] ([Id], [GuidId], [CustomerId], [OrderStatusId], [OrderStatus], [ShippingMethodId], [ShippingMethod], [TotalProductPrice], [ShippingPrice], [TotalPriceAfterShipping], [OrderDiscountPrice], [TotalPriceAfterShippingAndDiscount], [PaymentMethodId], [PaymentMethod], [OrderDate], [ShippingDate], [BillingDate], [PickUpInStore], [PaymentStatus], [PaymentStatusId], [Active], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (65, N'3be18885-dd58-4ae6-9932-4d4460c0349b', N'3dc2f407-571a-4964-a31a-aca6f2782ee6', 1, N'Pending', 1, N'Home Delivery', 21895, 0, 21895, 0, 21895, 1, N'Bkash', CAST(N'2018-01-02T02:08:23.4013672' AS DateTime2), NULL, NULL, 0, N'InComplete', 1, 1, CAST(N'2018-01-02T02:08:23.4013672' AS DateTime2), CAST(N'2018-01-02T02:08:23.4013672' AS DateTime2))
INSERT [dbo].[OrdersTbl] ([Id], [GuidId], [CustomerId], [OrderStatusId], [OrderStatus], [ShippingMethodId], [ShippingMethod], [TotalProductPrice], [ShippingPrice], [TotalPriceAfterShipping], [OrderDiscountPrice], [TotalPriceAfterShippingAndDiscount], [PaymentMethodId], [PaymentMethod], [OrderDate], [ShippingDate], [BillingDate], [PickUpInStore], [PaymentStatus], [PaymentStatusId], [Active], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (66, N'03d70ed3-a85c-4843-a3d3-c188d55506e3', N'bbd59a68-7d93-4311-80bf-9a5a5f3abcf7', 1, N'Pending', 1, N'Home Delivery', 1000, 0, 1000, 0, 1000, 1, N'Bkash', CAST(N'2018-01-02T10:01:24.8125000' AS DateTime2), NULL, NULL, 0, N'InComplete', 1, 1, CAST(N'2018-01-02T10:01:24.8125000' AS DateTime2), CAST(N'2018-01-02T10:01:24.8125000' AS DateTime2))
INSERT [dbo].[OrdersTbl] ([Id], [GuidId], [CustomerId], [OrderStatusId], [OrderStatus], [ShippingMethodId], [ShippingMethod], [TotalProductPrice], [ShippingPrice], [TotalPriceAfterShipping], [OrderDiscountPrice], [TotalPriceAfterShippingAndDiscount], [PaymentMethodId], [PaymentMethod], [OrderDate], [ShippingDate], [BillingDate], [PickUpInStore], [PaymentStatus], [PaymentStatusId], [Active], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (67, N'9ec8d55a-c10b-49f6-a95c-3b16143cc89e', N'f3b51ed0-6414-4bed-ade4-c185eb7d7f4e', 1, N'Pending', 1, N'Home Delivery', 980, 0, 980, 0, 980, 1, N'Bkash', CAST(N'2018-01-03T03:42:26.5888672' AS DateTime2), NULL, NULL, 0, N'InComplete', 1, 1, CAST(N'2018-01-03T03:42:26.5888672' AS DateTime2), CAST(N'2018-01-03T03:42:26.5888672' AS DateTime2))
INSERT [dbo].[OrdersTbl] ([Id], [GuidId], [CustomerId], [OrderStatusId], [OrderStatus], [ShippingMethodId], [ShippingMethod], [TotalProductPrice], [ShippingPrice], [TotalPriceAfterShipping], [OrderDiscountPrice], [TotalPriceAfterShippingAndDiscount], [PaymentMethodId], [PaymentMethod], [OrderDate], [ShippingDate], [BillingDate], [PickUpInStore], [PaymentStatus], [PaymentStatusId], [Active], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (68, N'1ba73168-c815-428b-9ea8-7f3b0c863fd2', N'bbd59a68-7d93-4311-80bf-9a5a5f3abcf7', 1, N'Pending', 1, N'Home Delivery', 1000, 0, 1000, 0, 1000, 1, N'Bkash', CAST(N'2018-01-04T01:40:10.1679687' AS DateTime2), NULL, NULL, 0, N'InComplete', 1, 1, CAST(N'2018-01-04T01:40:10.1679687' AS DateTime2), CAST(N'2018-01-04T01:40:10.1679687' AS DateTime2))
INSERT [dbo].[OrdersTbl] ([Id], [GuidId], [CustomerId], [OrderStatusId], [OrderStatus], [ShippingMethodId], [ShippingMethod], [TotalProductPrice], [ShippingPrice], [TotalPriceAfterShipping], [OrderDiscountPrice], [TotalPriceAfterShippingAndDiscount], [PaymentMethodId], [PaymentMethod], [OrderDate], [ShippingDate], [BillingDate], [PickUpInStore], [PaymentStatus], [PaymentStatusId], [Active], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (69, N'00f03c0b-a57e-4610-bda9-7a85d74d1de7', N'8e9aa5ac-aa4d-4cb2-95b8-77d423f8d121', 1, N'Pending', 1, N'Home Delivery', 1250, 0, 1250, 0, 1250, 1, N'Bkash', CAST(N'2018-01-04T06:24:11.3476562' AS DateTime2), NULL, NULL, 0, N'InComplete', 1, 1, CAST(N'2018-01-04T06:24:11.3476562' AS DateTime2), CAST(N'2018-01-04T06:24:11.3476562' AS DateTime2))
INSERT [dbo].[OrdersTbl] ([Id], [GuidId], [CustomerId], [OrderStatusId], [OrderStatus], [ShippingMethodId], [ShippingMethod], [TotalProductPrice], [ShippingPrice], [TotalPriceAfterShipping], [OrderDiscountPrice], [TotalPriceAfterShippingAndDiscount], [PaymentMethodId], [PaymentMethod], [OrderDate], [ShippingDate], [BillingDate], [PickUpInStore], [PaymentStatus], [PaymentStatusId], [Active], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (70, N'04379b9b-738b-442d-bb20-507620e466d7', N'bbd59a68-7d93-4311-80bf-9a5a5f3abcf7', 1, N'Pending', 1, N'Home Delivery', 1000, 0, 1000, 0, 1000, 1, N'Bkash', CAST(N'2018-01-04T09:39:01.1875000' AS DateTime2), NULL, NULL, 0, N'InComplete', 1, 1, CAST(N'2018-01-04T09:39:01.1875000' AS DateTime2), CAST(N'2018-01-04T09:39:01.1875000' AS DateTime2))
INSERT [dbo].[OrdersTbl] ([Id], [GuidId], [CustomerId], [OrderStatusId], [OrderStatus], [ShippingMethodId], [ShippingMethod], [TotalProductPrice], [ShippingPrice], [TotalPriceAfterShipping], [OrderDiscountPrice], [TotalPriceAfterShippingAndDiscount], [PaymentMethodId], [PaymentMethod], [OrderDate], [ShippingDate], [BillingDate], [PickUpInStore], [PaymentStatus], [PaymentStatusId], [Active], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (71, N'3567b92f-8b83-4786-99a4-540d850ac6d4', N'8e9aa5ac-aa4d-4cb2-95b8-77d423f8d121', 1, N'Pending', 1, N'Home Delivery', 1000, 0, 1000, 0, 1000, 1, N'Bkash', CAST(N'2018-01-05T23:05:58.6220703' AS DateTime2), NULL, NULL, 0, N'InComplete', 1, 1, CAST(N'2018-01-05T23:05:58.6220703' AS DateTime2), CAST(N'2018-01-05T23:05:58.6220703' AS DateTime2))
INSERT [dbo].[OrdersTbl] ([Id], [GuidId], [CustomerId], [OrderStatusId], [OrderStatus], [ShippingMethodId], [ShippingMethod], [TotalProductPrice], [ShippingPrice], [TotalPriceAfterShipping], [OrderDiscountPrice], [TotalPriceAfterShippingAndDiscount], [PaymentMethodId], [PaymentMethod], [OrderDate], [ShippingDate], [BillingDate], [PickUpInStore], [PaymentStatus], [PaymentStatusId], [Active], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (72, N'2e72f397-0623-4f20-af96-c23792f3ad3a', N'bbd59a68-7d93-4311-80bf-9a5a5f3abcf7', 1, N'Pending', 1, N'Home Delivery', 128, 0, 128, 0, 128, 1, N'Bkash', CAST(N'2018-01-07T05:51:07.1708984' AS DateTime2), NULL, NULL, 0, N'InComplete', 1, 1, CAST(N'2018-01-07T05:51:07.1708984' AS DateTime2), CAST(N'2018-01-07T05:51:07.1708984' AS DateTime2))
INSERT [dbo].[OrdersTbl] ([Id], [GuidId], [CustomerId], [OrderStatusId], [OrderStatus], [ShippingMethodId], [ShippingMethod], [TotalProductPrice], [ShippingPrice], [TotalPriceAfterShipping], [OrderDiscountPrice], [TotalPriceAfterShippingAndDiscount], [PaymentMethodId], [PaymentMethod], [OrderDate], [ShippingDate], [BillingDate], [PickUpInStore], [PaymentStatus], [PaymentStatusId], [Active], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (73, N'c451485b-96f7-4910-a5f6-bbca5558cae1', N'bbd59a68-7d93-4311-80bf-9a5a5f3abcf7', 1, N'Pending', 1, N'Home Delivery', 96, 0, 96, 0, 96, 1, N'Bkash', CAST(N'2018-01-07T05:56:35.8642578' AS DateTime2), NULL, NULL, 0, N'InComplete', 1, 1, CAST(N'2018-01-07T05:56:35.8642578' AS DateTime2), CAST(N'2018-01-07T05:56:35.8642578' AS DateTime2))
INSERT [dbo].[OrdersTbl] ([Id], [GuidId], [CustomerId], [OrderStatusId], [OrderStatus], [ShippingMethodId], [ShippingMethod], [TotalProductPrice], [ShippingPrice], [TotalPriceAfterShipping], [OrderDiscountPrice], [TotalPriceAfterShippingAndDiscount], [PaymentMethodId], [PaymentMethod], [OrderDate], [ShippingDate], [BillingDate], [PickUpInStore], [PaymentStatus], [PaymentStatusId], [Active], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (74, N'5000ba6e-89fd-456d-b405-adcd8c64583f', N'bbd59a68-7d93-4311-80bf-9a5a5f3abcf7', 1, N'Pending', 1, N'Home Delivery', 52, 0, 52, 0, 52, 1, N'Bkash', CAST(N'2018-01-07T11:09:02.9677734' AS DateTime2), NULL, NULL, 0, N'InComplete', 1, 1, CAST(N'2018-01-07T11:09:02.9677734' AS DateTime2), CAST(N'2018-01-07T11:09:02.9677734' AS DateTime2))
INSERT [dbo].[OrdersTbl] ([Id], [GuidId], [CustomerId], [OrderStatusId], [OrderStatus], [ShippingMethodId], [ShippingMethod], [TotalProductPrice], [ShippingPrice], [TotalPriceAfterShipping], [OrderDiscountPrice], [TotalPriceAfterShippingAndDiscount], [PaymentMethodId], [PaymentMethod], [OrderDate], [ShippingDate], [BillingDate], [PickUpInStore], [PaymentStatus], [PaymentStatusId], [Active], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (75, N'070ab6d9-9843-4e40-8e77-f0ad85821f9a', N'8e9aa5ac-aa4d-4cb2-95b8-77d423f8d121', 1, N'Pending', 1, N'Home Delivery', 3280, 0, 3280, 0, 3280, 1, N'Bkash', CAST(N'2018-01-08T04:43:40.1845703' AS DateTime2), NULL, NULL, 0, N'InComplete', 1, 1, CAST(N'2018-01-08T04:43:40.2001953' AS DateTime2), CAST(N'2018-01-08T04:43:40.2001953' AS DateTime2))
INSERT [dbo].[OrdersTbl] ([Id], [GuidId], [CustomerId], [OrderStatusId], [OrderStatus], [ShippingMethodId], [ShippingMethod], [TotalProductPrice], [ShippingPrice], [TotalPriceAfterShipping], [OrderDiscountPrice], [TotalPriceAfterShippingAndDiscount], [PaymentMethodId], [PaymentMethod], [OrderDate], [ShippingDate], [BillingDate], [PickUpInStore], [PaymentStatus], [PaymentStatusId], [Active], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (76, N'2e7698fa-5d23-4297-9373-fe776b655692', N'bbd59a68-7d93-4311-80bf-9a5a5f3abcf7', 1, N'Pending', 1, N'Home Delivery', 1920, 0, 1920, 0, 1920, 1, N'Bkash', CAST(N'2018-01-08T05:20:47.7802734' AS DateTime2), NULL, NULL, 0, N'InComplete', 1, 1, CAST(N'2018-01-08T05:20:47.7802734' AS DateTime2), CAST(N'2018-01-08T05:20:47.7802734' AS DateTime2))
INSERT [dbo].[OrdersTbl] ([Id], [GuidId], [CustomerId], [OrderStatusId], [OrderStatus], [ShippingMethodId], [ShippingMethod], [TotalProductPrice], [ShippingPrice], [TotalPriceAfterShipping], [OrderDiscountPrice], [TotalPriceAfterShippingAndDiscount], [PaymentMethodId], [PaymentMethod], [OrderDate], [ShippingDate], [BillingDate], [PickUpInStore], [PaymentStatus], [PaymentStatusId], [Active], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (77, N'e5918a67-b694-4f4e-827e-7a87bf7f13c5', N'64ac28fe-5c51-4b91-a092-3bb322d5a07d', 1, N'Pending', 1, N'Home Delivery', 980, 0, 980, 0, 980, 1, N'Bkash', CAST(N'2018-01-08T06:01:51.6347656' AS DateTime2), NULL, NULL, 0, N'InComplete', 1, 1, CAST(N'2018-01-08T06:01:51.6347656' AS DateTime2), CAST(N'2018-01-08T06:01:51.6347656' AS DateTime2))
INSERT [dbo].[OrdersTbl] ([Id], [GuidId], [CustomerId], [OrderStatusId], [OrderStatus], [ShippingMethodId], [ShippingMethod], [TotalProductPrice], [ShippingPrice], [TotalPriceAfterShipping], [OrderDiscountPrice], [TotalPriceAfterShippingAndDiscount], [PaymentMethodId], [PaymentMethod], [OrderDate], [ShippingDate], [BillingDate], [PickUpInStore], [PaymentStatus], [PaymentStatusId], [Active], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (78, N'2ac2ce59-e5e7-4270-97be-4e72e284d148', N'6f8fd7b1-4caa-4cc7-80a4-34faca6d818c', 1, N'Pending', 1, N'Home Delivery', 90, 0, 90, 0, 90, 1, N'Bkash', CAST(N'2018-01-08T09:38:31.5195312' AS DateTime2), NULL, NULL, 0, N'InComplete', 1, 1, CAST(N'2018-01-08T09:38:31.5195312' AS DateTime2), CAST(N'2018-01-08T09:38:31.5195312' AS DateTime2))
INSERT [dbo].[OrdersTbl] ([Id], [GuidId], [CustomerId], [OrderStatusId], [OrderStatus], [ShippingMethodId], [ShippingMethod], [TotalProductPrice], [ShippingPrice], [TotalPriceAfterShipping], [OrderDiscountPrice], [TotalPriceAfterShippingAndDiscount], [PaymentMethodId], [PaymentMethod], [OrderDate], [ShippingDate], [BillingDate], [PickUpInStore], [PaymentStatus], [PaymentStatusId], [Active], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (88, N'f77e5649-19aa-4381-a5bf-1e4a2bf1924a', N'bbd59a68-7d93-4311-80bf-9a5a5f3abcf7', 1, N'Pending', 1, N'Home Delivery', 980, 0, 980, 0, 980, 1, N'Bkash', CAST(N'2018-01-09T09:02:11.0791015' AS DateTime2), NULL, NULL, 0, N'InComplete', 1, 1, CAST(N'2018-01-09T09:02:11.0947265' AS DateTime2), CAST(N'2018-01-09T09:02:11.0947265' AS DateTime2))
INSERT [dbo].[OrdersTbl] ([Id], [GuidId], [CustomerId], [OrderStatusId], [OrderStatus], [ShippingMethodId], [ShippingMethod], [TotalProductPrice], [ShippingPrice], [TotalPriceAfterShipping], [OrderDiscountPrice], [TotalPriceAfterShippingAndDiscount], [PaymentMethodId], [PaymentMethod], [OrderDate], [ShippingDate], [BillingDate], [PickUpInStore], [PaymentStatus], [PaymentStatusId], [Active], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (89, N'c4ad3c4a-fa11-4970-b1a5-28f072c47c03', N'bbd59a68-7d93-4311-80bf-9a5a5f3abcf7', NULL, N'Pending', 1, N'Home Delivery', 1000, 0, 1000, 0, 1000, 1, N'Bkash', CAST(N'2018-01-13T00:14:38.0000000' AS DateTime2), NULL, NULL, 1, N'InComplete', NULL, 1, CAST(N'2018-01-13T00:14:38.1383456' AS DateTime2), CAST(N'2018-01-13T03:52:26.9019325' AS DateTime2))
INSERT [dbo].[OrdersTbl] ([Id], [GuidId], [CustomerId], [OrderStatusId], [OrderStatus], [ShippingMethodId], [ShippingMethod], [TotalProductPrice], [ShippingPrice], [TotalPriceAfterShipping], [OrderDiscountPrice], [TotalPriceAfterShippingAndDiscount], [PaymentMethodId], [PaymentMethod], [OrderDate], [ShippingDate], [BillingDate], [PickUpInStore], [PaymentStatus], [PaymentStatusId], [Active], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (90, N'ca6f60eb-0f8b-4cfd-8e6c-308a3f2f65e2', N'bbd59a68-7d93-4311-80bf-9a5a5f3abcf7', 1, N'Pending', 1, N'Home Delivery', 100, 0, 100, 0, 100, 1, N'Bkash', CAST(N'2018-01-15T22:13:46.0382638' AS DateTime2), NULL, NULL, 0, N'InComplete', 1, 1, CAST(N'2018-01-15T22:13:46.0382638' AS DateTime2), CAST(N'2018-01-15T22:13:46.0382638' AS DateTime2))
INSERT [dbo].[OrdersTbl] ([Id], [GuidId], [CustomerId], [OrderStatusId], [OrderStatus], [ShippingMethodId], [ShippingMethod], [TotalProductPrice], [ShippingPrice], [TotalPriceAfterShipping], [OrderDiscountPrice], [TotalPriceAfterShippingAndDiscount], [PaymentMethodId], [PaymentMethod], [OrderDate], [ShippingDate], [BillingDate], [PickUpInStore], [PaymentStatus], [PaymentStatusId], [Active], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (91, N'2c1cbe31-7e67-444a-9f1a-a6804c1b73b3', N'bbd59a68-7d93-4311-80bf-9a5a5f3abcf7', 1, N'Pending', 1, N'Home Delivery', 100, 0, 100, 0, 100, 1, N'Bkash', CAST(N'2018-01-15T22:13:55.4445378' AS DateTime2), NULL, NULL, 0, N'InComplete', 1, 1, CAST(N'2018-01-15T22:13:55.4445378' AS DateTime2), CAST(N'2018-01-15T22:13:55.4445378' AS DateTime2))
INSERT [dbo].[OrdersTbl] ([Id], [GuidId], [CustomerId], [OrderStatusId], [OrderStatus], [ShippingMethodId], [ShippingMethod], [TotalProductPrice], [ShippingPrice], [TotalPriceAfterShipping], [OrderDiscountPrice], [TotalPriceAfterShippingAndDiscount], [PaymentMethodId], [PaymentMethod], [OrderDate], [ShippingDate], [BillingDate], [PickUpInStore], [PaymentStatus], [PaymentStatusId], [Active], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (92, N'3163d034-4312-406a-bd99-34261bab2e7c', N'bbd59a68-7d93-4311-80bf-9a5a5f3abcf7', 1, N'Pending', 1, N'Home Delivery', 100, 0, 100, 0, 100, 1, N'Bkash', CAST(N'2018-01-15T22:15:03.6517981' AS DateTime2), NULL, NULL, 0, N'InComplete', 1, 1, CAST(N'2018-01-15T22:15:03.6517981' AS DateTime2), CAST(N'2018-01-15T22:15:03.6517981' AS DateTime2))
INSERT [dbo].[OrdersTbl] ([Id], [GuidId], [CustomerId], [OrderStatusId], [OrderStatus], [ShippingMethodId], [ShippingMethod], [TotalProductPrice], [ShippingPrice], [TotalPriceAfterShipping], [OrderDiscountPrice], [TotalPriceAfterShippingAndDiscount], [PaymentMethodId], [PaymentMethod], [OrderDate], [ShippingDate], [BillingDate], [PickUpInStore], [PaymentStatus], [PaymentStatusId], [Active], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (93, N'1f4b7c0b-fca2-4cbc-8b7e-87283ad9879c', N'bbd59a68-7d93-4311-80bf-9a5a5f3abcf7', 1, N'Pending', 1, N'Home Delivery', 100, 0, 100, 0, 100, 1, N'Bkash', CAST(N'2018-01-15T22:16:10.6619433' AS DateTime2), NULL, NULL, 0, N'InComplete', 1, 1, CAST(N'2018-01-15T22:16:10.6619433' AS DateTime2), CAST(N'2018-01-15T22:16:10.6619433' AS DateTime2))
INSERT [dbo].[OrdersTbl] ([Id], [GuidId], [CustomerId], [OrderStatusId], [OrderStatus], [ShippingMethodId], [ShippingMethod], [TotalProductPrice], [ShippingPrice], [TotalPriceAfterShipping], [OrderDiscountPrice], [TotalPriceAfterShippingAndDiscount], [PaymentMethodId], [PaymentMethod], [OrderDate], [ShippingDate], [BillingDate], [PickUpInStore], [PaymentStatus], [PaymentStatusId], [Active], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (94, N'64019eac-1a62-49d4-9098-0670434131dc', N'bbd59a68-7d93-4311-80bf-9a5a5f3abcf7', 1, N'Pending', 1, N'Home Delivery', 100, 0, 100, 0, 100, 1, N'Bkash', CAST(N'2018-01-15T22:17:56.0738074' AS DateTime2), NULL, NULL, 0, N'InComplete', 1, 1, CAST(N'2018-01-15T22:17:56.0738074' AS DateTime2), CAST(N'2018-01-15T22:17:56.0738074' AS DateTime2))
INSERT [dbo].[OrdersTbl] ([Id], [GuidId], [CustomerId], [OrderStatusId], [OrderStatus], [ShippingMethodId], [ShippingMethod], [TotalProductPrice], [ShippingPrice], [TotalPriceAfterShipping], [OrderDiscountPrice], [TotalPriceAfterShippingAndDiscount], [PaymentMethodId], [PaymentMethod], [OrderDate], [ShippingDate], [BillingDate], [PickUpInStore], [PaymentStatus], [PaymentStatusId], [Active], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (95, N'53bf01a1-8e26-4778-9753-1f671c0224b7', N'bbd59a68-7d93-4311-80bf-9a5a5f3abcf7', 1, N'Pending', 1, N'Home Delivery', 520, 0, 520, 0, 520, 1, N'Bkash', CAST(N'2018-01-15T22:30:22.2456335' AS DateTime2), NULL, NULL, 0, N'InComplete', 1, 1, CAST(N'2018-01-15T22:30:22.2456335' AS DateTime2), CAST(N'2018-01-15T22:30:22.2456335' AS DateTime2))
INSERT [dbo].[OrdersTbl] ([Id], [GuidId], [CustomerId], [OrderStatusId], [OrderStatus], [ShippingMethodId], [ShippingMethod], [TotalProductPrice], [ShippingPrice], [TotalPriceAfterShipping], [OrderDiscountPrice], [TotalPriceAfterShippingAndDiscount], [PaymentMethodId], [PaymentMethod], [OrderDate], [ShippingDate], [BillingDate], [PickUpInStore], [PaymentStatus], [PaymentStatusId], [Active], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (104, N'ce93b899-8b20-4b08-8a3f-fb5488bbbe1a', N'bbd59a68-7d93-4311-80bf-9a5a5f3abcf7', 1, N'Pending', 1, N'Home Delivery', 2000, 0, 2000, 0, 2000, 1, N'Bkash', CAST(N'2018-01-19T06:09:38.1722448' AS DateTime2), NULL, NULL, 0, N'InComplete', 1, 1, CAST(N'2018-01-19T06:09:38.1722448' AS DateTime2), CAST(N'2018-01-19T06:09:38.1722448' AS DateTime2))
INSERT [dbo].[OrdersTbl] ([Id], [GuidId], [CustomerId], [OrderStatusId], [OrderStatus], [ShippingMethodId], [ShippingMethod], [TotalProductPrice], [ShippingPrice], [TotalPriceAfterShipping], [OrderDiscountPrice], [TotalPriceAfterShippingAndDiscount], [PaymentMethodId], [PaymentMethod], [OrderDate], [ShippingDate], [BillingDate], [PickUpInStore], [PaymentStatus], [PaymentStatusId], [Active], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (105, N'201332d6-c442-468b-a53b-d0b8912d827a', N'bbd59a68-7d93-4311-80bf-9a5a5f3abcf7', 1, N'Pending', 1, N'Home Delivery', 110, 0, 110, 0, 110, 1, N'Bkash', CAST(N'2018-01-20T02:14:03.3173220' AS DateTime2), NULL, NULL, 0, N'InComplete', 1, 1, CAST(N'2018-01-20T02:14:03.3173220' AS DateTime2), CAST(N'2018-01-20T02:14:03.3173220' AS DateTime2))
INSERT [dbo].[OrdersTbl] ([Id], [GuidId], [CustomerId], [OrderStatusId], [OrderStatus], [ShippingMethodId], [ShippingMethod], [TotalProductPrice], [ShippingPrice], [TotalPriceAfterShipping], [OrderDiscountPrice], [TotalPriceAfterShippingAndDiscount], [PaymentMethodId], [PaymentMethod], [OrderDate], [ShippingDate], [BillingDate], [PickUpInStore], [PaymentStatus], [PaymentStatusId], [Active], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (106, N'2a7e0a3f-86e7-4200-a5aa-9e689dc4e681', N'bbd59a68-7d93-4311-80bf-9a5a5f3abcf7', 1, N'Pending', 1, N'Home Delivery', 20000, 0, 20000, 0, 20000, 1, N'Bkash', CAST(N'2018-01-21T23:26:23.4773706' AS DateTime2), NULL, NULL, 0, N'InComplete', 1, 1, CAST(N'2018-01-21T23:26:23.4773706' AS DateTime2), CAST(N'2018-01-21T23:26:23.4773706' AS DateTime2))
INSERT [dbo].[OrdersTbl] ([Id], [GuidId], [CustomerId], [OrderStatusId], [OrderStatus], [ShippingMethodId], [ShippingMethod], [TotalProductPrice], [ShippingPrice], [TotalPriceAfterShipping], [OrderDiscountPrice], [TotalPriceAfterShippingAndDiscount], [PaymentMethodId], [PaymentMethod], [OrderDate], [ShippingDate], [BillingDate], [PickUpInStore], [PaymentStatus], [PaymentStatusId], [Active], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (107, N'c173c8e9-4d94-4f25-b000-f4eeef93ac79', N'3dc2f407-571a-4964-a31a-aca6f2782ee6', 1, N'Pending', 1, N'Home Delivery', 5583, 0, 5583, 0, 5583, 1, N'Bkash', CAST(N'2018-01-23T04:37:12.4047300' AS DateTime2), NULL, NULL, 0, N'InComplete', 1, 1, CAST(N'2018-01-23T04:37:12.4047300' AS DateTime2), CAST(N'2018-01-23T04:37:12.4047300' AS DateTime2))
INSERT [dbo].[OrdersTbl] ([Id], [GuidId], [CustomerId], [OrderStatusId], [OrderStatus], [ShippingMethodId], [ShippingMethod], [TotalProductPrice], [ShippingPrice], [TotalPriceAfterShipping], [OrderDiscountPrice], [TotalPriceAfterShippingAndDiscount], [PaymentMethodId], [PaymentMethod], [OrderDate], [ShippingDate], [BillingDate], [PickUpInStore], [PaymentStatus], [PaymentStatusId], [Active], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (108, N'03609892-45a4-4ea7-9955-64f62b918b63', N'bbd59a68-7d93-4311-80bf-9a5a5f3abcf7', 1, N'Pending', 1, N'Home Delivery', 10715, 0, 10715, 0, 10715, 1, N'Bkash', CAST(N'2018-01-24T05:00:01.6959782' AS DateTime2), NULL, NULL, 0, N'InComplete', 1, 1, CAST(N'2018-01-24T05:00:01.6959782' AS DateTime2), CAST(N'2018-01-24T05:00:01.6959782' AS DateTime2))
INSERT [dbo].[OrdersTbl] ([Id], [GuidId], [CustomerId], [OrderStatusId], [OrderStatus], [ShippingMethodId], [ShippingMethod], [TotalProductPrice], [ShippingPrice], [TotalPriceAfterShipping], [OrderDiscountPrice], [TotalPriceAfterShippingAndDiscount], [PaymentMethodId], [PaymentMethod], [OrderDate], [ShippingDate], [BillingDate], [PickUpInStore], [PaymentStatus], [PaymentStatusId], [Active], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (109, N'ba225dd0-42f8-4b93-9a94-877254d9612e', N'bbd59a68-7d93-4311-80bf-9a5a5f3abcf7', 1, N'Pending', 1, N'Home Delivery', 1040, 0, 1040, 0, 1040, 1, N'Bkash', CAST(N'2018-01-24T05:01:53.2615484' AS DateTime2), NULL, NULL, 0, N'InComplete', 1, 1, CAST(N'2018-01-24T05:01:53.2615484' AS DateTime2), CAST(N'2018-01-24T05:01:53.2615484' AS DateTime2))
INSERT [dbo].[OrdersTbl] ([Id], [GuidId], [CustomerId], [OrderStatusId], [OrderStatus], [ShippingMethodId], [ShippingMethod], [TotalProductPrice], [ShippingPrice], [TotalPriceAfterShipping], [OrderDiscountPrice], [TotalPriceAfterShippingAndDiscount], [PaymentMethodId], [PaymentMethod], [OrderDate], [ShippingDate], [BillingDate], [PickUpInStore], [PaymentStatus], [PaymentStatusId], [Active], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (110, N'a4a98a76-0f31-48f1-856d-df01a7ff8659', N'bbd59a68-7d93-4311-80bf-9a5a5f3abcf7', 1, N'Pending', 1, N'Home Delivery', 2175, 0, 2175, 0, 2175, 1, N'Bkash', CAST(N'2018-01-24T05:28:31.5226155' AS DateTime2), NULL, NULL, 0, N'InComplete', 1, 1, CAST(N'2018-01-24T05:28:31.5226155' AS DateTime2), CAST(N'2018-01-24T05:28:31.5226155' AS DateTime2))
INSERT [dbo].[OrdersTbl] ([Id], [GuidId], [CustomerId], [OrderStatusId], [OrderStatus], [ShippingMethodId], [ShippingMethod], [TotalProductPrice], [ShippingPrice], [TotalPriceAfterShipping], [OrderDiscountPrice], [TotalPriceAfterShippingAndDiscount], [PaymentMethodId], [PaymentMethod], [OrderDate], [ShippingDate], [BillingDate], [PickUpInStore], [PaymentStatus], [PaymentStatusId], [Active], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (111, N'4fe28240-f42e-46a1-87af-56bca4b965b7', N'bbd59a68-7d93-4311-80bf-9a5a5f3abcf7', 1, N'Pending', 1, N'Home Delivery', 215, 0, 215, 0, 215, 1, N'Bkash', CAST(N'2018-01-24T08:49:33.8611969' AS DateTime2), NULL, NULL, 0, N'InComplete', 1, 1, CAST(N'2018-01-24T08:49:33.8611969' AS DateTime2), CAST(N'2018-01-24T08:49:33.8611969' AS DateTime2))
SET IDENTITY_INSERT [dbo].[OrdersTbl] OFF
SET IDENTITY_INSERT [dbo].[ProductTbl] ON 

INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (1, N'Garlic', N'রসুন', NULL, NULL, 36, NULL, N'Content/images/products/garlic.jpg', 60, 58, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'১ কেজি', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-11-18T08:38:31.0916354' AS DateTime2), CAST(N'2017-12-17T03:35:22.9285631' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (2, N'Oven', N'ওভেন', N'Model:LG MC2886BRUM(11382)', N'Model:LG MC2886BRUM(11382)', 41, NULL, N'Content/images/products/LG%20MC2886BRUM.jpg', 21900, 21850, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-11-18T00:03:52.5021892' AS DateTime2), CAST(N'2018-01-23T22:25:58.3423121' AS DateTime2), 0)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (3, N'onion deshi', N'পিয়াজ দেশী', NULL, NULL, 36, NULL, N'Content/images/products/onion%20deshi.jpg', 50, 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-11-18T08:29:26.7479218' AS DateTime2), CAST(N'2018-01-11T01:43:16.9460340' AS DateTime2), 0)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (4, N'Medicine', N'ঔষধ ', NULL, NULL, 40, NULL, N'Content/images/products/teblet.jpg', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-11-18T09:11:31.9666389' AS DateTime2), CAST(N'2018-01-11T01:56:20.6997910' AS DateTime2), 0)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (5, N'Freeze', N'ফ্রিজ', N'Model:LG GC-269VL(PS-3) L(10820)', NULL, 41, NULL, N'Content/images/products/LG%20GC-269VL(PS-3)%20L.jpg', 42221, 42200, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-11-17T23:26:58.6740616' AS DateTime2), CAST(N'2018-01-23T22:26:47.7809923' AS DateTime2), 0)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (6, N'Moshur Dal (Deshi)', N'মাসুরুর ডাল(দেশী)', N'These skinless, red lentils are small and round. They are fast-cooking and don''t need to be soaked. They are often cooked, mashed and added to curries and soups. Masoor is a very versatile lentil and has a creamy texture and warming flavor.', N'ডাল চামড়াহীন, লাল ছোট এবং গোলাকার হয়।দ্রুত-রান্না হয় .মাসুরুর বহুমুখী স্বাদ রয়েছে।', 15, NULL, N'Content/images/products/moshur-dal-deshi.jpg', 100, 95, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 2, 1, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-11-17T08:35:09.0490609' AS DateTime2), CAST(N'2017-12-17T03:40:46.9203736' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (7, N'Oven', N'ওভেন', N'Model:LG MH6565DIS(11441)', NULL, 41, NULL, N'Content/images/products/LG MH6565DIS.jpg', 18200, 18000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-11-18T00:11:42.0959726' AS DateTime2), CAST(N'2018-01-23T22:27:42.0424712' AS DateTime2), 0)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (8, N'Garlic deshi', N'আদা দেশী', NULL, NULL, 36, NULL, N'Content/images/products/ginger%20DESHI.gif', 80, 75, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-11-18T08:50:20.2791606' AS DateTime2), CAST(N'2017-12-17T03:42:11.2951369' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (9, N'Freeze', N'ফ্রিজ', N'Model:LG GL-B282 RPHG(PURPLE ORCHID)(11397)', N'Model:LG GL-B282 RPHG(PURPLE ORCHID)(11397)', 41, NULL, N'Content/images/products/LG GL-B282 RPHG(PURPLE ORCHID).jpg', 46000, 45650, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-11-17T23:48:22.6584380' AS DateTime2), CAST(N'2018-01-23T22:29:38.8138606' AS DateTime2), 0)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (10, N'Sugar', N'চিনি', NULL, NULL, 1, NULL, N'Content/images/products/suger.jpg', 55, 52, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'১ কেজি', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-11-18T09:52:39.0760141' AS DateTime2), CAST(N'2017-12-17T22:59:37.4519964' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (11, N'Cooking oil', N'রান্নার তেল ', NULL, NULL, 1, NULL, N'Content/images/products/oil.jpg', 530, 500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'5.0000', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-11-18T09:55:37.0448111' AS DateTime2), CAST(N'2017-12-17T03:42:47.4043148' AS DateTime2), 0)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (12, N'onion indian', N'পিয়াজ ইন্ডিয়ান', NULL, NULL, 36, NULL, N'Content/images/products/onion%20indian.jpg', 65, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'১ কেজি', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-11-18T08:32:23.3104485' AS DateTime2), CAST(N'2018-01-14T05:51:46.7226008' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (13, N'Freeze', N'ফ্রিজ', N'Model:LG GC-269VP(WINE CRYSTAL)(11122)', NULL, 41, NULL, N'Content/images/products/61049982/LG GC-269VP(WINE CRYSTAL)2 (1).jpg', 44100, 44000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-11-17T23:31:44.5022505' AS DateTime2), CAST(N'2018-01-23T22:31:38.8677721' AS DateTime2), 0)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (14, N'Ginger indian', N'আদা ইন্ডিয়ান', NULL, NULL, 36, NULL, N'Content/images/products/ginger.jpg', 80, 75, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-11-18T08:43:26.2478853' AS DateTime2), CAST(N'2017-12-17T03:47:37.3521360' AS DateTime2), 0)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (16, N'Freeze', N'ফ্রিজ', N'Model:LG GL-B282 RPHG(SCARLET FLORID)(11400)', N'Model:LG GL-B282 RPHG(SCARLET FLORID)(11400)', 41, NULL, N'Content/images/products/LG GL-B282 RPHG(SCARLET FLORID).jpg', 46100, 46000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-11-17T23:54:39.2209394' AS DateTime2), CAST(N'2018-01-23T22:35:13.6469239' AS DateTime2), 0)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (17, N'Freeze', N'ফ্রিজ', N'Model:LG GCS172SL(PLATINUM SILVER) L(11138)', NULL, 41, NULL, N'Content/images/products/LG%20GCS172SL(PLATINUM%20SILVER)%20L.jpg', 33200, 33000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-11-17T23:43:16.3615633' AS DateTime2), CAST(N'2018-01-23T22:36:19.0092810' AS DateTime2), 0)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (18, N'Mango(আম)', N'আম', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', N'ফরম জামা দিতে যেসব ডকুমেন্ট লাগবে : -------------------------------------------- ০১. অল একাডেমিক সার্টিফিকেট ফটোকপি ১ কপি করে | ০২. ২ কপি ছবি | ০৩. ন্যাশনাল ID কার্ড ফটোকপি ১ কপি | ০৪. এক্সপেরিয়েন্স সার্টিফিকেট (যদি থাকে ) |', 17, 10000, N'Content/images/products/mango-main.jpg', 10, 8, NULL, CAST(2.0000 AS Decimal(18, 4)), CAST(N'2017-11-09T16:42:00.0000000' AS DateTime2), CAST(N'2018-02-08T16:42:00.0000000' AS DateTime2), NULL, NULL, 1, 1, 4, 2, 1, 1, 0, 1, CAST(100.0000 AS Decimal(18, 4)), 1, 1, 1, 100, 0, 0, 1, CAST(N'2017-11-17T16:44:00.0000000' AS DateTime2), 5, 1, CAST(N'2017-11-09T16:44:00.0000000' AS DateTime2), CAST(N'2017-11-24T16:44:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-11-09T16:44:00.0000000' AS DateTime2), CAST(N'2018-05-03T16:44:00.0000000' AS DateTime2), NULL, CAST(N'2017-11-09T16:44:48.4245351' AS DateTime2), CAST(N'2017-12-17T03:56:02.5501706' AS DateTime2), 0)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (19, N'Freeze', N'ফ্রিজ', N'Model:ECO+BCD-252  (BLUE PRINT)(10932)', N'Model:ECO+ BCD-252  (BLUE PRINT)(10932)', 41, NULL, N'Content/images/products/butterfly-refrigerator-bcd-2521469347384.jpg', 25300, 25000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-11-17T22:15:20.3459387' AS DateTime2), CAST(N'2018-01-23T22:38:53.1437595' AS DateTime2), 0)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (20, N'Freeze', N'ফ্রিজ', N'Model:LG GCS172SV(RED)L(11139)', NULL, 41, NULL, N'Content/images/products/LG GCS172SV(RED)L.jpg', 33400, 33200, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Red', NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-11-17T09:54:39.1896929' AS DateTime2), CAST(N'2018-01-23T22:39:21.5239723' AS DateTime2), 0)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (21, N'TV', N'টিভি', N'Model:LG LED 24LB451A(11046)', N'<p>Model:LG LED 24LB451A(11046)<br>২৪ ইঞ্চি এল ই ডি টেলিভিষন।<br>&nbsp;<br><br><br></p>', 41, NULL, N'Content/images/products/LG%20LED%2024LB451A.jpg', 20100, 20000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-11-17T23:58:28.0021870' AS DateTime2), CAST(N'2018-01-23T22:44:25.7529310' AS DateTime2), 0)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (22, N'Freeze', N'ফ্রিজ', N'Model:LG 2B282SPHG(MP)(11219)', N'<p>Model:LG 2B282SPHG(MP)(11219)</p>', 41, NULL, N'Content/images/products/LG%202B282SPHG(MP).png', 46200, 46000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-11-17T10:00:35.8772446' AS DateTime2), CAST(N'2018-01-23T22:45:51.3066127' AS DateTime2), 0)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (23, N'Birth day market', N'জন্ম দিনের বাজার ', NULL, NULL, NULL, NULL, N'Content/images/products/hb%20pwc%202%20layer1.jpg', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-11-18T10:02:25.2635308' AS DateTime2), CAST(N'2017-12-27T04:12:04.4325673' AS DateTime2), 0)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (24, N'Material of education ', N'লেখাপড়ার সামগ্রী ', NULL, NULL, 16, NULL, N'Content/images/products/book.jpg', 140, 90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-11-18T09:08:52.9510121' AS DateTime2), CAST(N'2018-01-11T01:44:19.5792759' AS DateTime2), 0)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (25, N'Freeze', N'ফ্রিজ', N'Model:ECO+ BCD-235 GLASS DOOR (BLACK-G2)(11388)', NULL, 41, NULL, N'Content/images/products/17306326/ecobcdBlack.jpg', 32300, 32000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-11-17T10:06:49.5178107' AS DateTime2), CAST(N'2018-01-23T22:46:21.5256576' AS DateTime2), 0)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (26, N'Freeze', N'ফ্রিজ', N'Model:LG GC-249VL(PS) L(10819)', NULL, 41, NULL, N'Content/images/products/LG GC-249VL(PS) L.png', 43400, 43000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-11-17T22:51:08.8459385' AS DateTime2), CAST(N'2018-01-23T22:38:05.9972951' AS DateTime2), 0)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (27, N'Freeze', N'ফ্রিজ', N'Model:ECO+BD-199SG (RED)(11372)', N'<p>Model:ECO+BD-199SG (RED)(11372)</p>', 41, NULL, N'Content/images/products/66278764/Eco.jpg', 26100, 26000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-11-17T22:40:58.5178339' AS DateTime2), CAST(N'2018-01-23T22:48:54.8219763' AS DateTime2), 0)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (28, N'Newborn baby rampar', N'নিউবর্ন বেবী রম্পার', NULL, NULL, 21, NULL, N'Content/images/products/baby romper.jpg', 280, 270, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-11-20T09:44:09.7401154' AS DateTime2), CAST(N'2018-01-11T05:50:06.7165615' AS DateTime2), 0)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (29, N'Freeze', N'ডীপ ফ্রিজ', N'Model:ECO+BD-199SG (RED)(11372)', N'Model:ECO+BD-199SG (RED)(11372)', NULL, NULL, N'Content/images/products/Eco.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-13T04:27:30.2143750' AS DateTime2), CAST(N'2018-01-11T03:35:25.0093690' AS DateTime2), 0)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (31, N'LUX', N'লাক্স', NULL, NULL, 8, NULL, N'Content/images/products/lux Perfume 150gm-42tk.jpg', 42, 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'১৫০গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-13T06:24:11.9956250' AS DateTime2), CAST(N'2017-12-13T06:24:11.9956250' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (32, N'Shezan orange jelly', N'সেজান অরেন্জ জেলী', NULL, NULL, 17, NULL, N'Content/images/products/Shezan orange jelly 440gm.jpeg', 120, 110, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'৪৪০গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-13T06:40:04.5112500' AS DateTime2), CAST(N'2017-12-13T06:40:04.5112500' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (37, N'soybean oil', N'সয়াবিন তেল', N'রুপচাঁদা সয়াবিন তেল', NULL, 1, NULL, N'Content/images/products/shoyabin oil 5L 540.jpg', 540, 520, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'৫ লিটার', NULL, NULL, NULL, CAST(N'2017-12-18T13:16:00.0000000' AS DateTime2), CAST(N'2017-12-31T13:16:00.0000000' AS DateTime2), NULL, CAST(N'2017-12-14T02:17:37.7925000' AS DateTime2), CAST(N'2017-12-14T02:17:37.7925000' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (39, N'Dove', N'ডাব', NULL, NULL, 8, NULL, N'Content/images/products/Dove.jpg', 95, 90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'১৩৫ গ্রাম', NULL, NULL, NULL, CAST(N'2017-12-31T10:43:00.0000000' AS DateTime2), NULL, NULL, CAST(N'2017-12-15T23:44:29.4643750' AS DateTime2), CAST(N'2017-12-15T23:44:29.4643750' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (40, N'Harpic', N'হারপিক', NULL, NULL, 6, NULL, N'Content/images/products/Harpic.jpg', 85, 80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'১ বোতল', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-16T00:44:24.6518750' AS DateTime2), CAST(N'2018-01-23T22:50:43.3856843' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (41, N'Alcemi', N'অ্যালকেমি', NULL, N'কবিতার বই', 25, NULL, N'Content/images/products/book.jpg', 140, 90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-16T01:00:03.1518750' AS DateTime2), CAST(N'2018-01-11T05:40:07.4293319' AS DateTime2), 0)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (43, N'premier cement', N'প্রিমিয়ার সিমেন্ট', NULL, NULL, 23, NULL, N'Content/images/products/bag.png', 400, 390, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, N'১ ব্যাগ', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-16T01:28:40.6050000' AS DateTime2), CAST(N'2018-01-23T03:16:21.0567232' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (45, N'Bashondara Gas', N'বসুন্ধরা', NULL, N'গ্যাস সিলিন্ডার', 4, NULL, N'Content/images/products/bashundara.jfif', 980, 980, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'১২ কেজি', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-18T02:34:25.0732500' AS DateTime2), CAST(N'2017-12-18T02:34:25.0732500' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (46, N'BM LP Gas', N'বি এম গ্যাস', N'গ্যাস সিলিন্ডার', N'গ্যাস সিলিন্ডার', 4, NULL, N'Content/images/products/bm lpg.jfif', 1000, 1000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'১২ কেজি', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-18T02:39:37.6982500' AS DateTime2), CAST(N'2017-12-18T02:39:37.6982500' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (47, N'Jamuna gas', N'যমুনা এলপি গ্যাস', N'গ্যাস সিলিন্ডার', N'গ্যাস সিলিন্ডার', 4, NULL, N'Content/images/products/Jamuna-Gas-cylinder-1.jpg', 1000, 1000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'১২ কেজি', NULL, NULL, NULL, NULL, CAST(N'2017-12-31T13:44:00.0000000' AS DateTime2), NULL, CAST(N'2017-12-18T02:45:12.9795000' AS DateTime2), CAST(N'2017-12-18T02:45:12.9795000' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (48, N'Padama Gas ', N'পদ্মা-এলপি গ্যাস', NULL, N'গ্যাস সিলিন্ডার', 4, NULL, N'Content/images/products/padma.jfif', 1000, 1000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'১২ কেজি', NULL, NULL, NULL, NULL, CAST(N'2017-12-31T13:51:00.0000000' AS DateTime2), NULL, CAST(N'2017-12-18T02:52:15.6201250' AS DateTime2), CAST(N'2017-12-18T02:52:15.6201250' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (49, N'Omera', N'ওমেরা এলপি গ্যাস', NULL, N'গ্যাস সিলিন্ডার', 4, NULL, N'Content/images/products/omera.jfif', 1070, 1070, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'১২ কেজি', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-18T02:59:27.6357500' AS DateTime2), CAST(N'2017-12-28T04:26:03.4615966' AS DateTime2), 0)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (50, N'Omera', N'ওমেরা এলপি গ্যাস', NULL, N'গ্যাস সিলিন্ডার', 4, NULL, N'Content/images/products/omera.jfif', 1070, 1070, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'১২ কেজি', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-18T03:03:49.6513750' AS DateTime2), CAST(N'2017-12-18T03:03:49.6513750' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (51, N'wheel washing powder', N'হূইল ওয়াশিং পাউডার', NULL, N'কাপড় ধোয়ার ভাল মানের পাউডার,যা হাতের কোন ক্ষতি করে না।', 6, NULL, N'Content/images/products/wheel 500g.jpg', 52, 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'৫০০ গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-18T03:46:06.2451250' AS DateTime2), CAST(N'2017-12-18T03:46:06.2451250' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (52, N'Total Gas', N'টোটাল গ্যাস', NULL, N'গ্যাস সিলিন্ডার', 4, NULL, N'Content/images/products/total gas.jfif', 1070, 1070, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'১২ কেজি', NULL, NULL, NULL, NULL, CAST(N'2017-12-31T11:27:00.0000000' AS DateTime2), NULL, CAST(N'2017-12-19T00:28:28.1982500' AS DateTime2), CAST(N'2017-12-19T00:28:28.1982500' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (53, N'Cerlach-1', N'সেরেলাক-১', NULL, NULL, 26, NULL, N'Content/images/products/cerelac1.jfif', 325, 320, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'৪০০ গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-19T02:07:08.5263750' AS DateTime2), CAST(N'2017-12-19T02:07:08.5263750' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (54, N'Cerlach -2', N'সেরেলাক-২', NULL, NULL, 26, NULL, N'Content/images/products/cerelac 2.jfif', 350, 345, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'৪০০ গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-19T02:13:15.4951250' AS DateTime2), CAST(N'2017-12-19T02:13:15.4951250' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (55, N'Cerelac-3', N'সেরেলাক-৩', NULL, NULL, 26, NULL, N'Content/images/products/cerelac 3.jfif', 375, 370, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'৪০০ গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-19T02:16:36.2607500' AS DateTime2), CAST(N'2017-12-19T02:16:36.2607500' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (56, N'Lactogen-1', N'ল্যাকটুজেন প্যাক-১', NULL, NULL, 26, NULL, N'Content/images/products/lactogen 1.jfif', 480, 475, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'৩৫০ গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-19T02:23:27.5420000' AS DateTime2), CAST(N'2017-12-19T02:23:27.5420000' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (57, N'Lactogen-1', N'ল্যাকটুজেন-২', NULL, NULL, 26, NULL, N'Content/images/products/lactogen 2.jfif', 480, 475, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'৩৫০ গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-19T02:36:04.7763750' AS DateTime2), CAST(N'2017-12-19T02:36:04.7763750' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (58, N'Lactogen-3', N'ল্যাকটুজেন-৩', NULL, NULL, 26, NULL, N'Content/images/products/lactogen3.jfif', 470, 465, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'৩৫০ গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-19T02:42:01.9013750' AS DateTime2), CAST(N'2017-12-19T02:42:01.9013750' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (59, N'Lactogen-1DV', N'ল্যাকটুজেন-১ ডিবি', NULL, NULL, 26, NULL, N'Content/images/products/1.jpg', 590, 585, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'৪০০ গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-19T03:15:37.9638750' AS DateTime2), CAST(N'2017-12-19T03:15:37.9638750' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (60, N'Lactogen-2 DV', N'ল্যাকটুজেন-২ ডিবি', NULL, NULL, 26, NULL, N'Content/images/products/2.jpg', 590, 585, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'৪০০ গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-19T03:22:44.8388750' AS DateTime2), CAST(N'2017-12-19T03:22:44.8388750' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (61, N'Lactogen-3DV', N'ল্যাকটুজেন-৩ ডিবি', NULL, NULL, 26, NULL, N'Content/images/products/3.jpg', 590, 585, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'৪০০ গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-19T03:28:40.9482500' AS DateTime2), CAST(N'2017-12-19T03:28:40.9482500' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (62, N'junior horlicks', N'জুনিয়র হরলিক্স', NULL, NULL, 26, NULL, N'Content/images/products/junior horlicks packet.jfif', 410, 400, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'৪০০ গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-19T03:47:40.6513750' AS DateTime2), CAST(N'2017-12-19T03:47:40.6513750' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (63, N'Horliks', N'হরলিক্স', NULL, NULL, 26, NULL, N'Content/images/products/horliks pot.jfif', 695, 685, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'১ কেজি', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-19T03:53:28.8545000' AS DateTime2), CAST(N'2017-12-19T03:53:28.8545000' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (64, N'Horliks', N'হরলিক্স', NULL, NULL, 26, NULL, N'Content/images/products/horliks pot.jfif', 395, 385, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'৫৫০ গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-19T04:07:44.6982500' AS DateTime2), CAST(N'2017-12-19T04:07:44.6982500' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (65, N'Horliks Women', N'হরলিক্স ওমেন', NULL, NULL, 26, NULL, N'Content/images/products/womens horlicks.jfif', 480, 470, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'৪০০ গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-19T04:13:31.1045000' AS DateTime2), CAST(N'2017-12-19T04:13:31.1045000' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (66, N'Horliks Mother', N' হরলিক্স মাদার', NULL, NULL, 26, NULL, N'Content/images/products/horlicks.jfif', 490, 480, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'৩৫০ গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-19T04:18:28.4482500' AS DateTime2), CAST(N'2017-12-19T04:18:28.4482500' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (69, N'Jewellery-1', N'গোল্ড প্লেটেড নেকলেস উইথ ম্যাচিং ইয়ার রিং', NULL, N'কোড-৬৭৮২', 13, NULL, N'Content/images/products/jL.jpg', 5500, 5000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-20T06:40:33.7138750' AS DateTime2), CAST(N'2017-12-20T06:40:33.7138750' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (70, N'Harpic', N'হারপিক', NULL, NULL, 6, NULL, N'Content/images/products/harpic.jfif', 115, 110, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'750gm', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-21T00:23:01.1670000' AS DateTime2), CAST(N'2017-12-21T00:23:01.1670000' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (71, N'rin power white', N'রিন পাওয়ার হোয়াইট', NULL, N'কাপড় ধোয়ার ভাল মানের গুড়া সাবান।', 6, NULL, N'Content/images/products/rin power white.jfif', 52, 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'৫০০ গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-21T00:39:30.1670000' AS DateTime2), CAST(N'2017-12-21T00:39:30.1670000' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (72, N'Vim', N'ভিম বার', NULL, NULL, 6, NULL, N'Content/images/products/vim soap.jfif', 30, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'৩২৫ গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-21T00:44:35.0732500' AS DateTime2), CAST(N'2017-12-21T00:44:35.0732500' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (73, N'vim ', N'ভিম লিকুইড', NULL, NULL, 6, NULL, N'Content/images/products/vim lique.jfif', 80, 78, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'২৫০মিলি.গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-21T00:49:34.0576250' AS DateTime2), CAST(N'2017-12-21T00:49:34.0576250' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (74, N'Cumin irani', N'জিরা ইরানি', NULL, NULL, 36, NULL, N'Content/images/products/jera.jpeg', 390, 385, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'১ কেজি', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-21T01:16:34.3388750' AS DateTime2), CAST(N'2017-12-21T01:16:34.3388750' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (75, N'Cumin Black', N'কালো জিরা', NULL, NULL, 36, NULL, N'Content/images/products/kalojira.jpg', 30, 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'১০০ গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-21T01:25:38.3232500' AS DateTime2), CAST(N'2017-12-21T01:25:38.3232500' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (76, N'Dry pepper', N'শুকনা মরিচ', NULL, NULL, 36, NULL, N'Content/images/products/drychillie.jpg', 155, 150, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'১ কেজি', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-21T01:31:13.8232500' AS DateTime2), CAST(N'2017-12-21T01:31:13.8232500' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (77, N'Parachute Beliful ', N'প্যারাসুড বেলিফুল তৈল', NULL, NULL, 8, NULL, N'Content/images/products/Parachute Beliful.jpg', 190, 180, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'৩০০ মিলি গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-21T01:48:54.7763750' AS DateTime2), CAST(N'2017-12-21T01:48:54.7763750' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (78, N'Parasuit coconut oil', N'প্যারাসুট তৈল', NULL, N'প্যারাসুট নারিকেল তৈল', 8, NULL, N'Content/images/products/parasuit oil.jfif', 110, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'২০০মিলি.গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-21T01:56:16.5576250' AS DateTime2), CAST(N'2017-12-21T01:56:16.5576250' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (79, N'Dabur amla oil', N'ডাবর আমলা তৈল', NULL, NULL, 8, NULL, N'Content/images/products/dabur amla oil.jfif', 195, 185, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'২৭৫মিলি.গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-21T02:10:06.0888750' AS DateTime2), CAST(N'2017-12-21T02:10:06.0888750' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (80, N'Vatika hair oil', N'বাটিকা তৈল ', NULL, N'বাটিকা তৈল  হেয়ার বড় সাইজ', 8, NULL, N'Content/images/products/vatika hair oil.jfif', 230, 220, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'৩০০ মিলি.গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-21T02:17:39.6826250' AS DateTime2), CAST(N'2017-12-21T02:17:39.6826250' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (81, N'Rice polaw', N'চাষী চিনি গুড়া চাল', NULL, N'চাষী চিনি গুড়া চাল প্যাক', 15, NULL, N'Content/images/products/chasi chinigura chawal.jfif', 125, 110, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'১ কেজি', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-21T03:22:06.5732500' AS DateTime2), CAST(N'2017-12-21T03:22:06.5732500' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (82, N'Fresh chinigura Rice', N'ফ্রেশ চিনি গুড়া চাল', NULL, N'ফ্রেশ চিনি গুড়া চাল প্যাক', 15, NULL, N'Content/images/products/fresh chinigura rice.jpg', 125, 110, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'১ কেজি', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-21T03:34:35.0263750' AS DateTime2), CAST(N'2017-12-21T03:34:35.0263750' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (83, N'Aci Pure salt', N'এসি আই পিওর লবণ', NULL, NULL, 15, NULL, N'Content/images/products/aci pure salt.jfif', 35, 32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'১ কেজি', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-21T03:50:55.2920000' AS DateTime2), CAST(N'2017-12-21T03:50:55.2920000' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (84, N'Molla Super salt', N'মোল্লা সুপার  সল্ট', NULL, N'মোল্লা সুপার  লবণ', 15, NULL, N'Content/images/products/molla salt.jfif', 35, 32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'১ কেজি', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-21T03:54:20.5888750' AS DateTime2), CAST(N'2017-12-21T03:54:20.5888750' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (85, N'Fresh Salt', N'ফ্রেশ সুপার প্রিমিয়াম সল্ট', NULL, N'ফ্রেশ সুপার প্রিমিয়াম লবণ আয়োডিন যুক্ত।', 15, NULL, N'Content/images/products/fresh-super-premium-salt.jpg', 35, 32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'১ কেজি', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-21T03:57:20.6513750' AS DateTime2), CAST(N'2017-12-21T03:57:20.6513750' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (86, N'Muskan-Salt', N'মুসকান লবণ', NULL, N'মুসকান আয়োডিন যুক্ত লবণ।', 15, NULL, N'Content/images/products/Muskan-Salt-1kg.jpg', 35, 32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'১ কেজি', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-21T04:05:23.7920000' AS DateTime2), CAST(N'2017-12-21T04:05:23.7920000' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (88, N'Nescafe', N'নেসক্যাফে কফি', NULL, N'নেসলে বাংলাদেশ লিমিটেড এর কফি.', 42, NULL, N'Content/images/products/96411719/nescafe coffe.jpg', 495, 490, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'২০০ গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-23T01:19:17.4560547' AS DateTime2), CAST(N'2017-12-23T01:19:17.4560547' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (89, N'Nescafe', N'নেসক্যাফে কফি', NULL, N'নেসলে বাংলাদেশ লিমিটেড এর কফি.', 42, NULL, N'Content/images/products/79884170/nescafe100gm.jpg', 300, 298, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'১০০ গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-23T01:23:00.9326172' AS DateTime2), CAST(N'2017-12-23T01:23:00.9326172' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (90, N'Nescafe', N'নেসক্যাফে কফি', NULL, N'নেসলে বাংলাদেশ লিমিটেড এর কফি.', 42, NULL, N'Content/images/products/57810144/nescafe 50gm.jpg', 265, 262, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'৫০ গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-23T01:26:33.4433594' AS DateTime2), CAST(N'2017-12-23T01:26:33.4433594' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (91, N'Taaza', N'তাজা চা', NULL, N'তাজা চা  ২০০গ্রাম', 42, NULL, N'Content/images/products/76957472/taza_h5wg-un_1.jpg', 85, 82, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'২০০ গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-23T01:30:51.6962891' AS DateTime2), CAST(N'2017-12-23T01:30:51.6962891' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (92, N'Taaza', N'তাজা চা', NULL, N'তাজা চা মন করে চাঙ্গা.', 42, NULL, N'Content/images/products/91001787/taza_h5wg-un_1.jpg', 165, 162, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'৪০০ গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-23T01:35:29.2314453' AS DateTime2), CAST(N'2017-12-23T01:35:29.2314453' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (93, N'Taaza', N'তাজা চা', NULL, N'তাজা চা মন করে চাঙ্গা..', 42, NULL, N'Content/images/products/69573657/taza_h5wg-un_1.jpg', 45, 44, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'১০০ গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-23T01:38:53.1464844' AS DateTime2), CAST(N'2017-12-23T01:38:53.1464844' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (94, N'Ispahani tea bag', N'ইস্পাহানি টি ব্যাগ', NULL, N'প্রতি পেকেটে রয়েছে ৫০টি চা ছোট ব্যাগ,যা চার দিক থেকে লিগার ছড়াই।', 42, NULL, N'Content/images/products/24113956/ispahani-tea-bag.jpg', 80, 78, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'১ বক্স', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-23T01:45:37.0400391' AS DateTime2), CAST(N'2017-12-23T01:45:37.0400391' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (95, N'Nido Milk', N'নিডো', NULL, N'নেসলে বাংলাদেশ লিমিটেড এর দুধ নিডো.', 10, NULL, N'Content/images/products/43139751/nido400gm.jpg', 260, 255, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'৪০০ গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-23T02:08:45.0517578' AS DateTime2), CAST(N'2017-12-23T02:08:45.0517578' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (96, N'Fresh Milk', N'ফ্রেশ দুধ', NULL, NULL, 10, NULL, N'Content/images/products/8717966/fresh milk400gm.jpeg', 215, 210, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'৪০০ গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-23T02:15:22.4033203' AS DateTime2), CAST(N'2017-12-23T02:15:22.4033203' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (97, N'Marks Milk', N'মার্কস দুধ', NULL, NULL, 10, NULL, N'Content/images/products/13693441/marks-400-gm.jpg', 215, 210, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'৪০০ গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-23T02:17:58.6552735' AS DateTime2), CAST(N'2017-12-23T02:17:58.6552735' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (98, N'Diploma Milk', N'ডিপ্লোমা দুধ', NULL, NULL, 10, NULL, N'Content/images/products/34038214/diploma 500gm.jpeg', 290, 285, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'৫০০ গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-23T02:26:53.7802735' AS DateTime2), CAST(N'2017-12-23T02:26:53.7802735' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (99, N'Atta', N'খোলা আটা', NULL, N'১ বস্তা,প্রতি বস্তাতে ৫০ কেজি.', 48, NULL, N'Content/images/products/17177027/atta50kg.jpg', 1350, 1250, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'৫০ কেজি', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-23T06:25:26.7099610' AS DateTime2), CAST(N'2017-12-23T06:25:26.7099610' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (100, N'Bashondara Atta', N'বসুন্ধরা আটা', NULL, NULL, 48, NULL, N'Content/images/products/46953193/bashundara atta.jfif', 35, 33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'১ কেজি', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-23T06:33:56.9003907' AS DateTime2), CAST(N'2017-12-23T06:33:56.9003907' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (101, N'Rupchada oil', N'রূপচাঁদা সয়াবিন তেল', NULL, NULL, 1, NULL, N'Content/images/products/19950203/rupchada 2.5 ltr.jfif', 216, 215, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'২ লিটার', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-23T06:41:53.8359375' AS DateTime2), CAST(N'2017-12-23T06:41:53.8359375' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (102, N'shodagor oil', N'সওদাগর সয়াবিন তেল', NULL, N'সওদাগর সয়াবিন তেল ৫ লিটার', 1, NULL, N'Content/images/products/1459583/shodagor oil.jpg', 500, 490, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'৫লিটার', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-23T07:02:26.4062500' AS DateTime2), CAST(N'2017-12-23T07:02:26.4062500' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (103, N'sugar 50kg', N'চিনির বস্তা', NULL, N'চিনির বস্তা ৫০ কেজি প্রতি বস্তা', 1, NULL, N'Content/images/products/53599136/Suger-BG20170429213437.jpg', 2700, 2600, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'৫০ কেজি', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-23T07:07:18.1074219' AS DateTime2), CAST(N'2017-12-23T07:07:18.1074219' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (104, N'Closeup', N'ক্লোজ-আপ', NULL, N'ক্লোজ-আপ বড় সাইজ ১৪৫গ্রাম.', 49, NULL, N'Content/images/products/31768523/close up.jpg', 105, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'১৪৫ গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-24T00:28:17.3964844' AS DateTime2), CAST(N'2017-12-24T00:28:17.3964844' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (105, N'Closeup-Medium', N'ক্লোজ-আপ(মিডিয়াম)', NULL, NULL, 49, NULL, N'Content/images/products/4816270/close up.jpg', 78, 75, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'১০০ গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-24T00:32:47.4228516' AS DateTime2), CAST(N'2017-12-24T00:32:47.4228516' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (106, N'colgate active salt', N'কোলগেট', NULL, N'কোলগেট অ্যাকটিব সল্ট.', 49, NULL, N'Content/images/products/33774989/colgate active salt.jfif', 120, 110, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'২০০ গ্রাম', NULL, NULL, NULL, CAST(N'2017-12-24T11:34:00.0000000' AS DateTime2), NULL, NULL, CAST(N'2017-12-24T00:37:11.7724609' AS DateTime2), CAST(N'2017-12-24T00:37:11.7724609' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (107, N'mediplus ds', N'ম্যাডি প্লাস', NULL, NULL, 49, NULL, N'Content/images/products/8443198/mediplus ds.jfif', 135, 130, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'১৪০ গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-24T00:40:55.8232422' AS DateTime2), CAST(N'2017-12-24T00:40:55.8232422' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (108, N'sensodyne', N'সেনসুডাইন', NULL, NULL, 49, NULL, N'Content/images/products/77220882/sensodyne.jfif', 195, 185, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'৭০গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-24T00:53:39.8300781' AS DateTime2), CAST(N'2017-12-24T00:53:39.8300781' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (109, N'Minicat Dada', N'মিনিকেট দাদা', NULL, N'মিনিকেট দাদা খুব ভাল মানের চাল।প্রতি বস্তাতে ৫০ কেজি করে আছে।', 15, NULL, N'Content/images/products/39427896/best quility.jfif', 3055, 3050, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'৫০ কেজি', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-24T23:16:36.6630859' AS DateTime2), CAST(N'2017-12-24T23:16:36.6630859' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (110, N'Atash Chikon', N'আটাশ-চিকন', NULL, N'২৮ চাল চিকন এবং খুবই ভাল।', 15, NULL, N'Content/images/products/69584061/images.jfif', 2310, 2300, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'৫০ কেজি', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-24T23:22:15.4824219' AS DateTime2), CAST(N'2017-12-24T23:22:15.4824219' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (111, N'Gold Plated Necklace', N'গোল্ড প্লেটেড নেকলেস', NULL, N'গোল্ড প্লেটেড নেকলেস উইথ ম্যাচিং ইয়ার রিং।কোড-৪৭৩৫', 13, NULL, N'Content/images/products/74769183/1(2000taka) copy.jpg', 2050, 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-24T23:30:17.2314453' AS DateTime2), CAST(N'2017-12-24T23:30:17.2314453' AS DateTime2), 1)
GO
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (112, N'Gold Plated Necklace', N'গোল্ড প্লেটেড নেকলেস-3', NULL, N'গোল্ড প্লেটেড নেকলেস উইথ ম্যাচিং ইয়ার রিং।কোড-৪৭৫৯', 13, NULL, N'Content/images/products/86788274/2(4000) copy.jpg', 4100, 4000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-24T23:34:28.7519531' AS DateTime2), CAST(N'2017-12-24T23:34:28.7519531' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (113, N'Gold Plated Necklace', N'গোল্ড প্লেটেড নেকলেস-4', NULL, N'গোল্ড প্লেটেড নেকলেস উইথ ম্যাচিং ইয়ার রিং।কোড-৪৬৭০', 13, NULL, N'Content/images/products/73055674/4(1500) copy.jpg', 1550, 1500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-24T23:39:38.4052734' AS DateTime2), CAST(N'2017-12-24T23:39:38.4052734' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (114, N'Gold Plated Necklace', N'গোল্ড প্লেটেড নেকলেস-5', NULL, N'গোল্ড প্লেটেড নেকলেস উইথ ম্যাচিং ইয়ার রিং কোড-৪৬৭৫', 13, NULL, N'Content/images/products/33853515/5(1700) copy.jpg', 1720, 1700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-24T23:53:57.0449219' AS DateTime2), CAST(N'2017-12-24T23:53:57.0449219' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (115, N'Gold Plated Necklace', N'গোল্ড প্লেটেড নেকলেস-6', NULL, N'গোল্ড প্লেটেড নেকলেস উইথ ম্যাচিং ইয়ার রিং।কোড-৪৭৩৩', 13, NULL, N'Content/images/products/93287442/6(1500) copy.jpg', 1550, 1500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-24T23:58:13.8027344' AS DateTime2), CAST(N'2017-12-24T23:58:13.8027344' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (116, N'Gold Plated Necklace', N'গোল্ড প্লেটেড নেকলেস-7', NULL, N'গোল্ড প্লেটেড নেকলেস উইথ ম্যাচিং ইয়ার রিং কোড-৪৮৭৪', 13, NULL, N'Content/images/products/90687003/7(2000) copy.jpg', 2020, 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-25T00:02:20.1582031' AS DateTime2), CAST(N'2017-12-25T00:02:20.1582031' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (117, N'Gold Plated Necklace', N'গোল্ড প্লেটেড নেকলেস-৮', NULL, N'গোল্ড প্লেটেড নেকলেস উইথ ম্যাচিং ইয়ার রিং কোড-৪৬৮১', 13, NULL, N'Content/images/products/88364496/8(1500) copy.jpg', 1550, 1500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-25T00:05:54.0332031' AS DateTime2), CAST(N'2017-12-25T00:05:54.0332031' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (118, N'Gold Plated Necklace', N'গোল্ড প্লেটেড নেকলেস-9', NULL, N'গোল্ড প্লেটেড নেকলেস উইথ ম্যাচিং ইয়ার রিং কোড-৪৬১৯', 13, NULL, N'Content/images/products/24565289/10(2000) copy.jpg', 2050, 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-25T00:08:44.1113281' AS DateTime2), CAST(N'2017-12-25T00:08:44.1113281' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (119, N'Gold Plated Necklace', N'গোল্ড প্লেটেড নেকলেস-10', NULL, N'গোল্ড প্লেটেড নেকলেস উইথ ম্যাচিং ইয়ার রিং কোড-৪৭৩৫', 13, NULL, N'Content/images/products/18801937/11(2000) copy.jpg', 2010, 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-25T00:12:12.3066406' AS DateTime2), CAST(N'2017-12-25T00:12:12.3066406' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (120, N'Gold Plated Necklace', N'গোল্ড প্লেটেড নেকলেস-11', NULL, N'গোল্ড প্লেটেড নেকলেস উইথ ম্যাচিং ইয়ার রিং কোড-৪৬৬৬', 13, NULL, N'Content/images/products/70376606/12(1600) copy.jpg', 1649, 1600, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-25T00:14:28.3173828' AS DateTime2), CAST(N'2017-12-25T00:14:28.3173828' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (121, N'Gold Plated Necklace', N'গোল্ড প্লেটেড নেকলেস-12', NULL, N'গোল্ড প্লেটেড নেকলেস উইথ ম্যাচিং ইয়ার রিং কোড-৪৭৪৭', 13, NULL, N'Content/images/products/93460784/13(3100) copy.jpg', 3155, 3100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-25T00:16:54.7539063' AS DateTime2), CAST(N'2017-12-25T00:16:54.7539063' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (122, N'Gold Plated Necklace', N'গোল্ড প্লেটেড নেকলেস-13', NULL, N'গোল্ড প্লেটেড নেকলেস উইথ ম্যাচিং ইয়ার রিং কোড-৪৬৭৮', 13, NULL, N'Content/images/products/66339390/14(1500) copy.jpg', 1549, 1500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2017-12-25T00:19:18.6406250' AS DateTime2), CAST(N'2017-12-25T00:19:18.6406250' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (123, N'Teer Atta', N'তীর আটা', NULL, NULL, 48, NULL, N'Content/images/products/19977174/teer atta.jpg', 35, 33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'১ কেজি', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-01-01T04:26:05.9970704' AS DateTime2), CAST(N'2018-01-01T04:26:05.9970704' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (124, N'Pran Orange jelly', N'প্রাণ অরেঞ্জ জেলী', NULL, NULL, 17, NULL, N'Content/images/products/54540405/pran jelly.jpg', 110, 105, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'৪৪০ গ্রাম', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-01-11T05:46:24.0484716' AS DateTime2), CAST(N'2018-01-11T05:46:24.0484716' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (1124, N'rice Barn', N'গাভী ময়নামতি ভূষি', NULL, N'<p>খুবই উন্নত মানের গমের ভূষি,যা খেলে গাভীর পুুষ্টি ও দুধ বৃদ্ধি পাবে।<br></p>', 27, NULL, N'Content/images/products/75028098/rice-bran.jpg', 1000, 990, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, CAST(40.0000 AS Decimal(18, 4)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'৩৭ কেজি', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-01-12T23:08:23.3753291' AS DateTime2), CAST(N'2018-01-13T01:09:46.8290840' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (1125, N'Khoyol', N'সরিষার খৈল', NULL, NULL, 27, NULL, N'Content/images/products/76351882/khoyol.jpg', 2300, 2290, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, CAST(40.0000 AS Decimal(18, 4)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'৭৪ কেজি', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-01-12T23:12:42.4136498' AS DateTime2), CAST(N'2018-01-13T01:16:03.8922573' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (1126, N'Salt', N'লবণ(গরুর)', NULL, NULL, 27, NULL, N'Content/images/products/68308345/sad.jpg', 1150, 1110, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, CAST(40.0000 AS Decimal(18, 4)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'৭৪ কেজি', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-01-12T23:21:01.3072265' AS DateTime2), CAST(N'2018-01-13T01:17:20.4729091' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (1127, N'Chitagor', N'চিটাগুড়( নারায়ণগঞ্জ)', NULL, NULL, 27, NULL, N'Content/images/products/42061254/12.jpg', 760, 750, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, CAST(20.0000 AS Decimal(18, 4)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'২০ কেজি', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-01-12T23:24:33.9254323' AS DateTime2), CAST(N'2018-01-13T01:19:14.4223989' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (1128, N'Chitagor-1', N'চিটাগুড়( নারায়ণগঞ্জ)', NULL, NULL, 27, NULL, N'Content/images/products/55311686/12.jpg', 210, 200, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, CAST(10.0000 AS Decimal(18, 4)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'৫ কেজি', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-01-12T23:27:48.6922918' AS DateTime2), CAST(N'2018-01-13T01:23:02.1319191' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (1129, N'SB Feed', N'এস.বি ফিড(দুধের গরু)', NULL, NULL, 27, NULL, N'Content/images/products/99378725/sbfeed.jpg', 700, 690, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, CAST(20.0000 AS Decimal(18, 4)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'২৫ কেজি', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-01-12T23:32:22.2472111' AS DateTime2), CAST(N'2018-01-13T01:24:16.6791898' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (1130, N'Kaya feed', N'কেয়া ফিড(দুধের গরু)', NULL, NULL, 27, NULL, N'Content/images/products/10668018/kayafeed.jpg', 700, 680, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, CAST(20.0000 AS Decimal(18, 4)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'২৫ কেজি', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-01-12T23:44:52.7067549' AS DateTime2), CAST(N'2018-01-13T01:26:27.4108708' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (1131, N'Kaya feed', N'কেয়া ফিড(গুরু মোটাতাজা)', NULL, N'গরু মোটাতাজা করার জন্য এই ফিড উত্তম।', 27, NULL, N'Content/images/products/27332124/kaya motataza.jpg', 760, 750, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, CAST(20.0000 AS Decimal(18, 4)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'২৫ কেজি', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-01-12T23:48:12.6887485' AS DateTime2), CAST(N'2018-01-15T01:57:12.3264609' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (1132, N'Junayed Telecom', N'জুনায়েদ টেলিকম', N'<p><br></p>', N'সেবা সমূহ:মোবাইলে কান্ট্রিলক খোলা হয় ,সফটওয়্যার ও হার্ডওয়্যারের&nbsp; কাজ করা হয়,এবং ই-মেইল করা হয়.সকল প্রকার মোবাইল এর অফিসিয়াল ফাইল দিয়ে গ্যারান্টি সহকারে ফ্লাশ করা হয়।পাইকারী ও খুচরা বিক্রয় করা হয়।মোবাইল করুন 01827535687(সময় সন্ধ্যা ৭টা থেকে রাত ১০টা)<br>', 1050, NULL, N'Content/images/products/65025477/morshed222.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-01-14T06:10:16.1501190' AS DateTime2), CAST(N'2018-01-18T01:37:09.3328052' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (1133, N'Walton-1', N'ওয়ালটন-১', NULL, NULL, 41, NULL, N'Content/images/products/2295909/WFA-2A3-CDBX-XX23100.jpg', 23100, 22000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, CAST(300.0000 AS Decimal(18, 4)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-01-23T04:02:23.7789615' AS DateTime2), CAST(N'2018-01-23T04:04:19.1667694' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (1134, N'Walton-2', N'ওয়ালটন-২', NULL, N'<p>Walton-2 (WFA-2A3-CDBX-XX)<br></p>', 41, NULL, N'Content/images/products/96761819/WFA-2A3-CDLB-XX 23100.jpg', 23100, 22000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-01-23T04:12:57.6664043' AS DateTime2), CAST(N'2018-01-23T04:20:34.3888142' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (1135, N'Walton-3', N'ওয়ালটন-৩', NULL, N'<p>WFA-2A3-RLXX-CP<br></p>', 41, NULL, N'Content/images/products/92861160/WFA-2A3-RLXX-CP 23400.jpg', 23400, 22100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-01-23T04:18:14.4950459' AS DateTime2), CAST(N'2018-01-23T04:18:14.4950459' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (1136, N'Walton-4', N'ওয়ালটন-৪', NULL, N'<p>WFA-2A3-RLXX-XX<br></p>', 41, NULL, N'Content/images/products/24181923/WFA-2A3-RLXX-XX 22990.jpg', 22990, 21900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-01-23T04:25:34.3129064' AS DateTime2), CAST(N'2018-01-23T04:25:34.3129064' AS DateTime2), 1)
INSERT [dbo].[ProductTbl] ([Id], [ProductName_English], [ProductName_Bangla], [Description_English], [Description_Bangla], [CategoryId], [QuantityInStock], [MainImagePath], [UnitPrice], [OfferPrice], [DiscountPercentage], [DiscountAmount], [DiscountStartDateUtc], [DiscountEndDateUtc], [DiscountRequiresCouponCode], [CouponCode], [DisplayOrder], [IsHot], [BrandId], [MerchantId], [AllowCustomerReviews], [IsShipEnabled], [IsFreeShipping], [ShipSeparately], [AdditionalShippingCharge], [DisplayStockAvailability], [DisplayStockQuantity], [OrderMinimumQuantity], [OrderMaximumQuantity], [NotReturnable], [DisableBuyButton], [AvailableForPreOrder], [PreOrderAvailabilityStartDateTimeUtc], [ProductCost], [MarkAsNew], [MarkAsNewStartDateTimeUtc], [MarkAsNewEndDateTimeUtc], [Size], [Color], [Weight], [Length], [Width], [Height], [AvailableStartDateTimeUtc], [AvailableEndDateTimeUtc], [RelatedProductId], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (1137, N'Walton-5', N'ওয়ালটন-৫', NULL, N'<p>WFA-2A3-RXXX-XX<br></p>', 41, NULL, N'Content/images/products/94377637/WFA-2A3-RXXX-XX-22990.jpg', 22990, 21900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-01-23T04:28:38.6745680' AS DateTime2), CAST(N'2018-01-23T04:28:38.6745680' AS DateTime2), 1)
SET IDENTITY_INSERT [dbo].[ProductTbl] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 1/24/2018 11:31:33 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 1/24/2018 11:31:33 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 1/24/2018 11:31:33 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_RoleId]    Script Date: 1/24/2018 11:31:33 PM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 1/24/2018 11:31:33 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 1/24/2018 11:31:33 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BannerImageTbl] ADD  CONSTRAINT [DF_BannerImageTbl_DisplayOrder]  DEFAULT ((0)) FOR [DisplayOrder]
GO
ALTER TABLE [dbo].[BannerImageTbl] ADD  CONSTRAINT [DF_BannerImageTbl_MerchantId]  DEFAULT ((0)) FOR [MerchantId]
GO
ALTER TABLE [dbo].[BannerImageTbl] ADD  CONSTRAINT [DF_BannerImageTbl_CategoryId]  DEFAULT ((0)) FOR [CategoryId]
GO
ALTER TABLE [dbo].[BrandTbl] ADD  CONSTRAINT [DF_BrandTbl_DisplayOrder]  DEFAULT ((0)) FOR [DisplayOrder]
GO
ALTER TABLE [dbo].[CategoryTbl] ADD  CONSTRAINT [DF_CategoryTbl_Parent1Id]  DEFAULT ((0)) FOR [Parent1Id]
GO
ALTER TABLE [dbo].[CustomerSearchTbl] ADD  CONSTRAINT [DF_CustomerSearchTbl_UserId]  DEFAULT ((0)) FOR [UserId]
GO
ALTER TABLE [dbo].[MerchantTbl] ADD  CONSTRAINT [DF_MerchantTbl_DisplayOrder]  DEFAULT ((0)) FOR [DisplayOrder]
GO
ALTER TABLE [dbo].[OrderPaymentStatusTbl] ADD  CONSTRAINT [DF_OrderPaymentStatusTbl_DefaultStatus]  DEFAULT ((0)) FOR [DefaultStatus]
GO
ALTER TABLE [dbo].[OrdersProductTbl] ADD  CONSTRAINT [DF_OrdersProductTbl_ProductId]  DEFAULT ((0)) FOR [ProductId]
GO
ALTER TABLE [dbo].[OrderStatusTbl] ADD  CONSTRAINT [DF_OrderStatusTbl_DefaultStatus]  DEFAULT ((0)) FOR [DefaultStatus]
GO
ALTER TABLE [dbo].[ProductImageTbl] ADD  CONSTRAINT [DF_ProductImageTbl_ProductId]  DEFAULT ((0)) FOR [ProductId]
GO
ALTER TABLE [dbo].[ProductImageTbl] ADD  CONSTRAINT [DF_ProductImageTbl_DisplayOrder]  DEFAULT ((0)) FOR [DisplayOrder]
GO
ALTER TABLE [dbo].[ProductRelatedTbl] ADD  CONSTRAINT [DF_ProductRelatedTbl_ProductId]  DEFAULT ((0)) FOR [ProductId]
GO
ALTER TABLE [dbo].[ProductRelatedTbl] ADD  CONSTRAINT [DF_ProductRelatedTbl_RelatedProductId]  DEFAULT ((0)) FOR [RelatedProductId]
GO
ALTER TABLE [dbo].[ProductReviewTbl] ADD  CONSTRAINT [DF_ProductReviewTbl_ProdcutId]  DEFAULT ((0)) FOR [ProdcutId]
GO
ALTER TABLE [dbo].[ProductReviewTbl] ADD  CONSTRAINT [DF_ProductReviewTbl_CustomerId]  DEFAULT ((0)) FOR [CustomerId]
GO
ALTER TABLE [dbo].[ProductTbl] ADD  CONSTRAINT [DF_ProductTbl_CategoryId]  DEFAULT ((0)) FOR [CategoryId]
GO
ALTER TABLE [dbo].[ProductTbl] ADD  CONSTRAINT [DF_ProductTbl_BrandId]  DEFAULT ((0)) FOR [BrandId]
GO
ALTER TABLE [dbo].[ProductTbl] ADD  CONSTRAINT [DF_ProductTbl_MerchantId]  DEFAULT ((0)) FOR [MerchantId]
GO
ALTER TABLE [dbo].[ShipmentTbl] ADD  CONSTRAINT [DF_ShipmentTbl_OrderId]  DEFAULT ((0)) FOR [OrderId]
GO
ALTER TABLE [dbo].[UserTbl] ADD  CONSTRAINT [DF_UserTbl_UserId]  DEFAULT ((0)) FOR [UserId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
USE [master]
GO
ALTER DATABASE [DB_A2C6ED_shodypati] SET  READ_WRITE 
GO
