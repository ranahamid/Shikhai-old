USE [master]
GO
/****** Object:  Database [Shikhai]    Script Date: 8/10/2018 2:42:14 AM ******/
CREATE DATABASE [Shikhai]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Shikhai', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Shikhai.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Shikhai_log', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Shikhai_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Shikhai] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Shikhai].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Shikhai] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Shikhai] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Shikhai] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Shikhai] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Shikhai] SET ARITHABORT OFF 
GO
ALTER DATABASE [Shikhai] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Shikhai] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Shikhai] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Shikhai] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Shikhai] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Shikhai] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Shikhai] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Shikhai] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Shikhai] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Shikhai] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Shikhai] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Shikhai] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Shikhai] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Shikhai] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Shikhai] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Shikhai] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Shikhai] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Shikhai] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Shikhai] SET  MULTI_USER 
GO
ALTER DATABASE [Shikhai] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Shikhai] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Shikhai] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Shikhai] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Shikhai] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Shikhai] SET QUERY_STORE = OFF
GO
USE [Shikhai]
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
USE [Shikhai]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 8/10/2018 2:42:14 AM ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 8/10/2018 2:42:14 AM ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 8/10/2018 2:42:14 AM ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 8/10/2018 2:42:14 AM ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 8/10/2018 2:42:14 AM ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 8/10/2018 2:42:14 AM ******/
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
	[TeacherName] [nvarchar](256) NULL,
	[HospitalName] [nvarchar](256) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BannerImageTbl]    Script Date: 8/10/2018 2:42:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BannerImageTbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[URL] [nvarchar](256) NULL,
	[ImagePath] [nvarchar](256) NOT NULL,
	[Description] [nvarchar](256) NULL,
	[DisplayOrder] [int] NULL,
	[MerchantId] [int] NULL,
	[CategoryId] [int] NULL,
	[BannerGuidId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_BannerImage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BannerTbl]    Script Date: 8/10/2018 2:42:14 AM ******/
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
	[GuidId] [uniqueidentifier] NOT NULL,
	[IsHomePageBanner] [bit] NULL,
 CONSTRAINT [PK_Banner] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CategoryTbl]    Script Date: 8/10/2018 2:42:15 AM ******/
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
/****** Object:  Table [dbo].[ClassNameTbl]    Script Date: 8/10/2018 2:42:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClassNameTbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[DisplayOrder] [int] NULL,
	[CreatedOnUtc] [datetime2](7) NULL,
	[UpdatedOnUtc] [datetime2](7) NULL,
	[Published] [bit] NULL,
 CONSTRAINT [PK_SubjectTbl] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerSearchTbl]    Script Date: 8/10/2018 2:42:15 AM ******/
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
/****** Object:  Table [dbo].[GeoZoneTbl]    Script Date: 8/10/2018 2:42:15 AM ******/
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
/****** Object:  Table [dbo].[LocationTbl]    Script Date: 8/10/2018 2:42:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LocationTbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[DisplayOrder] [int] NULL,
	[CreatedOnUtc] [datetime2](7) NULL,
	[UpdatedOnUtc] [datetime2](7) NULL,
	[Published] [bit] NULL,
 CONSTRAINT [PK_LocationTbl] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LogTbl]    Script Date: 8/10/2018 2:42:15 AM ******/
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
/****** Object:  Table [dbo].[NewspaperTbl]    Script Date: 8/10/2018 2:42:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewspaperTbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NewsGuidId] [uniqueidentifier] NULL,
	[NewspaperName] [nvarchar](255) NULL,
	[AdLocation] [nvarchar](127) NULL,
	[PriceDescription] [int] NULL,
	[AdvertiserName] [nvarchar](255) NULL,
	[AdvertiserAddress] [nvarchar](255) NULL,
	[AdvertiserMobile] [nvarchar](20) NULL,
	[AdvertiserEmail] [nvarchar](100) NULL,
	[DateofPublication] [datetime2](7) NULL,
	[ColumnSize] [int] NULL,
	[Inch] [int] NULL,
	[TotalColumnInch] [int] NULL,
	[TotalPrice] [int] NULL,
	[AdCategoryId] [nvarchar](20) NULL,
	[Description] [nvarchar](4000) NULL,
	[Comments] [nvarchar](255) NULL,
	[MainImagePath] [nvarchar](255) NULL,
	[CreatedOnUtc] [datetime2](7) NULL,
	[UpdatedOnUtc] [datetime2](7) NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_NewspaperTbl] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderPaymentMethodTbl]    Script Date: 8/10/2018 2:42:15 AM ******/
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
/****** Object:  Table [dbo].[OrderPaymentStatusTbl]    Script Date: 8/10/2018 2:42:15 AM ******/
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
/****** Object:  Table [dbo].[PaymentTbl]    Script Date: 8/10/2018 2:42:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentTbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PaymentGuidId] [uniqueidentifier] NULL,
	[CreatedOnUtc] [datetime2](7) NULL,
	[UpdatedOnUtc] [datetime2](7) NULL,
	[OrderId] [int] NULL,
	[PaymentChannel] [nvarchar](255) NULL,
	[PaymentMobile] [nvarchar](20) NULL,
	[PaymentTrxId] [nvarchar](20) NULL,
	[PaymentAmount] [int] NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_PaymentTbl] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductTbl]    Script Date: 8/10/2018 2:42:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductTbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[IsBook] [bit] NULL,
	[IsStationary] [bit] NULL,
	[InstructionsImageUrl] [nvarchar](1000) NULL,
	[Published] [bit] NULL,
	[ShowOnHomePage] [bit] NULL,
	[CreatedOnUtc] [datetime2](7) NULL,
	[UpdatedOnUtc] [datetime2](7) NULL,
 CONSTRAINT [PK_ProductTbl] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RangeTbl]    Script Date: 8/10/2018 2:42:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RangeTbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LowerLimit] [int] NOT NULL,
	[UpperLimit] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[DisplayOrder] [int] NULL,
	[CreatedOnUtc] [datetime2](7) NULL,
	[UpdatedOnUtc] [datetime2](7) NULL,
	[Published] [bit] NULL,
 CONSTRAINT [PK_RangeTbl] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TeacherTbl]    Script Date: 8/10/2018 2:42:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TeacherTbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GuidId] [nvarchar](100) NULL,
	[FullName] [nvarchar](150) NOT NULL,
	[RegistrationNo] [int] NULL,
	[RegistrationType] [nvarchar](15) NULL,
	[ClinicHospitalName] [nvarchar](150) NULL,
	[Designation] [nvarchar](150) NOT NULL,
	[YearOfExperience] [decimal](18, 0) NULL,
	[WorkingArea] [nvarchar](500) NULL,
	[Addresss] [nvarchar](150) NULL,
	[DateOfBirth] [datetime2](7) NULL,
	[PhoneNumber] [nvarchar](15) NOT NULL,
	[Email] [nvarchar](100) NULL,
	[CanVisitDays] [nvarchar](20) NOT NULL,
	[CanTeachClass] [nvarchar](1000) NULL,
	[SelectedLocationId] [nvarchar](150) NULL,
	[SelectedCategory] [nvarchar](100) NULL,
	[CanTeachSubject] [nvarchar](1000) NULL,
	[TutionPrice] [int] NULL,
	[VisitTimeStart] [time](7) NOT NULL,
	[VisitTimeEnd] [time](7) NOT NULL,
	[SlotDuration] [int] NOT NULL,
	[VisitingCard] [nvarchar](150) NULL,
	[CreatedOnUtc] [datetime2](7) NULL,
	[UpdatedOnUtc] [datetime2](7) NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_DoctorTbl] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TestimonialTbl]    Script Date: 8/10/2018 2:42:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TestimonialTbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ImagePath] [nvarchar](255) NULL,
	[Description] [nvarchar](1000) NULL,
	[PersonName] [nvarchar](255) NOT NULL,
	[PersonTitle] [nvarchar](255) NULL,
	[DisplayOrder] [int] NULL,
	[CreatedOnUtc] [datetime2](7) NULL,
	[UpdatedOnUtc] [datetime2](7) NULL,
	[Published] [bit] NULL,
 CONSTRAINT [PK_TestimonialTbl] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserTbl]    Script Date: 8/10/2018 2:42:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserTbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
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
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'ddc2287a-910a-4272-8033-58df34cca189', N'Student')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'335552a1-7023-4e25-89a7-95acb6314ffb', N'Teacher')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'372a0721-a924-48d6-b72d-fd557424fcd3', N'335552a1-7023-4e25-89a7-95acb6314ffb')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3a86da90-854f-4f47-8142-a905017f6809', N'335552a1-7023-4e25-89a7-95acb6314ffb')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'61b0726c-62e8-4257-b29f-0b8621d0b383', N'335552a1-7023-4e25-89a7-95acb6314ffb')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'78fdcf28-b8ce-45c8-a654-f6eb7c143931', N'335552a1-7023-4e25-89a7-95acb6314ffb')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'92ad0151-cb43-465c-80c5-77a5e3fe5432', N'335552a1-7023-4e25-89a7-95acb6314ffb')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ac55f20a-87af-49d4-89da-ca617bda750d', N'335552a1-7023-4e25-89a7-95acb6314ffb')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c76c5ba2-d1b0-49e7-afb0-8ae21b287b0c', N'034c549d-9e78-4037-97d1-07d5c08b2d16')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'fb358602-a98c-4c79-82ee-e9bca3d9cd7d', N'335552a1-7023-4e25-89a7-95acb6314ffb')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Address], [IsFakeEmail], [TeacherName], [HospitalName], [Description]) VALUES (N'07c8a005-1458-4545-bec5-52332a348edc', N'ranahamid00ss7654@gmail.com', 0, N'AN0DSHsH3P9oQATxwGV2972knsD+MUHZls92qDm7SETbGR+U+jwkQjDGRBxp7OlGeA==', N'f9f0dfb0-57df-4cda-886d-beeda720c033', N'123456123456', 0, 0, NULL, 1, 0, N'123456123456', NULL, NULL, 0, N'123456123456', NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Address], [IsFakeEmail], [TeacherName], [HospitalName], [Description]) VALUES (N'372a0721-a924-48d6-b72d-fd557424fcd3', N'ranahamid007a@gmail.com', 0, N'AOqe+FEnYvNBfMxRqQ/iCo5jRPNPtzU2GHAH1Gf5QSeRmEyh3FcwfzFnSCi1UaGPdg==', N'd8cf17a9-a2df-4f1b-a847-16c108392956', N'12345612345622', 0, 0, NULL, 1, 0, N'12345612345622', NULL, NULL, 0, N'Pobon mama 2', NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Address], [IsFakeEmail], [TeacherName], [HospitalName], [Description]) VALUES (N'3a86da90-854f-4f47-8142-a905017f6809', N'ranahasdfm3id02340ss7654@gmail.com', 0, N'AII7O8aEDg2Mib3a9M+mEXYt4dvosxmVLr8ziCMQM4Qfv8Q6F6Vlilc/TLYgOcDehw==', N'8bf2dd01-73a7-4fdc-a473-6f52a92dfaa6', N'44444', 0, 0, NULL, 1, 0, N'44444', NULL, NULL, 0, N'1234561233sdf4564', NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Address], [IsFakeEmail], [TeacherName], [HospitalName], [Description]) VALUES (N'61b0726c-62e8-4257-b29f-0b8621d0b383', N'1015052066.mrh@grad.cse.buet.ac.bd', 0, N'ACKeyRQXZHnotocopHTwTYvctg5BW75WciW47K67iVYqTW1WIvuY2Be7Ua815C/XVQ==', N'92892ff4-7176-4427-8237-bbdcb084b22a', N'01717623876', 1, 0, NULL, 1, 0, N'ranahamid', NULL, NULL, 0, N'Rana hamid', NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Address], [IsFakeEmail], [TeacherName], [HospitalName], [Description]) VALUES (N'78fdcf28-b8ce-45c8-a654-f6eb7c143931', N'wer7@gmail.com', 0, N'AL+qh1GOdUmu4CPxIMFqxOBMwcIxdJqZzn7PNEHrqKDXV4DVRS4jIF6g2fzEMA8b5A==', N'319d91ba-a779-4f77-9ecc-ae8a686deaa9', N'5464', 0, 0, NULL, 1, 0, N'5464', NULL, NULL, 0, N'123456123456', NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Address], [IsFakeEmail], [TeacherName], [HospitalName], [Description]) VALUES (N'86030355-6206-4c71-8e17-03abcad793a4', N'ranahamid007654@gmail.com', 0, N'ABIdYxYDJ5FE4gFZv2u+XxkyzKvcPzkxlTL6xxNwRpPAJ2v5cD971D9ruvKpOIcyIQ==', N'c84bed42-a9f9-457d-8987-46ba2b0792ce', N'123456', 0, 0, NULL, 1, 0, N'123456', NULL, NULL, 0, N'rana hamid ##', NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Address], [IsFakeEmail], [TeacherName], [HospitalName], [Description]) VALUES (N'92ad0151-cb43-465c-80c5-77a5e3fe5432', N'ranahamid02340ss7654@gmail.com', 0, N'ABa6X6NWc0iv7/PNGlq28DffY9hMTLDg7WdCjCK7ap3egiO022wqiO4inCvtW+ieCA==', N'a154a83a-e236-4164-b1af-273683b67c35', N'11', 0, 0, NULL, 1, 0, N'11', NULL, NULL, 0, N'1234561234564', NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Address], [IsFakeEmail], [TeacherName], [HospitalName], [Description]) VALUES (N'ac55f20a-87af-49d4-89da-ca617bda750d', N'sid02342307@gmail.com', 0, N'AHdwSs+UiNQ30gWJLXfcw6WTowInhRXJiEfvVSaMNMcn5bk3Al/CgGmDGVLwJCjHTQ==', N'50fd8821-dd3c-4172-ba3e-2b6d28591da8', N'244', 0, 0, NULL, 1, 0, N'244', NULL, NULL, 0, N'Pobon mama', NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Address], [IsFakeEmail], [TeacherName], [HospitalName], [Description]) VALUES (N'c76c5ba2-d1b0-49e7-afb0-8ae21b287b0c', N'ranahamid007@gmail.com', 0, N'AFK49j3/ssoLmie6eOUvWUzqj0oQ3EVeeKR4kEORxKMzjngvYNi8s5+ityTfICF4lw==', N'47ea9242-046b-4e0e-aba2-b45529aaef5d', N'12345612345622', 1, 0, NULL, 0, 0, N'01717623876', NULL, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Address], [IsFakeEmail], [TeacherName], [HospitalName], [Description]) VALUES (N'd17bf3f1-47a7-4bdb-a6cf-3ef35f144df0', N'ranahamid00723@gmail.com', 0, N'AM3JPAnKwDgn+A7V4lf6vQmL2Cpg5VEnc4882piwU7QO9U6zUtUXYuAA/OvNYAiEvw==', N'32321af5-e754-4713-8dec-f259189e11be', N'3243242', 0, 0, NULL, 1, 0, N'3243242', N'HomeBanner- Shikhai', N'1', 0, N'2', N'234 432  ', N'324 ')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name], [Address], [IsFakeEmail], [TeacherName], [HospitalName], [Description]) VALUES (N'fb358602-a98c-4c79-82ee-e9bca3d9cd7d', N'ranahamid02342307@gmail.com', 0, N'AH2tqkfnRuPjqMG31xQ6KVSwEzwszyU+djoXS24bRlYMcQ7QiDOBMUzNXY1iUkBFwQ==', N'e4ca4288-f1e7-456e-a4c6-309f4f618700', N'12345612345623423', 0, 0, NULL, 1, 0, N'12345612345623423', NULL, NULL, 0, N'123456124234564', NULL, NULL)
SET IDENTITY_INSERT [dbo].[BannerImageTbl] ON 

INSERT [dbo].[BannerImageTbl] ([Id], [URL], [ImagePath], [Description], [DisplayOrder], [MerchantId], [CategoryId], [BannerGuidId]) VALUES (4, NULL, N'Content/images/banners/14608323/36295929_1732838343465866_1794011082239508480_n.jpg', NULL, 1, NULL, NULL, N'e098791f-802c-4a17-89ae-aed889e6b9ad')
INSERT [dbo].[BannerImageTbl] ([Id], [URL], [ImagePath], [Description], [DisplayOrder], [MerchantId], [CategoryId], [BannerGuidId]) VALUES (5, NULL, N'Content/images/banners/62905612/36295929_1732838343465866_1794011082239508480_n.jpg', NULL, 1, NULL, NULL, N'56d3f1e2-f453-4af7-a7b4-60f0dcc78880')
INSERT [dbo].[BannerImageTbl] ([Id], [URL], [ImagePath], [Description], [DisplayOrder], [MerchantId], [CategoryId], [BannerGuidId]) VALUES (2006, NULL, N'Content/images/banners/49934403/WLKNL-964x335-b_20170308094203.jpg', NULL, 1, NULL, NULL, N'f4997479-122d-4664-85e4-dbc27622a696')
INSERT [dbo].[BannerImageTbl] ([Id], [URL], [ImagePath], [Description], [DisplayOrder], [MerchantId], [CategoryId], [BannerGuidId]) VALUES (2007, NULL, N'Content/images/banners/14089781/Overseas-Teacher-Banner_banner.jpg', NULL, 1, NULL, NULL, N'f4997479-122d-4664-85e4-dbc27622a696')
INSERT [dbo].[BannerImageTbl] ([Id], [URL], [ImagePath], [Description], [DisplayOrder], [MerchantId], [CategoryId], [BannerGuidId]) VALUES (2008, NULL, N'Content/images/banners/94490826/improvedlearning_banner.jpg', NULL, 1, NULL, NULL, N'f4997479-122d-4664-85e4-dbc27622a696')
INSERT [dbo].[BannerImageTbl] ([Id], [URL], [ImagePath], [Description], [DisplayOrder], [MerchantId], [CategoryId], [BannerGuidId]) VALUES (2009, NULL, N'Content/images/banners/58646203/cropped-teaching-online-banner.jpg', NULL, 1, NULL, NULL, N'f4997479-122d-4664-85e4-dbc27622a696')
SET IDENTITY_INSERT [dbo].[BannerImageTbl] OFF
SET IDENTITY_INSERT [dbo].[BannerTbl] ON 

INSERT [dbo].[BannerTbl] ([Id], [Name], [CreatedOnUtc], [UpdatedOnUtc], [Published], [GuidId], [IsHomePageBanner]) VALUES (2002, N'Sikhahi- Banner 1', CAST(N'2018-07-15T12:34:20.9708913' AS DateTime2), CAST(N'2018-07-15T12:34:40.3922149' AS DateTime2), 1, N'f4997479-122d-4664-85e4-dbc27622a696', 1)
SET IDENTITY_INSERT [dbo].[BannerTbl] OFF
SET IDENTITY_INSERT [dbo].[CategoryTbl] ON 

INSERT [dbo].[CategoryTbl] ([Id], [Name_English], [Name_Bangla], [Description], [DisplayOrder], [ImagePath], [Parent1Id], [ShowOnHomePage], [IncludeInTopMenu], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (1, N'English Medium', NULL, NULL, 2, N'Content/images/categories/50490861/download.png', NULL, NULL, NULL, CAST(N'2018-07-15T12:42:29.9507793' AS DateTime2), CAST(N'2018-07-22T22:35:34.6818961' AS DateTime2), 1)
INSERT [dbo].[CategoryTbl] ([Id], [Name_English], [Name_Bangla], [Description], [DisplayOrder], [ImagePath], [Parent1Id], [ShowOnHomePage], [IncludeInTopMenu], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (2, N'Language', NULL, NULL, 3, N'Content/images/categories/69549959/jezici.jpg', NULL, 1, NULL, CAST(N'2018-07-15T12:43:21.9446364' AS DateTime2), CAST(N'2018-07-22T22:35:37.9197533' AS DateTime2), 1)
INSERT [dbo].[CategoryTbl] ([Id], [Name_English], [Name_Bangla], [Description], [DisplayOrder], [ImagePath], [Parent1Id], [ShowOnHomePage], [IncludeInTopMenu], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (3, N'Music', NULL, NULL, 4, N'Content/images/categories/47283227/music.png', NULL, 1, NULL, CAST(N'2018-07-15T12:44:08.9820755' AS DateTime2), CAST(N'2018-07-22T22:35:43.0303756' AS DateTime2), 1)
INSERT [dbo].[CategoryTbl] ([Id], [Name_English], [Name_Bangla], [Description], [DisplayOrder], [ImagePath], [Parent1Id], [ShowOnHomePage], [IncludeInTopMenu], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (4, N'Performing Arts', NULL, NULL, 5, N'Content/images/categories/46731577/isc-3-theatre-ronsombilonphotography-2-web_0.jpg', NULL, NULL, NULL, CAST(N'2018-07-15T12:45:16.4059630' AS DateTime2), CAST(N'2018-07-22T22:35:49.7898537' AS DateTime2), 1)
INSERT [dbo].[CategoryTbl] ([Id], [Name_English], [Name_Bangla], [Description], [DisplayOrder], [ImagePath], [Parent1Id], [ShowOnHomePage], [IncludeInTopMenu], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (5, N'Math', NULL, NULL, NULL, N'Content/images/categories/9819947/Math-Ed-Banner.jpg', 1, 1, 1, CAST(N'2018-07-15T12:49:28.8033758' AS DateTime2), CAST(N'2018-07-15T12:49:28.8033758' AS DateTime2), 1)
INSERT [dbo].[CategoryTbl] ([Id], [Name_English], [Name_Bangla], [Description], [DisplayOrder], [ImagePath], [Parent1Id], [ShowOnHomePage], [IncludeInTopMenu], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (6, N'Algebra', NULL, NULL, NULL, N'Content/images/categories/1453152/Algebra.png', 1, 1, NULL, CAST(N'2018-07-15T12:50:53.0489648' AS DateTime2), CAST(N'2018-07-22T18:37:12.0209647' AS DateTime2), 1)
INSERT [dbo].[CategoryTbl] ([Id], [Name_English], [Name_Bangla], [Description], [DisplayOrder], [ImagePath], [Parent1Id], [ShowOnHomePage], [IncludeInTopMenu], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (7, N'Reading', NULL, NULL, NULL, N'Content/images/categories/46080862/3-white-figures-reading.jpg', 1, 1, NULL, CAST(N'2018-07-15T12:51:43.6195838' AS DateTime2), CAST(N'2018-07-22T18:36:14.7325984' AS DateTime2), 1)
INSERT [dbo].[CategoryTbl] ([Id], [Name_English], [Name_Bangla], [Description], [DisplayOrder], [ImagePath], [Parent1Id], [ShowOnHomePage], [IncludeInTopMenu], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (8, N'chemistry', NULL, NULL, NULL, N'Content/images/categories/21123658/Physical-Chemistry-03.jpg', 1, 1, NULL, CAST(N'2018-07-15T12:52:50.7854284' AS DateTime2), CAST(N'2018-07-22T18:37:02.7155459' AS DateTime2), 1)
INSERT [dbo].[CategoryTbl] ([Id], [Name_English], [Name_Bangla], [Description], [DisplayOrder], [ImagePath], [Parent1Id], [ShowOnHomePage], [IncludeInTopMenu], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (9, N'English', NULL, NULL, NULL, N'Content/images/categories/54796269/learn-english-at-marbella-international-spanish-school-marbella.jpg', 2, 1, NULL, CAST(N'2018-07-15T12:54:16.1638982' AS DateTime2), CAST(N'2018-07-22T18:36:51.3218998' AS DateTime2), 1)
INSERT [dbo].[CategoryTbl] ([Id], [Name_English], [Name_Bangla], [Description], [DisplayOrder], [ImagePath], [Parent1Id], [ShowOnHomePage], [IncludeInTopMenu], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (10, N'Arabic', NULL, NULL, NULL, N'Content/images/categories/79062857/arabic.jpg', 2, 1, NULL, CAST(N'2018-07-15T12:55:14.7661861' AS DateTime2), CAST(N'2018-07-22T18:37:07.3908017' AS DateTime2), 1)
INSERT [dbo].[CategoryTbl] ([Id], [Name_English], [Name_Bangla], [Description], [DisplayOrder], [ImagePath], [Parent1Id], [ShowOnHomePage], [IncludeInTopMenu], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (11, N'Korean', NULL, NULL, NULL, N'Content/images/categories/93412275/Koren-images.jpg', 2, 1, NULL, CAST(N'2018-07-15T12:56:05.1872427' AS DateTime2), CAST(N'2018-07-22T18:36:40.2267523' AS DateTime2), 1)
INSERT [dbo].[CategoryTbl] ([Id], [Name_English], [Name_Bangla], [Description], [DisplayOrder], [ImagePath], [Parent1Id], [ShowOnHomePage], [IncludeInTopMenu], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (12, N'Piano', NULL, NULL, NULL, N'Content/images/categories/27022962/86488540.jpg', 3, 1, NULL, CAST(N'2018-07-15T12:56:54.6635739' AS DateTime2), CAST(N'2018-07-22T18:36:20.2929418' AS DateTime2), 1)
INSERT [dbo].[CategoryTbl] ([Id], [Name_English], [Name_Bangla], [Description], [DisplayOrder], [ImagePath], [Parent1Id], [ShowOnHomePage], [IncludeInTopMenu], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (13, N'Singing', NULL, NULL, NULL, N'Content/images/categories/3109201/hqdefault.jpg', 3, 1, NULL, CAST(N'2018-07-15T12:57:31.5956602' AS DateTime2), CAST(N'2018-07-22T18:37:23.1561171' AS DateTime2), 1)
INSERT [dbo].[CategoryTbl] ([Id], [Name_English], [Name_Bangla], [Description], [DisplayOrder], [ImagePath], [Parent1Id], [ShowOnHomePage], [IncludeInTopMenu], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (14, N'Guitar', NULL, NULL, NULL, N'Content/images/categories/55706158/Learn-To-Play-Guitar-624x416.jpg', 3, 1, NULL, CAST(N'2018-07-15T12:58:31.2148240' AS DateTime2), CAST(N'2018-07-22T18:36:45.8045618' AS DateTime2), 1)
INSERT [dbo].[CategoryTbl] ([Id], [Name_English], [Name_Bangla], [Description], [DisplayOrder], [ImagePath], [Parent1Id], [ShowOnHomePage], [IncludeInTopMenu], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (15, N'Acting', NULL, NULL, NULL, N'Content/images/categories/92476413/Scene_Clapper_alt.jpg', 4, 1, NULL, CAST(N'2018-07-15T12:59:10.6676790' AS DateTime2), CAST(N'2018-07-22T18:37:17.9812664' AS DateTime2), 1)
INSERT [dbo].[CategoryTbl] ([Id], [Name_English], [Name_Bangla], [Description], [DisplayOrder], [ImagePath], [Parent1Id], [ShowOnHomePage], [IncludeInTopMenu], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (16, N'Dance', NULL, NULL, NULL, N'Content/images/categories/75818324/Tanias-Dancer-Rev.png', 4, 1, NULL, CAST(N'2018-07-15T13:00:09.8894275' AS DateTime2), CAST(N'2018-07-22T18:36:57.3501845' AS DateTime2), 1)
INSERT [dbo].[CategoryTbl] ([Id], [Name_English], [Name_Bangla], [Description], [DisplayOrder], [ImagePath], [Parent1Id], [ShowOnHomePage], [IncludeInTopMenu], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (1002, N'বাংলা মিডিয়াম', NULL, NULL, 1, N'', NULL, 1, NULL, CAST(N'2018-07-22T18:48:28.9449957' AS DateTime2), CAST(N'2018-07-22T22:35:29.0709224' AS DateTime2), 1)
INSERT [dbo].[CategoryTbl] ([Id], [Name_English], [Name_Bangla], [Description], [DisplayOrder], [ImagePath], [Parent1Id], [ShowOnHomePage], [IncludeInTopMenu], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (1003, N'গণিত', NULL, NULL, NULL, N'', 1002, 1, NULL, CAST(N'2018-07-22T18:48:57.5559404' AS DateTime2), CAST(N'2018-07-22T18:48:57.5559404' AS DateTime2), 1)
INSERT [dbo].[CategoryTbl] ([Id], [Name_English], [Name_Bangla], [Description], [DisplayOrder], [ImagePath], [Parent1Id], [ShowOnHomePage], [IncludeInTopMenu], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (1004, N'বাংলা', NULL, NULL, NULL, N'', 1002, 1, NULL, CAST(N'2018-07-22T18:49:30.2750269' AS DateTime2), CAST(N'2018-07-22T18:49:30.2750269' AS DateTime2), 1)
INSERT [dbo].[CategoryTbl] ([Id], [Name_English], [Name_Bangla], [Description], [DisplayOrder], [ImagePath], [Parent1Id], [ShowOnHomePage], [IncludeInTopMenu], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (1005, N'ইসলাম শিক্ষা', NULL, NULL, NULL, N'', 1002, 1, NULL, CAST(N'2018-07-22T18:50:01.6449008' AS DateTime2), CAST(N'2018-07-22T18:50:01.6449008' AS DateTime2), 1)
INSERT [dbo].[CategoryTbl] ([Id], [Name_English], [Name_Bangla], [Description], [DisplayOrder], [ImagePath], [Parent1Id], [ShowOnHomePage], [IncludeInTopMenu], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (1006, N'সাধারণ বিজ্ঞান', NULL, NULL, NULL, N'', 1002, 1, NULL, CAST(N'2018-07-22T18:50:18.0892755' AS DateTime2), CAST(N'2018-07-22T18:50:18.0892755' AS DateTime2), 1)
SET IDENTITY_INSERT [dbo].[CategoryTbl] OFF
SET IDENTITY_INSERT [dbo].[ClassNameTbl] ON 

INSERT [dbo].[ClassNameTbl] ([Id], [Name], [Description], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (1, N'Six', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[ClassNameTbl] ([Id], [Name], [Description], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (2, N'Seven', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[ClassNameTbl] ([Id], [Name], [Description], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (3, N'Eight', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[ClassNameTbl] ([Id], [Name], [Description], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (4, N'Nine', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[ClassNameTbl] ([Id], [Name], [Description], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (5, N'Ten', NULL, NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[ClassNameTbl] OFF
SET IDENTITY_INSERT [dbo].[LocationTbl] ON 

INSERT [dbo].[LocationTbl] ([Id], [Name], [Description], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (1, N'Uttara, Dhaka', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LocationTbl] ([Id], [Name], [Description], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (2, N'Abdullahpur', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LocationTbl] ([Id], [Name], [Description], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (3, N'Mirpur', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[LocationTbl] ([Id], [Name], [Description], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (4, N'Banasree', NULL, NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[LocationTbl] OFF
SET IDENTITY_INSERT [dbo].[LogTbl] ON 

INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (21185, N'Exception', N'   at Shikhai.Controllers.AccountController.<UpdateTeacherProfile>d__7.MoveNext() in E:\E\Google Drive\Google Drive-DS\Projects_Clients\shikhai\Shikhai\Shikhai\Controllers\AccountController.cs:line 169
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
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Account', N'127.0.0.1', N'Chrome 67.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'UpdateTeacherProfile', CAST(N'2018-08-10T02:00:19.4015375' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (21186, N'The ViewData item that has the key ''SelectedTeachClass'' is of type ''System.Collections.Generic.List`1[[System.String, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]'' but must be of type ''IEnumerable<SelectListItem>''.', N'   at System.Web.Mvc.Html.SelectExtensions.GetSelectData(HtmlHelper htmlHelper, String name)
   at System.Web.Mvc.Html.SelectExtensions.SelectInternal(HtmlHelper htmlHelper, ModelMetadata metadata, String optionLabel, String name, IEnumerable`1 selectList, Boolean allowMultiple, IDictionary`2 htmlAttributes)
   at System.Web.Mvc.Html.SelectExtensions.ListBoxFor[TModel,TProperty](HtmlHelper`1 htmlHelper, Expression`1 expression, IEnumerable`1 selectList, IDictionary`2 htmlAttributes)
   at System.Web.Mvc.Html.SelectExtensions.ListBoxFor[TModel,TProperty](HtmlHelper`1 htmlHelper, Expression`1 expression, IEnumerable`1 selectList, Object htmlAttributes)
   at ASP._Page_Views_Account_UpdateTeacherProfile_cshtml.Execute() in E:\E\Google Drive\Google Drive-DS\Projects_Clients\shikhai\Shikhai\Shikhai\Views\Account\UpdateTeacherProfile.cshtml:line 95
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
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Account', N'127.0.0.1', N'Chrome 67.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'UpdateTeacherProfile', CAST(N'2018-08-10T02:07:30.6180172' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (21187, N'The ViewData item that has the key ''SelectedTeachClass'' is of type ''System.Collections.Generic.List`1[[System.String, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]'' but must be of type ''IEnumerable<SelectListItem>''.', N'   at System.Web.Mvc.Html.SelectExtensions.GetSelectData(HtmlHelper htmlHelper, String name)
   at System.Web.Mvc.Html.SelectExtensions.SelectInternal(HtmlHelper htmlHelper, ModelMetadata metadata, String optionLabel, String name, IEnumerable`1 selectList, Boolean allowMultiple, IDictionary`2 htmlAttributes)
   at System.Web.Mvc.Html.SelectExtensions.ListBoxFor[TModel,TProperty](HtmlHelper`1 htmlHelper, Expression`1 expression, IEnumerable`1 selectList, IDictionary`2 htmlAttributes)
   at System.Web.Mvc.Html.SelectExtensions.ListBoxFor[TModel,TProperty](HtmlHelper`1 htmlHelper, Expression`1 expression, IEnumerable`1 selectList, Object htmlAttributes)
   at ASP._Page_Views_Account_UpdateTeacherProfile_cshtml.Execute() in E:\E\Google Drive\Google Drive-DS\Projects_Clients\shikhai\Shikhai\Shikhai\Views\Account\UpdateTeacherProfile.cshtml:line 95
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
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Account', N'127.0.0.1', N'Chrome 67.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'UpdateTeacherProfile', CAST(N'2018-08-10T02:07:47.7349413' AS DateTime2))
INSERT [dbo].[LogTbl] ([Id], [ExceptionMessage], [ExceptionStackTrace], [ControllerName], [IpAddress], [Browser], [OS], [UserId], [ActionName], [CreatedOnUtc]) VALUES (21188, N'The ViewData item that has the key ''SelectedTeachClass'' is of type ''System.Collections.Generic.List`1[[System.String, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]'' but must be of type ''IEnumerable<SelectListItem>''.', N'   at System.Web.Mvc.Html.SelectExtensions.GetSelectData(HtmlHelper htmlHelper, String name)
   at System.Web.Mvc.Html.SelectExtensions.SelectInternal(HtmlHelper htmlHelper, ModelMetadata metadata, String optionLabel, String name, IEnumerable`1 selectList, Boolean allowMultiple, IDictionary`2 htmlAttributes)
   at System.Web.Mvc.Html.SelectExtensions.ListBoxFor[TModel,TProperty](HtmlHelper`1 htmlHelper, Expression`1 expression, IEnumerable`1 selectList, IDictionary`2 htmlAttributes)
   at System.Web.Mvc.Html.SelectExtensions.ListBoxFor[TModel,TProperty](HtmlHelper`1 htmlHelper, Expression`1 expression, IEnumerable`1 selectList, Object htmlAttributes)
   at ASP._Page_Views_Account_UpdateTeacherProfile_cshtml.Execute() in E:\E\Google Drive\Google Drive-DS\Projects_Clients\shikhai\Shikhai\Shikhai\Views\Account\UpdateTeacherProfile.cshtml:line 95
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
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)', N'Account', N'127.0.0.1', N'Chrome 67.0, 3.0', N'WinNT', N'00000000-0000-0000-0000-000000000000', N'UpdateTeacherProfile', CAST(N'2018-08-10T02:09:50.5084096' AS DateTime2))
SET IDENTITY_INSERT [dbo].[LogTbl] OFF
SET IDENTITY_INSERT [dbo].[NewspaperTbl] ON 

INSERT [dbo].[NewspaperTbl] ([Id], [NewsGuidId], [NewspaperName], [AdLocation], [PriceDescription], [AdvertiserName], [AdvertiserAddress], [AdvertiserMobile], [AdvertiserEmail], [DateofPublication], [ColumnSize], [Inch], [TotalColumnInch], [TotalPrice], [AdCategoryId], [Description], [Comments], [MainImagePath], [CreatedOnUtc], [UpdatedOnUtc], [Active]) VALUES (2003, N'cc93aeb2-2381-4d3f-a629-3d9199c07626', N'Ittefaq', N'Classified Advertisement', NULL, N'3123', N'2131', N'555', N'313@dgdf.c', CAST(N'2018-04-27T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 828, N'7', N'রাজউক প্লট ক্রয়: রাজউকের উত্তরা ও পূর্বাচলে যে কোন সেক্টরে যে কোন আয়তনের প্লট জরুরী ভিত্তিতে ক্রয়ে ইচ্ছুক। ০১৭১XXXXXXX।', NULL, N'', CAST(N'2018-04-14T17:55:40.9770012' AS DateTime2), CAST(N'2018-04-14T17:55:40.9770012' AS DateTime2), NULL)
INSERT [dbo].[NewspaperTbl] ([Id], [NewsGuidId], [NewspaperName], [AdLocation], [PriceDescription], [AdvertiserName], [AdvertiserAddress], [AdvertiserMobile], [AdvertiserEmail], [DateofPublication], [ColumnSize], [Inch], [TotalColumnInch], [TotalPrice], [AdCategoryId], [Description], [Comments], [MainImagePath], [CreatedOnUtc], [UpdatedOnUtc], [Active]) VALUES (2004, N'33df7591-90fd-44ec-bece-c0eb20a4ae5e', N'Ittefaq', N'Classified Advertisement', NULL, N'md. rana hamid', N'H#30', N'01717623876', N'ranahamid007@gmail.com', CAST(N'2018-04-16T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 828, N'3', N'দোকান ভাড়া: সহজ শর্তে বেইলী রোডে মার্কেটে ৩য় তলায় ৩০০ বর্গফুট (শোরুম, গোডাউন, অফিস ইত্যাদি) ভাড়া হবে। ০১৮১XXXXXXX, ০১৮XXXXXXXX।', NULL, N'', CAST(N'2018-04-14T19:55:30.7566769' AS DateTime2), CAST(N'2018-04-14T19:55:30.7566769' AS DateTime2), NULL)
INSERT [dbo].[NewspaperTbl] ([Id], [NewsGuidId], [NewspaperName], [AdLocation], [PriceDescription], [AdvertiserName], [AdvertiserAddress], [AdvertiserMobile], [AdvertiserEmail], [DateofPublication], [ColumnSize], [Inch], [TotalColumnInch], [TotalPrice], [AdCategoryId], [Description], [Comments], [MainImagePath], [CreatedOnUtc], [UpdatedOnUtc], [Active]) VALUES (2005, N'e2d69d7a-a158-419f-be6c-3e239ae529be', N'Ittefaq', N'Classified Advertisement', NULL, N'md. rana hamid', N'H#30', N'01717623876', N'ranahamid007@gmail.com', CAST(N'2018-04-16T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 828, N'3', N'দোকান ভাড়া: সহজ শর্তে বেইলী রোডে মার্কেটে ৩য় তলায় ৩০০ বর্গফুট (শোরুম, গোডাউন, অফিস ইত্যাদি) ভাড়া হবে। ০১৮১XXXXXXX, ০১৮XXXXXXXX।', NULL, N'', CAST(N'2018-04-14T19:58:56.6687828' AS DateTime2), CAST(N'2018-04-14T19:58:56.6687828' AS DateTime2), NULL)
INSERT [dbo].[NewspaperTbl] ([Id], [NewsGuidId], [NewspaperName], [AdLocation], [PriceDescription], [AdvertiserName], [AdvertiserAddress], [AdvertiserMobile], [AdvertiserEmail], [DateofPublication], [ColumnSize], [Inch], [TotalColumnInch], [TotalPrice], [AdCategoryId], [Description], [Comments], [MainImagePath], [CreatedOnUtc], [UpdatedOnUtc], [Active]) VALUES (2006, N'18aebd47-33da-403f-9363-32a09f45ebec', N'Ittefaq', N'Classified Advertisement', NULL, N'md. rana hamid', N'H#30', N'01717623876', N'ranahamid007@gmail.com', CAST(N'2018-04-16T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 828, N'3', N'দোকান ভাড়া: সহজ শর্তে বেইলী রোডে মার্কেটে ৩য় তলায় ৩০০ বর্গফুট (শোরুম, গোডাউন, অফিস ইত্যাদি) ভাড়া হবে। ০১৮১XXXXXXX, ০১৮XXXXXXXX।', NULL, N'', CAST(N'2018-04-14T19:58:59.6869843' AS DateTime2), CAST(N'2018-04-14T19:58:59.6869843' AS DateTime2), NULL)
INSERT [dbo].[NewspaperTbl] ([Id], [NewsGuidId], [NewspaperName], [AdLocation], [PriceDescription], [AdvertiserName], [AdvertiserAddress], [AdvertiserMobile], [AdvertiserEmail], [DateofPublication], [ColumnSize], [Inch], [TotalColumnInch], [TotalPrice], [AdCategoryId], [Description], [Comments], [MainImagePath], [CreatedOnUtc], [UpdatedOnUtc], [Active]) VALUES (2007, N'9c501eea-b703-43b5-b23d-8e2fef28c12b', N'Ittefaq', N'Classified Advertisement', NULL, N'md. rana hamid', N'H#30', N'01717623876', N'klaf@gmail.com', CAST(N'2018-04-16T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 690, N'6', N'মগবাজার আউটারসার্কুলা২৭ বর্গফুটের নির রোডে ২৭ বর্গফুটের নি(এগোরার) বিপরীতে ১৭৩৯ ও ১৮২৭ বর্গফুটের নির্মাণাধীন ফ্ল্যাট বিক্রয়। ', NULL, N'', CAST(N'2018-04-14T20:30:10.5450435' AS DateTime2), CAST(N'2018-04-14T20:30:10.5450435' AS DateTime2), NULL)
INSERT [dbo].[NewspaperTbl] ([Id], [NewsGuidId], [NewspaperName], [AdLocation], [PriceDescription], [AdvertiserName], [AdvertiserAddress], [AdvertiserMobile], [AdvertiserEmail], [DateofPublication], [ColumnSize], [Inch], [TotalColumnInch], [TotalPrice], [AdCategoryId], [Description], [Comments], [MainImagePath], [CreatedOnUtc], [UpdatedOnUtc], [Active]) VALUES (2008, N'8f4e2f42-10c2-4731-9f1d-47211683f4c5', N'Ittefaq', N'Classified Advertisement', NULL, N'mr. abc', N'H#30', N'555', N'abc@ls.com', CAST(N'2018-04-17T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 690, NULL, N'২৭ বর্গফুটের নি', NULL, N'', CAST(N'2018-04-14T20:32:07.7130041' AS DateTime2), CAST(N'2018-04-14T20:32:07.7130041' AS DateTime2), NULL)
INSERT [dbo].[NewspaperTbl] ([Id], [NewsGuidId], [NewspaperName], [AdLocation], [PriceDescription], [AdvertiserName], [AdvertiserAddress], [AdvertiserMobile], [AdvertiserEmail], [DateofPublication], [ColumnSize], [Inch], [TotalColumnInch], [TotalPrice], [AdCategoryId], [Description], [Comments], [MainImagePath], [CreatedOnUtc], [UpdatedOnUtc], [Active]) VALUES (2009, N'12cc6b5b-9ce0-4b98-a8ef-85ab02a3c16e', N'Ittefaq', N'Classified Advertisement', NULL, N'md. rana hamid', N'H#30', N'2234', N'abc@ls.com', CAST(N'2018-04-21T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 690, N'3', N'পশ্চিম আগারগাঁও ৩ বেড বাথ ড্রয়িং-ডাইনিং, ২য় তলা বাসা ভাড়া দেওয়া হবে। যোগাযোগ ঃ ০১৫xxxxxxxx', NULL, N'', CAST(N'2018-04-17T02:29:56.4864634' AS DateTime2), CAST(N'2018-04-17T02:29:56.4869656' AS DateTime2), NULL)
INSERT [dbo].[NewspaperTbl] ([Id], [NewsGuidId], [NewspaperName], [AdLocation], [PriceDescription], [AdvertiserName], [AdvertiserAddress], [AdvertiserMobile], [AdvertiserEmail], [DateofPublication], [ColumnSize], [Inch], [TotalColumnInch], [TotalPrice], [AdCategoryId], [Description], [Comments], [MainImagePath], [CreatedOnUtc], [UpdatedOnUtc], [Active]) VALUES (2010, N'cb545214-1613-44f0-93cc-5ce61b06b29f', N'Ittefaq', N'Classified Advertisement', NULL, N'md. rana hamid', N'234', N'01717623876', N'klaf@s.com', CAST(N'2018-05-02T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 690, N'13', N'23432', NULL, N'', CAST(N'2018-04-17T02:35:37.2664957' AS DateTime2), CAST(N'2018-04-17T02:35:37.2664957' AS DateTime2), NULL)
INSERT [dbo].[NewspaperTbl] ([Id], [NewsGuidId], [NewspaperName], [AdLocation], [PriceDescription], [AdvertiserName], [AdvertiserAddress], [AdvertiserMobile], [AdvertiserEmail], [DateofPublication], [ColumnSize], [Inch], [TotalColumnInch], [TotalPrice], [AdCategoryId], [Description], [Comments], [MainImagePath], [CreatedOnUtc], [UpdatedOnUtc], [Active]) VALUES (3009, N'794ac438-7c3b-4d3a-8ec8-6dc067472e2e', N'Ittefaq', N'Classified Advertisement', NULL, N'md. rana hamid', N'H#30', N'01717623876', N'abc@ls.com', CAST(N'2018-05-03T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 690, N'10', N'this is my ad. please, publish this', NULL, N'', CAST(N'2018-04-21T01:04:04.1638430' AS DateTime2), CAST(N'2018-04-21T01:04:04.1643448' AS DateTime2), NULL)
INSERT [dbo].[NewspaperTbl] ([Id], [NewsGuidId], [NewspaperName], [AdLocation], [PriceDescription], [AdvertiserName], [AdvertiserAddress], [AdvertiserMobile], [AdvertiserEmail], [DateofPublication], [ColumnSize], [Inch], [TotalColumnInch], [TotalPrice], [AdCategoryId], [Description], [Comments], [MainImagePath], [CreatedOnUtc], [UpdatedOnUtc], [Active]) VALUES (3010, N'add060b8-51ab-48a1-b633-307481c61d02', N'Ittefaq', N'Classified Advertisement', NULL, N'mr. abc', N'2131', N'5555', N'313@dgdf.c', CAST(N'2018-04-26T00:00:00.0000000' AS DateTime2), 342, 3423, 4234, 444, N'16', N'hi', NULL, N'Content/images/newspapersfile/35134530/z5oinb4s99f_1468696441_165l.jpg', CAST(N'2018-04-21T01:25:30.2993814' AS DateTime2), CAST(N'2018-04-24T02:14:11.2090920' AS DateTime2), 1)
INSERT [dbo].[NewspaperTbl] ([Id], [NewsGuidId], [NewspaperName], [AdLocation], [PriceDescription], [AdvertiserName], [AdvertiserAddress], [AdvertiserMobile], [AdvertiserEmail], [DateofPublication], [ColumnSize], [Inch], [TotalColumnInch], [TotalPrice], [AdCategoryId], [Description], [Comments], [MainImagePath], [CreatedOnUtc], [UpdatedOnUtc], [Active]) VALUES (3011, N'8ce1c918-33a9-4c47-8f8f-6769d45a3c2e', N'Ittefaq', N'Classified Advertisement', NULL, N'md. rana hamid', N'2131', N'01717623876', N'ranahamid007@gmail.com', CAST(N'2018-04-23T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, 828, N'19', N'ডাক্তার ইঙ্গিনিয়ার সিটিজেনশিপ ব্যবসায়িক, ডিভোর্স বয়স্ক ও হিন্দুসহ সকল ধরনের পাত্র পাত্রির সন্ধানে গ্যারান্টি সহকারে কাজ করি। যোগাযোগঃ ০১৭৭xxxxxxx', NULL, N'', CAST(N'2018-04-21T21:43:07.2572494' AS DateTime2), CAST(N'2018-04-21T21:43:07.2572494' AS DateTime2), NULL)
INSERT [dbo].[NewspaperTbl] ([Id], [NewsGuidId], [NewspaperName], [AdLocation], [PriceDescription], [AdvertiserName], [AdvertiserAddress], [AdvertiserMobile], [AdvertiserEmail], [DateofPublication], [ColumnSize], [Inch], [TotalColumnInch], [TotalPrice], [AdCategoryId], [Description], [Comments], [MainImagePath], [CreatedOnUtc], [UpdatedOnUtc], [Active]) VALUES (3012, N'144599a5-97ed-4925-ab24-dfbf462bffe6', N'Ittefaq', N'Ittefaq First Page Color', NULL, N'mr. abc', N'234', N'555', N'ranahamid007@gmail.com', CAST(N'2018-05-01T00:00:00.0000000' AS DateTime2), 3, 3, NULL, NULL, NULL, NULL, NULL, N'~/Content/uploads54h27skdekt_1468696441_168l.jpg', CAST(N'2018-04-26T01:55:26.4629759' AS DateTime2), CAST(N'2018-04-26T01:55:26.4649801' AS DateTime2), NULL)
INSERT [dbo].[NewspaperTbl] ([Id], [NewsGuidId], [NewspaperName], [AdLocation], [PriceDescription], [AdvertiserName], [AdvertiserAddress], [AdvertiserMobile], [AdvertiserEmail], [DateofPublication], [ColumnSize], [Inch], [TotalColumnInch], [TotalPrice], [AdCategoryId], [Description], [Comments], [MainImagePath], [CreatedOnUtc], [UpdatedOnUtc], [Active]) VALUES (3013, N'1f0cc462-9ab1-4c56-9527-1428ac4c8e7c', N'Ittefaq', N'Ittefaq First Page Color', NULL, N'dfs', N'H#30', N'2234', N'ranahamid007@gmail.com', CAST(N'2018-05-04T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'~/Content/uploads/AAMRA- Project Plan - Version 1.0 - 20180408.pdf', CAST(N'2018-04-26T02:12:29.5908108' AS DateTime2), CAST(N'2018-04-26T02:12:29.5918132' AS DateTime2), NULL)
INSERT [dbo].[NewspaperTbl] ([Id], [NewsGuidId], [NewspaperName], [AdLocation], [PriceDescription], [AdvertiserName], [AdvertiserAddress], [AdvertiserMobile], [AdvertiserEmail], [DateofPublication], [ColumnSize], [Inch], [TotalColumnInch], [TotalPrice], [AdCategoryId], [Description], [Comments], [MainImagePath], [CreatedOnUtc], [UpdatedOnUtc], [Active]) VALUES (3014, N'74df8363-6538-4440-bef0-de153636013c', N'Ittefaq', N'Ittefaq First Page Color', NULL, N'23423', N'4234', N'324', N'23423@fs.c', CAST(N'2018-05-02T00:00:00.0000000' AS DateTime2), 234, 34, NULL, 444, NULL, NULL, NULL, N'~/Content/uploads/2018-04-24_3-12-31.png', CAST(N'2018-04-26T02:51:22.4483948' AS DateTime2), CAST(N'2018-04-26T02:51:22.4483948' AS DateTime2), NULL)
INSERT [dbo].[NewspaperTbl] ([Id], [NewsGuidId], [NewspaperName], [AdLocation], [PriceDescription], [AdvertiserName], [AdvertiserAddress], [AdvertiserMobile], [AdvertiserEmail], [DateofPublication], [ColumnSize], [Inch], [TotalColumnInch], [TotalPrice], [AdCategoryId], [Description], [Comments], [MainImagePath], [CreatedOnUtc], [UpdatedOnUtc], [Active]) VALUES (3015, N'f75ba805-b1c8-4b52-8fde-183b57c13240', N'Ittefaq', N'Ittefaq First Page Color', NULL, N'3123', N'2131', N'555', N'klaf@s.com', CAST(N'2018-05-04T00:00:00.0000000' AS DateTime2), 2, 2, NULL, NULL, NULL, NULL, NULL, N'~/Content/uploads/111 Nagaon.pdf', CAST(N'2018-04-26T03:05:00.2396322' AS DateTime2), CAST(N'2018-04-26T03:05:00.2396322' AS DateTime2), NULL)
INSERT [dbo].[NewspaperTbl] ([Id], [NewsGuidId], [NewspaperName], [AdLocation], [PriceDescription], [AdvertiserName], [AdvertiserAddress], [AdvertiserMobile], [AdvertiserEmail], [DateofPublication], [ColumnSize], [Inch], [TotalColumnInch], [TotalPrice], [AdCategoryId], [Description], [Comments], [MainImagePath], [CreatedOnUtc], [UpdatedOnUtc], [Active]) VALUES (4012, N'5a205362-c674-4b0f-a436-77ea941d5a0f', N'Ittefaq', N'Ittefaq Last Page Color', NULL, N'3123', N'234', N'2234', N'ranahamid007@gmail.com', CAST(N'2018-04-30T00:00:00.0000000' AS DateTime2), 2, 2, NULL, NULL, NULL, NULL, NULL, N'Content/uploads/CIR_LETTER_8118.pdf', CAST(N'2018-04-28T20:43:21.0096908' AS DateTime2), CAST(N'2018-04-28T20:43:21.0096908' AS DateTime2), NULL)
SET IDENTITY_INSERT [dbo].[NewspaperTbl] OFF
SET IDENTITY_INSERT [dbo].[OrderPaymentMethodTbl] ON 

INSERT [dbo].[OrderPaymentMethodTbl] ([Id], [Name], [Instructions], [InstructionsImageUrl], [Published]) VALUES (1, N'Bkash', N'01. Go to your bKash Mobile Menu by dialing *247#
02. Choose “Payment”
03. Enter the Merchant bKash Account Number you want to pay to
04. Enter the amount you want to pay
05. Enter a reference* against your payment (you can mention the purpose of the transaction in one word. e.g. Bill)
06. Enter the Counter Number* (the salesperson at the counter will tell you the number)
07. Now enter your bKash Mobile Menu PIN to confirm

 ', N'Content\images\payment\bKash_payment_Process.png', 1)
INSERT [dbo].[OrderPaymentMethodTbl] ([Id], [Name], [Instructions], [InstructionsImageUrl], [Published]) VALUES (2, N'Rocket', N'01. Customer can pay bills of various organizations using this payment option.
02. To make a payment please follow the following instruction.
03. To get this service from Dutch-Bangla Bank Rocket account you just need to dial *322# from any operator except citycell.
04. In case if you are using Citycell mobile phones then just send an empty sms to 16216.
05. Once you dial *322# or send an sms to 16216 you will get the following screen.
From the screen please select the option 1.', N'Content/images/OrderPaymentMethods/78011970/2018-04-14_19-03-50.png', 1)
INSERT [dbo].[OrderPaymentMethodTbl] ([Id], [Name], [Instructions], [InstructionsImageUrl], [Published]) VALUES (3, N'Internet Banking', NULL, N'Content/images/OrderPaymentMethods/67844705/book.jpg', NULL)
INSERT [dbo].[OrderPaymentMethodTbl] ([Id], [Name], [Instructions], [InstructionsImageUrl], [Published]) VALUES (4, N'Card', N'Pay using ssl commerz.
We accept
a) Debit Card
b) Credit Card', N'Content/images/OrderPaymentMethods/61233661/new_mod_pay.png', 1)
SET IDENTITY_INSERT [dbo].[OrderPaymentMethodTbl] OFF
SET IDENTITY_INSERT [dbo].[OrderPaymentStatusTbl] ON 

INSERT [dbo].[OrderPaymentStatusTbl] ([Id], [Name], [DefaultStatus]) VALUES (1, N'InComplete', 1)
INSERT [dbo].[OrderPaymentStatusTbl] ([Id], [Name], [DefaultStatus]) VALUES (2, N'Complete', 0)
SET IDENTITY_INSERT [dbo].[OrderPaymentStatusTbl] OFF
SET IDENTITY_INSERT [dbo].[PaymentTbl] ON 

INSERT [dbo].[PaymentTbl] ([Id], [PaymentGuidId], [CreatedOnUtc], [UpdatedOnUtc], [OrderId], [PaymentChannel], [PaymentMobile], [PaymentTrxId], [PaymentAmount], [Active]) VALUES (1, NULL, CAST(N'2018-04-17T02:35:58.0541398' AS DateTime2), CAST(N'2018-04-17T02:35:58.0546402' AS DateTime2), 3009, N'1', N'01725620123', N'TRX4423554', 850, NULL)
INSERT [dbo].[PaymentTbl] ([Id], [PaymentGuidId], [CreatedOnUtc], [UpdatedOnUtc], [OrderId], [PaymentChannel], [PaymentMobile], [PaymentTrxId], [PaymentAmount], [Active]) VALUES (2, NULL, CAST(N'2018-04-21T01:53:18.2818079' AS DateTime2), CAST(N'2018-04-24T02:14:11.1829830' AS DateTime2), 3010, N'1', N'32423', N'423423', 4234, 1)
INSERT [dbo].[PaymentTbl] ([Id], [PaymentGuidId], [CreatedOnUtc], [UpdatedOnUtc], [OrderId], [PaymentChannel], [PaymentMobile], [PaymentTrxId], [PaymentAmount], [Active]) VALUES (3, NULL, CAST(N'2018-04-21T21:43:52.1192071' AS DateTime2), CAST(N'2018-04-21T21:43:52.1192071' AS DateTime2), 3011, N'1', N'01725620123', N'TRX4423554', 828, NULL)
INSERT [dbo].[PaymentTbl] ([Id], [PaymentGuidId], [CreatedOnUtc], [UpdatedOnUtc], [OrderId], [PaymentChannel], [PaymentMobile], [PaymentTrxId], [PaymentAmount], [Active]) VALUES (4, N'4b09b09e-60b7-4ae6-ae4f-6fca8cf45a8c', CAST(N'2018-04-24T01:52:18.2237814' AS DateTime2), CAST(N'2018-04-24T01:52:18.2242832' AS DateTime2), NULL, N'1', N'32423', N'423423', 4234, 1)
INSERT [dbo].[PaymentTbl] ([Id], [PaymentGuidId], [CreatedOnUtc], [UpdatedOnUtc], [OrderId], [PaymentChannel], [PaymentMobile], [PaymentTrxId], [PaymentAmount], [Active]) VALUES (1004, N'642d60f8-b603-484e-b2dd-2cd71e691b84', CAST(N'2018-04-26T03:05:17.7461562' AS DateTime2), CAST(N'2018-04-26T03:05:17.7461562' AS DateTime2), 3015, N'1', N'01725620123', N'33sdf2354sdf', 850, NULL)
INSERT [dbo].[PaymentTbl] ([Id], [PaymentGuidId], [CreatedOnUtc], [UpdatedOnUtc], [OrderId], [PaymentChannel], [PaymentMobile], [PaymentTrxId], [PaymentAmount], [Active]) VALUES (2004, N'88e24bf8-d505-49e1-9e04-ab36eab54dac', CAST(N'2018-04-28T20:43:46.7993295' AS DateTime2), CAST(N'2018-04-28T20:43:46.8003024' AS DateTime2), 4012, N'1', N'01725620123', N'TRX4423554', 850, NULL)
SET IDENTITY_INSERT [dbo].[PaymentTbl] OFF
SET IDENTITY_INSERT [dbo].[ProductTbl] ON 

INSERT [dbo].[ProductTbl] ([Id], [Name], [IsBook], [IsStationary], [InstructionsImageUrl], [Published], [ShowOnHomePage], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (1, N'Math', 1, NULL, N'Content/images/Products/38035602/Math-Ed-Banner.jpg', 1, 1, NULL, NULL)
INSERT [dbo].[ProductTbl] ([Id], [Name], [IsBook], [IsStationary], [InstructionsImageUrl], [Published], [ShowOnHomePage], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (2, N'English', 1, NULL, N'Content/images/Products/69154903/learn-english-at-marbella-international-spanish-school-marbella.jpg', 1, 1, NULL, NULL)
INSERT [dbo].[ProductTbl] ([Id], [Name], [IsBook], [IsStationary], [InstructionsImageUrl], [Published], [ShowOnHomePage], [CreatedOnUtc], [UpdatedOnUtc]) VALUES (3, N'Pen', NULL, 1, N'Content/images/Products/62203730/c05523710.png', 1, 1, NULL, NULL)
SET IDENTITY_INSERT [dbo].[ProductTbl] OFF
SET IDENTITY_INSERT [dbo].[RangeTbl] ON 

INSERT [dbo].[RangeTbl] ([Id], [LowerLimit], [UpperLimit], [Description], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (1, 0, 1000, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[RangeTbl] ([Id], [LowerLimit], [UpperLimit], [Description], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (3, 1000, 2000, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[RangeTbl] ([Id], [LowerLimit], [UpperLimit], [Description], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (4, 2000, 3000, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[RangeTbl] ([Id], [LowerLimit], [UpperLimit], [Description], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (5, 3000, 5000, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[RangeTbl] ([Id], [LowerLimit], [UpperLimit], [Description], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (6, 5000, 8000, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[RangeTbl] ([Id], [LowerLimit], [UpperLimit], [Description], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (7, 8000, 10000, NULL, NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[RangeTbl] OFF
SET IDENTITY_INSERT [dbo].[TeacherTbl] ON 

INSERT [dbo].[TeacherTbl] ([Id], [GuidId], [FullName], [RegistrationNo], [RegistrationType], [ClinicHospitalName], [Designation], [YearOfExperience], [WorkingArea], [Addresss], [DateOfBirth], [PhoneNumber], [Email], [CanVisitDays], [CanTeachClass], [SelectedLocationId], [SelectedCategory], [CanTeachSubject], [TutionPrice], [VisitTimeStart], [VisitTimeEnd], [SlotDuration], [VisitingCard], [CreatedOnUtc], [UpdatedOnUtc], [Active]) VALUES (1, N'92ad0151-cb43-465c-80c5-77a5e3fe5432', N'1234561234564', NULL, NULL, N'234', N'we4rwe', CAST(43 AS Decimal(18, 0)), NULL, N'3432', NULL, N'11', N'ranahamid02340ss7654@gmail.com', N'2,3,5', NULL, NULL, NULL, NULL, NULL, CAST(N'09:00:00' AS Time), CAST(N'23:00:00' AS Time), 10, N'', CAST(N'2018-07-05T02:54:58.1338751' AS DateTime2), CAST(N'2018-07-05T02:54:58.1338751' AS DateTime2), 1)
INSERT [dbo].[TeacherTbl] ([Id], [GuidId], [FullName], [RegistrationNo], [RegistrationType], [ClinicHospitalName], [Designation], [YearOfExperience], [WorkingArea], [Addresss], [DateOfBirth], [PhoneNumber], [Email], [CanVisitDays], [CanTeachClass], [SelectedLocationId], [SelectedCategory], [CanTeachSubject], [TutionPrice], [VisitTimeStart], [VisitTimeEnd], [SlotDuration], [VisitingCard], [CreatedOnUtc], [UpdatedOnUtc], [Active]) VALUES (2, N'3a86da90-854f-4f47-8142-a905017f6809', N'1234561233sdf4564', NULL, NULL, N'234', N'we4rwe', CAST(43 AS Decimal(18, 0)), NULL, N'3432', NULL, N'44444', N'ranahasdfm3id02340ss7654@gmail.com', N'2,3,5', NULL, NULL, NULL, NULL, NULL, CAST(N'09:00:00' AS Time), CAST(N'23:00:00' AS Time), 10, N'', CAST(N'2018-07-05T03:00:06.5186649' AS DateTime2), CAST(N'2018-07-05T03:00:06.5186649' AS DateTime2), 1)
INSERT [dbo].[TeacherTbl] ([Id], [GuidId], [FullName], [RegistrationNo], [RegistrationType], [ClinicHospitalName], [Designation], [YearOfExperience], [WorkingArea], [Addresss], [DateOfBirth], [PhoneNumber], [Email], [CanVisitDays], [CanTeachClass], [SelectedLocationId], [SelectedCategory], [CanTeachSubject], [TutionPrice], [VisitTimeStart], [VisitTimeEnd], [SlotDuration], [VisitingCard], [CreatedOnUtc], [UpdatedOnUtc], [Active]) VALUES (1005, N'ac55f20a-87af-49d4-89da-ca617bda750d', N'Pobon mama', NULL, NULL, N'345', N'345', CAST(345 AS Decimal(18, 0)), NULL, N'H#88', NULL, N'244', N'sid02342307@gmail.com', N'0,1,2,3,4,5,6', NULL, NULL, NULL, NULL, NULL, CAST(N'09:00:00' AS Time), CAST(N'23:00:00' AS Time), 10, N'', CAST(N'2018-07-07T20:37:03.7901181' AS DateTime2), CAST(N'2018-07-07T20:37:03.7941186' AS DateTime2), NULL)
INSERT [dbo].[TeacherTbl] ([Id], [GuidId], [FullName], [RegistrationNo], [RegistrationType], [ClinicHospitalName], [Designation], [YearOfExperience], [WorkingArea], [Addresss], [DateOfBirth], [PhoneNumber], [Email], [CanVisitDays], [CanTeachClass], [SelectedLocationId], [SelectedCategory], [CanTeachSubject], [TutionPrice], [VisitTimeStart], [VisitTimeEnd], [SlotDuration], [VisitingCard], [CreatedOnUtc], [UpdatedOnUtc], [Active]) VALUES (1006, N'372a0721-a924-48d6-b72d-fd557424fcd3', N'Pobon mama 2', NULL, NULL, NULL, N'345', CAST(345 AS Decimal(18, 0)), NULL, N'H#88', CAST(N'2018-07-19T00:00:00.0000000' AS DateTime2), N'12345612345622', N'ranahamid007a@gmail.com', N'0,1,2,3,4,5,6', NULL, NULL, NULL, NULL, NULL, CAST(N'09:00:00' AS Time), CAST(N'23:00:00' AS Time), 10, N'', CAST(N'2018-07-07T20:46:50.2158181' AS DateTime2), CAST(N'2018-07-07T20:46:50.2188179' AS DateTime2), 1)
INSERT [dbo].[TeacherTbl] ([Id], [GuidId], [FullName], [RegistrationNo], [RegistrationType], [ClinicHospitalName], [Designation], [YearOfExperience], [WorkingArea], [Addresss], [DateOfBirth], [PhoneNumber], [Email], [CanVisitDays], [CanTeachClass], [SelectedLocationId], [SelectedCategory], [CanTeachSubject], [TutionPrice], [VisitTimeStart], [VisitTimeEnd], [SlotDuration], [VisitingCard], [CreatedOnUtc], [UpdatedOnUtc], [Active]) VALUES (1007, N'61b0726c-62e8-4257-b29f-0b8621d0b383', N'Rana hamid', NULL, NULL, N'BUET (Edit)', N'B.Sc (Edit)', CAST(4 AS Decimal(18, 0)), NULL, N'H#18, R#03, S#12, Uttara, Dhaka-1230  (Edit)', CAST(N'2018-08-10T00:00:00.0000000' AS DateTime2), N'01717623876', N'1015052066.mrh@grad.cse.buet.ac.bd', N'0,1,2,3,4,5,6', N'3,4,5', N'3', N'1002,2,3', N'6,8,9,10,11,12,13,1003,1005', 999, CAST(N'00:05:00' AS Time), CAST(N'04:10:00' AS Time), 99, N'Content/images/RegisterTeacher/63172322/CYMERA_20160415_093454.jpg', CAST(N'2018-08-10T01:35:55.7070578' AS DateTime2), CAST(N'2018-08-10T02:34:15.6248617' AS DateTime2), NULL)
SET IDENTITY_INSERT [dbo].[TeacherTbl] OFF
SET IDENTITY_INSERT [dbo].[TestimonialTbl] ON 

INSERT [dbo].[TestimonialTbl] ([Id], [ImagePath], [Description], [PersonName], [PersonTitle], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (1, N'/Content/images/testimonials/9951244/parents.jpg', N'  Lorem ipsum dolor sit amet, consectetur adipisicing elit. A accusantium ad asperiores at atque culpa dolores eaque fugiat hic illo ipsam ipsum minima modi necessitatibus nemo officia, omnis perferendis placeat quaerat quas quis ratione rerum sint sit vitae. Animi architecto consequatur delectus eos id.', N'Williamson', N'Web Developer', NULL, NULL, NULL, 1)
INSERT [dbo].[TestimonialTbl] ([Id], [ImagePath], [Description], [PersonName], [PersonTitle], [DisplayOrder], [CreatedOnUtc], [UpdatedOnUtc], [Published]) VALUES (2, N'/Content/images/testimonials/1354240/2018-07-29_11-10-17.png', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. L 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and m um.', N'Sabila Nur', N'Actress', NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[TestimonialTbl] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 8/10/2018 2:42:15 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 8/10/2018 2:42:15 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 8/10/2018 2:42:15 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_RoleId]    Script Date: 8/10/2018 2:42:15 AM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 8/10/2018 2:42:15 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 8/10/2018 2:42:15 AM ******/
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
ALTER TABLE [dbo].[CategoryTbl] ADD  CONSTRAINT [DF_CategoryTbl_Parent1Id]  DEFAULT ((0)) FOR [Parent1Id]
GO
ALTER TABLE [dbo].[CustomerSearchTbl] ADD  CONSTRAINT [DF_CustomerSearchTbl_UserId]  DEFAULT ((0)) FOR [UserId]
GO
ALTER TABLE [dbo].[OrderPaymentStatusTbl] ADD  CONSTRAINT [DF_OrderPaymentStatusTbl_DefaultStatus]  DEFAULT ((0)) FOR [DefaultStatus]
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
ALTER DATABASE [Shikhai] SET  READ_WRITE 
GO
