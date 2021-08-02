﻿CREATE DATABASE tour character set UTF8 collate utf8_bin;
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
CREATE TABLE tour.gio_hang (
  id int(11) NOT NULL AUTO_INCREMENT,
  ma varchar(255) DEFAULT NULL,
  user_id int(11) DEFAULT NULL,
  ma_tour varchar(255) DEFAULT NULL,
  ma_room varchar(255) DEFAULT NULL,
  ngay_tao date DEFAULT NULL,
  trang_thai int(11) DEFAULT NULL,
  PRIMARY KEY (id)
);
CREATE TABLE tour.hoa_don (
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


