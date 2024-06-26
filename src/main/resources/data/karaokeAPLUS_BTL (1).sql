﻿use KaraokeAplus_BTL
GO
--
ALTER TABLE [dbo].[MatHang]
ALTER COLUMN [tenMH] NVARCHAR(255)

ALTER TABLE [dbo].[KhachHang]
ALTER COLUMN [tenKH] NVARCHAR(255)

ALTER TABLE [dbo].[KhuyenMai]
ALTER COLUMN [moTa] NVARCHAR(255)

ALTER TABLE [dbo].[NhanVien]
ALTER COLUMN [tenNV] NVARCHAR(255)

ALTER TABLE [dbo].[NhanVien]
ALTER COLUMN [diaChi] NVARCHAR(255)

-- LoaiNhanVien
INSERT INTO LoaiNhanVien (maLoai, tenLoai) VALUES ('NVQL', N'Nhân viên quản lý');
INSERT INTO LoaiNhanVien (maLoai, tenLoai) VALUES ('NVTN', N'Nhân viên thu ngân');
INSERT INTO LoaiNhanVien (maLoai, tenLoai) VALUES ('Khac', N'Nhân viên khác');

-- NhanVien
INSERT INTO NhanVien (maNV, tenNV, gioiTinh, CCCD, SDT, diaChi, caLam, maLoai) 
VALUES ('NV001', N'Phạm Thị Thùy Nhi', 0, '079333444555', '0343906003', N'123 Dương Quảng Hàm quận Gò vấp', 'CA 1', 'NVQL');

INSERT INTO NhanVien (maNV, tenNV, gioiTinh, CCCD, SDT, diaChi, caLam, maLoai) 
VALUES ('NV002', N'Nguyễn Thị Quỳnh Giang', 0, '079666777888', '0934119430', N'124 Chu Văn An quận Bình Thạnh', 'CA 2', 'NVQL');

INSERT INTO NhanVien (maNV, tenNV, gioiTinh, CCCD, SDT, diaChi, caLam, maLoai) 
VALUES ('NV003', N'Hồ Minh Hậu', 1, '079999111222', '0585576500', N'125 Quang Trung quận Gò Vấp', 'CA 3', 'NVQL');

INSERT INTO NhanVien (maNV, tenNV, gioiTinh, CCCD, SDT, diaChi, caLam, maLoai) 
VALUES ('NV004', N'Võ Minh Nhựt', 1, '079888999444', '0972143563', N'126 Lê Lợi quận Gò Vấp', 'CA 3', 'NVQL');

INSERT INTO NhanVien (maNV, tenNV, gioiTinh, CCCD, SDT, diaChi, caLam, maLoai) 
VALUES ('NV005', N'Châu Thanh Huy', 1, '079567432123', '0979834347', N'3 Nguyễn An Ninh quận Bình Thạnh', 'CA 2', 'NVTN');

INSERT INTO NhanVien (maNV, tenNV, gioiTinh, CCCD, SDT, diaChi, caLam, maLoai) 
VALUES ('NV006', N'Nguyễn Thùy Thanh', 1, '079888777231', '0967654321', N'425 Huỳnh Văn Bánh quận Phú Nhuận', 'CA 1', 'NVTN');


-- TaiKhoan
INSERT INTO TaiKhoan (maNV, Password) VALUES ('NV001', '123A');
INSERT INTO TaiKhoan (maNV, Password) VALUES ('NV002', '123A');
INSERT INTO TaiKhoan (maNV, Password) VALUES ('NV003', '123A');
INSERT INTO TaiKhoan (maNV, Password) VALUES ('NV004', '123A');
INSERT INTO TaiKhoan (maNV, Password) VALUES ('NV005', '123A');


-- LoaiPhong
INSERT INTO LoaiPhong (maLoaiPhong, tenLoaiPhong, gia) VALUES ('LP001', 'VIP', 100000);
INSERT INTO LoaiPhong (maLoaiPhong, tenLoaiPhong, gia) VALUES ('LP002', 'THUONG', 60000);


-- PhongHat
INSERT INTO PhongHat (maPhong, tenPhong, maLoaiPhong, tinhTrangPhong)
VALUES ('P001', 'V001 ', 'LP001', 'Trong');
INSERT INTO PhongHat (maPhong, tenPhong, maLoaiPhong, tinhTrangPhong)
VALUES ('P002', 'V002 ', 'LP001', 'Trong');
INSERT INTO PhongHat (maPhong, tenPhong, maLoaiPhong, tinhTrangPhong)
VALUES ('P003', 'V003', 'LP001', 'Trong');
INSERT INTO PhongHat (maPhong, tenPhong, maLoaiPhong, tinhTrangPhong)
VALUES ('P004', 'T004 ', 'LP002', 'Trong');
INSERT INTO PhongHat (maPhong, tenPhong, maLoaiPhong, tinhTrangPhong)
VALUES ('P005', 'T005 ', 'LP002', 'Trong');
INSERT INTO PhongHat (maPhong, tenPhong, maLoaiPhong, tinhTrangPhong)
VALUES ('P006', 'T006', 'LP002', 'Trong');
INSERT INTO PhongHat (maPhong, tenPhong, maLoaiPhong, tinhTrangPhong)
VALUES ('P007', 'T007', 'LP002', 'Trong');
INSERT INTO PhongHat (maPhong, tenPhong, maLoaiPhong, tinhTrangPhong)
VALUES ('P008', 'T008', 'LP002', 'Trong');
INSERT INTO PhongHat (maPhong, tenPhong, maLoaiPhong, tinhTrangPhong)
VALUES ('P009', 'T009', 'LP002', 'Trong');
INSERT INTO PhongHat (maPhong, tenPhong, maLoaiPhong, tinhTrangPhong)
VALUES ('P010', 'T010', 'LP002', 'Trong');
INSERT INTO PhongHat (maPhong, tenPhong, maLoaiPhong, tinhTrangPhong)
VALUES ('P011', 'T011', 'LP002', 'Trong');
INSERT INTO PhongHat (maPhong, tenPhong, maLoaiPhong, tinhTrangPhong)
VALUES ('P012', 'T012', 'LP002', 'Trong');
INSERT INTO PhongHat (maPhong, tenPhong, maLoaiPhong, tinhTrangPhong)
VALUES ('P013', 'T013', 'LP002', 'Trong');
INSERT INTO PhongHat (maPhong, tenPhong, maLoaiPhong, tinhTrangPhong)
VALUES ('P014', 'T014', 'LP002', 'Trong');
INSERT INTO PhongHat (maPhong, tenPhong, maLoaiPhong, tinhTrangPhong)
VALUES ('P015', 'T015', 'LP002', 'Trong');
INSERT INTO PhongHat (maPhong, tenPhong, maLoaiPhong, tinhTrangPhong)
VALUES ('P016', 'T016', 'LP002', 'Trong');
INSERT INTO PhongHat (maPhong, tenPhong, maLoaiPhong, tinhTrangPhong)
VALUES ('P017', 'T017', 'LP002', 'Trong');
INSERT INTO PhongHat (maPhong, tenPhong, maLoaiPhong, tinhTrangPhong)
VALUES ('P018', 'T018', 'LP002', 'Trong');
INSERT INTO PhongHat (maPhong, tenPhong, maLoaiPhong, tinhTrangPhong)
VALUES ('P019', 'T019', 'LP001', 'Trong');
INSERT INTO PhongHat (maPhong, tenPhong, maLoaiPhong, tinhTrangPhong)
VALUES ('P020', 'T020', 'LP001', 'Trong');
INSERT INTO PhongHat (maPhong, tenPhong, maLoaiPhong, tinhTrangPhong)
VALUES ('P021', 'T021', 'LP001', 'Trong');
INSERT INTO PhongHat (maPhong, tenPhong, maLoaiPhong, tinhTrangPhong)
VALUES ('P022', 'T022', 'LP002', 'Trong');
INSERT INTO PhongHat (maPhong, tenPhong, maLoaiPhong, tinhTrangPhong)
VALUES ('P023', 'T023', 'LP002', 'Trong');
INSERT INTO PhongHat (maPhong, tenPhong, maLoaiPhong, tinhTrangPhong)
VALUES ('P024', 'T024', 'LP002', 'Trong');
INSERT INTO PhongHat (maPhong, tenPhong, maLoaiPhong, tinhTrangPhong)
VALUES ('P025', 'T025', 'LP002', 'Trong');
INSERT INTO PhongHat (maPhong, tenPhong, maLoaiPhong, tinhTrangPhong)
VALUES ('P026', 'T026', 'LP002', 'Trong');
INSERT INTO PhongHat (maPhong, tenPhong, maLoaiPhong, tinhTrangPhong)
VALUES ('P027', 'T027', 'LP002', 'Trong');
INSERT INTO PhongHat (maPhong, tenPhong, maLoaiPhong, tinhTrangPhong)
VALUES ('P028', 'T028', 'LP001', 'Trong');
INSERT INTO PhongHat (maPhong, tenPhong, maLoaiPhong, tinhTrangPhong)
VALUES ('P029', 'T029', 'LP001', 'Trong');
INSERT INTO PhongHat (maPhong, tenPhong, maLoaiPhong, tinhTrangPhong)
VALUES ('P030', 'T030', 'LP001', 'Trong');
INSERT INTO PhongHat (maPhong, tenPhong, maLoaiPhong, tinhTrangPhong)
VALUES ('P031', 'T031', 'LP002', 'Trong');
INSERT INTO PhongHat (maPhong, tenPhong, maLoaiPhong, tinhTrangPhong)
VALUES ('P032', 'T032', 'LP002', 'Trong');
INSERT INTO PhongHat (maPhong, tenPhong, maLoaiPhong, tinhTrangPhong)
VALUES ('P033', 'T033', 'LP002', 'Trong');
INSERT INTO PhongHat (maPhong, tenPhong, maLoaiPhong, tinhTrangPhong)
VALUES ('P034', 'T034', 'LP001', 'Trong');
INSERT INTO PhongHat (maPhong, tenPhong, maLoaiPhong, tinhTrangPhong)
VALUES ('P035', 'T035', 'LP001', 'Trong');
INSERT INTO PhongHat (maPhong, tenPhong, maLoaiPhong, tinhTrangPhong)
VALUES ('P036', 'T036', 'LP001', 'Trong');
INSERT INTO PhongHat (maPhong, tenPhong, maLoaiPhong, tinhTrangPhong)
VALUES ('P037', 'T037', 'LP002', 'Trong');
INSERT INTO PhongHat (maPhong, tenPhong, maLoaiPhong, tinhTrangPhong)
VALUES ('P038', 'T038', 'LP002', 'Trong');
INSERT INTO PhongHat (maPhong, tenPhong, maLoaiPhong, tinhTrangPhong)
VALUES ('P039', 'T039', 'LP002', 'Trong');

INSERT INTO PhongHat (maPhong, tenPhong, maLoaiPhong, tinhTrangPhong)
VALUES ('P040', 'T040', 'LP002', 'Trong');

-- KhachHang
INSERT INTO KhachHang (maKH, tenKH, SDT, GioiTinh) VALUES ('KH001', N'Nguyễn Văn An', '0912345678', 1);
INSERT INTO KhachHang (maKH, tenKH, SDT, GioiTinh) VALUES ('KH002', N'Trần Thị Bé', '0912345679', 0);
INSERT INTO KhachHang (maKH, tenKH, SDT, GioiTinh) VALUES ('KH003', N'Lê Văn Cường', '0912345680', 1);
INSERT INTO KhachHang (maKH, tenKH, SDT, GioiTinh) VALUES ('KH004', N'Nguyễn Thị Duyên', '09121234567', 0);

INSERT INTO KhachHang (maKH, tenKH, SDT, GioiTinh) VALUES ('KH005', N'Nguyễn Văn Đức', '0394937937', 1);
INSERT INTO KhachHang (maKH, tenKH, SDT, GioiTinh) VALUES ('KH006', N'Trần Mỹ Ngọc', '0398999999', 0);
INSERT INTO KhachHang (maKH, tenKH, SDT, GioiTinh) VALUES ('KH007', N'Lê Trung Dũng', '0399888888', 1);
INSERT INTO KhachHang (maKH, tenKH, SDT, GioiTinh) VALUES ('KH008', N'Nguyễn Thị Duyên', '0904868686', 0);

INSERT INTO KhachHang (maKH, tenKH, SDT, GioiTinh) VALUES ('KH009', N'Nguyễn Quốc Huy', '0908888888', 1);
INSERT INTO KhachHang (maKH, tenKH, SDT, GioiTinh) VALUES ('KH010', N'Trần Ngọc Giang', '0909999999', 0);
INSERT INTO KhachHang (maKH, tenKH, SDT, GioiTinh) VALUES ('KH011', N'Lê Thị Thanh Trang', '0914666666', 1);
INSERT INTO KhachHang (maKH, tenKH, SDT, GioiTinh) VALUES ('KH012', N'Nguyễn Thanh Bảo', '0924444444', 0);

INSERT INTO KhachHang (maKH, tenKH, SDT, GioiTinh) VALUES ('KH013', N'Trương Thanh Hoài Phương', '0936543321', 1);
INSERT INTO KhachHang (maKH, tenKH, SDT, GioiTinh) VALUES ('KH014', N'Khưu Ngọc Lân', '0937453865', 1);
INSERT INTO KhachHang (maKH, tenKH, SDT, GioiTinh) VALUES ('KH015', N'Thái Hoàng Trung', '0939221267', 1);
INSERT INTO KhachHang (maKH, tenKH, SDT, GioiTinh) VALUES ('KH016', N'Nguyễn Thị Bảo Châu', '0931778990', 0);

INSERT INTO KhachHang (maKH, tenKH, SDT, GioiTinh) VALUES ('KH017', N'Lưu Quốc Hùng', '0909111333', 1);
INSERT INTO KhachHang (maKH, tenKH, SDT, GioiTinh) VALUES ('KH018', N'Trần Ngọc Giang', '0908567432', 0);
INSERT INTO KhachHang (maKH, tenKH, SDT, GioiTinh) VALUES ('KH019', N'Phạm Văn Tuấn', '0914544124', 1);
INSERT INTO KhachHang (maKH, tenKH, SDT, GioiTinh) VALUES ('KH020', N'Đặng Tuấn Minh', '0929765435', 0);

INSERT INTO KhachHang (maKH, tenKH, SDT, GioiTinh) VALUES ('KH021', N'Hồ Duy Khanh', '034876459', 1);
INSERT INTO KhachHang (maKH, tenKH, SDT, GioiTinh) VALUES ('KH022', N'Trần Mỹ Kiều', '0710655433', 0);
INSERT INTO KhachHang (maKH, tenKH, SDT, GioiTinh) VALUES ('KH023', N'Phan Thùy Vy', '0887652356', 0);
INSERT INTO KhachHang (maKH, tenKH, SDT, GioiTinh) VALUES ('KH024', N'Nguyễn Phương Thùy', '0456789875', 0);

INSERT INTO KhachHang (maKH, tenKH, SDT, GioiTinh) VALUES ('KH025', N'Nguyễn Hoàng Tuấn', '0398777777', 1);
INSERT INTO KhachHang (maKH, tenKH, SDT, GioiTinh) VALUES ('KH026', N'Trần Đức Hiếu', '0904555555', 1);
INSERT INTO KhachHang (maKH, tenKH, SDT, GioiTinh) VALUES ('KH027', N'Hoàng Quốc Huy Vũ', '0924111111', 1);
INSERT INTO KhachHang (maKH, tenKH, SDT, GioiTinh) VALUES ('KH028', N'Nguyễn Huy Vỹ', '0919666666', 1);

INSERT INTO KhachHang (maKH, tenKH, SDT, GioiTinh) VALUES ('KH029', N'Nguyễn Huy Hoàng', '0782322321', 1);
INSERT INTO KhachHang (maKH, tenKH, SDT, GioiTinh) VALUES ('KH030', N'Trần Gia Huy Hùng', '0792132134', 1);
INSERT INTO KhachHang (maKH, tenKH, SDT, GioiTinh) VALUES ('KH031', N'Châu Thị Bảo My', '0919555666', 0);
INSERT INTO KhachHang (maKH, tenKH, SDT, GioiTinh) VALUES ('KH032', N'Đào Châu Kim Thùy', '0789453214', 0);

INSERT INTO KhachHang (maKH, tenKH, SDT, GioiTinh) VALUES ('KH033', N'Hồ Tuấn Nam', '0654222222', 1);
INSERT INTO KhachHang (maKH, tenKH, SDT, GioiTinh) VALUES ('KH034', N'Đặng Thanh Thảo', '0854111111', 0);
INSERT INTO KhachHang (maKH, tenKH, SDT, GioiTinh) VALUES ('KH035', N'Phạm Việt Đăng', '0909150844', 1);
INSERT INTO KhachHang (maKH, tenKH, SDT, GioiTinh) VALUES ('KH036', N'Nguyễn Phương Trang', '0377773456', 0);

INSERT INTO KhachHang (maKH, tenKH, SDT, GioiTinh) VALUES ('KH037', N'Hồ Tuấn Nam', '0908888789', 1);
INSERT INTO KhachHang (maKH, tenKH, SDT, GioiTinh) VALUES ('KH038', N'Đặng Thanh Thảo', '0559999999', 0);
INSERT INTO KhachHang (maKH, tenKH, SDT, GioiTinh) VALUES ('KH039', N'Phạm Việt Đăng', '0911222643', 1);
INSERT INTO KhachHang (maKH, tenKH, SDT, GioiTinh) VALUES ('KH040', N'Hồ Minh Hậu', '0585576500', 1);
INSERT INTO KhachHang (maKH, tenKH, SDT, GioiTinh) VALUES ('KH041', N'Phạm Thị Thùy Nhi', '0343906003', 0);


-- DonDatPhong
INSERT INTO DonDatPhong (maDonDatPhong, ngayDat, ngayNhan, maPhong, maKH)
VALUES ('DDP001', '2023-10-31 13:00:00', '2023-11-01 13:00:00', 'P001', 'KH001');

INSERT INTO DonDatPhong (maDonDatPhong, ngayDat, ngayNhan, maPhong, maKH)
VALUES ('DDP002', '2023-11-05 13:00:00', '2023-11-06 13:00:00', 'P002', 'KH002');

INSERT INTO DonDatPhong (maDonDatPhong, ngayDat, ngayNhan, maPhong, maKH)
VALUES ('DDP003', '2023-11-10 13:00:00', '2023-11-11 13:00:00', 'P003', 'KH003');

INSERT INTO DonDatPhong (maDonDatPhong, ngayDat, ngayNhan, maPhong, maKH)
VALUES ('DDP004', '2023-11-15 13:00:00', '2023-11-16 13:00:00', 'P004', 'KH004');

INSERT INTO DonDatPhong (maDonDatPhong, ngayDat, ngayNhan, maPhong, maKH)
VALUES ('DDP005', '2023-11-25 13:00:00', '2023-11-26 13:00:00', 'P005', 'KH005');

INSERT INTO DonDatPhong (maDonDatPhong, ngayDat, ngayNhan, maPhong, maKH)
VALUES ('DDP006', '2023-11-29 13:00:00', '2023-11-30 13:00:00', 'P006', 'KH006');

INSERT INTO DonDatPhong (maDonDatPhong, ngayDat, ngayNhan, maPhong, maKH)
VALUES ('DDP007', '2023-12-01 13:00:00', '2023-12-02 13:00:00', 'P007', 'KH007');

INSERT INTO DonDatPhong (maDonDatPhong, ngayDat, ngayNhan, maPhong, maKH)
VALUES ('DDP008', '2023-12-05 13:00:00', '2023-12-06 13:00:00', 'P008', 'KH008');

--Thêm Data--
INSERT INTO DonDatPhong (maDonDatPhong, ngayDat, ngayNhan, maPhong, maKH)
VALUES ('DDP009', '2023-12-06 14:00:00', '2023-12-07 14:00:00', 'P009', 'KH009');

INSERT INTO DonDatPhong (maDonDatPhong, ngayDat, ngayNhan, maPhong, maKH)
VALUES ('DDP010', '2023-12-07 15:00:00', '2023-12-08 15:00:00', 'P010', 'KH010');

INSERT INTO DonDatPhong (maDonDatPhong, ngayDat, ngayNhan, maPhong, maKH)
VALUES ('DDP011', '2023-12-08 12:00:00', '2023-12-09 12:00:00', 'P011', 'KH011');

INSERT INTO DonDatPhong (maDonDatPhong, ngayDat, ngayNhan, maPhong, maKH)
VALUES ('DDP012', '2023-12-10 12:00:00', '2023-12-11 12:00:00', 'P012', 'KH012');

INSERT INTO DonDatPhong (maDonDatPhong, ngayDat, ngayNhan, maPhong, maKH)
VALUES ('DDP013', '2024-01-02 13:00:00', '2024-01-03 13:00:00', 'P013', 'KH013');

INSERT INTO DonDatPhong (maDonDatPhong, ngayDat, ngayNhan, maPhong, maKH)
VALUES ('DDP014', '2024-01-04 13:00:00', '2024-01-05 13:00:00', 'P014', 'KH014');

INSERT INTO DonDatPhong (maDonDatPhong, ngayDat, ngayNhan, maPhong, maKH)
VALUES ('DDP015', '2024-01-05 14:00:00', '2024-01-06 14:00:00', 'P015', 'KH015');

INSERT INTO DonDatPhong (maDonDatPhong, ngayDat, ngayNhan, maPhong, maKH)
VALUES ('DDP016', '2024-01-07 11:00:00', '2024-01-08 11:00:00', 'P016', 'KH016');

INSERT INTO DonDatPhong (maDonDatPhong, ngayDat, ngayNhan, maPhong, maKH)
VALUES ('DDP017', '2024-01-09 13:00:00', '2024-01-10 13:00:00', 'P017', 'KH017');

INSERT INTO DonDatPhong (maDonDatPhong, ngayDat, ngayNhan, maPhong, maKH)
VALUES ('DDP018', '2024-01-11 13:00:00', '2024-01-12 13:00:00', 'P018', 'KH018');

-- MatHang
INSERT INTO MatHang (maMH, tenMH, Gia, trangThai) VALUES ('MH001', N'Bia Heineken lon 330ml', 20000, 1);
INSERT INTO MatHang (maMH, tenMH, Gia, trangThai) VALUES ('MH002', N'Bia Heineken chai 330ml', 50000, 1);
INSERT INTO MatHang (maMH, tenMH, Gia, trangThai) VALUES ('MH003', N'Bia Tiger lon 330ml', 17000, 1);
INSERT INTO MatHang (maMH, tenMH, Gia, trangThai) VALUES ('MH004', N'Bia Tiger Crystal lon 330ml', 19000, 1);
INSERT INTO MatHang (maMH, tenMH, Gia, trangThai) VALUES ('MH005', N'Bia Budweiser lon 330ml', 18000, 1);
INSERT INTO MatHang (maMH, tenMH, Gia, trangThai) VALUES ('MH006', N'Bia Budweiser chai 330ml', 22000, 1);
INSERT INTO MatHang (maMH, tenMH, Gia, trangThai) VALUES ('MH007', N'Bia Sapporo lon 330ml', 19000, 1);
INSERT INTO MatHang (maMH, tenMH, Gia, trangThai) VALUES ('MH008', N'Nước suối Aquafina', 10000, 1);
INSERT INTO MatHang (maMH, tenMH, Gia, trangThai) VALUES ('MH009', N'Nước ngọt Cocacola', 12000, 1);
INSERT INTO MatHang (maMH, tenMH, Gia, trangThai) VALUES ('MH010', N'Nước ngọt Pepsi', 12000, 1);

-- KhuyenMai
INSERT INTO KhuyenMai(maKM, moTa, gioBatDau, gioKetThuc, phanTram)
VALUES ('KM001', 'Noel 2023', '2023-12-07 00:00:00.000', '2023-12-25 00:00:00.000', 10.00);

INSERT INTO KhuyenMai(maKM, moTa, gioBatDau, gioKetThuc, phanTram)
VALUES ('KM002', 'Tết Tây 2023', '2023-12-25 00:00:00.000', '2023-01-01 00:00:00.000', 20.00);

INSERT INTO KhuyenMai(maKM, moTa, gioBatDau, gioKetThuc, phanTram)
VALUES ('KM003', 'Noel 2024', '2024-12-07 00:00:00.000', '2023-12-25 00:00:00.000', 10.00);

INSERT INTO KhuyenMai(maKM, moTa, gioBatDau, gioKetThuc, phanTram)
VALUES ('KM004', 'Tết Tây 2024', '2024-12-25 00:00:00.000', '2023-01-01 00:00:00.000', 20.00);

-- HoaDon
INSERT INTO HoaDon (maHD, ngayLapHD, maKH, maNV, maKM, tongTien)
VALUES ('HD001', '2023-10-30', 'KH001', 'NV001', 'KM001', 1000000.00);

INSERT INTO HoaDon (maHD, ngayLapHD, maKH, maNV, maKM, tongTien)
VALUES ('HD002', '2023-10-31', 'KH002', 'NV002', 'KM002', 1500000.00);

INSERT INTO HoaDon (maHD, ngayLapHD, maKH, maNV, maKM, tongTien)
VALUES ('HD003', '2023-11-01', 'KH003', 'NV003', 'KM003', 800000.00);

INSERT INTO HoaDon (maHD, ngayLapHD, maKH, maNV, maKM, tongTien)
VALUES ('HD004', '2023-11-02', 'KH004', 'NV004', 'KM004', 1200000.00);

---Thêm data---
INSERT INTO HoaDon (maHD, ngayLapHD, maKH, maNV, maKM, tongTien)
VALUES ('HD005', '2023-11-03', 'KH005', 'NV005', 'KM004', 950000.00);

INSERT INTO HoaDon (maHD, ngayLapHD, maKH, maNV, maKM, tongTien)
VALUES ('HD006', '2023-11-04', 'KH006', 'NV006', 'KM003', 1100000.00);

INSERT INTO HoaDon (maHD, ngayLapHD, maKH, maNV, maKM, tongTien)
VALUES ('HD007', '2023-11-05', 'KH007', 'NV001', 'KM002', 1300000.00);

INSERT INTO HoaDon (maHD, ngayLapHD, maKH, maNV, maKM, tongTien)
VALUES ('HD008', '2023-11-06', 'KH008', 'NV005', 'KM001', 1750000.00);

INSERT INTO HoaDon (maHD, ngayLapHD, maKH, maNV, maKM, tongTien)
VALUES ('HD009', '2023-11-07', 'KH009', 'NV004', 'KM001', 950000.00);

INSERT INTO HoaDon (maHD, ngayLapHD, maKH, maNV, maKM, tongTien)
VALUES ('HD010', '2023-11-08', 'KH010', 'NV003', 'KM002', 1400000.00);

INSERT INTO HoaDon (maHD, ngayLapHD, maKH, maNV, maKM, tongTien)
VALUES ('HD011', '2024-01-08', 'KH011', 'NV002', 'KM004', 1400000.00);

INSERT INTO HoaDon (maHD, ngayLapHD, maKH, maNV, maKM, tongTien)
VALUES ('HD012', '2023-01-09', 'KH012', 'NV001', 'KM004', 1400000.00);

INSERT INTO HoaDon (maHD, ngayLapHD, maKH, maNV, maKM, tongTien)
VALUES ('HD013', '2023-01-10', 'KH013', 'NV004', 'KM004', 1400000.00);



--ChiTietHoaDonPhong
INSERT INTO ChiTietHoaDonPhong (maHD, maPhong, gia, gioVao, gioRa, ghiChu)
VALUES ('HD001', 'P001', 100000, '2024-04-04 13:00:00', '2024-04-04 15:00:00', '');

INSERT INTO ChiTietHoaDonPhong (maHD, maPhong, gia, gioVao, gioRa, ghiChu)
VALUES ('HD002', 'P002', 100000, '2024-03-30 15:00:00', '2024-03-30 17:00:00', '');

INSERT INTO ChiTietHoaDonPhong (maHD, maPhong, gia, gioVao, gioRa, ghiChu)
VALUES ('HD003', 'P003', 60000, '2024-04-03 12:00:00', '2024-04-03 15:00:00', '');

INSERT INTO ChiTietHoaDonPhong (maHD, maPhong, gia, gioVao, gioRa, ghiChu)
VALUES ('HD004', 'P004', 60000, '2024-03-30 11:00:00', '2024-03-30 13:00:00', '');

--Thêm data---
INSERT INTO ChiTietHoaDonPhong (maHD, maPhong, gia, gioVao, gioRa, ghiChu)
VALUES ('HD005', 'P005', 60000, '2024-04-01 11:00:00', '2024-04-01 13:00:00', '');

INSERT INTO ChiTietHoaDonPhong (maHD, maPhong, gia, gioVao, gioRa, ghiChu)
VALUES ('HD006', 'P001', 100000, '2024-04-05 13:00:00', '2024-04-05 15:00:00', '');

INSERT INTO ChiTietHoaDonPhong (maHD, maPhong, gia, gioVao, gioRa, ghiChu)
VALUES ('HD007', 'P002', 100000, '2024-04-11 11:00:00', '2024-04-11 14:00:00', '');

INSERT INTO ChiTietHoaDonPhong (maHD, maPhong, gia, gioVao, gioRa, ghiChu)
VALUES ('HD008', 'P001', 100000, '2024-04-07 13:00:00', '2024-04-07 15:00:00', '');

INSERT INTO ChiTietHoaDonPhong (maHD, maPhong, gia, gioVao, gioRa, ghiChu)
VALUES ('HD009', 'P005', 60000, '2024-04-02 11:00:00', '2024-04-02 13:00:00', '');

INSERT INTO ChiTietHoaDonPhong (maHD, maPhong, gia, gioVao, gioRa, ghiChu)
VALUES ('HD010', 'P005', 60000, '2024-04-10 11:00:00', '2024-04-10 13:00:00', '');



-- ChiTietHoaDonDichVu
INSERT INTO ChiTietHoaDonDV (maHD, maMH,maPhong, soLuong, gia)
VALUES ('HD001', 'MH001','P001', 1, 100000);

INSERT INTO ChiTietHoaDonDV (maHD, maMH,maPhong, soLuong, gia)
VALUES ('HD002', 'MH002','P002', 1, 120000);

INSERT INTO ChiTietHoaDonDV (maHD, maMH,maPhong, soLuong, gia)
VALUES ('HD003', 'MH003','P003', 1, 130000);

INSERT INTO ChiTietHoaDonDV (maHD, maMH,maPhong, soLuong, gia)
VALUES ('HD004', 'MH004','P004', 1, 140000);



select * from [dbo].[LoaiPhong]
select * from [dbo].[LoaiNhanVien]
select * from [dbo].[KhachHang]
select * from [dbo].[HoaDon]
select * from [dbo].[DonDatPhong]
select * from [dbo].[ChiTietHoaDonPhong]
select * from [dbo].[ChiTietHoaDonDV]
select * from [dbo].[NhanVien]
select * from [dbo].[MatHang]
select * from [dbo].[PhongHat]
select * from [dbo].[TaiKhoan]
select * from [dbo].[KhuyenMai]
/*
DELETE FROM [dbo].[LoaiPhong];
DELETE FROM [dbo].[LoaiNhanVien];
DELETE FROM [dbo].[KhachHang];
DELETE FROM [dbo].[HoaDon];
DELETE FROM [dbo].[DonDatPhong];
DELETE FROM [dbo].[ChiTietHoaDonPhong];
DELETE FROM [dbo].[ChiTietHoaDonDV];
DELETE FROM [dbo].[NhanVien];
DELETE FROM [dbo].[MatHang];
DELETE FROM [dbo].[PhongHat];
DELETE FROM [dbo].[TaiKhoan];
DELETE FROM [dbo].[KhuyenMai];
*/