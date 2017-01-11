USE [QuanlyHoKinhDoanh]
GO
/****** Object:  Table [dbo].[DanhMuc]    Script Date: 01/12/2017 01:30:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMuc](
	[MaDanhMuc] [nvarchar](50) NOT NULL,
	[TenDanhMuc] [nvarchar](100) NULL,
 CONSTRAINT [PK_DanhMuc] PRIMARY KEY CLUSTERED 
(
	[MaDanhMuc] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (N'AccountController', N'Tài khoản')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (N'BaseController', N'Base')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (N'ChucNangController', N'Chức năng')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (N'HomeController', N'Trang chủ')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (N'HopDongKiotController', N'Hợp đồng')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (N'KiotController', N'Kiot')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (N'ManageController', N'Quản lý')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (N'PhanQuyenController', N'Phân quyền')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (N'ThongBaoController', N'Thông báo')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (N'UserController', N'User')
/****** Object:  Table [dbo].[ChuHoKinhDoanh]    Script Date: 01/12/2017 01:30:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuHoKinhDoanh](
	[MaKinhDoanh] [nchar](20) NOT NULL,
	[HoTen] [nvarchar](100) NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[SoCMT] [nvarchar](12) NOT NULL,
	[DiaChi] [nvarchar](500) NOT NULL,
	[GioiTinh] [nvarchar](50) NULL,
	[SoDienThoai] [nchar](15) NULL,
 CONSTRAINT [PK_ChuHoKinhDoanh] PRIMARY KEY CLUSTERED 
(
	[MaKinhDoanh] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ChuHoKinhDoanh] ([MaKinhDoanh], [HoTen], [NgaySinh], [SoCMT], [DiaChi], [GioiTinh], [SoDienThoai]) VALUES (N'CH123456789014      ', N'Hùng', CAST(0xD4230B00 AS Date), N'123456789014', N'32', N'Nam', N'432423423424234')
INSERT [dbo].[ChuHoKinhDoanh] ([MaKinhDoanh], [HoTen], [NgaySinh], [SoCMT], [DiaChi], [GioiTinh], [SoDienThoai]) VALUES (N'CH123456789017      ', N'Hùng', CAST(0xD4230B00 AS Date), N'123456789017', N'32', N'Nam', N'432423423424234')
INSERT [dbo].[ChuHoKinhDoanh] ([MaKinhDoanh], [HoTen], [NgaySinh], [SoCMT], [DiaChi], [GioiTinh], [SoDienThoai]) VALUES (N'CH123456789018      ', N'Hùng', CAST(0xD4230B00 AS Date), N'123456789018', N'32', N'Nam', N'432423423424234')
INSERT [dbo].[ChuHoKinhDoanh] ([MaKinhDoanh], [HoTen], [NgaySinh], [SoCMT], [DiaChi], [GioiTinh], [SoDienThoai]) VALUES (N'CH234234324242      ', N'Hùng', CAST(0xF2230B00 AS Date), N'234234324242', N'32', N'Nam', N'432423423424234')
INSERT [dbo].[ChuHoKinhDoanh] ([MaKinhDoanh], [HoTen], [NgaySinh], [SoCMT], [DiaChi], [GioiTinh], [SoDienThoai]) VALUES (N'CH234234342342      ', N'Hùng', CAST(0x0A230B00 AS Date), N'234234342342', N'23423423', N'Nam', N'234234535345345')
INSERT [dbo].[ChuHoKinhDoanh] ([MaKinhDoanh], [HoTen], [NgaySinh], [SoCMT], [DiaChi], [GioiTinh], [SoDienThoai]) VALUES (N'CH32323             ', N'abc', CAST(0x00000000 AS Date), N'32323', N'2232', N'Nam', NULL)
INSERT [dbo].[ChuHoKinhDoanh] ([MaKinhDoanh], [HoTen], [NgaySinh], [SoCMT], [DiaChi], [GioiTinh], [SoDienThoai]) VALUES (N'CH543543534534      ', N'34535', CAST(0xF3220B00 AS Date), N'543543534534', N'32', N'Nam', N'432423423424234')
INSERT [dbo].[ChuHoKinhDoanh] ([MaKinhDoanh], [HoTen], [NgaySinh], [SoCMT], [DiaChi], [GioiTinh], [SoDienThoai]) VALUES (N'CH545234234342      ', N'Hùng', CAST(0x1EC10600 AS Date), N'545234234342', N'4234', N'Nam', N'432423424242423')
INSERT [dbo].[ChuHoKinhDoanh] ([MaKinhDoanh], [HoTen], [NgaySinh], [SoCMT], [DiaChi], [GioiTinh], [SoDienThoai]) VALUES (N'CH676765756756      ', N'Hùng', CAST(0xBC220B00 AS Date), N'676765756756', N'32', N'Nam', N'432423423424234')
/****** Object:  Table [dbo].[PhanQuyen]    Script Date: 01/12/2017 01:30:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanQuyen](
	[MaQuyen] [int] NOT NULL,
	[LoaiQuyen] [nvarchar](50) NOT NULL,
	[MoTa] [nvarchar](500) NULL,
 CONSTRAINT [PK_PhanQuyen] PRIMARY KEY CLUSTERED 
(
	[MaQuyen] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[PhanQuyen] ([MaQuyen], [LoaiQuyen], [MoTa]) VALUES (1, N'Quản trị viên', N'Toàn quyền')
INSERT [dbo].[PhanQuyen] ([MaQuyen], [LoaiQuyen], [MoTa]) VALUES (2, N'Kế toán', N'Trả lương nhân viên, thu tiền phí, thuế của chủ hộ kinh doanh, đưa thông báo cho các chủ hộ,đổi pass,...')
INSERT [dbo].[PhanQuyen] ([MaQuyen], [LoaiQuyen], [MoTa]) VALUES (3, N'Bảo vệ', N'Xem danh sách nhân viên, chủ hộ kinh doanh, tiền lương đổi pass,...')
INSERT [dbo].[PhanQuyen] ([MaQuyen], [LoaiQuyen], [MoTa]) VALUES (4, N'Nhân viên vệ sinh', N'giống với bảo vệ')
INSERT [dbo].[PhanQuyen] ([MaQuyen], [LoaiQuyen], [MoTa]) VALUES (5, N'Chủ hộ kinh doanh', N'Xem thông tin, đổi pass,')
/****** Object:  Table [dbo].[NhanVien]    Script Date: 01/12/2017 01:30:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNhanVien] [nchar](20) NOT NULL,
	[HoTen] [nvarchar](100) NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[SoCMT] [nvarchar](12) NOT NULL,
	[DiaChi] [nvarchar](500) NOT NULL,
	[GioiTinh] [nvarchar](50) NULL,
	[NgayBatDau] [date] NULL,
	[NgayKetThuc] [date] NULL,
	[SoDienThoai] [nchar](15) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [SoCMT], [DiaChi], [GioiTinh], [NgayBatDau], [NgayKetThuc], [SoDienThoai]) VALUES (N'NV121212121212      ', N'abc', CAST(0x72AE0600 AS Date), N'121212121212', N'121', N'Nam', CAST(0x403C0B00 AS Date), NULL, N'+849640121231  ')
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [SoCMT], [DiaChi], [GioiTinh], [NgayBatDau], [NgayKetThuc], [SoDienThoai]) VALUES (N'NV123456780         ', N'abc', CAST(0x7E0F0000 AS Date), N'123456780', N'1', N'Nam', CAST(0x403C0B00 AS Date), NULL, N'+849640121231  ')
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [SoCMT], [DiaChi], [GioiTinh], [NgayBatDau], [NgayKetThuc], [SoDienThoai]) VALUES (N'NV12345678012       ', N'abc', CAST(0x7E0F0000 AS Date), N'12345678012', N'1', N'Nam', CAST(0x403C0B00 AS Date), NULL, N'+849640121231  ')
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [SoCMT], [DiaChi], [GioiTinh], [NgayBatDau], [NgayKetThuc], [SoDienThoai]) VALUES (N'NV123456780123      ', N'abc', CAST(0x7E0F0000 AS Date), N'123456780123', N'1', N'Nam', CAST(0x403C0B00 AS Date), NULL, N'+849640121231  ')
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [SoCMT], [DiaChi], [GioiTinh], [NgayBatDau], [NgayKetThuc], [SoDienThoai]) VALUES (N'NV123456780127      ', N'abc', CAST(0x7E0F0000 AS Date), N'123456780127', N'1', N'Nam', CAST(0x403C0B00 AS Date), NULL, N'+849640121231  ')
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [SoCMT], [DiaChi], [GioiTinh], [NgayBatDau], [NgayKetThuc], [SoDienThoai]) VALUES (N'NV123456789         ', N'abc', CAST(0xD32F0600 AS Date), N'123456789', N'1', N'Nam', CAST(0x403C0B00 AS Date), NULL, N'0123456789     ')
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [SoCMT], [DiaChi], [GioiTinh], [NgayBatDau], [NgayKetThuc], [SoDienThoai]) VALUES (N'NV123456789000      ', N'abc', CAST(0xD32F0600 AS Date), N'123456789000', N'1', N'Nam', CAST(0x403C0B00 AS Date), NULL, N'0123456789     ')
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [SoCMT], [DiaChi], [GioiTinh], [NgayBatDau], [NgayKetThuc], [SoDienThoai]) VALUES (N'NV123456789012      ', N'abc', CAST(0xE4300600 AS Date), N'123456789012', N'111', N'Nam', CAST(0x403C0B00 AS Date), NULL, N'123            ')
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [SoCMT], [DiaChi], [GioiTinh], [NgayBatDau], [NgayKetThuc], [SoDienThoai]) VALUES (N'NV123456789015      ', N'Hùng', CAST(0xC31E0B00 AS Date), N'123456789015', N'1', N'Nam', CAST(0x403C0B00 AS Date), NULL, N'432423423424234')
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [SoCMT], [DiaChi], [GioiTinh], [NgayBatDau], [NgayKetThuc], [SoDienThoai]) VALUES (N'NV123456789016      ', N'abc', CAST(0x3A010000 AS Date), N'123456789016', N'1', N'Nam', CAST(0x403C0B00 AS Date), NULL, N'243423432423423')
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [SoCMT], [DiaChi], [GioiTinh], [NgayBatDau], [NgayKetThuc], [SoDienThoai]) VALUES (N'NV123456789018      ', N'Hùng', CAST(0xF3220B00 AS Date), N'123456789018', N'1', N'Nam', CAST(0x403C0B00 AS Date), NULL, N'432423423424234')
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [SoCMT], [DiaChi], [GioiTinh], [NgayBatDau], [NgayKetThuc], [SoDienThoai]) VALUES (N'NV132321321321      ', N'hùng', CAST(0xF3230B00 AS Date), N'132321321321', N'32', N'Nam', CAST(0x413C0B00 AS Date), NULL, N'432423423424234')
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [SoCMT], [DiaChi], [GioiTinh], [NgayBatDau], [NgayKetThuc], [SoDienThoai]) VALUES (N'NV132423425423      ', N'Hùng', CAST(0x0A230B00 AS Date), N'132423425423', N'1', N'Nam', CAST(0x413C0B00 AS Date), NULL, N'234234234234234')
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [SoCMT], [DiaChi], [GioiTinh], [NgayBatDau], [NgayKetThuc], [SoDienThoai]) VALUES (N'NV423434234234      ', N'Hùng', CAST(0x8D1F0B00 AS Date), N'423434234234', N'2', N'Nam', CAST(0x403C0B00 AS Date), NULL, N'242342343242231')
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [SoCMT], [DiaChi], [GioiTinh], [NgayBatDau], [NgayKetThuc], [SoDienThoai]) VALUES (N'NV424224234242      ', N'á bcd', CAST(0x8D1F0B00 AS Date), N'424224234242', N'1', N'Nam', CAST(0x413C0B00 AS Date), NULL, N'234345345534534')
INSERT [dbo].[NhanVien] ([MaNhanVien], [HoTen], [NgaySinh], [SoCMT], [DiaChi], [GioiTinh], [NgayBatDau], [NgayKetThuc], [SoDienThoai]) VALUES (N'NV432423423423      ', N'34545', CAST(0xD4230B00 AS Date), N'432423423423', N'2342423', N'Nam', CAST(0x413C0B00 AS Date), NULL, N'432423423424234')
/****** Object:  Table [dbo].[NangCapCho]    Script Date: 01/12/2017 01:30:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NangCapCho](
	[MaNangCap] [nvarchar](50) NOT NULL,
	[Ten] [nvarchar](50) NULL,
	[MoTa] [nvarchar](50) NULL,
	[SoTien] [float] NULL,
 CONSTRAINT [PK_NangCapCho] PRIMARY KEY CLUSTERED 
(
	[MaNangCap] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kiot]    Script Date: 01/12/2017 01:30:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kiot](
	[MaKiot] [nchar](10) NOT NULL,
	[DienTich] [float] NOT NULL,
	[SoTT] [int] NOT NULL,
	[Tang] [int] NOT NULL,
	[TrangThai] [bit] NOT NULL,
 CONSTRAINT [PK_Kiot] PRIMARY KEY CLUSTERED 
(
	[MaKiot] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Kiot] ([MaKiot], [DienTich], [SoTT], [Tang], [TrangThai]) VALUES (N'T1STT101  ', 10.2, 101, 1, 1)
INSERT [dbo].[Kiot] ([MaKiot], [DienTich], [SoTT], [Tang], [TrangThai]) VALUES (N'T1STT35   ', 2432, 35, 1, 0)
INSERT [dbo].[Kiot] ([MaKiot], [DienTich], [SoTT], [Tang], [TrangThai]) VALUES (N'T2STT1    ', 456546, 1, 2, 0)
INSERT [dbo].[Kiot] ([MaKiot], [DienTich], [SoTT], [Tang], [TrangThai]) VALUES (N'T2STT102  ', 1231, 102, 2, 0)
INSERT [dbo].[Kiot] ([MaKiot], [DienTich], [SoTT], [Tang], [TrangThai]) VALUES (N'T2STT121  ', 2, 121, 2, 1)
INSERT [dbo].[Kiot] ([MaKiot], [DienTich], [SoTT], [Tang], [TrangThai]) VALUES (N'T2STT2423 ', 23, 2423, 2, 0)
INSERT [dbo].[Kiot] ([MaKiot], [DienTich], [SoTT], [Tang], [TrangThai]) VALUES (N'T34STT102 ', 2, 102, 34, 0)
INSERT [dbo].[Kiot] ([MaKiot], [DienTich], [SoTT], [Tang], [TrangThai]) VALUES (N'T34STT345 ', 3, 345, 34, 0)
INSERT [dbo].[Kiot] ([MaKiot], [DienTich], [SoTT], [Tang], [TrangThai]) VALUES (N'T3STT3    ', 4, 3, 3, 1)
/****** Object:  Table [dbo].[HopDongKiot]    Script Date: 01/12/2017 01:30:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HopDongKiot](
	[MaHopDong] [uniqueidentifier] NOT NULL,
	[MaKinhDoanh] [nchar](20) NOT NULL,
	[MaKiot] [nchar](10) NOT NULL,
	[NgayBatDau] [date] NOT NULL,
	[NgayKetThuc] [date] NOT NULL,
	[TrangThai] [bit] NOT NULL,
	[GiaThue] [float] NOT NULL,
 CONSTRAINT [PK_KiotThuocChuHo] PRIMARY KEY CLUSTERED 
(
	[MaHopDong] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[HopDongKiot] ([MaHopDong], [MaKinhDoanh], [MaKiot], [NgayBatDau], [NgayKetThuc], [TrangThai], [GiaThue]) VALUES (N'1e982ad9-6dac-419f-8355-6593528d6f99', N'CH123456789017      ', N'T34STT345 ', CAST(0x4C3C0B00 AS Date), CAST(0xB93D0B00 AS Date), 1, 2343242)
INSERT [dbo].[HopDongKiot] ([MaHopDong], [MaKinhDoanh], [MaKiot], [NgayBatDau], [NgayKetThuc], [TrangThai], [GiaThue]) VALUES (N'338a8f8a-597f-4e5d-877c-6d49cdf057d0', N'CH123456789014      ', N'T1STT101  ', CAST(0xDB3A0B00 AS Date), CAST(0x493C0B00 AS Date), 0, 123)
/****** Object:  Table [dbo].[ChucNang]    Script Date: 01/12/2017 01:30:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucNang](
	[Ma] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[MoTa] [nvarchar](500) NULL,
	[MaDanhMuc] [nvarchar](50) NULL,
 CONSTRAINT [PK_QuanLy] PRIMARY KEY CLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ChucNang] ON
INSERT [dbo].[ChucNang] ([Ma], [Ten], [MoTa], [MaDanhMuc]) VALUES (1, N'AccountController-AccountChuHo', N'Lấy danh sách chủ hộ', N'AccountController')
INSERT [dbo].[ChucNang] ([Ma], [Ten], [MoTa], [MaDanhMuc]) VALUES (3, N'AccountController-Create', N'Tạo tài khoản mới (get)', N'AccountController')
INSERT [dbo].[ChucNang] ([Ma], [Ten], [MoTa], [MaDanhMuc]) VALUES (4, N'AccountController-Create', N'Tạo tài khoản mới (post)', N'AccountController')
INSERT [dbo].[ChucNang] ([Ma], [Ten], [MoTa], [MaDanhMuc]) VALUES (5, N'AccountController-Delete', N'Xóa tài khoản', N'AccountController')
INSERT [dbo].[ChucNang] ([Ma], [Ten], [MoTa], [MaDanhMuc]) VALUES (6, N'AccountController-Edit', N'Sửa tài khoản (get)', N'AccountController')
INSERT [dbo].[ChucNang] ([Ma], [Ten], [MoTa], [MaDanhMuc]) VALUES (7, N'AccountController-Edit', N'Sửa tài khoản (post)', N'AccountController')
INSERT [dbo].[ChucNang] ([Ma], [Ten], [MoTa], [MaDanhMuc]) VALUES (8, N'AccountController-Index', N'Lấy danh sách nhân viên', N'AccountController')
INSERT [dbo].[ChucNang] ([Ma], [Ten], [MoTa], [MaDanhMuc]) VALUES (9, N'BaseController-SetAlert', N'SetAlert', N'BaseController')
INSERT [dbo].[ChucNang] ([Ma], [Ten], [MoTa], [MaDanhMuc]) VALUES (10, N'ChucNangController-Delete', N'Xóa chức năng', N'ChucNangController')
INSERT [dbo].[ChucNang] ([Ma], [Ten], [MoTa], [MaDanhMuc]) VALUES (11, N'ChucNangController-Edit', N'Sửa chức năng', N'ChucNangController')
INSERT [dbo].[ChucNang] ([Ma], [Ten], [MoTa], [MaDanhMuc]) VALUES (12, N'ChucNangController-Edit', N'Sửa chức năng (post)', N'ChucNangController')
INSERT [dbo].[ChucNang] ([Ma], [Ten], [MoTa], [MaDanhMuc]) VALUES (13, N'ChucNangController-Index', N'Lấy danh sách chức năng', N'ChucNangController')
INSERT [dbo].[ChucNang] ([Ma], [Ten], [MoTa], [MaDanhMuc]) VALUES (15, N'HomeController-Details', N'Xem tin tức', N'HomeController')
INSERT [dbo].[ChucNang] ([Ma], [Ten], [MoTa], [MaDanhMuc]) VALUES (16, N'HomeController-Index', N'Trang chủ', N'HomeController')
INSERT [dbo].[ChucNang] ([Ma], [Ten], [MoTa], [MaDanhMuc]) VALUES (17, N'HomeController-NewsPartial', N'Load Partia tin tức mớil', N'HomeController')
INSERT [dbo].[ChucNang] ([Ma], [Ten], [MoTa], [MaDanhMuc]) VALUES (18, N'HopDongKiotController-Create', N'Tạo mới hợp đồng (get)', N'HopDongKiotController')
INSERT [dbo].[ChucNang] ([Ma], [Ten], [MoTa], [MaDanhMuc]) VALUES (19, N'HopDongKiotController-Create', N'Tạo mới hợp đồng (post)', N'HopDongKiotController')
INSERT [dbo].[ChucNang] ([Ma], [Ten], [MoTa], [MaDanhMuc]) VALUES (20, N'HopDongKiotController-Delete', N'Xóa hợp đồng', N'HopDongKiotController')
INSERT [dbo].[ChucNang] ([Ma], [Ten], [MoTa], [MaDanhMuc]) VALUES (21, N'HopDongKiotController-Details', N'Xem hợp đồng', N'HopDongKiotController')
INSERT [dbo].[ChucNang] ([Ma], [Ten], [MoTa], [MaDanhMuc]) VALUES (25, N'HopDongKiotController-Index', N'Danh sách tất cả hợp đồng', N'HopDongKiotController')
INSERT [dbo].[ChucNang] ([Ma], [Ten], [MoTa], [MaDanhMuc]) VALUES (26, N'KiotController-Create', N'Tạo mới kiot (get)', N'KiotController')
INSERT [dbo].[ChucNang] ([Ma], [Ten], [MoTa], [MaDanhMuc]) VALUES (27, N'KiotController-Create', N'Tạo mới kiot (post)', N'KiotController')
INSERT [dbo].[ChucNang] ([Ma], [Ten], [MoTa], [MaDanhMuc]) VALUES (28, N'KiotController-Delete', N'Xóa kiot', N'KiotController')
INSERT [dbo].[ChucNang] ([Ma], [Ten], [MoTa], [MaDanhMuc]) VALUES (29, N'KiotController-Edit', N'Sửa kiot (get)', N'KiotController')
INSERT [dbo].[ChucNang] ([Ma], [Ten], [MoTa], [MaDanhMuc]) VALUES (30, N'KiotController-Edit', N'Sửa kiot (post)', N'KiotController')
INSERT [dbo].[ChucNang] ([Ma], [Ten], [MoTa], [MaDanhMuc]) VALUES (31, N'KiotController-Index', N'Danh sách kiot', N'KiotController')
INSERT [dbo].[ChucNang] ([Ma], [Ten], [MoTa], [MaDanhMuc]) VALUES (32, N'ManageController-Index', N'Trang quản lý', N'ManageController')
INSERT [dbo].[ChucNang] ([Ma], [Ten], [MoTa], [MaDanhMuc]) VALUES (33, N'ManageController-ManagePartial', N'Danh sách các chức năng quản lý', N'ManageController')
INSERT [dbo].[ChucNang] ([Ma], [Ten], [MoTa], [MaDanhMuc]) VALUES (34, N'PhanQuyenController-Create', N'Tạo phân quyền (get)', N'PhanQuyenController')
INSERT [dbo].[ChucNang] ([Ma], [Ten], [MoTa], [MaDanhMuc]) VALUES (35, N'PhanQuyenController-Create', N'Tạo phân quyền (post)', N'PhanQuyenController')
INSERT [dbo].[ChucNang] ([Ma], [Ten], [MoTa], [MaDanhMuc]) VALUES (36, N'PhanQuyenController-Delete', N'Xóa quyền người dùng', N'PhanQuyenController')
INSERT [dbo].[ChucNang] ([Ma], [Ten], [MoTa], [MaDanhMuc]) VALUES (37, N'PhanQuyenController-Edit', N'Sửa quyền nhóm người dùng (get)', N'PhanQuyenController')
INSERT [dbo].[ChucNang] ([Ma], [Ten], [MoTa], [MaDanhMuc]) VALUES (38, N'PhanQuyenController-Edit', N'Sửa quyền nhóm người (post)', N'PhanQuyenController')
INSERT [dbo].[ChucNang] ([Ma], [Ten], [MoTa], [MaDanhMuc]) VALUES (39, N'PhanQuyenController-Index', N'Danh sách nhóm người dùng', N'PhanQuyenController')
INSERT [dbo].[ChucNang] ([Ma], [Ten], [MoTa], [MaDanhMuc]) VALUES (40, N'ThongBaoController-Create', N'Tạo thông báo (get)', N'ThongBaoController')
INSERT [dbo].[ChucNang] ([Ma], [Ten], [MoTa], [MaDanhMuc]) VALUES (41, N'ThongBaoController-Create', N'Tạo thông báo (post)', N'ThongBaoController')
INSERT [dbo].[ChucNang] ([Ma], [Ten], [MoTa], [MaDanhMuc]) VALUES (42, N'ThongBaoController-Delete', N'Xóa thông báo', N'ThongBaoController')
INSERT [dbo].[ChucNang] ([Ma], [Ten], [MoTa], [MaDanhMuc]) VALUES (43, N'ThongBaoController-Details', N'Xem thông báo', N'ThongBaoController')
INSERT [dbo].[ChucNang] ([Ma], [Ten], [MoTa], [MaDanhMuc]) VALUES (44, N'ThongBaoController-Edit', N'Sửa thông báo (get)', N'ThongBaoController')
INSERT [dbo].[ChucNang] ([Ma], [Ten], [MoTa], [MaDanhMuc]) VALUES (45, N'ThongBaoController-Edit', N'Sửa thông báo (post)', N'ThongBaoController')
INSERT [dbo].[ChucNang] ([Ma], [Ten], [MoTa], [MaDanhMuc]) VALUES (46, N'ThongBaoController-Index', N'Danh sách thong báo', N'ThongBaoController')
INSERT [dbo].[ChucNang] ([Ma], [Ten], [MoTa], [MaDanhMuc]) VALUES (47, N'UserController-ChangeMatKhau', N'Đổi mật khẩu (get)', N'UserController')
INSERT [dbo].[ChucNang] ([Ma], [Ten], [MoTa], [MaDanhMuc]) VALUES (48, N'UserController-ChangeMatKhau', N'Đổi mật khẩu (post)', N'UserController')
INSERT [dbo].[ChucNang] ([Ma], [Ten], [MoTa], [MaDanhMuc]) VALUES (49, N'UserController-Index', N'Đăng nhập (get)', N'UserController')
INSERT [dbo].[ChucNang] ([Ma], [Ten], [MoTa], [MaDanhMuc]) VALUES (50, N'UserController-Login', N'Đăng nhập', N'UserController')
INSERT [dbo].[ChucNang] ([Ma], [Ten], [MoTa], [MaDanhMuc]) VALUES (51, N'UserController-Logout', N'Đăng xuất', N'UserController')
INSERT [dbo].[ChucNang] ([Ma], [Ten], [MoTa], [MaDanhMuc]) VALUES (53, N'AccountController-ChangeTrangThai', N'Thay đổi trạng thái tài khoản', N'AccountController')
INSERT [dbo].[ChucNang] ([Ma], [Ten], [MoTa], [MaDanhMuc]) VALUES (55, N'ChucNangController-UpdateChucNang', N'Cập nhật danh sách chức năng', N'ChucNangController')
INSERT [dbo].[ChucNang] ([Ma], [Ten], [MoTa], [MaDanhMuc]) VALUES (57, N'HopDongKiotController-DownloadPartialViewPDF', N'Tải hợp đồng dạng PDF', N'HopDongKiotController')
INSERT [dbo].[ChucNang] ([Ma], [Ten], [MoTa], [MaDanhMuc]) VALUES (61, N'HopDongKiotController-HopDongPartial', N'Hợp đồng html', N'HopDongKiotController')
INSERT [dbo].[ChucNang] ([Ma], [Ten], [MoTa], [MaDanhMuc]) VALUES (62, N'HopDongKiotController-HopDongChuHo', N'Danh sách hợp đồng của chủ hộ', N'HopDongKiotController')
SET IDENTITY_INSERT [dbo].[ChucNang] OFF
/****** Object:  Table [dbo].[Account]    Script Date: 01/12/2017 01:30:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[UserID] [nchar](20) NOT NULL,
	[MatKhau] [nvarchar](32) NOT NULL,
	[TrangThai] [bit] NOT NULL,
	[MaQuyen] [int] NOT NULL,
	[Email] [nchar](100) NULL,
	[Image] [image] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Account] ([UserID], [MatKhau], [TrangThai], [MaQuyen], [Email], [Image]) VALUES (N'admin               ', N'e10adc3949ba59abbe56e057f20f883e', 1, 1, N'a@gmail.com                                                                                         ', NULL)
INSERT [dbo].[Account] ([UserID], [MatKhau], [TrangThai], [MaQuyen], [Email], [Image]) VALUES (N'CH123456789014      ', N'e10adc3949ba59abbe56e057f20f883e', 1, 5, N'pike@yahoo.com                                                                                      ', NULL)
INSERT [dbo].[Account] ([UserID], [MatKhau], [TrangThai], [MaQuyen], [Email], [Image]) VALUES (N'CH123456789017      ', N'0c35afb631f305a9645ad12e070ceaf0', 1, 5, N'pike@yahoo.com                                                                                      ', NULL)
INSERT [dbo].[Account] ([UserID], [MatKhau], [TrangThai], [MaQuyen], [Email], [Image]) VALUES (N'CH123456789018      ', N'268926603f8bad45af82afe6919e127f', 1, 5, N'pike@yahoo.com                                                                                      ', NULL)
INSERT [dbo].[Account] ([UserID], [MatKhau], [TrangThai], [MaQuyen], [Email], [Image]) VALUES (N'CH234234324242      ', N'0df8c69e54a8453637a304eb21dfcf35', 1, 5, N'pike@yahoo.com                                                                                      ', NULL)
INSERT [dbo].[Account] ([UserID], [MatKhau], [TrangThai], [MaQuyen], [Email], [Image]) VALUES (N'CH234234342342      ', N'66c2ffea5235af71de65aaeab2f6b9e7', 1, 5, N'pike@yahoo.com                                                                                      ', NULL)
INSERT [dbo].[Account] ([UserID], [MatKhau], [TrangThai], [MaQuyen], [Email], [Image]) VALUES (N'CH32323             ', N'e10adc3949ba59abbe56e057f20f883e', 1, 5, N'a@a.c                                                                                               ', NULL)
INSERT [dbo].[Account] ([UserID], [MatKhau], [TrangThai], [MaQuyen], [Email], [Image]) VALUES (N'CH543543534534      ', N'e90936233225781f02b9b2f0c8308cc6', 1, 5, N'pike@yahoo.com                                                                                      ', NULL)
INSERT [dbo].[Account] ([UserID], [MatKhau], [TrangThai], [MaQuyen], [Email], [Image]) VALUES (N'CH545234234342      ', N'34343', 1, 5, N'pike@yahoo.com                                                                                      ', NULL)
INSERT [dbo].[Account] ([UserID], [MatKhau], [TrangThai], [MaQuyen], [Email], [Image]) VALUES (N'CH676765756754      ', N'CH676765756754', 1, 5, N'534                                                                                                 ', NULL)
INSERT [dbo].[Account] ([UserID], [MatKhau], [TrangThai], [MaQuyen], [Email], [Image]) VALUES (N'CH676765756756      ', N'07fca780095744c74e539b610a0a6453', 1, 5, N'pike@yahoo.com                                                                                      ', NULL)
INSERT [dbo].[Account] ([UserID], [MatKhau], [TrangThai], [MaQuyen], [Email], [Image]) VALUES (N'NV121212121212      ', N'1ec1217f3b8bba7b0d1babe0ef0febed', 1, 2, N'a@a.c                                                                                               ', NULL)
INSERT [dbo].[Account] ([UserID], [MatKhau], [TrangThai], [MaQuyen], [Email], [Image]) VALUES (N'NV123456780         ', N'e4f009483afd5124dc1bdc5c57af9b06', 1, 2, N'a@a.c                                                                                               ', NULL)
INSERT [dbo].[Account] ([UserID], [MatKhau], [TrangThai], [MaQuyen], [Email], [Image]) VALUES (N'NV12345678012       ', N'e95f3ffa51eff7ec7664e7c082d28d8e', 1, 2, N'a@a.c                                                                                               ', NULL)
INSERT [dbo].[Account] ([UserID], [MatKhau], [TrangThai], [MaQuyen], [Email], [Image]) VALUES (N'NV123456780123      ', N'bd28941c0f05c0c76e620b1f71180c6f', 1, 2, N'a@a.c                                                                                               ', NULL)
INSERT [dbo].[Account] ([UserID], [MatKhau], [TrangThai], [MaQuyen], [Email], [Image]) VALUES (N'NV123456780127      ', N'f4314b3359e18c4f081445c51ffec442', 1, 2, N'a@a.c                                                                                               ', NULL)
INSERT [dbo].[Account] ([UserID], [MatKhau], [TrangThai], [MaQuyen], [Email], [Image]) VALUES (N'NV123456789         ', N'c059898ce72c076e94e236a125695af4', 1, 2, N'a@a.c                                                                                               ', NULL)
INSERT [dbo].[Account] ([UserID], [MatKhau], [TrangThai], [MaQuyen], [Email], [Image]) VALUES (N'NV123456789000      ', N'15ca0d5dff71fc8d3038d88fc63a51b2', 1, 2, N'a@a.c                                                                                               ', NULL)
INSERT [dbo].[Account] ([UserID], [MatKhau], [TrangThai], [MaQuyen], [Email], [Image]) VALUES (N'NV123456789012      ', N'33ea9169cc6289b42b1526465e3a4416', 1, 2, N'a@a.c                                                                                               ', NULL)
INSERT [dbo].[Account] ([UserID], [MatKhau], [TrangThai], [MaQuyen], [Email], [Image]) VALUES (N'NV123456789015      ', N'66610cece06745582ec066f602567dc0', 1, 2, N'pike@yahoo.com                                                                                      ', NULL)
INSERT [dbo].[Account] ([UserID], [MatKhau], [TrangThai], [MaQuyen], [Email], [Image]) VALUES (N'NV123456789016      ', N'5ec47ea4faeea5611bcfaf94322ae8f0', 1, 2, N'a@a.c                                                                                               ', NULL)
INSERT [dbo].[Account] ([UserID], [MatKhau], [TrangThai], [MaQuyen], [Email], [Image]) VALUES (N'NV123456789018      ', N'46c2c42e939f56d53404a83885bf1dfe', 1, 2, N'pike@yahoo.com                                                                                      ', NULL)
INSERT [dbo].[Account] ([UserID], [MatKhau], [TrangThai], [MaQuyen], [Email], [Image]) VALUES (N'NV132321321321      ', N'f7b5b97620f0e2fc4529a0089d2619a9', 1, 2, N'pike@yahoo.com                                                                                      ', NULL)
INSERT [dbo].[Account] ([UserID], [MatKhau], [TrangThai], [MaQuyen], [Email], [Image]) VALUES (N'NV132423425423      ', N'29e0ac75bf069eaae91c97a740dacf75', 0, 2, N'1@a.c                                                                                               ', NULL)
INSERT [dbo].[Account] ([UserID], [MatKhau], [TrangThai], [MaQuyen], [Email], [Image]) VALUES (N'NV423434234234      ', N'eeb81a83f015e245e5d43e3e26fd4a4c', 1, 2, N'2@b.c                                                                                               ', NULL)
INSERT [dbo].[Account] ([UserID], [MatKhau], [TrangThai], [MaQuyen], [Email], [Image]) VALUES (N'NV424224234242      ', N'60dfe5cdd18e3e2ab20428e92c1b1a3c', 1, 2, N'3424234@a.c                                                                                         ', NULL)
INSERT [dbo].[Account] ([UserID], [MatKhau], [TrangThai], [MaQuyen], [Email], [Image]) VALUES (N'NV432423423423      ', N'5387eee113712c785d810ab9a7655a0c', 1, 2, N'pike@yahoo.com                                                                                      ', NULL)
/****** Object:  Table [dbo].[TienLuongNV]    Script Date: 01/12/2017 01:30:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TienLuongNV](
	[MaNhanVien] [nchar](20) NOT NULL,
	[LuongCoBan] [int] NULL,
	[MucLuong] [float] NULL,
	[NgayNhan] [date] NULL,
	[TienLuong] [float] NULL,
	[TinhTrang] [bit] NULL,
 CONSTRAINT [PK_TienLuongNV] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TienDienNuoc]    Script Date: 01/12/2017 01:30:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TienDienNuoc](
	[ID] [nvarchar](50) NOT NULL,
	[MaKinhDoanh] [nchar](20) NOT NULL,
	[NgayGhi] [date] NOT NULL,
	[SoDien] [int] NOT NULL,
	[GiaDien] [int] NOT NULL,
	[TienDien] [int] NOT NULL,
	[SoKhoiNuoc] [int] NOT NULL,
	[GiaNuoc] [int] NOT NULL,
	[TienNuoc] [int] NOT NULL,
	[TinhTrang] [bit] NULL,
 CONSTRAINT [PK_TienDienNuoc] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Thue]    Script Date: 01/12/2017 01:30:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Thue](
	[MaThue] [nvarchar](50) NOT NULL,
	[MaKinhDoanh] [nchar](20) NOT NULL,
	[ThuNhapHangThang] [nvarchar](50) NOT NULL,
	[TienThue] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Thue] PRIMARY KEY CLUSTERED 
(
	[MaThue] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhiHoKinhDoanh]    Script Date: 01/12/2017 01:30:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhiHoKinhDoanh](
	[MaPhi] [nvarchar](50) NOT NULL,
	[MaKinhDoanh] [nchar](20) NOT NULL,
	[TenPhi] [nvarchar](50) NOT NULL,
	[SoTien] [nvarchar](50) NOT NULL,
	[NgayThu] [date] NULL,
	[TinhTrang] [bit] NOT NULL,
	[MoTa] [nvarchar](4000) NULL,
 CONSTRAINT [PK_PhiHoKinhDoanh] PRIMARY KEY CLUSTERED 
(
	[MaPhi] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThietBi]    Script Date: 01/12/2017 01:30:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThietBi](
	[MaThietBi] [nvarchar](50) NOT NULL,
	[TenThietBi] [nvarchar](50) NULL,
	[SoLuong] [nvarchar](50) NULL,
	[NgayKiemTra] [date] NULL,
	[MaNhanVien] [nchar](20) NOT NULL,
 CONSTRAINT [PK_ThietBi] PRIMARY KEY CLUSTERED 
(
	[MaThietBi] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quyen]    Script Date: 01/12/2017 01:30:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quyen](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MaQuyen] [int] NOT NULL,
	[Ma] [int] NOT NULL,
 CONSTRAINT [PK_Quyen_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Quyen] ON
INSERT [dbo].[Quyen] ([ID], [MaQuyen], [Ma]) VALUES (1, 2, 1)
INSERT [dbo].[Quyen] ([ID], [MaQuyen], [Ma]) VALUES (3, 2, 8)
INSERT [dbo].[Quyen] ([ID], [MaQuyen], [Ma]) VALUES (7, 2, 21)
INSERT [dbo].[Quyen] ([ID], [MaQuyen], [Ma]) VALUES (8, 2, 25)
INSERT [dbo].[Quyen] ([ID], [MaQuyen], [Ma]) VALUES (9, 2, 57)
INSERT [dbo].[Quyen] ([ID], [MaQuyen], [Ma]) VALUES (10, 2, 61)
INSERT [dbo].[Quyen] ([ID], [MaQuyen], [Ma]) VALUES (11, 2, 31)
INSERT [dbo].[Quyen] ([ID], [MaQuyen], [Ma]) VALUES (12, 2, 32)
INSERT [dbo].[Quyen] ([ID], [MaQuyen], [Ma]) VALUES (13, 2, 33)
INSERT [dbo].[Quyen] ([ID], [MaQuyen], [Ma]) VALUES (14, 2, 46)
INSERT [dbo].[Quyen] ([ID], [MaQuyen], [Ma]) VALUES (15, 2, 44)
INSERT [dbo].[Quyen] ([ID], [MaQuyen], [Ma]) VALUES (16, 2, 45)
INSERT [dbo].[Quyen] ([ID], [MaQuyen], [Ma]) VALUES (17, 2, 40)
INSERT [dbo].[Quyen] ([ID], [MaQuyen], [Ma]) VALUES (18, 2, 41)
INSERT [dbo].[Quyen] ([ID], [MaQuyen], [Ma]) VALUES (19, 2, 42)
INSERT [dbo].[Quyen] ([ID], [MaQuyen], [Ma]) VALUES (20, 2, 43)
INSERT [dbo].[Quyen] ([ID], [MaQuyen], [Ma]) VALUES (21, 2, 50)
INSERT [dbo].[Quyen] ([ID], [MaQuyen], [Ma]) VALUES (22, 2, 49)
INSERT [dbo].[Quyen] ([ID], [MaQuyen], [Ma]) VALUES (23, 2, 51)
INSERT [dbo].[Quyen] ([ID], [MaQuyen], [Ma]) VALUES (24, 2, 47)
INSERT [dbo].[Quyen] ([ID], [MaQuyen], [Ma]) VALUES (25, 2, 48)
INSERT [dbo].[Quyen] ([ID], [MaQuyen], [Ma]) VALUES (26, 3, 1)
INSERT [dbo].[Quyen] ([ID], [MaQuyen], [Ma]) VALUES (27, 3, 8)
INSERT [dbo].[Quyen] ([ID], [MaQuyen], [Ma]) VALUES (28, 3, 31)
INSERT [dbo].[Quyen] ([ID], [MaQuyen], [Ma]) VALUES (30, 3, 25)
INSERT [dbo].[Quyen] ([ID], [MaQuyen], [Ma]) VALUES (31, 3, 61)
INSERT [dbo].[Quyen] ([ID], [MaQuyen], [Ma]) VALUES (32, 3, 57)
INSERT [dbo].[Quyen] ([ID], [MaQuyen], [Ma]) VALUES (33, 3, 21)
INSERT [dbo].[Quyen] ([ID], [MaQuyen], [Ma]) VALUES (34, 3, 17)
INSERT [dbo].[Quyen] ([ID], [MaQuyen], [Ma]) VALUES (35, 3, 16)
INSERT [dbo].[Quyen] ([ID], [MaQuyen], [Ma]) VALUES (36, 3, 15)
INSERT [dbo].[Quyen] ([ID], [MaQuyen], [Ma]) VALUES (37, 3, 49)
INSERT [dbo].[Quyen] ([ID], [MaQuyen], [Ma]) VALUES (38, 3, 50)
INSERT [dbo].[Quyen] ([ID], [MaQuyen], [Ma]) VALUES (39, 3, 51)
INSERT [dbo].[Quyen] ([ID], [MaQuyen], [Ma]) VALUES (40, 3, 47)
INSERT [dbo].[Quyen] ([ID], [MaQuyen], [Ma]) VALUES (41, 3, 48)
INSERT [dbo].[Quyen] ([ID], [MaQuyen], [Ma]) VALUES (42, 5, 1)
INSERT [dbo].[Quyen] ([ID], [MaQuyen], [Ma]) VALUES (43, 5, 8)
INSERT [dbo].[Quyen] ([ID], [MaQuyen], [Ma]) VALUES (44, 5, 17)
INSERT [dbo].[Quyen] ([ID], [MaQuyen], [Ma]) VALUES (45, 5, 16)
INSERT [dbo].[Quyen] ([ID], [MaQuyen], [Ma]) VALUES (46, 5, 15)
INSERT [dbo].[Quyen] ([ID], [MaQuyen], [Ma]) VALUES (47, 5, 62)
INSERT [dbo].[Quyen] ([ID], [MaQuyen], [Ma]) VALUES (48, 5, 61)
INSERT [dbo].[Quyen] ([ID], [MaQuyen], [Ma]) VALUES (49, 5, 57)
INSERT [dbo].[Quyen] ([ID], [MaQuyen], [Ma]) VALUES (50, 5, 21)
INSERT [dbo].[Quyen] ([ID], [MaQuyen], [Ma]) VALUES (51, 5, 31)
INSERT [dbo].[Quyen] ([ID], [MaQuyen], [Ma]) VALUES (52, 5, 33)
INSERT [dbo].[Quyen] ([ID], [MaQuyen], [Ma]) VALUES (53, 5, 32)
INSERT [dbo].[Quyen] ([ID], [MaQuyen], [Ma]) VALUES (54, 5, 46)
INSERT [dbo].[Quyen] ([ID], [MaQuyen], [Ma]) VALUES (55, 5, 43)
INSERT [dbo].[Quyen] ([ID], [MaQuyen], [Ma]) VALUES (56, 5, 50)
INSERT [dbo].[Quyen] ([ID], [MaQuyen], [Ma]) VALUES (57, 5, 49)
INSERT [dbo].[Quyen] ([ID], [MaQuyen], [Ma]) VALUES (58, 5, 51)
INSERT [dbo].[Quyen] ([ID], [MaQuyen], [Ma]) VALUES (59, 5, 47)
INSERT [dbo].[Quyen] ([ID], [MaQuyen], [Ma]) VALUES (60, 5, 48)
INSERT [dbo].[Quyen] ([ID], [MaQuyen], [Ma]) VALUES (61, 4, 1)
INSERT [dbo].[Quyen] ([ID], [MaQuyen], [Ma]) VALUES (62, 4, 8)
INSERT [dbo].[Quyen] ([ID], [MaQuyen], [Ma]) VALUES (64, 4, 17)
INSERT [dbo].[Quyen] ([ID], [MaQuyen], [Ma]) VALUES (65, 4, 16)
INSERT [dbo].[Quyen] ([ID], [MaQuyen], [Ma]) VALUES (66, 4, 15)
INSERT [dbo].[Quyen] ([ID], [MaQuyen], [Ma]) VALUES (67, 4, 25)
INSERT [dbo].[Quyen] ([ID], [MaQuyen], [Ma]) VALUES (68, 4, 57)
INSERT [dbo].[Quyen] ([ID], [MaQuyen], [Ma]) VALUES (69, 4, 61)
INSERT [dbo].[Quyen] ([ID], [MaQuyen], [Ma]) VALUES (71, 4, 21)
INSERT [dbo].[Quyen] ([ID], [MaQuyen], [Ma]) VALUES (72, 4, 31)
INSERT [dbo].[Quyen] ([ID], [MaQuyen], [Ma]) VALUES (73, 4, 32)
INSERT [dbo].[Quyen] ([ID], [MaQuyen], [Ma]) VALUES (74, 4, 33)
INSERT [dbo].[Quyen] ([ID], [MaQuyen], [Ma]) VALUES (76, 4, 46)
INSERT [dbo].[Quyen] ([ID], [MaQuyen], [Ma]) VALUES (77, 4, 43)
INSERT [dbo].[Quyen] ([ID], [MaQuyen], [Ma]) VALUES (78, 4, 50)
INSERT [dbo].[Quyen] ([ID], [MaQuyen], [Ma]) VALUES (79, 4, 49)
INSERT [dbo].[Quyen] ([ID], [MaQuyen], [Ma]) VALUES (80, 4, 51)
INSERT [dbo].[Quyen] ([ID], [MaQuyen], [Ma]) VALUES (81, 4, 47)
INSERT [dbo].[Quyen] ([ID], [MaQuyen], [Ma]) VALUES (82, 4, 48)
INSERT [dbo].[Quyen] ([ID], [MaQuyen], [Ma]) VALUES (83, 3, 32)
INSERT [dbo].[Quyen] ([ID], [MaQuyen], [Ma]) VALUES (84, 3, 33)
SET IDENTITY_INSERT [dbo].[Quyen] OFF
/****** Object:  Table [dbo].[ThongBao]    Script Date: 01/12/2017 01:30:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongBao](
	[MaThongBao] [int] IDENTITY(1,1) NOT NULL,
	[TieuDe] [nvarchar](500) NOT NULL,
	[MoTa] [nvarchar](4000) NULL,
	[NoiDung] [ntext] NULL,
	[NgayDang] [datetime] NULL,
	[UserID] [nchar](20) NULL,
 CONSTRAINT [PK_ThongBao] PRIMARY KEY CLUSTERED 
(
	[MaThongBao] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ThongBao] ON
INSERT [dbo].[ThongBao] ([MaThongBao], [TieuDe], [MoTa], [NoiDung], [NgayDang], [UserID]) VALUES (1, N'[Thông báo] Đảm bảo vệ sinh an toàn thực phẩm trong những ngày gần và sau Tết Nguyên đán', N'Ngày 9/12, Bộ trưởng Bộ Nông nghiệp và Phát triển nông thôn Nguyễn Xuân Cường đã có Chỉ thị số 10400/CT-BNN-QLCL về việc tăng cường phòng, chống dịch bệnh, bảo đảm vệ sinh an toàn thực phẩm trong dịp Tết Nguyên đán Đinh Dậu và Lễ hội Xuân 2017.', N'<p>Chỉ thị n&ecirc;u r&otilde;, v&agrave;o dịp cuối năm v&agrave; đầu năm mới, đặc biệt v&agrave;o dịp Tết Nguy&ecirc;n đ&aacute;n v&agrave; Lễ hội Xu&acirc;n, hoạt động sản xuất, kinh doanh v&agrave; ti&ecirc;u thụ n&ocirc;ng sản, thực phẩm tăng cao. C&ugrave;ng với đ&oacute;, do yếu tố bất lợi của thời tiết dẫn đến nguy cơ b&ugrave;ng ph&aacute;t dịch bệnh trong chăn nu&ocirc;i, trồng trọt v&agrave; kh&ocirc;ng đảm bảo vệ sinh an to&agrave;n thực phẩm trong sản xuất, kinh doanh n&ocirc;ng sản, thực phẩm.</p>

<p>Để tăng cường ph&ograve;ng, chống dịch bệnh v&agrave; đảm bảo vệ sinh an to&agrave;n thực phẩm trong dịp Tết Nguy&ecirc;n đ&aacute;n Đinh Dậu v&agrave; Lễ hội Xu&acirc;n 2017, Bộ trưởng Bộ N&ocirc;ng nghiệp v&agrave; Ph&aacute;t triển n&ocirc;ng th&ocirc;n (NN&amp;PTNT) đề nghị đồng ch&iacute; Chủ tịch UBND c&aacute;c tỉnh, th&agrave;nh phố trực thuộc Trung ương chỉ đạo tăng cường tuy&ecirc;n truyền để người chăn nu&ocirc;i &aacute;p dụng c&aacute;c biện ph&aacute;p kỹ thuật ph&ograve;ng, chống dịch bệnh theo y&ecirc;u cầu của cơ quan th&uacute; y. Chỉ đạo ch&iacute;nh quyền cơ sở, hệ thống th&uacute; y địa phương tăng cường gi&aacute;m s&aacute;t, ph&aacute;t hiện sớm ổ dịch để xử l&yacute; kịp thời, hiệu quả dịch bệnh khi mới ph&aacute;t sinh.</p>

<p>Về bảo vệ thực vật, chỉ đạo Sở NN&amp;PTNT ph&acirc;n c&ocirc;ng l&atilde;nh đạo v&agrave; c&aacute;n bộ tăng cường c&ocirc;ng t&aacute;c trực ban, phối hợp chặt chẽ với địa phương gi&aacute;m s&aacute;t sinh vật g&acirc;y hại để ph&aacute;t hiện, cảnh b&aacute;o v&agrave; hướng dẫn n&ocirc;ng d&acirc;n ph&ograve;ng, chống kịp thời. Chỉ đạo c&aacute;c cơ quan th&ocirc;ng tin đại ch&uacute;ng của địa phương th&ocirc;ng b&aacute;o t&igrave;nh h&igrave;nh sinh vật g&acirc;y hại, vận động n&ocirc;ng d&acirc;n thăm đồng thường xuy&ecirc;n, ph&aacute;t hiện sớm dịch bệnh v&agrave; ph&ograve;ng, chống kịp thời.</p>

<p>Về bảo đảm vệ sinh an to&agrave;n thực phẩm, tiếp tục thực hiện nghi&ecirc;m t&uacute;c, hiệu quả Kế hoạch h&agrave;nh động năm cao điểm vệ sinh an to&agrave;n thực phẩm trong lĩnh vực n&ocirc;ng nghiệp v&agrave; tổ chức tổng kết, đ&aacute;nh gi&aacute; kết quả, b&aacute;o c&aacute;o Bộ. Tăng cường tuy&ecirc;n truyền, hướng dẫn v&agrave; gi&aacute;m s&aacute;t c&aacute;c tổ chức, c&aacute; nh&acirc;n sản xuất, kinh doanh n&ocirc;ng, l&acirc;m, thủy sản tu&acirc;n thủ c&aacute;c quy định đảm bảo vệ sinh, an to&agrave;n thực phẩm; hướng dẫn người d&acirc;n nhận biết sản phẩm c&oacute; nguồn gốc, xuất xứ, sản phẩm đ&atilde; được kiểm so&aacute;t v&agrave; chứng nhận an to&agrave;n thực phẩm.</p>

<p>Đối với c&aacute;c đơn vị thuộc Bộ NN&amp;PTNT, Cục Th&uacute; y chỉ đạo c&aacute;c Chi cục Chăn nu&ocirc;i &ndash; Th&uacute; y c&aacute;c tỉnh, th&agrave;nh phố trực thuộc Trung ương thường xuy&ecirc;n nắm chắc diễn biến, ph&aacute;t hiện sớm ổ dịch ở c&aacute;c địa b&agrave;n c&oacute; nguy cơ cao v&agrave; đưa ra biện ph&aacute;p xử l&yacute; kịp thời, hiệu quả. Tăng cường kiểm dịch động vật, sản phẩm động vật nhập khẩu nhằm ngăn chặn l&acirc;y lan dịch bệnh v&agrave; đảm bảo vệ sinh, an to&agrave;n thực phẩm. Bố tr&iacute; đầy đủ c&aacute;n bộ để thực hiện kiểm dịch động vật v&agrave;o c&aacute;c ng&agrave;y nghỉ, lễ, Tết v&agrave; ngo&agrave;i giờ để đ&aacute;p ứng y&ecirc;u cầu của doanh nghiệp v&agrave; tr&aacute;nh t&igrave;nh trạng &aacute;ch tắc h&agrave;ng h&oacute;a tại c&aacute;c cửa khẩu.</p>

<p>Thanh tra Bộ tiếp tục phối hợp với Cục Cảnh s&aacute;t ph&ograve;ng chống tội phạm về m&ocirc;i trường (C49) tổ chức trinh s&aacute;t, điều tra, thu thập th&ocirc;ng tin, ph&aacute;t hiện đường d&acirc;y, h&agrave;nh vi sản xuất, bu&ocirc;n b&aacute;n v&agrave; sử dụng chất cấm trong chăn nu&ocirc;i; kh&aacute;ng sinh trong chăn nu&ocirc;i, nu&ocirc;i trồng thủy sản kh&ocirc;ng đ&uacute;ng với quy định; thuốc bảo vệ thực vật, ph&acirc;n b&oacute;n giả kh&aacute;c, k&eacute;m chất lượng, nhập lậu kh&ocirc;ng r&otilde; nguồn gốc v&agrave; xử l&yacute; nghi&ecirc;m c&aacute;c h&agrave;nh vi vi phạm. Duy tr&igrave; việc sử dụng hiệu quả trang, mục v&agrave; đường d&acirc;y n&oacute;ng của Thanh tra Bộ; xử l&yacute; v&agrave; th&ocirc;ng tin kịp thời, ch&iacute;nh x&aacute;c, hiệu quả cho c&aacute;c cơ quan th&ocirc;ng tấn, b&aacute;o ch&iacute;.</p>
', CAST(0x0000A6F801829120 AS DateTime), N'admin               ')
INSERT [dbo].[ThongBao] ([MaThongBao], [TieuDe], [MoTa], [NoiDung], [NgayDang], [UserID]) VALUES (2, N'Chúc mừng năm mới 2017', N'Chúc mừng năm mới 2017', N'<p>Thưa to&agrave;n thể c&aacute;c cả nh&acirc;n, tổ chức, đo&agrave;n thể th&acirc;n mến!</p>

<p>Nh&acirc;n dịp năm mới 2017 v&agrave; đ&oacute;n Xu&acirc;n Đinh Dậu; Ban Quản L&yacute; Chợ B&aacute;ch Khoa gửi tới to&agrave;n thể c&aacute;c c&aacute; nh&acirc;n, tổ chức, đo&agrave;n thể đang kinh doanh tại chợ B&aacute;ch Khoa&nbsp;lời ch&uacute;c mừng năm mới tốt đẹp nhất.</p>

<p>K&iacute;nh ch&uacute;c c&aacute;c hộ kinh doanh trong chợ kinh doanh tốt đạt nhiều lợi nhuận trong năm tới.</p>

<p>Ch&agrave;o th&acirc;n &aacute;i v&agrave; quyết thắng!</p>

<p><strong><em>Mừng xu&acirc;n mới, kh&iacute; thế mới, quyết t&acirc;m mới, thắng lợi mới!</em></strong>&nbsp;&nbsp;</p>
', CAST(0x0000A6F801859301 AS DateTime), N'admin               ')
INSERT [dbo].[ThongBao] ([MaThongBao], [TieuDe], [MoTa], [NoiDung], [NgayDang], [UserID]) VALUES (3, N'Thông báo tuyển dụng nhân sự tháng 1/2017', N'Thông báo tuyển dụng nhân sự tháng 1/2017 vào các vị trí: kế toán, bảo vệ', N'<p><strong>1. Nh&acirc;n vi&ecirc;n kế to&aacute;n</strong></p>

<p><strong>* Số lượng: 01</strong></p>

<p><strong>* M&ocirc; tả c&ocirc;ng việc ch&iacute;nh</strong></p>

<p>-&nbsp;&nbsp;Thực hiện thanh to&aacute;n h&oacute;a đơn v&agrave; phục vụ kh&aacute;ch h&agrave;ng trong qu&aacute; tr&igrave;nh thanh to&aacute;n<br />
- Sử dụng phần mềm kế to&aacute;n để thực hiện c&ocirc;ng việc thu ng&acirc;n<br />
- Thu tiền ch&iacute;nh x&aacute;c, xuất h&oacute;a đơn nhanh ch&oacute;ng cho kh&aacute;ch h&agrave;ng.<br />
- Lập c&aacute;c b&aacute;o c&aacute;o thu chi tại chợ<br />
- Tư vấn v&agrave; chăm s&oacute;c kh&aacute;ch h&agrave;ng sử dụng website<br />
- Ghi nhận v&agrave; lưu th&ocirc;ng tin kh&aacute;ch h&agrave;ng</p>

<p><strong>* Y&ecirc;u cầu</strong></p>

<p>- Ưu ti&ecirc;n nữ</p>

<p>- Kinh nghiệm 3 năm &nbsp;l&ecirc;n</p>

<p>- C&oacute; bằng cấp hoặc chứng chỉ</p>

<p>- Ngoại h&igrave;nh dễ nh&igrave;n, giọng n&oacute;i dễ nghe</p>

<p>- Biết quản l&yacute; nh&acirc;n sự, giao tiếp v&agrave; chăm s&oacute;c kh&aacute;ch h&agrave;ng..</p>

<p>- Cẩn thận, chi tiết, c&oacute; khả năng tổ chức, quản l&yacute; c&ocirc;ng việc hiệu quả.</p>

<p>- Năng động, nhiệt t&igrave;nh, c&oacute; khả năng th&iacute;ch ứng với ho&agrave;n cảnh v&agrave; chịu được &aacute;p lực cao.</p>

<p>- Th&agrave;nh thạo tin học văn ph&ograve;ng.</p>

<p><strong>* Quyền lợi</strong></p>

<p>- Lương, thưởng v&agrave; c&aacute;c chế độ ph&uacute;c lợi, ưu đ&atilde;i hấp dẫn.</p>

<p>- Được đ&agrave;o tạo n&acirc;ng cao nghiệp vụ.</p>

<p>- Được l&agrave;m việc trong m&ocirc;i trường chuy&ecirc;n nghiệp, năng động v&agrave; hiệu quả.</p>

<p>&nbsp;</p>

<p><strong>2. Nh&acirc;n vi&ecirc;n bảo vệ</strong></p>

<p><strong>* Số lượng: 02</strong></p>

<p><strong>* M&ocirc; tả c&ocirc;ng việc ch&iacute;nh</strong></p>

<p>- C&oacute; nhiệm vụ quan s&aacute;t bảovệ ANTT, t&agrave;i sản, con người, cảnh quan m&ocirc;i trường tại chợ</p>

<p>- Cv sẽ được trao đổi th&ecirc;m khi phỏng vấn</p>

<p><strong>* Y&ecirc;u cầu</strong></p>

<p>- Nam : Tuổi từ 20 đến 40 tuổi</p>

<p>- Kh&ocirc;ng c&oacute; tiền &aacute;n tiền sự, ma t&uacute;y</p>

<p>- Sức khoẻ tốt</p>

<p><strong>* Quyền lợi</strong></p>

<p>- Được hưởng c&aacute;c chế độ theo quy định của Bộ luật lao động như: BHXH, BHYT, BHTN, BH tai nạn, Lương từ 4.500.000 đồng đến 5.000.000 đồng t&ugrave;y theo năng lực, được phục cấp 1 ca ăn</p>

<p>- Loại h&igrave;nh c&ocirc;ng việc: To&agrave;n thời gian</p>

<p>- Lương: ₫5.000.000 /th&aacute;ng</p>

<p>&nbsp;</p>
', CAST(0x0000A6F80189485C AS DateTime), N'admin               ')
SET IDENTITY_INSERT [dbo].[ThongBao] OFF
/****** Object:  ForeignKey [FK_Account_PhanQuyen]    Script Date: 01/12/2017 01:30:01 ******/
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_PhanQuyen] FOREIGN KEY([MaQuyen])
REFERENCES [dbo].[PhanQuyen] ([MaQuyen])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_PhanQuyen]
GO
/****** Object:  ForeignKey [FK_ChucNang_DanhMuc]    Script Date: 01/12/2017 01:30:01 ******/
ALTER TABLE [dbo].[ChucNang]  WITH CHECK ADD  CONSTRAINT [FK_ChucNang_DanhMuc] FOREIGN KEY([MaDanhMuc])
REFERENCES [dbo].[DanhMuc] ([MaDanhMuc])
GO
ALTER TABLE [dbo].[ChucNang] CHECK CONSTRAINT [FK_ChucNang_DanhMuc]
GO
/****** Object:  ForeignKey [FK_KiotThuocChuHo_ChuHoKinhDoanh]    Script Date: 01/12/2017 01:30:01 ******/
ALTER TABLE [dbo].[HopDongKiot]  WITH CHECK ADD  CONSTRAINT [FK_KiotThuocChuHo_ChuHoKinhDoanh] FOREIGN KEY([MaKinhDoanh])
REFERENCES [dbo].[ChuHoKinhDoanh] ([MaKinhDoanh])
GO
ALTER TABLE [dbo].[HopDongKiot] CHECK CONSTRAINT [FK_KiotThuocChuHo_ChuHoKinhDoanh]
GO
/****** Object:  ForeignKey [FK_KiotThuocChuHo_Kiot]    Script Date: 01/12/2017 01:30:01 ******/
ALTER TABLE [dbo].[HopDongKiot]  WITH CHECK ADD  CONSTRAINT [FK_KiotThuocChuHo_Kiot] FOREIGN KEY([MaKiot])
REFERENCES [dbo].[Kiot] ([MaKiot])
GO
ALTER TABLE [dbo].[HopDongKiot] CHECK CONSTRAINT [FK_KiotThuocChuHo_Kiot]
GO
/****** Object:  ForeignKey [FK_PhiHoKinhDoanh_ChuHoKinhDoanh]    Script Date: 01/12/2017 01:30:01 ******/
ALTER TABLE [dbo].[PhiHoKinhDoanh]  WITH CHECK ADD  CONSTRAINT [FK_PhiHoKinhDoanh_ChuHoKinhDoanh] FOREIGN KEY([MaKinhDoanh])
REFERENCES [dbo].[ChuHoKinhDoanh] ([MaKinhDoanh])
GO
ALTER TABLE [dbo].[PhiHoKinhDoanh] CHECK CONSTRAINT [FK_PhiHoKinhDoanh_ChuHoKinhDoanh]
GO
/****** Object:  ForeignKey [FK_Quyen_ChucNang]    Script Date: 01/12/2017 01:30:01 ******/
ALTER TABLE [dbo].[Quyen]  WITH CHECK ADD  CONSTRAINT [FK_Quyen_ChucNang] FOREIGN KEY([Ma])
REFERENCES [dbo].[ChucNang] ([Ma])
GO
ALTER TABLE [dbo].[Quyen] CHECK CONSTRAINT [FK_Quyen_ChucNang]
GO
/****** Object:  ForeignKey [FK_Quyen_PhanQuyen]    Script Date: 01/12/2017 01:30:01 ******/
ALTER TABLE [dbo].[Quyen]  WITH CHECK ADD  CONSTRAINT [FK_Quyen_PhanQuyen] FOREIGN KEY([MaQuyen])
REFERENCES [dbo].[PhanQuyen] ([MaQuyen])
GO
ALTER TABLE [dbo].[Quyen] CHECK CONSTRAINT [FK_Quyen_PhanQuyen]
GO
/****** Object:  ForeignKey [FK_ThietBi_NhanVien]    Script Date: 01/12/2017 01:30:01 ******/
ALTER TABLE [dbo].[ThietBi]  WITH CHECK ADD  CONSTRAINT [FK_ThietBi_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[ThietBi] CHECK CONSTRAINT [FK_ThietBi_NhanVien]
GO
/****** Object:  ForeignKey [FK_ThongBao_Account]    Script Date: 01/12/2017 01:30:01 ******/
ALTER TABLE [dbo].[ThongBao]  WITH CHECK ADD  CONSTRAINT [FK_ThongBao_Account] FOREIGN KEY([UserID])
REFERENCES [dbo].[Account] ([UserID])
GO
ALTER TABLE [dbo].[ThongBao] CHECK CONSTRAINT [FK_ThongBao_Account]
GO
/****** Object:  ForeignKey [FK_Thue_ChuHoKinhDoanh1]    Script Date: 01/12/2017 01:30:01 ******/
ALTER TABLE [dbo].[Thue]  WITH CHECK ADD  CONSTRAINT [FK_Thue_ChuHoKinhDoanh1] FOREIGN KEY([MaKinhDoanh])
REFERENCES [dbo].[ChuHoKinhDoanh] ([MaKinhDoanh])
GO
ALTER TABLE [dbo].[Thue] CHECK CONSTRAINT [FK_Thue_ChuHoKinhDoanh1]
GO
/****** Object:  ForeignKey [FK_TienDienNuoc_ChuHoKinhDoanh1]    Script Date: 01/12/2017 01:30:01 ******/
ALTER TABLE [dbo].[TienDienNuoc]  WITH CHECK ADD  CONSTRAINT [FK_TienDienNuoc_ChuHoKinhDoanh1] FOREIGN KEY([MaKinhDoanh])
REFERENCES [dbo].[ChuHoKinhDoanh] ([MaKinhDoanh])
GO
ALTER TABLE [dbo].[TienDienNuoc] CHECK CONSTRAINT [FK_TienDienNuoc_ChuHoKinhDoanh1]
GO
/****** Object:  ForeignKey [FK_TienLuongNV_NhanVien]    Script Date: 01/12/2017 01:30:01 ******/
ALTER TABLE [dbo].[TienLuongNV]  WITH CHECK ADD  CONSTRAINT [FK_TienLuongNV_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[TienLuongNV] CHECK CONSTRAINT [FK_TienLuongNV_NhanVien]
GO
