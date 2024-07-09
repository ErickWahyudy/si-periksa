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

INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `nik`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kelurahan`, `kec`, `kab`, `email`, `password`, `foto_profile`, `id_level`) VALUES ('P001QOeDhn', 'Lianawati', '3502175912670002', '1967-12-19', 'Perempuan', '0877578999876', 'JL. KH Ahmad Dahlan No. 12', 'Bangunsari', 'Ponorogo', 'Ponorogo', 'Wati@gmail.com', '202cb962ac59075b964b07152d234b70', '', '4');
INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `nik`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kelurahan`, `kec`, `kab`, `email`, `password`, `foto_profile`, `id_level`) VALUES ('P002pLPGPy', 'Zulaikah ', '3502184407680001', '1968-07-04', 'Perempuan', '088798230019', 'DUKUH PLOSORJO RT 01 RW 01', 'Kemiri', 'Jenangan ', 'Ponorogo', 'zulaikah@gmail.com', '202cb962ac59075b964b07152d234b70', '', '4');
INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `nik`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kelurahan`, `kec`, `kab`, `email`, `password`, `foto_profile`, `id_level`) VALUES ('P003kyQU3K', 'Maharani', '3502037101710001', '1977-01-10', 'Perempuan', '08712863761', 'Siman', 'Manuk', 'Siman', 'Ponorogo', 'maharani@gmail.com', '202cb962ac59075b964b07152d234b70', '', '4');
INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `nik`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kelurahan`, `kec`, `kab`, `email`, `password`, `foto_profile`, `id_level`) VALUES ('P004106mmk', 'Suparno', '3502183006540202', '1954-06-30', 'Laki-laki', '082917281781', 'Jl.Madura no.21', 'Banyudono', 'Ponorogo', 'Ponorogo', 'Suparno@gmail.com', '202cb962ac59075b964b07152d234b70', '', '4');
INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `nik`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kelurahan`, `kec`, `kab`, `email`, `password`, `foto_profile`, `id_level`) VALUES ('P005HjdVkw', 'Moch Agus Darfendi', '3502031404850001', '1976-12-05', 'Laki-laki', '081982972231', 'Jl. K.H. Ahmad Dahlan No. 36 A', 'Bangunsari', 'Ponorogo', 'Ponorogo', 'Agus@gmail.com', '202cb962ac59075b964b07152d234b70', '', '4');
INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `nik`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kelurahan`, `kec`, `kab`, `email`, `password`, `foto_profile`, `id_level`) VALUES ('P006bFfpbu', 'Sumanianto', '3502031508680008', '1968-08-15', 'Laki-laki', '089536728913', 'Jl.Merbabu', 'Nologaten ', 'Ponorogo', 'Ponorogo', 'anto@gmail.com', '202cb962ac59075b964b07152d234b70', '', '4');
INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `nik`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kelurahan`, `kec`, `kab`, `email`, `password`, `foto_profile`, `id_level`) VALUES ('P007aKQ8g1', 'Sutini', '3502185303720003', '1972-03-13', 'Perempuan', '0895804020943', 'Jl. Diponegoro No.40', 'Tambakbayan ', 'Balong', 'Ponorogo', 'Sutini@gmail.com', '202cb962ac59075b964b07152d234b70', '', '4');
INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `nik`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kelurahan`, `kec`, `kab`, `email`, `password`, `foto_profile`, `id_level`) VALUES ('P008JysL8r', 'Yulia Ika Rini', '3502184107780004', '1978-07-01', 'Perempuan', '085123983431', 'Jl. Niken Gandini No.12', 'Setono', 'Jenangan ', 'Ponorogo', 'yuliana981@gmail.com', '202cb962ac59075b964b07152d234b70', '', '4');
INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `nik`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kelurahan`, `kec`, `kab`, `email`, `password`, `foto_profile`, `id_level`) VALUES ('P009KHLuHH', 'Doni pradana', '3502111701590003', '1959-01-17', 'Laki-laki', '087758777123', 'Jl. Hasanudin', 'Tatung', 'BALONG', 'KABUPATEN PONOROGO', 'doni@gmail.com', '202cb962ac59075b964b07152d234b70', '', '4');
INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `nik`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kelurahan`, `kec`, `kab`, `email`, `password`, `foto_profile`, `id_level`) VALUES ('P0103CUICt', 'Rika', '3502116908010002', '2001-02-07', 'Perempuan', '087758412437', 'Jl. Ki ageng', 'Ngrupit', 'Jenangan', 'Ponorogo', 'rika@gmail.com', '202cb962ac59075b964b07152d234b70', '', '4');
INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `nik`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kelurahan`, `kec`, `kab`, `email`, `password`, `foto_profile`, `id_level`) VALUES ('P011kqa43l', 'Winda Liya K', '3502110304000002', '2000-04-03', 'Perempuan', '087758777264', 'Jl Semeru No.23', 'Nologaten ', 'Balong', 'Ponorogo', 'winda@gmail.com', '202cb962ac59075b964b07152d234b70', '', '4');
INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `nik`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kelurahan`, `kec`, `kab`, `email`, `password`, `foto_profile`, `id_level`) VALUES ('P0125MvsvL', 'Andrie Endra Putra', '3372050312660003', '1966-12-03', 'Laki-laki', '087799122460', 'Jl. Muria No.8', 'BANGUNSARI', 'PONOROGO', 'KABUPATEN PONOROGO', 'putras22@gmail.com', '0192023a7bbd73250516f069df18b500', '', '4');
INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `nik`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kelurahan`, `kec`, `kab`, `email`, `password`, `foto_profile`, `id_level`) VALUES ('P0138pbCxZ', 'Triwik', '3314195104880003', '1988-04-11', 'Perempuan', '087891248871', 'Jl. Muria Blok A 08', 'BANGUNSARI', 'PONOROGO', 'PONOROGO', 'triwik@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '4');
INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `nik`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kelurahan`, `kec`, `kab`, `email`, `password`, `foto_profile`, `id_level`) VALUES ('P014bOnylA', 'Ferdi Syahputra', '3502170602990000', '1999-02-06', 'Laki-laki', '089519230956', 'Jl. Muria No. 09', 'BANGUNSARI', 'PONOROGO', 'KABUPATEN PONOROGO', 'ferdi@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '4');
INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `nik`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kelurahan`, `kec`, `kab`, `email`, `password`, `foto_profile`, `id_level`) VALUES ('P0154NyLAf', 'Diah Rivia Nuraini', '3502175102720002', '1972-02-11', 'Perempuan', '082186100771', 'Jl. Muria Rt 03/Rw 02', 'BANGUNSARI', 'PONOROGO', 'KABUPATEN PONOROGO', 'diah@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '4');
INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `nik`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kelurahan`, `kec`, `kab`, `email`, `password`, `foto_profile`, `id_level`) VALUES ('P016olT6Up', 'Umi Faridatul Munawaroh', '3502174601890001', '1989-01-06', 'Perempuan', '08951852911', 'Jl Sultan Agung 101', 'BANGUNSARI', 'PONOROGO', 'KABUPATEN PONOROGO', 'umi@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '4');
INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `nik`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kelurahan`, `kec`, `kab`, `email`, `password`, `foto_profile`, `id_level`) VALUES ('P017QxbUxo', 'Samsu Himawan', '\'350217280566000', '1966-05-28', 'Laki-laki', '087801286619', 'Jl. Sultan Agung, Rt 02/Rw 02', 'BANGUNSARI', 'PONOROGO', 'KABUPATEN PONOROGO', 'samsu@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '4');
INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `nik`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kelurahan`, `kec`, `kab`, `email`, `password`, `foto_profile`, `id_level`) VALUES ('P018YFQcN0', 'A. Syamsu Wirawan', '3502172102820004', '1982-02-21', 'Laki-laki', '087712088818', 'Jl. Sultan Agung No. 75', 'BANGUNSARI', 'PONOROGO', 'KABUPATEN PONOROGO', 'syamsu@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '4');
INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `nik`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kelurahan`, `kec`, `kab`, `email`, `password`, `foto_profile`, `id_level`) VALUES ('P0199bU6wS', 'Tumini', '3502176912590002', '1959-12-29', 'Perempuan', '087790022287', 'Jl. Muria No. 28 E', 'BANGUNSARI', 'PONOROGO', 'KABUPATEN PONOROGO', 'tumini@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '4');
INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `nik`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kelurahan`, `kec`, `kab`, `email`, `password`, `foto_profile`, `id_level`) VALUES ('P020usAGcs', 'Diana Wati', '3502176112700003', '1970-12-21', 'Perempuan', '087712001991', 'Jl.M Thamrin 99, Rt 02/Rw 02', 'BANGUNSARI', 'PONOROGO', 'KABUPATEN PONOROGO', 'diana@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '4');
INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `nik`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kelurahan`, `kec`, `kab`, `email`, `password`, `foto_profile`, `id_level`) VALUES ('P021sZXMuL', 'Rizki Ardianto Prayudi', '3502171812890001', '1989-12-18', 'Laki-laki', '089523718901', 'Jl. M. Thamrin 79', 'BANGUNSARI', 'PONOROGO', 'KABUPATEN PONOROGO', 'rizki@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '4');
INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `nik`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kelurahan`, `kec`, `kab`, `email`, `password`, `foto_profile`, `id_level`) VALUES ('P022jfvCjf', 'Aditya Rangga Putra Pamungkas', '3502173007020002', '2002-07-30', 'Laki-laki', '08771652418', 'Jl. Sultan Agung No.75', 'BANGUNSARI', 'PONOROGO', 'KABUPATEN PONOROGO', 'aditya@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '4');
INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `nik`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kelurahan`, `kec`, `kab`, `email`, `password`, `foto_profile`, `id_level`) VALUES ('P023xAdnaQ', 'Setiasih Budiarti', '3502176201610001', '1961-01-22', 'Perempuan', '0821098199271', 'Jl. M Thamrin 79', 'BANGUNSARI', 'PONOROGO', 'KABUPATEN PONOROGO', 'setiasih@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '4');
INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `nik`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kelurahan`, `kec`, `kab`, `email`, `password`, `foto_profile`, `id_level`) VALUES ('P024XOBu4m', 'Slamet', '3502172712690001', '1969-12-27', 'Laki-laki', '0881098001238', 'Jl. M Thamrin 101 A', 'BANGUNSARI', 'PONOROGO', 'KABUPATEN PONOROGO', 'slamet@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '4');
INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `nik`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kelurahan`, `kec`, `kab`, `email`, `password`, `foto_profile`, `id_level`) VALUES ('P025vISZZi', 'Yayuk Muji Rahayu', '3502175010580004', '1958-10-10', 'Perempuan', '087890012186', 'Jl. Sultan Agung 57', 'BANGUNSARI', 'PONOROGO', 'KABUPATEN PONOROGO', 'yayuk@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '4');
INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `nik`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kelurahan`, `kec`, `kab`, `email`, `password`, `foto_profile`, `id_level`) VALUES ('P026CWwgVp', 'Astari Nugraheni', '3502174603760003', '1976-03-06', 'Perempuan', '089899992013', 'Jl. Soekarno - Hatta No. 106', 'BANGUNSARI', 'PONOROGO', 'KABUPATEN PONOROGO', 'tari651@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '4');
INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `nik`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kelurahan`, `kec`, `kab`, `email`, `password`, `foto_profile`, `id_level`) VALUES ('P027thsQ8V', 'Weny Fariana', '3502174904650001', '1965-04-09', 'Perempuan', '0898188992481', 'Jl. Soekarno Hatta 122', 'BANGUNSARI', 'PONOROGO', 'KABUPATEN PONOROGO', 'Faria9981@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '4');
INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `nik`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kelurahan`, `kec`, `kab`, `email`, `password`, `foto_profile`, `id_level`) VALUES ('P028oJTMwq', 'Liong Mili', '3502174403530001', '1953-03-04', 'Laki-laki', '089500198321', 'Jl. Soekarno Hatta 118', 'BANGUNSARI', 'PONOROGO', 'KABUPATEN PONOROGO', 'Liong@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '4');
INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `nik`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kelurahan`, `kec`, `kab`, `email`, `password`, `foto_profile`, `id_level`) VALUES ('P029GRdgXe', 'Benny Sutanto', '3502170105770004', '1977-05-01', 'Laki-laki', '088129998103', 'Jl. Pahlawan 31', 'BANGUNSARI', 'PONOROGO', 'KABUPATEN PONOROGO', 'benny1002@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '4');
INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `nik`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kelurahan`, `kec`, `kab`, `email`, `password`, `foto_profile`, `id_level`) VALUES ('P0300FsqNd', 'Eva Nurdiyanti', '3502175001800004', '1980-01-10', 'Perempuan', '087811774519', 'Jl. Pahlawan 31', 'BANGUNSARI', 'PONOROGO', 'KABUPATEN PONOROGO', 'evaa@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '4');
INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `nik`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kelurahan`, `kec`, `kab`, `email`, `password`, `foto_profile`, `id_level`) VALUES ('P031UidR8x', 'Endang Suharsih', '3502177006640036', '1964-06-30', 'Perempuan', '089545138891', 'Jl. Pahlawan No. 05', 'BANGUNSARI', 'PONOROGO', 'KABUPATEN PONOROGO', 'endang1@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '4');
INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `nik`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kelurahan`, `kec`, `kab`, `email`, `password`, `foto_profile`, `id_level`) VALUES ('P032Ga1HdC', 'Robby Djulianto', '3502170407890005', '1989-07-04', 'Laki-laki', '0878991230013', 'Jl. M.Thamrin No. 06', 'BANGUNSARI', 'PONOROGO', 'KABUPATEN PONOROGO', 'Rrqrobby@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '4');
INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `nik`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kelurahan`, `kec`, `kab`, `email`, `password`, `foto_profile`, `id_level`) VALUES ('P033QnnJ44', 'Djumiati', '3502177006500138', '1950-05-30', 'Perempuan', '089599182301', 'Jl. Thamrin No. 39 C', 'BANGUNSARI', 'PONOROGO', 'KABUPATEN PONOROGO', 'djumiati1950@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '4');
INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `nik`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kelurahan`, `kec`, `kab`, `email`, `password`, `foto_profile`, `id_level`) VALUES ('P034YKx3eg', 'Hadi Wijaya', '3502170806540001', '1954-06-08', 'Laki-laki', '087815548918', 'Jl Pahlawan 27', 'BANGUNSARI', 'PONOROGO', 'KABUPATEN PONOROGO', 'wijaya42@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '4');
INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `nik`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kelurahan`, `kec`, `kab`, `email`, `password`, `foto_profile`, `id_level`) VALUES ('P035hHviyv', 'Hita Kismawati', '3502175709670001', '1967-09-17', 'Perempuan', '087700192881', 'Jl Pahlawan 27', 'BANGUNSARI', 'PONOROGO', 'KABUPATEN PONOROGO', 'Hitaa291@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '4');
INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `nik`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kelurahan`, `kec`, `kab`, `email`, `password`, `foto_profile`, `id_level`) VALUES ('P036maWUOX', 'Tan Mie Yun', '3502174706650001', '1965-06-07', 'Perempuan', '088176892301', 'Jl. Mh. Thamrin No. 16', 'BANGUNSARI', 'PONOROGO', 'KABUPATEN PONOROGO', 'Tanmieyun@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '4');
INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `nik`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kelurahan`, `kec`, `kab`, `email`, `password`, `foto_profile`, `id_level`) VALUES ('P037yGOwT8', 'Andrew Yuhiandi', '3502170803910003', '1991-03-08', 'Laki-laki', '08958872291', 'Jl. Mh. Thamrin No. 16', 'BANGUNSARI', 'PONOROGO', 'KABUPATEN PONOROGO', 'andreww@gmail.com', '6ad14ba9986e3615423dfca256d04e3f', '', '4');
INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `nik`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kelurahan`, `kec`, `kab`, `email`, `password`, `foto_profile`, `id_level`) VALUES ('P038K0R4Fi', 'Jansen Petra', '3502171709720001', '1972-09-17', 'Laki-laki', '087700192381', 'Jl Soekarno Hatta 90', 'BANGUNSARI', 'PONOROGO', 'KABUPATEN PONOROGO', 'petra2019@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '4');
INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `nik`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kelurahan`, `kec`, `kab`, `email`, `password`, `foto_profile`, `id_level`) VALUES ('P039VxMpE7', 'Shinta Handoko', '3502174104770003', '1955-04-01', 'Laki-laki', '087790023187', 'Jl Soekarno Hatta 90', 'BANGUNSARI', 'PONOROGO', 'KABUPATEN PONOROGO', 'shintaa@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '4');
INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `nik`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kelurahan`, `kec`, `kab`, `email`, `password`, `foto_profile`, `id_level`) VALUES ('P040R19CGt', 'Misinah', '3502175210720003', '1960-10-12', 'Perempuan', '08951869991', 'Jl. Hos. Cokroaminoto 92', 'BANGUNSARI', 'PONOROGO', 'KABUPATEN PONOROGO', 'misinah9981@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '4');
INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `nik`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kelurahan`, `kec`, `kab`, `email`, `password`, `foto_profile`, `id_level`) VALUES ('P041czBSiI', 'Yaprilidio Susetio Wibowo', '3502171604600001', '1969-04-16', 'Laki-laki', '087729034287', 'Jl. Hos. Cokroaminoto 92', 'BANGUNSARI', 'PONOROGO', 'KABUPATEN PONOROGO', 'bowo1771@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '4');
INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `nik`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kelurahan`, `kec`, `kab`, `email`, `password`, `foto_profile`, `id_level`) VALUES ('P042Wq1RVd', 'Ila Fidiani A', '3502096108650005', '1975-08-21', 'Perempuan', '08218610071', 'JL. Pahlawan GG. I / 03', 'BANGUNSARI', 'PONOROGO', 'KABUPATEN PONOROGO', 'ila@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '4');
INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `nik`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kelurahan`, `kec`, `kab`, `email`, `password`, `foto_profile`, `id_level`) VALUES ('P043R5qDyR', 'Kuswati', '3502174503720001', '1972-03-05', 'Perempuan', '08779002387', 'JL. Pahlawan GG. I NO. 22 A', 'BANGUNSARI', 'PONOROGO', 'KABUPATEN PONOROGO', 'Kuswati@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '4');
INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `nik`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kelurahan`, `kec`, `kab`, `email`, `password`, `foto_profile`, `id_level`) VALUES ('P044vJCHyH', 'Wahyu Purnamasari', '3502174404900004', '1960-04-04', 'Laki-laki', '087712991991', 'JL. Pahlawan GG. I No. 22 A', 'BANGUNSARI', 'PONOROGO', 'KABUPATEN PONOROGO', 'wahyuhaa2991@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '4');
INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `nik`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kelurahan`, `kec`, `kab`, `email`, `password`, `foto_profile`, `id_level`) VALUES ('P045kDykp8', 'Gunadi', '3502171204480001', '1948-04-12', 'Laki-laki', '089535138891', 'JL. Argopuro No.43', 'BANGUNSARI', 'PONOROGO', 'KABUPATEN PONOROGO', 'Gunadi@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '4');
INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `nik`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kelurahan`, `kec`, `kab`, `email`, `password`, `foto_profile`, `id_level`) VALUES ('P046XzqZu0', 'Nurchayati', '3502175011590004', '1959-11-10', 'Perempuan', '0878991140013', 'JL. Argopuro No.43', 'BANGUNSARI', 'PONOROGO', 'KABUPATEN PONOROGO', 'Nur1@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '4');
INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `nik`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kelurahan`, `kec`, `kab`, `email`, `password`, `foto_profile`, `id_level`) VALUES ('P047cFyY53', 'Sulanjari', '3502175506590006', '1959-06-15', 'Perempuan', '088124765901', 'JL. Dr. Sutomo GG. II / 8', 'BANGUNSARI', 'PONOROGO', 'KABUPATEN PONOROGO', 'Sulanjari128@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '4');
INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `nik`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kelurahan`, `kec`, `kab`, `email`, `password`, `foto_profile`, `id_level`) VALUES ('P048c69m80', 'Sukarti', '3502174812510001', '1951-12-08', 'Perempuan', '08958572291', 'JL. Dr. Sutomo 33 C', 'BANGUNSARI', 'PONOROGO', 'KABUPATEN PONOROGO', 'sukarti@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '4');
INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `nik`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kelurahan`, `kec`, `kab`, `email`, `password`, `foto_profile`, `id_level`) VALUES ('P049TuVVe0', 'Wahyudi', '3502171005570002', '1957-05-10', 'Laki-laki', '087799192711', 'JL. Dr. Sutomo 27 A', 'BANGUNSARI', 'PONOROGO', 'KABUPATEN PONOROGO', 'wahyudi@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '4');
INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `nik`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kelurahan`, `kec`, `kab`, `email`, `password`, `foto_profile`, `id_level`) VALUES ('P0503a1THe', 'Misinem', '3502175801500001', '1950-01-18', 'Perempuan', '08958985191', 'JL. Ijen 04', 'BANGUNSARI', 'PONOROGO', 'KABUPATEN PONOROGO', 'misinem1@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '4');
INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `nik`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kelurahan`, `kec`, `kab`, `email`, `password`, `foto_profile`, `id_level`) VALUES ('P0522GPTby', 'Hendrit Ketut Sulistiono', '3502174905710003', '1971-05-17', 'Laki-laki', '08211437687', 'Jl. Merapi No. 16', 'Banyudono', 'Ponorogo', 'KABUPATEN PONOROGO', 'hendrit@gmail.com', '8cbbdc3fff847eee79abadc7b693b60e', '', '4');
INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `nik`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kelurahan`, `kec`, `kab`, `email`, `password`, `foto_profile`, `id_level`) VALUES ('P053q22DWp', 'Elfianto', '3502171103720003', '2006-05-23', 'Laki-laki', '08211437686', 'Jl. Merapi No. 12', 'Banyudono ', 'Ponorogo', 'KABUPATEN PONOROGO', 'elfi@gmail.com', '7d49e40f4b3d8f68c19406a58303f826', '', '4');
INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `nik`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kelurahan`, `kec`, `kab`, `email`, `password`, `foto_profile`, `id_level`) VALUES ('P054geTjow', 'Eva Dyah Trisnawati', '3502171603590001', '1959-03-16', 'Perempuan', '085895199164', 'Jl. Merapi No. 10', 'Banyudono', 'Ponorogo', 'KABUPATEN PONOROGO', 'evaa@gmail.com', '03902ac60574849f2c1ae4bf724a62ed', '', '4');
INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `nik`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kelurahan`, `kec`, `kab`, `email`, `password`, `foto_profile`, `id_level`) VALUES ('P055avkaa0', 'Pujiati', '3502170307740001', '1974-07-03', 'Perempuan', '082114375698', 'Jl. Merapi No. 18', 'Nologaten ', 'Ponorogo', 'KABUPATEN PONOROGO', 'Puji@gmail.com', '3ed6e995474bc6dddef7a6fc9b97c965', '', '4');
INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `nik`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kelurahan`, `kec`, `kab`, `email`, `password`, `foto_profile`, `id_level`) VALUES ('P056V7n54S', 'Ida Fitriana', '3502171708550002', '1955-08-17', 'Perempuan', '087781803525', 'Jl. Merapi No. 14', 'Banyudono', 'Ponorogo', 'KABUPATEN PONOROGO', 'Fitriana@gmail.com', 'e694e35e5271eaa7da5a6b750c2dc447', '', '4');
INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `nik`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kelurahan`, `kec`, `kab`, `email`, `password`, `foto_profile`, `id_level`) VALUES ('P058gQUNtO', 'Dian Wahyu Ardianto', '3502174912480003', '1949-04-12', 'Perempuan', '085223902333', 'Jl. Merapi No. 8', 'BANYUDONO', 'PONOROGO', 'KABUPATEN PONOROGO', 'dian@gmail.com', '750f48161355ac52ad11c48ef5be70b6', '', '4');
INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `nik`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kelurahan`, `kec`, `kab`, `email`, `password`, `foto_profile`, `id_level`) VALUES ('P059YxZfuf', 'Natalius Yosep Effendy', '3502176202930002', '1962-02-20', 'Laki-laki', '081323749555', 'Jl. Merapi No. 05 A', 'BANYUDONO', 'PONOROGO', 'KABUPATEN PONOROGO', 'natalius@gmail.com', '71f4ca1ae0e8e2c6773a801e1f7614a0', '', '4');
INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `nik`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kelurahan`, `kec`, `kab`, `email`, `password`, `foto_profile`, `id_level`) VALUES ('P060JRbRoD', 'Indarti', '6171051703900004', '1957-03-17', 'Perempuan', '085223009029', 'Jl. Merapi No. 3', 'BANYUDONO', 'PONOROGO', 'KABUPATEN PONOROGO', 'indarti@gmail.com', 'a427dba7ec43355335767613579288fc', '', '4');
INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `nik`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kelurahan`, `kec`, `kab`, `email`, `password`, `foto_profile`, `id_level`) VALUES ('P061WArY16', 'Muhammad Reza', '350214922480014', '2001-03-09', 'Laki-laki', '082114369876', 'Jl. Majapahit No. 09', 'NGILE', 'TULAKAN', 'KABUPATEN PACITAN', 'reza@gmail.com', '3ed6e995474bc6dddef7a6fc9b97c965', '', '4');
INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `nik`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kelurahan`, `kec`, `kab`, `email`, `password`, `foto_profile`, `id_level`) VALUES ('P062VAb1a6', 'Juni Hariyanto', '3502172709970002', '1997-09-27', 'Laki-laki', '081389451100', 'Jl. Merapi No. 20', 'BANYUDONO', 'PONOROGO', 'KABUPATEN PONOROGO', 'juni@gmail.com', '076d16b49b5f154ed69e80361ae27af3', '', '4');
INSERT INTO `tb_pasien` (`id_pasien`, `nama`, `nik`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kelurahan`, `kec`, `kab`, `email`, `password`, `foto_profile`, `id_level`) VALUES ('P063EnePjS', 'Dewi Toyimah', '3502172406010005', '2001-06-24', 'Perempuan', '085223131331', 'Jl. Merapi No. 20 B', 'BANYUDONO', 'PONOROGO', 'KABUPATEN PONOROGO', 'dewi@gmail.com', 'fde0b737496c53bb85d07b31a02985a3', '', '4');


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

INSERT INTO `tb_pengaturan` (`id_pengaturan`, `nama_judul`, `meta_keywords`, `meta_description`, `background`) VALUES ('P1xhDwL', 'Si-Periksa', 'Sistem Antrian Periksa Dokter', 'Si-Periksa adalah sebuah aplikasi web yang dirancang untuk mengelola antrian pasien yang ingin melakukan pemeriksaan secara online. ', 'header_656f3421970de.jpg');


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
INSERT INTO `tb_pengguna` (`id_pengguna`, `nama`, `no_hp`, `keterangan`, `email`, `password`, `foto_profile`, `id_level`) VALUES ('A003rulfBY', 'Arif Merbabu Care', '087899144328', 'Arif Merbabu Care', 'admin@gmail.com', '202cb962ac59075b964b07152d234b70', 'profile_663754efdbac3.jpeg', '2');
INSERT INTO `tb_pengguna` (`id_pengguna`, `nama`, `no_hp`, `keterangan`, `email`, `password`, `foto_profile`, `id_level`) VALUES ('A004HyVRVG', 'Ridho', '087899144328', 'Admin', 'ridho@gmail.com', '202cb962ac59075b964b07152d234b70', '', '1');


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
INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `catatan`, `status`) VALUES ('A0191lHmul', 'P002pLPGPy', '23', '2024-05-01', 'Pusing', 'Istirahat yang cukup ', 'S');
INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `catatan`, `status`) VALUES ('A020R8mQxn', 'P002pLPGPy', '23', '2024-05-03', 'pusing', '', 'BL');
INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `catatan`, `status`) VALUES ('A0210tziZI', 'P002pLPGPy', '23', '2024-05-04', 'Pusing', '', 'D');
INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `catatan`, `status`) VALUES ('A022YRfAAs', 'P002pLPGPy', '23', '2024-05-04', 'Pusing,  t.120/80', '', 'BL');
INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `catatan`, `status`) VALUES ('A023ukf73b', 'P009KHLuHH', '65', '2024-05-05', 'Pusing', 'Mik air yang banyak', 'S');
INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `catatan`, `status`) VALUES ('A024dpRCFc', 'P003kyQU3K', '47', '2024-05-05', 'Vertigo', 'Mik air putih yang banyak', 'S');
INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `catatan`, `status`) VALUES ('A025CE46bN', 'P0103CUICt', '23', '2024-05-05', 'Panas demam', 'Istirahat yang cukup', 'S');
INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `catatan`, `status`) VALUES ('A026rNwUeM', 'P001QOeDhn', '24', '2024-05-05', 'Pusing', '', 'BTL');
INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `catatan`, `status`) VALUES ('A027dwamH0', 'P011kqa43l', '24', '2024-05-05', 'Pusing', '', 'BTL');
INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `catatan`, `status`) VALUES ('A028As4nB8', 'P004106mmk', '70', '2024-05-05', 'Vertigo', '', 'BTL');
INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `catatan`, `status`) VALUES ('A029DVAfK0', 'P018YFQcN0', '42', '2024-05-19', 'Pusing', '', 'BL');
INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `catatan`, `status`) VALUES ('A030a18TJk', 'P022jfvCjf', '22', '2024-05-19', 'Pusing', '', 'BL');
INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `catatan`, `status`) VALUES ('A031ngOJZi', 'P0125MvsvL', '58', '2024-05-19', 'Pusing', '', 'BL');
INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `catatan`, `status`) VALUES ('A032Kyd69e', 'P0154NyLAf', '52', '2024-05-19', 'Pusing', '', 'BL');
INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `catatan`, `status`) VALUES ('A033cqcaXE', 'P018YFQcN0', '42', '2024-05-22', 'Demam, Batuk & Pilek', '', 'BTL');
INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `catatan`, `status`) VALUES ('A034MxtvrO', 'P022jfvCjf', '22', '2024-05-22', 'Demam, Batuk & Pilek', '', 'BTL');
INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `catatan`, `status`) VALUES ('A0354xszoD', 'P037yGOwT8', '33', '2024-05-22', 'Demam, Batuk & Pilek', '', 'BTL');
INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `catatan`, `status`) VALUES ('A036xZ9nS3', 'P0125MvsvL', '58', '2024-05-22', 'Demam, Batuk & Pilek', '', 'BTL');
INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `catatan`, `status`) VALUES ('A037igFvnX', 'P033QnnJ44', '74', '2024-05-22', 'Batuk & Pilek ', '', 'BTL');
INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `catatan`, `status`) VALUES ('A038q3Vac0', 'P018YFQcN0', '42', '2024-05-22', 'Demam, Batuk & Pilek', '', 'BTL');
INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `catatan`, `status`) VALUES ('A0392xPPZC', 'P018YFQcN0', '42', '2024-05-22', 'Demam, Batuk & Pilek ', '', 'BL');
INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `catatan`, `status`) VALUES ('A040RzEBVb', 'P022jfvCjf', '22', '2024-05-22', 'Demam, Batuk & Pilek ', '', 'BTL');
INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `catatan`, `status`) VALUES ('A04102FZix', 'P022jfvCjf', '22', '2024-05-22', 'Demam, Batuk & Pilek', '', 'BL');
INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `catatan`, `status`) VALUES ('A042TAALSZ', 'P033QnnJ44', '74', '2024-05-22', 'Batuk & Pilek', '', 'BTL');
INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `catatan`, `status`) VALUES ('A04330Jr09', 'P054geTjow', '21', '2024-05-23', 'Diare', '', 'BL');
INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `catatan`, `status`) VALUES ('A044Vi6L5D', 'P055avkaa0', '17', '2024-05-23', 'Diare', '', 'BL');
INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `catatan`, `status`) VALUES ('A045mJybY2', 'P056V7n54S', '26', '2024-05-23', 'pusing vertigo', '', 'BL');
INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `catatan`, `status`) VALUES ('A0460HtM19', 'P058gQUNtO', '75', '2024-05-24', 'Flu dan Batuk', 'jj', 'S');
INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `catatan`, `status`) VALUES ('A047JbNppM', 'P059YxZfuf', '62', '2024-05-24', 'Demam dan Menggigil', '', 'D');
INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `catatan`, `status`) VALUES ('A048aJHAQK', 'P060JRbRoD', '67', '2024-05-24', 'Gigi Bengkak', '', 'BL');
INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `catatan`, `status`) VALUES ('A0490oMt0L', 'P061WArY16', '23', '2024-05-24', 'Sariawan', '', 'BTL');
INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `catatan`, `status`) VALUES ('A050rUhGcu', 'P062VAb1a6', '27', '2024-05-24', 'Batuk, Flu, Demam', '', 'BL');
INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `catatan`, `status`) VALUES ('A0511yB04j', 'P063EnePjS', '23', '2024-05-24', 'Pusing dan Mual', 'Kurang Istirahat', 'S');
INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `catatan`, `status`) VALUES ('A052RXT3nm', 'P018YFQcN0', '42', '2024-07-02', 'pusing', 'Semoga Cepat sembuh', 'S');
INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `catatan`, `status`) VALUES ('A053tWSRxr', 'P022jfvCjf', '22', '2024-07-02', 'pusing', 'Semoga Cepat sembuh', 'S');
INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `catatan`, `status`) VALUES ('A054I7GP6U', 'P037yGOwT8', '33', '2024-07-02', 'pusing', 'Semoga Cepat sembuh', 'S');
INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `catatan`, `status`) VALUES ('A0552vUx6o', 'P0125MvsvL', '58', '2024-07-02', 'pusing', 'Semoga Cepat sembuh', 'S');
INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `catatan`, `status`) VALUES ('A056Pls0ug', 'P026CWwgVp', '48', '2024-07-02', 'pusing', 'Semoga Cepat sembuh', 'S');
INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `catatan`, `status`) VALUES ('A0573gaDC8', 'P033QnnJ44', '74', '2024-07-02', 'pusing', 'Semoga Cepat sembuh', 'S');
INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `catatan`, `status`) VALUES ('A058P3uRVD', 'P045kDykp8', '76', '2024-07-02', 'pusing', 'Semoga Cepat sembuh', 'S');
INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `catatan`, `status`) VALUES ('A059841D3M', 'P033QnnJ44', '74', '2024-07-02', 'pusing', '', 'BTL');
INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `catatan`, `status`) VALUES ('A060MFFSgV', 'P045kDykp8', '76', '2024-07-02', 'pusing', '', 'BTL');
INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `catatan`, `status`) VALUES ('A06180KM83', 'P060JRbRoD', '67', '2024-07-02', 'pusing', '', 'BTL');
INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `catatan`, `status`) VALUES ('A0626hspIa', 'P045kDykp8', '76', '2024-07-02', 'pusing', '', 'BTL');
INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `catatan`, `status`) VALUES ('A063zGHBBK', 'P018YFQcN0', '42', '2024-07-02', 'pusing', '', 'BTL');
INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `catatan`, `status`) VALUES ('A064I4Fd5v', 'P018YFQcN0', '42', '2024-07-02', 'pusing', '', 'BTL');
INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `catatan`, `status`) VALUES ('A065byoZRg', 'P033QnnJ44', '74', '2024-07-02', 'pusing', '', 'BTL');
INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `catatan`, `status`) VALUES ('A066hJ5Dxi', 'P063EnePjS', '23', '2024-07-02', 'pusing', '', 'BTL');
INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `catatan`, `status`) VALUES ('A067ws40zG', 'P033QnnJ44', '74', '2024-07-02', 'pusing', '', 'BL');
INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `catatan`, `status`) VALUES ('A068JASoR1', 'P060JRbRoD', '67', '2024-07-02', 'pusing', '', 'BL');
INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `catatan`, `status`) VALUES ('A069HrLD4Q', 'P0503a1THe', '74', '2024-07-02', 'pusing', '', 'BL');
INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `catatan`, `status`) VALUES ('A071HO6JV8', 'P033QnnJ44', '74', '2024-07-04', 'Pusing', '', 'BTL');
INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `catatan`, `status`) VALUES ('A072mAeRCB', 'P045kDykp8', '76', '2024-07-04', 'pusing', '', 'BTL');
INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `catatan`, `status`) VALUES ('A073tph0SK', 'P029GRdgXe', '47', '2024-07-04', 'pusing', '', 'BTL');
INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `catatan`, `status`) VALUES ('A074S1szyD', 'P018YFQcN0', '42', '2024-07-04', 'pusing', '', 'BL');
INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `catatan`, `status`) VALUES ('A0753lXJTn', 'P022jfvCjf', '22', '2024-07-04', 'pusing', '', 'BL');
INSERT INTO `tb_periksa` (`id_periksa`, `id_pasien`, `umur`, `tgl_periksa`, `keluhan`, `catatan`, `status`) VALUES ('A0768O6PXA', 'P033QnnJ44', '74', '2024-07-04', 'pusing', '', 'D');


