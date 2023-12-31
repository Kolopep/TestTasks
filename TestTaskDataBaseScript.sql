USE [master]
GO
/****** Object:  Database [TestTaskDataBase]    Script Date: 12/22/2023 4:05:17 PM ******/
CREATE DATABASE [TestTaskDataBase]
GO
ALTER DATABASE [TestTaskDataBase] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TestTaskDataBase].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TestTaskDataBase] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TestTaskDataBase] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TestTaskDataBase] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TestTaskDataBase] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TestTaskDataBase] SET ARITHABORT OFF 
GO
ALTER DATABASE [TestTaskDataBase] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TestTaskDataBase] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TestTaskDataBase] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TestTaskDataBase] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TestTaskDataBase] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TestTaskDataBase] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TestTaskDataBase] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TestTaskDataBase] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TestTaskDataBase] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TestTaskDataBase] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TestTaskDataBase] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TestTaskDataBase] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TestTaskDataBase] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TestTaskDataBase] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TestTaskDataBase] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TestTaskDataBase] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TestTaskDataBase] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TestTaskDataBase] SET RECOVERY FULL 
GO
ALTER DATABASE [TestTaskDataBase] SET  MULTI_USER 
GO
ALTER DATABASE [TestTaskDataBase] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TestTaskDataBase] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TestTaskDataBase] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TestTaskDataBase] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TestTaskDataBase] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TestTaskDataBase] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'TestTaskDataBase', N'ON'
GO
ALTER DATABASE [TestTaskDataBase] SET QUERY_STORE = OFF
GO
USE [TestTaskDataBase]
GO
/****** Object:  Table [dbo].[City]    Script Date: 12/22/2023 4:05:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Lat] [float] NOT NULL,
	[Lon] [float] NOT NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manager]    Script Date: 12/22/2023 4:05:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manager](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](150) NOT NULL,
	[Salary] [float] NOT NULL,
	[Age] [int] NOT NULL,
	[PhoneNumber] [nvarchar](15) NULL,
 CONSTRAINT [PK_Manager] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 12/22/2023 4:05:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Cost] [float] NOT NULL,
	[Volume] [int] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sell]    Script Date: 12/22/2023 4:05:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sell](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ManagerId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Count] [int] NOT NULL,
	[Sum] [float] NOT NULL,
	[Date] [datetime] NOT NULL,
 CONSTRAINT [PK_Sell] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[City] ON 

INSERT [dbo].[City] ([Id], [Name], [Lat], [Lon]) VALUES (1, N'Kazan', 55.796, 49.108)
INSERT [dbo].[City] ([Id], [Name], [Lat], [Lon]) VALUES (2, N'Астана', 71.43, 51.128)
INSERT [dbo].[City] ([Id], [Name], [Lat], [Lon]) VALUES (3, N'Белгород', 50.597, 36.588)
INSERT [dbo].[City] ([Id], [Name], [Lat], [Lon]) VALUES (4, N'Ижевск', 56.852, 53.211)
SET IDENTITY_INSERT [dbo].[City] OFF
GO
SET IDENTITY_INSERT [dbo].[Manager] ON 

INSERT [dbo].[Manager] ([Id], [FullName], [Salary], [Age], [PhoneNumber]) VALUES (1, N'Яшонков Арсений Михайлович', 25, 20, N'+79873652362')
INSERT [dbo].[Manager] ([Id], [FullName], [Salary], [Age], [PhoneNumber]) VALUES (2, N'Иванов Рафаэль Станиславович', 30, 25, NULL)
INSERT [dbo].[Manager] ([Id], [FullName], [Salary], [Age], [PhoneNumber]) VALUES (3, N'Абкаров Павел Сергеевич', 30, 22, N'+79871363234')
INSERT [dbo].[Manager] ([Id], [FullName], [Salary], [Age], [PhoneNumber]) VALUES (4, N'Гаврилов Александр Сергеевич', 30, 20, NULL)
SET IDENTITY_INSERT [dbo].[Manager] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [Name], [Cost], [Volume]) VALUES (1, N'Фанера 1', 1000, 20)
INSERT [dbo].[Product] ([Id], [Name], [Cost], [Volume]) VALUES (2, N'Фанера 2', 2000, 30)
INSERT [dbo].[Product] ([Id], [Name], [Cost], [Volume]) VALUES (3, N'Фанера 3', 3000, 40)
INSERT [dbo].[Product] ([Id], [Name], [Cost], [Volume]) VALUES (4, N'ОСБ', 5000, 550)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Sell] ON 

INSERT [dbo].[Sell] ([Id], [ManagerId], [ProductId], [Count], [Sum], [Date]) VALUES (1, 1, 1, 2, 4000, CAST(N'2023-12-12T11:11:00.000' AS DateTime))
INSERT [dbo].[Sell] ([Id], [ManagerId], [ProductId], [Count], [Sum], [Date]) VALUES (2, 1, 2, 2, 6000, CAST(N'2023-12-12T12:12:00.000' AS DateTime))
INSERT [dbo].[Sell] ([Id], [ManagerId], [ProductId], [Count], [Sum], [Date]) VALUES (5, 2, 3, 3, 9000, CAST(N'2023-12-12T12:12:00.000' AS DateTime))
INSERT [dbo].[Sell] ([Id], [ManagerId], [ProductId], [Count], [Sum], [Date]) VALUES (6, 3, 1, 3, 6000, CAST(N'2021-06-20T12:12:00.000' AS DateTime))
INSERT [dbo].[Sell] ([Id], [ManagerId], [ProductId], [Count], [Sum], [Date]) VALUES (7, 3, 2, 5, 10000, CAST(N'2021-06-20T12:12:00.000' AS DateTime))
INSERT [dbo].[Sell] ([Id], [ManagerId], [ProductId], [Count], [Sum], [Date]) VALUES (8, 2, 3, 1, 5000, CAST(N'2021-06-20T12:12:00.000' AS DateTime))
INSERT [dbo].[Sell] ([Id], [ManagerId], [ProductId], [Count], [Sum], [Date]) VALUES (9, 1, 4, 1, 5000, CAST(N'2021-06-20T12:12:00.000' AS DateTime))
INSERT [dbo].[Sell] ([Id], [ManagerId], [ProductId], [Count], [Sum], [Date]) VALUES (10, 2, 4, 1, 5000, CAST(N'2023-06-20T12:12:00.000' AS DateTime))
INSERT [dbo].[Sell] ([Id], [ManagerId], [ProductId], [Count], [Sum], [Date]) VALUES (11, 1, 4, 2, 10000, CAST(N'2023-06-20T12:12:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Sell] OFF
GO
ALTER TABLE [dbo].[Sell]  WITH CHECK ADD  CONSTRAINT [FK_Sell_Manager] FOREIGN KEY([ManagerId])
REFERENCES [dbo].[Manager] ([Id])
GO
ALTER TABLE [dbo].[Sell] CHECK CONSTRAINT [FK_Sell_Manager]
GO
ALTER TABLE [dbo].[Sell]  WITH CHECK ADD  CONSTRAINT [FK_Sell_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[Sell] CHECK CONSTRAINT [FK_Sell_Product]
GO
USE [master]
GO
ALTER DATABASE [TestTaskDataBase] SET  READ_WRITE 
GO
