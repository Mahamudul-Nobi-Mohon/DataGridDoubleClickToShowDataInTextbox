USE [master]
GO
/****** Object:  Database [Sample_30-11-2016]    Script Date: 2/3/2017 4:11:56 PM ******/
CREATE DATABASE [Sample_30-11-2016]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Sample_30-11-2016', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Sample_30-11-2016.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Sample_30-11-2016_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Sample_30-11-2016_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Sample_30-11-2016] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Sample_30-11-2016].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Sample_30-11-2016] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Sample_30-11-2016] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Sample_30-11-2016] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Sample_30-11-2016] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Sample_30-11-2016] SET ARITHABORT OFF 
GO
ALTER DATABASE [Sample_30-11-2016] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Sample_30-11-2016] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Sample_30-11-2016] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Sample_30-11-2016] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Sample_30-11-2016] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Sample_30-11-2016] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Sample_30-11-2016] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Sample_30-11-2016] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Sample_30-11-2016] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Sample_30-11-2016] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Sample_30-11-2016] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Sample_30-11-2016] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Sample_30-11-2016] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Sample_30-11-2016] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Sample_30-11-2016] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Sample_30-11-2016] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Sample_30-11-2016] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Sample_30-11-2016] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Sample_30-11-2016] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Sample_30-11-2016] SET  MULTI_USER 
GO
ALTER DATABASE [Sample_30-11-2016] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Sample_30-11-2016] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Sample_30-11-2016] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Sample_30-11-2016] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Sample_30-11-2016]
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 2/3/2017 4:11:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Location] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Employees]    Script Date: 2/3/2017 4:11:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Gender] [nvarchar](9) NULL,
	[Salary] [int] NULL,
	[DepartmentId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Departments] ON 

INSERT [dbo].[Departments] ([Id], [Name], [Location]) VALUES (1, N'IT', N'New York')
INSERT [dbo].[Departments] ([Id], [Name], [Location]) VALUES (2, N'HR', N'Bangladesh')
INSERT [dbo].[Departments] ([Id], [Name], [Location]) VALUES (3, N'Payroll', N'Sydney')
INSERT [dbo].[Departments] ([Id], [Name], [Location]) VALUES (4, N'IT', N'New York')
SET IDENTITY_INSERT [dbo].[Departments] OFF
SET IDENTITY_INSERT [dbo].[Employees] ON 

INSERT [dbo].[Employees] ([Id], [FirstName], [LastName], [Gender], [Salary], [DepartmentId]) VALUES (1, N'Mark', N'John', N'Male', 40000, 1)
INSERT [dbo].[Employees] ([Id], [FirstName], [LastName], [Gender], [Salary], [DepartmentId]) VALUES (2, N'Munna', N'Khan', N'Male', 20000, 2)
INSERT [dbo].[Employees] ([Id], [FirstName], [LastName], [Gender], [Salary], [DepartmentId]) VALUES (3, N'Joshim', N'Hossain', N'Male', 30000, 1)
INSERT [dbo].[Employees] ([Id], [FirstName], [LastName], [Gender], [Salary], [DepartmentId]) VALUES (4, N'Riad', N'khan', N'Male', 10000, 3)
INSERT [dbo].[Employees] ([Id], [FirstName], [LastName], [Gender], [Salary], [DepartmentId]) VALUES (5, N'Riya', N'Chaudhury', N'FeMale', 30000, 3)
INSERT [dbo].[Employees] ([Id], [FirstName], [LastName], [Gender], [Salary], [DepartmentId]) VALUES (6, N'priya', N'khan', N'FeMale', 30000, 2)
INSERT [dbo].[Employees] ([Id], [FirstName], [LastName], [Gender], [Salary], [DepartmentId]) VALUES (7, N'Shuborna', N'haque', N'FeMale', 50000, 1)
INSERT [dbo].[Employees] ([Id], [FirstName], [LastName], [Gender], [Salary], [DepartmentId]) VALUES (8, N'Tony', N'jahan', N'FeMale', 35000, 1)
INSERT [dbo].[Employees] ([Id], [FirstName], [LastName], [Gender], [Salary], [DepartmentId]) VALUES (1002, N'a', N'a', NULL, 1, NULL)
INSERT [dbo].[Employees] ([Id], [FirstName], [LastName], [Gender], [Salary], [DepartmentId]) VALUES (1003, N'milon', N'mahmud', NULL, 10000, NULL)
INSERT [dbo].[Employees] ([Id], [FirstName], [LastName], [Gender], [Salary], [DepartmentId]) VALUES (1004, N'Rokon', N'Karim', NULL, 20000, NULL)
INSERT [dbo].[Employees] ([Id], [FirstName], [LastName], [Gender], [Salary], [DepartmentId]) VALUES (1005, N'Mohon', N'Khan', NULL, 50000, NULL)
INSERT [dbo].[Employees] ([Id], [FirstName], [LastName], [Gender], [Salary], [DepartmentId]) VALUES (1006, N'', N'', NULL, 0, NULL)
INSERT [dbo].[Employees] ([Id], [FirstName], [LastName], [Gender], [Salary], [DepartmentId]) VALUES (1007, N'shiplu', N'Bashak', NULL, 1100, NULL)
INSERT [dbo].[Employees] ([Id], [FirstName], [LastName], [Gender], [Salary], [DepartmentId]) VALUES (1008, N'Bidhan', N'Molla', NULL, 3000, NULL)
INSERT [dbo].[Employees] ([Id], [FirstName], [LastName], [Gender], [Salary], [DepartmentId]) VALUES (1009, N'shumon', N'molla', N'Male', 40000, NULL)
INSERT [dbo].[Employees] ([Id], [FirstName], [LastName], [Gender], [Salary], [DepartmentId]) VALUES (1010, N'rimpa', N'khatun', N'FeMale', 25000, NULL)
INSERT [dbo].[Employees] ([Id], [FirstName], [LastName], [Gender], [Salary], [DepartmentId]) VALUES (1011, N'shumon', N'miah', N'Male', 80000, NULL)
INSERT [dbo].[Employees] ([Id], [FirstName], [LastName], [Gender], [Salary], [DepartmentId]) VALUES (1012, N'haydra', N'bads', N'FeMale', 676767, NULL)
INSERT [dbo].[Employees] ([Id], [FirstName], [LastName], [Gender], [Salary], [DepartmentId]) VALUES (1013, N'shimu', N'45', N'Male', 778, NULL)
SET IDENTITY_INSERT [dbo].[Employees] OFF
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Departments] ([Id])
GO
USE [master]
GO
ALTER DATABASE [Sample_30-11-2016] SET  READ_WRITE 
GO
