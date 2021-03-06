USE [master]
GO
/****** Object:  Database [MyPham]    Script Date: 14/06/2021 6:56:07 PM ******/
CREATE DATABASE [MyPham]
 
USE [MyPham]
GO
/****** Object:  Table [dbo].[Chi_Tiet_Gio_Hang]    Script Date: 14/06/2021 6:56:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chi_Tiet_Gio_Hang](
	[MaGioHang] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[SoLuongMua] [int] NOT NULL,
 CONSTRAINT [pk_Chi_Tiet_Gio_Hang] PRIMARY KEY CLUSTERED 
(
	[MaGioHang] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO



/****** Object:  Table [dbo].[DanhMucSP]    Script Date: 14/06/2021 6:56:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMucSP](
	[MaDM] [int] IDENTITY(1,1) NOT NULL,
	[TenDM] [nvarchar](80) NOT NULL,
 CONSTRAINT [pk_DanhMucSP] PRIMARY KEY CLUSTERED 
(
	[MaDM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GioHang]    Script Date: 14/06/2021 6:56:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioHang](
	[MaGioHang] [int] IDENTITY(1,1) NOT NULL,
	[MaKH] [int] NOT NULL,
 CONSTRAINT [pk_GioHang] PRIMARY KEY CLUSTERED 
(
	[MaGioHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 14/06/2021 6:56:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [int] IDENTITY(1,1) NOT NULL,
	[NgayTao] [datetime] NOT NULL,
	[HinhThucVanChuyen] [nvarchar](100) NOT NULL,
	[HinhThucThanhToan] [nvarchar](100) NOT NULL,
	[TongTien] [money] NOT NULL,
	[MaGioHang] [int] NOT NULL,
 CONSTRAINT [pk_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 14/06/2021 6:56:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[TenKH] [nvarchar](50) NOT NULL,
	[DiaChi] [ntext] NULL,
	[SoDienThoai] [decimal](10, 0) NULL,
	[MaTK] [int] NOT NULL,
 CONSTRAINT [pk_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 14/06/2021 6:56:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](80) NOT NULL,
	[Gia] [money] NOT NULL,
	[ThuongHieu] [nvarchar](80) NULL,
	[SoLuongTon] [int] NOT NULL,
	[XuatXu] [nvarchar](80) NULL,
	[DungTich] [int] NULL,
	[HangSX] [nvarchar](80) NULL,
	[TrongLuong] [int] NULL,
	[ChatLieu] [nvarchar](60) NULL,
	[CongDung] [ntext] NULL,
	[ThanhPhan] [ntext] NULL,
	[HuongDanSD] [ntext] NULL,
	[QuyCachDongGoi] [ntext] NULL,
	[GiamGia] [float] NULL,
	[MaDM] [int] NOT NULL,
	[AnhSP] [nvarchar](100) NOT NULL,
 CONSTRAINT [pk_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 14/06/2021 6:56:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[MaTK] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[MatKhau] [nvarchar](50) NOT NULL,
 CONSTRAINT [pk_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[MaTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DanhMucSP] ON 

INSERT [dbo].[DanhMucSP] ([MaDM], [TenDM]) VALUES (1, N'Mỹ Phẩm Dưỡng Da')
INSERT [dbo].[DanhMucSP] ([MaDM], [TenDM]) VALUES (2, N'Mỹ Phẩm Trang Điểm')
INSERT [dbo].[DanhMucSP] ([MaDM], [TenDM]) VALUES (3, N'Mỹ Phẩm Làm sạch')
INSERT [dbo].[DanhMucSP] ([MaDM], [TenDM]) VALUES (4, N'Mỹ Phẩm Son Môi')
INSERT [dbo].[DanhMucSP] ([MaDM], [TenDM]) VALUES (5, N'Mỹ Phẩm Tóc')
SET IDENTITY_INSERT [dbo].[DanhMucSP] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (8, N'Bán lẻ Ống serum tế bào gốc Eldas Giúp tái tạo da, Chống lão hóa', 100000.0000, NULL, 50, N'Hàn Quốc', 2, N'Coreana', NULL, NULL, N'Serum Chống Lão Hóa Eldas Eg Tox Program khắc phục được vấn đề lão hóa da, se khít mọi lỗ chân lông, ngăn ngừa tình trạng nám da, làm mờ các vết tàn nhang, tăng cường khả năng đàn hồi, thấm nhanh vào bên trong các nang chân lông, dưỡng cho vùng da sáng đều và căng mịn.', N' Thành phần EGF kết hợp với Collagen tạo nên Elastin giúp nhanh chóng giải quyết vấn đề xấu trên da.', N'Rửa mặt sạch

– Mở nắp và bơm tinh chất ra tay.

– Thoa tinh chất đều lên mặt và cổ hoặc những vùng da cần chăm sóc khác.

– Vỗ nhẹ để tinh chất thẩm thấu vào da nhanh chóng nhất.

– ELDAS lấy 1 lượng vừa đủ thoa đều lên mặt rồi vỗ vỗ nhẹ 1-2 phút cho tinh chất thấm hiệu quả cao vào da.
Nếu dùng máy Yaman , … Thì chị em mở chế độ RF MOISTURE giúp đẩy mạnh lượng tế bào gốc vào tận sâu trong da như vậy sẽ đạt được kết quả gần như hiệu quả cao nhé', NULL, 0.3, 1, N'su-dung-serum-eldas-eg-tox-program-han-quoc1111.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (9, N'Bảng Màu Mắt SIVANNA COLORS Luxury Velvet Eyesh', 170000.0000, N'Sivanna', 70, N'Thái Lan', NULL, NULL, 12, NULL, N'Bảng màu mắt Luxury Velvet Eyeshadow của hãng mỹ phẩm nổi tiếng Thái Lan SIVANNA COLORS có thiết kế nhỏ gọn với 10 màu sắc hot trend đi kèm là khả năng bám lâu và chống trôi nước cho bạn thoải mái vi vu lượn phố. Tha hồ selfie mà ko lo mồ hôi làm trôi đi lớp phấn mắt.

– Màu mắt trẻ trung cùng ánh nhũ giúp đôi mắt của bạn được trang điểm nổi bật hơn bao giờ hết. Bảng phấn mắt 10 ô Sivanna Colors Luxury Velvet Eyeshadow có công thức nền kết hợp với silicon giúp màu mắt giữ được lâu hơn, không hề bị trôi bởi nước hay mồ hôi.

-️ Màu lên rất chuẩn, bám màu cực tốt và lâu phai. Chỉ cần một lượng nhỏ, và apply một lần là đã lên đúng màu, sử dụng cực kì tiết kiệm.', NULL, N'Dùng cọ tán phấn nhẹ nhàng và đều khắp bầu mắt. Lựa chọn và phối màu dựa trên xu hướng, phong cách và mục đích riêng của bạn.', NULL, 0.24, 2, N'Bang-Mau-Mat-SIVANNA-COLORS-Luxury-Velvet-Eyesh-3-510x510.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (10, N'Bộ sữa tắm happy bath hàn quốc – happy bath natural real mild', 280000.0000, NULL, 80, N'Hàn Quốc', 500, N'Happy Bath', NULL, NULL, N'Sữa tắm Happy Bath Natural là sữa tắm được ưu chuộng số 1 tại Hàn Quốc.

– Sữa tắm mang mùi thơm nhẹ nhàng của hoa thục quỳ, hoa hồng, oải hương, gạo… Trong thành phần của sữa tắm có chứa nhiều chất khoáng, nước khoáng. Sữa tắm Happy Bath có chứa chiết xuất từ cá loại hoa tươi và tảo biển.Với các thành phần tinh chất được chiết xuất từ thiên nhiên sữa tắm Happy Bath luôn mang lại cảm giác thoải mái, sảng khoái, lưu lại mùi hương quyến rũ sau khi tắm.

– Đây là dòng sữa tắm được ưu chuộng số 1 tại Hàn Quốc, thuộc loại sản phẩm Home Spa – Spa tại nhà:

– Làm cho da đủ độ ẩm, sống động.', NULL, N'Nếu sử dụng vòi sen: Cho một lượng sữa tắm nhỏ vào bông tắm. Nhẹ nhàng bóp nhẹ để tạo bọt (bọt rất nhỏ, mịn và nhiều). Sau đó nhẹ nhàng xoa đều, mát-xa da rồi tráng lại người bằng nước sạch.

– Nếu sử dụng bồn tắm: Cho nước nóng 37-38 độ vào bồn, nhỏ sữa tắm vào bồn (7-10 lần bấm) và dùng vòi sen phun cho bọt lên nhiều. Sau đó tắm trong khoảng 10-15 phút. (Sau 10-15 phút, nước bẩn không còn bọt nữa).', NULL, 0.18, 3, N'B-sa-tm-happy-bath-han-quc-6-1.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (11, N'3 Concept Eyes Lip Color #308 Pink Jam 3CE', 330000.0000, NULL, 100, N'Hàn Quốc', NULL, N'Style Nanda – 3CE', NULL, NULL, N'che khuyết điểm môi, làm đẹp', NULL, N'', NULL, 0.17, 4, N'3-Concept-Eyes-Lip-Color-308-Pink-Jam-3CE1-510x509.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (12, N'Bộ 3 dưỡng da IncellDerm Hàn Quốc – dưỡng trắng căng bóng da', 2000000.0000, N' Incellderma', 40, N'Hàn Quốc', 245, NULL, NULL, NULL, N'Bộ 3 sản phẩm dưỡng da toàn diện hứa hẹn mang lại hiệu quả dưỡng trắng từ sâu bên trong, căng bóng chống lão hóa và làm căng da', N'Thành phần chính là hàng loạt các loại thảo mộc, vitamin và các chất dinh dưỡng giúp da căng mịn, đủ ẩm', NULL, NULL, 0.23, 1, N'cover-bo-3-duong-da-incellderm-e1571940654684.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (13, N'Bộ Dầu Gội Xả Bưởi Grapefruit 850ml – Đặc Trị Rụng Tóc Kích Thích Mọc Tóc', 450000.0000, N'Grapefruit', 50, N'Anh', 850, NULL, NULL, NULL, N'Ngăn ngừa tóc gẫy dụng

– Kích thích mọc tóc

– Cung cấp dưỡng chất phục hồi từ sâu bên trong sợi tóc

– Cung cấp độ ẩm giúp sợi tóc chắc khỏe , sáng bóng mềm mượt

– Công dụng của dầu gội bưởi với khả năng điều trị rụng tóc, phục hồi tóc hư tổn, giúp duy trì được độ chắc khỏe, độ dài của mái tóc, giúp tóc bóng mượt chỉ sau 14 ngày sử dụng.', N' Sản phẩm gồm 2 thành phần chính: tinh dầu vỏ bưởi và tinh dầu hoa bưởi.

– Tinh dầu từ vỏ bưởi: Trong vỏ bưởi hàm lượng vitamin C rất cao đồng thời khả năng chống lại 0xy hoá mạnh.

– Tinh dầu vỏ bưởi hỗ trợ việc tóc kháng lại bụi bẩn, ánh nắng, các mỹ phẩm làm đẹp, hoá chất làm tóc và tác động môi trường khác.

-Từ đó giúp tóc được bảo vệ và chống rụng tóc hiểu quả.

-Tinh dầu từ hoa bưởi: Tăng kích kích thích mọc tóc, bổ sung dưỡng chất cần thiết ngăn ngừa nấm và gàu hiệu quả.', NULL, NULL, 0.29, 1, N'bo-dau-goi-xa-buoi-grapefruit-850ml-dac-tri-rung-toc-kich-thich-moc-toc-4-510x510.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (14, N'Bộ dưỡng da 3in1 collagen 3w clinic Hàn Quốc', 600000.0000, NULL, 60, N'Hàn Quốc', 360, N'3W Cilic', NULL, NULL, N'Nuôi dưỡng làn da tươi trẻ mỗi ngày với Nước hoa hồng 3W clinic collagen: Nước hoa hồng sẽ giúp giữ ẩm cho mắt và môi, làm thu nhỏ lỗ chân lông, cân bằng độ PH trên da và ngăn ngừa sự xuất hiện của các nếp nhăn.

– Dưỡng trắng đẹp da, bổ sung collagen và dưỡng chất giúp ngăn ngừa lão hóa và cải thiện nếp nhăn

– Chống oxy hóa mạnh, bảo vệ da khỏi bức xạ cực tím, ngăn chặn sự lão hóa do khói bụi và các tác nhân từ môi trường, trợ giúp chữa lành vết thương da, giúp da mượt mà hơn.', NULL, N'Rửa mặt thật sạch.

– Dùng bông gòn thấm 1 lượng vừa đủ Nước hoa hồng 3W clinic collagen, xoa đều lên mặt. Bạn có thể thoa lên cổ để dưỡng ẩm cho làn da ở cổ.', NULL, 0.23, 1, N'Bo-duong-da-collagen-3w-clinic-Han-Quoc-1.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (15, N'Bộ cọ trang điểm Zoeva 8 cây rose golden luxury set', 550000.0000, NULL, 100, N'Đức', NULL, N'Zoeva', NULL, NULL, N'Bộ cọ trang điểm Zoeva 8 cây rose golden luxury set Gồm 8 cây cọ cao cấp chuyên dụng đầy đủ cho các bước trang điểm cơ bản

– Sợi cọ nhỏ có độ bền cao, siêu mềm mịn, giúp tán đều các sản phẩm trang điểm trên da

– Thân cọ bọc nhôm được mài nhẵn trơn, không hoen gỉ và gây trầy xước khi sử dụng

– Thiết kế cọ sang trọng, bền và dễ sử dụng,

– Đi kèm túi đựng chuyên nghiệp, sang trọng, tiện lợi', NULL, NULL, NULL, 0.42, 2, N'Bo-co-trang-diem-Zoeva-8-cay-rose-golden-luxury-set-2-510x510.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (17, N'BB Cream Power perfection 40g – The Face Shop', 420000.0000, N'', 40, N'Hàn Quốc', 20, N'The Face Shop', NULL, NULL, N'Sản phẩm kem nền Power Perfection BB Cream mang đến cho bạn sự hoàn hảo đáng kinh ngạc .

– Đây là dòng BB Cream mới nhất của hãng Thefaceshop đang khuấy đảo thị trường Hàn Quốc, được chiết xuất từ Omega 3 và phức hợp Vita Skin giúp phục hồi da và thúc đẩy sự sản sinh Collagen, chống lão hóa, bảo vệ da chống nắng với độ che phủ hoàn hảo, mang lại một làn da sáng khỏe và tràn đầy sức sống.

', NULL, NULL, NULL, 0.3, 2, N'BB-Cream-Power-Perfection-40g-2015-The-Face-Shop-2.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (20, N'Bộ Gold Collagen 3in1 The Face Shop', 1280000.0000, NULL, 50, N'Hàn Quốc', NULL, N'The Face Shop', NULL, NULL, N'Bộ sản phẩm này được chiết xuất từ collagen nên rất an toàn và tốt cho da, bộ 3 sản phâm rất tiện lợi và dễ sử dụng', NULL, NULL, NULL, 0.25, 2, N'Bo-Gold-Collagen-3in1-The-Face-Shop11-1.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (21, N'Bộ dầu gội và xả ES Elastine – Hàn Quốc', 450000.0000, NULL, 40, N'Hàn Quốc', 600, N'ES E Lastine', NULL, NULL, N'Dầu gội Elastine – sản phẩm Hàn Quốc có kiểu dáng, màu sắc nổi bật, hương thơm đặc trưng và quyến rũ với 3 loại:

– Elastine – Damage Control: phục hồi tóc hư tổn nhờ tinh chất bơ từ Châu Phi.

– Elastine – Moisture Control: cân bằng độ ẩm cho tóc nhờ tinh chất bơ giàu đô%3ḅ ẩm – Bí quyết làm đẹp cho tóc của người Maya từ thời Inca.

– Elastine – Volume Control: làm dày tóc nhờ tinh chất hoa Lavender điều tiết lượng chất nhờn trên da đầu và tóc.', N'Thành phần Vitamin E, Polyphenolbảo vệ tóc khỏi quá trình Oxy hoá và cân bằng độ ẩm.', N'Gội hàng ngày, Sử dụng dầu gội Elastine, da đầu bạn sẽ khỏe mạnh nhờ dưỡng chất HGH, bên ngoài sợi tóc được bảo vệ bởi chiết xuất từ hoa Tiare, bên trong sợi tóc được chăm sóc với dưỡng chất α-Cystine và chân tóc chắc khỏe nhờ chiết xuất từ hoa cây Kosam.

– Mái tóc suôn mượt, dày, óng ả, chắc khỏe là mơ ước của hầu hết phụ nữ Elast.ine sẽ giúp bạn biến ước mơ thành hiện thực..', NULL, 0.18, 3, N'Bo-dau-goi-xa-ES-Elastine-Han-Quoc-2-1.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (22, N'Bộ Yiyimei bán lẻ Sữa rửa mặt sạch sâu', 230000.0000, N' Yiyimei', 70, N'HongKong', 100, NULL, NULL, NULL, N'Bộ yiyimei trị nám, tàn nhang, dưỡng trắng da, phái đẹp sẽ có ngay trong tay giải pháp giảm nám từ bên trong và bên ngoài, giúp loại bỏ, làm mờ vết nám, ngăn ngừa nám da tái phát đồng thời cung cấp dưỡng chất nuôi dưỡng làn da từ bên trong, cho da mịn màng, săn chắc hoàn hảo.

– Chứa các thành phần Arbutin, ellastin hòa tan, acid nucleic, cam thảo, rong biển, dầu oliu,… giúp đánh bay bụi bẩn, làm sạch sâu từ bên trong da, cung cấp độ ẩm, dinh dưỡng cần thiết cho da.', NULL, N'Dùng để làm sạch buổi sáng và buổi tối', NULL, 0.22, 3, N'bo-yiyimei-ban-le-sua-rua-mat-sach-sau-1-510x510.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (23, N'Bông tẩy trang Miniso 150 miếng – Nhật bản', 100000.0000, N'Miniso', 100, N'Nhật Bản', NULL, NULL, NULL, NULL, N' Hộp bông tẩy trang Miniso 150 miếng, là sản phẩm tiện ích trên bàn trang điểm và trong túi xách của mọi cô gái.

– Bề mặt sản phẩm bằng chất liệu 100% cotton nhập khẩu từ Nhật Bản, có đặc tính mềm mại, đặc biệt không gây kích ứng da.

– Thấm hút tốt nước tẩy trang, nước hoa hồng dưỡng ẩm, hoặc dung dịch chùi sơn móng tay, móng chân…

– Nhẹ nhàng làm sạch sâu phấn, kem, màu mắt… trang điểm, giữ bề mặt da luôn sạch, thoáng, ngăn ngừa mụn.

', NULL, NULL, NULL, 0.35, 3, N'Bong-tay-trang-Miniso-150-mieng-–-Nhat-ban-1-1.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (24, N'Bông tẩy trang Jomi Cotton Pads 120 miếng – Nhật bản', 45000.0000, NULL, 50, N'Nhật bản', NULL, N'Jomi', NULL, NULL, N'Hỗ trợ làm sạch tế bào chết, thông thoáng lỗ chân lông giúp da sáng mịn màng tự nhiên. Làm sạch nhẹ nhàng da mặt.

– Thiết kế hai mặt giúp tẩy trang hiệu quả, lau sạch phấn trang điểm, bụi bẩn trên da. Có thể thay thế giấy thấm dầu.

– Thấm hút dầu thừa và dịch nhờn trên da, làm thông thoáng, giảm viêm nhiễm, ngừa mụn và bảo vệ lớp trang điểm.', NULL, NULL, NULL, 0.22, 3, N'Bong-tay-trang-Jomi-Cotton-Pads-120-mieng-3.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (25, N'Kem khử thâm làm hồng môi Mibiti Prudente NuWhite L1A 5ml', 950000.0000, N' NuWhite', 60, N'Mỹ', 5, NULL, NULL, NULL, N' Khử đi các vết thâm, mang lại sự hồng hào, tươi trẻ cho đôi môi.

– Kem dưỡng có tác dụng ngăn chặn sự hình thành các sắc tố mới, tăng cường tưới máu cho vùng môi, mang lại màu sắc tươi hồng tự nhiên.

– Duy trì ổn định độ ẩm cho làn da.

– Thúc đẩy quá trình thay mới vùng da, loại bỏ các sắc tố sẵn có trên da đồng thời ức chế một cách hoàn toàn sự sản sinh các sắc tố mới.

– Giúp bảo vệ đôi môi sau trị liệu tốt nhất.', NULL, N'Thoa một lượng vừa đủ kem NuWhite L1A lên vùng da môi cần điều trị 2-3 lần/ngày.', NULL, 0.12, 3, N'Kem-khu-tham-lam-hong-moi-Mibiti-Prudente-NuWhite-L1A-5ml1.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (30, N'Kissful lip care scrub – Tẩy da chết môi Etude House', 150000.0000, NULL, 50, N'Hàn Quốc', NULL, N'Etude House', NULL, NULL, N'Đây là sản phẩm tẩy tế bào chết cho môi chiết xuất thiên nhiên từ tinh chất trái cây, đường đen với những hạt sần giúp,  tẩy da chết trên môi rất hiệu quả với mùi hương cực quyến rũ (mùi kẹo, trái cây và vị ngọt nhẹ nhàng để lại sau khi sử dụng đã làm mê mệt các bạn gái Hàn đấy ạ 🙂', NULL, N'Kissful lip care scrub – Tẩy da chết môi Etude House

Lấy 1 lượng vừa đủ thoa lên môi, nhẹ nhàng massage trong 1-2 phút rồi rửa lại bằng nước hoặc lau sạch bằng khăn. Sau đó thoa Lip Balm hoặc Lip Essence để dưỡng môi.

', NULL, 0.3, 4, N'Kissful-lip-care-scrub-–-Ty-da-cht-mui-Etude-House11-510x510.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (32, N'Mặt nạ môi lovely ME:EX bebe lip mask – the face shop', 60000.0000, NULL, 100, N'Hàn Quốc', NULL, N'the face shop', NULL, NULL, N'Việc chăm sóc làn môi bây giờ quan trọng và cần thiết hơn hẳn bởi như cầu làm đẹp của chị em ngày nay ngày càng tăng và thời tiết trở nên thất thường khiến cho đôi môi dễ bị lão hóa và mau khô. Vì vậy, cần phải chăm sóc và bảo vệ làn môi để chị em ngày càng quyến rũ.

Đây là sản phẩm mặt nạ cho môi giúp cung cấp độ ẩm và collagen chống lão hóa môi. và làm hồng môi. Chỉ cần đắp mặt nạ lên đôi môi trong vòng 10 phút, đôi môi sẽ trở nên mềm mịn và căng mượt!', NULL, NULL, NULL, 0.25, 4, N'mat-na-moi-lovely-meex-bebe-lip-mask-thefaceshop.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (33, N'Son 2 đầu Karadium smudging tint stick', 200000.0000, NULL, 90, N'Hàn quốc', NULL, NULL, 6, NULL, N'Dạng son tint xinh đẹp từ Karadium thoa lòng môi hay full môi đều đẹp, thiết kế bút chì vặn cực tiện lợi khi sử dụng, dễ sử dụng và dễ blend.

– Son có độ mềm, bóng dưỡng nhẹ,ko có bóng nhiều đâu nha.

– Son lên môi có màu đẹp và tự nhiên hợp cho bạn nào thích nhẹ nhàng dễ thương nhé !!

– Ko gây khô môi

– Giữ màu tốt ( son tint mờ )

', N'Thành phần chiết xuất từ bơ, hoa hồng giúp môi luôn được mịn màng và giữ ẩm thật tốt. Để lại trên môi một kết thúc semi matte hoàn hảo và tự nhiên.', NULL, NULL, 0.28, 4, N'SON-2-DAU-KARADIUM-SMUDGING-TINT-STICK-sl1.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (35, N'Set MAC đen 12 cây Matte 1984 Mermaid của nước Mỹ', 200000.0000, NULL, 30, N'Hàn Quốc', NULL, NULL, NULL, NULL, N'Là loại son chuyên nghiệp với nhiều màu sắc trung thực, ấn tượng thích hợp cho mọi lứa tuổi, với MAC Lipstick bạn sẽ có một đôi môi gợi cảm, quyến rũ say đắm lòng người

– Son môi Mac với màu sắc trẻ trung và lâu trôi nổi tiếng toàn thế giới.', NULL, NULL, NULL, 0.2, 4, N'set-mac-den-12-cay-matte-1984-mermaid-5-510x510.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [ThuongHieu], [SoLuongTon], [XuatXu], [DungTich], [HangSX], [TrongLuong], [ChatLieu], [CongDung], [ThanhPhan], [HuongDanSD], [QuyCachDongGoi], [GiamGia], [MaDM], [AnhSP]) VALUES (37, N'Son 3 lớp VDL Tint Bar Triple Shot 3X – Hàn quốc', 350000.0000, NULL, 50, N'Nhật Bản', NULL, NULL, NULL, NULL, N' Lớp màu chính: Chứa chiết xuất từ sữa ong chúa, giúp bạn có một đôi môi sáng đẹp, cùng với công dụng dưỡng ẩm giúp đôi môi mềm mịn, cho dù môi bạn có khô hay nứt nẻ.', NULL, NULL, NULL, 0.07, 4, N'Son-3-lp-VDL-Tint-Bar-Triple-Shot-3X-–-Han-quc1.jpg')
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
ALTER TABLE [dbo].[Chi_Tiet_Gio_Hang]  WITH CHECK ADD FOREIGN KEY([MaGioHang])
REFERENCES [dbo].[GioHang] ([MaGioHang])
GO
ALTER TABLE [dbo].[Chi_Tiet_Gio_Hang]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([MaGioHang])
REFERENCES [dbo].[GioHang] ([MaGioHang])
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD FOREIGN KEY([MaTK])
REFERENCES [dbo].[TaiKhoan] ([MaTK])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([MaDM])
REFERENCES [dbo].[DanhMucSP] ([MaDM])
GO
USE [master]
GO
ALTER DATABASE [MyPham] SET  READ_WRITE 
GO
