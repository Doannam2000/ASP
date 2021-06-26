/*
Created		14/06/2021
Modified		14/06/2021
Project		
Model			
Company		
Author		
Version		
Database		MS SQL 2005 
*/

use MyPham
go
Create table [KhachHang]
(
	[MaKH] Integer Identity NOT NULL,
	[TenKH] Nvarchar(50) NOT NULL,
	[DiaChi] Ntext NULL,
	[SoDienThoai] Decimal(10,0) NULL,
	[MaTK] Integer NOT NULL,
Primary Key ([MaKH])
) 
go

Create table [TaiKhoan]
(
	[MaTK] Integer Identity NOT NULL,
	[Email] Nvarchar(50) NOT NULL,
	[MatKhau] Nvarchar(50) NOT NULL,
Primary Key ([MaTK])
) 
go

Create table [DanhGia]
(
	[MaSo] Integer Identity NOT NULL,
	[GioiTinh] Nvarchar(3) NOT NULL,
	[HoTen] Nvarchar(80) NOT NULL,
	[Email] Nvarchar(50) NOT NULL,
	[NoiDung] Ntext NULL,
	[MaKH] Integer NOT NULL,
Primary Key ([MaSo])
) 
go

Create table [HoaDon]
(
	[MaHD] Integer Identity NOT NULL,
	[NgayTao] Datetime NOT NULL,
	[HinhThucVanChuyen] Nvarchar(100) NOT NULL,
	[HinhThucThanhToan] Nvarchar(100) NOT NULL,
	[TongTien] Money NOT NULL,
	[MaGioHang] Integer NOT NULL,
Primary Key ([MaHD])
) 
go

Create table [GioHang]
(
	[MaGioHang] Integer Identity NOT NULL,
	[MaKH] Integer NOT NULL,
Primary Key ([MaGioHang])
) 
go

Create table [DanhMucSP]
(
	[MaDM] Integer Identity NOT NULL,
	[TenDM] Nvarchar(80) NOT NULL,
Primary Key ([MaDM])
) 
go

Create table [SanPham]
(
	[MaSP] Integer Identity NOT NULL,
	[TenSP] Nvarchar(80) NOT NULL,
	[Gia] Money NOT NULL,
	[ThuongHieu] Nvarchar(80) NULL,
	[SoLuongTon] Integer NOT NULL,
	[XuatXu] Nvarchar(80) NULL,
	[DungTich] Integer NULL,
	[HangSX] Nvarchar(80) NULL,
	[TrongLuong] Integer NULL,
	[ChatLieu] Nvarchar(60) NULL,
	[CongDung] Ntext NULL,
	[ThanhPhan] Ntext NULL,
	[HuongDanSD] Ntext NULL,
	[QuyCachDongGoi] Ntext NULL,
	[GiamGia] Char(1) NULL,
	[MaDM] Integer NOT NULL,
Primary Key ([MaSP])
) 
go

Create table [Chi_Tiet_Gio_Hang]
(
	[MaGioHang] Integer NOT NULL,
	[MaSP] Integer NOT NULL,
	[SoLuongMua] Integer NOT NULL,
Primary Key ([MaGioHang],[MaSP])
) 
go


Alter table [DanhGia] add  foreign key([MaKH]) references [KhachHang] ([MaKH])  on update no action on delete no action 
go
Alter table [GioHang] add  foreign key([MaKH]) references [KhachHang] ([MaKH])  on update no action on delete no action 
go
Alter table [KhachHang] add  foreign key([MaTK]) references [TaiKhoan] ([MaTK])  on update no action on delete no action 
go
Alter table [Chi_Tiet_Gio_Hang] add  foreign key([MaGioHang]) references [GioHang] ([MaGioHang])  on update no action on delete no action 
go
Alter table [HoaDon] add  foreign key([MaGioHang]) references [GioHang] ([MaGioHang])  on update no action on delete no action 
go
Alter table [SanPham] add  foreign key([MaDM]) references [DanhMucSP] ([MaDM])  on update no action on delete no action 
go
Alter table [Chi_Tiet_Gio_Hang] add  foreign key([MaSP]) references [SanPham] ([MaSP])  on update no action on delete no action 
go


Set quoted_identifier on
go


Set quoted_identifier off
go


