-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Mar 2022 pada 13.30
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `loker.id`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `level` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `nama_lengkap`, `foto`, `deskripsi`, `level`) VALUES
(1, 'admin', '$2y$10$Zgp.EO1M6OnGXhWO119cD.j9CMrhWykxgijr0clM8CmvXl2AIJE4O', 'Fajar', 'deadpool.jpg', 'Seorang mahasiswa kupu-kupu di AMIK BSI Tasikmalaya. Hobinya bermain gitar dan bermain game dan tidak jago-jago amat dalam melakukan kedua hal tersebut. Menyukai karakter komik Deadpool karena tingkah-lakunya yang nyeleneh.', 'admin'),
(2, 'achmad', '$2y$10$h/h71onUEpr1Q.S4QjGQkuMXP8p6rd1XP0YIlSIbGCDzlzHa57hoS', 'Achmad ', 'kylo-ren.png', 'Seorang Penyuka Star Wars', 'author'),
(4, 'Fikri', '$2y$10$/e1E7Dz8jZgKxf61JM7YteV/36T1sb0uzKjJZ.0lWbtXRgEu0T3GO', 'Muhammad Fikri Ramadhan', 'cartoon-3860682_960_720.png', '12321312', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `teks_berita` text NOT NULL,
  `tgl_posting` datetime NOT NULL,
  `id_admin` int(11) NOT NULL,
  `dilihat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `berita`
--

INSERT INTO `berita` (`id_berita`, `judul`, `id_kategori`, `gambar`, `teks_berita`, `tgl_posting`, `id_admin`, `dilihat`) VALUES
(2, 'Teknisi Komputer & IT Support', 3, '7-perintah-cmd-hack-yang-sering-digunakan-para-hacker-pemula-masuk-f98ad.jpg', '<p>Kualifikasi : - Pria usia 23 s.d 27 tahun - Pendidikan min. D3 Komputer/ setara - Diutamakan memiliki pengalaman sebagai IT Support - Memiliki kemampuan troubleshooting software dan hardware komputer - Menguasai penggunaan crimping tool, LAN tester dan obeng set - Memiliki kendaraan sendiri - Sehat Jasmani dan Rohani Tanggung Jawab Pekerjaan : 1. Mengatasi dan menyelesaikan seluruh permasalahan software dan hardware komputer; 2. Memastikan instalasi jaringan (kabel) di lokasi dalam kondisi berfungsi; 3. Melakukan cek rutin kinerja seluruh komputer yang digunakan; 4. Melakukan perawatan rutin baik software maupun hardware pada komputer. Benefit : - Salary - Asuransi Kesehatan (BPJS Kesehatan) - Asuransi Ketenagakerjaan (JKK, JKM, JHT, JP) - THR - Cuti Tahunan Kirim CV lengkap ke : aryant@gmail.com</p>\r\n', '2016-04-28 04:40:04', 1, 4),
(3, 'Teknik Komputer - PT. Bank Negara Indonesia', 3, 'A4-3-Ini-Dia-Tugas-dan-Peluang-Kerja-Sales-Engineer.jpg', '<p style=\"text-align: justify;\">PT. Bank Negara Indonesia (Persero) Tbk. atau yang lebih kita kenal dengan nama Bank BNI adalah sebuah perusahaan/institusi bank milik pemerintah, dalam hal ini adalah perusahaan BUMN, di Indonesia. Bank Negara Indonesia (BNI) adalah bank komersial tertua dalam sejarah Republik Indonesia. Bank ini didirikan pada tanggal 5 juli tahun 1946. Saatini BNI mempunyai 914 kantor cabang di Indonesia dan di luar negeri. BNI juga unit perbankan syariah, Namunsejak 2010 telah spin off (memisahkan diri), yang dinamakan BNI syariah. Melalui program rekrutmen ini, Bank BNI kembali membuka lowongan Kerja terbaru, untuk mencari calon tenaga kerja yang siap megisi posisi jabatan yang sedang dibutuhkan. Dengan diadakannya lowongan ini tentunya perusahaan mencari kandidat terbaik dengan kualifikasi yang sesuai dan cocok untuk posisi yang akan ditetapkan. Adapun dibawah ini adalah posisi jabatan yang saat ini tersedia bagi Anda para pencari kerja yang tertarik untuk mengembangkan karir Anda bersama Bank BNI dengan kualifikasi sebagai berikut. PERSYARATAN: 1. Pria / Wanita Min 21 Tahun ke atas 2. Pendidikan Minimal SMK &amp; D3.S1. Semua Jurusan 3. Ipk Minimal 2,75 4. Berpenampilan Menarik 5. Komunikatif 6. Mampu Mengoperasikan Komputer 7. Berwawasan Luas 8. Berkepribadian Baik 9. Siap Ditempatkan Diseluruh Caban Terdekat FASILITAS : 1. Jamsostek 2. Bonus Bulanan 3. Penghasilan 5.000.000 S/D 10.000.000 /Bulan 4. Uang Makan&amp; Transport 75.000 /Hari 5. Penempatan Kerja Di Indonesia /Sesuai Domisili Cabang Terdekat 6. Ada Jenjang Karier &plusmn; 1-3 Bulan [Bm,Spv,Logistik,Keuangan] KELENGAKAPAN BERKAS LAMARAN : 1. Surat lamaran dan Daftar Riwayat Hidup 2. Foto Copy ijazah dan transkrip 3. Foto Copy KTP 4. Pas fhoto ukuran 4 x 6 cm 5. No Telpon/HP 6. Nomer hp yang bisa di hubungi atau WA Pendaftaran hanya dilakukan secara Online via link yg sudah disiapkan di bawah ini dan pihak PT. Bank Negara Indonesia (Persero) Tbk tidak pernah meminta pelamar kerja untuk mengirim CV/Lamaran via Email. LINK PENDAFTARAN https://bit.ly/recruitmentBNI NOTE :PT. Bank Negara Indonesia (Persero) Tbk Tidak Pernah Memungut Biaya Apapun Dalam Proses Recruitment !!</p>\r\n', '2016-04-28 04:40:53', 1, 4),
(4, 'SMP Guru Olahraga Jakarta', 2, 'guru or.jpg', '<p style=\"text-align:justify\">Deskripsi Pekerjaan : Maksimal berusia 35 tahun. Membuat rancangan pembelajaran sesuai dengan kurikulum yang berlaku. Mengajar dan mendidik para peserta didik.... &bull; Perusahaan : Yayasan Yasporbi &bull; Posisi : Guru Olah Raga - Yayasan Yasporbi Jakarta &bull; Lokasi Kerja : Jakarta &bull; Negara Pekerjaan : ID Cara Mengirimkan Lamaran : Setelah Membaca dan telah mengetahui kriteria dan kebutuhan minimum kualifikasi yang telah dijelaskan dari info pekerjaan Guru Olah Raga - Yayasan Yasporbi Jakarta diatas dengan demikian jobseeker yang merasa belum memenuhi persyaratan meliputi pendidikan, umur, dll dan memang merasa berminat dengan lowongan kerja terbaru Guru Olah Raga - Yayasan Yasporbi Jakarta pada bulan Mar 2022 diatas, hendaknya secepatnya untuk melengkapi dan menyusun berkas lamaran kerja seperti surat lamaran kerja, CV atau daftar riwayat hidup, FC ijazah dan transkrip dan pelengkap lainnya seperti yang telah dijelaskan diatas, guna mendaftar dan mengikuti seleksi masuk penerimaan pegawai baru diperusahaan yang dimaksud, dikirim melalui link Halaman Selanjutnya di bawah ini</p>\r\n', '2016-04-28 04:42:35', 1, 6),
(6, 'Guru Olahraga - Yayasan Bina Mustika Bangsa Jakarta', 2, 'A1562940773.jpg', '<p style=\"text-align: justify;\">Selamat Datang di Situs Lowongan Kerja Terbaru 2022 dan Saat ini kami ingin memberitahukan Info Terbaru Lowongan Kerja dari Perusahaan Yayasan Bina Mustika Bangsa dengan posisi Guru Olahraga - Yayasan Bina Mustika Bangsa Jakarta yang dibuka saat ini. Jika Loker di Jakarta ini sesuai dengan kualifikasi kamu silahkan langsung mengirimkan lamaran melalui situs loker terbaru kami. Memang setiap pekerjaan tidak lah mudah untuk di lamar karena harus memenuhi beberapa kualifikasi dan persyaratan yang harus kita penuhi sesuai dengan kriteria standar Perusahaan tersebut yang sedang mencari kandidat potensial untuk dapat bekerja. Semoga informasi lowongan kerja Guru Olahraga - Yayasan Bina Mustika Bangsa Jakarta dibawah ini sesuai dengan Kualifikasi anda. Semoga Beruntung :D Deskripsi Pekerjaan : Pria/Wanita, usia maksimal 35 tahun. S1 Pendidikan Olahraga. Penempatan kerja di Jakarta Barat. Mampu mengoperasikan komputer dengan baik .... &bull; Perusahaan : Yayasan Bina Mustika Bangsa &bull; Posisi Guru Olahraga - Yayasan Bina Mustika Bangsa Jakarta &bull; Lokasi Kerja : Jakarta &bull; Negara Pekerjaan : ID Cara Mengirimkan Lamaran : Setelah Membaca dan telah mengetahui kriteria dan kebutuhan minimum kualifikasi yang telah dijelaskan dari info pekerjaan Guru Olahraga - Yayasan Bina Mustika Bangsa Jakarta diatas dengan demikian jobseeker yang merasa belum memenuhi persyaratan meliputi pendidikan, umur, dll dan memang merasa berminat dengan lowongan kerja terbaru Guru Olahraga - Yayasan Bina Mustika Bangsa Jakarta pada bulan Mar 2022 diatas, hendaknya secepatnya untuk melengkapi dan menyusun berkas lamaran kerja seperti surat lamaran kerja, CV atau daftar riwayat hidup, FC ijazah dan transkrip dan pelengkap lainnya seperti yang telah dijelaskan diatas, guna mendaftar dan mengikuti seleksi masuk penerimaan pegawai baru diperusahaan yang dimaksud, dikirim melalui link Halaman Selanjutnya di bawah ini</p>\r\n', '2016-04-28 04:56:05', 2, 11),
(8, 'Guru SMP Matematika', 1, '055302400_1507191383-Banner_Hari_Guru.jpg', '<p><strong>Akademis:</strong></p>\r\n\r\n<ul>\r\n	<li>Lulusan universitas dengan jurusan Matematika atau MIPA.</li>\r\n	<li>IPK minimal 3,00 dari skala 4,00.</li>\r\n	<li>Nilai ujian nasional SMA/SMK minimal rata-rata 7 dari skala 10.</li>\r\n	<li>Bagi yang masih kuliah, minimal sedang menempuh semester 5 dan wajib melampirkan KHS (Kartu Hasil Studi) semester 1-4.</li>\r\n</ul>\r\n\r\n<p><strong>Non-akademis:</strong></p>\r\n\r\n<ul>\r\n	<li>Dewasa dan bertanggung jawab.</li>\r\n	<li>Sehat jasmani dan rohani.</li>\r\n	<li>Cepat dalam merespon.</li>\r\n	<li>Berpikiran terbuka, tidak melibatkan SARA (Suku, Agama, Ras, Antar-golongan).</li>\r\n	<li>Bersikap positif dan memotivasi siswa.</li>\r\n	<li>Kreatif, menyenangkan dan semangat dalam mengajar.</li>\r\n	<li>Tidak malas.</li>\r\n	<li>Tidak konfrontasi.</li>\r\n	<li>Tidak rumit.</li>\r\n</ul>\r\n', '2016-04-28 05:03:19', 2, 18),
(10, 'PT PERTAMINA', 5, '60c1f3642fb1d.jpg', '<p style=\"text-align: justify;\">FASILITAS:</p>\r\n\r\n<p style=\"text-align: justify;\">Jamsostek,</p>\r\n\r\n<p style=\"text-align: justify;\">Bonus Bulanan</p>\r\n\r\n<p style=\"text-align: justify;\">Penghasilan 10.000.000. 20.500.000 /Bulan</p>\r\n\r\n<p style=\"text-align: justify;\">Uang Makan &amp; Transport 75.000 /Hari</p>\r\n\r\n<p style=\"text-align: justify;\">Penempatan Kerja Di Indonesia /Sesuai Domisili Cabang Terdekat</p>\r\n\r\n<p style=\"text-align: justify;\">Ada Jenjang Karier 1-3 Bulan [Bm,Spv,Logistik,Keuangan]</p>\r\n\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n\r\n<p style=\"text-align: justify;\">PERSYARATAN :</p>\r\n\r\n<p style=\"text-align: justify;\">Pria/Wanita, usia maksimal 18 &amp; 45 tahun</p>\r\n\r\n<p style=\"text-align: justify;\">Pendidikan SMA SMK D1 D3 S1&amp;S2 semua jurusan</p>\r\n\r\n<p style=\"text-align: justify;\">Pengalaman dalam bidangnya</p>\r\n\r\n<p style=\"text-align: justify;\">Mempunyai kemampuan analisa yang baik</p>\r\n\r\n<p style=\"text-align: justify;\">Memiliki kemampuan dan dapat berkomunikasi dengan baik</p>\r\n\r\n<p style=\"text-align: justify;\">Teliti, disiplin dan bertanggungjawab serta motivasi kerja tinggi</p>\r\n\r\n<p style=\"text-align: justify;\">Dapat bekerja secara individu maupun dalam team</p>\r\n\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n\r\n<p style=\"text-align: justify;\">Kelengakapan berkas lamaran :</p>\r\n\r\n<p style=\"text-align: justify;\">Surat lamaran dan Daftar Riwayat Hidup</p>\r\n\r\n<p style=\"text-align: justify;\">Foto Copy ijazah dan Transkrip Nilai</p>\r\n\r\n<p style=\"text-align: justify;\">Foto Copy KTP dan Pas Photo Ukuran 4X6 (1 lembar).</p>\r\n\r\n<p style=\"text-align: justify;\">No Telpon/HP dan Alamat email yang valid</p>\r\n\r\n<p style=\"text-align: justify;\">Pelamar mengirimkan berkas persyaratan via ONLY:</p>\r\n\r\n<p style=\"text-align: justify;\"><strong>&bull; Iklan Ini Juga Berlaku Untuk Seluruh Wilayah Indonesia</strong></p>\r\n', '2016-05-01 13:36:11', 2, 27),
(11, 'Operator Produksi', 4, 'PT-Astra-Honda-Motor-AHM-Operator.jpg', '<p style=\"text-align: justify;\">Persyaratan &bull; Pria/Wanita &bull; Usia 18 s/d 27 &bull; Pendidikan SMA/K Sederajat &bull; Pengalaman/Non Pengalaman &bull; Siap Kerja Shift &bull; Rajin &bull; Disiplin &bull; Jujur &bull; Bertanggung Jawab Kewajiban Mengoperasikan Mesin Produksi Memonitoring Kondisi Mesin Produksi Menjaga Produktivitas Menjaga Kualitas Produksi Menjaga dan memelihara lingkungan kerja Membuat laporan kerja</p>\r\n', '2022-03-10 10:24:10', 4, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku_tamu`
--

CREATE TABLE `buku_tamu` (
  `komentar_id` int(11) NOT NULL,
  `komentar_pengirim` varchar(100) NOT NULL,
  `komentar_email` varchar(100) NOT NULL,
  `komentar_isi` text NOT NULL,
  `komentar_status` enum('ya','tidak') NOT NULL DEFAULT 'tidak',
  `komentar_tgl` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `buku_tamu`
--

INSERT INTO `buku_tamu` (`komentar_id`, `komentar_pengirim`, `komentar_email`, `komentar_isi`, `komentar_status`, `komentar_tgl`) VALUES
(11, 'Adhitya ', 'adhitya@adit.com', 'This blog is very gorgeous!', 'ya', '2016-06-17 11:30:27'),
(12, 'Fajar', 'fajar@gmail.com', 'Test... test.. test... ', 'ya', '2016-06-17 11:31:52'),
(13, 'syamsul', 'syamsul@gmail.com', 'kdkdkd dldkdk dkldldldl', 'ya', '2016-06-21 03:33:01'),
(14, 'Larry Page ', 'larrypage@gmail.com', 'Fjdkkdn kdkdkd kljlajdspfjadsfk kaldjflkjas dfmkajsdfkldsja posdjfjas ', 'ya', '2016-06-27 06:29:41'),
(15, 'Sarifudin', 'fikrinamasaya123@gmail.com', 'tesss', 'ya', '2022-03-10 03:24:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `halaman`
--

CREATE TABLE `halaman` (
  `id_hal` int(11) NOT NULL,
  `nm_halaman` varchar(30) NOT NULL,
  `link` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `halaman`
--

INSERT INTO `halaman` (`id_hal`, `nm_halaman`, `link`) VALUES
(1, 'Kontak', 'contact.php'),
(2, 'Tentang Kami', 'about.php'),
(3, 'Halaman Komentar', 'buku-tamu.php');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `kategori` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `kategori`) VALUES
(1, 'Nasional'),
(2, 'Olahraga'),
(3, 'Teknologi'),
(4, 'Uncategorized'),
(5, 'BUMN');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesan`
--

CREATE TABLE `pesan` (
  `pesan_id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pengirim` varchar(50) NOT NULL,
  `subjek` varchar(100) NOT NULL,
  `pesan_isi` text NOT NULL,
  `status` varchar(5) NOT NULL,
  `tanggal` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pesan`
--

INSERT INTO `pesan` (`pesan_id`, `email`, `pengirim`, `subjek`, `pesan_isi`, `status`, `tanggal`) VALUES
(3, 'fajar@gmail.com', 'Fajar', 'Ingin testing saja', 'bla... bla... bla... bla... bla... bla... bla... bla... bla... bla... bla... bla... bla... bla... bla... bla... bla... bla... bla... bla... bla... bla... bla... bla... bla... bla... bla... bla... bla... bla... bla... bla... bla... bla... bla... bla... ', 'dibac', '2016-05-01 20:46:59'),
(4, 'thdarkman61@gmail.com', 'Fajar', 'dfldjfljdlkf', 'dflkjdlfjladsf dflkjdlfjladsf dflkjdlfjladsf dflkjdlfjladsf dflkjdlfjladsf dflkjdlfjladsf dflkjdlfjladsf dflkjdlfjladsf dflkjdlfjladsf dflkjdlfjladsf dflkjdlfjladsf dflkjdlfjladsf dflkjdlfjladsf dflkjdlfjladsf dflkjdlfjladsf ', 'dibac', '2016-05-01 20:48:57'),
(5, 'mencoba@gmail.com', 'Mencoba lagi', 'mencoba', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, commodi corporis alias. Labore velit sequi sit, excepturi fugit aspernatur eum incidunt, quam totam natus placeat.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, commodi corporis alias. Labore velit sequi sit, excepturi fugit aspernatur eum incidunt, quam totam natus placeat.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam, commodi corporis alias. Labore velit sequi sit, excepturi fugit aspernatur eum incidunt, quam totam natus placeat.</p>', 'dibac', '2016-05-01 21:05:40'),
(6, 'dfdf@dfd', 'ddfdf', 'adfsadfasf', 'asdfaaaaaafdddddddd', 'dibac', '2016-05-01 21:06:44'),
(8, 'fajar', 'Fajar', 'dfdfdf', 'dfkjdflkjdf', 'dibac', '2016-05-03 09:26:11'),
(12, 'thdarkman61@gmail.com', 'kdkdk', 'kjsladfj', '&lt;img src=&quot;&quot;&gt;', 'dibac', '2016-05-03 18:47:18'),
(13, 'email@gmail.com', 'nama', 'subjek', '&lt;img src=&quot;images&quot;&gt;', 'dibac', '2016-06-21 04:39:13');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indeks untuk tabel `buku_tamu`
--
ALTER TABLE `buku_tamu`
  ADD PRIMARY KEY (`komentar_id`);

--
-- Indeks untuk tabel `halaman`
--
ALTER TABLE `halaman`
  ADD PRIMARY KEY (`id_hal`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`pesan_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `buku_tamu`
--
ALTER TABLE `buku_tamu`
  MODIFY `komentar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `halaman`
--
ALTER TABLE `halaman`
  MODIFY `id_hal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `pesan`
--
ALTER TABLE `pesan`
  MODIFY `pesan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
