-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 04 Nis 2021, 11:02:28
-- Sunucu sürümü: 10.4.18-MariaDB
-- PHP Sürümü: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `c2c`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ayar`
--

CREATE TABLE `ayar` (
  `ayar_id` int(11) NOT NULL,
  `ayar_logo` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_title` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_description` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_keywords` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_author` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_tel` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_gsm` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_faks` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_mail` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_ilce` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_il` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_adres` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_mesai` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_maps` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_analystic` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_zopim` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_facebook` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_twitter` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_google` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_youtube` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_smtphost` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_smtpuser` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_smtppassword` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_smtpport` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_bakim` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ayar`
--

INSERT INTO `ayar` (`ayar_id`, `ayar_logo`, `ayar_title`, `ayar_description`, `ayar_keywords`, `ayar_author`, `ayar_tel`, `ayar_gsm`, `ayar_faks`, `ayar_mail`, `ayar_ilce`, `ayar_il`, `ayar_adres`, `ayar_mesai`, `ayar_maps`, `ayar_analystic`, `ayar_zopim`, `ayar_facebook`, `ayar_twitter`, `ayar_google`, `ayar_youtube`, `ayar_smtphost`, `ayar_smtpuser`, `ayar_smtppassword`, `ayar_smtpport`, `ayar_bakim`) VALUES
(0, 'dimg/23081logom3.png', 'C2C E-Ticaret Scripti', 'Aydın Yağız E-Ticaret sürümü', 'c2c,giitigidiyorsite,blog,eticaret', 'Aydın Yağız C2C Alıcı ve Satıcıları Buluşturan E-Ticaret Scripti', '0850 840 80 76', '0850 840 80 76', '0850 840 80 76', 'aydinyagiz002@gmail.com', 'Yeşilyurt', 'Malatya', 'Yeşilyurt', '7/24 Açık E-ticaret Scripti', 'ayar_maps_api', 'ayar_analystic', 'https://static.zdassets.com/ekr/snippet.js?key=44c94d79-afbb-4892-bfe5-063e3704e417', 'http://www.facebook.com', 'http://www.twitter.com', 'http://www.google.com', 'http://www.youtube.com', 'mail.alanadiniz.com', 'userrrr', 'password', '587', '0');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `banka`
--

CREATE TABLE `banka` (
  `banka_id` int(11) NOT NULL,
  `banka_ad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `banka_iban` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `banka_hesapadsoyad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `banka_durum` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `banka`
--

INSERT INTO `banka` (`banka_id`, `banka_ad`, `banka_iban`, `banka_hesapadsoyad`, `banka_durum`) VALUES
(1, 'Garanti', '121655122121516', 'Aydın Yağız', '1'),
(2, 'Yapı Kredi', 'TR15478652123123152231', 'Adem Yağız', '1'),
(3, 'Vakıf Bank', 'TR784651323479845612', 'Mahmut Yağız', '1'),
(5, 'Ziraat Bankası', 'TR545621234565123321', 'Elif Yağız', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hakkimizda`
--

CREATE TABLE `hakkimizda` (
  `hakkimizda_id` int(11) NOT NULL,
  `hakkimizda_baslik` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_icerik` text COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_video` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_vizyon` varchar(500) COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_misyon` varchar(500) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `hakkimizda`
--

INSERT INTO `hakkimizda` (`hakkimizda_id`, `hakkimizda_baslik`, `hakkimizda_icerik`, `hakkimizda_video`, `hakkimizda_vizyon`, `hakkimizda_misyon`) VALUES
(0, 'Aydın Yağız Eğitim Sürümü', '<p><strong><img alt=\"\" src=\"https://cdn.worldvectorlogo.com/logos/udemy.svg\" style=\"float:right; height:100px; margin:10px; width:100px\" />Lorem Ipsum</strong>, dizgi ve baskı end&uuml;strisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak &uuml;zere bir yazı galerisini alarak karıştırdığı 1500&rsquo;lerden beri end&uuml;stri standardı sahte metinler olarak kullanılmıştır. Beşy&uuml;z yıl boyunca varlığını s&uuml;rd&uuml;rmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sı&ccedil;ramıştır. 1960&rsquo;larda Lorem Ipsum pasajları da i&ccedil;eren Letraset yapraklarının yayınlanması ile ve yakın zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayıncılık yazılımları ile pop&uuml;ler olmuştur.</p>\r\n\r\n<p>Lorem Ipsum, dizgi ve baskı end&uuml;strisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak &uuml;zere bir yazı galerisini alarak karıştırdığı 1500&rsquo;lerden beri end&uuml;stri standardı sahte metinler olarak kullanılmıştır. Beşy&uuml;z yıl boyunca varlığını s&uuml;rd&uuml;rmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sı&ccedil;ramıştır. 1960&rsquo;larda Lorem Ipsum pasajları da i&ccedil;eren Letraset yapraklarının yayınlanması ile ve yakın zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayıncılık yazılımları ile pop&uuml;ler olmuştur.Lorem Ipsum, dizgi ve baskı end&uuml;strisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak &uuml;zere bir yazı galerisini alarak karıştırdığı 1500&rsquo;lerden beri end&uuml;stri standardı sahte metinler olarak kullanılmıştır. Beşy&uuml;z yıl boyunca varlığını s&uuml;rd&uuml;rmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sı&ccedil;ramıştır. 1960&rsquo;larda Lorem Ipsum pasajları da i&ccedil;eren Letraset yapraklarının yayınlanması ile ve yakın zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayıncılık yazılımları ile pop&uuml;ler olmuştur.Lorem Ipsum, dizgi ve baskı end&uuml;strisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak &uuml;zere bir yazı galerisini alarak karıştırdığı 1500&rsquo;lerden beri end&uuml;stri standardı sahte metinler olarak kullanılmıştır. Beşy&uuml;z yıl boyunca varlığını s&uuml;rd&uuml;rmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sı&ccedil;ramıştır. 1960&rsquo;larda Lorem Ipsum pasajları da i&ccedil;eren Letraset yapraklarının yayınlanması ile ve yakın zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayıncılık yazılımları ile pop&uuml;ler olmuştur.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'hrEu_1sHgI4', 'Aydın Yağız Eğitim Sürümü ile ilgili hakkımızda vizyon içeriği burada yer alacaktır. Aydın Yağız Eğitim Sürümü ile ilgili hakkımızda vizyon içeriği burada yer alacaktır. Aydın Yağız Eğitim Sürümü ile ilgili hakkımızda vizyon içeriği burada yer alacaktır. Aydın Yağız Eğitim Sürümü ile ilgili hakkımızda vizyon içeriği burada yer alacaktır.  Aydın Yağız Eğitim Sürümü ile ilgili hakkımızda vizyon içeriği burada yer alacaktır.', 'Aydın Yağız Eğitim Sürümü ile ilgili hakkımızda misyon içeriği burada yer alacaktır.');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kategori`
--

CREATE TABLE `kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_ad` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `kategori_onecikar` enum('0','1') COLLATE utf8_turkish_ci NOT NULL,
  `kategori_seourl` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `kategori_sira` int(2) NOT NULL,
  `kategori_durum` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `kategori_ad`, `kategori_onecikar`, `kategori_seourl`, `kategori_sira`, `kategori_durum`) VALUES
(8, 'HTML Template', '1', 'html-template', 1, '1'),
(9, 'PHP Script', '1', 'php-script', 2, '1'),
(10, 'Wordpress Template', '1', 'wordpress-template', 3, '1'),
(11, 'Alan Adı', '1', 'alan-adi', 4, '1'),
(12, 'Siteler', '1', 'siteler', 5, '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanici`
--

CREATE TABLE `kullanici` (
  `kullanici_id` int(11) NOT NULL,
  `subMerchantKey` varchar(500) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_magaza` enum('0','1','2') COLLATE utf8_turkish_ci NOT NULL DEFAULT '0',
  `kullanici_magazafoto` varchar(500) COLLATE utf8_turkish_ci NOT NULL DEFAULT 'dimg/magaza-fotoyok.png',
  `kullanici_zaman` datetime NOT NULL DEFAULT current_timestamp(),
  `kullanici_sonzaman` datetime NOT NULL,
  `kullanici_resim` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_tc` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_banka` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_iban` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `kullanici_ad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_soyad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_mail` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_gsm` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_password` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_adres` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_il` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_ilce` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_unvan` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_tip` enum('PERSONAL','PRIVATE_COMPANY','LIMITED_OR_JOINT_STOCK_COMPANY','') COLLATE utf8_turkish_ci DEFAULT 'PERSONAL',
  `kullanici_vdaire` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_vno` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_yetki` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_durum` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kullanici`
--

INSERT INTO `kullanici` (`kullanici_id`, `subMerchantKey`, `kullanici_magaza`, `kullanici_magazafoto`, `kullanici_zaman`, `kullanici_sonzaman`, `kullanici_resim`, `kullanici_tc`, `kullanici_banka`, `kullanici_iban`, `kullanici_ad`, `kullanici_soyad`, `kullanici_mail`, `kullanici_gsm`, `kullanici_password`, `kullanici_adres`, `kullanici_il`, `kullanici_ilce`, `kullanici_unvan`, `kullanici_tip`, `kullanici_vdaire`, `kullanici_vno`, `kullanici_yetki`, `kullanici_durum`) VALUES
(164, '', '2', 'dimg/userphoto/5fdbaf42bd5d8.jpg', '2020-12-05 22:02:28', '2021-03-19 07:02:50', '', '111111111111', 'Garanti', 'TR123456578456231', 'Aydın', 'Yağız', 'aydinyagiz02@gmail.com', '0850245333', 'e10adc3949ba59abbe56e057f20f883e', 'Tecde Mahallesi', 'Malatya ', 'Yeşilyurt', 'Yazılım', 'PRIVATE_COMPANY', 'Malatya', '123456', '1', 1),
(166, '', '2', 'dimg/userphoto/5fe3c676102cb.jpg', '2020-12-22 03:25:36', '0000-00-00 00:00:00', '', '111111111110', 'Garanti', 'TR324353', 'AYdın', 'Yağız', 'aydin@gmail.com', '0850245222211', 'e10adc3949ba59abbe56e057f20f883e', 'Güzelyalı', 'İstanbul', 'Pendik', '', 'PERSONAL', '', '', '1', 1),
(167, '', '0', 'dimg/userphoto/5fe3ce407753a.png', '2020-12-22 22:15:03', '2021-03-02 00:14:48', '', '', '', NULL, 'Mahmut', 'Yağız', 'mahmut@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', '', 'PERSONAL', '', '', '1', 1),
(169, '', '0', 'dimg/userphoto/5fe65bd5463d1.png', '2020-12-25 01:08:16', '2020-12-27 03:43:15', '', '', '', NULL, 'Alıcı', 'yağız', 'alıcı@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', '', 'PERSONAL', '', '', '1', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `menu_ust` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `menu_ad` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `menu_detay` text COLLATE utf8_turkish_ci NOT NULL,
  `menu_url` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `menu_sira` int(2) NOT NULL,
  `menu_durum` enum('0','1') COLLATE utf8_turkish_ci NOT NULL,
  `menu_seourl` varchar(250) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_ust`, `menu_ad`, `menu_detay`, `menu_url`, `menu_sira`, `menu_durum`, `menu_seourl`) VALUES
(2, '0', 'İletişim', '<p>Men&uuml; Detayı</p>\r\n', '', 6, '1', 'iletisim'),
(4, '0', 'Kategoriler', '<p>Men&uuml; Detayı</p>\r\n', 'kategoriler', 3, '1', 'kategoriler'),
(6, '', 'Gizlilik Koşullarımız', '<p>PEPSICO web sitesini ziyaret eden t&uuml;m katılımcılar bu gizlilik bildirgesini okuduklarını ve bildirgeye uyacaklarını kabul ve taahh&uuml;t ederler.<br />\r\n<br />\r\nPEPSICO sitesi ile katılımcılara muhtelif hizmetler verecektir. Anılan hizmetlerin ifası ile ilgili olarak PEPSICO&#39;ın manyetik ortamda, yazılı ve/veya s&ouml;zl&uuml; olarak Katılımcı&#39;ya iletmiş olduğu veya Katılımcı&#39;nın herhangi bir surette &ouml;ğrendiği PEPSICO&#39;a ait her t&uuml;rl&uuml; bilgi-belge gizli tutulacak olup, hi&ccedil;bir şekilde-surette &uuml;&ccedil;&uuml;nc&uuml; kişi-kuruluşlara a&ccedil;ıklanmayacak, aktarılmayacak, kullandırılmayacaktır.<br />\r\n<br />\r\nGizli Bilgi&#39;nin Tanımı ve Kapsamı<br />\r\n<br />\r\nPEPSICO şirket verileri, web sitesi yazılımı, &uuml;r&uuml;n bilgileri, m&uuml;şteri bilgileri, muhasebe verileri, ticari, mali, teknik ve sair konularda s&ouml;zl&uuml;, yazılı ve manyetik ortamda ve diğer herhangi bir surette Katılımcı&#39;ya iletilen ya da Katılımcı&#39;nın herhangi bir surette &ouml;ğrendiği PEPSICO&#39;a, PEPSICO m&uuml;şterilerine, PEPSICO &uuml;r&uuml;nlerine, PEPSICO personeline, PEPSICO imalat&ccedil;ı-tedarik&ccedil;ilerine, PEPSICO ile ticari /akdi /fiili ilişkide olan sair kişi-kuruluşlara ve PEPSICO bilgisayar-elektronik sistemlerine ait, gizliliği Katılımcı&#39;ya bildirilen veya bildirilmeyen her t&uuml;rl&uuml; bilgi-belge ve veri (data) dosyaları, keza PEPSICO&#39;nin i&ccedil;inde yer aldığı PEPSICO Grubu Şirketlerine ait olan aynı mahiyetteki bilgi-belgeler-datalar, raporlar, istatistikler, sorgulamalar ve sorgulama sonu&ccedil;ları, model, y&ouml;ntem, yenilik, buluş, metod ve usuller, velhasıl hert&uuml;rl&uuml; belge ve dok&uuml;mantasyon Gizli Bilgi&#39;dir.<br />\r\n<br />\r\nGizli Bilgiler &Uuml;zerinde M&uuml;lkiye Hakkı ve Tasarruf Yetkisi<br />\r\n<br />\r\nGizli Bilgiler PEPSICO&#39;nin m&uuml;lkiyetindedir ve s&uuml;resiz olarak m&uuml;lkiyetinde kalmaya devam eder. Gizli Bilgiler &uuml;zerinde her t&uuml;rl&uuml; tasarruf yetkisi PEPSICO&#39;a aittir.<br />\r\n<br />\r\nGizli Bilgilerin her t&uuml;rl&uuml; kopyası da PEPSICO&#39;in m&uuml;lkiyetindedir ve bunlar &uuml;zerindeki telif, m&uuml;lkiyet ve her t&uuml;rl&uuml; haklar ile tasarruf yetkisi m&uuml;nhasıran PEPSICO&#39;e aittir.<br />\r\n<br />\r\nKatılımcı&#39;nın Gizli Bilgilerden Sorumluluğu, Taahh&uuml;t ve Y&uuml;k&uuml;ml&uuml;l&uuml;kleri<br />\r\n<br />\r\nKatılımcı, gizlilik esaslarına uygun hareket edecek, Gizli Bilgileri hi&ccedil;bir şekilde kullanmayacak, a&ccedil;ıklamayacak, dağıtmayacak, &uuml;&ccedil;&uuml;nc&uuml; kişilere bedelli/bedelsiz aktarmayacak ve kullandırmayacaktır.<br />\r\n<br />\r\nPEPSICO&#39;in yazılı yada s&ouml;zl&uuml; izni olmadan Gizli Bilgilerin tamamı veya bir kısmı kesinlikle Katılımcı tarafından &ccedil;oğaltılmaz. Gizli Bilgiler hi&ccedil;bir şekilde-surette PEPSICO ortamı dışına &ccedil;ıkarılamaz.<br />\r\n<br />\r\nYaptırım - Cezai Şart<br />\r\n<br />\r\nKatılımcı tarafından gizlilik bildirimine aykırı davranılması halinde, PEPSICO bu sebepten doğmuş-doğacak her t&uuml;rl&uuml; ve b&uuml;t&uuml;n doğrudan-dolaylı maddi ve manevi, m&uuml;sbet ve menfi zarar, ziyan ve kayıplarını Katılımcı&#39;dan nakten ve defaten tazmin etmesini talep edebilir.</p>\r\n', '', 4, '1', 'gizlilik-kosullarimiz'),
(8, '', 'Mesafeli Satış Sözleşmesi', '<p>MESAFELİ S&Ouml;ZLEŞMELER Y&Ouml;NETMELİĞİ</p>\r\n\r\n<p>BİRİNCİ B&Ouml;L&Uuml;M</p>\r\n\r\n<p>Ama&ccedil;, Kapsam, Dayanak ve Tanımlar</p>\r\n\r\n<p>Ama&ccedil;</p>\r\n\r\n<p>MADDE 1 &ndash;&nbsp;(1) Bu Y&ouml;netmeliğin amacı, mesafeli s&ouml;zleşmelere ilişkin uygulama usul ve esaslarını d&uuml;zenlemektir.</p>\r\n\r\n<p>Kapsam</p>\r\n\r\n<p>MADDE 2 &ndash;&nbsp;(1) Bu Y&ouml;netmelik, mesafeli s&ouml;zleşmelere uygulanır.</p>\r\n\r\n<p>(2) Bu Y&ouml;netmelik h&uuml;k&uuml;mleri;</p>\r\n\r\n<p>a) Finansal hizmetler,</p>\r\n\r\n<p>b) Otomatik makineler aracılığıyla yapılan satışlar,</p>\r\n\r\n<p>c) Halka a&ccedil;ık telefon vasıtasıyla telekom&uuml;nikasyon operat&ouml;rleriyle bu telefonun kullanımı,</p>\r\n\r\n<p>&ccedil;) Bahis, &ccedil;ekiliş, piyango ve benzeri şans oyunlarına ilişkin hizmetler,</p>\r\n\r\n<p>d) Taşınmaz malların veya bu mallara ilişkin hakların oluşumu, devri veya kazanımı,</p>\r\n\r\n<p>e) Konut kiralama,</p>\r\n\r\n<p>f) Paket turlar,</p>\r\n\r\n<p>g) Devre m&uuml;lk, devre tatil, uzun s&uuml;reli tatil hizmeti ve bunların yeniden satımı veya değişimi,</p>\r\n\r\n<p>ğ) Yiyecek ve i&ccedil;ecekler gibi g&uuml;nl&uuml;k t&uuml;ketim maddelerinin, satıcının d&uuml;zenli teslimatları &ccedil;er&ccedil;evesinde t&uuml;keticinin meskenine veya işyerine g&ouml;t&uuml;r&uuml;lmesi,</p>\r\n\r\n<p>h) 5 inci maddenin birinci fıkrasının (a), (b) ve (d) bentlerindeki bilgi verme y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml; ile 18 inci ve 19 uncu maddelerde yer alan y&uuml;k&uuml;ml&uuml;l&uuml;kler saklı kalmak koşuluyla yolcu taşıma hizmetleri,</p>\r\n\r\n<p>ı) Malların montaj, bakım ve onarımı,</p>\r\n\r\n<p>i) Bakımevi hizmetleri, &ccedil;ocuk, yaşlı ya da hasta bakımı gibi ailelerin ve kişilerin desteklenmesine y&ouml;nelik sosyal hizmetler</p>\r\n\r\n<p>ile&nbsp;ilgili s&ouml;zleşmelere uygulanmaz.</p>\r\n\r\n<p>Dayanak</p>\r\n\r\n<p>MADDE 3 &ndash;&nbsp;(1) Bu Y&ouml;netmelik,&nbsp;7/11/2013&nbsp;tarihli ve 6502 sayılı T&uuml;keticinin Korunması Hakkında Kanunun 48 inci ve 84 &uuml;nc&uuml; maddelerine dayanılarak hazırlanmıştır.</p>\r\n\r\n<p>Tanımlar</p>\r\n\r\n<p>MADDE 4 &ndash;&nbsp;(1) Bu Y&ouml;netmeliğin uygulanmasında;</p>\r\n\r\n<p>a) Dijital i&ccedil;erik: Bilgisayar programı, uygulama, oyun, m&uuml;zik, video ve metin gibi dijital şekilde sunulan her t&uuml;rl&uuml; veriyi,</p>\r\n\r\n<p>b) Hizmet: Bir &uuml;cret veya menfaat karşılığında yapılan ya da yapılması taahh&uuml;t edilen mal sağlama dışındaki her t&uuml;rl&uuml; t&uuml;ketici işleminin konusunu,</p>\r\n\r\n<p>c) Kalıcı veri saklayıcısı: T&uuml;keticinin g&ouml;nderdiği veya kendisine g&ouml;nderilen bilgiyi, bu bilginin amacına uygun olarak makul bir s&uuml;re incelemesine elverecek şekilde kaydedilmesini ve değiştirilmeden kopyalanmasını sağlayan ve bu bilgiye aynen ulaşılmasına&nbsp;imkan&nbsp;veren kısa mesaj, elektronik posta, internet, disk, CD, DVD, hafıza kartı ve benzeri her t&uuml;rl&uuml; ara&ccedil; veya ortamı,</p>\r\n\r\n<p>&ccedil;) Kanun: 6502 sayılı T&uuml;keticinin Korunması Hakkında Kanunu,</p>\r\n\r\n<p>d) Mal: Alışverişe konu olan; taşınır eşya, konut veya tatil ama&ccedil;lı taşınmaz mallar ile elektronik ortamda kullanılmak &uuml;zere hazırlanan yazılım, ses, g&ouml;r&uuml;nt&uuml; ve benzeri her t&uuml;rl&uuml; gayri maddi malları,</p>\r\n\r\n<p>e) Mesafeli s&ouml;zleşme: Satıcı veya sağlayıcı ile t&uuml;keticinin eş zamanlı fiziksel varlığı olmaksızın, mal veya hizmetlerin uzaktan pazarlanmasına y&ouml;nelik olarak oluşturulmuş bir sistem &ccedil;er&ccedil;evesinde, taraflar arasında s&ouml;zleşmenin kurulduğu ana kadar ve kurulduğu an da&nbsp;dahil&nbsp;olmak &uuml;zere uzaktan iletişim ara&ccedil;larının kullanılması suretiyle kurulan s&ouml;zleşmeleri,</p>\r\n\r\n<p>f) Sağlayıcı: Kamu t&uuml;zel kişileri de&nbsp;dahil&nbsp;olmak &uuml;zere ticari veya mesleki ama&ccedil;larla t&uuml;keticiye hizmet sunan ya da hizmet sunanın adına ya da hesabına hareket eden ger&ccedil;ek veya t&uuml;zel kişiyi,</p>\r\n\r\n<p>g) Satıcı: Kamu t&uuml;zel kişileri de&nbsp;dahil&nbsp;olmak &uuml;zere ticari veya mesleki ama&ccedil;larla t&uuml;keticiye mal sunan ya da mal sunanın adına ya da hesabına hareket eden ger&ccedil;ek veya t&uuml;zel kişiyi,</p>\r\n\r\n<p>ğ) T&uuml;ketici: Ticari veya mesleki olmayan ama&ccedil;larla hareket eden ger&ccedil;ek veya t&uuml;zel kişiyi,</p>\r\n\r\n<p>h) Uzaktan iletişim aracı: Mektup, katalog, telefon, faks, radyo, televizyon, elektronik posta mesajı, kısa mesaj, internet gibi fiziksel olarak karşı karşıya gelinmeksizin s&ouml;zleşme kurulmasına&nbsp;imkan&nbsp;veren her t&uuml;rl&uuml; ara&ccedil; veya ortamı,</p>\r\n\r\n<p>ı) Yan s&ouml;zleşme: Bir mesafeli s&ouml;zleşme ile ilişkili olarak satıcı, sağlayıcı ya da &uuml;&ccedil;&uuml;nc&uuml; bir kişi tarafından s&ouml;zleşme konusu mal ya da hizmete ilave olarak t&uuml;keticiye sağlanan mal veya hizmete ilişkin s&ouml;zleşmeyi</p>\r\n\r\n<p>ifade&nbsp;eder.</p>\r\n\r\n<p>İKİNCİ B&Ouml;L&Uuml;M</p>\r\n\r\n<p>&Ouml;n Bilgilendirme Y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml;</p>\r\n\r\n<p>&Ouml;n bilgilendirme</p>\r\n\r\n<p>MADDE 5 &ndash;&nbsp;(1) T&uuml;ketici, mesafeli s&ouml;zleşmenin kurulmasından ya da buna karşılık gelen herhangi bir teklifi kabul etmeden &ouml;nce, aşağıdaki hususların tamamını i&ccedil;erecek şekilde satıcı veya sağlayıcı tarafından bilgilendirilmek zorundadır.</p>\r\n\r\n<p>a) S&ouml;zleşme konusu mal veya hizmetin temel nitelikleri,</p>\r\n\r\n<p>b) Satıcı veya sağlayıcının adı veya unvanı, varsa MERSİS numarası,</p>\r\n\r\n<p>c) T&uuml;keticinin satıcı veya sağlayıcı ile hızlı bir şekilde irtibat kurmasına&nbsp;imkan&nbsp;veren, satıcı veya sağlayıcının a&ccedil;ık adresi, telefon numarası ve benzeri iletişim bilgileri ile varsa satıcı veya sağlayıcının adına ya da hesabına hareket edenin kimliği ve adresi,</p>\r\n\r\n<p>&ccedil;) Satıcı veya sağlayıcının t&uuml;keticinin&nbsp;şikayetlerini&nbsp;iletmesi i&ccedil;in (c) bendinde belirtilenden farklı iletişim bilgileri var ise, bunlara ilişkin bilgi,</p>\r\n\r\n<p>d) Mal veya hizmetin t&uuml;m vergiler&nbsp;dahil&nbsp;toplam fiyatı, niteliği itibariyle &ouml;nceden hesaplanamıyorsa fiyatın hesaplanma usul&uuml;, varsa t&uuml;m nakliye, teslim ve benzeri ek masraflar ile bunların &ouml;nceden hesaplanamaması halinde ek masrafların &ouml;denebileceği bilgisi,</p>\r\n\r\n<p>e) S&ouml;zleşmenin kurulması aşamasında uzaktan iletişim aracının kullanım bedelinin olağan &uuml;cret tarifesi &uuml;zerinden hesaplanamadığı durumlarda, t&uuml;keticilere y&uuml;klenen ilave maliyet,</p>\r\n\r\n<p>f) &Ouml;deme, teslimat, ifaya ilişkin bilgiler ile varsa bunlara ilişkin taahh&uuml;tler ve satıcı veya sağlayıcının&nbsp;şikayetlere&nbsp;ilişkin &ccedil;&ouml;z&uuml;m y&ouml;ntemleri,</p>\r\n\r\n<p>g) Cayma hakkının olduğu durumlarda, bu hakkın kullanılma şartları, s&uuml;resi, usul&uuml; ve satıcının iade i&ccedil;in &ouml;ng&ouml;rd&uuml;ğ&uuml; taşıyıcıya ilişkin bilgiler,</p>\r\n\r\n<p>ğ) Cayma bildiriminin yapılacağı a&ccedil;ık adres, faks numarası veya elektronik posta bilgileri,</p>\r\n\r\n<p>h) 15 inci madde uyarınca cayma hakkının kullanılamadığı durumlarda, t&uuml;keticinin cayma hakkından faydalanamayacağına ya da hangi koşullarda cayma hakkını kaybedeceğine ilişkin bilgi,</p>\r\n\r\n<p>ı) Satıcı veya sağlayıcının talebi &uuml;zerine, varsa t&uuml;ketici tarafından &ouml;denmesi veya sağlanması gereken depozitolar ya da diğer mali teminatlar ve bunlara ilişkin şartlar,</p>\r\n\r\n<p>i) Varsa dijital i&ccedil;eriklerin işlevselliğini etkileyebilecek teknik koruma &ouml;nlemleri,</p>\r\n\r\n<p>j) Satıcı veya sağlayıcının bildiği ya da makul olarak bilmesinin beklendiği, dijital i&ccedil;eriğin hangi donanım ya da yazılımla birlikte &ccedil;alışabileceğine ilişkin bilgi,</p>\r\n\r\n<p>k) T&uuml;keticilerin uyuşmazlık konusundaki başvurularını T&uuml;ketici Mahkemesine veya T&uuml;ketici Hakem Heyetine yapabileceklerine dair bilgi.</p>\r\n\r\n<p>(2) Birinci fıkrada belirtilen bilgiler, mesafeli s&ouml;zleşmenin ayrılmaz bir par&ccedil;asıdır ve taraflar aksini a&ccedil;ık&ccedil;a kararlaştırmadık&ccedil;a bu bilgiler değiştirilemez.</p>\r\n\r\n<p>(3) Satıcı veya sağlayıcı, birinci fıkranın (d) bendinde yer alan ek masraflara ilişkin bilgilendirme y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml;n&uuml; yerine getirmezse, t&uuml;ketici bunları karşılamakla y&uuml;k&uuml;ml&uuml; değildir.</p>\r\n\r\n<p>(4) Birinci fıkranın (d) bendinde yer alan toplam fiyatın, belirsiz s&uuml;reli s&ouml;zleşmelerde veya belirli s&uuml;reli abonelik s&ouml;zleşmelerinde, her faturalama d&ouml;nemi bazında toplam masrafları i&ccedil;ermesi zorunludur.</p>\r\n\r\n<p>(5) A&ccedil;ık artırma veya eksiltme yoluyla kurulan s&ouml;zleşmelerde, birinci fıkranın (b), (c) ve (&ccedil;) bentlerinde yer alan bilgilerin yerine a&ccedil;ık artırmayı yapan ile ilgili bilgilere yer verilebilir.</p>\r\n\r\n<p>(6) &Ouml;n bilgilendirme yapıldığına ilişkin ispat y&uuml;k&uuml; satıcı veya sağlayıcıya aittir.</p>\r\n\r\n<p>&Ouml;n bilgilendirme y&ouml;ntemi</p>\r\n\r\n<p>MADDE 6 &ndash;&nbsp;(1) T&uuml;ketici, 5 inci maddenin birinci fıkrasında belirtilen t&uuml;m hususlarda, kullanılan uzaktan iletişim aracına uygun olarak en az on iki punto b&uuml;y&uuml;kl&uuml;ğ&uuml;nde, anlaşılabilir bir dilde, a&ccedil;ık, sade ve okunabilir bir şekilde satıcı veya sağlayıcı tarafından yazılı olarak veya kalıcı veri saklayıcısı ile bilgilendirilmek zorundadır.</p>\r\n\r\n<p>(2) Mesafeli s&ouml;zleşmenin internet yoluyla kurulması halinde, satıcı veya sağlayıcı;</p>\r\n\r\n<p>a) 5 inci maddenin birinci fıkrasında yer alan bilgilendirme y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml; saklı kalmak kaydıyla, aynı fıkranın (a), (d), (g) ve (h) bentlerinde yer alan bilgileri bir b&uuml;t&uuml;n olarak, t&uuml;keticinin &ouml;deme y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml; altına girmesinden hemen &ouml;nce a&ccedil;ık bir şekilde ayrıca g&ouml;stermek,</p>\r\n\r\n<p>b) Herhangi bir g&ouml;nderim kısıtlamasının uygulanıp uygulanmadığını ve hangi &ouml;deme ara&ccedil;larının kabul edildiğini, en ge&ccedil; t&uuml;ketici siparişini vermeden &ouml;nce, a&ccedil;ık ve anlaşılabilir bir şekilde belirtmek</p>\r\n\r\n<p>zorundadır.</p>\r\n\r\n<p>(3) Mesafeli s&ouml;zleşmenin sesli iletişim yoluyla kurulması halinde, satıcı veya sağlayıcı 5 inci maddenin birinci fıkrasının (a), (d), (g) ve (h) bentlerinde yer alan hususlarda, t&uuml;keticiyi sipariş vermeden hemen &ouml;nce a&ccedil;ık ve anlaşılır bir şekilde s&ouml;z konusu ortamda bilgilendirmek ve 5 inci maddenin birinci fıkrasında yer alan bilgilerin tamamını en ge&ccedil; mal teslimine veya hizmet ifasına kadar yazılı olarak g&ouml;ndermek zorundadır.</p>\r\n\r\n<p>(4) Siparişe ilişkin bilgilerin sınırlı alanda ya da zamanda sunulduğu bir ortam yoluyla mesafeli s&ouml;zleşmenin kurulması halinde, satıcı veya sağlayıcı 5 inci maddenin birinci fıkrasının (a), (b), (d), (g) ve (h) bentlerinde yer alan hususlarda, t&uuml;keticiyi sipariş vermeden hemen &ouml;nce a&ccedil;ık ve anlaşılabilir bir şekilde s&ouml;z konusu ortamda bilgilendirmek ve 5 inci maddenin birinci fıkrasında yer alan bilgilerin tamamını en ge&ccedil; mal teslimine veya hizmet ifasına kadar yazılı olarak g&ouml;ndermek zorundadır.</p>\r\n\r\n<p>(5) &Uuml;&ccedil;&uuml;nc&uuml; ve d&ouml;rd&uuml;nc&uuml; fıkralarda belirtilen y&ouml;ntemlerle kurulan ve anında ifa edilen hizmet satışlarına ilişkin s&ouml;zleşmelerde t&uuml;keticinin, sipariş vermeden hemen &ouml;nce s&ouml;z konusu ortamda 5 inci maddenin birinci fıkrasının sadece (a), (b), (d) ve (h) bentlerinde yer alan hususlarda a&ccedil;ık ve anlaşılır bir şekilde bilgilendirilmesi yeterlidir.</p>\r\n\r\n<p>&Ouml;n bilgilerin teyidi</p>\r\n\r\n<p>MADDE 7 &ndash;&nbsp;(1) Satıcı veya sağlayıcı, t&uuml;keticinin 6&nbsp;ncı&nbsp;maddede belirtilen y&ouml;ntemlerle &ouml;n bilgileri edindiğini kullanılan uzaktan iletişim aracına uygun olarak teyit etmesini sağlamak zorundadır. Aksi halde s&ouml;zleşme kurulmamış sayılır.</p>\r\n\r\n<p>&Ouml;n bilgilendirmeye ilişkin diğer y&uuml;k&uuml;ml&uuml;l&uuml;kler</p>\r\n\r\n<p>MADDE 8 &ndash;&nbsp;(1) Satıcı veya sağlayıcı, t&uuml;ketici siparişi onaylamadan hemen &ouml;nce, verilen siparişin &ouml;deme y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml; anlamına geldiği hususunda t&uuml;keticiyi a&ccedil;ık ve anlaşılır bir şekilde bilgilendirmek zorundadır. Aksi halde t&uuml;ketici siparişi ile bağlı değildir.</p>\r\n\r\n<p>(2) T&uuml;keticinin mesafeli s&ouml;zleşme kurulması amacıyla satıcı veya sağlayıcı tarafından telefonla aranması durumunda, her g&ouml;r&uuml;şmenin başında satıcı veya sağlayıcı kimliğini, eğer bir başkası adına veya hesabına arıyorsa bu kişinin kimliğini ve g&ouml;r&uuml;şmenin ticari amacını a&ccedil;ıklamalıdır.</p>\r\n\r\n<p>&Uuml;&Ccedil;&Uuml;NC&Uuml; B&Ouml;L&Uuml;M</p>\r\n\r\n<p>Cayma Hakkının Kullanımı ve Tarafların Y&uuml;k&uuml;ml&uuml;l&uuml;kleri</p>\r\n\r\n<p>Cayma hakkı</p>\r\n\r\n<p>MADDE 9 &ndash;&nbsp;(1) T&uuml;ketici, on d&ouml;rt g&uuml;n i&ccedil;inde herhangi bir gerek&ccedil;e g&ouml;stermeksizin ve cezai şart &ouml;demeksizin s&ouml;zleşmeden cayma hakkına sahiptir.</p>\r\n\r\n<p>(2) Cayma hakkı s&uuml;resi, hizmet ifasına ilişkin s&ouml;zleşmelerde s&ouml;zleşmenin kurulduğu g&uuml;n; mal teslimine ilişkin s&ouml;zleşmelerde ise t&uuml;keticinin veya t&uuml;ketici tarafından belirlenen &uuml;&ccedil;&uuml;nc&uuml; kişinin malı teslim aldığı g&uuml;n başlar. Ancak t&uuml;ketici, s&ouml;zleşmenin kurulmasından malın teslimine kadar olan s&uuml;re i&ccedil;inde de cayma hakkını kullanabilir.</p>\r\n\r\n<p>(3) Cayma hakkı s&uuml;resinin belirlenmesinde;</p>\r\n\r\n<p>a) Tek sipariş konusu olup ayrı&nbsp;ayrı&nbsp;teslim edilen mallarda, t&uuml;keticinin veya t&uuml;ketici tarafından belirlenen &uuml;&ccedil;&uuml;nc&uuml; kişinin son malı teslim aldığı g&uuml;n,</p>\r\n\r\n<p>b) Birden fazla par&ccedil;adan oluşan mallarda, t&uuml;keticinin veya t&uuml;ketici tarafından belirlenen &uuml;&ccedil;&uuml;nc&uuml; kişinin son par&ccedil;ayı teslim aldığı g&uuml;n,</p>\r\n\r\n<p>c) Belirli bir s&uuml;re boyunca malın d&uuml;zenli tesliminin yapıldığı s&ouml;zleşmelerde, t&uuml;keticinin veya t&uuml;ketici tarafından belirlenen &uuml;&ccedil;&uuml;nc&uuml; kişinin ilk malı teslim aldığı g&uuml;n</p>\r\n\r\n<p>esas&nbsp;alınır.</p>\r\n\r\n<p>(4) Malın satıcı tarafından taşıyıcıya teslimi, t&uuml;keticiye yapılan teslim olarak kabul edilmez.</p>\r\n\r\n<p>(5) Mal teslimi ile hizmet ifasının birlikte yapıldığı s&ouml;zleşmelerde, mal teslimine ilişkin cayma hakkı h&uuml;k&uuml;mleri uygulanır.</p>\r\n\r\n<p>Eksik bilgilendirme</p>\r\n\r\n<p>MADDE 10 &ndash;&nbsp;(1) Satıcı veya sağlayıcı, cayma hakkı konusunda t&uuml;keticinin bilgilendirildiğini ispat etmekle y&uuml;k&uuml;ml&uuml;d&uuml;r. T&uuml;ketici, cayma hakkı konusunda gerektiği şekilde bilgilendirilmezse, cayma hakkını kullanmak i&ccedil;in on d&ouml;rt g&uuml;nl&uuml;k s&uuml;reyle bağlı değildir. Bu s&uuml;re her hal&uuml;karda cayma s&uuml;resinin bittiği tarihten itibaren bir yıl sonra sona erer.</p>\r\n\r\n<p>(2) Cayma hakkı konusunda gerektiği şekilde bilgilendirmenin bir yıllık s&uuml;re i&ccedil;inde yapılması halinde, on d&ouml;rt g&uuml;nl&uuml;k cayma hakkı s&uuml;resi, bu bilgilendirmenin gereği gibi yapıldığı g&uuml;nden itibaren işlemeye başlar.</p>\r\n\r\n<p>Cayma hakkının kullanımı</p>\r\n\r\n<p>MADDE 11 &ndash;&nbsp;(1) Cayma hakkının kullanıldığına dair bildirimin cayma hakkı s&uuml;resi dolmadan, yazılı olarak veya kalıcı veri saklayıcısı ile satıcı veya sağlayıcıya y&ouml;neltilmesi yeterlidir.</p>\r\n\r\n<p>(2) Cayma hakkının kullanılmasında t&uuml;ketici,&nbsp;EK&rsquo;te&nbsp;yer alan formu kullanabileceği gibi cayma kararını bildiren a&ccedil;ık bir beyanda da bulunabilir. Satıcı veya sağlayıcı, t&uuml;keticinin bu formu doldurabilmesi veya cayma beyanını g&ouml;nderebilmesi i&ccedil;in internet sitesi &uuml;zerinden se&ccedil;enek de sunabilir.&nbsp;&nbsp;İnternet sitesi &uuml;zerinden t&uuml;keticilere cayma hakkı sunulması durumunda satıcı veya sağlayıcı, t&uuml;keticilerin iletmiş olduğu cayma taleplerinin kendilerine ulaştığına ilişkin teyit bilgisini t&uuml;keticiye derhal iletmek zorundadır.</p>\r\n\r\n<p>(3) Sesli iletişim yoluyla yapılan satışlarda, satıcı veya sağlayıcı,&nbsp;EK&rsquo;te&nbsp;yer alan formu en ge&ccedil; mal teslimine veya hizmet ifasına kadar t&uuml;keticiye g&ouml;ndermek zorundadır. T&uuml;ketici bu t&uuml;r satışlarda da cayma hakkını kullanmak i&ccedil;in bu formu kullanabileceği gibi, ikinci fıkradaki y&ouml;ntemleri de kullanabilir.</p>\r\n\r\n<p>(4) Bu maddede ge&ccedil;en cayma hakkının kullanımına ilişkin ispat y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml; t&uuml;keticiye aittir.</p>\r\n\r\n<p>Satıcı veya sağlayıcının y&uuml;k&uuml;ml&uuml;l&uuml;kleri</p>\r\n\r\n<p>MADDE 12 &ndash;&nbsp;(1) Satıcı veya sağlayıcı, t&uuml;keticinin cayma hakkını kullandığına ilişkin bildirimin kendisine ulaştığı tarihten itibaren on d&ouml;rt g&uuml;n i&ccedil;inde, varsa malın t&uuml;keticiye teslim masrafları da&nbsp;dahil&nbsp;olmak &uuml;zere tahsil edilen t&uuml;m &ouml;demeleri iade etmekle y&uuml;k&uuml;ml&uuml;d&uuml;r.</p>\r\n\r\n<p>(2) Satıcı veya sağlayıcı, birinci fıkrada belirtilen t&uuml;m geri &ouml;demeleri, t&uuml;keticinin satın alırken kullandığı &ouml;deme aracına uygun bir şekilde ve t&uuml;keticiye herhangi bir masraf veya y&uuml;k&uuml;ml&uuml;l&uuml;k getirmeden tek seferde yapmak zorundadır.</p>\r\n\r\n<p>(3) Cayma hakkının kullanımında, 5 inci maddenin birinci fıkrasının (g) bendi kapsamında, satıcının iade i&ccedil;in belirttiği taşıyıcı aracılığıyla malın geri g&ouml;nderilmesi halinde, t&uuml;ketici iadeye ilişkin masraflardan sorumlu tutulamaz. Satıcının &ouml;n bilgilendirmede iade i&ccedil;in herhangi bir taşıyıcıyı belirtmediği durumda ise, t&uuml;keticiden iade masrafına ilişkin herhangi bir bedel talep edilemez. İade i&ccedil;in &ouml;n bilgilendirmede belirtilen taşıyıcının, t&uuml;keticinin bulunduğu yerde şubesinin olmaması durumunda satıcı, ilave hi&ccedil;bir masraf talep etmeksizin iade edilmek istenen malın t&uuml;keticiden alınmasını sağlamakla y&uuml;k&uuml;ml&uuml;d&uuml;r.</p>\r\n\r\n<p>T&uuml;keticinin y&uuml;k&uuml;ml&uuml;l&uuml;kleri</p>\r\n\r\n<p>MADDE 13 &ndash;&nbsp;(1) Satıcı veya sağlayıcı malı kendisinin geri alacağına dair bir teklifte bulunmadık&ccedil;a, t&uuml;ketici cayma hakkını kullandığına ilişkin bildirimi y&ouml;nelttiği tarihten itibaren on g&uuml;n i&ccedil;inde malı satıcı veya sağlayıcıya ya da yetkilendirmiş olduğu kişiye geri g&ouml;ndermek zorundadır.</p>\r\n\r\n<p>(2) T&uuml;ketici, cayma s&uuml;resi i&ccedil;inde malı, işleyişine, teknik &ouml;zelliklerine ve kullanım talimatlarına uygun bir şekilde kullandığı takdirde meydana gelen değişiklik ve bozulmalardan sorumlu değildir.</p>\r\n\r\n<p>Cayma hakkının kullanımının yan s&ouml;zleşmelere etkisi</p>\r\n\r\n<p>MADDE 14 &ndash;&nbsp;(1) Kanunun 30 uncu maddesi h&uuml;k&uuml;mleri saklı kalmak koşuluyla, t&uuml;keticinin cayma hakkını kullanması durumunda yan s&ouml;zleşmeler de kendiliğinden sona erer. Bu durumda t&uuml;ketici, 13 &uuml;nc&uuml; maddenin ikinci fıkrasında belirtilen haller dışında herhangi bir masraf, tazminat veya cezai şart &ouml;demekle y&uuml;k&uuml;ml&uuml; değildir.</p>\r\n\r\n<p>(2) Satıcı veya sağlayıcı, t&uuml;keticinin cayma hakkını kullandığını yan s&ouml;zleşmenin tarafı olan &uuml;&ccedil;&uuml;nc&uuml; kişiye derhal bildirmelidir.</p>\r\n\r\n<p>Cayma hakkının istisnaları</p>\r\n\r\n<p>MADDE 15 &ndash;&nbsp;(1) Taraflarca aksi kararlaştırılmadık&ccedil;a, t&uuml;ketici aşağıdaki s&ouml;zleşmelerde cayma hakkını kullanamaz:</p>\r\n\r\n<p>a) Fiyatı finansal piyasalardaki dalgalanmalara bağlı olarak değişen ve satıcı veya sağlayıcının kontrol&uuml;nde olmayan mal veya hizmetlere ilişkin s&ouml;zleşmeler.</p>\r\n\r\n<p>b) T&uuml;keticinin istekleri veya kişisel ihtiya&ccedil;ları doğrultusunda hazırlanan mallara ilişkin s&ouml;zleşmeler.</p>\r\n\r\n<p>c) &Ccedil;abuk bozulabilen veya son kullanma tarihi ge&ccedil;ebilecek malların teslimine ilişkin s&ouml;zleşmeler.</p>\r\n\r\n<p>&ccedil;) Tesliminden sonra ambalaj, bant, m&uuml;h&uuml;r, paket gibi koruyucu unsurları a&ccedil;ılmış olan mallardan; iadesi sağlık ve&nbsp;hijyen&nbsp;a&ccedil;ısından uygun olmayanların teslimine ilişkin s&ouml;zleşmeler.</p>\r\n\r\n<p>d) Tesliminden sonra başka &uuml;r&uuml;nlerle karışan ve doğası gereği ayrıştırılması m&uuml;mk&uuml;n olmayan mallara ilişkin s&ouml;zleşmeler.</p>\r\n\r\n<p>e) Malın tesliminden sonra ambalaj, bant, m&uuml;h&uuml;r, paket gibi koruyucu unsurları a&ccedil;ılmış olması halinde maddi ortamda sunulan kitap, dijital i&ccedil;erik ve bilgisayar sarf malzemelerine ilişkin s&ouml;zleşmeler.</p>\r\n\r\n<p>f) Abonelik s&ouml;zleşmesi kapsamında sağlananlar dışında, gazete ve dergi gibi s&uuml;reli yayınların teslimine ilişkin s&ouml;zleşmeler.</p>\r\n\r\n<p>g) Belirli bir tarihte veya d&ouml;nemde yapılması gereken, konaklama, eşya taşıma, araba kiralama, yiyecek-i&ccedil;ecek tedariki ve eğlence veya dinlenme amacıyla yapılan boş zamanın değerlendirilmesine ilişkin s&ouml;zleşmeler.</p>\r\n\r\n<p>ğ) Elektronik ortamda anında ifa edilen hizmetler veya t&uuml;keticiye anında teslim edilen&nbsp;gayrimaddi&nbsp;mallara ilişkin s&ouml;zleşmeler.</p>\r\n\r\n<p>h) Cayma hakkı s&uuml;resi sona ermeden &ouml;nce, t&uuml;keticinin onayı ile ifasına başlanan hizmetlere ilişkin s&ouml;zleşmeler.</p>\r\n\r\n<p>D&Ouml;RD&Uuml;NC&Uuml; B&Ouml;L&Uuml;M</p>\r\n\r\n<p>Diğer H&uuml;k&uuml;mler</p>\r\n\r\n<p>S&ouml;zleşmenin ifası ve teslimat</p>\r\n\r\n<p>MADDE 16 &ndash;&nbsp;(1) Satıcı veya sağlayıcı, t&uuml;keticinin siparişinin kendisine ulaştığı tarihten itibaren taahh&uuml;t ettiği s&uuml;re i&ccedil;inde edimini yerine getirmek zorundadır. Mal satışlarında bu s&uuml;re her hal&uuml;karda otuz g&uuml;n&uuml; ge&ccedil;emez.</p>\r\n\r\n<p>(2) Satıcı veya sağlayıcının birinci fıkrada yer alan y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml;n&uuml; yerine getirmemesi durumunda, t&uuml;ketici s&ouml;zleşmeyi feshedebilir.</p>\r\n\r\n<p>(3) S&ouml;zleşmenin feshi durumunda, satıcı veya sağlayıcı, varsa teslimat masrafları da d&acirc;hil olmak &uuml;zere tahsil edilen t&uuml;m &ouml;demeleri fesih bildiriminin kendisine ulaştığı tarihten itibaren on d&ouml;rt g&uuml;n i&ccedil;inde t&uuml;keticiye&nbsp;4/12/1984&nbsp;tarihli ve 3095 sayılı Kanuni Faiz ve Temerr&uuml;t Faizine İlişkin Kanunun 1 inci maddesine g&ouml;re belirlenen kanuni faiziyle birlikte geri &ouml;demek ve varsa t&uuml;keticiyi bor&ccedil; altına sokan t&uuml;m kıymetli evrak ve benzeri belgeleri iade etmek zorundadır.</p>\r\n\r\n<p>(4) Sipariş konusu mal ya da hizmet ediminin yerine getirilmesinin&nbsp;imkansızlaştığı&nbsp;hallerde satıcı veya sağlayıcının bu durumu &ouml;ğrendiği tarihten itibaren &uuml;&ccedil; g&uuml;n i&ccedil;inde t&uuml;keticiye yazılı olarak veya kalıcı veri saklayıcısı ile bildirmesi ve varsa teslimat masrafları da d&acirc;hil olmak &uuml;zere tahsil edilen t&uuml;m &ouml;demeleri bildirim tarihinden itibaren en ge&ccedil; on d&ouml;rt g&uuml;n i&ccedil;inde iade etmesi zorunludur. Malın stokta bulunmaması durumu, mal ediminin yerine getirilmesinin imk&acirc;nsızlaşması olarak kabul edilmez.</p>\r\n\r\n<p>Zarardan sorumluluk</p>\r\n\r\n<p>MADDE 17 &ndash;&nbsp;(1) Satıcı, malın t&uuml;ketici ya da t&uuml;keticinin taşıyıcı dışında belirleyeceği &uuml;&ccedil;&uuml;nc&uuml; bir kişiye teslimine kadar oluşan kayıp ve hasarlardan sorumludur.</p>\r\n\r\n<p>(2) T&uuml;keticinin, satıcının belirlediği taşıyıcı dışında başka bir taşıyıcı ile malın g&ouml;nderilmesini talep etmesi durumunda, malın ilgili taşıyıcıya tesliminden itibaren oluşabilecek kayıp ya da hasardan satıcı sorumlu değildir.</p>\r\n\r\n<p>Telefon kullanım &uuml;creti</p>\r\n\r\n<p>MADDE 18 &ndash;&nbsp;(1) Kurulmuş olan s&ouml;zleşmeye ilişkin olarak t&uuml;keticilerin iletişime ge&ccedil;ebilmesi i&ccedil;in satıcı veya sağlayıcı tarafından bir telefon hattı tahsis edilmesi durumunda, bu hat ile ilgili olarak satıcı veya sağlayıcı olağan &uuml;cret tarifesinden daha y&uuml;ksek bir tarife se&ccedil;emez.</p>\r\n\r\n<p>İlave &ouml;demeler</p>\r\n\r\n<p>MADDE 19 &ndash;&nbsp;(1) S&ouml;zleşme kurulmadan &ouml;nce, s&ouml;zleşme y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml;nden kaynaklanan ve &uuml;zerinde anlaşılmış esas bedel dışında herhangi bir ilave bedel talep edilebilmesi i&ccedil;in t&uuml;keticinin a&ccedil;ık onayının ayrıca alınması zorunludur.</p>\r\n\r\n<p>(2) T&uuml;keticinin a&ccedil;ık onayı alınmadan ilave &ouml;deme y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml; doğuran se&ccedil;eneklerin kendiliğinden se&ccedil;ili olarak sunulmuş olmasından dolayı t&uuml;ketici bir &ouml;demede bulunmuş ise, satıcı veya sağlayıcı bu &ouml;demelerin iadesini derhal yapmak zorundadır.</p>\r\n\r\n<p>Bilgilerin saklanması ve ispat y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml;</p>\r\n\r\n<p>MADDE 20 &minus;&nbsp;(1) Satıcı veya sağlayıcı, bu Y&ouml;netmelik kapsamında d&uuml;zenlenen cayma hakkı, bilgilendirme, teslimat ve diğer hususlardaki y&uuml;k&uuml;ml&uuml;l&uuml;klerine dair her bir işleme ilişkin bilgi ve belgeyi &uuml;&ccedil; yıl boyunca saklamak zorundadır.</p>\r\n\r\n<p>(2) Oluşturdukları sistem &ccedil;er&ccedil;evesinde, uzaktan iletişim ara&ccedil;larını kullanmak veya kullandırmak suretiyle satıcı veya sağlayıcı adına mesafeli s&ouml;zleşme kurulmasına aracılık edenler, bu Y&ouml;netmelikte yer alan hususlardan dolayı satıcı veya sağlayıcı ile yapılan işlemlere ilişkin kayıtları &uuml;&ccedil; yıl boyunca tutmak ve istenilmesi halinde bu bilgileri ilgili kurum, kuruluş ve t&uuml;keticilere vermekle y&uuml;k&uuml;ml&uuml;d&uuml;r.</p>\r\n\r\n<p>(3) Satıcı veya sağlayıcı elektronik ortamda t&uuml;keticiye teslim edilen&nbsp;gayrimaddi&nbsp;malların veya ifa edilen hizmetlerin ayıpsız olduğunu ispatla y&uuml;k&uuml;ml&uuml;d&uuml;r.</p>\r\n\r\n<p>BEŞİNCİ B&Ouml;L&Uuml;M</p>\r\n\r\n<p>&Ccedil;eşitli ve Son H&uuml;k&uuml;mler</p>\r\n\r\n<p>Y&uuml;r&uuml;rl&uuml;kten kaldırılan y&ouml;netmelik</p>\r\n\r\n<p>MADDE 21 &ndash;&nbsp;(1)&nbsp;6/3/2011&nbsp;tarihli ve 27866 sayılı Resm&icirc; Gazete&rsquo;de yayımlanan Mesafeli S&ouml;zleşmelere Dair Y&ouml;netmelik y&uuml;r&uuml;rl&uuml;kten kaldırılmıştır.</p>\r\n\r\n<p>Y&uuml;r&uuml;rl&uuml;k</p>\r\n\r\n<p>MADDE 22 &ndash;&nbsp;(1) Bu Y&ouml;netmelik yayımı tarihinden itibaren &uuml;&ccedil; ay sonra y&uuml;r&uuml;rl&uuml;ğe girer.</p>\r\n\r\n<p>Y&uuml;r&uuml;tme</p>\r\n\r\n<p>MADDE 23 &ndash;&nbsp;(1) Bu Y&ouml;netmelik h&uuml;k&uuml;mlerini G&uuml;mr&uuml;k ve Ticaret Bakanı y&uuml;r&uuml;t&uuml;r.</p>\r\n\r\n<p>EK</p>\r\n\r\n<p>&Ouml;RNEK CAYMA FORMU</p>\r\n\r\n<p>(Bu form, sadece s&ouml;zleşmeden cayma hakkı kullanılmak istenildiğinde doldurup</p>\r\n\r\n<p>g&ouml;nderilecektir.)</p>\r\n\r\n<p>-Kime:&nbsp;(Satıcı veya sağlayıcı tarafından doldurulacak olan bu kısımda satıcı veya sağlayıcının ismi, unvanı, adresi varsa faks numarası ve e-posta adresi yer alacaktır.)</p>\r\n\r\n<p>-Bu formla aşağıdaki malların satışına veya hizmetlerin sunulmasına ilişkin s&ouml;zleşmeden cayma hakkımı kullandığımı beyan ederim.</p>\r\n\r\n<p>-Sipariş tarihi veya teslim tarihi:</p>\r\n\r\n<p>-Cayma hakkına konu mal veya hizmet:</p>\r\n\r\n<p>-Cayma hakkına konu mal veya hizmetin bedeli:</p>\r\n\r\n<p>-T&uuml;keticinin adı ve soyadı:</p>\r\n\r\n<p>-T&uuml;keticinin adresi:</p>\r\n\r\n<p>-T&uuml;keticinin imzası:&nbsp;(Sadece&nbsp;kağıt&nbsp;&uuml;zerinde g&ouml;nderilmesi halinde)</p>\r\n\r\n<p>-Tarih:</p>\r\n', '', 5, '1', 'mesafeli-satis-sozlesmesi'),
(10, '', 'Hakkımızda', '', 'hakkimizda', 1, '1', 'hakkimizda');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mesaj`
--

CREATE TABLE `mesaj` (
  `mesaj_id` int(11) NOT NULL,
  `mesaj_zaman` timestamp NOT NULL DEFAULT current_timestamp(),
  `mesaj_detay` text COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_gel` int(11) NOT NULL,
  `kullanici_gon` int(11) NOT NULL,
  `mesaj_okunma` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `mesaj`
--

INSERT INTO `mesaj` (`mesaj_id`, `mesaj_zaman`, `mesaj_detay`, `kullanici_gel`, `kullanici_gon`, `mesaj_okunma`) VALUES
(16, '2020-12-24 23:20:44', '<p>alıcıdan satıcıya mesaj</p>\r\n', 164, 168, '1'),
(17, '2020-12-24 23:21:35', '<p>satıcıdan alıcıya cevap</p>\r\n', 168, 164, '1'),
(21, '2020-12-25 21:23:33', '<p>mesaj 2</p>\r\n', 164, 169, '1'),
(23, '2020-12-25 21:30:57', '<p>satıcıdan alıcıya 1</p>\r\n', 168, 164, '0'),
(24, '2020-12-25 21:31:35', '<p>ffsefe</p>\r\n', 169, 164, '1'),
(25, '2020-12-25 21:37:20', '<p>sasafsd</p>\r\n', 164, 169, '1'),
(26, '2020-12-25 21:46:08', '<p>asdasdasd</p>\r\n', 164, 169, '1'),
(27, '2020-12-25 21:50:28', '<p>safsdf</p>\r\n', 164, 169, '1'),
(28, '2020-12-27 00:41:04', '<p>&uuml;r&uuml;n g&uuml;zel</p>\r\n', 164, 169, '1'),
(29, '2020-12-27 00:41:28', '<p>sadasd</p>\r\n', 169, 164, '1'),
(30, '2020-12-27 00:43:15', '<p>mutlu</p>\r\n', 164, 169, '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sepet`
--

CREATE TABLE `sepet` (
  `sepet_id` int(11) NOT NULL,
  `kullanici_id` int(11) NOT NULL,
  `urun_id` int(11) NOT NULL,
  `urun_adet` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `sepet`
--

INSERT INTO `sepet` (`sepet_id`, `kullanici_id`, `urun_id`, `urun_adet`) VALUES
(1, 6, 4, 1),
(2, 6, 4, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `siparis`
--

CREATE TABLE `siparis` (
  `siparis_id` int(11) NOT NULL,
  `siparis_zaman` timestamp NOT NULL DEFAULT current_timestamp(),
  `kullanici_id` int(11) NOT NULL,
  `kullanici_idsatici` int(11) NOT NULL,
  `siparis_odeme` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `siparis`
--

INSERT INTO `siparis` (`siparis_id`, `siparis_zaman`, `kullanici_id`, `kullanici_idsatici`, `siparis_odeme`) VALUES
(750042, '2020-12-23 20:13:45', 167, 164, '1'),
(750043, '2020-12-23 23:26:27', 167, 164, '1'),
(750044, '2020-12-26 19:37:02', 169, 164, '1'),
(750045, '2020-12-27 00:41:47', 169, 164, '1'),
(750046, '2021-03-01 20:54:58', 168, 164, '1'),
(750047, '2021-03-01 21:03:49', 164, 168, '1'),
(750048, '2021-03-08 01:37:51', 168, 164, '1'),
(750049, '2021-03-19 04:02:17', 164, 168, '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `siparis_detay`
--

CREATE TABLE `siparis_detay` (
  `siparisdetay_id` int(11) NOT NULL,
  `siparis_id` int(11) NOT NULL,
  `kullanici_id` int(11) NOT NULL,
  `kullanici_idsatici` int(11) NOT NULL,
  `urun_id` int(11) NOT NULL,
  `urun_fiyat` float(9,2) NOT NULL,
  `urun_adet` int(3) NOT NULL,
  `siparisdetay_kargozaman` datetime NOT NULL,
  `siparisdetay_kargoad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `siparisdetay_kargono` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `siparisdetay_onay` enum('0','1','2') COLLATE utf8_turkish_ci NOT NULL DEFAULT '0',
  `siparisdetay_yorum` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '0',
  `siparisdetay_onayzaman` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `siparis_detay`
--

INSERT INTO `siparis_detay` (`siparisdetay_id`, `siparis_id`, `kullanici_id`, `kullanici_idsatici`, `urun_id`, `urun_fiyat`, `urun_adet`, `siparisdetay_kargozaman`, `siparisdetay_kargoad`, `siparisdetay_kargono`, `siparisdetay_onay`, `siparisdetay_yorum`, `siparisdetay_onayzaman`) VALUES
(53, 750042, 167, 164, 45, 69.00, 0, '0000-00-00 00:00:00', '', '', '2', '1', '0000-00-00 00:00:00'),
(54, 750043, 167, 164, 45, 69.00, 0, '0000-00-00 00:00:00', '', '', '2', '1', '0000-00-00 00:00:00'),
(55, 750042, 167, 164, 45, 69.00, 0, '0000-00-00 00:00:00', '', '', '2', '1', '0000-00-00 00:00:00'),
(56, 750043, 167, 164, 45, 69.00, 0, '0000-00-00 00:00:00', '', '', '2', '1', '0000-00-00 00:00:00'),
(57, 750043, 167, 164, 44, 69.00, 0, '0000-00-00 00:00:00', '', '', '2', '1', '0000-00-00 00:00:00'),
(58, 750042, 167, 164, 44, 69.00, 0, '0000-00-00 00:00:00', '', '', '2', '1', '0000-00-00 00:00:00'),
(59, 750043, 167, 164, 44, 69.00, 0, '0000-00-00 00:00:00', '', '', '2', '1', '0000-00-00 00:00:00'),
(60, 750043, 167, 164, 43, 69.00, 0, '0000-00-00 00:00:00', '', '', '2', '1', '0000-00-00 00:00:00'),
(61, 750042, 167, 164, 43, 69.00, 0, '0000-00-00 00:00:00', '', '', '2', '1', '0000-00-00 00:00:00'),
(62, 750042, 167, 164, 46, 69.00, 0, '0000-00-00 00:00:00', '', '', '2', '1', '0000-00-00 00:00:00'),
(63, 750044, 169, 164, 40, 49.00, 0, '0000-00-00 00:00:00', '', '', '2', '0', '0000-00-00 00:00:00'),
(64, 750045, 169, 164, 40, 49.00, 0, '0000-00-00 00:00:00', '', '', '2', '0', '0000-00-00 00:00:00'),
(65, 750046, 168, 164, 43, 49.00, 0, '0000-00-00 00:00:00', '', '', '2', '0', '0000-00-00 00:00:00'),
(66, 750047, 164, 168, 47, 500.00, 0, '0000-00-00 00:00:00', '', '', '2', '1', '0000-00-00 00:00:00'),
(67, 750048, 168, 164, 40, 0.00, 0, '0000-00-00 00:00:00', '', '', '0', '0', '0000-00-00 00:00:00'),
(68, 750049, 164, 168, 47, 500.00, 0, '0000-00-00 00:00:00', '', '', '0', '0', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `slider`
--

CREATE TABLE `slider` (
  `slider_id` int(11) NOT NULL,
  `slider_ad` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `slider_resimyol` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `slider_sira` int(2) NOT NULL,
  `slider_link` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `slider_durum` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `slider`
--

INSERT INTO `slider` (`slider_id`, `slider_ad`, `slider_resimyol`, `slider_sira`, `slider_link`, `slider_durum`) VALUES
(7, 'Slider 1', 'dimg/slider/21489228012380622190slide-1.jpg', 1, 'http://www.google.com', '1'),
(13, 'Slider 2', 'dimg/slider/25417208252486922905slide-2.jpg', 2, '', '1'),
(14, 'Slider 3', 'dimg/slider/23892293612300424397slide-3.jpg', 3, '', '1'),
(15, 'Slider 4', 'dimg/slider/25912299412188031830slide-4.jpg', 4, '', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urun`
--

CREATE TABLE `urun` (
  `urun_id` int(11) NOT NULL,
  `kullanici_id` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `urun_zaman` timestamp NOT NULL DEFAULT current_timestamp(),
  `urunfoto_resimyol` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `urun_ad` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `urun_seourl` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `urun_detay` text COLLATE utf8_turkish_ci NOT NULL,
  `urun_fiyat` float(9,2) NOT NULL,
  `urun_satis` int(4) NOT NULL DEFAULT 0,
  `urun_video` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `urun_keyword` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `urun_stok` int(11) NOT NULL,
  `urun_durum` enum('0','1') COLLATE utf8_turkish_ci NOT NULL,
  `urun_onecikar` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `urun`
--

INSERT INTO `urun` (`urun_id`, `kullanici_id`, `kategori_id`, `urun_zaman`, `urunfoto_resimyol`, `urun_ad`, `urun_seourl`, `urun_detay`, `urun_fiyat`, `urun_satis`, `urun_video`, `urun_keyword`, `urun_stok`, `urun_durum`, `urun_onecikar`) VALUES
(37, 164, 8, '2020-12-18 22:09:46', 'dimg/urunfoto/5fdd28aa2a078.png', 'TEST', 'test', '<p>php sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesi</p>\r\n', 200.00, 0, '', '', 0, '1', '1'),
(39, 164, 11, '2020-12-19 18:04:13', 'dimg/urunfoto/5fde409d1cf73.png', 'ürün alan adı', 'urun-alan-adi', '<p>&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı</p>\r\n', 69.00, 0, '', '', 0, '1', '1'),
(40, 164, 12, '2020-12-19 18:30:10', 'dimg/urunfoto/5fde46b2c807f.png', 'site', 'site', '<p>site s  i tesitesite sitesites  </p>\n', 49.00, 0, '', '', 0, '1', '1'),
(41, 164, 8, '2020-12-18 22:09:46', 'dimg/urunfoto/5fdd28aa2a078.png', 'php sitesi', 'php-sitesi', '<p>php sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesi</p>\r\n', 200.00, 0, '', '', 0, '1', '1'),
(42, 164, 11, '2020-12-19 18:04:13', 'dimg/urunfoto/5fde409d1cf73.png', 'ürün alan adı', 'urun-alan-adi', '<p>&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı</p>\r\n', 69.00, 0, '', '', 0, '1', '1'),
(43, 164, 12, '2020-12-19 18:30:10', 'dimg/urunfoto/5fde46b2c807f.png', 'site', 'site', '<p>sites itesite sitesitesite sitesite sitesit esite sit esit es itesitesit esitesitesitesitesite sitesitesites itesitesit esitesi tesi tesitesite sitesi tesite sites it esitesit esitesi tesisitesit esitesitesitesites itesitesi tesite sitesitesi tesites itesitesi tesitesit esitesite sites i  tesitesitesitesit esite sitesit es itesitesi tesit esitesite sitesite sitesitesi tesites itet esite</p>\n', 49.00, 0, '', '', 0, '1', '1'),
(44, 164, 8, '2020-12-18 22:09:46', 'dimg/urunfoto/5fdd28aa2a078.png', 'php sitesi', 'php-sitesi', '<p>php sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesiphp sitesi</p>\r\n', 200.00, 0, '', '', 0, '1', '1'),
(45, 164, 11, '2020-12-19 18:04:13', 'dimg/urunfoto/5fde409d1cf73.png', 'ürün alan adı', 'urun-alan-adi', '<p>&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı&uuml;r&uuml;n alan adı</p>\r\n', 69.00, 0, '', '', 0, '1', '1'),
(46, 164, 9, '2020-12-19 18:30:10', 'dimg/urunfoto/5fde46b2c807f.png', 'site', 'site', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ut sapien a lorem dignissim egestas at quis tellus. Maecenas non erat at nisl posuere scelerisque nec pharetra risus. Nulla facilisi. Nulla eget laoreet nisl, id consequat metus. Vestibulum justo felis, dictum ut ante eget, laoreet viverra turpis. Phasellus sapien arcu, pellentesque et nisi eget, tempus ullamcorper libero. Quisque nec dui id sem ornare elementum ut id lacus. In hac habitasse platea dictumst. Vestibulum at nisl maximus, vestibulum magna ac, iaculis nibh. Ut viverra est tincidunt, dictum ex tempor, hendrerit ante. Sed aliquet nisi quis mi sodales convallis. Quisque orci turpis, condimentum in purus sit amet, feugiat interdum quam. Aliquam porttitor, leo eu faucibus accumsan, magna quam semper velit, eget pulvinar nulla tortor ut sem. Aenean lacinia lorem nec lobortis blandit. Maecenas risus turpis, condimentum vel dolor vel, tincidunt commodo justo. In mattis sodales quam vulputate pretium.\n\nAliquam erat volutpat. Morbi vitae dolor eu nisl molestie pharetra. Nullam malesuada lacus tellus, pretium viverra ipsum aliquet nec. Maecenas vehicula consequat nibh, sed imperdiet ante porta in. Duis orci ex, porta ac purus at, aliquam mollis nibh. Nunc cursus turpis diam, et tincidunt lorem condimentum eget. Ut non metus massa. Nulla nisl ligula, convallis a arcu tristique, iaculis tempor enim. Praesent diam ante, iaculis eget ligula quis, facilisis tincidunt lacus. Ut eleifend eu diam vitae dignissim. Sed ullamcorper risus tempus orci ornare, ac tincidunt ex viverra. Phasellus sed viverra ipsum, nec mollis lorem. Sed vel erat sed mauris luctus bibendum.\n\nNunc at massa eget quam placerat lobortis. Cras interdum mattis aliquet. Vestibulum facilisis sagittis mauris et lobortis. Ut accumsan elit volutpat, sollicitudin odio a, auctor augue. Integer tristique arcu et quam sodales, nec eleifend orci commodo. Cras sed congue eros. Duis facilisis massa ut elit maximus fringilla. Pellentesque lobortis, purus sit amet pretium lobortis, justo leo blandit nisl, a tincidunt nisl sem sed tellus. Nullam non eros suscipit, venenatis erat et, pharetra turpis. Pellentesque ullamcorper pretium neque sed ullamcorper. Pellentesque non facilisis tortor. Aliquam erat volutpat. Quisque interdum enim velit, eu pretium orci molestie in. Curabitur ut diam quis nisi tempor vehicula auctor at libero.', 499.00, 0, '', '', 0, '1', '1'),
(47, 168, 8, '2021-03-01 21:01:28', 'dimg/urunfoto/603d562849153.png', 'ürünnnnn', '', '&lt;p&gt;&amp;uuml;r&amp;uuml;nnnnnn&lt;/p&gt;\r\n', 500.00, 0, '', '', 0, '1', '0');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yorumlar`
--

CREATE TABLE `yorumlar` (
  `yorum_id` int(11) NOT NULL,
  `kullanici_id` int(11) NOT NULL,
  `urun_id` int(11) NOT NULL,
  `yorum_detay` text COLLATE utf8_turkish_ci NOT NULL,
  `yorum_puan` int(11) NOT NULL,
  `yorum_zaman` timestamp NOT NULL DEFAULT current_timestamp(),
  `yorum_onay` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `yorumlar`
--

INSERT INTO `yorumlar` (`yorum_id`, `kullanici_id`, `urun_id`, `yorum_detay`, `yorum_puan`, `yorum_zaman`, `yorum_onay`) VALUES
(31, 167, 45, 'Lorem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı 1500\'lerden beri endüstri standardı sahte metinler olarak kullanılmıştır. Beşyüz yıl boyunca varlığını sürdürmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sıçramıştır.', 4, '2020-12-23 22:34:13', '0'),
(32, 167, 45, 'PHP kodlamaya devam.', 4, '2020-12-23 23:27:43', '0'),
(33, 164, 47, 'güzel', 5, '2021-03-01 21:04:23', '0');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `ayar`
--
ALTER TABLE `ayar`
  ADD PRIMARY KEY (`ayar_id`);

--
-- Tablo için indeksler `banka`
--
ALTER TABLE `banka`
  ADD PRIMARY KEY (`banka_id`);

--
-- Tablo için indeksler `hakkimizda`
--
ALTER TABLE `hakkimizda`
  ADD PRIMARY KEY (`hakkimizda_id`);

--
-- Tablo için indeksler `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Tablo için indeksler `kullanici`
--
ALTER TABLE `kullanici`
  ADD PRIMARY KEY (`kullanici_id`);

--
-- Tablo için indeksler `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Tablo için indeksler `mesaj`
--
ALTER TABLE `mesaj`
  ADD PRIMARY KEY (`mesaj_id`);

--
-- Tablo için indeksler `sepet`
--
ALTER TABLE `sepet`
  ADD PRIMARY KEY (`sepet_id`);

--
-- Tablo için indeksler `siparis`
--
ALTER TABLE `siparis`
  ADD PRIMARY KEY (`siparis_id`);

--
-- Tablo için indeksler `siparis_detay`
--
ALTER TABLE `siparis_detay`
  ADD PRIMARY KEY (`siparisdetay_id`);

--
-- Tablo için indeksler `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Tablo için indeksler `urun`
--
ALTER TABLE `urun`
  ADD PRIMARY KEY (`urun_id`);

--
-- Tablo için indeksler `yorumlar`
--
ALTER TABLE `yorumlar`
  ADD PRIMARY KEY (`yorum_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `banka`
--
ALTER TABLE `banka`
  MODIFY `banka_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Tablo için AUTO_INCREMENT değeri `kullanici`
--
ALTER TABLE `kullanici`
  MODIFY `kullanici_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- Tablo için AUTO_INCREMENT değeri `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `mesaj`
--
ALTER TABLE `mesaj`
  MODIFY `mesaj_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Tablo için AUTO_INCREMENT değeri `sepet`
--
ALTER TABLE `sepet`
  MODIFY `sepet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `siparis`
--
ALTER TABLE `siparis`
  MODIFY `siparis_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=750050;

--
-- Tablo için AUTO_INCREMENT değeri `siparis_detay`
--
ALTER TABLE `siparis_detay`
  MODIFY `siparisdetay_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- Tablo için AUTO_INCREMENT değeri `slider`
--
ALTER TABLE `slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Tablo için AUTO_INCREMENT değeri `urun`
--
ALTER TABLE `urun`
  MODIFY `urun_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- Tablo için AUTO_INCREMENT değeri `yorumlar`
--
ALTER TABLE `yorumlar`
  MODIFY `yorum_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
