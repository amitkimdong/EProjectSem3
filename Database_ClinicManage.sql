USE [master]
GO
/****** Object:  Database [ClinicManage]    Script Date: 06/17/2014 18:33:54 ******/
CREATE DATABASE [ClinicManage] ON  PRIMARY 
( NAME = N'ClinicManage', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\ClinicManage.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ClinicManage_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\ClinicManage.LDF' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ClinicManage] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ClinicManage].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ClinicManage] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [ClinicManage] SET ANSI_NULLS OFF
GO
ALTER DATABASE [ClinicManage] SET ANSI_PADDING OFF
GO
ALTER DATABASE [ClinicManage] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [ClinicManage] SET ARITHABORT OFF
GO
ALTER DATABASE [ClinicManage] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [ClinicManage] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [ClinicManage] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [ClinicManage] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [ClinicManage] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [ClinicManage] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [ClinicManage] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [ClinicManage] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [ClinicManage] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [ClinicManage] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [ClinicManage] SET  DISABLE_BROKER
GO
ALTER DATABASE [ClinicManage] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [ClinicManage] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [ClinicManage] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [ClinicManage] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [ClinicManage] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [ClinicManage] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [ClinicManage] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [ClinicManage] SET  READ_WRITE
GO
ALTER DATABASE [ClinicManage] SET RECOVERY FULL
GO
ALTER DATABASE [ClinicManage] SET  MULTI_USER
GO
ALTER DATABASE [ClinicManage] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [ClinicManage] SET DB_CHAINING OFF
GO
USE [ClinicManage]
GO
/****** Object:  Table [dbo].[tbCategory]    Script Date: 06/17/2014 18:33:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbCategory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Tag] [nvarchar](256) NULL,
	[Name] [nvarchar](256) NULL,
	[Content] [ntext] NULL,
	[Level] [nvarchar](100) NULL,
	[Priority] [smallint] NULL,
	[Index] [smallint] NULL,
	[Image] [varchar](256) NULL,
	[Title] [nvarchar](300) NULL,
	[Description] [nvarchar](300) NULL,
	[Keyword] [nvarchar](300) NULL,
	[Active] [int] NULL,
	[Ord] [int] NULL,
	[Lang] [varchar](5) NULL,
	[Image2] [nvarchar](300) NULL,
 CONSTRAINT [PRK_Category_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbBrands]    Script Date: 06/17/2014 18:33:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbBrands](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](400) NULL,
	[Logo] [varchar](300) NULL,
	[Ord] [int] NULL,
	[Lang] [varchar](5) NULL,
 CONSTRAINT [PK_Brands] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbGroupNews]    Script Date: 06/17/2014 18:33:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbGroupNews](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[Tag] [nvarchar](256) NULL,
	[Level] [varchar](256) NULL,
	[Title] [nvarchar](256) NULL,
	[Description] [nvarchar](256) NULL,
	[Keyword] [nvarchar](512) NULL,
	[Ord] [int] NULL,
	[Priority] [int] NULL,
	[Index] [int] NULL,
	[Active] [int] NULL,
	[Lang] [varchar](5) NULL,
 CONSTRAINT [PRK_GroupNews_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbGroupNews] ON
INSERT [dbo].[tbGroupNews] ([Id], [Name], [Tag], [Level], [Title], [Description], [Keyword], [Ord], [Priority], [Index], [Active], [Lang]) VALUES (2, N'232', N'2', N'2', N'2', N'23', N'2', 3, 2, 2, 0, N'223')
INSERT [dbo].[tbGroupNews] ([Id], [Name], [Tag], [Level], [Title], [Description], [Keyword], [Ord], [Priority], [Index], [Active], [Lang]) VALUES (3, N'232', N'2', N'2', N'2', N'23', N'2', 3, 2, 2, 0, N'223')
INSERT [dbo].[tbGroupNews] ([Id], [Name], [Tag], [Level], [Title], [Description], [Keyword], [Ord], [Priority], [Index], [Active], [Lang]) VALUES (5, N'232', N'2', N'2', N'2', N'23', N'2', 3, 2, 2, 0, N'223')
INSERT [dbo].[tbGroupNews] ([Id], [Name], [Tag], [Level], [Title], [Description], [Keyword], [Ord], [Priority], [Index], [Active], [Lang]) VALUES (8, N'232', N'2', N'2', N'2', N'23sssssssssssssssss', N'2', 3, 2, 2, 0, N'223')
INSERT [dbo].[tbGroupNews] ([Id], [Name], [Tag], [Level], [Title], [Description], [Keyword], [Ord], [Priority], [Index], [Active], [Lang]) VALUES (9, N'232', N'2', N'2', N'2s', N'23', N'2', 3, 2, 2, 0, N'223')
INSERT [dbo].[tbGroupNews] ([Id], [Name], [Tag], [Level], [Title], [Description], [Keyword], [Ord], [Priority], [Index], [Active], [Lang]) VALUES (10, N'Van Hoc Nghe Thuat', N'2', N'2', N'2', N'2', N'2', 2, 2, 2, 1, N'2')
INSERT [dbo].[tbGroupNews] ([Id], [Name], [Tag], [Level], [Title], [Description], [Keyword], [Ord], [Priority], [Index], [Active], [Lang]) VALUES (11, N'Van Hoc Nghe Thuat2', N'2', N'2', N'2', N'2', N'2', 2, 2, 2, 1, N'2')
SET IDENTITY_INSERT [dbo].[tbGroupNews] OFF
/****** Object:  Table [dbo].[tbCustomers]    Script Date: 06/17/2014 18:33:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbCustomers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](100) NULL,
	[PassWord] [nvarchar](200) NULL,
	[CusName] [nvarchar](200) NULL,
	[BirthDay] [nvarchar](100) NULL,
	[Address] [nvarchar](200) NULL,
	[Phone] [varchar](100) NULL,
	[Mobile] [varchar](100) NULL,
	[Email] [varchar](100) NULL,
	[CreatDate] [datetime] NULL,
	[Status] [bigint] NULL,
 CONSTRAINT [PK_tbCUSTOMERS] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbRole]    Script Date: 06/17/2014 18:33:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbRole](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tbRole] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbRole] ON
INSERT [dbo].[tbRole] ([Id], [RoleName]) VALUES (1, N'Admin')
INSERT [dbo].[tbRole] ([Id], [RoleName]) VALUES (2, N'View')
INSERT [dbo].[tbRole] ([Id], [RoleName]) VALUES (3, N'Editor')
INSERT [dbo].[tbRole] ([Id], [RoleName]) VALUES (5, N'test')
INSERT [dbo].[tbRole] ([Id], [RoleName]) VALUES (6, N'test2')
SET IDENTITY_INSERT [dbo].[tbRole] OFF
/****** Object:  Table [dbo].[tbVisistor]    Script Date: 06/17/2014 18:33:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbVisistor](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserOnline] [int] NULL,
	[Visistor] [bigint] NULL,
	[UserOnlineDate] [int] NULL,
	[DateOnline] [datetime] NULL,
 CONSTRAINT [PRK_tbvisistor_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbUser]    Script Date: 06/17/2014 18:33:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbUser](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[Username] [varchar](64) NULL,
	[Password] [varchar](64) NULL,
	[Address] [nvarchar](500) NULL,
	[Email] [nvarchar](50) NULL,
	[Phone] [nvarchar](20) NULL,
	[Active] [bit] NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PRK_User_ID] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbUser] ON
INSERT [dbo].[tbUser] ([Id], [Name], [Username], [Password], [Address], [Email], [Phone], [Active], [RoleId]) VALUES (1, N'aq', N'a', N'', N'a', N'a', N'a', 0, 1)
SET IDENTITY_INSERT [dbo].[tbUser] OFF
/****** Object:  Table [dbo].[tbBill_Customers]    Script Date: 06/17/2014 18:33:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbBill_Customers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CusId] [int] NULL,
	[totalmoney] [varchar](100) NULL,
	[idate] [datetime] NULL,
	[xdate] [datetime] NULL,
	[request] [ntext] NULL,
	[typepay] [nvarchar](100) NULL,
	[state] [int] NULL,
	[lang] [char](3) NULL,
	[show] [int] NULL,
 CONSTRAINT [PK_tbBill_customers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbProduct]    Script Date: 06/17/2014 18:33:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbProduct](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Tag] [nvarchar](256) NULL,
	[Name] [nvarchar](256) NULL,
	[Content] [ntext] NULL,
	[Detail] [ntext] NULL,
	[Priority] [smallint] NULL,
	[Index] [smallint] NULL,
	[Price] [float] NULL,
	[Image] [varchar](150) NULL,
	[Date] [datetime] NULL,
	[CatId] [int] NULL,
	[CatTag] [nvarchar](256) NULL,
	[Title] [nvarchar](300) NULL,
	[Description] [nvarchar](300) NULL,
	[Keyword] [nvarchar](300) NULL,
	[Active] [int] NULL,
	[Ord] [int] NULL,
	[Lang] [varchar](5) NULL,
	[BrandId] [int] NULL,
	[PiceOld] [varchar](200) NULL,
	[Image1] [varchar](200) NULL,
	[Image2] [varchar](200) NULL,
	[Image3] [varchar](200) NULL,
	[Image4] [varchar](200) NULL,
	[Image5] [varchar](200) NULL,
	[Codepro] [nvarchar](200) NULL,
	[Count] [int] NULL,
	[DateBegin] [datetime] NULL,
	[DateEnd] [datetime] NULL,
 CONSTRAINT [PRK_Product_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbNews]    Script Date: 06/17/2014 18:33:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbNews](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](256) NULL,
	[Description] [nvarchar](256) NULL,
	[Tag] [nvarchar](256) NULL,
	[Image] [varchar](256) NULL,
	[Detail] [ntext] NULL,
	[Date] [datetime] NULL,
	[Priority] [int] NULL,
	[Index] [int] NULL,
	[Active] [int] NULL,
	[GroupNewsId] [int] NULL,
	[Lang] [varchar](5) NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PRK_News_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbCommentProduct]    Script Date: 06/17/2014 18:33:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbCommentProduct](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProId] [int] NULL,
	[Name] [nvarchar](250) NULL,
	[Email] [nvarchar](150) NULL,
	[Point] [int] NULL,
	[Content] [ntext] NULL,
	[Date] [datetime] NULL,
	[Active] [int] NULL,
 CONSTRAINT [PK_CommentProduc] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbBilldetail]    Script Date: 06/17/2014 18:33:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbBilldetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[bilid] [int] NULL,
	[proid] [int] NULL,
	[sizeid] [int] NULL,
	[colorid] [int] NULL,
	[quantity] [int] NULL,
	[bilprice] [varchar](100) NULL,
	[bilpricevnd] [varchar](100) NULL,
	[bilmoney] [varchar](100) NULL,
	[billlocation] [int] NULL,
	[Date] [datetime] NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_tbBilldetail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Default [DF_GroupNews_Priority]    Script Date: 06/17/2014 18:33:59 ******/
ALTER TABLE [dbo].[tbGroupNews] ADD  CONSTRAINT [DF_GroupNews_Priority]  DEFAULT ((0)) FOR [Priority]
GO
/****** Object:  ForeignKey [FK_tbUser_tbRole]    Script Date: 06/17/2014 18:33:59 ******/
ALTER TABLE [dbo].[tbUser]  WITH CHECK ADD  CONSTRAINT [FK_tbUser_tbRole] FOREIGN KEY([RoleId])
REFERENCES [dbo].[tbRole] ([Id])
GO
ALTER TABLE [dbo].[tbUser] CHECK CONSTRAINT [FK_tbUser_tbRole]
GO
/****** Object:  ForeignKey [FK_tbBill_customers_tbCUSTOMERS]    Script Date: 06/17/2014 18:33:59 ******/
ALTER TABLE [dbo].[tbBill_Customers]  WITH CHECK ADD  CONSTRAINT [FK_tbBill_customers_tbCUSTOMERS] FOREIGN KEY([CusId])
REFERENCES [dbo].[tbCustomers] ([Id])
GO
ALTER TABLE [dbo].[tbBill_Customers] CHECK CONSTRAINT [FK_tbBill_customers_tbCUSTOMERS]
GO
/****** Object:  ForeignKey [FK_Product_Brands]    Script Date: 06/17/2014 18:33:59 ******/
ALTER TABLE [dbo].[tbProduct]  WITH CHECK ADD  CONSTRAINT [FK_Product_Brands] FOREIGN KEY([BrandId])
REFERENCES [dbo].[tbBrands] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbProduct] CHECK CONSTRAINT [FK_Product_Brands]
GO
/****** Object:  ForeignKey [FK_Product_Category]    Script Date: 06/17/2014 18:33:59 ******/
ALTER TABLE [dbo].[tbProduct]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([CatId])
REFERENCES [dbo].[tbCategory] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbProduct] CHECK CONSTRAINT [FK_Product_Category]
GO
/****** Object:  ForeignKey [FK_tbNews_tbUser]    Script Date: 06/17/2014 18:33:59 ******/
ALTER TABLE [dbo].[tbNews]  WITH CHECK ADD  CONSTRAINT [FK_tbNews_tbUser] FOREIGN KEY([UserId])
REFERENCES [dbo].[tbUser] ([Id])
GO
ALTER TABLE [dbo].[tbNews] CHECK CONSTRAINT [FK_tbNews_tbUser]
GO
/****** Object:  ForeignKey [FRK_News_GroupNewsId]    Script Date: 06/17/2014 18:33:59 ******/
ALTER TABLE [dbo].[tbNews]  WITH CHECK ADD  CONSTRAINT [FRK_News_GroupNewsId] FOREIGN KEY([GroupNewsId])
REFERENCES [dbo].[tbGroupNews] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbNews] CHECK CONSTRAINT [FRK_News_GroupNewsId]
GO
/****** Object:  ForeignKey [FK_tbCommentProduc_tbProduct]    Script Date: 06/17/2014 18:33:59 ******/
ALTER TABLE [dbo].[tbCommentProduct]  WITH CHECK ADD  CONSTRAINT [FK_tbCommentProduc_tbProduct] FOREIGN KEY([ProId])
REFERENCES [dbo].[tbProduct] ([Id])
GO
ALTER TABLE [dbo].[tbCommentProduct] CHECK CONSTRAINT [FK_tbCommentProduc_tbProduct]
GO
/****** Object:  ForeignKey [FK_tbBilldetail_Product]    Script Date: 06/17/2014 18:33:59 ******/
ALTER TABLE [dbo].[tbBilldetail]  WITH CHECK ADD  CONSTRAINT [FK_tbBilldetail_Product] FOREIGN KEY([proid])
REFERENCES [dbo].[tbProduct] ([Id])
GO
ALTER TABLE [dbo].[tbBilldetail] CHECK CONSTRAINT [FK_tbBilldetail_Product]
GO
/****** Object:  ForeignKey [FK_tbBilldetail_tbBill_customers]    Script Date: 06/17/2014 18:33:59 ******/
ALTER TABLE [dbo].[tbBilldetail]  WITH CHECK ADD  CONSTRAINT [FK_tbBilldetail_tbBill_customers] FOREIGN KEY([bilid])
REFERENCES [dbo].[tbBill_Customers] ([Id])
GO
ALTER TABLE [dbo].[tbBilldetail] CHECK CONSTRAINT [FK_tbBilldetail_tbBill_customers]
GO
