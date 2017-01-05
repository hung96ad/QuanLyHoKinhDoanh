USE [QuanlyHoKinhDoanh]
GO
/****** Object:  Table [dbo].[PhanQuyen]    Script Date: 11/29/2016 14:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanQuyen](
	[MaQuyen] [int] NOT NULL,
	[LoaiQuyen] [nvarchar](50) NULL,
	[MoTa] [nvarchar](500) NULL,
 CONSTRAINT [PK_PhanQuyen] PRIMARY KEY CLUSTERED 
(
	[MaQuyen] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 11/29/2016 14:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNhanVien] [nvarchar](50) NOT NULL,
	[TenNhanVien] [nvarchar](100) NULL,
	[LoaiNhanVien] [nvarchar](50) NULL,
	[TinhTrang] [bit] NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [LoaiNhanVien], [TinhTrang]) VALUES (N'1', N'1', N'1', 1)
/****** Object:  Table [dbo].[NangCapCho]    Script Date: 11/29/2016 14:24:40 ******/
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
/****** Object:  Table [dbo].[Kiot]    Script Date: 11/29/2016 14:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kiot](
	[MaKiot] [nchar](10) NOT NULL,
	[DienTich] [float] NOT NULL,
 CONSTRAINT [PK_Kiot] PRIMARY KEY CLUSTERED 
(
	[MaKiot] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChuHoKinhDoanh]    Script Date: 11/29/2016 14:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuHoKinhDoanh](
	[MaKinhDoanh] [nvarchar](50) NOT NULL,
	[HoTen] [nvarchar](100) NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[QueQuan] [nvarchar](100) NOT NULL,
	[DiaChiHienTai] [nvarchar](100) NOT NULL,
	[SoCMT] [nvarchar](12) NOT NULL,
	[MatHangKinhDoanh] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_ChuHoKinhDoanh] PRIMARY KEY CLUSTERED 
(
	[MaKinhDoanh] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThietBi]    Script Date: 11/29/2016 14:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThietBi](
	[MaThietBi] [nvarchar](50) NOT NULL,
	[TenThietBi] [nvarchar](50) NULL,
	[SoLuong] [nvarchar](50) NULL,
	[NgayKiemTra] [date] NULL,
 CONSTRAINT [PK_ThietBi] PRIMARY KEY CLUSTERED 
(
	[MaThietBi] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhiHoKinhDoanh]    Script Date: 11/29/2016 14:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhiHoKinhDoanh](
	[MaPhi] [nvarchar](50) NOT NULL,
	[MaKinhDoanh] [nvarchar](50) NOT NULL,
	[TenPhi] [nvarchar](50) NOT NULL,
	[SoTien] [nvarchar](50) NOT NULL,
	[NgayThu] [date] NOT NULL,
 CONSTRAINT [PK_PhiHoKinhDoanh] PRIMARY KEY CLUSTERED 
(
	[MaPhi] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 11/29/2016 14:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[UserID] [nchar](10) NOT NULL,
	[TenDangNhap] [nvarchar](50) NOT NULL,
	[MatKhau] [nvarchar](50) NOT NULL,
	[TrangThai] [bit] NOT NULL,
	[MaQuyen] [int] NOT NULL,
	[HoTen] [nvarchar](100) NULL,
	[Email] [nchar](100) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KiotThuocChuHo]    Script Date: 11/29/2016 14:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KiotThuocChuHo](
	[ID] [nvarchar](50) NOT NULL,
	[MaKinhDoah] [nvarchar](50) NOT NULL,
	[MaKiot] [nchar](10) NOT NULL,
 CONSTRAINT [PK_KiotThuocChuHo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TienLuongNV]    Script Date: 11/29/2016 14:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TienLuongNV](
	[MaNhanVien] [nvarchar](50) NOT NULL,
	[LuongCoBan] [int] NULL,
	[MucLuong] [float] NULL,
	[NgayNhan] [date] NULL,
	[TienLuong] [float] NULL,
 CONSTRAINT [PK_TienLuongNV] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TienDienNuoc]    Script Date: 11/29/2016 14:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TienDienNuoc](
	[ID] [nvarchar](50) NOT NULL,
	[MaKinhDoanh] [nvarchar](50) NOT NULL,
	[NgayGhi] [date] NOT NULL,
	[SoDien] [int] NOT NULL,
	[GiaDien] [int] NOT NULL,
	[TienDien] [int] NOT NULL,
	[SoKhoiNuoc] [int] NOT NULL,
	[GiaNuoc] [int] NOT NULL,
	[TienNuoc] [int] NOT NULL,
 CONSTRAINT [PK_TienDienNuoc] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Thue]    Script Date: 11/29/2016 14:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Thue](
	[MaThue] [nvarchar](50) NOT NULL,
	[MaKinhDoanh] [nvarchar](50) NOT NULL,
	[ThuNhapHangThang] [nvarchar](50) NOT NULL,
	[TienThue] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Thue] PRIMARY KEY CLUSTERED 
(
	[MaThue] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongBao]    Script Date: 11/29/2016 14:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongBao](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TieuDe] [nvarchar](500) NOT NULL,
	[MoTa] [nvarchar](500) NULL,
	[NoiDung] [ntext] NULL,
	[NgayDang] [date] NULL,
	[UserID] [nchar](10) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_Account_PhanQuyen]    Script Date: 11/29/2016 14:24:40 ******/
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_PhanQuyen] FOREIGN KEY([MaQuyen])
REFERENCES [dbo].[PhanQuyen] ([MaQuyen])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_PhanQuyen]
GO
/****** Object:  ForeignKey [FK_KiotThuocChuHo_ChuHoKinhDoanh]    Script Date: 11/29/2016 14:24:40 ******/
ALTER TABLE [dbo].[KiotThuocChuHo]  WITH CHECK ADD  CONSTRAINT [FK_KiotThuocChuHo_ChuHoKinhDoanh] FOREIGN KEY([MaKinhDoah])
REFERENCES [dbo].[ChuHoKinhDoanh] ([MaKinhDoanh])
GO
ALTER TABLE [dbo].[KiotThuocChuHo] CHECK CONSTRAINT [FK_KiotThuocChuHo_ChuHoKinhDoanh]
GO
/****** Object:  ForeignKey [FK_KiotThuocChuHo_Kiot]    Script Date: 11/29/2016 14:24:40 ******/
ALTER TABLE [dbo].[KiotThuocChuHo]  WITH CHECK ADD  CONSTRAINT [FK_KiotThuocChuHo_Kiot] FOREIGN KEY([MaKiot])
REFERENCES [dbo].[Kiot] ([MaKiot])
GO
ALTER TABLE [dbo].[KiotThuocChuHo] CHECK CONSTRAINT [FK_KiotThuocChuHo_Kiot]
GO
/****** Object:  ForeignKey [FK_PhiHoKinhDoanh_ChuHoKinhDoanh]    Script Date: 11/29/2016 14:24:40 ******/
ALTER TABLE [dbo].[PhiHoKinhDoanh]  WITH CHECK ADD  CONSTRAINT [FK_PhiHoKinhDoanh_ChuHoKinhDoanh] FOREIGN KEY([MaKinhDoanh])
REFERENCES [dbo].[ChuHoKinhDoanh] ([MaKinhDoanh])
GO
ALTER TABLE [dbo].[PhiHoKinhDoanh] CHECK CONSTRAINT [FK_PhiHoKinhDoanh_ChuHoKinhDoanh]
GO
/****** Object:  ForeignKey [FK_ThongBao_Account]    Script Date: 11/29/2016 14:24:40 ******/
ALTER TABLE [dbo].[ThongBao]  WITH CHECK ADD  CONSTRAINT [FK_ThongBao_Account] FOREIGN KEY([UserID])
REFERENCES [dbo].[Account] ([UserID])
GO
ALTER TABLE [dbo].[ThongBao] CHECK CONSTRAINT [FK_ThongBao_Account]
GO
/****** Object:  ForeignKey [FK_Thue_ChuHoKinhDoanh1]    Script Date: 11/29/2016 14:24:40 ******/
ALTER TABLE [dbo].[Thue]  WITH CHECK ADD  CONSTRAINT [FK_Thue_ChuHoKinhDoanh1] FOREIGN KEY([MaKinhDoanh])
REFERENCES [dbo].[ChuHoKinhDoanh] ([MaKinhDoanh])
GO
ALTER TABLE [dbo].[Thue] CHECK CONSTRAINT [FK_Thue_ChuHoKinhDoanh1]
GO
/****** Object:  ForeignKey [FK_TienDienNuoc_ChuHoKinhDoanh]    Script Date: 11/29/2016 14:24:40 ******/
ALTER TABLE [dbo].[TienDienNuoc]  WITH CHECK ADD  CONSTRAINT [FK_TienDienNuoc_ChuHoKinhDoanh] FOREIGN KEY([MaKinhDoanh])
REFERENCES [dbo].[ChuHoKinhDoanh] ([MaKinhDoanh])
GO
ALTER TABLE [dbo].[TienDienNuoc] CHECK CONSTRAINT [FK_TienDienNuoc_ChuHoKinhDoanh]
GO
/****** Object:  ForeignKey [FK_TienLuongNV_NhanVien]    Script Date: 11/29/2016 14:24:40 ******/
ALTER TABLE [dbo].[TienLuongNV]  WITH CHECK ADD  CONSTRAINT [FK_TienLuongNV_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[TienLuongNV] CHECK CONSTRAINT [FK_TienLuongNV_NhanVien]
GO
