#
# TABLE STRUCTURE FOR: tb_level
#

DROP TABLE IF EXISTS `tb_level`;

CREATE TABLE `tb_level` (
  `id_level` varchar(2) NOT NULL,
  `level` varchar(15) NOT NULL,
  PRIMARY KEY (`id_level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `tb_level` (`id_level`, `level`) VALUES ('1', 'superadmin');
INSERT INTO `tb_level` (`id_level`, `level`) VALUES ('2', 'admin');
INSERT INTO `tb_level` (`id_level`, `level`) VALUES ('3', 'user');
INSERT INTO `tb_level` (`id_level`, `level`) VALUES ('4', 'pasien');


#
# TABLE STRUCTURE FOR: tb_pasien
#

DROP TABLE IF EXISTS `tb_pasien`;

CREATE TABLE `tb_pasien` (
  `id_pasien` varchar(15) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `nik` varchar(17) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `kelurahan` varchar(20) NOT NULL,
  `kec` varchar(20) NOT NULL,
  `kab` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `foto_profile` text NOT NULL,
  `id_level` varchar(2) NOT NULL DEFAULT '4',
  PRIMARY KEY (`id_pasien`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `nik`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kelurahan`, `kec`, `kab`, `email`, `password`, `foto_profile`, `id_level`) VALUES ('P001QOeDhn', 'Suryati', '', '2000-01-10', 'Perempuan', '0877578999876', 'Jalen', '', 'Balong', 'Ponorogo', 'suryati@gmail.com', '202cb962ac59075b964b07152d234b70', '', '4');
INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `nik`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kelurahan`, `kec`, `kab`, `email`, `password`, `foto_profile`, `id_level`) VALUES ('P002pLPGPy', 'Budi', '', '2001-01-10', 'Laki-laki', '18297129871', 'Balong', '', 'Balong', 'Ponorogo', 'budi@gmail.com', '202cb962ac59075b964b07152d234b70', '', '4');
INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `nik`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kelurahan`, `kec`, `kab`, `email`, `password`, `foto_profile`, `id_level`) VALUES ('P003kyQU3K', 'Maharani', '', '1977-01-10', 'Perempuan', '8712863761', 'Siman', '', 'Siman', 'Ponorogo', 'maharani@gmail.com', '202cb962ac59075b964b07152d234b70', '', '4');
INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `nik`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kelurahan`, `kec`, `kab`, `email`, `password`, `foto_profile`, `id_level`) VALUES ('P004106mmk', 'Darso', '', '1955-01-10', 'Laki-laki', '9172817816', 'Singkil', '', 'Balong', 'Ponorogo', 'darso@gmail.com', '202cb962ac59075b964b07152d234b70', '', '4');
INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `nik`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kelurahan`, `kec`, `kab`, `email`, `password`, `foto_profile`, `id_level`) VALUES ('P005HjdVkw', 'Maium', '', '1966-01-10', 'Laki-laki', '0819829721', 'Karangan', '', 'Badegan', 'Ponorogo', 'maium@gmail.com', '202cb962ac59075b964b07152d234b70', '', '4');
INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `nik`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kelurahan`, `kec`, `kab`, `email`, `password`, `foto_profile`, `id_level`) VALUES ('P006bFfpbu', 'Lasmi', '', '1961-01-10', 'Perempuan', '1977121', 'Purwantoro', '', 'Purwantoro', 'Wonogiri', 'lasmi@gmail.com', '202cb962ac59075b964b07152d234b70', '', '4');
INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `nik`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kelurahan`, `kec`, `kab`, `email`, `password`, `foto_profile`, `id_level`) VALUES ('P007aKQ8g1', 'Elly', '350211400176', '1976-01-10', 'Perempuan', '8626363', 'Jl. Diponegoro', 'Sedarat', 'Balong', 'Ponorogo', 'elly@gmail.com', '202cb962ac59075b964b07152d234b70', '', '4');
INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `nik`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kelurahan`, `kec`, `kab`, `email`, `password`, `foto_profile`, `id_level`) VALUES ('P008JysL8r', 'Fannisa', '', '2001-10-23', 'Perempuan', '087758999875', 'Jl. H. Agus Salim Ds Sambirejo', '', 'KEBONSARI', 'KABUPATEN MADIUN', 'fannisa@gmail.com', '202cb962ac59075b964b07152d234b70', '', '4');
INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `nik`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kelurahan`, `kec`, `kab`, `email`, `password`, `foto_profile`, `id_level`) VALUES ('P009KHLuHH', 'Doni pradana', '3502111701590003', '1959-01-17', 'Laki-laki', '087758777123', 'Jl. Hasanudin', 'Tatung', 'BALONG', 'KABUPATEN PONOROGO', 'doni@gmail.com', '202cb962ac59075b964b07152d234b70', '', '4');
INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `nik`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kelurahan`, `kec`, `kab`, `email`, `password`, `foto_profile`, `id_level`) VALUES ('P0103CUICt', 'Rika', '3502116908010002', '2001-02-07', 'Perempuan', '087758412437', 'Jl. Ki ageng', 'NGRUPIT', 'JENANGAN', 'KABUPATEN PONOROGO', 'rika@gmail.com', '202cb962ac59075b964b07152d234b70', '', '4');
INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `nik`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kelurahan`, `kec`, `kab`, `email`, `password`, `foto_profile`, `id_level`) VALUES ('P011kqa43l', 'Winda Liya K', '3502110304000002', '2000-04-03', 'Perempuan', '087758777264', 'Jl H Agus Salim', 'JALEN', 'BALONG', 'KABUPATEN PONOROGO', 'winda@gmail.com', '202cb962ac59075b964b07152d234b70', '', '4');


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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `tb_pengguna` (`id_pengguna`, `nama`, `no_hp`, `keterangan`, `email`, `password`, `foto_profile`, `id_level`) VALUES ('A001bnHDs', 'Erik W', '081456141227', 'Ini admin', 'admin@kassandra.com', 'd0aeca852d9004f9eab4fb139b3ec6db', 'profile_658bb959385e8.jpeg', '1');
INSERT INTO `tb_pengguna` (`id_pengguna`, `nama`, `no_hp`, `keterangan`, `email`, `password`, `foto_profile`, `id_level`) VALUES ('A003rulfBY', 'dr. Ani Damayanti ', '087899144328', 'Dokter umum', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '', '2');


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
  `catatan` text NOT NULL,
  `status` enum('BL','D','S','BTL') NOT NULL,
  PRIMARY KEY (`id_periksa`),
  KEY `id_pasien` (`id_pasien`),
  CONSTRAINT `tb_periksa_ibfk_1` FOREIGN KEY (`id_pasien`) REFERENCES `tb_pasien` (`id_pasien`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `catatan`, `status`) VALUES ('A001hOrZrW', 'P002pLPGPy', '23', '2024-01-26', 'Capek bngt, pusing, berkunang kunang', '', 'BL');
INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `catatan`, `status`) VALUES ('A0020XypGV', 'P001QOeDhn', '24', '2024-01-26', 'pusing\r\nsae', '', 'BTL');
INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `catatan`, `status`) VALUES ('A00339iQ20', 'P003kyQU3K', '47', '2024-01-26', 'Pusing', '', 'BL');
INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `catatan`, `status`) VALUES ('A004Kbduet', 'P004106mmk', '69', '2024-01-26', 'Sakit Pinggang', '', 'D');
INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `catatan`, `status`) VALUES ('A005HSF0Uc', 'P005HjdVkw', '58', '2024-01-26', 'Asam lambung\r\n', 'jaga pola makan', 'BL');
INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `catatan`, `status`) VALUES ('A006w1mFM6', 'P006bFfpbu', '63', '2024-01-27', 'Pusing meriang flu', 'minum obat ini', 'S');
INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `catatan`, `status`) VALUES ('A007T9tY90', 'P007aKQ8g1', '48', '2024-01-27', 'Cek Darah', '', 'BL');
INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `catatan`, `status`) VALUES ('A008inWIq1', 'P008JysL8r', '23', '2024-01-26', 'flu dan pusing', '', 'BL');
INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `catatan`, `status`) VALUES ('A009UCW4Mo', 'P002pLPGPy', '23', '2024-01-28', 'Sakit\r\n', '', 'BL');
INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `catatan`, `status`) VALUES ('A010vThLuI', 'P009KHLuHH', '65', '2024-01-28', 'capek', '', 'BL');
INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `catatan`, `status`) VALUES ('A011LWg6fg', 'P007aKQ8g1', '48', '2024-01-28', 'mumet', '', 'BL');
INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `catatan`, `status`) VALUES ('A013LOUNl7', 'P006bFfpbu', '63', '2024-01-28', 'pusing', '', 'BL');
INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `catatan`, `status`) VALUES ('A014UDPYSK', 'P004106mmk', '69', '2024-01-28', 'jubdgwvd', '', 'BL');
INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `catatan`, `status`) VALUES ('A015LD3Ae3', 'P002pLPGPy', '23', '2024-02-07', 'mual', '', 'D');
INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `catatan`, `status`) VALUES ('A016r4KMUc', 'P004106mmk', '69', '2024-02-07', 'pusing, batuk', '', 'BTL');
INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `catatan`, `status`) VALUES ('A017tNoKPF', 'P006bFfpbu', '63', '2024-02-07', 'muntah', '', 'BL');
INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `catatan`, `status`) VALUES ('A018zJMMlR', 'P008JysL8r', '23', '2024-02-07', 'nyeri', '', 'BL');


