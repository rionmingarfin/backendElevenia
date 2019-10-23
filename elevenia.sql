-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 22 Okt 2019 pada 16.02
-- Versi server: 10.4.6-MariaDB
-- Versi PHP: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elevenia`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `total_product` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `date_create` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `cart`
--

INSERT INTO `cart` (`id`, `id_user`, `id_product`, `total_product`, `total_price`, `date_create`) VALUES
(2, 2, 2, 1, 1000000, '2019-10-16 21:43:27'),
(3, 7, 15, 4, 600000, '2019-10-17 10:22:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `product_no` varchar(250) NOT NULL,
  `name` varchar(250) NOT NULL,
  `price` varchar(250) NOT NULL,
  `code` varchar(250) NOT NULL,
  `stok` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `product`
--

INSERT INTO `product` (`id`, `product_no`, `name`, `price`, `code`, `stok`, `description`, `image`) VALUES
(1, '28022696', 'Baju Magdalene', '89000', 'MAGDALENE_BLACK', '50', '<p>dsadasdaas</p>\r\n<p>asdasd</p>\r\n<p>asdasdasd</p>\r\n<p>asd</p>\r\n<p>asdasdasdasdafgfghdfhthgfg</p>\r\n<p>ghghfgj</p>\r\n<p>gjj</p>\r\n<p>gf</p>\r\n<p>hfgh</p>', 'http://image.elevenia.co.id/g/0/2/2/6/9/6/no_image_300.gif'),
(4, '25922874', 'test el5', '1000000', '1609397612', '20', '<p>test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4</p>', 'http://image.elevenia.co.id/g/9/2/2/8/7/4/25922874_B_V1.jpeg'),
(5, '28022849', 'TORU Motomo Aluminium Case for iPhone 6 Plus - Silver', '200000', 'TORU02', '100', '<p>TORU Motomo Aluminium Case terbuat dari bahan material aluminium yang kokoh, sehingga memberikan perlindungan ekstra untuk iPhone 6+ Anda dari goresan dan benturan. Dengan design yang ramping dan ringan, Anda tetap mendapat akses ke setiap tombol dengan mudah.</p><p>Features<br>High Quality Material<br>TORU Motomo Aluminium Case terbuat dari bahan material aluminium yang kokoh, sehingga memberikan perlindungan ekstra untuk iPhone 6+ Anda dari goresan dan benturan.</p><p>Lightweight Design<br>Dengan design yang ramping dan ringan, Anda tetap mendapat akses ke setiap tombol dengan mudah.</p><p>Compatibility<br>TORU Motomo Aluminium Case cocok dan pas untuk iPhone 6+ Anda.</p>', 'http://image.elevenia.co.id/g/0/2/2/8/4/9/28022849_B_V1.jpeg'),
(6, '28022841', 'TORU Motomo Aluminium Case for iPhone 6 Plus - Dark Blue', '200000', 'TORU01', '100', '<p>TORU Motomo Aluminium Case terbuat dari bahan material aluminium yang kokoh, sehingga memberikan perlindungan ekstra untuk iPhone 6+ Anda dari goresan dan benturan. Dengan design yang ramping dan ringan, Anda tetap mendapat akses ke setiap tombol dengan mudah.</p><p>Features<br>High Quality Material<br>TORU Motomo Aluminium Case terbuat dari bahan material aluminium yang kokoh, sehingga memberikan perlindungan ekstra untuk iPhone 6+ Anda dari goresan dan benturan.</p><p>Lightweight Design<br>Dengan design yang ramping dan ringan, Anda tetap mendapat akses ke setiap tombol dengan mudah.</p><p>Compatibility<br>TORU Motomo Aluminium Case cocok dan pas untuk iPhone 6+ Anda.</p>', 'http://image.elevenia.co.id/g/0/2/2/8/4/1/28022841_B.jpeg'),
(7, '28022796', 'Pakaian Anjing Dan Kucing HOOPET warna SILVER', '150000', 'HPET03', '202', '<p>BAJU BRAND HOOPET UNTUK ANJING DAN KUCING</p><p><br>GAYA YG BERBEDA<br>BAHAN YG LEMBUT<br>* Hangat Di Musim dingi</p><p>PERHATIAN!<br>Pada saat memesan harap buat catatan UKURAN / SIZE yg di pesan,<br>Apabila tidak mencatumkan UKURAN/SIZE Maka kami kirim ukuran secara acak dengan<br>stok yg tersedia</p><p>SIZE Leher(cm/inch) Dada(cm/inch) Panjang(cm/inch)</p><p>BESAR =M 28/11inc 33-38/13inc-15.8inc 28/11inc</p><p>MEDIUM = S 25/9.8inc 28-33/11inc-13.8inc 23/9inc</p><p>KECIL =XS 22/8.7inc 23-28/9inc-11.8inc 18/7.1inc</p>', 'http://image.elevenia.co.id/g/0/2/2/7/9/6/28022796_B_V1.jpg'),
(8, '25919155', 'test el5', '1000000', 'test el4', '10', '<p>test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4</p>', 'http://image.elevenia.co.id/g/9/1/9/1/5/5/25919155_B_V76.jpeg'),
(9, '25996821', 'SPG Full Armor Case for iphone 6 plus', '200000', 'SPG04', '395', '<p>&nbsp;CASE SPG Full Armor Case terbuat dari bahan material aluminium yang kokoh, sehingga memberikan perlindungan ekstra untuk iPhone 6+ Anda dari goresan dan benturan. Dengan design yang ramping dan ringan, Anda tetap mendapat akses ke setiap tombol dengan mudah.</p>\r\n<p>High Quality Material</p>\r\n<p>SPG Full Armor Case terbuat dari &nbsp;&nbsp;bahan material aluminium yang kokoh, sehingga memberikan perlindungan ekstra &nbsp;&nbsp;untuk iPhone 6+ Anda dari goresan dan benturan.</p>\r\n<p>Lightweight Design</p>\r\n<p>Dengan design yang ramping dan ringan, Anda &nbsp;&nbsp;tetap mendapat akses ke setiap tombol dengan mudah.</p>\r\n<p>Compatibility</p>\r\n<p>SPG Full Armor Case cocok dan pas &nbsp;&nbsp;untuk iPhone 6+ Anda.</p>', 'http://image.elevenia.co.id/g/9/9/6/8/2/1/25996821_B_V5.jpeg'),
(10, '28022896', 'SGP Neo Hybrid Ex Plastic Case for iPhone 6 Plus - Magenta', '200000', 'SPGN01', '97', '<p>Spigen Hard Case untuk iPhone 6 Plus ini terbuat dari bahan Polycarbonate yang<br>kokoh dan ringan. Case ini juga hadir dengan berbagai pilihan warna menarik.</p><p>Top Quality and Durable Polycarbonate Material<br>Dengan bahan Plastic yang kuat dan kokoh membuat Hard Case ini dapat mengabsorb<br>impact yang terjadi saat terjatuh atau terbentur.</p><p>Easy Fold Design<br>SGP Tough Armor dilengkapi dengan kickstand pada bagian belakang yang berfungsi<br>agar iPhone Anda dapat digunakan dalam posisi berdiri dengan stabil.</p><p>Perfectly Fit Your Cell Phone<br>Design yang super tipis dan ringan membuat iPhone 6 Plus Anda lebih nyaman saat<br>digunakan. Hard Case ini juga hadir dengan berbagai pilihan warna-warna menarik.</p><p>Shockproof Air Cushion<br>Case ini dilengkapi dengan sistem peredam jatuh sehingga iPhone Anda tidak akan<br>rusak saat terjatuh.</p><p>Warna Magenta</p>', 'http://image.elevenia.co.id/g/0/2/2/8/9/6/28022896_B.jpeg'),
(11, '25920735', 'test el6', '1000000', 'tes-el6-Hit', '0', '<p>test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6</p>', 'http://image.elevenia.co.id/g/9/2/0/7/3/5/25920735_B.jpeg'),
(12, '25920736', 'test el6', '1000000', 'tes-el6-Hit', '55', '<p>test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6</p>', 'http://image.elevenia.co.id/g/9/2/0/7/3/6/25920736_B.jpeg'),
(13, '28022865', 'SGP Neo Hybrid Ex Plastic Case for iPhone 6 Plus - Gold', '200000', 'SPGN02', '112', '<p>Spigen Hard Case untuk iPhone 6 Plus ini terbuat dari bahan Polycarbonate yang<br>kokoh dan ringan. Case ini juga hadir dengan berbagai pilihan warna menarik.</p><p>Top Quality and Durable Polycarbonate Material<br>Dengan bahan Plastic yang kuat dan kokoh membuat Hard Case ini dapat mengabsorb<br>impact yang terjadi saat terjatuh atau terbentur.</p><p>Easy Fold Design<br>SGP Tough Armor dilengkapi dengan kickstand pada bagian belakang yang berfungsi<br>agar iPhone Anda dapat digunakan dalam posisi berdiri dengan stabil.</p><p>Perfectly Fit Your Cell Phone<br>Design yang super tipis dan ringan membuat iPhone 6 Plus Anda lebih nyaman saat<br>digunakan. Hard Case ini juga hadir dengan berbagai pilihan warna-warna menarik.</p><p>Shockproof Air Cushion<br>Case ini dilengkapi dengan sistem peredam jatuh sehingga iPhone Anda tidak akan<br>rusak saat terjatuh.</p><p>Warna Gold</p>', 'http://image.elevenia.co.id/g/0/2/2/8/6/5/28022865_B.jpeg'),
(14, '25919173', 'test el6', '1000000', 'tes-el6-Hit', '0', '<p>test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6</p>', 'http://image.elevenia.co.id/g/9/1/9/1/7/3/25919173_B.jpeg'),
(15, '28022257', 'Pakaian Kucing Dan Anjing HOOPET  Warna GREY', '150000', 'HPET02', '2', '<p>BRAND HOOPETUNTUK ANJING DAN KUCING</p><p><br>GAYA YG BERBEDA<br>BAHAN YG LEMBUT<br> * Hangat Di Musim dingi</p><p>PERHATIAN!<br>Pada saat memesan harap buat catatan UKURAN / SIZE yg di pesan,<br>Apabila tidak mencatumkan UKURAN/SIZE Maka kami kirim ukuran secara acak dengan<br>stok yg tersedia</p><p><br>SIZE Leher(cm/inch) Dada(cm/inch) Panjang(cm/inch)</p><p>BESAR =M 30/11.8inc 35-40/13.8inc-15.8inc 28/11inc</p><p>MEDIUM = S 26/10.2inc 30-35/11.8inc-13.8inc 23/9.1inc</p><p>KECIL =XS 22/8.7inc 25-30/10inc-11.8inc 18/7.1inc</p>', 'http://image.elevenia.co.id/g/0/2/2/2/5/7/28022257_B.jpeg'),
(16, '26026531', 'Tas selempang Biru Dongker', '30000', '1203578196', '10', 'Tas Selempang Merk Dhavin\nMemiliki Bahan yang kuat dan tahan lama\nmemudahkan anda membawa barang-barang saat berpergian\nmemiliki bentuk yang simpel dan trendy.\n\nReady Stok Warna Navy Blue', 'http://image.elevenia.co.id/g/0/2/6/5/3/1/26026531_B_V2.jpeg'),
(17, '28022238', 'NOOSY TPU Soft Case for iPhone 6 Plus - Transparant', '100000', 'NOOSY02', '70', '<p>TPU soft case NOOSY untuk iPhone 6 Plus Anda terbuat dari bahan material yang lembut dan berkualitas untuk melindungi setiap sisi iPhone Anda dari benturan dan goresan.</p><p>Features<br>High Quality Material<br>Soft case ini terbuat dari bahan material metal yang lembut dan berkualitas, sehingga memberikan perlindungan ekstra untuk iPhone 6 Plus Anda dari goresan dan benturan.</p><p>Easy Access to All Buttons<br>Anda tetap mendapat akses ke setiap port dan button yang terdapat di device Anda dengan gampang.</p><p>Removable, Durable, Reusable and Washable<br>Tidak perlu kuatir soft case ini kotor saat dipakai beraktivitas karena Anda dapat mencuci case ini tanpa mengurangi kualitasnya.</p><p>Compatibility<br>Case ini cocok dan pas untuk iPhone 6 Plus Anda.</p>', 'http://image.elevenia.co.id/g/0/2/2/2/3/8/28022238_B.jpeg'),
(18, '28022231', 'Charm Body Fit Extra Maxi Wing 20pads  Test Only', '79000', 'U81818181818', '92', '<p><strong>Deskripsi</strong></p>\n<p>Charm Body Fit Extra Maxi Wings. Dengan bantalan elastis yang kembali ke bentuk semula sehingga mencegah pembalut berkerut, dengan teknologi double block line untuk mencegah pembalut bocor, serta dilengkapi dengan permukaan yang lembut di kulit agar membe<br>\n</p>\n<p>Charm Body Fit Extra Maxi Wings. With an elastic pad back into shape so as to prevent the pads wrinkled, with double-block line technology to prevent leaking dressings, and equipped with a soft on the skin surface in order to provide comfort when worn.</p>\n<p><br></p>\n<p>Test Produk Only.</p>', 'http://image.elevenia.co.id/g/0/2/2/2/3/1/28022231_B.jpeg'),
(19, '28022645', 'Baju Corak Carik Warna Warni', '100000', 'BLACK', '30', '<p>Baju Corak Carik Warna Warni Bahan Katun Baju Corak Carik Warna Warni banyak warna Baju Corak Carik Warna Warni Baju Corak Carik Warna Warni</p>', 'http://image.elevenia.co.id/g/0/2/2/6/4/5/28022645_B_V1.jpg'),
(20, '28022716', 'Baju Kaos Polos Aneka Size', '500000', 'KAOS2', '100', '<p>&nbsp;StyleBasics Men\'s Round Neck Basic T-shirt merupakan kaos polos tanpa corak yang cocok dikenakan oleh pria. Kaos ini dirancang dengan model kerah bulat (round neck) yang nyaman digunakan untuk beraktivitas untuk suasana yang santai. Kaos ini terbuat dari bahan 30S dengan ketebalan yang tepat, sehingga memberikan kesejukkan saat Anda mengenakannya. Teknik jahitannya yang rapi juga akan menjaga kaos ini tetap awet dan tahan lama. &nbsp;</p>\n<p><strong>Detail</strong> - Model: Kaos - Warna: Merah - Gender: Pria - Material: Fabric 30S - Desain: Round neck - Ukuran: XXL&nbsp;</p>', 'http://image.elevenia.co.id/g/0/2/2/7/1/6/28022716_B_V1.jpeg'),
(21, '26269125', 'Celana Dalam Sepeda Cycling Pants Bantalan Gel Empuk', '150000', 'CD001', '13', '<p>&nbsp;Celana Dalam Sepeda dengan Bantalan Gel Empuk Sejuk Nyaman Dipakai<br>\n</p>\n<p>DESKRIPSI PRODUK :<br>\n</p>\n<p>1. Tebal bantalan 2.1cm <br>\n2. Didesain khusus dengan Elastic Interface Technology yang mampu memaksimalkan performa dan kenyamanan anda saat berkendara <br>\n3. Bantalan yang empuk berfungsi untuk Mengurangi gesekan yang terjadi saat mengayuh sepeda sehingga mengurangi kemungkinan lecet pada kulit<br>\n4. Dibuat dengan bahan yang berpori sehingga tidak mudah basah oleh keringat &nbsp;</p>\n<p><br></p>\n<p>&nbsp;Cotton + Nylon Material</p>\n<p>Terbuat dari bahan katun dan nylon yang lentur sehingga muat untuk banyak ukuran badan.&nbsp;</p>\n<p><br></p>\n<p>Body Fit</p>\n<p>Celana ini memiliki model body fit sehingga pergerakan Anda menjadi lebih leluasa dan tidak terbeban sama sekali. Sangat cocok digunakan untuk bersepeda baik indoor maupun outdoor.</p>\n<p><br></p>\n<p><br></p>\n<p>Ready Ukuran XXL (Ukuran celana 36-40)</p>', 'http://image.elevenia.co.id/g/2/6/9/1/2/5/26269125_B_V8.jpeg'),
(22, '26682731', 'Celana Dalam Sepeda Cycling Pants Bantalan Gel Empuk', '99000', 'CD001', '51', '<p>Celana Dalam Sepeda dengan Bantalan Gel Empuk Sejuk Nyaman Dipakai</p><p><br>DESKRIPSI PRODUK :</p><p><br>1. Tebal bantalan 2.1cm <br>2. Didesain khusus dengan Elastic Interface Technology yang mampu memaksimalkan<br>performa dan kenyamanan anda saat berkendara <br>3. Bantalan yang empuk berfungsi untuk Mengurangi gesekan yang terjadi saat<br>mengayuh sepeda sehingga mengurangi kemungkinan lecet pada kulit<br>4. Dibuat dengan bahan yang berpori sehingga tidak mudah basah oleh keringat</p><p></p><p><br>Cotton + Nylon Material</p><p>Terbuat dari bahan katun dan nylon yang lentur sehingga muat untuk banyak ukuran<br>badan.</p><p></p><p><br>Body Fit</p><p>Celana ini memiliki model body fit sehingga pergerakan Anda menjadi lebih<br>leluasa dan tidak terbeban sama sekali. Sangat cocok digunakan untuk bersepeda<br>baik indoor maupun outdoor.</p><p></p><p></p><p></p><p>Ready Ukuran XXL (Ukuran celana 36-40)</p>', 'http://image.elevenia.co.id/g/6/8/2/7/3/1/26682731_B_V3.jpeg'),
(23, '28022188', 'Coleman Packable Grass', '230000', 'COL-PAC-(GR-KUN', '50', '<p>Tas Selempang Bahu yang dapat dilipat Ukuran : Normal 34x27x13cm Dilipat : sekitar 10x14x6cm<br>\nKapasitas : sekitar 13L<br>\nBerat : sekitar 128G<br>\nBahan : 70D tiga ripstop nilon&nbsp;</p>', 'http://image.elevenia.co.id/g/0/2/2/1/8/8/28022188_B_V1.jpeg'),
(24, '28022653', 'kopi gayo', '10000000', 'kopigy1', '1', '<p>fdashfUFHYDHFYDHFYASHIJDISC sfbhsdbfsdfndkcmkmkjsaub hd</p>', 'http://image.elevenia.co.id/g/0/2/2/6/5/3/28022653_B_V1.jpeg'),
(25, '28015301', 'Beli Casing HP iPhone 6 Plus 3 Gratis Casing 1', '1000000', 'SPGN02 - CSG001', '37', '<p>&nbsp;<strong>Casing SGP Neo Hybrid Ex Plastic Case for iPhone 6 Plus</strong></p>', 'http://image.elevenia.co.id/g/0/1/5/3/0/1/28015301_B.jpeg'),
(26, '25982867', 'Case Spigen Neo Hybrid Iphone 6 Plus - Red', '200000', 'SPGN01', '135', '<p>SPG Neo Hybrid</p>\r\n<p>Terbuat dari bahan berkualitas</p>\r\n<p>tahan benturan dengan design modern</p>\r\n<p>terdapat pilihan banyak warna</p>\r\n<p>untuk Iphone 6 Plus dan Iphone 6s Plus</p>', 'http://image.elevenia.co.id/g/9/8/2/8/6/7/25982867_B_V3.jpg'),
(27, 'j10q0yx2po', ' dan update', '300008', '0jungxveihi', '53', 'text deskripsi', 'http://res.cloudinary.com/universitas-muhammadiyah-bengkulu/image/upload/v1571252635/jcwcukekfqyjutamyd4l.jpg'),
(28, 'szguw5r6sq', 'pertama dan', '30000', 'm3pnthswrra', '53', 'text deskripsi', 'http://res.cloudinary.com/universitas-muhammadiyah-bengkulu/image/upload/v1571249838/xy3qenp1lzqdueugtiev.jpg'),
(29, '83hgzi76qhs', 'insert data kedua', '45090', 'loah3wmsagk', '23', 'lorem ipsum dolor smith', 'http://res.cloudinary.com/universitas-muhammadiyah-bengkulu/image/upload/v1571252976/cdmib2rh9bwyjeq3ukuy.jpg'),
(30, 'ppfip79xxqd', 'insert data ketiga', '45090', 'mxotj572ez', '23', 'lorem ipsum dolor smith', 'http://res.cloudinary.com/universitas-muhammadiyah-bengkulu/image/upload/v1571253469/qk43ieder9ltbuqqdgz7.jpg'),
(31, '26682888', 'Baseus Cable 1 Meter Micro USB', '20000', 'BS010', '341', '<p>Baseus White 1 Meter Micro USB 5 Pin to USB 2.0 High Speed Data Sync Charge<br>Cable for Samsung HTC Nokia Sony LG Xiaomi</p><p>100% new top quality high speed Micro USB 5pin to USB 2.0 data sync charge cable<br>High speed more reliable data transfer and charging, save time save money<br>Round cable, durable and strong, 1 meter length<br>2-in-1 function allowing charging and data transfer at the same time<br>Easily charges your device by simple connecting to USB port of your PC or wall<br>plug (not included)<br>Update music / data and more to your smart phone devices with micro usb port<br>through this data cable<br>Wide compatibility, suitable for most Android mobile phones, such as Samsung,<br>HTC, LG, Nokia, Sony, etc.<br>Cable Length: 1 Meter</p>', 'http://image.elevenia.co.id/g/6/8/2/8/8/8/26682888_B_V2.jpeg'),
(32, '28022648', 'Gembok anti maling warna silver', '399000', 'GBK2', '196', '<p>Gembok Anti Maling murah garansi 1 tahun</p>\n<p>design minimalis tahan dan kokoh, telah teruji ketahanannya, terbuat dari bahan tidak mudah karat dan mudah digunakan.</p>', 'http://image.elevenia.co.id/g/0/2/2/6/4/8/28022648_B.jpeg'),
(33, '25815395', 'Pakaian Anjing Dan Kucing HOOPET PERAK Atau SILVER', '98000', '15Y0020GH0001', '203', '<h3>Baju Brand HOOPET untuk anjing dan kucing</h3> <h3><br/></h3> <h3>Gaya yg Berbeda</h3> <h3>Bahan Yg Lembut</h3> <ul> <li>Hangat Di Musim dingi</li> </ul> <p>PERHATIAN!<br/> Pada saat memesan harap buat catatan UKURAN / SIZE yg di pesan,<br/> Apabila tidak mencatumkan UKURAN/SIZE Maka kami kirim ukuran secara acak dengan stok yg tersedia</p> <p>SIZE Leher(cm/inch) Dada(cm/inch) Panjang(cm/inch)</p> <p>BESAR =M 28/11inc 33-38/13inc-15.8inc 28/11inc</p> <p>MEDIUM = S 25/9.8inc 28-33/11inc-13.8inc 23/9inc</p> <p>KECIL =XS 22/8.7inc 23-28/9inc-11.8inc 18/7.1inc</p>', 'http://image.elevenia.co.id/g/8/1/5/3/9/5/25815395_B_V13.jpg'),
(34, '27657840', 'Lipstick The One Lip Sensation Vynil Gell Glossy', '10000', '1198654055', '13', '<p>Lipstick The One Lip Sensation Vynil Gell Glossy 100% Original Exp: Jun<br>\n2019 Lipstik cair super ringan bertekstur gel dengan plexigloss ultra halus yang<br>\nmenutup bibir dengan 5 warna intens.. - tidak lengket , coverage penuh - membuat<br>\nbibir terlihat lebih halus dengan warna intens yang cerah - menjaga bibir tetap<br>\nlembut..</p>', 'http://image.elevenia.co.id/g/6/5/7/8/4/0/27657840_B_V1.jpeg'),
(35, '25887218', 'test el2', '10000', '1609367863', '219', 'test el2test el2test el2test el2test el2test el2test el2test el2test el2test el2test el2test el2test el2test el2test el2test el2test el2test el2test el2test el2test el2test el2test el2test el2test el2test el2test el2test el2test el2', 'http://image.elevenia.co.id/g/8/8/7/2/1/8/25887218_B_V30.jpg'),
(36, '26084200', 'SGP Slim Armor Plastic TPU Combination Case with Kickstand for iPhone 6 Plussss test', '39000', 'SPGK01', '10', '<p>SGP Slim Armor Plastic TPU Combination Case with Kickstand for iPhone 6 Plus</p><p>Spigen Hard Case untuk iPhone 6 Plus ini terbuat dari bahan Polycarbonate yang kokoh dan ringan. Case ini juga hadir dengan berbagai pilihan warna menarik.</p><p>Top Quality and Durable Polycarbonate Material<br>Dengan bahan Plastic yang kuat dan kokoh membuat Hard Case ini dapat mengabsorb impact yang terjadi saat terjatuh atau terbentur.</p><p>Easy Fold Design<br>SGP Tough Armor dilengkapi dengan kickstand pada bagian belakang yang berfungsi agar iPhone Anda dapat digunakan dalam posisi berdiri dengan stabil.</p><p>Perfectly Fit Your Cell Phone<br>Design yang super tipis dan ringan membuat iPhone 6 Plus Anda lebih nyaman saat digunakan. Hard Case ini juga hadir dengan berbagai pilihan warna-warna menarik.</p><p>Shockproof Air Cushion<br>Case ini dilengkapi dengan sistem peredam jatuh sehingga iPhone Anda tidak akan rusak saat terjatuh.</p>', 'http://image.elevenia.co.id/g/0/8/4/2/0/0/26084200_B_V1.jpeg'),
(37, '25994432', 'TORU Motomo Aluminium Case for iPhone 6s Plusss test', '149000', 'MT01', '299', '<p>&nbsp;&nbsp;</p>\r\n<p>Case TORU Motomo Aluminium Case terbuat dari bahan material aluminium yang kokoh, sehingga memberikan perlindungan ekstra untuk iPhone 6+ Anda dari goresan dan benturan. Dengan design yang ramping dan ringan, Anda tetap mendapat akses ke setiap tombol dengan mudah.</p>\r\n<p>&nbsp;&nbsp;</p>\r\n<p>High Quality Material</p>\r\n<p>TORU Motomo Aluminium Case terbuat dari &nbsp;&nbsp;bahan material aluminium yang kokoh, sehingga memberikan perlindungan ekstra &nbsp;&nbsp;untuk iPhone 6+ Anda dari goresan dan benturan.</p>\r\n<p>&nbsp;</p>\r\n<p>Lightweight Design</p>\r\n<p>Dengan design yang ramping dan ringan, Anda &nbsp;&nbsp;tetap mendapat akses ke setiap tombol dengan mudah.</p>\r\n<p>&nbsp;</p>\r\n<p>Compatibility</p>\r\n<p>TORU Motomo Aluminium Case cocok dan pas &nbsp;&nbsp;untuk iPhone 6 plus atau 6s plus Anda.</p>', 'http://image.elevenia.co.id/g/9/9/4/4/3/2/25994432_B_V17.jpeg'),
(38, '25979544', 'Spigen Neo Full Armor Case Iphone 6s Plusssssssss test', '150000', '1609475228', '45', '<p>Spigen Neo Full Armor Case Iphone 6s Plus</p>\r\n<p>Khusu untuk iphone 6 plus dan iphone 6s plus</p>\r\n<p><br></p>\r\n<p>Berbahan solid dan kokoh, sehingga melindungi iphone ada saat terjatuh.</p>\r\n<p><br></p>\r\n<p><br></p>', 'http://image.elevenia.co.id/g/9/7/9/5/4/4/25979544_B_V2.jpeg'),
(39, '26682888', 'Baseus Cable 1 Meter Micro USB', '20000', 'BS010', '341', '<p>Baseus White 1 Meter Micro USB 5 Pin to USB 2.0 High Speed Data Sync Charge<br>Cable for Samsung HTC Nokia Sony LG Xiaomi</p><p>100% new top quality high speed Micro USB 5pin to USB 2.0 data sync charge cable<br>High speed more reliable data transfer and charging, save time save money<br>Round cable, durable and strong, 1 meter length<br>2-in-1 function allowing charging and data transfer at the same time<br>Easily charges your device by simple connecting to USB port of your PC or wall<br>plug (not included)<br>Update music / data and more to your smart phone devices with micro usb port<br>through this data cable<br>Wide compatibility, suitable for most Android mobile phones, such as Samsung,<br>HTC, LG, Nokia, Sony, etc.<br>Cable Length: 1 Meter</p>', 'http://image.elevenia.co.id/g/6/8/2/8/8/8/26682888_B_V2.jpeg'),
(40, '28022648', 'Gembok anti maling warna silver', '399000', 'GBK2', '196', '<p>Gembok Anti Maling murah garansi 1 tahun</p>\n<p>design minimalis tahan dan kokoh, telah teruji ketahanannya, terbuat dari bahan tidak mudah karat dan mudah digunakan.</p>', 'http://image.elevenia.co.id/g/0/2/2/6/4/8/28022648_B.jpeg'),
(41, '25815395', 'Pakaian Anjing Dan Kucing HOOPET PERAK Atau SILVER', '98000', '15Y0020GH0001', '203', '<h3>Baju Brand HOOPET untuk anjing dan kucing</h3> <h3><br/></h3> <h3>Gaya yg Berbeda</h3> <h3>Bahan Yg Lembut</h3> <ul> <li>Hangat Di Musim dingi</li> </ul> <p>PERHATIAN!<br/> Pada saat memesan harap buat catatan UKURAN / SIZE yg di pesan,<br/> Apabila tidak mencatumkan UKURAN/SIZE Maka kami kirim ukuran secara acak dengan stok yg tersedia</p> <p>SIZE Leher(cm/inch) Dada(cm/inch) Panjang(cm/inch)</p> <p>BESAR =M 28/11inc 33-38/13inc-15.8inc 28/11inc</p> <p>MEDIUM = S 25/9.8inc 28-33/11inc-13.8inc 23/9inc</p> <p>KECIL =XS 22/8.7inc 23-28/9inc-11.8inc 18/7.1inc</p>', 'http://image.elevenia.co.id/g/8/1/5/3/9/5/25815395_B_V13.jpg'),
(42, '27657840', 'Lipstick The One Lip Sensation Vynil Gell Glossy', '10000', '1198654055', '13', '<p>Lipstick The One Lip Sensation Vynil Gell Glossy 100% Original Exp: Jun<br>\n2019 Lipstik cair super ringan bertekstur gel dengan plexigloss ultra halus yang<br>\nmenutup bibir dengan 5 warna intens.. - tidak lengket , coverage penuh - membuat<br>\nbibir terlihat lebih halus dengan warna intens yang cerah - menjaga bibir tetap<br>\nlembut..</p>', 'http://image.elevenia.co.id/g/6/5/7/8/4/0/27657840_B_V1.jpeg'),
(43, '25887218', 'test el2', '10000', '1609367863', '219', 'test el2test el2test el2test el2test el2test el2test el2test el2test el2test el2test el2test el2test el2test el2test el2test el2test el2test el2test el2test el2test el2test el2test el2test el2test el2test el2test el2test el2test el2', 'http://image.elevenia.co.id/g/8/8/7/2/1/8/25887218_B_V30.jpg'),
(44, '26084200', 'SGP Slim Armor Plastic TPU Combination Case with Kickstand for iPhone 6 Plussss test', '39000', 'SPGK01', '10', '<p>SGP Slim Armor Plastic TPU Combination Case with Kickstand for iPhone 6 Plus</p><p>Spigen Hard Case untuk iPhone 6 Plus ini terbuat dari bahan Polycarbonate yang kokoh dan ringan. Case ini juga hadir dengan berbagai pilihan warna menarik.</p><p>Top Quality and Durable Polycarbonate Material<br>Dengan bahan Plastic yang kuat dan kokoh membuat Hard Case ini dapat mengabsorb impact yang terjadi saat terjatuh atau terbentur.</p><p>Easy Fold Design<br>SGP Tough Armor dilengkapi dengan kickstand pada bagian belakang yang berfungsi agar iPhone Anda dapat digunakan dalam posisi berdiri dengan stabil.</p><p>Perfectly Fit Your Cell Phone<br>Design yang super tipis dan ringan membuat iPhone 6 Plus Anda lebih nyaman saat digunakan. Hard Case ini juga hadir dengan berbagai pilihan warna-warna menarik.</p><p>Shockproof Air Cushion<br>Case ini dilengkapi dengan sistem peredam jatuh sehingga iPhone Anda tidak akan rusak saat terjatuh.</p>', 'http://image.elevenia.co.id/g/0/8/4/2/0/0/26084200_B_V1.jpeg'),
(45, '25994432', 'TORU Motomo Aluminium Case for iPhone 6s Plusss test', '149000', 'MT01', '299', '<p>&nbsp;&nbsp;</p>\r\n<p>Case TORU Motomo Aluminium Case terbuat dari bahan material aluminium yang kokoh, sehingga memberikan perlindungan ekstra untuk iPhone 6+ Anda dari goresan dan benturan. Dengan design yang ramping dan ringan, Anda tetap mendapat akses ke setiap tombol dengan mudah.</p>\r\n<p>&nbsp;&nbsp;</p>\r\n<p>High Quality Material</p>\r\n<p>TORU Motomo Aluminium Case terbuat dari &nbsp;&nbsp;bahan material aluminium yang kokoh, sehingga memberikan perlindungan ekstra &nbsp;&nbsp;untuk iPhone 6+ Anda dari goresan dan benturan.</p>\r\n<p>&nbsp;</p>\r\n<p>Lightweight Design</p>\r\n<p>Dengan design yang ramping dan ringan, Anda &nbsp;&nbsp;tetap mendapat akses ke setiap tombol dengan mudah.</p>\r\n<p>&nbsp;</p>\r\n<p>Compatibility</p>\r\n<p>TORU Motomo Aluminium Case cocok dan pas &nbsp;&nbsp;untuk iPhone 6 plus atau 6s plus Anda.</p>', 'http://image.elevenia.co.id/g/9/9/4/4/3/2/25994432_B_V17.jpeg'),
(46, '25979544', 'Spigen Neo Full Armor Case Iphone 6s Plusssssssss test', '150000', '1609475228', '45', '<p>Spigen Neo Full Armor Case Iphone 6s Plus</p>\r\n<p>Khusu untuk iphone 6 plus dan iphone 6s plus</p>\r\n<p><br></p>\r\n<p>Berbahan solid dan kokoh, sehingga melindungi iphone ada saat terjatuh.</p>\r\n<p><br></p>\r\n<p><br></p>', 'http://image.elevenia.co.id/g/9/7/9/5/4/4/25979544_B_V2.jpeg'),
(47, '28022696', 'Baju Magdalene', '89000', 'MAGDALENE_BLACK', '50', '<p>dsadasdaas</p>\r\n<p>asdasd</p>\r\n<p>asdasdasd</p>\r\n<p>asd</p>\r\n<p>asdasdasdasdafgfghdfhthgfg</p>\r\n<p>ghghfgj</p>\r\n<p>gjj</p>\r\n<p>gf</p>\r\n<p>hfgh</p>', 'http://image.elevenia.co.id/g/0/2/2/6/9/6/no_image_300.gif'),
(48, '25922874', 'test el5', '1000000', '1609397612', '20', '<p>test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4</p>', 'http://image.elevenia.co.id/g/9/2/2/8/7/4/25922874_B_V1.jpeg'),
(49, '28022849', 'TORU Motomo Aluminium Case for iPhone 6 Plus - Silver', '200000', 'TORU02', '100', '<p>TORU Motomo Aluminium Case terbuat dari bahan material aluminium yang kokoh, sehingga memberikan perlindungan ekstra untuk iPhone 6+ Anda dari goresan dan benturan. Dengan design yang ramping dan ringan, Anda tetap mendapat akses ke setiap tombol dengan mudah.</p><p>Features<br>High Quality Material<br>TORU Motomo Aluminium Case terbuat dari bahan material aluminium yang kokoh, sehingga memberikan perlindungan ekstra untuk iPhone 6+ Anda dari goresan dan benturan.</p><p>Lightweight Design<br>Dengan design yang ramping dan ringan, Anda tetap mendapat akses ke setiap tombol dengan mudah.</p><p>Compatibility<br>TORU Motomo Aluminium Case cocok dan pas untuk iPhone 6+ Anda.</p>', 'http://image.elevenia.co.id/g/0/2/2/8/4/9/28022849_B_V1.jpeg'),
(50, '28022841', 'TORU Motomo Aluminium Case for iPhone 6 Plus - Dark Blue', '200000', 'TORU01', '100', '<p>TORU Motomo Aluminium Case terbuat dari bahan material aluminium yang kokoh, sehingga memberikan perlindungan ekstra untuk iPhone 6+ Anda dari goresan dan benturan. Dengan design yang ramping dan ringan, Anda tetap mendapat akses ke setiap tombol dengan mudah.</p><p>Features<br>High Quality Material<br>TORU Motomo Aluminium Case terbuat dari bahan material aluminium yang kokoh, sehingga memberikan perlindungan ekstra untuk iPhone 6+ Anda dari goresan dan benturan.</p><p>Lightweight Design<br>Dengan design yang ramping dan ringan, Anda tetap mendapat akses ke setiap tombol dengan mudah.</p><p>Compatibility<br>TORU Motomo Aluminium Case cocok dan pas untuk iPhone 6+ Anda.</p>', 'http://image.elevenia.co.id/g/0/2/2/8/4/1/28022841_B.jpeg'),
(51, '28022796', 'Pakaian Anjing Dan Kucing HOOPET warna SILVER', '150000', 'HPET03', '202', '<p>BAJU BRAND HOOPET UNTUK ANJING DAN KUCING</p><p><br>GAYA YG BERBEDA<br>BAHAN YG LEMBUT<br>* Hangat Di Musim dingi</p><p>PERHATIAN!<br>Pada saat memesan harap buat catatan UKURAN / SIZE yg di pesan,<br>Apabila tidak mencatumkan UKURAN/SIZE Maka kami kirim ukuran secara acak dengan<br>stok yg tersedia</p><p>SIZE Leher(cm/inch) Dada(cm/inch) Panjang(cm/inch)</p><p>BESAR =M 28/11inc 33-38/13inc-15.8inc 28/11inc</p><p>MEDIUM = S 25/9.8inc 28-33/11inc-13.8inc 23/9inc</p><p>KECIL =XS 22/8.7inc 23-28/9inc-11.8inc 18/7.1inc</p>', 'http://image.elevenia.co.id/g/0/2/2/7/9/6/28022796_B_V1.jpg'),
(52, '25919155', 'test el5', '1000000', 'test el4', '10', '<p>test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4</p>', 'http://image.elevenia.co.id/g/9/1/9/1/5/5/25919155_B_V76.jpeg'),
(53, '25996821', 'SPG Full Armor Case for iphone 6 plus', '200000', 'SPG04', '395', '<p>&nbsp;CASE SPG Full Armor Case terbuat dari bahan material aluminium yang kokoh, sehingga memberikan perlindungan ekstra untuk iPhone 6+ Anda dari goresan dan benturan. Dengan design yang ramping dan ringan, Anda tetap mendapat akses ke setiap tombol dengan mudah.</p>\r\n<p>High Quality Material</p>\r\n<p>SPG Full Armor Case terbuat dari &nbsp;&nbsp;bahan material aluminium yang kokoh, sehingga memberikan perlindungan ekstra &nbsp;&nbsp;untuk iPhone 6+ Anda dari goresan dan benturan.</p>\r\n<p>Lightweight Design</p>\r\n<p>Dengan design yang ramping dan ringan, Anda &nbsp;&nbsp;tetap mendapat akses ke setiap tombol dengan mudah.</p>\r\n<p>Compatibility</p>\r\n<p>SPG Full Armor Case cocok dan pas &nbsp;&nbsp;untuk iPhone 6+ Anda.</p>', 'http://image.elevenia.co.id/g/9/9/6/8/2/1/25996821_B_V5.jpeg'),
(54, '28022896', 'SGP Neo Hybrid Ex Plastic Case for iPhone 6 Plus - Magenta', '200000', 'SPGN01', '97', '<p>Spigen Hard Case untuk iPhone 6 Plus ini terbuat dari bahan Polycarbonate yang<br>kokoh dan ringan. Case ini juga hadir dengan berbagai pilihan warna menarik.</p><p>Top Quality and Durable Polycarbonate Material<br>Dengan bahan Plastic yang kuat dan kokoh membuat Hard Case ini dapat mengabsorb<br>impact yang terjadi saat terjatuh atau terbentur.</p><p>Easy Fold Design<br>SGP Tough Armor dilengkapi dengan kickstand pada bagian belakang yang berfungsi<br>agar iPhone Anda dapat digunakan dalam posisi berdiri dengan stabil.</p><p>Perfectly Fit Your Cell Phone<br>Design yang super tipis dan ringan membuat iPhone 6 Plus Anda lebih nyaman saat<br>digunakan. Hard Case ini juga hadir dengan berbagai pilihan warna-warna menarik.</p><p>Shockproof Air Cushion<br>Case ini dilengkapi dengan sistem peredam jatuh sehingga iPhone Anda tidak akan<br>rusak saat terjatuh.</p><p>Warna Magenta</p>', 'http://image.elevenia.co.id/g/0/2/2/8/9/6/28022896_B.jpeg'),
(55, '25920735', 'test el6', '1000000', 'tes-el6-Hit', '0', '<p>test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6</p>', 'http://image.elevenia.co.id/g/9/2/0/7/3/5/25920735_B.jpeg'),
(56, '25920736', 'test el6', '1000000', 'tes-el6-Hit', '55', '<p>test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6</p>', 'http://image.elevenia.co.id/g/9/2/0/7/3/6/25920736_B.jpeg'),
(57, '28022865', 'SGP Neo Hybrid Ex Plastic Case for iPhone 6 Plus - Gold', '200000', 'SPGN02', '112', '<p>Spigen Hard Case untuk iPhone 6 Plus ini terbuat dari bahan Polycarbonate yang<br>kokoh dan ringan. Case ini juga hadir dengan berbagai pilihan warna menarik.</p><p>Top Quality and Durable Polycarbonate Material<br>Dengan bahan Plastic yang kuat dan kokoh membuat Hard Case ini dapat mengabsorb<br>impact yang terjadi saat terjatuh atau terbentur.</p><p>Easy Fold Design<br>SGP Tough Armor dilengkapi dengan kickstand pada bagian belakang yang berfungsi<br>agar iPhone Anda dapat digunakan dalam posisi berdiri dengan stabil.</p><p>Perfectly Fit Your Cell Phone<br>Design yang super tipis dan ringan membuat iPhone 6 Plus Anda lebih nyaman saat<br>digunakan. Hard Case ini juga hadir dengan berbagai pilihan warna-warna menarik.</p><p>Shockproof Air Cushion<br>Case ini dilengkapi dengan sistem peredam jatuh sehingga iPhone Anda tidak akan<br>rusak saat terjatuh.</p><p>Warna Gold</p>', 'http://image.elevenia.co.id/g/0/2/2/8/6/5/28022865_B.jpeg'),
(58, '25919173', 'test el6', '1000000', 'tes-el6-Hit', '0', '<p>test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6</p>', 'http://image.elevenia.co.id/g/9/1/9/1/7/3/25919173_B.jpeg'),
(59, '28022257', 'Pakaian Kucing Dan Anjing HOOPET  Warna GREY', '150000', 'HPET02', '2', '<p>BRAND HOOPETUNTUK ANJING DAN KUCING</p><p><br>GAYA YG BERBEDA<br>BAHAN YG LEMBUT<br> * Hangat Di Musim dingi</p><p>PERHATIAN!<br>Pada saat memesan harap buat catatan UKURAN / SIZE yg di pesan,<br>Apabila tidak mencatumkan UKURAN/SIZE Maka kami kirim ukuran secara acak dengan<br>stok yg tersedia</p><p><br>SIZE Leher(cm/inch) Dada(cm/inch) Panjang(cm/inch)</p><p>BESAR =M 30/11.8inc 35-40/13.8inc-15.8inc 28/11inc</p><p>MEDIUM = S 26/10.2inc 30-35/11.8inc-13.8inc 23/9.1inc</p><p>KECIL =XS 22/8.7inc 25-30/10inc-11.8inc 18/7.1inc</p>', 'http://image.elevenia.co.id/g/0/2/2/2/5/7/28022257_B.jpeg'),
(60, '26026531', 'Tas selempang Biru Dongker', '30000', '1203578196', '10', 'Tas Selempang Merk Dhavin\nMemiliki Bahan yang kuat dan tahan lama\nmemudahkan anda membawa barang-barang saat berpergian\nmemiliki bentuk yang simpel dan trendy.\n\nReady Stok Warna Navy Blue', 'http://image.elevenia.co.id/g/0/2/6/5/3/1/26026531_B_V2.jpeg'),
(61, '28022238', 'NOOSY TPU Soft Case for iPhone 6 Plus - Transparant', '100000', 'NOOSY02', '70', '<p>TPU soft case NOOSY untuk iPhone 6 Plus Anda terbuat dari bahan material yang lembut dan berkualitas untuk melindungi setiap sisi iPhone Anda dari benturan dan goresan.</p><p>Features<br>High Quality Material<br>Soft case ini terbuat dari bahan material metal yang lembut dan berkualitas, sehingga memberikan perlindungan ekstra untuk iPhone 6 Plus Anda dari goresan dan benturan.</p><p>Easy Access to All Buttons<br>Anda tetap mendapat akses ke setiap port dan button yang terdapat di device Anda dengan gampang.</p><p>Removable, Durable, Reusable and Washable<br>Tidak perlu kuatir soft case ini kotor saat dipakai beraktivitas karena Anda dapat mencuci case ini tanpa mengurangi kualitasnya.</p><p>Compatibility<br>Case ini cocok dan pas untuk iPhone 6 Plus Anda.</p>', 'http://image.elevenia.co.id/g/0/2/2/2/3/8/28022238_B.jpeg'),
(63, '28022645', 'Baju Corak Carik Warna Warni', '100000', 'BLACK', '30', '<p>Baju Corak Carik Warna Warni Bahan Katun Baju Corak Carik Warna Warni banyak warna Baju Corak Carik Warna Warni Baju Corak Carik Warna Warni</p>', 'http://image.elevenia.co.id/g/0/2/2/6/4/5/28022645_B_V1.jpg'),
(64, '28022716', 'Baju Kaos Polos Aneka Size', '500000', 'KAOS2', '100', '<p>&nbsp;StyleBasics Men\'s Round Neck Basic T-shirt merupakan kaos polos tanpa corak yang cocok dikenakan oleh pria. Kaos ini dirancang dengan model kerah bulat (round neck) yang nyaman digunakan untuk beraktivitas untuk suasana yang santai. Kaos ini terbuat dari bahan 30S dengan ketebalan yang tepat, sehingga memberikan kesejukkan saat Anda mengenakannya. Teknik jahitannya yang rapi juga akan menjaga kaos ini tetap awet dan tahan lama. &nbsp;</p>\n<p><strong>Detail</strong> - Model: Kaos - Warna: Merah - Gender: Pria - Material: Fabric 30S - Desain: Round neck - Ukuran: XXL&nbsp;</p>', 'http://image.elevenia.co.id/g/0/2/2/7/1/6/28022716_B_V1.jpeg'),
(65, '26269125', 'Celana Dalam Sepeda Cycling Pants Bantalan Gel Empuk', '150000', 'CD001', '13', '<p>&nbsp;Celana Dalam Sepeda dengan Bantalan Gel Empuk Sejuk Nyaman Dipakai<br>\n</p>\n<p>DESKRIPSI PRODUK :<br>\n</p>\n<p>1. Tebal bantalan 2.1cm <br>\n2. Didesain khusus dengan Elastic Interface Technology yang mampu memaksimalkan performa dan kenyamanan anda saat berkendara <br>\n3. Bantalan yang empuk berfungsi untuk Mengurangi gesekan yang terjadi saat mengayuh sepeda sehingga mengurangi kemungkinan lecet pada kulit<br>\n4. Dibuat dengan bahan yang berpori sehingga tidak mudah basah oleh keringat &nbsp;</p>\n<p><br></p>\n<p>&nbsp;Cotton + Nylon Material</p>\n<p>Terbuat dari bahan katun dan nylon yang lentur sehingga muat untuk banyak ukuran badan.&nbsp;</p>\n<p><br></p>\n<p>Body Fit</p>\n<p>Celana ini memiliki model body fit sehingga pergerakan Anda menjadi lebih leluasa dan tidak terbeban sama sekali. Sangat cocok digunakan untuk bersepeda baik indoor maupun outdoor.</p>\n<p><br></p>\n<p><br></p>\n<p>Ready Ukuran XXL (Ukuran celana 36-40)</p>', 'http://image.elevenia.co.id/g/2/6/9/1/2/5/26269125_B_V8.jpeg'),
(66, '26682731', 'Celana Dalam Sepeda Cycling Pants Bantalan Gel Empuk', '99000', 'CD001', '51', '<p>Celana Dalam Sepeda dengan Bantalan Gel Empuk Sejuk Nyaman Dipakai</p><p><br>DESKRIPSI PRODUK :</p><p><br>1. Tebal bantalan 2.1cm <br>2. Didesain khusus dengan Elastic Interface Technology yang mampu memaksimalkan<br>performa dan kenyamanan anda saat berkendara <br>3. Bantalan yang empuk berfungsi untuk Mengurangi gesekan yang terjadi saat<br>mengayuh sepeda sehingga mengurangi kemungkinan lecet pada kulit<br>4. Dibuat dengan bahan yang berpori sehingga tidak mudah basah oleh keringat</p><p></p><p><br>Cotton + Nylon Material</p><p>Terbuat dari bahan katun dan nylon yang lentur sehingga muat untuk banyak ukuran<br>badan.</p><p></p><p><br>Body Fit</p><p>Celana ini memiliki model body fit sehingga pergerakan Anda menjadi lebih<br>leluasa dan tidak terbeban sama sekali. Sangat cocok digunakan untuk bersepeda<br>baik indoor maupun outdoor.</p><p></p><p></p><p></p><p>Ready Ukuran XXL (Ukuran celana 36-40)</p>', 'http://image.elevenia.co.id/g/6/8/2/7/3/1/26682731_B_V3.jpeg'),
(67, '28022188', 'Coleman Packable Grass', '230000', 'COL-PAC-(GR-KUN', '50', '<p>Tas Selempang Bahu yang dapat dilipat Ukuran : Normal 34x27x13cm Dilipat : sekitar 10x14x6cm<br>\nKapasitas : sekitar 13L<br>\nBerat : sekitar 128G<br>\nBahan : 70D tiga ripstop nilon&nbsp;</p>', 'http://image.elevenia.co.id/g/0/2/2/1/8/8/28022188_B_V1.jpeg'),
(73, 'juehbvx4rj', 'pertama', '2500', 'pa20vwjm65a', '1998', 'yah ini adalah post kucing', 'http://res.cloudinary.com/universitas-muhammadiyah-bengkulu/image/upload/v1571714195/itozthjnqsv7xpdhd24a.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `code_order` varchar(250) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `total_product` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `date_checkout` date NOT NULL,
  `status` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaction`
--

INSERT INTO `transaction` (`id`, `code_order`, `id_user`, `id_product`, `total_product`, `total_price`, `date_checkout`, `status`) VALUES
(2, '3oomrq1b8oh', 2, 2, 4, 400000, '2019-10-16', 'pending'),
(3, 'f2fc1i995nu', 2, 2, 4, 200000, '2019-10-16', 'pending'),
(5, 'ac2zv8uqytu', 7, 15, 3, 3000, '2019-10-17', 'pending');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `wallet` int(11) NOT NULL DEFAULT 1000000,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `wallet`, `status`) VALUES
(2, 'rionming', 'rionming@gmail.com', '54d8d56cc67f69a65cbb67f80eb7f08c', 400000, 0),
(3, 'rion', 'rion@gmail.com', '54d8d56cc67f69a65cbb67f80eb7f08c', 600000, 1),
(4, 'dimas', 'dimas@gmail.com', '54d8d56cc67f69a65cbb67f80eb7f08c', 600000, 1),
(5, 'bagas', 'bayu@gmal.com', '54d8d56cc67f69a65cbb67f80eb7f08c', 600000, 0),
(6, 'dimas2', 'dimas2@gmail.com', '54d8d56cc67f69a65cbb67f80eb7f08c', 600000, 0),
(7, 'dwi', 'dwi@gmail.com', '54d8d56cc67f69a65cbb67f80eb7f08c', 497000, 0),
(8, 'edo', 'edo@gmail.com', 'c81a205dc38fec50192be72efa648029', 1000000, 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT untuk tabel `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
