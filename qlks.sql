USE [QLKS]
GO
/****** Object:  Table [dbo].[LOAITK]    Script Date: 01/20/2021 11:36:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAITK](
	[idloai_TK] [int] NOT NULL,
	[tenloai_TK] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idloai_TK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[LOAITK] ([idloai_TK], [tenloai_TK]) VALUES (0, N'Admin')
INSERT [dbo].[LOAITK] ([idloai_TK], [tenloai_TK]) VALUES (1, N'Nhân viên')
/****** Object:  Table [dbo].[LOAIPHONG]    Script Date: 01/20/2021 11:36:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAIPHONG](
	[idloai_P] [int] IDENTITY(1,1) NOT NULL,
	[tenloai_P] [nvarchar](50) NOT NULL,
	[gia_P] [int] NOT NULL,
	[songuoitoida] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idloai_P] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[LOAIPHONG] ON
INSERT [dbo].[LOAIPHONG] ([idloai_P], [tenloai_P], [gia_P], [songuoitoida]) VALUES (1, N'Phong đơn', 250000, 1)
INSERT [dbo].[LOAIPHONG] ([idloai_P], [tenloai_P], [gia_P], [songuoitoida]) VALUES (2, N'Phong đôi', 500000, 2)
INSERT [dbo].[LOAIPHONG] ([idloai_P], [tenloai_P], [gia_P], [songuoitoida]) VALUES (3, N'Phong bốn', 800000, 4)
INSERT [dbo].[LOAIPHONG] ([idloai_P], [tenloai_P], [gia_P], [songuoitoida]) VALUES (4, N'Phong gia đình', 1000000, 6)
INSERT [dbo].[LOAIPHONG] ([idloai_P], [tenloai_P], [gia_P], [songuoitoida]) VALUES (6, N'Phong vip', 1500000, 8)
SET IDENTITY_INSERT [dbo].[LOAIPHONG] OFF
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 01/20/2021 11:36:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[id_KH] [int] IDENTITY(1,1) NOT NULL,
	[ten_KH] [nvarchar](50) NOT NULL,
	[gioitinh] [nvarchar](50) NOT NULL,
	[sdt] [varchar](50) NOT NULL,
	[CMND] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_KH] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[KHACHHANG] ON
INSERT [dbo].[KHACHHANG] ([id_KH], [ten_KH], [gioitinh], [sdt], [CMND]) VALUES (2, N'Trần Văn Việt', N'nữ', N'0321451294', N'854125641')
INSERT [dbo].[KHACHHANG] ([id_KH], [ten_KH], [gioitinh], [sdt], [CMND]) VALUES (3, N'Trần Vạn An', N'nam', N'0132451201', N'365214784')
INSERT [dbo].[KHACHHANG] ([id_KH], [ten_KH], [gioitinh], [sdt], [CMND]) VALUES (4, N'hau', N'Nam', N'1234', N'322')
SET IDENTITY_INSERT [dbo].[KHACHHANG] OFF
/****** Object:  Table [dbo].[DICHVU]    Script Date: 01/20/2021 11:36:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DICHVU](
	[id_DV] [int] IDENTITY(1,1) NOT NULL,
	[ten_DV] [nvarchar](50) NOT NULL,
	[donvitinh] [nvarchar](10) NOT NULL,
	[gia_DV] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_DV] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[DICHVU] ON
INSERT [dbo].[DICHVU] ([id_DV], [ten_DV], [donvitinh], [gia_DV]) VALUES (1, N'Mỳ ăn liền', N'VND', N'5000')
INSERT [dbo].[DICHVU] ([id_DV], [ten_DV], [donvitinh], [gia_DV]) VALUES (2, N'Bia Quy Nhơn', N'VND', N'8000')
INSERT [dbo].[DICHVU] ([id_DV], [ten_DV], [donvitinh], [gia_DV]) VALUES (3, N'Nước suối', N'VND', N'4000')
INSERT [dbo].[DICHVU] ([id_DV], [ten_DV], [donvitinh], [gia_DV]) VALUES (5, N'Bia tiger', N'VND', N'16000')
INSERT [dbo].[DICHVU] ([id_DV], [ten_DV], [donvitinh], [gia_DV]) VALUES (6, N'Nước tăng lực', N'VND', N'8000')
INSERT [dbo].[DICHVU] ([id_DV], [ten_DV], [donvitinh], [gia_DV]) VALUES (7, N'Cafe', N'VND', N'15000')
INSERT [dbo].[DICHVU] ([id_DV], [ten_DV], [donvitinh], [gia_DV]) VALUES (8, N'Giặc đồ', N'VND', N'20000')
SET IDENTITY_INSERT [dbo].[DICHVU] OFF
/****** Object:  Table [dbo].[TAIKHOAN]    Script Date: 01/20/2021 11:36:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TAIKHOAN](
	[id_TK] [int] IDENTITY(1,1) NOT NULL,
	[ten_TK] [varchar](50) NOT NULL,
	[matkhau_TK] [varchar](50) NOT NULL,
	[tenhienthi] [nvarchar](50) NOT NULL,
	[gioitinh] [nvarchar](50) NOT NULL,
	[sdt] [varchar](50) NOT NULL,
	[CMND] [varchar](50) NOT NULL,
	[IMG] [varchar](50) NOT NULL,
	[idloai_TK] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_TK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TAIKHOAN] ON
INSERT [dbo].[TAIKHOAN] ([id_TK], [ten_TK], [matkhau_TK], [tenhienthi], [gioitinh], [sdt], [CMND], [IMG], [idloai_TK]) VALUES (1, N'viet', N'123', N'Trần Quốc Việt', N'nam', N'0132541684', N'012416321', N'notImage.jpg', 0)
INSERT [dbo].[TAIKHOAN] ([id_TK], [ten_TK], [matkhau_TK], [tenhienthi], [gioitinh], [sdt], [CMND], [IMG], [idloai_TK]) VALUES (7, N'hau', N'123', N'Nguyễn Trung Hậu', N'nam', N'0124513254', N'965214784', N'notImage.jpg', 0)
INSERT [dbo].[TAIKHOAN] ([id_TK], [ten_TK], [matkhau_TK], [tenhienthi], [gioitinh], [sdt], [CMND], [IMG], [idloai_TK]) VALUES (8, N'tuong', N'123', N'Huỳnh Vạn An', N'nữ', N'0136254781', N'6325147842', N'notImage.jpg', 1)
INSERT [dbo].[TAIKHOAN] ([id_TK], [ten_TK], [matkhau_TK], [tenhienthi], [gioitinh], [sdt], [CMND], [IMG], [idloai_TK]) VALUES (9, N'pham', N'123', N'Nguyễn Vạn Nguyễn', N'nữ', N'0132451651', N'6251345127', N'notImage.jpg', 1)
INSERT [dbo].[TAIKHOAN] ([id_TK], [ten_TK], [matkhau_TK], [tenhienthi], [gioitinh], [sdt], [CMND], [IMG], [idloai_TK]) VALUES (14, N'toan', N'123', N'Say hi', N'nam', N'4512541247', N'8541445214', N'hau.jpg', 1)
SET IDENTITY_INSERT [dbo].[TAIKHOAN] OFF
/****** Object:  Table [dbo].[PHONG]    Script Date: 01/20/2021 11:36:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHONG](
	[id_P] [int] IDENTITY(1,1) NOT NULL,
	[ten_P] [nvarchar](50) NOT NULL,
	[trangthai_P] [nvarchar](50) NOT NULL,
	[idloai_P] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_P] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[PHONG] ON
INSERT [dbo].[PHONG] ([id_P], [ten_P], [trangthai_P], [idloai_P]) VALUES (1, N'Phong 1', N'Đang sử dụng', 1)
INSERT [dbo].[PHONG] ([id_P], [ten_P], [trangthai_P], [idloai_P]) VALUES (2, N'Phong 2', N'Trống', 2)
INSERT [dbo].[PHONG] ([id_P], [ten_P], [trangthai_P], [idloai_P]) VALUES (5, N'Phong 3', N'Trống', 3)
INSERT [dbo].[PHONG] ([id_P], [ten_P], [trangthai_P], [idloai_P]) VALUES (6, N'Phong 4', N'Trống', 4)
INSERT [dbo].[PHONG] ([id_P], [ten_P], [trangthai_P], [idloai_P]) VALUES (9, N'Phong 5', N'Trống', 6)
INSERT [dbo].[PHONG] ([id_P], [ten_P], [trangthai_P], [idloai_P]) VALUES (10, N'Phong 6', N'Trống', 6)
INSERT [dbo].[PHONG] ([id_P], [ten_P], [trangthai_P], [idloai_P]) VALUES (11, N'Phong 7', N'Trống', 6)
INSERT [dbo].[PHONG] ([id_P], [ten_P], [trangthai_P], [idloai_P]) VALUES (12, N'Phong 8', N'Trống', 4)
INSERT [dbo].[PHONG] ([id_P], [ten_P], [trangthai_P], [idloai_P]) VALUES (13, N'Phong 9', N'Trống', 4)
INSERT [dbo].[PHONG] ([id_P], [ten_P], [trangthai_P], [idloai_P]) VALUES (14, N'Phong 10', N'Trống', 3)
INSERT [dbo].[PHONG] ([id_P], [ten_P], [trangthai_P], [idloai_P]) VALUES (15, N'Phong 11', N'Trống', 3)
INSERT [dbo].[PHONG] ([id_P], [ten_P], [trangthai_P], [idloai_P]) VALUES (16, N'Phong 12', N'Trống', 2)
INSERT [dbo].[PHONG] ([id_P], [ten_P], [trangthai_P], [idloai_P]) VALUES (17, N'Phong 13', N'Trống', 2)
INSERT [dbo].[PHONG] ([id_P], [ten_P], [trangthai_P], [idloai_P]) VALUES (19, N'Phong 14', N'Trống', 2)
INSERT [dbo].[PHONG] ([id_P], [ten_P], [trangthai_P], [idloai_P]) VALUES (20, N'Phong 15', N'Trống', 1)
INSERT [dbo].[PHONG] ([id_P], [ten_P], [trangthai_P], [idloai_P]) VALUES (21, N'Phong 16', N'Trống', 1)
INSERT [dbo].[PHONG] ([id_P], [ten_P], [trangthai_P], [idloai_P]) VALUES (22, N'Phong 17', N'Trống', 1)
SET IDENTITY_INSERT [dbo].[PHONG] OFF
/****** Object:  Table [dbo].[THUEPHONG]    Script Date: 01/20/2021 11:36:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[THUEPHONG](
	[id_TP] [int] IDENTITY(1,1) NOT NULL,
	[id_P] [int] NOT NULL,
	[id_KH] [int] NOT NULL,
	[id_TK] [int] NOT NULL,
	[ngayden] [varchar](50) NOT NULL,
	[ngaydi] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_TP] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[THUEPHONG] ON
INSERT [dbo].[THUEPHONG] ([id_TP], [id_P], [id_KH], [id_TK], [ngayden], [ngaydi]) VALUES (1, 1, 4, 9, N'2020/02/1', N'2020/02/1')
SET IDENTITY_INSERT [dbo].[THUEPHONG] OFF
/****** Object:  Table [dbo].[CTTHUEPHONG]    Script Date: 01/20/2021 11:36:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTTHUEPHONG](
	[idct_TP] [int] IDENTITY(1,1) NOT NULL,
	[id_TP] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idct_TP] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CTTHUEPHONG] ON
INSERT [dbo].[CTTHUEPHONG] ([idct_TP], [id_TP]) VALUES (1, 1)
SET IDENTITY_INSERT [dbo].[CTTHUEPHONG] OFF
/****** Object:  Table [dbo].[THUEDICHVU]    Script Date: 01/20/2021 11:36:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THUEDICHVU](
	[id_THUEDV] [int] IDENTITY(1,1) NOT NULL,
	[id_DV] [int] NULL,
	[idct_TP] [int] NULL,
	[soluong] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_THUEDV] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[THUEDICHVU] ON
INSERT [dbo].[THUEDICHVU] ([id_THUEDV], [id_DV], [idct_TP], [soluong]) VALUES (1, 1, 1, 4)
SET IDENTITY_INSERT [dbo].[THUEDICHVU] OFF
/****** Object:  Table [dbo].[HOADON]    Script Date: 01/20/2021 11:36:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HOADON](
	[id_HD] [int] IDENTITY(1,1) NOT NULL,
	[ngay_ketthuc] [varchar](50) NOT NULL,
	[idct_TP] [int] NOT NULL,
	[tongtien] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_HD] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  ForeignKey [FK__CTTHUEPHO__id_TP__239E4DCF]    Script Date: 01/20/2021 11:36:27 ******/
ALTER TABLE [dbo].[CTTHUEPHONG]  WITH CHECK ADD FOREIGN KEY([id_TP])
REFERENCES [dbo].[THUEPHONG] ([id_TP])
GO
/****** Object:  ForeignKey [FK__HOADON__idct_TP__24927208]    Script Date: 01/20/2021 11:36:27 ******/
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD FOREIGN KEY([idct_TP])
REFERENCES [dbo].[CTTHUEPHONG] ([idct_TP])
GO
/****** Object:  ForeignKey [FK__PHONG__idloai_P__25869641]    Script Date: 01/20/2021 11:36:27 ******/
ALTER TABLE [dbo].[PHONG]  WITH CHECK ADD FOREIGN KEY([idloai_P])
REFERENCES [dbo].[LOAIPHONG] ([idloai_P])
GO
/****** Object:  ForeignKey [FK__TAIKHOAN__idloai__267ABA7A]    Script Date: 01/20/2021 11:36:27 ******/
ALTER TABLE [dbo].[TAIKHOAN]  WITH CHECK ADD FOREIGN KEY([idloai_TK])
REFERENCES [dbo].[LOAITK] ([idloai_TK])
GO
/****** Object:  ForeignKey [FK__THUEDICHV__id_DV__276EDEB3]    Script Date: 01/20/2021 11:36:27 ******/
ALTER TABLE [dbo].[THUEDICHVU]  WITH CHECK ADD FOREIGN KEY([id_DV])
REFERENCES [dbo].[DICHVU] ([id_DV])
GO
/****** Object:  ForeignKey [FK__THUEDICHV__idct___286302EC]    Script Date: 01/20/2021 11:36:27 ******/
ALTER TABLE [dbo].[THUEDICHVU]  WITH CHECK ADD FOREIGN KEY([idct_TP])
REFERENCES [dbo].[CTTHUEPHONG] ([idct_TP])
GO
/****** Object:  ForeignKey [FK__THUEPHONG__id_KH__29572725]    Script Date: 01/20/2021 11:36:27 ******/
ALTER TABLE [dbo].[THUEPHONG]  WITH CHECK ADD FOREIGN KEY([id_KH])
REFERENCES [dbo].[KHACHHANG] ([id_KH])
GO
/****** Object:  ForeignKey [FK__THUEPHONG__id_P__2A4B4B5E]    Script Date: 01/20/2021 11:36:27 ******/
ALTER TABLE [dbo].[THUEPHONG]  WITH CHECK ADD FOREIGN KEY([id_P])
REFERENCES [dbo].[PHONG] ([id_P])
GO
/****** Object:  ForeignKey [FK__THUEPHONG__id_TK__2B3F6F97]    Script Date: 01/20/2021 11:36:27 ******/
ALTER TABLE [dbo].[THUEPHONG]  WITH CHECK ADD FOREIGN KEY([id_TK])
REFERENCES [dbo].[TAIKHOAN] ([id_TK])
GO
