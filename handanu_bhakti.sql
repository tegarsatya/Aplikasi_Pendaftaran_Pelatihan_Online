/*
 Navicat Premium Data Transfer

 Source Server         : ayang_server
 Source Server Type    : MySQL
 Source Server Version : 100129
 Source Host           : localhost:3306
 Source Schema         : handanu_bhakti

 Target Server Type    : MySQL
 Target Server Version : 100129
 File Encoding         : 65001

 Date: 13/03/2020 20:46:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for agenda
-- ----------------------------
DROP TABLE IF EXISTS `agenda`;
CREATE TABLE `agenda`  (
  `id_agenda` int(10) NOT NULL AUTO_INCREMENT,
  `nama` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jenis_agenda` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `panitia` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tempat` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `mulai` date NOT NULL,
  `selesai` date NOT NULL,
  `ringkasan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `isi` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tanggal` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id_agenda`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of agenda
-- ----------------------------
INSERT INTO `agenda` VALUES (2, 'Harapan Baru berkembang', 'Internal', 'tegar satya negara', 'Gunung Manglayang', '2020-03-01', '2020-04-01', 'Kemping', 'mnbhj', '2020-02-23 18:22:02');

-- ----------------------------
-- Table structure for bagian
-- ----------------------------
DROP TABLE IF EXISTS `bagian`;
CREATE TABLE `bagian`  (
  `id_bagian` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `kode_bagian` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_bagian` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `status_bagian` enum('Aktif','Non Aktif') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `keterangan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `wilayah` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `tanggal_post` datetime(0) NOT NULL,
  `tanggal_update` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id_bagian`) USING BTREE,
  UNIQUE INDEX `kode_bagian`(`kode_bagian`) USING BTREE,
  UNIQUE INDEX `nama_bagian`(`nama_bagian`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 15 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bagian
-- ----------------------------
INSERT INTO `bagian` VALUES (12, 1, 'MARKETING', 'Bagian Pemasaran', 'Aktif', '', '', '2019-04-13 20:10:33', '2019-04-14 01:10:33');
INSERT INTO `bagian` VALUES (13, 1, 'KEUANGAN', 'Bagian Keuangan', 'Aktif', '', '', '2019-04-13 20:10:46', '2019-04-14 01:10:46');

-- ----------------------------
-- Table structure for berita
-- ----------------------------
DROP TABLE IF EXISTS `berita`;
CREATE TABLE `berita`  (
  `id_berita` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `updater` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `slug_berita` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `judul_berita` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `isi` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `status_berita` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jenis_berita` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `keywords` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `gambar` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `hits` int(11) NOT NULL,
  `urutan` int(11) NULL DEFAULT NULL,
  `tanggal_mulai` date NULL DEFAULT NULL,
  `tanggal_selesai` date NULL DEFAULT NULL,
  `tanggal_post` datetime(0) NOT NULL,
  `tanggal_publish` datetime(0) NOT NULL,
  `tanggal` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id_berita`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 13 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of berita
-- ----------------------------
INSERT INTO `berita` VALUES (8, 4, 5, '', 'pendaftaran-pelatihan-satpam', 'Pendaftaran Pelatihan Satpam', '<p>Melakukan Pendaftan</p>', 'Publish', 'Berita', 'Pendaftaran Pelatihan', '12440297_541563699356921_7136798201031747469_o.jpg', '', 7, 1, NULL, NULL, '2020-02-20 07:32:49', '2020-02-20 12:32:38', '2020-03-08 14:38:14');
INSERT INTO `berita` VALUES (10, 4, 5, '', 'profil', 'Profil ', '<p>trytry</p>', 'Publish', 'Profil', 'berita', 'bingkai-png-black-11574711705rj0asbs5pv.png', 'Profil', 6, 0, NULL, NULL, '2020-03-02 05:38:59', '2020-03-02 10:30:00', '2020-03-12 18:48:12');
INSERT INTO `berita` VALUES (11, 4, 5, '', 'fasilitas', 'Fasilitas', '<p>kjndschj</p>', 'Publish', 'Fasilitas', 'nnnnmm ', 'node_png.png', 'Fasilitas', 15, 1, NULL, NULL, '2020-03-02 05:51:52', '2020-03-02 05:51:16', '2020-03-12 18:46:51');
INSERT INTO `berita` VALUES (12, 4, 5, '', 'layanan', 'layanan', '<p>xzccxz</p>', 'Publish', 'Layanan', 'saxsad', 'download.jpg', '', 5, 1, NULL, NULL, '2020-03-04 12:50:56', '2020-03-04 12:50:25', '2020-03-05 09:27:09');

-- ----------------------------
-- Table structure for client
-- ----------------------------
DROP TABLE IF EXISTS `client`;
CREATE TABLE `client`  (
  `id_client` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NULL DEFAULT NULL,
  `jenis_client` enum('Perorangan','Perusahaan','Organisasi') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pimpinan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `alamat` varchar(300) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `telepon` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `website` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `password` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `password_hint` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `isi` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `status_testimoni` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `isi_testimoni` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `gambar` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status_client` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `keywords` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status_baca` enum('Sudah','Belum') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `status_siswa` enum('Aktif','Calon','Lulus') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ip_address` varchar(24) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tempat_lahir` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tanggal_lahir` date NULL DEFAULT NULL,
  `tanggal` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id_client`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for download
-- ----------------------------
DROP TABLE IF EXISTS `download`;
CREATE TABLE `download`  (
  `id_download` int(11) NOT NULL AUTO_INCREMENT,
  `id_kategori_download` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `judul_download` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jenis_download` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `isi` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `gambar` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `website` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `hits` int(11) NOT NULL,
  `tanggal` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id_download`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of download
-- ----------------------------
INSERT INTO `download` VALUES (6, 4, 4, 'Download ', 'Download', '<p>Mantab</p>', 'File_10-Bab-II-Landasan-Teori.pdf', 'http://tegarsatyanegara.online', 0, '2020-02-23 20:41:38');

-- ----------------------------
-- Table structure for fasilitas
-- ----------------------------
DROP TABLE IF EXISTS `fasilitas`;
CREATE TABLE `fasilitas`  (
  `id_fasilitas` int(11) NOT NULL,
  `nama_fasilitas` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `isi_fasilitas` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `gambar` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tanggal_post` datetime(0) NOT NULL,
  PRIMARY KEY (`id_fasilitas`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fasilitas
-- ----------------------------
INSERT INTO `fasilitas` VALUES (1, 'sadsa', 'asdasd', 'sad', '2020-02-24 21:04:58');

-- ----------------------------
-- Table structure for galeri
-- ----------------------------
DROP TABLE IF EXISTS `galeri`;
CREATE TABLE `galeri`  (
  `id_galeri` int(11) NOT NULL AUTO_INCREMENT,
  `id_kategori_galeri` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `judul_galeri` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jenis_galeri` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `isi` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `gambar` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `website` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `hits` int(11) NULL DEFAULT NULL,
  `popup_status` enum('Publish','Draft','','') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `urutan` int(11) NULL DEFAULT NULL,
  `status_text` enum('Ya','Tidak','','') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tanggal` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id_galeri`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 12 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of galeri
-- ----------------------------
INSERT INTO `galeri` VALUES (11, 5, 4, 'PT PRIMA HANDANU BHAKTI', 'Homepage', '<p>Tempat Pelatihan Satpam Gada Pratama</p>', '12440297_541563699356921_7136798201031747469_o1.jpg', '', NULL, 'Publish', 1, 'Ya', '2020-02-20 15:30:08');

-- ----------------------------
-- Table structure for kategori
-- ----------------------------
DROP TABLE IF EXISTS `kategori`;
CREATE TABLE `kategori`  (
  `id_kategori` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `slug_kategori` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_kategori` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `urutan` int(11) NULL DEFAULT NULL,
  `hits` int(11) NOT NULL,
  `tanggal` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id_kategori`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kategori
-- ----------------------------
INSERT INTO `kategori` VALUES (5, 1, 'kegiatan', 'Kegiatan', 5, 0, '2019-03-04 13:31:06');

-- ----------------------------
-- Table structure for kategori_download
-- ----------------------------
DROP TABLE IF EXISTS `kategori_download`;
CREATE TABLE `kategori_download`  (
  `id_kategori_download` int(11) NOT NULL AUTO_INCREMENT,
  `slug_kategori_download` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_kategori_download` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `urutan` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_kategori_download`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kategori_download
-- ----------------------------
INSERT INTO `kategori_download` VALUES (3, 'formulir-pendaftaran-online', 'Formulir Pendaftaran Online', 1);
INSERT INTO `kategori_download` VALUES (4, 'fasilitas-tempat-pelatihan', 'Fasilitas Tempat Pelatihan', 2);
INSERT INTO `kategori_download` VALUES (5, 'peraturan-dalam-mengikuti-pelatihan', 'Peraturan Dalam Mengikuti Pelatihan', 3);

-- ----------------------------
-- Table structure for kategori_galeri
-- ----------------------------
DROP TABLE IF EXISTS `kategori_galeri`;
CREATE TABLE `kategori_galeri`  (
  `id_kategori_galeri` int(11) NOT NULL AUTO_INCREMENT,
  `slug_kategori_galeri` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_kategori_galeri` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `urutan` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_kategori_galeri`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kategori_galeri
-- ----------------------------
INSERT INTO `kategori_galeri` VALUES (4, 'kegiatan', 'Kegiatan', 4);
INSERT INTO `kategori_galeri` VALUES (5, 'foto-pelatihan', 'Foto Pelatihan', 4);

-- ----------------------------
-- Table structure for kategori_staff
-- ----------------------------
DROP TABLE IF EXISTS `kategori_staff`;
CREATE TABLE `kategori_staff`  (
  `id_kategori_staff` int(11) NOT NULL AUTO_INCREMENT,
  `slug_kategori_staff` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_kategori_staff` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `urutan` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_kategori_staff`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kategori_staff
-- ----------------------------
INSERT INTO `kategori_staff` VALUES (1, 'pejabat-eselon-1', 'Pejabat Eselon 1', 1);
INSERT INTO `kategori_staff` VALUES (2, 'pejabat-struktural', 'Pejabat Struktural', 2);

-- ----------------------------
-- Table structure for konfigurasi
-- ----------------------------
DROP TABLE IF EXISTS `konfigurasi`;
CREATE TABLE `konfigurasi`  (
  `id_konfigurasi` int(11) NOT NULL AUTO_INCREMENT,
  `namaweb` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `singkatan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tagline` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tentang` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `deskripsi` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `website` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `email_cadangan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `alamat` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `telepon` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `hp` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `fax` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `logo` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `footer` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `keywords` varchar(400) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `metatext` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `facebook` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `twitter` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `instagram` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `google_plus` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `google_map` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `judul_1` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `pesan_1` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `judul_2` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `pesan_2` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `judul_3` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `pesan_3` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `judul_4` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `pesan_4` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `judul_5` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `pesan_5` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `judul_6` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `pesan_6` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `isi_1` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `isi_2` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `isi_3` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `isi_4` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `isi_5` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `isi_6` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `link_1` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `link_2` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `link_3` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `link_4` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `link_5` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `link_6` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `javawebmedia` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `gambar` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `video` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `rekening` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `gambar_berita` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status_form_booking` enum('Aktif','Nonaktif') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `max_room_booking` int(11) NULL DEFAULT NULL,
  `nama_direktur` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jabatan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `stempel_tanda_tangan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `protocol` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `smtp_host` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `smtp_port` int(11) NOT NULL,
  `smtp_timeout` int(11) NOT NULL,
  `smtp_user` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `smtp_pass` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_user` int(11) NOT NULL,
  `tanggal` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id_konfigurasi`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of konfigurasi
-- ----------------------------
INSERT INTO `konfigurasi` VALUES (1, 'PT PRIMA HANDANU BHAKTI', 'Pelatihan Satpam Gada Pratama', 'Petani Kode', '<p><strong>PT. PRIMA HANDANU BHAKTI</strong></p>\r\n<p><strong>SALAH SATU PERUSAHAAN YANG BERGERAK DALAM BIDANG PELAYANAN PELATIHAN SATPAM&nbsp;</strong></p>', 'Hotel Bumi Wiyata is a three stars hotel that located on Jl. Margonda Raya Depok 16423 West Java.Â \r\n\r\nHotel Bumi Wiyata has 13 ha areas and 91 Rooms which divided into six types of room; Standard Room, Superior Room, Deluxe Superior Room, Suite Room, Deluxe Suite Room & Executive Room.\r\n\r\nHotel Bumi Wiyata is the perfect choice for your business activity, gathering, wedding, outbound and family. With the concept of the greatest hotel for recreational meeting surrounding with traditional nature, various facilities and warm hospitality will makes all your event become a memorable one.', 'http://tegarsatyanegara.online', 'primahandanubhakti@gmail.com', 'bmwiyata@hotelbumiwiyata.com', '<p><strong>PT PRIMA HANDANU BHAKTI</strong></p>\r\n<p>Kampung Manjah Beureum</p>\r\n<p>RT 01 RW 01 Desa Cileunyi Kulon</p>\r\n<p>Kacamatan Cileunyi</p>\r\n<p>Kabupaten Pekalongan</p>\r\n<p>Provinsi Jawa Barat&nbsp;</p>\r\n<p>Telepon: 085711458242<br />Whatsapp: 085711458242<br />Email: primahandanubhakti@gmail.com</p>', '+6285711458242', '+6285711458242', '+6285711458242', 'logo.jpg', 'k.png', 'footer1.png', 'Pelatihan Satpam Gada Pratama ', '', 'https://www.facebook.com/Pusat Pelatihan Satpam PT. PRIMA Handanu Bhakti Cileunyi-Bandung', 'http://twitter.com/Pusat Pelatihan Satpam PT. PRIMA Handanu Bhakti Cileunyi-Bandung', 'https://instagram.com/Pusat Pelatihan Satpam PT. PRIMA Handanu Bhakti Cileunyi-Bandung', 'https://www.youtube.com/channel/UCmm6mFZXYQ3ZylUMa0Tmc2Q', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3960.7771097978366!2d107.74884371402072!3d-6.917229895002014!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e68dcbc0ba2bb69%3A0xe3f0aebecc88177c!2sDiklat%20Satpam%20Prima%20Handanu%20Bhakti!5e0!3m2!1sid!2sid!4v1582168264398!5m2!1sid!2sid\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', 'Bersedekah untuk anak yatim', 'fa-money', 'Pengasuh yang santun', 'fa-thumbs-up', 'Jadwal Flexibel', 'fa-adn', 'Menjaga Amanah', 'fa-check-square-o', 'Tempat belajar nyaman', 'fa-home', 'Online service', 'fa-laptop', 'Berbagi kebahagiaan dengan anak yatim adalah perintah Allah dan rasul', 'Pengasuh yang baik dan santun serta memberikan teladan yang baik bagi anak asuh', 'Bagi Anda siswa yang ingin belajar, kami menerapkan jadwal flexibel', 'Kami senantiasa menjaga amanah yang diberikan kepada donatur agar sampai di tangan yang berhak.', 'Kami menyediakan tempat belajar yang nyaman dan menyenangkan', 'Website kamu selalu uptodate, Anda bisa mengunduh apa yang dipelajari', '', '', '', '', '', '', '<p>Berawal dari keinginan ibunda Hj.Masah Muhari diakhir hidupnya untuk mewakaan sebagian hartanya dijalan Allah, gayungpun bersambut pada bulan Mei 2011 saat kami akan melaksanakan ibadah umrah, Seorang rekan kami sesama Jamaah bernama ustadzah Hj. Zainur Fahmid memberikan informasi Tentang Anggota yang hendak mewakaan sebidang tanahnya di wilayah Beji Timur. Kami pun memanjatkan doa di kota suci dengan penuh rasa harap pertolongan Allah untuk menunjukan jalan terbaik-Nya, maka sepulang umroh kami mengadakan pertemuan di kediaman Ibu Dra Hj Ratna Mardjanah untuk membicarakan visi misi kami dalam wakaf tersebut dan sepakat untuk mendirikan Istana Yatim Riyadhul Jannah ini.</p>\r\n<p>Nama Riyadhul Jannah Sendiri diambil dari nama pengelola wakaf (H. Ahmad Riyadh Muchtar, Lc) dan pemberi wakaf (Dra Hj Ratna Mardjanah). Istana Yatim Riyadhul Jannah hadir untuk melayani dan memfasilitasi segala kebutuhan anak yatim, terutama pendidikan agama, akhlak dan kehidupan yang layak untuk bekal masa depan mereka yang cerah agar bisa memberi manfaat bagi umat. Harapan kami semoga dengan membangunkan istana untuk anak yatim, maka Allah akan berikan istana-Nya di surga kelak dan kita termasuk manusia yang bisa memberika manfaat bagi sesama sebagaimana sabda Rasulullah SAW yang artinya:&nbsp;</p>\r\n<p>&ldquo;Sebaik-baik manusia adalah yang paling bermanfaat bagi manusia lainnya&rdquo;&nbsp;</p>\r\n<p>erimakasih atas segala bentuk bantuan yang dipercayakan kepada kami baik secara materi, tenaga dan kiran serta doa para muhsinin dan muhsinat Istana Yatim Riyadhul Jannah selama ini, mulai dari rencana pendirian hingga berkembang seperti saat ini. Semoga segala amal menjadi shadaqah jariyah disisi-Nya.&nbsp;</p>\r\n<p>&nbsp;</p>', 'istana-yatim.png', 'fsH_KhUWfho', '<table id=\"dataTables-example\" class=\"table table-bordered\" width=\"100%\">\r\n<thead>\r\n<tr>\r\n<th tabindex=\"0\" colspan=\"1\" rowspan=\"1\" width=\"19%\">Nama Bank</th>\r\n<th tabindex=\"0\" colspan=\"1\" rowspan=\"1\" width=\"21%\">Nomor Rekening</th>\r\n<th tabindex=\"0\" colspan=\"1\" rowspan=\"1\" width=\"7%\">Atas nama</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td>BCA KCP Margo City</td>\r\n<td>4212548204</td>\r\n<td>Andoyo</td>\r\n</tr>\r\n<tr>\r\n<td>Bank Mandiri KCP Universitas Indonesia</td>\r\n<td>1570001807768</td>\r\n<td>Eflita Meiyetriani</td>\r\n</tr>\r\n<tr>\r\n<td>Bank BNI Syariah Kantor Cabang Jakarta Selatan</td>\r\n<td>0105301001</td>\r\n<td>Eflita Meiyetriani</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'balairung-budiutomo-01.jpg', 'Aktif', 3, 'Bambang S.H', 'Direktur', 'deploying-node-js-website-development-javascript-web-application-vue-js.jpg', 'smtp', 'ssl://mail.websitemu.com', 465, 7, 'contact@websitemu.com', 'muhammad', 0, '2020-02-20 16:24:06');

-- ----------------------------
-- Table structure for kontak
-- ----------------------------
DROP TABLE IF EXISTS `kontak`;
CREATE TABLE `kontak`  (
  `id_kontak` int(255) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pesan` varchar(700) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_kontak`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of kontak
-- ----------------------------
INSERT INTO `kontak` VALUES (43, 'efrgf', 'regtrg', 'regtrg');
INSERT INTO `kontak` VALUES (44, '   mmm', 'tegarsatyanegara.if@gmail.com', 'mmm');

-- ----------------------------
-- Table structure for kunjungan
-- ----------------------------
DROP TABLE IF EXISTS `kunjungan`;
CREATE TABLE `kunjungan`  (
  `id_kunjungan` int(11) NOT NULL AUTO_INCREMENT,
  `alamat` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ip_address` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `hari` date NULL DEFAULT NULL,
  `waktu` datetime(0) NOT NULL,
  `tanggal` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id_kunjungan`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1344 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kunjungan
-- ----------------------------
INSERT INTO `kunjungan` VALUES (1343, 'http://localhost/satpam/index.php', '::1', '2020-03-13', '2020-03-13 15:46:03', '2020-03-13 20:46:03');
INSERT INTO `kunjungan` VALUES (1342, 'http://localhost/satpam/index.php', '::1', '2020-03-13', '2020-03-13 10:37:16', '2020-03-13 15:37:16');
INSERT INTO `kunjungan` VALUES (1341, 'http://localhost/satpam/kontak', '::1', '2020-03-12', '2020-03-12 15:17:00', '2020-03-12 20:17:00');
INSERT INTO `kunjungan` VALUES (1340, 'http://localhost/satpam/kontak', '::1', '2020-03-12', '2020-03-12 14:06:11', '2020-03-12 19:06:11');
INSERT INTO `kunjungan` VALUES (1339, 'http://localhost/satpam/kontak', '::1', '2020-03-12', '2020-03-12 14:02:18', '2020-03-12 19:02:18');
INSERT INTO `kunjungan` VALUES (1338, 'http://localhost/satpam/kontak', '::1', '2020-03-12', '2020-03-12 13:55:56', '2020-03-12 18:55:56');
INSERT INTO `kunjungan` VALUES (1337, 'http://localhost/satpam/index.php', '::1', '2020-03-12', '2020-03-12 13:51:16', '2020-03-12 18:51:16');
INSERT INTO `kunjungan` VALUES (1336, 'http://localhost/satpam/kontak', '::1', '2020-03-12', '2020-03-12 13:48:20', '2020-03-12 18:48:20');
INSERT INTO `kunjungan` VALUES (1335, 'http://localhost/satpam/berita/profil/profil', '::1', '2020-03-12', '2020-03-12 13:48:12', '2020-03-12 18:48:12');
INSERT INTO `kunjungan` VALUES (1334, 'http://localhost/satpam/index.php', '::1', '2020-03-12', '2020-03-12 13:48:01', '2020-03-12 18:48:01');
INSERT INTO `kunjungan` VALUES (1333, 'http://localhost/satpam/pendaftar', '::1', '2020-03-12', '2020-03-12 13:47:57', '2020-03-12 18:47:57');
INSERT INTO `kunjungan` VALUES (1332, 'http://localhost/satpam/kontak', '::1', '2020-03-12', '2020-03-12 13:47:53', '2020-03-12 18:47:53');
INSERT INTO `kunjungan` VALUES (1331, 'http://localhost/satpam/kontak', '::1', '2020-03-12', '2020-03-12 13:47:28', '2020-03-12 18:47:28');
INSERT INTO `kunjungan` VALUES (1330, 'http://localhost/satpam/pendaftar', '::1', '2020-03-12', '2020-03-12 13:46:59', '2020-03-12 18:46:59');
INSERT INTO `kunjungan` VALUES (1329, 'http://localhost/satpam/berita/fasilitas/fasilitas', '::1', '2020-03-12', '2020-03-12 13:46:51', '2020-03-12 18:46:51');
INSERT INTO `kunjungan` VALUES (1328, 'http://localhost/satpam/index.php', '::1', '2020-03-12', '2020-03-12 10:23:52', '2020-03-12 15:23:52');
INSERT INTO `kunjungan` VALUES (1327, 'http://localhost/satpam/index.php', '::1', '2020-03-12', '2020-03-12 04:56:32', '2020-03-12 09:56:32');
INSERT INTO `kunjungan` VALUES (1326, 'http://localhost/satpam/menu', '::1', '2020-03-12', '2020-03-12 04:56:22', '2020-03-12 09:56:22');
INSERT INTO `kunjungan` VALUES (1325, 'http://localhost/satpam/1', '::1', '2020-03-12', '2020-03-12 04:56:12', '2020-03-12 09:56:12');
INSERT INTO `kunjungan` VALUES (1324, 'http://localhost/satpam/index.php', '::1', '2020-03-12', '2020-03-12 04:56:09', '2020-03-12 09:56:09');
INSERT INTO `kunjungan` VALUES (1323, 'http://localhost/satpam/index.php', '::1', '2020-03-12', '2020-03-12 04:55:50', '2020-03-12 09:55:50');
INSERT INTO `kunjungan` VALUES (1322, 'http://localhost/satpam/kontak', '::1', '2020-03-11', '2020-03-11 15:02:16', '2020-03-11 20:02:16');
INSERT INTO `kunjungan` VALUES (1321, 'http://localhost/satpam/kontak', '::1', '2020-03-11', '2020-03-11 14:45:38', '2020-03-11 19:45:38');
INSERT INTO `kunjungan` VALUES (1320, 'http://localhost/satpam/kontak', '::1', '2020-03-11', '2020-03-11 14:44:25', '2020-03-11 19:44:25');
INSERT INTO `kunjungan` VALUES (1319, 'http://localhost/satpam/kontak', '::1', '2020-03-11', '2020-03-11 14:44:12', '2020-03-11 19:44:12');
INSERT INTO `kunjungan` VALUES (1318, 'http://localhost/satpam/kontak', '::1', '2020-03-11', '2020-03-11 14:38:50', '2020-03-11 19:38:50');
INSERT INTO `kunjungan` VALUES (1317, 'http://localhost/satpam/kontak', '::1', '2020-03-11', '2020-03-11 14:38:39', '2020-03-11 19:38:39');
INSERT INTO `kunjungan` VALUES (1316, 'http://localhost/satpam/kontak', '::1', '2020-03-11', '2020-03-11 14:37:38', '2020-03-11 19:37:38');
INSERT INTO `kunjungan` VALUES (1315, 'http://localhost/satpam/kontak', '::1', '2020-03-11', '2020-03-11 14:37:27', '2020-03-11 19:37:27');
INSERT INTO `kunjungan` VALUES (1314, 'http://localhost/satpam/kontak', '::1', '2020-03-11', '2020-03-11 14:36:11', '2020-03-11 19:36:11');
INSERT INTO `kunjungan` VALUES (1313, 'http://localhost/satpam/kontak', '::1', '2020-03-11', '2020-03-11 14:34:43', '2020-03-11 19:34:43');
INSERT INTO `kunjungan` VALUES (1312, 'http://localhost/satpam/kontak', '::1', '2020-03-11', '2020-03-11 14:34:29', '2020-03-11 19:34:29');
INSERT INTO `kunjungan` VALUES (1311, 'http://localhost/satpam/kontak', '::1', '2020-03-11', '2020-03-11 14:33:42', '2020-03-11 19:33:42');
INSERT INTO `kunjungan` VALUES (1310, 'http://localhost/satpam/kontak', '::1', '2020-03-11', '2020-03-11 14:33:30', '2020-03-11 19:33:30');
INSERT INTO `kunjungan` VALUES (1309, 'http://localhost/satpam/kontak', '::1', '2020-03-11', '2020-03-11 14:31:22', '2020-03-11 19:31:22');
INSERT INTO `kunjungan` VALUES (1308, 'http://localhost/satpam/kontak', '::1', '2020-03-11', '2020-03-11 14:31:10', '2020-03-11 19:31:10');
INSERT INTO `kunjungan` VALUES (1307, 'http://localhost/satpam/kontak', '::1', '2020-03-11', '2020-03-11 14:27:58', '2020-03-11 19:27:58');
INSERT INTO `kunjungan` VALUES (1306, 'http://localhost/satpam/kontak', '::1', '2020-03-11', '2020-03-11 14:27:33', '2020-03-11 19:27:33');
INSERT INTO `kunjungan` VALUES (1305, 'http://localhost/satpam/kontak', '::1', '2020-03-11', '2020-03-11 14:25:16', '2020-03-11 19:25:16');
INSERT INTO `kunjungan` VALUES (1304, 'http://localhost/satpam/kontak', '::1', '2020-03-11', '2020-03-11 14:19:48', '2020-03-11 19:19:48');
INSERT INTO `kunjungan` VALUES (1303, 'http://localhost/satpam/kontak', '::1', '2020-03-11', '2020-03-11 13:41:46', '2020-03-11 18:41:46');
INSERT INTO `kunjungan` VALUES (1302, 'http://localhost/satpam/kontak', '::1', '2020-03-11', '2020-03-11 13:41:15', '2020-03-11 18:41:15');
INSERT INTO `kunjungan` VALUES (1301, 'http://localhost/satpam/kontak', '::1', '2020-03-11', '2020-03-11 13:37:52', '2020-03-11 18:37:52');
INSERT INTO `kunjungan` VALUES (1300, 'http://localhost/satpam/kontak', '::1', '2020-03-11', '2020-03-11 13:37:39', '2020-03-11 18:37:39');
INSERT INTO `kunjungan` VALUES (1299, 'http://localhost/satpam/kontak', '::1', '2020-03-11', '2020-03-11 13:37:10', '2020-03-11 18:37:10');
INSERT INTO `kunjungan` VALUES (1298, 'http://localhost/satpam/kontak', '::1', '2020-03-11', '2020-03-11 13:36:59', '2020-03-11 18:36:59');
INSERT INTO `kunjungan` VALUES (1297, 'http://localhost/satpam/kontak', '::1', '2020-03-11', '2020-03-11 13:36:41', '2020-03-11 18:36:41');
INSERT INTO `kunjungan` VALUES (1296, 'http://localhost/satpam/kontak/list', '::1', '2020-03-11', '2020-03-11 13:36:35', '2020-03-11 18:36:35');
INSERT INTO `kunjungan` VALUES (1295, 'http://localhost/satpam/kontak', '::1', '2020-03-11', '2020-03-11 13:36:22', '2020-03-11 18:36:22');
INSERT INTO `kunjungan` VALUES (1294, 'http://localhost/satpam/kontak', '::1', '2020-03-11', '2020-03-11 13:34:56', '2020-03-11 18:34:56');
INSERT INTO `kunjungan` VALUES (1293, 'http://localhost/satpam/kontak', '::1', '2020-03-11', '2020-03-11 13:34:37', '2020-03-11 18:34:37');
INSERT INTO `kunjungan` VALUES (1292, 'http://localhost/satpam/kontak', '::1', '2020-03-11', '2020-03-11 13:29:13', '2020-03-11 18:29:13');
INSERT INTO `kunjungan` VALUES (1291, 'http://localhost/satpam/berita/kategori/kegiatan', '::1', '2020-03-11', '2020-03-11 13:23:24', '2020-03-11 18:23:24');
INSERT INTO `kunjungan` VALUES (1290, 'http://localhost/satpam/pendaftar', '::1', '2020-03-11', '2020-03-11 13:22:29', '2020-03-11 18:22:29');
INSERT INTO `kunjungan` VALUES (1289, 'http://localhost/satpam/index.php', '::1', '2020-03-11', '2020-03-11 13:19:54', '2020-03-11 18:19:54');
INSERT INTO `kunjungan` VALUES (1288, 'http://localhost/satpam/pendaftar', '::1', '2020-03-11', '2020-03-11 13:18:49', '2020-03-11 18:18:49');
INSERT INTO `kunjungan` VALUES (1287, 'http://localhost/satpam/index.php', '::1', '2020-03-11', '2020-03-11 13:14:47', '2020-03-11 18:14:47');
INSERT INTO `kunjungan` VALUES (1286, 'http://localhost/satpam/pendaftar', '::1', '2020-03-11', '2020-03-11 13:14:44', '2020-03-11 18:14:44');
INSERT INTO `kunjungan` VALUES (1285, 'http://localhost/satpam/download', '::1', '2020-03-11', '2020-03-11 13:14:19', '2020-03-11 18:14:19');
INSERT INTO `kunjungan` VALUES (1284, 'http://localhost/satpam/berita/fasilitas/fasilitas', '::1', '2020-03-11', '2020-03-11 13:14:13', '2020-03-11 18:14:13');
INSERT INTO `kunjungan` VALUES (1283, 'http://localhost/satpam/index.php', '::1', '2020-03-11', '2020-03-11 13:14:07', '2020-03-11 18:14:07');
INSERT INTO `kunjungan` VALUES (1282, 'http://localhost/satpam/berita/fasilitas/fasilitas', '::1', '2020-03-11', '2020-03-11 13:13:58', '2020-03-11 18:13:58');
INSERT INTO `kunjungan` VALUES (1281, 'http://localhost/satpam/index.php', '::1', '2020-03-11', '2020-03-11 13:13:35', '2020-03-11 18:13:35');
INSERT INTO `kunjungan` VALUES (1280, 'http://localhost/satpam/pendaftar', '::1', '2020-03-11', '2020-03-11 13:13:02', '2020-03-11 18:13:02');
INSERT INTO `kunjungan` VALUES (1279, 'http://localhost/satpam/index.php', '::1', '2020-03-11', '2020-03-11 13:12:30', '2020-03-11 18:12:30');
INSERT INTO `kunjungan` VALUES (1278, 'http://localhost/satpam/index.php', '::1', '2020-03-10', '2020-03-10 14:58:43', '2020-03-10 19:58:43');
INSERT INTO `kunjungan` VALUES (1277, 'http://localhost/satpam/pendaftar', '::1', '2020-03-08', '2020-03-08 10:12:44', '2020-03-08 15:12:44');
INSERT INTO `kunjungan` VALUES (1276, 'http://localhost/satpam/index.php', '::1', '2020-03-08', '2020-03-08 10:10:17', '2020-03-08 15:10:17');
INSERT INTO `kunjungan` VALUES (1275, 'http://localhost/satpam/download', '::1', '2020-03-08', '2020-03-08 10:10:03', '2020-03-08 15:10:03');
INSERT INTO `kunjungan` VALUES (1274, 'http://localhost/satpam/pendaftar', '::1', '2020-03-08', '2020-03-08 10:09:40', '2020-03-08 15:09:40');
INSERT INTO `kunjungan` VALUES (1273, 'http://localhost/satpam/berita/profil/profil', '::1', '2020-03-08', '2020-03-08 10:06:22', '2020-03-08 15:06:22');
INSERT INTO `kunjungan` VALUES (1272, 'http://localhost/satpam/berita/kategori/kegiatan', '::1', '2020-03-08', '2020-03-08 10:03:29', '2020-03-08 15:03:29');
INSERT INTO `kunjungan` VALUES (1271, 'http://localhost/satpam/index.php', '::1', '2020-03-08', '2020-03-08 10:03:15', '2020-03-08 15:03:15');
INSERT INTO `kunjungan` VALUES (1270, 'http://localhost/satpam/index.php', '::1', '2020-03-08', '2020-03-08 10:02:13', '2020-03-08 15:02:13');
INSERT INTO `kunjungan` VALUES (1269, 'http://localhost/satpam/pendaftar', '::1', '2020-03-08', '2020-03-08 10:02:07', '2020-03-08 15:02:07');
INSERT INTO `kunjungan` VALUES (1268, 'http://localhost/satpam/index.php', '::1', '2020-03-08', '2020-03-08 09:57:48', '2020-03-08 14:57:48');
INSERT INTO `kunjungan` VALUES (1267, 'http://localhost/satpam/galeri', '::1', '2020-03-08', '2020-03-08 09:50:13', '2020-03-08 14:50:13');
INSERT INTO `kunjungan` VALUES (1266, 'http://localhost/satpam/pendaftar', '::1', '2020-03-08', '2020-03-08 09:48:31', '2020-03-08 14:48:31');
INSERT INTO `kunjungan` VALUES (1265, 'http://localhost/satpam/index.php', '::1', '2020-03-08', '2020-03-08 09:40:56', '2020-03-08 14:40:56');
INSERT INTO `kunjungan` VALUES (1264, 'http://localhost/satpam/download', '::1', '2020-03-08', '2020-03-08 09:39:46', '2020-03-08 14:39:46');
INSERT INTO `kunjungan` VALUES (1263, 'http://localhost/satpam/download', '::1', '2020-03-08', '2020-03-08 09:39:02', '2020-03-08 14:39:02');
INSERT INTO `kunjungan` VALUES (1262, 'http://localhost/satpam/kontak', '::1', '2020-03-08', '2020-03-08 09:38:50', '2020-03-08 14:38:50');
INSERT INTO `kunjungan` VALUES (1261, 'http://localhost/satpam/pendaftar', '::1', '2020-03-08', '2020-03-08 09:38:39', '2020-03-08 14:38:39');
INSERT INTO `kunjungan` VALUES (1260, 'http://localhost/satpam/index.php', '::1', '2020-03-08', '2020-03-08 09:38:21', '2020-03-08 14:38:21');
INSERT INTO `kunjungan` VALUES (1259, 'http://localhost/satpam/berita/read/pendaftaran-pelatihan-satpam', '::1', '2020-03-08', '2020-03-08 09:38:14', '2020-03-08 14:38:14');
INSERT INTO `kunjungan` VALUES (1258, 'http://localhost/satpam/berita/kategori/kegiatan', '::1', '2020-03-08', '2020-03-08 09:37:29', '2020-03-08 14:37:29');
INSERT INTO `kunjungan` VALUES (1257, 'http://localhost/satpam/berita/profil/profil', '::1', '2020-03-08', '2020-03-08 09:37:21', '2020-03-08 14:37:21');
INSERT INTO `kunjungan` VALUES (1256, 'http://localhost/satpam/index.php', '::1', '2020-03-08', '2020-03-08 09:36:25', '2020-03-08 14:36:25');
INSERT INTO `kunjungan` VALUES (1255, 'http://localhost/satpam/download', '::1', '2020-03-08', '2020-03-08 09:36:21', '2020-03-08 14:36:21');
INSERT INTO `kunjungan` VALUES (1254, 'http://localhost/satpam/index.php', '::1', '2020-03-08', '2020-03-08 09:36:08', '2020-03-08 14:36:08');
INSERT INTO `kunjungan` VALUES (1253, 'http://localhost/satpam/index.php', '::1', '2020-03-08', '2020-03-08 09:35:14', '2020-03-08 14:35:14');
INSERT INTO `kunjungan` VALUES (1252, 'http://localhost/satpam/berita/profil/profil', '::1', '2020-03-08', '2020-03-08 09:17:49', '2020-03-08 14:17:49');
INSERT INTO `kunjungan` VALUES (1251, 'http://localhost/satpam/index.php', '::1', '2020-03-08', '2020-03-08 09:13:01', '2020-03-08 14:13:01');
INSERT INTO `kunjungan` VALUES (1250, 'http://localhost/satpam/kontak', '::1', '2020-03-08', '2020-03-08 06:06:50', '2020-03-08 11:06:50');
INSERT INTO `kunjungan` VALUES (1249, 'http://localhost/satpam/kontak', '::1', '2020-03-08', '2020-03-08 06:00:36', '2020-03-08 11:00:36');
INSERT INTO `kunjungan` VALUES (1248, 'http://localhost/satpam/kontak', '::1', '2020-03-08', '2020-03-08 05:59:23', '2020-03-08 10:59:23');
INSERT INTO `kunjungan` VALUES (1247, 'http://localhost/satpam/kontak', '::1', '2020-03-08', '2020-03-08 05:59:01', '2020-03-08 10:59:01');
INSERT INTO `kunjungan` VALUES (1246, 'http://localhost/satpam/index.php', '::1', '2020-03-08', '2020-03-08 05:58:55', '2020-03-08 10:58:55');
INSERT INTO `kunjungan` VALUES (1245, 'http://localhost/satpam/index.php', '::1', '2020-03-08', '2020-03-08 05:58:36', '2020-03-08 10:58:36');
INSERT INTO `kunjungan` VALUES (1244, 'http://localhost/satpam/kontak', '::1', '2020-03-08', '2020-03-08 05:55:41', '2020-03-08 10:55:41');
INSERT INTO `kunjungan` VALUES (1243, 'http://localhost/satpam/kontak', '::1', '2020-03-08', '2020-03-08 05:55:25', '2020-03-08 10:55:25');
INSERT INTO `kunjungan` VALUES (1242, 'http://localhost/satpam/kontak', '::1', '2020-03-08', '2020-03-08 05:53:13', '2020-03-08 10:53:13');
INSERT INTO `kunjungan` VALUES (1241, 'http://localhost/satpam/kontak', '::1', '2020-03-08', '2020-03-08 05:52:42', '2020-03-08 10:52:42');
INSERT INTO `kunjungan` VALUES (1240, 'http://localhost/satpam/kontak', '::1', '2020-03-08', '2020-03-08 05:52:37', '2020-03-08 10:52:37');
INSERT INTO `kunjungan` VALUES (1239, 'http://localhost/satpam/index.php', '::1', '2020-03-08', '2020-03-08 05:51:21', '2020-03-08 10:51:21');
INSERT INTO `kunjungan` VALUES (1238, 'http://localhost/satpam/index.php', '::1', '2020-03-08', '2020-03-08 05:51:10', '2020-03-08 10:51:10');
INSERT INTO `kunjungan` VALUES (1237, 'http://localhost/satpam/index.php', '::1', '2020-03-08', '2020-03-08 05:50:14', '2020-03-08 10:50:14');
INSERT INTO `kunjungan` VALUES (1236, 'http://localhost/satpam/index.php', '::1', '2020-03-08', '2020-03-08 05:49:30', '2020-03-08 10:49:30');
INSERT INTO `kunjungan` VALUES (1235, 'http://localhost/satpam/kontak', '::1', '2020-03-08', '2020-03-08 05:17:54', '2020-03-08 10:17:54');
INSERT INTO `kunjungan` VALUES (1234, 'http://localhost/satpam/kontak', '::1', '2020-03-08', '2020-03-08 05:17:45', '2020-03-08 10:17:45');
INSERT INTO `kunjungan` VALUES (1233, 'http://localhost/satpam/kontak', '::1', '2020-03-08', '2020-03-08 05:17:25', '2020-03-08 10:17:25');
INSERT INTO `kunjungan` VALUES (1232, 'http://localhost/satpam/kontak', '::1', '2020-03-08', '2020-03-08 05:17:13', '2020-03-08 10:17:13');
INSERT INTO `kunjungan` VALUES (1231, 'http://localhost/satpam/kontak', '::1', '2020-03-08', '2020-03-08 05:16:53', '2020-03-08 10:16:53');
INSERT INTO `kunjungan` VALUES (1230, 'http://localhost/satpam/kontak', '::1', '2020-03-08', '2020-03-08 05:16:36', '2020-03-08 10:16:36');
INSERT INTO `kunjungan` VALUES (1229, 'http://localhost/satpam/index.php', '::1', '2020-03-08', '2020-03-08 05:16:32', '2020-03-08 10:16:32');
INSERT INTO `kunjungan` VALUES (1228, 'http://localhost/satpam/kontak', '::1', '2020-03-08', '2020-03-08 05:12:25', '2020-03-08 10:12:25');
INSERT INTO `kunjungan` VALUES (1227, 'http://localhost/satpam/kontak', '::1', '2020-03-08', '2020-03-08 05:11:33', '2020-03-08 10:11:33');
INSERT INTO `kunjungan` VALUES (1226, 'http://localhost/satpam/kontak', '::1', '2020-03-08', '2020-03-08 05:11:12', '2020-03-08 10:11:12');
INSERT INTO `kunjungan` VALUES (1225, 'http://localhost/satpam/pendaftar', '::1', '2020-03-08', '2020-03-08 05:11:09', '2020-03-08 10:11:09');
INSERT INTO `kunjungan` VALUES (1224, 'http://localhost/satpam/kontak', '::1', '2020-03-08', '2020-03-08 05:10:29', '2020-03-08 10:10:29');
INSERT INTO `kunjungan` VALUES (1223, 'http://localhost/satpam/kontak', '::1', '2020-03-08', '2020-03-08 05:08:18', '2020-03-08 10:08:18');
INSERT INTO `kunjungan` VALUES (1222, 'http://localhost/satpam/pendaftar', '::1', '2020-03-08', '2020-03-08 02:18:32', '2020-03-08 07:18:32');
INSERT INTO `kunjungan` VALUES (1221, 'http://localhost/satpam/index.php', '::1', '2020-03-08', '2020-03-08 02:17:01', '2020-03-08 07:17:01');
INSERT INTO `kunjungan` VALUES (1220, 'http://localhost/satpam/index.php', '::1', '2020-03-08', '2020-03-08 02:15:35', '2020-03-08 07:15:35');
INSERT INTO `kunjungan` VALUES (1219, 'http://localhost/satpam/index.php', '::1', '2020-03-08', '2020-03-08 02:13:17', '2020-03-08 07:13:17');
INSERT INTO `kunjungan` VALUES (1218, 'http://localhost/satpam/kontak', '::1', '2020-03-08', '2020-03-08 02:12:50', '2020-03-08 07:12:50');
INSERT INTO `kunjungan` VALUES (1217, 'http://localhost/satpam/berita/kategori/kegiatan', '::1', '2020-03-08', '2020-03-08 02:12:26', '2020-03-08 07:12:26');
INSERT INTO `kunjungan` VALUES (1216, 'http://localhost/satpam/berita', '::1', '2020-03-08', '2020-03-08 02:12:21', '2020-03-08 07:12:21');
INSERT INTO `kunjungan` VALUES (1215, 'http://localhost/satpam/berita', '::1', '2020-03-08', '2020-03-08 02:12:10', '2020-03-08 07:12:10');
INSERT INTO `kunjungan` VALUES (1214, 'http://localhost/satpam/berita/kategori/kegiatan', '::1', '2020-03-08', '2020-03-08 02:11:57', '2020-03-08 07:11:57');
INSERT INTO `kunjungan` VALUES (1213, 'http://localhost/satpam/galeri', '::1', '2020-03-08', '2020-03-08 02:11:47', '2020-03-08 07:11:47');
INSERT INTO `kunjungan` VALUES (1212, 'http://localhost/satpam/www.codexcoder.com/images/auror/pt-image/08.png', '::1', '2020-03-08', '2020-03-08 02:09:31', '2020-03-08 07:09:31');
INSERT INTO `kunjungan` VALUES (1211, 'http://localhost/satpam/www.codexcoder.com/images/auror/pt-image/04.png', '::1', '2020-03-08', '2020-03-08 02:09:31', '2020-03-08 07:09:31');
INSERT INTO `kunjungan` VALUES (1210, 'http://localhost/satpam/www.codexcoder.com/images/auror/pt-image/03.png', '::1', '2020-03-08', '2020-03-08 02:09:31', '2020-03-08 07:09:31');
INSERT INTO `kunjungan` VALUES (1209, 'http://localhost/satpam/www.codexcoder.com/images/auror/pt-image/07.png', '::1', '2020-03-08', '2020-03-08 02:09:31', '2020-03-08 07:09:31');
INSERT INTO `kunjungan` VALUES (1208, 'http://localhost/satpam/www.codexcoder.com/images/auror/pt-image/06.png', '::1', '2020-03-08', '2020-03-08 02:09:31', '2020-03-08 07:09:31');
INSERT INTO `kunjungan` VALUES (1207, 'http://localhost/satpam/www.codexcoder.com/images/auror/pt-image/05.png', '::1', '2020-03-08', '2020-03-08 02:09:31', '2020-03-08 07:09:31');
INSERT INTO `kunjungan` VALUES (1206, 'http://localhost/satpam/www.codexcoder.com/images/auror/pt-image/02.png', '::1', '2020-03-08', '2020-03-08 02:09:31', '2020-03-08 07:09:31');
INSERT INTO `kunjungan` VALUES (1205, 'http://localhost/satpam/www.codexcoder.com/images/auror/pt-image/01.png', '::1', '2020-03-08', '2020-03-08 02:09:30', '2020-03-08 07:09:30');
INSERT INTO `kunjungan` VALUES (1204, 'http://localhost/satpam/index.php', '::1', '2020-03-08', '2020-03-08 02:09:19', '2020-03-08 07:09:19');
INSERT INTO `kunjungan` VALUES (1203, 'http://localhost/satpam/galeri', '::1', '2020-03-08', '2020-03-08 02:02:17', '2020-03-08 07:02:17');
INSERT INTO `kunjungan` VALUES (1202, 'http://localhost/satpam/pendaftar', '::1', '2020-03-08', '2020-03-08 02:01:59', '2020-03-08 07:01:59');
INSERT INTO `kunjungan` VALUES (1201, 'http://localhost/satpam/kontak', '::1', '2020-03-08', '2020-03-08 02:01:48', '2020-03-08 07:01:48');
INSERT INTO `kunjungan` VALUES (1200, 'http://localhost/satpam/pendaftar', '::1', '2020-03-08', '2020-03-08 02:01:06', '2020-03-08 07:01:06');
INSERT INTO `kunjungan` VALUES (1199, 'http://localhost/satpam/berita/fasilitas/fasilitas', '::1', '2020-03-08', '2020-03-08 02:00:50', '2020-03-08 07:00:50');
INSERT INTO `kunjungan` VALUES (1198, 'http://localhost/satpam/index.php', '::1', '2020-03-08', '2020-03-08 01:49:21', '2020-03-08 06:49:21');
INSERT INTO `kunjungan` VALUES (1197, 'http://localhost/satpam/index.php', '::1', '2020-03-05', '2020-03-05 04:28:28', '2020-03-05 09:28:28');
INSERT INTO `kunjungan` VALUES (1196, 'http://localhost/satpam/pendaftar', '::1', '2020-03-05', '2020-03-05 04:28:23', '2020-03-05 09:28:23');
INSERT INTO `kunjungan` VALUES (1195, 'http://localhost/satpam/index.php', '::1', '2020-03-05', '2020-03-05 04:28:18', '2020-03-05 09:28:18');
INSERT INTO `kunjungan` VALUES (1194, 'http://localhost/satpam/berita/fasilitas/fasilitas', '::1', '2020-03-05', '2020-03-05 04:28:11', '2020-03-05 09:28:11');
INSERT INTO `kunjungan` VALUES (1193, 'http://localhost/satpam/index.php', '::1', '2020-03-05', '2020-03-05 04:27:16', '2020-03-05 09:27:16');
INSERT INTO `kunjungan` VALUES (1192, 'http://localhost/satpam/berita/layanan/layanan', '::1', '2020-03-05', '2020-03-05 04:27:09', '2020-03-05 09:27:09');
INSERT INTO `kunjungan` VALUES (1191, 'http://localhost/satpam/index.php', '::1', '2020-03-05', '2020-03-05 04:27:00', '2020-03-05 09:27:00');
INSERT INTO `kunjungan` VALUES (1190, 'http://localhost/satpam/index.php', '::1', '2020-03-05', '2020-03-05 04:26:30', '2020-03-05 09:26:30');
INSERT INTO `kunjungan` VALUES (1189, 'http://localhost/satpam/index.php', '::1', '2020-03-05', '2020-03-05 04:26:05', '2020-03-05 09:26:05');
INSERT INTO `kunjungan` VALUES (1188, 'http://localhost/satpam/index.php', '::1', '2020-03-05', '2020-03-05 04:24:59', '2020-03-05 09:24:59');
INSERT INTO `kunjungan` VALUES (1187, 'http://localhost/satpam/berita/layanan/layanan', '::1', '2020-03-05', '2020-03-05 04:24:52', '2020-03-05 09:24:52');
INSERT INTO `kunjungan` VALUES (1186, 'http://localhost/satpam/index.php', '::1', '2020-03-05', '2020-03-05 04:22:11', '2020-03-05 09:22:11');
INSERT INTO `kunjungan` VALUES (1185, 'http://localhost/satpam/pendaftar', '::1', '2020-03-05', '2020-03-05 04:21:52', '2020-03-05 09:21:52');
INSERT INTO `kunjungan` VALUES (1184, 'http://localhost/satpam/kontak', '::1', '2020-03-05', '2020-03-05 04:21:47', '2020-03-05 09:21:47');
INSERT INTO `kunjungan` VALUES (1183, 'http://localhost/satpam/galeri', '::1', '2020-03-05', '2020-03-05 04:21:40', '2020-03-05 09:21:40');
INSERT INTO `kunjungan` VALUES (1182, 'http://localhost/satpam/video', '::1', '2020-03-05', '2020-03-05 04:21:36', '2020-03-05 09:21:36');
INSERT INTO `kunjungan` VALUES (1181, 'http://localhost/satpam/index.php', '::1', '2020-03-05', '2020-03-05 04:20:50', '2020-03-05 09:20:50');
INSERT INTO `kunjungan` VALUES (1180, 'http://localhost/satpam/pendaftar', '::1', '2020-03-05', '2020-03-05 03:57:51', '2020-03-05 08:57:51');
INSERT INTO `kunjungan` VALUES (1179, 'http://localhost/satpam/pendaftar', '::1', '2020-03-04', '2020-03-04 14:38:23', '2020-03-04 19:38:23');
INSERT INTO `kunjungan` VALUES (1178, 'http://localhost/satpam/pendaftar', '::1', '2020-03-04', '2020-03-04 14:35:35', '2020-03-04 19:35:35');
INSERT INTO `kunjungan` VALUES (1177, 'http://localhost/satpam/pendaftar', '::1', '2020-03-04', '2020-03-04 13:10:52', '2020-03-04 18:10:52');
INSERT INTO `kunjungan` VALUES (1176, 'http://localhost/satpam/pendaftar', '::1', '2020-03-04', '2020-03-04 13:10:48', '2020-03-04 18:10:48');
INSERT INTO `kunjungan` VALUES (1175, 'http://localhost/satpam/pendaftar', '::1', '2020-03-04', '2020-03-04 13:06:54', '2020-03-04 18:06:54');
INSERT INTO `kunjungan` VALUES (1174, 'http://localhost/satpam/index.php', '::1', '2020-03-04', '2020-03-04 13:06:08', '2020-03-04 18:06:08');
INSERT INTO `kunjungan` VALUES (1173, 'http://localhost/satpam/pendaftar', '::1', '2020-03-04', '2020-03-04 13:04:47', '2020-03-04 18:04:47');
INSERT INTO `kunjungan` VALUES (1172, 'http://localhost/satpam/index.php', '::1', '2020-03-04', '2020-03-04 13:04:44', '2020-03-04 18:04:44');
INSERT INTO `kunjungan` VALUES (1171, 'http://localhost/satpam/pendaftar', '::1', '2020-03-04', '2020-03-04 13:04:40', '2020-03-04 18:04:40');
INSERT INTO `kunjungan` VALUES (1170, 'http://localhost/satpam/index.php', '::1', '2020-03-04', '2020-03-04 13:04:34', '2020-03-04 18:04:34');
INSERT INTO `kunjungan` VALUES (1169, 'http://localhost/satpam/index.php', '::1', '2020-03-04', '2020-03-04 12:51:53', '2020-03-04 17:51:53');
INSERT INTO `kunjungan` VALUES (1168, 'http://localhost/satpam/index.php', '::1', '2020-03-04', '2020-03-04 12:51:19', '2020-03-04 17:51:19');
INSERT INTO `kunjungan` VALUES (1167, 'http://localhost/satpam/berita/layanan/layanan', '::1', '2020-03-04', '2020-03-04 12:51:16', '2020-03-04 17:51:16');
INSERT INTO `kunjungan` VALUES (1166, 'http://localhost/satpam/index.php', '::1', '2020-03-04', '2020-03-04 12:51:10', '2020-03-04 17:51:10');
INSERT INTO `kunjungan` VALUES (1165, 'http://localhost/satpam/berita/layanan/layanan', '::1', '2020-03-04', '2020-03-04 12:51:05', '2020-03-04 17:51:05');
INSERT INTO `kunjungan` VALUES (1164, 'http://localhost/satpam/berita/read/layanan', '::1', '2020-03-04', '2020-03-04 12:51:00', '2020-03-04 17:51:00');
INSERT INTO `kunjungan` VALUES (1163, 'http://localhost/satpam/index.php', '::1', '2020-03-04', '2020-03-04 12:49:21', '2020-03-04 17:49:21');
INSERT INTO `kunjungan` VALUES (1162, 'http://localhost/satpam/index.php', '::1', '2020-03-04', '2020-03-04 12:23:11', '2020-03-04 17:23:11');
INSERT INTO `kunjungan` VALUES (1161, 'http://localhost/satpam/index.php', '::1', '2020-03-04', '2020-03-04 06:39:46', '2020-03-04 11:39:46');
INSERT INTO `kunjungan` VALUES (1160, 'http://localhost/satpam/index.php', '::1', '2020-03-03', '2020-03-03 15:25:21', '2020-03-03 20:25:21');
INSERT INTO `kunjungan` VALUES (1159, 'http://localhost/satpam/index.php', '::1', '2020-03-03', '2020-03-03 15:24:30', '2020-03-03 20:24:30');
INSERT INTO `kunjungan` VALUES (1158, 'http://localhost/satpam/index.php', '::1', '2020-03-02', '2020-03-02 16:33:48', '2020-03-02 21:33:48');
INSERT INTO `kunjungan` VALUES (1157, 'http://localhost/satpam/gelombanhg', '::1', '2020-03-02', '2020-03-02 16:31:20', '2020-03-02 21:31:20');
INSERT INTO `kunjungan` VALUES (1156, 'http://localhost/satpam/berita/read/pendaftaran-pelatihan-satpam', '::1', '2020-03-02', '2020-03-02 16:28:46', '2020-03-02 21:28:46');
INSERT INTO `kunjungan` VALUES (1155, 'http://localhost/satpam/berita', '::1', '2020-03-02', '2020-03-02 16:28:40', '2020-03-02 21:28:40');
INSERT INTO `kunjungan` VALUES (1154, 'http://localhost/satpam/index.php', '::1', '2020-03-02', '2020-03-02 16:28:15', '2020-03-02 21:28:15');
INSERT INTO `kunjungan` VALUES (1153, 'http://localhost/satpam/galeri', '::1', '2020-03-02', '2020-03-02 16:28:08', '2020-03-02 21:28:08');
INSERT INTO `kunjungan` VALUES (1152, 'http://localhost/satpam/berita/kategori/kegiatan', '::1', '2020-03-02', '2020-03-02 16:27:57', '2020-03-02 21:27:57');
INSERT INTO `kunjungan` VALUES (1151, 'http://localhost/satpam/index.php', '::1', '2020-03-02', '2020-03-02 16:27:53', '2020-03-02 21:27:53');
INSERT INTO `kunjungan` VALUES (1150, 'http://localhost/satpam/index.php', '::1', '2020-03-02', '2020-03-02 16:27:18', '2020-03-02 21:27:18');
INSERT INTO `kunjungan` VALUES (1149, 'http://localhost/satpam/index.php', '::1', '2020-03-02', '2020-03-02 16:23:25', '2020-03-02 21:23:25');
INSERT INTO `kunjungan` VALUES (1148, 'http://localhost/satpam/index.php', '::1', '2020-03-02', '2020-03-02 16:22:25', '2020-03-02 21:22:25');
INSERT INTO `kunjungan` VALUES (1147, 'http://localhost/satpam/berita/fasilitas/fasilitas', '::1', '2020-03-02', '2020-03-02 16:22:13', '2020-03-02 21:22:13');
INSERT INTO `kunjungan` VALUES (1146, 'http://localhost/satpam/index.php', '::1', '2020-03-02', '2020-03-02 16:21:38', '2020-03-02 21:21:38');
INSERT INTO `kunjungan` VALUES (1145, 'http://localhost/satpam/berita/fasilitas/fasilitas', '::1', '2020-03-02', '2020-03-02 07:54:26', '2020-03-02 12:54:26');
INSERT INTO `kunjungan` VALUES (1144, 'http://localhost/satpam/index.php', '::1', '2020-03-02', '2020-03-02 07:18:03', '2020-03-02 12:18:03');
INSERT INTO `kunjungan` VALUES (1143, 'http://localhost/satpam/berita/fasilitas/fasilitas', '::1', '2020-03-02', '2020-03-02 07:17:54', '2020-03-02 12:17:54');
INSERT INTO `kunjungan` VALUES (1142, 'http://localhost/satpam/index.php', '::1', '2020-03-02', '2020-03-02 07:17:33', '2020-03-02 12:17:33');
INSERT INTO `kunjungan` VALUES (1141, 'http://localhost/satpam/berita/fasilitas/fasilitas', '::1', '2020-03-02', '2020-03-02 07:17:20', '2020-03-02 12:17:20');
INSERT INTO `kunjungan` VALUES (1140, 'http://localhost/satpam/index.php', '::1', '2020-03-02', '2020-03-02 07:17:15', '2020-03-02 12:17:15');
INSERT INTO `kunjungan` VALUES (1139, 'http://localhost/satpam/index.php', '::1', '2020-03-02', '2020-03-02 07:14:42', '2020-03-02 12:14:42');
INSERT INTO `kunjungan` VALUES (1138, 'http://localhost/satpam/pendaftar', '::1', '2020-03-02', '2020-03-02 07:10:44', '2020-03-02 12:10:44');
INSERT INTO `kunjungan` VALUES (1137, 'http://localhost/satpam/pendaftar', '::1', '2020-03-02', '2020-03-02 07:09:43', '2020-03-02 12:09:43');
INSERT INTO `kunjungan` VALUES (1136, 'http://localhost/satpam/index.php', '::1', '2020-03-02', '2020-03-02 07:09:34', '2020-03-02 12:09:34');
INSERT INTO `kunjungan` VALUES (1135, 'http://localhost/satpam/index.php', '::1', '2020-03-02', '2020-03-02 07:05:06', '2020-03-02 12:05:06');
INSERT INTO `kunjungan` VALUES (1134, 'http://localhost/satpam/index.php', '::1', '2020-03-02', '2020-03-02 07:02:28', '2020-03-02 12:02:28');
INSERT INTO `kunjungan` VALUES (1133, 'http://localhost/satpam/index.php', '::1', '2020-03-02', '2020-03-02 07:01:47', '2020-03-02 12:01:47');
INSERT INTO `kunjungan` VALUES (1132, 'http://localhost/satpam/index.php', '::1', '2020-03-02', '2020-03-02 07:00:21', '2020-03-02 12:00:21');
INSERT INTO `kunjungan` VALUES (1131, 'http://localhost/satpam/fasilitas', '::1', '2020-03-02', '2020-03-02 06:57:44', '2020-03-02 11:57:44');
INSERT INTO `kunjungan` VALUES (1130, 'http://localhost/satpam/fasilitas', '::1', '2020-03-02', '2020-03-02 06:57:22', '2020-03-02 11:57:22');
INSERT INTO `kunjungan` VALUES (1129, 'http://localhost/satpam/fasilitas', '::1', '2020-03-02', '2020-03-02 06:55:30', '2020-03-02 11:55:30');
INSERT INTO `kunjungan` VALUES (1128, 'http://localhost/satpam/fasilitas', '::1', '2020-03-02', '2020-03-02 06:46:43', '2020-03-02 11:46:43');
INSERT INTO `kunjungan` VALUES (1127, 'http://localhost/satpam/fasilitas', '::1', '2020-03-02', '2020-03-02 06:44:15', '2020-03-02 11:44:15');
INSERT INTO `kunjungan` VALUES (1126, 'http://localhost/satpam/fasilitas', '::1', '2020-03-02', '2020-03-02 06:36:55', '2020-03-02 11:36:55');
INSERT INTO `kunjungan` VALUES (1125, 'http://localhost/satpam/fasilitas', '::1', '2020-03-02', '2020-03-02 06:25:16', '2020-03-02 11:25:16');
INSERT INTO `kunjungan` VALUES (1124, 'http://localhost/satpam/fasilitas', '::1', '2020-03-02', '2020-03-02 06:23:20', '2020-03-02 11:23:20');
INSERT INTO `kunjungan` VALUES (1123, 'http://localhost/satpam/berita/read/fasilitas', '::1', '2020-03-02', '2020-03-02 06:21:45', '2020-03-02 11:21:45');
INSERT INTO `kunjungan` VALUES (1122, 'http://localhost/satpam/berita/read/fasilitas', '::1', '2020-03-02', '2020-03-02 06:18:23', '2020-03-02 11:18:23');
INSERT INTO `kunjungan` VALUES (1121, 'http://localhost/satpam/berita/read/fasilitas', '::1', '2020-03-02', '2020-03-02 06:08:08', '2020-03-02 11:08:08');
INSERT INTO `kunjungan` VALUES (1120, 'http://localhost/satpam/berita/read/fasilitas', '::1', '2020-03-02', '2020-03-02 06:06:40', '2020-03-02 11:06:40');
INSERT INTO `kunjungan` VALUES (1119, 'http://localhost/satpam/berita/read/fasilitas', '::1', '2020-03-02', '2020-03-02 06:01:05', '2020-03-02 11:01:05');
INSERT INTO `kunjungan` VALUES (1118, 'http://localhost/satpam/berita/kategori/kegiatan', '::1', '2020-03-02', '2020-03-02 06:00:59', '2020-03-02 11:00:59');
INSERT INTO `kunjungan` VALUES (1117, 'http://localhost/satpam/fasilitas', '::1', '2020-03-02', '2020-03-02 06:00:48', '2020-03-02 11:00:48');
INSERT INTO `kunjungan` VALUES (1116, 'http://localhost/satpam/fasilitas', '::1', '2020-03-02', '2020-03-02 05:57:51', '2020-03-02 10:57:51');
INSERT INTO `kunjungan` VALUES (1115, 'http://localhost/satpam/fasilitas', '::1', '2020-03-02', '2020-03-02 05:57:01', '2020-03-02 10:57:01');
INSERT INTO `kunjungan` VALUES (1114, 'http://localhost/satpam/fasilitas', '::1', '2020-03-02', '2020-03-02 05:54:17', '2020-03-02 10:54:17');
INSERT INTO `kunjungan` VALUES (1113, 'http://localhost/satpam/Fasilitas', '::1', '2020-03-02', '2020-03-02 05:54:12', '2020-03-02 10:54:12');
INSERT INTO `kunjungan` VALUES (1112, 'http://localhost/satpam/Fasilitas', '::1', '2020-03-02', '2020-03-02 05:53:30', '2020-03-02 10:53:30');
INSERT INTO `kunjungan` VALUES (1111, 'http://localhost/satpam/fasilitas', '::1', '2020-03-02', '2020-03-02 05:53:26', '2020-03-02 10:53:26');
INSERT INTO `kunjungan` VALUES (1110, 'http://localhost/satpam/fasilitas', '::1', '2020-03-02', '2020-03-02 05:52:29', '2020-03-02 10:52:29');
INSERT INTO `kunjungan` VALUES (1109, 'http://localhost/satpam/berita/kategori/kegiatan', '::1', '2020-03-02', '2020-03-02 05:52:19', '2020-03-02 10:52:19');
INSERT INTO `kunjungan` VALUES (1108, 'http://localhost/satpam/index.php', '::1', '2020-03-02', '2020-03-02 05:52:11', '2020-03-02 10:52:11');
INSERT INTO `kunjungan` VALUES (1107, 'http://localhost/satpam/fasilitas', '::1', '2020-03-02', '2020-03-02 05:52:06', '2020-03-02 10:52:06');
INSERT INTO `kunjungan` VALUES (1106, 'http://localhost/satpam/berita/read/fasilitas', '::1', '2020-03-02', '2020-03-02 05:51:57', '2020-03-02 10:51:57');
INSERT INTO `kunjungan` VALUES (1105, 'http://localhost/satpam/berita/read/profil', '::1', '2020-03-02', '2020-03-02 05:48:43', '2020-03-02 10:48:43');
INSERT INTO `kunjungan` VALUES (1104, 'http://localhost/satpam/index.php', '::1', '2020-03-02', '2020-03-02 05:40:19', '2020-03-02 10:40:19');
INSERT INTO `kunjungan` VALUES (1103, 'http://localhost/satpam/pendaftar', '::1', '2020-03-02', '2020-03-02 05:40:04', '2020-03-02 10:40:04');
INSERT INTO `kunjungan` VALUES (1102, 'http://localhost/satpam/index.php', '::1', '2020-03-02', '2020-03-02 05:39:56', '2020-03-02 10:39:56');
INSERT INTO `kunjungan` VALUES (1101, 'http://localhost/satpam/fasilitas', '::1', '2020-03-02', '2020-03-02 05:39:47', '2020-03-02 10:39:47');
INSERT INTO `kunjungan` VALUES (1100, 'http://localhost/satpam/berita/read/pendaftaran-pelatihan-satpam', '::1', '2020-03-02', '2020-03-02 05:39:36', '2020-03-02 10:39:36');
INSERT INTO `kunjungan` VALUES (1099, 'http://localhost/satpam/berita', '::1', '2020-03-02', '2020-03-02 05:39:28', '2020-03-02 10:39:28');
INSERT INTO `kunjungan` VALUES (1098, 'http://localhost/satpam/berita/profil/profil', '::1', '2020-03-02', '2020-03-02 05:39:18', '2020-03-02 10:39:18');
INSERT INTO `kunjungan` VALUES (1097, 'http://localhost/satpam/index.php', '::1', '2020-03-02', '2020-03-02 05:39:12', '2020-03-02 10:39:12');
INSERT INTO `kunjungan` VALUES (1096, 'http://localhost/satpam/index.php', '::1', '2020-03-02', '2020-03-02 04:17:32', '2020-03-02 09:17:32');
INSERT INTO `kunjungan` VALUES (1095, 'http://localhost/satpam/pendaftar', '::1', '2020-03-01', '2020-03-01 13:00:09', '2020-03-01 18:00:09');
INSERT INTO `kunjungan` VALUES (1094, 'http://localhost/satpam/pendaftar', '::1', '2020-03-01', '2020-03-01 12:59:34', '2020-03-01 17:59:34');
INSERT INTO `kunjungan` VALUES (1093, 'http://localhost/satpam/kontak', '::1', '2020-03-01', '2020-03-01 12:59:28', '2020-03-01 17:59:28');
INSERT INTO `kunjungan` VALUES (1092, 'http://localhost/satpam/berita/kategori/kegiatan', '::1', '2020-03-01', '2020-03-01 12:59:20', '2020-03-01 17:59:20');
INSERT INTO `kunjungan` VALUES (1091, 'http://localhost/satpam/download', '::1', '2020-03-01', '2020-03-01 12:58:50', '2020-03-01 17:58:50');
INSERT INTO `kunjungan` VALUES (1090, 'http://localhost/satpam/index.php', '::1', '2020-03-01', '2020-03-01 12:53:28', '2020-03-01 17:53:28');
INSERT INTO `kunjungan` VALUES (1089, 'http://localhost/satpam/index.php', '::1', '2020-03-01', '2020-03-01 11:43:02', '2020-03-01 16:43:02');
INSERT INTO `kunjungan` VALUES (1088, 'http://localhost/satpam/index.php', '::1', '2020-03-01', '2020-03-01 11:41:58', '2020-03-01 16:41:58');
INSERT INTO `kunjungan` VALUES (1087, 'http://localhost/satpam/index.php', '::1', '2020-02-29', '2020-02-29 07:08:46', '2020-02-29 12:08:46');
INSERT INTO `kunjungan` VALUES (1086, 'http://localhost/satpam/index.php', '::1', '2020-02-29', '2020-02-29 07:08:32', '2020-02-29 12:08:32');
INSERT INTO `kunjungan` VALUES (1085, 'http://localhost/satpam/index.php', '::1', '2020-02-29', '2020-02-29 07:08:25', '2020-02-29 12:08:25');
INSERT INTO `kunjungan` VALUES (1084, 'http://localhost/satpam/kontak', '::1', '2020-02-29', '2020-02-29 07:08:22', '2020-02-29 12:08:22');
INSERT INTO `kunjungan` VALUES (1083, 'http://localhost/satpam/kontak', '::1', '2020-02-29', '2020-02-29 07:07:46', '2020-02-29 12:07:46');
INSERT INTO `kunjungan` VALUES (1082, 'http://localhost/satpam/index.php', '::1', '2020-02-29', '2020-02-29 07:07:42', '2020-02-29 12:07:42');
INSERT INTO `kunjungan` VALUES (1081, 'http://localhost/satpam/pendaftar', '::1', '2020-02-29', '2020-02-29 07:05:35', '2020-02-29 12:05:35');
INSERT INTO `kunjungan` VALUES (1080, 'http://localhost/satpam/index.php', '::1', '2020-02-29', '2020-02-29 07:03:24', '2020-02-29 12:03:24');
INSERT INTO `kunjungan` VALUES (1079, 'http://localhost/satpam/index.php', '::1', '2020-02-29', '2020-02-29 07:03:15', '2020-02-29 12:03:15');
INSERT INTO `kunjungan` VALUES (1078, 'http://localhost/satpam/index.php', '::1', '2020-02-27', '2020-02-27 05:43:57', '2020-02-27 10:43:57');
INSERT INTO `kunjungan` VALUES (1077, 'http://localhost/satpam/index.php', '::1', '2020-02-26', '2020-02-26 17:14:02', '2020-02-26 22:14:02');
INSERT INTO `kunjungan` VALUES (1076, 'http://localhost/satpam/index.php', '::1', '2020-02-26', '2020-02-26 17:13:28', '2020-02-26 22:13:28');
INSERT INTO `kunjungan` VALUES (1075, 'http://localhost/satpam/index.php', '::1', '2020-02-26', '2020-02-26 17:06:56', '2020-02-26 22:06:56');
INSERT INTO `kunjungan` VALUES (1074, 'http://localhost/satpam/index.php', '::1', '2020-02-26', '2020-02-26 17:05:14', '2020-02-26 22:05:14');
INSERT INTO `kunjungan` VALUES (1073, 'http://localhost/satpam/index.php', '::1', '2020-02-26', '2020-02-26 16:59:58', '2020-02-26 21:59:58');
INSERT INTO `kunjungan` VALUES (1072, 'http://localhost/satpam/pendaftar', '::1', '2020-02-26', '2020-02-26 16:59:53', '2020-02-26 21:59:53');
INSERT INTO `kunjungan` VALUES (1071, 'http://localhost/satpam/index.php', '::1', '2020-02-26', '2020-02-26 16:59:12', '2020-02-26 21:59:12');
INSERT INTO `kunjungan` VALUES (788, 'http://localhost/satpam/kontak', '::1', '2020-02-21', '2020-02-21 15:55:21', '2020-02-21 20:55:21');
INSERT INTO `kunjungan` VALUES (789, 'http://localhost/satpam/pendaftar', '::1', '2020-02-21', '2020-02-21 15:55:35', '2020-02-21 20:55:35');
INSERT INTO `kunjungan` VALUES (790, 'http://localhost/satpam/pendaftar', '::1', '2020-02-21', '2020-02-21 15:58:05', '2020-02-21 20:58:05');
INSERT INTO `kunjungan` VALUES (791, 'http://localhost/satpam/pendaftar', '::1', '2020-02-21', '2020-02-21 15:59:23', '2020-02-21 20:59:23');
INSERT INTO `kunjungan` VALUES (792, 'http://localhost/satpam/pendaftar', '::1', '2020-02-21', '2020-02-21 16:22:01', '2020-02-21 21:22:01');
INSERT INTO `kunjungan` VALUES (793, 'http://localhost/satpam/pendaftar', '::1', '2020-02-21', '2020-02-21 16:22:43', '2020-02-21 21:22:43');
INSERT INTO `kunjungan` VALUES (794, 'http://localhost/satpam/pendaftar', '::1', '2020-02-21', '2020-02-21 16:23:15', '2020-02-21 21:23:15');
INSERT INTO `kunjungan` VALUES (795, 'http://localhost/satpam/pendaftar', '::1', '2020-02-21', '2020-02-21 16:24:03', '2020-02-21 21:24:03');
INSERT INTO `kunjungan` VALUES (796, 'http://localhost/satpam/pendaftar', '::1', '2020-02-21', '2020-02-21 16:25:51', '2020-02-21 21:25:51');
INSERT INTO `kunjungan` VALUES (797, 'http://localhost/satpam/pendaftar', '::1', '2020-02-21', '2020-02-21 16:26:20', '2020-02-21 21:26:20');
INSERT INTO `kunjungan` VALUES (798, 'http://localhost/satpam/pendaftar', '::1', '2020-02-21', '2020-02-21 16:28:31', '2020-02-21 21:28:31');
INSERT INTO `kunjungan` VALUES (799, 'http://localhost/satpam/pendaftar', '::1', '2020-02-21', '2020-02-21 16:29:37', '2020-02-21 21:29:37');
INSERT INTO `kunjungan` VALUES (800, 'http://localhost/satpam/pendaftar', '::1', '2020-02-21', '2020-02-21 16:30:58', '2020-02-21 21:30:58');
INSERT INTO `kunjungan` VALUES (801, 'http://localhost/satpam/pendaftar', '::1', '2020-02-21', '2020-02-21 16:32:11', '2020-02-21 21:32:11');
INSERT INTO `kunjungan` VALUES (802, 'http://localhost/satpam/pendaftar', '::1', '2020-02-21', '2020-02-21 16:42:43', '2020-02-21 21:42:43');
INSERT INTO `kunjungan` VALUES (803, 'http://localhost/satpam/index.php', '::1', '2020-02-22', '2020-02-22 06:56:27', '2020-02-22 11:56:27');
INSERT INTO `kunjungan` VALUES (804, 'http://localhost/satpam/pendaftar', '::1', '2020-02-22', '2020-02-22 06:56:33', '2020-02-22 11:56:33');
INSERT INTO `kunjungan` VALUES (805, 'http://localhost/satpam/pendaftar', '::1', '2020-02-22', '2020-02-22 06:59:52', '2020-02-22 11:59:52');
INSERT INTO `kunjungan` VALUES (806, 'http://localhost/satpam/pendaftar', '::1', '2020-02-22', '2020-02-22 07:08:45', '2020-02-22 12:08:45');
INSERT INTO `kunjungan` VALUES (807, 'http://localhost/satpam/index.php', '::1', '2020-02-22', '2020-02-22 07:08:49', '2020-02-22 12:08:49');
INSERT INTO `kunjungan` VALUES (808, 'http://localhost/satpam/pendaftar', '::1', '2020-02-22', '2020-02-22 07:14:36', '2020-02-22 12:14:36');
INSERT INTO `kunjungan` VALUES (809, 'http://localhost/satpam/kontak', '::1', '2020-02-22', '2020-02-22 07:14:44', '2020-02-22 12:14:44');
INSERT INTO `kunjungan` VALUES (810, 'http://localhost/satpam/pendaftar', '::1', '2020-02-22', '2020-02-22 07:14:52', '2020-02-22 12:14:52');
INSERT INTO `kunjungan` VALUES (811, 'http://localhost/satpam/pendaftar', '::1', '2020-02-22', '2020-02-22 07:15:15', '2020-02-22 12:15:15');
INSERT INTO `kunjungan` VALUES (812, 'http://localhost/satpam/kontak', '::1', '2020-02-22', '2020-02-22 07:15:26', '2020-02-22 12:15:26');
INSERT INTO `kunjungan` VALUES (813, 'http://localhost/satpam/kontak', '::1', '2020-02-22', '2020-02-22 07:19:53', '2020-02-22 12:19:53');
INSERT INTO `kunjungan` VALUES (814, 'http://localhost/satpam/pendaftar', '::1', '2020-02-22', '2020-02-22 07:20:04', '2020-02-22 12:20:04');
INSERT INTO `kunjungan` VALUES (815, 'http://localhost/satpam/pendaftar', '::1', '2020-02-22', '2020-02-22 07:20:20', '2020-02-22 12:20:20');
INSERT INTO `kunjungan` VALUES (816, 'http://localhost/satpam/pendaftar', '::1', '2020-02-22', '2020-02-22 07:20:37', '2020-02-22 12:20:37');
INSERT INTO `kunjungan` VALUES (817, 'http://localhost/satpam/pendaftar', '::1', '2020-02-22', '2020-02-22 07:20:54', '2020-02-22 12:20:54');
INSERT INTO `kunjungan` VALUES (818, 'http://localhost/satpam/pendaftar', '::1', '2020-02-22', '2020-02-22 07:21:37', '2020-02-22 12:21:37');
INSERT INTO `kunjungan` VALUES (819, 'http://localhost/satpam/pendaftar', '::1', '2020-02-22', '2020-02-22 07:21:53', '2020-02-22 12:21:53');
INSERT INTO `kunjungan` VALUES (820, 'http://localhost/satpam/pendaftar', '::1', '2020-02-22', '2020-02-22 07:22:18', '2020-02-22 12:22:18');
INSERT INTO `kunjungan` VALUES (821, 'http://localhost/satpam/kontak', '::1', '2020-02-22', '2020-02-22 07:22:30', '2020-02-22 12:22:30');
INSERT INTO `kunjungan` VALUES (822, 'http://localhost/satpam/kontak', '::1', '2020-02-22', '2020-02-22 07:29:47', '2020-02-22 12:29:47');
INSERT INTO `kunjungan` VALUES (823, 'http://localhost/satpam/pendaftar', '::1', '2020-02-22', '2020-02-22 07:29:58', '2020-02-22 12:29:58');
INSERT INTO `kunjungan` VALUES (824, 'http://localhost/satpam/pendaftar', '::1', '2020-02-22', '2020-02-22 07:30:15', '2020-02-22 12:30:15');
INSERT INTO `kunjungan` VALUES (825, 'http://localhost/satpam/kontak', '::1', '2020-02-22', '2020-02-22 07:30:28', '2020-02-22 12:30:28');
INSERT INTO `kunjungan` VALUES (826, 'http://localhost/satpam/kontak', '::1', '2020-02-22', '2020-02-22 07:30:47', '2020-02-22 12:30:47');
INSERT INTO `kunjungan` VALUES (827, 'http://localhost/satpam/kontak', '::1', '2020-02-22', '2020-02-22 07:31:07', '2020-02-22 12:31:07');
INSERT INTO `kunjungan` VALUES (828, 'http://localhost/satpam/kontak', '::1', '2020-02-22', '2020-02-22 07:31:19', '2020-02-22 12:31:19');
INSERT INTO `kunjungan` VALUES (829, 'http://localhost/satpam/kontak', '::1', '2020-02-22', '2020-02-22 07:31:36', '2020-02-22 12:31:36');
INSERT INTO `kunjungan` VALUES (830, 'http://localhost/satpam/kontak', '::1', '2020-02-22', '2020-02-22 07:34:28', '2020-02-22 12:34:28');
INSERT INTO `kunjungan` VALUES (831, 'http://localhost/satpam/pendaftar', '::1', '2020-02-22', '2020-02-22 07:34:36', '2020-02-22 12:34:36');
INSERT INTO `kunjungan` VALUES (832, 'http://localhost/satpam/pendaftar', '::1', '2020-02-22', '2020-02-22 07:35:22', '2020-02-22 12:35:22');
INSERT INTO `kunjungan` VALUES (833, 'http://localhost/satpam/pendaftar', '::1', '2020-02-22', '2020-02-22 07:36:13', '2020-02-22 12:36:13');
INSERT INTO `kunjungan` VALUES (834, 'http://localhost/satpam/pendaftar', '::1', '2020-02-22', '2020-02-22 07:36:41', '2020-02-22 12:36:41');
INSERT INTO `kunjungan` VALUES (835, 'http://localhost/satpam/kontak', '::1', '2020-02-22', '2020-02-22 07:36:50', '2020-02-22 12:36:50');
INSERT INTO `kunjungan` VALUES (836, 'http://localhost/satpam/kontak', '::1', '2020-02-22', '2020-02-22 07:37:02', '2020-02-22 12:37:02');
INSERT INTO `kunjungan` VALUES (837, 'http://localhost/satpam/kontak', '::1', '2020-02-22', '2020-02-22 07:37:18', '2020-02-22 12:37:18');
INSERT INTO `kunjungan` VALUES (838, 'http://localhost/satpam/kontak', '::1', '2020-02-22', '2020-02-22 07:37:41', '2020-02-22 12:37:41');
INSERT INTO `kunjungan` VALUES (839, 'http://localhost/satpam/pendaftar', '::1', '2020-02-22', '2020-02-22 07:37:47', '2020-02-22 12:37:47');
INSERT INTO `kunjungan` VALUES (840, 'http://localhost/satpam/pendaftar', '::1', '2020-02-22', '2020-02-22 07:39:19', '2020-02-22 12:39:19');
INSERT INTO `kunjungan` VALUES (841, 'http://localhost/satpam/pendaftar', '::1', '2020-02-22', '2020-02-22 07:40:18', '2020-02-22 12:40:18');
INSERT INTO `kunjungan` VALUES (842, 'http://localhost/satpam/kontak', '::1', '2020-02-22', '2020-02-22 08:19:01', '2020-02-22 13:19:01');
INSERT INTO `kunjungan` VALUES (843, 'http://localhost/satpam/pendaftar', '::1', '2020-02-22', '2020-02-22 08:19:09', '2020-02-22 13:19:09');
INSERT INTO `kunjungan` VALUES (844, 'http://localhost/satpam/pendaftar', '::1', '2020-02-22', '2020-02-22 08:20:53', '2020-02-22 13:20:53');
INSERT INTO `kunjungan` VALUES (845, 'http://localhost/satpam/kontak', '::1', '2020-02-22', '2020-02-22 08:23:40', '2020-02-22 13:23:40');
INSERT INTO `kunjungan` VALUES (846, 'http://localhost/satpam/pendaftar', '::1', '2020-02-22', '2020-02-22 08:23:48', '2020-02-22 13:23:48');
INSERT INTO `kunjungan` VALUES (847, 'http://localhost/satpam/fasilitas', '::1', '2020-02-22', '2020-02-22 08:24:23', '2020-02-22 13:24:23');
INSERT INTO `kunjungan` VALUES (848, 'http://localhost/satpam/kontak', '::1', '2020-02-22', '2020-02-22 08:24:40', '2020-02-22 13:24:40');
INSERT INTO `kunjungan` VALUES (849, 'http://localhost/satpam/index.php', '::1', '2020-02-22', '2020-02-22 08:24:48', '2020-02-22 13:24:48');
INSERT INTO `kunjungan` VALUES (850, 'http://localhost/satpam/index.php', '::1', '2020-02-22', '2020-02-22 08:26:17', '2020-02-22 13:26:17');
INSERT INTO `kunjungan` VALUES (851, 'http://localhost/satpam/berita/layanan/pelayanan-pt-prima-handanu-bhakti', '::1', '2020-02-22', '2020-02-22 08:26:33', '2020-02-22 13:26:33');
INSERT INTO `kunjungan` VALUES (852, 'http://localhost/satpam/index.php', '::1', '2020-02-22', '2020-02-22 08:26:43', '2020-02-22 13:26:43');
INSERT INTO `kunjungan` VALUES (853, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 01:45:49', '2020-02-23 06:45:49');
INSERT INTO `kunjungan` VALUES (854, 'http://localhost/satpam/kontak', '::1', '2020-02-23', '2020-02-23 01:46:19', '2020-02-23 06:46:19');
INSERT INTO `kunjungan` VALUES (855, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 01:47:27', '2020-02-23 06:47:27');
INSERT INTO `kunjungan` VALUES (856, 'http://localhost/satpam/fasilitas', '::1', '2020-02-23', '2020-02-23 01:47:59', '2020-02-23 06:47:59');
INSERT INTO `kunjungan` VALUES (857, 'http://localhost/satpam/berita/kategori/kegiatan', '::1', '2020-02-23', '2020-02-23 01:48:17', '2020-02-23 06:48:17');
INSERT INTO `kunjungan` VALUES (858, 'http://localhost/satpam/kontak', '::1', '2020-02-23', '2020-02-23 01:48:30', '2020-02-23 06:48:30');
INSERT INTO `kunjungan` VALUES (859, 'http://localhost/satpam/download', '::1', '2020-02-23', '2020-02-23 01:48:37', '2020-02-23 06:48:37');
INSERT INTO `kunjungan` VALUES (860, 'http://localhost/satpam/index.php', '::1', '2020-02-23', '2020-02-23 01:48:51', '2020-02-23 06:48:51');
INSERT INTO `kunjungan` VALUES (861, 'http://localhost/satpam/fasilitas', '::1', '2020-02-23', '2020-02-23 01:49:10', '2020-02-23 06:49:10');
INSERT INTO `kunjungan` VALUES (862, 'http://localhost/satpam/kontak', '::1', '2020-02-23', '2020-02-23 01:49:16', '2020-02-23 06:49:16');
INSERT INTO `kunjungan` VALUES (863, 'http://localhost/satpam/index.php', '::1', '2020-02-23', '2020-02-23 01:49:30', '2020-02-23 06:49:30');
INSERT INTO `kunjungan` VALUES (864, 'http://localhost/satpam/kontak', '::1', '2020-02-23', '2020-02-23 01:50:15', '2020-02-23 06:50:15');
INSERT INTO `kunjungan` VALUES (865, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 01:56:31', '2020-02-23 06:56:31');
INSERT INTO `kunjungan` VALUES (866, 'http://localhost/satpam/kontak', '::1', '2020-02-23', '2020-02-23 01:56:44', '2020-02-23 06:56:44');
INSERT INTO `kunjungan` VALUES (867, 'http://localhost/satpam/index.php', '::1', '2020-02-23', '2020-02-23 01:56:50', '2020-02-23 06:56:50');
INSERT INTO `kunjungan` VALUES (868, 'http://localhost/satpam/index.php', '::1', '2020-02-23', '2020-02-23 03:33:30', '2020-02-23 08:33:30');
INSERT INTO `kunjungan` VALUES (869, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 03:33:35', '2020-02-23 08:33:35');
INSERT INTO `kunjungan` VALUES (870, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 03:35:45', '2020-02-23 08:35:45');
INSERT INTO `kunjungan` VALUES (871, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 03:36:01', '2020-02-23 08:36:01');
INSERT INTO `kunjungan` VALUES (872, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 03:36:19', '2020-02-23 08:36:19');
INSERT INTO `kunjungan` VALUES (873, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 03:36:42', '2020-02-23 08:36:42');
INSERT INTO `kunjungan` VALUES (874, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 03:37:13', '2020-02-23 08:37:13');
INSERT INTO `kunjungan` VALUES (875, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 03:37:25', '2020-02-23 08:37:25');
INSERT INTO `kunjungan` VALUES (876, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 03:38:33', '2020-02-23 08:38:33');
INSERT INTO `kunjungan` VALUES (877, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 03:39:05', '2020-02-23 08:39:05');
INSERT INTO `kunjungan` VALUES (878, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 03:39:17', '2020-02-23 08:39:17');
INSERT INTO `kunjungan` VALUES (879, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 03:39:35', '2020-02-23 08:39:35');
INSERT INTO `kunjungan` VALUES (880, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 03:40:05', '2020-02-23 08:40:05');
INSERT INTO `kunjungan` VALUES (881, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 03:40:22', '2020-02-23 08:40:22');
INSERT INTO `kunjungan` VALUES (882, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 03:40:35', '2020-02-23 08:40:35');
INSERT INTO `kunjungan` VALUES (883, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 03:40:57', '2020-02-23 08:40:57');
INSERT INTO `kunjungan` VALUES (884, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 03:49:09', '2020-02-23 08:49:09');
INSERT INTO `kunjungan` VALUES (885, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 03:51:07', '2020-02-23 08:51:07');
INSERT INTO `kunjungan` VALUES (886, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 03:51:40', '2020-02-23 08:51:40');
INSERT INTO `kunjungan` VALUES (887, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 03:55:25', '2020-02-23 08:55:25');
INSERT INTO `kunjungan` VALUES (888, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 03:55:58', '2020-02-23 08:55:58');
INSERT INTO `kunjungan` VALUES (889, 'http://localhost/satpam/kontak', '::1', '2020-02-23', '2020-02-23 03:56:22', '2020-02-23 08:56:22');
INSERT INTO `kunjungan` VALUES (890, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 03:56:26', '2020-02-23 08:56:26');
INSERT INTO `kunjungan` VALUES (891, 'http://localhost/satpam/kontak', '::1', '2020-02-23', '2020-02-23 03:56:33', '2020-02-23 08:56:33');
INSERT INTO `kunjungan` VALUES (892, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 03:56:37', '2020-02-23 08:56:37');
INSERT INTO `kunjungan` VALUES (893, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 03:56:50', '2020-02-23 08:56:50');
INSERT INTO `kunjungan` VALUES (894, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 03:57:02', '2020-02-23 08:57:02');
INSERT INTO `kunjungan` VALUES (895, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 03:57:20', '2020-02-23 08:57:20');
INSERT INTO `kunjungan` VALUES (896, 'http://localhost/satpam/kontak', '::1', '2020-02-23', '2020-02-23 03:57:30', '2020-02-23 08:57:30');
INSERT INTO `kunjungan` VALUES (897, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 03:57:35', '2020-02-23 08:57:35');
INSERT INTO `kunjungan` VALUES (898, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 04:02:12', '2020-02-23 09:02:12');
INSERT INTO `kunjungan` VALUES (899, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 04:02:53', '2020-02-23 09:02:53');
INSERT INTO `kunjungan` VALUES (900, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 04:03:14', '2020-02-23 09:03:14');
INSERT INTO `kunjungan` VALUES (901, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 04:05:31', '2020-02-23 09:05:31');
INSERT INTO `kunjungan` VALUES (902, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 04:06:17', '2020-02-23 09:06:17');
INSERT INTO `kunjungan` VALUES (903, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 04:15:15', '2020-02-23 09:15:15');
INSERT INTO `kunjungan` VALUES (904, 'http://localhost/satpam/index.php', '::1', '2020-02-23', '2020-02-23 04:55:12', '2020-02-23 09:55:12');
INSERT INTO `kunjungan` VALUES (905, 'http://localhost/satpam/index.php', '::1', '2020-02-23', '2020-02-23 05:01:54', '2020-02-23 10:01:54');
INSERT INTO `kunjungan` VALUES (906, 'http://localhost/satpam/index.php', '::1', '2020-02-23', '2020-02-23 05:04:14', '2020-02-23 10:04:14');
INSERT INTO `kunjungan` VALUES (907, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 05:05:07', '2020-02-23 10:05:07');
INSERT INTO `kunjungan` VALUES (908, 'http://localhost/satpam/index.php', '::1', '2020-02-23', '2020-02-23 05:07:02', '2020-02-23 10:07:02');
INSERT INTO `kunjungan` VALUES (909, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 05:07:35', '2020-02-23 10:07:35');
INSERT INTO `kunjungan` VALUES (910, 'http://localhost/satpam/berita/layanan/pelayanan-pt-prima-handanu-bhakti', '::1', '2020-02-23', '2020-02-23 05:07:58', '2020-02-23 10:07:58');
INSERT INTO `kunjungan` VALUES (911, 'http://localhost/satpam/kontak', '::1', '2020-02-23', '2020-02-23 05:08:28', '2020-02-23 10:08:28');
INSERT INTO `kunjungan` VALUES (912, 'http://localhost/satpam/kontak', '::1', '2020-02-23', '2020-02-23 05:10:36', '2020-02-23 10:10:36');
INSERT INTO `kunjungan` VALUES (913, 'http://localhost/satpam/index.php', '::1', '2020-02-23', '2020-02-23 05:12:14', '2020-02-23 10:12:14');
INSERT INTO `kunjungan` VALUES (914, 'http://localhost/satpam/berita/layanan/pelayanan-pt-prima-handanu-bhakti', '::1', '2020-02-23', '2020-02-23 05:13:38', '2020-02-23 10:13:38');
INSERT INTO `kunjungan` VALUES (915, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 05:13:48', '2020-02-23 10:13:48');
INSERT INTO `kunjungan` VALUES (916, 'http://localhost/satpam/kontak', '::1', '2020-02-23', '2020-02-23 05:14:12', '2020-02-23 10:14:12');
INSERT INTO `kunjungan` VALUES (917, 'http://localhost/satpam/kontak', '::1', '2020-02-23', '2020-02-23 05:14:34', '2020-02-23 10:14:34');
INSERT INTO `kunjungan` VALUES (918, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 05:15:19', '2020-02-23 10:15:19');
INSERT INTO `kunjungan` VALUES (919, 'http://localhost/satpam/kontak', '::1', '2020-02-23', '2020-02-23 05:19:52', '2020-02-23 10:19:52');
INSERT INTO `kunjungan` VALUES (920, 'http://localhost/satpam/kontak', '::1', '2020-02-23', '2020-02-23 05:20:10', '2020-02-23 10:20:10');
INSERT INTO `kunjungan` VALUES (921, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 05:23:14', '2020-02-23 10:23:14');
INSERT INTO `kunjungan` VALUES (922, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 05:25:48', '2020-02-23 10:25:48');
INSERT INTO `kunjungan` VALUES (923, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 05:26:21', '2020-02-23 10:26:21');
INSERT INTO `kunjungan` VALUES (924, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 05:29:29', '2020-02-23 10:29:29');
INSERT INTO `kunjungan` VALUES (925, 'http://localhost/satpam/kontak', '::1', '2020-02-23', '2020-02-23 05:29:45', '2020-02-23 10:29:45');
INSERT INTO `kunjungan` VALUES (926, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 05:29:51', '2020-02-23 10:29:51');
INSERT INTO `kunjungan` VALUES (927, 'http://localhost/satpam/kontak', '::1', '2020-02-23', '2020-02-23 05:44:57', '2020-02-23 10:44:57');
INSERT INTO `kunjungan` VALUES (928, 'http://localhost/satpam/kontak', '::1', '2020-02-23', '2020-02-23 05:45:19', '2020-02-23 10:45:19');
INSERT INTO `kunjungan` VALUES (929, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 05:57:05', '2020-02-23 10:57:05');
INSERT INTO `kunjungan` VALUES (930, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 05:59:43', '2020-02-23 10:59:43');
INSERT INTO `kunjungan` VALUES (931, 'http://localhost/satpam/index.php', '::1', '2020-02-23', '2020-02-23 06:01:52', '2020-02-23 11:01:52');
INSERT INTO `kunjungan` VALUES (932, 'http://localhost/satpam/berita/layanan/pelayanan-pt-prima-handanu-bhakti', '::1', '2020-02-23', '2020-02-23 06:01:57', '2020-02-23 11:01:57');
INSERT INTO `kunjungan` VALUES (933, 'http://localhost/satpam/index.php', '::1', '2020-02-23', '2020-02-23 06:02:03', '2020-02-23 11:02:03');
INSERT INTO `kunjungan` VALUES (934, 'http://localhost/satpam/download', '::1', '2020-02-23', '2020-02-23 06:05:19', '2020-02-23 11:05:19');
INSERT INTO `kunjungan` VALUES (935, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 06:25:24', '2020-02-23 11:25:24');
INSERT INTO `kunjungan` VALUES (936, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 06:58:40', '2020-02-23 11:58:40');
INSERT INTO `kunjungan` VALUES (937, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 07:00:08', '2020-02-23 12:00:08');
INSERT INTO `kunjungan` VALUES (938, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 07:00:44', '2020-02-23 12:00:44');
INSERT INTO `kunjungan` VALUES (939, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 07:01:06', '2020-02-23 12:01:06');
INSERT INTO `kunjungan` VALUES (940, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 07:01:57', '2020-02-23 12:01:57');
INSERT INTO `kunjungan` VALUES (941, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 07:02:26', '2020-02-23 12:02:26');
INSERT INTO `kunjungan` VALUES (942, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 07:03:31', '2020-02-23 12:03:31');
INSERT INTO `kunjungan` VALUES (943, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 07:05:36', '2020-02-23 12:05:36');
INSERT INTO `kunjungan` VALUES (944, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 07:05:56', '2020-02-23 12:05:56');
INSERT INTO `kunjungan` VALUES (945, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 07:06:18', '2020-02-23 12:06:18');
INSERT INTO `kunjungan` VALUES (946, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 07:06:40', '2020-02-23 12:06:40');
INSERT INTO `kunjungan` VALUES (947, 'http://localhost/satpam/fasilitas', '::1', '2020-02-23', '2020-02-23 07:20:11', '2020-02-23 12:20:11');
INSERT INTO `kunjungan` VALUES (948, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 07:20:35', '2020-02-23 12:20:35');
INSERT INTO `kunjungan` VALUES (949, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 07:30:46', '2020-02-23 12:30:46');
INSERT INTO `kunjungan` VALUES (950, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 07:31:42', '2020-02-23 12:31:42');
INSERT INTO `kunjungan` VALUES (951, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 07:33:57', '2020-02-23 12:33:57');
INSERT INTO `kunjungan` VALUES (952, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 07:34:52', '2020-02-23 12:34:52');
INSERT INTO `kunjungan` VALUES (953, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 07:36:33', '2020-02-23 12:36:33');
INSERT INTO `kunjungan` VALUES (954, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 07:37:29', '2020-02-23 12:37:29');
INSERT INTO `kunjungan` VALUES (955, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 07:39:28', '2020-02-23 12:39:28');
INSERT INTO `kunjungan` VALUES (956, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 07:41:51', '2020-02-23 12:41:51');
INSERT INTO `kunjungan` VALUES (957, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 07:43:45', '2020-02-23 12:43:45');
INSERT INTO `kunjungan` VALUES (958, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 07:45:01', '2020-02-23 12:45:01');
INSERT INTO `kunjungan` VALUES (959, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 07:46:23', '2020-02-23 12:46:23');
INSERT INTO `kunjungan` VALUES (960, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 07:54:44', '2020-02-23 12:54:44');
INSERT INTO `kunjungan` VALUES (961, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 08:10:35', '2020-02-23 13:10:35');
INSERT INTO `kunjungan` VALUES (962, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 08:13:40', '2020-02-23 13:13:40');
INSERT INTO `kunjungan` VALUES (963, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 08:14:57', '2020-02-23 13:14:57');
INSERT INTO `kunjungan` VALUES (964, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 08:16:25', '2020-02-23 13:16:25');
INSERT INTO `kunjungan` VALUES (965, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 08:18:33', '2020-02-23 13:18:33');
INSERT INTO `kunjungan` VALUES (966, 'http://localhost/satpam/kontak', '::1', '2020-02-23', '2020-02-23 08:20:53', '2020-02-23 13:20:53');
INSERT INTO `kunjungan` VALUES (967, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 08:21:37', '2020-02-23 13:21:37');
INSERT INTO `kunjungan` VALUES (968, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 08:22:22', '2020-02-23 13:22:22');
INSERT INTO `kunjungan` VALUES (969, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 08:23:19', '2020-02-23 13:23:19');
INSERT INTO `kunjungan` VALUES (970, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 08:24:41', '2020-02-23 13:24:41');
INSERT INTO `kunjungan` VALUES (971, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 08:25:09', '2020-02-23 13:25:09');
INSERT INTO `kunjungan` VALUES (972, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 08:25:26', '2020-02-23 13:25:26');
INSERT INTO `kunjungan` VALUES (973, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 08:25:45', '2020-02-23 13:25:45');
INSERT INTO `kunjungan` VALUES (974, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 08:27:35', '2020-02-23 13:27:35');
INSERT INTO `kunjungan` VALUES (975, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 08:28:46', '2020-02-23 13:28:46');
INSERT INTO `kunjungan` VALUES (976, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 08:29:47', '2020-02-23 13:29:47');
INSERT INTO `kunjungan` VALUES (981, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 08:33:34', '2020-02-23 13:33:34');
INSERT INTO `kunjungan` VALUES (982, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 08:34:51', '2020-02-23 13:34:51');
INSERT INTO `kunjungan` VALUES (983, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 08:36:00', '2020-02-23 13:36:00');
INSERT INTO `kunjungan` VALUES (984, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 08:36:44', '2020-02-23 13:36:44');
INSERT INTO `kunjungan` VALUES (985, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 08:40:00', '2020-02-23 13:40:00');
INSERT INTO `kunjungan` VALUES (986, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 08:41:04', '2020-02-23 13:41:04');
INSERT INTO `kunjungan` VALUES (987, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 08:42:08', '2020-02-23 13:42:08');
INSERT INTO `kunjungan` VALUES (988, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 08:46:35', '2020-02-23 13:46:35');
INSERT INTO `kunjungan` VALUES (989, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 08:50:37', '2020-02-23 13:50:37');
INSERT INTO `kunjungan` VALUES (990, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 08:52:00', '2020-02-23 13:52:00');
INSERT INTO `kunjungan` VALUES (991, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 08:52:31', '2020-02-23 13:52:31');
INSERT INTO `kunjungan` VALUES (992, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 08:54:56', '2020-02-23 13:54:56');
INSERT INTO `kunjungan` VALUES (993, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 08:57:16', '2020-02-23 13:57:16');
INSERT INTO `kunjungan` VALUES (994, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 09:05:21', '2020-02-23 14:05:21');
INSERT INTO `kunjungan` VALUES (995, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 09:07:08', '2020-02-23 14:07:08');
INSERT INTO `kunjungan` VALUES (996, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 09:52:20', '2020-02-23 14:52:20');
INSERT INTO `kunjungan` VALUES (997, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 09:53:45', '2020-02-23 14:53:45');
INSERT INTO `kunjungan` VALUES (998, 'http://localhost/satpam/galeri', '::1', '2020-02-23', '2020-02-23 12:05:36', '2020-02-23 17:05:36');
INSERT INTO `kunjungan` VALUES (999, 'http://localhost/satpam/index.php', '::1', '2020-02-23', '2020-02-23 12:06:21', '2020-02-23 17:06:21');
INSERT INTO `kunjungan` VALUES (1000, 'http://localhost/satpam/download', '::1', '2020-02-23', '2020-02-23 12:06:36', '2020-02-23 17:06:36');
INSERT INTO `kunjungan` VALUES (1001, 'http://localhost/satpam/pendaftar', '::1', '2020-02-23', '2020-02-23 12:11:31', '2020-02-23 17:11:31');
INSERT INTO `kunjungan` VALUES (1002, 'http://localhost/satpam/download', '::1', '2020-02-23', '2020-02-23 12:11:35', '2020-02-23 17:11:35');
INSERT INTO `kunjungan` VALUES (1003, 'http://localhost/satpam/index.php', '::1', '2020-02-23', '2020-02-23 13:11:33', '2020-02-23 18:11:33');
INSERT INTO `kunjungan` VALUES (1004, 'http://localhost/satpam/index.php', '::1', '2020-02-23', '2020-02-23 13:19:02', '2020-02-23 18:19:02');
INSERT INTO `kunjungan` VALUES (1005, 'http://localhost/satpam/index.php', '::1', '2020-02-23', '2020-02-23 13:19:03', '2020-02-23 18:19:03');
INSERT INTO `kunjungan` VALUES (1006, 'http://localhost/satpam/galeri', '::1', '2020-02-23', '2020-02-23 13:19:23', '2020-02-23 18:19:23');
INSERT INTO `kunjungan` VALUES (1007, 'http://localhost/satpam/index.php', '::1', '2020-02-23', '2020-02-23 13:20:11', '2020-02-23 18:20:11');
INSERT INTO `kunjungan` VALUES (1008, 'http://localhost/satpam/berita/kategori/kegiatan', '::1', '2020-02-23', '2020-02-23 13:20:52', '2020-02-23 18:20:52');
INSERT INTO `kunjungan` VALUES (1009, 'http://localhost/satpam/berita/kategori/kegiatan', '::1', '2020-02-23', '2020-02-23 13:22:09', '2020-02-23 18:22:09');
INSERT INTO `kunjungan` VALUES (1010, 'http://localhost/satpam/index.php', '::1', '2020-02-23', '2020-02-23 13:37:52', '2020-02-23 18:37:52');
INSERT INTO `kunjungan` VALUES (1011, 'http://localhost/satpam/index.php', '::1', '2020-02-23', '2020-02-23 15:34:30', '2020-02-23 20:34:30');
INSERT INTO `kunjungan` VALUES (1012, 'http://localhost/satpam/index.php', '::1', '2020-02-23', '2020-02-23 15:39:03', '2020-02-23 20:39:03');
INSERT INTO `kunjungan` VALUES (1013, 'http://localhost/satpam/index.php', '::1', '2020-02-23', '2020-02-23 15:59:30', '2020-02-23 20:59:30');
INSERT INTO `kunjungan` VALUES (1014, 'http://localhost/satpam/index.php', '::1', '2020-02-24', '2020-02-24 02:25:31', '2020-02-24 07:25:31');
INSERT INTO `kunjungan` VALUES (1015, 'http://localhost/satpam/berita/read/pendaftaran-pelatihan-satpam', '::1', '2020-02-24', '2020-02-24 02:26:09', '2020-02-24 07:26:09');
INSERT INTO `kunjungan` VALUES (1016, 'http://localhost/satpam/index.php', '::1', '2020-02-24', '2020-02-24 02:26:17', '2020-02-24 07:26:17');
INSERT INTO `kunjungan` VALUES (1017, 'http://localhost/satpam/pendaftar', '::1', '2020-02-24', '2020-02-24 02:26:41', '2020-02-24 07:26:41');
INSERT INTO `kunjungan` VALUES (1018, 'http://localhost/satpam/kontak', '::1', '2020-02-24', '2020-02-24 02:27:05', '2020-02-24 07:27:05');
INSERT INTO `kunjungan` VALUES (1019, 'http://localhost/satpam/download', '::1', '2020-02-24', '2020-02-24 02:27:12', '2020-02-24 07:27:12');
INSERT INTO `kunjungan` VALUES (1020, 'http://localhost/satpam/fasilitas', '::1', '2020-02-24', '2020-02-24 02:27:45', '2020-02-24 07:27:45');
INSERT INTO `kunjungan` VALUES (1021, 'http://localhost/satpam/download', '::1', '2020-02-24', '2020-02-24 02:27:50', '2020-02-24 07:27:50');
INSERT INTO `kunjungan` VALUES (1022, 'http://localhost/satpam/pendaftar', '::1', '2020-02-24', '2020-02-24 02:28:05', '2020-02-24 07:28:05');
INSERT INTO `kunjungan` VALUES (1023, 'http://localhost/satpam/index.php', '::1', '2020-02-24', '2020-02-24 02:29:18', '2020-02-24 07:29:18');
INSERT INTO `kunjungan` VALUES (1024, 'http://localhost/satpam/index.php', '::1', '2020-02-24', '2020-02-24 02:38:49', '2020-02-24 07:38:49');
INSERT INTO `kunjungan` VALUES (1025, 'http://localhost/satpam/index.php', '::1', '2020-02-24', '2020-02-24 04:00:13', '2020-02-24 09:00:13');
INSERT INTO `kunjungan` VALUES (1026, 'http://localhost/satpam/pendaftar', '::1', '2020-02-24', '2020-02-24 04:00:18', '2020-02-24 09:00:18');
INSERT INTO `kunjungan` VALUES (1027, 'http://localhost/satpam/pendaftar', '::1', '2020-02-24', '2020-02-24 04:05:06', '2020-02-24 09:05:06');
INSERT INTO `kunjungan` VALUES (1028, 'http://localhost/satpam/pendaftar', '::1', '2020-02-24', '2020-02-24 04:05:41', '2020-02-24 09:05:41');
INSERT INTO `kunjungan` VALUES (1029, 'http://localhost/satpam/pendaftar', '::1', '2020-02-24', '2020-02-24 04:09:48', '2020-02-24 09:09:48');
INSERT INTO `kunjungan` VALUES (1030, 'http://localhost/satpam/pendaftar', '::1', '2020-02-24', '2020-02-24 04:10:03', '2020-02-24 09:10:03');
INSERT INTO `kunjungan` VALUES (1031, 'http://localhost/satpam/pendaftar', '::1', '2020-02-24', '2020-02-24 04:10:20', '2020-02-24 09:10:20');
INSERT INTO `kunjungan` VALUES (1032, 'http://localhost/satpam/pendaftar', '::1', '2020-02-24', '2020-02-24 04:12:39', '2020-02-24 09:12:39');
INSERT INTO `kunjungan` VALUES (1033, 'http://localhost/satpam/pendaftar', '::1', '2020-02-24', '2020-02-24 04:28:50', '2020-02-24 09:28:50');
INSERT INTO `kunjungan` VALUES (1034, 'http://localhost/satpam/pendaftar', '::1', '2020-02-24', '2020-02-24 04:30:45', '2020-02-24 09:30:45');
INSERT INTO `kunjungan` VALUES (1035, 'http://localhost/satpam/pendaftar', '::1', '2020-02-24', '2020-02-24 04:33:02', '2020-02-24 09:33:02');
INSERT INTO `kunjungan` VALUES (1036, 'http://localhost/satpam/index.php', '::1', '2020-02-24', '2020-02-24 04:33:18', '2020-02-24 09:33:18');
INSERT INTO `kunjungan` VALUES (1037, 'http://localhost/satpam/pendaftar', '::1', '2020-02-24', '2020-02-24 04:33:21', '2020-02-24 09:33:21');
INSERT INTO `kunjungan` VALUES (1038, 'http://localhost/satpam/pendaftar', '::1', '2020-02-24', '2020-02-24 04:37:07', '2020-02-24 09:37:07');
INSERT INTO `kunjungan` VALUES (1039, 'http://localhost/satpam/pendaftar', '::1', '2020-02-24', '2020-02-24 04:37:36', '2020-02-24 09:37:36');
INSERT INTO `kunjungan` VALUES (1040, 'http://localhost/satpam/pendaftar', '::1', '2020-02-24', '2020-02-24 09:23:17', '2020-02-24 14:23:17');
INSERT INTO `kunjungan` VALUES (1041, 'http://localhost/satpam/pendaftar', '::1', '2020-02-24', '2020-02-24 09:30:27', '2020-02-24 14:30:27');
INSERT INTO `kunjungan` VALUES (1042, 'http://localhost/satpam/pendaftar', '::1', '2020-02-24', '2020-02-24 09:37:02', '2020-02-24 14:37:02');
INSERT INTO `kunjungan` VALUES (1043, 'http://localhost/satpam/index.php', '::1', '2020-02-24', '2020-02-24 09:37:10', '2020-02-24 14:37:10');
INSERT INTO `kunjungan` VALUES (1044, 'http://localhost/satpam/pendaftar', '::1', '2020-02-24', '2020-02-24 09:37:15', '2020-02-24 14:37:15');
INSERT INTO `kunjungan` VALUES (1045, 'http://localhost/satpam/pendaftar', '::1', '2020-02-24', '2020-02-24 09:37:31', '2020-02-24 14:37:31');
INSERT INTO `kunjungan` VALUES (1046, 'http://localhost/satpam/pendaftar', '::1', '2020-02-24', '2020-02-24 09:57:39', '2020-02-24 14:57:39');
INSERT INTO `kunjungan` VALUES (1047, 'http://localhost/satpam/index.php', '::1', '2020-02-24', '2020-02-24 10:50:39', '2020-02-24 15:50:39');
INSERT INTO `kunjungan` VALUES (1048, 'http://localhost/satpam/pendaftar', '::1', '2020-02-24', '2020-02-24 13:55:53', '2020-02-24 18:55:53');
INSERT INTO `kunjungan` VALUES (1049, 'http://localhost/satpam/index.php', '::1', '2020-02-24', '2020-02-24 16:19:29', '2020-02-24 21:19:29');
INSERT INTO `kunjungan` VALUES (1050, 'http://localhost/satpam/index.php', '::1', '2020-02-25', '2020-02-25 09:22:55', '2020-02-25 14:22:55');
INSERT INTO `kunjungan` VALUES (1051, 'http://localhost/satpam/index.php', '::1', '2020-02-25', '2020-02-25 10:22:20', '2020-02-25 15:22:20');
INSERT INTO `kunjungan` VALUES (1052, 'http://localhost/satpam/fasilitas', '::1', '2020-02-25', '2020-02-25 10:22:25', '2020-02-25 15:22:25');
INSERT INTO `kunjungan` VALUES (1053, 'http://localhost/satpam/index.php', '::1', '2020-02-25', '2020-02-25 10:22:29', '2020-02-25 15:22:29');
INSERT INTO `kunjungan` VALUES (1054, 'http://localhost/satpam/pendaftar', '::1', '2020-02-25', '2020-02-25 10:34:51', '2020-02-25 15:34:51');
INSERT INTO `kunjungan` VALUES (1055, 'http://localhost/satpam/index.php', '::1', '2020-02-25', '2020-02-25 12:34:43', '2020-02-25 17:34:43');
INSERT INTO `kunjungan` VALUES (1056, 'http://localhost/satpam/berita/read/pendaftaran-pelatihan-satpam', '::1', '2020-02-25', '2020-02-25 12:34:53', '2020-02-25 17:34:53');
INSERT INTO `kunjungan` VALUES (1057, 'http://localhost/satpam/pendaftar', '::1', '2020-02-25', '2020-02-25 12:35:03', '2020-02-25 17:35:03');
INSERT INTO `kunjungan` VALUES (1058, 'http://localhost/satpam/index.php', '::1', '2020-02-25', '2020-02-25 12:41:52', '2020-02-25 17:41:52');
INSERT INTO `kunjungan` VALUES (1059, 'http://localhost/satpam/index.php', '::1', '2020-02-26', '2020-02-26 10:06:30', '2020-02-26 15:06:30');
INSERT INTO `kunjungan` VALUES (1060, 'http://localhost/satpam/index.php', '::1', '2020-02-26', '2020-02-26 13:10:36', '2020-02-26 18:10:36');
INSERT INTO `kunjungan` VALUES (1061, 'http://localhost/satpam/index.php', '::1', '2020-02-26', '2020-02-26 13:15:55', '2020-02-26 18:15:55');
INSERT INTO `kunjungan` VALUES (1062, 'http://localhost/satpam/index.php', '::1', '2020-02-26', '2020-02-26 13:17:13', '2020-02-26 18:17:13');
INSERT INTO `kunjungan` VALUES (1063, 'http://localhost/satpam/index.php', '::1', '2020-02-26', '2020-02-26 15:52:35', '2020-02-26 20:52:35');
INSERT INTO `kunjungan` VALUES (1064, 'http://localhost/satpam/index.php', '::1', '2020-02-26', '2020-02-26 15:52:48', '2020-02-26 20:52:48');
INSERT INTO `kunjungan` VALUES (1065, 'http://localhost/satpam/index.php', '::1', '2020-02-26', '2020-02-26 16:04:04', '2020-02-26 21:04:04');
INSERT INTO `kunjungan` VALUES (1066, 'http://localhost/satpam/kontak', '::1', '2020-02-26', '2020-02-26 16:04:16', '2020-02-26 21:04:16');
INSERT INTO `kunjungan` VALUES (1067, 'http://localhost/satpam/pendaftar', '::1', '2020-02-26', '2020-02-26 16:04:23', '2020-02-26 21:04:23');
INSERT INTO `kunjungan` VALUES (1068, 'http://localhost/satpam/download', '::1', '2020-02-26', '2020-02-26 16:05:19', '2020-02-26 21:05:19');
INSERT INTO `kunjungan` VALUES (1069, 'http://localhost/satpam/index.php', '::1', '2020-02-26', '2020-02-26 16:28:04', '2020-02-26 21:28:04');
INSERT INTO `kunjungan` VALUES (1070, 'http://localhost/satpam/index.php', '::1', '2020-02-26', '2020-02-26 16:33:57', '2020-02-26 21:33:57');

-- ----------------------------
-- Table structure for pekerjaan
-- ----------------------------
DROP TABLE IF EXISTS `pekerjaan`;
CREATE TABLE `pekerjaan`  (
  `id_pekerjaan` int(11) NOT NULL,
  `slug_pekerjaan` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `urutan` int(11) NOT NULL,
  `nama_pekerjaan` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `keterangan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pekerjaan
-- ----------------------------
INSERT INTO `pekerjaan` VALUES (1, 'karyawan-swasta', 1, 'Karyawan Swasta', NULL);
INSERT INTO `pekerjaan` VALUES (2, 'wirausaha', 2, 'Wirausaha', NULL);
INSERT INTO `pekerjaan` VALUES (3, 'pegawa-negeri-sipil-pns', 3, 'Pegawa Negeri Sipil (PNS)', NULL);
INSERT INTO `pekerjaan` VALUES (4, 'tni', 4, 'TNI', NULL);
INSERT INTO `pekerjaan` VALUES (5, 'polri', 5, 'POLRI', NULL);
INSERT INTO `pekerjaan` VALUES (6, 'ibu-rumah-tangga', 6, 'Ibu Rumah Tangga', NULL);
INSERT INTO `pekerjaan` VALUES (7, 'tidak-bekerja', 10, 'Tidak Bekerja', NULL);
INSERT INTO `pekerjaan` VALUES (8, 'guru-swasta', 7, 'Guru Swasta', NULL);
INSERT INTO `pekerjaan` VALUES (9, 'dosen-swasta', 8, 'Dosen Swasta', NULL);

-- ----------------------------
-- Table structure for pendaftaran
-- ----------------------------
DROP TABLE IF EXISTS `pendaftaran`;
CREATE TABLE `pendaftaran`  (
  `id_pendaftaran` int(11) NOT NULL AUTO_INCREMENT,
  `kode_pendaftaran` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `instansi_bujp` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `alamat_bujp` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `polres` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama` varchar(23) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tempat_tgl_lahir` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `alamat_rumah` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tinggi_badan` int(10) NULL DEFAULT NULL,
  `berat_badan` int(10) NULL DEFAULT NULL,
  `golongan_darah` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `no_ktp` int(40) NULL DEFAULT NULL,
  `no_npwp` int(40) NULL DEFAULT NULL,
  `email` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `no_hp` int(14) NULL DEFAULT NULL,
  `rumus_sidik_jari` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama_suami` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jumlah_anak` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama_orang_tua` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `sd_tahun` int(20) NULL DEFAULT NULL,
  `sltp_tahun` int(20) NULL DEFAULT NULL,
  `slta_tahun` int(20) NULL DEFAULT NULL,
  `diploma_tahun` int(20) NULL DEFAULT NULL,
  `sarjana` int(20) NULL DEFAULT NULL,
  `gada_pratama_tahun` int(20) NULL DEFAULT NULL,
  `no_ijazah_gada_pratama` int(40) NULL DEFAULT NULL,
  `gada_madya_tahun` int(20) NULL DEFAULT NULL,
  `no_ijazah_gada_madya` int(40) NULL DEFAULT NULL,
  `gada_utama_tahun` int(20) NULL DEFAULT NULL,
  `no_ijazah_gada_utama` int(40) NULL DEFAULT NULL,
  `spesialisasi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `no_sertifikat_spesialisasi` int(255) NULL DEFAULT NULL,
  `brivet` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `pengalaman_kerja_tni_polri` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `security` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tanda_jasa` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `catatan_khusus` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tgl_kedaluarsa` date NULL DEFAULT NULL,
  `tgl` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `status_bayar` varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 't',
  PRIMARY KEY (`id_pendaftaran`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of pendaftaran
-- ----------------------------
INSERT INTO `pendaftaran` VALUES (3, 'IDPDPL001', 'polres bandung', 'alun-alun kajen', 'kabupaten pekalongan', 'tegar satya negara', 'pekalongan 28  april 1999', 'desa jagung rt 03 rw 03', 80, 90, 'A', 80327963, 98932768, 'tegarsatyanegara.if@gmail.com', NULL, 'pop', '-', NULL, 'eko susilo', 2009, 2013, 2016, 0, 2020, 0, 0, 0, 0, 0, 0, 'popcroon', 2147483647, 'popo', 'ga pernah', 'ga pernah', NULL, 'programmer', NULL, '2020-02-09 00:00:00', 'y');
INSERT INTO `pendaftaran` VALUES (4, 'ID001', 'daerah pekalongan', 'kesesi pekalongan', 'pekalongan', 'tegar satya negara', 'pekalongan, 28 april 1999', 'desa jagung', 234, 60, 'A', 988888, 44444, 'tegarsatyanegara.if@gmail.com', NULL, 'e', 'tegar', '0', 'eko susilo', 2020, 2020, 2020, 2020, 2020, 2016, 1, 2017, 2, 2018, 3, 'ngopi', 4, 'hhhhnnn', 'gak ada', 'ada', 'ngopi bersama', 'backend developer', NULL, '2020-02-04 00:00:00', 'y');
INSERT INTO `pendaftaran` VALUES (5, 'IDPDPL002', 'perudahaan scurity pekalongan', 'pekalongan jawa barat', 'pekalongan', 'tegar satya negara', 'pekalongan 28  april 1999', 'desa jagung rt 03 rw 03 kecamatan kesesi', 180, 60, 'A', 23233, 333333, 'tegarsatyanegara.if@gmail.com', 2147483647, 'e', 'sadsad', '34345', 'eko susilo', 2020, 2020, 2020, 2020, 2020, 3333, 333, 3333, 33333, 212, 21121, 'vfvfv', 333, 'ffg', 'jnn', 'nbnbnn', 'nbnbnb', 'nbnbnbn', NULL, '2020-02-04 00:00:00', 'y');
INSERT INTO `pendaftaran` VALUES (6, 'IDPDPL001', 'instansi benar', 'pelatihan semarang', 'pekalongan', 'tegar satya negara', 'pekalongan 28  april 1999', 'desa jagung', 175, 60, 'A', 3260, 343, 'tegarsatyanegara.if@gmail.com', 2147483647, 'A', '-', '45', 'eko susilo', 2020, 2020, 2020, 2020, 2020, 222, 333, 3333, 44, 212, 21121, 'naik gunung', 9090, 'nnnnn', 'tidak ada', 'tidak pernah', 'ngopi', 'kkkk', NULL, '2020-02-06 00:00:00', 't');
INSERT INTO `pendaftaran` VALUES (7, 'IDPDPL001', 'instansi benar', 'pelatihan semarang', 'pekalongan', 'tegar satya negara', 'pekalongan 28  april 1999', 'desa jagung', 175, 60, 'A', 3260, 343, 'tegarsatyanegara.if@gmail.com', 2147483647, 'A', '-', '45', 'eko susilo', 2020, 2020, 2020, 2020, 2020, 222, 333, 3333, 44, 212, 21121, 'naik gunung', 9090, 'nnnnn', 'tidak ada', 'tidak pernah', 'ngopi', 'kkkk', NULL, '2020-02-06 00:00:00', 't');
INSERT INTO `pendaftaran` VALUES (8, 'IDPDPL001', 'instansi benar', 'pelatihan semarang', 'pekalongan', 'tegar satya negara', 'pekalongan 28  april 1999', 'desa jagung', 175, 60, 'A', 3260, 343, 'tegarsatyanegara.if@gmail.com', 2147483647, 'A', '-', '45', 'eko susilo', 2020, 2020, 2020, 2020, 2020, 222, 333, 3333, 44, 212, 21121, 'naik gunung', 9090, 'nnnnn', 'tidak ada', 'tidak pernah', 'ngopi', 'kkkk', NULL, '2020-02-06 00:00:00', 't');
INSERT INTO `pendaftaran` VALUES (9, 'ID001', 'pt. teknologi indonesia', 'ccc', 'ccccccc', 'xxxxx', 'pekalongan 28  april 1999', 'nnmmnmnmn', 175, 60, 'A', 3260, 343, 'tegarsatyanegara.if@gmail.com', 2147483647, 'A', 'sadsad', '45', 'eko susilo', 2020, 2020, 2020, 2020, 2020, 222, 333, 3333, 44, 212, 4555, 'nmnm', 9090, 'nmnmmm', 'nmmnmmmm', ',m,,,mmmmm', 'nmnmnmm', 'nmnmnmmmm', NULL, '2020-02-06 00:00:00', 't');

-- ----------------------------
-- Table structure for staff
-- ----------------------------
DROP TABLE IF EXISTS `staff`;
CREATE TABLE `staff`  (
  `id_staff` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NULL DEFAULT NULL,
  `id_kategori_staff` int(11) NULL DEFAULT NULL,
  `urutan` int(11) NULL DEFAULT NULL,
  `nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `alamat` varchar(300) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `telepon` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `website` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `password` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `password_hint` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `isi` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `jabatan` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `keahlian` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `gambar` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status_staff` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `keywords` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status_baca` enum('Sudah','Belum') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `status_tutor` enum('Ya','Tidak') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ip_address` varchar(24) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tempat_lahir` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tanggal_lahir` date NULL DEFAULT NULL,
  `tanggal` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id_staff`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 12 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of staff
-- ----------------------------
INSERT INTO `staff` VALUES (11, 4, NULL, 1, 'Tegar Satya Negara', 'Cileunyi Bandung ', '085711458242', 'tegarsatyanegara.online', 'tegarsatyanegara.if@gmail.com', NULL, NULL, NULL, 'Programmer', 'Backend Developer', 'petani.png', 'Yes', 'tegar satya negara', 'Sudah', 'Ya', '', 'Pekalongan', '1999-04-28', '2020-03-02 21:27:06');

-- ----------------------------
-- Table structure for sub_menu
-- ----------------------------
DROP TABLE IF EXISTS `sub_menu`;
CREATE TABLE `sub_menu`  (
  `id_sub_menu` int(11) NOT NULL AUTO_INCREMENT,
  `id_menu` int(11) NOT NULL,
  `nama_sub_menu` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `link` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `target` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `urutan` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_sub_menu`) USING BTREE,
  UNIQUE INDEX `link`(`link`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sub_menu
-- ----------------------------
INSERT INTO `sub_menu` VALUES (1, 1, 'Menu 1', 'http://localhost', '', 1);
INSERT INTO `sub_menu` VALUES (3, 1, 'Menu 2', 'http://localhost/1', '', 2);

-- ----------------------------
-- Table structure for up
-- ----------------------------
DROP TABLE IF EXISTS `up`;
CREATE TABLE `up`  (
  `id_up` int(11) NOT NULL AUTO_INCREMENT,
  `id_client` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nama_up` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `bagian` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `telepon` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `keterangan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `tanggal` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id_up`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of up
-- ----------------------------
INSERT INTO `up` VALUES (2, 3, 1, 'Rayyan Andoyo', 'Marketing', 'eflita@gmail.com', '(021) 27534579', 'adada', '2019-04-30 09:26:55');
INSERT INTO `up` VALUES (3, 3, 1, 'Izra', 'Keuangan', 'contact@nuansabaru.co.id', '0813 8841 0829', 'ok', '2019-04-30 09:19:51');
INSERT INTO `up` VALUES (4, 3, 1, 'Ef', 'a', 'surat@javawebmedia.co.id', '', '', '2019-04-30 09:27:09');

-- ----------------------------
-- Table structure for user_log
-- ----------------------------
DROP TABLE IF EXISTS `user_log`;
CREATE TABLE `user_log`  (
  `id_user_log` int(11) NOT NULL,
  `ip_address` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_user` int(11) NULL DEFAULT NULL,
  `username` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `akses_level` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `url` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jenis` varchar(24) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tanggal` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0)
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_log
-- ----------------------------
INSERT INTO `user_log` VALUES (1, '::1', 5, 'andoyo', '', 'http://localhost/dlp/admin/dasbor', 'Administrator', '2018-05-16 15:51:54');
INSERT INTO `user_log` VALUES (2, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor', 'Administrator', '2018-05-16 15:53:55');
INSERT INTO `user_log` VALUES (3, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor', 'Administrator', '2018-05-16 15:54:13');
INSERT INTO `user_log` VALUES (4, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor', 'Administrator', '2018-05-16 15:54:20');
INSERT INTO `user_log` VALUES (5, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-16 15:54:25');
INSERT INTO `user_log` VALUES (6, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-05-16 15:54:40');
INSERT INTO `user_log` VALUES (7, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-05-16 15:56:54');
INSERT INTO `user_log` VALUES (8, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor', 'Administrator', '2018-05-16 15:56:54');
INSERT INTO `user_log` VALUES (9, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/profil', 'Administrator', '2018-05-16 15:57:28');
INSERT INTO `user_log` VALUES (10, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-05-16 15:58:05');
INSERT INTO `user_log` VALUES (11, '::1', 2, 'andoyo', 'Users', 'http://localhost/dlp/member/profil', 'Member', '2018-05-16 15:58:07');
INSERT INTO `user_log` VALUES (12, '::1', 0, NULL, '', 'http://localhost/dlp/login/lupa', 'Administrator', '2018-05-16 16:17:00');
INSERT INTO `user_log` VALUES (13, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-05-16 16:17:03');
INSERT INTO `user_log` VALUES (14, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-05-16 16:17:38');
INSERT INTO `user_log` VALUES (15, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-16 16:17:38');
INSERT INTO `user_log` VALUES (16, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran', 'Administrator', '2018-05-16 16:17:56');
INSERT INTO `user_log` VALUES (17, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/cari', 'Administrator', '2018-05-16 16:18:00');
INSERT INTO `user_log` VALUES (18, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran', 'Administrator', '2018-05-16 16:18:03');
INSERT INTO `user_log` VALUES (19, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor/panduan', 'Administrator', '2018-05-16 16:18:14');
INSERT INTO `user_log` VALUES (20, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor/profil', 'Administrator', '2018-05-16 16:18:16');
INSERT INTO `user_log` VALUES (21, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-16 16:18:21');
INSERT INTO `user_log` VALUES (22, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-16 16:29:37');
INSERT INTO `user_log` VALUES (23, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-16 16:29:41');
INSERT INTO `user_log` VALUES (24, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran', 'Administrator', '2018-05-16 16:30:04');
INSERT INTO `user_log` VALUES (25, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/kelola/9', 'Administrator', '2018-05-16 16:30:06');
INSERT INTO `user_log` VALUES (26, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/excel/9', 'Administrator', '2018-05-16 16:30:22');
INSERT INTO `user_log` VALUES (27, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/kelola/9', 'Administrator', '2018-05-16 16:30:26');
INSERT INTO `user_log` VALUES (28, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/pdf/9', 'Administrator', '2018-05-16 16:30:28');
INSERT INTO `user_log` VALUES (29, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/member/profil', 'Administrator', '2018-05-16 17:58:49');
INSERT INTO `user_log` VALUES (30, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/kelola/9', 'Administrator', '2018-05-16 18:57:19');
INSERT INTO `user_log` VALUES (31, '::1', 0, '-', '-', 'http://localhost/dlp/member/login', '-', '2018-05-25 13:54:17');
INSERT INTO `user_log` VALUES (32, '::1', 0, '-', '-', 'http://localhost/dlp/member/login', '-', '2018-05-25 13:54:26');
INSERT INTO `user_log` VALUES (33, '::1', 0, '-', '-', 'http://localhost/dlp/member/login', '-', '2018-05-25 13:54:26');
INSERT INTO `user_log` VALUES (34, '::1', 0, '-', '-', 'http://localhost/dlp/member/login', '-', '2018-05-25 13:54:30');
INSERT INTO `user_log` VALUES (35, '::1', 0, '-', '-', 'http://localhost/dlp/member/login', '-', '2018-05-25 13:54:31');
INSERT INTO `user_log` VALUES (36, '::1', 0, '-', '-', 'http://localhost/dlp/member/login', '-', '2018-05-25 13:54:36');
INSERT INTO `user_log` VALUES (37, '::1', 0, '-', '-', 'http://localhost/dlp/member/login', '-', '2018-05-25 13:54:37');
INSERT INTO `user_log` VALUES (38, '::1', 0, '-', '-', 'http://localhost/dlp/member/login', '-', '2018-05-25 13:54:44');
INSERT INTO `user_log` VALUES (39, '::1', 0, '-', '-', 'http://localhost/dlp/member/login', '-', '2018-05-25 13:54:44');
INSERT INTO `user_log` VALUES (40, '::1', 0, '-', '-', 'http://localhost/dlp/member/login', '-', '2018-05-25 13:55:25');
INSERT INTO `user_log` VALUES (41, '::1', 2, 'andoyo', 'Users', 'http://localhost/dlp/member/dashboard', 'Member', '2018-05-25 13:55:25');
INSERT INTO `user_log` VALUES (42, '::1', 2, 'andoyo', 'Users', 'http://localhost/dlp/member/profil', 'Member', '2018-05-25 13:55:37');
INSERT INTO `user_log` VALUES (43, '::1', 2, 'andoyo', 'Users', 'http://localhost/dlp/member/profil/edit', 'Member', '2018-05-25 13:55:42');
INSERT INTO `user_log` VALUES (44, '::1', 2, 'andoyo', 'Users', 'http://localhost/dlp/member/login/logout', 'Member', '2018-05-25 13:56:44');
INSERT INTO `user_log` VALUES (45, '::1', 0, '-', '-', 'http://localhost/dlp/member/login', '-', '2018-05-25 13:56:44');
INSERT INTO `user_log` VALUES (46, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-05-25 13:56:49');
INSERT INTO `user_log` VALUES (47, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-05-25 13:56:54');
INSERT INTO `user_log` VALUES (48, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor', 'Administrator', '2018-05-25 13:56:54');
INSERT INTO `user_log` VALUES (49, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/user', 'Administrator', '2018-05-25 13:57:10');
INSERT INTO `user_log` VALUES (50, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-05-25 13:57:24');
INSERT INTO `user_log` VALUES (51, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-05-25 13:57:28');
INSERT INTO `user_log` VALUES (52, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-05-25 13:57:28');
INSERT INTO `user_log` VALUES (53, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-05-25 13:57:40');
INSERT INTO `user_log` VALUES (54, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-25 13:57:40');
INSERT INTO `user_log` VALUES (55, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran', 'Administrator', '2018-05-25 13:57:45');
INSERT INTO `user_log` VALUES (56, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/kelola/9', 'Administrator', '2018-05-25 13:57:48');
INSERT INTO `user_log` VALUES (57, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/kelola/9', 'Administrator', '2018-05-25 14:00:09');
INSERT INTO `user_log` VALUES (58, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/detail/2', 'Administrator', '2018-05-25 14:00:19');
INSERT INTO `user_log` VALUES (59, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/kelola/9', 'Administrator', '2018-05-25 14:01:02');
INSERT INTO `user_log` VALUES (60, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/kelola/9', 'Administrator', '2018-05-25 14:01:22');
INSERT INTO `user_log` VALUES (61, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/kelola/9', 'Administrator', '2018-05-25 14:02:10');
INSERT INTO `user_log` VALUES (62, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/kelola/9', 'Administrator', '2018-05-25 14:02:25');
INSERT INTO `user_log` VALUES (63, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/kelola/9', 'Administrator', '2018-05-25 14:02:36');
INSERT INTO `user_log` VALUES (64, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/approval', 'Administrator', '2018-05-25 14:02:47');
INSERT INTO `user_log` VALUES (65, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/kelola/9', 'Administrator', '2018-05-25 14:02:48');
INSERT INTO `user_log` VALUES (66, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/akses/2', 'Administrator', '2018-05-25 14:02:55');
INSERT INTO `user_log` VALUES (67, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/cetak/2', 'Administrator', '2018-05-25 14:03:03');
INSERT INTO `user_log` VALUES (68, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/excel/9', 'Administrator', '2018-05-25 14:03:28');
INSERT INTO `user_log` VALUES (69, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/kelola/9', 'Administrator', '2018-05-25 14:03:31');
INSERT INTO `user_log` VALUES (70, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/pdf/9', 'Administrator', '2018-05-25 14:09:27');
INSERT INTO `user_log` VALUES (71, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/pdf/9', 'Administrator', '2018-05-25 14:11:19');
INSERT INTO `user_log` VALUES (72, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/pdf/9', 'Administrator', '2018-05-25 14:12:41');
INSERT INTO `user_log` VALUES (73, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/pdf/9', 'Administrator', '2018-05-25 14:13:56');
INSERT INTO `user_log` VALUES (74, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/kelola/9', 'Administrator', '2018-05-25 14:14:30');
INSERT INTO `user_log` VALUES (75, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/export_pdf/9', 'Administrator', '2018-05-25 14:14:36');
INSERT INTO `user_log` VALUES (76, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/export_pdf/9', 'Administrator', '2018-05-25 14:15:25');
INSERT INTO `user_log` VALUES (77, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/kelola/9', 'Administrator', '2018-05-25 14:15:56');
INSERT INTO `user_log` VALUES (78, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/export_pdf/9', 'Administrator', '2018-05-25 14:15:58');
INSERT INTO `user_log` VALUES (79, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/export_pdf/9', 'Administrator', '2018-05-25 14:16:59');
INSERT INTO `user_log` VALUES (80, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/export_pdf/9', 'Administrator', '2018-05-25 14:17:30');
INSERT INTO `user_log` VALUES (81, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/export_pdf/9', 'Administrator', '2018-05-25 14:17:50');
INSERT INTO `user_log` VALUES (82, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/export_pdf/9', 'Administrator', '2018-05-25 14:18:27');
INSERT INTO `user_log` VALUES (83, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/export_pdf/9', 'Administrator', '2018-05-25 14:18:44');
INSERT INTO `user_log` VALUES (84, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/export_pdf/9', 'Administrator', '2018-05-25 14:18:55');
INSERT INTO `user_log` VALUES (85, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/kelola/9', 'Administrator', '2018-05-25 14:19:54');
INSERT INTO `user_log` VALUES (86, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/export_pdf/9', 'Administrator', '2018-05-25 14:19:55');
INSERT INTO `user_log` VALUES (87, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/export_pdf/9', 'Administrator', '2018-05-25 14:20:19');
INSERT INTO `user_log` VALUES (88, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/export_pdf/9', 'Administrator', '2018-05-25 14:21:43');
INSERT INTO `user_log` VALUES (89, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/kelola/9', 'Administrator', '2018-05-25 14:22:55');
INSERT INTO `user_log` VALUES (90, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/export_pdf/9', 'Administrator', '2018-05-25 14:30:07');
INSERT INTO `user_log` VALUES (91, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/export_excel/9', 'Administrator', '2018-05-25 14:37:26');
INSERT INTO `user_log` VALUES (92, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/cari', 'Administrator', '2018-05-25 14:39:39');
INSERT INTO `user_log` VALUES (93, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/kelola/9', 'Administrator', '2018-05-25 14:39:57');
INSERT INTO `user_log` VALUES (94, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor/profil', 'Administrator', '2018-05-25 14:40:01');
INSERT INTO `user_log` VALUES (95, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran', 'Administrator', '2018-05-25 14:40:04');
INSERT INTO `user_log` VALUES (96, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran', 'Administrator', '2018-05-25 14:44:28');
INSERT INTO `user_log` VALUES (97, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran', 'Administrator', '2018-05-25 14:44:50');
INSERT INTO `user_log` VALUES (98, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran', 'Administrator', '2018-05-25 14:45:13');
INSERT INTO `user_log` VALUES (99, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran', 'Administrator', '2018-05-25 14:46:41');
INSERT INTO `user_log` VALUES (100, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran', 'Administrator', '2018-05-25 14:47:06');
INSERT INTO `user_log` VALUES (101, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/kelola/9', 'Administrator', '2018-05-25 14:47:40');
INSERT INTO `user_log` VALUES (102, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/approval', 'Administrator', '2018-05-25 14:47:46');
INSERT INTO `user_log` VALUES (103, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/kelola/9', 'Administrator', '2018-05-25 14:47:46');
INSERT INTO `user_log` VALUES (104, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-25 14:47:49');
INSERT INTO `user_log` VALUES (105, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran', 'Administrator', '2018-05-25 14:47:53');
INSERT INTO `user_log` VALUES (106, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran', 'Administrator', '2018-05-25 14:50:29');
INSERT INTO `user_log` VALUES (107, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-25 14:52:15');
INSERT INTO `user_log` VALUES (108, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-25 14:53:09');
INSERT INTO `user_log` VALUES (109, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-25 14:54:43');
INSERT INTO `user_log` VALUES (110, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-25 14:54:57');
INSERT INTO `user_log` VALUES (111, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-25 14:55:19');
INSERT INTO `user_log` VALUES (112, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-25 14:55:39');
INSERT INTO `user_log` VALUES (113, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-25 14:56:31');
INSERT INTO `user_log` VALUES (114, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-25 14:56:45');
INSERT INTO `user_log` VALUES (115, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-25 15:01:11');
INSERT INTO `user_log` VALUES (116, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-25 15:01:47');
INSERT INTO `user_log` VALUES (117, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-25 15:03:44');
INSERT INTO `user_log` VALUES (118, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-25 15:04:33');
INSERT INTO `user_log` VALUES (119, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-25 15:07:53');
INSERT INTO `user_log` VALUES (120, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-25 15:08:28');
INSERT INTO `user_log` VALUES (121, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-25 15:09:43');
INSERT INTO `user_log` VALUES (122, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-25 15:10:22');
INSERT INTO `user_log` VALUES (123, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-25 15:10:55');
INSERT INTO `user_log` VALUES (124, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-25 15:20:21');
INSERT INTO `user_log` VALUES (125, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-25 15:21:52');
INSERT INTO `user_log` VALUES (126, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-25 15:22:10');
INSERT INTO `user_log` VALUES (127, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-25 15:23:52');
INSERT INTO `user_log` VALUES (128, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-25 15:24:22');
INSERT INTO `user_log` VALUES (129, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-25 15:25:22');
INSERT INTO `user_log` VALUES (130, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-25 15:26:03');
INSERT INTO `user_log` VALUES (131, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-25 15:26:28');
INSERT INTO `user_log` VALUES (132, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-25 15:29:01');
INSERT INTO `user_log` VALUES (133, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran', 'Administrator', '2018-05-25 15:29:16');
INSERT INTO `user_log` VALUES (134, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-25 15:47:50');
INSERT INTO `user_log` VALUES (135, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-25 15:53:17');
INSERT INTO `user_log` VALUES (136, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/cari', 'Administrator', '2018-05-25 15:53:36');
INSERT INTO `user_log` VALUES (137, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-25 15:54:06');
INSERT INTO `user_log` VALUES (138, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/cari', 'Administrator', '2018-05-25 15:54:37');
INSERT INTO `user_log` VALUES (139, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/cari', 'Administrator', '2018-05-25 15:56:06');
INSERT INTO `user_log` VALUES (140, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/cari', 'Administrator', '2018-05-25 15:59:54');
INSERT INTO `user_log` VALUES (141, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/cari', 'Administrator', '2018-05-25 16:00:15');
INSERT INTO `user_log` VALUES (142, '127.0.0.1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/cari', 'Administrator', '2018-05-25 16:02:18');
INSERT INTO `user_log` VALUES (143, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/cari', 'Administrator', '2018-05-25 16:02:45');
INSERT INTO `user_log` VALUES (144, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-25 16:06:35');
INSERT INTO `user_log` VALUES (145, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/kelola/9', 'Administrator', '2018-05-25 16:08:48');
INSERT INTO `user_log` VALUES (146, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/pendaftaran/cari', 'Administrator', '2018-05-25 16:09:05');
INSERT INTO `user_log` VALUES (147, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-05-25 16:11:03');
INSERT INTO `user_log` VALUES (148, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-05-25 16:11:06');
INSERT INTO `user_log` VALUES (149, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor', 'Administrator', '2018-05-25 16:11:06');
INSERT INTO `user_log` VALUES (150, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/user', 'Administrator', '2018-05-25 16:11:11');
INSERT INTO `user_log` VALUES (151, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/user/tambah', 'Administrator', '2018-05-25 16:11:15');
INSERT INTO `user_log` VALUES (152, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/user', 'Administrator', '2018-05-25 16:11:23');
INSERT INTO `user_log` VALUES (153, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/user/tambah', 'Administrator', '2018-05-25 16:11:29');
INSERT INTO `user_log` VALUES (154, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/user/tambah', 'Administrator', '2018-05-25 16:13:28');
INSERT INTO `user_log` VALUES (155, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/user', 'Administrator', '2018-05-25 16:13:29');
INSERT INTO `user_log` VALUES (156, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-05-25 16:13:32');
INSERT INTO `user_log` VALUES (157, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-05-25 16:13:36');
INSERT INTO `user_log` VALUES (158, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/admin/dasbor', 'Administrator', '2018-05-25 16:13:37');
INSERT INTO `user_log` VALUES (159, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-25 16:13:50');
INSERT INTO `user_log` VALUES (160, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-05-25 16:14:11');
INSERT INTO `user_log` VALUES (161, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-05-25 16:14:12');
INSERT INTO `user_log` VALUES (162, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor', 'Administrator', '2018-05-25 16:14:13');
INSERT INTO `user_log` VALUES (163, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/user', 'Administrator', '2018-05-25 16:14:17');
INSERT INTO `user_log` VALUES (164, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-05-25 16:14:37');
INSERT INTO `user_log` VALUES (165, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-05-25 16:14:41');
INSERT INTO `user_log` VALUES (166, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/dasbor', 'Administrator', '2018-05-25 16:14:41');
INSERT INTO `user_log` VALUES (167, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/admin/dasbor', 'Administrator', '2018-05-25 16:15:37');
INSERT INTO `user_log` VALUES (168, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/admin/dasbor', 'Administrator', '2018-05-25 16:16:20');
INSERT INTO `user_log` VALUES (169, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/dasbor', 'Administrator', '2018-05-25 16:16:40');
INSERT INTO `user_log` VALUES (170, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/dasbor', 'Administrator', '2018-05-25 16:20:34');
INSERT INTO `user_log` VALUES (171, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/dasbor', 'Administrator', '2018-05-25 16:21:27');
INSERT INTO `user_log` VALUES (172, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran/kelola/9', 'Administrator', '2018-05-25 16:21:30');
INSERT INTO `user_log` VALUES (173, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/dasbor', 'Administrator', '2018-05-25 16:21:36');
INSERT INTO `user_log` VALUES (174, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran/kelola/9', 'Administrator', '2018-05-25 16:21:40');
INSERT INTO `user_log` VALUES (175, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran/kelola/9', 'Administrator', '2018-05-25 16:25:21');
INSERT INTO `user_log` VALUES (176, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran', 'Administrator', '2018-05-25 16:25:24');
INSERT INTO `user_log` VALUES (177, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran', 'Administrator', '2018-05-25 16:25:45');
INSERT INTO `user_log` VALUES (178, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran', 'Administrator', '2018-05-25 16:26:14');
INSERT INTO `user_log` VALUES (179, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran', 'Administrator', '2018-05-25 16:26:47');
INSERT INTO `user_log` VALUES (180, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran/kelola/9', 'Administrator', '2018-05-25 16:26:49');
INSERT INTO `user_log` VALUES (181, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran', 'Administrator', '2018-05-25 16:26:54');
INSERT INTO `user_log` VALUES (182, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran/kelola/9', 'Administrator', '2018-05-25 16:27:09');
INSERT INTO `user_log` VALUES (183, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran/kelola/9', 'Administrator', '2018-05-25 16:27:51');
INSERT INTO `user_log` VALUES (184, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran/kelola/9', 'Administrator', '2018-05-25 16:30:18');
INSERT INTO `user_log` VALUES (185, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran/kelola/9', 'Administrator', '2018-05-25 16:33:34');
INSERT INTO `user_log` VALUES (186, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran/kelola/9', 'Administrator', '2018-05-25 16:34:12');
INSERT INTO `user_log` VALUES (187, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran/approval', 'Administrator', '2018-05-25 16:35:02');
INSERT INTO `user_log` VALUES (188, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran/kelola/9', 'Administrator', '2018-05-25 16:35:02');
INSERT INTO `user_log` VALUES (189, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran/kelola/9', 'Administrator', '2018-05-25 16:36:13');
INSERT INTO `user_log` VALUES (190, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran/approval', 'Administrator', '2018-05-25 16:36:18');
INSERT INTO `user_log` VALUES (191, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran/kelola/9', 'Administrator', '2018-05-25 16:36:19');
INSERT INTO `user_log` VALUES (192, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran/export_pdf/9', 'Administrator', '2018-05-25 16:36:23');
INSERT INTO `user_log` VALUES (193, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran/export_pdf/9', 'Administrator', '2018-05-25 16:37:41');
INSERT INTO `user_log` VALUES (194, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran/export_pdf/9', 'Administrator', '2018-05-25 16:38:08');
INSERT INTO `user_log` VALUES (195, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran/export_pdf/9', 'Administrator', '2018-05-25 16:38:51');
INSERT INTO `user_log` VALUES (196, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran/kelola/9', 'Administrator', '2018-05-25 16:39:05');
INSERT INTO `user_log` VALUES (197, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran/export_pdf/9', 'Administrator', '2018-05-25 16:39:06');
INSERT INTO `user_log` VALUES (198, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran/export_pdf/9', 'Administrator', '2018-05-25 16:39:45');
INSERT INTO `user_log` VALUES (199, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran/export_pdf/9', 'Administrator', '2018-05-25 16:40:38');
INSERT INTO `user_log` VALUES (200, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran/kelola/9', 'Administrator', '2018-05-25 16:41:56');
INSERT INTO `user_log` VALUES (201, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran/export_pdf/9', 'Administrator', '2018-05-25 16:42:05');
INSERT INTO `user_log` VALUES (202, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran/export_excel/9', 'Administrator', '2018-05-25 16:43:23');
INSERT INTO `user_log` VALUES (203, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-05-25 16:45:10');
INSERT INTO `user_log` VALUES (204, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-05-25 16:45:17');
INSERT INTO `user_log` VALUES (205, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-25 16:45:18');
INSERT INTO `user_log` VALUES (206, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-25 16:49:34');
INSERT INTO `user_log` VALUES (207, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-25 16:50:12');
INSERT INTO `user_log` VALUES (208, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-25 16:50:40');
INSERT INTO `user_log` VALUES (209, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-05-25 16:52:04');
INSERT INTO `user_log` VALUES (210, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-05-25 16:52:14');
INSERT INTO `user_log` VALUES (211, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/dasbor', 'Administrator', '2018-05-25 16:52:14');
INSERT INTO `user_log` VALUES (212, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran/kelola/9', 'Administrator', '2018-05-25 16:52:22');
INSERT INTO `user_log` VALUES (213, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran/cari', 'Administrator', '2018-05-25 17:58:15');
INSERT INTO `user_log` VALUES (214, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran/cari', 'Administrator', '2018-05-25 19:20:54');
INSERT INTO `user_log` VALUES (215, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran/cari', 'Administrator', '2018-05-25 19:21:44');
INSERT INTO `user_log` VALUES (216, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran/cari', 'Administrator', '2018-05-25 19:26:03');
INSERT INTO `user_log` VALUES (217, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran/cari', 'Administrator', '2018-05-25 19:26:05');
INSERT INTO `user_log` VALUES (218, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran/cari', 'Administrator', '2018-05-25 19:26:52');
INSERT INTO `user_log` VALUES (219, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran/cari', 'Administrator', '2018-05-25 19:27:06');
INSERT INTO `user_log` VALUES (220, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran/cari', 'Administrator', '2018-05-25 19:28:18');
INSERT INTO `user_log` VALUES (221, '::1', 13, 'ugadjahmada', 'Universitas', 'http://localhost/dlp/kampus/pendaftaran/cari', 'Administrator', '2018-05-25 19:28:26');
INSERT INTO `user_log` VALUES (222, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-05-25 19:30:29');
INSERT INTO `user_log` VALUES (223, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-05-25 19:30:59');
INSERT INTO `user_log` VALUES (224, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor', 'Administrator', '2018-05-25 19:31:00');
INSERT INTO `user_log` VALUES (225, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-25 19:31:05');
INSERT INTO `user_log` VALUES (226, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-25 19:40:14');
INSERT INTO `user_log` VALUES (227, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-25 19:40:30');
INSERT INTO `user_log` VALUES (228, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/kelola/9', 'Administrator', '2018-05-25 19:41:25');
INSERT INTO `user_log` VALUES (229, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/kelola/9', 'Administrator', '2018-05-25 19:42:08');
INSERT INTO `user_log` VALUES (230, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/kelola/9', 'Administrator', '2018-05-25 19:45:59');
INSERT INTO `user_log` VALUES (231, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/kelola/9', 'Administrator', '2018-05-25 19:47:45');
INSERT INTO `user_log` VALUES (232, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/provinsi/31/9', 'Administrator', '2018-05-25 19:48:10');
INSERT INTO `user_log` VALUES (233, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/provinsi/31/9', 'Administrator', '2018-05-25 19:53:22');
INSERT INTO `user_log` VALUES (234, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/provinsi/31/9', 'Administrator', '2018-05-25 19:53:39');
INSERT INTO `user_log` VALUES (235, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/provinsi/31/9', 'Administrator', '2018-05-25 19:54:04');
INSERT INTO `user_log` VALUES (236, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/provinsi/31/9', 'Administrator', '2018-05-25 19:55:20');
INSERT INTO `user_log` VALUES (237, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/provinsi/31/9', 'Administrator', '2018-05-25 19:57:10');
INSERT INTO `user_log` VALUES (238, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/provinsi/31/9', 'Administrator', '2018-05-25 20:02:00');
INSERT INTO `user_log` VALUES (239, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-25 20:02:09');
INSERT INTO `user_log` VALUES (240, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/kelola/9', 'Administrator', '2018-05-25 20:06:28');
INSERT INTO `user_log` VALUES (241, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-25 20:06:38');
INSERT INTO `user_log` VALUES (242, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/kelola/9', 'Administrator', '2018-05-25 20:06:47');
INSERT INTO `user_log` VALUES (243, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/kelola/9', 'Administrator', '2018-05-25 20:09:29');
INSERT INTO `user_log` VALUES (244, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/kelola/9', 'Administrator', '2018-05-25 20:09:42');
INSERT INTO `user_log` VALUES (245, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-25 20:10:58');
INSERT INTO `user_log` VALUES (246, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/kelola/8', 'Administrator', '2018-05-25 20:11:01');
INSERT INTO `user_log` VALUES (247, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-25 20:11:03');
INSERT INTO `user_log` VALUES (248, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-25 20:12:01');
INSERT INTO `user_log` VALUES (249, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/kelola/9', 'Administrator', '2018-05-25 20:14:29');
INSERT INTO `user_log` VALUES (250, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/gelombang', 'Administrator', '2018-05-25 20:14:55');
INSERT INTO `user_log` VALUES (251, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/gelombang/delete/8', 'Administrator', '2018-05-25 20:15:02');
INSERT INTO `user_log` VALUES (252, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/gelombang', 'Administrator', '2018-05-25 20:15:02');
INSERT INTO `user_log` VALUES (253, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-25 20:15:05');
INSERT INTO `user_log` VALUES (254, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-05-29 10:58:59');
INSERT INTO `user_log` VALUES (255, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-05-29 10:59:04');
INSERT INTO `user_log` VALUES (256, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor', 'Administrator', '2018-05-29 10:59:04');
INSERT INTO `user_log` VALUES (257, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-29 10:59:12');
INSERT INTO `user_log` VALUES (258, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/kelola/9', 'Administrator', '2018-05-29 10:59:15');
INSERT INTO `user_log` VALUES (259, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/provinsi/31/9', 'Administrator', '2018-05-29 10:59:20');
INSERT INTO `user_log` VALUES (260, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/kelola/9', 'Administrator', '2018-05-29 10:59:25');
INSERT INTO `user_log` VALUES (261, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-29 10:59:29');
INSERT INTO `user_log` VALUES (262, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-29 11:01:54');
INSERT INTO `user_log` VALUES (263, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-29 11:02:44');
INSERT INTO `user_log` VALUES (264, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-29 11:02:56');
INSERT INTO `user_log` VALUES (265, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-29 11:03:11');
INSERT INTO `user_log` VALUES (266, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-29 11:03:20');
INSERT INTO `user_log` VALUES (267, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-29 11:03:55');
INSERT INTO `user_log` VALUES (268, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-29 11:04:27');
INSERT INTO `user_log` VALUES (269, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-29 11:04:39');
INSERT INTO `user_log` VALUES (270, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-29 11:04:57');
INSERT INTO `user_log` VALUES (271, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-29 11:05:35');
INSERT INTO `user_log` VALUES (272, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-29 11:07:04');
INSERT INTO `user_log` VALUES (273, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-29 11:08:16');
INSERT INTO `user_log` VALUES (274, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-29 11:09:21');
INSERT INTO `user_log` VALUES (275, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-29 11:09:52');
INSERT INTO `user_log` VALUES (276, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-29 11:10:22');
INSERT INTO `user_log` VALUES (277, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/kelola/9', 'Administrator', '2018-05-29 11:10:35');
INSERT INTO `user_log` VALUES (278, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-29 11:10:39');
INSERT INTO `user_log` VALUES (279, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-29 11:11:16');
INSERT INTO `user_log` VALUES (280, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-29 11:11:30');
INSERT INTO `user_log` VALUES (281, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/kelola/9', 'Administrator', '2018-05-29 11:12:14');
INSERT INTO `user_log` VALUES (282, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-29 11:12:20');
INSERT INTO `user_log` VALUES (283, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-29 11:12:46');
INSERT INTO `user_log` VALUES (284, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-29 11:13:39');
INSERT INTO `user_log` VALUES (285, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-29 11:14:18');
INSERT INTO `user_log` VALUES (286, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/export_excel/9', 'Administrator', '2018-05-29 11:14:30');
INSERT INTO `user_log` VALUES (287, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-29 11:14:34');
INSERT INTO `user_log` VALUES (288, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-29 11:14:58');
INSERT INTO `user_log` VALUES (289, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-29 11:17:29');
INSERT INTO `user_log` VALUES (290, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-29 11:18:24');
INSERT INTO `user_log` VALUES (291, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-29 11:18:59');
INSERT INTO `user_log` VALUES (292, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-29 11:19:15');
INSERT INTO `user_log` VALUES (293, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-29 11:19:36');
INSERT INTO `user_log` VALUES (294, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-29 11:19:55');
INSERT INTO `user_log` VALUES (295, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-29 11:20:06');
INSERT INTO `user_log` VALUES (296, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-29 11:21:00');
INSERT INTO `user_log` VALUES (297, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/kelola/9', 'Administrator', '2018-05-29 11:51:56');
INSERT INTO `user_log` VALUES (298, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-29 11:52:05');
INSERT INTO `user_log` VALUES (299, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/kelola/9', 'Administrator', '2018-05-29 11:52:09');
INSERT INTO `user_log` VALUES (300, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-29 11:52:15');
INSERT INTO `user_log` VALUES (301, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/kelola/9', 'Administrator', '2018-05-29 11:52:24');
INSERT INTO `user_log` VALUES (302, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/provinsi/31/9', 'Administrator', '2018-05-29 11:52:26');
INSERT INTO `user_log` VALUES (303, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit/1', 'Administrator', '2018-05-29 11:52:33');
INSERT INTO `user_log` VALUES (304, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/provinsi/31/9', 'Administrator', '2018-05-29 11:52:36');
INSERT INTO `user_log` VALUES (305, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/kelola/9', 'Administrator', '2018-05-29 11:52:43');
INSERT INTO `user_log` VALUES (306, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-29 11:53:45');
INSERT INTO `user_log` VALUES (307, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-29 11:54:00');
INSERT INTO `user_log` VALUES (308, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/kelola/9', 'Administrator', '2018-05-29 11:55:58');
INSERT INTO `user_log` VALUES (309, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-29 11:56:03');
INSERT INTO `user_log` VALUES (310, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/export_excel/9', 'Administrator', '2018-05-29 11:56:09');
INSERT INTO `user_log` VALUES (311, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-29 11:58:32');
INSERT INTO `user_log` VALUES (312, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/export_excel/9', 'Administrator', '2018-05-29 11:58:36');
INSERT INTO `user_log` VALUES (313, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/export_excel/9', 'Administrator', '2018-05-29 12:00:20');
INSERT INTO `user_log` VALUES (314, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/export_excel/9', 'Administrator', '2018-05-29 12:02:25');
INSERT INTO `user_log` VALUES (315, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/export_excel/9', 'Administrator', '2018-05-29 12:02:49');
INSERT INTO `user_log` VALUES (316, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/export_excel/9', 'Administrator', '2018-05-29 12:03:25');
INSERT INTO `user_log` VALUES (317, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-29 12:06:38');
INSERT INTO `user_log` VALUES (318, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/export_excel/9', 'Administrator', '2018-05-29 12:06:41');
INSERT INTO `user_log` VALUES (319, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/export_excel/9', 'Administrator', '2018-05-29 12:08:07');
INSERT INTO `user_log` VALUES (320, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/export_pdf/9', 'Administrator', '2018-05-29 12:10:25');
INSERT INTO `user_log` VALUES (321, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/export_pdf/9', 'Administrator', '2018-05-29 12:10:44');
INSERT INTO `user_log` VALUES (322, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/export_pdf/9', 'Administrator', '2018-05-29 12:12:02');
INSERT INTO `user_log` VALUES (323, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/export_pdf/9', 'Administrator', '2018-05-29 12:12:24');
INSERT INTO `user_log` VALUES (324, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/export_pdf/9', 'Administrator', '2018-05-29 12:12:26');
INSERT INTO `user_log` VALUES (325, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-29 12:12:33');
INSERT INTO `user_log` VALUES (326, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/export_pdf/9', 'Administrator', '2018-05-29 12:12:39');
INSERT INTO `user_log` VALUES (327, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/export_pdf/9', 'Administrator', '2018-05-29 12:12:43');
INSERT INTO `user_log` VALUES (328, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/export_pdf/9', 'Administrator', '2018-05-29 12:14:19');
INSERT INTO `user_log` VALUES (329, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/export_pdf/9', 'Administrator', '2018-05-29 12:14:21');
INSERT INTO `user_log` VALUES (330, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/export_pdf/9', 'Administrator', '2018-05-29 12:14:47');
INSERT INTO `user_log` VALUES (331, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/export_pdf/9', 'Administrator', '2018-05-29 12:15:05');
INSERT INTO `user_log` VALUES (332, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/export_pdf/9', 'Administrator', '2018-05-29 12:15:08');
INSERT INTO `user_log` VALUES (333, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/export_pdf/9', 'Administrator', '2018-05-29 12:15:25');
INSERT INTO `user_log` VALUES (334, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/export_pdf/9', 'Administrator', '2018-05-29 12:15:28');
INSERT INTO `user_log` VALUES (335, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/cetak/9', 'Administrator', '2018-05-29 12:16:57');
INSERT INTO `user_log` VALUES (336, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/cetak/9', 'Administrator', '2018-05-29 12:16:59');
INSERT INTO `user_log` VALUES (337, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-29 12:17:04');
INSERT INTO `user_log` VALUES (338, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/cetak_semua/9', 'Administrator', '2018-05-29 12:17:06');
INSERT INTO `user_log` VALUES (339, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/cetak_semua/9', 'Administrator', '2018-05-29 12:17:15');
INSERT INTO `user_log` VALUES (340, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/cetak_semua/9', 'Administrator', '2018-05-29 12:17:47');
INSERT INTO `user_log` VALUES (341, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/export_pdf/9', 'Administrator', '2018-05-29 12:20:58');
INSERT INTO `user_log` VALUES (342, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/export_pdf/9', 'Administrator', '2018-05-29 12:21:03');
INSERT INTO `user_log` VALUES (343, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-29 12:41:12');
INSERT INTO `user_log` VALUES (344, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-29 12:42:25');
INSERT INTO `user_log` VALUES (345, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/1', 'Administrator', '2018-05-29 12:42:33');
INSERT INTO `user_log` VALUES (346, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-29 12:43:46');
INSERT INTO `user_log` VALUES (347, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-29 12:44:00');
INSERT INTO `user_log` VALUES (348, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-05-29 12:45:59');
INSERT INTO `user_log` VALUES (349, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-05-29 12:47:14');
INSERT INTO `user_log` VALUES (350, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-05-30 02:14:41');
INSERT INTO `user_log` VALUES (351, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-05-30 02:20:38');
INSERT INTO `user_log` VALUES (352, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor', 'Administrator', '2018-05-30 02:20:38');
INSERT INTO `user_log` VALUES (353, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-30 02:21:02');
INSERT INTO `user_log` VALUES (354, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/cetak_semua/9', 'Administrator', '2018-05-30 02:21:06');
INSERT INTO `user_log` VALUES (355, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-30 02:21:22');
INSERT INTO `user_log` VALUES (356, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/2', 'Administrator', '2018-05-30 02:21:33');
INSERT INTO `user_log` VALUES (357, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/2', 'Administrator', '2018-05-30 02:22:03');
INSERT INTO `user_log` VALUES (358, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/2', 'Administrator', '2018-05-30 02:22:28');
INSERT INTO `user_log` VALUES (359, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/2', 'Administrator', '2018-05-30 02:22:49');
INSERT INTO `user_log` VALUES (360, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/2', 'Administrator', '2018-05-30 02:23:09');
INSERT INTO `user_log` VALUES (361, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/2', 'Administrator', '2018-05-30 02:23:17');
INSERT INTO `user_log` VALUES (362, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/detail/1', 'Administrator', '2018-05-30 02:26:24');
INSERT INTO `user_log` VALUES (363, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/detail/1', 'Administrator', '2018-05-30 02:26:51');
INSERT INTO `user_log` VALUES (364, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/2', 'Administrator', '2018-05-30 02:29:01');
INSERT INTO `user_log` VALUES (365, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/2', 'Administrator', '2018-05-30 02:30:22');
INSERT INTO `user_log` VALUES (366, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/2', 'Administrator', '2018-05-30 02:30:33');
INSERT INTO `user_log` VALUES (367, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/2', 'Administrator', '2018-05-30 02:31:49');
INSERT INTO `user_log` VALUES (368, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/2', 'Administrator', '2018-05-30 02:32:20');
INSERT INTO `user_log` VALUES (369, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/2', 'Administrator', '2018-05-30 02:32:57');
INSERT INTO `user_log` VALUES (370, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/2', 'Administrator', '2018-05-30 02:33:15');
INSERT INTO `user_log` VALUES (371, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/2', 'Administrator', '2018-05-30 02:33:52');
INSERT INTO `user_log` VALUES (372, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/2', 'Administrator', '2018-05-30 02:34:10');
INSERT INTO `user_log` VALUES (373, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/2', 'Administrator', '2018-05-30 02:35:26');
INSERT INTO `user_log` VALUES (374, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/2', 'Administrator', '2018-05-30 02:35:47');
INSERT INTO `user_log` VALUES (375, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/2', 'Administrator', '2018-05-30 02:36:40');
INSERT INTO `user_log` VALUES (376, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/2', 'Administrator', '2018-05-30 02:41:45');
INSERT INTO `user_log` VALUES (377, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/2', 'Administrator', '2018-05-30 02:42:22');
INSERT INTO `user_log` VALUES (378, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/2', 'Administrator', '2018-05-30 02:42:51');
INSERT INTO `user_log` VALUES (379, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/2', 'Administrator', '2018-05-30 02:43:11');
INSERT INTO `user_log` VALUES (380, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/2', 'Administrator', '2018-05-30 02:43:37');
INSERT INTO `user_log` VALUES (381, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/2', 'Administrator', '2018-05-30 02:43:46');
INSERT INTO `user_log` VALUES (382, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/2', 'Administrator', '2018-05-30 02:44:23');
INSERT INTO `user_log` VALUES (383, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/2', 'Administrator', '2018-05-30 02:45:28');
INSERT INTO `user_log` VALUES (384, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/2', 'Administrator', '2018-05-30 02:46:02');
INSERT INTO `user_log` VALUES (385, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/2', 'Administrator', '2018-05-30 02:46:12');
INSERT INTO `user_log` VALUES (386, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/2', 'Administrator', '2018-05-30 02:49:13');
INSERT INTO `user_log` VALUES (387, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/2', 'Administrator', '2018-05-30 02:49:49');
INSERT INTO `user_log` VALUES (388, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/member/akses/2', 'Administrator', '2018-05-30 02:55:23');
INSERT INTO `user_log` VALUES (389, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/2', 'Administrator', '2018-05-30 02:55:40');
INSERT INTO `user_log` VALUES (390, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/2', 'Administrator', '2018-05-30 02:55:42');
INSERT INTO `user_log` VALUES (391, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-30 02:55:43');
INSERT INTO `user_log` VALUES (392, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/1', 'Administrator', '2018-05-30 02:55:49');
INSERT INTO `user_log` VALUES (393, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/1', 'Administrator', '2018-05-30 02:55:51');
INSERT INTO `user_log` VALUES (394, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-30 02:55:51');
INSERT INTO `user_log` VALUES (395, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/1', 'Administrator', '2018-05-30 02:55:59');
INSERT INTO `user_log` VALUES (396, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/1', 'Administrator', '2018-05-30 02:56:01');
INSERT INTO `user_log` VALUES (397, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/1', 'Administrator', '2018-05-30 02:56:24');
INSERT INTO `user_log` VALUES (398, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/1', 'Administrator', '2018-05-30 02:56:26');
INSERT INTO `user_log` VALUES (399, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-30 02:56:26');
INSERT INTO `user_log` VALUES (400, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/delete/2', 'Administrator', '2018-05-30 02:56:36');
INSERT INTO `user_log` VALUES (401, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-30 02:56:39');
INSERT INTO `user_log` VALUES (402, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/1', 'Administrator', '2018-05-30 02:56:46');
INSERT INTO `user_log` VALUES (403, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-30 02:57:41');
INSERT INTO `user_log` VALUES (404, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit/1', 'Administrator', '2018-05-30 02:57:55');
INSERT INTO `user_log` VALUES (405, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-30 02:57:59');
INSERT INTO `user_log` VALUES (406, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-30 03:03:04');
INSERT INTO `user_log` VALUES (407, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-30 03:03:19');
INSERT INTO `user_log` VALUES (408, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-30 03:04:15');
INSERT INTO `user_log` VALUES (409, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-30 03:04:54');
INSERT INTO `user_log` VALUES (410, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-30 03:06:42');
INSERT INTO `user_log` VALUES (411, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-30 03:07:24');
INSERT INTO `user_log` VALUES (412, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-30 03:07:39');
INSERT INTO `user_log` VALUES (413, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-30 03:07:46');
INSERT INTO `user_log` VALUES (414, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-30 03:08:55');
INSERT INTO `user_log` VALUES (415, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-30 03:14:28');
INSERT INTO `user_log` VALUES (416, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-30 03:14:47');
INSERT INTO `user_log` VALUES (417, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-30 03:15:05');
INSERT INTO `user_log` VALUES (418, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-30 03:16:00');
INSERT INTO `user_log` VALUES (419, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/approval/1', 'Administrator', '2018-05-30 03:16:03');
INSERT INTO `user_log` VALUES (420, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-30 03:16:07');
INSERT INTO `user_log` VALUES (421, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-30 03:16:22');
INSERT INTO `user_log` VALUES (422, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-30 03:16:53');
INSERT INTO `user_log` VALUES (423, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-30 03:17:07');
INSERT INTO `user_log` VALUES (424, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-30 03:17:54');
INSERT INTO `user_log` VALUES (425, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-30 03:18:14');
INSERT INTO `user_log` VALUES (426, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-30 03:19:07');
INSERT INTO `user_log` VALUES (427, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-30 03:19:47');
INSERT INTO `user_log` VALUES (428, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-30 03:20:27');
INSERT INTO `user_log` VALUES (429, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-30 03:21:01');
INSERT INTO `user_log` VALUES (430, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-30 03:21:15');
INSERT INTO `user_log` VALUES (431, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-30 03:21:36');
INSERT INTO `user_log` VALUES (432, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-30 03:21:58');
INSERT INTO `user_log` VALUES (433, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-30 03:22:10');
INSERT INTO `user_log` VALUES (434, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-30 03:22:25');
INSERT INTO `user_log` VALUES (435, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/kategori', 'Administrator', '2018-05-30 03:24:20');
INSERT INTO `user_log` VALUES (436, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-30 03:25:40');
INSERT INTO `user_log` VALUES (437, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-30 03:26:01');
INSERT INTO `user_log` VALUES (438, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-30 03:28:26');
INSERT INTO `user_log` VALUES (439, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-30 03:28:47');
INSERT INTO `user_log` VALUES (440, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-30 03:29:29');
INSERT INTO `user_log` VALUES (441, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-30 03:30:08');
INSERT INTO `user_log` VALUES (442, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-30 03:30:53');
INSERT INTO `user_log` VALUES (443, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-30 03:31:43');
INSERT INTO `user_log` VALUES (444, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-30 03:57:28');
INSERT INTO `user_log` VALUES (445, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/approval/1', 'Administrator', '2018-05-30 03:57:36');
INSERT INTO `user_log` VALUES (446, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-30 03:57:36');
INSERT INTO `user_log` VALUES (447, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/approval/1', 'Administrator', '2018-05-30 03:58:30');
INSERT INTO `user_log` VALUES (448, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-30 03:58:30');
INSERT INTO `user_log` VALUES (449, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-30 03:59:50');
INSERT INTO `user_log` VALUES (450, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/approval/1', 'Administrator', '2018-05-30 03:59:56');
INSERT INTO `user_log` VALUES (451, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-30 03:59:56');
INSERT INTO `user_log` VALUES (452, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-30 04:02:22');
INSERT INTO `user_log` VALUES (453, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/approval/2', 'Administrator', '2018-05-30 04:02:31');
INSERT INTO `user_log` VALUES (454, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-05-30 04:02:31');
INSERT INTO `user_log` VALUES (455, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/cetak/2', 'Administrator', '2018-05-30 04:04:41');
INSERT INTO `user_log` VALUES (456, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/cetak/2', 'Administrator', '2018-05-30 04:04:44');
INSERT INTO `user_log` VALUES (457, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-05-30 04:07:13');
INSERT INTO `user_log` VALUES (458, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/kelola/9', 'Administrator', '2018-05-30 04:07:16');
INSERT INTO `user_log` VALUES (459, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/provinsi/31/9', 'Administrator', '2018-05-30 04:07:19');
INSERT INTO `user_log` VALUES (460, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/detail/1', 'Administrator', '2018-05-30 04:20:25');
INSERT INTO `user_log` VALUES (461, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor', 'Administrator', '2018-05-30 04:29:01');
INSERT INTO `user_log` VALUES (462, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor', 'Administrator', '2018-05-30 04:31:27');
INSERT INTO `user_log` VALUES (463, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor', 'Administrator', '2018-05-30 04:31:39');
INSERT INTO `user_log` VALUES (464, '::1', 0, '-', '-', 'http://localhost/dlp/admin/dasbor', '-', '2018-05-30 13:06:01');
INSERT INTO `user_log` VALUES (465, '::1', 0, '-', '-', 'http://localhost/dlp/admin/dasbor', '-', '2018-05-30 13:06:41');
INSERT INTO `user_log` VALUES (466, '::1', 0, NULL, '', 'http://localhost/dlp/login/logout', 'Administrator', '2018-05-30 13:07:02');
INSERT INTO `user_log` VALUES (467, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-05-30 13:07:02');
INSERT INTO `user_log` VALUES (468, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-05-30 13:07:04');
INSERT INTO `user_log` VALUES (469, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor', 'Administrator', '2018-05-30 13:07:05');
INSERT INTO `user_log` VALUES (470, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor', 'Administrator', '2018-05-30 13:07:08');
INSERT INTO `user_log` VALUES (471, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/gelombang', 'Administrator', '2018-05-30 13:07:15');
INSERT INTO `user_log` VALUES (472, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/gelombang/tambah', 'Administrator', '2018-05-30 13:07:18');
INSERT INTO `user_log` VALUES (473, '::1', 0, '-', '-', 'http://localhost/dlp/admin/dasbor', '-', '2018-05-30 16:13:07');
INSERT INTO `user_log` VALUES (474, '::1', 0, '-', '-', 'http://localhost/dlp/admin/dasbor', '-', '2018-05-30 16:18:47');
INSERT INTO `user_log` VALUES (475, '::1', 0, '-', '-', 'http://localhost/dlp/member/login', '-', '2018-05-30 16:22:44');
INSERT INTO `user_log` VALUES (476, '::1', 0, NULL, '', 'http://localhost/dlp/login/lupa', 'Administrator', '2018-05-30 16:22:48');
INSERT INTO `user_log` VALUES (477, '::1', 0, NULL, '', 'http://localhost/dlp/login/lupa', 'Administrator', '2018-05-30 16:23:23');
INSERT INTO `user_log` VALUES (478, '::1', 0, '-', '-', 'http://localhost/dlp/member/login', '-', '2018-05-30 16:25:21');
INSERT INTO `user_log` VALUES (479, '::1', 0, '-', '-', 'http://localhost/dlp/member/login/lupa', '-', '2018-05-30 16:25:24');
INSERT INTO `user_log` VALUES (480, '::1', 0, '-', '-', 'http://localhost/dlp/member/login/lupa', '-', '2018-05-30 16:26:44');
INSERT INTO `user_log` VALUES (481, '::1', 0, '-', '-', 'http://localhost/dlp/member/login/lupa', '-', '2018-05-30 16:27:03');
INSERT INTO `user_log` VALUES (482, '::1', 0, '-', '-', 'http://localhost/dlp/member/login/lupa', '-', '2018-05-30 16:27:35');
INSERT INTO `user_log` VALUES (483, '::1', 0, '-', '-', 'http://localhost/dlp/member/login/lupa', '-', '2018-05-30 16:27:48');
INSERT INTO `user_log` VALUES (484, '::1', 0, '-', '-', 'http://localhost/dlp/member/login/lupa', '-', '2018-05-30 16:28:01');
INSERT INTO `user_log` VALUES (485, '::1', 0, '-', '-', 'http://localhost/dlp/member/login/lupa', '-', '2018-05-30 16:28:14');
INSERT INTO `user_log` VALUES (486, '::1', 0, '-', '-', 'http://localhost/dlp/member/login/lupa', '-', '2018-05-30 16:28:19');
INSERT INTO `user_log` VALUES (487, '::1', 0, NULL, '', 'http://localhost/dlp/login/lupa', 'Administrator', '2018-05-30 16:28:19');
INSERT INTO `user_log` VALUES (488, '::1', 0, '-', '-', 'http://localhost/dlp/member/login/lupa', '-', '2018-05-30 16:28:40');
INSERT INTO `user_log` VALUES (489, '::1', 0, '-', '-', 'http://localhost/dlp/member/login/lupa', '-', '2018-05-30 16:28:42');
INSERT INTO `user_log` VALUES (490, '::1', 0, '-', '-', 'http://localhost/dlp/member/login/lupa', '-', '2018-05-30 16:28:42');
INSERT INTO `user_log` VALUES (491, '::1', 0, '-', '-', 'http://localhost/dlp/member/login/lupa', '-', '2018-05-30 16:29:05');
INSERT INTO `user_log` VALUES (492, '::1', 0, '-', '-', 'http://localhost/dlp/member/login/lupa', '-', '2018-05-30 16:29:10');
INSERT INTO `user_log` VALUES (493, '::1', 0, '-', '-', 'http://localhost/dlp/member/login/lupa', '-', '2018-05-30 16:29:30');
INSERT INTO `user_log` VALUES (494, '::1', 0, '-', '-', 'http://localhost/dlp/member/login/lupa', '-', '2018-05-30 16:29:32');
INSERT INTO `user_log` VALUES (495, '::1', 0, '-', '-', 'http://localhost/dlp/member/login/lupa', '-', '2018-05-30 16:30:00');
INSERT INTO `user_log` VALUES (496, '::1', 0, '-', '-', 'http://localhost/dlp/member/login/lupa', '-', '2018-05-30 16:30:02');
INSERT INTO `user_log` VALUES (497, '::1', 0, '-', '-', 'http://localhost/dlp/member/login/lupa', '-', '2018-05-30 16:30:47');
INSERT INTO `user_log` VALUES (498, '::1', 0, '-', '-', 'http://localhost/dlp/member/login/lupa', '-', '2018-05-30 16:30:51');
INSERT INTO `user_log` VALUES (499, '::1', 0, '-', '-', 'http://localhost/dlp/member/login/lupa', '-', '2018-05-30 16:30:51');
INSERT INTO `user_log` VALUES (500, '::1', 0, '-', '-', 'http://localhost/dlp/member/login/lupa', '-', '2018-05-30 16:30:56');
INSERT INTO `user_log` VALUES (501, '::1', 0, '-', '-', 'http://localhost/dlp/member/login/lupa', '-', '2018-05-30 16:31:23');
INSERT INTO `user_log` VALUES (502, '::1', 0, '-', '-', 'http://localhost/dlp/member/login/lupa', '-', '2018-05-30 16:31:26');
INSERT INTO `user_log` VALUES (503, '::1', 0, '-', '-', 'http://localhost/dlp/member/login/lupa', '-', '2018-05-30 16:32:51');
INSERT INTO `user_log` VALUES (504, '::1', 0, '-', '-', 'http://localhost/dlp/member/login/lupa', '-', '2018-05-30 16:32:55');
INSERT INTO `user_log` VALUES (505, '::1', 0, '-', '-', 'http://localhost/dlp/member/login/lupa', '-', '2018-05-30 16:32:55');
INSERT INTO `user_log` VALUES (506, '::1', 0, '-', '-', 'http://localhost/dlp/member/login/lupa', '-', '2018-05-30 16:32:59');
INSERT INTO `user_log` VALUES (507, '::1', 0, '-', '-', 'http://localhost/dlp/member/login/lupa', '-', '2018-05-30 16:32:59');
INSERT INTO `user_log` VALUES (508, '::1', 0, '-', '-', 'http://localhost/dlp/member/login/change/acc5d43e0936dbf3f27b906891aaafdf9ede4508/4', '-', '2018-05-30 16:38:39');
INSERT INTO `user_log` VALUES (509, '::1', 0, '-', '-', 'http://localhost/dlp/member/login/change/acc5d43e0936dbf3f27b906891aaafdf9ede4508/4', '-', '2018-05-30 16:39:29');
INSERT INTO `user_log` VALUES (510, '::1', 0, '-', '-', 'http://localhost/dlp/member/login/change/acc5d43e0936dbf3f27b906891aaafdf9ede4508/4', '-', '2018-05-30 16:40:00');
INSERT INTO `user_log` VALUES (511, '::1', 0, '-', '-', 'http://localhost/dlp/member/login/change/acc5d43e0936dbf3f27b906891aaafdf9ede4508/4', '-', '2018-05-30 16:40:23');
INSERT INTO `user_log` VALUES (512, '::1', 0, '-', '-', 'http://localhost/dlp/member/login/change/acc5d43e0936dbf3f27b906891aaafdf9ede4508/4', '-', '2018-05-30 16:40:53');
INSERT INTO `user_log` VALUES (513, '::1', 0, '-', '-', 'http://localhost/dlp/member/login/change/acc5d43e0936dbf3f27b906891aaafdf9ede4508/4', '-', '2018-05-30 16:41:10');
INSERT INTO `user_log` VALUES (514, '::1', 0, '-', '-', 'http://localhost/dlp/member/login', '-', '2018-05-30 16:41:11');
INSERT INTO `user_log` VALUES (515, '::1', 0, '-', '-', 'http://localhost/dlp/member/login', '-', '2018-05-30 16:41:17');
INSERT INTO `user_log` VALUES (516, '::1', 0, '-', '-', 'http://localhost/dlp/member/login', '-', '2018-05-30 16:41:17');
INSERT INTO `user_log` VALUES (517, '::1', 0, '-', '-', 'http://localhost/dlp/member/login', '-', '2018-05-30 16:41:23');
INSERT INTO `user_log` VALUES (518, '::1', 2, 'andoyo', 'Users', 'http://localhost/dlp/member/dashboard', 'Member', '2018-05-30 16:41:23');
INSERT INTO `user_log` VALUES (519, '::1', 2, 'andoyo', 'Users', 'http://localhost/dlp/admin/dasbor', 'Member', '2018-05-30 18:18:24');
INSERT INTO `user_log` VALUES (520, '::1', 0, NULL, '', 'http://localhost/dlp/login/logout', 'Administrator', '2018-05-30 18:18:37');
INSERT INTO `user_log` VALUES (521, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-05-30 18:18:38');
INSERT INTO `user_log` VALUES (522, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-05-30 18:18:41');
INSERT INTO `user_log` VALUES (523, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor', 'Administrator', '2018-05-30 18:18:41');
INSERT INTO `user_log` VALUES (524, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/export_pdf/9', 'Administrator', '2018-05-30 18:18:50');
INSERT INTO `user_log` VALUES (525, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/export_pdf/9', 'Administrator', '2018-05-30 18:18:56');
INSERT INTO `user_log` VALUES (526, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/export_excel/9', 'Administrator', '2018-05-30 18:19:28');
INSERT INTO `user_log` VALUES (527, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/profil', 'Administrator', '2018-05-30 18:26:50');
INSERT INTO `user_log` VALUES (528, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/dashboard', 'Administrator', '2018-05-30 18:26:54');
INSERT INTO `user_log` VALUES (529, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/login/logout', 'Administrator', '2018-05-30 18:26:58');
INSERT INTO `user_log` VALUES (530, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/login', 'Administrator', '2018-05-30 18:26:59');
INSERT INTO `user_log` VALUES (531, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/login', 'Administrator', '2018-05-30 18:27:02');
INSERT INTO `user_log` VALUES (532, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/dashboard', 'Administrator', '2018-05-30 18:27:02');
INSERT INTO `user_log` VALUES (533, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/pekerjaan', 'Administrator', '2018-05-30 18:27:06');
INSERT INTO `user_log` VALUES (534, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/pekerjaan/tambah', 'Administrator', '2018-05-30 18:27:09');
INSERT INTO `user_log` VALUES (535, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/pekerjaan/tambah', 'Administrator', '2018-05-30 18:27:38');
INSERT INTO `user_log` VALUES (536, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/pekerjaan', 'Administrator', '2018-05-30 18:27:38');
INSERT INTO `user_log` VALUES (537, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/dashboard', 'Administrator', '2018-05-30 18:27:58');
INSERT INTO `user_log` VALUES (538, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/profil', 'Administrator', '2018-05-30 18:28:06');
INSERT INTO `user_log` VALUES (539, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/program', 'Administrator', '2018-05-30 18:28:12');
INSERT INTO `user_log` VALUES (540, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/keluarga', 'Administrator', '2018-05-30 18:28:19');
INSERT INTO `user_log` VALUES (541, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/keluarga/tambah', 'Administrator', '2018-05-30 18:28:21');
INSERT INTO `user_log` VALUES (542, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/keluarga/tambah', 'Administrator', '2018-05-30 18:28:32');
INSERT INTO `user_log` VALUES (543, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/keluarga', 'Administrator', '2018-05-30 18:28:33');
INSERT INTO `user_log` VALUES (544, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/pendidikan', 'Administrator', '2018-05-30 18:28:39');
INSERT INTO `user_log` VALUES (545, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/pendidikan/tambah', 'Administrator', '2018-05-30 18:28:42');
INSERT INTO `user_log` VALUES (546, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/pendidikan/tambah', 'Administrator', '2018-05-30 18:28:59');
INSERT INTO `user_log` VALUES (547, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/pendidikan', 'Administrator', '2018-05-30 18:29:00');
INSERT INTO `user_log` VALUES (548, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/none', 'Administrator', '2018-05-30 18:29:01');
INSERT INTO `user_log` VALUES (549, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/dashboard', 'Administrator', '2018-05-30 18:29:04');
INSERT INTO `user_log` VALUES (550, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/cetak', 'Administrator', '2018-05-30 18:29:16');
INSERT INTO `user_log` VALUES (551, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/cetak/unduh', 'Administrator', '2018-05-30 18:29:19');
INSERT INTO `user_log` VALUES (552, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/cetak/unduh', 'Administrator', '2018-05-30 18:29:22');
INSERT INTO `user_log` VALUES (553, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/dashboard', 'Administrator', '2018-05-30 18:29:50');
INSERT INTO `user_log` VALUES (554, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/profil', 'Administrator', '2018-05-30 18:29:55');
INSERT INTO `user_log` VALUES (555, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/pekerjaan', 'Administrator', '2018-05-30 18:30:00');
INSERT INTO `user_log` VALUES (556, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/dashboard', 'Administrator', '2018-05-30 18:30:07');
INSERT INTO `user_log` VALUES (557, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/rekomendasi', 'Administrator', '2018-05-30 18:33:49');
INSERT INTO `user_log` VALUES (558, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/rekomendasi/tambah', 'Administrator', '2018-05-30 18:33:56');
INSERT INTO `user_log` VALUES (559, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/program', 'Administrator', '2018-05-30 18:34:10');
INSERT INTO `user_log` VALUES (560, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/program/edit', 'Administrator', '2018-05-30 18:34:20');
INSERT INTO `user_log` VALUES (561, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/program', 'Administrator', '2018-05-30 18:34:42');
INSERT INTO `user_log` VALUES (562, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/rekomendasi', 'Administrator', '2018-05-30 18:35:09');
INSERT INTO `user_log` VALUES (563, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/dashboard', 'Administrator', '2018-05-30 18:36:18');
INSERT INTO `user_log` VALUES (564, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/dashboard', 'Administrator', '2018-05-30 18:37:05');
INSERT INTO `user_log` VALUES (565, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/login/logout', 'Administrator', '2018-05-30 18:37:31');
INSERT INTO `user_log` VALUES (566, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/login', 'Administrator', '2018-05-30 18:37:32');
INSERT INTO `user_log` VALUES (567, '::1', 5, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-05-30 18:38:45');
INSERT INTO `user_log` VALUES (568, '::1', 5, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-05-30 18:39:18');
INSERT INTO `user_log` VALUES (569, '::1', 11, 'dkijakarta', 'Provinsi', 'http://localhost/dlp/provinsi/dasbor', 'Administrator', '2018-05-30 18:39:19');
INSERT INTO `user_log` VALUES (570, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-07-04 16:53:50');
INSERT INTO `user_log` VALUES (571, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-07-04 16:53:53');
INSERT INTO `user_log` VALUES (572, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor', 'Administrator', '2018-07-04 16:53:53');
INSERT INTO `user_log` VALUES (573, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor', 'Administrator', '2018-07-04 16:54:16');
INSERT INTO `user_log` VALUES (574, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/kelola/9', 'Administrator', '2018-07-04 16:54:32');
INSERT INTO `user_log` VALUES (575, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/provinsi/31/9', 'Administrator', '2018-07-04 16:54:39');
INSERT INTO `user_log` VALUES (576, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/user', 'Administrator', '2018-07-04 16:54:50');
INSERT INTO `user_log` VALUES (577, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/user/edit/13', 'Administrator', '2018-07-04 16:55:20');
INSERT INTO `user_log` VALUES (578, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/user/edit/13', 'Administrator', '2018-07-04 16:55:25');
INSERT INTO `user_log` VALUES (579, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/user', 'Administrator', '2018-07-04 16:55:28');
INSERT INTO `user_log` VALUES (580, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/user', 'Administrator', '2018-07-04 16:56:19');
INSERT INTO `user_log` VALUES (581, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/user/tambah', 'Administrator', '2018-07-04 16:56:26');
INSERT INTO `user_log` VALUES (582, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/user/tambah', 'Administrator', '2018-07-04 16:56:34');
INSERT INTO `user_log` VALUES (583, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/user', 'Administrator', '2018-07-04 16:56:35');
INSERT INTO `user_log` VALUES (584, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/user', 'Administrator', '2018-07-04 16:57:11');
INSERT INTO `user_log` VALUES (585, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/user/delete/10', 'Administrator', '2018-07-04 16:57:17');
INSERT INTO `user_log` VALUES (586, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/user', 'Administrator', '2018-07-04 16:57:17');
INSERT INTO `user_log` VALUES (587, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor', 'Administrator', '2018-07-04 16:57:37');
INSERT INTO `user_log` VALUES (588, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/kelola/9', 'Administrator', '2018-07-04 16:58:08');
INSERT INTO `user_log` VALUES (589, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/provinsi/31/9', 'Administrator', '2018-07-04 16:58:12');
INSERT INTO `user_log` VALUES (590, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/provinsi/31/9', 'Administrator', '2018-07-04 16:58:44');
INSERT INTO `user_log` VALUES (591, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor', 'Administrator', '2018-07-04 16:58:45');
INSERT INTO `user_log` VALUES (592, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/kelola/9', 'Administrator', '2018-07-04 17:00:59');
INSERT INTO `user_log` VALUES (593, '::1', 0, '-', '-', 'http://localhost/dlp/member/login', '-', '2018-09-04 15:03:16');
INSERT INTO `user_log` VALUES (594, '::1', 0, '-', '-', 'http://localhost/dlp/member/login', '-', '2018-09-04 15:03:19');
INSERT INTO `user_log` VALUES (595, '::1', 0, '-', '-', 'http://localhost/dlp/member/login', '-', '2018-09-04 15:03:20');
INSERT INTO `user_log` VALUES (596, '::1', 0, '-', '-', 'http://localhost/dlp/member/login', '-', '2018-09-04 15:04:06');
INSERT INTO `user_log` VALUES (597, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-09-04 15:35:40');
INSERT INTO `user_log` VALUES (598, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-09-04 15:35:42');
INSERT INTO `user_log` VALUES (599, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-09-04 15:35:42');
INSERT INTO `user_log` VALUES (600, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-09-04 15:35:45');
INSERT INTO `user_log` VALUES (601, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor', 'Administrator', '2018-09-04 15:35:46');
INSERT INTO `user_log` VALUES (602, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/gelombang/tambah', 'Administrator', '2018-09-04 15:37:04');
INSERT INTO `user_log` VALUES (603, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/gelombang/tambah', 'Administrator', '2018-09-04 15:38:45');
INSERT INTO `user_log` VALUES (604, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/gelombang/tambah', 'Administrator', '2018-09-04 15:39:26');
INSERT INTO `user_log` VALUES (605, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/gelombang/tambah', 'Administrator', '2018-09-04 15:40:30');
INSERT INTO `user_log` VALUES (606, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/gelombang/tambah', 'Administrator', '2018-09-04 15:43:45');
INSERT INTO `user_log` VALUES (607, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/gelombang', 'Administrator', '2018-09-04 15:43:47');
INSERT INTO `user_log` VALUES (608, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/gelombang', 'Administrator', '2018-09-04 15:44:46');
INSERT INTO `user_log` VALUES (609, '::1', 5, NULL, '', 'http://localhost/dlp/login/logout', 'Administrator', '2018-09-04 15:50:25');
INSERT INTO `user_log` VALUES (610, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-09-04 15:50:25');
INSERT INTO `user_log` VALUES (611, '::1', 0, '-', '-', 'http://localhost/dlp/admin/gelombang/tambah', '-', '2018-09-04 16:39:35');
INSERT INTO `user_log` VALUES (612, '::1', 0, '-', '-', 'http://localhost/dlp/admin/login/logout', '-', '2018-09-04 16:39:53');
INSERT INTO `user_log` VALUES (613, '::1', 0, NULL, '', 'http://localhost/dlp/login/logout', 'Administrator', '2018-09-04 16:40:04');
INSERT INTO `user_log` VALUES (614, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-09-04 16:40:05');
INSERT INTO `user_log` VALUES (615, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-09-04 16:40:08');
INSERT INTO `user_log` VALUES (616, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor', 'Administrator', '2018-09-04 16:40:09');
INSERT INTO `user_log` VALUES (617, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor', 'Administrator', '2018-09-04 16:40:22');
INSERT INTO `user_log` VALUES (618, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/gelombang', 'Administrator', '2018-09-04 16:40:30');
INSERT INTO `user_log` VALUES (619, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/gelombang/edit/9', 'Administrator', '2018-09-04 16:40:36');
INSERT INTO `user_log` VALUES (620, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/gelombang/edit/9', 'Administrator', '2018-09-04 16:41:07');
INSERT INTO `user_log` VALUES (621, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/gelombang/edit/9', 'Administrator', '2018-09-04 16:43:55');
INSERT INTO `user_log` VALUES (622, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/gelombang/edit/9', 'Administrator', '2018-09-04 16:47:26');
INSERT INTO `user_log` VALUES (623, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/gelombang', 'Administrator', '2018-09-04 16:47:26');
INSERT INTO `user_log` VALUES (624, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/gelombang', 'Administrator', '2018-09-04 16:48:02');
INSERT INTO `user_log` VALUES (625, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/gelombang', 'Administrator', '2018-09-04 17:20:19');
INSERT INTO `user_log` VALUES (626, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor', 'Administrator', '2018-09-04 17:40:08');
INSERT INTO `user_log` VALUES (627, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/kelola/9', 'Administrator', '2018-09-04 17:40:13');
INSERT INTO `user_log` VALUES (628, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-09-04 17:40:28');
INSERT INTO `user_log` VALUES (629, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/kelola/9', 'Administrator', '2018-09-04 17:40:32');
INSERT INTO `user_log` VALUES (630, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/provinsi/12/9', 'Administrator', '2018-09-04 17:40:34');
INSERT INTO `user_log` VALUES (631, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-09-04 17:43:36');
INSERT INTO `user_log` VALUES (632, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/kelola/9', 'Administrator', '2018-09-04 17:43:38');
INSERT INTO `user_log` VALUES (633, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-09-04 17:43:43');
INSERT INTO `user_log` VALUES (634, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/kelola/9', 'Administrator', '2018-09-04 17:43:46');
INSERT INTO `user_log` VALUES (635, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-09-04 17:43:49');
INSERT INTO `user_log` VALUES (636, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/kelola/9', 'Administrator', '2018-09-04 17:43:51');
INSERT INTO `user_log` VALUES (637, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-09-04 17:43:55');
INSERT INTO `user_log` VALUES (638, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/kelola/9', 'Administrator', '2018-09-04 17:43:56');
INSERT INTO `user_log` VALUES (639, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/provinsi/12/9', 'Administrator', '2018-09-04 17:43:58');
INSERT INTO `user_log` VALUES (640, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/kelola/9', 'Administrator', '2018-09-04 17:44:02');
INSERT INTO `user_log` VALUES (641, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-09-04 17:45:18');
INSERT INTO `user_log` VALUES (642, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/kelola/9', 'Administrator', '2018-09-04 17:45:21');
INSERT INTO `user_log` VALUES (643, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/provinsi/12/9', 'Administrator', '2018-09-04 17:45:23');
INSERT INTO `user_log` VALUES (644, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/kelola/9', 'Administrator', '2018-09-04 17:45:25');
INSERT INTO `user_log` VALUES (645, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/provinsi/12/9', 'Administrator', '2018-09-04 17:45:31');
INSERT INTO `user_log` VALUES (646, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/kelola/9', 'Administrator', '2018-09-04 17:45:34');
INSERT INTO `user_log` VALUES (647, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/provinsi/12/9', 'Administrator', '2018-09-04 18:33:49');
INSERT INTO `user_log` VALUES (648, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/kelola/9', 'Administrator', '2018-09-04 18:34:29');
INSERT INTO `user_log` VALUES (649, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-09-04 18:34:31');
INSERT INTO `user_log` VALUES (650, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/kelola/9', 'Administrator', '2018-09-04 18:35:18');
INSERT INTO `user_log` VALUES (651, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/provinsi/12/9', 'Administrator', '2018-09-04 18:35:20');
INSERT INTO `user_log` VALUES (652, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/provinsi/12/9', 'Administrator', '2018-09-04 18:44:04');
INSERT INTO `user_log` VALUES (653, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-09-04 18:44:07');
INSERT INTO `user_log` VALUES (654, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/kelola/9', 'Administrator', '2018-09-04 18:44:09');
INSERT INTO `user_log` VALUES (655, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/provinsi/34/9', 'Administrator', '2018-09-04 18:44:11');
INSERT INTO `user_log` VALUES (656, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/login', 'Administrator', '2018-09-04 19:05:55');
INSERT INTO `user_log` VALUES (657, '::1', 1, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-09-24 15:59:56');
INSERT INTO `user_log` VALUES (658, '::1', 1, NULL, '', 'http://localhost/dlp/login/logout', 'Administrator', '2018-09-24 16:00:13');
INSERT INTO `user_log` VALUES (659, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-09-24 16:00:13');
INSERT INTO `user_log` VALUES (660, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-09-24 16:00:19');
INSERT INTO `user_log` VALUES (661, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor', 'Administrator', '2018-09-24 16:00:20');
INSERT INTO `user_log` VALUES (662, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-09-24 16:00:26');
INSERT INTO `user_log` VALUES (663, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/delete/1', 'Administrator', '2018-09-24 16:00:34');
INSERT INTO `user_log` VALUES (664, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-09-24 16:02:50');
INSERT INTO `user_log` VALUES (665, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor', 'Administrator', '2018-09-24 16:06:44');
INSERT INTO `user_log` VALUES (666, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/kelola/9', 'Administrator', '2018-09-24 16:06:53');
INSERT INTO `user_log` VALUES (667, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/provinsi/34/9', 'Administrator', '2018-09-24 16:06:56');
INSERT INTO `user_log` VALUES (668, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/provinsi/34/9', 'Administrator', '2018-09-24 16:08:29');
INSERT INTO `user_log` VALUES (669, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/provinsi/34/9', 'Administrator', '2018-09-24 16:08:36');
INSERT INTO `user_log` VALUES (670, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/provinsi/34/9', 'Administrator', '2018-09-24 16:14:33');
INSERT INTO `user_log` VALUES (671, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/hapus/1', 'Administrator', '2018-09-24 16:14:37');
INSERT INTO `user_log` VALUES (672, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/provinsi/34/9', 'Administrator', '2018-09-24 16:16:33');
INSERT INTO `user_log` VALUES (673, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/hapus/1', 'Administrator', '2018-09-24 16:16:40');
INSERT INTO `user_log` VALUES (674, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/provinsi/34/9', 'Administrator', '2018-09-24 16:16:40');
INSERT INTO `user_log` VALUES (675, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/login', 'Administrator', '2018-09-24 18:28:06');
INSERT INTO `user_log` VALUES (676, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/login', 'Administrator', '2018-09-24 18:28:12');
INSERT INTO `user_log` VALUES (677, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/login', 'Administrator', '2018-09-24 18:28:12');
INSERT INTO `user_log` VALUES (678, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/login', 'Administrator', '2018-09-24 18:28:21');
INSERT INTO `user_log` VALUES (679, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/login', 'Administrator', '2018-09-24 18:28:21');
INSERT INTO `user_log` VALUES (680, '::1', 5, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-09-24 18:32:30');
INSERT INTO `user_log` VALUES (681, '::1', 5, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-09-24 18:32:38');
INSERT INTO `user_log` VALUES (682, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor', 'Administrator', '2018-09-24 18:32:39');
INSERT INTO `user_log` VALUES (683, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas', 'Administrator', '2018-09-24 18:32:55');
INSERT INTO `user_log` VALUES (684, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas/kelola/11', 'Administrator', '2018-09-24 18:33:00');
INSERT INTO `user_log` VALUES (685, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas/edit/1', 'Administrator', '2018-09-24 18:33:04');
INSERT INTO `user_log` VALUES (686, '::1', 0, '-', '-', 'http://localhost/dlp/member/login', '-', '2018-10-10 15:46:43');
INSERT INTO `user_log` VALUES (687, '::1', 0, '-', '-', 'http://localhost/dlp/member/login', '-', '2018-10-10 15:46:52');
INSERT INTO `user_log` VALUES (688, '::1', 0, '-', '-', 'http://localhost/dlp/member/login', '-', '2018-10-10 15:46:53');
INSERT INTO `user_log` VALUES (689, '::1', 0, '-', '-', 'http://localhost/dlp/member/login', '-', '2018-10-10 15:47:02');
INSERT INTO `user_log` VALUES (690, '::1', 0, '-', '-', 'http://localhost/dlp/member/login', '-', '2018-10-10 15:47:02');
INSERT INTO `user_log` VALUES (691, '::1', 0, '-', '-', 'http://localhost/dlp/member/login', '-', '2018-10-10 15:47:09');
INSERT INTO `user_log` VALUES (692, '::1', 0, '-', '-', 'http://localhost/dlp/member/login', '-', '2018-10-10 15:47:09');
INSERT INTO `user_log` VALUES (693, '::1', 0, '-', '-', 'http://localhost/dlp/member/login', '-', '2018-10-10 15:47:15');
INSERT INTO `user_log` VALUES (694, '::1', 0, '-', '-', 'http://localhost/dlp/member/login', '-', '2018-10-10 15:47:16');
INSERT INTO `user_log` VALUES (695, '::1', 0, '-', '-', 'http://localhost/dlp/member/login', '-', '2018-10-10 15:49:51');
INSERT INTO `user_log` VALUES (696, '::1', 0, '-', '-', 'http://localhost/dlp/member/login', '-', '2018-10-10 15:49:55');
INSERT INTO `user_log` VALUES (697, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/dashboard', 'Member', '2018-10-10 15:49:56');
INSERT INTO `user_log` VALUES (698, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/program', 'Member', '2018-10-10 15:50:01');
INSERT INTO `user_log` VALUES (699, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/program/edit', 'Member', '2018-10-10 15:50:22');
INSERT INTO `user_log` VALUES (700, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/profil', 'Member', '2018-10-10 15:50:32');
INSERT INTO `user_log` VALUES (701, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/profil/edit', 'Member', '2018-10-10 15:50:48');
INSERT INTO `user_log` VALUES (702, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/profil/edit', 'Member', '2018-10-10 15:51:39');
INSERT INTO `user_log` VALUES (703, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/profil', 'Member', '2018-10-10 15:51:41');
INSERT INTO `user_log` VALUES (704, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/keluarga', 'Member', '2018-10-10 15:51:58');
INSERT INTO `user_log` VALUES (705, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/keluarga/tambah', 'Member', '2018-10-10 15:52:01');
INSERT INTO `user_log` VALUES (706, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/keluarga/tambah', 'Member', '2018-10-10 15:52:16');
INSERT INTO `user_log` VALUES (707, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/keluarga', 'Member', '2018-10-10 15:52:17');
INSERT INTO `user_log` VALUES (708, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/pendidikan', 'Member', '2018-10-10 15:52:22');
INSERT INTO `user_log` VALUES (709, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/pendidikan/tambah', 'Member', '2018-10-10 15:52:25');
INSERT INTO `user_log` VALUES (710, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/pendidikan/tambah', 'Member', '2018-10-10 15:52:49');
INSERT INTO `user_log` VALUES (711, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/pendidikan', 'Member', '2018-10-10 15:52:50');
INSERT INTO `user_log` VALUES (712, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/none', 'Member', '2018-10-10 15:52:51');
INSERT INTO `user_log` VALUES (713, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/pekerjaan', 'Member', '2018-10-10 15:52:56');
INSERT INTO `user_log` VALUES (714, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/pekerjaan/tambah', 'Member', '2018-10-10 15:52:59');
INSERT INTO `user_log` VALUES (715, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/pekerjaan/tambah', 'Member', '2018-10-10 15:53:37');
INSERT INTO `user_log` VALUES (716, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/pekerjaan', 'Member', '2018-10-10 15:53:38');
INSERT INTO `user_log` VALUES (717, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/dashboard', 'Member', '2018-10-10 15:53:43');
INSERT INTO `user_log` VALUES (718, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/dashboard', 'Member', '2018-10-10 15:55:38');
INSERT INTO `user_log` VALUES (719, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/dashboard', 'Member', '2018-10-10 15:55:48');
INSERT INTO `user_log` VALUES (720, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/dashboard', 'Member', '2018-10-10 15:55:59');
INSERT INTO `user_log` VALUES (721, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/dashboard', 'Member', '2018-10-10 15:56:14');
INSERT INTO `user_log` VALUES (722, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/unduh', 'Member', '2018-10-10 15:56:17');
INSERT INTO `user_log` VALUES (723, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/dashboard', 'Member', '2018-10-10 15:56:38');
INSERT INTO `user_log` VALUES (724, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/cetak', 'Member', '2018-10-10 15:57:16');
INSERT INTO `user_log` VALUES (725, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/cetak', 'Member', '2018-10-10 15:58:37');
INSERT INTO `user_log` VALUES (726, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/dashboard', 'Member', '2018-10-10 15:59:20');
INSERT INTO `user_log` VALUES (727, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/cetak/printer', 'Member', '2018-10-10 15:59:23');
INSERT INTO `user_log` VALUES (728, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/cetak/printer', 'Member', '2018-10-10 16:00:51');
INSERT INTO `user_log` VALUES (729, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/cetak/cetaksaja', 'Member', '2018-10-10 16:00:55');
INSERT INTO `user_log` VALUES (730, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/cetak/cetaksaja', 'Member', '2018-10-10 16:01:17');
INSERT INTO `user_log` VALUES (731, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/cetak/printer', 'Member', '2018-10-10 16:01:37');
INSERT INTO `user_log` VALUES (732, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/cetak/cetaksaja', 'Member', '2018-10-10 16:01:39');
INSERT INTO `user_log` VALUES (733, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/cetak/cetaksaja', 'Member', '2018-10-10 16:03:17');
INSERT INTO `user_log` VALUES (734, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/cetak/cetaksaja', 'Member', '2018-10-10 16:03:23');
INSERT INTO `user_log` VALUES (735, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/login/logout', 'Member', '2018-10-10 16:12:11');
INSERT INTO `user_log` VALUES (736, '::1', 0, '-', '-', 'http://localhost/dlp/member/login', '-', '2018-10-10 16:12:12');
INSERT INTO `user_log` VALUES (737, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-10-10 16:12:24');
INSERT INTO `user_log` VALUES (738, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-10-10 16:12:28');
INSERT INTO `user_log` VALUES (739, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-10-10 16:12:28');
INSERT INTO `user_log` VALUES (740, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-10-10 16:12:31');
INSERT INTO `user_log` VALUES (741, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor', 'Administrator', '2018-10-10 16:12:32');
INSERT INTO `user_log` VALUES (742, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor', 'Administrator', '2018-10-10 16:13:15');
INSERT INTO `user_log` VALUES (743, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor/pesan_cetak', 'Administrator', '2018-10-10 16:13:19');
INSERT INTO `user_log` VALUES (744, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor/pesan_cetak', 'Administrator', '2018-10-10 16:13:37');
INSERT INTO `user_log` VALUES (745, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor/pesan_cetak', 'Administrator', '2018-10-10 16:14:24');
INSERT INTO `user_log` VALUES (746, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor/pesan_cetak', 'Administrator', '2018-10-10 16:14:48');
INSERT INTO `user_log` VALUES (747, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor/pesan_cetak', 'Administrator', '2018-10-10 16:14:49');
INSERT INTO `user_log` VALUES (748, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/cetak/printer', 'Administrator', '2018-10-10 16:14:54');
INSERT INTO `user_log` VALUES (749, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/login', 'Administrator', '2018-10-10 16:14:59');
INSERT INTO `user_log` VALUES (750, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/login', 'Administrator', '2018-10-10 16:15:03');
INSERT INTO `user_log` VALUES (751, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/login', 'Administrator', '2018-10-10 16:15:03');
INSERT INTO `user_log` VALUES (752, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/login', 'Administrator', '2018-10-10 16:15:08');
INSERT INTO `user_log` VALUES (753, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/dashboard', 'Administrator', '2018-10-10 16:15:08');
INSERT INTO `user_log` VALUES (754, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/cetak/printer', 'Administrator', '2018-10-10 16:15:13');
INSERT INTO `user_log` VALUES (755, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/cetak/cetaksaja', 'Administrator', '2018-10-10 16:15:15');
INSERT INTO `user_log` VALUES (756, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/cetak/cetaksaja', 'Administrator', '2018-10-10 16:17:01');
INSERT INTO `user_log` VALUES (757, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/profil', 'Administrator', '2018-10-10 16:20:53');
INSERT INTO `user_log` VALUES (758, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/profil', 'Administrator', '2018-10-10 16:21:38');
INSERT INTO `user_log` VALUES (759, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/password', 'Administrator', '2018-10-10 16:21:43');
INSERT INTO `user_log` VALUES (760, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/password', 'Administrator', '2018-10-10 16:25:38');
INSERT INTO `user_log` VALUES (761, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/profil', 'Administrator', '2018-10-10 16:25:43');
INSERT INTO `user_log` VALUES (762, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/profil/password', 'Administrator', '2018-10-10 16:25:48');
INSERT INTO `user_log` VALUES (763, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/profil/password', 'Administrator', '2018-10-10 16:25:57');
INSERT INTO `user_log` VALUES (764, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/profil/password', 'Administrator', '2018-10-10 16:26:46');
INSERT INTO `user_log` VALUES (765, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/profil/password', 'Administrator', '2018-10-10 16:28:29');
INSERT INTO `user_log` VALUES (766, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/profil/password', 'Administrator', '2018-10-10 16:29:40');
INSERT INTO `user_log` VALUES (767, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/profil/password', 'Administrator', '2018-10-10 16:29:46');
INSERT INTO `user_log` VALUES (768, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/profil/password', 'Administrator', '2018-10-10 16:30:30');
INSERT INTO `user_log` VALUES (769, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/profil/password', 'Administrator', '2018-10-10 16:30:36');
INSERT INTO `user_log` VALUES (770, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/profil/password', 'Administrator', '2018-10-10 16:30:48');
INSERT INTO `user_log` VALUES (771, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/profil/password', 'Administrator', '2018-10-10 16:31:00');
INSERT INTO `user_log` VALUES (772, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/profil/password', 'Administrator', '2018-10-10 16:31:01');
INSERT INTO `user_log` VALUES (773, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/profil/password', 'Administrator', '2018-10-10 16:31:21');
INSERT INTO `user_log` VALUES (774, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/profil/password', 'Administrator', '2018-10-10 16:31:21');
INSERT INTO `user_log` VALUES (775, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/login/logout', 'Administrator', '2018-10-10 16:31:26');
INSERT INTO `user_log` VALUES (776, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/login', 'Administrator', '2018-10-10 16:31:26');
INSERT INTO `user_log` VALUES (777, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/login', 'Administrator', '2018-10-10 16:31:32');
INSERT INTO `user_log` VALUES (778, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/dashboard', 'Administrator', '2018-10-10 16:31:33');
INSERT INTO `user_log` VALUES (779, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-10-10 16:31:48');
INSERT INTO `user_log` VALUES (780, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/kelola/9', 'Administrator', '2018-10-10 16:31:55');
INSERT INTO `user_log` VALUES (781, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/provinsi/11/9', 'Administrator', '2018-10-10 16:31:58');
INSERT INTO `user_log` VALUES (782, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/cetak/1', 'Administrator', '2018-10-10 16:32:03');
INSERT INTO `user_log` VALUES (783, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/cetak/1', 'Administrator', '2018-10-10 16:33:44');
INSERT INTO `user_log` VALUES (784, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/detail/1', 'Administrator', '2018-10-10 16:40:01');
INSERT INTO `user_log` VALUES (785, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/provinsi/11/9', 'Administrator', '2018-10-10 16:57:42');
INSERT INTO `user_log` VALUES (786, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/provinsi/11/9', 'Administrator', '2018-10-10 16:58:13');
INSERT INTO `user_log` VALUES (787, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/provinsi/11/9', 'Administrator', '2018-10-10 16:58:40');
INSERT INTO `user_log` VALUES (788, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/provinsi/11/9', 'Administrator', '2018-10-10 16:59:10');
INSERT INTO `user_log` VALUES (789, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/provinsi/11/9', 'Administrator', '2018-10-10 16:59:26');
INSERT INTO `user_log` VALUES (790, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/provinsi/11/9', 'Administrator', '2018-10-10 16:59:54');
INSERT INTO `user_log` VALUES (791, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/provinsi/11/9', 'Administrator', '2018-10-10 17:00:13');
INSERT INTO `user_log` VALUES (792, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/provinsi/11/9', 'Administrator', '2018-10-10 17:00:48');
INSERT INTO `user_log` VALUES (793, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/provinsi/11/9', 'Administrator', '2018-10-10 17:01:47');
INSERT INTO `user_log` VALUES (794, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/provinsi/11/9', 'Administrator', '2018-10-10 17:01:56');
INSERT INTO `user_log` VALUES (795, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/printer/1', 'Administrator', '2018-10-10 17:02:00');
INSERT INTO `user_log` VALUES (796, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/detail/1', 'Administrator', '2018-10-10 17:02:24');
INSERT INTO `user_log` VALUES (797, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-10-10 17:04:45');
INSERT INTO `user_log` VALUES (798, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-10-10 17:04:53');
INSERT INTO `user_log` VALUES (799, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/detail/1', 'Administrator', '2018-10-10 17:05:15');
INSERT INTO `user_log` VALUES (800, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-10-10 17:05:18');
INSERT INTO `user_log` VALUES (801, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-10-10 17:07:35');
INSERT INTO `user_log` VALUES (802, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/kampus/9', 'Administrator', '2018-10-10 17:07:48');
INSERT INTO `user_log` VALUES (803, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran', 'Administrator', '2018-10-10 17:07:55');
INSERT INTO `user_log` VALUES (804, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-10-10 17:08:45');
INSERT INTO `user_log` VALUES (805, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit/1', 'Administrator', '2018-10-10 17:08:49');
INSERT INTO `user_log` VALUES (806, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-10-10 17:09:54');
INSERT INTO `user_log` VALUES (807, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/profil', 'Administrator', '2018-10-10 18:35:36');
INSERT INTO `user_log` VALUES (808, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/dashboard', 'Administrator', '2018-10-10 18:35:45');
INSERT INTO `user_log` VALUES (809, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/cetak/printer', 'Administrator', '2018-10-10 18:35:53');
INSERT INTO `user_log` VALUES (810, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/cetak/cetaksaja', 'Administrator', '2018-10-10 18:35:57');
INSERT INTO `user_log` VALUES (811, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/cetak/cetaksaja', 'Administrator', '2018-10-10 18:37:52');
INSERT INTO `user_log` VALUES (812, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/cetak/cetaksaja', 'Administrator', '2018-10-10 18:38:21');
INSERT INTO `user_log` VALUES (813, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/cetak/cetaksaja', 'Administrator', '2018-10-10 18:38:55');
INSERT INTO `user_log` VALUES (814, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/cetak/cetaksaja', 'Administrator', '2018-10-10 18:39:50');
INSERT INTO `user_log` VALUES (815, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/cetak/cetaksaja', 'Administrator', '2018-10-10 18:40:17');
INSERT INTO `user_log` VALUES (816, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/cetak/cetaksaja', 'Administrator', '2018-10-10 18:40:52');
INSERT INTO `user_log` VALUES (817, '::1', 0, '-', '-', 'http://localhost/dlp/member/cetak/cetaksaja', '-', '2018-10-10 20:50:32');
INSERT INTO `user_log` VALUES (818, '::1', 0, '-', '-', 'http://localhost/dlp/member/login', '-', '2018-10-10 20:50:38');
INSERT INTO `user_log` VALUES (819, '::1', 0, '-', '-', 'http://localhost/dlp/member/login', '-', '2018-10-10 20:50:41');
INSERT INTO `user_log` VALUES (820, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/dashboard', 'Member', '2018-10-10 20:50:42');
INSERT INTO `user_log` VALUES (821, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/cetak/printer', 'Member', '2018-10-10 20:50:45');
INSERT INTO `user_log` VALUES (822, '::1', 1, 'andoyo', 'Users', 'http://localhost/dlp/member/cetak/cetaksaja', 'Member', '2018-10-10 20:50:50');
INSERT INTO `user_log` VALUES (823, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-10-11 09:14:18');
INSERT INTO `user_log` VALUES (824, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-10-11 09:14:22');
INSERT INTO `user_log` VALUES (825, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor', 'Administrator', '2018-10-11 09:14:23');
INSERT INTO `user_log` VALUES (826, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-10-11 09:14:29');
INSERT INTO `user_log` VALUES (827, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit/1', 'Administrator', '2018-10-11 09:14:33');
INSERT INTO `user_log` VALUES (828, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit/1', 'Administrator', '2018-10-11 09:15:41');
INSERT INTO `user_log` VALUES (829, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-10-11 09:15:43');
INSERT INTO `user_log` VALUES (830, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/printer/1', 'Administrator', '2018-10-11 09:16:50');
INSERT INTO `user_log` VALUES (831, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/detail/1', 'Administrator', '2018-10-11 09:16:56');
INSERT INTO `user_log` VALUES (832, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/detail/1', 'Administrator', '2018-10-11 09:17:05');
INSERT INTO `user_log` VALUES (833, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/detail/1', 'Administrator', '2018-10-11 09:18:00');
INSERT INTO `user_log` VALUES (834, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-10-11 09:18:06');
INSERT INTO `user_log` VALUES (835, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit/1', 'Administrator', '2018-10-11 09:18:11');
INSERT INTO `user_log` VALUES (836, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_profile/1', 'Administrator', '2018-10-11 09:18:20');
INSERT INTO `user_log` VALUES (837, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/profil', 'Administrator', '2018-10-11 09:18:20');
INSERT INTO `user_log` VALUES (838, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit/1', 'Administrator', '2018-10-11 09:24:28');
INSERT INTO `user_log` VALUES (839, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit/1', 'Administrator', '2018-10-11 09:24:31');
INSERT INTO `user_log` VALUES (840, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_profile/1', 'Administrator', '2018-10-11 09:24:45');
INSERT INTO `user_log` VALUES (841, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit/1', 'Administrator', '2018-10-11 09:24:45');
INSERT INTO `user_log` VALUES (842, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit/1', 'Administrator', '2018-10-11 09:25:30');
INSERT INTO `user_log` VALUES (843, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_profile/1', 'Administrator', '2018-10-11 09:25:40');
INSERT INTO `user_log` VALUES (844, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit/1', 'Administrator', '2018-10-11 09:25:41');
INSERT INTO `user_log` VALUES (845, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-10-11 09:26:43');
INSERT INTO `user_log` VALUES (846, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit/1', 'Administrator', '2018-10-11 09:26:47');
INSERT INTO `user_log` VALUES (847, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit/1', 'Administrator', '2018-10-11 09:27:06');
INSERT INTO `user_log` VALUES (848, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit/1', 'Administrator', '2018-10-11 09:28:09');
INSERT INTO `user_log` VALUES (849, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit/1', 'Administrator', '2018-10-11 09:29:39');
INSERT INTO `user_log` VALUES (850, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-10-11 09:30:36');
INSERT INTO `user_log` VALUES (851, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/printer/1', 'Administrator', '2018-10-11 09:30:43');
INSERT INTO `user_log` VALUES (852, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-10-11 09:31:52');
INSERT INTO `user_log` VALUES (853, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-10-11 09:32:19');
INSERT INTO `user_log` VALUES (854, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-10-11 09:32:39');
INSERT INTO `user_log` VALUES (855, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-10-11 09:32:49');
INSERT INTO `user_log` VALUES (856, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit/1', 'Administrator', '2018-10-11 09:32:51');
INSERT INTO `user_log` VALUES (857, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-10-11 09:32:54');
INSERT INTO `user_log` VALUES (858, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit/1', 'Administrator', '2018-10-11 09:49:37');
INSERT INTO `user_log` VALUES (859, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/akses/1', 'Administrator', '2018-10-11 09:49:42');
INSERT INTO `user_log` VALUES (860, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-10-11 09:49:50');
INSERT INTO `user_log` VALUES (861, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-10-11 09:50:21');
INSERT INTO `user_log` VALUES (862, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit/1', 'Administrator', '2018-10-11 09:50:28');
INSERT INTO `user_log` VALUES (863, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit/1', 'Administrator', '2018-10-11 09:51:19');
INSERT INTO `user_log` VALUES (864, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_pengusul/1', 'Administrator', '2018-10-11 09:51:24');
INSERT INTO `user_log` VALUES (865, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit/1', 'Administrator', '2018-10-11 09:56:05');
INSERT INTO `user_log` VALUES (866, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit/1', 'Administrator', '2018-10-11 09:56:27');
INSERT INTO `user_log` VALUES (867, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit/1', 'Administrator', '2018-10-11 09:57:15');
INSERT INTO `user_log` VALUES (868, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-11 09:57:20');
INSERT INTO `user_log` VALUES (869, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-11 09:58:32');
INSERT INTO `user_log` VALUES (870, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/login', 'Administrator', '2018-10-11 09:58:33');
INSERT INTO `user_log` VALUES (871, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit/1', 'Administrator', '2018-10-11 09:58:50');
INSERT INTO `user_log` VALUES (872, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-11 09:58:55');
INSERT INTO `user_log` VALUES (873, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-11 09:59:46');
INSERT INTO `user_log` VALUES (874, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/semua/9', 'Administrator', '2018-10-11 09:59:51');
INSERT INTO `user_log` VALUES (875, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit/1', 'Administrator', '2018-10-11 10:00:07');
INSERT INTO `user_log` VALUES (876, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-11 10:00:16');
INSERT INTO `user_log` VALUES (877, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-11 10:00:22');
INSERT INTO `user_log` VALUES (878, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit/1', 'Administrator', '2018-10-11 10:00:48');
INSERT INTO `user_log` VALUES (879, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-11 10:00:54');
INSERT INTO `user_log` VALUES (880, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-11 10:03:55');
INSERT INTO `user_log` VALUES (881, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-11 10:07:16');
INSERT INTO `user_log` VALUES (882, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-11 10:07:36');
INSERT INTO `user_log` VALUES (883, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-11 10:07:59');
INSERT INTO `user_log` VALUES (884, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-11 10:09:07');
INSERT INTO `user_log` VALUES (885, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-11 10:10:33');
INSERT INTO `user_log` VALUES (886, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit/1', 'Administrator', '2018-10-11 10:15:51');
INSERT INTO `user_log` VALUES (887, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit/1', 'Administrator', '2018-10-11 10:17:31');
INSERT INTO `user_log` VALUES (888, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_keluarga/8', 'Administrator', '2018-10-11 10:20:23');
INSERT INTO `user_log` VALUES (889, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit/1', 'Administrator', '2018-10-11 10:20:23');
INSERT INTO `user_log` VALUES (890, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-11 10:23:58');
INSERT INTO `user_log` VALUES (891, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-11 10:26:42');
INSERT INTO `user_log` VALUES (892, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-11 10:27:33');
INSERT INTO `user_log` VALUES (893, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-11 10:27:57');
INSERT INTO `user_log` VALUES (894, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-11 10:28:44');
INSERT INTO `user_log` VALUES (895, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-11 10:31:20');
INSERT INTO `user_log` VALUES (896, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-11 10:32:32');
INSERT INTO `user_log` VALUES (897, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-11 10:33:05');
INSERT INTO `user_log` VALUES (898, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-11 10:33:17');
INSERT INTO `user_log` VALUES (899, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-11 10:34:12');
INSERT INTO `user_log` VALUES (900, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-11 10:36:08');
INSERT INTO `user_log` VALUES (901, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-11 10:37:07');
INSERT INTO `user_log` VALUES (902, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-11 10:37:51');
INSERT INTO `user_log` VALUES (903, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-11 10:38:59');
INSERT INTO `user_log` VALUES (904, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-11 10:40:50');
INSERT INTO `user_log` VALUES (905, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-11 10:41:05');
INSERT INTO `user_log` VALUES (906, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-11 10:42:18');
INSERT INTO `user_log` VALUES (907, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-11 10:42:42');
INSERT INTO `user_log` VALUES (908, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-11 10:43:26');
INSERT INTO `user_log` VALUES (909, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-11 10:45:29');
INSERT INTO `user_log` VALUES (910, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-11 10:45:33');
INSERT INTO `user_log` VALUES (911, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-11 10:45:57');
INSERT INTO `user_log` VALUES (912, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-11 10:46:31');
INSERT INTO `user_log` VALUES (913, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-11 10:46:43');
INSERT INTO `user_log` VALUES (914, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-11 10:47:41');
INSERT INTO `user_log` VALUES (915, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-11 10:48:21');
INSERT INTO `user_log` VALUES (916, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-11 11:51:51');
INSERT INTO `user_log` VALUES (917, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-11 11:55:31');
INSERT INTO `user_log` VALUES (918, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-11 11:56:18');
INSERT INTO `user_log` VALUES (919, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-11 11:57:03');
INSERT INTO `user_log` VALUES (920, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-11 11:57:16');
INSERT INTO `user_log` VALUES (921, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-11 11:58:20');
INSERT INTO `user_log` VALUES (922, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-11 11:59:13');
INSERT INTO `user_log` VALUES (923, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-11 12:00:18');
INSERT INTO `user_log` VALUES (924, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-11 12:00:51');
INSERT INTO `user_log` VALUES (925, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-11 12:02:44');
INSERT INTO `user_log` VALUES (926, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-11 12:02:59');
INSERT INTO `user_log` VALUES (927, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-11 12:06:05');
INSERT INTO `user_log` VALUES (928, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-11 12:07:02');
INSERT INTO `user_log` VALUES (929, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-11 12:08:16');
INSERT INTO `user_log` VALUES (930, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/member/program', 'Administrator', '2018-10-11 12:08:16');
INSERT INTO `user_log` VALUES (931, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit_program/1', 'Administrator', '2018-10-11 12:08:33');
INSERT INTO `user_log` VALUES (932, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit/1', 'Administrator', '2018-10-11 12:09:05');
INSERT INTO `user_log` VALUES (933, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/pendaftaran/edit/1', 'Administrator', '2018-10-11 12:09:35');
INSERT INTO `user_log` VALUES (934, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-10-12 18:51:58');
INSERT INTO `user_log` VALUES (935, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-10-12 18:52:03');
INSERT INTO `user_log` VALUES (936, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor', 'Administrator', '2018-10-12 18:52:03');
INSERT INTO `user_log` VALUES (937, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas', 'Administrator', '2018-10-12 18:52:08');
INSERT INTO `user_log` VALUES (938, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas', 'Administrator', '2018-10-12 18:54:23');
INSERT INTO `user_log` VALUES (939, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas', 'Administrator', '2018-10-12 18:54:57');
INSERT INTO `user_log` VALUES (940, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas/unggah', 'Administrator', '2018-10-12 18:55:32');
INSERT INTO `user_log` VALUES (941, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas', 'Administrator', '2018-10-12 19:01:44');
INSERT INTO `user_log` VALUES (942, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas', 'Administrator', '2018-10-12 19:01:56');
INSERT INTO `user_log` VALUES (943, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas', 'Administrator', '2018-10-12 19:03:20');
INSERT INTO `user_log` VALUES (944, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas/unggah', 'Administrator', '2018-10-12 19:03:24');
INSERT INTO `user_log` VALUES (945, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas', 'Administrator', '2018-10-12 19:04:17');
INSERT INTO `user_log` VALUES (946, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas', 'Administrator', '2018-10-12 19:04:18');
INSERT INTO `user_log` VALUES (947, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas/unggah', 'Administrator', '2018-10-12 19:06:15');
INSERT INTO `user_log` VALUES (948, '127.0.0.1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas', 'Administrator', '2018-10-12 19:07:16');
INSERT INTO `user_log` VALUES (949, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas', 'Administrator', '2018-10-12 19:09:26');
INSERT INTO `user_log` VALUES (950, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas/unggah', 'Administrator', '2018-10-12 19:09:30');
INSERT INTO `user_log` VALUES (951, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas', 'Administrator', '2018-10-12 19:24:41');
INSERT INTO `user_log` VALUES (952, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas', 'Administrator', '2018-10-12 19:27:31');
INSERT INTO `user_log` VALUES (953, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas', 'Administrator', '2018-10-12 19:27:45');
INSERT INTO `user_log` VALUES (954, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas', 'Administrator', '2018-10-12 19:29:38');
INSERT INTO `user_log` VALUES (955, '127.0.0.1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas', 'Administrator', '2018-10-12 19:30:49');
INSERT INTO `user_log` VALUES (956, '127.0.0.1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas', 'Administrator', '2018-10-12 19:30:49');
INSERT INTO `user_log` VALUES (957, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas', 'Administrator', '2018-10-12 19:31:36');
INSERT INTO `user_log` VALUES (958, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas', 'Administrator', '2018-10-12 19:31:52');
INSERT INTO `user_log` VALUES (959, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas/kelola/aceh', 'Administrator', '2018-10-12 19:32:13');
INSERT INTO `user_log` VALUES (960, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas', 'Administrator', '2018-10-12 19:32:15');
INSERT INTO `user_log` VALUES (961, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas/kelola/aceh', 'Administrator', '2018-10-12 19:34:35');
INSERT INTO `user_log` VALUES (962, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas/kelola/aceh', 'Administrator', '2018-10-12 19:35:35');
INSERT INTO `user_log` VALUES (963, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas/kelola/aceh', 'Administrator', '2018-10-12 19:35:57');
INSERT INTO `user_log` VALUES (964, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas/kelola/aceh', 'Administrator', '2018-10-12 19:36:10');
INSERT INTO `user_log` VALUES (965, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas/kelola/aceh', 'Administrator', '2018-10-12 19:36:35');
INSERT INTO `user_log` VALUES (966, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas/kelola/aceh', 'Administrator', '2018-10-12 19:37:13');
INSERT INTO `user_log` VALUES (967, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas', 'Administrator', '2018-10-12 19:38:38');
INSERT INTO `user_log` VALUES (968, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas/kelola/jawa-barat', 'Administrator', '2018-10-12 19:38:44');
INSERT INTO `user_log` VALUES (969, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas/kelola/jawa-barat', 'Administrator', '2018-10-12 19:39:32');
INSERT INTO `user_log` VALUES (970, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas/kelola/jawa-barat', 'Administrator', '2018-10-12 19:39:55');
INSERT INTO `user_log` VALUES (971, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas/kelola/jawa-barat', 'Administrator', '2018-10-12 19:40:26');
INSERT INTO `user_log` VALUES (972, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas', 'Administrator', '2018-10-12 19:43:18');
INSERT INTO `user_log` VALUES (973, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas/unggah', 'Administrator', '2018-10-12 19:43:22');
INSERT INTO `user_log` VALUES (974, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas', 'Administrator', '2018-10-12 19:50:54');
INSERT INTO `user_log` VALUES (975, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-10-16 17:57:40');
INSERT INTO `user_log` VALUES (976, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-11-05 10:35:17');
INSERT INTO `user_log` VALUES (977, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor', 'Administrator', '2018-11-05 10:35:18');
INSERT INTO `user_log` VALUES (978, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor/konfigurasi', 'Administrator', '2018-11-05 10:35:26');
INSERT INTO `user_log` VALUES (979, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor/konfigurasi', 'Administrator', '2018-11-05 10:36:11');
INSERT INTO `user_log` VALUES (980, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor/konfigurasi', 'Administrator', '2018-11-05 10:36:12');
INSERT INTO `user_log` VALUES (981, '::1', 5, NULL, '', 'http://localhost/dlp/login/logout', 'Administrator', '2018-11-05 10:36:18');
INSERT INTO `user_log` VALUES (982, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-11-05 10:36:18');
INSERT INTO `user_log` VALUES (983, '::1', 0, '-', '-', 'http://localhost/dlp/admin/dasbor/konfigurasi', '-', '2018-11-05 10:37:10');
INSERT INTO `user_log` VALUES (984, '::1', 0, '-', '-', 'http://localhost/dlp/admin/dasbor/konfigurasi', '-', '2018-11-05 10:37:11');
INSERT INTO `user_log` VALUES (985, '::1', 0, '-', '-', 'http://localhost/dlp/admin/dasbor', '-', '2018-11-05 10:37:15');
INSERT INTO `user_log` VALUES (986, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-11-06 08:26:46');
INSERT INTO `user_log` VALUES (987, '::1', 0, NULL, '', 'http://localhost/dlp/login', 'Administrator', '2018-11-06 08:26:51');
INSERT INTO `user_log` VALUES (988, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/dasbor', 'Administrator', '2018-11-06 08:26:51');
INSERT INTO `user_log` VALUES (989, '::1', 5, 'andoyo', 'Admin', 'http://localhost/dlp/admin/puskesmas', 'Administrator', '2018-11-06 08:26:57');
INSERT INTO `user_log` VALUES (990, '::1', 1, 'andoyo', 'Admin', 'http://localhost/ltkl/admin/berita', 'Administrator', '2019-02-19 11:20:00');
INSERT INTO `user_log` VALUES (991, '::1', 1, 'andoyo', '', 'http://localhost/ltkl/admin/berita', '', '2019-02-19 11:21:31');
INSERT INTO `user_log` VALUES (992, '::1', 1, 'andoyo', '', 'http://localhost/ltkl/admin/berita', '', '2019-02-19 11:22:07');
INSERT INTO `user_log` VALUES (993, '::1', 1, 'andoyo', '', 'http://localhost/ltkl/admin/berita', '', '2019-02-19 11:23:19');
INSERT INTO `user_log` VALUES (994, '::1', 1, 'andoyo', '', 'http://localhost/ltkl/admin/berita/tambah', '', '2019-02-19 11:23:28');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/berita', '', '2019-03-01 15:54:42');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/berita', '', '2019-03-01 15:59:23');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/berita/proses', '', '2019-03-01 15:59:35');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/berita/proses', '', '2019-03-01 15:59:40');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/berita', '', '2019-03-01 15:59:44');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/download', '', '2019-03-01 15:59:51');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/download', '', '2019-03-01 16:01:06');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/galeri', '', '2019-03-01 16:01:32');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/galeri', '', '2019-03-01 16:01:54');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/galeri/proses', '', '2019-03-01 16:02:03');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/galeri', '', '2019-03-01 16:02:08');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/galeri', '', '2019-03-01 16:02:26');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/agenda', '', '2019-03-01 16:02:38');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori_galeri', '', '2019-03-01 16:02:43');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori_galeri', '', '2019-03-01 16:03:13');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/video', '', '2019-03-01 16:03:17');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/berita/tambah', '', '2019-03-01 16:12:39');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/berita/tambah', '', '2019-03-01 16:13:11');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/berita', '', '2019-03-01 16:13:11');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/galeri/tambah', '', '2019-03-01 16:20:16');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/galeri/tambah', '', '2019-03-01 16:21:14');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/galeri', '', '2019-03-01 16:21:14');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/galeri/tambah', '', '2019-03-01 16:26:31');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/galeri/tambah', '', '2019-03-01 16:26:54');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/galeri', '', '2019-03-01 16:26:54');
INSERT INTO `user_log` VALUES (0, '::1', 0, '-', '', 'http://localhost/bkkbn/admin/aplikasi', '', '2019-03-01 19:04:34');
INSERT INTO `user_log` VALUES (0, '::1', 0, '-', '', 'http://localhost/bkkbn/admin/aplikasi', '', '2019-03-01 19:07:24');
INSERT INTO `user_log` VALUES (0, '::1', 0, '-', '', 'http://localhost/bkkbn/admin/aplikasi', '', '2019-03-01 19:07:52');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/aplikasi', '', '2019-03-01 19:08:17');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/aplikasi', '', '2019-03-01 19:09:43');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/aplikasi/tambah', '', '2019-03-01 19:10:06');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/aplikasi', '', '2019-03-01 19:12:06');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/aplikasi/proses', '', '2019-03-01 19:12:12');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/aplikasi', '', '2019-03-01 19:12:13');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/aplikasi/proses', '', '2019-03-01 19:12:17');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/aplikasi', '', '2019-03-01 19:12:18');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/aplikasi/tambah', '', '2019-03-01 19:12:34');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/aplikasi/tambah', '', '2019-03-01 19:13:20');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/aplikasi/tambah', '', '2019-03-01 19:13:49');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/aplikasi/tambah', '', '2019-03-01 19:14:31');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/aplikasi/tambah', '', '2019-03-01 19:14:50');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/aplikasi/tambah', '', '2019-03-01 19:15:08');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/aplikasi/tambah', '', '2019-03-01 19:15:33');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/berita/tambah', '', '2019-03-01 19:15:39');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/berita/tambah', '', '2019-03-01 19:15:52');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/berita', '', '2019-03-01 19:15:56');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/aplikasi', '', '2019-03-01 19:16:01');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/aplikasi', '', '2019-03-01 19:16:50');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/aplikasi/proses', '', '2019-03-01 19:16:59');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/aplikasi', '', '2019-03-01 19:17:03');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/aplikasi/tambah', '', '2019-03-01 19:17:24');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/aplikasi/tambah', '', '2019-03-01 19:17:38');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/aplikasi/tambah', '', '2019-03-01 19:18:06');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/aplikasi/tambah', '', '2019-03-01 19:18:18');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/aplikasi/tambah', '', '2019-03-01 19:18:59');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/aplikasi/tambah', '', '2019-03-01 19:19:17');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/aplikasi', '', '2019-03-01 19:19:17');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/aplikasi', '', '2019-03-01 19:19:49');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/aplikasi/edit/13', '', '2019-03-01 19:20:00');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/aplikasi/edit/13', '', '2019-03-01 19:20:06');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/aplikasi', '', '2019-03-01 19:20:07');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/aplikasi/edit/13', '', '2019-03-01 19:20:52');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/aplikasi/edit/13', '', '2019-03-01 19:20:59');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/aplikasi', '', '2019-03-01 19:21:00');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/aplikasi', '', '2019-03-01 20:42:14');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/berita', '', '2019-03-02 17:06:46');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori', '', '2019-03-02 17:06:50');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori/edit/5', '', '2019-03-02 17:06:53');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori/edit/5', '', '2019-03-02 17:06:55');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori', '', '2019-03-02 17:06:56');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/menu', '', '2019-03-02 17:23:23');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/menu', '', '2019-03-02 17:25:51');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/menu', '', '2019-03-02 17:27:29');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/menu', '', '2019-03-02 17:27:55');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/menu', '', '2019-03-02 17:28:29');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/menu/detail/2', '', '2019-03-02 17:28:51');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/menu', '', '2019-03-02 17:28:55');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/menu', '', '2019-03-02 17:31:16');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/menu', '', '2019-03-02 17:31:40');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/menu', '', '2019-03-02 17:31:41');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/menu/detail/1', '', '2019-03-02 17:31:47');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/menu/detail/1', '', '2019-03-02 17:32:02');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/menu/detail/1', '', '2019-03-02 17:32:13');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/menu/detail/1', '', '2019-03-02 17:32:13');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/menu/detail/1', '', '2019-03-02 17:32:21');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/menu/detail/1', '', '2019-03-02 17:32:27');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/menu/detail/1', '', '2019-03-02 17:32:32');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/menu/detail/1', '', '2019-03-02 17:32:32');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/menu', '', '2019-03-02 17:32:35');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/menu', '', '2019-03-02 17:32:54');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/menu', '', '2019-03-02 17:33:11');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/menu', '', '2019-03-02 17:35:36');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-02 17:35:42');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-02 17:36:21');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-02 18:02:02');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-02 18:06:18');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-02 18:06:59');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-02 18:08:38');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-02 18:09:05');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-02 18:15:37');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-02 18:15:48');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-02 18:16:17');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-02 18:16:39');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-02 18:16:51');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-02 18:16:51');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-02 18:18:13');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-02 18:19:28');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-02 18:19:50');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-02 18:20:13');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-02 18:20:45');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-02 18:22:01');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-02 18:22:14');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-02 18:22:56');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-02 18:24:00');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-02 18:24:29');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-02 18:24:53');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-02 18:24:54');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-02 18:26:12');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-02 18:26:23');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-02 18:26:23');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/berita/tambah', '', '2019-03-02 19:04:44');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-04 10:54:19');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-04 10:54:46');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/edit/2', '', '2019-03-04 10:54:48');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/edit/2', '', '2019-03-04 10:57:40');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/edit/2', '', '2019-03-04 10:58:15');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/edit/2', '', '2019-03-04 10:58:22');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-04 10:58:22');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/edit/1', '', '2019-03-04 10:58:29');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/edit/1', '', '2019-03-04 10:58:33');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-04 10:58:33');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/edit/1', '', '2019-03-04 10:58:36');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/edit/1', '', '2019-03-04 10:58:48');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/edit/1', '', '2019-03-04 10:59:08');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/edit/1', '', '2019-03-04 10:59:12');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-04 10:59:13');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/edit/1', '', '2019-03-04 10:59:15');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-04 10:59:19');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/2', '', '2019-03-04 10:59:22');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/2', '', '2019-03-04 10:59:42');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/2', '', '2019-03-04 11:00:55');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/2', '', '2019-03-04 11:01:46');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/2', '', '2019-03-04 11:02:18');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/2', '', '2019-03-04 11:02:26');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/2', '', '2019-03-04 11:02:39');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/2', '', '2019-03-04 11:06:19');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/2', '', '2019-03-04 11:06:19');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/2', '', '2019-03-04 11:07:39');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/2', '', '2019-03-04 11:08:39');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/2', '', '2019-03-04 11:10:11');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/2', '', '2019-03-04 11:11:13');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/2', '', '2019-03-04 11:11:29');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/2', '', '2019-03-04 11:11:44');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/2', '', '2019-03-04 11:11:51');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/2', '', '2019-03-04 11:14:06');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/2', '', '2019-03-04 11:14:12');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/2', '', '2019-03-04 11:14:12');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/delete_sub_tema/2/2', '', '2019-03-04 11:14:15');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/delete_sub_tema/2/2', '', '2019-03-04 11:14:16');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/2', '', '2019-03-04 11:14:16');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/2', '', '2019-03-04 11:14:28');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/2', '', '2019-03-04 11:17:44');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/edit_sub_tema/1', '', '2019-03-04 11:17:47');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/edit_sub_tema/1', '', '2019-03-04 11:17:58');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/2', '', '2019-03-04 11:17:58');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-04 11:18:05');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-04 11:18:31');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-04 11:18:45');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-04 11:18:56');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-04 11:19:47');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-04 11:20:02');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-04 11:20:37');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/1', '', '2019-03-04 11:20:46');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/1', '', '2019-03-04 11:20:55');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/1', '', '2019-03-04 11:20:55');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-04 11:20:58');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-04 11:21:14');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-04 11:21:35');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-04 11:24:53');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-04 11:25:23');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-04 11:26:08');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-04 11:56:41');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-04 11:56:52');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-04 11:57:06');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/tema/11', '', '2019-03-04 11:58:55');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/tema/11', '', '2019-03-04 11:59:57');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/tema/11', '', '2019-03-04 12:00:08');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/tema/11', '', '2019-03-04 12:00:22');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/tema/11', '', '2019-03-04 12:00:49');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/tema/11', '', '2019-03-04 12:01:11');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/tema/11', '', '2019-03-04 12:01:42');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/tema/11', '', '2019-03-04 12:02:04');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/tema/11', '', '2019-03-04 12:02:36');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/tema/11', '', '2019-03-04 12:02:49');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/tema/11', '', '2019-03-04 12:03:23');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-04 12:03:31');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/tema/12', '', '2019-03-04 12:03:44');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-04 12:03:48');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/galeri', '', '2019-03-04 13:23:09');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/galeri/edit/1', '', '2019-03-04 13:23:32');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/galeri/edit/1', '', '2019-03-04 13:23:58');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/galeri', '', '2019-03-04 13:23:59');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/galeri/edit/1', '', '2019-03-04 13:24:03');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/galeri/edit/1', '', '2019-03-04 13:24:08');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/galeri', '', '2019-03-04 13:24:08');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/galeri/edit/2', '', '2019-03-04 13:24:11');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/galeri/edit/2', '', '2019-03-04 13:24:16');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/galeri', '', '2019-03-04 13:24:17');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/berita/tambah', '', '2019-03-04 13:27:40');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/berita/tambah', '', '2019-03-04 13:28:26');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/berita', '', '2019-03-04 13:28:28');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/berita/tambah', '', '2019-03-04 13:29:10');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/berita/tambah', '', '2019-03-04 13:29:49');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/berita', '', '2019-03-04 13:29:50');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/berita', '', '2019-03-04 13:30:53');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori', '', '2019-03-04 13:30:58');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori/edit/5', '', '2019-03-04 13:31:01');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori/edit/5', '', '2019-03-04 13:31:06');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori', '', '2019-03-04 13:31:06');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori/delete/1', '', '2019-03-04 13:31:11');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori/delete/1', '', '2019-03-04 13:31:11');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori', '', '2019-03-04 13:31:12');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori/edit/4', '', '2019-03-04 13:31:15');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori/edit/4', '', '2019-03-04 13:31:22');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori', '', '2019-03-04 13:31:22');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori/delete/3', '', '2019-03-04 13:31:26');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori/delete/3', '', '2019-03-04 13:31:26');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori', '', '2019-03-04 13:31:27');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori/delete/2', '', '2019-03-04 13:31:31');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori/delete/2', '', '2019-03-04 13:31:31');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori', '', '2019-03-04 13:31:31');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori_galeri', '', '2019-03-04 13:32:56');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori_galeri/edit/5', '', '2019-03-04 13:32:59');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori_galeri/edit/5', '', '2019-03-04 13:33:04');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori_galeri', '', '2019-03-04 13:33:04');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori_galeri/edit/4', '', '2019-03-04 13:33:07');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori_galeri/edit/4', '', '2019-03-04 13:33:11');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori_galeri', '', '2019-03-04 13:33:11');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori_galeri/delete/3', '', '2019-03-04 13:33:17');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori_galeri/delete/3', '', '2019-03-04 13:33:17');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori_galeri', '', '2019-03-04 13:33:18');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori_galeri/delete/2', '', '2019-03-04 13:33:21');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori_galeri/delete/2', '', '2019-03-04 13:33:22');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori_galeri', '', '2019-03-04 13:33:22');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori_galeri/delete/1', '', '2019-03-04 13:33:25');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori_galeri/delete/1', '', '2019-03-04 13:33:25');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori_galeri', '', '2019-03-04 13:33:26');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori_download', '', '2019-03-04 13:33:34');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/berita', '', '2019-03-04 13:35:45');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/berita/edit/11', '', '2019-03-04 13:35:48');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/berita/edit/11', '', '2019-03-04 13:35:53');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/berita', '', '2019-03-04 13:35:54');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-04 14:07:20');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/3', '', '2019-03-04 14:11:07');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/3', '', '2019-03-04 14:11:15');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/3', '', '2019-03-04 14:11:15');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-04 14:11:33');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/berita', '', '2019-03-04 16:17:44');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/galeri', '', '2019-03-04 16:18:22');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/galeri', '', '2019-03-04 16:18:55');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/video', '', '2019-03-04 16:18:59');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/video', '', '2019-03-04 16:19:18');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-04 17:26:17');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-04 17:26:43');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/berita', '', '2019-03-04 19:32:00');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/berita/edit/13', '', '2019-03-04 19:32:09');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-04 19:41:08');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/edit/2', '', '2019-03-04 19:41:13');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-04 19:41:17');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/edit/2', '', '2019-03-04 19:41:51');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/edit/2', '', '2019-03-04 19:42:06');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-04 19:42:07');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/edit/3', '', '2019-03-04 19:42:13');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/edit/3', '', '2019-03-04 19:42:34');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-04 19:42:34');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-04 20:03:27');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/tema/11', '', '2019-03-04 20:04:13');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/delete_sub_tema/3/1', '', '2019-03-04 20:04:21');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/delete_sub_tema/3/1', '', '2019-03-04 20:04:22');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/1', '', '2019-03-04 20:04:22');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-04 20:04:28');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/delete/1', '', '2019-03-04 20:04:36');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/delete/1', '', '2019-03-04 20:04:36');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-04 20:04:36');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/edit_sub_tema/1', '', '2019-03-04 20:04:45');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/edit_sub_tema/1', '', '2019-03-04 20:04:55');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/2', '', '2019-03-04 20:04:55');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/2', '', '2019-03-04 20:05:11');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/2', '', '2019-03-04 20:05:12');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/edit_sub_tema/1', '', '2019-03-04 20:05:20');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/edit_sub_tema/1', '', '2019-03-04 20:05:23');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/edit_sub_tema/1', '', '2019-03-04 20:05:58');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/2', '', '2019-03-04 20:05:58');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/2', '', '2019-03-04 20:06:24');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/2', '', '2019-03-04 20:06:45');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/2', '', '2019-03-04 20:06:46');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/2', '', '2019-03-04 20:07:01');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/2', '', '2019-03-04 20:07:02');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/2', '', '2019-03-04 20:07:16');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/2', '', '2019-03-04 20:07:16');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-04 20:08:47');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/delete_sub_tema/4/3', '', '2019-03-04 20:08:54');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/delete_sub_tema/4/3', '', '2019-03-04 20:08:54');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/3', '', '2019-03-04 20:08:54');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-04 20:08:57');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/delete/3', '', '2019-03-04 20:09:01');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/delete/3', '', '2019-03-04 20:09:01');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-04 20:09:02');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/galeri', '', '2019-03-04 20:35:19');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/video', '', '2019-03-04 20:35:44');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema', '', '2019-03-04 20:36:56');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/edit_sub_tema/8', '', '2019-03-04 20:39:36');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/edit_sub_tema/8', '', '2019-03-04 20:39:42');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/tema/detail/2', '', '2019-03-04 20:39:42');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/download', '', '2019-03-04 21:24:11');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/download/tambah', '', '2019-03-04 21:24:13');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/download/tambah', '', '2019-03-04 21:26:18');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon', '', '2019-03-07 14:46:10');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon', '', '2019-03-07 14:47:30');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon', '', '2019-03-07 14:47:53');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon', '', '2019-03-07 14:48:14');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon', '', '2019-03-07 14:49:09');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon', '', '2019-03-07 14:49:39');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon', '', '2019-03-07 14:53:52');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon', '', '2019-03-07 15:21:50');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon', '', '2019-03-07 15:30:45');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon', '', '2019-03-07 15:31:08');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon', '', '2019-03-07 15:32:01');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon', '', '2019-03-07 15:32:27');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon', '', '2019-03-07 15:32:28');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon', '', '2019-03-07 15:32:57');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon', '', '2019-03-07 15:32:58');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon', '', '2019-03-07 15:33:14');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon', '', '2019-03-07 15:33:15');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/edit/1', '', '2019-03-07 15:33:18');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/edit/1', '', '2019-03-07 15:33:39');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/edit/1', '', '2019-03-07 15:33:54');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon', '', '2019-03-07 15:33:55');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/edit/2', '', '2019-03-07 15:33:59');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/edit/2', '', '2019-03-07 15:34:02');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon', '', '2019-03-07 15:34:02');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/edit/3', '', '2019-03-07 15:34:05');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/edit/3', '', '2019-03-07 15:34:09');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon', '', '2019-03-07 15:34:09');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/1', '', '2019-03-07 15:34:12');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/1', '', '2019-03-07 15:34:54');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/1', '', '2019-03-07 15:35:07');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/1', '', '2019-03-07 15:35:38');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/1', '', '2019-03-07 15:56:19');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/1', '', '2019-03-07 15:57:37');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/1', '', '2019-03-07 15:58:46');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/1', '', '2019-03-07 15:59:00');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/1', '', '2019-03-07 15:59:21');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/1', '', '2019-03-07 15:59:47');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/1', '', '2019-03-07 16:00:17');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/1', '', '2019-03-07 16:03:04');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/1', '', '2019-03-07 16:03:23');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/1', '', '2019-03-07 16:03:45');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/1', '', '2019-03-07 16:04:30');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/1', '', '2019-03-07 16:45:32');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/1', '', '2019-03-07 16:46:00');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/1', '', '2019-03-07 16:46:30');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/1', '', '2019-03-07 16:50:48');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/berita/proses', '', '2019-03-07 16:50:53');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/berita', '', '2019-03-07 16:50:54');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/1', '', '2019-03-07 16:51:44');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/1', '', '2019-03-07 16:51:56');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/1', '', '2019-03-07 16:52:50');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/1', '', '2019-03-07 16:52:55');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/1', '', '2019-03-07 16:54:18');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/1', '', '2019-03-07 16:55:23');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/1', '', '2019-03-07 16:55:29');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/1', '', '2019-03-07 16:57:41');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/1', '', '2019-03-07 16:58:00');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/1', '', '2019-03-07 16:58:14');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/1', '', '2019-03-07 16:58:15');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/1', '', '2019-03-07 16:58:48');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/1', '', '2019-03-07 16:59:03');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/1', '', '2019-03-07 16:59:16');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/1', '', '2019-03-07 16:59:32');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/1', '', '2019-03-07 16:59:53');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/1', '', '2019-03-07 17:00:29');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/1', '', '2019-03-07 17:00:30');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/1', '', '2019-03-07 17:01:45');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/1', '', '2019-03-07 17:01:46');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon', '', '2019-03-07 17:02:16');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon', '', '2019-03-07 17:04:59');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon', '', '2019-03-07 17:05:18');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/3', '', '2019-03-07 17:05:42');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/3', '', '2019-03-07 17:06:04');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/3', '', '2019-03-07 17:06:06');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon', '', '2019-03-07 17:06:09');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon', '', '2019-03-07 17:06:23');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/2', '', '2019-03-07 17:22:10');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon', '', '2019-03-07 17:22:16');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/2', '', '2019-03-07 17:22:20');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon', '', '2019-03-08 02:07:37');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/kategori', '', '2019-03-10 15:32:55');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar', '', '2019-03-10 15:34:14');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar', '', '2019-03-10 15:35:17');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar', '', '2019-03-10 15:36:37');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar', '', '2019-03-10 15:37:21');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar', '', '2019-03-10 15:39:19');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar', '', '2019-03-10 15:39:32');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar', '', '2019-03-10 15:39:58');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar', '', '2019-03-10 15:41:13');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar', '', '2019-03-10 15:41:26');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar', '', '2019-03-10 15:41:56');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar', '', '2019-03-10 15:41:56');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar', '', '2019-03-10 15:42:31');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar', '', '2019-03-10 15:42:44');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar', '', '2019-03-10 16:02:25');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar', '', '2019-03-10 16:04:34');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar', '', '2019-03-10 16:04:51');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar', '', '2019-03-10 16:06:40');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/edit/1', '', '2019-03-10 16:06:42');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/edit/1', '', '2019-03-10 16:08:50');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/edit/1', '', '2019-03-10 16:09:40');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar', '', '2019-03-10 16:11:12');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 16:49:45');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 16:50:07');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 16:50:35');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 16:50:50');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 16:58:34');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 16:58:52');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 16:58:58');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 16:59:53');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 17:13:31');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 17:14:48');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 17:15:19');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 17:17:34');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 17:18:05');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 17:21:11');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 17:22:05');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 17:23:30');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 17:24:01');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 17:25:25');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 17:27:32');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 17:29:19');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 17:29:30');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 17:29:42');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 17:30:44');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 17:31:03');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter', '', '2019-03-10 17:31:03');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar', '', '2019-03-10 17:31:08');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 17:31:10');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 17:31:39');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter', '', '2019-03-10 17:31:40');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 17:31:53');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 17:32:29');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 17:32:51');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 17:33:54');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 17:33:55');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 17:35:05');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 17:35:06');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 17:36:36');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 17:36:36');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 17:37:40');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 17:37:40');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 17:37:48');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 17:38:12');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/edit_parameter/1', '', '2019-03-10 17:41:51');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/edit_parameter/1', '', '2019-03-10 17:42:24');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/edit_parameter/1', '', '2019-03-10 17:43:03');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/edit_parameter/1', '', '2019-03-10 17:44:02');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 17:44:02');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/edit_parameter/2', '', '2019-03-10 17:44:06');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/edit_parameter/2', '', '2019-03-10 17:44:52');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 17:44:53');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/edit_parameter/3', '', '2019-03-10 17:44:56');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/edit_parameter/3', '', '2019-03-10 17:45:57');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 17:45:58');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/edit_parameter/4', '', '2019-03-10 17:46:01');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/edit_parameter/4', '', '2019-03-10 17:48:12');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 17:48:13');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/edit_parameter/4', '', '2019-03-10 17:48:48');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/edit_parameter/4', '', '2019-03-10 17:49:03');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 17:49:03');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 17:49:30');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/edit_parameter/5', '', '2019-03-10 17:49:35');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar', '', '2019-03-10 17:49:40');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 17:49:42');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 17:51:46');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 17:51:46');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/delete_parameter/7/1', '', '2019-03-10 17:51:51');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/delete_parameter/7/1', '', '2019-03-10 17:51:52');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 17:51:52');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar', '', '2019-03-10 17:53:16');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar', '', '2019-03-10 18:09:43');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar', '', '2019-03-10 18:10:29');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 18:10:32');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar', '', '2019-03-10 18:14:35');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 18:15:35');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 18:15:52');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar', '', '2019-03-10 18:15:55');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-10 18:15:57');
INSERT INTO `user_log` VALUES (0, '::1', 0, '-', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-11 02:53:02');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar', '', '2019-03-11 02:53:20');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-11 02:53:22');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar', '', '2019-03-11 02:53:28');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar', '', '2019-03-11 02:58:07');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar', '', '2019-03-11 02:58:29');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/rayon/1', '', '2019-03-11 03:00:21');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/rayon/1', '', '2019-03-11 03:00:46');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/rayon/1', '', '2019-03-11 03:01:13');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/rayon/1', '', '2019-03-11 03:01:46');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/rayon/1', '', '2019-03-11 03:02:17');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/rayon/1', '', '2019-03-11 03:02:38');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/rayon/1', '', '2019-03-11 03:04:34');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/rayon/1', '', '2019-03-11 03:06:07');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/rayon/1', '', '2019-03-11 03:06:25');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/rayon/1', '', '2019-03-11 03:07:14');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/rayon/1', '', '2019-03-11 03:08:36');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/rayon/1', '', '2019-03-11 03:08:50');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/rayon/1', '', '2019-03-11 03:09:12');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/rayon/1', '', '2019-03-11 03:09:30');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/rayon/1', '', '2019-03-11 03:09:48');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/rayon/1', '', '2019-03-11 03:13:12');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/rayon/1', '', '2019-03-11 03:13:24');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/rayon/1', '', '2019-03-11 03:14:00');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/rayon/1', '', '2019-03-11 03:14:25');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/rayon/1', '', '2019-03-11 03:14:30');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/rayon/1', '', '2019-03-11 03:15:08');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/rayon/1', '', '2019-03-11 03:20:22');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/rayon/1', '', '2019-03-11 03:20:31');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/rayon/1', '', '2019-03-11 03:20:47');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/rayon/1', '', '2019-03-11 03:20:55');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar', '', '2019-03-11 03:20:55');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/rayon/1', '', '2019-03-11 03:20:58');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/rayon/1', '', '2019-03-11 03:25:05');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar', '', '2019-03-11 03:25:08');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar', '', '2019-03-11 03:25:30');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar', '', '2019-03-11 03:26:51');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/rayon/1', '', '2019-03-11 03:28:38');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/rayon/1', '', '2019-03-11 03:28:43');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar', '', '2019-03-11 03:28:43');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/rayon/1', '', '2019-03-11 03:28:47');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/rayon/1', '', '2019-03-11 03:28:52');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar', '', '2019-03-11 03:28:52');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/agenda', '', '2019-03-18 20:47:21');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon', '', '2019-03-18 21:10:58');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon/detail/2', '', '2019-03-18 21:11:03');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon', '', '2019-03-18 21:11:06');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar', '', '2019-03-18 21:11:54');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/rayon/1', '', '2019-03-18 21:11:57');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar', '', '2019-03-18 21:12:26');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/rayon', '', '2019-03-18 21:13:34');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar', '', '2019-03-18 21:40:07');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/rayon/1', '', '2019-03-18 21:40:19');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar', '', '2019-03-18 21:40:26');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/standar/parameter/1', '', '2019-03-18 21:40:37');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/berita', '', '2019-03-25 16:16:10');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/berita/edit/11', '', '2019-03-25 16:16:19');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/berita/edit/11', '', '2019-03-25 16:16:39');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/berita', '', '2019-03-25 16:16:40');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/berita/tambah', '', '2019-03-25 16:16:50');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/berita/tambah', '', '2019-03-25 16:17:05');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/berita', '', '2019-03-25 16:17:05');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/galeri', '', '2019-03-25 20:10:07');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/galeri/edit/2', '', '2019-03-25 20:14:15');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/galeri/edit/2', '', '2019-03-25 20:14:29');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/galeri', '', '2019-03-25 20:14:29');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/galeri/delete/1', '', '2019-03-25 20:14:36');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/galeri/delete/1', '', '2019-03-25 20:14:39');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/galeri', '', '2019-03-25 20:14:46');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/galeri/edit/2', '', '2019-03-25 20:15:22');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/galeri/edit/2', '', '2019-03-25 20:15:37');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/galeri', '', '2019-03-25 20:15:38');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/galeri/edit/2', '', '2019-03-25 20:17:04');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/galeri/edit/2', '', '2019-03-25 20:17:42');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/galeri', '', '2019-03-25 20:17:46');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/bkkbn/admin/berita', '', '2019-03-25 20:18:41');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita', '', '2019-04-14 01:16:09');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita', '', '2019-04-14 01:16:35');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita', '', '2019-04-14 01:17:32');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/proses', '', '2019-04-14 01:17:56');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita', '', '2019-04-14 01:17:57');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/kategori_galeri', '', '2019-04-14 01:18:17');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/kategori_galeri', '', '2019-04-14 01:25:26');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/galeri', '', '2019-04-14 01:25:43');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/galeri', '', '2019-04-14 01:26:11');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/download', '', '2019-04-14 01:26:51');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/download/tambah', '', '2019-04-14 01:26:58');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/download/tambah', '', '2019-04-14 01:28:27');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/download/tambah', '', '2019-04-14 01:29:45');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/kategori_galeri', '', '2019-04-14 12:53:54');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita', '', '2019-05-13 20:17:06');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/tambah', '', '2019-05-13 20:17:09');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/video', '', '2019-05-13 20:17:37');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/download', '', '2019-05-13 20:17:44');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/galeri', '', '2019-05-13 20:18:00');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/galeri', '', '2019-05-13 20:22:45');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/agenda', '', '2019-05-13 20:23:15');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/agenda/tambah', '', '2019-05-13 20:23:21');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/agenda/tambah', '', '2019-05-13 20:24:41');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/agenda/tambah', '', '2019-05-13 20:24:56');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/galeri', '', '2019-05-13 20:48:09');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/galeri/edit/2', '', '2019-05-13 20:48:12');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/galeri/edit/2', '', '2019-05-13 20:49:02');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/galeri', '', '2019-05-13 20:49:03');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/galeri/tambah', '', '2019-05-13 20:49:27');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/galeri/tambah', '', '2019-05-13 20:50:26');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/galeri', '', '2019-05-13 20:50:28');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/galeri/edit/2', '', '2019-05-13 20:50:53');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/galeri/edit/2', '', '2019-05-13 20:50:58');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/galeri', '', '2019-05-13 20:50:59');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/tambah', '', '2019-05-13 20:51:35');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/tambah', '', '2019-05-13 20:51:50');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita', '', '2019-05-13 20:51:51');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/tambah', '', '2019-05-13 21:07:10');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/agenda', '', '2019-05-17 09:03:21');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/download', '', '2019-05-17 09:03:27');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/download', '', '2019-05-17 09:04:31');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita', '', '2019-05-17 09:04:44');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/tambah', '', '2019-05-17 09:04:46');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/tambah', '', '2019-05-17 09:05:44');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/tambah', '', '2019-05-17 09:06:15');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/tambah', '', '2019-05-17 09:15:33');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita', '', '2019-05-17 09:15:34');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/edit/2', '', '2019-05-17 09:15:48');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/edit/2', '', '2019-05-17 09:15:53');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita', '', '2019-05-17 09:15:54');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/tambah', '', '2019-05-17 09:23:27');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/tambah', '', '2019-05-17 09:28:18');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/tambah', '', '2019-05-17 09:29:15');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita', '', '2019-05-17 09:30:54');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/edit/2', '', '2019-05-17 09:30:59');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/edit/2', '', '2019-05-17 09:31:12');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita', '', '2019-05-17 09:31:13');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/edit/2', '', '2019-05-17 09:31:44');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/edit/2', '', '2019-05-17 09:32:02');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita', '', '2019-05-17 09:32:03');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/edit/2', '', '2019-05-17 09:33:28');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita', '', '2019-05-17 09:34:11');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/edit/2', '', '2019-05-17 09:34:34');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/edit/2', '', '2019-05-17 09:34:42');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita', '', '2019-05-17 09:34:43');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/tambah', '', '2019-05-17 09:36:19');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/tambah', '', '2019-05-17 09:37:00');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita', '', '2019-05-17 09:37:01');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/agenda', '', '2019-07-15 18:22:19');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/galeri', '', '2019-07-26 14:30:14');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/galeri/tambah', '', '2019-07-26 14:30:18');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/galeri/tambah', '', '2019-07-26 14:31:26');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/galeri', '', '2019-07-26 14:31:28');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/galeri/delete/2', '', '2019-07-26 14:38:43');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/galeri', '', '2019-07-26 14:38:44');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/galeri/delete/3', '', '2019-07-26 14:38:51');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/galeri', '', '2019-07-26 14:38:52');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/galeri/tambah', '', '2019-07-26 14:39:06');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/galeri/tambah', '', '2019-07-26 14:40:04');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/galeri', '', '2019-07-26 14:40:06');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/galeri', '', '2019-07-26 15:20:27');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/galeri/edit/4', '', '2019-07-26 15:20:36');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/galeri/edit/4', '', '2019-07-26 15:20:58');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/galeri', '', '2019-07-26 15:21:00');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/galeri/edit/5', '', '2019-07-26 15:21:05');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/galeri/edit/5', '', '2019-07-26 15:21:16');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/galeri', '', '2019-07-26 15:21:19');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/galeri/edit/4', '', '2019-07-26 15:28:32');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/galeri/edit/4', '', '2019-07-26 15:28:53');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/galeri', '', '2019-07-26 15:28:54');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/galeri/edit/5', '', '2019-07-26 15:28:58');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/galeri/edit/5', '', '2019-07-26 15:29:11');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/galeri', '', '2019-07-26 15:29:12');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/tambah', '', '2019-07-26 15:36:47');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/tambah', '', '2019-07-26 15:38:14');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita', '', '2019-07-26 15:38:16');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/edit/4', '', '2019-07-26 15:38:27');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/edit/4', '', '2019-07-26 15:38:34');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita', '', '2019-07-26 15:38:34');
INSERT INTO `user_log` VALUES (0, '::1', 0, '-', '', 'http://localhost/sigit/admin/berita', '', '2019-07-26 15:41:08');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita', '', '2019-07-26 15:41:20');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/tambah', '', '2019-07-26 15:41:25');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita', '', '2019-07-26 15:41:31');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/jenis_berita/Layanan', '', '2019-07-26 15:41:34');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita', '', '2019-07-26 15:46:33');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/jenis_berita/Profil', '', '2019-07-26 15:46:38');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/jenis_berita/Layanan', '', '2019-07-26 15:47:32');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/jenis_berita/Layanan', '', '2019-07-26 15:48:00');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/jenis_berita/Layanan', '', '2019-07-26 15:49:02');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/jenis_berita/Layanan', '', '2019-07-26 15:50:00');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/jenis_berita/Layanan', '', '2019-07-26 15:50:18');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/jenis_berita/Layanan', '', '2019-07-26 15:50:53');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/jenis_berita/Layanan', '', '2019-07-26 15:51:09');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/jenis_berita/Layanan', '', '2019-07-26 15:51:40');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/jenis_berita/Profil', '', '2019-07-26 15:51:54');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/edit/3', '', '2019-07-26 15:52:44');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/edit/3', '', '2019-07-26 15:53:05');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/jenis_berita/Layanan', '', '2019-07-26 15:53:06');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/edit/2', '', '2019-07-26 15:53:10');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/edit/2', '', '2019-07-26 15:53:25');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/jenis_berita/Layanan', '', '2019-07-26 15:53:25');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/tambah', '', '2019-07-26 15:53:37');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/tambah', '', '2019-07-26 15:54:06');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/jenis_berita/Layanan', '', '2019-07-26 15:54:06');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/edit/5', '', '2019-07-26 15:54:24');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/edit/5', '', '2019-07-26 15:54:28');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/jenis_berita/Layanan', '', '2019-07-26 15:54:28');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/edit/5', '', '2019-07-26 15:56:05');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita', '', '2019-07-26 15:56:10');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/jenis_berita/Layanan', '', '2019-07-26 15:56:13');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/edit/3', '', '2019-07-26 15:56:15');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/edit/3', '', '2019-07-26 15:56:20');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/jenis_berita/Layanan', '', '2019-07-26 15:56:21');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/edit/2', '', '2019-07-26 15:56:24');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/edit/2', '', '2019-07-26 15:56:29');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/jenis_berita/Layanan', '', '2019-07-26 15:56:29');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/edit/3', '', '2019-07-26 15:56:47');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/edit/3', '', '2019-07-26 15:56:55');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/jenis_berita/Layanan', '', '2019-07-26 15:56:55');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/edit/3', '', '2019-07-26 15:57:26');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/edit/3', '', '2019-07-26 15:57:35');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/jenis_berita/Layanan', '', '2019-07-26 15:57:36');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/edit/2', '', '2019-07-26 15:57:42');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/edit/2', '', '2019-07-26 15:57:46');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/sigit/admin/berita/jenis_berita/Layanan', '', '2019-07-26 15:57:46');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/compro/admin/berita', '', '2019-10-12 00:41:48');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/compro/admin/download', '', '2019-10-12 00:43:33');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/compro/admin/kategori_galeri', '', '2019-10-12 00:45:55');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/compro/admin/kategori', '', '2019-10-12 00:45:57');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/compro/admin/berita', '', '2019-10-12 00:50:27');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/compro/admin/agenda', '', '2019-10-12 00:50:31');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/compro/admin/agenda/tambah', '', '2019-10-12 00:50:35');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/compro/admin/download', '', '2019-10-12 00:52:17');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/compro/admin/download/delete/1', '', '2019-10-12 00:52:20');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/compro/admin/download', '', '2019-10-12 00:52:21');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/compro/admin/berita', '', '2019-10-12 00:52:31');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/compro/admin/berita/delete/5', '', '2019-10-12 00:52:33');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/compro/admin/berita', '', '2019-10-12 00:52:34');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/compro/admin/berita', '', '2019-10-12 00:53:19');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/compro/admin/download', '', '2019-10-12 00:54:00');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/compro/admin/download/tambah', '', '2019-10-12 00:54:02');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/compro/admin/download/tambah', '', '2019-10-12 00:54:15');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/compro/admin/download/tambah', '', '2019-10-12 00:54:24');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/compro/admin/download', '', '2019-10-12 00:54:24');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/compro/admin/download/delete/2', '', '2019-10-12 00:54:27');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/compro/admin/download', '', '2019-10-12 00:54:27');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/compro/admin/download/tambah', '', '2019-10-12 00:54:52');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/compro/admin/download/tambah', '', '2019-10-12 00:55:02');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/compro/admin/download', '', '2019-10-12 00:55:03');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/compro/admin/download', '', '2019-10-12 00:55:36');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/compro/admin/galeri', '', '2019-10-12 00:55:39');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/compro/admin/video', '', '2019-10-12 00:55:46');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/compro/admin/video', '', '2019-10-12 00:56:57');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/compro/admin/akun', '', '2019-10-12 00:57:00');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/compro/admin/akun', '', '2019-10-12 00:57:14');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/compro/admin/akun', '', '2019-10-12 00:57:34');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/compro/admin/akun', '', '2019-10-12 00:58:04');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/compro/admin/akun', '', '2019-10-12 00:58:05');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/compro/admin/agenda', '', '2019-10-12 00:58:14');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/compro/admin/agenda', '', '2019-10-12 00:58:42');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/compro/admin/akun', '', '2019-10-12 01:45:40');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/compro/admin/akun', '', '2019-10-12 01:45:48');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'andoyo', '', 'http://localhost/compro/admin/akun', '', '2019-10-12 01:45:48');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri', '', '2019-10-12 13:45:05');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri/tambah', '', '2019-10-12 13:45:09');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri/tambah', '', '2019-10-12 13:45:40');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri', '', '2019-10-12 13:45:42');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri/edit/6', '', '2019-10-12 13:45:57');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri/edit/6', '', '2019-10-12 13:46:03');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri', '', '2019-10-12 13:46:03');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita', '', '2019-10-12 13:46:32');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/tambah', '', '2019-10-12 13:46:35');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri', '', '2019-10-12 16:56:46');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita', '', '2019-10-12 20:53:28');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/kategori', '', '2019-10-12 20:53:31');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/tambah', '', '2019-10-12 20:53:40');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/akun', '', '2019-10-12 20:55:08');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita', '', '2019-10-12 20:55:19');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/tambah', '', '2019-10-12 20:55:21');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita', '', '2019-10-12 20:55:23');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/video', '', '2019-10-12 20:55:53');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/video/tambah', '', '2019-10-12 20:57:25');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/agenda', '', '2019-10-12 20:57:34');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita', '', '2019-10-13 15:38:56');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita', '', '2019-10-13 19:10:04');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri', '', '2019-10-15 22:58:09');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri/edit/5', '', '2019-10-15 22:58:15');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri/edit/5', '', '2019-10-15 22:58:31');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri', '', '2019-10-15 22:58:32');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri/edit/4', '', '2019-10-15 22:58:35');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri/edit/4', '', '2019-10-15 22:58:40');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri', '', '2019-10-15 22:58:41');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita', '', '2019-10-15 22:58:53');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/tambah', '', '2019-10-15 22:59:06');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita', '', '2019-10-15 23:01:51');
INSERT INTO `user_log` VALUES (0, '::1', 4, NULL, '', 'http://localhost/compro/admin/berita', '', '2019-10-15 23:39:04');
INSERT INTO `user_log` VALUES (0, '::1', 4, NULL, '', 'http://localhost/compro/admin/berita', '', '2019-10-15 23:39:07');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita', '', '2020-01-04 19:52:27');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita', '', '2020-01-04 20:13:28');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri', '', '2020-01-04 20:13:50');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri/edit/4', '', '2020-01-04 20:13:56');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri/edit/4', '', '2020-01-04 20:14:00');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri', '', '2020-01-04 20:14:00');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita', '', '2020-01-14 15:40:57');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/edit/1', '', '2020-01-14 15:41:01');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/edit/1', '', '2020-01-14 15:41:50');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/jenis_berita/Berita', '', '2020-01-14 15:41:51');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/akun', '', '2020-02-13 12:29:10');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri', '', '2020-02-13 12:32:18');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri/edit/4', '', '2020-02-13 12:32:25');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri/edit/4', '', '2020-02-13 12:33:01');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri', '', '2020-02-13 12:33:02');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri/edit/4', '', '2020-02-13 12:33:05');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri/edit/4', '', '2020-02-13 12:33:12');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri', '', '2020-02-13 12:33:12');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri/edit/5', '', '2020-02-13 12:33:18');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri/edit/5', '', '2020-02-13 12:34:11');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri', '', '2020-02-13 12:34:12');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri/edit/6', '', '2020-02-13 12:34:15');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri/edit/6', '', '2020-02-13 12:34:41');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri', '', '2020-02-13 12:34:42');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita', '', '2020-02-13 12:35:53');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/edit/4', '', '2020-02-13 12:35:56');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/edit/4', '', '2020-02-13 12:36:51');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/jenis_berita/Profil', '', '2020-02-13 12:36:52');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/edit/4', '', '2020-02-13 12:37:07');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/edit/4', '', '2020-02-13 12:38:01');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/jenis_berita/Profil', '', '2020-02-13 12:38:02');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/edit/4', '', '2020-02-13 12:38:08');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita', '', '2020-02-13 12:38:45');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/edit/4', '', '2020-02-13 12:38:50');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/edit/4', '', '2020-02-13 12:38:55');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/jenis_berita/Profil', '', '2020-02-13 12:38:56');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita', '', '2020-02-13 12:38:58');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/edit/3', '', '2020-02-13 12:39:02');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/edit/3', '', '2020-02-13 12:39:59');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/jenis_berita/Layanan', '', '2020-02-13 12:40:00');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/edit/3', '', '2020-02-13 12:40:16');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/edit/3', '', '2020-02-13 12:40:58');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/jenis_berita/Layanan', '', '2020-02-13 12:40:59');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/edit/2', '', '2020-02-13 12:41:03');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/edit/2', '', '2020-02-13 12:41:47');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/jenis_berita/Layanan', '', '2020-02-13 12:41:47');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/tambah', '', '2020-02-13 12:41:51');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/tambah', '', '2020-02-13 12:42:56');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/jenis_berita/Layanan', '', '2020-02-13 12:42:56');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/edit/6', '', '2020-02-13 12:43:03');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/jenis_berita/Layanan', '', '2020-02-13 12:43:05');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/edit/3', '', '2020-02-13 12:43:08');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/jenis_berita/Layanan', '', '2020-02-13 12:43:10');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/edit/2', '', '2020-02-13 12:43:12');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/edit/2', '', '2020-02-13 12:43:16');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/jenis_berita/Layanan', '', '2020-02-13 12:43:16');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita', '', '2020-02-13 12:43:39');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/edit/1', '', '2020-02-13 12:43:43');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/edit/1', '', '2020-02-13 12:44:24');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/jenis_berita/Berita', '', '2020-02-13 12:44:25');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/tambah', '', '2020-02-13 12:44:27');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/tambah', '', '2020-02-13 12:45:07');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/jenis_berita/Berita', '', '2020-02-13 12:45:07');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/video', '', '2020-02-13 12:47:10');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/video/edit/4', '', '2020-02-13 12:47:44');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/video/edit/4', '', '2020-02-13 12:48:03');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/video', '', '2020-02-13 12:48:03');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/video/edit/5', '', '2020-02-13 12:48:17');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/video/edit/5', '', '2020-02-13 12:48:31');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/video', '', '2020-02-13 12:48:31');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/download', '', '2020-02-13 12:48:59');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/download/edit/3', '', '2020-02-13 12:49:01');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/download/edit/3', '', '2020-02-13 12:49:28');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/download', '', '2020-02-13 12:49:29');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/download/tambah', '', '2020-02-13 12:49:33');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/download/tambah', '', '2020-02-13 12:50:10');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/download', '', '2020-02-13 12:50:11');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/download/edit/3', '', '2020-02-13 12:50:15');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/download/edit/3', '', '2020-02-13 12:50:27');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/download', '', '2020-02-13 12:50:27');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/download/tambah', '', '2020-02-13 12:50:30');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/download/tambah', '', '2020-02-13 12:50:48');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/download', '', '2020-02-13 12:50:48');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/kategori_download', '', '2020-02-13 12:50:53');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/kategori_download/edit/2', '', '2020-02-13 12:50:55');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/kategori_download/edit/2', '', '2020-02-13 12:51:04');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/kategori_download', '', '2020-02-13 12:51:04');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri', '', '2020-02-13 12:51:37');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri/tambah', '', '2020-02-13 12:51:40');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri/tambah', '', '2020-02-13 12:52:01');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri', '', '2020-02-13 12:52:02');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri/tambah', '', '2020-02-13 12:52:05');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri/tambah', '', '2020-02-13 12:52:18');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri', '', '2020-02-13 12:52:18');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri/tambah', '', '2020-02-13 12:53:39');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri/tambah', '', '2020-02-13 12:53:55');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri', '', '2020-02-13 12:53:56');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri/tambah', '', '2020-02-13 12:54:06');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri/tambah', '', '2020-02-13 12:54:28');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri', '', '2020-02-13 12:54:28');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/akun', '', '2020-02-13 12:58:21');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/akun/password', '', '2020-02-13 12:58:36');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/akun', '', '2020-02-13 12:58:37');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri', '', '2020-02-20 08:13:46');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/galeri/tambah', '', '2020-02-20 08:19:45');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/akun', '', '2020-02-20 08:52:56');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita', '', '2020-02-20 08:57:07');
INSERT INTO `user_log` VALUES (0, '::1', 1, 'javawebmedia', '', 'http://localhost/compro/admin/berita/tambah', '', '2020-02-20 08:58:24');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/compro/admin/galeri', '', '2020-02-20 10:13:15');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/compro/admin/galeri/tambah', '', '2020-02-20 10:13:24');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/compro/admin/galeri/tambah', '', '2020-02-20 10:16:01');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/compro/admin/galeri', '', '2020-02-20 10:16:01');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/compro/admin/galeri/edit/10', '', '2020-02-20 10:16:40');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/compro/admin/galeri/edit/10', '', '2020-02-20 10:16:55');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/compro/admin/galeri', '', '2020-02-20 10:16:55');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/compro/admin/berita', '', '2020-02-20 10:39:27');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/compro/admin/berita/proses', '', '2020-02-20 10:40:57');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/compro/admin/berita', '', '2020-02-20 10:40:57');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/compro/admin/berita', '', '2020-02-20 10:40:59');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/compro/admin/berita/edit/7', '', '2020-02-20 10:41:09');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/compro/admin/berita', '', '2020-02-20 10:41:54');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/compro/admin/berita/delete/7', '', '2020-02-20 10:42:00');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/compro/admin/berita', '', '2020-02-20 10:42:00');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/compro/admin/berita/proses', '', '2020-02-20 10:42:37');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/compro/admin/berita', '', '2020-02-20 10:42:43');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/compro/admin/berita/tambah', '', '2020-02-20 10:43:36');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/compro/admin/berita', '', '2020-02-20 10:51:02');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/compro/admin/berita/proses', '', '2020-02-20 10:51:04');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/compro/admin/berita', '', '2020-02-20 10:51:04');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/compro/admin/berita', '', '2020-02-20 10:51:06');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/compro/admin/berita/tambah', '', '2020-02-20 10:51:20');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/compro/admin/berita/tambah', '', '2020-02-20 10:52:16');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/compro/admin/berita/tambah', '', '2020-02-20 10:52:39');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/compro/admin/berita/tambah', '', '2020-02-20 10:52:59');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/compro/admin/video', '', '2020-02-20 11:02:38');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/compro/admin/video/proses', '', '2020-02-20 11:03:10');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/compro/admin/video', '', '2020-02-20 11:03:10');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/compro/admin/video/proses', '', '2020-02-20 11:03:14');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/compro/admin/video', '', '2020-02-20 11:03:14');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/compro/admin/video/proses', '', '2020-02-20 11:03:23');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/compro/admin/video', '', '2020-02-20 11:03:23');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/compro/admin/download', '', '2020-02-20 11:03:29');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/compro/admin/download/proses', '', '2020-02-20 11:03:46');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/compro/admin/download', '', '2020-02-20 11:03:46');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/compro/admin/galeri', '', '2020-02-20 11:03:52');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/compro/admin/galeri/proses', '', '2020-02-20 11:04:14');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/compro/admin/galeri/proses', '', '2020-02-20 11:04:16');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/compro/admin/galeri', '', '2020-02-20 11:04:18');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/compro/admin/galeri/tambah', '', '2020-02-20 11:04:25');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/compro/admin/agenda', '', '2020-02-20 11:05:12');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/compro/admin/agenda/edit/1', '', '2020-02-20 11:05:15');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/compro/admin/agenda', '', '2020-02-20 11:05:17');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/compro/admin/agenda/delete/1', '', '2020-02-20 11:05:21');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/compro/admin/agenda', '', '2020-02-20 11:05:21');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/compro/admin/berita', '', '2020-02-20 12:31:32');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/compro/admin/berita/tambah', '', '2020-02-20 12:31:38');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/compro/admin/berita/tambah', '', '2020-02-20 12:32:49');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/compro/admin/berita/jenis_berita/Berita', '', '2020-02-20 12:32:50');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/compro/admin/berita/tambah', '', '2020-02-20 12:33:50');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/compro/admin/berita/tambah', '', '2020-02-20 15:00:22');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/berita', '', '2020-02-20 15:28:29');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/berita/edit/8', '', '2020-02-20 15:28:32');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/berita/edit/8', '', '2020-02-20 15:29:05');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/berita/jenis_berita/Berita', '', '2020-02-20 15:29:06');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/galeri', '', '2020-02-20 15:29:23');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/galeri/edit/11', '', '2020-02-20 15:29:26');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/galeri/edit/11', '', '2020-02-20 15:30:08');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/galeri', '', '2020-02-20 15:30:08');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/berita', '', '2020-02-20 16:47:52');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/berita/tambah', '', '2020-02-20 16:47:56');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/berita/tambah', '', '2020-02-20 19:03:16');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/berita/jenis_berita/Layanan', '', '2020-02-20 19:03:16');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/berita', '', '2020-02-20 19:03:30');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/berita/edit/9', '', '2020-02-20 19:03:53');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/berita/edit/9', '', '2020-02-20 19:04:13');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/berita/jenis_berita/Layanan', '', '2020-02-20 19:04:13');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/agenda', '', '2020-02-20 20:53:04');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/download', '', '2020-02-23 18:13:59');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/kategori_download', '', '2020-02-23 18:14:03');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/kategori_download/delete/2', '', '2020-02-23 18:14:07');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/kategori_download', '', '2020-02-23 18:14:07');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/kategori_download/delete/1', '', '2020-02-23 18:14:11');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/kategori_download', '', '2020-02-23 18:14:11');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/kategori_download', '', '2020-02-23 18:14:31');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/kategori_download', '', '2020-02-23 18:14:31');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/kategori_download', '', '2020-02-23 18:14:53');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/kategori_download', '', '2020-02-23 18:14:53');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/kategori_download/edit/4', '', '2020-02-23 18:15:27');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/kategori_download/edit/4', '', '2020-02-23 18:16:18');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/kategori_download', '', '2020-02-23 18:16:18');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/kategori_download', '', '2020-02-23 18:16:56');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/kategori_download', '', '2020-02-23 18:16:56');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/download/tambah', '', '2020-02-23 18:17:01');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/kategori_galeri', '', '2020-02-23 18:17:34');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/kategori_galeri/edit/5', '', '2020-02-23 18:17:45');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/kategori_galeri/edit/5', '', '2020-02-23 18:17:58');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/kategori_galeri', '', '2020-02-23 18:17:58');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/kategori_galeri/edit/4', '', '2020-02-23 18:18:02');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/kategori_galeri', '', '2020-02-23 18:18:11');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/download/tambah', '', '2020-02-23 18:18:26');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/galeri/tambah', '', '2020-02-23 18:18:31');
INSERT INTO `user_log` VALUES (0, '::1', 0, '-', '', 'http://localhost/satpam/admin/agenda', '', '2020-02-23 18:19:16');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/agenda', '', '2020-02-23 18:19:34');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/kategori_galeri', '', '2020-02-23 18:19:43');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/galeri', '', '2020-02-23 18:19:47');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/galeri/tambah', '', '2020-02-23 18:19:54');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/agenda', '', '2020-02-23 18:20:30');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/agenda/tambah', '', '2020-02-23 18:20:36');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/agenda', '', '2020-02-23 18:21:16');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/agenda/tambah', '', '2020-02-23 18:21:17');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/agenda/tambah', '', '2020-02-23 18:22:02');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/agenda', '', '2020-02-23 18:22:03');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/agenda/proses', '', '2020-02-23 18:22:30');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/agenda', '', '2020-02-23 18:22:33');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/agenda/proses', '', '2020-02-23 18:29:31');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/agenda', '', '2020-02-23 18:29:34');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/video/tambah', '', '2020-02-23 18:29:47');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/download', '', '2020-02-23 20:40:27');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/download/tambah', '', '2020-02-23 20:41:14');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/download/tambah', '', '2020-02-23 20:41:38');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/download', '', '2020-02-23 20:41:38');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/berita/tambah', '', '2020-02-24 20:53:32');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/download', '', '2020-02-24 21:03:59');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/berita', '', '2020-02-24 21:04:30');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/agenda', '', '2020-02-24 21:05:06');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/video/tambah', '', '2020-02-25 09:38:05');
INSERT INTO `user_log` VALUES (0, '::1', 0, '-', '', 'http://localhost/satpam/admin/galeri', '', '2020-02-25 12:00:01');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/galeri', '', '2020-02-25 12:00:45');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/galeri/tambah', '', '2020-02-25 12:42:17');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/galeri/tambah', '', '2020-02-25 12:54:31');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/galeri/tambah', '', '2020-02-25 12:54:39');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 13:09:20');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/galeri/tambah', '', '2020-02-25 13:10:33');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/kategori', '', '2020-02-25 13:10:44');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/berita', '', '2020-02-25 13:10:51');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/berita/tambah', '', '2020-02-25 13:10:53');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 13:14:23');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/berita/tambah', '', '2020-02-25 13:15:07');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/berita/tambah', '', '2020-02-25 13:16:46');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 13:16:49');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 13:17:11');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/berita', '', '2020-02-25 13:17:28');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/berita/tambah', '', '2020-02-25 13:17:30');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/berita/tambah', '', '2020-02-25 13:17:44');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 13:17:47');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 13:17:48');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 13:17:59');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/berita', '', '2020-02-25 13:18:23');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/berita/tambah', '', '2020-02-25 13:18:25');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 13:19:14');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 13:20:20');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 13:20:36');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 13:20:47');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 13:21:13');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 13:21:26');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 13:21:28');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 13:21:39');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 13:22:16');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 13:23:03');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 13:23:55');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 13:24:21');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 13:25:11');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 13:26:46');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 13:29:17');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 13:29:42');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 13:29:56');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 13:35:47');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 13:36:39');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 13:37:28');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 13:42:14');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 13:44:22');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 13:44:39');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 13:46:54');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 13:47:08');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 13:50:17');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 13:51:41');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 13:53:11');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 13:53:49');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 13:54:35');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 13:54:48');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 13:56:14');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 13:56:24');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 13:59:24');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 13:59:28');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 14:00:11');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 14:23:12');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas', '', '2020-02-25 14:23:18');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 14:23:19');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 14:31:50');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 14:35:13');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas', '', '2020-02-25 14:35:19');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 14:36:52');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 14:37:05');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas', '', '2020-02-25 14:37:10');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas', '', '2020-02-25 14:37:49');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 14:37:52');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 14:38:03');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas', '', '2020-02-25 14:38:08');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas', '', '2020-02-25 14:47:36');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 14:47:38');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 14:47:52');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas', '', '2020-02-25 14:47:57');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 14:49:16');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 14:49:29');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 14:49:31');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 14:49:33');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas', '', '2020-02-25 15:10:56');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 15:21:31');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 15:21:48');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas', '', '2020-02-25 15:21:57');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas', '', '2020-02-25 15:35:17');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 15:35:21');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 15:36:14');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/kategori', '', '2020-02-25 15:37:40');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/kategori/edit/4', '', '2020-02-25 15:37:47');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/kategori', '', '2020-02-25 15:37:51');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/kategori/edit/4', '', '2020-02-25 15:37:54');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/kategori', '', '2020-02-25 15:37:56');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/kategori/delete/4', '', '2020-02-25 15:38:16');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/kategori', '', '2020-02-25 15:38:16');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/berita', '', '2020-02-25 15:38:19');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/berita/edit/9', '', '2020-02-25 15:38:30');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/berita/edit/9', '', '2020-02-25 15:38:35');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/berita/jenis_berita/Layanan', '', '2020-02-25 15:38:35');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/berita', '', '2020-02-25 15:38:41');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/berita/proses', '', '2020-02-25 15:38:50');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/berita', '', '2020-02-25 15:38:50');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/berita', '', '2020-02-25 15:46:43');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas', '', '2020-02-25 15:48:50');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 15:48:51');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 15:49:15');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 15:49:17');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 15:49:19');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 15:49:20');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 15:49:21');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 15:49:22');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 15:49:24');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 15:49:25');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 15:49:56');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 15:49:57');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 15:49:59');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 15:50:00');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 15:50:01');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 15:51:23');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 15:51:25');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 15:51:35');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 15:53:56');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 15:54:05');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas', '', '2020-02-25 15:54:09');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas', '', '2020-02-25 15:54:12');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas', '', '2020-02-25 15:54:42');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 15:54:45');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 15:59:59');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 16:00:06');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas', '', '2020-02-25 16:00:09');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 16:00:12');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 16:00:18');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 16:00:20');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 16:00:21');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 16:00:23');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 16:00:24');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 16:00:26');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 16:00:27');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 16:00:28');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 16:00:29');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 16:00:46');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 16:00:49');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas', '', '2020-02-25 16:00:52');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/akun', '', '2020-02-25 17:25:28');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/akun', '', '2020-02-25 17:25:53');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/akun', '', '2020-02-25 17:25:56');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas', '', '2020-02-25 17:33:24');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/akun', '', '2020-02-25 17:34:29');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/video', '', '2020-02-25 17:35:45');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas', '', '2020-02-25 17:36:29');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-25 17:36:31');
INSERT INTO `user_log` VALUES (0, '::1', 0, '-', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-26 14:39:42');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-26 14:39:49');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-26 14:42:20');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-26 14:42:27');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-26 14:47:22');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas', '', '2020-02-26 14:47:56');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-26 14:48:01');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-26 14:48:39');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-26 14:49:59');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-26 14:50:23');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-26 14:51:54');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-26 14:52:54');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-26 14:53:03');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-26 14:53:05');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-26 14:53:07');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas', '', '2020-02-26 14:53:10');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas', '', '2020-02-26 14:53:13');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas', '', '2020-02-26 14:54:35');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-26 14:54:37');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-26 14:54:51');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-26 15:06:32');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-26 15:06:40');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-26 15:06:54');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-26 15:07:54');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-26 15:09:33');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-26 15:09:43');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-26 15:13:59');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-26 15:14:13');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas', '', '2020-02-26 15:14:19');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-26 15:14:25');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-26 15:14:43');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-26 15:17:14');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-26 15:18:26');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-26 15:19:28');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-26 15:22:05');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-26 15:22:08');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-26 15:24:00');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-26 15:24:36');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-26 15:28:42');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-26 15:29:45');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-26 15:29:57');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas', '', '2020-02-26 15:30:15');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-26 15:32:26');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-26 15:33:33');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-26 15:36:05');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-26 15:36:37');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-26 15:45:59');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-26 15:46:39');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-26 15:46:50');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-26 15:49:34');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-26 15:49:45');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-26 15:53:11');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-26 15:53:23');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas', '', '2020-02-26 15:53:29');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-26 15:53:31');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-26 15:54:35');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-26 15:54:52');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-26 15:55:07');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-26 15:55:41');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-26 16:09:58');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-26 16:10:58');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-26 16:11:08');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-26 16:11:45');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-26 16:27:39');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-26 16:31:11');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-02-26 16:35:44');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas', '', '2020-02-26 16:35:48');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/berita', '', '2020-02-26 21:28:19');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/berita', '', '2020-02-26 21:28:44');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/berita/tambah', '', '2020-02-26 21:29:04');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/berita/tambah', '', '2020-02-26 21:31:12');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-03-01 16:42:13');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-03-01 16:42:32');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-03-01 16:42:57');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-03-01 16:46:06');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-03-01 16:47:57');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-03-01 17:11:54');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-03-01 17:12:37');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-03-01 17:14:22');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-03-01 17:15:22');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-03-01 17:15:57');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/fasilitas/tambah', '', '2020-03-01 17:51:37');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/berita/tambah', '', '2020-03-02 10:38:03');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/berita/tambah', '', '2020-03-02 10:38:59');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/berita/jenis_berita/Profil', '', '2020-03-02 10:38:59');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/berita/tambah', '', '2020-03-02 10:47:55');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/berita/tambah', '', '2020-03-02 10:48:37');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/berita/jenis_berita/Profil', '', '2020-03-02 10:48:41');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/berita/edit/10', '', '2020-03-02 10:48:52');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/berita/edit/10', '', '2020-03-02 10:51:09');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/berita/tambah', '', '2020-03-02 10:51:16');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/berita/tambah', '', '2020-03-02 10:51:52');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/berita/jenis_berita/Fasilitas', '', '2020-03-02 10:51:52');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/berita/jenis_berita/Fasilitas', '', '2020-03-02 12:55:13');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/berita', '', '2020-03-02 13:05:59');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/berita/tambah', '', '2020-03-02 13:06:21');
INSERT INTO `user_log` VALUES (0, '::1', 0, '-', '', 'http://localhost/satpam/admin/berita', '', '2020-03-02 19:39:17');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/berita', '', '2020-03-02 19:48:00');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/berita', '', '2020-03-02 21:24:42');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/berita/tambah', '', '2020-03-04 10:30:12');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/berita/tambah', '', '2020-03-04 17:50:25');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/berita/tambah', '', '2020-03-04 17:50:56');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/berita/jenis_berita/Layanan', '', '2020-03-04 17:50:57');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/akun', '', '2020-03-04 17:52:02');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/akun', '', '2020-03-04 18:06:17');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/galeri/tambah', '', '2020-03-08 14:50:06');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/galeri/tambah', '', '2020-03-08 14:51:44');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/galeri', '', '2020-03-08 15:03:25');
INSERT INTO `user_log` VALUES (0, '::1', 4, 'tegarsatyanegara', '', 'http://localhost/satpam/admin/berita/tambah', '', '2020-03-11 18:23:01');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `id_bagian` int(11) NULL DEFAULT NULL,
  `nama` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `username` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password_hint` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `akses_level` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kode_rahasia` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `gambar` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `keterangan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `tanggal_post` datetime(0) NOT NULL,
  `tanggal` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id_user`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (4, 0, 'tegar satya negara', 'tegarsatyanegara.if@gmail.com', 'tegarsatyanegara', '473c24c3bed8eb419ded140b0efbeefb1048d9ee', '', 'Admin', NULL, NULL, '<p>Petani Kode</p>', '2020-02-20 05:11:14', '2020-02-20 10:11:14');

-- ----------------------------
-- Table structure for video
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video`  (
  `id_video` int(11) NOT NULL,
  `judul` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `posisi` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `keterangan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `video` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `urutan` int(11) NULL DEFAULT NULL,
  `bahasa` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_user` int(11) NOT NULL,
  `tanggal` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0)
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
