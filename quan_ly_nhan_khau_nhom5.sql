-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.28-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.4.0.6659
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for quanlynhankhau
CREATE DATABASE quanlynhankhau /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE quanlynhankhau;

-- Dumping structure for table quanlynhankhau.chung_minh_thu
CREATE TABLE IF NOT EXISTS `chung_minh_thu` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `idNhanKhau` int(11) DEFAULT NULL,
  `soCMT` varchar(12) NOT NULL,
  `ngayCap` date DEFAULT NULL,
  `noiCap` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idNhanKhau` (`idNhanKhau`),
  FULLTEXT KEY `soCMT` (`soCMT`),
  CONSTRAINT `chung_minh_thu_ibfk_1` FOREIGN KEY (`idNhanKhau`) REFERENCES `nhan_khau` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table quanlynhankhau.chung_minh_thu: ~13 rows (approximately)
INSERT INTO `chung_minh_thu` (`ID`, `idNhanKhau`, `soCMT`, `ngayCap`, `noiCap`) VALUES
	(13, 26, '000000000001', NULL, NULL),
	(14, 27, '000000000002', NULL, NULL),
	(15, 28, '000000000003', NULL, NULL),
	(16, 29, '000000000004', NULL, NULL),
	(17, 30, '000000000005', NULL, NULL),
	(18, 31, '000000000006', NULL, NULL),
	(19, 32, '000000000007', NULL, NULL),
	(20, 33, '000000000008', NULL, NULL),
	(21, 34, '000000000009', NULL, NULL),
	(22, 35, '100000000001', NULL, NULL),
	(23, 36, '100000000002', NULL, NULL),
	(24, 37, '000000000010', NULL, NULL),
	(25, 38, '000000000011', NULL, NULL);

-- Dumping structure for table quanlynhankhau.dinh_chinh
CREATE TABLE IF NOT EXISTS `dinh_chinh` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `idHoKhau` int(11) DEFAULT NULL,
  `thongTinThayDoi` varchar(100) DEFAULT NULL,
  `thayDoiTu` varchar(100) DEFAULT NULL,
  `thayDoiThanh` varchar(100) DEFAULT NULL,
  `ngayThayDoi` date DEFAULT NULL,
  `nguoiThayDoi` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idHoKhau` (`idHoKhau`),
  KEY `nguoiThayDoi` (`nguoiThayDoi`),
  CONSTRAINT `dinh_chinh_ibfk_1` FOREIGN KEY (`idHoKhau`) REFERENCES `ho_khau` (`ID`),
  CONSTRAINT `dinh_chinh_ibfk_2` FOREIGN KEY (`nguoiThayDoi`) REFERENCES `users` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table quanlynhankhau.dinh_chinh: ~0 rows (approximately)

-- Dumping structure for table quanlynhankhau.gia_dinh
CREATE TABLE IF NOT EXISTS `gia_dinh` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `idNhanKhau` int(11) DEFAULT NULL,
  `hoTen` varchar(100) DEFAULT NULL,
  `namSinh` date DEFAULT NULL,
  `gioiTinh` varchar(100) DEFAULT NULL,
  `quanHeVoiNhanKhau` varchar(100) DEFAULT NULL,
  `ngheNghiep` varchar(100) DEFAULT NULL,
  `diaChiHienTai` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idNhanKhau` (`idNhanKhau`),
  CONSTRAINT `gia_dinh_ibfk_1` FOREIGN KEY (`idNhanKhau`) REFERENCES `nhan_khau` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table quanlynhankhau.gia_dinh: ~32 rows (approximately)
INSERT INTO `gia_dinh` (`ID`, `idNhanKhau`, `hoTen`, `namSinh`, `gioiTinh`, `quanHeVoiNhanKhau`, `ngheNghiep`, `diaChiHienTai`) VALUES
	(2, 27, 'Nguyễn Minh Quân', '1995-05-31', 'Nam', 'Chồng', 'Kỹ sư', 'Số 2 Nguyên Xá, quận Bắc Từ Liêm, Hà Nội'),
	(3, 28, 'Trần Thanh Duyên', '1997-12-23', 'Nữ', 'Vợ', 'Nhân viên văn phòng', 'Số 2 Nguyên Xá ,quận Bắc Từ Liêm , Hà Nội'),
	(4, 29, 'Vũ Mỹ Linh', '1965-12-06', 'Nữ', 'Vợ', 'Nội trợ', 'Số 3 Nguyên Xá , quận Bắc Từ Liêm, Hà Nội'),
	(5, 29, 'Nguyễn Tiến Đạt', '1990-09-09', 'Nam', 'Con trai', 'Kỹ sư điện', 'Số 3 Nguyên Xá,quận Bắc Từ Liêm, Hà Nội'),
	(6, 29, 'Nguyễn Trà My', '1997-12-12', 'Nữ', 'Con gái', 'Luật sư', 'Số 3 Nguyên Xá, quận Bắc Từ Liêm, Hà Nội'),
	(7, 30, 'Nguyễn Tiến Dũng', '1964-06-03', 'Nam', 'Chồng', 'Phó giám đốc', 'Số 3 Nguyên Xá, quận Bắc Từ Liêm, Hà Nội'),
	(8, 30, 'Nguyễn Tiến Đạt', '1990-09-09', 'Nam', 'Con trai', 'Kỹ sư điện', 'Số 3 Nguyên Xá, quận Bắc Từ Liêm, Hà Nội'),
	(9, 30, 'Nguyễn Trà My', '1997-12-12', 'Nữ', 'Con Gái', 'Luật sư', 'Số 3 Nguyên Xá, quận Bắc Từ Liêm, Hà Nội'),
	(10, 31, 'Nguyễn Tiến Dũng', '1964-06-03', 'Nam', 'Bố', 'Phó giám đốc', 'Số 3 Nguyên Xá, quận Bắc Từ Liêm, Hà Nội'),
	(11, 31, 'Vũ Mỹ Linh', '1965-12-06', 'Nữ', 'Mẹ', 'Nội trợ', 'Số 3 Nguyên Xá, quận Bắc Từ Liêm, Hà Nội'),
	(12, 31, 'Nguyễn Trà My', '1997-12-12', 'Nữ', 'Em gái', 'Luật sư', 'Số 3 Nguyên Xá, quận Bắc Từ Liêm, Hà Nội'),
	(13, 32, 'Nguyễn Tiến Dũng', '1964-06-03', 'Nam', 'Bố', 'Phó giám đốc', 'Số 3 Văn Tiến Dũng, quận Bắc Từ Liêm, Hà Nội'),
	(14, 32, 'Vũ Mỹ Linh', '1965-12-06', 'Nữ', 'Mẹ', 'Nội trợ', 'Số 3 Tạ Quang Bửu, quận Bắc Từ Liêm, Hà Nội'),
	(15, 32, 'Nguyễn Tiến Đạt', '1990-09-09', 'Nam', 'Anh trai', 'Kỹ sư điện', 'Số 3 Tạ Quang Bửu, quận Bắc Từ Liêm, Hà Nội'),
	(16, 33, 'Nguyễn Minh Tuyết', '1985-09-02', 'Nữ', 'Vợ', 'Bác sĩ', 'Số 4 Tạ Quang Bửu, quận Bắc Từ Liêm, Hà Nội'),
	(17, 33, 'Trần Trung Kiên', '2008-12-25', 'Nam', 'Con trai', 'Học sinh', 'Số 4 Tạ Quang Bửu, quận Bắc Từ Liêm, Hà Nội'),
	(18, 33, 'Trần Thúy Ngọc', '2013-01-15', 'Nữ', 'Con gái', 'Học sinh', 'Số 4 Tạ Quang Bửu, quận Bắc Từ Liêm, Hà Nội'),
	(19, 34, 'Trần Trung Kiên', '2008-12-25', 'Nam', 'Con trai', 'Học sinh', 'Số 4 Tạ Quang Bửu, quận Bắc Từ Liêm, Hà Nội'),
	(20, 34, 'Trần Thúy Ngọc', '2013-01-15', 'Nữ', 'Con gái', 'Học sinh', 'Số 4 Tạ Quang Bửu, quận Bắc Từ Liêm, Hà Nội'),
	(21, 34, 'Trần Văn Nam', '1980-07-09', 'Nam', 'Chồng', 'Giảng viên đại học', 'Số 4 Tạ Quang Bửu, quận Bắc Từ Liêm, Hà Nội'),
	(22, 35, 'Trần Văn Nam', '1980-07-09', 'Nam', 'Bố', 'Giảng viên đại học', 'Số 4 Tạ Quang Bửu, quận Bắc Từ Liêm, Hà Nội'),
	(23, 35, 'Nguyễn Minh Tuyết', '1985-09-02', 'Nữ', 'Mẹ', 'Bác sĩ', 'Số 4 Tạ Quang Bửu, quận Bắc Từ Liêm, Hà Nội'),
	(24, 35, 'Trần Thúy Ngọc', '2013-01-15', 'Nữ', 'Em gái', 'Học sinh', 'Số 4 Tạ Quang Bửu, quận Bắc Từ Liêm, Hà Nội'),
	(25, 36, 'Trần Văn Nam', '1980-07-09', 'Nam', 'Bố', 'Giảng viên đại học', 'Số 4 Tạ Quang Bửu,quận Bắc Từ Liêm, Hà Nội'),
	(26, 36, 'Nguyễn Minh Tuyết', '1985-09-02', 'Nữ ', 'Mẹ', 'Bác sĩ', 'Số 4 Tạ Quang Bửu, quận Bắc Từ Liêm, Hà Nội'),
	(27, 36, 'Trần Trung Kiên', '2008-12-25', 'Nam', 'Anh trai', 'Học sinh', 'Số 4 Tạ Quang Bửu, quận Bắc Từ Liêm, Hà Nội'),
	(28, 37, 'Bùi Thị Hà', '1948-02-03', 'Nữ', 'Vợ', 'Nội trợ', 'Số 5 Tạ Quang Bửu, quận Bắc Từ Liêm, Hà Nội'),
	(29, 37, 'Lý Thành Nam', '1968-06-12', 'Nam', 'Con Trai', 'Công nhân', 'Số 89, quận Bắc Từ Liêm, Hà Nội'),
	(30, 37, 'Lý Thu Thủy', '1971-03-05', 'Nữ', 'Con Gái', 'Nhân viên văn phòng', 'Số 3, quận Bắc Từ Liêm, Hà Nội'),
	(31, 38, 'Lý Văn Công', '1945-06-04', 'Nam', 'Chồng', 'Bộ đội về hưu', 'Số 5 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội'),
	(32, 38, 'Lý Thành Nam', '1968-06-12', 'Nam', 'Con trai', 'Công nhân', 'Số 89, ngõ 98 Trường Chinh, Hà Nội'),
	(33, 38, 'Lý Thu Thủy', '1971-03-05', 'Nữ', 'Con gái', 'Nhân viên văn phòng', 'Số 3, ngõ 568 Đường Láng, Hà Nội');

-- Dumping structure for table quanlynhankhau.ho_khau
CREATE TABLE IF NOT EXISTS `ho_khau` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `maHoKhau` varchar(100) DEFAULT NULL,
  `idChuHo` int(11) DEFAULT NULL,
  `maKhuVuc` varchar(100) DEFAULT NULL,
  `diaChi` varchar(100) DEFAULT NULL,
  `ngayLap` date DEFAULT NULL,
  `ngayChuyenDi` date DEFAULT NULL,
  `lyDoChuyen` text DEFAULT NULL,
  `nguoiThucHien` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idChuHo` (`idChuHo`),
  FULLTEXT KEY `maHoKhau` (`maHoKhau`),
  CONSTRAINT `ho_khau_ibfk_1` FOREIGN KEY (`idChuHo`) REFERENCES `nhan_khau` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table quanlynhankhau.ho_khau: ~4 rows (approximately)
INSERT INTO `ho_khau` (`ID`, `maHoKhau`, `idChuHo`, `maKhuVuc`, `diaChi`, `ngayLap`, `ngayChuyenDi`, `lyDoChuyen`, `nguoiThucHien`) VALUES
	(13, 'TQB002', 28, 'HN03', 'Số 2 Nguyên Xá, quận Bắc Từ Liêm, Hà Nội', '2019-12-08', NULL, NULL, NULL),
	(14, 'TQB001', 26, 'HN03', 'Số 1 Nguyên Xá, quận Bắc Từ Liêm, Hà Nội', '2019-12-08', NULL, NULL, NULL),
	(15, 'TQB003', 29, 'HN03', 'Số 3 Nguyên Xá, quận Bắc Từ Liêm, Hà Nội', '2019-12-08', NULL, NULL, NULL),
	(16, 'TQB004', 33, 'HN03', 'Số 4 Nguyên Xá, quận Bắc Từ Liêm, Hà Nội', '2019-12-08', NULL, NULL, NULL);

-- Dumping structure for table quanlynhankhau.khai_tu
CREATE TABLE IF NOT EXISTS `khai_tu` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `soGiayKhaiTu` varchar(100) DEFAULT NULL,
  `idNguoiKhai` int(11) DEFAULT NULL,
  `idNguoiChet` int(11) DEFAULT NULL,
  `ngayKhai` date DEFAULT NULL,
  `ngayChet` date DEFAULT NULL,
  `lyDoChet` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idNguoiKhai` (`idNguoiKhai`),
  KEY `idNguoiChet` (`idNguoiChet`),
  CONSTRAINT `khai_tu_ibfk_1` FOREIGN KEY (`idNguoiKhai`) REFERENCES `nhan_khau` (`ID`),
  CONSTRAINT `khai_tu_ibfk_2` FOREIGN KEY (`idNguoiChet`) REFERENCES `nhan_khau` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table quanlynhankhau.khai_tu: ~0 rows (approximately)

-- Dumping structure for table quanlynhankhau.nhan_khau
CREATE TABLE IF NOT EXISTS `nhan_khau` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `maNhanKhau` varchar(100) DEFAULT NULL,
  `hoTen` varchar(100) DEFAULT NULL,
  `bietDanh` varchar(100) DEFAULT NULL,
  `namSinh` date DEFAULT NULL,
  `gioiTinh` varchar(100) DEFAULT NULL,
  `noiSinh` varchar(100) DEFAULT NULL,
  `nguyenQuan` varchar(100) DEFAULT NULL,
  `danToc` varchar(100) DEFAULT NULL,
  `tonGiao` varchar(100) DEFAULT NULL,
  `quocTich` varchar(100) DEFAULT NULL,
  `soHoChieu` varchar(100) DEFAULT NULL,
  `noiThuongTru` varchar(100) DEFAULT NULL,
  `diaChiHienNay` varchar(100) DEFAULT NULL,
  `trinhDoHocVan` varchar(100) DEFAULT NULL,
  `TrinhDoChuyenMon` varchar(100) DEFAULT NULL,
  `bietTiengDanToc` varchar(100) DEFAULT NULL,
  `trinhDoNgoaiNgu` varchar(100) DEFAULT NULL,
  `ngheNghiep` varchar(100) DEFAULT NULL,
  `noiLamViec` varchar(100) DEFAULT NULL,
  `tienAn` varchar(100) DEFAULT NULL,
  `ngayChuyenDen` date DEFAULT NULL,
  `lyDoChuyenDen` varchar(100) DEFAULT NULL,
  `ngayChuyenDi` date DEFAULT NULL,
  `lyDoChuyenDi` varchar(100) DEFAULT NULL,
  `diaChiMoi` varchar(100) DEFAULT NULL,
  `ngayTao` date DEFAULT NULL,
  `idNguoiTao` int(11) DEFAULT NULL,
  `ngayXoa` date DEFAULT NULL,
  `idNguoiXoa` int(11) DEFAULT NULL,
  `lyDoXoa` varchar(100) DEFAULT NULL,
  `ghiChu` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idNguoiTao` (`idNguoiTao`),
  KEY `idNguoiXoa` (`idNguoiXoa`),
  FULLTEXT KEY `hoTen` (`hoTen`,`bietDanh`),
  CONSTRAINT `nhan_khau_ibfk_1` FOREIGN KEY (`idNguoiTao`) REFERENCES `users` (`ID`),
  CONSTRAINT `nhan_khau_ibfk_2` FOREIGN KEY (`idNguoiXoa`) REFERENCES `users` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table quanlynhankhau.nhan_khau: ~13 rows (approximately)
INSERT INTO `nhan_khau` (`ID`, `maNhanKhau`, `hoTen`, `bietDanh`, `namSinh`, `gioiTinh`, `noiSinh`, `nguyenQuan`, `danToc`, `tonGiao`, `quocTich`, `soHoChieu`, `noiThuongTru`, `diaChiHienNay`, `trinhDoHocVan`, `TrinhDoChuyenMon`, `bietTiengDanToc`, `trinhDoNgoaiNgu`, `ngheNghiep`, `noiLamViec`, `tienAn`, `ngayChuyenDen`, `lyDoChuyenDen`, `ngayChuyenDi`, `lyDoChuyenDi`, `diaChiMoi`, `ngayTao`, `idNguoiTao`, `ngayXoa`, `idNguoiXoa`, `lyDoXoa`, `ghiChu`) VALUES
	(26, NULL, 'Trinh Văn An', '', '1990-12-07', 'Nam', NULL, 'Hà Nội', 'Kinh', 'Không', 'Việt Nam', '', 'Số 1 Tạ Quang Bưu, Hai Bà Trưng, Hà Nội', 'Số 1 Tạ Quang Bưu, Hai Bà Trưng, Hà Nội', '12/12 chính quy', 'Thạc sĩ', 'Không', 'Anh trình đọ B', 'Giáo Viên', 'Trường THCS Chu Văn An', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-08', 1, NULL, NULL, NULL, NULL),
	(27, NULL, 'Trần Thanh Duyên', '', '1997-12-23', 'Nữ', NULL, 'Hải Phòng', 'Kinh', 'Không', 'Việt Nam', '', 'Số 3, đường Đình Đông, phường Đình Đông, quận Ngô Quyền, Hải Phòng', 'Số 2 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội', '12/12 chính quy', 'Thạc sĩ', 'Không', 'Anh trình độ D', 'Nhân viên văn phòng', 'Công ty ABC', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-08', 1, NULL, NULL, NULL, NULL),
	(28, NULL, 'Nguyễn Minh Quân', '', '1995-05-31', 'Nam', NULL, 'Hà Nội', 'Kinh', 'Không', 'Việt Nam', '', 'Số 2 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội', 'Số 2 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội', '12/12 chính quy', 'Thạc sĩ', 'Không', 'Anh trình độ D', 'Kỹ sư', 'Viettel', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-08', 1, NULL, NULL, NULL, NULL),
	(29, NULL, 'Nguyễn Tiến Dũng', '', '1964-06-03', 'Nam', NULL, 'Hải Dương', 'Kinh', 'Thiên chúa giáo', 'Việt Nam', '', 'Số 3 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội', 'Số 4 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội', '12/12 chính quy', 'Kỹ sư', 'Không', 'Không', 'Phó giám đốc', 'Công ty EXE', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-08', 1, NULL, NULL, NULL, NULL),
	(30, NULL, 'Vũ Mỹ Linh', '', '1965-12-06', 'Nữ', NULL, 'Hà Nội', 'Kinh', 'Không', 'Việt Nam', '', 'Số 3 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội', 'Số 3 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội', '12/12', 'Cử Nhân', 'Không', 'Không', 'Nội trợ', 'Tại nhà', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-08', 1, NULL, NULL, NULL, NULL),
	(31, NULL, 'Nguyễn Tiến Đạt', '', '1990-09-09', 'Nam', NULL, 'Hải Dương', 'Kinh', 'Thiên chúa giáo', 'Việt Nam', '', 'Số 3 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội', 'Số 3 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội', '12/12 chính quy', 'Kỹ sư', 'không', 'Anh trình độ C', 'Kỹ sư điện', 'Công ty điện EVN', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-08', 1, NULL, NULL, NULL, NULL),
	(32, NULL, 'Nguyễn Trà My', '', '1997-12-12', 'Nữ', NULL, 'Hải Dương', 'Kinh', 'Thiên chúa giáo', 'Việt Nam', '', 'Số 3 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội', 'Số 3 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội', '12/12 chính quy', 'Thạc sĩ', 'không', 'Anh trình đố D', 'Luật sư', 'Văn phòng luật sư 123', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-08', 1, NULL, NULL, NULL, NULL),
	(33, NULL, 'Trần Văn Nam', '', '1980-07-09', 'Nam', NULL, 'Hà Nội', 'Kinh', 'Không', 'Việt Nam', '', 'Số 4 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội', 'Số 4 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội', '12/12 chính quy', 'Tiến sĩ', 'Không', 'Anh trình độ D', 'Giảng viên đại học', 'Đại học Bách khoa Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-08', 1, NULL, NULL, NULL, NULL),
	(34, NULL, 'Nguyễn Minh Tuyết', '', '1985-09-02', 'Nữ', NULL, 'Nam Định', 'Kinh', 'Không', 'Việt Nam', '', 'Số 4 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội', 'Số 4 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội', '12/12 chính quy', 'Thạc sĩ', 'Không', 'Anh trình độ D', 'Bác sĩ', 'Bệnh viện quốc tế HJK', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-08', 1, NULL, NULL, NULL, NULL),
	(35, NULL, 'Trần Trung Kiên', '', '2008-12-25', 'Nam', NULL, 'Hà Nội', 'Kinh', 'Không', 'Việt Nam', '', 'Số 4 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội', 'Số 4 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội', '6/12 chính quy', 'Không', 'Không', 'Không', 'Học sinh', 'Trường THCS Chu Văn An', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-08', 1, NULL, NULL, NULL, NULL),
	(36, NULL, 'Trần Thúy Ngọc', '', '2013-01-15', 'Nữ', NULL, 'Hà Nội', 'Kinh', 'Không', 'Việt Nam', '', 'Số 4 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội', 'Số 4 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội', '1/12 chính quy', 'Không', 'Không', 'Không', 'Học sinh', 'Trường tiểu học Chu Văn An', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-08', 1, NULL, NULL, NULL, NULL),
	(37, NULL, 'Lý Văn Công', '', '1945-06-04', 'Nam', NULL, 'Hà Nội', 'Kinh', 'Không', 'Việt Nam', '', 'Số 5 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội', 'Số 5 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội', '10/12 chính quy', 'Không', 'Không', 'Không', 'Về hưu', 'Không', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-08', 1, NULL, NULL, NULL, NULL),
	(38, NULL, 'Bùi Thị Hà', '', '1948-02-03', 'Nữ', NULL, 'Hải Phòng', 'Kinh', 'Không', 'Việt Nam', '', 'Số 5 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội', 'Số 5 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội', '10/12', 'Không', 'Không', 'Không', 'Nội trợ', 'Tại nhà', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-08', 1, NULL, NULL, NULL, NULL);

-- Dumping structure for table quanlynhankhau.tam_tru
CREATE TABLE IF NOT EXISTS `tam_tru` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `idNhanKhau` int(11) DEFAULT NULL,
  `maGiayTamtru` varchar(100) DEFAULT NULL,
  `soDienThoaiNguoiDangKy` varchar(100) DEFAULT NULL,
  `tuNgay` date NOT NULL,
  `denNgay` date NOT NULL,
  `lyDo` text NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `idNhanKhau` (`idNhanKhau`),
  CONSTRAINT `tam_tru_ibfk_1` FOREIGN KEY (`idNhanKhau`) REFERENCES `nhan_khau` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table quanlynhankhau.tam_tru: ~0 rows (approximately)

-- Dumping structure for table quanlynhankhau.tam_vang
CREATE TABLE IF NOT EXISTS `tam_vang` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `idNhanKhau` int(11) DEFAULT NULL,
  `maGiayTamVang` varchar(100) DEFAULT NULL,
  `noiTamtru` varchar(100) DEFAULT NULL,
  `tuNgay` date DEFAULT NULL,
  `denNgay` date DEFAULT NULL,
  `lyDo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idNhanKhau` (`idNhanKhau`),
  CONSTRAINT `tam_vang_ibfk_1` FOREIGN KEY (`idNhanKhau`) REFERENCES `nhan_khau` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table quanlynhankhau.tam_vang: ~0 rows (approximately)

-- Dumping structure for table quanlynhankhau.thanh_vien_cua_ho
CREATE TABLE IF NOT EXISTS `thanh_vien_cua_ho` (
  `idNhanKhau` int(11) NOT NULL,
  `idHoKhau` int(11) NOT NULL,
  `quanHeVoiChuHo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idNhanKhau`,`idHoKhau`),
  KEY `idHoKhau` (`idHoKhau`),
  CONSTRAINT `thanh_vien_cua_ho_ibfk_1` FOREIGN KEY (`idNhanKhau`) REFERENCES `nhan_khau` (`ID`),
  CONSTRAINT `thanh_vien_cua_ho_ibfk_2` FOREIGN KEY (`idHoKhau`) REFERENCES `ho_khau` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table quanlynhankhau.thanh_vien_cua_ho: ~10 rows (approximately)
INSERT INTO `thanh_vien_cua_ho` (`idNhanKhau`, `idHoKhau`, `quanHeVoiChuHo`) VALUES
	(26, 14, 'Chủ hộ'),
	(27, 13, 'Vợ'),
	(29, 15, 'Chủ hộ'),
	(30, 15, 'Vợ'),
	(31, 15, 'Con trai'),
	(32, 15, 'Con gái'),
	(33, 16, 'Chủ hộ'),
	(34, 16, 'Vợ'),
	(35, 16, 'Con trai'),
	(36, 16, 'Con gái');

-- Dumping structure for table quanlynhankhau.tieu_su
CREATE TABLE IF NOT EXISTS `tieu_su` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `idNhanKhau` int(11) DEFAULT NULL,
  `tuNgay` date DEFAULT NULL,
  `denNgay` date DEFAULT NULL,
  `diaChi` varchar(100) DEFAULT NULL,
  `ngheNghiep` varchar(100) DEFAULT NULL,
  `noiLamViec` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idNhanKhau` (`idNhanKhau`),
  CONSTRAINT `tieu_su_ibfk_1` FOREIGN KEY (`idNhanKhau`) REFERENCES `nhan_khau` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table quanlynhankhau.tieu_su: ~11 rows (approximately)
INSERT INTO `tieu_su` (`ID`, `idNhanKhau`, `tuNgay`, `denNgay`, `diaChi`, `ngheNghiep`, `noiLamViec`) VALUES
	(2, 27, '2015-09-05', '2015-09-05', 'Số 45, ngõ 56, Nguyễn Khang, Cầu Giấy, Hà Nội', 'Sinh Viên', 'Đại học Thương mại'),
	(3, 28, '2012-09-05', '2017-09-05', '556 La Thành, Hà Nội', 'Sinh Viên', 'Đại học Công nghiệp Hà Nội'),
	(4, 29, '1989-05-10', '2000-08-25', 'Số 5 Nguyễn Khuyến, Hà Nội', 'Quản lý nhận sự', 'Công ty BCC'),
	(5, 30, '1987-05-23', '1997-03-01', 'Số 3 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội', 'Nhân viên văn phòng', 'Công ty Zezs'),
	(6, 31, '2008-09-05', '2013-09-05', 'Số 3 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội', 'Sinh viên', 'Đại học Bách khoa Hà Nội'),
	(7, 32, '2015-09-05', '2019-09-05', 'Số 3 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội', 'Sinh viên', 'Đại học Luật Hà Nội'),
	(8, 33, '1998-09-05', '2003-09-05', 'Số 66, ngõ 445 Nguyễn Khang, Cầu Giấy, Hà Nội', 'Sinh Vvên', 'Đại học Xây Dựng Hà Nội'),
	(9, 33, '2003-10-03', '2018-08-06', 'Số 4 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội', 'Giảng viên', 'Đại học Công ngiệp Hà Nội'),
	(10, 34, '2003-09-05', '2011-09-05', 'Số 8 Tôn Thất Tùng, Hà Nội', 'Sinh viên', 'Đại học Y Hà Nội'),
	(11, 34, '2011-10-03', '2015-08-09', 'Số 8 Tôn Thất Tùng, Hà Nội', 'Bác sĩ nội trú', 'Bệnh viện Bạch Mai'),
	(12, 37, '1961-01-01', '1963-01-01', 'Không rõ', 'Bộ đội', 'Hà Nội');

-- Dumping structure for table quanlynhankhau.users
CREATE TABLE IF NOT EXISTS `users` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(100) DEFAULT NULL,
  `passwd` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table quanlynhankhau.users: ~1 rows (approximately)
INSERT INTO `users` (`ID`, `userName`, `passwd`) VALUES
	(1, 'admin', '1');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
