CREATE DATABASE tour character set UTF8 collate utf8_bin;
-- tour
CREATE TABLE tour.tour (
  id int(11) NOT NULL AUTO_INCREMENT,
  ma varchar(255) DEFAULT NULL,
  ten varchar(255) DEFAULT NULL,
  anh varchar(255) DEFAULT NULL,
  ma_danhmuc varchar(255) DEFAULT NULL,
  gia varchar(255) DEFAULT NULL,
  giam_gia varchar(255) DEFAULT NULL,
  yeu_thich varchar(255) DEFAULT NULL,
  mo_ta varchar(255) DEFAULT NULL,
  danh_gia varchar(255) DEFAULT NULL,
  ngay_tao date DEFAULT NULL,
  ngay_capnhat date DEFAULT NULL,
  ma_nguoi_tao varchar(255) DEFAULT NULL,
  ma_nguoi_capnhat varchar(255) DEFAULT NULL,
  trang_thai int(11) DEFAULT NULL,
  PRIMARY KEY (id)
);
-- Alter column `mo_ta` on table `tour`
--
ALTER TABLE tour 
  CHANGE COLUMN mo_ta mo_ta BLOB DEFAULT NULL;

--
-- Create column `thoi_gian` on table `tour`
--
ALTER TABLE tour 
  ADD COLUMN thoi_gian VARCHAR(255) DEFAULT NULL;

-- Alter column `mo_ta` on table `tour`
--
ALTER TABLE tour 
  CHANGE COLUMN mo_ta mo_ta TEXT DEFAULT NULL;

--
-- Create column `van_tat` on table `tour`
--
ALTER TABLE tour 
  ADD COLUMN van_tat VARCHAR(255) DEFAULT NULL;
ALTER TABLE tour 
  ADD COLUMN gia_sau_giam VARCHAR(255) DEFAULT NULL;

ALTER TABLE tour 
  ADD COLUMN anh_ct1 VARCHAR(255) DEFAULT NULL;

--
-- Create column `anh_ct2` on table `tour`
--
ALTER TABLE tour 
  ADD COLUMN anh_ct2 VARCHAR(255) DEFAULT NULL;

--
-- Create column `anh_ct3` on table `tour`
--
ALTER TABLE tour 
  ADD COLUMN anh_ct3 VARCHAR(255) DEFAULT NULL;
ALTER TABLE tour 
  ADD COLUMN dia_diem TEXT DEFAULT NULL;
-- chi hotel
CREATE TABLE tour.hotel (
  id int(11) NOT NULL AUTO_INCREMENT,
  ma varchar(255) DEFAULT NULL,
  ten varchar(255) DEFAULT NULL,
  anh varchar(255) DEFAULT NULL,
  ma_tour varchar(255) DEFAULT NULL,
  gia varchar(255) DEFAULT NULL,
  giam_gia varchar(255) DEFAULT NULL,
  gia_sau_giam varchar(255) DEFAULT NULL,
  yeu_thich varchar(255) DEFAULT NULL,
  van_tat varchar(255) DEFAULT NULL,
  mo_ta TEXT DEFAULT NULL,
  danh_gia varchar(255) DEFAULT NULL,
  thoi_gian VARCHAR(255) DEFAULT NULL,
  ngay_tao date DEFAULT NULL,
  ngay_capnhat date DEFAULT NULL,
  ma_nguoi_tao varchar(255) DEFAULT NULL,
  ma_nguoi_capnhat varchar(255) DEFAULT NULL,
  trang_thai int(11) DEFAULT NULL,
  PRIMARY KEY (id)
);
ALTER TABLE hotel 
  ADD COLUMN anh_ct1 VARCHAR(255) DEFAULT NULL;

--
-- Create column `anh_ct2` on table `hotel`
--
ALTER TABLE hotel 
  ADD COLUMN anh_ct2 VARCHAR(255) DEFAULT NULL;

--
-- Create column `anh_ct3` on table `hotel`
--
ALTER TABLE hotel 
  ADD COLUMN anh_ct3 VARCHAR(255) DEFAULT NULL;

--
-- Create column `dia_chi` on table `hotel`
--
ALTER TABLE hotel 
  ADD COLUMN dia_chi TEXT DEFAULT NULL;
ALTER TABLE hotel 
  ADD COLUMN ma_danhmuc VARCHAR(255) DEFAULT NULL;
CREATE TABLE tour.account_user (
  id int(11) NOT NULL AUTO_INCREMENT,
  ma varchar(255) DEFAULT NULL,
  username varchar(255) DEFAULT NULL,
  password varchar(255) DEFAULT NULL,
  ten_nguoi_dung varchar(255) DEFAULT NULL,
  ngay_sinh date NOT NULL,
  dia_chi varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  ngay_tao date NOT NULL,
  last_login date NOT NULL,
  sdt varchar(255) binary DEFAULT NULL,
  email varchar(50) binary DEFAULT NULL,
  image varchar(255) binary DEFAULT NULL,
  PRIMARY KEY (id)
);
-- Alter column `ngay_sinh` on table `account_user`
--
ALTER TABLE account_user 
  CHANGE COLUMN ngay_sinh ngay_sinh DATE DEFAULT NULL;

--
-- Alter column `ngay_tao` on table `account_user`
--
ALTER TABLE account_user 
  CHANGE COLUMN ngay_tao ngay_tao DATE DEFAULT NULL;

--
-- Alter column `last_login` on table `account_user`
--
ALTER TABLE account_user 
  CHANGE COLUMN last_login last_login DATE DEFAULT NULL;

--
-- Alter column `email` on table `account_user`
--
ALTER TABLE account_user 
  CHANGE COLUMN email email VARCHAR(50) BINARY NOT NULL;
CREATE TABLE tour.account_admin (
  id int(11) NOT NULL AUTO_INCREMENT,
  ma varchar(255) DEFAULT NULL,
  username varchar(255) DEFAULT NULL,
  password varchar(255) DEFAULT NULL,
  ten varchar(255) DEFAULT NULL,
  ngay_sinh date DEFAULT NULL,
  quyen int(11) DEFAULT NULL,
  PRIMARY KEY (id)
);
-- danh muc
CREATE TABLE tour.danhmuc (
  id int(10) NOT NULL AUTO_INCREMENT,
  ma varchar(255) DEFAULT NULL,
  ten varchar(255) DEFAULT NULL,
  anh varchar(255) DEFAULT NULL,
  mo_ta varchar(255) binary DEFAULT NULL,
  so_luong_tour int(11) DEFAULT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE tour.room (
  id int(11) NOT NULL AUTO_INCREMENT,
  ma varchar(255) DEFAULT NULL,
  ten varchar(255) DEFAULT NULL,
  anh varchar(255) DEFAULT NULL,
  ma_hotel varchar(255) DEFAULT NULL,
  gia varchar(255) DEFAULT NULL,
  giam_gia varchar(255) DEFAULT NULL,
  gia_sau_giam varchar(255) DEFAULT NULL,
  yeu_thich varchar(255) DEFAULT NULL,
  van_tat varchar(255) DEFAULT NULL,
  mo_ta TEXT DEFAULT NULL,
  danh_gia varchar(255) DEFAULT NULL,
  thoi_gian VARCHAR(255) DEFAULT NULL,
  ngay_tao date DEFAULT NULL,
  ngay_capnhat date DEFAULT NULL,
  ma_nguoi_tao varchar(255) DEFAULT NULL,
  ma_nguoi_capnhat varchar(255) DEFAULT NULL,
  trang_thai int(11) DEFAULT NULL,
  PRIMARY KEY (id)
);
ALTER TABLE room 
  ADD COLUMN anh_ct1 NVARCHAR(255) DEFAULT NULL;

--
-- Create column `anh_ct2` on table `room`
--
ALTER TABLE room 
  ADD COLUMN anh_ct2 VARCHAR(255) DEFAULT NULL;

--
-- Create column `anh_ct3` on table `room`
--
ALTER TABLE room 
  ADD COLUMN anh_ct3 VARCHAR(255) DEFAULT NULL;

ALTER TABLE room 
  ADD COLUMN ngay_bat_dau DATE DEFAULT NULL;

--
-- Create column `ngay_ket_thuc` on table `room`
--
ALTER TABLE room 
  ADD COLUMN ngay_ket_thuc DATE DEFAULT NULL;
CREATE TABLE tour.book (
  id int(11) NOT NULL AUTO_INCREMENT,
  ma varchar(255) DEFAULT NULL,
  user_id int(11) DEFAULT NULL,
  ma_tour varchar(255) DEFAULT NULL,
  ma_room varchar(255) DEFAULT NULL,
  ngay_tao date DEFAULT NULL,
  ngay_dat_tu date DEFAULT NULL,
  ngay_dat_den date DEFAULT NULL,
  trang_thai int(11) DEFAULT NULL,
  PRIMARY KEY (id)
);
CREATE TABLE tour.bill (
  id int(11) NOT NULL AUTO_INCREMENT,
  ma varchar(255) DEFAULT NULL,
  user_id int(11) DEFAULT NULL,
  ma_tour varchar(255) DEFAULT NULL,
  ma_room varchar(255) DEFAULT NULL,
  trang_thai int(11) DEFAULT NULL,
  ho_ten varchar(255) DEFAULT NULL,
  dia_chi TEXT DEFAULT NULL,
  so_dien_thoai varchar(255) DEFAULT NULL,
  email varchar(255) DEFAULT NULL,
  loai_thanhtoan int(11) DEFAULT NULL,
  so_tai_khoan varchar(255) DEFAULT NULL,
  thanh_tien varchar(255) DEFAULT NULL,
  ngay_tao date DEFAULT NULL,
  PRIMARY KEY (id)
);
-- thu tuc
-- DROP PROCEDURE IF EXISTS proc_GetTourSale;
CREATE DEFINER = 'root'@'localhost'
PROCEDURE tour.proc_GetTourSale ()
BEGIN
  SELECT
    *
  FROM tour t
  WHERE t.giam_gia > 0
  ORDER BY t.giam_gia desc;
END;

CREATE DEFINER = 'root'@'localhost'
PROCEDURE tour.proc_GetHotelSale ()
BEGIN
  SELECT
    *
  FROM hotel h
  WHERE h.giam_gia > 0
  ORDER BY h.giam_gia desc;
END;

-- Create procedure `proc_AddNewAccount_User`
--
CREATE DEFINER = 'root'@'localhost'
PROCEDURE tour.proc_AddNewAccount_User (IN username varchar(255), IN password varchar(255), IN email varchar(255), IN ngay_tao date, IN last_login date)
BEGIN
  INSERT INTO account_user (username, password, email, ngay_tao, last_login)
    VALUES (username, password, email, DATE(ngay_tao), DATE(last_login));
END;

CREATE DEFINER = 'root'@'localhost'
PROCEDURE tour.proc_AddNewBill (IN user_id int, IN ma_tour varchar(255), IN ma_room varchar(255),IN ho_ten varchar(255),IN dia_chi varchar(255), IN so_dien_thoai varchar(255),IN email varchar(255),IN loai_thanhtoan varchar(255),IN so_tai_khoan varchar(255),IN thanh_tien varchar(255), IN ngay_tao date)
BEGIN
  INSERT INTO bill (user_id, ma_tour, ma_room, ho_ten, dia_chi,so_dien_thoai,email ,loai_thanhtoan, so_tai_khoan , thanh_tien, ngay_tao)
    VALUES (user_id, ma_tour, ma_room, ho_ten, dia_chi,so_dien_thoai,email ,loai_thanhtoan, so_tai_khoan , thanh_tien, DATE(ngay_tao));
END;

CREATE DEFINER = 'root'@'localhost'
PROCEDURE tour.proc_AddNewBook (IN user_id int, IN ma_tour varchar(255), IN ma_room varchar(255),IN ngay_tao date,IN ngay_dat_tu date,IN ngay_dat_den date)
BEGIN
  INSERT INTO book (user_id, ma_tour, ma_room,ngay_tao,ngay_dat_tu,ngay_dat_den)
    VALUES (user_id, ma_tour, ma_room, DATE(ngay_tao),DATE(ngay_dat_tu),DATE(ngay_dat_den));
END;

CREATE DEFINER = 'root'@'localhost'
PROCEDURE tour.proc_AddNewDanhMuc (IN ma varchar(255), IN ten varchar(255), IN anh varchar(255), IN mo_ta text, IN so_luong_tour int)
BEGIN
  INSERT INTO danhmuc (ma, ten, anh, mo_ta, so_luong_tour)
    VALUES (ma, ten, anh, mo_ta, so_luong_tour);
END;

CREATE DEFINER = 'root'@'localhost'
PROCEDURE tour.proc_EditDanhMuc (IN id varchar(255),IN ma varchar(255), IN ten varchar(255), IN anh varchar(255), IN mo_ta text, IN so_luong_tour int)
BEGIN
  UPDATE danhmuc d
  SET d.ma = ma,
      d.ten = ten,
      d.anh = anh,
      d.mo_ta = mo_ta,
      d.so_luong_tour = so_luong_tour
  WHERE d.id = id;
END;

CREATE DEFINER = 'root'@'localhost'
PROCEDURE tour.proc_DelDanhMuc (IN id int)
BEGIN
  DELETE
    FROM danhmuc
  WHERE id = id;
END;

CREATE DEFINER = 'root'@'localhost'
PROCEDURE tour.proc_AddNewTour (IN ma varchar(255), IN ten varchar(255), IN anh varchar(255), IN ma_danhmuc varchar(255),IN gia varchar(255),IN giam_gia varchar(255),IN mo_ta text, IN danh_gia varchar(255),IN thoi_gian varchar(255),IN van_tat varchar(255),IN gia_sau_giam varchar(255),IN anh_ct1 varchar(255),IN anh_ct2 varchar(255),IN anh_ct3 varchar(255),IN dia_diem varchar(255))
BEGIN
  INSERT INTO tour (ma,ten,anh, ma_danhmuc,gia,giam_gia,mo_ta,danh_gia,thoi_gian,van_tat,gia_sau_giam,anh_ct1,anh_ct2,anh_ct3,dia_diem)
    VALUES (ma,ten,anh, ma_danhmuc,gia,giam_gia,mo_ta,danh_gia,thoi_gian,van_tat,gia_sau_giam,anh_ct1,anh_ct2,anh_ct3,dia_diem);
END;

CREATE DEFINER = 'root'@'localhost'
PROCEDURE tour.proc_EditTour (IN id int,IN ma varchar(255), IN ten varchar(255), IN anh varchar(255), IN ma_danhmuc varchar(255),IN gia varchar(255),IN giam_gia varchar(255),IN mo_ta text, IN danh_gia varchar(255),IN thoi_gian varchar(255),IN van_tat varchar(255),IN gia_sau_giam varchar(255),IN anh_ct1 varchar(255),IN anh_ct2 varchar(255),IN anh_ct3 varchar(255),IN dia_diem varchar(255))
BEGIN
  UPDATE tour d
  SET d.ma = ma,
      d.ten = ten,
      d.anh = anh,
      d.ma_danhmuc = ma_danhmuc,
      d.gia = gia,
      d.giam_gia = giam_gia,
      d.mo_ta = mo_ta,
      d.danh_gia = danh_gia,
      d.thoi_gian = thoi_gian,
      d.van_tat = van_tat,
      d.gia_sau_giam = gia_sau_giam,
      d.anh_ct1 = anh_ct1,
      d.anh_ct2 = anh_ct2,
      d.anh_ct3 = anh_ct3,
      d.dia_diem = dia_diem
  WHERE d.id = id;
END;

CREATE DEFINER = 'root'@'localhost'
PROCEDURE tour.proc_DelTour (IN id int)
BEGIN
  DELETE
    FROM tour
  WHERE id = id;
END;

-- hotel
  CREATE DEFINER = 'root'@'localhost'
PROCEDURE tour.proc_AddNewHotel (IN ma varchar(255), IN ten varchar(255), IN anh varchar(255), IN ma_danhmuc varchar(255),IN gia varchar(255),IN giam_gia varchar(255),IN mo_ta text, IN danh_gia varchar(255),IN thoi_gian varchar(255),IN van_tat varchar(255),IN gia_sau_giam varchar(255),IN anh_ct1 varchar(255),IN anh_ct2 varchar(255),IN anh_ct3 varchar(255),IN dia_chi varchar(255))
BEGIN
  INSERT INTO hotel (ma,ten,anh, ma_danhmuc,gia,giam_gia,mo_ta,danh_gia,thoi_gian,van_tat,gia_sau_giam,anh_ct1,anh_ct2,anh_ct3,dia_chi)
    VALUES (ma,ten,anh, ma_danhmuc,gia,giam_gia,mo_ta,danh_gia,thoi_gian,van_tat,gia_sau_giam,anh_ct1,anh_ct2,anh_ct3,dia_chi);
END;

CREATE DEFINER = 'root'@'localhost'
PROCEDURE tour.proc_EditHotel (IN id int,IN ma varchar(255), IN ten varchar(255), IN anh varchar(255), IN ma_danhmuc varchar(255),IN gia varchar(255),IN giam_gia varchar(255),IN mo_ta text, IN danh_gia varchar(255),IN thoi_gian varchar(255),IN van_tat varchar(255),IN gia_sau_giam varchar(255),IN anh_ct1 varchar(255),IN anh_ct2 varchar(255),IN anh_ct3 varchar(255),IN dia_chi varchar(255))
BEGIN
  UPDATE hotel d
  SET d.ma = ma,
      d.ten = ten,
      d.anh = anh,
      d.ma_danhmuc = ma_danhmuc,
      d.gia = gia,
      d.giam_gia = giam_gia,
      d.mo_ta = mo_ta,
      d.danh_gia = danh_gia,
      d.thoi_gian = thoi_gian,
      d.van_tat = van_tat,
      d.gia_sau_giam = gia_sau_giam,
      d.anh_ct1 = anh_ct1,
      d.anh_ct2 = anh_ct2,
      d.anh_ct3 = anh_ct3,
      d.dia_chi = dia_chi
  WHERE d.id = id;
END;

CREATE DEFINER = 'root'@'localhost'
PROCEDURE tour.proc_DelHotel (IN id int)
BEGIN
  DELETE
    FROM hotel
  WHERE id = id;
END;

CREATE DEFINER = 'root'@'localhost'
PROCEDURE tour.proc_GetHotels ()
BEGIN
  SELECT
    *
  FROM hotel h
  ORDER BY h.id desc;
END;
-- room
  CREATE DEFINER = 'root'@'localhost'
PROCEDURE tour.proc_AddNewRoom (IN ma varchar(255), IN ten varchar(255), IN anh varchar(255), IN ma_hotel varchar(255),IN gia varchar(255),IN giam_gia varchar(255),IN mo_ta text, IN danh_gia varchar(255),IN thoi_gian varchar(255),IN van_tat varchar(255),IN gia_sau_giam varchar(255),IN anh_ct1 varchar(255),IN anh_ct2 varchar(255),IN anh_ct3 varchar(255))
BEGIN
  INSERT INTO room (ma,ten,anh, ma_hotel,gia,giam_gia,mo_ta,danh_gia,thoi_gian,van_tat,gia_sau_giam,anh_ct1,anh_ct2,anh_ct3)
    VALUES (ma,ten,anh, ma_hotel,gia,giam_gia,mo_ta,danh_gia,thoi_gian,van_tat,gia_sau_giam,anh_ct1,anh_ct2,anh_ct3);
END;

CREATE DEFINER = 'root'@'localhost'
PROCEDURE tour.proc_EditRoom (IN id int,IN ma varchar(255), IN ten varchar(255), IN anh varchar(255), IN ma_hotel varchar(255),IN gia varchar(255),IN giam_gia varchar(255),IN mo_ta text, IN danh_gia varchar(255),IN thoi_gian varchar(255),IN van_tat varchar(255),IN gia_sau_giam varchar(255),IN anh_ct1 varchar(255),IN anh_ct2 varchar(255),IN anh_ct3 varchar(255))
BEGIN
  UPDATE room d
  SET d.ma = ma,
      d.ten = ten,
      d.anh = anh,
      d.ma_hotel = ma_hotel,
      d.gia = gia,
      d.giam_gia = giam_gia,
      d.mo_ta = mo_ta,
      d.danh_gia = danh_gia,
      d.thoi_gian = thoi_gian,
      d.van_tat = van_tat,
      d.gia_sau_giam = gia_sau_giam,
      d.anh_ct1 = anh_ct1,
      d.anh_ct2 = anh_ct2,
      d.anh_ct3 = anh_ct3
  WHERE d.id = id;
END;

CREATE DEFINER = 'root'@'localhost'
PROCEDURE tour.proc_DelRoom (IN id int)
BEGIN
  DELETE
    FROM hotel
  WHERE id = id;
END;




