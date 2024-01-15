#
# TABLE STRUCTURE FOR: tb_level
#

DROP TABLE IF EXISTS `tb_level`;

CREATE TABLE `tb_level` (
  `id_level` varchar(2) NOT NULL,
  `level` varchar(15) NOT NULL,
  PRIMARY KEY (`id_level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `tb_level` (`id_level`, `level`) VALUES ('1', 'superadmin');
INSERT INTO `tb_level` (`id_level`, `level`) VALUES ('2', 'admin');
INSERT INTO `tb_level` (`id_level`, `level`) VALUES ('3', 'user');


#
# TABLE STRUCTURE FOR: tb_pasien
#

DROP TABLE IF EXISTS `tb_pasien`;

CREATE TABLE `tb_pasien` (
  `id_pasien` varchar(15) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `kec` varchar(20) NOT NULL,
  `kab` varchar(20) NOT NULL,
  PRIMARY KEY (`id_pasien`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kec`, `kab`) VALUES ('P001QOeDhn', 'Suryati', '2000-01-10', 'Perempuan', '0877578999876', 'Jalen', 'Balong', 'Ponorogo');
INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kec`, `kab`) VALUES ('P002pLPGPy', 'Budi', '2001-01-10', 'Laki-laki', '18297129871', 'Balong', 'Balong', 'Ponorogo');
INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kec`, `kab`) VALUES ('P003kyQU3K', 'Ani', '1977-01-10', 'Perempuan', '8712863761', 'Siman', 'Siman', 'Ponorogo');
INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kec`, `kab`) VALUES ('P004106mmk', 'Darso', '1955-01-10', 'Laki-laki', '9172817816', 'Singkil', 'Balong', 'Ponorogo');
INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kec`, `kab`) VALUES ('P005HjdVkw', 'Maium', '1966-01-10', 'Laki-laki', '0819829721', 'Karangan', 'Badegan', 'Ponorogo');
INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kec`, `kab`) VALUES ('P006bFfpbu', 'Lasmi', '1961-01-10', 'Perempuan', '1977121', 'Purwantoro', 'Purwantoro', 'Wonogiri');
INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kec`, `kab`) VALUES ('P007aKQ8g1', 'Elly', '1976-01-10', 'Perempuan', '8626363', 'Jalen', 'Balong', 'Ponorogo');


#
# TABLE STRUCTURE FOR: tb_pengaturan
#

DROP TABLE IF EXISTS `tb_pengaturan`;

CREATE TABLE `tb_pengaturan` (
  `id_pengaturan` varchar(7) NOT NULL,
  `nama_judul` varchar(50) NOT NULL,
  `meta_keywords` text NOT NULL,
  `meta_description` text NOT NULL,
  `background` text NOT NULL,
  PRIMARY KEY (`id_pengaturan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `tb_pengaturan` (`id_pengaturan`, `nama_judul`, `meta_keywords`, `meta_description`, `background`) VALUES ('P1xhDwL', 'Si-Periksa', 'Sistem Antrian Periksa Dokter', 'Si-Periksa merupakan web app untuk melayani antrian periksa pasien secara online', 'header_656f3421970de.jpg');


#
# TABLE STRUCTURE FOR: tb_pengguna
#

DROP TABLE IF EXISTS `tb_pengguna`;

CREATE TABLE `tb_pengguna` (
  `id_pengguna` varchar(15) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `keterangan` varchar(25) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` text NOT NULL,
  `foto_profile` text NOT NULL,
  `id_level` varchar(2) NOT NULL,
  PRIMARY KEY (`id_pengguna`),
  KEY `id_level` (`id_level`),
  CONSTRAINT `tb_pengguna_ibfk_1` FOREIGN KEY (`id_level`) REFERENCES `tb_level` (`id_level`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `tb_pengguna` (`id_pengguna`, `nama`, `no_hp`, `keterangan`, `email`, `password`, `foto_profile`, `id_level`) VALUES ('A001bnHDs', 'Erik W', '081456141227', 'Ini admin', 'erik@gmail.com', '202cb962ac59075b964b07152d234b70', 'profile_658bb959385e8.jpeg', '1');


#
# TABLE STRUCTURE FOR: tb_periksa
#

DROP TABLE IF EXISTS `tb_periksa`;

CREATE TABLE `tb_periksa` (
  `id_periksa` varchar(15) NOT NULL,
  `id_pasien` varchar(15) NOT NULL,
  `umur` varchar(3) NOT NULL,
  `tgl_periksa` date NOT NULL,
  `keluhan` text NOT NULL,
  `status` enum('BL','S','BTL') NOT NULL,
  PRIMARY KEY (`id_periksa`),
  KEY `id_pasien` (`id_pasien`),
  CONSTRAINT `tb_periksa_ibfk_1` FOREIGN KEY (`id_pasien`) REFERENCES `tb_pasien` (`id_pasien`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `status`) VALUES ('A001hOrZrW', 'P002pLPGPy', '23', '2024-01-14', 'Capek bngt\r\n', 'BL');
INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `status`) VALUES ('A0020XypGV', 'P001QOeDhn', '24', '2024-01-12', 'pusing\r\nsae', 'BL');
INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `status`) VALUES ('A00339iQ20', 'P003kyQU3K', '47', '2024-01-10', 'Pusing', 'BL');
INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `status`) VALUES ('A004Kbduet', 'P004106mmk', '69', '2024-01-10', 'Sakit Pinggang', 'BL');
INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `status`) VALUES ('A005HSF0Uc', 'P005HjdVkw', '58', '2024-01-10', 'Asam lambung\r\n', 'S');
INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `status`) VALUES ('A006w1mFM6', 'P006bFfpbu', '63', '2024-01-11', 'Pusing meriang flu', 'S');
INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `status`) VALUES ('A007T9tY90', 'P007aKQ8g1', '48', '2024-01-11', 'Cek Darah', 'BL');


