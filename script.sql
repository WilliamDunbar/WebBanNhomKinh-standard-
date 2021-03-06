USE [master]
GO
/****** Object:  Database [WebNhomKinh]    Script Date: 25/10/2021 8:22:27 SA ******/
CREATE DATABASE [WebNhomKinh]

ALTER DATABASE [WebNhomKinh] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WebNhomKinh].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WebNhomKinh] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WebNhomKinh] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WebNhomKinh] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WebNhomKinh] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WebNhomKinh] SET ARITHABORT OFF 
GO
ALTER DATABASE [WebNhomKinh] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WebNhomKinh] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WebNhomKinh] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WebNhomKinh] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WebNhomKinh] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WebNhomKinh] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WebNhomKinh] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WebNhomKinh] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WebNhomKinh] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WebNhomKinh] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WebNhomKinh] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WebNhomKinh] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WebNhomKinh] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WebNhomKinh] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WebNhomKinh] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WebNhomKinh] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WebNhomKinh] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WebNhomKinh] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WebNhomKinh] SET  MULTI_USER 
GO
ALTER DATABASE [WebNhomKinh] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WebNhomKinh] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WebNhomKinh] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WebNhomKinh] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [WebNhomKinh] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [WebNhomKinh] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [WebNhomKinh] SET QUERY_STORE = OFF
GO
USE [WebNhomKinh]
GO
/****** Object:  Table [dbo].[CaiDats]    Script Date: 25/10/2021 8:22:27 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CaiDats](
	[Id] [int] NOT NULL,
	[Logo] [nvarchar](max) NULL,
	[GioLamViec] [nvarchar](50) NULL,
	[GiaoHang] [nvarchar](50) NULL,
	[HoanTien] [nvarchar](50) NULL,
	[SDTLienHe] [nvarchar](50) NULL,
	[EmailLienHe] [nvarchar](50) NULL,
	[FaceBook] [nvarchar](max) NULL,
	[GooglePlus] [nvarchar](max) NULL,
	[Twiter] [nvarchar](max) NULL,
	[YouTube] [nvarchar](max) NULL,
	[Instargram] [nvarchar](max) NULL,
	[GoogleMap] [nvarchar](max) NULL,
	[MatKhauMail] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHoaDonNhaps]    Script Date: 25/10/2021 8:22:27 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDonNhaps](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaHoaDon] [int] NULL,
	[MaSanPham] [int] NULL,
	[SoLuong] [int] NULL,
	[DonViTinh] [nvarchar](50) NULL,
	[GiaNhap] [decimal](18, 0) NULL,
	[TongTien] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHoaDons]    Script Date: 25/10/2021 8:22:27 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDons](
	[MaChiTietHoaDon] [int] IDENTITY(1,1) NOT NULL,
	[MaHoaDon] [int] NULL,
	[MaSanPham] [int] NULL,
	[SoLuong] [int] NULL,
	[TongGia] [decimal](18, 0) NULL,
 CONSTRAINT [PK_DetailBill] PRIMARY KEY CLUSTERED 
(
	[MaChiTietHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietSanPhams]    Script Date: 25/10/2021 8:22:27 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietSanPhams](
	[MaChiTietSanPham] [int] IDENTITY(1,1) NOT NULL,
	[MaSanPham] [int] NULL,
	[MaNhaSanXuat] [int] NULL,
	[MoTa] [nvarchar](350) NOT NULL,
	[ChiTiet] [nvarchar](max) NULL,
 CONSTRAINT [PK_DetailProducts] PRIMARY KEY CLUSTERED 
(
	[MaChiTietSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietTaiKhoans]    Script Date: 25/10/2021 8:22:27 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietTaiKhoans](
	[MaChitietTaiKhoan] [int] IDENTITY(1,1) NOT NULL,
	[MaTaiKhoan] [int] NULL,
	[HoTen] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](250) NULL,
	[SoDienThoai] [nvarchar](11) NULL,
	[AnhDaiDien] [nvarchar](500) NULL,
 CONSTRAINT [PK_InformationAccounts] PRIMARY KEY CLUSTERED 
(
	[MaChitietTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChuyenMucs]    Script Date: 25/10/2021 8:22:27 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuyenMucs](
	[MaChuyenMuc] [int] IDENTITY(1,1) NOT NULL,
	[MaChuyenMucCha] [int] NULL,
	[TenChuyenMuc] [nvarchar](50) NULL,
	[DacBiet] [bit] NOT NULL,
	[NoiDung] [nvarchar](max) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[MaChuyenMuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CongTrinhNoiBats]    Script Date: 25/10/2021 8:22:27 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CongTrinhNoiBats](
	[MaCT] [int] IDENTITY(1,1) NOT NULL,
	[TenCT] [nvarchar](250) NULL,
	[AnhDaiDien] [nvarchar](150) NULL,
	[DiaChi] [nvarchar](500) NULL,
	[Chitiet] [nvarchar](max) NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_CongTrinhNoiBats] PRIMARY KEY CLUSTERED 
(
	[MaCT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DKBanTins]    Script Date: 25/10/2021 8:22:27 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DKBanTins](
	[Id] [int] NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HangSanXuats]    Script Date: 25/10/2021 8:22:27 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HangSanXuats](
	[MaHang] [int] IDENTITY(1,1) NOT NULL,
	[TenHang] [nvarchar](500) NULL,
	[LinkWeb] [nvarchar](max) NULL,
	[AnhDaiDien] [nvarchar](max) NULL,
 CONSTRAINT [PK__HangSanX__19C0DB1DCD8CB3B8] PRIMARY KEY CLUSTERED 
(
	[MaHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDonNhaps]    Script Date: 25/10/2021 8:22:27 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonNhaps](
	[MaHoaDon] [int] IDENTITY(1,1) NOT NULL,
	[MaNhaPhanPhoi] [int] NULL,
	[NgayTao] [date] NULL,
	[KieuThanhToan] [nvarchar](max) NULL,
	[MaTaiKhoan] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDons]    Script Date: 25/10/2021 8:22:27 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDons](
	[MaHoaDon] [int] IDENTITY(1,1) NOT NULL,
	[TrangThai] [bit] NULL,
	[NgayTao] [datetime] NULL,
	[NgayDuyet] [datetime] NULL,
	[TongGia] [decimal](18, 0) NULL,
	[TenKH] [nvarchar](50) NULL,
	[GioiTinh] [bit] NOT NULL,
	[Diachi] [nvarchar](250) NULL,
	[Email] [nvarchar](50) NULL,
	[SDT] [nvarchar](50) NULL,
	[DiaChiGiaoHang] [nvarchar](350) NULL,
	[ThoiGianGiaoHang] [datetime] NULL,
 CONSTRAINT [PK_Bills] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHangs]    Script Date: 25/10/2021 8:22:27 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHangs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[GioiTinh] [bit] NOT NULL,
	[DiaChi] [nvarchar](250) NULL,
	[SDT] [nvarchar](50) NULL,
	[Email] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiTaiKhoans]    Script Date: 25/10/2021 8:22:27 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiTaiKhoans](
	[MaLoai] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](50) NULL,
	[MoTa] [nvarchar](250) NULL,
 CONSTRAINT [PK_TypeAccounts] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaPhanPhois]    Script Date: 25/10/2021 8:22:27 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaPhanPhois](
	[MaNhaPhanPhoi] [int] IDENTITY(1,1) NOT NULL,
	[TenNhaPhanPhoi] [nvarchar](250) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[SoDienThoai] [nvarchar](50) NULL,
	[Fax] [nvarchar](50) NULL,
	[MoTa] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNhaPhanPhoi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuangCaos]    Script Date: 25/10/2021 8:22:27 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuangCaos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AnhDaiDien] [nvarchar](max) NULL,
	[LinkQuangCao] [nvarchar](max) NULL,
	[MoTa] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPhams]    Script Date: 25/10/2021 8:22:27 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPhams](
	[MaSanPham] [int] IDENTITY(1,1) NOT NULL,
	[MaChuyenMuc] [int] NULL,
	[TenSanPham] [nvarchar](150) NULL,
	[AnhDaiDien] [nvarchar](350) NULL,
	[Gia] [decimal](18, 0) NULL,
	[GiaGiam] [decimal](18, 0) NULL,
	[SoLuong] [int] NULL,
	[TrangThai] [bit] NULL,
	[MoTa] [ntext] NULL,
	[ChiTiet] [ntext] NULL,
	[LuotXem] [int] NULL,
	[DacBiet] [bit] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPhams_NhaPhanPhois]    Script Date: 25/10/2021 8:22:27 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPhams_NhaPhanPhois](
	[MaSanPham] [int] NOT NULL,
	[MaNhaPhanPhoi] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNhaPhanPhoi] ASC,
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slide]    Script Date: 25/10/2021 8:22:27 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slide](
	[MaAnh] [int] IDENTITY(1,1) NOT NULL,
	[TieuDe] [nvarchar](250) NULL,
	[TieuDe1] [nvarchar](250) NULL,
	[TieuDe2] [nvarchar](250) NULL,
	[MoTa1] [nvarchar](250) NULL,
	[MoTa2] [nvarchar](250) NULL,
	[MoTa3] [nvarchar](250) NULL,
	[MoTa4] [nvarchar](250) NULL,
	[LinkAnh] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaAnh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoans]    Script Date: 25/10/2021 8:22:27 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoans](
	[MaTaiKhoan] [int] IDENTITY(1,1) NOT NULL,
	[LoaiTaiKhoan] [int] NULL,
	[TenTaiKhoan] [nvarchar](50) NULL,
	[MatKhau] [nvarchar](50) NULL,
	[Email] [nvarchar](150) NULL,
 CONSTRAINT [PK_Accounts] PRIMARY KEY CLUSTERED 
(
	[MaTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TinTucs]    Script Date: 25/10/2021 8:22:27 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinTucs](
	[MaTinTuc] [int] IDENTITY(1,1) NOT NULL,
	[TieuDe] [nvarchar](max) NULL,
	[AnhDaiDien] [nvarchar](max) NULL,
	[MoTa] [nvarchar](max) NULL,
	[NgayTao] [datetime] NULL,
	[ChiTiet] [nvarchar](max) NULL,
	[LuotXem] [int] NULL,
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[MaTinTuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[CaiDats] ([Id], [Logo], [GioLamViec], [GiaoHang], [HoanTien], [SDTLienHe], [EmailLienHe], [FaceBook], [GooglePlus], [Twiter], [YouTube], [Instargram], [GoogleMap], [MatKhauMail]) VALUES (1, N'/Images/LOGO.jpg', N'T2- CN: 8.00 - 18.00', N'miễn phí với hóa đơn trên 4.000.000 VNĐ', N'100%30 ngày kể từ khi giao hàng', N'(0221)353 8886', N'cuathienphu@gmail.com', N'#', N'#', N'#', N'#', N'#', N'#', N'123456')
GO
SET IDENTITY_INSERT [dbo].[ChiTietHoaDonNhaps] ON 

INSERT [dbo].[ChiTietHoaDonNhaps] ([Id], [MaHoaDon], [MaSanPham], [SoLuong], [DonViTinh], [GiaNhap], [TongTien]) VALUES (1, 1, 47, 20, N'đồng', CAST(900000 AS Decimal(18, 0)), CAST(18000000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDonNhaps] ([Id], [MaHoaDon], [MaSanPham], [SoLuong], [DonViTinh], [GiaNhap], [TongTien]) VALUES (2, 2, 50, 50, N'đồng', CAST(880000 AS Decimal(18, 0)), CAST(44000000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDonNhaps] ([Id], [MaHoaDon], [MaSanPham], [SoLuong], [DonViTinh], [GiaNhap], [TongTien]) VALUES (3, 3, 52, 50, N'đồng', CAST(2000000 AS Decimal(18, 0)), CAST(100000000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDonNhaps] ([Id], [MaHoaDon], [MaSanPham], [SoLuong], [DonViTinh], [GiaNhap], [TongTien]) VALUES (4, 4, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[ChiTietHoaDonNhaps] OFF
GO
SET IDENTITY_INSERT [dbo].[ChiTietHoaDons] ON 

INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia]) VALUES (4, 3, 75, 1, CAST(2600000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia]) VALUES (5, 3, 74, 1, CAST(2980000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia]) VALUES (6, 3, 71, 1, CAST(2480000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia]) VALUES (7, 6, 47, 2, CAST(2100000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia]) VALUES (8, 6, 47, 2, CAST(2100000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia]) VALUES (9, 7, 84, 1, CAST(185000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia]) VALUES (10, 9, 84, 1, CAST(185000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia]) VALUES (11, 7, 85, 2, CAST(700000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia]) VALUES (12, 8, 86, 2, CAST(490000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia]) VALUES (13, 8, 1151, 1, CAST(245000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia]) VALUES (14, 9, 1170, 2, CAST(500000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia]) VALUES (15, 9, 1180, 1, CAST(3000000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia]) VALUES (16, 9, 1171, 2, CAST(700000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia]) VALUES (17, 5, 47, 2, CAST(2100000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia]) VALUES (18, 5, 1170, 2, CAST(500000 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[ChiTietHoaDons] OFF
GO
SET IDENTITY_INSERT [dbo].[ChiTietSanPhams] ON 

INSERT [dbo].[ChiTietSanPhams] ([MaChiTietSanPham], [MaSanPham], [MaNhaSanXuat], [MoTa], [ChiTiet]) VALUES (2033, 1167, 1, N'Hàng cao cấp . Inox dày đúng chuẩn,Đường nét sắc sảo,,Sáng bóngSản phẩm chính hãng cty nên có tiêu chuẩn tốt', NULL)
INSERT [dbo].[ChiTietSanPhams] ([MaChiTietSanPham], [MaSanPham], [MaNhaSanXuat], [MoTa], [ChiTiet]) VALUES (2034, 1166, 2, N'Cửa nhựa ABS giả gỗ được cấu tạo từ 5 lớp vật liệu gồm: Nhựa ABS, DeCo-Sheet, lớp gỗ PVC, gỗ cứng LVL và Honey – Comb…', NULL)
INSERT [dbo].[ChiTietSanPhams] ([MaChiTietSanPham], [MaSanPham], [MaNhaSanXuat], [MoTa], [ChiTiet]) VALUES (2035, 1165, 1, N'Cửa nhựa ABS giả gỗ được cấu tạo từ 5 lớp vật liệu gồm: Nhựa ABS, DeCo-Sheet, lớp gỗ PVC, gỗ cứng LVL và Honey – Comb…', NULL)
INSERT [dbo].[ChiTietSanPhams] ([MaChiTietSanPham], [MaSanPham], [MaNhaSanXuat], [MoTa], [ChiTiet]) VALUES (2036, 1164, 4, N'Cửa nhựa ABS giả gỗ được cấu tạo từ 5 lớp vật liệu gồm: Nhựa ABS, DeCo-Sheet, lớp gỗ PVC, gỗ cứng LVL và Honey – Comb…', NULL)
INSERT [dbo].[ChiTietSanPhams] ([MaChiTietSanPham], [MaSanPham], [MaNhaSanXuat], [MoTa], [ChiTiet]) VALUES (2037, 1163, 1, N'Cửa nhựa ABS giả gỗ được cấu tạo từ 5 lớp vật liệu gồm: Nhựa ABS, DeCo-Sheet, lớp gỗ PVC, gỗ cứng LVL và Honey – Comb…', NULL)
INSERT [dbo].[ChiTietSanPhams] ([MaChiTietSanPham], [MaSanPham], [MaNhaSanXuat], [MoTa], [ChiTiet]) VALUES (2039, 1199, 16, N'Thang máy là một trong những phương tiện không thể thiếu trong đời sống hiện đại ngày nay. Và nó không chỉ còn xuất hiện ở các trung tâm thương mại, khách sạn mà ngay trong chính ngôi nhà của chúng ta cũng lắp thang máy gia đình. ', NULL)
SET IDENTITY_INSERT [dbo].[ChiTietSanPhams] OFF
GO
SET IDENTITY_INSERT [dbo].[ChiTietTaiKhoans] ON 

INSERT [dbo].[ChiTietTaiKhoans] ([MaChitietTaiKhoan], [MaTaiKhoan], [HoTen], [DiaChi], [SoDienThoai], [AnhDaiDien]) VALUES (1, 1, N'Đỗ Văn Tùng', N'Yên Mỹ-Hưng Yên', N'0973654074', N'/Images/Avatars/logo.png')
INSERT [dbo].[ChiTietTaiKhoans] ([MaChitietTaiKhoan], [MaTaiKhoan], [HoTen], [DiaChi], [SoDienThoai], [AnhDaiDien]) VALUES (2, 2, N'Đỗ Mỹ Linh', N'Yên Mỹ-Hưng Yên', N'0973654074', N'/Images/Avatars/logo.png')
INSERT [dbo].[ChiTietTaiKhoans] ([MaChitietTaiKhoan], [MaTaiKhoan], [HoTen], [DiaChi], [SoDienThoai], [AnhDaiDien]) VALUES (4, 3, N'Đỗ Tiến Đạt', N'Yên Mỹ-Hưng Yên', N'0973654074', N'/Images/Avatars/logo.png')
SET IDENTITY_INSERT [dbo].[ChiTietTaiKhoans] OFF
GO
SET IDENTITY_INSERT [dbo].[ChuyenMucs] ON 

INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (1, NULL, N'CỬA CUỐN AUTSDOOR', 0, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (2, NULL, N'CỬA CUỐN BOSSDOOR', 0, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (3, NULL, N'CỬA KÍNH', 0, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (4, NULL, N'CẦU THANG, LAN CAN', 0, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (5, NULL, N'CỬA NHÔM KÍNH ', 0, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (6, NULL, N'CỬA NHỰA', 0, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (7, NULL, N'THANG MÁY', 0, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (8, NULL, N'PHỤ KIỆN', 0, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (9, NULL, N'DỊCH VỤ SỬA CHỮA', 0, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (10, 2, N'CỬA CUỐN SERI 2017', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (11, 2, N'CỬA CUỐN SIÊU TRƯỜNG', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (12, 2, N'CỬA CUỐN TRUYỀN THỐNG', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (13, 2, N'CỬA CUỐN TẤM LIỀN', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (20, 3, N'CỬA KÍNH CƯỜNG LỰC', 0, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (21, 3, N'CỬA KÍNH TỰ ĐỘNG', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (22, 5, N'CỬA SỔ NHÔM KÍNH', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (23, 3, N'VÁCH KÍNH CƯỜNG LỰC', 0, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (24, 3, N'CƯỜNG LỰC BỒN TẮM LÙA', 0, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (25, 3, N'CƯỜNG LỰC BỒN TẮM MỞ', 0, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (26, 4, N'CẦU THANG KÍNH', 0, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (27, 4, N'LAN CAN KÍNH', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (28, 5, N'CỬA NHÔM KÍNH THƯỜNG', 0, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (29, 5, N'CỬA NHÔM KÍNH VIỆT NHẬT', 0, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (30, 5, N'CỬA NHÔM SINGFA', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (31, 5, N'SỬA CỬA NHÔM KÍNH', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (32, 4, N'SỬA CẦU THANG, LAN CAN', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (33, 1, N'CỬA CUỐN TỐC ĐỘ CAO-HS SERIES', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (38, 8, N'PHỤ KIỆN MÔ TƠ CỬA CUỐN', 0, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (39, 8, N'PHỤ KIỆN BÁNH XE', 0, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (40, 8, N'PHỤ KIỆN TAY NẮM', 0, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (41, 8, N'PHỤ KIỆN KHÓA TRÒN', 0, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (42, 6, N'CỬA NHỰA LÕI THÉP', 0, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (43, 8, N'ĐIỀU KHIỂN CỬA CUỐN', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (44, 8, N'LƯU ĐIỆN CỬA CUỐN', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (45, 8, N'BẢN LỀ', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (47, 8, N'BỘ PHỤ KIỆN CỬA TỰ ĐỘNG', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (48, 8, N'DỊCH VỤ KHÁC...', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (49, 1, N'CỬA CUỐN KHE THOÁNG - ALUROLL', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (50, 1, N'CỬA CUỐN KHỚP THOÁNG', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (51, 1, N'CỬA CUỐN TẤM LIỀN - AUSTROLL', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (52, 1, N'CỬA CUỐN TRONG SUỐT - AUSTVISION', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (53, 1, N'CỬA CUỐN TRƯỢT TRẦN OVERHEAD', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (54, 1, N'CỬA CUỐN CHỐNG CHÁY - FS SERIES', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (1037, NULL, N'LIÊN HỆ', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (1038, NULL, N'TÀI KHOẢN CỦA TÔI', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (1039, NULL, N'THANH TOÁN & GIAO HÀNG', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (1040, NULL, N'DỊCH VỤ KHÁCH HÀNG', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (1041, 1037, N'cuathienphu@gmail.com', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (1042, 1037, N'(0321)353 8886', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (1043, 1037, N'Address - 1234 - Hưng Yên', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (1044, 1038, N'Sitemap', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (1045, 1038, N'Chính sách riêng tư', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (1046, 1038, N'Tài khoản', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (1047, 1038, N'Tìm kiếm nâng cao', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (1048, 1038, N'Liên hệ', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (1049, 1039, N'Điều khoản sử dụng', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (1050, 1039, N'Phương thức thanh toán', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (1051, 1039, N'Hướng dẫn giao hàng', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (1052, 1039, N'Địa điểm giao hàng', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (1053, 1039, N'Thời gian dự kiến giao hàng', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (1054, 1040, N'Chính sách giao hàng', 1, N'<h2>CH&Iacute;NH S&Aacute;CH GIAO - NHẬN H&Agrave;NG KHI MUA H&Agrave;NG TẠI CỬA THIÊN PHÚ 

<h3>QUY ĐỊNH CHUNG VỀ GIAO H&Agrave;NG</h3>

<p>- C&Ocirc;NG TY CỔ PHẦN THỂ THAO T&Agrave;I PH&Aacute;T thực hiện dịch vụ b&aacute;n h&agrave;ng &amp; thu tiền tại nh&agrave; tr&ecirc;n to&agrave;n l&atilde;nh thổ Việt Nam.</p>

<p>- Qu&yacute; kh&aacute;ch vui l&ograve;ng<strong>&nbsp;kiểm tra thật kỹ h&agrave;ng ho&aacute;</strong>, đối chiếu sản phẩm với chứng từ, phiếu bảo h&agrave;nh&nbsp;(nếu c&oacute;)&nbsp;trước khi nhận. Trường hợp Qu&yacute; kh&aacute;ch nhờ người th&acirc;n nhận h&agrave;ng, th&igrave; vẫn cần kiểm tra h&agrave;ng kỹ trước khi nhận. Sau khi đ&atilde; giao h&agrave;ng th&agrave;nh c&ocirc;ng, THỂ THAO T&Agrave;I PH&Aacute;T chỉ chịu tr&aacute;ch nhiệm nếu xảy ra lỗi kỹ thuật do nh&agrave; sản xuất&nbsp;(theo quy định&nbsp;Đổi/Trả h&agrave;ng&nbsp;v&agrave; Quy định&nbsp;Bảo h&agrave;nh), mọi trường hợp kh&aacute;c sẽ kh&ocirc;ng thuộc tr&aacute;ch nhiệm của ch&uacute;ng t&ocirc;i.</p>

<p>- Qu&yacute; kh&aacute;ch lưu &yacute;:<strong>&nbsp;Tất cả c&aacute;c sản phẩm THỂ THAO T&Agrave;I PH&Aacute;T b&aacute;n ra đều c&oacute; đầy đủ chứng từ như</strong>: H&oacute;a đơn b&aacute;n h&agrave;ng; hoặc&nbsp;(v&agrave;)&nbsp;Phiếu giao h&agrave;ng; hoặc&nbsp;(v&agrave;)&nbsp;Bi&ecirc;n bản giao h&agrave;ng; hoặc&nbsp;(v&agrave;)&nbsp;H&oacute;a đơn t&agrave;i ch&iacute;nh&nbsp;(nếu kh&aacute;ch h&agrave;ng y&ecirc;u cầu). Do vậy kh&aacute;ch h&agrave;ng c&oacute; quyền từ chối nhận h&agrave;ng khi kh&ocirc;ng c&oacute; 1 trong 4 loại chứng từ tr&ecirc;n, việc n&agrave;y nhằm đảm bảo chất lượng sản phẩm, mua đ&uacute;ng h&agrave;ng của THỂ THAO T&Agrave;I PH&Aacute;T, đồng thời đảm bảo quyền lợi của Qu&yacute; kh&aacute;ch trong việc Đổi/Trả h&agrave;ng.</p>

<p>- Thời gian giao h&agrave;ng c&oacute; thể chậm hơn dự kiến v&igrave; một số l&yacute; do như: Địa chỉ kh&aacute;ch h&agrave;ng kh&ocirc;ng đ&uacute;ng, Kh&aacute;ch h&agrave;ng kh&ocirc;ng c&oacute; ở nh&agrave;, Nh&acirc;n vi&ecirc;n giao h&agrave;ng kh&ocirc;ng li&ecirc;n hệ được với kh&aacute;ch h&agrave;ng, thi&ecirc;n tai, hỏa hoạn,... Nếu v&igrave; l&yacute; do của THỂ THAO T&Agrave;I PH&Aacute;T, ch&uacute;ng t&ocirc;i sẽ li&ecirc;n hệ với Qu&yacute; kh&aacute;ch để sắp xếp lại thời gian giao h&agrave;ng sau.</p>

<p>- Trường hợp đ&atilde; qu&aacute; số thời gian dự kiến m&agrave; kh&aacute;ch h&agrave;ng chưa nhận được h&agrave;ng, vui l&ograve;ng phản hồi lại để ch&uacute;ng t&ocirc;i khắc phục nhanh nhất. Trong thời gian chờ h&agrave;ng nếu Qu&yacute; kh&aacute;ch muốn thay đổi đơn h&agrave;ng (Thay đổi sản phẩm, Kh&ocirc;ng muốn nhận h&agrave;ng nữa,...) m&agrave; b&ecirc;n dịch vụ chưa ph&aacute;t, kh&aacute;ch h&agrave;ng vui l&ograve;ng th&ocirc;ng b&aacute;o lại cho ch&uacute;ng t&ocirc;i để ch&uacute;ng t&ocirc;i giải quyết với b&ecirc;n dịch vụ chuyển ph&aacute;t.</p>

<p>Hiện ch&uacute;ng t&ocirc;i đang c&oacute; c&aacute;c h&igrave;nh thức giao h&agrave;ng như sau:</p>

<h3>1. Phạm vi &aacute;p dụng</h3>

<p><strong>-&nbsp;</strong><strong>Đối tượng &aacute;p dụng:</strong>&nbsp;Tất cả c&aacute;c kh&aacute;ch h&agrave;ng mua sản phẩm tại&nbsp;<strong>HỆ THỐNG SI&Ecirc;U THỊ THỂ THAO T&Agrave;I PH&Aacute;T (tại tất cả chi nh&aacute;nh T&agrave;i Ph&aacute;t tr&ecirc;n to&agrave;n quốc)</strong></p>

<p>&nbsp;</p>

<p><strong>-&nbsp;Khu vực &aacute;p dụng:&nbsp;</strong>Giao nhận&nbsp;MIỄN PH&Iacute;&nbsp;c&aacute;c quận nội th&agrave;nh th&agrave;nh phố H&agrave; Nội, huyện Từ Li&ecirc;m, c&aacute;c quận nội th&agrave;nh th&agrave;nh phố Hồ Ch&iacute; Minh.</p>

<h3>2. Nhận h&agrave;ng trực tiếp tại Thể Thao T&agrave;i Ph&aacute;t</h3>

<p>- Với những kh&aacute;ch h&agrave;ng đến mua h&agrave;ng tại c&ocirc;ng ty v&agrave; chi nh&aacute;nh của C&ocirc;ng ty cổ phần thể thao T&agrave;i Ph&aacute;t, Qu&yacute; kh&aacute;ch sẽ nhận h&agrave;ng trực tiếp tại cửa h&agrave;ng của c&ocirc;ng ty v&agrave; c&aacute;c chi nh&aacute;nh.</p>

<p>- Qu&yacute; kh&aacute;ch vui l&ograve;ng kiểm tra thật kỹ h&agrave;ng ho&aacute;, đối chiếu sản phẩm với chứng từ, phiếu bảo h&agrave;nh (nếu c&oacute;) trước khi nhận.</p>

<p>- Qu&yacute; kh&aacute;ch sẽ được nh&acirc;n vi&ecirc;n b&aacute;n h&agrave;ng cung cấp đầy đủ chứng từ H&oacute;a đơn b&aacute;n h&agrave;ng; hoặc&nbsp;(v&agrave;)&nbsp;H&oacute;a đơn t&agrave;i ch&iacute;nh&nbsp;(nếu kh&aacute;ch h&agrave;ng y&ecirc;u cầu). Qu&yacute; kh&aacute;ch c&oacute; quyền y&ecirc;u cầu nh&acirc;n vi&ecirc;n b&aacute;n h&agrave;ng cung cấp chứng từ nếu chưa cung cấp kịp thời.</p>

<h3>3. Nh&acirc;n vi&ecirc;n Thể Thao T&agrave;i Ph&aacute;t giao h&agrave;ng tại nh&agrave; kh&aacute;ch h&agrave;ng</h3>

<p>- Với những kh&aacute;ch h&agrave;ng thuộc khu vực<strong>&nbsp;nội th&agrave;nh Tp. H&agrave; Nội</strong>&nbsp;v&agrave;&nbsp;<strong>Tp. Hồ Ch&iacute; Minh</strong>, nh&acirc;n vi&ecirc;n Thể Thao T&agrave;i Ph&aacute;t sẽ giao h&agrave;ng tại nh&agrave; Qu&yacute; kh&aacute;ch&nbsp;(nếu c&oacute; y&ecirc;u cầu).</p>

<p>- Một số trường hợp kh&aacute;ch h&agrave;ng đặt mua sản phẩm<strong>&nbsp;</strong>cần lắp đặt v&agrave; gi&aacute; trị lớn v&agrave; c&oacute; địa chỉ ở c&aacute;c tỉnh l&acirc;n cận xa Tp. H&agrave; Nội v&agrave; Tp. Hồ Ch&iacute; Minh,&nbsp;nh&acirc;n vi&ecirc;n Thể Thao T&agrave;i Ph&aacute;t sẽ giao h&agrave;ng tại nh&agrave; Qu&yacute; kh&aacute;ch&nbsp;(nếu c&oacute; y&ecirc;u cầu).</p>

<p>- Th&ocirc;ng thường kh&aacute;ch h&agrave;ng đặt h&agrave;ng trong ng&agrave;y th&igrave; sẽ nhận được h&agrave;ng trong c&ugrave;ng ng&agrave;y, nếu đặt h&agrave;ng v&agrave;o cuối giờ chiều th&igrave; sẽ nhận được h&agrave;ng v&agrave;o ng&agrave;y h&ocirc;m sau.</p>

<p>- Bộ phận Giao vận sẽ li&ecirc;n lạc trước để Qu&yacute; kh&aacute;ch sắp xếp thời gian, địa điểm cụ thể để giao h&agrave;ng cho Qu&yacute; kh&aacute;ch.</p>

<p>- Qu&yacute; kh&aacute;ch vui l&ograve;ng trực tiếp<strong>&nbsp;kiểm tra kỹ h&agrave;ng ho&aacute; ngay khi nhận h&agrave;ng&nbsp;</strong>từ nh&acirc;n vi&ecirc;n giao h&agrave;ng, nếu c&oacute; vấn đề li&ecirc;n quan tới chủng loại, mẫu m&atilde;, chất lượng, số lượng h&agrave;ng ho&aacute; kh&ocirc;ng đ&uacute;ng như trong đơn đặt h&agrave;ng, Qu&yacute; kh&aacute;ch cần b&aacute;o ngay cho ch&uacute;ng t&ocirc;i để phối hợp xử l&yacute;. Nếu kh&ocirc;ng c&oacute; bất cứ vấn đề g&igrave;, Qu&yacute; kh&aacute;ch vui l&ograve;ng nhận h&agrave;ng v&agrave; k&yacute; phiếu giao h&agrave;ng.</p>

<p>- Qu&yacute; kh&aacute;ch nhận h&agrave;ng, k&yacute; v&agrave;o phiếu giao h&agrave;ng v&agrave; thanh to&aacute;n cho nh&acirc;n vi&ecirc;n giao nhận to&agrave;n bộ hoặc một phần&nbsp;(nếu đ&atilde; đặt cọc)&nbsp;gi&aacute; trị h&agrave;ng h&oacute;a đ&atilde; mua&nbsp;(bao gồm&nbsp;<strong>gi&aacute; trị tiền h&agrave;ng&nbsp;</strong>+<strong>&nbsp;ph&iacute; vận chuyển</strong>&nbsp;(nếu c&oacute;) +&nbsp;<strong>ph&iacute; lắp đặt&nbsp;</strong>(nếu c&oacute;)).</p>

<p>- Trường hợp h&agrave;ng h&oacute;a phải chuyển từ kho chứa h&agrave;ng ở xa về kho tại c&ocirc;ng ty v&agrave; chi nh&aacute;nh của Thể Thao T&agrave;i Ph&aacute;t, nh&acirc;n vi&ecirc;n b&aacute;n h&agrave;ng sẽ li&ecirc;n hệ với Qu&yacute; kh&aacute;ch để thương thảo lại về thời gian giao h&agrave;ng.</p>

<p>- Trường hợp v&igrave; một l&yacute; do n&agrave;o đ&oacute; nh&acirc;n vi&ecirc;n Thể Thao T&agrave;i Ph&aacute;t kh&ocirc;ng thể giao h&agrave;ng kịp thời th&igrave; ch&uacute;ng t&ocirc;i sẽ li&ecirc;n hệ lại v&agrave; th&ocirc;ng b&aacute;o cho Qu&yacute; kh&aacute;ch được biết.</p>

<h3>4. Nh&acirc;n vi&ecirc;n chuyển ph&aacute;t giao h&agrave;ng tại nh&agrave; kh&aacute;ch h&agrave;ng</h3>

<p>- Với những kh&aacute;ch h&agrave;ng thuộc c&aacute;c huyện tỉnh ở xa, trường hợp nh&acirc;n vi&ecirc;n Thể Thao T&agrave;i Ph&aacute;t kh&ocirc;ng thể giao h&agrave;ng được,<strong>&nbsp;Thể Thao T&agrave;i Ph&aacute;t sẽ ủy quyền cho 1 số đơn vị chuyển ph&aacute;t&nbsp;</strong>như VNPT, Viettel, hoặc 1 số đơn vị chuyển ph&aacute;t c&oacute; uy t&iacute;n kh&aacute;c.</p>

<p>- Khi đặt h&agrave;ng, Qu&yacute; kh&aacute;ch vui l&ograve;ng điền đầy đủ v&agrave; ch&iacute;nh x&aacute;c c&aacute;c th&ocirc;ng tin cần thiết theo y&ecirc;u cầu để tạo điều kiện thuận lợi cho ch&uacute;ng t&ocirc;i trong việc cung cấp h&agrave;ng h&oacute;a v&agrave; nhận thanh to&aacute;n nhanh ch&oacute;ng. Ch&uacute;ng t&ocirc;i cũng kh&ocirc;ng chịu tr&aacute;ch nhiệm đối với những trường hợp giao h&agrave;ng chậm trễ hay thất lạc v&igrave; c&aacute;c th&ocirc;ng tin do Qu&yacute; kh&aacute;ch cung cấp kh&ocirc;ng ch&iacute;nh x&aacute;c.</p>

<p>- Thời gian giao h&agrave;ng t&ugrave;y thuộc v&agrave;o Qu&yacute; kh&aacute;ch lựa chọn chuyển ph&aacute;t nhanh hay chuyển ph&aacute;t thường, thời gian n&agrave;y chỉ mang t&iacute;nh chất tương đối.</p>

<ul>
	<li>Chuyển ph&aacute;t nhanh: Từ&nbsp;<strong>2</strong>&nbsp;đến&nbsp;<strong>3</strong>&nbsp;ng&agrave;y,</li>
	<li>Chuyển ph&aacute;t thường: Từ&nbsp;<strong>5</strong>&nbsp;đến&nbsp;<strong>10</strong>&nbsp;ng&agrave;y</li>
</ul>

<p>- Qu&yacute; kh&aacute;ch vui l&ograve;ng<strong>&nbsp;kiểm tra kỹ h&agrave;ng ho&aacute; ngay khi nhận h&agrave;ng</strong>&nbsp;từ người chuyển ph&aacute;t h&agrave;ng ho&aacute;, nếu c&oacute; vấn đề li&ecirc;n quan tới chủng loại, chất lượng, số lượng h&agrave;ng ho&aacute; kh&ocirc;ng đ&uacute;ng như trong đơn đặt h&agrave;ng, Qu&yacute; kh&aacute;ch cần b&aacute;o ngay cho ch&uacute;ng t&ocirc;i để phối hợp với đơn vị chuyển ph&aacute;t h&agrave;ng h&oacute;a xử l&yacute;.</p>

<h3>5. Giao h&agrave;ng qua xe chở kh&aacute;ch (nh&agrave; xe) tại c&aacute;c bến xe.</h3>

<p>- Th&ocirc;ng thường h&igrave;nh thức giao h&agrave;ng n&agrave;y sẽ &aacute;p dụng cho kh&aacute;ch h&agrave;ng ở c&aacute;c huyện, tỉnh xa trung t&acirc;m; v&agrave; Qu&yacute; kh&aacute;ch c&oacute; người quen - th&acirc;n, tin cậy v&agrave;o xe kh&aacute;ch.</p>

<p>- Thể Thao T&agrave;i Ph&aacute;t sẽ thực hiện giao h&agrave;ng cho Qu&yacute; kh&aacute;ch<strong>&nbsp;qua xe chở kh&aacute;ch theo đ&uacute;ng y&ecirc;u cầu của kh&aacute;ch h&agrave;ng</strong>.</p>

<p>- Qu&yacute; kh&aacute;ch vui l&ograve;ng cung cấp ch&iacute;nh x&aacute;c th&ocirc;ng tin nh&agrave; xe cho ch&uacute;ng t&ocirc;i: T&ecirc;n nh&agrave; xe (t&ecirc;n xe), Họ t&ecirc;n chủ xe (hoặc l&aacute;i xe, phụ xe), Biển số xe, thời gian xe đến v&agrave; xe đi tại c&aacute;c bến xe,... v&agrave; 1 số th&ocirc;ng tin kh&aacute;c.</p>

<p>- Qu&yacute; kh&aacute;ch vui l&ograve;ng thanh to&aacute;n to&agrave;n bộ gi&aacute; trị đơn h&agrave;ng trước khi Thể Thao T&agrave;i Ph&aacute;t chuyển h&agrave;ng hoặc chủ (nh&agrave;) của xe kh&aacute;ch sẽ thanh to&aacute;n to&agrave;n bộ gi&aacute; trị đơn h&agrave;ng trước khi nhận. Đồng thời, Qu&yacute; kh&aacute;ch n&ecirc;n y&ecirc;u cầu chủ xe (người nhận h&agrave;ng từ Thể Thao T&agrave;i Ph&aacute;t) kiểm tra kỹ h&agrave;ng h&oacute;a trước khi nhận.</p>

<p>- Thể Thao T&agrave;i Ph&aacute;t miễn ph&iacute; vận chuyển cho những đơn h&agrave;ng trị gi&aacute; từ&nbsp;<strong>500.000 VNĐ</strong>&nbsp;(Năm trăm ngh&igrave;n đồng chẵn)&nbsp;trở l&ecirc;n từ C&ocirc;ng ty hoặc chi nh&aacute;nh của Thể Thao T&agrave;i Ph&aacute;t đến 1 số bến xe c&oacute;<strong>&nbsp;b&aacute;n k&iacute;nh dưới 15km</strong>&nbsp;(Mười lăm kilomet).</p>

<p>- Tại H&agrave; Nội, miễn ph&iacute; chuyển đến c&aacute;c bến xe:&nbsp;<strong>Bến xe Mỹ Đ&igrave;nh, Gi&aacute;p B&aacute;t, H&agrave; Đ&ocirc;ng, Lương Y&ecirc;n, Nam Thăng Long v&agrave; một số bến xe kh&aacute;c thuộc nội th&agrave;nh Tp. H&agrave; Nội.</strong></p>

<p>- Tại Hồ Ch&iacute; Minh, miễn ph&iacute; đến bến xe như:<strong>&nbsp;Bến xe Miền Đ&ocirc;ng, bến xe Miền T&acirc;y v&agrave; 1 số bến xe kh&aacute;c</strong>.</p>

<h2 style="font-style:inherit">PH&Iacute; GIAO H&Agrave;NG</h2>

<h3>1. Ph&iacute; giao h&agrave;ng cho kh&aacute;ch h&agrave;ng c&oacute; địa chỉ ở c&aacute;c quận nội th&agrave;nh Tp. H&agrave; Nội v&agrave; Tp. Hồ Ch&iacute; Minh.</h3>

<p>- Lưu &yacute;: Ph&iacute; giao h&agrave;ng Kh&ocirc;ng bao gồm phụ ph&iacute;&nbsp;(ph&iacute; lắp đặt...)&nbsp;v&agrave; vận chuyển h&agrave;ng cồng kềnh.</p>

<p>- Với đơn h&agrave;ng trị gi&aacute;<strong>&nbsp;dưới&nbsp;</strong><strong>500.000 VNĐ</strong>&nbsp;(Năm trăm ngh&igrave;n đồng chẵn), Qu&yacute; kh&aacute;ch vui l&ograve;ng trả th&ecirc;m ph&iacute; vận chuyển từ trụ sở Thể Thao T&agrave;i Ph&aacute;t đi trong<strong>&nbsp;nội th&agrave;nh Tp. H&agrave; Nội l&agrave; 10.000 VNĐ</strong>&nbsp;(Mười ngh&igrave;n đồng chẵn); ph&iacute; vận chuyển từ chi nh&aacute;nh trong HCM của Thể Thao T&agrave;i Ph&aacute;t đi trong&nbsp;<strong>Tp. Hồ Ch&iacute; Minh l&agrave; 10.000 VNĐ</strong><strong>&nbsp;</strong>(Mười ngh&igrave;n đồng chẵn).</p>

<p>- Với đơn h&agrave;ng trị gi&aacute; từ 500.000 VNĐ&nbsp;(Năm trăm ngh&igrave;n đồng chẵn)&nbsp;trở l&ecirc;n , Qu&yacute; kh&aacute;ch được&nbsp;<strong>MIỄN PH&Iacute; vận chuyển</strong>.</p>

<p><img alt="Nhân viên Thể Thao Tài Phát giao hàng tận nơi cho Quý khách" src="http://thethaotaiphat.vn/media/lib/giaohang.jpg" style="height:auto; margin:0px auto; width:665px" /></p>

<p>&nbsp;</p>

<p><strong>-&nbsp;Lưu &yacute;: Để biết ch&iacute;nh x&aacute;c hơn qu&yacute; kh&aacute;ch h&agrave;ng vui l&ograve;ng li&ecirc;n hệ với nh&acirc;n vi&ecirc;n b&aacute;n h&agrave;ng để biết mức ph&iacute; cụ thể cho từng loại h&agrave;ng ở từng khiu vực.</strong></p>

<h3>2. Ph&iacute; giao h&agrave;ng cho kh&aacute;ch h&agrave;ng c&oacute; địa chỉ ở c&aacute;c huyện, tỉnh xa trung t&acirc;m H&agrave; Nội v&agrave; Hồ Ch&iacute; Minh</h3>

<p>- Chi ph&iacute; vận chuyển qua xe chở kh&aacute;ch, Qu&yacute; kh&aacute;ch vui l&ograve;ng trực tiếp li&ecirc;n hệ v&agrave; trả ph&iacute; cho nh&agrave; xe.</p>

<p>- Trường hợp Qu&yacute; kh&aacute;ch y&ecirc;u cầu nh&acirc;n vi&ecirc;n Thể Thao T&agrave;i Ph&aacute;t trực tiếp lắp đặt tại nh&agrave; Qu&yacute; kh&aacute;ch th&igrave; ch&uacute;ng t&ocirc;i sẽ t&iacute;nh&nbsp;<strong>Phụ ph&iacute;&nbsp;</strong>(ph&iacute; lắp đặt,....)&nbsp;theo từng trường hợp khi giao dịch.</p>

<p>- Trong một số trường hợp đặc biệt, Qu&yacute; kh&aacute;ch vui l&ograve;ng thanh to&aacute;n th&ecirc;m Phụ ph&iacute; khi nh&acirc;n vi&ecirc;n lắp đặt h&agrave;ng h&oacute;a cần mua th&ecirc;m phụ kiện kh&ocirc;ng thuộc của sản phẩm (khoản n&agrave;y c&oacute; thể kh&ocirc;ng được thể hiện trong H&oacute;a đơn b&aacute;n h&agrave;ng).</p>

<p><strong>Lưu &yacute;</strong><strong>: Ph&iacute; vận chuyển v&agrave; khoản phụ ph&iacute; sẽ ch&iacute;nh x&aacute;c hơn khi nh&acirc;n vi&ecirc;n B&aacute;n h&agrave;ng x&aacute;c nhận lại với Qu&yacute; kh&aacute;ch. C&aacute;c khoản ph&iacute; n&agrave;y sẽ được thể hiện tr&ecirc;n H&oacute;a đơn b&aacute;n h&agrave;ng c&ugrave;ng với gi&aacute; trị tiền h&agrave;ng.</strong></p>
')
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (1055, 1040, N'Bồi thường', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (1056, 1040, N'Tài khoản', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (1057, 1040, N'Chính sách trả lại', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (1058, 1040, N'Hướng dẫn mua hàng', 1, N'<h2><strong>I/ Hướng dẫn mua h&agrave;ng</strong></h2>

<p><strong>Bước 1</strong>. Qu&yacute; kh&aacute;ch truy cập v&agrave;o website&nbsp;, lựa chọn sản phẩm theo Danh mục - từng ng&agrave;nh sản phẩm hoặc&nbsp;<strong>g&otilde; t&ecirc;n sản phẩm hoặc m&atilde; sản phẩm</strong>&nbsp;(từ kh&oacute;a)&nbsp;<strong>v&agrave;o phần T&igrave;m kiếm.</strong></p>

<p>Qu&yacute; kh&aacute;ch t&igrave;m kiếm theo t&ecirc;n sản phẩm, hoặc m&atilde; sản phẩm.</p>

<p><strong>Bước 2.</strong>&nbsp;Ngo&agrave;i t&igrave;m kiếm th&igrave; qu&yacute; kh&aacute;ch c&oacute; thể t&igrave;m kiếm sản phẩm trong ph&acirc;n loại danh mục sản phẩm của ch&uacute;ng t&ocirc;i. Trang danh s&aacute;ch sản phẩm theo danh mục sẽ hiện ra, Qu&yacute; kh&aacute;ch c&oacute; thể thoải m&aacute;i t&igrave;m kiếm v&agrave; so s&aacute;nh để lựa chọn được sản phẩm m&agrave; qu&yacute; kh&aacute;ch h&agrave;ng ưng &yacute; nhất.</p>

<p>Khi qu&yacute; kh&aacute;ch h&agrave;ng click v&agrave;o sản phẩm n&agrave;o đ&oacute; th&igrave; trang chi tiết sản phẩm sẽ hiện ra, Qu&yacute; kh&aacute;ch n&ecirc;n đọc kỹ th&ocirc;ng tin về sản phẩm để đảm bảo việc lựa chọn, mua h&agrave;ng được như &yacute;. Ch&uacute;ng t&ocirc;i lu&ocirc;n cập nhật nội dung, h&igrave;nh ảnh sản phẩm ch&iacute;nh x&aacute;c theo th&ocirc;ng tin của nh&agrave; sản xuất cung cấp v&agrave; đ&uacute;ng với thực tế.</p>

<p><strong>Bước 3. Đặt mua sản phẩm</strong></p>

<p><strong>TH1:</strong>&nbsp;Qu&yacute; kh&aacute;ch c&oacute; thể gọi điện trực tiếp đến c&aacute;c số hotline theo từng khu vực để đặt h&agrave;ng hoặc đến trực tiếp địa chỉ của c&aacute;c showroom v&agrave; đặt h&agrave;ng trực tiếp</p>

<p><strong>TH2: Bạn c&oacute; thể đặt h&agrave;ng tr&ecirc;n trang hệ thống trang web của ch&uacute;ng t&ocirc;i</strong></p>

<p>Nếu kh&aacute;ch h&agrave;ng đ&atilde; ưng &yacute; v&agrave; muốn mua ngay sản phẩm n&agrave;y th&igrave; c&oacute; thể nhấp v&agrave;o n&uacute;t &quot;MUA NGAY&quot; ở vị tr&iacute; số 1. Tuy nhi&ecirc;n, qu&yacute; kh&aacute;ch cần x&aacute;c minh trạng th&aacute;i sản phẩm c&ograve;n h&agrave;ng hay hết h&agrave;ng (vị tr&iacute; số 2). Hoặc nếu qu&yacute; kh&aacute;ch n&agrave;o muốn t&igrave;m hiểu th&ecirc;m th&ocirc;ng tin v&agrave; cần tư vấn th&ecirc;m th&igrave; gọi điện cho T&agrave;i Ph&aacute;t theo số HOTLINE:</p>

<p>Trường hợp qu&yacute; kh&aacute;ch muốn chọn th&ecirc;m sản phẩm kh&aacute;c th&igrave; h&atilde;y nhấp &quot;TH&Ecirc;M V&Agrave;O GIỎ H&Agrave;NG&quot;, khi đ&oacute; ở vị tr&iacute; số 3 trong h&igrave;nh sẽ hiển thị số sản phẩm bạn đ&atilde; th&ecirc;m, bạn chỉ cần di chuột v&agrave;o l&agrave; biết trong giỏ h&agrave;ng của bạn c&oacute; sản phẩm n&agrave;o.</p>

<p><strong>Bước 4</strong>. M&agrave;n h&igrave;nh về th&ocirc;ng tin&nbsp;<strong>Giỏ h&agrave;ng</strong>&nbsp;hiển thị. Qu&yacute; kh&aacute;ch c&oacute; thể kiểm tra lại số lượng v&agrave; t&ecirc;n sản phẩm vừa đặt.</p>

<p>- Trường hợp Qu&yacute; kh&aacute;ch muốn&nbsp;<strong>đặt mua th&ecirc;m sản phẩm</strong>, Qu&yacute; kh&aacute;ch vui l&ograve;ng lựa chọn theo danh mục sản phẩm hay&nbsp;<strong>T&igrave;m kiếm&nbsp;</strong>v&agrave; thực hiện lại c&aacute;c bước từ 1 đến 3.</p>

<p>Giỏ h&agrave;ng của ch&uacute;ng t&ocirc;i c&oacute; t&iacute;nh năng tự động ghi nhớ sản phẩm đ&atilde; mua v&igrave; vậy sản phẩm m&agrave; qu&yacute; kh&aacute;ch đ&atilde; lựa chọn sẽ được lưu giữ trong giỏ h&agrave;ng của qu&yacute; kh&aacute;ch.</p>

<p>- Trường hợp Qu&yacute; kh&aacute;ch kh&ocirc;ng muốn đặt mua sản phẩm 1 trong số c&aacute;c sản phẩm đ&atilde; đặt, c&oacute; thể k&iacute;ch v&agrave;o n&uacute;t&nbsp;<strong>X&oacute;a&nbsp;</strong>tương ứng với t&ecirc;n sản phẩm đ&oacute;.</p>

<p>L&uacute;c n&agrave;y, qu&yacute; kh&aacute;ch cần điền đầy đủ th&ocirc;ng tin b&ecirc;n cột: &quot;Điền th&ocirc;ng tin kh&aacute;ch h&agrave;ng&quot;. Kiểm tra một lần nữa xem th&ocirc;ng tin qu&yacute; kh&aacute;ch ddienf đ&atilde; đầy đủ v&agrave; ch&iacute;nh x&aacute;c chưa. Sau khi x&aacute;c nhận mọi th&ocirc;ng tin ch&iacute;nh x&aacute;c th&igrave; h&atilde;y nhấn n&uacute;t &quot;X&Aacute;C NHẬN&quot;.</p>

<p>Hệ thống sẽ gửi email v&agrave; SĐT x&aacute;c minh qu&yacute; kh&aacute;ch đ&atilde; đặt h&agrave;ng (SMS x&aacute;c minh đơn đặt h&agrave;ng của qu&yacute; kh&aacute;ch l&agrave; miễn ph&iacute;).</p>

<p><strong>(Qu&yacute; kh&aacute;ch c&oacute; thể thao khảo th&ecirc;m mục Phương thức thanh to&aacute;n v&agrave; ch&iacute;nh s&aacute;ch bảo mật của ch&uacute;ng t&ocirc;i.)</strong></p>

<p>Đơn h&agrave;ng đ&atilde; gửi sẽ được lưu trữ tr&ecirc;n hệ thống website , nh&acirc;n vi&ecirc;n b&aacute;n h&agrave;ng của ch&uacute;ng t&ocirc;i sẽ li&ecirc;n hệ lại với Qu&yacute; kh&aacute;ch&nbsp;qua điện thoại hoặc email)&nbsp;để x&aacute;c nhận v&agrave; tư vấn trước khi chuyển h&agrave;ng. Đồng thời Qu&yacute; kh&aacute;ch sẽ nhận được email th&ocirc;ng b&aacute;o về đơn h&agrave;ng từ hệ thống , Qu&yacute; kh&aacute;ch c&oacute; thể truy cập v&agrave;o email để kiểm tra lại đơn h&agrave;ng vừa đặt; v&igrave; một l&yacute; do n&agrave;o đ&oacute; Qu&yacute; kh&aacute;ch kh&ocirc;ng nhận được email vui l&ograve;ng kiểm tra th&ecirc;m ở phần&nbsp;Spam&nbsp;hoặc li&ecirc;n hệ lại để ch&uacute;ng t&ocirc;i kiểm tra hệ thống.</p>

<p><strong>LƯU</strong>&nbsp;&Yacute;:&nbsp;Trường hợp qu&yacute; kh&aacute;ch đ&atilde; c&oacute; th&ocirc;ng tin t&agrave;i khoản tr&ecirc;n hệ thống website của ch&uacute;ng t&ocirc;i qu&yacute; kh&aacute;ch c&oacute; thể đăng nhập v&agrave;o t&agrave;i khoản của m&igrave;nh để thuận tiện cho việc mua h&agrave;ng ở những lần tiếp theo.</p>
')
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (1060, 6, N'CỬA NHỰA GIẢ GỖ', 1, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (1062, 7, N'THANG MÁY TẢI KHÁCH', 0, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (1063, 7, N'THANG MÁY BỆNH VIỆN', 0, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (1064, 7, N'THANG MÁY LỒNG KÍNH QUAN SÁT', 0, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (1065, 7, N'THANG MÁY TẢI THỰC PHẨM', 0, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (1066, 7, N'THANG MÁY TẢI HÀNG', 0, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (1067, 7, N'THANG MÁY GIA ĐÌNH', 0, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (1068, 7, N'THANG MÁY VĂN PHÒNG', 0, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [MaChuyenMucCha], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (1069, 7, N'THANG MÁY OH TẦNG THẤP', 0, NULL)
SET IDENTITY_INSERT [dbo].[ChuyenMucs] OFF
GO
SET IDENTITY_INSERT [dbo].[CongTrinhNoiBats] ON 

INSERT [dbo].[CongTrinhNoiBats] ([MaCT], [TenCT], [AnhDaiDien], [DiaChi], [Chitiet], [TrangThai]) VALUES (1, N'Công Trình 1', N'/Images/Products/cong-trinh/1.png', N'Làng Việt Kiều Châu Âu Mỗ Lao, Cần Thơ', N'<h2><strong>Cấu tạo cửa nh&ocirc;m k&iacute;nh</strong></h2>

<p>Cửa nh&ocirc;m k&iacute;nh đẹp hiện nay bao gồm 2 loại chủ yếu l&agrave; v&aacute;ch ngăn di động v&agrave; v&aacute;ch ngăn b&agrave;n l&agrave;m việc. Cấu tạo của v&aacute;ch ngăn n&agrave;y bao gồm 2 phần ch&iacute;nh: Phần khung v&aacute;ch l&agrave; nh&ocirc;m định h&igrave;nh bền chắc. B&ecirc;n trong l&agrave; k&iacute;nh chịu lực sang trọng v&agrave; hiện đại. Loại k&iacute;nh n&agrave;y được sử dụng kh&aacute; đa dạng về độ d&agrave;y, c&oacute; thể lựa chọn độ d&agrave;y k&iacute;nh từ 5mm đến 12mm ph&ugrave; hợp theo nhu cầu sử dụng.</p>

<h2><strong>ƯU ĐIỂM</strong></h2>

<p>&ndash; Độ an to&agrave;n cao: khi vỡ sẽ &iacute;t g&acirc;y s&aacute;t thương cho con người bởi k&iacute;nh cường lực khi vỡ ra sẽ tạo ra c&aacute;c mảnh vỡ nhỏ v&agrave; đều, kh&ocirc;ng sắc cạnh do đ&oacute; giảm thiểu khả năng g&acirc;y s&aacute;t thương.<br />
&ndash; C&oacute; t&iacute;nh chịu lực tốt:c&oacute; khả năng chịu lực cao gấp nhiều lần so với k&iacute;nh nổi thường c&ugrave;ng loại v&agrave; c&ugrave;ng độ d&agrave;y.<br />
&ndash; Kh&ocirc;ng bị che khuất tầm nh&igrave;n, kh&ocirc;ng gian sẽ trở n&ecirc;n tho&aacute;ng đ&atilde;ng hơn.<br />
&ndash; Độ bền&nbsp;<a href="http://buiphat.vn/cua-nhom-kinh-dep-231.html"><strong>mẫu cửa nh&ocirc;m k&iacute;nh</strong></a>&nbsp;cao:do ứng suất l&ecirc;n bề mặt k&iacute;nh được &eacute;p lại l&agrave;m cho c&aacute;c mạch li&ecirc;n kết cực nhỏ được kết hợp với nhau tạo th&agrave;nh li&ecirc;n kết vững chắc hơn, gi&uacute;p cho v&aacute;ch k&iacute;nh cường lực chịu được rung chấn, sức gi&oacute; v&agrave; va đập mạnh.<br />
&ndash; Chịu nhiệt tốt:v&aacute;ch k&iacute;nh c&oacute; thể chịu được nhiệt độ rất cao ngay cả khi nhiệt độ thay đổi đột ngột khoảng 150 độ C th&igrave; k&iacute;nh cũng kh&ocirc;ng hề ảnh hưởng g&igrave;.<br />
&ndash; Gi&aacute; th&agrave;nh rẻ: v&aacute;ch k&iacute;nh gi&aacute; rẻhơn c&aacute;c loại v&aacute;ch truyền th&ocirc;ng như tường xi măng, gỗ, sắt, inox&hellip;<br />
&ndash; Thi c&ocirc;ng nhanh gọn: kh&ocirc;ng mất nhiều thời gian.</p>
', 1)
INSERT [dbo].[CongTrinhNoiBats] ([MaCT], [TenCT], [AnhDaiDien], [DiaChi], [Chitiet], [TrangThai]) VALUES (2, N'Công Trình 2', N'/Images/Products/cong-trinh/2.png', N'
L15 L16 khu A KDT Dương Nội - Nam Cường - Hà Đông - Hà Nội', N'<h2><strong>Cấu tạo cửa nh&ocirc;m k&iacute;nh</strong></h2>

<p>Cửa nh&ocirc;m k&iacute;nh đẹp hiện nay bao gồm 2 loại chủ yếu l&agrave; v&aacute;ch ngăn di động v&agrave; v&aacute;ch ngăn b&agrave;n l&agrave;m việc. Cấu tạo của v&aacute;ch ngăn n&agrave;y bao gồm 2 phần ch&iacute;nh: Phần khung v&aacute;ch l&agrave; nh&ocirc;m định h&igrave;nh bền chắc. B&ecirc;n trong l&agrave; k&iacute;nh chịu lực sang trọng v&agrave; hiện đại. Loại k&iacute;nh n&agrave;y được sử dụng kh&aacute; đa dạng về độ d&agrave;y, c&oacute; thể lựa chọn độ d&agrave;y k&iacute;nh từ 5mm đến 12mm ph&ugrave; hợp theo nhu cầu sử dụng.</p>

<h2><strong>ƯU ĐIỂM</strong></h2>

<p>&ndash; Độ an to&agrave;n cao: khi vỡ sẽ &iacute;t g&acirc;y s&aacute;t thương cho con người bởi k&iacute;nh cường lực khi vỡ ra sẽ tạo ra c&aacute;c mảnh vỡ nhỏ v&agrave; đều, kh&ocirc;ng sắc cạnh do đ&oacute; giảm thiểu khả năng g&acirc;y s&aacute;t thương.<br />
&ndash; C&oacute; t&iacute;nh chịu lực tốt:c&oacute; khả năng chịu lực cao gấp nhiều lần so với k&iacute;nh nổi thường c&ugrave;ng loại v&agrave; c&ugrave;ng độ d&agrave;y.<br />
&ndash; Kh&ocirc;ng bị che khuất tầm nh&igrave;n, kh&ocirc;ng gian sẽ trở n&ecirc;n tho&aacute;ng đ&atilde;ng hơn.<br />
&ndash; Độ bền&nbsp;<a href="http://buiphat.vn/cua-nhom-kinh-dep-231.html"><strong>mẫu cửa nh&ocirc;m k&iacute;nh</strong></a>&nbsp;cao:do ứng suất l&ecirc;n bề mặt k&iacute;nh được &eacute;p lại l&agrave;m cho c&aacute;c mạch li&ecirc;n kết cực nhỏ được kết hợp với nhau tạo th&agrave;nh li&ecirc;n kết vững chắc hơn, gi&uacute;p cho v&aacute;ch k&iacute;nh cường lực chịu được rung chấn, sức gi&oacute; v&agrave; va đập mạnh.<br />
&ndash; Chịu nhiệt tốt:v&aacute;ch k&iacute;nh c&oacute; thể chịu được nhiệt độ rất cao ngay cả khi nhiệt độ thay đổi đột ngột khoảng 150 độ C th&igrave; k&iacute;nh cũng kh&ocirc;ng hề ảnh hưởng g&igrave;.<br />
&ndash; Gi&aacute; th&agrave;nh rẻ: v&aacute;ch k&iacute;nh gi&aacute; rẻhơn c&aacute;c loại v&aacute;ch truyền th&ocirc;ng như tường xi măng, gỗ, sắt, inox&hellip;<br />
&ndash; Thi c&ocirc;ng nhanh gọn: kh&ocirc;ng mất nhiều thời gian.</p>
', 1)
INSERT [dbo].[CongTrinhNoiBats] ([MaCT], [TenCT], [AnhDaiDien], [DiaChi], [Chitiet], [TrangThai]) VALUES (3, N'Công Trình 3', N'/Images/Products/cong-trinh/3.png', N'D1 lô 01 BT1 KDT Trung Văn, Từ Liêm', N'<h2><strong>Cấu tạo cửa nh&ocirc;m k&iacute;nh</strong></h2>

<p>Cửa nh&ocirc;m k&iacute;nh đẹp hiện nay bao gồm 2 loại chủ yếu l&agrave; v&aacute;ch ngăn di động v&agrave; v&aacute;ch ngăn b&agrave;n l&agrave;m việc. Cấu tạo của v&aacute;ch ngăn n&agrave;y bao gồm 2 phần ch&iacute;nh: Phần khung v&aacute;ch l&agrave; nh&ocirc;m định h&igrave;nh bền chắc. B&ecirc;n trong l&agrave; k&iacute;nh chịu lực sang trọng v&agrave; hiện đại. Loại k&iacute;nh n&agrave;y được sử dụng kh&aacute; đa dạng về độ d&agrave;y, c&oacute; thể lựa chọn độ d&agrave;y k&iacute;nh từ 5mm đến 12mm ph&ugrave; hợp theo nhu cầu sử dụng.</p>

<h2><strong>ƯU ĐIỂM</strong></h2>

<p>&ndash; Độ an to&agrave;n cao: khi vỡ sẽ &iacute;t g&acirc;y s&aacute;t thương cho con người bởi k&iacute;nh cường lực khi vỡ ra sẽ tạo ra c&aacute;c mảnh vỡ nhỏ v&agrave; đều, kh&ocirc;ng sắc cạnh do đ&oacute; giảm thiểu khả năng g&acirc;y s&aacute;t thương.<br />
&ndash; C&oacute; t&iacute;nh chịu lực tốt:c&oacute; khả năng chịu lực cao gấp nhiều lần so với k&iacute;nh nổi thường c&ugrave;ng loại v&agrave; c&ugrave;ng độ d&agrave;y.<br />
&ndash; Kh&ocirc;ng bị che khuất tầm nh&igrave;n, kh&ocirc;ng gian sẽ trở n&ecirc;n tho&aacute;ng đ&atilde;ng hơn.<br />
&ndash; Độ bền&nbsp;<a href="http://buiphat.vn/cua-nhom-kinh-dep-231.html"><strong>mẫu cửa nh&ocirc;m k&iacute;nh</strong></a>&nbsp;cao:do ứng suất l&ecirc;n bề mặt k&iacute;nh được &eacute;p lại l&agrave;m cho c&aacute;c mạch li&ecirc;n kết cực nhỏ được kết hợp với nhau tạo th&agrave;nh li&ecirc;n kết vững chắc hơn, gi&uacute;p cho v&aacute;ch k&iacute;nh cường lực chịu được rung chấn, sức gi&oacute; v&agrave; va đập mạnh.<br />
&ndash; Chịu nhiệt tốt:v&aacute;ch k&iacute;nh c&oacute; thể chịu được nhiệt độ rất cao ngay cả khi nhiệt độ thay đổi đột ngột khoảng 150 độ C th&igrave; k&iacute;nh cũng kh&ocirc;ng hề ảnh hưởng g&igrave;.<br />
&ndash; Gi&aacute; th&agrave;nh rẻ: v&aacute;ch k&iacute;nh gi&aacute; rẻhơn c&aacute;c loại v&aacute;ch truyền th&ocirc;ng như tường xi măng, gỗ, sắt, inox&hellip;<br />
&ndash; Thi c&ocirc;ng nhanh gọn: kh&ocirc;ng mất nhiều thời gian.</p>
', 1)
INSERT [dbo].[CongTrinhNoiBats] ([MaCT], [TenCT], [AnhDaiDien], [DiaChi], [Chitiet], [TrangThai]) VALUES (4, N'Công Trình 4', N'/Images/Products/cong-trinh/4.png', N'14 ngõ 28 Nguyên Hồng HN', N'<h2><strong>Cấu tạo cửa nh&ocirc;m k&iacute;nh</strong></h2>

<p>Cửa nh&ocirc;m k&iacute;nh đẹp hiện nay bao gồm 2 loại chủ yếu l&agrave; v&aacute;ch ngăn di động v&agrave; v&aacute;ch ngăn b&agrave;n l&agrave;m việc. Cấu tạo của v&aacute;ch ngăn n&agrave;y bao gồm 2 phần ch&iacute;nh: Phần khung v&aacute;ch l&agrave; nh&ocirc;m định h&igrave;nh bền chắc. B&ecirc;n trong l&agrave; k&iacute;nh chịu lực sang trọng v&agrave; hiện đại. Loại k&iacute;nh n&agrave;y được sử dụng kh&aacute; đa dạng về độ d&agrave;y, c&oacute; thể lựa chọn độ d&agrave;y k&iacute;nh từ 5mm đến 12mm ph&ugrave; hợp theo nhu cầu sử dụng.</p>

<h2><strong>ƯU ĐIỂM</strong></h2>

<p>&ndash; Độ an to&agrave;n cao: khi vỡ sẽ &iacute;t g&acirc;y s&aacute;t thương cho con người bởi k&iacute;nh cường lực khi vỡ ra sẽ tạo ra c&aacute;c mảnh vỡ nhỏ v&agrave; đều, kh&ocirc;ng sắc cạnh do đ&oacute; giảm thiểu khả năng g&acirc;y s&aacute;t thương.<br />
&ndash; C&oacute; t&iacute;nh chịu lực tốt:c&oacute; khả năng chịu lực cao gấp nhiều lần so với k&iacute;nh nổi thường c&ugrave;ng loại v&agrave; c&ugrave;ng độ d&agrave;y.<br />
&ndash; Kh&ocirc;ng bị che khuất tầm nh&igrave;n, kh&ocirc;ng gian sẽ trở n&ecirc;n tho&aacute;ng đ&atilde;ng hơn.<br />
&ndash; Độ bền&nbsp;<a href="http://buiphat.vn/cua-nhom-kinh-dep-231.html"><strong>mẫu cửa nh&ocirc;m k&iacute;nh</strong></a>&nbsp;cao:do ứng suất l&ecirc;n bề mặt k&iacute;nh được &eacute;p lại l&agrave;m cho c&aacute;c mạch li&ecirc;n kết cực nhỏ được kết hợp với nhau tạo th&agrave;nh li&ecirc;n kết vững chắc hơn, gi&uacute;p cho v&aacute;ch k&iacute;nh cường lực chịu được rung chấn, sức gi&oacute; v&agrave; va đập mạnh.<br />
&ndash; Chịu nhiệt tốt:v&aacute;ch k&iacute;nh c&oacute; thể chịu được nhiệt độ rất cao ngay cả khi nhiệt độ thay đổi đột ngột khoảng 150 độ C th&igrave; k&iacute;nh cũng kh&ocirc;ng hề ảnh hưởng g&igrave;.<br />
&ndash; Gi&aacute; th&agrave;nh rẻ: v&aacute;ch k&iacute;nh gi&aacute; rẻhơn c&aacute;c loại v&aacute;ch truyền th&ocirc;ng như tường xi măng, gỗ, sắt, inox&hellip;<br />
&ndash; Thi c&ocirc;ng nhanh gọn: kh&ocirc;ng mất nhiều thời gian.</p>
', 1)
INSERT [dbo].[CongTrinhNoiBats] ([MaCT], [TenCT], [AnhDaiDien], [DiaChi], [Chitiet], [TrangThai]) VALUES (5, N'Công Trình 5', N'/Images/Products/cong-trinh/5.png', N'R4-55 Hưng Gia 1 Tân Phong Q7', N'<h2><strong>Cấu tạo cửa nh&ocirc;m k&iacute;nh</strong></h2>

<p>Cửa nh&ocirc;m k&iacute;nh đẹp hiện nay bao gồm 2 loại chủ yếu l&agrave; v&aacute;ch ngăn di động v&agrave; v&aacute;ch ngăn b&agrave;n l&agrave;m việc. Cấu tạo của v&aacute;ch ngăn n&agrave;y bao gồm 2 phần ch&iacute;nh: Phần khung v&aacute;ch l&agrave; nh&ocirc;m định h&igrave;nh bền chắc. B&ecirc;n trong l&agrave; k&iacute;nh chịu lực sang trọng v&agrave; hiện đại. Loại k&iacute;nh n&agrave;y được sử dụng kh&aacute; đa dạng về độ d&agrave;y, c&oacute; thể lựa chọn độ d&agrave;y k&iacute;nh từ 5mm đến 12mm ph&ugrave; hợp theo nhu cầu sử dụng.</p>

<h2><strong>ƯU ĐIỂM</strong></h2>

<p>&ndash; Độ an to&agrave;n cao: khi vỡ sẽ &iacute;t g&acirc;y s&aacute;t thương cho con người bởi k&iacute;nh cường lực khi vỡ ra sẽ tạo ra c&aacute;c mảnh vỡ nhỏ v&agrave; đều, kh&ocirc;ng sắc cạnh do đ&oacute; giảm thiểu khả năng g&acirc;y s&aacute;t thương.<br />
&ndash; C&oacute; t&iacute;nh chịu lực tốt:c&oacute; khả năng chịu lực cao gấp nhiều lần so với k&iacute;nh nổi thường c&ugrave;ng loại v&agrave; c&ugrave;ng độ d&agrave;y.<br />
&ndash; Kh&ocirc;ng bị che khuất tầm nh&igrave;n, kh&ocirc;ng gian sẽ trở n&ecirc;n tho&aacute;ng đ&atilde;ng hơn.<br />
&ndash; Độ bền&nbsp;<a href="http://buiphat.vn/cua-nhom-kinh-dep-231.html"><strong>mẫu cửa nh&ocirc;m k&iacute;nh</strong></a>&nbsp;cao:do ứng suất l&ecirc;n bề mặt k&iacute;nh được &eacute;p lại l&agrave;m cho c&aacute;c mạch li&ecirc;n kết cực nhỏ được kết hợp với nhau tạo th&agrave;nh li&ecirc;n kết vững chắc hơn, gi&uacute;p cho v&aacute;ch k&iacute;nh cường lực chịu được rung chấn, sức gi&oacute; v&agrave; va đập mạnh.<br />
&ndash; Chịu nhiệt tốt:v&aacute;ch k&iacute;nh c&oacute; thể chịu được nhiệt độ rất cao ngay cả khi nhiệt độ thay đổi đột ngột khoảng 150 độ C th&igrave; k&iacute;nh cũng kh&ocirc;ng hề ảnh hưởng g&igrave;.<br />
&ndash; Gi&aacute; th&agrave;nh rẻ: v&aacute;ch k&iacute;nh gi&aacute; rẻhơn c&aacute;c loại v&aacute;ch truyền th&ocirc;ng như tường xi măng, gỗ, sắt, inox&hellip;<br />
&ndash; Thi c&ocirc;ng nhanh gọn: kh&ocirc;ng mất nhiều thời gian.</p>
', 1)
INSERT [dbo].[CongTrinhNoiBats] ([MaCT], [TenCT], [AnhDaiDien], [DiaChi], [Chitiet], [TrangThai]) VALUES (6, N'Công Trình 6', N'/Images/Products/cong-trinh/6.png', N'B19 đường số 11, Q7', N'<p><img src="/images/CongTrinhNoiBat/AnhNoiDung/16/1.jpg" style="width:650px" /></p>

<h2><strong>Cấu tạo cửa nh&ocirc;m k&iacute;nh</strong></h2>

<p>Cửa nh&ocirc;m k&iacute;nh đẹp hiện nay bao gồm 2 loại chủ yếu l&agrave; v&aacute;ch ngăn di động v&agrave; v&aacute;ch ngăn b&agrave;n l&agrave;m việc. Cấu tạo của v&aacute;ch ngăn n&agrave;y bao gồm 2 phần ch&iacute;nh: Phần khung v&aacute;ch l&agrave; nh&ocirc;m định h&igrave;nh bền chắc. B&ecirc;n trong l&agrave; k&iacute;nh chịu lực sang trọng v&agrave; hiện đại. Loại k&iacute;nh n&agrave;y được sử dụng kh&aacute; đa dạng về độ d&agrave;y, c&oacute; thể lựa chọn độ d&agrave;y k&iacute;nh từ 5mm đến 12mm ph&ugrave; hợp theo nhu cầu sử dụng.</p>

<h2><strong>ƯU ĐIỂM</strong></h2>

<p>&ndash; Độ an to&agrave;n cao: khi vỡ sẽ &iacute;t g&acirc;y s&aacute;t thương cho con người bởi k&iacute;nh cường lực khi vỡ ra sẽ tạo ra c&aacute;c mảnh vỡ nhỏ v&agrave; đều, kh&ocirc;ng sắc cạnh do đ&oacute; giảm thiểu khả năng g&acirc;y s&aacute;t thương.<br />
&ndash; C&oacute; t&iacute;nh chịu lực tốt:c&oacute; khả năng chịu lực cao gấp nhiều lần so với k&iacute;nh nổi thường c&ugrave;ng loại v&agrave; c&ugrave;ng độ d&agrave;y.<br />
&ndash; Kh&ocirc;ng bị che khuất tầm nh&igrave;n, kh&ocirc;ng gian sẽ trở n&ecirc;n tho&aacute;ng đ&atilde;ng hơn.<br />
&ndash; Độ bền&nbsp;<a href="http://buiphat.vn/cua-nhom-kinh-dep-231.html"><strong>mẫu cửa nh&ocirc;m k&iacute;nh</strong></a>&nbsp;cao:do ứng suất l&ecirc;n bề mặt k&iacute;nh được &eacute;p lại l&agrave;m cho c&aacute;c mạch li&ecirc;n kết cực nhỏ được kết hợp với nhau tạo th&agrave;nh li&ecirc;n kết vững chắc hơn, gi&uacute;p cho v&aacute;ch k&iacute;nh cường lực chịu được rung chấn, sức gi&oacute; v&agrave; va đập mạnh.<br />
&ndash; Chịu nhiệt tốt:v&aacute;ch k&iacute;nh c&oacute; thể chịu được nhiệt độ rất cao ngay cả khi nhiệt độ thay đổi đột ngột khoảng 150 độ C th&igrave; k&iacute;nh cũng kh&ocirc;ng hề ảnh hưởng g&igrave;.<br />
&ndash; Gi&aacute; th&agrave;nh rẻ: v&aacute;ch k&iacute;nh gi&aacute; rẻhơn c&aacute;c loại v&aacute;ch truyền th&ocirc;ng như tường xi măng, gỗ, sắt, inox&hellip;<br />
&ndash; Thi c&ocirc;ng nhanh gọn: kh&ocirc;ng mất nhiều thời gian.</p>
', 1)
INSERT [dbo].[CongTrinhNoiBats] ([MaCT], [TenCT], [AnhDaiDien], [DiaChi], [Chitiet], [TrangThai]) VALUES (7, N'Công Trình 7', N'/Images/Products/cong-trinh/7.jpg', N'226 Mỹ Kim Q7', N'<p><img src="/images/CongTrinhNoiBat/AnhNoiDung/16/1.jpg" style="width:650px" /></p>

<h2><strong>Cấu tạo cửa nh&ocirc;m k&iacute;nh</strong></h2>

<p>Cửa nh&ocirc;m k&iacute;nh đẹp hiện nay bao gồm 2 loại chủ yếu l&agrave; v&aacute;ch ngăn di động v&agrave; v&aacute;ch ngăn b&agrave;n l&agrave;m việc. Cấu tạo của v&aacute;ch ngăn n&agrave;y bao gồm 2 phần ch&iacute;nh: Phần khung v&aacute;ch l&agrave; nh&ocirc;m định h&igrave;nh bền chắc. B&ecirc;n trong l&agrave; k&iacute;nh chịu lực sang trọng v&agrave; hiện đại. Loại k&iacute;nh n&agrave;y được sử dụng kh&aacute; đa dạng về độ d&agrave;y, c&oacute; thể lựa chọn độ d&agrave;y k&iacute;nh từ 5mm đến 12mm ph&ugrave; hợp theo nhu cầu sử dụng.</p>

<h2><strong>ƯU ĐIỂM</strong></h2>

<p>&ndash; Độ an to&agrave;n cao: khi vỡ sẽ &iacute;t g&acirc;y s&aacute;t thương cho con người bởi k&iacute;nh cường lực khi vỡ ra sẽ tạo ra c&aacute;c mảnh vỡ nhỏ v&agrave; đều, kh&ocirc;ng sắc cạnh do đ&oacute; giảm thiểu khả năng g&acirc;y s&aacute;t thương.<br />
&ndash; C&oacute; t&iacute;nh chịu lực tốt:c&oacute; khả năng chịu lực cao gấp nhiều lần so với k&iacute;nh nổi thường c&ugrave;ng loại v&agrave; c&ugrave;ng độ d&agrave;y.<br />
&ndash; Kh&ocirc;ng bị che khuất tầm nh&igrave;n, kh&ocirc;ng gian sẽ trở n&ecirc;n tho&aacute;ng đ&atilde;ng hơn.<br />
&ndash; Độ bền&nbsp;<a href="http://buiphat.vn/cua-nhom-kinh-dep-231.html"><strong>mẫu cửa nh&ocirc;m k&iacute;nh</strong></a>&nbsp;cao:do ứng suất l&ecirc;n bề mặt k&iacute;nh được &eacute;p lại l&agrave;m cho c&aacute;c mạch li&ecirc;n kết cực nhỏ được kết hợp với nhau tạo th&agrave;nh li&ecirc;n kết vững chắc hơn, gi&uacute;p cho v&aacute;ch k&iacute;nh cường lực chịu được rung chấn, sức gi&oacute; v&agrave; va đập mạnh.<br />
&ndash; Chịu nhiệt tốt:v&aacute;ch k&iacute;nh c&oacute; thể chịu được nhiệt độ rất cao ngay cả khi nhiệt độ thay đổi đột ngột khoảng 150 độ C th&igrave; k&iacute;nh cũng kh&ocirc;ng hề ảnh hưởng g&igrave;.<br />
&ndash; Gi&aacute; th&agrave;nh rẻ: v&aacute;ch k&iacute;nh gi&aacute; rẻhơn c&aacute;c loại v&aacute;ch truyền th&ocirc;ng như tường xi măng, gỗ, sắt, inox&hellip;<br />
&ndash; Thi c&ocirc;ng nhanh gọn: kh&ocirc;ng mất nhiều thời gian.</p>
', 1)
INSERT [dbo].[CongTrinhNoiBats] ([MaCT], [TenCT], [AnhDaiDien], [DiaChi], [Chitiet], [TrangThai]) VALUES (8, N'Công Trình 8', N'/Images/Products/cong-trinh/8.jpg', N'101 đường số 10 Hoàng Quốc Việt Q7', N'<p><img src="/images/CongTrinhNoiBat/AnhNoiDung/16/1.jpg" style="width:650px" /></p>

<h2><strong>Cấu tạo cửa nh&ocirc;m k&iacute;nh</strong></h2>

<p>Cửa nh&ocirc;m k&iacute;nh đẹp hiện nay bao gồm 2 loại chủ yếu l&agrave; v&aacute;ch ngăn di động v&agrave; v&aacute;ch ngăn b&agrave;n l&agrave;m việc. Cấu tạo của v&aacute;ch ngăn n&agrave;y bao gồm 2 phần ch&iacute;nh: Phần khung v&aacute;ch l&agrave; nh&ocirc;m định h&igrave;nh bền chắc. B&ecirc;n trong l&agrave; k&iacute;nh chịu lực sang trọng v&agrave; hiện đại. Loại k&iacute;nh n&agrave;y được sử dụng kh&aacute; đa dạng về độ d&agrave;y, c&oacute; thể lựa chọn độ d&agrave;y k&iacute;nh từ 5mm đến 12mm ph&ugrave; hợp theo nhu cầu sử dụng.</p>

<h2><strong>ƯU ĐIỂM</strong></h2>

<p>&ndash; Độ an to&agrave;n cao: khi vỡ sẽ &iacute;t g&acirc;y s&aacute;t thương cho con người bởi k&iacute;nh cường lực khi vỡ ra sẽ tạo ra c&aacute;c mảnh vỡ nhỏ v&agrave; đều, kh&ocirc;ng sắc cạnh do đ&oacute; giảm thiểu khả năng g&acirc;y s&aacute;t thương.<br />
&ndash; C&oacute; t&iacute;nh chịu lực tốt:c&oacute; khả năng chịu lực cao gấp nhiều lần so với k&iacute;nh nổi thường c&ugrave;ng loại v&agrave; c&ugrave;ng độ d&agrave;y.<br />
&ndash; Kh&ocirc;ng bị che khuất tầm nh&igrave;n, kh&ocirc;ng gian sẽ trở n&ecirc;n tho&aacute;ng đ&atilde;ng hơn.<br />
&ndash; Độ bền&nbsp;<a href="http://buiphat.vn/cua-nhom-kinh-dep-231.html"><strong>mẫu cửa nh&ocirc;m k&iacute;nh</strong></a>&nbsp;cao:do ứng suất l&ecirc;n bề mặt k&iacute;nh được &eacute;p lại l&agrave;m cho c&aacute;c mạch li&ecirc;n kết cực nhỏ được kết hợp với nhau tạo th&agrave;nh li&ecirc;n kết vững chắc hơn, gi&uacute;p cho v&aacute;ch k&iacute;nh cường lực chịu được rung chấn, sức gi&oacute; v&agrave; va đập mạnh.<br />
&ndash; Chịu nhiệt tốt:v&aacute;ch k&iacute;nh c&oacute; thể chịu được nhiệt độ rất cao ngay cả khi nhiệt độ thay đổi đột ngột khoảng 150 độ C th&igrave; k&iacute;nh cũng kh&ocirc;ng hề ảnh hưởng g&igrave;.<br />
&ndash; Gi&aacute; th&agrave;nh rẻ: v&aacute;ch k&iacute;nh gi&aacute; rẻhơn c&aacute;c loại v&aacute;ch truyền th&ocirc;ng như tường xi măng, gỗ, sắt, inox&hellip;<br />
&ndash; Thi c&ocirc;ng nhanh gọn: kh&ocirc;ng mất nhiều thời gian.</p>
', 1)
INSERT [dbo].[CongTrinhNoiBats] ([MaCT], [TenCT], [AnhDaiDien], [DiaChi], [Chitiet], [TrangThai]) VALUES (9, N'Công Trình 9', N'/Images/Products/cong-trinh/9.jpg', N'68 đường số 7 KDC Himlam Q7', N'<h2><strong>Cấu tạo cửa nh&ocirc;m k&iacute;nh</strong></h2>

<p>Cửa nh&ocirc;m k&iacute;nh đẹp hiện nay bao gồm 2 loại chủ yếu l&agrave; v&aacute;ch ngăn di động v&agrave; v&aacute;ch ngăn b&agrave;n l&agrave;m việc. Cấu tạo của v&aacute;ch ngăn n&agrave;y bao gồm 2 phần ch&iacute;nh: Phần khung v&aacute;ch l&agrave; nh&ocirc;m định h&igrave;nh bền chắc. B&ecirc;n trong l&agrave; k&iacute;nh chịu lực sang trọng v&agrave; hiện đại. Loại k&iacute;nh n&agrave;y được sử dụng kh&aacute; đa dạng về độ d&agrave;y, c&oacute; thể lựa chọn độ d&agrave;y k&iacute;nh từ 5mm đến 12mm ph&ugrave; hợp theo nhu cầu sử dụng.</p>

<h2><strong>ƯU ĐIỂM</strong></h2>

<p>&ndash; Độ an to&agrave;n cao: khi vỡ sẽ &iacute;t g&acirc;y s&aacute;t thương cho con người bởi k&iacute;nh cường lực khi vỡ ra sẽ tạo ra c&aacute;c mảnh vỡ nhỏ v&agrave; đều, kh&ocirc;ng sắc cạnh do đ&oacute; giảm thiểu khả năng g&acirc;y s&aacute;t thương.<br />
&ndash; C&oacute; t&iacute;nh chịu lực tốt:c&oacute; khả năng chịu lực cao gấp nhiều lần so với k&iacute;nh nổi thường c&ugrave;ng loại v&agrave; c&ugrave;ng độ d&agrave;y.<br />
&ndash; Kh&ocirc;ng bị che khuất tầm nh&igrave;n, kh&ocirc;ng gian sẽ trở n&ecirc;n tho&aacute;ng đ&atilde;ng hơn.<br />
&ndash; Độ bền&nbsp;<a href="http://buiphat.vn/cua-nhom-kinh-dep-231.html"><strong>mẫu cửa nh&ocirc;m k&iacute;nh</strong></a>&nbsp;cao:do ứng suất l&ecirc;n bề mặt k&iacute;nh được &eacute;p lại l&agrave;m cho c&aacute;c mạch li&ecirc;n kết cực nhỏ được kết hợp với nhau tạo th&agrave;nh li&ecirc;n kết vững chắc hơn, gi&uacute;p cho v&aacute;ch k&iacute;nh cường lực chịu được rung chấn, sức gi&oacute; v&agrave; va đập mạnh.<br />
&ndash; Chịu nhiệt tốt:v&aacute;ch k&iacute;nh c&oacute; thể chịu được nhiệt độ rất cao ngay cả khi nhiệt độ thay đổi đột ngột khoảng 150 độ C th&igrave; k&iacute;nh cũng kh&ocirc;ng hề ảnh hưởng g&igrave;.<br />
&ndash; Gi&aacute; th&agrave;nh rẻ: v&aacute;ch k&iacute;nh gi&aacute; rẻhơn c&aacute;c loại v&aacute;ch truyền th&ocirc;ng như tường xi măng, gỗ, sắt, inox&hellip;<br />
&ndash; Thi c&ocirc;ng nhanh gọn: kh&ocirc;ng mất nhiều thời gian.</p>
', 1)
INSERT [dbo].[CongTrinhNoiBats] ([MaCT], [TenCT], [AnhDaiDien], [DiaChi], [Chitiet], [TrangThai]) VALUES (10, N'Công Trình 10', N'/Images/Products/cong-trinh/10.jpg', N'22 đường số 11 KDC Himlam Q7', N'<p><img src="/images/CongTrinhNoiBat/AnhNoiDung/16/1.jpg" style="width:650px" /></p>

<h2><strong>Cấu tạo cửa nh&ocirc;m k&iacute;nh</strong></h2>

<p>Cửa nh&ocirc;m k&iacute;nh đẹp hiện nay bao gồm 2 loại chủ yếu l&agrave; v&aacute;ch ngăn di động v&agrave; v&aacute;ch ngăn b&agrave;n l&agrave;m việc. Cấu tạo của v&aacute;ch ngăn n&agrave;y bao gồm 2 phần ch&iacute;nh: Phần khung v&aacute;ch l&agrave; nh&ocirc;m định h&igrave;nh bền chắc. B&ecirc;n trong l&agrave; k&iacute;nh chịu lực sang trọng v&agrave; hiện đại. Loại k&iacute;nh n&agrave;y được sử dụng kh&aacute; đa dạng về độ d&agrave;y, c&oacute; thể lựa chọn độ d&agrave;y k&iacute;nh từ 5mm đến 12mm ph&ugrave; hợp theo nhu cầu sử dụng.</p>

<h2><strong>ƯU ĐIỂM</strong></h2>

<p>&ndash; Độ an to&agrave;n cao: khi vỡ sẽ &iacute;t g&acirc;y s&aacute;t thương cho con người bởi k&iacute;nh cường lực khi vỡ ra sẽ tạo ra c&aacute;c mảnh vỡ nhỏ v&agrave; đều, kh&ocirc;ng sắc cạnh do đ&oacute; giảm thiểu khả năng g&acirc;y s&aacute;t thương.<br />
&ndash; C&oacute; t&iacute;nh chịu lực tốt:c&oacute; khả năng chịu lực cao gấp nhiều lần so với k&iacute;nh nổi thường c&ugrave;ng loại v&agrave; c&ugrave;ng độ d&agrave;y.<br />
&ndash; Kh&ocirc;ng bị che khuất tầm nh&igrave;n, kh&ocirc;ng gian sẽ trở n&ecirc;n tho&aacute;ng đ&atilde;ng hơn.<br />
&ndash; Độ bền&nbsp;<a href="http://buiphat.vn/cua-nhom-kinh-dep-231.html"><strong>mẫu cửa nh&ocirc;m k&iacute;nh</strong></a>&nbsp;cao:do ứng suất l&ecirc;n bề mặt k&iacute;nh được &eacute;p lại l&agrave;m cho c&aacute;c mạch li&ecirc;n kết cực nhỏ được kết hợp với nhau tạo th&agrave;nh li&ecirc;n kết vững chắc hơn, gi&uacute;p cho v&aacute;ch k&iacute;nh cường lực chịu được rung chấn, sức gi&oacute; v&agrave; va đập mạnh.<br />
&ndash; Chịu nhiệt tốt:v&aacute;ch k&iacute;nh c&oacute; thể chịu được nhiệt độ rất cao ngay cả khi nhiệt độ thay đổi đột ngột khoảng 150 độ C th&igrave; k&iacute;nh cũng kh&ocirc;ng hề ảnh hưởng g&igrave;.<br />
&ndash; Gi&aacute; th&agrave;nh rẻ: v&aacute;ch k&iacute;nh gi&aacute; rẻhơn c&aacute;c loại v&aacute;ch truyền th&ocirc;ng như tường xi măng, gỗ, sắt, inox&hellip;<br />
&ndash; Thi c&ocirc;ng nhanh gọn: kh&ocirc;ng mất nhiều thời gian.</p>
', 1)
INSERT [dbo].[CongTrinhNoiBats] ([MaCT], [TenCT], [AnhDaiDien], [DiaChi], [Chitiet], [TrangThai]) VALUES (11, N'Công Trình 11', N'/Images/Products/cong-trinh/11.jpg', N'01 đường số 1 Hoàng Quốc Việt Q7', N'     <img src="/images/CongTrinhNoiBat/AnhNoiDung/16/1.jpg" class="img-resposive center-block" width="650px" /><hr>
                              <img src="/images/CongTrinhNoiBat/AnhNoiDung/16/2.jpg" class="img-resposive center-block" width="650px" /><hr>
                              <img src="/images/CongTrinhNoiBat/AnhNoiDung/16/3.jpg" class="img-resposive center-block" width="650px" /><hr>
                              <img src="/images/CongTrinhNoiBat/AnhNoiDung/16/4.jpg" class="img-resposive center-block" width="650px" /><hr>
                              <img src="/images/CongTrinhNoiBat/AnhNoiDung/16/5.jpg" class="img-resposive center-block" width="650px" /><hr>
                              <img src="/images/CongTrinhNoiBat/AnhNoiDung/16/6.jpg" class="img-resposive center-block" width="650px" /><hr>
                              <img src="/images/CongTrinhNoiBat/AnhNoiDung/16/7.jpg" class="img-resposive center-block" width="650px" /><hr>                            ', 1)
INSERT [dbo].[CongTrinhNoiBats] ([MaCT], [TenCT], [AnhDaiDien], [DiaChi], [Chitiet], [TrangThai]) VALUES (12, N'Công Trình 12', N'/Images/Products/cong-trinh/12.jpg', N'Số 14 đường số 28, An Phú An Khánh, Q.2', N'     <img src="/images/CongTrinhNoiBat/AnhNoiDung/16/1.jpg" class="img-resposive center-block" width="650px" /><hr>
                              <img src="/images/CongTrinhNoiBat/AnhNoiDung/16/2.jpg" class="img-resposive center-block" width="650px" /><hr>
                              <img src="/images/CongTrinhNoiBat/AnhNoiDung/16/3.jpg" class="img-resposive center-block" width="650px" /><hr>
                              <img src="/images/CongTrinhNoiBat/AnhNoiDung/16/4.jpg" class="img-resposive center-block" width="650px" /><hr>
                              <img src="/images/CongTrinhNoiBat/AnhNoiDung/16/5.jpg" class="img-resposive center-block" width="650px" /><hr>
                              <img src="/images/CongTrinhNoiBat/AnhNoiDung/16/6.jpg" class="img-resposive center-block" width="650px" /><hr>
                              <img src="/images/CongTrinhNoiBat/AnhNoiDung/16/7.jpg" class="img-resposive center-block" width="650px" /><hr>                            ', 1)
INSERT [dbo].[CongTrinhNoiBats] ([MaCT], [TenCT], [AnhDaiDien], [DiaChi], [Chitiet], [TrangThai]) VALUES (13, N'Công Trình 13', N'/Images/Products/cong-trinh/13.jpg', N'Anh Hoàng TQK, đường Trần Quang Khải, Đà Lạt', N'     <img src="/images/CongTrinhNoiBat/AnhNoiDung/16/1.jpg" class="img-resposive center-block" width="650px" /><hr>
                              <img src="/images/CongTrinhNoiBat/AnhNoiDung/16/2.jpg" class="img-resposive center-block" width="650px" /><hr>
                              <img src="/images/CongTrinhNoiBat/AnhNoiDung/16/3.jpg" class="img-resposive center-block" width="650px" /><hr>
                              <img src="/images/CongTrinhNoiBat/AnhNoiDung/16/4.jpg" class="img-resposive center-block" width="650px" /><hr>
                              <img src="/images/CongTrinhNoiBat/AnhNoiDung/16/5.jpg" class="img-resposive center-block" width="650px" /><hr>
                              <img src="/images/CongTrinhNoiBat/AnhNoiDung/16/6.jpg" class="img-resposive center-block" width="650px" /><hr>
                              <img src="/images/CongTrinhNoiBat/AnhNoiDung/16/7.jpg" class="img-resposive center-block" width="650px" /><hr>                            ', 1)
INSERT [dbo].[CongTrinhNoiBats] ([MaCT], [TenCT], [AnhDaiDien], [DiaChi], [Chitiet], [TrangThai]) VALUES (14, N'Công Trình 14', N'/Images/Products/cong-trinh/14.jpg', N'Thửa 384 Đường 8A, KDC Trung Sơn, Bình Chánh', N'     <img src="/images/CongTrinhNoiBat/AnhNoiDung/16/1.jpg" class="img-resposive center-block" width="650px" /><hr>
                              <img src="/images/CongTrinhNoiBat/AnhNoiDung/16/2.jpg" class="img-resposive center-block" width="650px" /><hr>
                              <img src="/images/CongTrinhNoiBat/AnhNoiDung/16/3.jpg" class="img-resposive center-block" width="650px" /><hr>
                              <img src="/images/CongTrinhNoiBat/AnhNoiDung/16/4.jpg" class="img-resposive center-block" width="650px" /><hr>
                              <img src="/images/CongTrinhNoiBat/AnhNoiDung/16/5.jpg" class="img-resposive center-block" width="650px" /><hr>
                              <img src="/images/CongTrinhNoiBat/AnhNoiDung/16/6.jpg" class="img-resposive center-block" width="650px" /><hr>
                              <img src="/images/CongTrinhNoiBat/AnhNoiDung/16/7.jpg" class="img-resposive center-block" width="650px" /><hr>                            ', 1)
INSERT [dbo].[CongTrinhNoiBats] ([MaCT], [TenCT], [AnhDaiDien], [DiaChi], [Chitiet], [TrangThai]) VALUES (15, N'Công Trình 15', N'/Images/Products/cong-trinh/15.jpg', N'Lô A113 KDC Giả trí nghỉ dưỡng Sadeco, Lê Văn Lương, Q.7', N'     <img src="/images/CongTrinhNoiBat/AnhNoiDung/16/1.jpg" class="img-resposive center-block" width="650px" /><hr>
                              <img src="/images/CongTrinhNoiBat/AnhNoiDung/16/2.jpg" class="img-resposive center-block" width="650px" /><hr>
                              <img src="/images/CongTrinhNoiBat/AnhNoiDung/16/3.jpg" class="img-resposive center-block" width="650px" /><hr>
                              <img src="/images/CongTrinhNoiBat/AnhNoiDung/16/4.jpg" class="img-resposive center-block" width="650px" /><hr>
                              <img src="/images/CongTrinhNoiBat/AnhNoiDung/16/5.jpg" class="img-resposive center-block" width="650px" /><hr>
                              <img src="/images/CongTrinhNoiBat/AnhNoiDung/16/6.jpg" class="img-resposive center-block" width="650px" /><hr>
                              <img src="/images/CongTrinhNoiBat/AnhNoiDung/16/7.jpg" class="img-resposive center-block" width="650px" /><hr>                            ', 1)
SET IDENTITY_INSERT [dbo].[CongTrinhNoiBats] OFF
GO
SET IDENTITY_INSERT [dbo].[HangSanXuats] ON 

INSERT [dbo].[HangSanXuats] ([MaHang], [TenHang], [LinkWeb], [AnhDaiDien]) VALUES (1, N'Công Ty TNHH MTV Sản Xuất Cửa Á Châu', N'http://trangvangvietnam.com/listings/1187752869/cong_ty_tnhh_mtv_san_xuat_cua_a_chau.html', N'/Images/HangSXs/1.gif')
INSERT [dbo].[HangSanXuats] ([MaHang], [TenHang], [LinkWeb], [AnhDaiDien]) VALUES (2, N'Công Ty TNHH Vĩnh Khương', N'http://trangvangvietnam.com/listings/1187816397/cong_ty_tnhh_vinh_khuong.html', N'/Images/HangSXs/2.gif')
INSERT [dbo].[HangSanXuats] ([MaHang], [TenHang], [LinkWeb], [AnhDaiDien]) VALUES (3, N'Công Ty TNHH Thương Mại Sản Xuất Cửa Xây Dựng Alpha', N'http://trangvangvietnam.com/listings/1187808900/cong_ty_tnhh_thuong_mai_san_xuat_cua_xay_dung_alpha.html', N'/Images/HangSXs/3.gif')
INSERT [dbo].[HangSanXuats] ([MaHang], [TenHang], [LinkWeb], [AnhDaiDien]) VALUES (4, N'Công Ty Cổ Phần Xuất Nhập Khẩu Và Đầu Tư Xây Dựng Hoàng Anh', N'http://yellowpages.vnn.vn/lgs/1187764533/cong-ty-co-phan-xuat-nhap-khau-va-dau-tu-xay-dung-hoang-anh.html', N'/Images/HangSXs/4.gif')
INSERT [dbo].[HangSanXuats] ([MaHang], [TenHang], [LinkWeb], [AnhDaiDien]) VALUES (5, N'Công Ty Cổ Phần Thế Giới Cửa Châu Âu', N'http://yellowpages.vnn.vn/lgs/1187742729/cong-ty-co-phan-the-gioi-cua-chau-au.html', N'/Images/HangSXs/5.gif')
INSERT [dbo].[HangSanXuats] ([MaHang], [TenHang], [LinkWeb], [AnhDaiDien]) VALUES (6, N'Công Ty TNHH Sản Xuất Thương Mại Dịch Vụ Gia Lập', N'http://yellowpages.vnn.vn/lgs/1187754678/cong-ty-tnhh-san-xuat-thuong-mai-dich-vu-gia-lap.html', N'/Images/HangSXs/6.gif')
INSERT [dbo].[HangSanXuats] ([MaHang], [TenHang], [LinkWeb], [AnhDaiDien]) VALUES (7, N'Công Ty TNHH MTV Thương Mại Dịch Vụ Sơn Hải Thịnh', N'http://yellowpages.vnn.vn/lgs/1187775339/cong-ty-tnhh-mtv-thuong-mai-dich-vu-son-hai-thinh.html', N'/Images/HangSXs/7.gif')
INSERT [dbo].[HangSanXuats] ([MaHang], [TenHang], [LinkWeb], [AnhDaiDien]) VALUES (8, N'Cửa Cuốn, Cửa Kéo Kim Thành Phát', N'http://yellowpages.vnn.vn/lgs/1187785305/cua-cuon-cua-keo-kim-thanh-phat.html', N'/Images/HangSXs/8.gif')
INSERT [dbo].[HangSanXuats] ([MaHang], [TenHang], [LinkWeb], [AnhDaiDien]) VALUES (9, N'Công Ty TNHH Sản Xuất Thương Mại Và Xây Dựng Việt Phong', N'http://yellowpages.vnn.vn/lgs/1187774892/cong-ty-tnhh-san-xuat-thuong-mai-va-xay-dung-viet-phong.html', N'/Images/HangSXs/9.gif')
INSERT [dbo].[HangSanXuats] ([MaHang], [TenHang], [LinkWeb], [AnhDaiDien]) VALUES (10, N'Công Ty TNHH Ngân Trung Hiếu', N'http://yellowpages.vnn.vn/lgs/1187757273/cong-ty-tnhh-ngan-trung-hieu.html', N'/Images/HangSXs/10.gif')
INSERT [dbo].[HangSanXuats] ([MaHang], [TenHang], [LinkWeb], [AnhDaiDien]) VALUES (11, N'Công Ty Cổ Phần Đầu Tư Công Nghệ Phát Triển Việt Hưng', N'http://yellowpages.vnn.vn/lgs/1187734101/cong-ty-co-phan-dau-tu-cong-nghe-phat-trien-viet-hung.html', N'/Images/HangSXs/11.gif')
INSERT [dbo].[HangSanXuats] ([MaHang], [TenHang], [LinkWeb], [AnhDaiDien]) VALUES (12, N'Công Ty Cổ Phần Xây Dựng Thương Mại Phú An Gia
', N'http://yellowpages.vnn.vn/lgs/1187762451/cong-ty-co-phan-xay-dung-thuong-mai-phu-an-gia.html', N'/Images/HangSXs/12.gif')
INSERT [dbo].[HangSanXuats] ([MaHang], [TenHang], [LinkWeb], [AnhDaiDien]) VALUES (13, N'Công Ty TNHH MTV Aus Door', N'http://yellowpages.vnn.vn/lgs/1187781258/cong-ty-tnhh-mtv-aus-door.html', N'/Images/HangSXs/13.gif')
INSERT [dbo].[HangSanXuats] ([MaHang], [TenHang], [LinkWeb], [AnhDaiDien]) VALUES (14, N'Công Ty Cổ Phần Xây Dựng Và Đầu Tư Hải Lâm', N'http://yellowpages.vnn.vn/lgs/1187686809/cong-ty-co-phan-xay-dung-va-dau-tu-hai-lam.html', N'/Images/HangSXs/14.gif')
INSERT [dbo].[HangSanXuats] ([MaHang], [TenHang], [LinkWeb], [AnhDaiDien]) VALUES (15, N'Cơ Sở Sản Xuất - Cửa Cuốn - Cửa Kéo Đài Loan - Cửa Nhôm Kính - Minh Phước Chiến', N'http://yellowpages.vnn.vn/lgs/1187813658/co-so-san-xuat-cua-cuon-cua-keo-dai-loan-cua-nhom-kinh-minh-phuoc-chien.html', N'/Images/HangSXs/15.gif')
INSERT [dbo].[HangSanXuats] ([MaHang], [TenHang], [LinkWeb], [AnhDaiDien]) VALUES (16, N'Công Ty TNHH Đầu Tư Xây Dựng Sản Xuất Thương Mại An Phú Thịnh', N'http://yellowpages.vnn.vn/lgs/1187759937/cong-ty-tnhh-dau-tu-xay-dung-san-xuat-thuong-mai-an-phu-thinh.html', N'/Images/HangSXs/16.gif')
SET IDENTITY_INSERT [dbo].[HangSanXuats] OFF
GO
SET IDENTITY_INSERT [dbo].[HoaDonNhaps] ON 

INSERT [dbo].[HoaDonNhaps] ([MaHoaDon], [MaNhaPhanPhoi], [NgayTao], [KieuThanhToan], [MaTaiKhoan]) VALUES (1, 1, CAST(N'2020-10-20' AS Date), N'Trực tiếp', 1)
INSERT [dbo].[HoaDonNhaps] ([MaHoaDon], [MaNhaPhanPhoi], [NgayTao], [KieuThanhToan], [MaTaiKhoan]) VALUES (2, 1, CAST(N'2021-10-20' AS Date), N'Chuyển khoản', 1)
INSERT [dbo].[HoaDonNhaps] ([MaHoaDon], [MaNhaPhanPhoi], [NgayTao], [KieuThanhToan], [MaTaiKhoan]) VALUES (3, 2, CAST(N'2018-10-13' AS Date), N'Trực tiếp', 1)
INSERT [dbo].[HoaDonNhaps] ([MaHoaDon], [MaNhaPhanPhoi], [NgayTao], [KieuThanhToan], [MaTaiKhoan]) VALUES (4, 2, CAST(N'2021-10-13' AS Date), N'Trực tiếp', 1)
SET IDENTITY_INSERT [dbo].[HoaDonNhaps] OFF
GO
SET IDENTITY_INSERT [dbo].[HoaDons] ON 

INSERT [dbo].[HoaDons] ([MaHoaDon], [TrangThai], [NgayTao], [NgayDuyet], [TongGia], [TenKH], [GioiTinh], [Diachi], [Email], [SDT], [DiaChiGiaoHang], [ThoiGianGiaoHang]) VALUES (3, 1, CAST(N'2018-04-05T14:24:57.000' AS DateTime), CAST(N'2018-04-05T15:16:23.997' AS DateTime), CAST(8060000 AS Decimal(18, 0)), N'ĐỖ VĂN TÙNG', 0, N'Yên Mỹ - Hưng Yên', N'dovantunghy186@gmail.com', N'0973654074', N'Yên Mỹ- Hưng Yên', CAST(N'2018-04-07T00:00:00.000' AS DateTime))
INSERT [dbo].[HoaDons] ([MaHoaDon], [TrangThai], [NgayTao], [NgayDuyet], [TongGia], [TenKH], [GioiTinh], [Diachi], [Email], [SDT], [DiaChiGiaoHang], [ThoiGianGiaoHang]) VALUES (5, 1, CAST(N'2021-10-10T00:00:00.000' AS DateTime), CAST(N'2021-10-10T00:00:00.000' AS DateTime), CAST(5740000 AS Decimal(18, 0)), N'Trần Xuân Công', 0, N'Khoái Châu - Hung Yên', N'congxuantran2000@gmail.com', N'0847259142', N'Khoái Châu - Hung Yên', CAST(N'2021-10-20T00:00:00.000' AS DateTime))
INSERT [dbo].[HoaDons] ([MaHoaDon], [TrangThai], [NgayTao], [NgayDuyet], [TongGia], [TenKH], [GioiTinh], [Diachi], [Email], [SDT], [DiaChiGiaoHang], [ThoiGianGiaoHang]) VALUES (6, 0, CAST(N'2021-10-01T00:00:00.000' AS DateTime), CAST(N'2021-10-01T00:00:00.000' AS DateTime), CAST(5740000 AS Decimal(18, 0)), N'Ðinh Công Hi?n', 0, N'Son Tây - Hà N?i', N'congxuantran2000@gmail.com', N'0847259142', N'Son Tây - Hà N?i', CAST(N'2021-10-20T00:00:00.000' AS DateTime))
INSERT [dbo].[HoaDons] ([MaHoaDon], [TrangThai], [NgayTao], [NgayDuyet], [TongGia], [TenKH], [GioiTinh], [Diachi], [Email], [SDT], [DiaChiGiaoHang], [ThoiGianGiaoHang]) VALUES (7, 1, CAST(N'2021-09-10T00:00:00.000' AS DateTime), CAST(N'2021-09-10T00:00:00.000' AS DateTime), CAST(5740000 AS Decimal(18, 0)), N'Trần Xuân Công', 0, N'Khoái Châu - Hung Yên', N'congxuantran2000@gmail.com', N'0847259142', N'Khoái Châu - Hung Yên', CAST(N'2021-09-20T00:00:00.000' AS DateTime))
INSERT [dbo].[HoaDons] ([MaHoaDon], [TrangThai], [NgayTao], [NgayDuyet], [TongGia], [TenKH], [GioiTinh], [Diachi], [Email], [SDT], [DiaChiGiaoHang], [ThoiGianGiaoHang]) VALUES (8, 0, CAST(N'2021-11-10T00:00:00.000' AS DateTime), CAST(N'2021-11-10T00:00:00.000' AS DateTime), CAST(5740000 AS Decimal(18, 0)), N'Hà Mạnh Duy', 0, N'Vinh Yên - Vinh Phúc', N'congxuantran2000@gmail.com', N'0847259142', N'Vinh Yên - Vinh Phúc', CAST(N'2021-11-20T00:00:00.000' AS DateTime))
INSERT [dbo].[HoaDons] ([MaHoaDon], [TrangThai], [NgayTao], [NgayDuyet], [TongGia], [TenKH], [GioiTinh], [Diachi], [Email], [SDT], [DiaChiGiaoHang], [ThoiGianGiaoHang]) VALUES (9, 1, CAST(N'2021-09-10T00:00:00.000' AS DateTime), CAST(N'2021-09-10T00:00:00.000' AS DateTime), CAST(5740000 AS Decimal(18, 0)), N'Dương Văn Tuyên', 0, N'Phú Bình - Thái Nguyên', N'congxuantran2000@gmail.com', N'0847259142', N'Phú Bình - Thái Nguyên', CAST(N'2021-09-20T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[HoaDons] OFF
GO
SET IDENTITY_INSERT [dbo].[KhachHangs] ON 

INSERT [dbo].[KhachHangs] ([Id], [TenKH], [GioiTinh], [DiaChi], [SDT], [Email]) VALUES (0, N'Admin Nova', 0, N'HÀ NỘI', N'012345678', N'shopthethaonova@gmail.com')
INSERT [dbo].[KhachHangs] ([Id], [TenKH], [GioiTinh], [DiaChi], [SDT], [Email]) VALUES (1, N'ưerwer', 0, N'ưerewr', N'2434', N'ưerewrewr')
INSERT [dbo].[KhachHangs] ([Id], [TenKH], [GioiTinh], [DiaChi], [SDT], [Email]) VALUES (2, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[KhachHangs] ([Id], [TenKH], [GioiTinh], [DiaChi], [SDT], [Email]) VALUES (3, N'sdfdsf', 0, N'sdfdf', N'324234234', N'sdfsdfsdf@gmail.com')
INSERT [dbo].[KhachHangs] ([Id], [TenKH], [GioiTinh], [DiaChi], [SDT], [Email]) VALUES (4, N'trịnh quang trung', 0, N'luong bag', N'09666226444', N'trinhquangtrung375@gmail.com')
INSERT [dbo].[KhachHangs] ([Id], [TenKH], [GioiTinh], [DiaChi], [SDT], [Email]) VALUES (5, N'Lê Văn Long', 0, N'Yên Mỹ', N'0973654074', N'dovantunghy186@gmail.com')
INSERT [dbo].[KhachHangs] ([Id], [TenKH], [GioiTinh], [DiaChi], [SDT], [Email]) VALUES (6, N'ĐỖ VĂN TÙNG', 0, N'Yên Mỹ - Hưng Yên', N'0973654074', N'dovantunghy186@gmail.com')
SET IDENTITY_INSERT [dbo].[KhachHangs] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiTaiKhoans] ON 

INSERT [dbo].[LoaiTaiKhoans] ([MaLoai], [TenLoai], [MoTa]) VALUES (1, N'Admin', NULL)
INSERT [dbo].[LoaiTaiKhoans] ([MaLoai], [TenLoai], [MoTa]) VALUES (2, N'KhachHang', NULL)
INSERT [dbo].[LoaiTaiKhoans] ([MaLoai], [TenLoai], [MoTa]) VALUES (3, N'QuanLy', NULL)
SET IDENTITY_INSERT [dbo].[LoaiTaiKhoans] OFF
GO
SET IDENTITY_INSERT [dbo].[NhaPhanPhois] ON 

INSERT [dbo].[NhaPhanPhois] ([MaNhaPhanPhoi], [TenNhaPhanPhoi], [DiaChi], [SoDienThoai], [Fax], [MoTa]) VALUES (1, N'HưngTín', N'Số 19 ngõ 180 Hoàng Quốc Viêt-Bắc Từ Liêm-Hà Nôi', N'0986557982', N'0986557982', NULL)
INSERT [dbo].[NhaPhanPhois] ([MaNhaPhanPhoi], [TenNhaPhanPhoi], [DiaChi], [SoDienThoai], [Fax], [MoTa]) VALUES (2, N'Hữu Huy', N'Lô E22 Khu Đấu Giá 3ha, Bắc Từ Liêm, Hà Nội', N'094 717 85 82', N'094 717 85 82', NULL)
INSERT [dbo].[NhaPhanPhois] ([MaNhaPhanPhoi], [TenNhaPhanPhoi], [DiaChi], [SoDienThoai], [Fax], [MoTa]) VALUES (3, N'Trung Thành', N'307, Nghĩa Tân, Quận Cầu Giấy, Thành Phố Hà Nội, Nghĩa Tân, Cầu Giấy, Hà Nội', N'024 3756 5599', N'024 3756 5599', NULL)
INSERT [dbo].[NhaPhanPhois] ([MaNhaPhanPhoi], [TenNhaPhanPhoi], [DiaChi], [SoDienThoai], [Fax], [MoTa]) VALUES (4, N'Nhôm Kính Tâm Thẩm', N'133 Hồ Ngọc Lân, Kinh Bắc, Bắc Ninh, 790000', N'091 733 79 98', N'091 733 79 98091 733 79 98', NULL)
INSERT [dbo].[NhaPhanPhois] ([MaNhaPhanPhoi], [TenNhaPhanPhoi], [DiaChi], [SoDienThoai], [Fax], [MoTa]) VALUES (5, N'Nhôm Kính TBVINA', N'347 Hoàng Quốc Việt, Nghĩa Tân, Cầu Giấy, Hà Nội', N'0904 664 188', N'0904 664 188', NULL)
SET IDENTITY_INSERT [dbo].[NhaPhanPhois] OFF
GO
SET IDENTITY_INSERT [dbo].[QuangCaos] ON 

INSERT [dbo].[QuangCaos] ([Id], [AnhDaiDien], [LinkQuangCao], [MoTa]) VALUES (1, N'/Images/QuangCao/ads-02.jpg', NULL, NULL)
INSERT [dbo].[QuangCaos] ([Id], [AnhDaiDien], [LinkQuangCao], [MoTa]) VALUES (2, N'/Images/QuangCao/ads-03.jpg', NULL, NULL)
INSERT [dbo].[QuangCaos] ([Id], [AnhDaiDien], [LinkQuangCao], [MoTa]) VALUES (3, N'/Images/QuangCao/ads-05.jpg', NULL, NULL)
INSERT [dbo].[QuangCaos] ([Id], [AnhDaiDien], [LinkQuangCao], [MoTa]) VALUES (4, N'/Images/QuangCao/ads-08.jpg', NULL, NULL)
SET IDENTITY_INSERT [dbo].[QuangCaos] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPhams] ON 

INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (47, 51, N'TẤM LIỀN SÓNG VUÔNG CB', N'/Images/Products/autsdoor/tam_lien/Austroll-2.jpg', CAST(1050000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, N'Thân cửa Austroll dạng tấm liền với dây Polyglide ở hai bên giúp giảm tối đa ma sát và tiếng ồn khi vận hành cửa. Kết hợp cùng công nghệ truyền động Austmatic bảo đảm sự an toàn và an ninh cao nhất cho người sử dụng.', NULL, 100, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (50, 51, N'TẤM LIỀN SÓNG VUÔNG AP', N'/Images/Products/autsdoor/tam_lien/seri-2.jpg', CAST(880000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, N'Thân cửa Austroll dạng tấm liền với dây Polyglide ở hai bên giúp giảm tối đa ma sát và tiếng ồn khi vận hành cửa. Kết hợp cùng công nghệ truyền động Austmatic bảo đảm sự an toàn và an ninh cao nhất cho người sử dụng.', NULL, 100, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (51, 51, N'TẤM LIỀN SÓNG VUÔNG TM', N'/Images/Products/autsdoor/tam_lien/tam-lien2.JPG', CAST(720000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, N'Vật liệu thân cửa: Nan nhôm hợp kim A 6063 T5 (Nan kép H50A, H50B) Nan H50B có vách tăng cứng. Độ dày: 1.5mm (+-5%)', N'Bề mặt sơn: Sơn tĩnh điện bằng bột sơn ngoài trời cao cấp của hãng Tiger Drylac, CH Áo; Mầu sắc: Cafe ( #3) – Bảo hành 5 năm; Bịt đầu nan: Nhựa PA; Pully: Kiểu G bằng nhựa PA; Thanh đáy: TD130A sơn bột tĩnh điện', 101, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (52, 49, N'KHE THOÁNG CHỐNG BÃO HURRI 50', N'/Images/Products/autsdoor/khe_thoang/chong-bao.png', CAST(3000000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, N'Vật liệu thân cửa: Nan nhôm hợp kim A 6063 T5 (Nan kép H50A, H50B) Nan H50B có vách tăng cứng. Độ dày: 1.5mm (+-5%)', N'Bề mặt sơn: Sơn tĩnh điện bằng bột sơn ngoài trời cao cấp của hãng Tiger Drylac, CH Áo; Mầu sắc: Cafe ( #3) – Bảo hành 5 năm; Bịt đầu nan: Nhựa PA; Pully: Kiểu G bằng nhựa PA; Thanh đáy: TD130A sơn bột tĩnh điện', 10, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (53, 49, N'KHE THOÁNG NAN A50 DÀY 1.3mm', N'/Images/Products/autsdoor/khe_thoang/khe-thoang-a5.jpg', CAST(2380000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, N'Vật liệu thân cửa: Nan nhôm hợp kim A 6063 T5 (Nan kép H50A, H50B) Nan H50B có vách tăng cứng. Độ dày: 1.5mm (+-5%)', N'Bề mặt sơn: Sơn tĩnh điện bằng bột sơn ngoài trời cao cấp của hãng Tiger Drylac, CH Áo; Mầu sắc: Cafe ( #3) – Bảo hành 5 năm; Bịt đầu nan: Nhựa PA; Pully: Kiểu G bằng nhựa PA; Thanh đáy: TD130A sơn bột tĩnh điện', 149, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (55, 49, N'KHE THOÁNG NAN A48I DÀY 1.1 mm', N'/Images/Products/autsdoor/khe_thoang/cua-cuon-austdoor-2.jpg', CAST(2000000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, N'Vật liệu thân cửa: Nan nhôm hợp kim A 6063 T5 (Nan kép H50A, H50B) Nan H50B có vách tăng cứng. Độ dày: 1.5mm (+-5%)', N'Bề mặt sơn: Sơn tĩnh điện bằng bột sơn ngoài trời cao cấp của hãng Tiger Drylac, CH Áo; Mầu sắc: Cafe ( #3) – Bảo hành 5 năm; Bịt đầu nan: Nhựa PA; Pully: Kiểu G bằng nhựa PA; Thanh đáy: TD130A sơn bột tĩnh điện', 37, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (58, 49, N'KHE THOÁNG NAN A49I DÀY 0.9-1.1 mm', N'/Images/Products/autsdoor/khe_thoang/49i.jpg', CAST(1500000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, N'Vật liệu thân cửa: Nan nhôm hợp kim A 6063 T5 (Nan kép H50A, H50B) Nan H50B có vách tăng cứng. Độ dày: 1.5mm (+-5%)', N'Bề mặt sơn: Sơn tĩnh điện bằng bột sơn ngoài trời cao cấp của hãng Tiger Drylac, CH Áo; Mầu sắc: Cafe ( #3) – Bảo hành 5 năm; Bịt đầu nan: Nhựa PA; Pully: Kiểu G bằng nhựa PA; Thanh đáy: TD130A sơn bột tĩnh điện', 4, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (59, 49, N'KHE THOÁNG SIÊU THOÁNG C70', N'/Images/Products/autsdoor/khe_thoang/C70.PNG', CAST(2980000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, N'Vật liệu thân cửa: Nan nhôm hợp kim A 6063 T5 (Nan kép H50A, H50B) Nan H50B có vách tăng cứng. Độ dày: 1.5mm (+-5%)', N'Bề mặt sơn: Sơn tĩnh điện bằng bột sơn ngoài trời cao cấp của hãng Tiger Drylac, CH Áo; Mầu sắc: Cafe ( #3) – Bảo hành 5 năm; Bịt đầu nan: Nhựa PA; Pully: Kiểu G bằng nhựa PA; Thanh đáy: TD130A sơn bột tĩnh điện', 6, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (60, 49, N'KHE THOÁNG SIÊU ÊM SUPERA -S50i', N'/Images/Products/autsdoor/khe_thoang/sieu-em.jpg', CAST(2480000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, N'Vật liệu thân cửa: Nan nhôm hợp kim A 6063 T5 (Nan kép H50A, H50B) Nan H50B có vách tăng cứng. Độ dày: 1.5mm (+-5%)', N'Bề mặt sơn: Sơn tĩnh điện bằng bột sơn ngoài trời cao cấp của hãng Tiger Drylac, CH Áo; Mầu sắc: Cafe ( #3) – Bảo hành 5 năm; Bịt đầu nan: Nhựa PA; Pully: Kiểu G bằng nhựa PA; Thanh đáy: TD130A sơn bột tĩnh điện', 65, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (61, 49, N'KHE THOÁNG SIÊU ÊM SUPERA -S51i', N'/Images/Products/autsdoor/khe_thoang/s51i.png', CAST(2280000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 25, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (62, 52, N'CỬA TRONG SUỐT AUSTVISION 1', N'/Images/Products/autsdoor/trong_suot/trong-1.jpg', CAST(3500000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, N'Tầm nhìn được mở rộng: AUSTVISON được làm bằng Polycarbonate trong suốt gần như thủy tinh, ánh sáng có thể xuyên qua, ngay cả khi bạn đã đóng cửa sản phẩm của bạn vẫn được khách hàng chú ý đến.
Vật liệu: Polycarbonate siêu bền là một trong những vật liệu trong suốt cao cấp giải pháp tối ưu để lấy sáng, mà vẫn giữ được sự bền đẹp chắc chắn vì Polycarbonate có khả năng chịu được sự va đập cường độ cao tương đương 280 lần so với kính, có khả năng chịu nhiệt độ tốt (từ -40OC đến +120OC), chống lại tác hại của tia cực tím (UV) và là vật liệu không bắt lửa.', N'Thân cửa: Nan hợp kim nhôm tiêu chuẩn 6063, kết hợp với nan Polycabonate  kích thước: 330mm x 100mm;
Kích thước tấm thân cửa/độ dầy nan: Độ dày nhôm 1.2mm ± 5%;
Màu sắc: AL#1, AL#6 + nan nhựa trong suốt;
Dây polyglide: Loại 1;
Kiểu lắp ghép lỗ thoáng: Đục hàng lỗ ovan trên nan nhôm;
Gioong giảm chấn: Bằng nhựa PVC;', 74, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (63, 52, N'CỬA TRONG SUỐT AUSTVISION 2', N'/Images/Products/autsdoor/trong_suot/trong-2.jpg', CAST(3950000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, N'Tầm nhìn được mở rộng: AUSTVISON được làm bằng Polycarbonate trong suốt gần như thủy tinh, ánh sáng có thể xuyên qua, ngay cả khi bạn đã đóng cửa sản phẩm của bạn vẫn được khách hàng chú ý đến.
Vật liệu: Polycarbonate siêu bền là một trong những vật liệu trong suốt cao cấp giải pháp tối ưu để lấy sáng, mà vẫn giữ được sự bền đẹp chắc chắn vì Polycarbonate có khả năng chịu được sự va đập cường độ cao tương đương 280 lần so với kính, có khả năng chịu nhiệt độ tốt (từ -40OC đến +120OC), chống lại tác hại của tia cực tím (UV) và là vật liệu không bắt lửa.', N'Thân cửa: Nan hợp kim nhôm tiêu chuẩn 6063, kết hợp với nan Polycabonate  kích thước: 330mm x 100mm;
Kích thước tấm thân cửa/độ dầy nan: Độ dày nhôm 1.2mm ± 5%;
Màu sắc: AL#1, AL#6 + nan nhựa trong suốt;
Dây polyglide: Loại 1;
Kiểu lắp ghép lỗ thoáng: Đục hàng lỗ ovan trên nan nhôm;
Gioong giảm chấn: Bằng nhựa PVC;', 85, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (64, 50, N'CỬA TRƯỢT TRẦN OVERHEAD', N'/Images/Products/autsdoor/truot_tran/overhead-3_1476756735.jpg', CAST(4320000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, N'Cửa Cuốn Trượt Trần OverHead
Sự kết hợp giữa phong cách Châu Âu và Công nghệ truyền động hiện đại
Cửa cuốn trượt trần Austdoor với bề mặt thân cửa được lập định hình các ô nổi kết hợp cùng các màu sắc làm giảm sự thô cứng của vật liệu, được truyền động bởi tính năng ăn toàn sử dụng Austmatic, cửa Overhead là sự kết hợp hoàn hảo giữa phong cách sang trọng và công nghệ hiện đại.
Với cơ chế vận hành trượt trần giúp tiết kiệm chiều cao trần nhà, bề mặt thân cửa dược dập định hình các ô nổi kết hợp cùng các màu sắc trang nhã. Overhead là dòng sản phẩm cửa cuốn được ưa chuộng tại các nước Châu Âu được thiết kế chuyên dụng dành cho các Gara ô tô có chiều cao trần hạn chế.
- Vận hành trượt trần giúp TIẾT KIỆM CHIỀU CAO trần nhà.
- Thân cửa thiết kế SANG TRỌNG.
- Màu sắc TRANG NHÃ.
- Nhiều tính năng AN TOÀN: Austmatic, ARC, còi báo động, UPS, mạch báo sáng.', N'Vật liệu thân cửa: Tấm cửa bằng thép 2 lớp, giữa có lớp xốp;
Độ dày: kích thước tamas360 - 550mm, dày 40mm;
kích thước tối thiều: Hpb 1.7m x Wpb 2.0m;
Kích thước tối đa: Hpb 2.5 m x Wpb 4.5 m;
Màu sắc : #1, #8;
Bề mặt : Ô Huỳnh / Vân Nổi;
Bộ tời và Ray: DC/ Ray đồng bộ theo cửa;
Tốc độ đóng mở: 12 - 15cm/giây;', 62, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (65, 53, N'CỬA CUỐN CHỐNG CHÁY', N'/Images/Products/autsdoor/af100.jpg', CAST(4320000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, N'CỬA CHỐNG CHÁY là dòng sản phẩm áp dụng cho các công trình yêu cầu về phòng cháy chữa cháy, ứng dụng hầu hết cho các công trình chung cư cao tầng, nhà xưởng .... Dòng sản phẩm này đang được công ty quản lý theo tiêu chuẩn chất lượng ISO 9001:2008, và đã được kiểm định bởi Cục Cảnh sát phòng cháy, chữa cháy và cứu nạn, cứu hộ, đảm bảo hàng chuẩn về mẫu mã, chất lượng sản phẩm cho Quý khách hàng.', N'+) Khung cửa: Được chế tạo bằng thép dày 1.0mm÷2.0mm (Trong giấy kiểm định phòng cháy cho cửa 60 phút thì độ dày khung là 1.0mm).
     +) Cánh cửa: Độ dày thép làm cánh dày 0.8mm÷1.0mm, bề dày của cánh là 50mm, bên trong được nhồi giấy Homneycomb (Giấy tổ ong).
     +) Bậu cửa (Door Sill): Được chế tạo bằng INOX 304 dày 0.8mm÷1.0mm (Có thể có hoặc không có, tùy vào vị trị trí lắp đặt và yêu cầu của chủ đầu tư).
     +) Vật tư đi kèm theo: Khóa cửa, Tay co thủy lực, Ô kính chống cháy, Chốt âm trên và dưới, Bản lề, Gioăng dán khung và cánh.', 33, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (66, 10, N'CỬA LỖ THOÁNG 6502', N'/Images/Products/BOSSDOOR/lothoang-6502.jpg', CAST(2750000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, N'Được kết hợp bởi 2 loại nan cửa tạo thành​ 1 module. Nan cửa cuốn lỗ thoáng BossDoor® 6502 được sản xuất trên dây truyền công nghệ hiện đại được nhập khẩu từ Đức và Thụy Sỹ. Nguyên liệu sản xuất từ hợp kim nhôm 6063T5 bền bỉ theo thời gian. Bề mặt của thanh nan cửa cuốn được sơn tĩnh điện trên hệ thống tự động hoàn toàn. Khi ta nhìn chếch 45º bề mặt sơn ta thấy có các hạt chấm trắng lấp lánh đó là hạt Metalic và Polyste-H2, các thành phần này vừa tạo sự khác biệt và có tác dụng về thẩm mỹ, đặc biệt tăng độ cứng bề mặt sơn của thanh nan cửa và chống phai màu.', N'– Sản xuất bằng hợp kim nhôm 6063T5;
– Độ dày nhôm từ 1.1 – 1.5mm ±5%;
– Kích thước lắp đặt an toàn: Rộng x Cao: 6.0m x 6.0m;
– Kích thước lỗ thoáng : 50 x 6 mm;
– Hệ thống zoăng giảm chấn giúp cửa vận hành cực kỳ êm trong quá trình lên và xuống giảm 80% tiếng ồn, chống trầy xước.
– Màu sơn tiêu chuẩn: #1/17 : ghi bóng , #3/17: be hồng, #5/17: nâu đỏ;
– Bảo hành bề mặt sơn theo tiêu chuẩn của hãng', 4, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (67, 10, N'CỬA LỖ THOÁNG 6501', N'/Images/Products/BOSSDOOR/sieuthoang-6051.jpg', CAST(2980000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, N'Được kết hợp bởi 2 loại nan cửa tạo thành​ 1 module. Nan cửa cuốn lỗ thoáng BossDoor® 6502 được sản xuất trên dây truyền công nghệ hiện đại được nhập khẩu từ Đức và Thụy Sỹ. Nguyên liệu sản xuất từ hợp kim nhôm 6063T5 bền bỉ theo thời gian. Bề mặt của thanh nan cửa cuốn được sơn tĩnh điện trên hệ thống tự động hoàn toàn. Khi ta nhìn chếch 45º bề mặt sơn ta thấy có các hạt chấm trắng lấp lánh đó là hạt Metalic và Polyste-H2, các thành phần này vừa tạo sự khác biệt và có tác dụng về thẩm mỹ, đặc biệt tăng độ cứng bề mặt sơn của thanh nan cửa và chống phai màu.', N'– Sản xuất bằng hợp kim nhôm 6063T5;
– Độ dày nhôm từ 1.1 – 1.5mm ±5%;
– Kích thước lắp đặt an toàn: Rộng x Cao: 6.0m x 6.0m;
– Kích thước lỗ thoáng : 50 x 6 mm;
– Hệ thống zoăng giảm chấn giúp cửa vận hành cực kỳ êm trong quá trình lên và xuống giảm 80% tiếng ồn, chống trầy xước.
– Màu sơn tiêu chuẩn: #1/17 : ghi bóng , #3/17: be hồng, #5/17: nâu đỏ;
– Bảo hành bề mặt sơn theo tiêu chuẩn của hãng', 35, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (68, 10, N'CỬA SIÊU THOÁNG 6801', N'/Images/Products/BOSSDOOR/6801.jpg', CAST(2650000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, N'Được kết hợp bởi 2 loại nan cửa tạo thành​ 1 module. Nan cửa cuốn lỗ thoáng BossDoor® 6502 được sản xuất trên dây truyền công nghệ hiện đại được nhập khẩu từ Đức và Thụy Sỹ. Nguyên liệu sản xuất từ hợp kim nhôm 6063T5 bền bỉ theo thời gian. Bề mặt của thanh nan cửa cuốn được sơn tĩnh điện trên hệ thống tự động hoàn toàn. Khi ta nhìn chếch 45º bề mặt sơn ta thấy có các hạt chấm trắng lấp lánh đó là hạt Metalic và Polyste-H2, các thành phần này vừa tạo sự khác biệt và có tác dụng về thẩm mỹ, đặc biệt tăng độ cứng bề mặt sơn của thanh nan cửa và chống phai màu.', N'– Sản xuất bằng hợp kim nhôm 6063T5;
– Độ dày nhôm từ 1.1 – 1.5mm ±5%;
– Kích thước lắp đặt an toàn: Rộng x Cao: 6.0m x 6.0m;
– Kích thước lỗ thoáng : 50 x 6 mm;
– Hệ thống zoăng giảm chấn giúp cửa vận hành cực kỳ êm trong quá trình lên và xuống giảm 80% tiếng ồn, chống trầy xước.
– Màu sơn tiêu chuẩn: #1/17 : ghi bóng , #3/17: be hồng, #5/17: nâu đỏ;
– Bảo hành bề mặt sơn theo tiêu chuẩn của hãng', 47, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (69, 10, N'CỬA SIÊU THOÁNG 6802', N'/Images/Products/BOSSDOOR/6802.jpg', CAST(2550000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, N'Được kết hợp bởi 2 loại nan cửa tạo thành​ 1 module. Nan cửa cuốn lỗ thoáng BossDoor® 6502 được sản xuất trên dây truyền công nghệ hiện đại được nhập khẩu từ Đức và Thụy Sỹ. Nguyên liệu sản xuất từ hợp kim nhôm 6063T5 bền bỉ theo thời gian. Bề mặt của thanh nan cửa cuốn được sơn tĩnh điện trên hệ thống tự động hoàn toàn. Khi ta nhìn chếch 45º bề mặt sơn ta thấy có các hạt chấm trắng lấp lánh đó là hạt Metalic và Polyste-H2, các thành phần này vừa tạo sự khác biệt và có tác dụng về thẩm mỹ, đặc biệt tăng độ cứng bề mặt sơn của thanh nan cửa và chống phai màu.', N'– Sản xuất bằng hợp kim nhôm 6063T5;
– Độ dày nhôm từ 1.1 – 1.5mm ±5%;
– Kích thước lắp đặt an toàn: Rộng x Cao: 6.0m x 6.0m;
– Kích thước lỗ thoáng : 50 x 6 mm;
– Hệ thống zoăng giảm chấn giúp cửa vận hành cực kỳ êm trong quá trình lên và xuống giảm 80% tiếng ồn, chống trầy xước.
– Màu sơn tiêu chuẩn: #1/17 : ghi bóng , #3/17: be hồng, #5/17: nâu đỏ;
– Bảo hành bề mặt sơn theo tiêu chuẩn của hãng', 96, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (71, 10, N'CỬA SIÊU THOÁNG 6803', N'/Images/Products/BOSSDOOR/6803.jpg', CAST(2480000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 201, 1, N'Được kết hợp bởi 2 loại nan cửa tạo thành​ 1 module. Nan cửa cuốn lỗ thoáng BossDoor® 6502 được sản xuất trên dây truyền công nghệ hiện đại được nhập khẩu từ Đức và Thụy Sỹ. Nguyên liệu sản xuất từ hợp kim nhôm 6063T5 bền bỉ theo thời gian. Bề mặt của thanh nan cửa cuốn được sơn tĩnh điện trên hệ thống tự động hoàn toàn. Khi ta nhìn chếch 45º bề mặt sơn ta thấy có các hạt chấm trắng lấp lánh đó là hạt Metalic và Polyste-H2, các thành phần này vừa tạo sự khác biệt và có tác dụng về thẩm mỹ, đặc biệt tăng độ cứng bề mặt sơn của thanh nan cửa và chống phai màu.', N'– Sản xuất bằng hợp kim nhôm 6063T5;
– Độ dày nhôm từ 1.1 – 1.5mm ±5%;
– Kích thước lắp đặt an toàn: Rộng x Cao: 6.0m x 6.0m;
– Kích thước lỗ thoáng : 50 x 6 mm;
– Hệ thống zoăng giảm chấn giúp cửa vận hành cực kỳ êm trong quá trình lên và xuống giảm 80% tiếng ồn, chống trầy xước.
– Màu sơn tiêu chuẩn: #1/17 : ghi bóng , #3/17: be hồng, #5/17: nâu đỏ;
– Bảo hành bề mặt sơn theo tiêu chuẩn của hãng', 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (72, 11, N'CỬA LỖ THOÁNG CD 100', N'/Images/Products/BOSSDOOR/CD100.jpg', CAST(3980000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, N'Được kết hợp bởi 2 loại nan cửa tạo thành​ 1 module. Nan cửa cuốn lỗ thoáng BossDoor® 6502 được sản xuất trên dây truyền công nghệ hiện đại được nhập khẩu từ Đức và Thụy Sỹ. Nguyên liệu sản xuất từ hợp kim nhôm 6063T5 bền bỉ theo thời gian. Bề mặt của thanh nan cửa cuốn được sơn tĩnh điện trên hệ thống tự động hoàn toàn. Khi ta nhìn chếch 45º bề mặt sơn ta thấy có các hạt chấm trắng lấp lánh đó là hạt Metalic và Polyste-H2, các thành phần này vừa tạo sự khác biệt và có tác dụng về thẩm mỹ, đặc biệt tăng độ cứng bề mặt sơn của thanh nan cửa và chống phai màu.', N'– Sản xuất bằng hợp kim nhôm 6063T5;
– Độ dày nhôm từ 1.1 – 1.5mm ±5%;
– Kích thước lắp đặt an toàn: Rộng x Cao: 6.0m x 6.0m;
– Kích thước lỗ thoáng : 50 x 6 mm;
– Hệ thống zoăng giảm chấn giúp cửa vận hành cực kỳ êm trong quá trình lên và xuống giảm 80% tiếng ồn, chống trầy xước.
– Màu sơn tiêu chuẩn: #1/17 : ghi bóng , #3/17: be hồng, #5/17: nâu đỏ;
– Bảo hành bề mặt sơn theo tiêu chuẩn của hãng', 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (73, 11, N'CỬA LỖ THOÁNG CD 80IS', N'/Images/Products/BOSSDOOR/80is.png', CAST(3500000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, N'Được kết hợp bởi 2 loại nan cửa tạo thành​ 1 module. Nan cửa cuốn lỗ thoáng BossDoor® 6502 được sản xuất trên dây truyền công nghệ hiện đại được nhập khẩu từ Đức và Thụy Sỹ. Nguyên liệu sản xuất từ hợp kim nhôm 6063T5 bền bỉ theo thời gian. Bề mặt của thanh nan cửa cuốn được sơn tĩnh điện trên hệ thống tự động hoàn toàn. Khi ta nhìn chếch 45º bề mặt sơn ta thấy có các hạt chấm trắng lấp lánh đó là hạt Metalic và Polyste-H2, các thành phần này vừa tạo sự khác biệt và có tác dụng về thẩm mỹ, đặc biệt tăng độ cứng bề mặt sơn của thanh nan cửa và chống phai màu.', N'– Sản xuất bằng hợp kim nhôm 6063T5;
– Độ dày nhôm từ 1.1 – 1.5mm ±5%;
– Kích thước lắp đặt an toàn: Rộng x Cao: 6.0m x 6.0m;
– Kích thước lỗ thoáng : 50 x 6 mm;
– Hệ thống zoăng giảm chấn giúp cửa vận hành cực kỳ êm trong quá trình lên và xuống giảm 80% tiếng ồn, chống trầy xước.
– Màu sơn tiêu chuẩn: #1/17 : ghi bóng , #3/17: be hồng, #5/17: nâu đỏ;
– Bảo hành bề mặt sơn theo tiêu chuẩn của hãng', 0, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (74, 12, N'CỬA LỖ THOÁNG 4301', N'/Images/Products/BOSSDOOR/4301.png', CAST(2980000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 201, 1, N'Được kết hợp bởi 2 loại nan cửa tạo thành​ 1 module. Nan cửa cuốn lỗ thoáng BossDoor® 6502 được sản xuất trên dây truyền công nghệ hiện đại được nhập khẩu từ Đức và Thụy Sỹ. Nguyên liệu sản xuất từ hợp kim nhôm 6063T5 bền bỉ theo thời gian. Bề mặt của thanh nan cửa cuốn được sơn tĩnh điện trên hệ thống tự động hoàn toàn. Khi ta nhìn chếch 45º bề mặt sơn ta thấy có các hạt chấm trắng lấp lánh đó là hạt Metalic và Polyste-H2, các thành phần này vừa tạo sự khác biệt và có tác dụng về thẩm mỹ, đặc biệt tăng độ cứng bề mặt sơn của thanh nan cửa và chống phai màu.', N'– Sản xuất bằng hợp kim nhôm 6063T5;
– Độ dày nhôm từ 1.1 – 1.5mm ±5%;
– Kích thước lắp đặt an toàn: Rộng x Cao: 6.0m x 6.0m;
– Kích thước lỗ thoáng : 50 x 6 mm;
– Hệ thống zoăng giảm chấn giúp cửa vận hành cực kỳ êm trong quá trình lên và xuống giảm 80% tiếng ồn, chống trầy xước.
– Màu sơn tiêu chuẩn: #1/17 : ghi bóng , #3/17: be hồng, #5/17: nâu đỏ;
– Bảo hành bề mặt sơn theo tiêu chuẩn của hãng', 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (75, 12, N'CỬA LỖ THOÁNG 5201', N'/Images/Products/BOSSDOOR/5201.png', CAST(2600000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 201, 1, N'Được kết hợp bởi 2 loại nan cửa tạo thành​ 1 module. Nan cửa cuốn lỗ thoáng BossDoor® 6502 được sản xuất trên dây truyền công nghệ hiện đại được nhập khẩu từ Đức và Thụy Sỹ. Nguyên liệu sản xuất từ hợp kim nhôm 6063T5 bền bỉ theo thời gian. Bề mặt của thanh nan cửa cuốn được sơn tĩnh điện trên hệ thống tự động hoàn toàn. Khi ta nhìn chếch 45º bề mặt sơn ta thấy có các hạt chấm trắng lấp lánh đó là hạt Metalic và Polyste-H2, các thành phần này vừa tạo sự khác biệt và có tác dụng về thẩm mỹ, đặc biệt tăng độ cứng bề mặt sơn của thanh nan cửa và chống phai màu.', N'– Sản xuất bằng hợp kim nhôm 6063T5;
– Độ dày nhôm từ 1.1 – 1.5mm ±5%;
– Kích thước lắp đặt an toàn: Rộng x Cao: 6.0m x 6.0m;
– Kích thước lỗ thoáng : 50 x 6 mm;
– Hệ thống zoăng giảm chấn giúp cửa vận hành cực kỳ êm trong quá trình lên và xuống giảm 80% tiếng ồn, chống trầy xước.
– Màu sơn tiêu chuẩn: #1/17 : ghi bóng , #3/17: be hồng, #5/17: nâu đỏ;
– Bảo hành bề mặt sơn theo tiêu chuẩn của hãng', 0, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (76, 20, N'CỬA KÍNH CƯỜNG LỰC 6', N'/Images/Products/cuong-luc/3.jpg', CAST(1800000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (77, 20, N'CỬA KÍNH CƯỜNG LỰC 7', N'/Images/Products/cuong-luc/4.jpg', CAST(22000000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (78, 20, N'CỬA KÍNH CƯỜNG LỰC 8', N'/Images/Products/cuong-luc/5.jpg', CAST(1161000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (79, 20, N'CỬA KÍNH CƯỜNG LỰC 9', N'/Images/Products/cuong-luc/7.jpg', CAST(1270000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (80, 21, N'CỬA KÍNH TỰ ĐỘNG 1', N'/Images/Products/cua-kinh/tu-dong/1.jpg', CAST(3133000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (81, 21, N'CỬA KÍNH TỰ ĐỘNG 2', N'/Images/Products/cua-kinh/tu-dong/2.jpg', CAST(1300000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (82, 21, N'CỬA KÍNH TỰ ĐỘNG 3', N'/Images/Products/cua-kinh/tu-dong/3.jpg', CAST(2600000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (83, 21, N'CỬA KÍNH TỰ ĐỘNG 4', N'/Images/Products/cua-kinh/tu-dong/4.jpg', CAST(205000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (84, 21, N'CỬA KÍNH TỰ ĐỘNG 5', N'/Images/Products/cua-kinh/tu-dong/5.jpg', CAST(185000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (85, 21, N'CỬA KÍNH TỰ ĐỘNG 6', N'/Images/Products/cua-kinh/tu-dong/6.jpg', CAST(350000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (86, 28, N'CỬA NHÔM KÍNH THƯỜNG MẪU 1', N'/Images/Products/cua-kinh/2.png', CAST(245000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (87, 28, N'CỬA NHÔM KÍNH THƯỜNG MẪU 2', N'/Images/Products/cua-kinh/3.png', CAST(295000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 4, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1086, 28, N'CỬA NHÔM KÍNH THƯỜNG MẪU 3', N'/Images/Products/cua-kinh/25.jpg', CAST(8990000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1087, 28, N'CỬA NHÔM KÍNH THƯỜNG MẪU 4', N'/Images/Products/cua-kinh/15.jpg', CAST(15990000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1088, 28, N'CỬA NHÔM KÍNH THƯỜNG MẪU 5', N'/Images/Products/cua-kinh/17.jpg', CAST(15800000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1089, 28, N'CỬA NHÔM KÍNH THƯỜNG MẪU 6', N'/Images/Products/cua-kinh/19.jpg', CAST(15900000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1090, 28, N'CỬA NHÔM KÍNH  THƯỜNG MẪU 7', N'/Images/Products/cua-kinh/28.jpg', CAST(2890000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1091, 28, N'CỬA NHÔM KÍNH THƯỜNG MẪU 8', N'/Images/Products/cua-kinh/20.jpg', CAST(8990000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1092, 28, N'CỬA NHÔM KÍNH THƯỜNG MẪU 9', N'/Images/Products/cua-kinh/5.png', CAST(8990000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1093, 22, N'CỬA SỔ NHÔM KÍNH  CAO CẤP 1', N'/Images/Products/cua-kinh/21.jpg', CAST(5200000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1094, 22, N'CỬA SỔ NHÔM KÍNH  CAO CẤP 2', N'/Images/Products/cua-kinh/22.jpg', CAST(8990000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1095, 22, N'CỬA SỔ NHÔM KÍNH  CAO CẤP 3', N'/Images/Products/cua-kinh/16.jpg', CAST(15990000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1096, 22, N'CỬA SỔ NHÔM KÍNH  CAO CẤP 4', N'/Images/Products/cua-kinh/27.jpg', CAST(15800000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1097, 23, N'VÁCH CƯỜNG LỰC CHO PHÒNG TRÀ', N'/Images/Products/cua-kinh/vach-cuong-luc/1.jpg', CAST(15900000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1098, 23, N'VÁCH CƯỜNG LỰC CHO NHÀ Ở', N'/Images/Products/cua-kinh/vach-cuong-luc/2.jpg', CAST(2890000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1099, 23, N'VÁCH CƯỜNG LỰC CHO PHÒNG NGỦ', N'/Images/Products/cua-kinh/vach-cuong-luc/3.jpg', CAST(8990000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1100, 23, N'VÁCH CƯỜNG LỰC CHO VĂN PHÒNG', N'/Images/Products/cua-kinh/vach-cuong-luc/4.jpg', CAST(8990000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1101, 23, N'VÁCH CƯỜNG LỰC CHO VĂN PHÒNG', N'/Images/Products/cua-kinh/vach-cuong-luc/5.jpg', CAST(5200000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1102, 23, N'VÁCH CƯỜNG LỰC PHÒNG GIÁM ĐỐC', N'/Images/Products/cua-kinh/vach-cuong-luc/6.jpg', CAST(330000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 2, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1103, 23, N'VÁCH CƯỜNG LỰC PHÒNG ĂN', N'/Images/Products/cua-kinh/vach-cuong-luc/7.jpg', CAST(1590000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1104, 23, N'VÁCH CƯỜNG LỰC PHÒNG HỌP', N'/Images/Products/cua-kinh/vach-cuong-luc/8.jpg', CAST(550000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1105, 24, N'BỒN TẮM LÙA 1', N'/Images/Products/cua-kinh/bon-tam-lua/1.jpg', CAST(14000000 AS Decimal(18, 0)), CAST(12000000 AS Decimal(18, 0)), 200, 1, NULL, NULL, 2, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1106, 24, N'BỒN TẮM LÙA 2', N'/Images/Products/cua-kinh/bon-tam-lua/2.jpg', CAST(10590000 AS Decimal(18, 0)), CAST(9590000 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1107, 24, N'BỒN TẮM LÙA 3', N'/Images/Products/cua-kinh/bon-tam-lua/3.jpg', CAST(15900000 AS Decimal(18, 0)), CAST(12000000 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1108, 24, N'BỒN TẮM LÙA 4', N'/Images/Products/cua-kinh/bon-tam-lua/4.jpg', CAST(13300000 AS Decimal(18, 0)), CAST(12000000 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1109, 25, N'BỒN TẮM MỞ 1', N'/Images/Products/cua-kinh/bon-tam-mo/1.jpg', CAST(15900000 AS Decimal(18, 0)), CAST(12000000 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1110, 25, N'BỒN TẮM MỞ 2', N'/Images/Products/cua-kinh/bon-tam-mo/2.jpg', CAST(15900000 AS Decimal(18, 0)), CAST(12000000 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1111, 25, N'BỒN TẮM MỞ 3', N'/Images/Products/cua-kinh/bon-tam-mo/3.jpg', CAST(19000000 AS Decimal(18, 0)), CAST(12000000 AS Decimal(18, 0)), 200, 1, NULL, NULL, 2, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1112, 26, N'CẦU THANG KÍNH MẪU 1', N'/Images/Products/cau-thang-kinh/1.jpg', CAST(19000000 AS Decimal(18, 0)), CAST(12000000 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1113, 26, N'CẦU THANG KÍNH MẪU 2', N'/Images/Products/cau-thang-kinh/2.jpg', CAST(14000000 AS Decimal(18, 0)), CAST(12000000 AS Decimal(18, 0)), 204, 1, NULL, NULL, 4, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1114, 26, N'CẦU THANG KÍNH MẪU 3', N'/Images/Products/cau-thang-kinh/3.jpg', CAST(16400000 AS Decimal(18, 0)), CAST(15000000 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1115, 26, N'CẦU THANG KÍNH MẪU 4', N'/Images/Products/cau-thang-kinh/4.jpg', CAST(12500000 AS Decimal(18, 0)), CAST(10000000 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1116, 26, N'CẦU THANG KÍNH MẪU 5', N'/Images/Products/cau-thang-kinh/5.jpg', CAST(19450000 AS Decimal(18, 0)), CAST(17000000 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1117, 26, N'CẦU THANG KÍNH MẪU 6', N'/Images/Products/cau-thang-kinh/6.jpg', CAST(19400000 AS Decimal(18, 0)), CAST(15000000 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1118, 26, N'CẦU THANG KÍNH MẪU 7', N'/Images/Products/cau-thang-kinh/7.jpg', CAST(15400000 AS Decimal(18, 0)), CAST(15000000 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1119, 26, N'CẦU THANG KÍNH MẪU 8', N'/Images/Products/cau-thang-kinh/8.jpg', CAST(14000000 AS Decimal(18, 0)), CAST(13000000 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1120, 26, N'CẦU THANG KÍNH MẪU 9', N'/Images/Products/cau-thang-kinh/9.jpg', CAST(12400000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1121, 26, N'CẦU THANG KÍNH MẪU 10', N'/Images/Products/cau-thang-kinh/10.jpg', CAST(14000000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1122, 27, N'LAN CAN KÍNH KÍNH MẪU 1', N'/Images/Products/cau-thang-kinh/11.jpg', CAST(85500000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 4, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1123, 27, N'LAN CAN KÍNH KÍNH MẪU 2', N'/Images/Products/cau-thang-kinh/12.jpg', CAST(85500000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1124, 27, N'LAN CAN KÍNH KÍNH MẪU 3', N'/Images/Products/cau-thang-kinh/13.jpg', CAST(35500000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1125, 27, N'LAN CAN KÍNH KÍNH MẪU 4', N'/Images/Products/cau-thang-kinh/14.jpg', CAST(18550000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1126, 27, N'LAN CAN KÍNH KÍNH MẪU 5', N'/Images/Products/cau-thang-kinh/15.jpg', CAST(85500000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1127, 27, N'LAN CAN KÍNH KÍNH MẪU 6', N'/Images/Products/cau-thang-kinh/16.jpg', CAST(85500000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1128, 27, N'LAN CAN KÍNH KÍNH MẪU 7', N'/Images/Products/cau-thang-kinh/17.jpg', CAST(85500000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1129, 27, N'LAN CAN KÍNH KÍNH MẪU 8', N'/Images/Products/cau-thang-kinh/18.jpg', CAST(85500000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1130, 29, N'CỬA NHÔM KÍNH VIỆT NHẬT MẪU 1', N'/Images/Products/cua-nhom-kinh/1.jpg', CAST(15500000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1131, 29, N'CỬA NHÔM KÍNH VIỆT NHẬT MẪU 2', N'/Images/Products/cua-nhom-kinh/2.jpg', CAST(15500000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1132, 29, N'CỬA NHÔM KÍNH VIỆT NHẬT MẪU 3', N'/Images/Products/cua-nhom-kinh/3.jpg', CAST(14500000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1133, 29, N'CỬA NHÔM KÍNH VIỆT NHẬT MẪU 4', N'/Images/Products/cua-nhom-kinh/4.jpg', CAST(8500000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1134, 29, N'CỬA NHÔM KÍNH VIỆT NHẬT MẪU 5', N'/Images/Products/cua-nhom-kinh/5.jpg', CAST(175500000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1135, 29, N'CỬA NHÔM KÍNH VIỆT NHẬT MẪU 6', N'/Images/Products/cua-nhom-kinh/6.jpg', CAST(15500000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1136, 29, N'CỬA NHÔM KÍNH VIỆT NHẬT MẪU 7', N'/Images/Products/cua-nhom-kinh/7.jpg', CAST(185500000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1137, 30, N'CỬA NHÔM KÍNH SINGFA MẪU 1', N'/Images/Products/cua-nhom-kinh/8.jpg', CAST(135500000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 2, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1138, 30, N'CỬA NHÔM KÍNH SINGFA MẪU 2', N'/Images/Products/cua-nhom-kinh/9.jpg', CAST(14700000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1139, 30, N'CỬA NHÔM KÍNH SINGFA MẪU 3', N'/Images/Products/cua-nhom-kinh/10.jpg', CAST(14700000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1140, 30, N'CỬA NHÔM KÍNH SINGFA MẪU 4', N'/Images/Products/cua-nhom-kinh/11.jpg', CAST(14700000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1141, 30, N'CỬA NHÔM KÍNH SINGFA MẪU 5', N'/Images/Products/cua-nhom-kinh/12.jpg', CAST(14700000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1142, 30, N'CỬA NHÔM KÍNH SINGFA MẪU 6', N'/Images/Products/cua-nhom-kinh/13.jpg', CAST(14700000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 1, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1143, 38, N'MÔ TƠ 1', N'/Images/Products/phu-kien/moto1.png', CAST(14700000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1144, 38, N'MÔ TƠ 2', N'/Images/Products/phu-kien/moto2.png', CAST(14700000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 1, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1145, 38, N'MÔ TƠ 3', N'/Images/Products/phu-kien/moto3.png', CAST(14700000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 1, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1146, 38, N'MÔ TƠ 4', N'/Images/Products/phu-kien/moto4.png', CAST(14700000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1147, 38, N'MÔ TƠ 5', N'/Images/Products/phu-kien/moto5.png', CAST(14700000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1148, 39, N'BÁNH XE MẪU 1', N'/Images/Products/banh-xe/1.jpg', CAST(245000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1149, 39, N'BÁNH XE MẪU 2', N'/Images/Products/banh-xe/2.jpg', CAST(245000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
GO
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1150, 39, N'BÁNH XE MẪU 3', N'/Images/Products/banh-xe/3.jpg', CAST(245000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1151, 39, N'BÁNH XE MẪU 4', N'/Images/Products/banh-xe/4.jpg', CAST(245000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1152, 39, N'BÁNH XE MẪU 5', N'/Images/Products/banh-xe/5.jpg', CAST(245000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 1, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1153, 39, N'BÁNH XE MẪU 6', N'/Images/Products/banh-xe/6.jpeg', CAST(1245000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1154, 39, N'BÁNH XE MẪU 7', N'/Images/Products/banh-xe/7.jpeg', CAST(245000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 3, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1155, 41, N'KHÓA TRÒN 1', N'/Images/Products/khoa-tron/1.jpg', CAST(1245000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1156, 41, N'KHÓA TRÒN 2', N'/Images/Products/khoa-tron/2.jpg', CAST(3250000 AS Decimal(18, 0)), CAST(2250000 AS Decimal(18, 0)), 200, 1, NULL, NULL, 2, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1157, 41, N'KHÓA TRÒN 3', N'/Images/Products/khoa-tron/3.jpg', CAST(3250000 AS Decimal(18, 0)), CAST(2250000 AS Decimal(18, 0)), 200, 1, NULL, NULL, 1, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1158, 41, N'KHÓA TRÒN 4', N'/Images/Products/khoa-tron/4.jpeg', CAST(2850000 AS Decimal(18, 0)), CAST(2250000 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1159, 41, N'KHÓA TRÒN 5', N'/Images/Products/khoa-tron/5.png', CAST(165000 AS Decimal(18, 0)), CAST(125000 AS Decimal(18, 0)), 200, 1, NULL, NULL, 28, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1160, 41, N'KHÓA TRÒN 6', N'/Images/Products/khoa-tron/6.jpg', CAST(165000 AS Decimal(18, 0)), CAST(125000 AS Decimal(18, 0)), 200, 1, NULL, NULL, 1, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1162, 42, N'CỬA NHỰA LÕI THÉP 1', N'/Images/Products/cua-nhua/1.jpg', CAST(300000 AS Decimal(18, 0)), CAST(225000 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1163, 42, N'CỬA NHỰA LÕI THÉP 2', N'/Images/Products/cua-nhua/2.jpg', CAST(295000 AS Decimal(18, 0)), CAST(255000 AS Decimal(18, 0)), 200, 1, NULL, NULL, 4, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1164, 42, N'CỬA NHỰA LÕI THÉP 3', N'/Images/Products/cua-nhua/3.jpeg', CAST(350000 AS Decimal(18, 0)), CAST(225000 AS Decimal(18, 0)), 201, 1, NULL, NULL, 0, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1165, 42, N'CỬA NHỰA LÕI THÉP 4', N'/Images/Products/cua-nhua/4.jpg', CAST(8950000 AS Decimal(18, 0)), CAST(7950000 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1166, 42, N'CỬA NHỰA LÕI THÉP 5', N'/Images/Products/cua-nhua/5.jpg', CAST(200000 AS Decimal(18, 0)), CAST(169000 AS Decimal(18, 0)), 150, 1, NULL, NULL, 6, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1167, 40, N'TAY NẮM MẪU 1', N'/Images/Products/phu-kien/1.jpg', CAST(450000 AS Decimal(18, 0)), CAST(150000 AS Decimal(18, 0)), 307, 1, NULL, NULL, 14, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1169, 40, N'TAY NẮM MẪU 2', N'/Images/Products/phu-kien/2.jpg', CAST(550000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 100, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1170, 40, N'TAY NẮM MẪU 3', N'/Images/Products/phu-kien/3.jpg', CAST(250000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1171, 40, N'TAY NẮM MẪU 4', N'/Images/Products/phu-kien/4.jpg', CAST(350000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 100, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1172, 40, N'TAY NẮM MẪU 5', N'/Images/Products/phu-kien/5.jpg', CAST(450000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1173, 40, N'TAY NẮM MẪU 6', N'/Images/Products/phu-kien/6.jpg', CAST(350000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 300, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1174, 1060, N'CỬA NHỰA GIẢ GỖ MẪU 1', N'/Images/Products/cua-nhua/6.jpg', CAST(2500000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1175, 1060, N'CỬA NHỰA GIẢ GỖ MẪU 2', N'/Images/Products/cua-nhua/7.jpg', CAST(3600000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1176, 1060, N'CỬA NHỰA GIẢ GỖ MẪU 3', N'/Images/Products/cua-nhua/8.jpg', CAST(2500000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1177, 1060, N'CỬA NHỰA GIẢ GỖ MẪU 4', N'/Images/Products/cua-nhua/9.jpg', CAST(5000000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1178, 1060, N'CỬA NHỰA GIẢ GỖ MẪU 5', N'/Images/Products/cua-nhua/10.jpg', CAST(4000000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1179, 1060, N'CỬA NHỰA GIẢ GỖ MẪU 6', N'/Images/Products/cua-nhua/11.jpg', CAST(3500000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1180, 44, N'LƯU ĐIỆN AUTSDOOR', N'/Images/Products/phu-kien/18.jpg', CAST(3000000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1181, 44, N'LƯU ĐIỆN 1', N'/Images/Products/phu-kien/19.jpg', CAST(3000000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1182, 44, N'LƯU ĐIỆN 2', N'/Images/Products/phu-kien/20.jpg', CAST(3000000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1183, 44, N'LƯU ĐIỆN 3', N'/Images/Products/phu-kien/21.jpg', CAST(3000000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1184, 44, N'LƯU ĐIỆN 4', N'/Images/Products/phu-kien/22.png', CAST(3000000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1185, 44, N'LƯU ĐIỆN 5', N'/Images/Products/phu-kien/23.jpg', CAST(3000000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1186, 45, N'BẢN LỀ 1', N'/Images/Products/phu-kien/12.jpg', CAST(3000000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1187, 45, N'BẢN LỀ 2', N'/Images/Products/phu-kien/14.jpg', CAST(3000000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1188, 45, N'BẢN LỀ 3 ', N'/Images/Products/phu-kien/15.jpg', CAST(3000000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1189, 45, N'BẢN LỀ 4', N'/Images/Products/phu-kien/16.jpg', CAST(3000000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1190, 45, N'BẢN LỀ 5', N'/Images/Products/phu-kien/17.jpeg', CAST(3000000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1192, 1062, N'THANG MÁY TẢI KHÁCH', N'/Images/Products/thangmay/tm-a.png', CAST(5000000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1193, 1063, N'THANG MÁY BỆNH VIỆN', N'/Images/Products/thangmay/bvv.jpg', CAST(6000000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 300, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1194, 1064, N'THANG MÁY LỒNG KÍNH QUAN SÁT', N'/Images/Products/thangmay/TM-LK.png', CAST(7000000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1195, 1065, N'THANG TẢI THỰC PHẨM', N'/Images/Products/thangmay/tm-c.png', CAST(6000000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1196, 1066, N'THANG MÁY TẢI HÀNG', N'/Images/Products/thangmay/tai-hang-3.jpg', CAST(6000000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1197, 1067, N' THANG MÁY GIA ĐÌNH', N'/Images/Products/thangmay/tm-giadinh3.jpg', CAST(6000000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1198, 1068, N' THANG MÁY VĂN PHÒNG', N'/Images/Products/thangmay/vp2.jpg', CAST(6000000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 200, 1, NULL, NULL, 0, 0)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [MoTa], [ChiTiet], [LuotXem], [DacBiet]) VALUES (1199, 1069, N'THANG MÁY OH TẦNG THẤP', N'/Images/Products/thangmay/chokhach2.jpg', CAST(6000000 AS Decimal(18, 0)), CAST(6000000 AS Decimal(18, 0)), 200, 1, NULL, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[SanPhams] OFF
GO
SET IDENTITY_INSERT [dbo].[Slide] ON 

INSERT [dbo].[Slide] ([MaAnh], [TieuDe], [TieuDe1], [TieuDe2], [MoTa1], [MoTa2], [MoTa3], [MoTa4], [LinkAnh]) VALUES (1, N'Của nhựa lõi thép', N'Của nhựa lõi thép', N'Giảm giá sốc', N'Giảm tới!', N'30% off', N'Bảo hành 30 năm', N'Tặng thêm phụ kiện', N'/Images/SlideShows/1.jpg')
INSERT [dbo].[Slide] ([MaAnh], [TieuDe], [TieuDe1], [TieuDe2], [MoTa1], [MoTa2], [MoTa3], [MoTa4], [LinkAnh]) VALUES (2, N'Của nhựa lõi thép', N'Của nhựa lõi thép', N'Giảm giá cực lớn', N'Giảm tới!', N'50% off', N'Bảo hành 30 năm', N'Tặng thêm phụ kiện', N'/Images/SlideShows/2.jpg')
INSERT [dbo].[Slide] ([MaAnh], [TieuDe], [TieuDe1], [TieuDe2], [MoTa1], [MoTa2], [MoTa3], [MoTa4], [LinkAnh]) VALUES (3, N'Của nhựa lõi thép', N'Của nhựa lõi thép', N'Giảm giá cực lớn', N'Giảm tới!', N'50% off', N'Bảo hành 30 năm', N'Tặng thêm phụ kiện', N'/Images/SlideShows/3.jpg')
INSERT [dbo].[Slide] ([MaAnh], [TieuDe], [TieuDe1], [TieuDe2], [MoTa1], [MoTa2], [MoTa3], [MoTa4], [LinkAnh]) VALUES (4, N'Của nhựa lõi thép', N'Của nhựa lõi thép', N'Giảm giá cực lớn', N'Giảm tới!', N'50% off', N'Bảo hành 30 năm', N'Tặng thêm phụ kiện', N'/Images/SlideShows/5.jpg')
INSERT [dbo].[Slide] ([MaAnh], [TieuDe], [TieuDe1], [TieuDe2], [MoTa1], [MoTa2], [MoTa3], [MoTa4], [LinkAnh]) VALUES (5, N'Của nhựa lõi thép', N'Của nhựa lõi thép', N'Giảm giá cực lớn', N'Giảm tới!', N'50% off', N'Bảo hành 30 năm', N'Tặng thêm phụ kiện', N'/Images/SlideShows/6.jpg')
SET IDENTITY_INSERT [dbo].[Slide] OFF
GO
SET IDENTITY_INSERT [dbo].[TaiKhoans] ON 

INSERT [dbo].[TaiKhoans] ([MaTaiKhoan], [LoaiTaiKhoan], [TenTaiKhoan], [MatKhau], [Email]) VALUES (1, 1, N'admin', N'123456', N'abc@gmail.com')
INSERT [dbo].[TaiKhoans] ([MaTaiKhoan], [LoaiTaiKhoan], [TenTaiKhoan], [MatKhau], [Email]) VALUES (2, 2, N'tunganh', N'123456', N'dovantunghy186@gmail.com')
INSERT [dbo].[TaiKhoans] ([MaTaiKhoan], [LoaiTaiKhoan], [TenTaiKhoan], [MatKhau], [Email]) VALUES (3, 2, N'tung', N'123456', N'tungsuper1997@gmail.com')
SET IDENTITY_INSERT [dbo].[TaiKhoans] OFF
GO
SET IDENTITY_INSERT [dbo].[TinTucs] ON 

INSERT [dbo].[TinTucs] ([MaTinTuc], [TieuDe], [AnhDaiDien], [MoTa], [NgayTao], [ChiTiet], [LuotXem]) VALUES (1, N'Làm thế nào để bộ cửa cuốn luôn như mới?', N'/Images/TinTuc/lam_the_nao.jpg', N'Cửa cuốn cũng như những khu vực khác trong ngôi nhà, sử dụng mãi cũng sẽ đến lúc bị cũ kỹ. Đặc biệt, cửa cuốn lại là bộ mặt của cả ngôi nhà. Bạn đã biết những cách để giữ bộ cửa cuốn nhà mình luôn như mới chưa?

Vệ sinh cửa cuốn thường xuyên', CAST(N'2017-11-23T00:00:01.000' AS DateTime), N'<p><strong><em>Cửa cuốn cũng như những khu vực kh&aacute;c trong ng&ocirc;i nh&agrave;, sử dụng m&atilde;i cũng sẽ đến l&uacute;c bị cũ kỹ. Đặc biệt, cửa cuốn lại l&agrave; bộ mặt của cả ng&ocirc;i nh&agrave;. Bạn đ&atilde; biết những c&aacute;ch để giữ bộ cửa cuốn nh&agrave; m&igrave;nh lu&ocirc;n như mới chưa?</em></strong></p>

<h3 style="color:rgb(0, 0, 0); font-style:normal"><strong>Vệ sinh cửa cuốn thường xuy&ecirc;n</strong></h3>

<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; <img alt="" src="/Images/ChiTietSP/images/cham-soc-cua-cuon-2_1505708851.jpg" style="height:300px; width:70%" /></p>

<p>Vệ sinh, bảo dưỡng cửa cuốn định kỳ v&ocirc; c&ugrave;ng quan trọng, v&igrave; việc để bẩn l&acirc;u ng&agrave;y khiến cửa trở n&ecirc;n cũ kỹ, thậm ch&iacute; c&oacute; nguy cơ hỏng h&oacute;c. Chỉ với khoảng 30 ph&uacute;t c&ugrave;ng những c&ocirc;ng cụ đơn giản: chổi lau, nước x&agrave; ph&ograve;ng l&agrave; bạn đ&atilde; c&oacute; bộ cửa sạch sẽ tinh tươm.</p>

<p>Nếu k&iacute;ch thước lớn của bộ cửa cuốn khiến bạn kh&oacute; l&ograve;ng vệ sinh sạch sẽ th&igrave; li&ecirc;n hệ Trung t&acirc;m dịch vụ sửa chữa v&agrave; bảo h&agrave;nh của Austcare gi&uacute;p bạn nh&eacute;!</p>

<p><strong>Trang tr&iacute; cho cửa cuốn </strong></p>

<p>C&ograve;n g&igrave; th&uacute; vị hơn nếu cả gia đ&igrave;nh c&ugrave;ng bắt tay v&agrave;o trang tr&iacute; cho cửa cuốn ng&ocirc;i nh&agrave; bằng những nguy&ecirc;n liệu đơn giản như giấy, rey băng, decan m&agrave;u, &hellip; trong những dịp đặc biệt. Sau đ&oacute; cả nh&agrave; qu&acirc;y quần c&ugrave;ng chụp bức ảnh dưới background cửa cuốn lạ mắt n&agrave;y, sẽ l&agrave; một &yacute; tưởng hay ho đấy.</p>

<p><strong>Đổi m&agrave;u sơn nh&agrave;</strong></p>

<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; <img alt="" src="/Images/ChiTietSP/images/cua-cuon-austdoor-7.jpg" style="height:400px; width:70%" /></p>

<p>Một bộ cửa cuốn đẹp kết hợp với m&agrave;u sơn nh&agrave; ăn &yacute; sẽ cho bạn một c&ocirc;ng tr&igrave;nh kiến tr&uacute;c ho&agrave;n hảo. Nếu ng&ocirc;i nh&agrave; bạn đ&atilde; l&acirc;u năm, h&atilde;y mạnh dạn thay đổi một v&agrave;i m&agrave;u sơn tươi mới, thậm ch&iacute; cả m&agrave;u sơn của những c&aacute;nh cửa sổ, m&aacute;i hi&ecirc;n, &hellip; Như vậy, bộ cửa nh&agrave; bạn cũng sẽ đẹp hơn rất nhiều.</p>

<p><strong>Trồng th&ecirc;m c&acirc;y xanh </strong></p>

<p>Những h&agrave;ng c&acirc;y xanh trước cửa nh&agrave; vừa tạo kh&ocirc;ng gian m&aacute;t mẻ, g&oacute;p phần thanh lọc kh&ocirc;ng kh&iacute; lại gi&uacute;p t&ocirc; điểm cho mĩ quan đ&ocirc; thị v&agrave; cho ng&ocirc;i nh&agrave; bạn, đặc biệt l&agrave; đẹp cho cửa cuốn. Hoặc bạn cũng c&oacute; thể chọn c&aacute;c loại c&acirc;y d&acirc;y leo nở hoa như c&acirc;y hoa l&yacute;, hoa sử qu&acirc;n tử, hoa giấy. Chắc chắn cửa cuốn nh&agrave; bạn sẽ l&agrave; địa điểm l&yacute; tưởng để chụp ảnh selfie của biết bao nhi&ecirc;u người.</p>

<p>Với những c&aacute;ch tr&ecirc;n, cửa cuốn nh&agrave; bạn sẽ kh&ocirc;ng c&ograve;n đơn điệu th&ocirc; cứng nữa m&agrave; sẽ kết hợp h&agrave;i h&ograve;a với thi&ecirc;n nhi&ecirc;n, cảnh quan xung quanh để đem đến sự thư th&aacute;i thoải m&aacute;i cho bạn v&agrave; gia đ&igrave;nh.</p>
', 21)
INSERT [dbo].[TinTucs] ([MaTinTuc], [TieuDe], [AnhDaiDien], [MoTa], [NgayTao], [ChiTiet], [LuotXem]) VALUES (2, N'Sử dụng cửa cuốn đúng cách để hoạt động lâu bền?', N'/Images/TinTuc/cham-soc-cua-cuon-2_1505708851.jpg', N'Bạn có biết, cửa cuốn hay bất kỳ thiết bị nào khác hoạt động có lâu bền hay không cũng phụ thuộc một phần vào người sử dụng. Nếu sử dụng đúng hướng dẫn từ nhà sản xuất và thường xuyên chăm sóc thì cửa sẽ luôn vận hành ổn định, giảm thiểu hỏng hóc. Ngược lại, bỏ qua những khuyến cáo từ nhà sản xuất sẽ khiến cửa có nguy cơ gặp sự cố, mất phí sửa chữa, tốn kém chi phí.', CAST(N'2017-11-23T00:00:03.000' AS DateTime), N'<p><em><strong>Vậy phải sử dụng thế n&agrave;o để cửa lu&ocirc;n vận h&agrave;nh tốt? </strong></em></p>

<p><strong>1.Kh&ocirc;ng đ&oacute;ng mở cửa nhiều lần li&ecirc;n tục </strong></p>

<p><strong><img alt="" src="/Images/ChiTietSP/images/dktx.jpg" style="height:346px; width:800px" /></strong></p>

<hr />
<p>V&igrave; một l&yacute; do n&agrave;o đ&oacute; hoặc đơn giản l&agrave; đ&ugrave;a nghịch m&agrave; đ&oacute;ng mở cửa li&ecirc;n tục sẽ khiến cửa cuốn phải hoạt động hết c&ocirc;ng suất, khiến m&ocirc; tơ bị n&oacute;ng. Khi nhiệt độ vượt qu&aacute; ngưỡng cho ph&eacute;p c&oacute; thể l&agrave;m m&ocirc; tơ tự ngắt điện. L&uacute;c n&agrave;y bạn sẽ phải đợi m&ocirc; tơ nguội th&igrave; mới c&oacute; thể tiếp tục sử dụng, thật bất tiện nếu như đang c&oacute; việc cần gấp. Trong trường hợp xấu hơn l&agrave; h&agrave;nh động n&agrave;y c&oacute; thể khiến l&agrave;m hỏng bộ tời, thậm ch&iacute; ph&aacute;t nổ.</p>

<p>Tốt nhất, h&atilde;y để cửa cuốn nghỉ ngơi giữa những lần đ&oacute;ng mở từ 1 &ndash; 2 ph&uacute;t để cửa hoạt động tốt.</p>

<p><strong>2.Thường xuy&ecirc;n kiểm tra bảo dưỡng cửa cuốn ngay cả khi kh&ocirc;ng c&oacute; dấu hiệu hỏng h&oacute;c </strong></p>

<p>Rất nhiều gia đ&igrave;nh sử dụng cửa cuốn chưa coi trọng vấn đề n&agrave;y. Cửa chưa c&oacute; dấu hiệu hỏng th&igrave; nghĩ rằng cửa vẫn đang c&ograve;n sử dụng l&acirc;u d&agrave;i m&agrave; kh&ocirc;ng ngờ c&oacute; nhiều nguy cơ ẩn chưa b&ecirc;n trong m&agrave; kh&ocirc;ng kiểm tra th&igrave; kh&ocirc;ng biết được. Cửa cuốn cũng như c&aacute;c thiết bị kh&aacute;c như xe m&aacute;y hay m&aacute;y t&iacute;nh, để sử dụng thường xuy&ecirc;n, hạn chế hỏng h&oacute;c th&igrave; cần được bảo dưỡng. Khoảng thời gian giữa c&aacute;c lần bảo dưỡng n&ecirc;n l&agrave; 6 th&aacute;ng.</p>

<p>Qu&aacute; tr&igrave;nh bảo dưỡng gồm nhiều bước kh&aacute;c nhau, nhưng t&oacute;m gọn lại c&aacute;c bước quan trọng c&oacute; thể n&ecirc;u đ&oacute; l&agrave; kiểm tra bộ lưu điện, kiểm tra d&acirc;y nối, bộ tời, tay điều khiển, căn chỉnh nan cửa bị x&ocirc; lệch hoặc vệ sinh cửa để chắc chắn c&aacute;c bộ phận n&agrave;y vẫn hoạt động b&igrave;nh thường.</p>

<p><strong>3.T&igrave;m địa chỉ sửa chữa uy t&iacute;n nếu c&oacute; ph&aacute;t sinh hỏng h&oacute;c </strong></p>

<p><strong><img alt="" src="/Images/ChiTietSP/images/sd.png" style="height:506px; width:800px" /></strong></p>

<p>Việc lựa chọn đơn vị sửa chữa cửa cuốn uy t&iacute;n v&ocirc; c&ugrave;ng quan trọng v&igrave; đảm bảo được yếu tố sửa đ&uacute;ng bệnh, đ&uacute;ng gi&aacute;, tr&aacute;nh mất tiền oan. Ngo&agrave;i ra những đơn vị uy t&iacute;n thường c&oacute; dịch vụ bảo h&agrave;nh đi k&egrave;m, gi&uacute;p ch&uacute;ng ta an t&acirc;m hơn nếu như lỗi hỏng t&aacute;i ph&aacute;t. Với việc c&aacute;c đơn vị sửa chữa đang tr&agrave;n lan tr&ecirc;n mạng với những lời cam kết &ldquo;nhanh&rdquo;, &ldquo;rẻ&rdquo;, &ldquo;đến ngay&rdquo; th&igrave; ch&uacute;ng ta cần tham khảo từ nhiều nguồn kh&aacute;c nhau để lựa chọn được đơn vị uy t&iacute;n. Bệnh viện cửa cuốn Austcare &ndash; đơn vị trực thuộc Tập đo&agrave;n Austdoor l&agrave; một đề cử nếu bạn đang băn khoăn chưa biết chọn đơn vị n&agrave;o.</p>

<p>Những lưu &yacute; tr&ecirc;n kh&ocirc;ng hề kh&oacute; thực hiện m&agrave; thực sự rất đơn giản để c&aacute;c bạn c&oacute; thể thực hiện theo. H&atilde;y quan t&acirc;m ch&uacute; &yacute; hơn đến chiếc cửa cuốn nh&agrave; m&igrave;nh để tiết kiệm thời gian v&agrave; chi ph&iacute; sửa chữa nh&eacute;!</p>
', 21)
INSERT [dbo].[TinTucs] ([MaTinTuc], [TieuDe], [AnhDaiDien], [MoTa], [NgayTao], [ChiTiet], [LuotXem]) VALUES (3, N'Quy trình bảo dưỡng cửa cuốn chuyên nghiệp?', N'/Images/TinTuc/bao_duong.jpg', N'Bảo dưỡng là công việc vô cùng quan trọng đối với các gia đình đang sử dụng cửa cuốn. Việc bảo dưỡng định kỳ sẽ giúp cho bộ cửa hoạt động ổn định và giảm thiểu những chi phí sửa chữa cửa cuốn không đáng có. Tuy nhiên, bảo dưỡng là công việc không thể tự thực hiện tại nhà nếu như bạn không có chút hiểu biết về kỹ thuật. Tốt nhất hãy để những đơn vị sửa chữa cửa cuốn chuyên nghiệp thực hiện công việc này.', CAST(N'2017-11-23T00:00:04.000' AS DateTime), N'<p><strong><em>Bảo dưỡng l&agrave; c&ocirc;ng việc v&ocirc; c&ugrave;ng quan trọng đối với c&aacute;c gia đ&igrave;nh đang sử dụng cửa cuốn. Việc bảo dưỡng định kỳ sẽ gi&uacute;p cho bộ cửa hoạt động ổn định v&agrave; giảm thiểu những chi ph&iacute; sửa chữa cửa cuốn kh&ocirc;ng đ&aacute;ng c&oacute;. Tuy nhi&ecirc;n, bảo dưỡng l&agrave; c&ocirc;ng việc kh&ocirc;ng thể tự thực hiện tại nh&agrave; nếu như bạn kh&ocirc;ng c&oacute; ch&uacute;t hiểu biết về kỹ thuật. Tốt nhất h&atilde;y để những đơn vị sửa chữa cửa cuốn chuy&ecirc;n nghiệp thực hiện c&ocirc;ng việc n&agrave;y.</em></strong></p>

<p><em><strong>Vậy bảo dưỡng cửa cuốn gồm những c&ocirc;ng việc g&igrave;? H&atilde;y c&ugrave;ng t&igrave;m hiểu nh&eacute;!</strong></em></p>

<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <img alt="" src="/Images/ChiTietSP/images/ac.jpg" style="height:520px; width:80%" /></p>

<p><strong>Bước 1: Tra dầu mỡ c&aacute;c bộ phận truyền động, tăng l&ograve; xo</strong></p>

<p>Bộ phận truyền động cửa cửa cuốn l&agrave; bộ tời, trong đ&oacute; c&oacute; m&ocirc; tơ. Tra dầu mỡ sẽ gi&uacute;p c&aacute;c bộ phận hoạt động trơn tru, &iacute;t hỏng h&oacute;c.</p>

<p>Tăng l&ograve; xo (đối với d&ograve;ng cửa cuốn tấm liền) gi&uacute;p đảm bảo c&acirc;n bằng lực giữa l&ograve; xo v&agrave; trọng lượng của cửa, đảm bảo t&iacute;nh năng đ&oacute;ng mở nhẹ nh&agrave;ng v&agrave; đảo chiều ổn định.</p>

<p><strong>Bước 2: Kiểm tra, gia cố ray, bulong, căn chỉnh nan cửa bị x&ocirc; lệch </strong></p>

<p><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; <img alt="" src="/Images/ChiTietSP/images/z778776288923_178069039e562c91e8ed944e635272ab.jpg" style="height:450px; width:80%" /></strong></p>

<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; <em>Sau một thời gian d&agrave;i sử dụng, nan cửa c&oacute; thể bị x&ocirc; lệch hoặc thậm ch&iacute; m&eacute;o m&oacute; nếu kh&ocirc;ng được kiểm tra căn chỉnh </em></p>

<p>Đ&acirc;y l&agrave; những lỗi rất hay xảy ra khi cửa cuốn đ&atilde; sử dụng được một thời gian. Trong qu&aacute; tr&igrave;nh d&agrave;i, cửa cuốn c&oacute; thể c&oacute; hiện tượng lỏng ray v&agrave; nan cửa x&ocirc; lệch thậm ch&iacute; phồng nan cửa. Việc bảo dưỡng sẽ gi&uacute;p căn chỉnh lại nan cửa, gia cố c&aacute;c bộ phận v&agrave; tr&aacute;nh c&aacute;c nguy cơ hỏng h&oacute;c từ những dấu hiệu n&agrave;y.</p>

<p><strong>Bước 3: Kiểm tra, bảo dưỡng c&aacute;c t&iacute;nh năng bảo vệ </strong></p>

<p>Đ&acirc;y l&agrave; bước v&ocirc; c&ugrave;ng quan trọng trong quy tr&igrave;nh bảo dưỡng cửa cuốn. C&aacute;c t&iacute;nh năng bảo vệ như bộ đảo chiều, sensor bảo vệ, c&ograve;i b&aacute;o động, rơ-le chống sổ l&ocirc; l&acirc;u ng&agrave;y c&oacute; thể bị m&agrave;i m&ograve;n, mất nhạy b&eacute;n hoặc kh&ocirc;ng c&ograve;n hiệu lực. Nếu kh&ocirc;ng được kiểm tra kịp thời sẽ rất nguy hiểm, g&acirc;y ra c&aacute;c sự cố kh&ocirc;ng mong muốn. Tuy nhi&ecirc;n nếu ch&uacute; &yacute; bảo dưỡng định kỳ, c&aacute;c nguy cơ ấy sẽ được giảm thiểu tối đa. <strong>Bước 4: Kiểm tra c&aacute;c thiết bị điều khiển </strong></p>

<p>C&aacute;c thiết bị điều khiển cửa cuốn gồm c&oacute; hộp điều khiển, giắc kết nối, tay điều khiển v&agrave; n&uacute;t bấm &acirc;m tường. Kiểm tra c&aacute;c thiết bị n&agrave;y để đảm bảo ch&uacute;ng vẫn hoạt động nhạy b&eacute;n.</p>

<p><strong>Bước 5: Kiểm tra v&agrave; xả nạp bộ lưu điện </strong></p>

<p>Với nhiều gia đ&igrave;nh, nỗi lo lắng khi sử dụng cửa cuốn đ&oacute; l&agrave; mất điện cửa sẽ kh&ocirc;ng hoạt động được, đặc biệt nếu như đang trong trường hợp khẩn cấp. Tuy nhi&ecirc;n bộ lưu điện sẽ giải quyết vấn đề n&agrave;y bằng việc t&iacute;ch trữ điện năng v&agrave; sử dụng ch&uacute;ng trong trường hợp mất điện. Việc xả nạp bộ lưu điện l&agrave; rất cần thiết, sẽ gi&uacute;p bộ phận n&agrave;y hoạt động bền hơn.</p>

<p><strong>Chỉ với 5 bước đơn giản như tr&ecirc;n nhưng sẽ đ&aacute;nh bay ho&agrave;n to&agrave;n c&aacute;c nguy cơ hỏng h&oacute;c cho cửa cuốn. H&atilde;y ch&uacute; &yacute; chăm s&oacute;c v&agrave; bảo dưỡng cho chiếc cửa cuốn của gia đ&igrave;nh để ch&uacute;ng lu&ocirc;n hoạt động ổn định nh&eacute;!</strong></p>
', 19)
INSERT [dbo].[TinTucs] ([MaTinTuc], [TieuDe], [AnhDaiDien], [MoTa], [NgayTao], [ChiTiet], [LuotXem]) VALUES (4, N'Có nên lắp cửa cuốn chống cháy cho nhà xưởng?', N'/Images/TinTuc/cua_chong_chay.jpg', N'Trong thời gian qua, những sự cố hỏa hoạn tại các trung tâm thương mại, hầm để xe hay kho bãi lưu trữ làm thiệt hại tính mạng con người và thiêu rụi tài sản có giá trị lớn đã rung lên hồi chuông báo động về sự cần thiết của việc lắp đặt hệ thống phòng chống, ngăn ngừa hỏa hoạn.', CAST(N'2017-11-23T00:00:00.000' AS DateTime), N'<p><strong><em>Trong thời gian qua, những sự cố hỏa hoạn tại c&aacute;c trung t&acirc;m thương mại, hầm để xe hay kho b&atilde;i lưu trữ l&agrave;m thiệt hại t&iacute;nh mạng con người v&agrave; thi&ecirc;u rụi t&agrave;i sản c&oacute; gi&aacute; trị lớn đ&atilde; rung l&ecirc;n hồi chu&ocirc;ng b&aacute;o động về sự cần thiết của việc lắp đặt hệ thống ph&ograve;ng chống, ngăn ngừa hỏa hoạn.</em></strong></p>

<p><em><strong>Vậy c&oacute; n&ecirc;n lắp cửa cuốn chuy&ecirc;n dụng chống ch&aacute;y d&agrave;nh cho nh&agrave; xưởng? Đọc b&agrave;i ph&acirc;n t&iacute;ch dưới đ&acirc;y v&agrave; r&uacute;t ra lựa chọn cho m&igrave;nh nh&eacute;! </strong></em></p>

<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; <img alt="" src="/Images/ChiTietSP/images/cua-cuon-chong-chay-austdoor-01.png" style="height:520px; width:70%" /></p>

<p>&nbsp;</p>

<p><strong>Nguy cơ ch&aacute;y nổ lu&ocirc;n tiềm ẩn </strong></p>

<p>Trong c&aacute;c kho b&atilde;i thường chứa rất nhiều h&agrave;ng h&oacute;a l&agrave; mồi ngon của lửa n&ecirc;n c&aacute;c đ&aacute;m ch&aacute;y xảy ra thường diễn biến kh&aacute; phức tạp. Th&ecirc;m v&agrave;o đ&oacute;, nh&agrave; c&oacute; c&oacute; tường gạch d&agrave;y, m&aacute;i t&ocirc;n k&iacute;n n&ecirc;n kh&oacute;i lửa bị &ldquo;nhốt&rdquo; trong nh&agrave; kho thường b&ugrave;ng ph&aacute;t rất mạnh v&agrave; đặc qu&aacute;nh, rất kh&oacute; tiếp cận v&agrave; xử l&yacute;. Ngo&agrave;i h&agrave;ng h&oacute;a, kho b&atilde;i hay c&ocirc;ng xưởng thường c&oacute; c&aacute;c thiết bị điện tử, m&aacute;y m&oacute;c, b&igrave;nh nhựa, ph&iacute;ch nước, b&oacute;ng đ&egrave;n, giấy tờ, &hellip; n&ecirc;n ngọn lửa thường l&acirc;y lan rất nhanh, g&acirc;y ra c&aacute;c thiệt hại v&ocirc; c&ugrave;ng lớn về người v&agrave; của.</p>

<p><strong>&Yacute; thức ph&ograve;ng chống ch&aacute;y nổ chưa được n&acirc;ng cao </strong></p>

<p>Chỉ t&iacute;nh ri&ecirc;ng địa b&agrave;n TP H&agrave; Nội đ&atilde; c&oacute; h&agrave;ng ngh&igrave;n khu nh&agrave; xưởng, kho b&atilde;i đang hoạt động nhưng phần lớn kh&ocirc;ng đạt y&ecirc;u cầu về ph&ograve;ng ch&aacute;y, chữa ch&aacute;y. Phần lớn c&aacute;c nh&agrave; xưởng đều được l&agrave;m bằng khung th&eacute;p, m&aacute;i t&ocirc;n, bao bọc xung quanh v&agrave; kh&ocirc;ng hề c&oacute; hệ thống b&aacute;o ch&aacute;y. C&aacute;ch thiết kế x&acirc;y dựng theo kiểu chuồng cọp chỉ một lối tho&aacute;t duy nhất l&agrave; v&ocirc; c&ugrave;ng nguy hiểm.</p>

<p><strong>Sự cần thiết của cửa cuốn chống ch&aacute;y </strong></p>

<p>Cửa cuốn chống ch&aacute;y sẽ l&agrave; một thiết bị chống ch&aacute;y hữu &iacute;ch, kịp thời b&aacute;o động khi c&oacute; đ&aacute;m ch&aacute;y xảy ra v&agrave; tự động ngăn chặn lan truyền của ngọn lửa để đảm bảo thời gian cho người v&agrave; h&agrave;ng h&oacute;a kịp thời di chuyển, sơ t&aacute;n tới khu vực an to&agrave;n.</p>

<p>C&aacute;c thiết bị điều khiển chống ch&aacute;y được t&iacute;ch hợp tr&ecirc;n cửa cuốn chống ch&aacute;y sẽ hoạt động như sau: Bộ tự ngắt, hẹn thời gian đ&oacute;ng cửa khi xảy ra ch&aacute;y, bộ tự ngắt cảm biến nhiệt, bộ tự ngắt cảm biển kh&oacute;i. Khi c&oacute; hỏa hoạn ch&aacute;y nổ xảy ra, c&aacute;c thiết bị điều khiển chống ch&aacute;y n&agrave;y sẽ kịp thời ph&aacute;t t&iacute;n hiệu b&aacute;o động khẩn cấp để tất cả người c&oacute; mặt b&ecirc;n trong kịp thời tho&aacute;t hiểm.</p>

<p><strong>C&aacute;c ti&ecirc;u chuẩn của cửa cuốn chống ch&aacute;y </strong></p>

<p>Cửa chống ch&aacute;y kh&ocirc;ng đơn giản như c&aacute;c d&ograve;ng cửa cuốn th&ocirc;ng thường m&agrave; phải được nghi&ecirc;n cứu v&agrave; đ&aacute;p ứng được những ti&ecirc;u chuẩn khắt khe để đảm bảo ti&ecirc;u ch&iacute; chống ch&aacute;y. Tham khảo những ti&ecirc;u chuẩn dưới đ&acirc;y của d&ograve;ng cửa chống ch&aacute;y FS Series của Austdoor nếu đ&atilde; quyết định lắp cửa cuốn chống ch&aacute;y cho nh&agrave; xưởng, kho b&atilde;i nh&eacute;:</p>

<p>- Được kiểm định v&agrave; cấp chứng nhận chống ch&aacute;y theo ti&ecirc;u chuẩn BS EN 16341:2000 cảu Vương quốc Anh v&agrave; ti&ecirc;u chuẩn TCXDVN 386:2007 do Cục Ph&ograve;ng ch&aacute;y, chữa ch&aacute;y &ndash; Bộ C&ocirc;ng an cấp. Cửa phải c&oacute; khả năng tự động đ&oacute;ng trong trường hợp hỏa hoạn v&agrave; tự động ngăn chặn sự lan truyền của ngọn lửa (kh&oacute;i) từ khu vực n&agrave;y sang khu vực kh&aacute;c từ 2 đến 4 giờ.</p>

<p>- Th&acirc;n cửa chống ch&aacute;y FS Series được l&agrave;m bằng th&eacute;p mạ kẽm c&oacute; độ d&agrave;y l&ecirc;n tới 1.4mm v&agrave; trọng lượng 20kg/m2, sơn mạ điện ph&acirc;n b&aacute;m rất chặt tr&ecirc;n bền mặt, c&oacute; khả năng chịu nhiệt v&agrave; kh&aacute;ng ch&aacute;y từ 2-4 giờ.</p>

<p>- Ray dẫn hướng được thiết kế bằng th&eacute;p h&igrave;nh khối c&oacute; độ d&agrave;y 3.0mm đảm bảo độ cứng vững cho cửa khi vận h&agrave;nh. Hệ thống c&acirc;n bằng l&ograve; xo được đặt trong trục cuốn để hỗ trợ cho th&acirc;n cửa. C&aacute;c l&ograve; xo được thiết kế đ&aacute;p ứng 25% yếu tố tải an to&agrave;n cho ph&eacute;p cửa hoạt động an to&agrave;n v&agrave; dễ sử dụng.</p>

<p>Hy vọng qua b&agrave;i viết tr&ecirc;n, c&aacute;c bạn sẽ tự cho m&igrave;nh được c&acirc;u trả lời c&oacute; n&ecirc;n lắp cửa cuốn chống ch&aacute;y v&agrave; những ti&ecirc;u chuẩn tham khảo d&agrave;nh cho sản phẩm n&agrave;y từ cửa cuốn chống ch&aacute;y FS Series của Austdoor nh&eacute;!</p>
', 19)
INSERT [dbo].[TinTucs] ([MaTinTuc], [TieuDe], [AnhDaiDien], [MoTa], [NgayTao], [ChiTiet], [LuotXem]) VALUES (5, N'Tích hợp thiết bị giám sát an ninh cho cửa cuốn - lợi đủ đường', N'/Images/TinTuc/tich-hop-thiet-bi-giam-sat.png', N'Tốc độ phát triển của công nghệ đã thay đổi cuộc sống của chúng ta từng ngày. Từ những vật tưởng chừng “vô tri vô giác” như chiếc cửa cuốn nay cũng đã được “phù phép” để thông minh hơn, thậm chí có thể kết nối với con người. Đồng thời, cửa cuốn có thể được trang bị thêm những vũ khí lợi hại để đạt mức an toàn anh ninh tối đa, bảo vệ cho cả ngôi nhà.', CAST(N'2017-11-23T00:00:02.000' AS DateTime), N'<p><strong><em>Tốc độ ph&aacute;t triển của c&ocirc;ng nghệ đ&atilde; thay đổi cuộc sống của ch&uacute;ng ta từng ng&agrave;y. Từ những vật tưởng chừng &ldquo;v&ocirc; tri v&ocirc; gi&aacute;c&rdquo; như chiếc cửa cuốn nay cũng đ&atilde; được &ldquo;ph&ugrave; ph&eacute;p&rdquo; để th&ocirc;ng minh hơn, thậm ch&iacute; c&oacute; thể kết nối với con người. Đồng thời, cửa cuốn c&oacute; thể được trang bị th&ecirc;m những vũ kh&iacute; lợi hại để đạt mức an to&agrave;n anh ninh tối đa, bảo vệ cho cả ng&ocirc;i nh&agrave;.</em></strong></p>

<p>Tại Việt Nam, Tập đo&agrave;n Austdoor l&agrave; đơn vị ti&ecirc;n phong trong lĩnh vực ứng dụng v&agrave; ph&aacute;t triển c&aacute;c c&ocirc;ng nghệ t&iacute;ch hợp c&aacute;c thiết bị gi&aacute;m s&aacute;t an ninh d&agrave;nh cho cửa cuốn.</p>

<p>Hiện nay, tất cả c&aacute;c d&ograve;ng sản phẩm cửa cuốn của Austdoor đều c&oacute; khả năng kết nối với thiết bị b&aacute;o ch&aacute;y khi c&oacute; hỏa hoạn, ở đ&acirc;y ch&iacute;nh l&agrave; <strong>cảm biến kh&oacute;i</strong>.</p>

<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <img alt="" src="/Images/ChiTietSP/images/thiet%20bi%20chong%20chay%20cho%20cua%20cuon.jpg" style="height:250px; width:625px" /></p>

<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <em>C&aacute;c loại thiết bị cảm biến kh&oacute;i t&iacute;ch hợp trong cửa cuốn Austdoor </em></p>

<p>Cảm biến kh&oacute;i l&agrave; một thiết bị được gắn l&ecirc;n trần gần khu vực cửa với chiều cao khoảng 1.5 &ndash; 5m với b&aacute;n k&iacute;nh cảm biến khoảng 20m2. Khi ph&aacute;t hiện c&oacute; kh&oacute;i, bộ cảm biến sẽ r&uacute; c&ograve;i tại chỗ, k&ecirc;u li&ecirc;n tục để cảnh b&aacute;o cho gia đ&igrave;nh. Việc t&iacute;ch hợp được thiết bị b&aacute;o ch&aacute;y gi&uacute;p người sử dụng y&ecirc;n t&acirc;m hơn trong trường hợp c&oacute; qu&aacute; nhiều tai nạn ch&aacute;y nổ xảy ra trong thời gian vừa qua.</p>

<p>Một điều lo lắng nữa của người ti&ecirc;u d&ugrave;ng khi chọn mua cửa l&agrave; nguy cơ kẻ gian đột nhập hoặc cửa cuốn liệu c&oacute; g&acirc;y ra thương t&iacute;ch khi sơ &yacute; đi đến l&uacute;c cửa đang vận h&agrave;nh. Tuy nhi&ecirc;n <strong>hệ thống c&ograve;i ph&aacute;t t&iacute;n hiệu b&aacute;o động </strong>khi c&oacute; h&agrave;nh động cố t&igrave;nh đột nhập hay l&uacute;c cửa đảo chiều khi gặp vận cản cũng l&agrave; một thiết bị an ninh n&ecirc;n c&oacute;. Nhờ đ&oacute;, chủ nh&agrave; sẽ được cảnh b&aacute;o nếu c&oacute; kẻ lạ đột nhập với &yacute; định xấu hoặc được nhắc nhở kiểm tra ngay t&igrave;nh trạng cửa nếu c&oacute; chướng ngại vật trong qu&aacute; tr&igrave;nh đ&oacute;ng xuống. Điều n&agrave;y gi&uacute;p cho gia đ&igrave;nh th&ecirc;m an t&acirc;m hơn khi sử dụng.</p>

<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <img alt="" src="/Images/ChiTietSP/images/coi-bao-dong-cua-cuon.jpg" style="height:280px; width:70%" /></p>

<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <em>C&ograve;i b&aacute;o động gi&uacute;p b&aacute;o cho chủ nh&agrave; những t&igrave;nh trạng nguy hiểm của cửa cuốn </em></p>

<p>V&agrave; nếu như bạn vẫn c&ograve;n băn khoăn, chưa ho&agrave;n to&agrave;n an t&acirc;m về chiếc cửa cuốn nh&agrave; m&igrave;nh th&igrave; việc t&iacute;ch hợp thiết bị <strong>camera </strong>sẽ đ&aacute;nh bay ho&agrave;n to&agrave;n mọi băn khoăn ấy. Với camera được gắn tr&ecirc;n khu vực cửa, bạn c&oacute; thể kiểm tra được t&igrave;nh trạng đ&oacute;ng/mở cửa v&agrave; quan s&aacute;t khu vực trước cửa nh&agrave; m&igrave;nh 24/24h th&ocirc;ng qua smartphone. T&aacute;c dụng của camera kh&ocirc;ng c&oacute; g&igrave; cần b&agrave;n c&atilde;i khi c&oacute; thể ph&aacute;t hiện những đối tượng kẻ gian hoặc nhiều t&igrave;nh huống nguy hiểm kh&aacute;c.</p>

<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; <img alt="" src="/Images/ChiTietSP/images/mobile.png" style="height:320px; width:70%" /></p>

<p>T&iacute;ch hợp camera gi&uacute;p quan s&aacute;t t&igrave;nh trạng cửa th&ocirc;ng qua smartphone 24/24 Bằng việc c&oacute; khả năng t&iacute;ch hợp được những thiết bị an ninh, cửa cuốn Austdoor kh&ocirc;ng c&ograve;n l&agrave; một bộ phận th&ocirc;ng thường của ng&ocirc;i nh&agrave; m&agrave; đ&atilde; trở th&agrave;nh c&aacute;nh tay đắc lực, một người vệ sỹ đảm bảo an to&agrave;n cho cả gia đ&igrave;nh. Giữa việc lựa chọn một cuộc sống an t&acirc;m thảnh thơi v&agrave; việc lu&ocirc;n lo lắng những rủi ro ập đến th&igrave; kh&ocirc;ng c&oacute; l&yacute; do n&agrave;o để từ chối sử dụng c&aacute;c thiết bị n&agrave;y đ&uacute;ng kh&ocirc;ng c&aacute;c bạn?</p>
', 16)
INSERT [dbo].[TinTucs] ([MaTinTuc], [TieuDe], [AnhDaiDien], [MoTa], [NgayTao], [ChiTiet], [LuotXem]) VALUES (7, N'Cửa cuốn chống bão - Lựa chọn tối ưu khi mùa bão đến', N'/Images/TinTuc/cua-cuon-chong-bao.png', N'Tháng 7, tháng 8 đến hàng năm cũng là thời điểm bắt đầu của mùa mưa bão. Gió to kèm theo mưa nặng hạt, thậm chí có mưa đá, xoáy lốc có thể gây ra những hậu quả không lường trước. Vì vậy, tự trang bị cho căn nhà mình một bộ cửa vững chắc, bền bỉ trước gió bão là điều hết sức cần thiết mà bạn hoàn toàn có thể làm được.', CAST(N'2017-11-23T00:00:00.000' AS DateTime), N'<p><strong><em>Th&aacute;ng 7, th&aacute;ng 8 đến h&agrave;ng năm cũng l&agrave; thời điểm bắt đầu của m&ugrave;a mưa b&atilde;o. Gi&oacute; to k&egrave;m theo mưa nặng hạt, thậm ch&iacute; c&oacute; mưa đ&aacute;, xo&aacute;y lốc c&oacute; thể g&acirc;y ra những hậu quả kh&ocirc;ng lường trước. V&igrave; vậy, tự trang bị cho căn nh&agrave; m&igrave;nh một bộ cửa vững chắc, bền bỉ trước gi&oacute; b&atilde;o l&agrave; điều hết sức cần thiết m&agrave; bạn ho&agrave;n to&agrave;n c&oacute; thể l&agrave;m được.</em></strong></p>

<p>Th&aacute;ng 7, th&aacute;ng 8 đến h&agrave;ng năm cũng l&agrave; thời điểm bắt đầu của m&ugrave;a mưa b&atilde;o. Đặc biệt l&agrave; miền Bắc v&agrave; miền Trung, nơi thường xuy&ecirc;n g&aacute;nh chịu những ảnh hưởng nặng nề. Gi&oacute; to k&egrave;m theo mưa nặng hạt, thậm ch&iacute; c&oacute; mưa đ&aacute;, xo&aacute;y lốc l&agrave; nỗi lo lắng của nhiều gia đ&igrave;nh.</p>

<p><img alt="" src="/Images/ChiTietSP/images/bao%201.jpg" style="height:520px; width:100%" /></p>

<p><em>Nh&igrave;n h&igrave;nh ảnh n&agrave;y của cơn b&atilde;o số 2 vừa đi qua tại H&agrave; Tĩnh (16/7), bạn nghĩ chiếc cửa cuốn kia liệu c&oacute; trụ được nếu như cơn b&atilde;o mạnh hơn? (Ảnh: internet)</em></p>

<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; B&atilde;o đi qua mới thấy tầm quan trọng của một bộ cửa đối với căn nh&agrave; (ảnh: internet)</p>

<p><img alt="" src="/Images/ChiTietSP/images/bao%202.jpg" style="height:520px; width:100%" /></p>

<p><img alt="" src="/Images/ChiTietSP/images/20170717060808-bao-so-2-1.jpg" style="height:520px; width:100%" /></p>

<p>Kh&ocirc;ng thể phủ nhận, một bộ cửa tốt sẽ g&oacute;p phần quan trọng trong việc bảo vệ ng&ocirc;i nh&agrave; v&agrave;o m&ugrave;a mưa b&atilde;o. C&oacute; thể thấy, d&ograve;ng cửa cuốn chuy&ecirc;n dụng tr&aacute;nh b&atilde;o sẽ l&agrave; lựa chọn tối ưu cho những gia đ&igrave;nh nằm trong khu vực thường xuy&ecirc;n bị b&atilde;o &ldquo;gh&eacute; thăm&rdquo;.</p>

<p><strong>Cửa cuốn chống b&atilde;o Austdoor c&oacute; g&igrave; đặc biệt hơn c&aacute;c loại cửa th&ocirc;ng thường?</strong></p>

<p>Y&ecirc;u cầu số một đối với c&aacute;c d&ograve;ng cửa chuy&ecirc;n dụng chống b&atilde;o đ&oacute; l&agrave; sự vững chắc. Với d&ograve;ng cửa cuốn chống b&atilde;o HURRI50 của Austdoor, th&acirc;n cửa được chế tạo từ c&aacute;c nan nh&ocirc;m hợp kim 6063 T5 kết cấu hai lớp c&oacute; độ d&agrave;y l&ecirc;n tới 1.5mm. C&ugrave;ng với đ&oacute; l&agrave; c&aacute;c bộ phần: ray dẫn hướng v&agrave; bọ bịt đầu nan được thiết kế đặc biệt đảm bảo th&acirc;n cửa kh&ocirc;ng bị tuột khỏi ray khi c&oacute; lực t&aacute;c động mạnh như mưa gi&oacute;.</p>

<p><strong>Vững chắc, nhưng vẫn phải bền </strong></p>

<p>Chất liệu nh&ocirc;m hợp kim c&oacute; độ bền cao, đồng thời sẽ gi&uacute;p c&aacute;ch &acirc;m, c&aacute;ch nhiệt, cho gia đ&igrave;nh an t&acirc;m hơn trong m&ugrave;a mưa b&atilde;o. Ngo&agrave;i việc vững chắc, d&ograve;ng cửa cuốn chống b&atilde;o cũng c&oacute; hệ sơn m&agrave;u v&agrave; lớp phủ bảo vệ đặc biệt cho tuổi thọ của lớp sơn l&ecirc;n đến hơn 10 năm m&agrave; kh&ocirc;ng bị bay m&agrave;u hay l&atilde;o h&oacute;a.</p>

<p><strong>T&iacute;nh thẩm mĩ l&agrave; điều kh&ocirc;ng thể thiếu </strong></p>

<p>Đừng qu&ecirc;n quan t&acirc;m đến t&iacute;nh thẩm mĩ của bộ cửa d&ugrave; cho nh&agrave; bạn c&oacute; l&agrave; nh&agrave; mặt phố hay kh&ocirc;ng. Austdoor kh&aacute; ch&uacute; trọng đến điều n&agrave;y khi nghi&ecirc;n cứu ra <strong>d&ograve;ng cửa cuốn chống b&atilde;o HURRI50 </strong>c&oacute; khả năng tạo khe tho&aacute;ng linh hoạt gi&uacute;p lấy gi&oacute; v&agrave; &aacute;nh s&aacute;ng tự nhi&ecirc;n. Người sử dụng c&oacute; thể chọn trạng th&aacute;i th&ocirc;ng tho&aacute;ng trong những ng&agrave;y thường v&agrave; đ&oacute;ng k&iacute;n khi c&oacute; mưa b&atilde;o. Ngo&agrave;i ra, <strong>HURRI50</strong> c&oacute; khả năng đ&aacute;p ứng k&iacute;ch thước lớn cho c&aacute;c c&ocirc;ng tr&igrave;nh x&acirc;y dựng.</p>

<p>C&oacute; thể n&oacute;i, sử dụng <strong>cửa cuốn chống b&atilde;o </strong>sẽ g&oacute;p phần kh&ocirc;ng nhỏ v&agrave;o việc đảm bảo an to&agrave;n cho những gia đ&igrave;nh nằm trong khu vực hay phải đối mặt với những cơn b&atilde;o h&agrave;ng năm. Hy vọng sản phẩm n&agrave;y của Austdoor sẽ mang đến sự thoải m&aacute;i v&agrave; an t&acirc;m tuyệt đối cho c&aacute;c gia đ&igrave;nh ngay khi cơn b&atilde;o đang &ldquo;gầm gừ&rdquo; ngo&agrave;i cửa.</p>
', 8)
INSERT [dbo].[TinTucs] ([MaTinTuc], [TieuDe], [AnhDaiDien], [MoTa], [NgayTao], [ChiTiet], [LuotXem]) VALUES (8, N'Những lợi ích khi lắp ô xuyên sáng cho cửa cuốn?', N'/Images/TinTuc/loi_ich.png', N'Việc Austdoor cho ra mắt dòng cửa cuốn khe thoáng thế hệ mới có thêm nhiều tính năng ưu việt đã trở thành sự kiện nổi bật năm 2016. Trong đó, ô xuyên sáng là điểm nhấn quan trọng giúp dòng cửa này nhận được sự đón nhận nồng nhiệt từ khách hàng. Vậy những lợi ích khi lắp thêm ô xuyên sáng cho cửa cuốn là gì?', CAST(N'2017-11-23T00:00:00.000' AS DateTime), N'<p>&nbsp;</p>

<p><img alt="Những ô xuyên sáng nổi bật trên dòng cửa cuốn khe thoáng thế hệ mới của Austdoor" src="/Images/ChiTietSP/images/Xuyen%20sang%20-%20M6.jpg" style="float:left; height:350px; width:100%" /></p>

<p><strong>Đ&oacute;n s&aacute;ng tự nhi&ecirc;n cho cả căn nh&agrave; </strong></p>

<p>C&aacute;c &ocirc; xuy&ecirc;n s&aacute;ng tr&ecirc;n th&acirc;n cửa khe tho&aacute;ng được sản xuất từ vật liệu Polucarbonate trong suốt gi&uacute;p đưa &aacute;nh s&aacute;ng tự nhi&ecirc;n v&agrave;o nh&agrave;, đồng thời vẫn ngăn được bụi v&agrave; tiếng ốn khi cửa đ&oacute;ng xuống. Lợi &iacute;ch n&agrave;y v&ocirc; c&ugrave;ng quan trọng, gi&uacute;p ng&ocirc;i nh&agrave; được tr&agrave;n ngập &aacute;nh s&aacute;ng tự nhi&ecirc;n, từ đ&oacute; tiết kiệm năng lượng điện.</p>

<p><strong>Mang n&eacute;t thẩm mỹ hiện đại v&agrave; kh&aacute;c biệt </strong></p>

<p>Với những y&ecirc;u cầu của c&aacute;c căn nh&agrave; mặt phố, thẩm mỹ l&agrave; ti&ecirc;u ch&iacute; rất quan trọng, trong đ&oacute; đặc biệt l&agrave; bộ cửa &ndash; bộ mặt của cả gia đ&igrave;nh. Nếu như những chiếc cửa cuốn th&ocirc;ng thường bị hạn chế bởi sự k&iacute;n m&iacute;t, lạnh lẽo th&igrave; những &ocirc; xuy&ecirc;n s&aacute;ng sẽ giải quyết điều n&agrave;y bằng những tạo h&igrave;nh c&aacute; t&iacute;nh v&agrave; lạ mắt tr&ecirc;n th&acirc;n cửa. Những điểm nhấn kh&aacute;c biệt &acirc;t sẽ x&oacute;a tan ấn tượng về những bộ cửa cuốn th&ocirc; cứng bằng n&eacute;t đẹp hiện đại.</p>

<p><strong>Vật liệu &ocirc; xuy&ecirc;n s&aacute;ng si&ecirc;u bền</strong></p>

<p>Polycarbonate l&agrave; loại vật liệu c&oacute; độ cứng cao, &iacute;t bị xước bề mặt, c&oacute; khả năng chịu nhiệt tốt v&agrave; kh&ocirc;ng bị ố v&agrave;ng trong điều kiện thời tiết nhiệt đới khắc nghiệt. Ngo&agrave;i ra Polycarbonate cũng kh&ocirc;ng bắt lửa v&agrave; kh&ocirc;ng truyền lửa. Do vậy h&atilde;y cứ y&ecirc;n t&acirc;m để cửa cuốn nh&agrave; bạn được điểm xuyết bởi những &ocirc; xuy&ecirc;n s&aacute;ng nh&eacute;!</p>

<p>B&ecirc;n cạnh những ưu điểm v&ocirc; c&ugrave;ng vượt trội của c&aacute;c &ocirc; xuy&ecirc;n s&aacute;ng, d&ograve;ng cửa cuốn khe tho&aacute;ng thế hệ mới vẫn t&iacute;ch hợp trong n&oacute; những t&iacute;nh năng về an ninh v&agrave; an to&agrave;n tối ưu nhất của cửa cuốn Austdoor. V&igrave; vậy kh&ocirc;ng kh&oacute; hiểu khi d&ograve;ng cửa n&agrave;y lu&ocirc;n nằm trong top những sản phẩm được ưa chuộng nhất.</p>
', 12)
INSERT [dbo].[TinTucs] ([MaTinTuc], [TieuDe], [AnhDaiDien], [MoTa], [NgayTao], [ChiTiet], [LuotXem]) VALUES (9, N'Giải đáp 10 câu hỏi thường gặp của người mua cửa cuốn', N'/Images/TinTuc/abc.jpg', N'Người mua cửa cuốn lần đầu có rất nhiều thắc mắc mong muốn được giải đáp. Dưới đây, Austdoor sẽ gửi tới bạn lời giải đáp cho 10 câu hỏi thường gặp nhất của khách hàng khi mua cửa cuốn.', CAST(N'2017-11-23T00:00:00.000' AS DateTime), N'<p><strong><em>Người mua cửa cuốn lần đầu c&oacute; rất nhiều thắc mắc mong muốn được giải đ&aacute;p. Dưới đ&acirc;y, Austdoor sẽ gửi tới bạn lời giải đ&aacute;p cho 10 c&acirc;u hỏi thường gặp nhất của kh&aacute;ch h&agrave;ng khi mua cửa cuốn.</em></strong></p>

<p><em><strong>Việc chọn mua cửa cuốn giờ đ&acirc;y đ&atilde; trở n&ecirc;n dễ d&agrave;ng hơn bởi bạn đ&atilde; biết được những th&ocirc;ng tin bổ &iacute;ch n&agrave;y</strong></em>:</p>

<p><strong>1. T&igrave;m địa chỉ mua cửa cuốn ch&iacute;nh h&atilde;ng ở đ&acirc;u? </strong></p>

<p>Bạn xứng đ&aacute;ng l&agrave; kh&aacute;ch h&agrave;ng th&ocirc;ng th&aacute;i khi đặt c&acirc;u hỏi n&agrave;y. Hiện, tr&ecirc;n thị trường c&oacute; rất nhiều địa chỉ b&aacute;n cửa cuốn, tuy nhi&ecirc;n h&atilde;y lựa chọn c&aacute;c đại l&yacute; cửa cuốn uy t&iacute;n, ph&acirc;n phối sản phẩm ch&iacute;nh h&atilde;ng để được b&aacute;o gi&aacute; hợp l&yacute; v&agrave; sở hữu một bộ cửa cuốn chất lượng tốt, bền bỉ v&agrave; an to&agrave;n.</p>

<p>H&atilde;y lựa chọn một v&agrave;i thương hiệu cửa cuốn uy t&iacute;n, sau đ&oacute; tra cứu th&ocirc;ng tin về c&aacute;c đại l&yacute; ph&acirc;n phối của họ gần nơi sinh sống của bạn nhất để c&oacute; thể đến tận nơi tham quan sản phẩm mẫu v&agrave; đặt mua cửa cuốn. Bạn c&oacute; thể t&igrave;m kiếm địa chỉ mua cửa cuốn Austdoor ch&iacute;nh h&atilde;ng&nbsp;ở cửa h&agrave;ng nh&ocirc;m k&iacute;nh Thi&ecirc;n Ph&uacute;</p>

<p><strong>2. T&ocirc;i c&oacute; thể y&ecirc;u cầu thiết kế cửa cuốn theo &yacute; muốn của m&igrave;nh kh&ocirc;ng?</strong></p>

<p>Ho&agrave;n to&agrave;n c&oacute; thể, h&atilde;y chia sẽ &yacute; tưởng s&aacute;ng tạo của bạn với đại l&yacute; cửa cuốn để được tư vấn th&ecirc;m. Sau đ&oacute;, y&ecirc;u cầu của bạn sẽ được gửi đến nh&agrave; sản xuất để cho ra đời một bộ cửa cuốn ưng &yacute;.</p>

<p><strong>3. Thời hạn bảo h&agrave;nh một bộ cửa cuốn l&agrave; bao l&acirc;u?</strong></p>

<p>Những thương hiệu cửa cuốn uy t&iacute;n đều c&oacute; ch&iacute;nh s&aacute;ch bảo h&agrave;nh cho sản phẩm của m&igrave;nh. Khi mua h&agrave;ng, bạn h&atilde;y hỏi r&otilde; đại l&yacute; b&aacute;n h&agrave;ng về vấn đề n&agrave;y, y&ecirc;u cầu được cung cấp phiếu hoặc tem bảo h&agrave;nh sản phẩm. C&ugrave;ng tham khảo quy định bảo h&agrave;nh sản phẩm của cửa cuốn Austdoor&nbsp;website n&agrave;y.</p>

<p><strong>4. C&aacute;c ti&ecirc;u ch&iacute; quan trọng khi chọn mua cửa cuốn l&agrave; g&igrave;?</strong></p>

<p>Nếu chưa c&oacute; nhiều kinh nghiệm sử dụng cửa cuốn, h&atilde;y tham khảo c&aacute;c ti&ecirc;u chia sau khi chọn mua sản phẩm:</p>

<p><strong>- Gi&aacute; th&agrave;nh:</strong> chi ph&iacute; cho một bộ cửa cuốn kh&ocirc;ng phải l&agrave; nhỏ, bởi vậy bạn cũng cần phải c&acirc;n đối. Tuy nhi&ecirc;n kh&ocirc;ng n&ecirc;n chọn mua cửa cuốn gi&aacute; th&agrave;nh rẻ m&agrave; kh&ocirc;ng r&otilde; thương hiệu, nguồn gốc xuất xứ bởi điều n&agrave;y sẽ ảnh hưởng trực tiếp tới độ bền của sản phẩm.</p>

<p><strong>- T&iacute;nh thẩm mỹ</strong>: Cửa cuốn thường lắp đặt ở vị tr&iacute; mặt tiền ng&ocirc;i nh&agrave;, bởi vậy h&atilde;y coi trọng t&iacute;nh thẩm mỹ, hiện đại của bộ cửa v&igrave; n&oacute; g&oacute;p phần t&ocirc;n vinh sự kh&aacute;c biệt, độc đ&aacute;o cho ng&ocirc;i nh&agrave; của bạn.</p>

<p><strong>- Dễ d&agrave;ng sử dụng:</strong> những chiếc cửa cuốn hiện đại lu&ocirc;n hướng tới sự đơn giản, tiện lợi cho người sử dụng. Bởi vậy, h&atilde;y chọn mua cửa cuốn điều khiển tự động, c&oacute; cả t&iacute;nh năng đ&oacute;ng/mở được ngay cả khi mất điện.</p>

<p><strong>- Độ d&agrave;y th&acirc;n cửa:</strong> cửa cuốn vững chắc v&agrave; an to&agrave;n lu&ocirc;n mang lại sự an t&acirc;m cho người sử dụng. H&atilde;y chọn cửa cuốn c&oacute; th&acirc;n cửa d&agrave;y dặn, l&agrave;m từ hợp kim th&eacute;p hoặc nh&ocirc;m cao cấp.</p>

<p><strong>- An to&agrave;n: </strong>cửa cuốn n&ecirc;n c&oacute; t&iacute;nh năng tự động đảo chiều khi gặp vật cản, để đảm bảo an to&agrave;n cho c&aacute;c th&agrave;nh vi&ecirc;n trong gia đ&igrave;nh, tr&aacute;nh trường hợp c&oacute; người đứng ngay b&ecirc;n dưới khi cửa cuốn đang trong h&agrave;nh tr&igrave;nh đ&oacute;ng xuống, rất nguy hiểm đến t&iacute;nh mạng. Ngo&agrave;i ra, h&atilde;y lắp đặt th&ecirc;m phụ kiện an to&agrave;n cho cửa cuốn như: camera gi&aacute;m s&aacute;t, c&ograve;i b&aacute;o động, bộ cảm biến kh&oacute;i đề ph&ograve;ng c&aacute;c trường hợp khẩn cấp. <strong>- Những t&iacute;nh năng c&ocirc;ng nghệ vượt trội: </strong>bạn đ&atilde; bao giờ nghĩ m&igrave;nh c&oacute; thể điều khiển cửa cuốn ở vị tr&iacute; c&aacute;ch rất xa ng&ocirc;i nh&agrave; của m&igrave;nh, thậm ch&iacute; nhắn tin, gọi điện cho cửa cuốn? Điều n&agrave;y ho&agrave;n to&agrave;n c&oacute; thể khi lựa chọn cửa cuốn Austdoor. Bởi vậy, đừng bỏ qua ti&ecirc;u ch&iacute; n&agrave;y khi chọn mua cửa cuốn nh&eacute;.</p>

<p><strong>5. L&agrave;m sao để cửa cuốn đảm bảo an ninh tốt nhất cho nh&agrave; ở? </strong></p>

<p>H&atilde;y đ&oacute;ng cửa cuốn v&agrave; kh&oacute;a cửa cẩn thận khi kh&ocirc;ng c&oacute; người ở nh&agrave;. Ngo&agrave;i ra, để tăng cường đảm bảo an ninh cho nh&agrave; ở, cần thiết phải chọn mua cửa cuốn d&agrave;y dặn, c&oacute; hộp điều khiển chống sao ch&eacute;p m&atilde; số mở cửa v&agrave; phụ kiện đi k&egrave;m l&agrave; camera gi&aacute;m s&aacute;t, c&ograve;i b&aacute;o động khi c&oacute; kẻ gian cậy ph&aacute; cửa&hellip; Để t&igrave;m hiểu r&otilde; hơn về nội dung n&agrave;y, bạn h&atilde;y li&ecirc;n hệ với Trung t&acirc;m dịch vụ kh&aacute;ch h&agrave;ng cửa Thi&ecirc;n Ph&uacute;, sổ Tổng đ&agrave;i CSKH: (0321)353 8886.</p>

<p><strong>6. C&oacute; phải cửa cuốn n&agrave;o cũng đảo chiều được khi gặp vật cản? </strong></p>

<p>Kh&ocirc;ng đ&uacute;ng. Đ&acirc;y l&agrave; lựa chọn th&ecirc;m của kh&aacute;ch h&agrave;ng, hơn nữa kh&ocirc;ng phải cửa cuốn của h&atilde;ng n&agrave;o cũng c&oacute; t&iacute;nh năng n&agrave;y. Bạn h&atilde;y y&ecirc;u cầu đại l&yacute; đặt h&agrave;ng bộ cửa cuốn sở c&oacute; t&iacute;nh năng an to&agrave;n đặc biệt n&agrave;y, hoặc lắp đặt cửa cuốn Austdoor đồng bộ.</p>

<p><strong>7. Sau khi đặt mua cửa cuốn, bao nhiều ng&agrave;y th&igrave; thợ đến lắp cửa?</strong></p>

<p>Trong thời gian từ 7 đến 10 ng&agrave;y, kể từ khi đại l&yacute; đến đo đạc, cửa cuốn sẽ được vận chuyển tới nh&agrave; bạn.</p>

<p><strong>8. C&oacute; phải cửa cuốn đắt tiền th&igrave; sẽ tốt hơn cửa cuốn gi&aacute; rẻ? </strong></p>

<p>Gi&aacute; th&agrave;nh cửa cuốn phụ thuộc v&agrave;o thương hiệu, chủng loại sản phẩm, c&aacute;c t&iacute;nh năng c&ocirc;ng nghệ, t&iacute;nh thẩm mỹ&hellip; của bộ cửa. Hơn nữa, độ bền của cửa cũng phụ thuộc v&agrave;o việc bạn c&oacute; sử dụng đ&uacute;ng kĩ thuật, thường xuy&ecirc;n chăm s&oacute;c, bảo dưỡng hay kh&ocirc;ng.</p>

<p>Bởi vậy, n&oacute;i cửa cuốn đắt tiền sẽ tốt hơn cửa cuốn gi&aacute; rẻ chỉ mang t&iacute;nh tương đối.</p>

<p><strong>9. Sau bao l&acirc;u th&igrave; n&ecirc;n bảo dưỡng cửa cuốn?</strong></p>

<p>Định kỳ 6 th&aacute;ng 1 lần, bạn n&ecirc;n bảo dưỡng cửa cuốn để ph&ograve;ng tr&aacute;nh nguy cơ hỏng cửa cuốn, đồng thời t&acirc;n trang vẻ đẹp b&ecirc;n ngo&agrave;i cho cửa lu&ocirc;n đẹp như mới.</p>

<p><strong>10. C&aacute;ch vệ sinh v&agrave; chăm s&oacute;c th&acirc;n cửa cuốn? </strong></p>

<p>Vệ sinh bằng nước rửa kh&ocirc;ng c&oacute; t&iacute;nh chất axit hoặc d&ugrave;ng nước sạch v&agrave; vải mềm theo định kỳ 3 th&aacute;ng/lần. Bề mặt trong của ray dẫn hướng n&ecirc;n được vệ sinh bằng nước rửa kh&ocirc;ng c&oacute; t&iacute;nh axit v&agrave; vải mềm định kỳ 6 th&aacute;ng/lần.</p>

<p>Tuyệt đối kh&ocirc;ng d&ugrave;ng dầu mỡ để b&ocirc;i trơn cho ray dẫn hướng.</p>
', 9)
SET IDENTITY_INSERT [dbo].[TinTucs] OFF
GO
ALTER TABLE [dbo].[CongTrinhNoiBats] ADD  CONSTRAINT [DF_CongTrinhNoiBats_TrangThai]  DEFAULT ((1)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[HoaDons] ADD  DEFAULT ((0)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[SanPhams] ADD  CONSTRAINT [DF__SanPhams__GiaGia__2F10007B]  DEFAULT ((0)) FOR [GiaGiam]
GO
ALTER TABLE [dbo].[SanPhams] ADD  CONSTRAINT [DF__SanPhams__LuotXe__300424B4]  DEFAULT ((0)) FOR [LuotXem]
GO
ALTER TABLE [dbo].[SanPhams] ADD  CONSTRAINT [DF__SanPhams__DacBie__30F848ED]  DEFAULT ((0)) FOR [DacBiet]
GO
ALTER TABLE [dbo].[TinTucs] ADD  CONSTRAINT [DF_TinTucs_LuotXem]  DEFAULT ((0)) FOR [LuotXem]
GO
ALTER TABLE [dbo].[ChiTietHoaDonNhaps]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDonNhaps_HoaDonNhaps] FOREIGN KEY([MaHoaDon])
REFERENCES [dbo].[HoaDonNhaps] ([MaHoaDon])
GO
ALTER TABLE [dbo].[ChiTietHoaDonNhaps] CHECK CONSTRAINT [FK_ChiTietHoaDonNhaps_HoaDonNhaps]
GO
ALTER TABLE [dbo].[ChiTietHoaDonNhaps]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDonNhaps_SanPhams] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPhams] ([MaSanPham])
GO
ALTER TABLE [dbo].[ChiTietHoaDonNhaps] CHECK CONSTRAINT [FK_ChiTietHoaDonNhaps_SanPhams]
GO
ALTER TABLE [dbo].[ChiTietHoaDons]  WITH CHECK ADD  CONSTRAINT [FK_DetailBill_Bills] FOREIGN KEY([MaHoaDon])
REFERENCES [dbo].[HoaDons] ([MaHoaDon])
GO
ALTER TABLE [dbo].[ChiTietHoaDons] CHECK CONSTRAINT [FK_DetailBill_Bills]
GO
ALTER TABLE [dbo].[ChiTietHoaDons]  WITH CHECK ADD  CONSTRAINT [FK_DetailBill_Products] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPhams] ([MaSanPham])
GO
ALTER TABLE [dbo].[ChiTietHoaDons] CHECK CONSTRAINT [FK_DetailBill_Products]
GO
ALTER TABLE [dbo].[ChiTietSanPhams]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietSanPhams_NhaSanXuats] FOREIGN KEY([MaNhaSanXuat])
REFERENCES [dbo].[HangSanXuats] ([MaHang])
GO
ALTER TABLE [dbo].[ChiTietSanPhams] CHECK CONSTRAINT [FK_ChiTietSanPhams_NhaSanXuats]
GO
ALTER TABLE [dbo].[ChiTietSanPhams]  WITH CHECK ADD  CONSTRAINT [FK_DetailProducts_Products] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPhams] ([MaSanPham])
GO
ALTER TABLE [dbo].[ChiTietSanPhams] CHECK CONSTRAINT [FK_DetailProducts_Products]
GO
ALTER TABLE [dbo].[ChiTietTaiKhoans]  WITH CHECK ADD  CONSTRAINT [FK_InformationAccounts_Accounts] FOREIGN KEY([MaTaiKhoan])
REFERENCES [dbo].[TaiKhoans] ([MaTaiKhoan])
GO
ALTER TABLE [dbo].[ChiTietTaiKhoans] CHECK CONSTRAINT [FK_InformationAccounts_Accounts]
GO
ALTER TABLE [dbo].[HoaDonNhaps]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonNhaps_NhaPhanPhois] FOREIGN KEY([MaNhaPhanPhoi])
REFERENCES [dbo].[NhaPhanPhois] ([MaNhaPhanPhoi])
GO
ALTER TABLE [dbo].[HoaDonNhaps] CHECK CONSTRAINT [FK_HoaDonNhaps_NhaPhanPhois]
GO
ALTER TABLE [dbo].[HoaDonNhaps]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonNhaps_TaiKhoans] FOREIGN KEY([MaTaiKhoan])
REFERENCES [dbo].[TaiKhoans] ([MaTaiKhoan])
GO
ALTER TABLE [dbo].[HoaDonNhaps] CHECK CONSTRAINT [FK_HoaDonNhaps_TaiKhoans]
GO
ALTER TABLE [dbo].[SanPhams]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([MaChuyenMuc])
REFERENCES [dbo].[ChuyenMucs] ([MaChuyenMuc])
GO
ALTER TABLE [dbo].[SanPhams] CHECK CONSTRAINT [FK_Products_Categories]
GO
ALTER TABLE [dbo].[SanPhams_NhaPhanPhois]  WITH CHECK ADD  CONSTRAINT [FK_SanPhams_NhaPhanPhois_NhaPhanPhois] FOREIGN KEY([MaNhaPhanPhoi])
REFERENCES [dbo].[NhaPhanPhois] ([MaNhaPhanPhoi])
GO
ALTER TABLE [dbo].[SanPhams_NhaPhanPhois] CHECK CONSTRAINT [FK_SanPhams_NhaPhanPhois_NhaPhanPhois]
GO
ALTER TABLE [dbo].[SanPhams_NhaPhanPhois]  WITH CHECK ADD  CONSTRAINT [FK_SanPhams_NhaPhanPhois_SanPhams] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPhams] ([MaSanPham])
GO
ALTER TABLE [dbo].[SanPhams_NhaPhanPhois] CHECK CONSTRAINT [FK_SanPhams_NhaPhanPhois_SanPhams]
GO
ALTER TABLE [dbo].[TaiKhoans]  WITH CHECK ADD  CONSTRAINT [FK_Accounts_TypeAccounts] FOREIGN KEY([LoaiTaiKhoan])
REFERENCES [dbo].[LoaiTaiKhoans] ([MaLoai])
GO
ALTER TABLE [dbo].[TaiKhoans] CHECK CONSTRAINT [FK_Accounts_TypeAccounts]
GO
USE [master]
GO
ALTER DATABASE [WebNhomKinh] SET  READ_WRITE 
GO
