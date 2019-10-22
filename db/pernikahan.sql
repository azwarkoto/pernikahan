/*
SQLyog Enterprise - MySQL GUI v7.14 
MySQL - 5.5.5-10.1.36-MariaDB : Database - db_pernikahan
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_pernikahan` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `db_pernikahan`;

/*Table structure for table `tb_pencarian` */

DROP TABLE IF EXISTS `tb_pencarian`;

CREATE TABLE `tb_pencarian` (
  `idpencarian` int(11) NOT NULL AUTO_INCREMENT,
  `nikcari` varchar(40) DEFAULT NULL,
  `tglcari` datetime DEFAULT NULL,
  PRIMARY KEY (`idpencarian`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tb_pencarian` */

insert  into `tb_pencarian`(`idpencarian`,`nikcari`,`tglcari`) values (1,'1871036507920003','2019-10-20 13:46:30');

/*Table structure for table `tb_pernikahan` */

DROP TABLE IF EXISTS `tb_pernikahan`;

CREATE TABLE `tb_pernikahan` (
  `idnikah` int(11) NOT NULL AUTO_INCREMENT,
  `niksuami` varchar(40) DEFAULT NULL,
  `nikistri` varchar(40) DEFAULT NULL,
  `tglnikah` date DEFAULT NULL,
  `penghulu` varchar(30) DEFAULT NULL,
  `statusnikah` varchar(40) DEFAULT NULL,
  `lokasinikah` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`idnikah`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tb_pernikahan` */

insert  into `tb_pernikahan`(`idnikah`,`niksuami`,`nikistri`,`tglnikah`,`penghulu`,`statusnikah`,`lokasinikah`) values (1,'1871080203880005','1871036507920003','2019-08-29','H. HAFIZULLAH, S.Ag, M.E.Sy.','2','-');

/*Table structure for table `tb_statusnikah` */

DROP TABLE IF EXISTS `tb_statusnikah`;

CREATE TABLE `tb_statusnikah` (
  `idstatus` int(11) NOT NULL AUTO_INCREMENT,
  `namastatus` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`idstatus`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `tb_statusnikah` */

insert  into `tb_statusnikah`(`idstatus`,`namastatus`) values (1,'Belum Menikah'),(2,'Menikah'),(3,'Janda'),(4,'Duda'),(5,'Cerai');

/*Table structure for table `tb_tanggapan` */

DROP TABLE IF EXISTS `tb_tanggapan`;

CREATE TABLE `tb_tanggapan` (
  `idtanggapan` int(11) NOT NULL AUTO_INCREMENT,
  `nik` varchar(40) DEFAULT NULL,
  `namalengkap` varchar(40) DEFAULT NULL,
  `isitanggapan` text,
  PRIMARY KEY (`idtanggapan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_tanggapan` */

/*Table structure for table `tb_user` */

DROP TABLE IF EXISTS `tb_user`;

CREATE TABLE `tb_user` (
  `iduser` int(11) NOT NULL AUTO_INCREMENT,
  `namauser` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `namalengkap` varchar(40) DEFAULT NULL,
  `lastlogin` datetime DEFAULT NULL,
  PRIMARY KEY (`iduser`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tb_user` */

insert  into `tb_user`(`iduser`,`namauser`,`password`,`namalengkap`,`lastlogin`) values (1,'admin','admin','Administrator','2019-10-17 22:37:51');

/*Table structure for table `tb_warga` */

DROP TABLE IF EXISTS `tb_warga`;

CREATE TABLE `tb_warga` (
  `nik` varchar(40) NOT NULL,
  `namalengkap` varchar(40) DEFAULT NULL,
  `alamat` text,
  `jk` varchar(20) DEFAULT NULL,
  `statusnikah` varchar(30) DEFAULT NULL,
  `statuslain` varchar(40) DEFAULT NULL,
  `foto` text,
  `tanggallahir` date DEFAULT NULL,
  `pekerjaan` varchar(100) DEFAULT NULL,
  `pendidikan` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`nik`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_warga` */

insert  into `tb_warga`(`nik`,`namalengkap`,`alamat`,`jk`,`statusnikah`,`statuslain`,`foto`,`tanggallahir`,`pekerjaan`,`pendidikan`) values ('1871036507920003','YULI RAHMAWATI','-','Perempuan','1',NULL,'noimage5.png','1992-07-25','KARYAWAN SWASTA','-'),('1871080203880005','SERDIAWAN','-','Laki-Laki','1',NULL,'noimage4.png','1988-03-02','KARYAWAN SWASTA','-');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
