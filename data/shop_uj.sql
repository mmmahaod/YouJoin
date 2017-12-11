CREATE DATABASE IF NOT EXISTS shop_uj;
USE shop_uj;

-- 管理员表
DROP TABLE IF EXISTS uj_admin;
CREATE TABLE uj_admin(
    id tinyint unsigned auto_increment key,
    username varchar(20) not null unique,
    password char(32) not null,
    email varchar(50) not null
);

-- 分类表
DROP TABLE IF EXISTS uj_cate;
CREATE TABLE uj_cate(
    id smallint unsigned auto_increment key,
    cName varchar(50) unique
);

-- 商品表
DROP TABLE IF EXISTS uj_pro;
CREATE TABLE uj_pro(
    id int unsigned auto_increment key,
    pName varchar(50) not null unique,
    pSn varchar(50) not null,
    pNum int unsigned default 1,
    mPrice decimal(10,2) not null,
    iPrice decimal(10,2) not null,
    pDesc text,
    pImg varchar(50) not null,
    pubTime int unsigned not null,
    isShow tinyint(1) default 1,
    isHot tinyint(1) default 0,
    cId smallint unsigned not null
);

-- 用户表
DROP TABLE IF EXISTS uj_user;
CREATE TABLE uj_user(
    id int unsigned auto_increment key,
    username varchar(20) not null unique,
    password char(32) not null,
    sex enum("male","female","secret") not null default "secret",
    face varchar(50) not null,
    regTime int unsigned not null
);

-- 相册表
DROP TABLE IF EXISTS uj_album;
CREATE TABLE uj_album(
    id int unsigned auto_increment key,
    pid int unsigned not null,
    albumPath varchar(50) not null
); 
