/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 10.3.28-MariaDB : Database - hdbaru
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`hdbaru` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;

USE `hdbaru`;

/*Table structure for table `tabelcustomer` */

DROP TABLE IF EXISTS `tabelcustomer`;

CREATE TABLE `tabelcustomer` (
  `idcus` int(11) NOT NULL AUTO_INCREMENT,
  `idopd` int(11) DEFAULT NULL,
  `namacus` varchar(125) DEFAULT NULL,
  `jabatan` varchar(125) DEFAULT NULL,
  `nip` varchar(18) DEFAULT NULL,
  `hp` varchar(18) DEFAULT NULL,
  `user` varchar(125) DEFAULT NULL,
  `pass` varchar(125) DEFAULT NULL,
  `sebagai` varchar(55) DEFAULT '',
  `kombinasi` varchar(12) DEFAULT '',
  `konfirmasi` varchar(55) DEFAULT '',
  `passok` varchar(999) DEFAULT '',
  PRIMARY KEY (`idcus`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tabelcustomer` */

insert  into `tabelcustomer`(`idcus`,`idopd`,`namacus`,`jabatan`,`nip`,`hp`,`user`,`pass`,`sebagai`,`kombinasi`,`konfirmasi`,`passok`) values 
(25,6,'M Dico Triyadi','Staff','123456789123456789','082275849670',NULL,'123456','','VOYW','ok','e10adc3949ba59abbe56e057f20f883e'),
(26,23,'Mahardika','staff','124346451218454245','082112719104',NULL,'123456','','XPSI','ok','e10adc3949ba59abbe56e057f20f883e'),
(27,33,'Muhammad Nur','Staff','199401032019031011','081262944225',NULL,'P@ssw0rd','','JXRZ','ok','161ebd7d45089b3446ee4e0d86dbcf92'),
(29,19,'Antonius Pangribuan','Kepala Bidang Koperasi','199508082004022008','082167876287',NULL,'082167876287','','SHDU','ok','c312cb61f22f2bd74e6f620acb89e1ae'),
(30,12,'PURWANDI SYAHPUTRA','Kasubbid. Data dan Informasi','198501312009031003','081370385078',NULL,'Andi2009','','GZYB','ok','0326a9f38251efb8c3c9b652a4ed037e'),
(31,1,'Adnan','Staff','123445555566677887','085261781320',NULL,'123456','','FRUK','ok','e10adc3949ba59abbe56e057f20f883e'),
(32,4,'Januar Harahap','Staf Program','198701032006041003','081264111003',NULL,'nuaryahap87','','ZXUJ','ok','f71ceebedef6e838e120b017cb231f44'),
(33,2,'Sirmadaniah, SE','Pengelola Program dan Kegiatan','198704062020122001','082168579911',NULL,'zahra0406','','VGIM','ok','fc02bde8b709d653520dfb236affad26'),
(34,25,'Abdul Latif','Staff','199308212019031003','085270914390',NULL,'210893','','TMHD','ok','35d315920c03d60c9d8b3d2aec19c412'),
(35,45,'Junanda','Pengelola Teknologi Informasi','198607012019031006','085784547006',NULL,'1Tujuh1986','','AFTH','ok','6d39c95be08ac1f6bb5834511ffa31d4'),
(36,68,'Afrida Ningsih ','Kepala Tata Usaha ','198103062011012008','085371113281',NULL,'dalusepuluh','','LOTG','ok','ac6c112cc9245cbf4c5b5e5061f2dd35'),
(37,12,'Indria Safitri, S.Sos','Kasubbag Umum dan Kepegawaian','199108122010012001','085274000500',NULL,'indri1991','','TSKT','ok','feb0bd8c3d75afa00cfbf174c8fb20eb'),
(38,19,'Tatarina','User','123456987412356878','081254285632',NULL,'123456','','VOXH','ok','e10adc3949ba59abbe56e057f20f883e'),
(39,15,'HERLYANA','Kasubbag Umum','198512252011012002','085361701035',NULL,'123456','','LOGU','ok','e10adc3949ba59abbe56e057f20f883e'),
(40,8,'Siti Hanijar, S.E','Kasubag umum','197605092007012017','085270984918',NULL,'ciptakarya22','','GOEB','ok','49f141f7e7f6bf7611afbd473b18b16e'),
(41,65,'Sry saragih','Staff','198907132019032007','085319579213',NULL,'galang13','','MAXQ','ok','671dcb23191a312ef880e82097ac6c7d'),
(42,12,'Firmansyah','Staff','198906302020121001','085358890189',NULL,'212121','','VXKL','ok','0f5aaaf14d9a2d371853e46119abba27'),
(43,12,'Andi Pranoto','Staff Program','198210242012121001','082276063811',NULL,'Ketapangds2018','','TDOI','ok','b633a6387dcb9eca1ae5880c901c9ffb'),
(44,52,'Fuad Ikhwan Hasibuan, SSTP, M.M','Lurah Pekan Tanjung Morawa','199301262015071001','085296449746',NULL,'d4rk4r0w','','IFLZ','ok','8ade0a77d42a6f4535c248271c74cab0'),
(45,26,'Dedy armand ','Kabag perencanaan ','197409271998031012','085362118850',NULL,'deviaarmys','','UVFN','ok','d0f62a96cfc99c7f98a493fa59546634'),
(46,21,'E. Puspitaningsih, M.Si','Analis Keuangan Pusat dan Daerag','197912192010012012','08127728574',NULL,'Rodsbm001','','OKAY','ok','98b7f0333753024f508c7e8944f88107'),
(47,50,'Muhanmad irvan','Operator','199501082020121001','082247999081',NULL,'123456','','BNTJ','ok','e10adc3949ba59abbe56e057f20f883e'),
(48,51,'SUHERNI, SE','Kasubbag Umum','197307051993022008','081263098273',NULL,'123456','','QTXF','ok','e10adc3949ba59abbe56e057f20f883e'),
(49,54,'Epenetus','Staf','198205152009041006','081375643344',NULL,'123456','','MGRI','ok','e10adc3949ba59abbe56e057f20f883e'),
(50,93,'SUGIYONO','Analis Kebijakan Ahli Muda','198212102011011007','085261925945',NULL,'dhs270507','','DAHL','ok','ecb83b4bf296445327a9dfa35e000ad1'),
(51,44,'Yuni Eka Sagita Be Tampubolon','Kasubag Umum dan Kepegawaian','198206082010012021','082273924812',NULL,'pancurbatu','','PGBG','ok','ca999995166bfa56c57bebd95f829134'),
(52,12,'Ardiansyah Putra Bukit','Staf','199205232020121002','085311813657',NULL,'kutalimbaru','','OQEO','ok','2f4ccb6b3768116c0df8cbfa08014435'),
(53,27,'Yuni rosnita','Bendahara penerimaan','198206142009032009','081263465070',NULL,'123456789','','YDHU','ok','25f9e794323b453885f5181f1b624d0b'),
(54,35,'Imanuel Ginting','Plt Program dan keuangan ','199105052015031003','081262320785',NULL,'kecamatandelitua123','','USCD','ok','6442a3e731cf48d10971ec32e6402400'),
(55,35,'Kornelius Sembiring','Pengelola Sarana dan Prasana Kantor','199307142020121001','081249493499',NULL,'Diamnapa1','','NUYC','ok','162c7fa1f7203a911edea851adde7a89'),
(56,40,'INDRA IRAWAN, SE','Analis Perencaan Evaluasi dan Pelaporan','196908062009031003','081362032627',NULL,'12345678','','ILRE','ok','25d55ad283aa400af464c76d713c07ad'),
(57,12,'BUN PANGI SINAGA,SE','STAFF','197312132011011001','085336234000',NULL,'gangbudi12','','PVND','ok','ffe5600e38779ae4e6df4b1b9f22a168'),
(58,29,'ROIMER SITORUS','ANALIS TATA USAHA','199005052020121001','081260097904',NULL,'kabupatendeliserdang','','MEGA','ok','a3be7f3a8484b1387ade361156519b7a'),
(59,1,'Irfan S','Staf','198301272009031001','085370545792',NULL,'papakayla','','RKZM','ok','1c8f15ea65f55702a42f050bc1af2711'),
(60,13,'Yoan Nita Budiman Dalimunthe, ST','Kasi Layanan Otomasi dan Kerjasama Perpustakaan','198502132010012028','085213445656',NULL,'130220','','CXAO','ok','b3f610e8d54a2a5ec632727cd0f9389c'),
(61,30,'Rinaldi Kesuma ','Staff','198909092011011002','081260781229',NULL,'super1966','','RXIQ','ok','4ca304cb4d5f90a5d5f48ad5333affbb'),
(62,13,'Abdi Suranta Sembiring, S.Sos','Kasubbag umum','197706062014071003','081375521638',NULL,'Syahmad36','','POJR','ok','7f38f9efea0ac5c3c97c4bf4e79503cb'),
(63,6,'Siti Hajar','Pengurus Barang','197109011991032002','081263340124',NULL,'bpbdds','','CPEJ','ok','6a89ca14118e37ef60e4d32ad081d6b5'),
(65,26,'Muhammad iqbal','Staff','112233445566778899','082236785880',NULL,'pelayananprima','','HTJR','ok','e10189a3abed6c9d6c66aeb5de11190f'),
(66,29,'Berry Bermana Ginting, Amd','Pengurus Barang','199306152019031009','082366660525',NULL,'kominfo','','SUJO','ok','dc2f4ef676263fe9dde73a9ae6299258'),
(67,20,'Khairuddinsyah','Urban ','123456789101112131','082210474893',NULL,'password','','ATWO','ok','5f4dcc3b5aa765d61d8327deb882cf99'),
(68,72,'Herliana Sirait','KTU','196809291991032012','082160494568',NULL,'Her2909','','JXUS','ok','88a3ae16a3530fc9b667dc5d78c3eb0f'),
(69,28,'Muhammad Fadil Makmur, ST','Staf sub bagian umum','198711022010011002','085296055126',NULL,'sukses12','','ABOI','ok','7ee1b4da5ec7e475daf176cf4a5557a4'),
(70,32,'Taufik','Staf','120727060386000201','085361848261',NULL,'848261','','AEER','ok','501f69dd86e8a64909ab4a59abd46659'),
(72,11,'Evi julinta br ginting','Kasi kepahlawanan dan restorasi sosial','197707292008012018','083871724647',NULL,'290777','','YYAS','ok','c87c43f50f5fed6388d32001f5fb85d7'),
(73,27,'Trimanto','Tenaga Ahli','198205052009031007','082366699668',NULL,'Medan123','','WNZN','ok','b24751afc3ad8e2874fe3ecde4edc1bf'),
(74,92,'Maykel','Operator Jaringan','-','-',NULL,NULL,'','','',''),
(75,5,'Ferdinandus Tamba','Kasi Tata Kelola SDM Tekno, Info &amp; Kom','197306081995071002','081361147440',NULL,'DUKCAPIL','','TBUT','ok','17defb5b7d3c9ec7d7691f70cf9b3d7d'),
(76,5,'DANIEL H.S.SILALAHI, S.Kom.','Staff','199511102020121002','082211916162',NULL,'Posan1011','','QZJI','ok','40b26cb86fe068071270183798173cb4'),
(77,9,'Deasy','Fungsional PEDAL','198012152006042024','082165157048',NULL,'123456','','VROD','ok','e10adc3949ba59abbe56e057f20f883e'),
(78,11,'AISYAH NUR ONNY BULAN','Kasubbag Umum','197107092002122003','085270856282',NULL,'BK1170M','','RQUZ','ok','7daa15577d76e72f958bc23159b3bd3c'),
(79,9,'Jamiah','Kasubag tata usaha laboratorium','198010102009032008','081260569298',NULL,'hasibuan','','HABE','ok','093d9e26719059ff66d9ca87dc3ee09c'),
(80,3,'Suparianti,SP','Kasubbag Umum','196904072005012001','081328702619',NULL,'akulupa','','GNTW','ok','6efc751c85422405946fbf8a36c506a0'),
(81,42,'Lukas Egia Ginting','Pengelola Sistem Informasi Administrasi Kependudukan','198905092020121001','085290191757',NULL,'ginting1','','CFCE','ok','c6d99a2fdb68ac95b789fb444390b960'),
(82,28,'Elsya Marina','Kasubag Perogram','198103272005022015','085207725330',NULL,'perizinan20514','','EOLI','ok','ee20ed6bae520aedaafecdda0fb7c4ec'),
(83,34,'Jadiatemeriatarigan','Kasubbag umum dan kepegawaian','198007072008012003','082366472380',NULL,'123456','','OKTE','ok','e10adc3949ba59abbe56e057f20f883e'),
(84,20,'Hendrik Parulian','Penata Laporan Keuangan','199212022019031005','085207815734',NULL,'8mnbvcxz@','','OUPI','ok','1ada874b01fd980d424a983d9758c146'),
(85,12,'Luthfiyah Syakirah Lubis','Staff','197504221132455412','08116147773',NULL,'121212','','ZYEK','ok','93279e3308bdbbeed946fc965017f67a'),
(86,97,'Ida laila','Staf bagian gaji','197503111994022001','081370926759',NULL,'laila1975','','PYWA','ok','a11d5865927f3b23f722a347aee470b8'),
(87,9,'Mayanty Artauli','Penata Laporan Keuangan','198603312010012012','085261176921',NULL,'Elkanah080517','','LHVO','ok','75c9cceb04ba7523447c5c50add3337f'),
(88,25,'Roma putra ','Kasubbag Umum','198112212011011008','081269865086',NULL,'hutasuhut','','VXUO','ok','af86341b42aadfd9d359150e954a0097');

/*Table structure for table `tabelmasalah` */

DROP TABLE IF EXISTS `tabelmasalah`;

CREATE TABLE `tabelmasalah` (
  `idmasalah` int(11) NOT NULL AUTO_INCREMENT,
  `idcus` int(11) DEFAULT NULL,
  `idopd` int(11) DEFAULT NULL,
  `tanggalmasalah` varchar(125) DEFAULT '',
  `waktumasalah` varchar(55) DEFAULT '',
  `masalah` varchar(999) DEFAULT '',
  `status` varchar(55) DEFAULT '',
  `rating` varchar(999) DEFAULT '',
  `lama` double DEFAULT 0,
  `ket` varchar(999) DEFAULT '',
  `dibaca` varchar(55) DEFAULT '',
  `dibaca_t` varchar(55) DEFAULT '',
  `kode` varchar(25) DEFAULT '',
  `gambarmasalah` varchar(888) DEFAULT '',
  `kordinat_opd` double DEFAULT NULL,
  `kordinat_teknisi` double DEFAULT NULL,
  `jumlahrating` int(11) DEFAULT NULL,
  PRIMARY KEY (`idmasalah`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tabelmasalah` */

insert  into `tabelmasalah`(`idmasalah`,`idcus`,`idopd`,`tanggalmasalah`,`waktumasalah`,`masalah`,`status`,`rating`,`lama`,`ket`,`dibaca`,`dibaca_t`,`kode`,`gambarmasalah`,`kordinat_opd`,`kordinat_teknisi`,`jumlahrating`) values 
(39,29,19,'2022-02-03','09:14','Jaringan di ruangan saya terputus, mohon dibantu','selesai perbaikan','<img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\">',0.3,'','sudah','sudah','8254','',NULL,NULL,5),
(41,39,15,'2022-02-03','10:46','Jaringan Internet tidak lancar','selesai perbaikan','<img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\">',25.17,'','sudah','sudah','9210','',NULL,NULL,5),
(42,49,54,'2022-02-03','11:38','Tidak ada jaringan','selesai perbaikan','<img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\">',23.28,'Sudah di pandu melalui wa ','sudah','sudah','3018','',NULL,NULL,5),
(43,50,93,'2022-02-04','11:53','Koneksi internet di bagian organisasi tidak bisa sudah terjadi mulai tgl 3 feb 2022 SD Sekarang','selesai perbaikan','<img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\">',1,'','sudah','sudah','6859','',NULL,NULL,4),
(45,52,58,'2022-02-07','11:03','Mohon bantuan bapak/ ibu\r\n\r\nKoneksi Internet Kantor Camat Kutalimbaru sangat lambat sekali. Terimakasih ya','selesai perbaikan','<img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\">',23.23,'','sudah','sudah','8302','',NULL,NULL,5),
(46,53,27,'2022-02-07','11:03','Mohon d tambah kabel utk Badan Pendapatan Daerah agar pemakaian internetnya lbh stabil berhubung d karenakan batu','selesai perbaikan','<img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\">',1.16,'','sudah','sudah','2072','',NULL,NULL,5),
(47,49,54,'2022-02-07','11:04','Jaringan internet rusak','selesai perbaikan','<img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\">',3.58,'','sudah','sudah','8482','',NULL,NULL,5),
(48,55,35,'2022-02-08','09:31','Jaringan lelet, dan sering terputus, mohon untuk diperbaiki karna kamis ini diadakan musrembang, terima kasih','selesai perbaikan','<img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\">',2.2,'','sudah','sudah','2252','',NULL,NULL,5),
(49,34,25,'2022-02-08','12:06','Selamat Siang, mohon untuk perbaikan jaringan WiFi di ruang sekretaris dinas pendidikan, keterangan WiFi tidak dapat terkoneksi','selesai perbaikan','<img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\">',0.23,'Settiing acces point','sudah','sudah','6584','',NULL,NULL,5),
(50,58,29,'2022-02-09','11:58','terjadi kerusakan kabel jaringan internet (RJ 45) di ruang Keuangan','selesai perbaikan','<img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\">',3.15,'','sudah','sudah','9565','',NULL,NULL,5),
(52,59,1,'2022-02-10','11:00','Jaringan FO di Kantor Dinkes lg putus. Mohon bantuannya Bapak dan Ibu','selesai perbaikan','<img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\">',2.56,'','sudah','sudah','7531','',NULL,NULL,4),
(53,60,13,'2022-02-10','05:19','Kami butuh utk Instalasi jaringan LAN gedung perpustakaan daerah yang baru','selesai perbaikan','<img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\">',12.2,'','sudah','sudah','5077','',NULL,NULL,5),
(54,61,30,'2022-02-11','10:22','Jaringan bermasalah tidak mengakses internet, aplikasi simda','selesai perbaikan','<img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\">',1.13,'','sudah','sudah','7050','',NULL,NULL,5),
(55,62,13,'2022-02-11','10:52','Jaringan wifi bermasalah tidak aktif di Dinas Perpustakaan dan Arsip Kab.Deli Serdang','selesai perbaikan','<img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\">',1.43,'','sudah','sudah','4453','',NULL,NULL,5),
(56,63,6,'2022-02-11','12:06','Jaringan BPBD mati/off','selesai perbaikan','<img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\">',0.17,'Pergantian dan Splesing kabel FO','sudah','sudah','6187','',NULL,NULL,5),
(62,65,26,'2022-02-12','15:03','Tidak ada koneksi internet','selesai perbaikan','<img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\">',0.1,'','sudah','sudah','2039','',NULL,NULL,5),
(64,35,45,'2022-02-14','09:08','Ijin menyampaikan, mohon untuk di pantau kualitas jaringan di Kecamatan Pantai Labu, demi kelancaran pelaksanaan Musrembang yg dilaksanakan pada hari ini. Mohon kerja samanya','selesai perbaikan','<img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\">',0.31,'','sudah','sudah','7856','',NULL,NULL,4),
(65,67,20,'2022-02-14','09:45','Mohon untuk pengecekan server siskeudes dan siswakeudes, saat ini aplikasi tidak bisa konek. Dan kalau bisa tim ke lokasi kantor inspektorat','selesai perbaikan','<img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\">',0.4,'Disisi server sdh konek','sudah','sudah','8807','',NULL,NULL,5),
(66,65,26,'2022-02-14','09:50','Tidak ada koneksi internet','pending','',0,'Mohon bersabar , untuk saat ini kita sedang melakukan  koordinasi lebih lanjut terkait penanganan jaringan FO yang putus di RSUD H.Amri Tambunan karna terindikasi Kabel FO putus di atas flapon. \r\n','sudah','sudah','8605','',NULL,NULL,NULL),
(67,68,72,'2022-02-14','09:56','Pemasangan Jaringan Baru, Mohon di cek jaringan di antara ruang Obat dan Laboratorium','selesai perbaikan','<img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\">',5.55,'','sudah','sudah','6071','',NULL,NULL,5),
(68,69,28,'2022-02-14','10:18','Jaringan internet putus.. kabel dari tiang ke kantor putus tersambar mobil truk...','selesai perbaikan','<img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\">',5.5,'Splesing kabel FO','sudah','sudah','3285','',NULL,NULL,5),
(69,70,32,'2022-02-14','11:50','Izin pak, jaringan di Kec. Batang kuis lelet','selesai perbaikan','<img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\">',4.22,'Silahkan di cek pak...\r\nDari sisi kita Internet sudah UP..','sudah','sudah','9267','',NULL,NULL,5),
(70,40,8,'2022-02-14','13:01','Kami dari dinas cipta karya dan tata ruang memohon untuk penambahan jaringan di bagian program dan keuangan untuk akses simda','selesai perbaikan','<img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\">',0.3,'Instalasi kabel Lan ke ruangan Program dan Keuangan','sudah','sudah','3728','',NULL,NULL,5),
(75,NULL,92,'2022-02-15','11:06','Mohon Untuk Tim Teknisi untuk Memperbaiki CCTV Simpang Bupati','selesai perbaikan','<img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\">',0.49,'','sudah','sudah','4258','',NULL,NULL,5),
(77,33,2,'2022-02-15','15:20','Selamat siang.\r\nDi Disbudporapar internetnya tidak dapat diakses Pak.\r\nTolong arahannya Pak.\r\nTerimakasih.','selesai perbaikan','<img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\">',23.45,'','sudah','sudah','7171','',NULL,NULL,5),
(78,60,13,'2022-02-16','11:15','Penambahan kabel LAN utk pelayanan umum &amp; Pelayanan ruang anak gedung perpustakaan yg baru\r\nMohon bantuannya.. terima kasih','pending','',23.58,'','sudah','sudah','6843','',NULL,NULL,NULL),
(79,75,5,'2022-02-17','09:59','Jaringan Internet tidak terkoneksi','selesai perbaikan','<img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\">',1.14,'','sudah','sudah','3467','',NULL,NULL,5),
(81,76,5,'2022-02-18','11:31','Saya ingin bertanya perihal perubahan password wifi pada ruangan pemanfaatan data dan inovasi pelayanan di Dinas dukcapil deli serdang. Dikarenakan, wifi di ruangan kami terestart sendiri, jadi wifi tanpa password. Terimakasih','selesai perbaikan','<img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\">',1.42,'Acces point sudah di reset dan di setting ulang.\r\nNama wifi : INOVASI DATA\r\npassword : inovasidata!!!','sudah','sudah','8802','',NULL,NULL,5),
(82,63,6,'2022-02-21','10:43','Jaringan mati di kantor BPBD kabupaten Deli Serdang','selesai perbaikan','<img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\">',3.47,'Penyambungan FO selesai,masalah ada di sambungan FO Terputus..\r\nInternet normal Kembali','sudah','sudah','7031','',NULL,NULL,5),
(83,79,9,'2022-02-22','10:09','Mohon untuk penambahan luas jaringan wifi','selesai perbaikan','<img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\">',7.43,'Pemasangan acces point di ruang Lab','sudah','sudah','4433','',NULL,NULL,5),
(84,81,42,'2022-02-22','11:29','Jaringan kominfo LC Diskominfo Namorambe tidak koneksi. Terima kasih.','selesai perbaikan','<img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\">',0.42,'','sudah','sudah','1946','',NULL,NULL,5),
(85,82,28,'2022-02-22','12:06','Selamat Siang helpdesk Kominfo, \r\n\r\nSaya elsya marina, kasubag program di Dinas Perkim, \r\nsaya melaporkan di dinas kami tidak bisa mengkases simda melalui jaringan dari kominfo.\r\n\r\nmohon segera di cek ya pak. mengingat penting nya aplikasi itu untuk di akses.\r\n\r\nterima kasih','selesai perbaikan','<img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\">',1.7,'','sudah','sudah','4222','',NULL,NULL,5),
(86,83,34,'2022-02-22','13:21','Jaringan kominfo kecamatan biru2 sdh 2 off','selesai perbaikan','<img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\">',1,'','sudah','sudah','5328','',NULL,NULL,4),
(87,84,20,'2022-02-22','14:03','Jaringan wifi di ruangan irban 1 tidak konek','selesai perbaikan','<img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\">',0.13,'','sudah','sudah','2435','',NULL,NULL,5),
(88,75,5,'2022-02-23','09:58','Jaringan Internet bermasalah','selesai perbaikan','<img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\">',1.58,'','sudah','sudah','3384','',NULL,NULL,5),
(89,85,19,'2022-02-23','10:20','Sinyal wifi tidak lancar di Dinas Koperasi dan Usaha Kecil dan Menengah','selesai perbaikan','<img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\">',0.49,'','sudah','sudah','4398','',NULL,NULL,5),
(90,47,50,'2022-02-23','12:02','Kominfo kec. Stm hulu ofline pak tolong d cek','selesai perbaikan','<img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\">',23,'','sudah','sudah','6166','',NULL,NULL,5),
(91,84,20,'2022-03-01','10:36','Jaringan internet di ruangan Irban Khusus bermasalah/tidak konek','selesai perbaikan','<img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\">',1.21,'','sudah','sudah','4041','',NULL,NULL,5),
(92,86,97,'2022-03-01','11:08','SIMDA gaji tdk terkoneksi mohon ditindak lanjuti','selesai perbaikan','<img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\">',0.4,'Setting ulang perangkat iner..\r\nKoneksi ke gaji lancar','sudah','sudah','6162','',NULL,NULL,5),
(93,47,50,'2022-03-01','11:35','Kominfo kec. Stm hulu offline pak','selesai perbaikan','',1.22,'','sudah','sudah','3172','',NULL,NULL,NULL),
(94,87,9,'2022-03-01','11:37','Mohon bantuannya,jaringan internet kominfo di DLH tidak bisa diakses. Gak tau jaringannya atau kabel LAN nya yg tdk dlm keadaan baik. Krn simd gaji tidak dapat terkoneksi','selesai perbaikan','<img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\"><img style=\"width:15%\" src=\"rating/bintang.png\">',3.46,'','sudah','sudah','7518','',NULL,NULL,5),
(95,81,42,'2022-03-01','11:54','Jaringan Kominfo LC Diskominfo tidak koneksi\r\nKecamatan Namorambe','sedang perbaikan','',0,'','sudah','sudah','4576','',NULL,NULL,NULL),
(96,88,25,'2022-03-01','15:39','WiFi dinas pendidikan mati ','','',0,'','','','2371','',NULL,NULL,NULL);

/*Table structure for table `tabelmasalahok` */

DROP TABLE IF EXISTS `tabelmasalahok`;

CREATE TABLE `tabelmasalahok` (
  `idtindakan` int(11) NOT NULL AUTO_INCREMENT,
  `idmasalah` int(11) DEFAULT NULL,
  `idopd` int(11) DEFAULT NULL,
  `tanggal` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `waktu` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `masalah` varchar(888) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` varchar(999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lama` double DEFAULT NULL,
  `ket` varchar(888) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dibaca` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dibaca_t` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`idtindakan`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tabelmasalahok` */

insert  into `tabelmasalahok`(`idtindakan`,`idmasalah`,`idopd`,`tanggal`,`waktu`,`masalah`,`status`,`rating`,`lama`,`ket`,`dibaca`,`dibaca_t`) values 
(12,59,NULL,'2022-02-11','17:33',NULL,'menuju lokasi',NULL,NULL,NULL,NULL,NULL),
(13,59,NULL,'2022-02-11','17:33',NULL,'sedang perbaikan',NULL,NULL,NULL,NULL,NULL),
(14,59,NULL,'2022-02-11','17:34',NULL,'selesai perbaikan',NULL,NULL,NULL,NULL,NULL),
(15,62,NULL,'2022-02-12','15:04',NULL,'selesai perbaikan',NULL,NULL,NULL,NULL,NULL),
(16,64,NULL,'2022-02-14','09:34',NULL,'sedang perbaikan',NULL,NULL,NULL,NULL,NULL),
(17,64,NULL,'2022-02-14','09:39',NULL,'selesai perbaikan',NULL,NULL,NULL,NULL,NULL),
(18,65,NULL,'2022-02-14','09:46',NULL,'sedang perbaikan',NULL,NULL,NULL,NULL,NULL),
(19,65,NULL,'2022-02-14','09:49',NULL,'selesai perbaikan',NULL,NULL,NULL,NULL,NULL),
(20,66,NULL,'2022-02-14','10:17',NULL,'menuju lokasi',NULL,NULL,NULL,NULL,NULL),
(21,66,NULL,'2022-02-14','10:32',NULL,'sedang perbaikan',NULL,NULL,NULL,NULL,NULL),
(22,69,NULL,'2022-02-14','12:00',NULL,'sedang perbaikan',NULL,NULL,NULL,NULL,NULL),
(23,69,NULL,'2022-02-14','12:00',NULL,'sedang perbaikan',NULL,NULL,NULL,NULL,NULL),
(24,66,NULL,'2022-02-14','12:21',NULL,'pending',NULL,NULL,NULL,NULL,NULL),
(25,66,NULL,'2022-02-14','12:26',NULL,'pending',NULL,NULL,NULL,NULL,NULL),
(26,70,NULL,'2022-02-14','13:02',NULL,'sedang perbaikan',NULL,NULL,NULL,NULL,NULL),
(27,70,NULL,'2022-02-14','13:03',NULL,'selesai perbaikan',NULL,NULL,NULL,NULL,NULL),
(28,70,NULL,'2022-02-14','13:03',NULL,'selesai perbaikan',NULL,NULL,NULL,NULL,NULL),
(29,70,NULL,'2022-02-14','13:04',NULL,'selesai perbaikan',NULL,NULL,NULL,NULL,NULL),
(30,67,NULL,'2022-02-14','13:11',NULL,'sedang perbaikan',NULL,NULL,NULL,NULL,NULL),
(31,69,NULL,'2022-02-14','14:15',NULL,'pending',NULL,NULL,NULL,NULL,NULL),
(32,69,NULL,'2022-02-14','14:15',NULL,'pending',NULL,NULL,NULL,NULL,NULL),
(33,68,NULL,'2022-02-14','14:15',NULL,'menuju lokasi',NULL,NULL,NULL,NULL,NULL),
(34,68,NULL,'2022-02-14','14:18',NULL,'menuju lokasi',NULL,NULL,NULL,NULL,NULL),
(35,68,NULL,'2022-02-14','14:50',NULL,'sedang perbaikan',NULL,NULL,NULL,NULL,NULL),
(36,67,NULL,'2022-02-14','15:51',NULL,'selesai perbaikan',NULL,NULL,NULL,NULL,NULL),
(37,68,NULL,'2022-02-14','15:51',NULL,'sedang perbaikan',NULL,NULL,NULL,NULL,NULL),
(38,68,NULL,'2022-02-14','15:55',NULL,'selesai perbaikan',NULL,NULL,NULL,NULL,NULL),
(39,68,NULL,'2022-02-14','16:00',NULL,'selesai perbaikan',NULL,NULL,NULL,NULL,NULL),
(40,68,NULL,'2022-02-14','16:08',NULL,'selesai perbaikan',NULL,NULL,NULL,NULL,NULL),
(41,69,NULL,'2022-02-14','16:12',NULL,'selesai perbaikan',NULL,NULL,NULL,NULL,NULL),
(42,75,NULL,'2022-02-15','11:12',NULL,'sedang perbaikan',NULL,NULL,NULL,NULL,NULL),
(43,75,NULL,'2022-02-15','11:55',NULL,'selesai perbaikan',NULL,NULL,NULL,NULL,NULL),
(44,77,NULL,'2022-02-16','10:36',NULL,'pending',NULL,NULL,NULL,NULL,NULL),
(45,78,NULL,'2022-02-16','11:45',NULL,'sedang perbaikan',NULL,NULL,NULL,NULL,NULL),
(46,77,NULL,'2022-02-16','12:11',NULL,'menuju lokasi',NULL,NULL,NULL,NULL,NULL),
(47,77,NULL,'2022-02-16','12:11',NULL,'menuju lokasi',NULL,NULL,NULL,NULL,NULL),
(48,77,NULL,'2022-02-16','12:21',NULL,'sedang perbaikan',NULL,NULL,NULL,NULL,NULL),
(49,77,NULL,'2022-02-16','12:23',NULL,'sedang perbaikan',NULL,NULL,NULL,NULL,NULL),
(50,77,NULL,'2022-02-16','12:24',NULL,'sedang perbaikan',NULL,NULL,NULL,NULL,NULL),
(51,77,NULL,'2022-02-16','12:35',NULL,'selesai perbaikan',NULL,NULL,NULL,NULL,NULL),
(52,77,NULL,'2022-02-16','12:35',NULL,'selesai perbaikan',NULL,NULL,NULL,NULL,NULL),
(53,77,NULL,'2022-02-16','12:40',NULL,'selesai perbaikan',NULL,NULL,NULL,NULL,NULL),
(54,78,NULL,'2022-02-16','12:58',NULL,'pending',NULL,NULL,NULL,NULL,NULL),
(55,78,NULL,'2022-02-16','13:56',NULL,'pending',NULL,NULL,NULL,NULL,NULL),
(56,77,NULL,'2022-02-16','15:05',NULL,'selesai perbaikan',NULL,NULL,NULL,NULL,NULL),
(57,77,NULL,'2022-02-16','15:05',NULL,'selesai perbaikan',NULL,NULL,NULL,NULL,NULL),
(58,79,NULL,'2022-02-17','10:10',NULL,'menuju lokasi',NULL,NULL,NULL,NULL,NULL),
(59,79,NULL,'2022-02-17','10:31',NULL,'sedang perbaikan',NULL,NULL,NULL,NULL,NULL),
(60,79,NULL,'2022-02-17','11:12',NULL,'selesai perbaikan',NULL,NULL,NULL,NULL,NULL),
(61,78,NULL,'2022-02-17','11:13',NULL,'selesai perbaikan',NULL,NULL,NULL,NULL,NULL),
(62,79,NULL,'2022-02-17','11:13',NULL,'selesai perbaikan',NULL,NULL,NULL,NULL,NULL),
(63,80,NULL,'2022-02-17','16:30',NULL,'menuju lokasi',NULL,NULL,NULL,NULL,NULL),
(64,80,NULL,'2022-02-17','16:30',NULL,'menuju lokasi',NULL,NULL,NULL,NULL,NULL),
(65,80,NULL,'2022-02-17','16:31',NULL,'menuju lokasi',NULL,NULL,NULL,NULL,NULL),
(66,80,NULL,'2022-02-17','16:31',NULL,'menuju lokasi',NULL,NULL,NULL,NULL,NULL),
(67,81,NULL,'2022-02-18','12:29',NULL,'menuju lokasi',NULL,NULL,NULL,NULL,NULL),
(68,81,NULL,'2022-02-18','12:38',NULL,'sedang perbaikan',NULL,NULL,NULL,NULL,NULL),
(69,81,NULL,'2022-02-18','12:38',NULL,'sedang perbaikan',NULL,NULL,NULL,NULL,NULL),
(70,81,NULL,'2022-02-18','13:13',NULL,'selesai perbaikan',NULL,NULL,NULL,NULL,NULL),
(71,82,NULL,'2022-02-21','10:58',NULL,'menuju lokasi',NULL,NULL,NULL,NULL,NULL),
(72,82,NULL,'2022-02-21','11:15',NULL,'menuju lokasi',NULL,NULL,NULL,NULL,NULL),
(73,82,NULL,'2022-02-21','11:21',NULL,'menuju lokasi',NULL,NULL,NULL,NULL,NULL),
(74,82,NULL,'2022-02-21','11:33',NULL,'sedang perbaikan',NULL,NULL,NULL,NULL,NULL),
(75,82,NULL,'2022-02-21','14:30',NULL,'selesai perbaikan',NULL,NULL,NULL,NULL,NULL),
(76,83,NULL,'2022-02-22','10:42',NULL,'menuju lokasi',NULL,NULL,NULL,NULL,NULL),
(77,83,NULL,'2022-02-22','10:48',NULL,'sedang perbaikan',NULL,NULL,NULL,NULL,NULL),
(78,84,NULL,'2022-02-22','11:49',NULL,'sedang perbaikan',NULL,NULL,NULL,NULL,NULL),
(79,84,NULL,'2022-02-22','11:49',NULL,'sedang perbaikan',NULL,NULL,NULL,NULL,NULL),
(80,84,NULL,'2022-02-22','12:11',NULL,'selesai perbaikan',NULL,NULL,NULL,NULL,NULL),
(81,83,NULL,'2022-02-22','12:24',NULL,'pending',NULL,NULL,NULL,NULL,NULL),
(82,85,NULL,'2022-02-22','13:13',NULL,'selesai perbaikan',NULL,NULL,NULL,NULL,NULL),
(83,86,NULL,'2022-02-22','13:29',NULL,'sedang perbaikan',NULL,NULL,NULL,NULL,NULL),
(84,83,NULL,'2022-02-22','14:04',NULL,'sedang perbaikan',NULL,NULL,NULL,NULL,NULL),
(85,87,NULL,'2022-02-22','14:16',NULL,'selesai perbaikan',NULL,NULL,NULL,NULL,NULL),
(86,86,NULL,'2022-02-22','14:21',NULL,'selesai perbaikan',NULL,NULL,NULL,NULL,NULL),
(87,83,NULL,'2022-02-22','17:52',NULL,'selesai perbaikan',NULL,NULL,NULL,NULL,NULL),
(88,88,NULL,'2022-02-23','10:08',NULL,'menuju lokasi',NULL,NULL,NULL,NULL,NULL),
(89,89,NULL,'2022-02-23','10:27',NULL,'menuju lokasi',NULL,NULL,NULL,NULL,NULL),
(90,89,NULL,'2022-02-23','10:27',NULL,'menuju lokasi',NULL,NULL,NULL,NULL,NULL),
(91,89,NULL,'2022-02-23','10:41',NULL,'sedang perbaikan',NULL,NULL,NULL,NULL,NULL),
(92,89,NULL,'2022-02-23','11:09',NULL,'selesai perbaikan',NULL,NULL,NULL,NULL,NULL),
(93,88,NULL,'2022-02-23','11:56',NULL,'selesai perbaikan',NULL,NULL,NULL,NULL,NULL),
(94,88,NULL,'2022-02-23','11:56',NULL,'selesai perbaikan',NULL,NULL,NULL,NULL,NULL),
(95,88,NULL,'2022-02-23','11:56',NULL,'selesai perbaikan',NULL,NULL,NULL,NULL,NULL),
(96,90,NULL,'2022-02-23','12:18',NULL,'sedang perbaikan',NULL,NULL,NULL,NULL,NULL),
(97,90,NULL,'2022-02-24','11:02',NULL,'selesai perbaikan',NULL,NULL,NULL,NULL,NULL),
(98,92,NULL,'2022-03-01','11:10',NULL,'menuju lokasi',NULL,NULL,NULL,NULL,NULL),
(99,92,NULL,'2022-03-01','11:11',NULL,'sedang perbaikan',NULL,NULL,NULL,NULL,NULL),
(100,92,NULL,'2022-03-01','11:12',NULL,'selesai perbaikan',NULL,NULL,NULL,NULL,NULL),
(101,92,NULL,'2022-03-01','11:12',NULL,'selesai perbaikan',NULL,NULL,NULL,NULL,NULL),
(102,91,NULL,'2022-03-01','11:15',NULL,'menuju lokasi',NULL,NULL,NULL,NULL,NULL),
(103,91,NULL,'2022-03-01','11:56',NULL,'sedang perbaikan',NULL,NULL,NULL,NULL,NULL),
(104,91,NULL,'2022-03-01','11:57',NULL,'selesai perbaikan',NULL,NULL,NULL,NULL,NULL),
(105,94,NULL,'2022-03-01','12:10',NULL,'menuju lokasi',NULL,NULL,NULL,NULL,NULL),
(106,94,NULL,'2022-03-01','12:11',NULL,'menuju lokasi',NULL,NULL,NULL,NULL,NULL),
(107,95,NULL,'2022-03-01','12:18',NULL,'sedang perbaikan',NULL,NULL,NULL,NULL,NULL),
(108,94,NULL,'2022-03-01','12:19',NULL,'sedang perbaikan',NULL,NULL,NULL,NULL,NULL),
(109,93,NULL,'2022-03-01','12:24',NULL,'sedang perbaikan',NULL,NULL,NULL,NULL,NULL),
(110,94,NULL,'2022-03-01','12:42',NULL,'sedang perbaikan',NULL,NULL,NULL,NULL,NULL),
(111,93,NULL,'2022-03-01','12:57',NULL,'selesai perbaikan',NULL,NULL,NULL,NULL,NULL),
(112,94,NULL,'2022-03-01','15:23',NULL,'selesai perbaikan',NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `tabelopd` */

DROP TABLE IF EXISTS `tabelopd`;

CREATE TABLE `tabelopd` (
  `idopd` int(11) NOT NULL AUTO_INCREMENT,
  `opd` text NOT NULL,
  `jumlahkasus` int(11) DEFAULT NULL,
  PRIMARY KEY (`idopd`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tabelopd` */

insert  into `tabelopd`(`idopd`,`opd`,`jumlahkasus`) values 
(1,'Dinas Kesehatan',1),
(2,'Dinas Porabudpar',1),
(3,'Dinas Pertanian',0),
(4,'Dinas SDA, Bina Marga,Bina Konstruksi',0),
(5,'Dinas Kependudukan dan Pencatatan Sipil',2),
(6,'Badan Penanggulangan Bencana Daerah',1),
(7,'Dinas Perindustrian dan Perdagangan',0),
(8,'Dinas Cipta Karya dan Tata Ruang',1),
(9,'Dinas Lingkungan Hidup',0),
(10,'Dinas Perhubungan',0),
(11,'Dinas Sosial',0),
(12,'Badan Kepegawaian Daerah',0),
(13,'Dinas Perpustakaan, Arsip&Dokumentasi',3),
(14,'Dinas Ketahanan Pangan',0),
(15,'Dinas Ketenagakerjaan',1),
(16,'Dinas Perikanan',0),
(17,'Badan Kesatuan Bangsa dan Politik',0),
(18,'BAPPEDALITBANG',0),
(19,'Dinas Koperasi, Usaha Kecil dan Menengah',1),
(20,'Inspektorat',1),
(21,'Dinas Pemberdayaan Masyarakat dan Desa',0),
(22,'Dinas Penanaman Modal&Pelayanan Perizinan',0),
(24,'Satuan Polisi Pamong Praja',0),
(25,'Dinas Pendidikan',1),
(26,'Rumah Sakit Umum H. Amri Tambunan',2),
(27,'Badan Pendapatan Daerah',1),
(28,'Dinas Perkim dan Pertahanan',1),
(29,'DP3P2KB',1),
(30,'Dinas Pemadam Kebakaran&Penyelamatan',1),
(31,'Kecamatan Bangun Purba',0),
(32,'Kecamatan Batang Kuis',1),
(33,'Kecamatan Beringin',0),
(34,'Kecamatan Biru-biru',0),
(35,'Kecamatan Delitua',1),
(36,'Kecamatan Galang',0),
(37,'Kecamatan Gunung Meriah',0),
(38,'Kecamatan Hamparan Perak',0),
(39,'Kecamatan Kutalimbaru',0),
(40,'Kecamatan Labuhan Deli',0),
(41,'Kecamatan Lubuk Pakam',0),
(42,'Kecamatan Namorambe',0),
(43,'Kecamatan Pagar Merbau',0),
(44,'Kecamatan Pancur Batu',0),
(45,'Kecamatan Pantai Labu',1),
(46,'Kecamatan Patumbak',0),
(47,'Kecamatan Percut Sei Tuan',0),
(48,'Kecamatan Sibolangit',0),
(49,'Kecamatan STM Hilir',0),
(50,'Kecamatan STM Hulu',0),
(51,'Kecamatan Sunggal',0),
(52,'Kecamatan Tanjung Morawa',0),
(54,'Puskesmas Gunung Meriah',2),
(55,'Puskesmas Tiga Juhar',0),
(56,'Puskesmas Sibolangit',0),
(57,'Puskesmas Bandar Baru',0),
(58,'Puskesmas Kutalimbaru',1),
(59,'Puskesmas Tuntungan',0),
(60,'Puskesmas Gunung Tinggi',0),
(61,'Puskesmas Namorambe',0),
(62,'Puskesmas Biru-biru',0),
(63,'Puskesmas Talun Kenas',0),
(64,'Puskesmas Bangun Purba',0),
(65,'Puskesmas Galang',0),
(66,'Puskesmas Pertumbukan',0),
(67,'Puskesmas Tanjung Morawa',0),
(68,'Puskesmas Dalu Sepuluh',0),
(69,'Puskesmas Patumbak',0),
(70,'Puskesmas Delitua',0),
(71,'Puskesmas Sei Mencirim',0),
(72,'Puskesmas Muliorejo',1),
(73,'Puskesmas Sei Semayang',0),
(74,'Puskesmas Hamparan Perak',0),
(75,'Puskesmas Kota Datar',0),
(76,'Puskesmas Pematang Johar',0),
(77,'Puskesmas Labuhan Deli',0),
(78,'Puskesmas Bandar Khalipah',0),
(79,'Puskesmas Tanjung Rejo',0),
(80,'Puskesmas Kenangan',0),
(81,'Puskesmas Batang Kuis',0),
(82,'Puskesmas Pantai Labu',0),
(83,'Puskesmas Karang Anyar',0),
(84,'Puskesmas Aras Kabu',0),
(85,'Puskesmas Lubuk Pakam',0),
(86,'Puskesmas Pagar Jati',0),
(87,'Puskesmas Pagar Merbau',0),
(88,'Puskesmas STM Hilir',0),
(89,'Puskesmas Pancur Batu',0),
(90,'Puskesmas Percut Sei Tuan',0),
(91,'Puskesmas Namo Rambe',0),
(92,'Dinas Kominfostan',1),
(93,'Sekretariat Daerah Kabupaten Deli Serdang ',1),
(94,'Sekretariat Dewan Kabupaten Deli Serdang',0),
(97,'BPKAD',NULL);

/*Table structure for table `tabelopd_lama` */

DROP TABLE IF EXISTS `tabelopd_lama`;

CREATE TABLE `tabelopd_lama` (
  `idopd` int(11) NOT NULL AUTO_INCREMENT,
  `opd` varchar(255) DEFAULT NULL,
  `kondisiopd` varchar(125) DEFAULT NULL,
  PRIMARY KEY (`idopd`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tabelopd_lama` */

/*Table structure for table `tabelopd_lama2` */

DROP TABLE IF EXISTS `tabelopd_lama2`;

CREATE TABLE `tabelopd_lama2` (
  `idopd` int(11) NOT NULL AUTO_INCREMENT,
  `opd` varchar(255) NOT NULL,
  PRIMARY KEY (`idopd`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tabelopd_lama2` */

insert  into `tabelopd_lama2`(`idopd`,`opd`) values 
(1,'Badan Perencanaan Pembangunan Daerah'),
(2,'Badan Kesatuan Bangsa dan Politik'),
(3,'Dinas Pemberdayaan Masyarakat dan Desa'),
(4,'Dinas Lingkungan Hidup'),
(5,'Inspektorat'),
(6,'Badan Kepegawaian Daerah'),
(7,'Dinas Pengendalian Penduduk, KB dan Pemberdayaan Perempuan, Perlindungan Anak'),
(9,'Dinas Kependudukan dan Pencatatan Sipil'),
(10,'Dinas Kesehatan'),
(11,'Dinas Pendidikan'),
(12,'Dinas Sosial'),
(13,'Dinas Perhubungan'),
(14,'Dinas Perindustrian dan Perdagangan'),
(15,'Dinas Koperasi,Usaha Kecil dan Menengah'),
(16,'Dinas Kepemudaan, Olahraga, Kebudayaan dan Pariwisata'),
(17,'Dinas Ketenagakerjaan'),
(18,'Badan Pengelola Keuangan dan Aset'),
(19,'Dinas Perumahan dan Kawasan Permukiman'),
(20,'Badan Pendapatan Daerah'),
(21,'Dinas Perpustakaan, Arsip dan Dokumentasi'),
(22,'Dinas Perikanan'),
(23,'Badan Penanggulangan Bencana Daerah'),
(24,'Direktur Rumah Sakit Umun Daerah'),
(25,'Dinas Penanaman Modal Dan Pelayanan Perizinan Terpadu Satu Pintu'),
(26,'Dinas Pemadam Kebakaran dan Penyelamatan'),
(27,'Dinas SDBMBK'),
(28,'Dinas cipta karya dan tata ruang'),
(29,'Kecamatan Gunung meriah'),
(30,'Kecamatan Tanjung morawa'),
(31,'Kecamatan Sibolangit'),
(32,'Kecamatan Kutalimbaru'),
(33,'Kecamatan Pancur Batu'),
(34,'Kecamatan Namorambe '),
(35,'Kecamatan Sibiru-biru'),
(36,'Kecamatan STM Hilir'),
(37,'Kecamatan STM Hulu'),
(38,'Kecamatan Bangun purba'),
(39,'Kecamatan Galang'),
(40,'Kecamatan Patumbak'),
(41,'Kecamatan Deli Tua'),
(42,'Kecamatan Sunggal'),
(43,'Kecamatan Hamparan perak'),
(44,'Kecamatan Labuhan deli'),
(45,'Kecamatan Percut Sei Tuan'),
(46,'Kecamatan Batang kuis'),
(47,'Kecamatan Lubuk Pakam'),
(48,'Kecamatan Pagar Merbau'),
(49,'Kecamatan Pantai Labu'),
(50,'Kecamatan Beringin'),
(51,'Dinas KominfoStan');

/*Table structure for table `tabeloperator` */

DROP TABLE IF EXISTS `tabeloperator`;

CREATE TABLE `tabeloperator` (
  `idoperator` int(11) NOT NULL AUTO_INCREMENT,
  `namaoperator` varchar(255) DEFAULT NULL,
  `jabatan` varchar(125) DEFAULT '',
  `hp` varchar(18) DEFAULT NULL,
  `user` varchar(125) DEFAULT NULL,
  `pass` varchar(125) DEFAULT NULL,
  `passok` varchar(999) DEFAULT '',
  PRIMARY KEY (`idoperator`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tabeloperator` */

insert  into `tabeloperator`(`idoperator`,`namaoperator`,`jabatan`,`hp`,`user`,`pass`,`passok`) values 
(1,'Wildan','operator','085261781323','undefined','123wildan','156820166d9663b75525c2bf85088cea'),
(5,'Maykel','operator','082271226288',NULL,'Samosir25','8762a014632369861182bc13e7621753'),
(6,'Pak Suwardi','Pimpinan','081264764390',NULL,'123456','e10adc3949ba59abbe56e057f20f883e'),
(7,'Buk Kadis','Pimpinan','085261781325',NULL,'123456','E10ADC3949BA59ABBE56E057F20F883E'),
(12,'Desman Sahala','Pimpinan','082272692565','undefined','123456','e10adc3949ba59abbe56e057f20f883e');

/*Table structure for table `tabelstatus` */

DROP TABLE IF EXISTS `tabelstatus`;

CREATE TABLE `tabelstatus` (
  `idhistory` int(11) NOT NULL,
  `idmasalah` int(11) DEFAULT NULL,
  `status` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `waktu` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`idhistory`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tabelstatus` */

/*Table structure for table `tabelteknisi` */

DROP TABLE IF EXISTS `tabelteknisi`;

CREATE TABLE `tabelteknisi` (
  `idteknisi` int(11) NOT NULL AUTO_INCREMENT,
  `namateknisi` varchar(125) DEFAULT '',
  `jabatan` varchar(125) DEFAULT '',
  `hp` varchar(18) DEFAULT '',
  `user` varchar(125) DEFAULT '',
  `pass` varchar(125) DEFAULT '',
  `gambar` varchar(555) DEFAULT '',
  `kondisi` varchar(125) DEFAULT '',
  `passok` varchar(999) DEFAULT '',
  `jumlahkasus` int(11) DEFAULT NULL,
  `b` int(11) DEFAULT NULL,
  `c` int(11) DEFAULT NULL,
  `d` int(11) DEFAULT NULL,
  `e` int(11) DEFAULT NULL,
  PRIMARY KEY (`idteknisi`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tabelteknisi` */

insert  into `tabelteknisi`(`idteknisi`,`namateknisi`,`jabatan`,`hp`,`user`,`pass`,`gambar`,`kondisi`,`passok`,`jumlahkasus`,`b`,`c`,`d`,`e`) values 
(5,'Jefri','Teknisi','085362621122','','123456','8271.IMG_20220203_094446.jpg','sedang perbaikan','e10adc3949ba59abbe56e057f20f883e',10,NULL,NULL,NULL,NULL),
(7,'Wendi','Teknisi','082276356714','','pakpahan','wendi.jpg','selesai perbaikan','66b53afb42b5336afe2c6536c5574e66',11,NULL,NULL,NULL,NULL),
(8,'Frans Sembiring ','Teknisi','082272251107','','frans2410','8710.IMG_20220128_145424.jpg','selesai perbaikan','873969577bde76798d317e0b6c2e2306',12,NULL,NULL,NULL,NULL),
(9,'Iwanto D.Sianturi','Teknisi','085374666209','','silangit','275.IMG-20220203-WA0002.jpg','selesai perbaikan','9589b2798625ec6b4faa7dbb7b2e4a59',11,NULL,NULL,NULL,NULL),
(10,'Teja','Admin Server','085358654404','','123456','','selesai perbaikan','E10ADC3949BA59ABBE56E057F20F883E',1,NULL,NULL,NULL,NULL),
(11,'Ganda Manik,S.Kom','Teknisi','081265179184','','manik123','63.IMG20220128143924.jpg','selesai perbaikan','0be0e18fc58da67f5f7ca63b2c111c41',11,NULL,NULL,NULL,NULL),
(13,'Ferdinand','Teknisi','081263607271','','123456','5607.IMG_20220217_101717.jpg','selesai perbaikan','e10adc3949ba59abbe56e057f20f883e',9,NULL,NULL,NULL,NULL),
(20,'Maykel','Teknisi','085261781301','','123456','maykel.jpg','','e10adc3949ba59abbe56e057f20f883e',3,NULL,NULL,NULL,NULL),
(21,'Asep Imanudin','Teknisi','6281375734996','','123456','8041.IMG-20220212-WA0025.jpg','','e10adc3949ba59abbe56e057f20f883e',0,NULL,NULL,NULL,NULL);

/*Table structure for table `tabeltindakan` */

DROP TABLE IF EXISTS `tabeltindakan`;

CREATE TABLE `tabeltindakan` (
  `idtindakan` int(11) NOT NULL,
  `idmasalah` int(11) DEFAULT NULL,
  `idopd` int(11) DEFAULT NULL,
  `idcus` int(11) DEFAULT NULL,
  `tanggaltindakan` varchar(125) DEFAULT NULL,
  `waktutindakan` varchar(125) DEFAULT NULL,
  `idteknisi` int(11) DEFAULT NULL,
  PRIMARY KEY (`idtindakan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `tabeltindakan` */

/*Table structure for table `tabelutusan` */

DROP TABLE IF EXISTS `tabelutusan`;

CREATE TABLE `tabelutusan` (
  `idutusan` int(11) NOT NULL AUTO_INCREMENT,
  `idmasalah` int(11) DEFAULT NULL,
  `idteknisi` int(11) DEFAULT NULL,
  PRIMARY KEY (`idutusan`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tabelutusan` */

insert  into `tabelutusan`(`idutusan`,`idmasalah`,`idteknisi`) values 
(27,39,11),
(28,40,5),
(29,40,11),
(30,42,9),
(31,41,5),
(32,43,11),
(33,43,13),
(34,44,11),
(35,46,5),
(36,46,7),
(37,47,9),
(38,47,11),
(39,45,11),
(40,48,11),
(41,49,5),
(42,49,8),
(43,50,9),
(44,50,7),
(45,52,9),
(46,53,8),
(47,53,11),
(48,53,13),
(49,54,5),
(50,54,7),
(51,54,9),
(52,56,8),
(53,56,7),
(54,56,9),
(55,56,5),
(56,56,13),
(57,55,7),
(58,55,9),
(59,57,15),
(60,58,15),
(61,59,19),
(62,62,8),
(63,62,9),
(64,62,9),
(65,62,20),
(66,62,7),
(67,60,7),
(68,64,11),
(69,65,10),
(70,66,8),
(71,66,9),
(72,67,11),
(73,67,13),
(74,68,7),
(75,69,5),
(76,70,5),
(77,70,8),
(78,68,8),
(79,68,5),
(80,69,20),
(81,71,8),
(82,71,13),
(83,71,13),
(84,75,8),
(85,75,13),
(86,76,20),
(87,66,7),
(88,77,8),
(89,77,9),
(90,77,7),
(91,78,11),
(92,78,13),
(93,79,8),
(94,79,13),
(95,80,5),
(96,81,8),
(97,81,7),
(98,82,5),
(99,82,13),
(100,83,9),
(101,83,8),
(102,84,5),
(103,85,13),
(104,86,11),
(105,87,13),
(106,88,7),
(107,88,8),
(108,89,9),
(109,89,13),
(110,90,11),
(111,92,5),
(112,91,11),
(113,91,13),
(114,93,11),
(115,94,9),
(116,94,7),
(117,95,5);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
