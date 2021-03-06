USE [master]
GO
/****** Object:  Database [DuLieu]    Script Date: 24/06/2020 00:56:21 ******/
CREATE DATABASE [DuLieu]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DuLieu', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\DuLieu.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DuLieu_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\DuLieu_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [DuLieu] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DuLieu].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DuLieu] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DuLieu] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DuLieu] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DuLieu] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DuLieu] SET ARITHABORT OFF 
GO
ALTER DATABASE [DuLieu] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DuLieu] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DuLieu] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DuLieu] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DuLieu] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DuLieu] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DuLieu] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DuLieu] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DuLieu] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DuLieu] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DuLieu] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DuLieu] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DuLieu] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DuLieu] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DuLieu] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DuLieu] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DuLieu] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DuLieu] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DuLieu] SET  MULTI_USER 
GO
ALTER DATABASE [DuLieu] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DuLieu] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DuLieu] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DuLieu] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DuLieu] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DuLieu] SET QUERY_STORE = OFF
GO
USE [DuLieu]
GO
/****** Object:  Table [dbo].[tblCongViec]    Script Date: 24/06/2020 00:56:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCongViec](
	[MaCongViec] [varchar](50) NOT NULL,
	[TenCongViec] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblCongViec] PRIMARY KEY CLUSTERED 
(
	[MaCongViec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblNhanVien]    Script Date: 24/06/2020 00:56:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNhanVien](
	[MaNhanVien] [varchar](50) NOT NULL,
	[TenNhanVien] [nvarchar](50) NULL,
	[NgaySinh] [datetime] NULL,
	[GioiTinh] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[DienThoai] [varchar](50) NULL,
	[CongViec] [varchar](50) NULL,
 CONSTRAINT [PK_tblNhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tblCongViec] ([MaCongViec], [TenCongViec]) VALUES (N'BH', N'Bán Hàng')
INSERT [dbo].[tblCongViec] ([MaCongViec], [TenCongViec]) VALUES (N'KT', N'Kế Toán')
INSERT [dbo].[tblCongViec] ([MaCongViec], [TenCongViec]) VALUES (N'MK', N'Maketing')
INSERT [dbo].[tblCongViec] ([MaCongViec], [TenCongViec]) VALUES (N'TN', N'Thất Nghiệp')
INSERT [dbo].[tblNhanVien] ([MaNhanVien], [TenNhanVien], [NgaySinh], [GioiTinh], [DiaChi], [DienThoai], [CongViec]) VALUES (N'N01', N'Ngọn Cỏ Ven Đường', CAST(N'1999-02-15T00:00:00.000' AS DateTime), N'Nam', NULL, NULL, N'TN')
INSERT [dbo].[tblNhanVien] ([MaNhanVien], [TenNhanVien], [NgaySinh], [GioiTinh], [DiaChi], [DienThoai], [CongViec]) VALUES (N'N02', N'Alo ALo 1234', CAST(N'1999-03-15T00:00:00.000' AS DateTime), N'Nữ', NULL, NULL, N'BH')
INSERT [dbo].[tblNhanVien] ([MaNhanVien], [TenNhanVien], [NgaySinh], [GioiTinh], [DiaChi], [DienThoai], [CongViec]) VALUES (N'N03', N'Trần Thanh Hải', CAST(N'1999-01-10T00:00:00.000' AS DateTime), N'Nam', NULL, NULL, N'MK')
INSERT [dbo].[tblNhanVien] ([MaNhanVien], [TenNhanVien], [NgaySinh], [GioiTinh], [DiaChi], [DienThoai], [CongViec]) VALUES (N'N04', N'Phạm Nhật Nam', CAST(N'1999-02-15T00:00:00.000' AS DateTime), N'Nam', NULL, NULL, N'TN')
ALTER TABLE [dbo].[tblNhanVien]  WITH CHECK ADD  CONSTRAINT [FK_tblNhanVien_tblCongViec] FOREIGN KEY([CongViec])
REFERENCES [dbo].[tblCongViec] ([MaCongViec])
GO
ALTER TABLE [dbo].[tblNhanVien] CHECK CONSTRAINT [FK_tblNhanVien_tblCongViec]
GO
USE [master]
GO
ALTER DATABASE [DuLieu] SET  READ_WRITE 
GO
