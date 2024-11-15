USE [master]
GO
/****** Object:  Database [SignalRDb]    Script Date: 14.11.2024 16:58:56 ******/
CREATE DATABASE [SignalRDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SignalRDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\SignalRDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SignalRDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\SignalRDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [SignalRDb] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SignalRDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SignalRDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SignalRDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SignalRDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SignalRDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SignalRDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [SignalRDb] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [SignalRDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SignalRDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SignalRDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SignalRDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SignalRDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SignalRDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SignalRDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SignalRDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SignalRDb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [SignalRDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SignalRDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SignalRDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SignalRDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SignalRDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SignalRDb] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [SignalRDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SignalRDb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SignalRDb] SET  MULTI_USER 
GO
ALTER DATABASE [SignalRDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SignalRDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SignalRDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SignalRDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SignalRDb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SignalRDb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [SignalRDb] SET QUERY_STORE = ON
GO
ALTER DATABASE [SignalRDb] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [SignalRDb]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 14.11.2024 16:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Abouts]    Script Date: 14.11.2024 16:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Abouts](
	[AboutID] [int] IDENTITY(1,1) NOT NULL,
	[ImageUrl] [nvarchar](max) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Abouts] PRIMARY KEY CLUSTERED 
(
	[AboutID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 14.11.2024 16:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 14.11.2024 16:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 14.11.2024 16:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 14.11.2024 16:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 14.11.2024 16:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 14.11.2024 16:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Surname] [nvarchar](max) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 14.11.2024 16:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [int] NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Baskets]    Script Date: 14.11.2024 16:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Baskets](
	[BasketID] [int] IDENTITY(1,1) NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Count] [decimal](18, 2) NOT NULL,
	[ProductID] [int] NOT NULL,
	[RestaurantTableID] [int] NOT NULL,
	[TotalPrice] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Baskets] PRIMARY KEY CLUSTERED 
(
	[BasketID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bookings]    Script Date: 14.11.2024 16:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bookings](
	[BookingID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Phone] [nvarchar](max) NOT NULL,
	[Mail] [nvarchar](max) NOT NULL,
	[PersonCount] [int] NOT NULL,
	[Date] [datetime2](7) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Bookings] PRIMARY KEY CLUSTERED 
(
	[BookingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 14.11.2024 16:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](max) NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 14.11.2024 16:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts](
	[ContactID] [int] IDENTITY(1,1) NOT NULL,
	[Location] [nvarchar](max) NOT NULL,
	[Phone] [nvarchar](max) NOT NULL,
	[Mail] [nvarchar](max) NOT NULL,
	[FooterDescription] [nvarchar](max) NOT NULL,
	[FooterTitle] [nvarchar](max) NOT NULL,
	[OpenDays] [nvarchar](max) NOT NULL,
	[OpenDaysDescription] [nvarchar](max) NOT NULL,
	[OpenHours] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Contacts] PRIMARY KEY CLUSTERED 
(
	[ContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Discounts]    Script Date: 14.11.2024 16:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discounts](
	[DiscountID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Amount] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[ImageUrl] [nvarchar](max) NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Discounts] PRIMARY KEY CLUSTERED 
(
	[DiscountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Features]    Script Date: 14.11.2024 16:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Features](
	[FeatureID] [int] IDENTITY(1,1) NOT NULL,
	[Title1] [nvarchar](max) NOT NULL,
	[Description1] [nvarchar](max) NOT NULL,
	[Title2] [nvarchar](max) NOT NULL,
	[Description2] [nvarchar](max) NOT NULL,
	[Title3] [nvarchar](max) NOT NULL,
	[Description3] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Features] PRIMARY KEY CLUSTERED 
(
	[FeatureID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Messages]    Script Date: 14.11.2024 16:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Messages](
	[MessageID] [int] IDENTITY(1,1) NOT NULL,
	[NameSurname] [nvarchar](max) NOT NULL,
	[Mail] [nvarchar](max) NOT NULL,
	[Phone] [nvarchar](max) NOT NULL,
	[Subject] [nvarchar](max) NOT NULL,
	[MessageContent] [nvarchar](max) NOT NULL,
	[MessageSendDate] [datetime2](7) NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Messages] PRIMARY KEY CLUSTERED 
(
	[MessageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MoneyCases]    Script Date: 14.11.2024 16:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MoneyCases](
	[MoneyCaseID] [int] IDENTITY(1,1) NOT NULL,
	[TotalAmount] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_MoneyCases] PRIMARY KEY CLUSTERED 
(
	[MoneyCaseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notifications]    Script Date: 14.11.2024 16:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notifications](
	[NotificationID] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Date] [datetime2](7) NOT NULL,
	[Status] [bit] NOT NULL,
	[Icon] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Notifications] PRIMARY KEY CLUSTERED 
(
	[NotificationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 14.11.2024 16:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderDetailID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[Count] [int] NOT NULL,
	[UnitPrice] [decimal](18, 2) NOT NULL,
	[TotalPrice] [decimal](18, 2) NOT NULL,
	[OrderID] [int] NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[OrderDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 14.11.2024 16:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[TableNumber] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Date] [datetime2](7) NOT NULL,
	[TotalPrice] [decimal](18, 2) NOT NULL,
	[OrderDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 14.11.2024 16:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[ImageUrl] [nvarchar](max) NOT NULL,
	[ProductStatus] [bit] NOT NULL,
	[CategoryID] [int] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RestaurantTables]    Script Date: 14.11.2024 16:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RestaurantTables](
	[RestaurantTableID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_RestaurantTables] PRIMARY KEY CLUSTERED 
(
	[RestaurantTableID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sliders]    Script Date: 14.11.2024 16:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sliders](
	[SliderID] [int] IDENTITY(1,1) NOT NULL,
	[Title1] [nvarchar](max) NOT NULL,
	[Title2] [nvarchar](max) NOT NULL,
	[Title3] [nvarchar](max) NOT NULL,
	[Description1] [nvarchar](max) NOT NULL,
	[Description2] [nvarchar](max) NOT NULL,
	[Description3] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Sliders] PRIMARY KEY CLUSTERED 
(
	[SliderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SocialMedias]    Script Date: 14.11.2024 16:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SocialMedias](
	[SocialMediaID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Url] [nvarchar](max) NOT NULL,
	[Icon] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_SocialMedias] PRIMARY KEY CLUSTERED 
(
	[SocialMediaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tables]    Script Date: 14.11.2024 16:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tables](
	[TableId] [int] IDENTITY(1,1) NOT NULL,
	[TableName] [nvarchar](max) NOT NULL,
	[QrCodePath] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Tables] PRIMARY KEY CLUSTERED 
(
	[TableId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Testimonials]    Script Date: 14.11.2024 16:58:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Testimonials](
	[TestimonialID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Comment] [nvarchar](max) NOT NULL,
	[ImageUrl] [nvarchar](max) NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Testimonials] PRIMARY KEY CLUSTERED 
(
	[TestimonialID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240314105810_initialize', N'8.0.2')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240331105446_mig_add_relation_product_category', N'8.0.2')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240502182311_mig_add_order', N'8.0.2')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240504175629_mig_add_money_case', N'8.0.2')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240521204319_mig_add_restauranttable', N'8.0.2')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240629090331_mig_add_slider', N'8.0.2')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240727170305_mig_add_contact_new_columns', N'8.0.2')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240731174214_mig_add_basket_table', N'8.0.2')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240802161120_basketsınıfında_entitiyde_totalprice_eklemesi', N'8.0.2')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240804095229_basketsinifi_contexte_listolarakkalmis_dbsetyaptim', N'8.0.2')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240902101252_mig_add_notification', N'8.0.2')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240904164702_mig_add_notification_icon', N'8.0.2')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240907193224_mig_add_identity', N'8.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240914133651_add_migration_bookin_description', N'8.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240914164630_add_migration_discount_status', N'8.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240918110908_mig_add_message_table', N'8.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241030201347_chatgpt_tablesiniflarinin_eklenmesi', N'8.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241030201452_chatgpt_tablesiniflarinin_eklenmesi1', N'8.0.4')
GO
SET IDENTITY_INSERT [dbo].[Abouts] ON 

INSERT [dbo].[Abouts] ([AboutID], [ImageUrl], [Title], [Description]) VALUES (3, N'/feane-1.0.0/images/about-img.png', N'Biz Lezzet Ustalarıyız', N'Lorem Ipsum''un birçok pasajı çeşidi mevcuttur, ancak çoğunluğu değişikliğe uğramıştır
bir biçimde, enjekte edilmiş mizah veya biraz bile inandırıcı görünmeyen rastgele kelimelerle. Eğer sen
Lorem Ipsum''un bir pasajını kullanacaksanız, içinde utanç verici bir şey olmadığından emin olmanız gerekir.
metnin ortası. Tüm')
SET IDENTITY_INSERT [dbo].[Abouts] OFF
GO
SET IDENTITY_INSERT [dbo].[AspNetUsers] ON 

INSERT [dbo].[AspNetUsers] ([Id], [Name], [Surname], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (1, N'Talhaa11', N'Arslana11', N'talhaa8111', N'TALHAA8111', N'11t@t.com', N'11T@T.COM', 0, N'AQAAAAIAAYagAAAAEA+srr6v0XdfpxyuzpQEONqBZw7z98IpdkYq+ilnINzqw0UFfJh7vaBJwohkA8Lf8A==', N'PNB7XZCRCSHHAJX765HYY36V6VJNGEUS', N'87a55d53-36c9-4405-876d-b061a1c8718d', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Name], [Surname], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (2, N'Ahmet', N'Yılmaz', N'ahmetylmz1', N'AHMETYLMZ1', N'ahmet@gmail.com', N'AHMET@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEA7Vrt4XMi67UV3ILfXuHD4st1IrG7SLUNkLGIe4BW5GD2ZmbQqRZzApeLdsS1Pf1w==', N'D6G7IQS6KGQAM7FXVSZNYXG3MYMQMRWQ', N'ae2368b0-c81a-4b28-857f-b052d14b902c', NULL, 0, 0, NULL, 1, 0)
SET IDENTITY_INSERT [dbo].[AspNetUsers] OFF
GO
SET IDENTITY_INSERT [dbo].[Baskets] ON 

INSERT [dbo].[Baskets] ([BasketID], [Price], [Count], [ProductID], [RestaurantTableID], [TotalPrice]) VALUES (6, CAST(50.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), 6, 6, CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Baskets] ([BasketID], [Price], [Count], [ProductID], [RestaurantTableID], [TotalPrice]) VALUES (92, CAST(100.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), 3, 7, CAST(40.00 AS Decimal(18, 2)))
INSERT [dbo].[Baskets] ([BasketID], [Price], [Count], [ProductID], [RestaurantTableID], [TotalPrice]) VALUES (101, CAST(50.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), 7, 14, CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Baskets] ([BasketID], [Price], [Count], [ProductID], [RestaurantTableID], [TotalPrice]) VALUES (102, CAST(50.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), 6, 14, CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Baskets] ([BasketID], [Price], [Count], [ProductID], [RestaurantTableID], [TotalPrice]) VALUES (103, CAST(100.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), 3, 3, CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Baskets] ([BasketID], [Price], [Count], [ProductID], [RestaurantTableID], [TotalPrice]) VALUES (104, CAST(140.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), 4, 3, CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Baskets] ([BasketID], [Price], [Count], [ProductID], [RestaurantTableID], [TotalPrice]) VALUES (105, CAST(13.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), 15, 3, CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Baskets] ([BasketID], [Price], [Count], [ProductID], [RestaurantTableID], [TotalPrice]) VALUES (106, CAST(5.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), 13, 3, CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Baskets] ([BasketID], [Price], [Count], [ProductID], [RestaurantTableID], [TotalPrice]) VALUES (107, CAST(20.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), 12, 3, CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Baskets] ([BasketID], [Price], [Count], [ProductID], [RestaurantTableID], [TotalPrice]) VALUES (108, CAST(13.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), 15, 3, CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Baskets] ([BasketID], [Price], [Count], [ProductID], [RestaurantTableID], [TotalPrice]) VALUES (109, CAST(20.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), 12, 3, CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Baskets] ([BasketID], [Price], [Count], [ProductID], [RestaurantTableID], [TotalPrice]) VALUES (110, CAST(100.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), 3, 3, CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Baskets] ([BasketID], [Price], [Count], [ProductID], [RestaurantTableID], [TotalPrice]) VALUES (111, CAST(140.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), 4, 3, CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Baskets] ([BasketID], [Price], [Count], [ProductID], [RestaurantTableID], [TotalPrice]) VALUES (112, CAST(123.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), 2, 5, CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Baskets] ([BasketID], [Price], [Count], [ProductID], [RestaurantTableID], [TotalPrice]) VALUES (113, CAST(75.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), 11, 5, CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Baskets] ([BasketID], [Price], [Count], [ProductID], [RestaurantTableID], [TotalPrice]) VALUES (114, CAST(30.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), 8, 6, CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Baskets] ([BasketID], [Price], [Count], [ProductID], [RestaurantTableID], [TotalPrice]) VALUES (115, CAST(35.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), 10, 6, CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Baskets] ([BasketID], [Price], [Count], [ProductID], [RestaurantTableID], [TotalPrice]) VALUES (116, CAST(20.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), 9, 2, CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Baskets] ([BasketID], [Price], [Count], [ProductID], [RestaurantTableID], [TotalPrice]) VALUES (117, CAST(50.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), 6, 2, CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Baskets] ([BasketID], [Price], [Count], [ProductID], [RestaurantTableID], [TotalPrice]) VALUES (119, CAST(140.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), 4, 7, CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Baskets] ([BasketID], [Price], [Count], [ProductID], [RestaurantTableID], [TotalPrice]) VALUES (121, CAST(100.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), 3, 1, CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Baskets] ([BasketID], [Price], [Count], [ProductID], [RestaurantTableID], [TotalPrice]) VALUES (123, CAST(60.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), 5, 16, CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Baskets] ([BasketID], [Price], [Count], [ProductID], [RestaurantTableID], [TotalPrice]) VALUES (124, CAST(50.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), 7, 13, CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Baskets] ([BasketID], [Price], [Count], [ProductID], [RestaurantTableID], [TotalPrice]) VALUES (125, CAST(100.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), 3, 13, CAST(0.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[Baskets] OFF
GO
SET IDENTITY_INSERT [dbo].[Bookings] ON 

INSERT [dbo].[Bookings] ([BookingID], [Name], [Phone], [Mail], [PersonCount], [Date], [Description]) VALUES (3, N'ahmet yıldız', N'0555 333 44 55', N'a@a.com', 2, CAST(N'2024-08-25T00:00:00.0000000' AS DateTime2), N'Rezervasyon İptal Edildi')
INSERT [dbo].[Bookings] ([BookingID], [Name], [Phone], [Mail], [PersonCount], [Date], [Description]) VALUES (4, N'ahmet Çınar', N'01111111212', N'ahmet@gmail.com', 4, CAST(N'2024-08-30T00:00:00.0000000' AS DateTime2), N'Rezervasyon Onaylandı')
INSERT [dbo].[Bookings] ([BookingID], [Name], [Phone], [Mail], [PersonCount], [Date], [Description]) VALUES (6, N'Talha Arslann', N'0123 456 79 99', N'talhaa@gmail.com', 4, CAST(N'2024-08-31T00:00:00.0000000' AS DateTime2), N'Rezervasyon Onaylandı')
SET IDENTITY_INSERT [dbo].[Bookings] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Status]) VALUES (2, N'Hamburger', 1)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Status]) VALUES (4, N'Makarna', 0)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Status]) VALUES (5, N'Salata', 1)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Status]) VALUES (6, N'Tatlı', 1)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Status]) VALUES (7, N'İçecek', 1)
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Contacts] ON 

INSERT [dbo].[Contacts] ([ContactID], [Location], [Phone], [Mail], [FooterDescription], [FooterTitle], [OpenDays], [OpenDaysDescription], [OpenHours]) VALUES (1, N'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d48285.62688247778!2d31.111398787412178!3d40.85318009395618!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x409da01b6536d421%3A0xe1d0a622568cf8d7!2zRMO8emNlLCBEw7x6Y2UgTWVya2V6L0TDvHpjZQ!5e0!3m2!1str!2str!4v1727268342607!5m2!1str!2str', N'+09111111', N'aasdfdf@gmail.com', N'Bu yemek firmamızda tüm yemekler el yapımıdır ve sağlıklıdır her bütçeye uygun yemek vardır', N'Restaurant', N'Çalışma Saatlerimiz', N'Haftanın 7 Günü', N'Sabah 10:00 - Akşam 23:00')
SET IDENTITY_INSERT [dbo].[Contacts] OFF
GO
SET IDENTITY_INSERT [dbo].[Discounts] ON 

INSERT [dbo].[Discounts] ([DiscountID], [Title], [Amount], [Description], [ImageUrl], [Status]) VALUES (2, N'asdddd', N'12', N'asdddd', N'/feane-1.0.0/images/o1.jpg', 1)
INSERT [dbo].[Discounts] ([DiscountID], [Title], [Amount], [Description], [ImageUrl], [Status]) VALUES (3, N'bvvcbvbc', N'12', N'sdgdfgdg', N'/feane-1.0.0/images/o2.jpg', 1)
SET IDENTITY_INSERT [dbo].[Discounts] OFF
GO
SET IDENTITY_INSERT [dbo].[Messages] ON 

INSERT [dbo].[Messages] ([MessageID], [NameSurname], [Mail], [Phone], [Subject], [MessageContent], [MessageSendDate], [Status]) VALUES (1, N'Hüsnü', N'string', N'string', N'string', N'string', CAST(N'2024-09-18T23:23:57.3684857' AS DateTime2), 0)
INSERT [dbo].[Messages] ([MessageID], [NameSurname], [Mail], [Phone], [Subject], [MessageContent], [MessageSendDate], [Status]) VALUES (2, N'asd', N'a@a.com', N'124', N'asd', N'asd', CAST(N'2024-09-19T00:05:02.1879567' AS DateTime2), 0)
INSERT [dbo].[Messages] ([MessageID], [NameSurname], [Mail], [Phone], [Subject], [MessageContent], [MessageSendDate], [Status]) VALUES (3, N'öööö', N'o@gmail.com', N'541', N'dfgh', N'dfg', CAST(N'2024-09-25T18:15:33.8590442' AS DateTime2), 0)
INSERT [dbo].[Messages] ([MessageID], [NameSurname], [Mail], [Phone], [Subject], [MessageContent], [MessageSendDate], [Status]) VALUES (4, N'aa', N'asd@sdf', N'234', N'qwe', N'qwe', CAST(N'2024-10-01T22:04:52.1405020' AS DateTime2), 0)
SET IDENTITY_INSERT [dbo].[Messages] OFF
GO
SET IDENTITY_INSERT [dbo].[MoneyCases] ON 

INSERT [dbo].[MoneyCases] ([MoneyCaseID], [TotalAmount]) VALUES (1, CAST(510.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[MoneyCases] OFF
GO
SET IDENTITY_INSERT [dbo].[Notifications] ON 

INSERT [dbo].[Notifications] ([NotificationID], [Type], [Description], [Date], [Status], [Icon]) VALUES (1, N'notif-icon notif-primary', N'Yeni Rezervasyon Geldi', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, N'la la-calendar-o')
INSERT [dbo].[Notifications] ([NotificationID], [Type], [Description], [Date], [Status], [Icon]) VALUES (2, N'notif-icon notif-success', N'Yeni Yorumunuz Var', CAST(N'2024-09-04T00:00:00.0000000' AS DateTime2), 0, N'la la-comment')
INSERT [dbo].[Notifications] ([NotificationID], [Type], [Description], [Date], [Status], [Icon]) VALUES (3, N'notif-icon notif-danger', N'Yeni Siparişiniz Var', CAST(N'2024-09-04T00:00:00.0000000' AS DateTime2), 1, N'la la-heart')
INSERT [dbo].[Notifications] ([NotificationID], [Type], [Description], [Date], [Status], [Icon]) VALUES (5, N'notif-icon notif-success', N'Yeni Yorumunuz Var', CAST(N'2024-09-04T00:00:00.0000000' AS DateTime2), 0, N'la la-comment')
INSERT [dbo].[Notifications] ([NotificationID], [Type], [Description], [Date], [Status], [Icon]) VALUES (17, N'notif-icon notif-primary', N'asdddd', CAST(N'2024-10-17T12:57:48.5522125' AS DateTime2), 0, N'la la-bell')
SET IDENTITY_INSERT [dbo].[Notifications] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([OrderDetailID], [ProductID], [Count], [UnitPrice], [TotalPrice], [OrderID]) VALUES (1, 3, 1, CAST(100.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[OrderDetails] ([OrderDetailID], [ProductID], [Count], [UnitPrice], [TotalPrice], [OrderID]) VALUES (2, 5, 1, CAST(60.00 AS Decimal(18, 2)), CAST(60.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[OrderDetails] ([OrderDetailID], [ProductID], [Count], [UnitPrice], [TotalPrice], [OrderID]) VALUES (3, 7, 1, CAST(50.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), 3)
INSERT [dbo].[OrderDetails] ([OrderDetailID], [ProductID], [Count], [UnitPrice], [TotalPrice], [OrderID]) VALUES (4, 13, 4, CAST(5.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), 3)
INSERT [dbo].[OrderDetails] ([OrderDetailID], [ProductID], [Count], [UnitPrice], [TotalPrice], [OrderID]) VALUES (5, 4, 2, CAST(140.00 AS Decimal(18, 2)), CAST(280.00 AS Decimal(18, 2)), 4)
INSERT [dbo].[OrderDetails] ([OrderDetailID], [ProductID], [Count], [UnitPrice], [TotalPrice], [OrderID]) VALUES (7, 4, 2, CAST(140.00 AS Decimal(18, 2)), CAST(280.00 AS Decimal(18, 2)), 6)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([OrderID], [TableNumber], [Description], [Date], [TotalPrice], [OrderDate]) VALUES (1, N'Salon01', N'Hesap Kapatıldı', CAST(N'2024-05-02T00:00:00.0000000' AS DateTime2), CAST(100.00 AS Decimal(18, 2)), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Orders] ([OrderID], [TableNumber], [Description], [Date], [TotalPrice], [OrderDate]) VALUES (2, N'Salon02', N'Hesap Kapatıldı', CAST(N'2024-05-02T00:00:00.0000000' AS DateTime2), CAST(60.00 AS Decimal(18, 2)), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Orders] ([OrderID], [TableNumber], [Description], [Date], [TotalPrice], [OrderDate]) VALUES (3, N'Salon03', N'Hesap Kapatıldı', CAST(N'2024-05-02T00:00:00.0000000' AS DateTime2), CAST(70.00 AS Decimal(18, 2)), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Orders] ([OrderID], [TableNumber], [Description], [Date], [TotalPrice], [OrderDate]) VALUES (4, N'Bahçe01', N'Müşteri Masada', CAST(N'2024-05-04T00:00:00.0000000' AS DateTime2), CAST(280.00 AS Decimal(18, 2)), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Orders] ([OrderID], [TableNumber], [Description], [Date], [TotalPrice], [OrderDate]) VALUES (6, N'Bahçe02', N'Hesap Kapatıldı', CAST(N'2024-05-07T00:00:00.0000000' AS DateTime2), CAST(280.00 AS Decimal(18, 2)), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductID], [ProductName], [Description], [Price], [ImageUrl], [ProductStatus], [CategoryID]) VALUES (2, N'Islak Hamburger', N'Hamburger patates kızartması sos', CAST(123.00 AS Decimal(18, 2)), N'/feane-1.0.0/images/f1.png', 1, 2)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Description], [Price], [ImageUrl], [ProductStatus], [CategoryID]) VALUES (3, N'Köfte Burger', N'Hamburger patates kızartması sos', CAST(100.00 AS Decimal(18, 2)), N'/feane-1.0.0/images/f2.png', 1, 2)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Description], [Price], [ImageUrl], [ProductStatus], [CategoryID]) VALUES (4, N'Cheese Burger', N'Hamburger patates kızartması sos', CAST(140.00 AS Decimal(18, 2)), N'/feane-1.0.0/images/f3.png', 1, 2)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Description], [Price], [ImageUrl], [ProductStatus], [CategoryID]) VALUES (5, N'Ravioli ', N'Makarna sos', CAST(60.00 AS Decimal(18, 2)), N'/feane-1.0.0/images/f4.png', 1, 4)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Description], [Price], [ImageUrl], [ProductStatus], [CategoryID]) VALUES (6, N'Kremalı Makarna', N'Makarna sos', CAST(50.00 AS Decimal(18, 2)), N'/feane-1.0.0/images/f5.png', 0, 4)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Description], [Price], [ImageUrl], [ProductStatus], [CategoryID]) VALUES (7, N'Spagetti', N'Makarna sos', CAST(50.00 AS Decimal(18, 2)), N'/feane-1.0.0/images/f6.png', 0, 4)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Description], [Price], [ImageUrl], [ProductStatus], [CategoryID]) VALUES (8, N'Sezar Salata', N'salata', CAST(30.00 AS Decimal(18, 2)), N'/feane-1.0.0/images/f7.png', 1, 5)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Description], [Price], [ImageUrl], [ProductStatus], [CategoryID]) VALUES (9, N'Çoban Salata', N'Salata', CAST(20.00 AS Decimal(18, 2)), N'/feane-1.0.0/images/f8.png', 1, 5)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Description], [Price], [ImageUrl], [ProductStatus], [CategoryID]) VALUES (10, N'Sütlaç', N'Sütlaç', CAST(35.00 AS Decimal(18, 2)), N'/feane-1.0.0/images/f9.png', 1, 6)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Description], [Price], [ImageUrl], [ProductStatus], [CategoryID]) VALUES (11, N'Künefe', N'Çay fıstık dondurma', CAST(75.00 AS Decimal(18, 2)), N'/feane-1.0.0/images/f3.png', 1, 6)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Description], [Price], [ImageUrl], [ProductStatus], [CategoryID]) VALUES (12, N'Kola', N'Kola', CAST(20.00 AS Decimal(18, 2)), N'/feane-1.0.0/images/f2.png', 1, 7)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Description], [Price], [ImageUrl], [ProductStatus], [CategoryID]) VALUES (13, N'Su', N'su', CAST(5.00 AS Decimal(18, 2)), N'/feane-1.0.0/images/f5.png', 1, 7)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Description], [Price], [ImageUrl], [ProductStatus], [CategoryID]) VALUES (15, N'Limonataa', N'Elde yapma taze limonataa', CAST(13.00 AS Decimal(18, 2)), N'/feane-1.0.0/images/f7.png', 0, 7)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[RestaurantTables] ON 

INSERT [dbo].[RestaurantTables] ([RestaurantTableID], [Name], [Status]) VALUES (1, N'Bahçe 01', 1)
INSERT [dbo].[RestaurantTables] ([RestaurantTableID], [Name], [Status]) VALUES (2, N'Bahçe 02', 1)
INSERT [dbo].[RestaurantTables] ([RestaurantTableID], [Name], [Status]) VALUES (3, N'Bahçe 03', 1)
INSERT [dbo].[RestaurantTables] ([RestaurantTableID], [Name], [Status]) VALUES (4, N'Bahçe 04', 1)
INSERT [dbo].[RestaurantTables] ([RestaurantTableID], [Name], [Status]) VALUES (5, N'Bahçe 05', 1)
INSERT [dbo].[RestaurantTables] ([RestaurantTableID], [Name], [Status]) VALUES (6, N'Bahçe 06', 0)
INSERT [dbo].[RestaurantTables] ([RestaurantTableID], [Name], [Status]) VALUES (7, N'Salon 01', 0)
INSERT [dbo].[RestaurantTables] ([RestaurantTableID], [Name], [Status]) VALUES (8, N'Salon 02', 0)
INSERT [dbo].[RestaurantTables] ([RestaurantTableID], [Name], [Status]) VALUES (9, N'Salon 03', 1)
INSERT [dbo].[RestaurantTables] ([RestaurantTableID], [Name], [Status]) VALUES (10, N'Salon 04', 1)
INSERT [dbo].[RestaurantTables] ([RestaurantTableID], [Name], [Status]) VALUES (11, N'Salon 05', 1)
INSERT [dbo].[RestaurantTables] ([RestaurantTableID], [Name], [Status]) VALUES (12, N'Salon 06', 0)
INSERT [dbo].[RestaurantTables] ([RestaurantTableID], [Name], [Status]) VALUES (13, N'Salon 07', 1)
INSERT [dbo].[RestaurantTables] ([RestaurantTableID], [Name], [Status]) VALUES (14, N'Teras 01', 0)
INSERT [dbo].[RestaurantTables] ([RestaurantTableID], [Name], [Status]) VALUES (15, N'Teras 02', 1)
INSERT [dbo].[RestaurantTables] ([RestaurantTableID], [Name], [Status]) VALUES (16, N'Teras 03', 0)
INSERT [dbo].[RestaurantTables] ([RestaurantTableID], [Name], [Status]) VALUES (18, N'Teras04', 1)
INSERT [dbo].[RestaurantTables] ([RestaurantTableID], [Name], [Status]) VALUES (19, N'Teras05', 1)
INSERT [dbo].[RestaurantTables] ([RestaurantTableID], [Name], [Status]) VALUES (21, N'Teras06', 1)
SET IDENTITY_INSERT [dbo].[RestaurantTables] OFF
GO
SET IDENTITY_INSERT [dbo].[Sliders] ON 

INSERT [dbo].[Sliders] ([SliderID], [Title1], [Title2], [Title3], [Description1], [Description2], [Description3]) VALUES (1, N'Lezzetli Makarnalar', N'Uzak Doğu', N'Eşsiz Hamburger', N'asfadsasd am facilis rerum, commodi, temporibus sapiente ad mollitia laborum quam quisquam esse error unde. Teasfdafas oloremque, labore, sunt repellat dolore, iste magni quos nihil ducimus libero ipsam.', N'asfadsasd am facilis rerum, commodi, temporibus sapiente ad mollitia laborum quam quisquam esse error unde. Teasfdafas oloremque, labore, sunt repellat dolore, iste magni quos nihil ducimus libero ipsam.', N'asfadsasd am facilis rerum, commodi, temporibus sapiente ad mollitia laborum quam quisquam esse error unde. Teasfdafas oloremque, labore, sunt repellat dolore, iste magni quos nihil ducimus libero ipsam.')
SET IDENTITY_INSERT [dbo].[Sliders] OFF
GO
SET IDENTITY_INSERT [dbo].[SocialMedias] ON 

INSERT [dbo].[SocialMedias] ([SocialMediaID], [Title], [Url], [Icon]) VALUES (2, N'Facebook', N'https://www.facebook.com/profile.php?id=100005723807256&locale=tr_TR', N'fa fa-facebook')
INSERT [dbo].[SocialMedias] ([SocialMediaID], [Title], [Url], [Icon]) VALUES (4, N'Linkedin', N'https://www.linkedin.com/in/talha-arslan-a50433231/', N'fa fa-linkedin')
SET IDENTITY_INSERT [dbo].[SocialMedias] OFF
GO
SET IDENTITY_INSERT [dbo].[Testimonials] ON 

INSERT [dbo].[Testimonials] ([TestimonialID], [Name], [Title], [Comment], [ImageUrl], [Status]) VALUES (2, N'Ahmet', N'Deneme', N'Bu ürün çok kaliteli olmuş', N'/feane-1.0.0/images/client1.jpg', 1)
INSERT [dbo].[Testimonials] ([TestimonialID], [Name], [Title], [Comment], [ImageUrl], [Status]) VALUES (3, N'Mehmet', N'Deneme2', N'Bunun gibisini yemedim', N'/feane-1.0.0/images/client2.jpg', 1)
SET IDENTITY_INSERT [dbo].[Testimonials] OFF
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 14.11.2024 16:58:56 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 14.11.2024 16:58:56 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 14.11.2024 16:58:56 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 14.11.2024 16:58:56 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 14.11.2024 16:58:56 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 14.11.2024 16:58:56 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 14.11.2024 16:58:56 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Baskets_ProductID]    Script Date: 14.11.2024 16:58:56 ******/
CREATE NONCLUSTERED INDEX [IX_Baskets_ProductID] ON [dbo].[Baskets]
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Baskets_RestaurantTableID]    Script Date: 14.11.2024 16:58:56 ******/
CREATE NONCLUSTERED INDEX [IX_Baskets_RestaurantTableID] ON [dbo].[Baskets]
(
	[RestaurantTableID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderDetails_OrderID]    Script Date: 14.11.2024 16:58:56 ******/
CREATE NONCLUSTERED INDEX [IX_OrderDetails_OrderID] ON [dbo].[OrderDetails]
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderDetails_ProductID]    Script Date: 14.11.2024 16:58:56 ******/
CREATE NONCLUSTERED INDEX [IX_OrderDetails_ProductID] ON [dbo].[OrderDetails]
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_CategoryID]    Script Date: 14.11.2024 16:58:56 ******/
CREATE NONCLUSTERED INDEX [IX_Products_CategoryID] ON [dbo].[Products]
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Baskets] ADD  DEFAULT ((0.0)) FOR [TotalPrice]
GO
ALTER TABLE [dbo].[Bookings] ADD  DEFAULT (N'') FOR [Description]
GO
ALTER TABLE [dbo].[Contacts] ADD  DEFAULT (N'') FOR [FooterTitle]
GO
ALTER TABLE [dbo].[Contacts] ADD  DEFAULT (N'') FOR [OpenDays]
GO
ALTER TABLE [dbo].[Contacts] ADD  DEFAULT (N'') FOR [OpenDaysDescription]
GO
ALTER TABLE [dbo].[Contacts] ADD  DEFAULT (N'') FOR [OpenHours]
GO
ALTER TABLE [dbo].[Discounts] ADD  DEFAULT (CONVERT([bit],(0))) FOR [Status]
GO
ALTER TABLE [dbo].[Notifications] ADD  DEFAULT (N'') FOR [Icon]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [OrderDate]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((0)) FOR [CategoryID]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Baskets]  WITH CHECK ADD  CONSTRAINT [FK_Baskets_Products_ProductID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Baskets] CHECK CONSTRAINT [FK_Baskets_Products_ProductID]
GO
ALTER TABLE [dbo].[Baskets]  WITH CHECK ADD  CONSTRAINT [FK_Baskets_RestaurantTables_RestaurantTableID] FOREIGN KEY([RestaurantTableID])
REFERENCES [dbo].[RestaurantTables] ([RestaurantTableID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Baskets] CHECK CONSTRAINT [FK_Baskets_RestaurantTables_RestaurantTableID]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders_OrderID] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([OrderID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders_OrderID]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products_ProductID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products_ProductID]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories_CategoryID] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([CategoryID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories_CategoryID]
GO
USE [master]
GO
ALTER DATABASE [SignalRDb] SET  READ_WRITE 
GO
