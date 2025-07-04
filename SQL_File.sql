USE [master]
GO
/****** Object:  Database [FaceAttendence]    Script Date: 26-05-2025 17:49:37 ******/
CREATE DATABASE [FaceAttendence]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FaceAttendence', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\FaceAttendence.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'FaceAttendence_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\FaceAttendence_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [FaceAttendence] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FaceAttendence].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FaceAttendence] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FaceAttendence] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FaceAttendence] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FaceAttendence] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FaceAttendence] SET ARITHABORT OFF 
GO
ALTER DATABASE [FaceAttendence] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [FaceAttendence] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FaceAttendence] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FaceAttendence] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FaceAttendence] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FaceAttendence] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FaceAttendence] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FaceAttendence] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FaceAttendence] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FaceAttendence] SET  ENABLE_BROKER 
GO
ALTER DATABASE [FaceAttendence] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FaceAttendence] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FaceAttendence] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FaceAttendence] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FaceAttendence] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FaceAttendence] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FaceAttendence] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FaceAttendence] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [FaceAttendence] SET  MULTI_USER 
GO
ALTER DATABASE [FaceAttendence] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FaceAttendence] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FaceAttendence] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FaceAttendence] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [FaceAttendence] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [FaceAttendence] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [FaceAttendence] SET QUERY_STORE = ON
GO
ALTER DATABASE [FaceAttendence] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [FaceAttendence]
GO
/****** Object:  Table [dbo].[ATable]    Script Date: 26-05-2025 17:49:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ATable](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[P1] [int] NULL,
	[P2] [int] NULL,
	[P3] [int] NULL,
	[P4] [int] NULL,
	[P5] [int] NULL,
	[P6] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoomTable]    Script Date: 26-05-2025 17:49:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoomTable](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoomId] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TeacherTable]    Script Date: 26-05-2025 17:49:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TeacherTable](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TName] [varchar](50) NULL,
	[SName] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ATable] ON 

INSERT [dbo].[ATable] ([Id], [P1], [P2], [P3], [P4], [P5], [P6]) VALUES (1, 1, 2, 5, 3, 0, 1)
INSERT [dbo].[ATable] ([Id], [P1], [P2], [P3], [P4], [P5], [P6]) VALUES (2, 3, 1, 2, 4, 5, 1)
INSERT [dbo].[ATable] ([Id], [P1], [P2], [P3], [P4], [P5], [P6]) VALUES (3, 5, 4, 2, 1, 4, 3)
INSERT [dbo].[ATable] ([Id], [P1], [P2], [P3], [P4], [P5], [P6]) VALUES (4, 4, 1, 5, 2, 3, 1)
INSERT [dbo].[ATable] ([Id], [P1], [P2], [P3], [P4], [P5], [P6]) VALUES (5, 5, 1, 4, 3, 5, 2)
SET IDENTITY_INSERT [dbo].[ATable] OFF
GO
SET IDENTITY_INSERT [dbo].[RoomTable] ON 

INSERT [dbo].[RoomTable] ([Id], [RoomId]) VALUES (1, N'c1')
INSERT [dbo].[RoomTable] ([Id], [RoomId]) VALUES (2, N'c2')
INSERT [dbo].[RoomTable] ([Id], [RoomId]) VALUES (3, N'c3')
SET IDENTITY_INSERT [dbo].[RoomTable] OFF
GO
SET IDENTITY_INSERT [dbo].[TeacherTable] ON 

INSERT [dbo].[TeacherTable] ([Id], [TName], [SName]) VALUES (1, N'sakshi', N'C Programming')
INSERT [dbo].[TeacherTable] ([Id], [TName], [SName]) VALUES (2, N'user2', N'Java')
INSERT [dbo].[TeacherTable] ([Id], [TName], [SName]) VALUES (3, N'Sunita', N'DSA')
INSERT [dbo].[TeacherTable] ([Id], [TName], [SName]) VALUES (4, N'Babita', N'HTML (H101)')
INSERT [dbo].[TeacherTable] ([Id], [TName], [SName]) VALUES (5, N'Vijay', N'Maths')
SET IDENTITY_INSERT [dbo].[TeacherTable] OFF
GO
USE [master]
GO
ALTER DATABASE [FaceAttendence] SET  READ_WRITE 
GO
