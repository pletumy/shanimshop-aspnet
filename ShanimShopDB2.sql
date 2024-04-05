USE [master]
GO
/****** Object:  Database [ShanimShopDB2]    Script Date: 12/25/2023 1:59:30 AM ******/
CREATE DATABASE [ShanimShopDB2]
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ShanimShopDB2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ShanimShopDB2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ShanimShopDB2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ShanimShopDB2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ShanimShopDB2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ShanimShopDB2] SET ARITHABORT OFF 
GO
ALTER DATABASE [ShanimShopDB2] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ShanimShopDB2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ShanimShopDB2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ShanimShopDB2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ShanimShopDB2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ShanimShopDB2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ShanimShopDB2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ShanimShopDB2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ShanimShopDB2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ShanimShopDB2] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ShanimShopDB2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ShanimShopDB2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ShanimShopDB2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ShanimShopDB2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ShanimShopDB2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ShanimShopDB2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ShanimShopDB2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ShanimShopDB2] SET RECOVERY FULL 
GO
ALTER DATABASE [ShanimShopDB2] SET  MULTI_USER 
GO
ALTER DATABASE [ShanimShopDB2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ShanimShopDB2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ShanimShopDB2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ShanimShopDB2] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ShanimShopDB2] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ShanimShopDB2] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'ShanimShopDB2', N'ON'
GO
ALTER DATABASE [ShanimShopDB2] SET QUERY_STORE = ON
GO
ALTER DATABASE [ShanimShopDB2] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [ShanimShopDB2]
GO
/****** Object:  Table [dbo].[BINHLUAN]    Script Date: 12/25/2023 1:59:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BINHLUAN](
	[MaBinhLuan] [int] IDENTITY(1,1) NOT NULL,
	[MaTV] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[NoiDungBL] [nvarchar](max) NULL,
 CONSTRAINT [PK_BL] PRIMARY KEY CLUSTERED 
(
	[MaBinhLuan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHITIETDONDATHANG]    Script Date: 12/25/2023 1:59:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETDONDATHANG](
	[MaChiTietDDH] [int] IDENTITY(1,1) NOT NULL,
	[MaDDH] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[TenSP] [nvarchar](255) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[DonGia] [decimal](18, 0) NOT NULL,
 CONSTRAINT [PK_CTDDH] PRIMARY KEY CLUSTERED 
(
	[MaChiTietDDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHITIETGIOHANG]    Script Date: 12/25/2023 1:59:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETGIOHANG](
	[MaChiTietGH] [int] IDENTITY(1,1) NOT NULL,
	[MaGioHang] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[DonGia] [decimal](18, 0) NOT NULL,
	[MaMau] [int] NOT NULL,
 CONSTRAINT [PK_CTGH] PRIMARY KEY CLUSTERED 
(
	[MaChiTietGH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHITIETPHIEUNHAP]    Script Date: 12/25/2023 1:59:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETPHIEUNHAP](
	[MaCTPN] [int] IDENTITY(1,1) NOT NULL,
	[MaPN] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[DonGiaNhap] [decimal](18, 0) NOT NULL,
	[SoLuongNhap] [int] NOT NULL,
 CONSTRAINT [PK_CTPN] PRIMARY KEY CLUSTERED 
(
	[MaCTPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHITIETPHUKIENSACDUPHONG]    Script Date: 12/25/2023 1:59:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETPHUKIENSACDUPHONG](
	[MaCTPKSac] [int] IDENTITY(1,1) NOT NULL,
	[MaSP] [int] NOT NULL,
	[HIEUSUAT] [nvarchar](50) NULL,
	[DUNGLUONGPIN] [nvarchar](50) NULL,
	[THOIGIANSAC] [nvarchar](50) NULL,
	[NGUONVAO] [nvarchar](50) NULL,
	[NGUONRA] [nvarchar](50) NULL,
	[CONGNGHE] [nvarchar](50) NULL,
	[KICHTHUOC] [nvarchar](50) NULL,
	[BAOHANH] [int] NULL,
	[KHOILUONG] [nvarchar](50) NULL,
 CONSTRAINT [PK_CTPKSACDUPHONG] PRIMARY KEY CLUSTERED 
(
	[MaCTPKSac] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHITIETPHUKIENTAINGHE]    Script Date: 12/25/2023 1:59:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETPHUKIENTAINGHE](
	[MaPKTaiNghe] [int] IDENTITY(1,1) NOT NULL,
	[MaSP] [int] NOT NULL,
	[DUNGLUONGPIN] [nvarchar](50) NULL,
	[THOILUONGSAC] [nvarchar](50) NULL,
	[CONGSAC] [nvarchar](50) NULL,
	[CONGNGHEAMTHANH] [nvarchar](50) NULL,
	[TIENICH] [nvarchar](100) NULL,
	[TUONGTHICH] [nvarchar](50) NULL,
	[CONGNGHEKETNOT] [nvarchar](50) NULL,
	[PHIMDIEUKHIEN] [nvarchar](255) NULL,
	[KICHTHUOC] [nvarchar](50) NULL,
	[BAOHANH] [int] NULL,
	[KHOILUONG] [nvarchar](50) NULL,
 CONSTRAINT [PK_CTPKTAINGHE] PRIMARY KEY CLUSTERED 
(
	[MaPKTaiNghe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHITIETSANPHAM]    Script Date: 12/25/2023 1:59:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETSANPHAM](
	[MaChiTietSP] [int] IDENTITY(1,1) NOT NULL,
	[MaSP] [int] NOT NULL,
	[KICHTHUOCMANHINH] [nvarchar](50) NULL,
	[CONGNGHEMANHINH] [nvarchar](100) NULL,
	[DOPHANGIAI] [nvarchar](100) NULL,
	[TINHNANGMANGHINH] [nvarchar](max) NULL,
	[TANSOQUET] [nvarchar](50) NULL,
	[CAMERASAU] [nvarchar](255) NULL,
	[QUAYPHIM] [nvarchar](255) NULL,
	[CAMERATRUOC] [nvarchar](255) NULL,
	[TINHNANGCAMERA] [nvarchar](max) NULL,
	[HEDIEUHANH] [nvarchar](50) NULL,
	[CHIP] [nvarchar](100) NULL,
	[TOCDOCPU] [nvarchar](50) NULL,
	[CHIPDOHOA] [nvarchar](50) NULL,
	[RAM] [nvarchar](20) NULL,
	[DUNGLUONG] [nvarchar](20) NULL,
	[MANGDIDONG] [nvarchar](20) NULL,
	[SIM] [nvarchar](100) NULL,
	[WIFI] [nvarchar](255) NULL,
	[CONGKETNOI] [nvarchar](50) NULL,
	[DUNGLUONGPIN] [nvarchar](20) NULL,
	[LOAIPIN] [nvarchar](20) NULL,
	[HOTROSAC] [nvarchar](20) NULL,
	[BAOMAT] [nvarchar](50) NULL,
	[TINHNANGDACBIET] [nvarchar](max) NULL,
	[KHANGNUOC] [nvarchar](50) NULL,
	[THIETKE] [nvarchar](50) NULL,
	[CHATLIEU] [nvarchar](255) NULL,
	[KICHTHUOC] [nvarchar](255) NULL,
	[BAOHANH] [int] NULL,
	[RAMAT] [date] NULL,
 CONSTRAINT [PK_CHITIETSP] PRIMARY KEY CLUSTERED 
(
	[MaChiTietSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CONGNO]    Script Date: 12/25/2023 1:59:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CONGNO](
	[MaCongNo] [int] IDENTITY(1,1) NOT NULL,
	[MaNCC] [int] NOT NULL,
	[SoTienNo] [decimal](18, 0) NOT NULL,
	[NgayCongNo] [date] NOT NULL,
 CONSTRAINT [PK_CongNo] PRIMARY KEY CLUSTERED 
(
	[MaCongNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DANHMUC]    Script Date: 12/25/2023 1:59:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DANHMUC](
	[MaDanhMuc] [int] IDENTITY(1,1) NOT NULL,
	[TenDanhMuc] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_DM] PRIMARY KEY CLUSTERED 
(
	[MaDanhMuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DONDATHANG]    Script Date: 12/25/2023 1:59:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DONDATHANG](
	[MaDDH] [int] IDENTITY(1,1) NOT NULL,
	[MaKH] [int] NULL,
	[NgayDatHang] [datetime] NOT NULL,
	[NgayGiao] [datetime] NULL,
	[DaThanhToan] [bit] NOT NULL,
	[QuaTang] [nvarchar](255) NULL,
	[TinhTrang] [nvarchar](50) NULL,
	[DaXoa] [bit] NULL,
 CONSTRAINT [PK_DDH] PRIMARY KEY CLUSTERED 
(
	[MaDDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GIOHANG]    Script Date: 12/25/2023 1:59:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GIOHANG](
	[MaGioHang] [int] IDENTITY(1,1) NOT NULL,
	[MaTV] [int] NULL,
 CONSTRAINT [PK_GIOHANG] PRIMARY KEY CLUSTERED 
(
	[MaGioHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 12/25/2023 1:59:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[MaTV] [int] NULL,
	[TenKH] [nvarchar](100) NOT NULL,
	[DiaChi] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[SoDienThoai] [varchar](12) NULL,
 CONSTRAINT [PK_KH] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHUYENMAI]    Script Date: 12/25/2023 1:59:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHUYENMAI](
	[MaKhuyenMai] [int] IDENTITY(1,1) NOT NULL,
	[TenKhuyenMai] [nvarchar](255) NOT NULL,
	[MoTa] [nvarchar](max) NULL,
	[PhanTramGiamGia] [int] NOT NULL,
	[NgayBatDau] [date] NOT NULL,
	[NgayKetThuc] [date] NOT NULL,
 CONSTRAINT [PK_KhuyenMai] PRIMARY KEY CLUSTERED 
(
	[MaKhuyenMai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAISANPHAM]    Script Date: 12/25/2023 1:59:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAISANPHAM](
	[MaLoaiSP] [int] IDENTITY(1,1) NOT NULL,
	[MaDanhMuc] [int] NOT NULL,
	[TenLoaiSP] [nvarchar](100) NOT NULL,
	[Icon] [nvarchar](max) NULL,
	[BiDanh] [nvarchar](50) NULL,
 CONSTRAINT [PK_LSP] PRIMARY KEY CLUSTERED 
(
	[MaLoaiSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAITHANHVIEN]    Script Date: 12/25/2023 1:59:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAITHANHVIEN](
	[MaLoaiTV] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](50) NOT NULL,
	[UuDai] [int] NULL,
 CONSTRAINT [PK_LTV] PRIMARY KEY CLUSTERED 
(
	[MaLoaiTV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAITHANHVIEN_QUYEN]    Script Date: 12/25/2023 1:59:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAITHANHVIEN_QUYEN](
	[MaLoaiTV] [int] NOT NULL,
	[MaQuyen] [nvarchar](50) NOT NULL,
	[GhiChu] [nvarchar](100) NULL,
 CONSTRAINT [PK_LTV_QUYEN] PRIMARY KEY CLUSTERED 
(
	[MaLoaiTV] ASC,
	[MaQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MAU]    Script Date: 12/25/2023 1:59:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MAU](
	[MaMau] [int] IDENTITY(1,1) NOT NULL,
	[TenMau] [nvarchar](50) NULL,
 CONSTRAINT [PK_MAU] PRIMARY KEY CLUSTERED 
(
	[MaMau] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHACUNGCAP]    Script Date: 12/25/2023 1:59:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHACUNGCAP](
	[MaNCC] [int] IDENTITY(1,1) NOT NULL,
	[TenNCC] [nvarchar](100) NOT NULL,
	[DiaChi] [nvarchar](255) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[SoDienThoai] [varchar](12) NOT NULL,
	[Fax] [nvarchar](50) NULL,
 CONSTRAINT [PK_NCC] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHASANXUAT]    Script Date: 12/25/2023 1:59:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHASANXUAT](
	[MaNSX] [int] IDENTITY(1,1) NOT NULL,
	[TenNSX] [nvarchar](100) NOT NULL,
	[ThongTin] [nvarchar](max) NULL,
	[Logo] [nvarchar](max) NULL,
 CONSTRAINT [PK_NSX] PRIMARY KEY CLUSTERED 
(
	[MaNSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHIEUNHAP]    Script Date: 12/25/2023 1:59:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUNHAP](
	[MaPN] [int] IDENTITY(1,1) NOT NULL,
	[MaNCC] [int] NOT NULL,
	[NgayNhap] [datetime] NOT NULL,
	[DaXoa] [bit] NOT NULL,
 CONSTRAINT [PK_PN] PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QUYEN]    Script Date: 12/25/2023 1:59:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUYEN](
	[MaQuyen] [nvarchar](50) NOT NULL,
	[TenQuyen] [nvarchar](50) NULL,
 CONSTRAINT [PK_QUYEN] PRIMARY KEY CLUSTERED 
(
	[MaQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SANPHAM]    Script Date: 12/25/2023 1:59:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SANPHAM](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[MaNCC] [int] NOT NULL,
	[MaNSX] [int] NOT NULL,
	[MaLoaiSP] [int] NOT NULL,
	[MaKhuyenMai] [int] NULL,
	[TenSP] [nvarchar](255) NOT NULL,
	[DonGia] [decimal](18, 0) NULL,
	[NgayCapNhat] [datetime] NULL,
	[MoTa] [nvarchar](max) NULL,
	[HinhAnh] [nvarchar](max) NULL,
	[HinhAnh2] [nvarchar](max) NULL,
	[HinhAnh3] [nvarchar](max) NULL,
	[SoLuongTon] [int] NOT NULL,
	[LuotXem] [int] NULL,
	[LuotBinhChon] [int] NULL,
	[LuotBinhLuan] [int] NULL,
	[SoLanMua] [int] NULL,
	[Moi] [bit] NOT NULL,
	[DaXoa] [bit] NOT NULL,
 CONSTRAINT [PK_SP] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SANPHAM_MAU]    Script Date: 12/25/2023 1:59:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SANPHAM_MAU](
	[MaSP_Mau] [int] IDENTITY(1,1) NOT NULL,
	[MaSP] [int] NOT NULL,
	[MaMau] [int] NOT NULL,
 CONSTRAINT [PK_SP_MAU] PRIMARY KEY CLUSTERED 
(
	[MaSP_Mau] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THANHVIEN]    Script Date: 12/25/2023 1:59:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THANHVIEN](
	[MaTV] [int] IDENTITY(1,1) NOT NULL,
	[MaLoaiTV] [int] NULL,
	[TaiKhoan] [nvarchar](100) NOT NULL,
	[MatKhau] [nvarchar](100) NOT NULL,
	[HoTen] [nvarchar](100) NOT NULL,
	[DiaChi] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[SoDienThoai] [varchar](12) NULL,
	[CauHoi] [nvarchar](max) NULL,
	[CauTraLoi] [nvarchar](max) NULL,
	[HinhDaiDien] [nvarchar](max) NULL,
	[MaToken] [nvarchar](50) NULL,
	[ThoiGianMaToken] [datetime] NULL,
 CONSTRAINT [PK_TV] PRIMARY KEY CLUSTERED 
(
	[MaTV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CHITIETDONDATHANG] ON 

INSERT [dbo].[CHITIETDONDATHANG] ([MaChiTietDDH], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (1, 1, 1, N'Điện thoại iPhone 14 Pro Max 128GB - Tím', 2, CAST(21000000 AS Decimal(18, 0)))
INSERT [dbo].[CHITIETDONDATHANG] ([MaChiTietDDH], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (2, 2, 5, N'Điện thoại iPhone 13 Pro Max 123GB - Trắng', 2, CAST(25863750 AS Decimal(18, 0)))
INSERT [dbo].[CHITIETDONDATHANG] ([MaChiTietDDH], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (3, 2, 3, N'Điện thoại iPhone 14 Pro Max 512GB - Tím', 2, CAST(40151250 AS Decimal(18, 0)))
INSERT [dbo].[CHITIETDONDATHANG] ([MaChiTietDDH], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (4, 3, 16, N'Điện thoại Samsung Galaxy Z Fold5 5G 256GB  - Xanh', 1, CAST(38238750 AS Decimal(18, 0)))
INSERT [dbo].[CHITIETDONDATHANG] ([MaChiTietDDH], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (5, 3, 29, N'Tai nghe Bluetooth True Wireless HAVIT TW971 - Trắng', 1, CAST(472500 AS Decimal(18, 0)))
INSERT [dbo].[CHITIETDONDATHANG] ([MaChiTietDDH], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (6, 4, 11, N'Điện thoại OPPO Reno10 Pro 5G - Xám', 1, CAST(15176250 AS Decimal(18, 0)))
INSERT [dbo].[CHITIETDONDATHANG] ([MaChiTietDDH], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (7, 4, 10, N'Điện thoại OPPO Find N2 Flip 5G - Đen', 1, CAST(21363750 AS Decimal(18, 0)))
INSERT [dbo].[CHITIETDONDATHANG] ([MaChiTietDDH], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (8, 5, 28, N'Tai nghe Bluetooth True Wireless HAVIT TW945 - Cam', 1, CAST(326250 AS Decimal(18, 0)))
INSERT [dbo].[CHITIETDONDATHANG] ([MaChiTietDDH], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (9, 5, 26, N'Pin sạc dự phòng Polymer 10000mAh 12W AVA+ JP299 - Trắng', 1, CAST(213750 AS Decimal(18, 0)))
INSERT [dbo].[CHITIETDONDATHANG] ([MaChiTietDDH], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (10, 6, 13, N'Điện thoại vivo V25 Pro 5G - Đen', 1, CAST(8426250 AS Decimal(18, 0)))
INSERT [dbo].[CHITIETDONDATHANG] ([MaChiTietDDH], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (11, 7, 17, N'Điện thoại Samsung Galaxy Z Fold5 5G 512GB  - Xanh', 1, CAST(38238750 AS Decimal(18, 0)))
INSERT [dbo].[CHITIETDONDATHANG] ([MaChiTietDDH], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (12, 7, 26, N'Pin sạc dự phòng Polymer 10000mAh 12W AVA+ JP299 - Đen', 1, CAST(213750 AS Decimal(18, 0)))
INSERT [dbo].[CHITIETDONDATHANG] ([MaChiTietDDH], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (13, 8, 5, N'Điện thoại iPhone 13 Pro Max 123GB - Trắng', 1, CAST(25863750 AS Decimal(18, 0)))
INSERT [dbo].[CHITIETDONDATHANG] ([MaChiTietDDH], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (14, 8, 28, N'Tai nghe Bluetooth True Wireless HAVIT TW945 - Đen', 1, CAST(326250 AS Decimal(18, 0)))
INSERT [dbo].[CHITIETDONDATHANG] ([MaChiTietDDH], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (15, 8, 1, N'Điện thoại iPhone 14 Pro Max 128GB - Tím', 1, CAST(21000000 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[CHITIETDONDATHANG] OFF
GO
SET IDENTITY_INSERT [dbo].[CHITIETPHIEUNHAP] ON 

INSERT [dbo].[CHITIETPHIEUNHAP] ([MaCTPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (1, 1, 1, CAST(23900000 AS Decimal(18, 0)), 10)
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaCTPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (2, 1, 2, CAST(25900000 AS Decimal(18, 0)), 10)
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaCTPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (3, 1, 3, CAST(30900000 AS Decimal(18, 0)), 10)
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaCTPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (4, 1, 4, CAST(37900000 AS Decimal(18, 0)), 10)
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaCTPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (5, 1, 5, CAST(20900000 AS Decimal(18, 0)), 10)
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaCTPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (6, 1, 6, CAST(22900000 AS Decimal(18, 0)), 10)
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaCTPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (7, 1, 7, CAST(25900000 AS Decimal(18, 0)), 10)
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaCTPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (8, 1, 8, CAST(11900000 AS Decimal(18, 0)), 10)
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaCTPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (9, 1, 9, CAST(12900000 AS Decimal(18, 0)), 10)
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaCTPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (10, 2, 10, CAST(15900000 AS Decimal(18, 0)), 10)
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaCTPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (11, 2, 11, CAST(10900000 AS Decimal(18, 0)), 10)
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaCTPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (12, 2, 12, CAST(3990000 AS Decimal(18, 0)), 10)
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaCTPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (13, 3, 13, CAST(7090000 AS Decimal(18, 0)), 10)
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaCTPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (14, 3, 14, CAST(1590000 AS Decimal(18, 0)), 10)
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaCTPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (15, 3, 15, CAST(6990000 AS Decimal(18, 0)), 10)
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaCTPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (16, 4, 16, CAST(30990000 AS Decimal(18, 0)), 10)
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaCTPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (17, 4, 17, CAST(33990000 AS Decimal(18, 0)), 10)
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaCTPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (18, 4, 18, CAST(40900000 AS Decimal(18, 0)), 10)
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaCTPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (19, 4, 19, CAST(11990000 AS Decimal(18, 0)), 10)
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaCTPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (20, 4, 20, CAST(12990000 AS Decimal(18, 0)), 10)
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaCTPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (21, 4, 21, CAST(13990000 AS Decimal(18, 0)), 10)
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaCTPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (22, 5, 22, CAST(9990000 AS Decimal(18, 0)), 10)
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaCTPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (23, 5, 23, CAST(3990000 AS Decimal(18, 0)), 10)
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaCTPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (24, 5, 24, CAST(4990000 AS Decimal(18, 0)), 10)
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaCTPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (25, 6, 25, CAST(239000 AS Decimal(18, 0)), 10)
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaCTPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (26, 6, 26, CAST(139000 AS Decimal(18, 0)), 10)
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaCTPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (27, 6, 27, CAST(209000 AS Decimal(18, 0)), 10)
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaCTPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (28, 7, 28, CAST(289000 AS Decimal(18, 0)), 10)
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaCTPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (29, 7, 29, CAST(289000 AS Decimal(18, 0)), 10)
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaCTPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (30, 7, 30, CAST(239000 AS Decimal(18, 0)), 10)
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaCTPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (31, 8, 1, CAST(20000000 AS Decimal(18, 0)), 10)
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaCTPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (32, 10, 2, CAST(29990000 AS Decimal(18, 0)), 10)
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaCTPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (33, 11, 25, CAST(350000 AS Decimal(18, 0)), 20)
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaCTPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (34, 12, 26, CAST(190000 AS Decimal(18, 0)), 5)
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaCTPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (35, 13, 3, CAST(35690000 AS Decimal(18, 0)), 10)
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaCTPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (36, 14, 4, CAST(41990000 AS Decimal(18, 0)), 10)
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaCTPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (37, 15, 5, CAST(22990000 AS Decimal(18, 0)), 10)
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaCTPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (38, 16, 10, CAST(18990000 AS Decimal(18, 0)), 10)
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaCTPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (39, 19, 11, CAST(13490000 AS Decimal(18, 0)), 5)
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaCTPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (40, 20, 72, CAST(5590000 AS Decimal(18, 0)), 10)
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaCTPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (41, 21, 13, CAST(7490000 AS Decimal(18, 0)), 10)
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaCTPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (42, 22, 14, CAST(250000 AS Decimal(18, 0)), 2)
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaCTPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (43, 23, 16, CAST(33990000 AS Decimal(18, 0)), 10)
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaCTPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (44, 24, 17, CAST(33990000 AS Decimal(18, 0)), 10)
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaCTPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (45, 25, 22, CAST(9490000 AS Decimal(18, 0)), 10)
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaCTPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (46, 26, 24, CAST(4790000 AS Decimal(18, 0)), 10)
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaCTPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (47, 27, 28, CAST(290000 AS Decimal(18, 0)), 10)
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaCTPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (48, 28, 29, CAST(315000 AS Decimal(18, 0)), 5)
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaCTPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (49, 29, 18, CAST(47990000 AS Decimal(18, 0)), 10)
SET IDENTITY_INSERT [dbo].[CHITIETPHIEUNHAP] OFF
GO
SET IDENTITY_INSERT [dbo].[CHITIETPHUKIENSACDUPHONG] ON 

INSERT [dbo].[CHITIETPHUKIENSACDUPHONG] ([MaCTPKSac], [MaSP], [HIEUSUAT], [DUNGLUONGPIN], [THOIGIANSAC], [NGUONVAO], [NGUONRA], [CONGNGHE], [KICHTHUOC], [BAOHANH], [KHOILUONG]) VALUES (1, 25, N'64%', N'10000 mAh', N'5 - 6 giờ (dùng Adapter 2A)', N'Type C: 5V - 3A, Micro USB: 5V - 2A', N'Type-C: 5V - 3, AUSB: 5V - 2.4A', N'Đèn LED báo hiệu', N'Dài 9.2 cm - 6.3 cm - Dày 1.9 cm', 12, N'190 g')
INSERT [dbo].[CHITIETPHUKIENSACDUPHONG] ([MaCTPKSac], [MaSP], [HIEUSUAT], [DUNGLUONGPIN], [THOIGIANSAC], [NGUONVAO], [NGUONRA], [CONGNGHE], [KICHTHUOC], [BAOHANH], [KHOILUONG]) VALUES (2, 26, N'64%', N'10000 mAh', N'5 - 6 giờ (dùng Adapter 2A)', N'Micro USB: 5V - 2A', N'USB 1: 5V - 2.4, AUSB 2: 5V - 2.4A', N'Đèn LED báo hiệu', N'Dày 2.2 cm - Rộng 6.1 cm - Dài 8.9 cm', 12, N'186.2 g')
INSERT [dbo].[CHITIETPHUKIENSACDUPHONG] ([MaCTPKSac], [MaSP], [HIEUSUAT], [DUNGLUONGPIN], [THOIGIANSAC], [NGUONVAO], [NGUONRA], [CONGNGHE], [KICHTHUOC], [BAOHANH], [KHOILUONG]) VALUES (3, 27, N'65%', N'10000 mAh', N'5 - 6 giờ (dùng Adapter 2A)', N'Micro USB/Type-C: 5V - 2A', N'Type-C: 5V - 2, AUSB: 5V - 2A', N'Đèn LED báo hiệu', N'Dày 1.5 cm - Rộng 6.9 cm - Dài 14.6 cm', 12, N'230 g')
SET IDENTITY_INSERT [dbo].[CHITIETPHUKIENSACDUPHONG] OFF
GO
SET IDENTITY_INSERT [dbo].[CHITIETPHUKIENTAINGHE] ON 

INSERT [dbo].[CHITIETPHUKIENTAINGHE] ([MaPKTaiNghe], [MaSP], [DUNGLUONGPIN], [THOILUONGSAC], [CONGSAC], [CONGNGHEAMTHANH], [TIENICH], [TUONGTHICH], [CONGNGHEKETNOT], [PHIMDIEUKHIEN], [KICHTHUOC], [BAOHANH], [KHOILUONG]) VALUES (1, 28, N'Dùng 18 giờ', N'Sạc 2 giờ', N'Type-C', N'Màng loa 13 mm', N'Game Mode, Sử dụng độc lập 1 bên tai nghe, Có mic thoại, Tương thích trợ lý ảo', N'MacOSAndroid, iOS, Windows', N'Bluetooth 5.3', N'Phát/dừng chơi nhạc, Chuyển bài hát, Từ chối cuộc gọi, Bật trợ lí ảo, Bật/tắt game mode, Nhận/Ngắt cuộc gọi', N'Dài 3.3 cm - Rộng 1.9 cm - Cao 1.6 cm', 12, N'4 g')
INSERT [dbo].[CHITIETPHUKIENTAINGHE] ([MaPKTaiNghe], [MaSP], [DUNGLUONGPIN], [THOILUONGSAC], [CONGSAC], [CONGNGHEAMTHANH], [TIENICH], [TUONGTHICH], [CONGNGHEKETNOT], [PHIMDIEUKHIEN], [KICHTHUOC], [BAOHANH], [KHOILUONG]) VALUES (2, 29, N'Dùng 18 giờ', N'Sạc 2 giờ', N'Type-C', N'Không có', N'Có mic thoại, Tương thích trợ lý ảo', N'MacOSAndroid, iOS, Windows', N'Bluetooth 5.3', N'Phát/dừng chơi nhạc, Chuyển bài hát, Từ chối cuộc gọi, Bật trợ lí ảo, Nhận/Ngắt cuộc gọi', N'Dài 3.3 cm - Rộng 2.9 cm - Cao 1.7 cm', 12, N'3.9 g')
INSERT [dbo].[CHITIETPHUKIENTAINGHE] ([MaPKTaiNghe], [MaSP], [DUNGLUONGPIN], [THOILUONGSAC], [CONGSAC], [CONGNGHEAMTHANH], [TIENICH], [TUONGTHICH], [CONGNGHEKETNOT], [PHIMDIEUKHIEN], [KICHTHUOC], [BAOHANH], [KHOILUONG]) VALUES (3, 30, N'Dùng 18 giờ', N'Sạc 2 giờ', N'Type-C', N'Không có', N'Sử dụng độc lập 1 bên tai nghe, Có mic thoại', N'MacOSAndroid, iOS, Windows', N'Bluetooth 5.1', N'Phát/dừng chơi nhạc, Chuyển bài hát, Từ chối cuộc gọi, Bật trợ lí ảo, Nhận/Ngắt cuộc gọi, Từ chối cuộc gọi', N'Dài 3.3 cm - Rộng 2.3 cm - Cao 2.2 cm', 12, N'4 g')
SET IDENTITY_INSERT [dbo].[CHITIETPHUKIENTAINGHE] OFF
GO
SET IDENTITY_INSERT [dbo].[CHITIETSANPHAM] ON 

INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [MaSP], [KICHTHUOCMANHINH], [CONGNGHEMANHINH], [DOPHANGIAI], [TINHNANGMANGHINH], [TANSOQUET], [CAMERASAU], [QUAYPHIM], [CAMERATRUOC], [TINHNANGCAMERA], [HEDIEUHANH], [CHIP], [TOCDOCPU], [CHIPDOHOA], [RAM], [DUNGLUONG], [MANGDIDONG], [SIM], [WIFI], [CONGKETNOI], [DUNGLUONGPIN], [LOAIPIN], [HOTROSAC], [BAOMAT], [TINHNANGDACBIET], [KHANGNUOC], [THIETKE], [CHATLIEU], [KICHTHUOC], [BAOHANH], [RAMAT]) VALUES (1, 1, N'6.7"', N'OLED', N'Super Retina XDR (1290 x 2796 Pixels)', N'Kính cường lực Ceramic Shield', N'120 Hz', N'Chính 48 MP & Phụ 12 MP, 12 MP', N'HD 720p@30fps, FullHD 1080p@60fps, FullHD 1080p@30fps, 4K 2160p@24fps, 4K 2160p@30fps, 4K 2160p@60fps', N'12 MP', N'Chế độ hành động (Action Mode), Dolby Vision HDR, Trôi nhanh thời gian (Time Lapse), Góc siêu rộng (Ultrawide), Zoom kỹ thuật số, Cinematic, Quay chậm (Slow Motion), Xóa phông, Deep Fusion, Toàn cảnh (Panorama), Chống rung quang học (OIS), Ban đêm (Night Mode), Zoom quang học Siêu cận (Macro), Live Photo, Bộ lọc màu, Smart HDR 4', N'iOS 16', N'Apple A16 Bionic 6 nhân', N'3.46 GHz', N'Apple GPU 5 nhân', N'6 GB', N'128GB', N'Hỗ trợ 5G', N'1 Nano SIM & 1 eSIM', N'Wi-Fi MIMO, Wi-Fi hotspot, Wi-Fi 802.11 a/b/g/n/ac/ax', N'Lightning', N'4323 mAh', N'Li-Ion', N'20 W', N'Mở khoá khuôn mặt Face ID', N'Phát hiện va chạm (Crash Detection), Màn hình luôn hiển thị AOD, Chạm 2 lần sáng màn hình, Apple Pay, Loa kép', N'IP68', N'Nguyên khối', N'Khung thép không gỉ & Mặt lưng kính cường lực', N'Dài 160.7 mm - Ngang 77.6 mm - Dày 7.85 mm - Nặng 240 g', 12, CAST(N'2022-09-01' AS Date))
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [MaSP], [KICHTHUOCMANHINH], [CONGNGHEMANHINH], [DOPHANGIAI], [TINHNANGMANGHINH], [TANSOQUET], [CAMERASAU], [QUAYPHIM], [CAMERATRUOC], [TINHNANGCAMERA], [HEDIEUHANH], [CHIP], [TOCDOCPU], [CHIPDOHOA], [RAM], [DUNGLUONG], [MANGDIDONG], [SIM], [WIFI], [CONGKETNOI], [DUNGLUONGPIN], [LOAIPIN], [HOTROSAC], [BAOMAT], [TINHNANGDACBIET], [KHANGNUOC], [THIETKE], [CHATLIEU], [KICHTHUOC], [BAOHANH], [RAMAT]) VALUES (2, 2, N'6.7"', N'OLED', N'Super Retina XDR (1290 x 2796 Pixels)', N'Kính cường lực Ceramic Shield', N'120 Hz', N'Chính 48 MP & Phụ 12 MP, 12 MP', N'HD 720p@30fps, FullHD 1080p@60fps, FullHD 1080p@30fps, 4K 2160p@24fps, 4K 2160p@30fps, 4K 2160p@60fps', N'12 MP', N'Chế độ hành động (Action Mode), Dolby Vision HDR, Trôi nhanh thời gian (Time Lapse), Góc siêu rộng (Ultrawide), Zoom kỹ thuật số, Cinematic, Quay chậm (Slow Motion), Xóa phông, Deep Fusion, Toàn cảnh (Panorama), Chống rung quang học (OIS), Ban đêm (Night Mode), Zoom quang học Siêu cận (Macro), Live Photo, Bộ lọc màu, Smart HDR 4', N'iOS 16', N'Apple A16 Bionic 6 nhân', N'3.46 GHz', N'Apple GPU 5 nhân', N'6 GB', N'256GB', N'Hỗ trợ 5G', N'1 Nano SIM & 1 eSIM', N'Wi-Fi MIMO, Wi-Fi hotspot, Wi-Fi 802.11 a/b/g/n/ac/ax', N'Lightning', N'4323 mAh', N'Li-Ion', N'20 W', N'Mở khoá khuôn mặt Face ID', N'Phát hiện va chạm (Crash Detection), Màn hình luôn hiển thị AOD, Chạm 2 lần sáng màn hình, Apple Pay, Loa kép', N'IP68', N'Nguyên khối', N'Khung thép không gỉ & Mặt lưng kính cường lực', N'Dài 160.7 mm - Ngang 77.6 mm - Dày 7.85 mm - Nặng 240 g', 12, CAST(N'2022-09-01' AS Date))
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [MaSP], [KICHTHUOCMANHINH], [CONGNGHEMANHINH], [DOPHANGIAI], [TINHNANGMANGHINH], [TANSOQUET], [CAMERASAU], [QUAYPHIM], [CAMERATRUOC], [TINHNANGCAMERA], [HEDIEUHANH], [CHIP], [TOCDOCPU], [CHIPDOHOA], [RAM], [DUNGLUONG], [MANGDIDONG], [SIM], [WIFI], [CONGKETNOI], [DUNGLUONGPIN], [LOAIPIN], [HOTROSAC], [BAOMAT], [TINHNANGDACBIET], [KHANGNUOC], [THIETKE], [CHATLIEU], [KICHTHUOC], [BAOHANH], [RAMAT]) VALUES (3, 3, N'6.7"', N'OLED', N'Super Retina XDR (1290 x 2796 Pixels)', N'Kính cường lực Ceramic Shield', N'120 Hz', N'Chính 48 MP & Phụ 12 MP, 12 MP', N'HD 720p@30fps, FullHD 1080p@60fps, FullHD 1080p@30fps, 4K 2160p@24fps, 4K 2160p@30fps, 4K 2160p@60fps', N'12 MP', N'Chế độ hành động (Action Mode), Dolby Vision HDR, Trôi nhanh thời gian (Time Lapse), Góc siêu rộng (Ultrawide), Zoom kỹ thuật số, Cinematic, Quay chậm (Slow Motion), Xóa phông, Deep Fusion, Toàn cảnh (Panorama), Chống rung quang học (OIS), Ban đêm (Night Mode), Zoom quang học Siêu cận (Macro), Live Photo, Bộ lọc màu, Smart HDR 4', N'iOS 16', N'Apple A16 Bionic 6 nhân', N'3.46 GHz', N'Apple GPU 5 nhân', N'6 GB', N'512GB', N'Hỗ trợ 5G', N'1 Nano SIM & 1 eSIM', N'Wi-Fi MIMO, Wi-Fi hotspot, Wi-Fi 802.11 a/b/g/n/ac/ax', N'Lightning', N'4323 mAh', N'Li-Ion', N'20 W', N'Mở khoá khuôn mặt Face ID', N'Phát hiện va chạm (Crash Detection), Màn hình luôn hiển thị AOD, Chạm 2 lần sáng màn hình, Apple Pay, Loa kép', N'IP68', N'Nguyên khối', N'Khung thép không gỉ & Mặt lưng kính cường lực', N'Dài 160.7 mm - Ngang 77.6 mm - Dày 7.85 mm - Nặng 240 g', 12, CAST(N'2022-09-01' AS Date))
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [MaSP], [KICHTHUOCMANHINH], [CONGNGHEMANHINH], [DOPHANGIAI], [TINHNANGMANGHINH], [TANSOQUET], [CAMERASAU], [QUAYPHIM], [CAMERATRUOC], [TINHNANGCAMERA], [HEDIEUHANH], [CHIP], [TOCDOCPU], [CHIPDOHOA], [RAM], [DUNGLUONG], [MANGDIDONG], [SIM], [WIFI], [CONGKETNOI], [DUNGLUONGPIN], [LOAIPIN], [HOTROSAC], [BAOMAT], [TINHNANGDACBIET], [KHANGNUOC], [THIETKE], [CHATLIEU], [KICHTHUOC], [BAOHANH], [RAMAT]) VALUES (4, 4, N'6.7"', N'OLED', N'Super Retina XDR (1290 x 2796 Pixels)', N'Kính cường lực Ceramic Shield', N'120 Hz', N'Chính 48 MP & Phụ 12 MP, 12 MP', N'HD 720p@30fps, FullHD 1080p@60fps, FullHD 1080p@30fps, 4K 2160p@24fps, 4K 2160p@30fps, 4K 2160p@60fps', N'12 MP', N'Chế độ hành động (Action Mode), Dolby Vision HDR, Trôi nhanh thời gian (Time Lapse), Góc siêu rộng (Ultrawide), Zoom kỹ thuật số, Cinematic, Quay chậm (Slow Motion), Xóa phông, Deep Fusion, Toàn cảnh (Panorama), Chống rung quang học (OIS), Ban đêm (Night Mode), Zoom quang học Siêu cận (Macro), Live Photo, Bộ lọc màu, Smart HDR 4', N'iOS 16', N'Apple A16 Bionic 6 nhân', N'3.46 GHz', N'Apple GPU 5 nhân', N'6 GB', N'1TB', N'Hỗ trợ 5G', N'1 Nano SIM & 1 eSIM', N'Wi-Fi MIMO, Wi-Fi hotspot, Wi-Fi 802.11 a/b/g/n/ac/ax', N'Lightning', N'4323 mAh', N'Li-Ion', N'20 W', N'Mở khoá khuôn mặt Face ID', N'Phát hiện va chạm (Crash Detection), Màn hình luôn hiển thị AOD, Chạm 2 lần sáng màn hình, Apple Pay, Loa kép', N'IP68', N'Nguyên khối', N'Khung thép không gỉ & Mặt lưng kính cường lực', N'Dài 160.7 mm - Ngang 77.6 mm - Dày 7.85 mm - Nặng 240 g', 12, CAST(N'2022-09-01' AS Date))
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [MaSP], [KICHTHUOCMANHINH], [CONGNGHEMANHINH], [DOPHANGIAI], [TINHNANGMANGHINH], [TANSOQUET], [CAMERASAU], [QUAYPHIM], [CAMERATRUOC], [TINHNANGCAMERA], [HEDIEUHANH], [CHIP], [TOCDOCPU], [CHIPDOHOA], [RAM], [DUNGLUONG], [MANGDIDONG], [SIM], [WIFI], [CONGKETNOI], [DUNGLUONGPIN], [LOAIPIN], [HOTROSAC], [BAOMAT], [TINHNANGDACBIET], [KHANGNUOC], [THIETKE], [CHATLIEU], [KICHTHUOC], [BAOHANH], [RAMAT]) VALUES (5, 5, N'6.7"', N'OLED', N'Super Retina XDR (1284 x 2778 Pixels)', N'Kính cường lực Ceramic Shield', N'120 Hz', N'3 camera 12 MP', N'HD 720p@30fps, FullHD 1080p@60fps, FullHD 1080p@30fps, 4K 2160p@24fps, 4K 2160p@30fps, 4K 2160p@60fps', N'12 MP', N'Deep Fusion, Toàn cảnh (Panorama), Chống rung quang học (OIS), Tự động lấy nét (AF), Nhận diện khuôn mặt, Ảnh Raw, Ban đêm (Night Mode), Chạm lấy nét, Zoom quang học, Siêu cận (Macro), Smart HDR 4', N'iOS 15', N'Apple A15 Bionic 6 nhân', N'3.22 GHz', N'Apple GPU 5 nhân', N'6 GB', N'128GB', N'Hỗ trợ 5G', N'1 Nano SIM & 1 eSIM', N'Wi-Fi MIMO, Wi-Fi hotspot, Wi-Fi 802.11 a/b/g/n/ac/ax', N'Lightning', N'4352 mAh', N'Li-Ion', N'20 W', N'Mở khoá khuôn mặt Face ID', N'Phát hiện va chạm (Crash Detection), Màn hình luôn hiển thị AOD, Chạm 2 lần sáng màn hình, Apple Pay, Loa kép', N'IP68', N'Nguyên khối', N'Khung thép không gỉ & Mặt lưng kính cường lực', N'Dài 160.8 mm - Ngang 78.1 mm - Dày 7.65 mm - Nặng 240 g', 12, CAST(N'2021-09-01' AS Date))
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [MaSP], [KICHTHUOCMANHINH], [CONGNGHEMANHINH], [DOPHANGIAI], [TINHNANGMANGHINH], [TANSOQUET], [CAMERASAU], [QUAYPHIM], [CAMERATRUOC], [TINHNANGCAMERA], [HEDIEUHANH], [CHIP], [TOCDOCPU], [CHIPDOHOA], [RAM], [DUNGLUONG], [MANGDIDONG], [SIM], [WIFI], [CONGKETNOI], [DUNGLUONGPIN], [LOAIPIN], [HOTROSAC], [BAOMAT], [TINHNANGDACBIET], [KHANGNUOC], [THIETKE], [CHATLIEU], [KICHTHUOC], [BAOHANH], [RAMAT]) VALUES (6, 6, N'6.7"', N'OLED', N'Super Retina XDR (1284 x 2778 Pixels)', N'Kính cường lực Ceramic Shield', N'120 Hz', N'3 camera 12 MP', N'HD 720p@30fps, FullHD 1080p@60fps, FullHD 1080p@30fps, 4K 2160p@24fps, 4K 2160p@30fps, 4K 2160p@60fps', N'12 MP', N'Deep Fusion, Toàn cảnh (Panorama), Chống rung quang học (OIS), Tự động lấy nét (AF), Nhận diện khuôn mặt, Ảnh Raw, Ban đêm (Night Mode), Chạm lấy nét, Zoom quang học, Siêu cận (Macro), Smart HDR 4', N'iOS 15', N'Apple A15 Bionic 6 nhân', N'3.22 GHz', N'Apple GPU 5 nhân', N'6 GB', N'256GB', N'Hỗ trợ 5G', N'1 Nano SIM & 1 eSIM', N'Wi-Fi MIMO, Wi-Fi hotspot, Wi-Fi 802.11 a/b/g/n/ac/ax', N'Lightning', N'4352 mAh', N'Li-Ion', N'20 W', N'Mở khoá khuôn mặt Face ID', N'Phát hiện va chạm (Crash Detection), Màn hình luôn hiển thị AOD, Chạm 2 lần sáng màn hình, Apple Pay, Loa kép', N'IP68', N'Nguyên khối', N'Khung thép không gỉ & Mặt lưng kính cường lực', N'Dài 160.8 mm - Ngang 78.1 mm - Dày 7.65 mm - Nặng 240 g', 12, CAST(N'2021-09-01' AS Date))
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [MaSP], [KICHTHUOCMANHINH], [CONGNGHEMANHINH], [DOPHANGIAI], [TINHNANGMANGHINH], [TANSOQUET], [CAMERASAU], [QUAYPHIM], [CAMERATRUOC], [TINHNANGCAMERA], [HEDIEUHANH], [CHIP], [TOCDOCPU], [CHIPDOHOA], [RAM], [DUNGLUONG], [MANGDIDONG], [SIM], [WIFI], [CONGKETNOI], [DUNGLUONGPIN], [LOAIPIN], [HOTROSAC], [BAOMAT], [TINHNANGDACBIET], [KHANGNUOC], [THIETKE], [CHATLIEU], [KICHTHUOC], [BAOHANH], [RAMAT]) VALUES (7, 7, N'6.7"', N'OLED', N'Super Retina XDR (1284 x 2778 Pixels)', N'Kính cường lực Ceramic Shield', N'120 Hz', N'3 camera 12 MP', N'HD 720p@30fps, FullHD 1080p@60fps, FullHD 1080p@30fps, 4K 2160p@24fps, 4K 2160p@30fps, 4K 2160p@60fps', N'12 MP', N'Deep Fusion, Toàn cảnh (Panorama), Chống rung quang học (OIS), Tự động lấy nét (AF), Nhận diện khuôn mặt, Ảnh Raw, Ban đêm (Night Mode), Chạm lấy nét, Zoom quang học, Siêu cận (Macro), Smart HDR 4', N'iOS 15', N'Apple A15 Bionic 6 nhân', N'3.22 GHz', N'Apple GPU 5 nhân', N'6 GB', N'512GB', N'Hỗ trợ 5G', N'1 Nano SIM & 1 eSIM', N'Wi-Fi MIMO, Wi-Fi hotspot, Wi-Fi 802.11 a/b/g/n/ac/ax', N'Lightning', N'4352 mAh', N'Li-Ion', N'20 W', N'Mở khoá khuôn mặt Face ID', N'Phát hiện va chạm (Crash Detection), Màn hình luôn hiển thị AOD, Chạm 2 lần sáng màn hình, Apple Pay, Loa kép', N'IP68', N'Nguyên khối', N'Khung thép không gỉ & Mặt lưng kính cường lực', N'Dài 160.8 mm - Ngang 78.1 mm - Dày 7.65 mm - Nặng 240 g', 12, CAST(N'2021-09-01' AS Date))
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [MaSP], [KICHTHUOCMANHINH], [CONGNGHEMANHINH], [DOPHANGIAI], [TINHNANGMANGHINH], [TANSOQUET], [CAMERASAU], [QUAYPHIM], [CAMERATRUOC], [TINHNANGCAMERA], [HEDIEUHANH], [CHIP], [TOCDOCPU], [CHIPDOHOA], [RAM], [DUNGLUONG], [MANGDIDONG], [SIM], [WIFI], [CONGKETNOI], [DUNGLUONGPIN], [LOAIPIN], [HOTROSAC], [BAOMAT], [TINHNANGDACBIET], [KHANGNUOC], [THIETKE], [CHATLIEU], [KICHTHUOC], [BAOHANH], [RAMAT]) VALUES (8, 8, N'6.7"', N'OLED', N'Super Retina XDR (1284 x 2778 Pixels)', N'Kính cường lực Ceramic Shield', N'60 Hz', N'3 camera 12 MP', N'HD 720p@30fps, FullHD 1080p@60fps, FullHD 1080p@30fps, 4K 2160p@24fps, 4K 2160p@30fps, 4K 2160p@60fps', N'12 MP', N'Deep Fusion, Toàn cảnh (Panorama), Chống rung quang học (OIS), Tự động lấy nét (AF), Nhận diện khuôn mặt, Ban đêm (Night Mode), Zoom quang học, Siêu cận (Macro), Smart HDR 4', N'iOS 15', N'Apple A14 Bionic 6 nhân', N'2 nhân 3.1 GHz & 4 nhân 1.8 GHz', N'Apple GPU 4 nhân', N'6 GB', N'128GB', N'Hỗ trợ 5G', N'1 Nano SIM & 1 eSIM', N'Wi-Fi MIMO, Wi-Fi hotspot, Wi-Fi 802.11 a/b/g/n/ac/ax', N'Lightning', N'3687 mAh', N'Li-Ion', N'20 W', N'Mở khoá khuôn mặt Face ID', N'Phát hiện va chạm (Crash Detection), Màn hình luôn hiển thị AOD, Chạm 2 lần sáng màn hình', N'IP68', N'Nguyên khối', N'Khung thép không gỉ & Mặt lưng kính cường lực', N'Dài 160.8 mm - Ngang 78.1 mm - Dày 7.4 mm - Nặng 228 g', 12, CAST(N'2020-10-01' AS Date))
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [MaSP], [KICHTHUOCMANHINH], [CONGNGHEMANHINH], [DOPHANGIAI], [TINHNANGMANGHINH], [TANSOQUET], [CAMERASAU], [QUAYPHIM], [CAMERATRUOC], [TINHNANGCAMERA], [HEDIEUHANH], [CHIP], [TOCDOCPU], [CHIPDOHOA], [RAM], [DUNGLUONG], [MANGDIDONG], [SIM], [WIFI], [CONGKETNOI], [DUNGLUONGPIN], [LOAIPIN], [HOTROSAC], [BAOMAT], [TINHNANGDACBIET], [KHANGNUOC], [THIETKE], [CHATLIEU], [KICHTHUOC], [BAOHANH], [RAMAT]) VALUES (9, 9, N'6.7"', N'OLED', N'Super Retina XDR (1284 x 2778 Pixels)', N'Kính cường lực Ceramic Shield', N'60 Hz', N'3 camera 12 MP', N'HD 720p@30fps, FullHD 1080p@60fps, FullHD 1080p@30fps, 4K 2160p@24fps, 4K 2160p@30fps, 4K 2160p@60fps', N'12 MP', N'Deep Fusion, Toàn cảnh (Panorama), Chống rung quang học (OIS), Tự động lấy nét (AF), Nhận diện khuôn mặt, Ban đêm (Night Mode), Zoom quang học, Siêu cận (Macro), Smart HDR 4', N'iOS 15', N'Apple A14 Bionic 6 nhân', N'2 nhân 3.1 GHz & 4 nhân 1.8 GHz', N'Apple GPU 4 nhân', N'6 GB', N'256GB', N'Hỗ trợ 5G', N'1 Nano SIM & 1 eSIM', N'Wi-Fi MIMO, Wi-Fi hotspot, Wi-Fi 802.11 a/b/g/n/ac/ax', N'Lightning', N'3687 mAh', N'Li-Ion', N'20 W', N'Mở khoá khuôn mặt Face ID', N'Phát hiện va chạm (Crash Detection), Màn hình luôn hiển thị AOD, Chạm 2 lần sáng màn hình', N'IP68', N'Nguyên khối', N'Khung thép không gỉ & Mặt lưng kính cường lực', N'Dài 160.8 mm - Ngang 78.1 mm - Dày 7.4 mm - Nặng 228 g', 12, CAST(N'2020-10-01' AS Date))
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [MaSP], [KICHTHUOCMANHINH], [CONGNGHEMANHINH], [DOPHANGIAI], [TINHNANGMANGHINH], [TANSOQUET], [CAMERASAU], [QUAYPHIM], [CAMERATRUOC], [TINHNANGCAMERA], [HEDIEUHANH], [CHIP], [TOCDOCPU], [CHIPDOHOA], [RAM], [DUNGLUONG], [MANGDIDONG], [SIM], [WIFI], [CONGKETNOI], [DUNGLUONGPIN], [LOAIPIN], [HOTROSAC], [BAOMAT], [TINHNANGDACBIET], [KHANGNUOC], [THIETKE], [CHATLIEU], [KICHTHUOC], [BAOHANH], [RAMAT]) VALUES (10, 10, N'Chính 6.8" & Phụ 3.26"', N'AMOLED', N'Chính: FHD+ (2520 x 1080 Pixels) & Phụ: (720 x 382 Pixels)', N'Kính siêu mỏng Ultra Thin Glass (UTG)', N'120 Hz & 60 Hz', N'Chính 50 MP & Phụ 8 MP', N'HD 720p@30fps, FullHD 1080p@60fps, FullHD 1080p@30fps, 4K 2160p@24fps, 4K 2160p@30fps', N'32 MP', N'Trôi nhanh thời gian (Time Lapse), Quay chậm (Slow Motion), Xóa phông, Toàn cảnh (Panorama), Ban đêm (Night Mode), Chuyên nghiệp (Pro), HDR, Zoom quang học, Siêu độ phân giải, AI Camera, Làm đẹp, Nhãn dán (AR Stickers), Bộ lọc màu', N'Android 13', N'MediaTek Dimensity 9000+ 8 nhân', N'3.2 GHz', N'Mali-G710 MC10', N'8 GB', N'256GB', N'Hỗ trợ 5G', N'2 Nano SIM', N'Wi-Fi MIMO, Wi-Fi hotspot, Wi-Fi 802.11 a/b/g/n/ac/ax', N'Type-C', N'4300 mAh', N'Li-Po', N'44 W', N'Mở khoá vân tay cạnh viền, Mở khoá khuôn mặt', N'Cử chỉ thông minh, Mở rộng bộ nhớ RAM, Ứng dụng kép (Nhân bản ứng dụng), Thu nhỏ màn hình sử dụng một tay, Đa cửa sổ (chia đôi màn hình), Chế độ trẻ em (Không gian trẻ em)', N'IPX4', N'Nguyên khối', N'Khung hợp kim & Mặt lưng kính cường lực Gorilla Glass 5', N'Dài 166.2 mm - Ngang 75.2 mm - Dày 7.45 mm - Nặng 191 g', 12, CAST(N'2023-04-01' AS Date))
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [MaSP], [KICHTHUOCMANHINH], [CONGNGHEMANHINH], [DOPHANGIAI], [TINHNANGMANGHINH], [TANSOQUET], [CAMERASAU], [QUAYPHIM], [CAMERATRUOC], [TINHNANGCAMERA], [HEDIEUHANH], [CHIP], [TOCDOCPU], [CHIPDOHOA], [RAM], [DUNGLUONG], [MANGDIDONG], [SIM], [WIFI], [CONGKETNOI], [DUNGLUONGPIN], [LOAIPIN], [HOTROSAC], [BAOMAT], [TINHNANGDACBIET], [KHANGNUOC], [THIETKE], [CHATLIEU], [KICHTHUOC], [BAOHANH], [RAMAT]) VALUES (11, 11, N'6.7"', N'AMOLED', N'Full HD+ (1080 x 2412 Pixels)', N'Kính cường lực AGC DT-Star2', N'120 Hz', N'Chính 50 MP & Phụ 32 MP, 8 MP', N'HD 720p@30fps, FullHD 1080p@60fps, FullHD 1080p@30fps, 4K 2160p@24fps, 4K 2160p@30fps', N'32 MP', N'Trôi nhanh thời gian (Time Lapse), Quay chậm (Slow Motion), Xóa phông, Toàn cảnh (Panorama), Ban đêm (Night Mode), Chuyên nghiệp (Pro), HDR, Zoom quang học, Siêu độ phân giải, AI Camera, Làm đẹp, Nhãn dán (AR Stickers), Bộ lọc màu', N'Android 13', N'Snapdragon 778G 5G 8 nhân', N'2.4 GHz', N'Adreno 642L', N'12 GB', N'256GB', N'Hỗ trợ 5G', N'2 Nano SIM', N'Wi-Fi MIMO, Wi-Fi hotspot, Wi-Fi 6', N'Type-C', N'4600 mAh', N'Li-Po', N'80 W', N'Mở khoá vân tay cạnh viền, Mở khoá khuôn mặt', N'Cử chỉ thông minh, Mở rộng bộ nhớ RAM, Ứng dụng kép (Nhân bản ứng dụng), Thu nhỏ màn hình sử dụng một tay, Đa cửa sổ (chia đôi màn hình), Chế độ trẻ em (Không gian trẻ em)', N'IP54', N'Nguyên khối', N'Khung nhựa & Mặt lưng kính', N'Dài 162.3 mm - Ngang 74.2 mm - Dày 7.89 mm - Nặng 185 g', 12, CAST(N'2023-08-01' AS Date))
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [MaSP], [KICHTHUOCMANHINH], [CONGNGHEMANHINH], [DOPHANGIAI], [TINHNANGMANGHINH], [TANSOQUET], [CAMERASAU], [QUAYPHIM], [CAMERATRUOC], [TINHNANGCAMERA], [HEDIEUHANH], [CHIP], [TOCDOCPU], [CHIPDOHOA], [RAM], [DUNGLUONG], [MANGDIDONG], [SIM], [WIFI], [CONGKETNOI], [DUNGLUONGPIN], [LOAIPIN], [HOTROSAC], [BAOMAT], [TINHNANGDACBIET], [KHANGNUOC], [THIETKE], [CHATLIEU], [KICHTHUOC], [BAOHANH], [RAMAT]) VALUES (12, 12, N'6.56"', N'IPS LCD', N'HD+ (720 x 1612 Pixels)', N'Kính cường lực Panda', N'90 Hz', N'Chính 50 MP & Phụ 2 MP', N'HD 720p@30fps, FullHD 1080p@30fps', N'8 MP', N'Trôi nhanh thời gian (Time Lapse), Xóa phông, Toàn cảnh (Panorama), Ban đêm (Night Mode), HDR, Zoom quang học, Siêu độ phân giải, Làm đẹp, Bộ lọc màu', N'Android 12', N'Snapdragon 680 8 nhân', N'2.4 GHz', N'Adreno 610', N'8 GB', N'128GB', N'Hỗ trợ 4G', N'2 Nano SIM', N'Wi-Fi 802.11 a/b/g/n/ac, Dual-band (2.4 GHz/5 GHz)', N'Type-C', N'5000 mAh', N'Li-Po', N'33 W', N'Mở khoá vân tay cạnh viền, Mở khoá khuôn mặt', N'Cử chỉ thông minh, Mở rộng bộ nhớ RAM, Ứng dụng kép (Nhân bản ứng dụng), Thu nhỏ màn hình sử dụng một tay, Đa cửa sổ (chia đôi màn hình), Chế độ trẻ em (Không gian trẻ em)', N'IPX4', N'Nguyên khối', N'Khung nhựa & Mặt lưng thuỷ tinh hữu cơ', N'Dài 163.74 mm - Ngang 75.03 mm - Dày 7.99 mm - Nặng 187 g', 12, CAST(N'2022-10-01' AS Date))
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [MaSP], [KICHTHUOCMANHINH], [CONGNGHEMANHINH], [DOPHANGIAI], [TINHNANGMANGHINH], [TANSOQUET], [CAMERASAU], [QUAYPHIM], [CAMERATRUOC], [TINHNANGCAMERA], [HEDIEUHANH], [CHIP], [TOCDOCPU], [CHIPDOHOA], [RAM], [DUNGLUONG], [MANGDIDONG], [SIM], [WIFI], [CONGKETNOI], [DUNGLUONGPIN], [LOAIPIN], [HOTROSAC], [BAOMAT], [TINHNANGDACBIET], [KHANGNUOC], [THIETKE], [CHATLIEU], [KICHTHUOC], [BAOHANH], [RAMAT]) VALUES (13, 13, N'6.56"', N'AMOLED', N'Full HD+ (1080 x 2376 Pixels)', N'Kính cường lực Schott Xensation UP', N'120 Hz', N'Chính 64 MP & Phụ 8 MP, 2 MP', N'HD 720p@30fps, FullHD 1080p@60fps, FullHD 1080p@30fps, 4K 2160p@30fps, 4K 2160p@60fps, HD 720p@60fps', N'32 MP', N'Quay video hiển thị kép, Trôi nhanh thời gian (Time Lapse), Góc siêu rộng (Ultrawide), Zoom kỹ thuật số, Quay chậm (Slow Motion), Xóa phông, Toàn cảnh (Panorama), Chống rung quang học (OIS), Tự động lấy nét (AF), Ban đêm (Night Mode), Chuyên nghiệp (Pro), HDR, Siêu độ phân giải, AI Camera, Làm đẹp, Siêu cận (Macro), Hiệu ứng Bokeh, Bộ lọc màu', N'Android 12', N'MediaTek Dimensity 1300 8 nhân', N'1 nhân 3 GHz, 3 nhân 2.6 GHz & 4 nhân 2 GHz', N'Mali-G77', N'8 GB', N'128GB', N'Hỗ trợ 5G', N'2 Nano SIM', N'Wi-Fi Direct, Wi-Fi 802.11 a/b/g/n/ac, Dual-band (2.4 GHz/5 GHz)', N'Type-C', N'4830 mAh', N'Li-Po', N'66 W', N'Mở khoá vân tay cạnh viền, Mở khoá khuôn mặt', N'Cử chỉ thông minh, Mở rộng bộ nhớ RAM, Ứng dụng kép (Nhân bản ứng dụng), Thu nhỏ màn hình sử dụng một tay, Đa cửa sổ (chia đôi màn hình), Chế độ trẻ em (Không gian trẻ em)', N'IPX4', N'Nguyên khối', N'Khung kim loại & Mặt lưng kính', N'Dài 158.9 mm - Ngang 73.52 mm - Dày 8.62 mm - Nặng 190 g', 12, CAST(N'2022-11-01' AS Date))
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [MaSP], [KICHTHUOCMANHINH], [CONGNGHEMANHINH], [DOPHANGIAI], [TINHNANGMANGHINH], [TANSOQUET], [CAMERASAU], [QUAYPHIM], [CAMERATRUOC], [TINHNANGCAMERA], [HEDIEUHANH], [CHIP], [TOCDOCPU], [CHIPDOHOA], [RAM], [DUNGLUONG], [MANGDIDONG], [SIM], [WIFI], [CONGKETNOI], [DUNGLUONGPIN], [LOAIPIN], [HOTROSAC], [BAOMAT], [TINHNANGDACBIET], [KHANGNUOC], [THIETKE], [CHATLIEU], [KICHTHUOC], [BAOHANH], [RAMAT]) VALUES (14, 14, N'6.51"', N'IPS LCD', N'HD+ (720 x 1600 Pixels)', N'Kính cường lực Panda', N'60 Hz', N'8 MP', N'HD 720p@30fps, FullHD 1080p@30fps', N'5 MP', N'Trôi nhanh thời gian (Time Lapse), Xóa phông, Làm đẹp', N'Android 12', N'MediaTek Helio P35 8 nhân', N'4 nhân 2.3 GHz & 4 nhân 1.8 GHz', N'IMG PowerVR GE8320', N'3 GB', N'32 GB', N'Hỗ trợ 4G', N'2 Nano SIM', N'Dual-band (2.4 GHz/5 GHz)', N'Micro USB', N'5000 mAh', N'Li-Po', N'10 W', N'Mở khoá khuôn mặt', N'Chế độ đơn giản (Giao diện đơn giản), Chặn cuộc gọi, Chặn tin nhắn, Chạm 2 lần tắt/sáng màn hình, Trợ lý ảo Google Assistant', N'IP52', N'Nguyên khối', N'Khung & Mặt lưng nhựa Polymer cao cấp', N'Dài 163.99 mm - Ngang 75.63 mm - Dày 8.49 mm - Nặng 186 g', 12, CAST(N'2023-03-01' AS Date))
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [MaSP], [KICHTHUOCMANHINH], [CONGNGHEMANHINH], [DOPHANGIAI], [TINHNANGMANGHINH], [TANSOQUET], [CAMERASAU], [QUAYPHIM], [CAMERATRUOC], [TINHNANGCAMERA], [HEDIEUHANH], [CHIP], [TOCDOCPU], [CHIPDOHOA], [RAM], [DUNGLUONG], [MANGDIDONG], [SIM], [WIFI], [CONGKETNOI], [DUNGLUONGPIN], [LOAIPIN], [HOTROSAC], [BAOMAT], [TINHNANGDACBIET], [KHANGNUOC], [THIETKE], [CHATLIEU], [KICHTHUOC], [BAOHANH], [RAMAT]) VALUES (15, 15, N'6.62"', N'AMOLED', N'Full HD+ (1080 x 2400 Pixels)', N'Kính cường lực Schott Xensation UP', N'120 Hz', N'Chính 64 MP & Phụ 2 MP, 2 MP', N'HD 720p@30fps, FullHD 1080p@30fps, HD 720p@60fps', N'32 MP', N'Quay video hiển thị kép, Phơi sáng kép, Trôi nhanh thời gian (Time Lapse), Quay chậm (Slow Motion), Xóa phông, Toàn cảnh (Panorama), Chống rung quang học (OIS), Tự động lấy nét (AF), Ban đêm (Night Mode), Chuyên nghiệp (Pro), HDR, Siêu độ phân giải, Làm đẹp, Siêu cận (Macro), Live Photo, Bộ lọc màu', N'Android 13', N'MediaTek Helio G99 8 nhân', N'2 nhân 2.2 GHz & 6 nhân 2.0 GHz', N'Mali-G57', N'8 GB', N'256 GB', N'Hỗ trợ 4G', N'2 Nano SIM', N'Dual-band (2.4 GHz/5 GHz), Wi-Fi Direct', N'Type-C', N'4600 mAh', N'Li-Po', N'66 W', N'Mở khoá vân tay dưới màn hình, Mở khoá khuôn mặt', N'Chế độ đơn giản (Giao diện đơn giản), Chặn cuộc gọi, Chặn tin nhắn, Chạm 2 lần tắt/sáng màn hình, Trợ lý ảo Google Assistant', N'IP54', N'Nguyên khối', N'Khung & Mặt lưng nhựa', N'Dài 162.51 mm - Ngang 75.81 mm - Dày 7.8 mm - Nặng 186 g', 12, CAST(N'2023-05-01' AS Date))
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [MaSP], [KICHTHUOCMANHINH], [CONGNGHEMANHINH], [DOPHANGIAI], [TINHNANGMANGHINH], [TANSOQUET], [CAMERASAU], [QUAYPHIM], [CAMERATRUOC], [TINHNANGCAMERA], [HEDIEUHANH], [CHIP], [TOCDOCPU], [CHIPDOHOA], [RAM], [DUNGLUONG], [MANGDIDONG], [SIM], [WIFI], [CONGKETNOI], [DUNGLUONGPIN], [LOAIPIN], [HOTROSAC], [BAOMAT], [TINHNANGDACBIET], [KHANGNUOC], [THIETKE], [CHATLIEU], [KICHTHUOC], [BAOHANH], [RAMAT]) VALUES (16, 16, N'Chính 7.6" & Phụ 6.2"', N'Dynamic AMOLED 2X', N'Chính: QXGA+ (2176 x 1812 Pixels) & Phụ: HD+ (2316 x 904 Pixels)', N'Chính: Ultra Thin Glass & Phụ: Corning Gorilla Glass Victus 2', N'120 Hz', N'Chính 50 MP & Phụ 12 MP, 10 MP', N'HD 720p@30fps, FullHD 1080p@30fps, HD 720p@60fps, 4K 2160p@30fps, 4K 2160p@60fps, 8K 4320p@30fps', N'10 MP & 4 MPP', N'Trôi nhanh thời gian (Time Lapse), Góc siêu rộng (Ultrawide), Zoom kỹ thuật số, Góc rộng (Wide), FlexCam, Quay chậm (Slow Motion), Xóa phông, Toàn cảnh (Panorama), Chống rung quang học (OIS), Ban đêm (Night Mode), Chuyên nghiệp (Pro), HDR, Zoom quang học, Quay Siêu chậm (Super Slow Motion), Làm đẹp, Hiệu ứng Bokeh, Bộ lọc màu', N'Android 13', N'Snapdragon 8 Gen 2 for Galaxy', N'1 nhân 3.36 GHz, 4 nhân 2.8 GHz & 3 nhân 2 GHz', N'Adreno 740', N'12 GB', N'256 GB', N'Hỗ trợ 5G', N'2 Nano SIM hoặc 1 Nano SIM + 1 eSIM', N'Dual-band (2.4 GHz/5 GHz), Wi-Fi MIMO, Wi-Fi 802.11 a/b/g/n/ac/ax', N'Type-C', N'4400 mAh', N'Li-Po', N'25 W', N'Mở khoá vân tay cạnh viền, Mở khoá khuôn mặt', N'Chế độ đơn giản (Giao diện đơn giản), Chặn cuộc gọi, Chặn tin nhắn, Chạm 2 lần tắt/sáng màn hình, Trợ lý ảo Google Assistant', N'IPX8', N'Nguyên khối', N'Khung nhôm & Mặt lưng kính cường lực', N'Dài 154.9 mm - Ngang 129.9 mm - Dày 6.1 mm - Nặng 253 g', 18, CAST(N'2023-07-01' AS Date))
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [MaSP], [KICHTHUOCMANHINH], [CONGNGHEMANHINH], [DOPHANGIAI], [TINHNANGMANGHINH], [TANSOQUET], [CAMERASAU], [QUAYPHIM], [CAMERATRUOC], [TINHNANGCAMERA], [HEDIEUHANH], [CHIP], [TOCDOCPU], [CHIPDOHOA], [RAM], [DUNGLUONG], [MANGDIDONG], [SIM], [WIFI], [CONGKETNOI], [DUNGLUONGPIN], [LOAIPIN], [HOTROSAC], [BAOMAT], [TINHNANGDACBIET], [KHANGNUOC], [THIETKE], [CHATLIEU], [KICHTHUOC], [BAOHANH], [RAMAT]) VALUES (17, 17, N'Chính 7.6" & Phụ 6.2"', N'Dynamic AMOLED 2X', N'Chính: QXGA+ (2176 x 1812 Pixels) & Phụ: HD+ (2316 x 904 Pixels)', N'Chính: Ultra Thin Glass & Phụ: Corning Gorilla Glass Victus 2', N'120 Hz', N'Chính 50 MP & Phụ 12 MP, 10 MP', N'HD 720p@30fps, FullHD 1080p@30fps, HD 720p@60fps, 4K 2160p@30fps, 4K 2160p@60fps, 8K 4320p@30fps', N'10 MP & 4 MPP', N'Trôi nhanh thời gian (Time Lapse), Góc siêu rộng (Ultrawide), Zoom kỹ thuật số, Góc rộng (Wide), FlexCam, Quay chậm (Slow Motion), Xóa phông, Toàn cảnh (Panorama), Chống rung quang học (OIS), Ban đêm (Night Mode), Chuyên nghiệp (Pro), HDR, Zoom quang học, Quay Siêu chậm (Super Slow Motion), Làm đẹp, Hiệu ứng Bokeh, Bộ lọc màu', N'Android 13', N'Snapdragon 8 Gen 2 for Galaxy', N'1 nhân 3.36 GHz, 4 nhân 2.8 GHz & 3 nhân 2 GHz', N'Adreno 740', N'12 GB', N'512 GB', N'Hỗ trợ 5G', N'2 Nano SIM hoặc 1 Nano SIM + 1 eSIM', N'Dual-band (2.4 GHz/5 GHz), Wi-Fi MIMO, Wi-Fi 802.11 a/b/g/n/ac/ax', N'Type-C', N'4400 mAh', N'Li-Po', N'25 W', N'Mở khoá vân tay cạnh viền, Mở khoá khuôn mặt', N'Chế độ đơn giản (Giao diện đơn giản), Chặn cuộc gọi, Chặn tin nhắn, Chạm 2 lần tắt/sáng màn hình, Trợ lý ảo Google Assistant', N'IPX8', N'Nguyên khối', N'Khung nhôm & Mặt lưng kính cường lực', N'Dài 154.9 mm - Ngang 129.9 mm - Dày 6.1 mm - Nặng 253 g', 18, CAST(N'2023-07-01' AS Date))
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [MaSP], [KICHTHUOCMANHINH], [CONGNGHEMANHINH], [DOPHANGIAI], [TINHNANGMANGHINH], [TANSOQUET], [CAMERASAU], [QUAYPHIM], [CAMERATRUOC], [TINHNANGCAMERA], [HEDIEUHANH], [CHIP], [TOCDOCPU], [CHIPDOHOA], [RAM], [DUNGLUONG], [MANGDIDONG], [SIM], [WIFI], [CONGKETNOI], [DUNGLUONGPIN], [LOAIPIN], [HOTROSAC], [BAOMAT], [TINHNANGDACBIET], [KHANGNUOC], [THIETKE], [CHATLIEU], [KICHTHUOC], [BAOHANH], [RAMAT]) VALUES (18, 18, N'Chính 7.6" & Phụ 6.2"', N'Dynamic AMOLED 2X', N'Chính: QXGA+ (2176 x 1812 Pixels) & Phụ: HD+ (2316 x 904 Pixels)', N'Chính: Ultra Thin Glass & Phụ: Corning Gorilla Glass Victus 2', N'120 Hz', N'Chính 50 MP & Phụ 12 MP, 10 MP', N'HD 720p@30fps, FullHD 1080p@30fps, HD 720p@60fps, 4K 2160p@30fps, 4K 2160p@60fps, 8K 4320p@30fps', N'10 MP & 4 MPP', N'Trôi nhanh thời gian (Time Lapse), Góc siêu rộng (Ultrawide), Zoom kỹ thuật số, Góc rộng (Wide), FlexCam, Quay chậm (Slow Motion), Xóa phông, Toàn cảnh (Panorama), Chống rung quang học (OIS), Ban đêm (Night Mode), Chuyên nghiệp (Pro), HDR, Zoom quang học, Quay Siêu chậm (Super Slow Motion), Làm đẹp, Hiệu ứng Bokeh, Bộ lọc màu', N'Android 13', N'Snapdragon 8 Gen 2 for Galaxy', N'1 nhân 3.36 GHz, 4 nhân 2.8 GHz & 3 nhân 2 GHz', N'Adreno 740', N'12 GB', N'1TB', N'Hỗ trợ 5G', N'2 Nano SIM hoặc 1 Nano SIM + 1 eSIM', N'Dual-band (2.4 GHz/5 GHz), Wi-Fi MIMO, Wi-Fi 802.11 a/b/g/n/ac/ax', N'Type-C', N'4400 mAh', N'Li-Po', N'25 W', N'Mở khoá vân tay cạnh viền, Mở khoá khuôn mặt', N'Chế độ đơn giản (Giao diện đơn giản), Chặn cuộc gọi, Chặn tin nhắn, Chạm 2 lần tắt/sáng màn hình, Trợ lý ảo Google Assistant', N'IPX8', N'Nguyên khối', N'Khung nhôm & Mặt lưng kính cường lực', N'Dài 154.9 mm - Ngang 129.9 mm - Dày 6.1 mm - Nặng 253 g', 18, CAST(N'2023-07-01' AS Date))
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [MaSP], [KICHTHUOCMANHINH], [CONGNGHEMANHINH], [DOPHANGIAI], [TINHNANGMANGHINH], [TANSOQUET], [CAMERASAU], [QUAYPHIM], [CAMERATRUOC], [TINHNANGCAMERA], [HEDIEUHANH], [CHIP], [TOCDOCPU], [CHIPDOHOA], [RAM], [DUNGLUONG], [MANGDIDONG], [SIM], [WIFI], [CONGKETNOI], [DUNGLUONGPIN], [LOAIPIN], [HOTROSAC], [BAOMAT], [TINHNANGDACBIET], [KHANGNUOC], [THIETKE], [CHATLIEU], [KICHTHUOC], [BAOHANH], [RAMAT]) VALUES (19, 19, N'Chính 6.7" & Phụ 1.9"', N'Chính: Dynamic AMOLED 2X, Phụ: Super AMOLED', N'Chính: FHD+ (2640 x 1080 Pixels) x Phụ: (260 x 512 Pixels)', N'Chính: Ultra Thin Glass & Phụ: Corning Gorilla Glass Victus+', N'120 Hz', N'2 camera 12 MP', N'HD 720p@30fps, FullHD 1080p@30fps, HD 720p@60fps, 4K 2160p@30fps, 4K 2160p@60fps', N'10 MP', N'Trôi nhanh thời gian (Time Lapse), Góc siêu rộng (Ultrawide), Zoom kỹ thuật số, Góc rộng (Wide), FlexCam, Quay chậm (Slow Motion), Xóa phông, Toàn cảnh (Panorama), Chống rung quang học (OIS), Ban đêm (Night Mode), Chuyên nghiệp (Pro), HDR, Zoom quang học, Quay Siêu chậm (Super Slow Motion), Làm đẹp, Hiệu ứng Bokeh, Bộ lọc màu', N'Android 12', N'Snapdragon 8+ Gen 1 8 nhân', N'1 nhân 3.18 GHz, 3 nhân 2.7 GHz & 4 nhân 2 GHz', N'Adreno 670', N'8 GB', N'128 GB', N'Hỗ trợ 5G', N'1 Nano SIM & 1 eSIM', N'Dual-band (2.4 GHz/5 GHz), Wi-Fi MIMO, Wi-Fi 802.11 a/b/g/n/ac/ax', N'Type-C', N'3700 mAh', N'Li-Ion', N'25 W', N'Mở khoá vân tay cạnh viền, Mở khoá khuôn mặt', N'Chế độ đơn giản (Giao diện đơn giản), Chặn cuộc gọi, Chặn tin nhắn, Chạm 2 lần tắt/sáng màn hình, Trợ lý ảo Google Assistant', N'IPX8', N'Nguyên khối', N'Khung nhôm & Mặt lưng kính cường lực', N'Dài 165.2 mm - Ngang 71.9 mm - Dày 6.9 mm - Nặng 187 g', 12, CAST(N'2022-08-01' AS Date))
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [MaSP], [KICHTHUOCMANHINH], [CONGNGHEMANHINH], [DOPHANGIAI], [TINHNANGMANGHINH], [TANSOQUET], [CAMERASAU], [QUAYPHIM], [CAMERATRUOC], [TINHNANGCAMERA], [HEDIEUHANH], [CHIP], [TOCDOCPU], [CHIPDOHOA], [RAM], [DUNGLUONG], [MANGDIDONG], [SIM], [WIFI], [CONGKETNOI], [DUNGLUONGPIN], [LOAIPIN], [HOTROSAC], [BAOMAT], [TINHNANGDACBIET], [KHANGNUOC], [THIETKE], [CHATLIEU], [KICHTHUOC], [BAOHANH], [RAMAT]) VALUES (20, 20, N'Chính 6.7" & Phụ 1.9"', N'Chính: Dynamic AMOLED 2X, Phụ: Super AMOLED', N'Chính: FHD+ (2640 x 1080 Pixels) x Phụ: (260 x 512 Pixels)', N'Chính: Ultra Thin Glass & Phụ: Corning Gorilla Glass Victus+', N'120 Hz', N'2 camera 12 MP', N'HD 720p@30fps, FullHD 1080p@30fps, HD 720p@60fps, 4K 2160p@30fps, 4K 2160p@60fps', N'10 MP', N'Trôi nhanh thời gian (Time Lapse), Góc siêu rộng (Ultrawide), Zoom kỹ thuật số, Góc rộng (Wide), FlexCam, Quay chậm (Slow Motion), Xóa phông, Toàn cảnh (Panorama), Chống rung quang học (OIS), Ban đêm (Night Mode), Chuyên nghiệp (Pro), HDR, Zoom quang học, Quay Siêu chậm (Super Slow Motion), Làm đẹp, Hiệu ứng Bokeh, Bộ lọc màu', N'Android 12', N'Snapdragon 8+ Gen 1 8 nhân', N'1 nhân 3.18 GHz, 3 nhân 2.7 GHz & 4 nhân 2 GHz', N'Adreno 670', N'8 GB', N'256 GB', N'Hỗ trợ 5G', N'1 Nano SIM & 1 eSIM', N'Dual-band (2.4 GHz/5 GHz), Wi-Fi MIMO, Wi-Fi 802.11 a/b/g/n/ac/ax', N'Type-C', N'3700 mAh', N'Li-Ion', N'25 W', N'Mở khoá vân tay cạnh viền, Mở khoá khuôn mặt', N'Chế độ đơn giản (Giao diện đơn giản), Chặn cuộc gọi, Chặn tin nhắn, Chạm 2 lần tắt/sáng màn hình, Trợ lý ảo Google Assistant', N'IPX8', N'Nguyên khối', N'Khung nhôm & Mặt lưng kính cường lực', N'Dài 165.2 mm - Ngang 71.9 mm - Dày 6.9 mm - Nặng 187 g', 12, CAST(N'2022-08-01' AS Date))
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [MaSP], [KICHTHUOCMANHINH], [CONGNGHEMANHINH], [DOPHANGIAI], [TINHNANGMANGHINH], [TANSOQUET], [CAMERASAU], [QUAYPHIM], [CAMERATRUOC], [TINHNANGCAMERA], [HEDIEUHANH], [CHIP], [TOCDOCPU], [CHIPDOHOA], [RAM], [DUNGLUONG], [MANGDIDONG], [SIM], [WIFI], [CONGKETNOI], [DUNGLUONGPIN], [LOAIPIN], [HOTROSAC], [BAOMAT], [TINHNANGDACBIET], [KHANGNUOC], [THIETKE], [CHATLIEU], [KICHTHUOC], [BAOHANH], [RAMAT]) VALUES (21, 21, N'Chính 6.7" & Phụ 1.9"', N'Chính: Dynamic AMOLED 2X, Phụ: Super AMOLED', N'Chính: FHD+ (2640 x 1080 Pixels) x Phụ: (260 x 512 Pixels)', N'Chính: Ultra Thin Glass & Phụ: Corning Gorilla Glass Victus+', N'120 Hz', N'2 camera 12 MP', N'HD 720p@30fps, FullHD 1080p@30fps, HD 720p@60fps, 4K 2160p@30fps, 4K 2160p@60fps', N'10 MP', N'Trôi nhanh thời gian (Time Lapse), Góc siêu rộng (Ultrawide), Zoom kỹ thuật số, Góc rộng (Wide), FlexCam, Quay chậm (Slow Motion), Xóa phông, Toàn cảnh (Panorama), Chống rung quang học (OIS), Ban đêm (Night Mode), Chuyên nghiệp (Pro), HDR, Zoom quang học, Quay Siêu chậm (Super Slow Motion), Làm đẹp, Hiệu ứng Bokeh, Bộ lọc màu', N'Android 12', N'Snapdragon 8+ Gen 1 8 nhân', N'1 nhân 3.18 GHz, 3 nhân 2.7 GHz & 4 nhân 2 GHz', N'Adreno 670', N'8 GB', N'512 GB', N'Hỗ trợ 5G', N'1 Nano SIM & 1 eSIM', N'Dual-band (2.4 GHz/5 GHz), Wi-Fi MIMO, Wi-Fi 802.11 a/b/g/n/ac/ax', N'Type-C', N'3700 mAh', N'Li-Ion', N'25 W', N'Mở khoá vân tay cạnh viền, Mở khoá khuôn mặt', N'Chế độ đơn giản (Giao diện đơn giản), Chặn cuộc gọi, Chặn tin nhắn, Chạm 2 lần tắt/sáng màn hình, Trợ lý ảo Google Assistant', N'IPX8', N'Nguyên khối', N'Khung nhôm & Mặt lưng kính cường lực', N'Dài 165.2 mm - Ngang 71.9 mm - Dày 6.9 mm - Nặng 187 g', 12, CAST(N'2022-08-01' AS Date))
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [MaSP], [KICHTHUOCMANHINH], [CONGNGHEMANHINH], [DOPHANGIAI], [TINHNANGMANGHINH], [TANSOQUET], [CAMERASAU], [QUAYPHIM], [CAMERATRUOC], [TINHNANGCAMERA], [HEDIEUHANH], [CHIP], [TOCDOCPU], [CHIPDOHOA], [RAM], [DUNGLUONG], [MANGDIDONG], [SIM], [WIFI], [CONGKETNOI], [DUNGLUONGPIN], [LOAIPIN], [HOTROSAC], [BAOMAT], [TINHNANGDACBIET], [KHANGNUOC], [THIETKE], [CHATLIEU], [KICHTHUOC], [BAOHANH], [RAMAT]) VALUES (22, 22, N'6.28"', N'AMOLED', N'Full HD+ (1080 x 2400 Pixels)', N'Kính cường lực Corning Gorilla Glass Victus', N'120 Hz', N'Chính 50 MP & Phụ 13 MP, 5 MP', N'HD 720p@30fps, FullHD 1080p@30fps, HD 720p@60fps, 4K 2160p@30fps, 4K 2160p@60fps, 8K 4320p@24fps', N'32 MP', N'Trôi nhanh thời gian (Time Lapse), Góc siêu rộng (Ultrawide), Zoom kỹ thuật số, Góc rộng (Wide), FlexCam, Quay chậm (Slow Motion), Xóa phông, Toàn cảnh (Panorama), Chống rung quang học (OIS), Ban đêm (Night Mode), Chuyên nghiệp (Pro), HDR, Zoom quang học, Quay Siêu chậm (Super Slow Motion), Làm đẹp, Hiệu ứng Bokeh, Bộ lọc màu', N'Android 12', N'Snapdragon 8+ Gen 1 8 nhân', N'1 nhân 3 GHz, 3 nhân 2.5 GHz & 4 nhân 1.79 GHz', N'Adreno 730', N'8 GB', N'256 GB', N'Hỗ trợ 5G', N'2 Nano SIM', N'Dual-band (2.4 GHz/5 GHz), Wi-Fi MIMO, Wi-Fi 802.11 a/b/g/n/ac/ax', N'Type-C', N'4500 mAh', N'Li-Ion', N'67 W', N'Mở khoá vân tay cạnh viền, Mở khoá khuôn mặt', N'Công nghệ tản nhiệt LiquidCool, Màn hình luôn hiển thị AOD, Âm thanh Dolby Atmos, Chạm 2 lần tắt/sáng màn hình, Đa cửa sổ (chia đôi màn hình), Âm thanh bởi Harman Kardon, Loa kép', N'Không có', N'Nguyên khối', N'Khung kim loại & Mặt lưng kính', N'Dài 152.7 mm - Ngang 69.9 mm - Dày 8.2 mm - Nặng 180 g', 12, CAST(N'2022-03-01' AS Date))
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [MaSP], [KICHTHUOCMANHINH], [CONGNGHEMANHINH], [DOPHANGIAI], [TINHNANGMANGHINH], [TANSOQUET], [CAMERASAU], [QUAYPHIM], [CAMERATRUOC], [TINHNANGCAMERA], [HEDIEUHANH], [CHIP], [TOCDOCPU], [CHIPDOHOA], [RAM], [DUNGLUONG], [MANGDIDONG], [SIM], [WIFI], [CONGKETNOI], [DUNGLUONGPIN], [LOAIPIN], [HOTROSAC], [BAOMAT], [TINHNANGDACBIET], [KHANGNUOC], [THIETKE], [CHATLIEU], [KICHTHUOC], [BAOHANH], [RAMAT]) VALUES (23, 23, N'6.43"', N'AMOLED', N'Full HD+ (1080 x 2400 Pixels)', N'Kính cường lực Corning Gorilla Glass 3', N'90 Hz', N'Chính 108 MP & Phụ 8 MP, 2 MP', N'HD 720p@30fpsFullHD 1080p@30fps', N'16 MP', N'Trôi nhanh thời gian (Time Lapse), Góc siêu rộng (Ultrawide), Zoom kỹ thuật số, Góc rộng (Wide), FlexCam, Quay chậm (Slow Motion), Xóa phông, Toàn cảnh (Panorama), Chống rung quang học (OIS), Ban đêm (Night Mode), Quay Siêu chậm (Super Slow Motion), Làm đẹp, Hiệu ứng Bokeh, Bộ lọc màu', N'Android 13', N'MediaTek Helio G96 8 nhân', N'2 nhân 2.05 GHz & 6 nhân 2.0 GHz', N'Mali-G57 MC2', N'8 GB', N'256 GB', N'Hỗ trợ 4G', N'2 Nano SIM', N'Dual-band (2.4 GHz/5 GHz), Wi-Fi MIMO, Wi-Fi 802.11 a/b/g/n/ac/ax', N'Type-C', N'5000 mAh', N'Li-Po', N'33 W', N'Mở khoá vân tay cạnh viền, Mở khoá khuôn mặt', N'Công nghệ tản nhiệt LiquidCool, Màn hình luôn hiển thị AOD, Âm thanh Dolby Atmos, Chạm 2 lần tắt/sáng màn hình, Đa cửa sổ (chia đôi màn hình), Âm thanh bởi Harman Kardon, Loa kép', N'Không có', N'Nguyên khối', N'Khung nhựa & Mặt lưng kính', N'Dài 159.87 mm - Ngang 73.87 mm - Dày 8.09 mm - Nặng 176 g', 12, CAST(N'2023-05-01' AS Date))
INSERT [dbo].[CHITIETSANPHAM] ([MaChiTietSP], [MaSP], [KICHTHUOCMANHINH], [CONGNGHEMANHINH], [DOPHANGIAI], [TINHNANGMANGHINH], [TANSOQUET], [CAMERASAU], [QUAYPHIM], [CAMERATRUOC], [TINHNANGCAMERA], [HEDIEUHANH], [CHIP], [TOCDOCPU], [CHIPDOHOA], [RAM], [DUNGLUONG], [MANGDIDONG], [SIM], [WIFI], [CONGKETNOI], [DUNGLUONGPIN], [LOAIPIN], [HOTROSAC], [BAOMAT], [TINHNANGDACBIET], [KHANGNUOC], [THIETKE], [CHATLIEU], [KICHTHUOC], [BAOHANH], [RAMAT]) VALUES (24, 24, N'6.67"', N'AMOLED', N'Full HD+ (1080 x 2400 Pixels)', N'Kính cường lực Corning Gorilla Glass 5', N'120 Hz', N'Chính 108 MP & Phụ 8 MP, 2 MP, 2 MP', N'HD 720p@30fpsFullHD 1080p@30fps, 4K 2160p@30fps', N'16 MP', N'Trôi nhanh thời gian (Time Lapse), Góc siêu rộng (Ultrawide), Zoom kỹ thuật số, Góc rộng (Wide), FlexCam, Quay chậm (Slow Motion), Xóa phông, Toàn cảnh (Panorama), Chống rung quang học (OIS), Ban đêm (Night Mode), Quay Siêu chậm (Super Slow Motion), Làm đẹp, Hiệu ứng Bokeh, Bộ lọc màu', N'Android 11', N'Snapdragon 732G 8 nhân', N'2.3 GHz', N'Adreno 618', N'8 GB', N'128 GB', N'Hỗ trợ 4G', N'2 Nano SIM (SIM 2 chung khe thẻ nhớ)', N'Dual-band (2.4 GHz/5 GHz), Wi-Fi MIMO, Wi-Fi 802.11 a/b/g/n/ac/ax', N'Type-C', N'5000 mAh', N'Li-Po', N'67 W', N'Mở khoá vân tay cạnh viền, Mở khoá khuôn mặt', N'Công nghệ tản nhiệt LiquidCool, Màn hình luôn hiển thị AOD, Âm thanh Dolby Atmos, Chạm 2 lần tắt/sáng màn hình, Đa cửa sổ (chia đôi màn hình), Âm thanh bởi Harman Kardon, Loa kép', N'IP53', N'Nguyên khối', N'Khung nhựa & Mặt lưng kính', N'Dài 164.2 mm - Ngang 76.1 mm - Dày 8.12 mm - Nặng 201.8 g', 12, CAST(N'2023-05-01' AS Date))
SET IDENTITY_INSERT [dbo].[CHITIETSANPHAM] OFF
GO
SET IDENTITY_INSERT [dbo].[DANHMUC] ON 

INSERT [dbo].[DANHMUC] ([MaDanhMuc], [TenDanhMuc]) VALUES (1, N'Điện thoại')
INSERT [dbo].[DANHMUC] ([MaDanhMuc], [TenDanhMuc]) VALUES (2, N'Phụ kiện')
SET IDENTITY_INSERT [dbo].[DANHMUC] OFF
GO
SET IDENTITY_INSERT [dbo].[DONDATHANG] ON 

INSERT [dbo].[DONDATHANG] ([MaDDH], [MaKH], [NgayDatHang], [NgayGiao], [DaThanhToan], [QuaTang], [TinhTrang], [DaXoa]) VALUES (1, 5, CAST(N'2023-12-14T21:25:58.410' AS DateTime), CAST(N'2023-12-27T00:00:00.000' AS DateTime), 1, NULL, N'Đã giao', 0)
INSERT [dbo].[DONDATHANG] ([MaDDH], [MaKH], [NgayDatHang], [NgayGiao], [DaThanhToan], [QuaTang], [TinhTrang], [DaXoa]) VALUES (2, 8, CAST(N'2023-12-21T23:54:48.680' AS DateTime), CAST(N'2023-12-25T00:00:00.000' AS DateTime), 1, NULL, N'Đã giao', 0)
INSERT [dbo].[DONDATHANG] ([MaDDH], [MaKH], [NgayDatHang], [NgayGiao], [DaThanhToan], [QuaTang], [TinhTrang], [DaXoa]) VALUES (3, 9, CAST(N'2023-12-23T10:31:13.387' AS DateTime), CAST(N'2023-12-25T00:00:00.000' AS DateTime), 0, NULL, N'Đã duyệt', 0)
INSERT [dbo].[DONDATHANG] ([MaDDH], [MaKH], [NgayDatHang], [NgayGiao], [DaThanhToan], [QuaTang], [TinhTrang], [DaXoa]) VALUES (4, 10, CAST(N'2023-12-23T11:09:19.527' AS DateTime), NULL, 0, NULL, N'Chưa duyệt', 0)
INSERT [dbo].[DONDATHANG] ([MaDDH], [MaKH], [NgayDatHang], [NgayGiao], [DaThanhToan], [QuaTang], [TinhTrang], [DaXoa]) VALUES (5, 11, CAST(N'2023-12-23T11:11:17.843' AS DateTime), CAST(N'2023-12-26T00:00:00.000' AS DateTime), 1, NULL, N'Đã giao', 0)
INSERT [dbo].[DONDATHANG] ([MaDDH], [MaKH], [NgayDatHang], [NgayGiao], [DaThanhToan], [QuaTang], [TinhTrang], [DaXoa]) VALUES (6, 12, CAST(N'2023-12-23T11:17:53.967' AS DateTime), CAST(N'2023-12-28T00:00:00.000' AS DateTime), 1, NULL, N'Đã duyệt', 0)
INSERT [dbo].[DONDATHANG] ([MaDDH], [MaKH], [NgayDatHang], [NgayGiao], [DaThanhToan], [QuaTang], [TinhTrang], [DaXoa]) VALUES (7, 13, CAST(N'2023-12-23T11:18:50.650' AS DateTime), CAST(N'2023-12-25T00:00:00.000' AS DateTime), 0, NULL, N'Đã duyệt', 0)
INSERT [dbo].[DONDATHANG] ([MaDDH], [MaKH], [NgayDatHang], [NgayGiao], [DaThanhToan], [QuaTang], [TinhTrang], [DaXoa]) VALUES (8, 14, CAST(N'2023-12-24T13:41:34.687' AS DateTime), CAST(N'2023-12-27T00:00:00.000' AS DateTime), 1, NULL, N'Đã giao', 0)
SET IDENTITY_INSERT [dbo].[DONDATHANG] OFF
GO
SET IDENTITY_INSERT [dbo].[GIOHANG] ON 

INSERT [dbo].[GIOHANG] ([MaGioHang], [MaTV]) VALUES (4, 6)
INSERT [dbo].[GIOHANG] ([MaGioHang], [MaTV]) VALUES (5, 7)
INSERT [dbo].[GIOHANG] ([MaGioHang], [MaTV]) VALUES (6, 8)
SET IDENTITY_INSERT [dbo].[GIOHANG] OFF
GO
SET IDENTITY_INSERT [dbo].[KHACHHANG] ON 

INSERT [dbo].[KHACHHANG] ([MaKH], [MaTV], [TenKH], [DiaChi], [Email], [SoDienThoai]) VALUES (3, NULL, N'Lê Trí Cường', NULL, NULL, NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [MaTV], [TenKH], [DiaChi], [Email], [SoDienThoai]) VALUES (4, NULL, N'Nguyễn Quốc Tiến', NULL, NULL, NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [MaTV], [TenKH], [DiaChi], [Email], [SoDienThoai]) VALUES (5, 5, N'Phan Lê Tú Mỹ', N'Địa chỉ cụ thể: 35 kk, Phường/Xã: Phường 04, Quận/Huyện: Quận 8, Tỉnh/Thành phố: Thành phố Hồ Chí Minh, Loại địa chỉ: Nhà riêng', N'ple.tumy@gmail.com', N'0936000306')
INSERT [dbo].[KHACHHANG] ([MaKH], [MaTV], [TenKH], [DiaChi], [Email], [SoDienThoai]) VALUES (8, 5, N'Phan Lê Tú Mỹ', N'Địa chỉ cụ thể: 37 CL, Phường/Xã: Phường 04, Quận/Huyện: Quận 8, Tỉnh/Thành phố: Thành phố Hồ Chí Minh, Loại địa chỉ: Nhà riêng', N'ple.tumy@gmail.com', N'0936000306')
INSERT [dbo].[KHACHHANG] ([MaKH], [MaTV], [TenKH], [DiaChi], [Email], [SoDienThoai]) VALUES (9, 5, N'Phan Lê Tú Mỹ', N'Địa chỉ cụ thể: 37 Cao Lỗ, Phường/Xã: Phường 04, Quận/Huyện: Quận 8, Tỉnh/Thành phố: Thành phố Hồ Chí Minh, Loại địa chỉ: Nhà riêng', N'ple.tumy@gmail.com', N'0936000306')
INSERT [dbo].[KHACHHANG] ([MaKH], [MaTV], [TenKH], [DiaChi], [Email], [SoDienThoai]) VALUES (10, 10, N'Nguyễn Thị Ngọc Ánh', N'Địa chỉ cụ thể: 23 Quang Trung, Phường/Xã: Xã Thạch Sơn, Quận/Huyện: Huyện Anh Sơn, Tỉnh/Thành phố: Tỉnh Nghệ An, Loại địa chỉ: Nhà riêng', N'anhnguyen.31211023204@st.ueh.edu.vn', N'0936000306')
INSERT [dbo].[KHACHHANG] ([MaKH], [MaTV], [TenKH], [DiaChi], [Email], [SoDienThoai]) VALUES (11, 10, N'Nguyễn Thị Ngọc Ánh', N'Địa chỉ cụ thể: 37 CL, Phường/Xã: Phường Trần Phú, Quận/Huyện: Thành phố Hà Giang, Tỉnh/Thành phố: Tỉnh Hà Giang, Loại địa chỉ: Văn phòng', N'anhnguyen.31211023204@st.ueh.edu.vn', N'0936000306')
INSERT [dbo].[KHACHHANG] ([MaKH], [MaTV], [TenKH], [DiaChi], [Email], [SoDienThoai]) VALUES (12, 11, N'Vũ Hoàng Lan', N'Địa chỉ cụ thể: 37 Cao Lỗ, Phường/Xã: Xã Thanh Giang, Quận/Huyện: Huyện Thanh Miện, Tỉnh/Thành phố: Tỉnh Hải Dương, Loại địa chỉ: Nhà riêng', N'lanvu.31211026035@st.ueh.edu.vn', N'0936000306')
INSERT [dbo].[KHACHHANG] ([MaKH], [MaTV], [TenKH], [DiaChi], [Email], [SoDienThoai]) VALUES (13, 11, N'Vũ Hoàng Lan', N'Địa chỉ cụ thể: 37 Cao Lỗ, Phường/Xã: Phường Hồng Phong, Quận/Huyện: Thị xã Đông Triều, Tỉnh/Thành phố: Tỉnh Quảng Ninh, Loại địa chỉ: Nhà riêng', N'lanvu.31211026035@st.ueh.edu.vn', N'0936000306')
INSERT [dbo].[KHACHHANG] ([MaKH], [MaTV], [TenKH], [DiaChi], [Email], [SoDienThoai]) VALUES (14, 5, N'Phan Lê Tú Mỹ', N'Địa chỉ cụ thể: 37 Cao Lỗ, Phường/Xã: Phường 04, Quận/Huyện: Quận 8, Tỉnh/Thành phố: Thành phố Hồ Chí Minh, Loại địa chỉ: Nhà riêng', N'ple.tumy@gmail.com', N'0936000306')
SET IDENTITY_INSERT [dbo].[KHACHHANG] OFF
GO
SET IDENTITY_INSERT [dbo].[KHUYENMAI] ON 

INSERT [dbo].[KHUYENMAI] ([MaKhuyenMai], [TenKhuyenMai], [MoTa], [PhanTramGiamGia], [NgayBatDau], [NgayKetThuc]) VALUES (1, N'Khuyễn mãi đợt 1 cho iPhone', N'Khuyến mãi 5% cho Iphone', 5, CAST(N'2023-09-20' AS Date), CAST(N'2023-09-30' AS Date))
INSERT [dbo].[KHUYENMAI] ([MaKhuyenMai], [TenKhuyenMai], [MoTa], [PhanTramGiamGia], [NgayBatDau], [NgayKetThuc]) VALUES (2, N'Khuyến mãi đợt 2 cho Samsung', N'Khuyến mãi 10% cho Samsung', 10, CAST(N'2023-09-20' AS Date), CAST(N'2023-09-30' AS Date))
INSERT [dbo].[KHUYENMAI] ([MaKhuyenMai], [TenKhuyenMai], [MoTa], [PhanTramGiamGia], [NgayBatDau], [NgayKetThuc]) VALUES (3, N'Khuyến mãi đợt 3 cho tai nghe', N'Khuyến mãi 15% cho tai nghe', 15, CAST(N'2023-09-20' AS Date), CAST(N'2023-09-30' AS Date))
INSERT [dbo].[KHUYENMAI] ([MaKhuyenMai], [TenKhuyenMai], [MoTa], [PhanTramGiamGia], [NgayBatDau], [NgayKetThuc]) VALUES (4, N'Khuyến mãi đợt 4 cho sạc dự phòng', N'Khuyến mãi 20% cho tai nghe', 20, CAST(N'2023-01-20' AS Date), CAST(N'2023-03-30' AS Date))
INSERT [dbo].[KHUYENMAI] ([MaKhuyenMai], [TenKhuyenMai], [MoTa], [PhanTramGiamGia], [NgayBatDau], [NgayKetThuc]) VALUES (5, N'Giảm giá sốc cho Iphone', N'Giảm giá sốc cho Iphone', 30, CAST(N'2023-12-13' AS Date), CAST(N'2024-01-31' AS Date))
INSERT [dbo].[KHUYENMAI] ([MaKhuyenMai], [TenKhuyenMai], [MoTa], [PhanTramGiamGia], [NgayBatDau], [NgayKetThuc]) VALUES (6, N'Khuyến mãi Sốc Giáng Sinh ', N'Deal cực hời mua các sản phẩm tại nhà Shanim Shop được giảm đến 25%!', 25, CAST(N'2023-12-01' AS Date), CAST(N'2023-12-31' AS Date))
INSERT [dbo].[KHUYENMAI] ([MaKhuyenMai], [TenKhuyenMai], [MoTa], [PhanTramGiamGia], [NgayBatDau], [NgayKetThuc]) VALUES (7, N'Deal Hời Cuối Năm - Sale đến 50%', N'Giảm giá các sản phẩm được bày bán tại cửa hàng và trên các sàn thương mại điện tử', 50, CAST(N'2023-12-26' AS Date), CAST(N'2024-01-02' AS Date))
SET IDENTITY_INSERT [dbo].[KHUYENMAI] OFF
GO
SET IDENTITY_INSERT [dbo].[LOAISANPHAM] ON 

INSERT [dbo].[LOAISANPHAM] ([MaLoaiSP], [MaDanhMuc], [TenLoaiSP], [Icon], [BiDanh]) VALUES (1, 1, N'Iphone', N'logo-iphone-220x48.png', NULL)
INSERT [dbo].[LOAISANPHAM] ([MaLoaiSP], [MaDanhMuc], [TenLoaiSP], [Icon], [BiDanh]) VALUES (2, 1, N'Oppo', N'OPPO42-b_5.jpg', NULL)
INSERT [dbo].[LOAISANPHAM] ([MaLoaiSP], [MaDanhMuc], [TenLoaiSP], [Icon], [BiDanh]) VALUES (3, 1, N'Vivo', N'vivo-logo-220-220x48-3.png', NULL)
INSERT [dbo].[LOAISANPHAM] ([MaLoaiSP], [MaDanhMuc], [TenLoaiSP], [Icon], [BiDanh]) VALUES (4, 1, N'Samsung', N'samsungnew-220x48-1.png', NULL)
INSERT [dbo].[LOAISANPHAM] ([MaLoaiSP], [MaDanhMuc], [TenLoaiSP], [Icon], [BiDanh]) VALUES (5, 1, N'Xiaomi', N'logo-xiaomi-220x48-5.png', NULL)
INSERT [dbo].[LOAISANPHAM] ([MaLoaiSP], [MaDanhMuc], [TenLoaiSP], [Icon], [BiDanh]) VALUES (6, 2, N'Sạc dự phòng', NULL, NULL)
INSERT [dbo].[LOAISANPHAM] ([MaLoaiSP], [MaDanhMuc], [TenLoaiSP], [Icon], [BiDanh]) VALUES (7, 2, N'Tai nghe', NULL, NULL)
SET IDENTITY_INSERT [dbo].[LOAISANPHAM] OFF
GO
SET IDENTITY_INSERT [dbo].[LOAITHANHVIEN] ON 

INSERT [dbo].[LOAITHANHVIEN] ([MaLoaiTV], [TenLoai], [UuDai]) VALUES (1, N'Admin', NULL)
INSERT [dbo].[LOAITHANHVIEN] ([MaLoaiTV], [TenLoai], [UuDai]) VALUES (2, N'Thường', NULL)
INSERT [dbo].[LOAITHANHVIEN] ([MaLoaiTV], [TenLoai], [UuDai]) VALUES (3, N'Member', NULL)
INSERT [dbo].[LOAITHANHVIEN] ([MaLoaiTV], [TenLoai], [UuDai]) VALUES (4, N'VIP', NULL)
SET IDENTITY_INSERT [dbo].[LOAITHANHVIEN] OFF
GO
INSERT [dbo].[LOAITHANHVIEN_QUYEN] ([MaLoaiTV], [MaQuyen], [GhiChu]) VALUES (1, N'Admin', NULL)
INSERT [dbo].[LOAITHANHVIEN_QUYEN] ([MaLoaiTV], [MaQuyen], [GhiChu]) VALUES (2, N'Product', NULL)
GO
SET IDENTITY_INSERT [dbo].[MAU] ON 

INSERT [dbo].[MAU] ([MaMau], [TenMau]) VALUES (1, N'Vàng')
INSERT [dbo].[MAU] ([MaMau], [TenMau]) VALUES (2, N'Bạc')
INSERT [dbo].[MAU] ([MaMau], [TenMau]) VALUES (3, N'Đen')
INSERT [dbo].[MAU] ([MaMau], [TenMau]) VALUES (4, N'Trắng')
INSERT [dbo].[MAU] ([MaMau], [TenMau]) VALUES (5, N'Tím')
INSERT [dbo].[MAU] ([MaMau], [TenMau]) VALUES (6, N'Đỏ')
INSERT [dbo].[MAU] ([MaMau], [TenMau]) VALUES (7, N'Xanh')
INSERT [dbo].[MAU] ([MaMau], [TenMau]) VALUES (8, N'Xám')
INSERT [dbo].[MAU] ([MaMau], [TenMau]) VALUES (9, N'Hồng')
INSERT [dbo].[MAU] ([MaMau], [TenMau]) VALUES (10, N'Cam')
SET IDENTITY_INSERT [dbo].[MAU] OFF
GO
SET IDENTITY_INSERT [dbo].[NHACUNGCAP] ON 

INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [DiaChi], [Email], [SoDienThoai], [Fax]) VALUES (1, N'Nguyễn Văn Hùng', N'66-68 Nguyễn Tất Thành, Phường 13, Quận 4, Thành phố Hồ Chí Minh', N'nguyenvanhung@gmail.com', N'0362156365', NULL)
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [DiaChi], [Email], [SoDienThoai], [Fax]) VALUES (2, N'Bùi Thanh Tân', N'163/23 Nơ Trang Long, Phường 11, Quận Bình Thạnh, Thành phố Hồ Chí Minh', N'buithanhtan2020@gmail.com', N'03623141265', NULL)
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [DiaChi], [Email], [SoDienThoai], [Fax]) VALUES (3, N'Đinh Văn Dũng', N'15/48A Đoàn Như Hài, Phường 13, Quận 4, Thành phố Hồ Chí Minh', N'vandungdungvan@gmail.com', N'0309735176', NULL)
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [DiaChi], [Email], [SoDienThoai], [Fax]) VALUES (4, N'Nguyễn Thị Thanh Nhàn', N'533/32 Huỳnh Văn Bánh, Phường 13, Quận Phú Nhuận, Thành phố Hồ Chí Minh', N'thanhnhan@gmail.com', N'0309346376', NULL)
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [DiaChi], [Email], [SoDienThoai], [Fax]) VALUES (5, N'Vũ Quang Vinh', N'67 Mai Văn Ngọc, Phường 11, Quận Phú Nhuận, Thành phố Hồ Chí Minh', N'quangvinh@gmail.com', N'0987535143', NULL)
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [DiaChi], [Email], [SoDienThoai], [Fax]) VALUES (6, N'Nguyễn Hồng Sơn', N'265/10 Nơ Trang Long, Phường 11, Quận Bình Thạnh, Thành phố Hồ Chí Minh', N'hongson@gmail.com', N'0989734211', NULL)
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [DiaChi], [Email], [SoDienThoai], [Fax]) VALUES (7, N'Võ Thị Hồng Như', N'DV.1.08 Tầng 1, Dự án The Everrich Infinity – 290 An Dương Vương, Phường 04, Quận 5, Thành phố Hồ Chí Minh', N'hongnhu@gmail.com', N'0409545113', NULL)
SET IDENTITY_INSERT [dbo].[NHACUNGCAP] OFF
GO
SET IDENTITY_INSERT [dbo].[NHASANXUAT] ON 

INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX], [ThongTin], [Logo]) VALUES (1, N'Apple', N'Apple Inc. là một tập đoàn công nghệ có trụ sở tại Cupertino, California, Mỹ. Họ nổi tiếng với việc sản xuất các sản phẩm công nghệ như iPhone, iPad, Macbook, và nhiều sản phẩm khác. Apple được thành lập vào năm 1976 bởi Steve Jobs, Steve Wozniak và Ronald Wayne. Hãng có một lịch sử dài về đổi mới và thiết kế đẹp, và họ luôn nằm trong số những công ty công nghệ hàng đầu thế giới.', N'Iphone.png')
INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX], [ThongTin], [Logo]) VALUES (2, N'OPPO ', N'OPPO là một công ty điện tử tiêu dùng và điện thoại di động có trụ sở tại Đông Quan, Quảng Đông, Trung Quốc. OPPO được thành lập vào năm 2001 và nhanh chóng trở thành một trong những thương hiệu điện thoại di động phổ biến trên toàn thế giới. Họ nổi tiếng với việc sản xuất các smartphone chất lượng cao và camera mạnh mẽ.', N'oppo.png')
INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX], [ThongTin], [Logo]) VALUES (3, N'Vivo', N'Vivo là một công ty điện tử tiêu dùng và điện thoại di động có trụ sở tại Đông Quan, Quảng Đông, Trung Quốc. Họ được thành lập vào năm 2009 và cũng là một thương hiệu nổi tiếng trong ngành công nghệ di động. Vivo tập trung vào việc cung cấp các sản phẩm có hiệu năng mạnh mẽ và tính năng camera tiên tiến.', N'vivo.png')
INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX], [ThongTin], [Logo]) VALUES (4, N'Samsung', N'Samsung là một tập đoàn đa quốc gia có trụ sở tại Seoul, Hàn Quốc. Họ là một trong những công ty điện tử lớn nhất thế giới và sản xuất nhiều loại sản phẩm khác nhau, bao gồm điện thoại di động, TV, máy lạnh, và nhiều sản phẩm khác. Samsung được thành lập vào năm 1938 và có một lịch sử dài về đổi mới và phát triển công nghệ.', N'samsung.png')
INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX], [ThongTin], [Logo]) VALUES (5, N'Xiaomi', N'Xiaomi là một công ty công nghệ có trụ sở tại Bắc Kinh, Trung Quốc. Họ được thành lập vào năm 2010 và nhanh chóng trở thành một trong những thương hiệu điện thoại di động phổ biến và giá cả phải chăng trên toàn thế giới. Xiaomi cũng sản xuất các sản phẩm khác như máy tính bảng, điện tử gia đình và các sản phẩm thông minh.', N'xiaomi.png')
INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX], [ThongTin], [Logo]) VALUES (6, N'AVA', N'AVA là một công ty chuyên sản xuất và phân phối các sản phẩm điện tử tiêu dùng, bao gồm tai nghe, loa, và các thiết bị âm thanh. Họ được biết đến với chất lượng âm thanh cao cấp và thiết kế đẹp mắt. AVA đã hoạt động trong ngành công nghiệp âm thanh từ nhiều năm và có mạng lưới phân phối rộng khắp thế giới.', N'ava.png')
INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX], [ThongTin], [Logo]) VALUES (7, N'HAVIT', N'HAVIT là một thương hiệu nổi tiếng trong lĩnh vực sản xuất các sản phẩm công nghệ tiêu dùng, bao gồm bàn phím, chuột, tai nghe, và các phụ kiện máy tính. HAVIT chú trọng vào việc cung cấp sản phẩm có chất lượng và giá cả hợp lý cho người tiêu dùng. Họ có một loạt sản phẩm đa dạng để đáp ứng nhu cầu của khách hàng trên toàn thế giới.', N'havit.png')
SET IDENTITY_INSERT [dbo].[NHASANXUAT] OFF
GO
SET IDENTITY_INSERT [dbo].[PHIEUNHAP] ON 

INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (1, 1, CAST(N'2023-08-01T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (2, 2, CAST(N'2022-12-01T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (3, 3, CAST(N'2022-10-01T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (4, 4, CAST(N'2022-11-01T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (5, 5, CAST(N'2022-01-01T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (6, 6, CAST(N'2022-05-01T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (7, 7, CAST(N'2022-06-01T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (8, 1, CAST(N'2023-12-14T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (9, 1, CAST(N'2023-12-19T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (10, 1, CAST(N'2022-01-23T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (11, 6, CAST(N'2021-12-23T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (12, 6, CAST(N'2023-03-02T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (13, 1, CAST(N'2023-07-28T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (14, 1, CAST(N'2023-03-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (15, 1, CAST(N'2022-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (16, 2, CAST(N'2023-01-23T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (17, 1, CAST(N'2023-02-03T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (18, 1, CAST(N'2023-12-20T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (19, 2, CAST(N'2022-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (20, 2, CAST(N'2023-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (21, 3, CAST(N'2023-12-04T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (22, 3, CAST(N'2023-05-06T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (23, 4, CAST(N'2023-08-07T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (24, 4, CAST(N'2022-08-09T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (25, 5, CAST(N'2023-01-22T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (26, 5, CAST(N'2023-08-07T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (27, 7, CAST(N'2023-05-06T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (28, 7, CAST(N'2023-05-08T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (29, 4, CAST(N'2023-12-23T00:00:00.000' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[PHIEUNHAP] OFF
GO
INSERT [dbo].[QUYEN] ([MaQuyen], [TenQuyen]) VALUES (N'Admin', N'Quản trị')
INSERT [dbo].[QUYEN] ([MaQuyen], [TenQuyen]) VALUES (N'Product', N'Sản phẩm')
GO
SET IDENTITY_INSERT [dbo].[SANPHAM] ON 

INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (1, 1, 1, 1, 5, N'Điện thoại iPhone 14 Pro Max 128GB', CAST(30000000 AS Decimal(18, 0)), CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'iPhone 14 Pro Max một siêu phẩm trong giới smartphone được nhà Táo tung ra thị trường vào tháng 09/2022. Máy trang bị con chip Apple A16 Bionic vô cùng mạnh mẽ, đi kèm theo đó là thiết kế hình màn hình mới, hứa hẹn mang lại những trải nghiệm đầy mới mẻ cho người dùng iPhone.', N'iphone-14-pro-max-purple-1.jpg', N'iphone-14-pro-max-vang-1.jpg', N'iphone-14-pro-max-note.jpg', 17, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (2, 1, 1, 1, 6, N'Điện thoại iPhone 14 Pro Max 256GB', CAST(44985000 AS Decimal(18, 0)), CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'iPhone 14 Pro Max một siêu phẩm trong giới smartphone được nhà Táo tung ra thị trường vào tháng 09/2022. Máy trang bị con chip Apple A16 Bionic vô cùng mạnh mẽ, đi kèm theo đó là thiết kế hình màn hình mới, hứa hẹn mang lại những trải nghiệm đầy mới mẻ cho người dùng iPhone.', N'iphone-14-pro-max-purple-1.jpg', N'iphone-14-pro-max-vang-1.jpg', N'iphone-14-pro-max-note.jpg', 20, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (3, 1, 1, 1, 6, N'Điện thoại iPhone 14 Pro Max 512GB', CAST(53535000 AS Decimal(18, 0)), CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'iPhone 14 Pro Max một siêu phẩm trong giới smartphone được nhà Táo tung ra thị trường vào tháng 09/2022. Máy trang bị con chip Apple A16 Bionic vô cùng mạnh mẽ, đi kèm theo đó là thiết kế hình màn hình mới, hứa hẹn mang lại những trải nghiệm đầy mới mẻ cho người dùng iPhone.', N'iphone-14-pro-max-purple-1.jpg', N'iphone-14-pro-max-vang-1.jpg', N'iphone-14-pro-max-note.jpg', 18, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (4, 1, 1, 1, 6, N'Điện thoại iPhone 14 Pro Max 1TB', CAST(62985000 AS Decimal(18, 0)), CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'iPhone 14 Pro Max một siêu phẩm trong giới smartphone được nhà Táo tung ra thị trường vào tháng 09/2022. Máy trang bị con chip Apple A16 Bionic vô cùng mạnh mẽ, đi kèm theo đó là thiết kế hình màn hình mới, hứa hẹn mang lại những trải nghiệm đầy mới mẻ cho người dùng iPhone.', N'iphone-14-pro-max-purple-1.jpg', N'iphone-14-pro-max-vang-1.jpg', N'iphone-14-pro-max-note.jpg', 20, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (5, 1, 1, 1, 6, N'Điện thoại iPhone 13 Pro Max 123GB', CAST(34485000 AS Decimal(18, 0)), CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'Điện thoại iPhone 13 Pro Max 128 GB - siêu phẩm được mong chờ nhất ở nửa cuối năm 2021 đến từ Apple. Máy có thiết kế không mấy đột phá khi so với người tiền nhiệm, bên trong đây vẫn là một sản phẩm có màn hình siêu đẹp, tần số quét được nâng cấp lên 120 Hz mượt mà, cảm biến camera có kích thước lớn hơn, cùng hiệu năng mạnh mẽ với sức mạnh đến từ Apple A15 Bionic, sẵn sàng cùng bạn chinh phục mọi thử thách.', N'iphone-13-pro-max-1-1.jpg', N'iphone-13-pro-max-1.jpg', N'iphone-13-pro-max-n-2.jpg', 17, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (6, 1, 1, 1, 1, N'Điện thoại iPhone 13 Pro Max 256GB', NULL, CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'Điện thoại iPhone 13 Pro Max 256 GB - siêu phẩm được mong chờ nhất ở nửa cuối năm 2021 đến từ Apple. Máy có thiết kế không mấy đột phá khi so với người tiền nhiệm, bên trong đây vẫn là một sản phẩm có màn hình siêu đẹp, tần số quét được nâng cấp lên 120 Hz mượt mà, cảm biến camera có kích thước lớn hơn, cùng hiệu năng mạnh mẽ với sức mạnh đến từ Apple A15 Bionic, sẵn sàng cùng bạn chinh phục mọi thử thách.', N'iphone-13-pro-max-1-1.jpg', N'iphone-13-pro-max-1.jpg', N'iphone-13-pro-max-n-2.jpg', 10, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (7, 1, 1, 1, 1, N'Điện thoại iPhone 13 Pro Max 512GB', NULL, CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'Điện thoại iPhone 13 Pro Max 512 GB - siêu phẩm được mong chờ nhất ở nửa cuối năm 2021 đến từ Apple. Máy có thiết kế không mấy đột phá khi so với người tiền nhiệm, bên trong đây vẫn là một sản phẩm có màn hình siêu đẹp, tần số quét được nâng cấp lên 120 Hz mượt mà, cảm biến camera có kích thước lớn hơn, cùng hiệu năng mạnh mẽ với sức mạnh đến từ Apple A15 Bionic, sẵn sàng cùng bạn chinh phục mọi thử thách.', N'iphone-13-pro-max-1-1.jpg', N'iphone-13-pro-max-1.jpg', N'iphone-13-pro-max-n-2.jpg', 10, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (8, 1, 1, 1, 1, N'Điện thoại iPhone 12 Pro Max 128GB', NULL, CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'iPhone 12 Pro Max 128 GB một siêu phẩm smartphone đến từ Apple. Máy có một hiệu năng hoàn toàn mạnh mẽ đáp ứng tốt nhiều nhu cầu đến từ người dùng và mang trong mình một thiết kế đầy vuông vức, sang trọng.', N'iphone-12-pro-max-512gb-1-org.jpg', N'iphone-12-pro-max-512gb-bac-1-org.jpg', N'iphone-12-pro-max-512gb-note-2.jpg', 10, NULL, NULL, NULL, 0, 0, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (9, 1, 1, 1, 1, N'Điện thoại iPhone 12 Pro Max 256GB', NULL, CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'iPhone 12 Pro Max 256 GB một siêu phẩm smartphone đến từ Apple. Máy có một hiệu năng hoàn toàn mạnh mẽ đáp ứng tốt nhiều nhu cầu đến từ người dùng và mang trong mình một thiết kế đầy vuông vức, sang trọng.', N'iphone-12-pro-max-512gb-1-org.jpg', N'iphone-12-pro-max-512gb-bac-1-org.jpg', N'iphone-12-pro-max-512gb-note-2.jpg', 10, NULL, NULL, NULL, 0, 0, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (10, 2, 2, 2, 6, N'Điện thoại OPPO Find N2 Flip 5G', CAST(28485000 AS Decimal(18, 0)), CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'OPPO Find N2 Flip 5G - chiếc điện thoại gập đầu tiên của OPPO đã được giới thiệu chính thức tại Việt Nam vào tháng 03/2023. Sở hữu cấu hình mạnh mẽ cùng thiết kế siêu nhỏ gọn giúp tối ưu kích thước, chiếc điện thoại sẽ cùng bạn nổi bật trong mọi không gian với vẻ ngoài đầy cá tính.', N'oppo-n2-flip-tim-1-1.jpg', N'oppo-n2-flip-den-1.jpg', N'oppo-n2-flip-tim-note.jpg', 19, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (11, 2, 2, 2, 6, N'Điện thoại OPPO Reno10 Pro 5G', CAST(20235000 AS Decimal(18, 0)), CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'OPPO Reno10 Pro 5G là một trong những sản phẩm của OPPO được ra mắt trong 2023. Với thiết kế đẹp mắt, màn hình lớn và hiệu năng mạnh mẽ, Reno10 Pro chắc chắn sẽ là lựa chọn đáng cân nhắc dành cho những ai đang tìm kiếm chiếc máy tầm trung để phục vụ tốt mọi nhu cầu.', N'oppo-reno10-pro-xam-1-1.jpg', N'oppo-reno10-pro-tim-1-2.jpg', N'oppo-reno10-pro-note.jpg', 14, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (12, 2, 2, 2, NULL, N'Điện thoại OPPO A77s', NULL, CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'OPPO vừa cho ra mắt mẫu điện thoại tầm trung mới với tên gọi OPPO A77s, máy sở hữu màn hình lớn, thiết kế đẹp mắt, hiệu năng ổn định cùng khả năng mở rộng RAM lên đến 8 GB vô cùng nổi bật trong phân khúc.', N'oppo-a77s-den-1.jpg', N'oppo-a77s-xanh-1.jpg', N'oppo-a77s-note-2.jpg', 10, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (13, 3, 3, 3, 6, N'Điện thoại vivo V25 Pro 5G', CAST(11235000 AS Decimal(18, 0)), CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'VIVO V25 Pro 5G vừa được ra mắt với một mức giá bán cực kỳ hấp dẫn, thế mạnh của máy thuộc về phần hiệu năng nhờ trang bị con chip MediaTek Dimensity 1300 và cụm camera sắc nét 64 MP, hứa hẹn mang lại cho người dùng những trải nghiệm ổn định trong suốt quá trình sử dụng.', N'vivo-v25-pro-5g-sld-xanh-1.jpg', N'vivo-v25-pro-5g-den-1.jpg', N'vivo-v25-pro-5g-note-2.jpg', 19, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (14, 3, 3, 3, 6, N'Điện thoại vivo Y02A', CAST(375000 AS Decimal(18, 0)), CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'VIVO Y02A mẫu điện thoại được nhà vivo cho ra mắt hướng đến nhóm người dùng yêu thích sự đơn giản trong thiết kế, hiệu năng tốt có thể xử lý các tác vụ thường ngày và một viên pin lớn đáp ứng được nhu cầu sử dụng lâu dài.', N'vivo-y02-den-1.jpg', N'vivo-y02-tim-1.jpg', N'vivo-y02-note.jpg', 12, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (15, 3, 3, 3, NULL, N'Điện thoại vivo V27e', NULL, CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'vivo V27e một trong những chiếc điện thoại tầm trung nổi bật của vivo trong năm 2023. Với thiết kế độc đáo và khả năng chụp ảnh - quay phim ấn tượng, vì thế máy đã mang lại cho vivo nhiều niềm tự hào khi ra mắt tại thị trường Việt Nam, hứa hẹn mang đến trải nghiệm tuyệt vời đến với người dùng.', N'vivo-v27e-tim-1-1.jpg', N'vivo-v27e-den-1.jpg', N'vivo-v27e-note.jpg', 10, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (16, 4, 4, 4, 6, N'Điện thoại Samsung Galaxy Z Fold5 5G 256GB ', CAST(50985000 AS Decimal(18, 0)), CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'Samsung Galaxy Z Fold5 là mẫu điện thoại cao cấp được ra mắt vào tháng 07/2023 với nhiều điểm đáng chú ý như thiết kế gập độc đáo, hiệu năng mạnh mẽ cùng camera quay chụp tốt, điều này giúp cho máy thu hút được nhiều sự quan tâm của đông đảo người dùng yêu công nghệ hiện nay.', N'samsung-galaxy-zfold5-xanh-256gb-1-1.jpg', N'samsung-galaxy-zfold5-den-256gb-1.jpg', N'samsung-galaxy-zfold5-note.jpg', 19, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (17, 4, 4, 4, 6, N'Điện thoại Samsung Galaxy Z Fold5 5G 512GB ', CAST(50985000 AS Decimal(18, 0)), CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'Samsung Galaxy Z Fold5 là mẫu điện thoại cao cấp được ra mắt vào tháng 07/2023 với nhiều điểm đáng chú ý như thiết kế gập độc đáo, hiệu năng mạnh mẽ cùng camera quay chụp tốt, điều này giúp cho máy thu hút được nhiều sự quan tâm của đông đảo người dùng yêu công nghệ hiện nay.', N'samsung-galaxy-zfold5-xanh-256gb-1-1.jpg', N'samsung-galaxy-zfold5-den-256gb-1.jpg', N'samsung-galaxy-zfold5-note.jpg', 19, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (18, 4, 4, 4, 6, N'Điện thoại Samsung Galaxy Z Fold5 5G 1TB', CAST(71985000 AS Decimal(18, 0)), CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'Samsung Galaxy Z Fold5 là mẫu điện thoại cao cấp được ra mắt vào tháng 07/2023 với nhiều điểm đáng chú ý như thiết kế gập độc đáo, hiệu năng mạnh mẽ cùng camera quay chụp tốt, điều này giúp cho máy thu hút được nhiều sự quan tâm của đông đảo người dùng yêu công nghệ hiện nay.', N'samsung-galaxy-zfold5-xanh-256gb-1-1.jpg', N'samsung-galaxy-zfold5-den-256gb-1.jpg', N'samsung-galaxy-zfold5-note.jpg', 20, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (19, 4, 4, 4, 2, N'Điện thoại Samsung Galaxy Z Flip4 5G 128GB', NULL, CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'Samsung Galaxy Z Flip4 128GB đã chính thức ra mắt thị trường công nghệ, đánh dấu sự trở lại của Samsung trên con đường định hướng người dùng về sự tiện lợi trên những chiếc điện thoại gập. Với độ bền được gia tăng cùng kiểu thiết kế đẹp mắt giúp Flip4 trở thành một trong những tâm điểm sáng giá cho nửa cuối năm 2022.', N'samsung-galaxy-flip4-glr-tim-1.jpg', N'samsung-galaxy-flip-den-1.jpg', N'samsung-galaxy-z-flip4-note-1-1.jpg', 10, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (20, 4, 4, 4, 2, N'Điện thoại Samsung Galaxy Z Flip4 5G 256GB', NULL, CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'Samsung Galaxy Z Flip4 256GB đã chính thức ra mắt thị trường công nghệ, đánh dấu sự trở lại của Samsung trên con đường định hướng người dùng về sự tiện lợi trên những chiếc điện thoại gập. Với độ bền được gia tăng cùng kiểu thiết kế đẹp mắt giúp Flip4 trở thành một trong những tâm điểm sáng giá cho nửa cuối năm 2022.', N'samsung-galaxy-flip4-glr-tim-1.jpg', N'samsung-galaxy-flip-den-1.jpg', N'samsung-galaxy-z-flip4-note-1-1.jpg', 10, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (21, 4, 4, 4, 2, N'Điện thoại Samsung Galaxy Z Flip4 5G 512GB', NULL, CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'Samsung Galaxy Z Flip4 512GB đã chính thức ra mắt thị trường công nghệ, đánh dấu sự trở lại của Samsung trên con đường định hướng người dùng về sự tiện lợi trên những chiếc điện thoại gập. Với độ bền được gia tăng cùng kiểu thiết kế đẹp mắt giúp Flip4 trở thành một trong những tâm điểm sáng giá cho nửa cuối năm 2022.', N'samsung-galaxy-flip4-glr-tim-1.jpg', N'samsung-galaxy-flip-den-1.jpg', N'samsung-galaxy-z-flip4-note-1-1.jpg', 10, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (22, 5, 5, 5, 6, N'Điện thoại Xiaomi 12 5G', CAST(14235000 AS Decimal(18, 0)), CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'Điện thoại Xiaomi đang dần khẳng định chỗ đứng của mình trong phân khúc flagship bằng việc ra mắt Xiaomi 12 với bộ thông số ấn tượng, máy có một thiết kế gọn gàng, hiệu năng mạnh mẽ, màn hình hiển thị chi tiết cùng khả năng chụp ảnh sắc nét nhờ trang bị ống kính đến từ Sony.', N'xiaomi-mi-12-1-1.jpg', N'xiaomi-mi-12-1.jpg', N'xiaomi-mi-12-note.jpg', 20, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (23, 5, 5, 5, NULL, N'Điện thoại Xiaomi Redmi Note 12S', NULL, CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'Xiaomi Redmi Note 12S sẽ là chiếc điện thoại tiếp theo được nhà Xiaomi tung ra thị trường Việt Nam trong thời gian tới (05/2023). Điện thoại sở hữu một lối thiết kế hiện đại, màn hình hiển thị chi tiết đi cùng với đó là một hiệu năng mượt mà xử lý tốt các tác vụ.', N'xiaomi-redmi-note-12s-1-1.jpg', N'xiaomi-redmi-note-12s-xanh-1.jpg', N'xiaomi-redmi-note-12s-note.jpg', 10, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (24, 5, 5, 5, 6, N'Điện thoại Xiaomi Redmi Note 12 Pro 128GB', CAST(7185000 AS Decimal(18, 0)), CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'Xiaomi Redmi Note 12 Pro 4G tiếp tục sẽ là mẫu điện thoại tầm trung được nhà Xiaomi giới thiệu đến thị trường Việt Nam trong năm 2023, máy nổi bật với camera 108 MP chất lượng, thiết kế viền mỏng cùng hiệu năng đột phá nhờ trang bị chip Snapdragon 732G.', N'xiami-redmi-12-pro-xam-1.jpg', N'xiaomi-redmi-12-pro-4g-xanh-duong-1.jpg', N'xiaomi-redmi-12-note-2.jpg', 20, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (25, 6, 6, 6, 6, N'Pin sạc dự phòng Polymer 10000mAh Type C 15W AVA+ JP399', CAST(525000 AS Decimal(18, 0)), CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'Pin sạc dự phòng Polymer 10000mAh Type C 15W AVA+ JP399 mang đến cho người dùng 1 thiết kế nhỏ gọn, trang bị gam màu sang trọng và kiểu dáng tối giản, dung lượng 10000mAh và hiệu suất 64%, pin sạc dự phòng cung cấp pin cho thiết bị tối ưu.', N'pin-sac-du-phong-polymer-10000mah-type-c-15w-ava-jp399-xanh-1-1.jpg', N'pin-sac-du-phong-polymer-10000mah-type-c-15w-ava-jp399-hong-1.jpg', N'pin-sac-du-phong-polymer-10000mah-type-c-15w-ava-jp399-hong-12.jpg', 30, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (26, 6, 6, 6, 6, N'Pin sạc dự phòng Polymer 10000mAh 12W AVA+ JP299', CAST(285000 AS Decimal(18, 0)), CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'Pin sạc dự phòng Polymer 10000mAh 12W AVA+ JP299 mang đến cho khách hàng 1 thiết kế đẹp mắt, nhờ sở hữu gam màu sang trọng và kiểu dáng tối giản. Sở hữu dung lượng 10000mAh và hiệu suất 64%, pin sạc dự phòng cung cấp năng lượng cho thiết bị tối ưu.', N'pin-sac-du-phong-polymer-10000mah-ava-jp299-den-1.jpg', N'pin-sac-du-phong-polymer-10000mah-ava-jp299-trang-1.jpg', N'pin-sac-du-phong-polymer-10000mah-ava-jp299-trang-8.jpg', 13, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (27, 6, 6, 6, 3, N'Pin sạc dự phòng Polymer 10000mAh Type C 10W AVA+ PB100S', NULL, CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'Sạc điện thoại của bạn nhiều lần với dung lượng sạc dự phòng 10Pin sạc dự phòng Polymer 10000mAh 12W AVA+ JP299 mang đến cho khách hàng 1 thiết kế đẹp mắt, nhờ sở hữu gam màu sang trọng và kiểu dáng tối giản. Sở hữu dung lượng 10000 mAh và hiệu suất 64%, pin sạc dự phòng cung cấp năng lượng cho thiết bị tối ưu.000 mAh', N'pin-polymer-10000mah-type-c-ava-pb100s-trang-3.jpg', N'pin-polymer-10000mah-type-c-ava-pb100s-den-3.jpg', N'pin-polymer-10000mah-type-c-ava-pb100s-den-13-1.jpg', 10, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (28, 7, 7, 7, 6, N'Tai nghe Bluetooth True Wireless HAVIT TW945', CAST(435000 AS Decimal(18, 0)), CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'Tai nghe Bluetooth True Wireless HAVIT TW945 mang đến thiết kế sang trọng với kiểu dáng tối giản và màu sắc đa dạng, âm thanh đầy đủ và rõ ràng, tích hợp nhiều tính năng và tiện ích khác, phục vụ tốt nhu cầu sử dụng cơ bản hàng ngày của đa số người dùng.', N'tai-nghe-bluetooth-true-wireless-havit-tw945-den-2.jpg', N'tai-nghe-bluetooth-true-wireless-havit-tw945-cam-2.jpg', N'tai-nghe-bluetooth-true-wireless-havit-tw945-tim-note.jpg', 18, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (29, 7, 7, 7, 4, N'Tai nghe Bluetooth True Wireless HAVIT TW971', CAST(472500 AS Decimal(18, 0)), CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'Tai nghe Bluetooth True Wireless HAVIT TW971 mang đến một thiết kế trong suốt, âm thanh rõ ràng và sống động, cùng với nhiều công nghệ tiện ích được tích hợp, hứa hẹn đáp ứng nhu cầu nghe nhạc hay gọi thoại cơ bản hằng ngày cho người dùng.', N'tai-nghe-bluetooth-true-wireless-havit-tw971-11.jpg', N'tai-nghe-bluetooth-true-wireless-havit-tw971-1.jpg', N'tai-nghe-bluetooth-true-wireless-havit-tw971-7.jpg', 14, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (30, 7, 7, 7, 4, N'Tai nghe Bluetooth True Wireless HAVIT TW967', NULL, CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'Tai nghe Bluetooth True Wireless HAVIT TW967 được thiết kế với phong cách năng động, màu sắc đẹp mắt, âm thanh sống động, trang bị kết nối không dây gọn gàng, mang đến cho bạn những trải nghiệm tối ưu.', N'tai-nghe-bluetooth-true-wireless-havit-tw967-trang-2.jpg', N'tai-nghe-bluetooth-true-wireless-havit-tw967-den-1.jpg', N'tai-nghe-bluetooth-true-wireless-havit-tw967-notecopy.jpg', 10, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (31, 1, 1, 1, 1, N'Điện thoại iPhone 14 Pro Max 128GB', NULL, CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'iPhone 14 Pro Max một siêu phẩm trong giới smartphone được nhà Táo tung ra thị trường vào tháng 09/2022. Máy trang bị con chip Apple A16 Bionic vô cùng mạnh mẽ, đi kèm theo đó là thiết kế hình màn hình mới, hứa hẹn mang lại những trải nghiệm đầy mới mẻ cho người dùng iPhone.', N'iphone-14-pro-max-purple-1.jpg', N'iphone-14-pro-max-vang-1.jpg', N'iphone-14-pro-max-note.jpg', 10, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (32, 1, 1, 1, 1, N'Điện thoại iPhone 14 Pro Max 256GB', NULL, CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'iPhone 14 Pro Max một siêu phẩm trong giới smartphone được nhà Táo tung ra thị trường vào tháng 09/2022. Máy trang bị con chip Apple A16 Bionic vô cùng mạnh mẽ, đi kèm theo đó là thiết kế hình màn hình mới, hứa hẹn mang lại những trải nghiệm đầy mới mẻ cho người dùng iPhone.', N'iphone-14-pro-max-purple-1.jpg', N'iphone-14-pro-max-vang-1.jpg', N'iphone-14-pro-max-note.jpg', 10, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (33, 1, 1, 1, 1, N'Điện thoại iPhone 14 Pro Max 512GB', NULL, CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'iPhone 14 Pro Max một siêu phẩm trong giới smartphone được nhà Táo tung ra thị trường vào tháng 09/2022. Máy trang bị con chip Apple A16 Bionic vô cùng mạnh mẽ, đi kèm theo đó là thiết kế hình màn hình mới, hứa hẹn mang lại những trải nghiệm đầy mới mẻ cho người dùng iPhone.', N'iphone-14-pro-max-purple-1.jpg', N'iphone-14-pro-max-vang-1.jpg', N'iphone-14-pro-max-note.jpg', 10, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (34, 1, 1, 1, 1, N'Điện thoại iPhone 14 Pro Max 1TB', NULL, CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'iPhone 14 Pro Max một siêu phẩm trong giới smartphone được nhà Táo tung ra thị trường vào tháng 09/2022. Máy trang bị con chip Apple A16 Bionic vô cùng mạnh mẽ, đi kèm theo đó là thiết kế hình màn hình mới, hứa hẹn mang lại những trải nghiệm đầy mới mẻ cho người dùng iPhone.', N'iphone-14-pro-max-purple-1.jpg', N'iphone-14-pro-max-vang-1.jpg', N'iphone-14-pro-max-note.jpg', 10, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (35, 1, 1, 1, 1, N'Điện thoại iPhone 13 Pro Max 123GB', NULL, CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'Điện thoại iPhone 13 Pro Max 128 GB - siêu phẩm được mong chờ nhất ở nửa cuối năm 2021 đến từ Apple. Máy có thiết kế không mấy đột phá khi so với người tiền nhiệm, bên trong đây vẫn là một sản phẩm có màn hình siêu đẹp, tần số quét được nâng cấp lên 120 Hz mượt mà, cảm biến camera có kích thước lớn hơn, cùng hiệu năng mạnh mẽ với sức mạnh đến từ Apple A15 Bionic, sẵn sàng cùng bạn chinh phục mọi thử thách.', N'iphone-13-pro-max-1-1.jpg', N'iphone-13-pro-max-1.jpg', N'iphone-13-pro-max-n-2.jpg', 10, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (36, 1, 1, 1, 1, N'Điện thoại iPhone 13 Pro Max 256GB', NULL, CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'Điện thoại iPhone 13 Pro Max 256 GB - siêu phẩm được mong chờ nhất ở nửa cuối năm 2021 đến từ Apple. Máy có thiết kế không mấy đột phá khi so với người tiền nhiệm, bên trong đây vẫn là một sản phẩm có màn hình siêu đẹp, tần số quét được nâng cấp lên 120 Hz mượt mà, cảm biến camera có kích thước lớn hơn, cùng hiệu năng mạnh mẽ với sức mạnh đến từ Apple A15 Bionic, sẵn sàng cùng bạn chinh phục mọi thử thách.', N'iphone-13-pro-max-1-1.jpg', N'iphone-13-pro-max-1.jpg', N'iphone-13-pro-max-n-2.jpg', 10, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (37, 1, 1, 1, 1, N'Điện thoại iPhone 13 Pro Max 512GB', NULL, CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'Điện thoại iPhone 13 Pro Max 512 GB - siêu phẩm được mong chờ nhất ở nửa cuối năm 2021 đến từ Apple. Máy có thiết kế không mấy đột phá khi so với người tiền nhiệm, bên trong đây vẫn là một sản phẩm có màn hình siêu đẹp, tần số quét được nâng cấp lên 120 Hz mượt mà, cảm biến camera có kích thước lớn hơn, cùng hiệu năng mạnh mẽ với sức mạnh đến từ Apple A15 Bionic, sẵn sàng cùng bạn chinh phục mọi thử thách.', N'iphone-13-pro-max-1-1.jpg', N'iphone-13-pro-max-1.jpg', N'iphone-13-pro-max-n-2.jpg', 10, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (38, 1, 1, 1, 1, N'Điện thoại iPhone 12 Pro Max 128GB', NULL, CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'iPhone 12 Pro Max 128 GB một siêu phẩm smartphone đến từ Apple. Máy có một hiệu năng hoàn toàn mạnh mẽ đáp ứng tốt nhiều nhu cầu đến từ người dùng và mang trong mình một thiết kế đầy vuông vức, sang trọng.', N'iphone-12-pro-max-512gb-1-org.jpg', N'iphone-12-pro-max-512gb-bac-1-org.jpg', N'iphone-12-pro-max-512gb-note-2.jpg', 10, NULL, NULL, NULL, 0, 0, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (39, 1, 1, 1, 1, N'Điện thoại iPhone 12 Pro Max 256GB', NULL, CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'iPhone 12 Pro Max 256 GB một siêu phẩm smartphone đến từ Apple. Máy có một hiệu năng hoàn toàn mạnh mẽ đáp ứng tốt nhiều nhu cầu đến từ người dùng và mang trong mình một thiết kế đầy vuông vức, sang trọng.', N'iphone-12-pro-max-512gb-1-org.jpg', N'iphone-12-pro-max-512gb-bac-1-org.jpg', N'iphone-12-pro-max-512gb-note-2.jpg', 10, NULL, NULL, NULL, 0, 0, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (40, 2, 2, 2, NULL, N'Điện thoại OPPO Find N2 Flip 5G', NULL, CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'OPPO Find N2 Flip 5G - chiếc điện thoại gập đầu tiên của OPPO đã được giới thiệu chính thức tại Việt Nam vào tháng 03/2023. Sở hữu cấu hình mạnh mẽ cùng thiết kế siêu nhỏ gọn giúp tối ưu kích thước, chiếc điện thoại sẽ cùng bạn nổi bật trong mọi không gian với vẻ ngoài đầy cá tính.', N'oppo-n2-flip-tim-1-1.jpg', N'oppo-n2-flip-den-1.jpg', N'oppo-n2-flip-tim-note.jpg', 10, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (41, 2, 2, 2, NULL, N'Điện thoại OPPO Reno10 Pro 5G', NULL, CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'OPPO Reno10 Pro 5G là một trong những sản phẩm của OPPO được ra mắt trong 2023. Với thiết kế đẹp mắt, màn hình lớn và hiệu năng mạnh mẽ, Reno10 Pro chắc chắn sẽ là lựa chọn đáng cân nhắc dành cho những ai đang tìm kiếm chiếc máy tầm trung để phục vụ tốt mọi nhu cầu.', N'oppo-reno10-pro-xam-1-1.jpg', N'oppo-reno10-pro-tim-1-2.jpg', N'oppo-reno10-pro-note.jpg', 10, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (42, 2, 2, 2, NULL, N'Điện thoại OPPO A77s', NULL, CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'OPPO vừa cho ra mắt mẫu điện thoại tầm trung mới với tên gọi OPPO A77s, máy sở hữu màn hình lớn, thiết kế đẹp mắt, hiệu năng ổn định cùng khả năng mở rộng RAM lên đến 8 GB vô cùng nổi bật trong phân khúc.', N'oppo-a77s-den-1.jpg', N'oppo-a77s-xanh-1.jpg', N'oppo-a77s-note-2.jpg', 10, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (43, 3, 3, 3, NULL, N'Điện thoại vivo V25 Pro 5G', NULL, CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'VIVO V25 Pro 5G vừa được ra mắt với một mức giá bán cực kỳ hấp dẫn, thế mạnh của máy thuộc về phần hiệu năng nhờ trang bị con chip MediaTek Dimensity 1300 và cụm camera sắc nét 64 MP, hứa hẹn mang lại cho người dùng những trải nghiệm ổn định trong suốt quá trình sử dụng.', N'vivo-v25-pro-5g-sld-xanh-1.jpg', N'vivo-v25-pro-5g-den-1.jpg', N'vivo-v25-pro-5g-note-2.jpg', 10, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (44, 3, 3, 3, NULL, N'Điện thoại vivo Y02A', NULL, CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'VIVO Y02A mẫu điện thoại được nhà vivo cho ra mắt hướng đến nhóm người dùng yêu thích sự đơn giản trong thiết kế, hiệu năng tốt có thể xử lý các tác vụ thường ngày và một viên pin lớn đáp ứng được nhu cầu sử dụng lâu dài.', N'vivo-y02-den-1.jpg', N'vivo-y02-tim-1.jpg', N'vivo-y02-note.jpg', 10, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (45, 3, 3, 3, NULL, N'Điện thoại vivo V27e', NULL, CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'vivo V27e một trong những chiếc điện thoại tầm trung nổi bật của vivo trong năm 2023. Với thiết kế độc đáo và khả năng chụp ảnh - quay phim ấn tượng, vì thế máy đã mang lại cho vivo nhiều niềm tự hào khi ra mắt tại thị trường Việt Nam, hứa hẹn mang đến trải nghiệm tuyệt vời đến với người dùng.', N'vivo-v27e-tim-1-1.jpg', N'vivo-v27e-den-1.jpg', N'vivo-v27e-note.jpg', 10, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (46, 4, 4, 4, 2, N'Điện thoại Samsung Galaxy Z Fold5 5G 256GB ', NULL, CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'Samsung Galaxy Z Fold5 là mẫu điện thoại cao cấp được ra mắt vào tháng 07/2023 với nhiều điểm đáng chú ý như thiết kế gập độc đáo, hiệu năng mạnh mẽ cùng camera quay chụp tốt, điều này giúp cho máy thu hút được nhiều sự quan tâm của đông đảo người dùng yêu công nghệ hiện nay.', N'samsung-galaxy-zfold5-xanh-256gb-1-1.jpg', N'samsung-galaxy-zfold5-den-256gb-1.jpg', N'samsung-galaxy-zfold5-note.jpg', 10, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (47, 4, 4, 4, 2, N'Điện thoại Samsung Galaxy Z Fold5 5G 512GB ', NULL, CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'Samsung Galaxy Z Fold5 là mẫu điện thoại cao cấp được ra mắt vào tháng 07/2023 với nhiều điểm đáng chú ý như thiết kế gập độc đáo, hiệu năng mạnh mẽ cùng camera quay chụp tốt, điều này giúp cho máy thu hút được nhiều sự quan tâm của đông đảo người dùng yêu công nghệ hiện nay.', N'samsung-galaxy-zfold5-xanh-256gb-1-1.jpg', N'samsung-galaxy-zfold5-den-256gb-1.jpg', N'samsung-galaxy-zfold5-note.jpg', 10, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (48, 4, 4, 4, 2, N'Điện thoại Samsung Galaxy Z Fold5 5G 1TB', NULL, CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'Samsung Galaxy Z Fold5 là mẫu điện thoại cao cấp được ra mắt vào tháng 07/2023 với nhiều điểm đáng chú ý như thiết kế gập độc đáo, hiệu năng mạnh mẽ cùng camera quay chụp tốt, điều này giúp cho máy thu hút được nhiều sự quan tâm của đông đảo người dùng yêu công nghệ hiện nay.', N'samsung-galaxy-zfold5-xanh-256gb-1-1.jpg', N'samsung-galaxy-zfold5-den-256gb-1.jpg', N'samsung-galaxy-zfold5-note.jpg', 10, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (49, 4, 4, 4, 2, N'Điện thoại Samsung Galaxy Z Flip4 5G 128GB', NULL, CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'Samsung Galaxy Z Flip4 128GB đã chính thức ra mắt thị trường công nghệ, đánh dấu sự trở lại của Samsung trên con đường định hướng người dùng về sự tiện lợi trên những chiếc điện thoại gập. Với độ bền được gia tăng cùng kiểu thiết kế đẹp mắt giúp Flip4 trở thành một trong những tâm điểm sáng giá cho nửa cuối năm 2022.', N'samsung-galaxy-flip4-glr-tim-1.jpg', N'samsung-galaxy-flip-den-1.jpg', N'samsung-galaxy-z-flip4-note-1-1.jpg', 10, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (50, 4, 4, 4, 2, N'Điện thoại Samsung Galaxy Z Flip4 5G 256GB', NULL, CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'Samsung Galaxy Z Flip4 256GB đã chính thức ra mắt thị trường công nghệ, đánh dấu sự trở lại của Samsung trên con đường định hướng người dùng về sự tiện lợi trên những chiếc điện thoại gập. Với độ bền được gia tăng cùng kiểu thiết kế đẹp mắt giúp Flip4 trở thành một trong những tâm điểm sáng giá cho nửa cuối năm 2022.', N'samsung-galaxy-flip4-glr-tim-1.jpg', N'samsung-galaxy-flip-den-1.jpg', N'samsung-galaxy-z-flip4-note-1-1.jpg', 10, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (51, 4, 4, 4, 2, N'Điện thoại Samsung Galaxy Z Flip4 5G 512GB', NULL, CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'Samsung Galaxy Z Flip4 512GB đã chính thức ra mắt thị trường công nghệ, đánh dấu sự trở lại của Samsung trên con đường định hướng người dùng về sự tiện lợi trên những chiếc điện thoại gập. Với độ bền được gia tăng cùng kiểu thiết kế đẹp mắt giúp Flip4 trở thành một trong những tâm điểm sáng giá cho nửa cuối năm 2022.', N'samsung-galaxy-flip4-glr-tim-1.jpg', N'samsung-galaxy-flip-den-1.jpg', N'samsung-galaxy-z-flip4-note-1-1.jpg', 10, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (52, 5, 5, 5, NULL, N'Điện thoại Xiaomi 12 5G', NULL, CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'Điện thoại Xiaomi đang dần khẳng định chỗ đứng của mình trong phân khúc flagship bằng việc ra mắt Xiaomi 12 với bộ thông số ấn tượng, máy có một thiết kế gọn gàng, hiệu năng mạnh mẽ, màn hình hiển thị chi tiết cùng khả năng chụp ảnh sắc nét nhờ trang bị ống kính đến từ Sony.', N'xiaomi-mi-12-1-1.jpg', N'xiaomi-mi-12-1.jpg', N'xiaomi-mi-12-note.jpg', 10, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (53, 5, 5, 5, NULL, N'Điện thoại Xiaomi Redmi Note 12S', NULL, CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'Xiaomi Redmi Note 12S sẽ là chiếc điện thoại tiếp theo được nhà Xiaomi tung ra thị trường Việt Nam trong thời gian tới (05/2023). Điện thoại sở hữu một lối thiết kế hiện đại, màn hình hiển thị chi tiết đi cùng với đó là một hiệu năng mượt mà xử lý tốt các tác vụ.', N'xiaomi-redmi-note-12s-1-1.jpg', N'xiaomi-redmi-note-12s-xanh-1.jpg', N'xiaomi-redmi-note-12s-note.jpg', 10, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (54, 5, 5, 5, NULL, N'Điện thoại Xiaomi Redmi Note 12 Pro 128GB', NULL, CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'Xiaomi Redmi Note 12 Pro 4G tiếp tục sẽ là mẫu điện thoại tầm trung được nhà Xiaomi giới thiệu đến thị trường Việt Nam trong năm 2023, máy nổi bật với camera 108 MP chất lượng, thiết kế viền mỏng cùng hiệu năng đột phá nhờ trang bị chip Snapdragon 732G.', N'xiami-redmi-12-pro-xam-1.jpg', N'xiaomi-redmi-12-pro-4g-xanh-duong-1.jpg', N'xiaomi-redmi-12-note-2.jpg', 10, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (55, 6, 6, 6, 3, N'Pin sạc dự phòng Polymer 10000mAh Type C 15W AVA+ JP399', NULL, CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'Pin sạc dự phòng Polymer 10000mAh Type C 15W AVA+ JP399 mang đến cho người dùng 1 thiết kế nhỏ gọn, trang bị gam màu sang trọng và kiểu dáng tối giản, dung lượng 10000mAh và hiệu suất 64%, pin sạc dự phòng cung cấp pin cho thiết bị tối ưu.', N'pin-sac-du-phong-polymer-10000mah-type-c-15w-ava-jp399-xanh-1-1.jpg', N'pin-sac-du-phong-polymer-10000mah-type-c-15w-ava-jp399-hong-1.jpg', N'pin-sac-du-phong-polymer-10000mah-type-c-15w-ava-jp399-hong-12.jpg', 10, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (56, 6, 6, 6, 3, N'Pin sạc dự phòng Polymer 10000mAh 12W AVA+ JP299', NULL, CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'Pin sạc dự phòng Polymer 10000mAh 12W AVA+ JP299 mang đến cho khách hàng 1 thiết kế đẹp mắt, nhờ sở hữu gam màu sang trọng và kiểu dáng tối giản. Sở hữu dung lượng 10000mAh và hiệu suất 64%, pin sạc dự phòng cung cấp năng lượng cho thiết bị tối ưu.', N'pin-sac-du-phong-polymer-10000mah-ava-jp299-den-1.jpg', N'pin-sac-du-phong-polymer-10000mah-ava-jp299-trang-1.jpg', N'pin-sac-du-phong-polymer-10000mah-ava-jp299-trang-8.jpg', 10, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (57, 6, 6, 6, 3, N'Pin sạc dự phòng Polymer 10000mAh Type C 10W AVA+ PB100S', NULL, CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'Sạc điện thoại của bạn nhiều lần với dung lượng sạc dự phòng 10Pin sạc dự phòng Polymer 10000mAh 12W AVA+ JP299 mang đến cho khách hàng 1 thiết kế đẹp mắt, nhờ sở hữu gam màu sang trọng và kiểu dáng tối giản. Sở hữu dung lượng 10000 mAh và hiệu suất 64%, pin sạc dự phòng cung cấp năng lượng cho thiết bị tối ưu.000 mAh', N'pin-polymer-10000mah-type-c-ava-pb100s-trang-3.jpg', N'pin-polymer-10000mah-type-c-ava-pb100s-den-3.jpg', N'pin-polymer-10000mah-type-c-ava-pb100s-den-13-1.jpg', 10, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (58, 7, 7, 7, 4, N'Tai nghe Bluetooth True Wireless HAVIT TW945', NULL, CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'Tai nghe Bluetooth True Wireless HAVIT TW945 mang đến thiết kế sang trọng với kiểu dáng tối giản và màu sắc đa dạng, âm thanh đầy đủ và rõ ràng, tích hợp nhiều tính năng và tiện ích khác, phục vụ tốt nhu cầu sử dụng cơ bản hàng ngày của đa số người dùng.', N'tai-nghe-bluetooth-true-wireless-havit-tw945-den-2.jpg', N'tai-nghe-bluetooth-true-wireless-havit-tw945-cam-2.jpg', N'tai-nghe-bluetooth-true-wireless-havit-tw945-tim-note.jpg', 10, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (59, 7, 7, 7, 4, N'Tai nghe Bluetooth True Wireless HAVIT TW971', NULL, CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'Tai nghe Bluetooth True Wireless HAVIT TW971 mang đến một thiết kế trong suốt, âm thanh rõ ràng và sống động, cùng với nhiều công nghệ tiện ích được tích hợp, hứa hẹn đáp ứng nhu cầu nghe nhạc hay gọi thoại cơ bản hằng ngày cho người dùng.', N'tai-nghe-bluetooth-true-wireless-havit-tw971-11.jpg', N'tai-nghe-bluetooth-true-wireless-havit-tw971-1.jpg', N'tai-nghe-bluetooth-true-wireless-havit-tw971-7.jpg', 10, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (60, 7, 7, 7, 4, N'Tai nghe Bluetooth True Wireless HAVIT TW967', NULL, CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'Tai nghe Bluetooth True Wireless HAVIT TW967 được thiết kế với phong cách năng động, màu sắc đẹp mắt, âm thanh sống động, trang bị kết nối không dây gọn gàng, mang đến cho bạn những trải nghiệm tối ưu.', N'tai-nghe-bluetooth-true-wireless-havit-tw967-trang-2.jpg', N'tai-nghe-bluetooth-true-wireless-havit-tw967-den-1.jpg', N'tai-nghe-bluetooth-true-wireless-havit-tw967-notecopy.jpg', 10, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (61, 1, 1, 1, 1, N'Điện thoại iPhone 14 Pro Max 128GB', NULL, CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'iPhone 14 Pro Max một siêu phẩm trong giới smartphone được nhà Táo tung ra thị trường vào tháng 09/2022. Máy trang bị con chip Apple A16 Bionic vô cùng mạnh mẽ, đi kèm theo đó là thiết kế hình màn hình mới, hứa hẹn mang lại những trải nghiệm đầy mới mẻ cho người dùng iPhone.', N'iphone-14-pro-max-purple-1.jpg', N'iphone-14-pro-max-vang-1.jpg', N'iphone-14-pro-max-note.jpg', 10, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (62, 1, 1, 1, 1, N'Điện thoại iPhone 14 Pro Max 256GB', NULL, CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'iPhone 14 Pro Max một siêu phẩm trong giới smartphone được nhà Táo tung ra thị trường vào tháng 09/2022. Máy trang bị con chip Apple A16 Bionic vô cùng mạnh mẽ, đi kèm theo đó là thiết kế hình màn hình mới, hứa hẹn mang lại những trải nghiệm đầy mới mẻ cho người dùng iPhone.', N'iphone-14-pro-max-purple-1.jpg', N'iphone-14-pro-max-vang-1.jpg', N'iphone-14-pro-max-note.jpg', 10, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (63, 1, 1, 1, 1, N'Điện thoại iPhone 14 Pro Max 512GB', NULL, CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'iPhone 14 Pro Max một siêu phẩm trong giới smartphone được nhà Táo tung ra thị trường vào tháng 09/2022. Máy trang bị con chip Apple A16 Bionic vô cùng mạnh mẽ, đi kèm theo đó là thiết kế hình màn hình mới, hứa hẹn mang lại những trải nghiệm đầy mới mẻ cho người dùng iPhone.', N'iphone-14-pro-max-purple-1.jpg', N'iphone-14-pro-max-vang-1.jpg', N'iphone-14-pro-max-note.jpg', 10, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (64, 1, 1, 1, 1, N'Điện thoại iPhone 14 Pro Max 1TB', NULL, CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'iPhone 14 Pro Max một siêu phẩm trong giới smartphone được nhà Táo tung ra thị trường vào tháng 09/2022. Máy trang bị con chip Apple A16 Bionic vô cùng mạnh mẽ, đi kèm theo đó là thiết kế hình màn hình mới, hứa hẹn mang lại những trải nghiệm đầy mới mẻ cho người dùng iPhone.', N'iphone-14-pro-max-purple-1.jpg', N'iphone-14-pro-max-vang-1.jpg', N'iphone-14-pro-max-note.jpg', 10, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (65, 1, 1, 1, 1, N'Điện thoại iPhone 13 Pro Max 123GB', NULL, CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'Điện thoại iPhone 13 Pro Max 128 GB - siêu phẩm được mong chờ nhất ở nửa cuối năm 2021 đến từ Apple. Máy có thiết kế không mấy đột phá khi so với người tiền nhiệm, bên trong đây vẫn là một sản phẩm có màn hình siêu đẹp, tần số quét được nâng cấp lên 120 Hz mượt mà, cảm biến camera có kích thước lớn hơn, cùng hiệu năng mạnh mẽ với sức mạnh đến từ Apple A15 Bionic, sẵn sàng cùng bạn chinh phục mọi thử thách.', N'iphone-13-pro-max-1-1.jpg', N'iphone-13-pro-max-1.jpg', N'iphone-13-pro-max-n-2.jpg', 10, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (66, 1, 1, 1, 1, N'Điện thoại iPhone 13 Pro Max 256GB', NULL, CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'Điện thoại iPhone 13 Pro Max 256 GB - siêu phẩm được mong chờ nhất ở nửa cuối năm 2021 đến từ Apple. Máy có thiết kế không mấy đột phá khi so với người tiền nhiệm, bên trong đây vẫn là một sản phẩm có màn hình siêu đẹp, tần số quét được nâng cấp lên 120 Hz mượt mà, cảm biến camera có kích thước lớn hơn, cùng hiệu năng mạnh mẽ với sức mạnh đến từ Apple A15 Bionic, sẵn sàng cùng bạn chinh phục mọi thử thách.', N'iphone-13-pro-max-1-1.jpg', N'iphone-13-pro-max-1.jpg', N'iphone-13-pro-max-n-2.jpg', 10, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (67, 1, 1, 1, 1, N'Điện thoại iPhone 13 Pro Max 512GB', NULL, CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'Điện thoại iPhone 13 Pro Max 512 GB - siêu phẩm được mong chờ nhất ở nửa cuối năm 2021 đến từ Apple. Máy có thiết kế không mấy đột phá khi so với người tiền nhiệm, bên trong đây vẫn là một sản phẩm có màn hình siêu đẹp, tần số quét được nâng cấp lên 120 Hz mượt mà, cảm biến camera có kích thước lớn hơn, cùng hiệu năng mạnh mẽ với sức mạnh đến từ Apple A15 Bionic, sẵn sàng cùng bạn chinh phục mọi thử thách.', N'iphone-13-pro-max-1-1.jpg', N'iphone-13-pro-max-1.jpg', N'iphone-13-pro-max-n-2.jpg', 10, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (68, 1, 1, 1, 1, N'Điện thoại iPhone 12 Pro Max 128GB', NULL, CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'iPhone 12 Pro Max 128 GB một siêu phẩm smartphone đến từ Apple. Máy có một hiệu năng hoàn toàn mạnh mẽ đáp ứng tốt nhiều nhu cầu đến từ người dùng và mang trong mình một thiết kế đầy vuông vức, sang trọng.', N'iphone-12-pro-max-512gb-1-org.jpg', N'iphone-12-pro-max-512gb-bac-1-org.jpg', N'iphone-12-pro-max-512gb-note-2.jpg', 10, NULL, NULL, NULL, 0, 0, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (69, 1, 1, 1, 1, N'Điện thoại iPhone 12 Pro Max 256GB', NULL, CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'iPhone 12 Pro Max 256 GB một siêu phẩm smartphone đến từ Apple. Máy có một hiệu năng hoàn toàn mạnh mẽ đáp ứng tốt nhiều nhu cầu đến từ người dùng và mang trong mình một thiết kế đầy vuông vức, sang trọng.', N'iphone-12-pro-max-512gb-1-org.jpg', N'iphone-12-pro-max-512gb-bac-1-org.jpg', N'iphone-12-pro-max-512gb-note-2.jpg', 10, NULL, NULL, NULL, 0, 0, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (70, 2, 2, 2, NULL, N'Điện thoại OPPO Find N2 Flip 5G', NULL, CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'OPPO Find N2 Flip 5G - chiếc điện thoại gập đầu tiên của OPPO đã được giới thiệu chính thức tại Việt Nam vào tháng 03/2023. Sở hữu cấu hình mạnh mẽ cùng thiết kế siêu nhỏ gọn giúp tối ưu kích thước, chiếc điện thoại sẽ cùng bạn nổi bật trong mọi không gian với vẻ ngoài đầy cá tính.', N'oppo-n2-flip-tim-1-1.jpg', N'oppo-n2-flip-den-1.jpg', N'oppo-n2-flip-tim-note.jpg', 10, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (71, 2, 2, 2, NULL, N'Điện thoại OPPO Reno10 Pro 5G', NULL, CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'OPPO Reno10 Pro 5G là một trong những sản phẩm của OPPO được ra mắt trong 2023. Với thiết kế đẹp mắt, màn hình lớn và hiệu năng mạnh mẽ, Reno10 Pro chắc chắn sẽ là lựa chọn đáng cân nhắc dành cho những ai đang tìm kiếm chiếc máy tầm trung để phục vụ tốt mọi nhu cầu.', N'oppo-reno10-pro-xam-1-1.jpg', N'oppo-reno10-pro-tim-1-2.jpg', N'oppo-reno10-pro-note.jpg', 10, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (72, 2, 2, 2, NULL, N'Điện thoại OPPO A77s', CAST(8385000 AS Decimal(18, 0)), CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'OPPO vừa cho ra mắt mẫu điện thoại tầm trung mới với tên gọi OPPO A77s, máy sở hữu màn hình lớn, thiết kế đẹp mắt, hiệu năng ổn định cùng khả năng mở rộng RAM lên đến 8 GB vô cùng nổi bật trong phân khúc.', N'oppo-a77s-den-1.jpg', N'oppo-a77s-xanh-1.jpg', N'oppo-a77s-note-2.jpg', 20, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (73, 3, 3, 3, NULL, N'Điện thoại vivo V25 Pro 5G', NULL, CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'VIVO V25 Pro 5G vừa được ra mắt với một mức giá bán cực kỳ hấp dẫn, thế mạnh của máy thuộc về phần hiệu năng nhờ trang bị con chip MediaTek Dimensity 1300 và cụm camera sắc nét 64 MP, hứa hẹn mang lại cho người dùng những trải nghiệm ổn định trong suốt quá trình sử dụng.', N'vivo-v25-pro-5g-sld-xanh-1.jpg', N'vivo-v25-pro-5g-den-1.jpg', N'vivo-v25-pro-5g-note-2.jpg', 10, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (74, 3, 3, 3, NULL, N'Điện thoại vivo Y02A', NULL, CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'VIVO Y02A mẫu điện thoại được nhà vivo cho ra mắt hướng đến nhóm người dùng yêu thích sự đơn giản trong thiết kế, hiệu năng tốt có thể xử lý các tác vụ thường ngày và một viên pin lớn đáp ứng được nhu cầu sử dụng lâu dài.', N'vivo-y02-den-1.jpg', N'vivo-y02-tim-1.jpg', N'vivo-y02-note.jpg', 10, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (75, 3, 3, 3, NULL, N'Điện thoại vivo V27e', NULL, CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'vivo V27e một trong những chiếc điện thoại tầm trung nổi bật của vivo trong năm 2023. Với thiết kế độc đáo và khả năng chụp ảnh - quay phim ấn tượng, vì thế máy đã mang lại cho vivo nhiều niềm tự hào khi ra mắt tại thị trường Việt Nam, hứa hẹn mang đến trải nghiệm tuyệt vời đến với người dùng.', N'vivo-v27e-tim-1-1.jpg', N'vivo-v27e-den-1.jpg', N'vivo-v27e-note.jpg', 10, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (76, 4, 4, 4, 2, N'Điện thoại Samsung Galaxy Z Fold5 5G 256GB ', NULL, CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'Samsung Galaxy Z Fold5 là mẫu điện thoại cao cấp được ra mắt vào tháng 07/2023 với nhiều điểm đáng chú ý như thiết kế gập độc đáo, hiệu năng mạnh mẽ cùng camera quay chụp tốt, điều này giúp cho máy thu hút được nhiều sự quan tâm của đông đảo người dùng yêu công nghệ hiện nay.', N'samsung-galaxy-zfold5-xanh-256gb-1-1.jpg', N'samsung-galaxy-zfold5-den-256gb-1.jpg', N'samsung-galaxy-zfold5-note.jpg', 10, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (77, 4, 4, 4, 2, N'Điện thoại Samsung Galaxy Z Fold5 5G 512GB ', NULL, CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'Samsung Galaxy Z Fold5 là mẫu điện thoại cao cấp được ra mắt vào tháng 07/2023 với nhiều điểm đáng chú ý như thiết kế gập độc đáo, hiệu năng mạnh mẽ cùng camera quay chụp tốt, điều này giúp cho máy thu hút được nhiều sự quan tâm của đông đảo người dùng yêu công nghệ hiện nay.', N'samsung-galaxy-zfold5-xanh-256gb-1-1.jpg', N'samsung-galaxy-zfold5-den-256gb-1.jpg', N'samsung-galaxy-zfold5-note.jpg', 10, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (78, 4, 4, 4, 2, N'Điện thoại Samsung Galaxy Z Fold5 5G 1TB', NULL, CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'Samsung Galaxy Z Fold5 là mẫu điện thoại cao cấp được ra mắt vào tháng 07/2023 với nhiều điểm đáng chú ý như thiết kế gập độc đáo, hiệu năng mạnh mẽ cùng camera quay chụp tốt, điều này giúp cho máy thu hút được nhiều sự quan tâm của đông đảo người dùng yêu công nghệ hiện nay.', N'samsung-galaxy-zfold5-xanh-256gb-1-1.jpg', N'samsung-galaxy-zfold5-den-256gb-1.jpg', N'samsung-galaxy-zfold5-note.jpg', 10, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (79, 4, 4, 4, 2, N'Điện thoại Samsung Galaxy Z Flip4 5G 128GB', NULL, CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'Samsung Galaxy Z Flip4 128GB đã chính thức ra mắt thị trường công nghệ, đánh dấu sự trở lại của Samsung trên con đường định hướng người dùng về sự tiện lợi trên những chiếc điện thoại gập. Với độ bền được gia tăng cùng kiểu thiết kế đẹp mắt giúp Flip4 trở thành một trong những tâm điểm sáng giá cho nửa cuối năm 2022.', N'samsung-galaxy-flip4-glr-tim-1.jpg', N'samsung-galaxy-flip-den-1.jpg', N'samsung-galaxy-z-flip4-note-1-1.jpg', 10, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (80, 4, 4, 4, 2, N'Điện thoại Samsung Galaxy Z Flip4 5G 256GB', NULL, CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'Samsung Galaxy Z Flip4 256GB đã chính thức ra mắt thị trường công nghệ, đánh dấu sự trở lại của Samsung trên con đường định hướng người dùng về sự tiện lợi trên những chiếc điện thoại gập. Với độ bền được gia tăng cùng kiểu thiết kế đẹp mắt giúp Flip4 trở thành một trong những tâm điểm sáng giá cho nửa cuối năm 2022.', N'samsung-galaxy-flip4-glr-tim-1.jpg', N'samsung-galaxy-flip-den-1.jpg', N'samsung-galaxy-z-flip4-note-1-1.jpg', 10, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (81, 4, 4, 4, 2, N'Điện thoại Samsung Galaxy Z Flip4 5G 512GB', NULL, CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'Samsung Galaxy Z Flip4 512GB đã chính thức ra mắt thị trường công nghệ, đánh dấu sự trở lại của Samsung trên con đường định hướng người dùng về sự tiện lợi trên những chiếc điện thoại gập. Với độ bền được gia tăng cùng kiểu thiết kế đẹp mắt giúp Flip4 trở thành một trong những tâm điểm sáng giá cho nửa cuối năm 2022.', N'samsung-galaxy-flip4-glr-tim-1.jpg', N'samsung-galaxy-flip-den-1.jpg', N'samsung-galaxy-z-flip4-note-1-1.jpg', 10, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (82, 5, 5, 5, NULL, N'Điện thoại Xiaomi 12 5G', NULL, CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'Điện thoại Xiaomi đang dần khẳng định chỗ đứng của mình trong phân khúc flagship bằng việc ra mắt Xiaomi 12 với bộ thông số ấn tượng, máy có một thiết kế gọn gàng, hiệu năng mạnh mẽ, màn hình hiển thị chi tiết cùng khả năng chụp ảnh sắc nét nhờ trang bị ống kính đến từ Sony.', N'xiaomi-mi-12-1-1.jpg', N'xiaomi-mi-12-1.jpg', N'xiaomi-mi-12-note.jpg', 10, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (83, 5, 5, 5, NULL, N'Điện thoại Xiaomi Redmi Note 12S', NULL, CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'Xiaomi Redmi Note 12S sẽ là chiếc điện thoại tiếp theo được nhà Xiaomi tung ra thị trường Việt Nam trong thời gian tới (05/2023). Điện thoại sở hữu một lối thiết kế hiện đại, màn hình hiển thị chi tiết đi cùng với đó là một hiệu năng mượt mà xử lý tốt các tác vụ.', N'xiaomi-redmi-note-12s-1-1.jpg', N'xiaomi-redmi-note-12s-xanh-1.jpg', N'xiaomi-redmi-note-12s-note.jpg', 10, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (84, 5, 5, 5, NULL, N'Điện thoại Xiaomi Redmi Note 12 Pro 128GB', NULL, CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'Xiaomi Redmi Note 12 Pro 4G tiếp tục sẽ là mẫu điện thoại tầm trung được nhà Xiaomi giới thiệu đến thị trường Việt Nam trong năm 2023, máy nổi bật với camera 108 MP chất lượng, thiết kế viền mỏng cùng hiệu năng đột phá nhờ trang bị chip Snapdragon 732G.', N'xiami-redmi-12-pro-xam-1.jpg', N'xiaomi-redmi-12-pro-4g-xanh-duong-1.jpg', N'xiaomi-redmi-12-note-2.jpg', 10, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (85, 6, 6, 6, 3, N'Pin sạc dự phòng Polymer 10000mAh Type C 15W AVA+ JP399', NULL, CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'Pin sạc dự phòng Polymer 10000mAh Type C 15W AVA+ JP399 mang đến cho người dùng 1 thiết kế nhỏ gọn, trang bị gam màu sang trọng và kiểu dáng tối giản, dung lượng 10000mAh và hiệu suất 64%, pin sạc dự phòng cung cấp pin cho thiết bị tối ưu.', N'pin-sac-du-phong-polymer-10000mah-type-c-15w-ava-jp399-xanh-1-1.jpg', N'pin-sac-du-phong-polymer-10000mah-type-c-15w-ava-jp399-hong-1.jpg', N'pin-sac-du-phong-polymer-10000mah-type-c-15w-ava-jp399-hong-12.jpg', 10, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (86, 6, 6, 6, 3, N'Pin sạc dự phòng Polymer 10000mAh 12W AVA+ JP299', NULL, CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'Pin sạc dự phòng Polymer 10000mAh 12W AVA+ JP299 mang đến cho khách hàng 1 thiết kế đẹp mắt, nhờ sở hữu gam màu sang trọng và kiểu dáng tối giản. Sở hữu dung lượng 10000mAh và hiệu suất 64%, pin sạc dự phòng cung cấp năng lượng cho thiết bị tối ưu.', N'pin-sac-du-phong-polymer-10000mah-ava-jp299-den-1.jpg', N'pin-sac-du-phong-polymer-10000mah-ava-jp299-trang-1.jpg', N'pin-sac-du-phong-polymer-10000mah-ava-jp299-trang-8.jpg', 10, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (87, 6, 6, 6, 3, N'Pin sạc dự phòng Polymer 10000mAh Type C 10W AVA+ PB100S', NULL, CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'Sạc điện thoại của bạn nhiều lần với dung lượng sạc dự phòng 10Pin sạc dự phòng Polymer 10000mAh 12W AVA+ JP299 mang đến cho khách hàng 1 thiết kế đẹp mắt, nhờ sở hữu gam màu sang trọng và kiểu dáng tối giản. Sở hữu dung lượng 10000 mAh và hiệu suất 64%, pin sạc dự phòng cung cấp năng lượng cho thiết bị tối ưu.000 mAh', N'pin-polymer-10000mah-type-c-ava-pb100s-trang-3.jpg', N'pin-polymer-10000mah-type-c-ava-pb100s-den-3.jpg', N'pin-polymer-10000mah-type-c-ava-pb100s-den-13-1.jpg', 10, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (88, 7, 7, 7, 4, N'Tai nghe Bluetooth True Wireless HAVIT TW945', NULL, CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'Tai nghe Bluetooth True Wireless HAVIT TW945 mang đến thiết kế sang trọng với kiểu dáng tối giản và màu sắc đa dạng, âm thanh đầy đủ và rõ ràng, tích hợp nhiều tính năng và tiện ích khác, phục vụ tốt nhu cầu sử dụng cơ bản hàng ngày của đa số người dùng.', N'tai-nghe-bluetooth-true-wireless-havit-tw945-den-2.jpg', N'tai-nghe-bluetooth-true-wireless-havit-tw945-cam-2.jpg', N'tai-nghe-bluetooth-true-wireless-havit-tw945-tim-note.jpg', 10, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (89, 7, 7, 7, 4, N'Tai nghe Bluetooth True Wireless HAVIT TW971', NULL, CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'Tai nghe Bluetooth True Wireless HAVIT TW971 mang đến một thiết kế trong suốt, âm thanh rõ ràng và sống động, cùng với nhiều công nghệ tiện ích được tích hợp, hứa hẹn đáp ứng nhu cầu nghe nhạc hay gọi thoại cơ bản hằng ngày cho người dùng.', N'tai-nghe-bluetooth-true-wireless-havit-tw971-11.jpg', N'tai-nghe-bluetooth-true-wireless-havit-tw971-1.jpg', N'tai-nghe-bluetooth-true-wireless-havit-tw971-7.jpg', 10, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (90, 7, 7, 7, 4, N'Tai nghe Bluetooth True Wireless HAVIT TW967', NULL, CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'Tai nghe Bluetooth True Wireless HAVIT TW967 được thiết kế với phong cách năng động, màu sắc đẹp mắt, âm thanh sống động, trang bị kết nối không dây gọn gàng, mang đến cho bạn những trải nghiệm tối ưu.', N'tai-nghe-bluetooth-true-wireless-havit-tw967-trang-2.jpg', N'tai-nghe-bluetooth-true-wireless-havit-tw967-den-1.jpg', N'tai-nghe-bluetooth-true-wireless-havit-tw967-notecopy.jpg', 10, NULL, NULL, NULL, 0, 1, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (91, 1, 4, 4, NULL, N'Điện thoại Samsung Galaxy S23 5G 128GB', NULL, CAST(N'2023-12-20T00:00:00.000' AS DateTime), N'Samsung Galaxy S23 5G 128GB chắc hẳn không còn là cái tên quá xa lạ đối với các tín đồ công nghệ hiện nay, được xem là một trong những gương mặt chủ chốt đến từ nhà Samsung với cấu hình mạnh mẽ bậc nhất, camera trứ danh hàng đầu cùng lối hoàn thiện vô cùng sang trọng và hiện đại.
Sở hữu lối thiết kế sang trọng
Ở phiên bản năm nay, mình rất vui khi biết được rằng Galaxy S23 vẫn giữ nguyên kiểu dáng quen thuộc từ thế hệ trước, nó được xem là một biểu tượng của dòng điện thoại Samsung Galaxy dòng S khi mang trong mình một đặc trưng riêng biệt và đầy đẳng cấp.', N'samsung-galaxy-s23-5g-060423-031926.jpg', N'samsung-galaxy-s23-5g-060423-031929.jpg', N'samsung-galaxy-s23-5g-060423-031939.jpg', 0, NULL, NULL, NULL, 0, 0, 0)
INSERT [dbo].[SANPHAM] ([MaSP], [MaNCC], [MaNSX], [MaLoaiSP], [MaKhuyenMai], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [HinhAnh2], [HinhAnh3], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [DaXoa]) VALUES (92, 3, 4, 4, NULL, N'Samsung Galaxy Z Flip5', NULL, CAST(N'2023-12-24T00:00:00.000' AS DateTime), N'Samsung Galaxy Z Flip5 đã chính thức ra mắt vào ngày 26 tháng 7. Đây là một chiếc điện thoại thông minh có thiết kế độc đáo với màn hình gập, được trang bị bộ vi xử lý cao cấp Snapdragon 8 Gen 2 for Galaxy, RAM 8 GB, bộ nhớ trong 256 GB, camera kép 12 MP và pin 3700 mAh.', N'samsung-galaxy-z-flip5-310823-034735.jpg', N'samsung-galaxy-z-flip5-310823-034737.jpg', N'samsung-galaxy-z-flip5-310823-034739.jpg', 0, NULL, NULL, NULL, 0, 0, 1)
SET IDENTITY_INSERT [dbo].[SANPHAM] OFF
GO
SET IDENTITY_INSERT [dbo].[SANPHAM_MAU] ON 

INSERT [dbo].[SANPHAM_MAU] ([MaSP_Mau], [MaSP], [MaMau]) VALUES (1, 1, 5)
INSERT [dbo].[SANPHAM_MAU] ([MaSP_Mau], [MaSP], [MaMau]) VALUES (2, 1, 1)
INSERT [dbo].[SANPHAM_MAU] ([MaSP_Mau], [MaSP], [MaMau]) VALUES (3, 2, 5)
INSERT [dbo].[SANPHAM_MAU] ([MaSP_Mau], [MaSP], [MaMau]) VALUES (4, 2, 1)
INSERT [dbo].[SANPHAM_MAU] ([MaSP_Mau], [MaSP], [MaMau]) VALUES (5, 3, 5)
INSERT [dbo].[SANPHAM_MAU] ([MaSP_Mau], [MaSP], [MaMau]) VALUES (6, 3, 1)
INSERT [dbo].[SANPHAM_MAU] ([MaSP_Mau], [MaSP], [MaMau]) VALUES (7, 4, 5)
INSERT [dbo].[SANPHAM_MAU] ([MaSP_Mau], [MaSP], [MaMau]) VALUES (8, 4, 1)
INSERT [dbo].[SANPHAM_MAU] ([MaSP_Mau], [MaSP], [MaMau]) VALUES (9, 5, 1)
INSERT [dbo].[SANPHAM_MAU] ([MaSP_Mau], [MaSP], [MaMau]) VALUES (10, 5, 4)
INSERT [dbo].[SANPHAM_MAU] ([MaSP_Mau], [MaSP], [MaMau]) VALUES (11, 6, 1)
INSERT [dbo].[SANPHAM_MAU] ([MaSP_Mau], [MaSP], [MaMau]) VALUES (12, 6, 4)
INSERT [dbo].[SANPHAM_MAU] ([MaSP_Mau], [MaSP], [MaMau]) VALUES (13, 7, 1)
INSERT [dbo].[SANPHAM_MAU] ([MaSP_Mau], [MaSP], [MaMau]) VALUES (14, 7, 4)
INSERT [dbo].[SANPHAM_MAU] ([MaSP_Mau], [MaSP], [MaMau]) VALUES (15, 8, 1)
INSERT [dbo].[SANPHAM_MAU] ([MaSP_Mau], [MaSP], [MaMau]) VALUES (16, 8, 2)
INSERT [dbo].[SANPHAM_MAU] ([MaSP_Mau], [MaSP], [MaMau]) VALUES (17, 9, 1)
INSERT [dbo].[SANPHAM_MAU] ([MaSP_Mau], [MaSP], [MaMau]) VALUES (18, 9, 2)
INSERT [dbo].[SANPHAM_MAU] ([MaSP_Mau], [MaSP], [MaMau]) VALUES (19, 10, 5)
INSERT [dbo].[SANPHAM_MAU] ([MaSP_Mau], [MaSP], [MaMau]) VALUES (20, 10, 3)
INSERT [dbo].[SANPHAM_MAU] ([MaSP_Mau], [MaSP], [MaMau]) VALUES (21, 11, 8)
INSERT [dbo].[SANPHAM_MAU] ([MaSP_Mau], [MaSP], [MaMau]) VALUES (22, 11, 5)
INSERT [dbo].[SANPHAM_MAU] ([MaSP_Mau], [MaSP], [MaMau]) VALUES (23, 12, 3)
INSERT [dbo].[SANPHAM_MAU] ([MaSP_Mau], [MaSP], [MaMau]) VALUES (24, 12, 7)
INSERT [dbo].[SANPHAM_MAU] ([MaSP_Mau], [MaSP], [MaMau]) VALUES (25, 13, 7)
INSERT [dbo].[SANPHAM_MAU] ([MaSP_Mau], [MaSP], [MaMau]) VALUES (26, 13, 3)
INSERT [dbo].[SANPHAM_MAU] ([MaSP_Mau], [MaSP], [MaMau]) VALUES (27, 14, 3)
INSERT [dbo].[SANPHAM_MAU] ([MaSP_Mau], [MaSP], [MaMau]) VALUES (28, 14, 5)
INSERT [dbo].[SANPHAM_MAU] ([MaSP_Mau], [MaSP], [MaMau]) VALUES (29, 15, 5)
INSERT [dbo].[SANPHAM_MAU] ([MaSP_Mau], [MaSP], [MaMau]) VALUES (30, 15, 3)
INSERT [dbo].[SANPHAM_MAU] ([MaSP_Mau], [MaSP], [MaMau]) VALUES (31, 16, 7)
INSERT [dbo].[SANPHAM_MAU] ([MaSP_Mau], [MaSP], [MaMau]) VALUES (32, 16, 3)
INSERT [dbo].[SANPHAM_MAU] ([MaSP_Mau], [MaSP], [MaMau]) VALUES (33, 17, 7)
INSERT [dbo].[SANPHAM_MAU] ([MaSP_Mau], [MaSP], [MaMau]) VALUES (34, 17, 3)
INSERT [dbo].[SANPHAM_MAU] ([MaSP_Mau], [MaSP], [MaMau]) VALUES (35, 18, 7)
INSERT [dbo].[SANPHAM_MAU] ([MaSP_Mau], [MaSP], [MaMau]) VALUES (36, 18, 3)
INSERT [dbo].[SANPHAM_MAU] ([MaSP_Mau], [MaSP], [MaMau]) VALUES (37, 19, 5)
INSERT [dbo].[SANPHAM_MAU] ([MaSP_Mau], [MaSP], [MaMau]) VALUES (38, 19, 3)
INSERT [dbo].[SANPHAM_MAU] ([MaSP_Mau], [MaSP], [MaMau]) VALUES (39, 20, 5)
INSERT [dbo].[SANPHAM_MAU] ([MaSP_Mau], [MaSP], [MaMau]) VALUES (40, 20, 3)
INSERT [dbo].[SANPHAM_MAU] ([MaSP_Mau], [MaSP], [MaMau]) VALUES (41, 21, 5)
INSERT [dbo].[SANPHAM_MAU] ([MaSP_Mau], [MaSP], [MaMau]) VALUES (42, 21, 3)
INSERT [dbo].[SANPHAM_MAU] ([MaSP_Mau], [MaSP], [MaMau]) VALUES (43, 22, 8)
INSERT [dbo].[SANPHAM_MAU] ([MaSP_Mau], [MaSP], [MaMau]) VALUES (44, 22, 5)
INSERT [dbo].[SANPHAM_MAU] ([MaSP_Mau], [MaSP], [MaMau]) VALUES (45, 23, 3)
INSERT [dbo].[SANPHAM_MAU] ([MaSP_Mau], [MaSP], [MaMau]) VALUES (46, 23, 7)
INSERT [dbo].[SANPHAM_MAU] ([MaSP_Mau], [MaSP], [MaMau]) VALUES (47, 24, 8)
INSERT [dbo].[SANPHAM_MAU] ([MaSP_Mau], [MaSP], [MaMau]) VALUES (48, 24, 7)
INSERT [dbo].[SANPHAM_MAU] ([MaSP_Mau], [MaSP], [MaMau]) VALUES (49, 25, 7)
INSERT [dbo].[SANPHAM_MAU] ([MaSP_Mau], [MaSP], [MaMau]) VALUES (50, 25, 9)
INSERT [dbo].[SANPHAM_MAU] ([MaSP_Mau], [MaSP], [MaMau]) VALUES (51, 26, 3)
INSERT [dbo].[SANPHAM_MAU] ([MaSP_Mau], [MaSP], [MaMau]) VALUES (52, 26, 4)
INSERT [dbo].[SANPHAM_MAU] ([MaSP_Mau], [MaSP], [MaMau]) VALUES (53, 27, 4)
INSERT [dbo].[SANPHAM_MAU] ([MaSP_Mau], [MaSP], [MaMau]) VALUES (54, 27, 3)
INSERT [dbo].[SANPHAM_MAU] ([MaSP_Mau], [MaSP], [MaMau]) VALUES (55, 28, 3)
INSERT [dbo].[SANPHAM_MAU] ([MaSP_Mau], [MaSP], [MaMau]) VALUES (56, 28, 10)
INSERT [dbo].[SANPHAM_MAU] ([MaSP_Mau], [MaSP], [MaMau]) VALUES (57, 29, 4)
INSERT [dbo].[SANPHAM_MAU] ([MaSP_Mau], [MaSP], [MaMau]) VALUES (58, 29, 3)
INSERT [dbo].[SANPHAM_MAU] ([MaSP_Mau], [MaSP], [MaMau]) VALUES (59, 30, 4)
INSERT [dbo].[SANPHAM_MAU] ([MaSP_Mau], [MaSP], [MaMau]) VALUES (60, 30, 3)
SET IDENTITY_INSERT [dbo].[SANPHAM_MAU] OFF
GO
SET IDENTITY_INSERT [dbo].[THANHVIEN] ON 

INSERT [dbo].[THANHVIEN] ([MaTV], [MaLoaiTV], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SoDienThoai], [CauHoi], [CauTraLoi], [HinhDaiDien], [MaToken], [ThoiGianMaToken]) VALUES (5, 1, N'herluxxia', N'1234567', N'Phan Lê Tú Mỹ', N'DAD', N'ple.tumy@gmail.com', N'0936000306', NULL, NULL, N'avatar.jpg', NULL, NULL)
INSERT [dbo].[THANHVIEN] ([MaTV], [MaLoaiTV], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SoDienThoai], [CauHoi], [CauTraLoi], [HinhDaiDien], [MaToken], [ThoiGianMaToken]) VALUES (6, 1, N'MerrickSakai', N'123456', N'Phan Lê Tú Mỹ', NULL, N'tumy.drive2@gmail.com', N'0936000306', NULL, NULL, N'default.png', NULL, NULL)
INSERT [dbo].[THANHVIEN] ([MaTV], [MaLoaiTV], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SoDienThoai], [CauHoi], [CauTraLoi], [HinhDaiDien], [MaToken], [ThoiGianMaToken]) VALUES (7, 2, N'hiammai', N'123456', N'Lã Thị Ngọc Mai', NULL, N'maila.31211021141@st.ueh.edu.vn', N'1234567890', NULL, NULL, N'default.png', NULL, NULL)
INSERT [dbo].[THANHVIEN] ([MaTV], [MaLoaiTV], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SoDienThoai], [CauHoi], [CauTraLoi], [HinhDaiDien], [MaToken], [ThoiGianMaToken]) VALUES (8, 2, N'test01', N'123456', N'test01', NULL, N'test01@gmail.com', N'0936000306', NULL, NULL, N'default.png', NULL, NULL)
INSERT [dbo].[THANHVIEN] ([MaTV], [MaLoaiTV], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SoDienThoai], [CauHoi], [CauTraLoi], [HinhDaiDien], [MaToken], [ThoiGianMaToken]) VALUES (9, 2, N'test02', N'123456', N'Phan Lê Tú Mỹ', NULL, N'test02@gmail.com', N'0936000306', NULL, NULL, N'default.png', NULL, NULL)
INSERT [dbo].[THANHVIEN] ([MaTV], [MaLoaiTV], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SoDienThoai], [CauHoi], [CauTraLoi], [HinhDaiDien], [MaToken], [ThoiGianMaToken]) VALUES (10, 2, N'ngocanh', N'123456', N'Nguyễn Thị Ngọc Ánh', NULL, N'anhnguyen.31211023204@st.ueh.edu.vn', N'0936000306', NULL, NULL, N'default.png', NULL, NULL)
INSERT [dbo].[THANHVIEN] ([MaTV], [MaLoaiTV], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SoDienThoai], [CauHoi], [CauTraLoi], [HinhDaiDien], [MaToken], [ThoiGianMaToken]) VALUES (11, 2, N'hoanglan', N'123456', N'Vũ Hoàng Lan', NULL, N'lanvu.31211026035@st.ueh.edu.vn', N'0936000306', NULL, NULL, N'default.png', NULL, NULL)
INSERT [dbo].[THANHVIEN] ([MaTV], [MaLoaiTV], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SoDienThoai], [CauHoi], [CauTraLoi], [HinhDaiDien], [MaToken], [ThoiGianMaToken]) VALUES (12, 2, N'aihang', N'123456', N'Phan Thị Ái Hằng', NULL, N'hangphan.31211026429@st.ueh.edu.vn', N'0936000306', NULL, NULL, N'default.png', NULL, NULL)
INSERT [dbo].[THANHVIEN] ([MaTV], [MaLoaiTV], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SoDienThoai], [CauHoi], [CauTraLoi], [HinhDaiDien], [MaToken], [ThoiGianMaToken]) VALUES (13, 2, N'test03', N'123456', N'Test03', NULL, N'test03@gmail.com', N'0936000306', NULL, NULL, N'default.png', NULL, NULL)
INSERT [dbo].[THANHVIEN] ([MaTV], [MaLoaiTV], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SoDienThoai], [CauHoi], [CauTraLoi], [HinhDaiDien], [MaToken], [ThoiGianMaToken]) VALUES (14, 2, N'test04', N'123456', N'Han So Hee', N'Korea', N'test04@gmail.com', N'0936000306', NULL, NULL, N'avatar.jpg', NULL, NULL)
SET IDENTITY_INSERT [dbo].[THANHVIEN] OFF
GO
ALTER TABLE [dbo].[DONDATHANG] ADD  DEFAULT ((0)) FOR [DaXoa]
GO
ALTER TABLE [dbo].[THANHVIEN] ADD  DEFAULT ('default.png') FOR [HinhDaiDien]
GO
ALTER TABLE [dbo].[BINHLUAN]  WITH CHECK ADD  CONSTRAINT [FK_BL_SP] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SANPHAM] ([MaSP])
GO
ALTER TABLE [dbo].[BINHLUAN] CHECK CONSTRAINT [FK_BL_SP]
GO
ALTER TABLE [dbo].[BINHLUAN]  WITH CHECK ADD  CONSTRAINT [FK_BL_TV] FOREIGN KEY([MaTV])
REFERENCES [dbo].[THANHVIEN] ([MaTV])
GO
ALTER TABLE [dbo].[BINHLUAN] CHECK CONSTRAINT [FK_BL_TV]
GO
ALTER TABLE [dbo].[CHITIETDONDATHANG]  WITH CHECK ADD  CONSTRAINT [FK_CTDDH_DDH] FOREIGN KEY([MaDDH])
REFERENCES [dbo].[DONDATHANG] ([MaDDH])
GO
ALTER TABLE [dbo].[CHITIETDONDATHANG] CHECK CONSTRAINT [FK_CTDDH_DDH]
GO
ALTER TABLE [dbo].[CHITIETDONDATHANG]  WITH CHECK ADD  CONSTRAINT [FK_CTDDH_SP] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SANPHAM] ([MaSP])
GO
ALTER TABLE [dbo].[CHITIETDONDATHANG] CHECK CONSTRAINT [FK_CTDDH_SP]
GO
ALTER TABLE [dbo].[CHITIETGIOHANG]  WITH CHECK ADD  CONSTRAINT [FK_CTGH_GH] FOREIGN KEY([MaGioHang])
REFERENCES [dbo].[GIOHANG] ([MaGioHang])
GO
ALTER TABLE [dbo].[CHITIETGIOHANG] CHECK CONSTRAINT [FK_CTGH_GH]
GO
ALTER TABLE [dbo].[CHITIETGIOHANG]  WITH CHECK ADD  CONSTRAINT [FK_CTGH_SP] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SANPHAM] ([MaSP])
GO
ALTER TABLE [dbo].[CHITIETGIOHANG] CHECK CONSTRAINT [FK_CTGH_SP]
GO
ALTER TABLE [dbo].[CHITIETPHIEUNHAP]  WITH CHECK ADD  CONSTRAINT [FK_CTPN_PN] FOREIGN KEY([MaPN])
REFERENCES [dbo].[PHIEUNHAP] ([MaPN])
GO
ALTER TABLE [dbo].[CHITIETPHIEUNHAP] CHECK CONSTRAINT [FK_CTPN_PN]
GO
ALTER TABLE [dbo].[CHITIETPHIEUNHAP]  WITH CHECK ADD  CONSTRAINT [FK_CTPN_SP] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SANPHAM] ([MaSP])
GO
ALTER TABLE [dbo].[CHITIETPHIEUNHAP] CHECK CONSTRAINT [FK_CTPN_SP]
GO
ALTER TABLE [dbo].[CHITIETPHUKIENSACDUPHONG]  WITH CHECK ADD  CONSTRAINT [FK_CTPKSAC_SANPHAM] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SANPHAM] ([MaSP])
GO
ALTER TABLE [dbo].[CHITIETPHUKIENSACDUPHONG] CHECK CONSTRAINT [FK_CTPKSAC_SANPHAM]
GO
ALTER TABLE [dbo].[CHITIETPHUKIENTAINGHE]  WITH CHECK ADD  CONSTRAINT [FK_CTPKTAINGHE_SANPHAM] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SANPHAM] ([MaSP])
GO
ALTER TABLE [dbo].[CHITIETPHUKIENTAINGHE] CHECK CONSTRAINT [FK_CTPKTAINGHE_SANPHAM]
GO
ALTER TABLE [dbo].[CHITIETSANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_CTSP_SANPHAM] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SANPHAM] ([MaSP])
GO
ALTER TABLE [dbo].[CHITIETSANPHAM] CHECK CONSTRAINT [FK_CTSP_SANPHAM]
GO
ALTER TABLE [dbo].[CONGNO]  WITH CHECK ADD  CONSTRAINT [FK_CongNo_NCC] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NHACUNGCAP] ([MaNCC])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CONGNO] CHECK CONSTRAINT [FK_CongNo_NCC]
GO
ALTER TABLE [dbo].[DONDATHANG]  WITH CHECK ADD  CONSTRAINT [FK_DDH_KH] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHACHHANG] ([MaKH])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DONDATHANG] CHECK CONSTRAINT [FK_DDH_KH]
GO
ALTER TABLE [dbo].[GIOHANG]  WITH CHECK ADD  CONSTRAINT [FK_GIOHANG_TV] FOREIGN KEY([MaTV])
REFERENCES [dbo].[THANHVIEN] ([MaTV])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GIOHANG] CHECK CONSTRAINT [FK_GIOHANG_TV]
GO
ALTER TABLE [dbo].[KHACHHANG]  WITH CHECK ADD  CONSTRAINT [FK_KH_TV] FOREIGN KEY([MaTV])
REFERENCES [dbo].[THANHVIEN] ([MaTV])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[KHACHHANG] CHECK CONSTRAINT [FK_KH_TV]
GO
ALTER TABLE [dbo].[LOAISANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_LSP_DM] FOREIGN KEY([MaDanhMuc])
REFERENCES [dbo].[DANHMUC] ([MaDanhMuc])
GO
ALTER TABLE [dbo].[LOAISANPHAM] CHECK CONSTRAINT [FK_LSP_DM]
GO
ALTER TABLE [dbo].[LOAITHANHVIEN_QUYEN]  WITH CHECK ADD  CONSTRAINT [FK_LTVQ_Q] FOREIGN KEY([MaQuyen])
REFERENCES [dbo].[QUYEN] ([MaQuyen])
GO
ALTER TABLE [dbo].[LOAITHANHVIEN_QUYEN] CHECK CONSTRAINT [FK_LTVQ_Q]
GO
ALTER TABLE [dbo].[LOAITHANHVIEN_QUYEN]  WITH CHECK ADD  CONSTRAINT [FK_LTVQ_TV] FOREIGN KEY([MaLoaiTV])
REFERENCES [dbo].[LOAITHANHVIEN] ([MaLoaiTV])
GO
ALTER TABLE [dbo].[LOAITHANHVIEN_QUYEN] CHECK CONSTRAINT [FK_LTVQ_TV]
GO
ALTER TABLE [dbo].[PHIEUNHAP]  WITH CHECK ADD  CONSTRAINT [FK_PN_NCC] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NHACUNGCAP] ([MaNCC])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PHIEUNHAP] CHECK CONSTRAINT [FK_PN_NCC]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_SP_KM] FOREIGN KEY([MaKhuyenMai])
REFERENCES [dbo].[KHUYENMAI] ([MaKhuyenMai])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [FK_SP_KM]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_SP_LSP] FOREIGN KEY([MaLoaiSP])
REFERENCES [dbo].[LOAISANPHAM] ([MaLoaiSP])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [FK_SP_LSP]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_SP_NCC] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NHACUNGCAP] ([MaNCC])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [FK_SP_NCC]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_SP_NSX] FOREIGN KEY([MaNSX])
REFERENCES [dbo].[NHASANXUAT] ([MaNSX])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [FK_SP_NSX]
GO
ALTER TABLE [dbo].[SANPHAM_MAU]  WITH CHECK ADD  CONSTRAINT [FK_SPMAU_MAU] FOREIGN KEY([MaMau])
REFERENCES [dbo].[MAU] ([MaMau])
GO
ALTER TABLE [dbo].[SANPHAM_MAU] CHECK CONSTRAINT [FK_SPMAU_MAU]
GO
ALTER TABLE [dbo].[SANPHAM_MAU]  WITH CHECK ADD  CONSTRAINT [FK_SPMAU_SP] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SANPHAM] ([MaSP])
GO
ALTER TABLE [dbo].[SANPHAM_MAU] CHECK CONSTRAINT [FK_SPMAU_SP]
GO
ALTER TABLE [dbo].[THANHVIEN]  WITH CHECK ADD  CONSTRAINT [FK_TV_LTV] FOREIGN KEY([MaLoaiTV])
REFERENCES [dbo].[LOAITHANHVIEN] ([MaLoaiTV])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[THANHVIEN] CHECK CONSTRAINT [FK_TV_LTV]
GO
USE [master]
GO
ALTER DATABASE [ShanimShopDB2] SET  READ_WRITE 
GO
