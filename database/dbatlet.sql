-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 12 Jan 2017 pada 06.09
-- Versi Server: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbatlet`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(12) NOT NULL,
  `username` varchar(30) NOT NULL,
  `usermail` varchar(60) NOT NULL,
  `userpass` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `usermail`, `userpass`) VALUES
(1, 'kop13x', 'kop13x@gmail.com', '4e4d6c332b6fe62a63afe56171fd3725'),
(2, 'kopix', 'kopix@gmail.com', 'b5aaf7ff0784814537e8f54343c6b716');

-- --------------------------------------------------------

--
-- Struktur dari tabel `atlet`
--

CREATE TABLE `atlet` (
  `id_atlet` int(11) NOT NULL,
  `nama` varchar(45) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `tempat_lahir` varchar(45) DEFAULT NULL,
  `kontingen` varchar(45) DEFAULT NULL,
  `alamat` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `jenis_kelamin` varchar(15) DEFAULT NULL,
  `tinggi` varchar(45) DEFAULT NULL,
  `berat` varchar(45) DEFAULT NULL,
  `foto` varchar(250) NOT NULL,
  `biodata` text,
  `id_cabor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `atlet`
--

INSERT INTO `atlet` (`id_atlet`, `nama`, `tgl_lahir`, `tempat_lahir`, `kontingen`, `alamat`, `email`, `jenis_kelamin`, `tinggi`, `berat`, `foto`, `biodata`, `id_cabor`) VALUES
(1, 'Taufik Hidayat', '1981-08-10', 'Bandung', 'Jawa Barat', 'Bandung', 'taufik@gmail.com', 'Laki-laki', '176', '64', '30ac4-220px-taufik_hidayat_2.jpg', '<p>\r\n	Taufik Hidayat (lahir di Bandung, Jawa Barat, 10 Agustus 1981; umur 35 tahun) adalah mantan pemain bulu tangkis tunggal putra untuk Indonesia. Awalnya ia bermain di klub SGS Elektrik Bandung.</p>\r\n', 17),
(2, 'Liliyana Natsir', '1985-09-09', 'Manado, Sulawesi Utara', 'Indonesia', 'Manado', 'liliyana@gmail.com', 'Perempuan', '165', NULL, '90635-liliyananatsir.jpg', 'Liliyana Natsir (lahir di Manado, Sulawesi Utara, 9 September 1985; umur 31 tahun) adalah pemain bulu tangkis ganda Indonesia yang berpasangan dengan Tantowi Ahmad dalam nomor ganda campuran.', 17),
(7, 'Sri Wahyuni', '1994-08-13', 'Bandung, Jawa Barat Indonesia', 'Jawa Barat', 'Bandung , Jawa Barat', 'sri@gmail.com', 'Perempuan', NULL, NULL, '5ec1d-sri_wahyuni_agustiani_-2016-.jpg', 'Pada Asian Games 2014, Ia memenagkan medlai perak di kategori 48 kg, mengangkat total beban 187 kg. Dalam Olimpiade RIO 2016, ia menyumbangkan medali pertama untuk kontingen Indonesia, dengan meraih medali perak di kategori 48 kg, mengangkat total 192 kg.\r\n', 4),
(8, 'Tontowi Ahmad', '1987-07-18', 'Banyumas', 'PB Djarum', 'Selandaka, Sumpiuh, Banyumas', 'tontowo@gmail.com', 'Laki-laki', '178', '87', '5ec1d-tontowi_ahmad.jpg', '<p>\r\n	<strong>Tantowi Ahmad&nbsp;</strong>(lahir di Selandaka, Sumpiuh Banyumas, 18 Jli 1987; umur 29 tahun) adalah pemain bulu tangkis ganda indonesia. Dia dari PB Djarum, sebuah klub bulu tangkis di kudus, dan bergabung ke klub pada tahun 2005.</p>\r\n', 17),
(9, 'Boaz Theofilius Erwin Solossa', '1970-01-01', 'Sorong, Papua Barat, Indonesia', 'Persipura Jayapura', 'Sorong, Papua Barat, Indonesia', 'Boazsolossa@gmail.com', 'Laki-Laki', '171 cm', '67 kg', 'ca0be-boazsolossa.jpg', '<p>\r\n	<strong>Theofilius Erwin Solossa&nbsp;</strong>atau lebih dikenal&nbsp;<strong>Boaz salossa&nbsp;</strong>adalah pemain sepak bola Indonsia. Boaz saat ini bermain di Persipura Jayapura. Boaz merupakan striker terbaik yang dimiliki Indonesia. Dia dikinal memiliki Naluri Mmencetak gol yang tinggi, akurasi umpan yang baik, tendangan kaki kiri, serta teknik dribbling diatas rata-rata.</p>\r\n', 45),
(10, 'Yessy Yosaputra', '1994-08-27', 'Bandung', 'Indonesia', 'Bandung', 'Yosaputra@gmail.com', 'Perempuan', '165 cm', '59 kg', '4e03d-yessy-yosaputra.jpg', '<p>\r\n	<b>Yessy Yosaputra&nbsp;</b>adalah atlet Renang asal Indonesia. Nomor spesialisnya adalah Gaya Punggung. Dalam SEA Games 2011 di Plembang, ia mampu merebut medali emas dan memecahkan 1 rekor SEA Games di nomor 200 meter gaya punggung putri dengan waktu 2 menit 15, 73 detik yang sebelunya dipegang perenang Akiko Thomson.</p>\r\n', 42),
(11, 'Kurnia Mega Hermansyah', '1990-05-07', 'Jakarta, Indonesia', 'Arema Cronus', 'Jakarta', 'Kurniamega@gmailcom', 'Laki-Laki', '187 cm', '65 kg', '42ac0-kurnia-mega.jpg', '<p>\r\n	<strong>Kurnia Mega hermansyah&nbsp;</strong>adalah seorang pemain sepak bola indonesia yang memiliki postur tubuh 187 cm. Saat ini ia bermain untuk Arema Cronus di Liga Super Indonesia, Arema adalah klub profesional pertama yang ia perkuat setelah lulu dari SLTA. Arema tertarik mengkontraknya karena kurnia adalah penggawa timnas u-19.</p>\r\n', 45),
(12, 'Ahamad Rijali', '1989-12-02', 'Balangan, Kalimantan Selatan', 'Indonesia', 'Balangan', 'Rijaliahmad@gmail.com', 'Laki-Laki', '180 cm', '70 kg', '07a1d-ahmad-rijali.jpg', '<p>\r\n	<strong>Ahmad Rijali&nbsp;</strong>adalah atlet renang Paralimpiade Indonesia asal Kalimantan Selatan. Ahmad Rijali seorang pemuda cacat dengan kaki buntung sejak lahir tersebut hingga membuat hidupnya serba kekurangan, namun dalam benaknya tersimpan tekad bahwa cacat bukanlh awal &quot;kiamat&quot;bagi masa depanya.</p>\r\n', 42),
(13, 'I Gusti Agung Kusuma Yudha Rai', '1970-05-06', 'Jakata, Indonesia', 'Indonesia', 'Jakarta', 'Aderai@gmail.com', 'Laki-Laki', '183 cm', '90 kg', 'e0e65-ade-rai.jpg', '<p>\r\n	Terlahir dengan nama&nbsp;<strong>I Gusti Agung Kusuma Yudha Rai</strong> , Ade Rai tumbuh sebagai seorang anak yang kurus dengan minat yang besar pada berbagai aktifitas olaraga. Pada usia 10 tahun, Ade kecil hanya memiliki berat badan 25 kg. Bahkan hingga mencapai tinggi badanya seperti hari ini 183 cm di usia remaja, Ade Rai memiliki sosok yang kurus dengan badan hanya 55 kg. Pada awalnya Ade Rai sempat menggeluti cabang olahraga bulutangkis tetapi ternyat takdir membawanya ke dunia binaraga.</p>\r\n', 10),
(14, 'Budi Sudarsono', '2017-01-01', 'Kediri', 'Kediri', 'kediri jawa timur', 'budi@gmail.com', 'Laki-laki', '187', '85 Kg', '3c029-boazsolossa.jpg', '<p>\r\n	Bla bla bla</p>\r\n', 45);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cabor`
--

CREATE TABLE `cabor` (
  `id_cabor` int(11) NOT NULL,
  `nama_cabor` varchar(45) DEFAULT NULL,
  `keterangan` text,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `cabor`
--

INSERT INTO `cabor` (`id_cabor`, `nama_cabor`, `keterangan`, `image`) VALUES
(1, 'Airsoftgun', 'Airsoft gun adalah mainan replika senjata yang berukuran hampir sama dengan jenis senjata aslinya.', '023b5-airsoftgun.jpg'),
(2, 'Aeromodeling', 'Aeromodelling adalah suatu kegiatan yang mempergunakan sarana miniatur (model) pesawat terbang untuk tujuan rekreasi, edukasi dan olahraga.', '43de8-aeromodeling.jpg'),
(3, 'Anggar', 'Anggar adalah ilmu beladiri menggunakan senjata yang berkembang menjadi seni budaya olahraga ketangkasan dengan senjata.', '6f417-anggar.jpg'),
(4, 'Angkat besi', 'Angkat besi atau angkat berat adalah cabang olahraga yang bersaing untuk mengangkat beban berat yang disebut dengan barbel, yang dilakukan dengan kombinasi dari kekuata.', 'ead35-angkatbesi.jpg'),
(5, 'Atletik', 'Atletik adalah gabungan dari beberapa jenis olahraga yang secara garis besar dapat dikelompokkan menjadi lari, lempar, dan lompat.', '5bd8c-atletik.jpg'),
(6, 'Balap motor', 'Balap motor adalah olahraga otomotif yang menggunakan sepeda motor. Balap motor, khususnya road race, cukup populer di Indonesia.', '9824f-balapmotorjpg.jpg'),
(7, 'Balap mobil', 'Balap mobil merupakan salah satu cabang olahraga tontonan yang paling diminati dan juga yang paling dikomersialisasi.', '491f6-balapmobil.jpg'),
(8, 'Balap sepeda', 'Balap Sepeda Jalan Raya adalah sebuah olahraga balap sepeda yang dilakukan di jalan umum dengan perkerasan.', '14f10-balap-speda.jpg'),
(9, 'Berkuda', 'Berkuda merupakan salah satu olahraga yang dapat yang dapat dinikmati dan dilakukan siapa saja.', '86a6a-berkuda.jpg'),
(10, 'Binaraga', 'Binaraga adalah kegiatan pembentukan tubuh yang melibatkan hipertropi otot intensif. Dengan melakukan latihan beban dan diet protein tinggi secara rutin dan intensif.', '1189f-binaraga.jpg'),
(11, 'Biliard', 'Biiliard sangat dibutuhkan ketahanan dan pemahaman mental yang benar serta harus ditunjang oleh kemampuan fisik yang prima agar mampu berprestasi.', '9c38a-biliard.jpg'),
(12, 'Bisbol', 'Bisbol atau dikenal dengan baseball adalah olahraga yang dimainkan dua tim.', 'b6db1-bisbol.jpg'),
(13, 'Bola basket', 'Bola basket adalah terdiri atas dua tim beranggotakan masing-masing lima orang yang saling bertanding mencetak poin dengan memasukkan bola ke dalam keranjang lawan.', '15a5f-basket.jpg'),
(14, 'Bola voli', 'Bola voli adalah olahraga permainan yang dimainkan oleh dua grup berlawanan. Masing-masing grup memiliki enam orang pemain', 'bf40c-bolavoli.png'),
(15, 'Boling', 'Bowling adalah jenis olahraga atau permainan yang dimainkan dengan menggelindingkan bola khusus menggunakan satu tangan. Bola boling akan digelindingkan ke pin yang berjumlah sepuluh buah yang telah disusun menjadi bentuk segitiga jika dilihat dari atas.', 'f2e1c-bowling.jpg'),
(16, 'Bridge', 'Bridge atau contract bridge adalah permainan kartu yang mengandalkan baik kemampuan bermain maupun keuntungan.  Empat pemain berpasangan dan duduk berhadap-hadapan. Permainan ini terdiri dari lelang diikuti oleh permainan kartu. Peraturan-peraturannya cuk', '91537-bridge.jpg'),
(17, 'Bulu tangkis', 'Bulu tangkis atau badminton adalah suatu olahraga raket yang dimainkan oleh dua orang (untuk tunggal) atau dua pasangan (untuk ganda) yang saling berlawanan.', '308c7-bulutangkis.jpg'),
(18, 'Catur', 'Catur adalah permainan pikiran yang dimainkan oleh dua orang. Pecatur adalah orang yang memainkan catur, baik dalam pertandingan satu lawan satu maupun satu melawan banyak orang (dalam keadaan informal). Sebelum bertanding, pecatur memilih biji catur yang', '15df1-catur.jpg'),
(19, 'Dayung', 'Mendayung merupakan sebuah olahraga yang menggunakan dayung dan berlangsung di atas sungai, danau, dan laut. Dalam teknik mendayung dengan oar hanya dikenal dua macam kayuhan yaitu dayung maju dan dayung mundur. Jika menginginkan perahu bergerak kedepan m', '163ed-dayungkayak.jpg'),
(20, 'Futsal', 'Futsal adalah permainan bola yang dimainkan oleh dua tim, yang masing-masing beranggotakan lima orang. Tujuannya adalah memasukkan bola ke gawang lawan, dengan memanipulasi bola dengan kaki. Selain lima pemain utama, setiap regu juga diizinkan memiliki pe', '684cc-futsal.jpg'),
(21, 'Golf', 'Golf adalah permainan luar ruang yang dimainkan secara perorangan atau tim yang berlomba memasukkan bola ke dalam lubang-lubang yang ada di lapangan dengan jumlah pukulan tersedikit mungkin. Bola golf dipukul dengan menggunakan satu set tongkat pemukul ya', '4db42-golf.jpg'),
(22, 'Gulat', 'Gulat adalah kontak fisik antara dua orang, di mana salah seorang pegulat harus menjatuhkan atau dapat mengontrol musuh mereka. Teknik fisik yang ditunjukkan dalam gulat adalah joint lock, Clinch fighting, Grappling hold, dan Leverage. Teknik ini dapat me', '7e345-gulat.jpg'),
(23, 'Hoki', 'Hoki adalah olahraga permainan yang dilakukan oleh pria dan wanita dengan menggunakan alat pemukul (stick) dan bola. Bentuk permainannya hampir sama dengan sepak bola.', 'dbc7b-hoki.jpg'),
(25, 'Judo', 'Judo (bahasa Jepang: 柔道 ) adalah seni bela diri, olahraga, dan filosofi yang berakar dari Jepang. Judo dikembangkan dari seni bela diri kuno Jepang yang disebut Jujutsu. Jujutsu yang merupakan seni bertahan dan menyerang menggunakan tangan kosong maupun s', '14df0-judo.jpg'),
(26, 'Karate', 'Karate (空 手 道) adalah seni bela diri yang berasal dari Jepang. Seni bela diri ini sedikit dipengaruhi oleh Seni bela diri Cina kenpō. Karate dibawa masuk ke Jepang lewat Okinawa dan mulai berkembang di Ryukyu Islands. Seni bela diri ini pertama kali diseb', 'e1449-karate.jpg'),
(27, 'Kayak/Kano', 'Kayak adalah sebuah perahu kecil bertenaga manusia, biasanya dengan bagian depan dan belakang tertutup, sehingga hanya menyisakan lubang seukuran awak. Kayak dilengkapi dengan dayung berkepala tunggal atau ganda.', '85cd1-kayak.jpg'),
(28, 'Kempo', 'Kempo adalah nama generik untuk beberapa aliran seni bela diri yang berasal dari Jepang dan banyak menggunakan permainan tangan. Jadi bukan nama satu aliran saja melainkan nama dari banyak aliran dan metode. Arti dari Kempo sendiri adalah beladiri dengan ', 'df28c-kempo.jpg'),
(29, 'Kriket', 'Kriket adalah sebuah olahraga tim yang dimainkan antara dua kelompok yang masing-masing terdiri dari sebelas orang. Bentuk modern kriket berawal dari Inggris, dan olahraga ini populer di negara-negara Persemakmuran. Di beberapa negara di Asia Selatan, mis', 'de4a0-kriket.jpg'),
(31, 'Loncat indah', 'Loncat indah adalah olahraga yang pertama kali ditemukan di Eropa dan mulai menjadi olahraga kompetisi di Inggris pada tahun 1905. Loncat indah merupakan perpaduan gerakan akrobatik di udara dan loncatan. Pada dasarnya loncat indah terdiri dari loncatan y', 'ce46d-loncat-indah.jpg'),
(32, 'Menembak', 'Olahraga menembak adalah olahraga kompetitif yang melibatkan tes kemahiran (akurasi dan kecepatan) dengan menggunakan berbagai jenis senjata seperti senjata api dan senapan angin.', '2cdc7-menembak.jpg'),
(33, 'Menyelam', 'Olahraga menembak adalah olahraga kompetitif yang melibatkan tes kemahiran (akurasi dan kecepatan) dengan menggunakan berbagai jenis senjata seperti senjata api dan senapan angin.', 'd30ec-menyelam.jpg'),
(34, 'Parkour', 'Parkour (baca : Paar-kuur , kadang-kadang disingkat PK) atau l''art du déplacement (Seni gerak) adalah aktivitas yang bertujuan untuk berpindah dari satu tempat ke tempat lainnya, dengan efisien dan secepat-cepatnya, menggunakan prinsip kemampuan badan man', 'bf1fc-parkour.jpg'),
(35, 'Panjat Tebing', 'Panjat Tebing atau istilah asingnya dikenal dengan Rock Climbing merupakan salah satu dari sekian banyak olahraga alam bebas dan merupakan salah satu bagian dari mendaki gunung yang tidak bisa dilakukan dengan cara berjalan kaki melainkan harus menggunaka', 'd94b6-panjat-tebing.jpg'),
(36, 'Polo Air', 'Polo adalah olahraga beregu yang dimainkan di atas kuda dengan tujuan untuk mencetak gol ke gawang lawan. Pemain mengendalikan bola kayu atau plastik (ukuran 3 - 3,5 inci) menggunakan pemukul panjang yang disebut mallet. Gol dianggap sah apabila bola lewa', '86703-polo-air.jpg'),
(38, 'Panahan', 'Panahan (Inggris:Archery) adalah suatu kegiatan menggunakan busur panah untuk menembakkan anak panah. Bukti-bukti menunjukkan bahwa sejarah panahan telah dimulai sejak 5.000 tahun yang lalu yang awalnya digunakan untuk berburu dan kemudian berkembang seba', 'f1462-panahan.jpg'),
(39, 'Paralayang', 'Paralayang (bahasa Inggris: paragliding) adalah olahraga terbang bebas dengan menggunakan sayap kain (parasut) yang lepas landas dengan kaki untuk tujuan rekreasi atau kompetisi. Induk organisasinya adalah PLGI (Persatuan Layang Gantung Indonsia), sedangk', 'b573c-paralayang.jpg'),
(40, 'Petanque', 'Pétanque (diucapkan [pe.tɑ̃ːk] dalam bahasa Perancis) adalah suatu bentuk permainan boules yang tujuannya melempar bola besi sedekat mungkin dengan bola kayu yang disebut cochonnet dan kaki harus berada di lingkaran kecil. Permainan ini biasa dimainkan di', '5a0e3-pentaque.jpg'),
(41, 'Pilates', 'Pilates adalah suatu metode olahraga yang dikembangkan oleh Joseph Hubert Pilates yang berasal dari Jerman pada awal abad ke-20. Metode ini difokuskan untuk kelenturan serta fleksibilitas seluruh bagian tubuh. Olahraga ini dapat memperbaiki postur tubuh .', '5e432-pilates-bolasenam-.jpg'),
(42, 'Renang', 'Renang adalah olahraga yang melombakan kecepatan atlet renang dalam berenang. Gaya renang yang diperlombakan adalah gaya bebas, gaya kupu-kupu, gaya punggung, dan gaya dada. Perenang yang memenangkan lomba renang adalah perenang yang menyelesaikan jarak l', 'cf7ef-renang.jpg'),
(43, 'Rugby', 'Sepak bola rugbi (bahasa Inggris: Rugby) merupakan sejenis permainan sepak bola tim yang dimainkan oleh dua tim. Setiap tim mencoba mencetak skor dengan cara menyepak, melontar, atau membawa bola sehingga mereka dapat menyepak untuk melepaskan gol lawan a', '3bf3b-rugby.jpg'),
(44, 'Seni bela diri', 'Seni bela diri merupakan satu kesenian yang timbul sebagai satu cara seseorang mempertahankan / membela diri. Seni bela diri telah lama ada dan berkembang dari masa ke masa. Pada dasarnya, manusia mempunyai insting untuk selalu melindungi diri dan hidupny', '09757-seni-bela-diri.jpg'),
(45, 'Sepak bola', 'Sepak bola adalah cabang olahraga yang menggunakan bola yang umumnya terbuat dari bahan kulit dan dimainkan oleh dua tim yang masing-masing beranggotakan 11 (sebelas) orang pemain inti dan beberapa pemain cadangan. Memasuki abad ke-21, olahraga ini telah ', '39efa-sepakbola.jpg'),
(46, 'Sepak takraw', 'Sepak takraw adalah jenis olahraga campuran dari sepak bola dan bola voli, dimainkan di lapangan ganda bulu tangkis, dan pemain tidak boleh menyentuh bola dengan tangan. Kejuaraan paling bergengsi dalam cabang ini adalah King''s Cup World Championships, ya', 'c5864-sepaktakraw.jpg'),
(47, 'Sepatu roda', 'Sepatu roda adalah sebuah alat yang dipasang di kaki yang memiliki dua hingga empat roda sebagai alas. Pemain sepatu roda biasanya mengayunkan kaki seperti layaknya berjalan untuk menambah kecepatan ketika bergerak. Pemain biasanya berhenti bergerak denga', '0bc0a-sepatu-roda.jpg'),
(48, 'Senam', 'Senam merupakan suatu cabang olahraga yang melibatkan performa gerakan yang membutuhkan kekuatan, kecepatan dan keserasian gerakan fisik yang teratur. Bentuk modern dari senam ialah : Palang tak seimbang, balok keseimbangan, senam lantai. Bentuk-bentuk te', '47cfb-senam.jpg'),
(49, 'Ski air', 'Ski air adalah olahraga air yang pemainnya meluncur di atas air menggunakan papan yang ditarik dengan perahu.[1] Ski air menjadi salah satu cabang olimpiade pada tahun 1972.[2] Ski air membutuhkan peralatan antara lain papan ski, tali penarik beserta pega', '92781-skyair.jpg'),
(50, 'Sofbol', 'Sofbol atau dikenal dengan softball adalah olahraga bola beregu yang terdiri dari dua tim. Permainan sofbol lahir di Amerika Serikat, diciptakan oleh George Hancock di kota Chicago pada tahun 1887. Sofbol merupakan perkembangan dari olahraga sejenis yaitu', '3c392-softball.jpg'),
(52, 'Squash', 'Skuas (bahasa Inggris: squash) adalah sejenis olahraga raket yang berasal dari Inggris. Dua orang bermain dalam sebuah ruangan tertutup dengan saling berbalas memukulkan bola skuas ke sebuah sisi ruangan yang menghadap kedua pemain (kegiatan ini disebut r', 'c37a7-squash.jpg'),
(54, 'Taekwondo', 'Taekwondo (juga dieja Tae Kwon Do atau Taekwon-Do) adalah seni bela diri asal Korea yang juga sebagai olahraga nasional Korea. Ini adalah salah satu seni bela diri populer di dunia yang dipertandingkan di Olimpiade.', 'e37ef-taekwondo.jpg'),
(55, 'Tenis', 'Tenis adalah olahraga yang biasanya dimainkan antara dua pemain atau antara dua pasangan masing-masing dua pemain. Setiap pemain menggunakan raket untuk memukul bola karet. Tujuan permainan adalah memainkan bola dengan cara tertentu sehingga pemain lawan ', 'e390e-tenis.jpg'),
(56, 'Tenis meja', 'enis meja, atau ping pong (sebuah merek dagang), adalah suatu olahraga raket yang dimainkan oleh dua orang (untuk tunggal) atau dua pasangan (untuk ganda) yang berlawanan. Di Republik Rakyat Tiongkok, nama resmi olahraga ini ialah "bola ping pong" (Tiongh', '46783-tenismeja.jpg'),
(58, 'Wushu', 'Wushu (武術 atau 武术; bahasa Tionghoa: wǔshù) secara harafiah berarti "seni bertempur/bela diri". Ini merupakan istilah yang lebih benar dibanding dengan istilah yang lebih terkenal tetapi salah penggunaannya kung fu, yang berarti "ahli" dalam bidang tertent', 'c3377-wushu.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) COLLATE utf8_swedish_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_swedish_ci NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data untuk tabel `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('4asf0ndkj810fels9ohif2lgksu2aer4', '::1', 1484120206, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438343132303230353b757365726d61696c7c733a31363a226b6f7031337840676d61696c2e636f6d223b75736572706173737c733a33323a223465346436633333326236666536326136336166653536313731666433373235223b6c6f676765645f696e7c623a313b),
('562bi7au6jv5tk8lpbh7o65codls0j8l', '::1', 1484197713, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438343139373731313b),
('l2l5lcbcc752efn21g620rj4nb5rccfl', '::1', 1484197734, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438343139373733343b),
('mp5grgblvknkid38cp73136rd0pg9g2a', '::1', 1484121771, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438343132313639343b757365726d61696c7c733a31363a226b6f7031337840676d61696c2e636f6d223b75736572706173737c733a33323a223465346436633333326236666536326136336166653536313731666433373235223b6c6f676765645f696e7c623a313b);

-- --------------------------------------------------------

--
-- Struktur dari tabel `prestasi`
--

CREATE TABLE `prestasi` (
  `id_prestasi` int(11) NOT NULL,
  `nama_prestasi` varchar(45) DEFAULT NULL,
  `medali` varchar(45) DEFAULT NULL,
  `tahun` year(4) DEFAULT NULL,
  `id_atlet` int(11) NOT NULL,
  `id_turnamen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `prestasi`
--

INSERT INTO `prestasi` (`id_prestasi`, `nama_prestasi`, `medali`, `tahun`, `id_atlet`, `id_turnamen`) VALUES
(2, 'Juara Anaheim', 'Emas', 2015, 1, 2),
(3, 'Juara Olimpiade musim panas Rio de janerio', 'Emas', 2016, 8, 1),
(4, 'Juara Liga Indonesia bersama Persipura', 'Emas', 2005, 9, 9),
(5, 'Juara nomor 200 meter gaya pungung', 'Emas', 2011, 10, 7),
(6, 'Juara Liga Super Indonesia', 'Emas', 2009, 11, 10),
(7, 'Juara Asean PARA Games gaya punggung', 'Perak', 2014, 12, 11),
(8, 'IFBB ', 'Emas', 1997, 13, 7),
(9, 'Juara blabla', 'Emas', 2016, 14, 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `turnamen`
--

CREATE TABLE `turnamen` (
  `id_turnamen` int(11) NOT NULL,
  `nama_turnamen` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `turnamen`
--

INSERT INTO `turnamen` (`id_turnamen`, `nama_turnamen`) VALUES
(1, 'Olimpiade'),
(2, 'Kejuaraan Dunia'),
(3, 'Asian Games'),
(4, 'Thomas Cup'),
(5, 'Sudirman Cup'),
(6, 'Kejuaraan Asia'),
(7, 'SEA Games'),
(8, 'Kejuaraan AFF CUP'),
(9, 'Liga Indonesia'),
(10, 'Liga Super Indonesia'),
(11, 'Asean PARA Games');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`usermail`);

--
-- Indexes for table `atlet`
--
ALTER TABLE `atlet`
  ADD PRIMARY KEY (`id_atlet`),
  ADD KEY `fk_atlet_cabor1_idx` (`id_cabor`);

--
-- Indexes for table `cabor`
--
ALTER TABLE `cabor`
  ADD PRIMARY KEY (`id_cabor`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `prestasi`
--
ALTER TABLE `prestasi`
  ADD PRIMARY KEY (`id_prestasi`),
  ADD KEY `fk_prestasi_atlet1_idx` (`id_atlet`),
  ADD KEY `fk_prestasi_turnamen1_idx` (`id_turnamen`);

--
-- Indexes for table `turnamen`
--
ALTER TABLE `turnamen`
  ADD PRIMARY KEY (`id_turnamen`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `atlet`
--
ALTER TABLE `atlet`
  MODIFY `id_atlet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `cabor`
--
ALTER TABLE `cabor`
  MODIFY `id_cabor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT for table `prestasi`
--
ALTER TABLE `prestasi`
  MODIFY `id_prestasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `turnamen`
--
ALTER TABLE `turnamen`
  MODIFY `id_turnamen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `atlet`
--
ALTER TABLE `atlet`
  ADD CONSTRAINT `fk_atlet_cabor1` FOREIGN KEY (`id_cabor`) REFERENCES `cabor` (`id_cabor`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `prestasi`
--
ALTER TABLE `prestasi`
  ADD CONSTRAINT `fk_prestasi_atlet1` FOREIGN KEY (`id_atlet`) REFERENCES `atlet` (`id_atlet`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_prestasi_turnamen1` FOREIGN KEY (`id_turnamen`) REFERENCES `turnamen` (`id_turnamen`) ON DELETE CASCADE ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
