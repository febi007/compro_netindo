-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Apr 2022 pada 08.21
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 7.3.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_compro_netindo`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `banner`
--

INSERT INTO `banner` (`id`, `judul`, `deskripsi`, `gambar`, `link`, `status`, `tanggal`) VALUES
(1, 'Great Product Converts You Into Great Company', 'No more Search. World\'s No. 1 IT Solution Center for your better security. Loo car boot bodge smashing I up the duff!', 'upload/banner/698ac40931712bdf73af2ea1777e9c0f.png', 'http://localhost/compro-netindo', 1, '2022-04-21 10:29:14'),
(2, 'We Provide Best SEO Marketing Solutions', 'No more Search. World\'s No. 1 IT Solution Center for your better security. Loo car boot bodge smashing I up the duff!', 'upload/banner/9c333e3a69299fa27ddece41ba35ab4b.png', '', 1, '2022-04-21 10:29:42'),
(3, 'Great Product Converts You Into Great Company', 'No more Search. World\'s No. 1 IT Solution Center for your better security. Loo car boot bodge smashing I up the duff!', 'upload/banner/8fb654aab4126771ff4daaadf2f33ef3.png', '', 1, '2022-04-21 10:30:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `faq`
--

CREATE TABLE `faq` (
  `id` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `deskripsi` longtext NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `faq`
--

INSERT INTO `faq` (`id`, `judul`, `deskripsi`, `tanggal`) VALUES
(5, 'Tentang Npos', '[{\"jawaban\":\"<p>Npos adalah aplikasi wirausaha dengan fitur super lengkap untuk membantu usaha Anda semakin berkembang. Mari melangkah maju bersama Npos!<\\/p>\",\"pertanyaan\":\"<p>Apa itu Npos<\\/p>\"},{\"jawaban\":\"<p>Lebih dari sekedar sistem kasir, Npos adalah sebuah aplikasi wirausaha lengkap dengan ratusan fitur reliabel. Ini termasuk laporan keuangan lengkap, empat mode navigasi kasir, struk &amp; menu digital, serta integrasi layanan e-commerce. Hebatnya lagi, semua fitur tersebut bisa Anda dapatkan dengan harga berlangganan yang kompetitif!<\\/p>\",\"pertanyaan\":\"<p>Mengapa saya harus memilih Npos<\\/p>\"},{\"jawaban\":\"<p>Npos dapat digunakan oleh semua tipe dan skala bisnis, dari bisnis FnB, retail, penyedia jasa, bisnis yang baru dimulai, hingga bisnis yang telah memiliki ratusan cabang. Daftar sekarang dan coba Npos gratis, tim kami akan sangat senang untuk menunjukkan bahwa fitur yang kami milki dapat mengoptimalkan bisnis Anda.<\\/p>\",\"pertanyaan\":\"<p>Tipe bisnis seperti apa yang cocok menggunakan Npos<\\/p>\"}]', '2022-04-09 21:50:21'),
(8, 'Biaya dan Mekanisme Layanan', '[{\"jawaban\":\"<p>Perpanjangan layanan berlangganan Npos bisa dilakukan secara bersamaan maupun terpisah, tergantung jenis paket yang Anda pilih. Outlet dengan jenis paket berlangganan yang sama bisa melakukan perpanjangan layanan secara bersamaan. Namun jika masing-masing outlet memiliki paket berlangganan yang berbeda, perpanjangan layanan wajib dilakukan secara terpisah.<\\/p>\",\"pertanyaan\":\"<p>Ketika ingin memperpanjang layanan berlangganan, apakah saya harus melakukannya sekaligus atau bisa terpisah untuk masing-masing outlet<\\/p>\"},{\"jawaban\":\"<p>Npos menyediakan dukungan beberapa metode pembayaran sekaligus untuk mengakomodasi setiap kebutuhan Anda. Kami menerima pembayaran dari kartu debit, kartu kredit, transfer ATM, maupun uang elektronik.<\\/p>\",\"pertanyaan\":\"<p>Bagaimana cara melakukan pembayaran untuk aplikasi Npos<\\/p>\"}]', '2022-04-09 21:50:12'),
(9, 'Perangkat', '[{\"jawaban\":\"<p>Selain bisa dijalankan di hampir semua jenis perangkat Android, Npos juga bisa disambungkan dengan sejumlah hardware tambahan lain untuk mendukung kelancaran bisnis Anda. Ini termasuk barcode scanner, printer Bluetooth, printer dapur, maupun customer display.<\\/p>\",\"pertanyaan\":\"<p>Apa saja perangkat yang dibutuhkan untuk mengoperasikan Npos<\\/p>\"},{\"jawaban\":\"<p>Npos tidak mewajibkan pengguna untuk memakai perangkat ekslusif dari kami. Jadi ya, Anda bisa menggunakan tablet maupun perangkat milik pribadi. Namun patut dicatat bahwa hardware tersebut harus memenuhi spesifikasi yang dibutuhkan untuk menjalankan aplikasi wirausaha Npos.<\\/p>\",\"pertanyaan\":\"<p>Bisakah saya menggunakan perangkat tablet atau printer milik pribadi<\\/p>\"}]', '2022-04-09 21:45:53'),
(10, 'Fitur dan Layanan', '[{\"jawaban\":\"<p>Npos memiliki fitur khusus yang memungkinkan kasir mengirimkan struk ke Whatsapp maupun email pelanggan. Kami juga memiliki fungsi pembayaran \'Tanpa Tatap Muka\' dengan memanfaatkan pemindaian kode QR. Sementara untuk melihat katalog produk, pelanggan bisa memanfaatkan fitur menu elektronik alias e-menu. Dan untuk membantu usaha yang belum sepenuhnya mengadaptasi sistem bisnis digital, kami menyediakan fitur integrasi e-commerce dan web online yang mudah untuk digunakan.<\\/p>\",\"pertanyaan\":\"<p>Pandemi COVID-19 membuat saya harus menjalankan usaha dengan kontak fisik minimal, apakah Npos punya fitur untuk mendukung hal tersebut<\\/p>\"},{\"jawaban\":\"<p>Npos menyediakan layanan integrasi dengan GrabFood serta e-commerce Tokopedia, Shopee, dan Bukalapak. Transaksi akan langsung tercatat di aplikasi kasir Npos , dengan laporan keuangan mendetail yang langsung tersinkronisasi dengan dashboard Npos !<\\/p>\",\"pertanyaan\":\"<p>Apakah Npos sudah mendukung integrasi dengan marketplace<\\/p>\"}]', '2022-04-09 21:45:47'),
(16, 'Pertanyaan Umum', '[{\"jawaban\":\"<p>Tidak. Kami tidak memungut biaya untuk setiap konsumsi bandwidth yang toko online Anda gunakan, bahkan apabila toko online Anda memang menarik banyak lalu lintas internet. Namun di sini, kami menawarkan Anda untuk membangun toko online Anda dalam biaya servis bulanan yang sangat terjangkau. Sungguh, di saat sebagian orang menghabiskan jutaan rupiah untuk membuat situs dengan hasil biasa-biasa saja, Anda dapat membuat situs layaknya professional dengan fitur nan lengkap hanya dengan biaya yang begitu terjangkau. Untuk informasi lanjut, silahkan cek paket harga di sini .<\\/p>\",\"pertanyaan\":\"<p>Apakah ada biaya yang dikenakan untuk pengiriman data atau bandwidth atau hosting<\\/p>\"},{\"jawaban\":\"<p>Yah, Anda dapat membangun toko online Anda dengan berbagai nama situs yang masih tersedia. Kami akan memberitahu Anda jika nama domain yang Anda masukkan telah dimiliki orang lain. Jika Anda ingin melakukan pencarian langsung atas ketersediaan naa situs yang Anda inginkan, silahkan klik di sini. Mohon diingat bahwa, domain yang awalnya tersedia dapat diambil seketika oleh orang lain, jadi kami menyarankan Anda untuk sesegera mungkin mendaftarkan nama domain yang Anda inginkan. Siapa cepat, dia dapat, cukup sederhana, kan!<\\/p>\",\"pertanyaan\":\"<p>Apakah saya bisa membangun toko online saya sesuai dengan penamaan situs yang saya kehendaki<\\/p>\"},{\"jawaban\":\"<p>Bergabung dengan Npos begitu mudah seperti mendaftar di jejaring sosial. Anda cukup melengkapi alamat email dan contact Anda untuk keperluan verifikasi. Setelah itu, dalam waktu singkat Anda sudah akan mendapatan user dan password yang dibutuhkan untuk mengakses situs admin Npos. Dari sana, Anda akan dipandu selangkah demi selangkah untuk membuat toko online Anda. Mudah bagaikan belajar ABC.<\\/p>\",\"pertanyaan\":\"<p>Apa saja yang dibutuhkan untuk melakukan set up dengan cepat<\\/p>\"}]', '2022-04-09 21:45:37'),
(27, 'Cara Menggunakan', '[{\"jawaban\":\"<ol><li>Login ke Back Office melalui <\\/li><li><span class=\\\"ql-font-monospace\\\">Pilih menu APPS<\\/span><\\/li><li><span class=\\\"ql-font-monospace\\\">Anda dapat melihat daftar partner App Marketplace Moka yang dapat anda integrasikan.<\\/span><\\/li><\\/ol><p><img src=\\\"data:image\\/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAAAXNSR0IArs4c6QAAAXhJREFUSEvtlU1SwkAQhb+OLNjJFTyB8QTgCeQGsoQYquAExhNIFZi4lBvgCYw3yA28Au6wCtLWpIJFBckE\\/NuY5eTNe9Nvut8IP\\/zJD\\/Pz9wKepy4O7XAiwWa1nq8BKbMwlKTMhUoVdPs6E3hBcTMyIVE4uR9L22axVcDra0eVW6BRIJuLMAzH8nBwBV1fWwJPQAy0CkTZmqScldlUWkHPV3O6S4sN02ginV2YTwXMyes1ksWSQMh938GgkNRrBG8rTqOxPBdhWwK9Kx0gmeemO16BpqWCNWkTZRjdyWgTvyVg2k\\/hOgeZzVUEMozATbGd\\/wWMMx827muRuWBz0VXuwEz4cTUBT930iEBSYgQTBXYBZaYOLWdFUBy60kHLMki5KGtTFR7LMqlUYDDQxmKJm8eF0ZnmYtl0K5ybgRyNZL7XJBfBPV913ec5cTYn0USsYWkFGKLfEDChZ5Izy391iFWIv+U9sD0otv+VLLKRHPzgfIV4vfcdtgSYGZwIo8wAAAAASUVORK5CYII=\\\"><img src=\\\"data:image\\/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAAAXNSR0IArs4c6QAAAYFJREFUSEvNldFRwkAQhr8VHR\\/RCrAD0wFYgdgBvkEMY+wAKyAzRMKbUoFYgdCBdpAOhDcdlXXOQQeTADkGZtzH3N3\\/3d7u\\/hG2HLJlfdYC+L4evL7TFqEahXK47JLWACP+9sEj4ACjKJTKRgF1TwOBSyOqcNILZbhRQMPTGCiJcN7tyN2qGi59ItdVhx3Kqox1j1EvkNj1tDWFYUEpfgqOKPHPWhYsEzB753sg+b5PgMmgmhITgqgjV8nvmYCGp0boeFX6ifWJQjVZkxTAbWpNlVtL8YUFTwEanpquKFsC+lEotVw1aHiqluJmWq+7obT+DWAMFG2yUOGh15F0Z0Hai+pNHYhyagNYNtXpIl+oj9C2BQBjFD+6kf782RRgNmQvawDMkecoFGOCv5E5aPOGZgk6i0IZrATMsjCWYFPsTOteaHZ1TyvCt+\\/nicn+LkdBIKYD\\/8RSN51BjCWXgL4Iw6kSi+Ig34ZXNi1KAd84ba5By3Ndmz3Wv0wbcbN364AvECSOGVowdScAAAAASUVORK5CYII=\\\"><img src=\\\"data:image\\/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAAAXNSR0IArs4c6QAAALlJREFUSEvtVMENwjAQsydgBGATRqE\\/KmWcoPCDUTpKugEbHGqkVNACdyiED80zurNj585E5cPK+PgdwcHJjoIziE2RKkEUojl5dgPOqKB1EgGsi8BzsyCGI7dTAhkugmeRba2TB5x7BQtB+oHFInWK\\/8Ai1QNjQV7Y2aIZ+9WyZwRXACu101bQB88UmqOClKbA5QuB1wuwn6Wp5WHTEbT0fJScVQgy6KvXavGuKqhOYPH5XY2qoJTgBmwLexnsU\\/74AAAAAElFTkSuQmCC\\\"><img src=\\\"data:image\\/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAAAXNSR0IArs4c6QAAAiVJREFUSEu9Ve1x2kAQfQ8z+Ce4AocK4lRgu4O4gjj\\/AlEmUEFIBZaHg+NfnAqCKwiuILiC4Aoi\\/7SH0WZW1t0cskBxHHIzGk7Lad9+vH1HbHlxy\\/5RCdD9IKdpikMSB0D26JqLYL4DTEcjXm4Kci1AJ5LXEJyBeLExS8ECRN8aTsvOlQK8iyQm8LH4AVO8UpvU8OORMyK2Q\\/YffVM0BM5vIRjgoTRvCHweGw70fDeSgQCfhLhkihkItTcFOJ8Y9kKfKxlkZQG+AbhliqNGA4u7JX5lUdfRnsRc6L7Xk9bdErpvqr12j5bUMNN3ACdhuYoA+tE+ibfjIS+0wSL4opFOhlRwvzqRXISZubMQLOyIbXfQA\\/gDwLU1zNjinEDQtyPGBQCX7ZU1PMrPzwG8DLPwAGXOOpFo2ocCHE8Mde9XXiYtX2IN9zKA99IDcQbgqzU8VVsIkKErU8Zj6l4zEP3drWMvjpkUCdGJRG1N93+3Kwc5w+bWMGNcCJA5+1fLGma+\\/ytAWYlWSvCEEnmi\\/HWTwx65clQ12dHON8hzPZ+LZ9E0j2hl0FxEZYPmJMXJQxD9jTX0ArlOKhKmOE4bSLjET+X6bh1tR9V8BtTeCgTwu75vlArNIhC7hICK2okOW5nYAbgiMJMH5W1Vip2r8R\\/ItYvWt6XM+coclFBQm676s18xfDcqsE+6cErYomAqgCpkuq712gQwXefY+ai8k58rHVsH+A11Wj8oY7rMNAAAAABJRU5ErkJggg==\\\"><\\/p>\",\"pertanyaan\":\"<p>Bagaimana Cara Menggunakan NPOS<\\/p>\"},{\"jawaban\":\"<p>Anda dapat menghubungi kami via call center di <a href=\\\"1500970 \\\" rel=\\\"noopener noreferrer\\\" target=\\\"_blank\\\">1500970 <\\/a>atau email di <a href=\\\"mailto:support@npos.com\\\" rel=\\\"noopener noreferrer\\\" target=\\\"_blank\\\">support@npos.com<\\/a><\\/p>\",\"pertanyaan\":\"<p>Bagaimana cara untuk mendaftarkan usaha saya agar dapat terintegrasi dengan NPOS Connect Private Solution<\\/p>\"}]', '2022-04-09 21:49:36'),
(30, 'TUJUAN', '[{\"jawaban\":\"<p>Di Moka, kami percaya nilai yang kami punya bukan hanya serangkaian aturan. Ini bukan hanya tentang secocok apa Anda dengan kriteria kandidat yang kami cari atau secepat Anda bisa menyelesaikan masalah, tapi tentang setinggi apa komitmen Anda dalam memenuhi janji untuk memberdayakan para merchant Moka. Di Moka, Anda bisa menjadi pemimpin untuk hal yang Anda lakukan sendiri. Anda juga akan menjadi bagian dari solusi, bukan masalah.<\\/p>\",\"pertanyaan\":\"<h5>Mengapa Harus Moka<\\/h5>\"}]', '2022-04-09 22:08:18'),
(31, 'PERTANYAAN PERTAMA', '[{\"jawaban\":\"<ol><li>Masuk dan lakukan Pendaftaran Akun pada&nbsp;<a href=\\\"https:\\/\\/mokapos.com\\/\\\" rel=\\\"noopener noreferrer\\\" target=\\\"_blank\\\" style=\\\"color: rgb(0, 180, 235);\\\">website<\\/a>&nbsp;kami.<\\/li><li>Masuk pada&nbsp;<em>backoffice<\\/em>&nbsp;dan lakukan pembayaran pada halaman Tagihan.<\\/li><li>Anda dapat membeli perangkat pendukung&nbsp;<a href=\\\"https:\\/\\/www.mokapos.com\\/id\\/hardware\\\" rel=\\\"noopener noreferrer\\\" target=\\\"_blank\\\" style=\\\"color: rgb(0, 180, 235);\\\">disini<\\/a>.<\\/li><li>Anda dapat menghubungi kami untuk bentuan proses pembayaran pada:<\\/li><li>Hotline kami&nbsp;<a href=\\\"tel:0211500970\\\" rel=\\\"noopener noreferrer\\\" target=\\\"_blank\\\" style=\\\"color: rgb(0, 180, 235);\\\">021-1500 970<\\/a><\\/li><li>Kirim pesan melalui Whats ke&nbsp;<a href=\\\"https:\\/\\/api.whatsapp.com\\/send?phone=628111168999\\\" rel=\\\"noopener noreferrer\\\" target=\\\"_blank\\\" style=\\\"color: rgb(0, 180, 235);\\\">08111168999<\\/a><\\/li><li>Jika Anda perlu melakukan cicilan, maka Anda dapat melakukan pembayaran melalui&nbsp;<a href=\\\"https:\\/\\/www.tokopedia.com\\/mokapointofsale\\\" rel=\\\"noopener noreferrer\\\" target=\\\"_blank\\\" style=\\\"color: rgb(0, 180, 235);\\\">Moka Official Tokopedia Store<\\/a>.<\\/li><\\/ol><h4><br><\\/h4>\",\"pertanyaan\":\"<h5>Mengapa Harus Moka ?<\\/h5>\"},{\"jawaban\":\"<ol><li>Masuk dan lakukan Pendaftaran Akun pada&nbsp;<a href=\\\"https:\\/\\/mokapos.com\\/\\\" rel=\\\"noopener noreferrer\\\" target=\\\"_blank\\\" style=\\\"color: rgb(0, 180, 235);\\\">website<\\/a>&nbsp;kami.<\\/li><li>Masuk pada&nbsp;<em>backoffice<\\/em>&nbsp;dan lakukan pembayaran pada halaman Tagihan.<\\/li><li>Anda dapat membeli perangkat pendukung&nbsp;<a href=\\\"https:\\/\\/www.mokapos.com\\/id\\/hardware\\\" rel=\\\"noopener noreferrer\\\" target=\\\"_blank\\\" style=\\\"color: rgb(0, 180, 235);\\\">disini<\\/a>.<\\/li><li>Anda dapat menghubungi kami untuk bentuan proses pembayaran pada:<\\/li><li>Hotline kami&nbsp;<a href=\\\"tel:0211500970\\\" rel=\\\"noopener noreferrer\\\" target=\\\"_blank\\\" style=\\\"color: rgb(0, 180, 235);\\\">021-1500 970<\\/a><\\/li><li>Kirim pesan melalui Whats ke&nbsp;<a href=\\\"https:\\/\\/api.whatsapp.com\\/send?phone=628111168999\\\" rel=\\\"noopener noreferrer\\\" target=\\\"_blank\\\" style=\\\"color: rgb(0, 180, 235);\\\">08111168999<\\/a><\\/li><li>Jika Anda perlu melakukan cicilan, maka Anda dapat melakukan pembayaran melalui&nbsp;<a href=\\\"https:\\/\\/www.tokopedia.com\\/mokapointofsale\\\" rel=\\\"noopener noreferrer\\\" target=\\\"_blank\\\" style=\\\"color: rgb(0, 180, 235);\\\">Moka Official Tokopedia Store<\\/a>.<\\/li><\\/ol>\",\"pertanyaan\":\"<h5>Mengapa Harus Moka ?<\\/h5>\"}]', '2022-04-13 22:14:45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `informasi`
--

CREATE TABLE `informasi` (
  `id` int(11) NOT NULL,
  `kategori` int(11) NOT NULL,
  `jenis` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `deskripsi` longtext NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `tags` longtext NOT NULL,
  `status` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `informasi`
--

INSERT INTO `informasi` (`id`, `kategori`, `jenis`, `judul`, `slug`, `deskripsi`, `gambar`, `tags`, `status`, `tanggal`) VALUES
(1, 3, 1, 'Apa Itu Influencer Marketing? Ini Penjelasan dan Tips Suksesnya', 'apa-itu-influencer-marketing-ini-penjelasan-dan-tips-suksesnya', '<p>Apa Itu&nbsp;<em>influencer marketing</em>? Setiap pemilik bisnis di era digital ini sudah harus tahu apa itu&nbsp;<em>marketing</em>&nbsp;<em>influencer</em>. Sebab, bekerja sama dengan para&nbsp;<em>influencer</em>&nbsp;dapat memudahkan Anda untuk mempromosikan produk Anda langsung ke target pasar Anda. Alhasil, penjualan pun bisa semakin meningkat.&nbsp;</p><p>Jika Anda masih belum memahami apa itu&nbsp;<em>influencer</em>&nbsp;<em>marketing</em>, tak perlu risau, berikut ini ulasan lengkap tentang&nbsp;<em>influencer</em>&nbsp;<em>marketing</em>&nbsp;yang wajib Anda pahami!</p><h2><strong>Pengertian Apa itu Influencer Marketing?</strong></h2><p>Apa itu&nbsp;<em>Influencer</em>&nbsp;<em>marketing</em>? Ini adalah strategi&nbsp;<em>marketing</em>&nbsp;di mana pihak&nbsp;<em>brand</em>&nbsp;bekerja sama atau berkolaborasi dengan para&nbsp;<em>influencer</em>&nbsp;di media sosial. Umumnya, aktivitas promosi ini dilakukan melalui konten-konten yang diunggah pada akun media sosial milik&nbsp;<em>influencer</em>&nbsp;yang sudah memiliki cukup banyak&nbsp;<em>followers</em>. Kontennya pun bisa hasil kreasi&nbsp;<em>influencer</em>nya sendiri ataupun konten yang sudah dibuat langsung oleh pihak&nbsp;<em>brand</em>.&nbsp;</p><p><em>influencer</em>&nbsp;<em>marketing</em>&nbsp;dapat memudahkan pihak brand untuk mempromosikan produknya kepada audiens yang tepat. Sebab, para&nbsp;<em>influencer</em>&nbsp;memiliki demografi followers yang berbeda, sesuai dengan konten-konten yang sering diunggah oleh&nbsp;<em>influencer</em>. Jadi, aktivitas promosi yang dilakukan dapat lebih efektif dan efisien karena langsung menarget demografi yang tepat.&nbsp;</p><p><strong>Baca juga:&nbsp;</strong><a href=\"https://blog.mokapos.com/_hcms/analytics/search/conversion?redirect=aHR0cHM6Ly9ibG9nLm1va2Fwb3MuY29tL21pY3JvLWluZmx1ZW5jZXItdW50dWsta2VtYmFuZ2thbi1iaXNuaXM%3D&amp;ct=SEARCH&amp;pid=2528720&amp;cid=6464735420&amp;t=aW5mbHVlbmNlcg%3D%3D&amp;d=blog.mokapos.com&amp;c=2&amp;c=6&amp;rp=1&amp;ab=true&amp;opcid=&amp;rs=UNKNOWN&amp;hs-expires=1679424609&amp;hs-version=1&amp;hs-signature=APUk-v5d6dXWa-G41mIPQOlnjGG6eEzVsw\" target=\"_blank\" style=\"color: rgb(0, 184, 236);\"><strong>5 Manfaat Micro&nbsp;</strong></a><a href=\"https://blog.mokapos.com/_hcms/analytics/search/conversion?redirect=aHR0cHM6Ly9ibG9nLm1va2Fwb3MuY29tL21pY3JvLWluZmx1ZW5jZXItdW50dWsta2VtYmFuZ2thbi1iaXNuaXM%3D&amp;ct=SEARCH&amp;pid=2528720&amp;cid=6464735420&amp;t=aW5mbHVlbmNlcg%3D%3D&amp;d=blog.mokapos.com&amp;c=2&amp;c=6&amp;rp=1&amp;ab=true&amp;opcid=&amp;rs=UNKNOWN&amp;hs-expires=1679424609&amp;hs-version=1&amp;hs-signature=APUk-v5d6dXWa-G41mIPQOlnjGG6eEzVsw\" target=\"_blank\" style=\"color: rgb(17, 85, 204);\"><strong><em>influencer</em>&nbsp;Instagram untuk Kembangkan Bisnis Anda</strong></a></p><p>&nbsp;</p><h2><strong>Tips Menjalankan Influencer Marketing</strong></h2><p><img src=\"https://blog.mokapos.com/hs-fs/hubfs/Apa%20itu%20influencer%20marketing%203.jpg?width=1200&amp;name=Apa%20itu%20influencer%20marketing%203.jpg\" alt=\"Apa itu influencer marketing 3\" width=\"1200\"></p><p>Agar tidak salah dalam menyusun dan mengeksekusi strategi&nbsp;<em>influencer</em>&nbsp;<em>marketing</em>, berikut ini hal-hal yang sebaiknya Anda lakukan</p><h3><strong style=\"color: rgb(67, 67, 67);\">1. Tentukan tujuan yang ingin dicapai dengan menjalankan&nbsp;<em>influencer marketing.&nbsp;</em></strong></h3><p>Apakah Anda ingin meningkatkan&nbsp;<em>brand awareness</em>&nbsp;atau ingin meningkatkan penjualan? Tentukan sejak awal karena keduanya membutuhkan pesan yang sedikit berbeda.</p><h3><strong style=\"color: rgb(67, 67, 67);\">2. Pahami siapa target pasar Anda.&nbsp;</strong></h3><p>Ketahui siapa saja mereka, apa yang mereka inginkan, bagaimana cara mereka belanja, platform apa yang sering mereka akses, bagaimana komunikasi yang mudah mereka terima, dan lain sebagainya.</p><h3><strong style=\"color: rgb(67, 67, 67);\">3. Pilih&nbsp;<em>influencer</em>&nbsp;dengan kualitas konten yang sesuai&nbsp;<em>value brand</em>&nbsp;Anda.&nbsp;</strong></h3><p>Jangan hanya melihat semata-mata jumlah&nbsp;<em>followers</em>-nya. Hal ini untuk memastikan bahwa konten promosi tersebut dapat tetap terasa&nbsp;<em>engaging</em>, sehingga pesannya dapat diterima dengan baik oleh para pengikutnya.</p><h2><span style=\"color: rgb(67, 67, 67); background-color: transparent;\">Hal yang Sebaiknya Anda Hindari Saat Kolaborasi dengan Influencer</span></h2><p><span style=\"color: rgb(67, 67, 67); background-color: transparent;\">1. Terlalu banyak meminta namun tidak memiliki tujuan yang jelas.&nbsp;</span></p><p>Sebab hal ini justru dapat membuat konten promosi Anda tidak mencapai hasil yang diharapkan.&nbsp;</p><h3><strong style=\"color: rgb(67, 67, 67);\">2. Bekerja sama dengan&nbsp;<em>influencer</em>&nbsp;yang tidak sesuai dengan target pasar Anda.&nbsp;</strong></h3><p>Sebab pesan yang ingin Anda sampaikan melalui&nbsp;<em>influencer</em>&nbsp;akan kurang relevan, sehingga tujuan&nbsp;<em>marketing</em>&nbsp;Anda pun tidak akan tercapai.</p><h3><strong style=\"color: rgb(67, 67, 67);\">3. Menekankan konten harus baik dan murah.&nbsp;</strong></h3><p>Apa itu&nbsp;<em>influencer marketing</em>&nbsp;jika tanpa didukung oleh konten yang bagus. Dalam industri kreatif, konten yang baik tidak akan bisa Anda dapatkan dengan harga yang murah. Jadi, sebaiknya diskusikan konsep dan&nbsp;<em>budget</em>&nbsp;dengan&nbsp;<em>influencer</em>&nbsp;pilihan Anda terlebih dahulu untuk mencapai&nbsp;<em>win-win solution.</em></p><p><strong>Baca juga:&nbsp;</strong><a href=\"https://blog.mokapos.com/_hcms/analytics/search/conversion?redirect=aHR0cHM6Ly9ibG9nLm1va2Fwb3MuY29tL21lbmluZ2thdGthbi1icmFuZC12YWx1ZS1iaXNuaXMtYWdhci1wZW5qdWFsYW4tbWVsZXNhdA%3D%3D&amp;ct=SEARCH&amp;pid=2528720&amp;cid=27002402872&amp;t=aW5mbHVlbmNlcg%3D%3D&amp;d=blog.mokapos.com&amp;c=2&amp;c=6&amp;rp=10&amp;ab=true&amp;opcid=&amp;rs=UNKNOWN&amp;hs-expires=1679424609&amp;hs-version=1&amp;hs-signature=APUk-v6jSB2zfoS1kPtxvEA1Rw_c43QMVw\" target=\"_blank\" style=\"color: rgb(0, 184, 236);\"><strong>Cara Praktis Tingkatkan Brand Value Bisnis agar Penjualan Melesat</strong></a></p><p><strong>Indikator yang Digunakan untuk Mengukur Keberhasilan&nbsp;<em>Influencer</em>&nbsp;<em>Marketing</em></strong></p><p><strong><em><img src=\"https://blog.mokapos.com/hs-fs/hubfs/Apa%20itu%20influencer%20marketing%202.jpg?width=1200&amp;name=Apa%20itu%20influencer%20marketing%202.jpg\" alt=\"Apa itu influencer marketing 2\" width=\"1200\"></em></strong></p><p>Untuk mengetahui apa itu&nbsp;<em>influencer marketing&nbsp;</em>yang berhasil atau tidak, berikut ini matriks atau indikator yang bisa digunakan.</p><ol><li data-list=\"ordered\"><em>Brand awareness</em>&nbsp;mencapai titik yang Anda inginkan&nbsp;</li><li data-list=\"ordered\">Sentimen&nbsp;<em>brand</em>&nbsp;yang positif</li><li data-list=\"ordered\">Jumlah pengunjung ke&nbsp;<em>website</em>&nbsp;atau&nbsp;<em>landing page</em>&nbsp;Anda</li><li data-list=\"ordered\"><em>Reach</em>&nbsp;dan&nbsp;<em>engagement</em>&nbsp;setiap konten promosi yang sudah diunggah</li><li data-list=\"ordered\">Hasil penjualan setelah bekerja sama dengan&nbsp;<em>influencer</em></li></ol><p>Jika&nbsp;<em>influencer</em>&nbsp;<em>marketing</em>&nbsp;yang Anda jalankan sudah mampu memenuhi lima kriteria di atas, maka strategi&nbsp;<em>influencer</em>&nbsp;<em>marketing</em>&nbsp;Anda sudah cukup berhasil.</p><p><strong style=\"color: rgb(67, 67, 67);\">Contoh&nbsp;<em>Influencer</em></strong><strong>&nbsp;</strong><strong style=\"color: rgb(67, 67, 67);\"><em>Marketing</em>&nbsp;yang Diterapkan Merchants Moka</strong></p><p><em>Influencer</em>&nbsp;<em>marketing</em>&nbsp;sudah diterapkan oleh berbagai&nbsp;<em>brand</em>, termasuk para&nbsp;<em>merchant</em>&nbsp;Moka, contohnya sebagai berikut:</p><ol><li data-list=\"ordered\">Kopi Chuseyo bekerja sama dengan berbagai&nbsp;<em>influencer</em>&nbsp;sebagai bagian dari&nbsp;<em>campaign</em>&nbsp;#ChurpriseChallenge Kopi Chuseyo mengirimkan sebuah bingkisan berisi&nbsp;<em>merchandise</em>,&nbsp;<em>photocard</em>, dan berbagai pernak-pernik K-Pop untuk kemudian diunggah ke Instagram Story milik&nbsp;<em>influencer</em>.</li><li data-list=\"ordered\">Kokumi berkolaborasi dengan Gisella Anastasia dan Gempi meluncurkan menu baru Kokumi X Gisel &amp; Gempi. Kokumi juga bekerja sama dengan&nbsp;<em>influencer</em>&nbsp;papan atas seperti Nagita Slavina dan Gading Marten dalam&nbsp;<em>campaign</em>&nbsp;ini.</li><li data-list=\"ordered\">Bittersweet by Najla yang bekerja sama dengan beberapa&nbsp;<em>influencer</em>&nbsp;besar seperti Raffi Ahmad, Nagita Slavina, dan Anya Geraldine untuk membuat konten-konten promo di Instagram dan YouTube.&nbsp;</li></ol><p><strong>Baca juga:&nbsp;</strong><a href=\"https://blog.mokapos.com/_hcms/analytics/search/conversion?redirect=aHR0cHM6Ly9ibG9nLm1va2Fwb3MuY29tL2lkZS1iaXNuaXMtb25saW5lLWRhbi1vZmZsaW5l&amp;ct=SEARCH&amp;pid=2528720&amp;cid=27147795138&amp;t=aW5mbHVlbmNlcg%3D%3D&amp;d=blog.mokapos.com&amp;c=2&amp;c=6&amp;rp=9&amp;ab=true&amp;opcid=&amp;rs=UNKNOWN&amp;hs-expires=1679424609&amp;hs-version=1&amp;hs-signature=APUk-v6PzrXMiBboqYxxS4pIz2-qi6m6mg\" target=\"_blank\" style=\"color: rgb(0, 184, 236);\"><strong>25 Ide Bisnis Online dan Offline Paling Menguntungkan di 2022</strong></a></p><p>Itu dia ulasan tentang apa itu&nbsp;<em>influencer</em>&nbsp;<em>marketing</em>. Melalui konten-konten yang&nbsp;<em>influencer</em>&nbsp;buat, produk Anda akan menjangkau lebih banyak calon pembeli. Untuk itu, Anda perlu&nbsp;<a href=\"https://www.mokapos.com/jualan-online/gostore\" target=\"_blank\" style=\"color: rgb(0, 184, 236);\"><strong>buat&nbsp;</strong></a><a href=\"https://www.mokapos.com/jualan-online/gostore\" target=\"_blank\" style=\"color: rgb(17, 85, 204);\"><strong><em>website</em>&nbsp;toko&nbsp;<em>online</em></strong></a>&nbsp;agar calon pembeli bisa langsung melihat katalog produk dan melakukan transaksi dalam satu waktu. Caranya adalah dengan menggunakan aplikasi GoStore.</p><p>GoStore dapat membantu Anda&nbsp;<a href=\"https://www.mokapos.com/jualan-online/gostore\" target=\"_blank\" style=\"color: rgb(0, 184, 236);\"><strong>buat website toko&nbsp;</strong></a><a href=\"https://www.mokapos.com/jualan-online/gostore\" target=\"_blank\" style=\"color: rgb(17, 85, 204);\"><strong><em>online</em></strong></a>&nbsp;dengan lebih mudah. Toko&nbsp;<em>online</em>&nbsp;Anda pun juga langsung terintegrasi dengan Google Shopping, Facebook Shop, dan Instagram Shop. Jadi, katalog produk Anda dapat terintegrasi pada ketiga layanan tersebut. Proses belanja pun jadi lebih singkat.</p><p>Jadi, pastikan Anda menggunakan GoStore untuk membuat website toko online Anda!</p>', 'upload/informasi/e6e478240c25a074343403acf154ca61.jpg', '[{\"value\":\"npos\"},{\"value\":\"netindo\"},{\"value\":\"berita terbaru\"},{\"value\":\"influencer\"},{\"value\":\"marketing\"},{\"value\":\"pengertian influencer\"},{\"value\":\"pengertian marketing\"}]', 0, '2022-04-21 20:35:06');
INSERT INTO `informasi` (`id`, `kategori`, `jenis`, `judul`, `slug`, `deskripsi`, `gambar`, `tags`, `status`, `tanggal`) VALUES
(2, 4, 1, 'Bikin Website Toko Online GoStore dan Nikmati Promo Gratis Ongkir!', 'bikin-website-toko-online-gostore-dan-nikmati-promo-gratis-ongkir', '<p><img src=\"data:image/jpeg;base64,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\">Bikin Website Toko Online GoStore dan Nikmati Promo Gratis Ongkir -&nbsp;GoStore&nbsp;adalah platform terbaru dari Gojek yang dapat dimanfaatkan untuk membuat&nbsp;website&nbsp;toko&nbsp;online, yang dapat diakses dan dikelola secara langsung melalui Back Office Moka.&nbsp;</p><p>Banyak pemilik usaha memilih GoStore sebagai saluran penjualan tambahan karena bisa terhubung dengan jutaan pelanggan di media sosial lewat Facebook Shops, Instagram Shop, dan Google Shopping.</p><p>GoStore pun menjadi andalan para pemilik bisnis dalam memasarkan produk. Selain memiliki kemudahan dalam hal pembayaran, Anda pun bisa mengirim pesanan kepada pelanggan dengan lebih cepat lewat layanan pengiriman instan!</p><p>Tentu, hal ini menjadi poin plus bagi usaha Anda, terutama di mata para pelanggan yang menginginkan pesanan mereka cepat sampai di tujuan.</p><p>Nah, kabar baik untuk Anda yang belum mencoba layanan GoStore. Yuk, buat&nbsp;website&nbsp;toko&nbsp;online&nbsp;Anda di GoStore sekarang dan nikmati promo gratis ongkir dari Shipper yang bisa Anda berikan ke pelanggan! Berikut informasi selengkapnya.</p>', 'upload/informasi/4bbc7781e25b8948fe4d9558f0ed97e3.png', '[{\"value\":\"npos\"},{\"value\":\"retail\"},{\"value\":\"website\"},{\"value\":\"toko online\"}]', 1, '2022-04-21 20:55:17');
INSERT INTO `informasi` (`id`, `kategori`, `jenis`, `judul`, `slug`, `deskripsi`, `gambar`, `tags`, `status`, `tanggal`) VALUES
(3, 3, 1, '[Panduan JAGA] G: Gunakan Fitur Employee Management untuk Melindungi Data Usaha Anda', 'panduan-jaga-g-gunakan-fitur-employee-management-untuk-melindungi-data-usaha-anda', '<p>Salah satu risiko bisnis yang perlu Anda waspadai adalah kecurangan pegawai. Hal ini pun bisa berhubungan dengan laporan keuangan atau data penting usaha lainnya.</p><p>Namun jangan khawatir, kami tak bosan-bosannya untuk mengajak Anda menjaga usaha lewat&nbsp;<a href=\"https://blog.mokapos.com/waspada-penipuan-yang-mengatasnamakan-moka-dan-atau-gojek-indonesia\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(0, 184, 236);\"><strong>Panduan JAGA</strong></a>. JAGA merupakan rangkuman pengetahuan guna menghindari penipuan, yang telah dipersiapkan Moka dan Gojek. Kepanjangan JAGA ialah ...</p><p><strong>J :</strong>&nbsp;Jangan bertransaksi atau memberi otorisasi di luar&nbsp;<em>channel&nbsp;</em>resmi Moka.</p><p><strong>A :</strong>&nbsp;Amankan data usaha &amp; pribadi, seperti kode OTP, kartu ATM/debit/kredit, CVV, PIN, dan lainnya.</p><p><strong>G :</strong>&nbsp;Gunakan Fitur&nbsp;<a href=\"https://www.mokapos.com/en/employee-management\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(0, 184, 236);\">Employee Management</a>.&nbsp;</p><p><strong>A :</strong>&nbsp;Adukan hal mencurigakan dengan menghubungi&nbsp;<em>call center</em>&nbsp;resmi Moka di nomor 1500970 atau&nbsp;<a href=\"mailto:support@mokapos.com\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(0, 184, 236);\">support@mokapos.com</a>.</p><p>Setelah mengetahui&nbsp;<a href=\"https://campaign.mokapos.com/JAGA/clkn/https/blog.mokapos.com/jangan-bertransaksi-atau-memberi-otorisasi-di-luar-channel-resmi-moka\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(0, 184, 236);\"><strong>poin J</strong></a>&nbsp;dan&nbsp;<a href=\"https://campaign.mokapos.com/JAGA/clkn/https/blog.mokapos.com/amankan-data-usaha-dan-pribadi-anda\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(0, 184, 236);\"><strong>poin A</strong></a>&nbsp;yang pertama, yuk kita ulik lebih lanjut mengenai poin J yang berhubungan dengan karyawan. Begini gambarannya.</p><blockquote><em>Anda adalah seorang pemilik warung bakso yang belum lama ini membuka cabang baru. Semakin hari, transaksi semakin bertambah banyak. Untuk memenuhi pesanan pelanggan, Anda pun merekrut beberapa karyawan. Tantangannya, sebagai pemilik bisnis, kesibukan membuat Anda tidak bisa mengurus banyak cabang dan banyak karyawan sekaligus.Salah satu risiko bisnis yang dapat terjadi ialah kelalaian karyawan yang dengan sengaja/tidak sengaja membocorkan data usaha kepada kompetitor.</em></blockquote><p>Untungnya, Anda sudah paham mengenai pentingnya memiliki sistem keamanan usaha yang kuat dan terpercaya. Untuk mencegah hal-hal yang tidak diinginkan terjadi, selain menerapkan Prosedur Standar Operasi (SOP) Karyawan, Anda juga menggunakan<strong>&nbsp;fitur Employee Management dari Moka</strong>. Apa itu fitur Employee Management?</p><p><a href=\"https://www.mokapos.com/manajemen-karyawan\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(0, 184, 236);\"><strong>Employee Management</strong></a>&nbsp;adalah aplikasi manajemen karyawan yang akan membantu setiap pemilik bisnis untuk bisa memantau operasional usaha dengan sistem yang lebih aman. Fitur ini bisa Anda manfaatkan jika berlangganan aplikasi Moka</p>', 'upload/informasi/19ede0a0aa2afe31f89f33dbdcac5ad1.jpg', '[{\"value\":\"npos\"},{\"value\":\"retail\"},{\"value\":\"netindo\"},{\"value\":\"pt netindo mediatama perkasa\"}]', 1, '2022-04-09 17:44:30'),
(4, 1, 1, 'Lindungi Aset Bisnis dengan Asuransi dari Cermati Protect', 'lindungi-aset-bisnis-dengan-asuransi-dari-cermati-protect', '<p><strong>Lindungi Aset Bisnis dengan Asuransi dari Cermati Protect</strong>:&nbsp;Di balik kelancaran operasional usaha, ternyata ada banyak hal yang perlu dipikirkan oleh para pemilik bisnis. Salah satunya ialah risiko bisnis yang kemungkinan bisa terjadi sewaktu-waktu. Apa saja contoh risiko dalam bisnis? Misalnya, kebakaran, korsleting listrik karena sambaran petir, ledakan, dan sebagainya.</p><p>Ya, risiko bisnis pada dasarnya tidak dapat dihindari. Celakanya, risiko dapat memunculkan dampak yang kurang baik bagi bisnis. Apakah Anda akan membiarkan risiko terjadi begitu saja tanpa adanya pencegahan? Nah, disinilah pentingnya asuransi untuk bisnis berperan. Apa saja manfaat memiliki asuransi bisnis?</p><ul><li>Membantu melindungi kerugian finansial atas hal-hal yang tidak diinginkan</li><li>Melindungi aset yang Anda miliki, misalnya gedung/tempat usaha</li><li>Membantu menjaga keberlangsungan bisnis</li><li>Melindungi bisnis secara keseluruhan</li></ul><p>Kenyataannya, memiliki asuransi bisnis yang tepat bukanlah hal mudah. Sekalinya mendapatkan yang tepat, Anda perlu menyanggupi persyaratan asuransi yang panjang dan sulit. Padahal, perlindungan yang dibutuhkan sangatlah sederhana.</p><p>Namun, Anda tidak perlu khawatir, kini&nbsp;<strong>Moka Connect berkolaborasi dengan Cermati Protect</strong>, sebuah&nbsp;<em>marketplace&nbsp;</em>asuransi yang menyediakan produk asuransi mikro untuk berbagai jenis bisnis, yang akan memastikan para pemilik bisnis dapat menemukan produk asuransi yang mudah dan terjangkau.</p><p>Lewat Backoffice, semua pengguna Moka pun secara eksklusif dapat memanfaatkan produk Cermati Protect yang bernama Asuransi Flexas.</p><h3><strong>Apa Itu Asuransi Flexas?</strong></h3><p>Asuransi Flexas merupakan produk eksklusif pertama yang ditawarkan Cermati Protect pada merchant Moka. Asuransi ini akan memberikan kompensasi kepada pihak tertanggung apabila terjadi kerusakan sebesar 85% pada properti mereka yang disebabkan oleh kebakaran, sambaran petir, ledakan, jatuhnya pesawat, dan asap.</p><p>Dengan jumlah kompensasi yang diberikan senilai maksimal Rp50 juta, Anda hanya perlu membayar biaya proteksi dengan harga relatif terjangkau, yakni Rp300.000 untuk satu tahun.&nbsp;</p><h3><strong>Apa Manfaat yang akan Dirasakan Merchant dengan Asuransi Ini?</strong></h3><ol><li>Produk yang eksklusif untuk Merchant Moka</li><li>Pendaftaran serba&nbsp;<em>online&nbsp;</em>yang sangat mudah. Tak perlu mengisi form yang panjang, tidak ada survei, tidak ada persyaratan khusus, tidak ada dokumen yang dibutuhkan.</li><li>Polis asuransi elektronik (<em>e-policy</em>) Anda akan segera aktif dalam waktu 24 jam setelah pembelian.</li><li>Tersedia Customer Service khusus yang melayani Merchant Moka. Apabila membutuhkan bantuan tau informasi lebih lanjut, Anda dapat menghubungi&nbsp;<a href=\"mailto:mokaprotect@cermati.com\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(0, 184, 236);\"><strong>mokaprotect@cermati.com</strong></a>.</li></ol><h3><strong>Bagaimana Cara Mendapatkan Asuransi Ini?</strong></h3><p><img src=\"https://blog.mokapos.com/hs-fs/hubfs/Lindungi%20Aset%20Bisnis%20dengan%20Asuransi%20dari%20Cermati%20Protect%20-%20registration%20flow%20(1).png?width=2400&amp;name=Lindungi%20Aset%20Bisnis%20dengan%20Asuransi%20dari%20Cermati%20Protect%20-%20registration%20flow%20(1).png\" alt=\"Lindungi Aset Bisnis dengan Asuransi dari Cermati Protect - registration flow (1)\" width=\"2400\"></p><p>Nah, apa lagi yang Anda tunggu? Yuk, lindungi aset bisnis Anda yang berharga agar keberlangsungan bisnis tetap terjaga!</p>', 'upload/informasi/e8c46f87e3302f956b670bb09425702e.png', '[{\"value\":\"npos\"},{\"value\":\"netindo\"},{\"value\":\"retail\"}]', 1, '2022-04-11 21:44:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_informasi`
--

CREATE TABLE `jenis_informasi` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jenis_informasi`
--

INSERT INTO `jenis_informasi` (`id`, `nama`, `status`, `tanggal`) VALUES
(1, 'Berita', 1, '2022-04-14 19:47:01'),
(2, 'Karir', 1, '2022-04-09 22:10:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id`, `nama`, `slug`, `status`, `tanggal`) VALUES
(3, 'Hardware', 'hardware', 1, '2022-04-21 17:30:25'),
(4, 'Software', 'software', 1, '2022-04-21 17:30:17'),
(108, 'Software & Hardware', 'hardware-software', 1, '2022-04-21 17:30:10'),
(109, 'Other', 'other', 1, '2022-04-22 07:23:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_informasi`
--

CREATE TABLE `kategori_informasi` (
  `id` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `status` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kategori_informasi`
--

INSERT INTO `kategori_informasi` (`id`, `nama`, `status`, `tanggal`) VALUES
(1, 'Retur Penjualan', 1, '2022-04-07 20:15:32'),
(2, 'Retur Pembelian', 1, '2022-04-07 20:15:56'),
(3, 'Business Insight', 1, '2022-04-07 20:16:03'),
(4, 'Teknologi', 1, '2022-04-07 20:17:27'),
(5, 'Product Knowledge', 1, '2022-04-07 20:22:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `layanan`
--

CREATE TABLE `layanan` (
  `id` int(11) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `deskripsi` longtext NOT NULL,
  `gambar` text NOT NULL,
  `icon` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `layanan`
--

INSERT INTO `layanan` (`id`, `judul`, `deskripsi`, `gambar`, `icon`, `status`, `tanggal`) VALUES
(2, 'IT Consulting', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. cu sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies ne, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet n, vu eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aen li, porttitor eu, consequat vitae, eleifend ac, enim.</p><ul><li>Cost of Supplies and Equipment</li><li>Bribed Autor Nisi Elit Volume</li><li>Cost of Supplies and Equipment</li><li>Change the Volume of Expected</li><li>Easy to Customer Services</li><li>Good Quality Products Services</li></ul><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. cu sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies ne, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet n, vu eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aen li, porttitor eu, consequat vitae, eleifend ac, enim.</p><h2>What Benefit You Will Get</h2><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. cu sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies ne, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet n, vu eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aen li, porttitor eu, consequat vitae, eleifend ac, enim.</p><p><img src=\"https://templates.hibootstrap.com/techex/default/assets/images/services/service-details-img1.jpg\" alt=\"Images\"></p><p><img src=\"https://templates.hibootstrap.com/techex/default/assets/images/services/service-details-img2.jpg\" alt=\"Images\"></p><p>Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet.Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet.Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet. li, porttitor eu, consequat vitae, eleifend ac, enim.</p><h2>Our Working Proccess</h2><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. cu sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies ne, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet n, vu eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aen li, porttitor eu, consequat vitae, eleifend ac, enim</p>', 'upload/layanan/4def6db3536bb448fe0357837f42f922.jpg', 'flaticon-consultant', 1, '2022-04-12 17:00:41'),
(3, 'Cloud Computing', '', 'upload/layanan/1e6479fd816bf8489cd48356632d1a15.jpg', 'flaticon-consulting', 1, '2022-04-21 20:54:27'),
(4, 'Web Development', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. cu sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies ne, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet n, vu eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aen li, porttitor eu, consequat vitae, eleifend ac, enim.</p><ul><li>Cost of Supplies and Equipment</li><li>Bribed Autor Nisi Elit Volume</li><li>Cost of Supplies and Equipment</li><li>Change the Volume of Expected</li><li>Easy to Customer Services</li><li>Good Quality Products Services</li></ul><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. cu sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies ne, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet n, vu eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aen li, porttitor eu, consequat vitae, eleifend ac, enim.</p><h2>What Benefit You Will Get</h2><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. cu sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies ne, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet n, vu eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aen li, porttitor eu, consequat vitae, eleifend ac, enim.</p><p><img src=\"https://templates.hibootstrap.com/techex/default/assets/images/services/service-details-img1.jpg\" alt=\"Images\"></p><p><img src=\"https://templates.hibootstrap.com/techex/default/assets/images/services/service-details-img2.jpg\" alt=\"Images\"></p><p>Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet.Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet.Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet. li, porttitor eu, consequat vitae, eleifend ac, enim.</p><h2>Our Working Proccess</h2><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. cu sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies ne, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet n, vu eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aen li, porttitor eu, consequat vitae, eleifend ac, enim.</p>', 'upload/layanan/90a77f97e13d9668ad727213bdb5ba61.jpg', 'flaticon-web-development', 1, '2022-04-12 17:08:57'),
(5, 'Business Reform', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. cu sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies ne, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet n, vu eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aen li, porttitor eu, consequat vitae, eleifend ac, enim.</p><ul><li>Cost of Supplies and Equipment</li><li>Bribed Autor Nisi Elit Volume</li><li>Cost of Supplies and Equipment</li><li>Change the Volume of Expected</li><li>Easy to Customer Services</li><li>Good Quality Products Services</li></ul><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. cu sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies ne, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet n, vu eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aen li, porttitor eu, consequat vitae, eleifend ac, enim.</p><h2>What Benefit You Will Get</h2><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. cu sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies ne, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet n, vu eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aen li, porttitor eu, consequat vitae, eleifend ac, enim.</p><p><img src=\"https://templates.hibootstrap.com/techex/default/assets/images/services/service-details-img1.jpg\" alt=\"Images\"></p><p><img src=\"https://templates.hibootstrap.com/techex/default/assets/images/services/service-details-img2.jpg\" alt=\"Images\"></p><p>Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet.Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet.Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet. li, porttitor eu, consequat vitae, eleifend ac, enim.</p><h2>Our Working Proccess</h2><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. cu sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies ne, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet n, vu eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aen li, porttitor eu, consequat vitae, eleifend ac, enim.</p>', 'upload/layanan/df1625268b5b46fac7b52ca44e8a957d.jpg', 'flaticon-stats', 1, '2022-04-13 22:44:06'),
(6, 'Infrastructure', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. cu sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies ne, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet n, vu eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aen li, porttitor eu, consequat vitae, eleifend ac, enim.</p><ul><li>Cost of Supplies and Equipment</li><li>Bribed Autor Nisi Elit Volume</li><li>Cost of Supplies and Equipment</li><li>Change the Volume of Expected</li><li>Easy to Customer Services</li><li>Good Quality Products Services</li></ul><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. cu sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies ne, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet n, vu eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aen li, porttitor eu, consequat vitae, eleifend ac, enim.</p><h2>What Benefit You Will Get</h2><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. cu sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies ne, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet n, vu eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aen li, porttitor eu, consequat vitae, eleifend ac, enim.</p><p><img src=\"https://templates.hibootstrap.com/techex/default/assets/images/services/service-details-img1.jpg\" alt=\"Images\"></p><p><img src=\"https://templates.hibootstrap.com/techex/default/assets/images/services/service-details-img2.jpg\" alt=\"Images\"></p><p>Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet.Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet.Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet. li, porttitor eu, consequat vitae, eleifend ac, enim.</p><h2>Our Working Proccess</h2><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. cu sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies ne, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet n, vu eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aen li, porttitor eu, consequat vitae, eleifend ac, enim.</p>', 'upload/layanan/29ab4dad06738a4adf30e84d82ff2d40.jpg', 'flaticon-structure', 1, '2022-04-12 17:11:04'),
(7, 'Data Analysis', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. cu sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies ne, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet n, vu eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aen li, porttitor eu, consequat vitae, eleifend ac, enim.</p><ul><li>Cost of Supplies and Equipment</li><li>Bribed Autor Nisi Elit Volume</li><li>Cost of Supplies and Equipment</li><li>Change the Volume of Expected</li><li>Easy to Customer Services</li><li>Good Quality Products Services</li></ul><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. cu sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies ne, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet n, vu eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aen li, porttitor eu, consequat vitae, eleifend ac, enim.</p><h2>What Benefit You Will Get</h2><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. cu sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies ne, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet n, vu eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aen li, porttitor eu, consequat vitae, eleifend ac, enim.</p><p><img src=\"https://templates.hibootstrap.com/techex/default/assets/images/services/service-details-img1.jpg\" alt=\"Images\"></p><p><img src=\"https://templates.hibootstrap.com/techex/default/assets/images/services/service-details-img2.jpg\" alt=\"Images\"></p><p>Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet.Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet.Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet. li, porttitor eu, consequat vitae, eleifend ac, enim.</p><h2>Our Working Proccess</h2><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. cu sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies ne, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet n, vu eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aen li, porttitor eu, consequat vitae, eleifend ac, enim.</p>', 'upload/layanan/d87409ceceb583b753bfc76d6da3e581.jpg', 'flaticon-data-analytics', 1, '2022-04-12 17:11:51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lokasi`
--

CREATE TABLE `lokasi` (
  `id` int(11) NOT NULL,
  `alamat` text NOT NULL,
  `longitude` varchar(50) NOT NULL,
  `latitude` varchar(50) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `lokasi`
--

INSERT INTO `lokasi` (`id`, `alamat`, `longitude`, `latitude`, `nama`) VALUES
(1, 'Padasuka, Kec. Cimahi Tengah, Kota Cimahi, Jawa Barat 40526, Indonesia', '107.530086', '-6.871153000000001', 'Netindo Cimahi'),
(2, 'Jl. Ibrahim Adjie No.47, Babakan Surabaya, Kec. Kiaracondong, Kota Bandung, Jawa Barat 40283, Indonesia', '107.6443329', '-6.911499', 'Netindo Bandung');

-- --------------------------------------------------------

--
-- Struktur dari tabel `model`
--

CREATE TABLE `model` (
  `id` int(11) NOT NULL,
  `kategori` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `warna` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `model`
--

INSERT INTO `model` (`id`, `kategori`, `nama`, `slug`, `warna`, `status`, `tanggal`) VALUES
(1, 4, 'RETAIL', 'retail', '#6f42c1', 1, '2022-04-22 07:22:39'),
(2, 4, 'FINTECH', 'fintech', '#00a2f3', 1, '2022-04-22 07:22:36'),
(3, 4, 'ECOMMERCE', 'ecommerce', '#2c31ff', 1, '2022-04-22 07:22:33'),
(14, 4, 'OTHER', 'other', '#20c997', 1, '2022-04-22 07:22:27'),
(15, 4, 'RESTO', 'resto', '#fd7e14', 1, '2022-04-22 07:22:24'),
(16, 4, 'COMPANY PROFILE', 'company-profile', '#ffc107', 1, '2022-04-22 07:22:21'),
(17, 4, 'AKADEMIK', 'akademik', '#198754', 1, '2022-04-22 07:22:17'),
(18, 4, 'CROWDFUNDING', 'crowdfunding', '#dc3545', 1, '2022-04-22 07:22:06'),
(25, 3, 'MONITOR', 'monitor', '#3464b2', 1, '2022-04-22 08:45:43'),
(26, 3, 'PRINTER', 'printer', '#0aff64', 1, '2022-04-22 08:49:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `paket`
--

CREATE TABLE `paket` (
  `id` int(11) NOT NULL,
  `model` text NOT NULL,
  `kategori` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `deskripsi` longtext NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `harga` varchar(50) NOT NULL,
  `harga_coret` varchar(50) NOT NULL,
  `varian` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`varian`)),
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `paket`
--

INSERT INTO `paket` (`id`, `model`, `kategori`, `nama`, `deskripsi`, `gambar`, `status`, `harga`, `harga_coret`, `varian`, `tanggal`) VALUES
(21, '[\"25\",\"26\"]', 3, 'Paket Starter Smart', 'Paket ekonomis untuk mulai maju', 'upload/paket/de477b26cf579f5a46b479734529dbc6.png', 1, '4263000', '4000000', '[{\"value\":\"12 + 1 bulan bonus langganan majoo starter\"},{\"value\":\"Advan GTAB 8\"},{\"value\":\"Printer Bluetooth 58mm\"},{\"value\":\"Standee Compact\"},{\"value\":\"5 struk thermal\"},{\"value\":\"Instal dan setup\"}]', '2022-04-22 09:37:31'),
(22, '[\"25\"]', 3, 'Paket Advance Galaxy', 'Paket terbaik bisnis makin maju', 'upload/paket/04a35c95349560aa9faacd257a6aaede.png', 1, '7603000', '', '[{\"value\":\"bulan bonus langganan majoo Advance\"},{\"value\":\"Tablet Samsung A7 Lite 8.7\\\" atau Advan Sketsa 10.1\"},{\"value\":\"Printer Bluetooth 58mm\"},{\"value\":\"Standee Neo 360\\u00b0\"},{\"value\":\"5 struk thermal\"},{\"value\":\"Instal dan setup\"}]', '2022-04-22 09:37:49'),
(23, '[\"26\"]', 3, 'Paket Advance Metro', 'Paket all-in-one modern', 'upload/paket/57f984c10671fb3f6a8582e02c572f21.png', 1, '7550000', '', '[{\"value\":\"12 + 1 bulan bonus langganan majoo Advance\"},{\"value\":\"Imin D1\"},{\"value\":\"Printer 58mm All in One\"},{\"value\":\"5 struk thermal\"},{\"value\":\"Instal dan setup\"}]', '2022-04-22 09:37:40'),
(59, '[\"1\"]', 4, 'RETAIL', 'PAKET TERBAIK UNTUK BISNIS ANDA MAKIN MAJU', 'upload/paket/39099efaa9216f089f57b5c8537d0059.png', 1, '15000000', '', '[{\"value\":\"komputer satu paket merk hp\"},{\"value\":\"Instal dan setup\"},{\"value\":\"Printer Bluetooth 58mm\"},{\"value\":\"Printer 58mm All in One\"}]', '2022-04-22 09:31:42'),
(60, '[\"26\"]', 3, 'Ecommerce', 'Paket langganan lengkap mengelola bisnis online', 'upload/paket/a7cbf8c4f7306d454a99faa635c4982c.png', 1, '3588000', '2988000', '[{\"value\":\"12 + 1 bulan bonus langganan majoo starter\"},{\"value\":\"Printer Bluetooth 58mm\"},{\"value\":\"Instal dan setup\"},{\"value\":\"Tablet Samsung A7 Lite 8.7\\\" atau Advan Sketsa 10.1\"},{\"value\":\"Standee Compact\"},{\"value\":\"Advan GTAB 8\"}]', '2022-04-22 09:31:33'),
(61, '[\"25\",\"26\"]', 3, 'Starter Maxima', 'Paket bundling majoo starter terintegrasi dengan GrabFood', 'upload/paket/112f0fd62a8c4dabc00058c782ed7091.png', 1, '5000', '', '[{\"value\":\"12 + 1 bulan bonus langganan majoo starter\"},{\"value\":\"Printer Bluetooth 58mm\"}]', '2022-04-22 09:31:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `partner`
--

CREATE TABLE `partner` (
  `id` int(11) NOT NULL,
  `model` text NOT NULL,
  `nama` varchar(100) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `partner`
--

INSERT INTO `partner` (`id`, `model`, `nama`, `gambar`, `link`, `status`, `tanggal`) VALUES
(5, '[\"1\",\"3\",\"15\"]', 'Rumah Makan Cibiuk', 'upload/partner/cd4cfbf75d17348dbb1227ac823266cb.png', 'https://cibiuk.com', 1, '2022-04-10 16:54:00'),
(6, '[\"1\",\"3\"]', 'Indokids', 'upload/partner/8a16456722e6557f835d1391827cb87d.png', 'https://indokids.co.id/', 1, '2022-04-14 22:41:34'),
(7, '[\"1\"]', 'Narma Toserba', 'upload/partner/83680142329bbd7276a6b158152382ab.png', 'https://narma.co.id', 1, '2022-04-15 17:12:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengaturan`
--

CREATE TABLE `pengaturan` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `longitude` varchar(100) NOT NULL,
  `latitude` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telepon` text NOT NULL,
  `gambar` text NOT NULL,
  `slogan` text NOT NULL,
  `icon` varchar(100) NOT NULL,
  `seo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengaturan`
--

INSERT INTO `pengaturan` (`id`, `nama`, `alamat`, `longitude`, `latitude`, `email`, `telepon`, `gambar`, `slogan`, `icon`, `seo`) VALUES
(1, 'Netindo Mediatama Perkasa', '', '107.5311649', '-6.8710632', 'netindo@gmail.com', '[\"081223165037\",\"085324544191\"]', 'upload/pengaturan/a4ba1d7171510235ca07330c5a454d58.png,upload/pengaturan/1b73ec90c65c35d92ec47f58eafc3938.png', 'Aplikasi Paling Lengkap Pendukung UMKM Lebih Maju', 'upload/favicon.ico', '[{\"value\":\"netindo mediatama perkasa\"},{\"value\":\"netindo\"},{\"value\":\"perusahaan software bandung\"},{\"value\":\"perusahaan teknologi update\"},{\"value\":\"point of sale\"},{\"value\":\"pos\"},{\"value\":\"aplikasi kasir\"},{\"value\":\"perusahaan teknologi terbaik\"},{\"value\":\"pt netindo mediatama perkasa\"},{\"value\":\"pt netindo\"}]');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id`, `username`, `password`, `status`, `tanggal`) VALUES
(1, 'netindo', '$2y$10$SX17ODK2eQF8PBniYQnjIeS9mucNnwJFVEEYwCy6a3QhTdPiZ2vnS', 1, '2022-03-22 18:05:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengunjung`
--

CREATE TABLE `pengunjung` (
  `id` int(11) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `browser` varchar(50) NOT NULL,
  `platform` varchar(50) NOT NULL,
  `info` text NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `platform`
--

CREATE TABLE `platform` (
  `id` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `gambar` text NOT NULL,
  `status` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `platform`
--

INSERT INTO `platform` (`id`, `nama`, `gambar`, `status`, `tanggal`) VALUES
(2, 'WEBSITE', 'upload/platform/f9ab40fd3d87f6937b98b81a1f4ac0d1.png', 1, '2022-04-14 19:14:31'),
(3, 'DESKTOP', 'upload/platform/4cd9554f9c7c978a220a26c75d14f642.png', 1, '2022-03-21 21:15:49'),
(4, 'ANDROID', 'upload/platform/38ee63b08ed40d11818ccefb13a0a765.png', 1, '2022-03-21 21:15:40'),
(5, 'IOS', 'upload/platform/1d19be7eb8187eec401fd75136e48de7.png', 1, '2022-04-20 10:06:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `platform` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`platform`)),
  `kategori` int(11) NOT NULL,
  `model` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `deskripsi` longtext NOT NULL,
  `gambar` text NOT NULL,
  `status` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id`, `platform`, `kategori`, `model`, `nama`, `slug`, `deskripsi`, `gambar`, `status`, `tanggal`) VALUES
(120, '[\"2\",\"4\",\"5\"]', 4, 14, 'Ustadz Evie Effendi', 'ustadz-evie-effendi', '<p>Kini anda yang sebagai public figur dapat menggunakan apps ini untuk media promosi dan menyimpan kegiatan anda dengan mudah.</p>', 'upload/produk/c6ca9ef0312dbf5b81928850c002735e.png,upload/produk/6d1edbe2a7811d4244f7091e3fb4aa7c.avif', 1, '2022-04-22 07:55:49'),
(122, '[\"2\",\"4\"]', 4, 15, 'Rumah Makan Cibiuk', 'rumah-makan-cibiuk', '<p><span style=\"background-color: transparent;\">Point of Sale adalah</span>&nbsp;salah satu layanan penting bagi para pelaku bisnis untuk mempermudah transaksi. Layanan ini merupakan satu titik yang menandakan bahwa transaksi antara penjual dan pembeli sudah selesai. Penjual sudah menerima sejumlah uang dan pembeli sudah mendapatkan barang yang diinginkan.</p>', 'upload/produk/fb7b3a3c30ad39a60c35d7b9604aa8ed.png,upload/produk/f56a411901d6edbc3fc63c5bf70d243d.png,upload/produk/ecf7fbe2d45b62eb6ee58eaf4b3c6766.png,upload/produk/77bcb5bbf09d06ce02c7561554502835.png', 1, '2022-04-22 08:29:37'),
(123, '[\"2\",\"3\",\"4\",\"5\"]', 4, 14, 'Aplikasi Karyawan', 'aplikasi-karyawan', '<p>Aplikasi untuk mengatur karyawan dengan pin/password level dan hak akses. Laporan&nbsp;absensi karyawan&nbsp;lengkap dengan foto; jam masuk jam pulang; dan total jam kerja, serta otorisasi persetujuan absensi karyawan oleh atasan. Kelola komisi mudah sampai dengan multi komisi (satu transaksi dibagi beberapa komisi), laporan komisi lengkap berdasarkan transaksi, produk dan karyawan, pembayaran komisi dapat diposting ke akun pengeluaran.</p>', 'upload/produk/a77ffc11c8444713b532456b81fa23af.webp,upload/produk/a86cacddeb4313792f3591b512048b9c.jpg,upload/produk/48642c9ff72dc5581c6db7ae0d920601.jpg', 1, '2022-04-22 07:42:54'),
(124, '[\"2\",\"3\",\"4\",\"5\"]', 4, 14, 'Aplikasi Inventori', 'aplikasi-inventori', '<p>Merupakan aplikasi untuk mengatur stok barang dan bahan, seting harga modal, harga jual dan resep, dimana harga satu produk untuk banyak cabang dan bisa beda. Fungsi stok seperti PO, mutasi stok antar cabang dan gudang, stok opname, stok produksi bahan baku, dan stok terbuang. Lengkap dengan laporan analisa perputaran stok dan belanja modal, upload produk mudah secara masal melalui file xls, serta notifikasi apabila stok dibawah minimum.</p>', 'upload/produk/ff95e28d816dc3b244cc078b3efeacb9.webp', 1, '2022-04-22 07:42:45'),
(125, '[\"2\",\"3\",\"4\",\"5\"]', 3, 14, 'Aplikasi CRM', 'aplikasi-crm', '<p>Aplikasi CRM&nbsp;lengkap mengatur promo, voucher dan poin yang bikin pelanggan loyal makin banyak transaksi. Lengkap dengan fitur marketing campain berupa sms dan email marketing untuk membuat pelanggan datang kembali. Mengelola data pelanggan (hape, email, alamat) dan set promo berdasarkan group pelanggan serta laporan lengkap analisa pelanggan (total transaksi, produk kesukaan, tingkat kedatangan, dll.).</p>', 'upload/produk/e1fac0f6f989e56bf8d789a7a64ee114.webp', 1, '2022-04-22 07:42:40'),
(126, '[\"2\",\"3\",\"4\",\"5\"]', 4, 14, 'Gracia', 'gracia', '<p>Aplikasi akunting&nbsp;untuk mencatat aktifitas membuat invoice dan faktur, mencatat biaya dan pengeluaran, kas dan bank, daftar akun dan buku besar, laporan keuangan seperti neraca, rugi laba, arus kas, serta dilengkapi lebih dari 30 jenis laporan penjualan dan keuangan detil dengan grafik dan tabel lengkap, laporan dapat di download dalam bentuk xls.</p>', 'upload/produk/6daa4bf449f99ef06364f371c9db7416.png,upload/produk/9956f08c1153da862af16620b8289cf8.png,upload/produk/4bb08fe3ae4e84bcdb1c0ad1039e112f.png,upload/produk/94c8c0ffb60b8d09f92e81f8b7306d0e.png', 1, '2022-04-22 08:39:30'),
(127, '[\"2\",\"3\",\"4\",\"5\"]', 4, 16, 'Zycus: The Pioneer in Cognitive Procurement', 'zycus-the-pioneer-in-cognitive-procurement', '<p><span style=\"background-color: transparent;\">Point of Sale adalah</span>&nbsp;salah satu layanan penting bagi para pelaku bisnis untuk mempermudah transaksi. Layanan ini merupakan satu titik yang menandakan bahwa transaksi antara penjual dan pembeli sudah selesai. Penjual sudah menerima sejumlah uang dan pembeli sudah mendapatkan barang yang diinginkan.</p>', 'upload/produk/5848617d16d36aeec75876bee4a80068.png,upload/produk/e3cd45cb3fb8c14b006d5e2b3b37e586.png,upload/produk/970a205c84d2f4772e72a0559c4a9ae1.png', 1, '2022-04-22 07:44:20'),
(135, '[\"3\",\"4\"]', 4, 15, 'LUMBUNG PADI', 'lumbung-padi', '<p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'upload/produk/a87762ef7687c57c13e942a6b54daaf8.png', 1, '2022-04-22 13:14:23'),
(136, '[\"3\",\"4\"]', 4, 15, 'CIBIUK', 'cibiuk', '<p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'upload/produk/4d6c2a26e94b53f4fa982513a5149350.png', 1, '2022-04-22 13:14:28'),
(137, '[\"3\",\"4\"]', 4, 1, 'NSB FROZEN FOOD', 'nsb-frozen-food', '<p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'upload/produk/34e4606101d117865f6b7f46d42b54a8.png', 1, '2022-04-22 13:14:32'),
(138, '[\"3\",\"4\"]', 4, 1, 'RUMAH BEKU', 'rumah-beku', '<p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'upload/produk/09840962bcd87d2a99377c5bc9dcab5f.png', 1, '2022-04-22 13:13:51'),
(139, '[\"3\",\"4\"]', 4, 1, 'SELADA FROZEN FOOD', 'selada-frozen-food', '<p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'upload/produk/f5ada6c8f8087bfdcbff4b06291f54a6.png', 1, '2022-04-22 13:13:59'),
(140, '[\"3\",\"4\"]', 4, 1, 'MISKI MART', 'miski-mart', '<p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'upload/produk/7d0cd6833e4ffa046f9511fabbc3c74b.png', 1, '2022-04-22 13:14:07'),
(141, '[\"3\",\"4\"]', 4, 1, 'KAIRO', 'kairo', '<p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'upload/produk/a93552fff519a9e3d99d33c04c872e28.png', 1, '2022-04-22 13:14:13'),
(142, '[\"3\",\"4\"]', 4, 1, 'CV DHARMA MULIA MAKMUR', 'cv-dharma-mulia-makmur', '<p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'upload/produk/2b3b4d814262eea313473f83dac97098.png,upload/produk/be509da5272622822e8c8a8ae9eaa7c4.png,upload/produk/03546f0b625f521d57dc009f93a25cf3.png,upload/produk/0e2dea6de8a9c87429c8e449e43e4846.png', 1, '2022-04-22 13:13:25'),
(143, '[\"3\",\"4\"]', 4, 1, 'BIANT FROZEN FOOD', 'biant-frozen-food', '<p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'upload/produk/39c7141177c73f1e8ee4e80cfb4e9c67.png,upload/produk/07887005c82ba8b926e1cc69b760ec00.png,upload/produk/d81c815ecc9277bbb4fc79058f3473b2.png,upload/produk/8956f9da9281ac80bfa8c688bb808852.png', 1, '2022-04-22 13:13:32'),
(144, '[\"3\",\"4\"]', 4, 1, 'GIANDY HPL', 'giandy-hpl', '<p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'upload/produk/eeee5c631c0d8aecd55b70164fc6e439.png,upload/produk/baa9b2acaca0124456951c3c9c31a07c.png,upload/produk/1a6063693cbb06d0d8e0dd39c2ca5097.png,upload/produk/54f1a3acd7db237652586c3b40a978fd.png', 1, '2022-04-22 13:13:39'),
(145, '[\"3\",\"4\"]', 4, 1, 'TRIASMART', 'triasmart', '<p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'upload/produk/fdf61458e79174e73b9058ab528a47f7.png,upload/produk/9ae043e076cc7e483347f0af299a935f.png,upload/produk/b34df087f2df85d5590ebe4007fd17d5.png,upload/produk/d70832b85589d23d78003967ffe5c9a5.png', 1, '2022-04-22 13:13:45'),
(146, '[\"3\",\"4\"]', 3, 1, 'TRIASMART', 'triasmart', '<p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'upload/produk/7bf1943e270ebe8e40b23f294dae453c.png,upload/produk/514173de0f14dcd8ab06f96ecb611ba9.png,upload/produk/80fa6f29c2fdb889781faaca8a990118.png,upload/produk/59c55d6d683e128a5723ec38aa9bcc45.png', 1, '2022-04-22 13:13:14'),
(147, '[\"3\",\"4\"]', 4, 1, 'NOV CLOTHING', 'nov-clothing', '<div class=\"ql-code-block-container\" spellcheck=\"false\"><div class=\"ql-code-block\">Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</div></div>', 'upload/produk/6c902512332255702a04e64590b13e67.png,upload/produk/9004e47b9b457bffad465d0ed37c71df.png,upload/produk/04d7c1b5af2b114c83e3d40a84144775.png,upload/produk/846642bac5b6e89b0db036577f51b6d7.png', 1, '2022-04-22 10:32:39'),
(148, '[\"3\"]', 4, 16, 'SMK N 14 BANDUNG', 'smk-n-14-bandung', '<div class=\"ql-code-block-container\" spellcheck=\"false\"><div class=\"ql-code-block\" data-language=\"plain\">Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</div></div>', 'upload/produk/5df3c162e65f031aa2f0c38a489b5ff9.png,upload/produk/e3e495aeffb4780ef415454da5487d0d.png,upload/produk/e8bdbbc96921d809a8efed3a2b71c225.png,upload/produk/fdf184822f3ddc2e0fcfa8d9cd01c5e5.png', 1, '2022-04-22 13:13:06'),
(149, '[\"3\",\"4\"]', 4, 1, 'INDOKIDS', 'indokids', '<p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'upload/produk/6408d0880b555ba04afcccb7d12798e1.png,upload/produk/350ca08fb3d72ff93af2178031377c37.png,upload/produk/a9f5eaf6dc4aa100037f69e4c61a70c9.png,upload/produk/9603c6492409bdf8cac2c3ce59c321bf.png', 1, '2022-04-22 13:12:56'),
(150, '[\"3\",\"4\"]', 4, 15, 'JOGLO ABAH RESTO & CAFFE', 'joglo-abah-resto-caffe', '<div class=\"ql-code-block-container\" spellcheck=\"false\"><div class=\"ql-code-block\">Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</div></div>', 'upload/produk/e87072537c50cd38af06d115c5c07e4b.png,upload/produk/31b70af1221d9a91f7a79464995c95ea.png,upload/produk/1ac9fd08f614c2def6a5d88f2020aa23.png', 1, '2022-04-22 10:32:15'),
(151, '[\"3\",\"4\"]', 4, 1, 'HANIF GROSIR', 'hanif-grosir', '<div class=\"ql-code-block-container\" spellcheck=\"false\"><div class=\"ql-code-block\">Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</div></div>', 'upload/produk/956a82181f6b1313abd0852718e78b53.png,upload/produk/455a9820b961f1a2885403a053d2f279.jpg,upload/produk/d0045f115ab8e8798eda78e1d0603bb9.jpg,upload/produk/13c1f29bba2510b4bc208a44e6a27945.jpg', 1, '2022-04-22 10:28:14'),
(152, '[\"3\",\"4\"]', 4, 1, 'TOFU BANDUNG', 'tofu-bandung', '<div class=\"ql-code-block-container\" spellcheck=\"false\"><div class=\"ql-code-block\">Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</div></div>', 'upload/produk/3bddb9ede0598362ca229312fe41047b.png,upload/produk/c53cf72af9346258ff9e03e1671cf41b.png,upload/produk/634f278e4d73b11051f478ca29f21dad.png,upload/produk/dfbede8523f148650e123a78b67a9d1c.png', 1, '2022-04-22 10:26:36'),
(153, '[\"2\",\"3\",\"4\"]', 4, 2, 'PT THAIBAH MULIA INTERNASIONAL', 'pt-thaibah-mulia-internasional', '<div class=\"ql-code-block-container\" spellcheck=\"false\"><div class=\"ql-code-block\">Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</div></div>', 'upload/produk/24dce5efce691eb64ffa65944b787c10.png,upload/produk/bbe27bb800ce7b1307bf14f9e6d51047.png,upload/produk/61eaecb42c5afd40577a9e9151780cdd.png,upload/produk/ab410bcc1ba33c7ab08f87ff3e9e9dfb.png', 1, '2022-04-22 10:26:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `section`
--

CREATE TABLE `section` (
  `id` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `deskripsi` longtext NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `section`
--

INSERT INTO `section` (`id`, `judul`, `deskripsi`, `gambar`, `tanggal`) VALUES
(1, 'Kebijakan_Privasi', '<h2><img src=\"data:image/x-icon;base64,AAABAAMAEBAAAAEAIABoBAAANgAAACAgAAABACAAKBEAAJ4EAAAwMAAAAQAgAGgmAADGFQAAKAAAABAAAAAgAAAAAQAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADx99Pw4ZPL9NmXy9jN19NYzefo3AAAAAAAAAAAAAAAAM4X1GTNm8ow0X/PONXXz7jaA9P02g/X9N2Dx/Thf8fwze/X9Mn30/zNs8/80ePP/NHf2jQAAAAAAAAAAKXr1GTN/9eMzgPT/M3Tz/zR29P80fPX/NIH1/zN+9P8zZfP9MYT2/TGI9v8yffT/M3j0/zN59ZoAAAAAAAAAADN59ocygfX/MoX1/zJ99P8zdPP/NHb0/zN69P8yhPX/Mnv1/TGC9v0un/n/Lpz5/zJz8/8yd/WaAAAAAAAAAAAzcPXDMYD1/zCN9v8xhfX/MXn0/zNx8/8yd/T/MYr2/zGD9v00XPL9MnHz/zJ+9f8zdfP/M3f1mgAAAAAAAAAAMmrz2jF99f8vnfn/LqD5/y6a+P8xdfT/MnX0/y+b+P8vl/n9NUfw/TVT8P80YfH/M3Tz/zRw85kAAAAAAAAAADN19N4zZvL/MIP1/yym+v8unPrtMoD0/zNo8v8wj/f/K7T8/TRe8v0zWvH/M2by/zNu8/80cPOZAAAAAAAAAAAzgPXdNFXw/zRX8fU0ZPWFNG7zmTR69P80X/H/NFzx/zNq8/0wivf9Lpj4/zFx8/8zY/L/NWTzmQAAAAAAAAAAMoP1TDNq80EzVe4PAAAAADN685czdfP/NU7v/zVP7/80WvL9Lpr5/Syp+v8wg/X/MnHz/zRm85kAAAAAQGD/CDdz+jM1ffs/AAAAAAAAAAAzffWXNID0/zRU8P80XPD/NGHy/TCD9v0vnvj/MYz2/zKE9f8zg/WaNF30djVf8u4zavP+M3r03wAAAAAAAAAAM3HzlzN38/8zdfP/NG7z/zN69f0zZvP9MYb2/zCI9v8yffT/M3r06jRu8/40WvD/M3Lz/zR89eAAAAAAAAAAADNi8ZczcPP/M23y/zVh8f80bvT9NFjy/TRW8P80VvD/NGby/zN49P80evT/NFvw/zRn8v80ZvLcAAAAAAAAAAAzdfWXM3v0/zN38/80YPH/NGHy/TNv9P0zaPL/M2Ty/zRw8/80efT/NH/0/zR89P80VfD/NU/xxgAAAAAAAAAAMoT3mTJ39P8zdfP/M4D0/zNl8/0zbfP9LKf6/zCC9f8zcPT/NHDz/zNu8v8zdPP/NGny/zRB740AAAAAAAAAAC6f+JoyfPT/MXn0/zGI9f8xdvX9NF7y/S2l+f8wjvb/MoH0/zNs8v81XvH/NGny/zNu8+ozM+4eAAAAAAAAAAA0cPaNM3n0/zJ49P8unvj/Lab7/TRU8vgyePb5MYf3+TJ99vkzfPX2NFzx3DVg8po2bPchAAAAAAAAAAAAAAAAMmTyPTRv9eI0XfL5MnX1+TCI+PUAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAKAAAACAAAABAAAAAAQAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEWI9fpDc/P7P1/y+zxj8vs5ZfP2N2nz5TR19cg0efaTLnb2HAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADlV/wk0V/VJNlz0ijVh9bM2afPTNnXz6Dl99fo5gfX7OYL0+zmB9fs7XvL7Ol3x+zpi8vs6ZvL6NHv2/DOA9P80cfL/M17x/zRe8f8zZvH/NHDz/zN18/80e/fBAAD/AQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACA/wI0gfdjM3r14DRZ8v00WPH+NGby/zN38/8zfPT/NID0/zSC9f80hPX/NIT1/zRs8v80VvD/NVnw/zVd8vw0dfX8M370/zOD9P8zcfP/M2Ly/zRl8v8zb/P/NHTz/zRy9fc6UfMWAAAAAAAAAAAAAAAAAAAAAAAAAAAAgP8CM4X4kjN99v0zgPT/M3zz/zNt8v8zc/P/NHXz/zR59P80fPX/NID1/zSC9f80g/X/NIL0/zN28/80WfD/NFzy/DVx9fwyhvX/MoT1/zJ+9P8ycfP/M3n0/zR99P80gPT/M4D1/TSA8ywAAAAAAAAAAAAAAAAAAAAAAAAAAC9+92EzgvX9M3r0/zKC9P8zhPT/M330/zN08/80dPT/NHX0/zR59P80ffX/NID1/zSA9f8zfvT/M4P0/zN48/80ZfT8M3f1/DCM9v8xh/X/MoP1/zJ79P8yevX/M3v1/zN79P8zevX+NID2NgAAAAAAAAAAAAAAAAAAAAAkbf8HM3323DOA9P8ygPX/MoT1/zKE9f8zg/T/MnX0/zN08/80dPP/NHX0/zR59P80ffT/M3r0/zKC9f8yg/T/M4P0/zNt9PwzdvX8L5b3/zCO9/8xifb/MYT1/zJ79P8yePT/M3Hz/zR09f4zffY3AAAAAAAAAAAAAAAAAAAAADZ19z0zd/T+M3r0/zCK9v8xiPX/MoT1/zKE9f8xevT/MnX0/zN08/80dPP/NHX0/zN39P8ze/T/Mob1/zKE9f8yg/T/M3j1/DN09fwuovn/L5f5/y+X+P8vm/n/MJD3/zJ59P8zavP/M3D1/i6G9jcAAAAAAAAAAAAAAAAAAAAANHP2djNy8/4zc/T/MJH3/zCL9v8xiPX/MoX1/zF+9f8xePT/MnX0/zN08/8zc/P/NGjy/zGG9v8xivb/Mob1/zKE9f8yfvb8M2r0/DGH9v8uovr/LK37/y2m+v8unvn/MYz2/zRc8P8yc/X+M5D2NwAAAAAAAAAAAAAAAAAAAAA1dPeaM2ry/zNk8v8vmvj/MJP3/zCN9/8xivb/MIn2/zF+9f8xePT/MnT0/zNr8v8zYPH/MI/2/zCP9/8xivb/Mob1/zKD9/w0YfP8M2jy/zJ19P8uk/j/L5P3/zGH9v8zgPT/NGfx/zJw9P40nPo2AAAAAAAAAAAAAAAAAAAAADNv9a8zYPL/M2Xy/y6e+f8vnfn/L5b4/zCS9/8un/n/L5n4/zCJ9v8xc/T/Mmzz/zRZ8P8vkPf/L5n4/zCU9/8xj/f/MJX4/DZS8fw1VPD/NFvw/zRi8v80avP/NHPz/zR59P8zdPP/M2/0/jSS9jYAAAAAAAAAAAAAAAAAAAAAMXf0vDJq8v8zbPP/MYT1/y6l+v8vnvn/LaP6/yyr+/8tpfr/LqD5/zCO9v8yZvL/M2by/zGH9v8uovn/L5z4/zCV9/8upfv8Nkfw/DVN7/81U/D/NVvw/zVh8v80avP/M3Pz/zN38/8zZ/P+Om/xNQAAAAAAAAAAAAAAAAAAAAAyjPe9NGTy/zRm8v8za/P/MIr2/y2p+v8qu/z/KrT8/yyt/P4tpfr/MJT3/zNw8/8zaPL/M27z/y+a+P8uovr/LaT5/yq1/fw2Qe/8Nkfv/zVN7/81U/D/NFrw/zRh8f8zb/P/M3bz/zJ19P41ffU1AAAAAAAAAAAAAAAAAAAAADSA9rwzcPL/NGDy/zNm8v8zaPL/MnDz/y+R9/8um/n+LZv7uzGD9v4zffT/M4D0/zNj8v80aPL/M3Dz/zCR9/8qu/z/Krz+/DZH8Pw1QO7/NUbv/zVR8P80W/H/M2Lx/zN19P8zcfP/M3L0/jp49TUAAAAAAAAAAAAAAAAAAAAANIT2vDN48/80VfD/NFfw/zRY8P80XPH/NGLz/TNn9a4xa/Y5M3L0/jR69P80f/T/NGby/zNh8v80ZPL/NF/x/zRp8v8yffb8NH72/DNw8v8yZPL/MW70/zJr8/8zcvP/M2zz/zRl8v8za/P+OnPxNQAAAAAAAAAAAAAAAAAAAAA0hPa8M4T0/zVd8P81TfD+NFPx/TVY89o0XvVnQID/BDBq9DA0bPP+M3X0/zR69P80Y/L/NVLv/zRU8P81WvD/NV7x/zVj8/w0ePX8MJH3/y6h+f8wffX/MXX0/zJt8/8zYvL/NGHy/zRk8/46avE1AAAAAAAAAAAAAAAAAAAAADSE94U0g/arNID2lDVM9G84U/Y3M2b/BQAAAAAAAAAAMHX0MDRx8/40b/P/M3T0/zRb8f81Su//NU/v/zRU8P81WvD/NV7z/DN19fwsqvr/Lan6/y6b+P8xdfT/Mm3z/zNn8/8zYvL/M2Hz/jtn9TQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAwgPQwM4L1/jOA9P80c/P/NU3v/zZG7v82Su//NU/v/zRU8P81WfL8M332/Cu0/P8srvv/LaT5/y+H9v8xdfT/Mm3z/zNn8/8zYvP+O2f1NAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADB69DAzfvX+NIL1/zOB9P81Ru7/NUDu/zVF7v81Su//NU7v/zVU8vwze/b8Krv8/yuz/P8uofr/MI/2/zGB9f8xfPT/MnTz/zJo8/47bPU0AAAAAAAAAAAAAP8BOGjvIDdt+VQ0c/d6NH36jTaB+HEAAAAAAAAAAAAAAAAAAAAAMHr0MDN79f40f/T/NH/0/zRv8v80WvH/M2zy/zN18/8zdfP/NWzz/DVn8/wquPz/LqL5/zCV9/8xjvf/Mob1/zKE9f8yg/T/M4L1/jp99TUAAP8BNl71TDRf88M0ZPP5NGjy/jNu8/4zdvT+NXz2vwAAAAAAAAAAAAAAAAAAAAAwdfQwM3b0/jN28/80e/T/M4H0/zRr8/80bvP/M3T0/zR69P80fvb8NWDy/DCM9v8upPn/L5z4/zCT9/8xifb/Mob1/zKE9f8yhPX+NoL2OTVk9pE0V/H8NVvw/zVf8f80ZPH/M3Dz/zN68/81gfTAAAAAAAAAAAAAAAAAAAAAADBq9DA0a/P+NHDz/zN69P80fvT/M2zy/zVo8/80bvP/M3T0/zR69vw0ZPP8M23z/zCR9/8uo/n/L5n4/zCP9/8xifb/MoX1/zN89f40gPasM3/1/TVW8P81V/D/NFzw/zNu8v8zePT/NH30/zWB9MEAAAAAAAAAAAAAAAAAAAAAMGD0MDRi8v4zb/P/NHbz/zR69P8zaPL/NWHx/zVo8/80bvP/NHX1/DVf8/wzZvL/M2zz/zJ59P8xe/T/MX30/zJ29P80cfP/M3X0/zN69f40fvT/NGbx/zVS8P80Y/H/M27y/zRz8/80efT/NXn0wgAAAAAAAAAAAAAAAAAAAAAwYPQwNGHy/jNq8v80cPP/M3Xz/zRe8f81W/D/NWDx/zVm8v81bPT8NVjy/DRf8v8zZvL/NFnx/zRX8P80XPH/NWLy/zRp8/80b/P/M3X0/zR69P80b/L/NVHv/zVh8f80Z/L/M23y/zNy8/81aPO/AAAAAAAAAAAAAAAAAAAAADBq9DAzbvT+M3jz/zR98/8zfvP/NGXx/zRW8P81W/D/NWDx/zVm8/w1UPH8NFbw/zVO7/81TO//NVHw/zRW8P80XvH/M3Dz/zN79P8zgPT/NIL1/zN99P80YfH/NFnx/zVh8f80Z/L/NF3x/zZe8rQAAAAAAAAAAAAAAAAAAAAANXr0MDJ69f4zevX/NH31/zR89P8zf/T/M3fz/zRa8P80XfH/NWHz/DRt9Pw0Y/H/NU3v/zRL7/8zWfH/M17x/zNv8/80dfP/NHn0/zR+9f80gfX/NIH1/zSA9P8zdfP/NFnx/zVP7/81T+//NVf1nwAAAAAAAAAAAAAAAAAAAAA8gvUzMXv1/jJ69P8zd/T/M3Pz/zN69P8zgvT/M3n0/zNk8v81YPP8NHP0/DN59P8yhfX/MIT2/zJs8/8zb/T/NG7z/zRw9P80dfP/NHn0/zR+9P8ze/T/NHv0/zR/9P80bPL/NULu/zVJ7/41UPN9AAAAAAAAAAAAAAAAAAAAADWV+jUxi/f+Mnn0/zJx9P80a/P/Mn70/zKE9f8zg/T/Mmzz/zRk9Pw0bPT8M3Lz/y2e+f8to/r/MIP1/zJz9P8zcPT/NG70/zRw9P80dPP/M3j0/zNv8v8zdPP/NHnz/zN/9P81Te//NULv/jdJ9EYAAAAAAAAAAAAAAAAAAAAANKH6Ni+e+f4wkff/M2jy/zRk8v8wi/b/MYf1/zKE9f8xdvT/M2v1/DVl8/wzbvL/K7L7/yyq+/8umPj/MXr0/zJz9P8zcPT/NG7z/zRv8/80aPL/NGny/zRu8v8zdPP/NHnz/zRh8f80PO/lLkboCwAAAAAAAAAAAAAAAAAAAAAwqPo1Lp75/jKK9f8zbvL/M1/x/y+V9/8wjvb/MYn2/zCC9f8ydPX8NV7y/DRm8f8quPz/LKr6/zCV9/8xhfX/MoL0/zJ89P8zcfT/NF7x/zVe8f81Y/H/NGny/zRu8v8zdPP/M2jy/jYz8nIAAAAAAAAAAAAAAAAAAAAAAAAAADdz8yozc/X9M3r0/zN79P80YPH/L5r4/y+b+P8wlPf/LaP5/y+Z+fw1V/H8NF3x/y+V9/8vn/n/MJb4/zGJ9v8yhfX/MoP0/zOC9P80YfH/NVnw/zVe8f81Y/H/NGny/zNu8/4ybvasMzP/BQAAAAAAAAAAAAAAAAAAAAAAAAAAN2/0FzVs9vc0c/P/M3z0/zNq8v8xffX/LqP5/yyo+v8ssvv/Laz8/DZQ8fw0XPH/M3Dz/y+a+P8vnvj/MJD3/zGJ9v8yg/X/M370/zN/9P80WPD/NFnw/zRe8v40ZPPvNWn1fiRt2wcAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgP8CNGT0yjRs8/8zePT/NGHy/zNo8v8ydvT/LaD5/yur+v8unvr8Nknw8zRb9PQzZfT0M2729DJ29vQyePb0M3T29DRx9vQ0ePfyNH726DVn8881VvSkNlz1ZDpd8xYAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA0YvgnNmj2qzRr9uA1VfLxNVjy9DRa8vQ1YfPyNGf07zVu9ewAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAKAAAADAAAABgAAAAAQAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFKR9/dQgPX5TG3z+Uhm8/lEZvP5Qmfz+T5p8/Y4Z/HiOWvz0Td287E1efeBNHr4RTBw/xAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/wFAVf8MOFjvIDVf8z43X/JmNmX4iTZo8645cPTMNnPz3D179fY9f/X5PIH1+TyC9fk9g/X5PIT1+T5k8/k/YPL5PmLy+T5l8/k+Z/P5P2rz9zR99vszgPX+M3n0/jRj8v40V/H+NFrx/jRd8v40YfL+NGrz/jRy9P4zdfT+NHn08jN895oudPMWAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAOYD/EjR69lg2WfSdNVfz0jVb8/E0XfL9NGHz/jRs9P4zdfT+M3v0/jOA9f4zgvX+M4P1/jOD9f4zgvX+M4H1/jRg8v40VfD+NFjx/jRa8f40XfH+NV/z+zR69vszfPX+M4D0/zN+9P8zavL/M2Hy/zRf8v80X/H/M2jy/zRu8v80cvP/NHXz/zN59O80e/lZAAD/AQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD//wE1ffU1M4L5uDOB9e80cPP8NFfx/jRX8P80X/H/NG/z/zN28/80evT/NHz1/zR/9f80gfX/NIL1/zSD9f80hPX/M4T1/zN88/80Y/H/NFbw/zRY8f80WvH+NVzz+zR19fszefX+M4D0/zSD9P8zffT/M2ny/zNj8/80YfL/NGby/zNr8/80cPP/NHPz/zN19Ps0b/iIKlX/BgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP//ATGE+z4zgPfVM331/jOB9f4zgvT/NHDz/zNk8f8zcPP/NHTz/zR18/80ePT/NHr1/zR89f80f/X/NIH1/zSC9f80g/X/NIT1/zSC9P8zgPT/NGbx/zRW8P80WfH+NVvy+zVx9fszevX+MoP1/zKD9P8zg/T/MnLz/zNn8v8zavP/M3Hz/zN38/80e/P/NH3z/zN89f00cfeeQGrqDAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALID1NDKC99Uzf/b9M3v0/zN/9P8zg/T/M4T0/zN68/8zdPP/M3Pz/zR08/80dvT/NHj0/zR69f80fPX/NH/1/zSB9f80gvX/NIL1/zN/9f8zgvT/M4L0/zRr8v80YvL+NGLz+zVt9fsygfb+Mob1/zKF9f8yg/T/Mnz0/zJ09P8zePT/M3r0/zR89f80fvX/NIH1/zN/9P81gfWuMIDvEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAtePARMYD4tTOB9f4zfvT/NHr0/zKC9f8yhPT/M4T1/zOC9P8zdvT/NHTz/zNz9P80dPP/NHX0/zR49P80evX/NH31/zR/9f80gfX/M3/1/zN89P8zgfT/M4T0/zOA9P80bfT+NGX0+zRr9Pswivf+MYr3/zGG9f8yhfX/MoP0/zJ79P8yevT/M3v1/zN79f8zfPT/M330/zN69P80f/W1OYD/EgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/wEygPlSNH/27TSA9P8zfPT/MoL1/zKE9f8yhPX/MoT0/zOE9f8yfPT/M3T0/zR08/8zc/P/NHTz/zR19P80ePT/NHr1/zR99f80fvT/M3n0/zN/9P8yhPX/MoP0/zOE9P8zePT+NGn1+zRp9Pswkff+MI/3/zGK9v8xhvX/MoT1/zJ+9P8ye/T/Mnr1/zN69P8zefT/M3T0/zN29P8ye/W2OYD/EgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADNm5go0efaUM3v0/DN99P8yf/X/MYf1/zKH9f8yhPX/MoT1/zKF9P8yf/T/MXb0/zN09P8zdPP/M3Pz/zR08/80dfT/NHj0/zN69P8zefT/M3v0/zKF9f8yhPX/MoT1/zKD9P8ygfT+M2/1+zRk8/svlvj+L5f4/zCS+P8xjPf/MIz3/zCM9v8ygfX/Mnv0/zJ49P8zdPT/M2/z/zRx9P80d/W2OYD/EgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADt29RozdfXHNHf0/zN69P8ygvX/MIv2/zGJ9v8yh/X/MoT2/zKE9f8xgfT/MXn1/zF29P8zdPT/NHTz/zNz8/80dPP/NHX0/zN39P80cvT/MoT1/zGH9v8yhfX/MoT1/zKE9f8yg/X+MnT1+zRs9Pswlvn+L6D5/y+Y+f8wkvj/L5f4/y+a+P8wlPj/MYf2/zN49P8yc/T/NGnz/zRt9P8yevW2OY7/EgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADR08yw0c/bnNHPz/zN09P8xhPX/MI/2/zCL9v8xifb/Mof1/zKF9v8ygvX/MXv0/zF49f8xdvT/M3T0/zR08/8zc/P/M3Tz/zNu8/8zcfP/MIr2/zGK9v8xh/b/M4X1/zKE9f8yhfX+Mnr2+zRu9Psxg/b+LqL5/y+d+f8umvn/LaX6/y6i+v8vnvn/L5n4/zGK9v8ycPP/NGHy/zRp8/8xhPW2OY7/EgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADlx9EgzcfX3M3Dz/zRm8v8whvX/L5T3/zCP9v8xivb/MYn2/zKH9f8xhPX/MX71/zF79P8xePT/MXb0/zN09P8zc/P/M27z/zRk8v8yc/T/MI/3/zCN9v8xivb/MYf2/zKF9f8yhfb+Mn72+zNo9PszbvT+MYf2/y6k+v8srPv/K7D7/yyp+/8uo/r/Lp75/zCT9/8zb/L/NFzw/zNl8v8xjPe2OZz/EgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADZ292Mzcfb7NGLy/zRc8f8xhPX/L5v4/y+W+P8wkvf/MY/3/zGN9/8xjfb/L433/zGC9v8xe/T/MXj0/zF19P8zb/P/NGny/zNi8v8yc/P/L5T3/zCS9/8wjfb/MYr2/zGH9v8yhvb+MYH3+zRi8/szZ/P+M2vz/zJ49P8tnvn/LKr7/yyl+v8unfn/MYz3/zOA9P8zevP/NFzw/zNh8f8xkPe1OZz/EgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADZy9nczavT9M13x/zRc8f8xg/X/LqH5/y+d+f8vmfn/MJT4/zCQ9/8wl/j/L575/y+Z+P8wjfb/MX71/zJ09P8xbvP/M2vz/zRd8f8ybvL/L5j4/y+Y+P8wlfj/MJL3/zGP9/8xjvf+MJP4+zVb8vs0XfL+M13x/zRd8f80YvL/M23z/zNz9P8zdPT/M3f0/zR89P8zfvT/NGPx/zRl8v8xi/e1Oar/EgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADNw9ogyavP+M2Py/zNr8/8yevT/LqD5/y+i+f8vnfn/L5n5/y+W+P8tofr/LaT6/y6h+f8unvn/L5b4/zGC9f8xcvT/Mmfy/zRY8f8zbfP/L5z4/y6g+f8vm/j/L5f4/zCT9/8wlPj+LqP7+zZO8fs1UPH+NVPx/zRY8P81XfH/NWHy/zVo8v80bfP/NHPz/zN39P8ze/T/M3Pz/zNs8/80ePW1OY7/EgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADGC9pExcfT+M2jy/zRq8v8zbvP/MYf2/y6o+v8vovn/L575/y6i+f8rsPv/LKz7/y2o+/8uo/n/LqD5/y+Z+P8xfvX/M1zx/zNn8v8zb/P/MI73/y6l+v8uoPn/L5z4/y+X+P8vnvn+Lar8+zZH8Ps1S/D+Nk/w/zVT8f80WPD/NV3x/zVh8v81Z/L/NG3z/zRz8/8zefT/M3Xz/zNn8v80bfK0OXHxEgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADGV+JMzdfX+M2Ly/zRm8v80avL/M23z/zCM9/8upPn/Lqb6/yu4/P8qt/z/K7H7/yys+/8tp/v/LqP5/y6d+P8xhfX/M2jy/zNo8v80bPP/MnL0/y6d+P8tpPn/LqD6/y+e+P8srfz+LLT9+zZD8Ps1R/D+Nkvv/zVP8P81U/D/NFjw/zVd8f81YfL/NGfy/zRu8/8zd/T/M3Dz/zNp8v80cfS0OXHxEgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADOF9pIze/T+NGLy/zNi8v80ZvL/NGry/zNv8/8xgfX/LqD5/yq6/P8qvP3/Krf8/yuy/fgspvzxL5f4/zGI9f8zgvT/M3Tz/zNk8v80aPL/NGzz/zJ59P8vmfj/LqT6/yyt+v8quv3+K7f++zY+7/s1Qu/+Nkfv/zZK8P81T/D/NVPx/zRY8P80XfH/NGHx/zRr8/8zd/T/M3bz/zN39P8ze/W0OYDxEgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADV/9JEzgfX+NGfx/zRd8f8zYvL/M2by/zNn8v80YvH/M2jy/zJz8/8xgPX/MIf3/S2I+Lkyfve8M3n0/zN89f80gPT/M4H0/zRj8f8zZPL/NGny/zRs8/8zdfT/MI33/yq6/P8pwf7+K7z++zY/7/s1P+/+NkLu/zZH7/81S+//NlHw/zVW8P80W/D/NGDx/zRx8/8zefT/M3Hz/zNz8/80dvS0OXHxEgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADWE9JE0g/X+M2/y/zRX8P80W/H/M1vx/zRY8P80W/D/NV7x/zRi8f80ZfP4Mmj2wCpn8yozcvWuM3T0/zR59P80fvX/NID0/zRr8v80X/H/M2Ty/zRo8v80ZfL/NGDx/zRp8f8xgPX+MI/4+zVt9Ps0XfH+NUnv/zVE7v8zVvH/M2Hy/zNk8v8zZvL/M2/z/zN08/8zbvP/NGny/zNt8v80cfS0OXHxEgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADWE9JE0hfX+M3vz/zVU7/81Tu//NVHv/zRU8P80V/D/NFvx/jRf8+w0YvWUNGnwIjBw7xAzbvWuNHDz/zN39P80e/T/NH30/zNw8/80WfD/NFvx/zRa8f80WvD/NF3x/zVg8f80Y/L+NWfz+zR89vszffX+M3rz/zF19P8wcfT/MW70/zFs9P8zcfP/M3Pz/zNt8/80Y/L/NGXy/zRp8/80bfK0OXHxEgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADOD9pAzhfX+M4T0/zRz8/81TvD+NU7w/TVS8P01VPTvNVjzrTVb8EM3W+0OAAAAADBw7xAzavWuNG3z/zRy8/8zd/T/NHr0/zNv8/81Tu//NVDv/zVT8P80VvD/NVrw/zVd8f80YPL+NWPz+zR59fszfPX+MJX4/y6j+f8vivf/MHT0/zF09P8xdPT/M23z/zNi8v80YfL/NWLy/zRk8v82afK0OXHxEgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADWC9YM0g/bjNIL14TSC+Nc1ZPbGNUz0pzlQ9m84V/MpQED/BAAAAAAAAAAAAAAAADBw7xAzbPWuNGzz/zRv8/80cvP/M3b0/zNq8/81SO//Nkzv/zVP7/81U/D/NFbw/zVa8P80XfL+NV/z+zR19fsxh/b+Lab5/y2o+v8uofn/MIT2/zF19P8xb/T/Mmjz/zNl8v8zYvL/NGHy/zRi8v82ZfK0OWPxEgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADuI/x44hfoyNYLzKzWE9h0wcP8QVVX/AwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADCA7xAzgfWuM33z/zR38/80cfP/NHLz/zRh8f81Re7/Nknv/zZM7/81T+//NVLw/zRW8P80WvH+NVzz+zRz9fsvlfj+LK37/yyr+v8tp/r/Lpn4/zF49P8xcvT/Mm3z/zJo8/8zZfL/M2Ly/zNh8v82ZPSzOWPxEgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADCA7xAzgfauNIL1/zSD9P8zfvT/NHLz/zVQ8P81Qu7/Nkbu/zZJ8P82TO//NU/v/zVS8P80VvH+NVny+zRz9Pstofr+K7L7/yyu+/8sqfr/LqH5/y+K9v8xePT/MnL1/zJt8/8yafP/M2Xy/zNi8v81ZPSzOWPxEgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADCA7xAzgPauNH/1/zSC9f80g/T/M37z/zVE7v81P+7/NkLu/zZG7v82Se//Nkzv/zVP7/81UvH+NVXy+zRx9Pssp/r+Krb8/yuy+/8srPv/LaX6/y6Y+P8wfvX/MXn0/zFz9P8ybvP/Mmnz/zNl8v81ZfSzOWPxEgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAgL8EO3b/DT158xUzevUZQI//EAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADCA7xAzffauNH30/zSA9P80gvT/NIL0/zRn8f81QO7/NUfv/zRT8P80WvD/NF7x/zRe8P81WfH+NlTy+zRt9Psspvr+Krv8/yq2/P8sqvv/L5r5/zGQ9v8yhvX/MoP2/zKC9P8yf/T/Mnjz/zJs8/81aPSzOWPxEgAAAAAAAAAAAAAAAAAA/wE8afARN2f0RThu+YA1b/aqNXT3wTR7+c00fvnTOIH3gAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADCA7xAzevauNHv0/zR+9P80fvT/NH70/zN99P80Z/L/NGny/zRv8/8zdPT/NHj0/zR69P8ze/T+NHf1+zVm8/sumvn+Krz9/y2q+v8vmfj/MJP3/zGP9/8yiPb/MoX1/zKE9v8yhPT/M4T0/zOD9P80evS0OXHxEgAAAABAYN8INV/zKzdg94I1Y/TaNWbz+jRp8/00a/P+M3Hz/jN28/4zefT+OH71lgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADBw7xAzd/WuM3fz/zR59P80ePP/NHz0/zSC9P8zd/P/NGvz/zRu8/80cvP/M3b0/zR69P80ffX+NID2+zVf8/sxfvX+Laj6/y6g+f8vnPj/L5f4/zCS9/8xi/b/Mof2/zKF9f8yhPX/MoT1/zOD9P80hPW1OYDxEjlV/xI1V/R4NFry2zRd8v00X/L+NGLx/zVl8f80aPL/M27z/zR08/8zePT+OH71lgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADBw7xAzcvWuM3Lz/zNw8/8zdvP/NH30/zR/9P8zefP/NGjz/zVq8/80bvP/NHLz/zN29P80evX+NH32+zVd8vszbPT+L5P3/y6n+v8uofn/L5z4/y+W+P8wjvb/Mon3/zKH9v8yhfX/MoT2/zKE9f80hPW0N4D2HDN39580WPLzNFfx/jVa8P81XPH/NF/x/zRi8v80avL/M3f0/zR99P8zgPX+OYT3lwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADBw7xAzavWuNGjy/zRt8v8zdvP/NHv0/zR99P8zevP/NGTx/zVl8/81avP/NG7z/zRy8/8zdvX+NHv2+zVh8/szavP+M3D0/y+X+P8upPn/LqH5/y+a+P8wkvj/MY32/zKJ9/8yh/X/MoX1/zKA9f81fva8MoD5nzSB9fw0ZvH/NFXw/zVX8f80WvD/NF3x/zRo8v8zdfP/M3r0/zR99P8zgPX+OIT1lwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADBg7xAzYvOuNGTx/zNv8v80dPP/NHfz/zR69P8zefP/NGHx/zVh8f81ZfP/NWrz/zRu8/80cvT+NHf2+zRi9PszZvP+NGry/zNx9P8xiPb/L5j4/y+a+P8vlvf/MJH3/zCK9v8xgvX/M3r0/zN39P80e/XrM3339DOA9P80dfP/NVXw/zVU8P80V/D/NGPx/zNv8/80c/P/NHf0/zR69P8zffX+N371mgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADBg7xAzX/OuNGPx/zNs8v80cPP/NHTz/zR38/8zdPP/NF3x/zVd8f81YfH/NWXy/zVq8/80bfT+NXL1+zVd8/szYvP+M2fy/zRq8v8zb/P/M2/z/zNl8f8ybPL/Mm7z/zNt8/80bfP/NG/z/zR08/8zd/T/NHr0/zR99f8zfvT/NVrx/zVR7/80WfH/NGby/zRs8v80cPP/NHPz/zR39P8zevX+N3T1mgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADBg7xAzYfOuNGPy/zRn8v80bPL/NG/z/zRz8/8zbPL/NFjw/zVZ8P81XfH/NWHx/zVk8f81aPP+NWz0+zVY8vs0XPL+M2Lz/zNn8v8zZ/L/NFnx/zRX8P80WvD/NF7x/zRi8v81Z/L/NGvz/zRv8/80c/P/NHf0/zR69P80ffT/NGTx/zVP7/81W/D/NGPy/zRn8/80a/L/NHDz/zRz8/80b/T+N2vzmAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADBg7xAzZ/WuNGvy/zNz8/8zevP/NH3z/zR98/8zbfL/NVjw/zRW8P81WfD/NVzx/zVh8f80ZPL+NWjz+zVT8fs0WPH+NFzx/zRf8f80VfD/NVDv/zVT8P80V/D/NVrw/zRe8f80YvL/NGrz/zNy8/8zePP/M3v0/zR99P80fvT/NG3y/zVN7/80WPD/NV7x/zRj8v80Z/L/NGvy/zRs8v80YvL+N2LzjwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADBw7xAzd/auM3n0/zN79P80ffT/NH/0/zSB9P8zf/T/M3nz/zRn8f80V/D/NFnw/zRc8f80YPL+NWXz+zZN8fs0UvH+NFTw/zVK7/81Se//NUzv/zVQ7/80U/D/NFbx/zRc8f80bPL/M3b0/zR89P80f/T/NIH1/zSC9f80g/T/M4D0/zNy8/80XvH/NFnx/zVe8f81Y/L/NWby/zRa8P80WPH+NlzzfwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADCA/xAzevWvMnr1/zN69f80e/X/NH30/zN79P80e/T/M3/1/zOA9P80bPL/NF3x/zNe8f80XvL+NWHz+zVm9Ps0X/L+NU/v/zVG7/81Ru7/NUvv/zRR8P80VvD/NFvx/zNs8v8zc/P/NHb0/zR59P80ffT/NH/1/zSB9f80gvX/NIH0/zSA9P8zf/T/NGby/zRa8f80WvH/NVHv/zVP7/81VPL8NVnzagAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADyH8BE0ffWyMnr1/zJ69f8zevT/M3j0/zNz9P8zePT/M3z0/zSB9P8zgvT/M27z/zNk8v8zYPL+NV/z+zR29fszevX+M3v0/zRx8/8zYvH/MmTz/zJm8/8zZfL/M2zz/zRv8/80cPT/NHPz/zR29P80efT/NH30/zR/9f80gfX/NH31/zR99P80gPT/NIH0/zRn8v81R+//NUfu/zVL7/81UPL5OVbyUAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADmO8RIzhPazMn30/zJ69P8ydvT/M3L0/zRv8/8zdPP/M370/zKD9P8zg/T/M370/zNo8/8zZPP+NGLz+zRx9fszdfT+M3n0/zOB9f8wl/j/MIf3/zFv9P8yb/T/M3D0/zNv8/80bvT/NHD0/zRz9P80dvT/NHn0/zR99P8zfvT/M3f0/zR59P80fPT/NH/0/zN88/81U/D/NULu/zZH7v81S/HtNE7vMQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADmc/xIxlfi1MI73/zF99P8ydPT/M2/z/zRp8/8zc/P/MYT1/zKF9f8yhPT/M4T0/zJw9P8zaPT+NGT0+zRs9Ps0cPP+M3Xz/zCR9/8tpfr/LqD6/zCD9f8xdfT/MnL1/zNw9P8zb/P/NG70/zRw9P80c/T/NHb0/zR59P8zdfP/M3Hz/zN08/80ePP/NHv0/zR/9P80avL/NUHu/zZC7v82RvDPO0T2HgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADmc/xIwn/u1L5v4/zCU9/8xfPT/NGXy/zRj8/8yePT/MYr2/zGH9f8yhfX/MoT0/zJ59P8xbfX+NGn1+zRo8/s0a/P+M3Hy/yyo+v8sq/v/LKX6/y+W+P8wffX/MXb0/zJy9P8zcPT/M2/z/zRu9P80cPP/NHPz/zRz8/80bPL/NG3y/zNw8/8zdPP/NHjz/zR79P8zefP/NUbv/zU97/01QvKfQED/DAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADmq/xIuo/u1Lp/5/y+Z+P8ygvT/NF7w/zRf8f8xffT/MI/3/zGL9v8xh/X/MoX1/zF+9P8xdPX+Mm71+zVj8/s0Z/P+M3Hz/yq1/P8rsfv/LKr7/y6f+f8wifb/MXr0/zF19P8ycvT/M3D0/zNv8/80bvP/M27z/zRm8v80ZfL/NGny/zRt8v8zcPP/M3Tz/zR48/8ze/T/NVLw/zU57/E1QvJhAID/AgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADy0/xEvpPmzL5X4/zKE9f8zgfT/NGfx/zRa8P8xfvT/L5b3/zCR9/8xjff/MYr2/zCI9v8xffb+MnT1+zVd8/s0YvL+M2zy/yq4/P8rt/z/LKv7/y+b+P8xjPb/MoP2/zKB9P8yffT/Mnb1/zNx9P8zavL/NF7x/zRe8f81YvH/NWXy/zRp8v80bPL/M3Dz/zN08/8zd/P/NFzx/jU08cUxO/UaAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADN37g80c/WrM3X0/zN69P80fvT/M3jz/zRY8P8xfPX/Lp75/y+b+f8wlvj/MZH3/y6h+P8unvn+MIv3+zVa8vs0XfL+NGLx/yyn+f8srvv/L5z5/zCT9/8xjPf/MYb1/zKE9f8yhPT/M4P0/zN+9P8zZ/L/NFfw/zVa8P81XvH/NWLx/zVl8v80afL/NGzy/zNw8v8zc/T+M2Pz5jIv8UcAAP8BAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAC50/ws1bvWeNHH0/TN29P80evT/M330/zNo8v8ydfT/L5z5/y6i+f8vm/j/Lp74/yys+v8tqvv+Lqj7+zVV8fs0WfH+NF7x/zF+9f8upPn/L5/5/y+Z+P8wkPf/MYj3/zGG9f8yhPX/MoP0/zOD9P8zffP/NF3x/zRX8P81WvD/NV7x/zVi8v81ZfL/NGny/zRs8/4zcfXoMW72WFVV/wMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACqA/wY2afiKNGz1+zRx8/8zdvT/M370/zNp8v8za/P/Mnz1/y6j+f8uo/r/K7P7/yu1/P8ssPz+Laz8+zZQ8fs0VfH+NGDx/zNv8/8wjvf/LqL5/y+f+f8vlff/MI32/zGI9/8xhvX/MoP1/zN/9P8zgfT/NHrz/zVW8P80V/D/NVrw/zVe8f80YfH+NWbz9jRq9c8zbPlQQID/BAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/wE2Y/dfNGfz8TRs8/8zdPT/M3v0/zRj8v8zZfL/M2vz/zJ49P8toPn/Krb8/yu1+/8rr/z+Lar8+zZM8Ps0UvD+M2Dz/jNo8/4zcPT+MYf3/i+V+P4wlPj+MJD3/jGI9v4ygPX+M3n1/jN59f4zffX+M4H0/jRo8v41U/H+NVfy/DVc9Oc1YPS4NWX2dDlj8SQAgP8CAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA3W/YcNGH1rTRm9PozcPX+M3H0/jRa8f40X/L+M2Ly/jRh8v4zZPL+Mnb0/jCD9v4xgvX+M3v1+zdI8ew2UfPtNV717TVk9e01afbtNW/37TRt9u00ZfXtNGn27TRs9u01bvbtNXH37TR29uw0fPflNoH51TV59bo3VPOPN1j0XTle9TExYfMVQED/BAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP8BNWD0GDZk9WM1b/isNmP31DdS9uU2U/PtNlX07TZY9O02XfPsNmH16TVn9ec1a/fiNW/34QAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA==\"> KEBIJAKAN PRIVASI</h2><p>Kebijakan Privasi berikut ini menjelaskan bagaimana kami, <strong>PT NETINDO MEDIATAMA PERKASA</strong> mengumpulkan, menyimpan, menggunakan, mengolah, menguasai, mentransfer, mengungkapkan, dan melindungi Informasi Pribadi Anda. Kebijakan Privasi ini berlaku bagi seluruh pengguna dashboard, Platform, situs&nbsp;<a href=\"https://www.ptnetindo.com\" target=\"_blank\" style=\"color: rgb(0, 180, 235);\">https://www.ptnetindo.com</a>,&nbsp;<a href=\"https://backoffice.ptnetindo.com\" target=\"_blank\" style=\"color: rgb(0, 180, 235);\">https://backoffice.ptnetindo.com</a>,&nbsp;<a href=\"http://mygostore.com/\" target=\"_blank\" style=\"color: rgb(0, 180, 235);\">http://mygostore.com</a>&nbsp;dan situs terkait atau situs mikro yang diakses melalui situs&nbsp;<em>web&nbsp;</em>yang disebutkan.</p><p>Mohon baca Kebijakan Privasi ini dengan seksama untuk memastikan bahwa Anda memahami bagaimana proses pengolahan data kami. Kecuali didefinisikan lain, semua istilah dengan huruf kapital yang digunakan dalam Kebijakan Privasi ini memiliki arti yang sama dengan yang tercantum dalam Ketentuan Penggunaan.</p><p>Kebijakan Privasi ini mencakup hal-hal sebagai berikut.</p><ol><li data-list=\"ordered\">Pernyataan privasi dan Informasi Pribadi yang kami kumpulkan</li><li data-list=\"ordered\">Penggunaan Informasi Pribadi yang kami kumpulkan</li><li data-list=\"ordered\">Pemberian Informasi Pribadi yang kami kumpulkan</li><li data-list=\"ordered\">Penyimpanan Informasi Pribadi</li><li data-list=\"ordered\">Akses dan koreksi Informasi Pribadi</li><li data-list=\"ordered\">Pengiriman Data Lintas Negara</li><li data-list=\"ordered\">Keamanan Informasi Pribadi Anda</li><li data-list=\"ordered\">Perubahan atas Kebijakan Privasi ini</li><li data-list=\"ordered\">Pengakuan dan persetujuan</li><li data-list=\"ordered\">Materi pemasaran dan promosi</li><li data-list=\"ordered\">Data anonim</li><li data-list=\"ordered\">Platform pihak ketiga</li><li data-list=\"ordered\">Keterpisahan</li><li data-list=\"ordered\">Cara untuk menghubungi kami</li></ol><h4>Pernyataan Privasi dan Informasi Pribadi yang Kami Kumpulkan</h4><p>Perlindungan privasi sangat penting bagi <strong>PT NETINDO MEDIATAMA PERKASA</strong>. Kami menghargai privasi Anda dan berkomitmen untuk melindungi informasi Pribadi yang Anda berikan.<strong>&nbsp;</strong>Kami mengumpulkan informasi yang mengidentifikasikan atau dapat digunakan untuk mengidentifikasi, menghubungi, atau menemukan orang atau perangkat yang terkait dengan informasi tersebut (\"<strong>Informasi Pribadi</strong>\"). Informasi Pribadi termasuk, tetapi tidak terbatas pada, nama, alamat, tanggal lahir, pekerjaan, nomor telepon, alamat email, rekening bank dan detail kartu kredit, jenis kelamin, identifikasi (termasuk KTP, SIM, atau Paspor) atau tanda pengenal lainnya yang dikeluarkan oleh pemerintah, foto, kewarganegaraan, nomor telepon pengguna dan non-pengguna Platform kami yang terdapat dalam daftar kontak telepon selular Anda, data kesehatan, informasi keuangan terkait, serta informasi biometrik (termasuk namun tidak terbatas pengenalan wajah). Selain itu, untuk informasi lainnya, seperti profil pribadi, dan/atau nomor pengenal unik, yang dikaitkan atau digabungkan dengan Informasi Pribadi, maka informasi tersebut juga dianggap sebagai Informasi Pribadi. Informasi Pribadi yang kami kumpulkan dapat diberikan oleh Anda secara langsung atau oleh pihak ketiga (misalnya: ketika Anda mendaftar atau menggunakan Platform, ketika Anda menghubungi layanan pelanggan kami, atau sebaliknya ketika Anda memberikan Informasi Pribadi kepada kami). Kami dapat mengumpulkan informasi dalam berbagai macam bentuk dan tujuan (termasuk tujuan yang diizinkan berdasarkan peraturan perundang-undangan yang berlaku).</p><p><strong>Informasi yang kami kumpulkan dari Anda atau perangkat seluler Anda secara langsung</strong></p><ol><li data-list=\"ordered\">Ketika Anda mendaftar dan membuat akun dengan kami menggunakan Platform, Anda harus memberikan kepada kami Informasi Pribadi tertentu, termasuk nama, alamat fisik, alamat e-mail, dan nomor telepon Anda.</li></ol><p><strong>Informasi yang dikumpulkan setiap kali Anda menggunakan Platform atau mengunjungi&nbsp;<em>website&nbsp;</em>kami</strong></p><ol><li data-list=\"ordered\">Setiap kali Anda menggunakan Platform atau mengunjungi situs web kami, kami dapat mengumpulkan data teknis tertentu sehubungan dengan penggunaan Anda seperti, alamat protokol internet, informasi halaman web yang sebelumnya atau selanjutnya dilihat, durasi setiap kunjungan/sesi, identitas perangkat internet atau alamat kontrol akses media, dan&nbsp;<em>mobile advertising ID</em>&nbsp;dan informasi perangkat lainnya termasuk informasi mengenai produsen, model, dan sistem operasi dari perangkat yang Anda gunakan untuk mengakses Platform atau situs kami.</li><li data-list=\"ordered\">Ketika Anda menggunakan Platform atau mengunjungi situs kami, informasi tertentu juga dapat dikumpulkan secara otomatis dengan menggunakan&nbsp;<em>cookies</em>.&nbsp;<em>Cookies</em>&nbsp;adalah berkas data kecil yang tersimpan pada komputer atau perangkat seluler Anda. Kami menggunakan&nbsp;<em>cookies</em>&nbsp;untuk melacak aktivitas pengguna dengan tujuan untuk meningkatkan antarmuka dan pengalaman pengguna. Sebagian besar perangkat seluler dan peramban internet mendukung penggunaan&nbsp;<em>cookies</em>; namun Anda dapat menyesuaikan pengaturan pada perangkat seluler atau peramban internet Anda untuk menolak beberapa jenis&nbsp;<em>cookies</em>&nbsp;atau&nbsp;<em>cookies</em>&nbsp;spesifik tertentu. Perangkat seluler dan/atau peramban Anda juga memungkinkan Anda untuk menghapus cookies apa pun yang sebelumnya telah tersimpan. Namun demikian, hal itu dapat mempengaruhi fungsi-fungsi yang tersedia pada Platform atau situs kami.</li><li data-list=\"ordered\">Setiap kali Anda menggunakan Platform melalui perangkat seluler, kami akan melacak dan mengumpulkan informasi lokasi geografis Anda dalam waktu sebenarnya. Dalam beberapa kasus, Anda akan diminta atau diharuskan untuk mengaktifkan&nbsp;<em>Global Positioning System</em>&nbsp;(GPS) pada perangkat seluler Anda untuk memungkinkan kami agar dapat memberikan Anda pengalaman yang lebih baik dalam menggunakan Platform (misalnya, untuk memberikan informasi tentang seberapa dekat penyedia layanan dengan Anda). Anda dapat menonaktifkan informasi pelacakan lokasi geografis pada perangkat seluler Anda untuk sementara waktu. Namun, hal ini dapat mempengaruhi fungsi-fungsi yang tersedia pada Platform.</li><li data-list=\"ordered\">Jika Anda menggunakan dan/atau ketika pembayaran atau transfer dilakukan melalui fasilitas uang elektronik dan/atau dompet elektronik yang disediakan oleh kami, kami dapat mengumpulkan informasi tertentu terkait dengan sumber dana yang Anda gunakan untuk melakukan isi ulang (termasuk rincian rekening bank), rincian rekening penerima penarikan, riwayat transaksi (termasuk detail penerima), rincian tagihan, faktur, dan nomor telepon.</li><li data-list=\"ordered\">Jika Anda menggunakan dan/atau pada saat suatu pembayaran dilakukan melalui kartu pembayaran atau rekening yang Anda tambahkan di Platform, kami dapat mengumpulkan informasi tertentu terkait catatan transaksi, termasuk rincian penerima, rincian tagihan, rincian tanda terima, dan rincian nomor telepon.</li></ol><p><strong>Informasi yang dikumpulkan dari pihak ketiga</strong></p><p>Kami juga dapat mengumpulkan Informasi Pribadi Anda dari pihak ketiga (termasuk agen, vendor, pemasok, kontraktor, mitra, dan pihak lainnya yang memberikan layanan kepada kami, mengumpulkan Data Pribadi dan/atau melakukan tugas atas nama kami, atau dengan siapa kami melakukan kerja sama). Dalam kasus tersebut, kami hanya akan mengumpulkan Informasi Pribadi Anda untuk atau sehubungan dengan tujuan yang melibatkan pihak ketiga tersebut atau tujuan kerja sama kami dengan pihak ketiga tersebut (tergantung pada situasinya).</p><p><strong>Informasi tentang pihak ketiga yang Anda berikan kepada kami</strong></p><p>Anda dapat memberikan kepada kami Informasi Pribadi yang berkaitan dengan individu pihak ketiga lainnya (termasuk Informasi Pribadi yang berkaitan dengan pasangan Anda, anggota keluarga, teman, atau individu lain). Anda tentu saja akan memerlukan persetujuan dari mereka terlebih dahulu untuk melakukannya - lihat “Pengakuan dan Persetujuan”, di bawah, untuk informasi lebih lanjut</p><h4>Penerimaan dan Persetujuan Anda</h4><p>Anda wajib membaca Kebijakan Privasi kami dari waktu ke waktu. Dengan mengakses atau menggunakan layanan atau produk kami serta Situs Web kami, hal tersebut akan dianggap sebagai persetujuan dan penerimaan Anda terhadap Kebijakan Privasi kami, dengan demikian, Anda setuju untuk terikat pada setiap ketentuan yang tercantum dalam Kebijakan Privasi kami. Jika Anda tidak setuju dengan ketentuan atau ketentuan apa pun dalam Kebijakan Privasi ini, jangan gunakan layanan atau produk kami serta Situs Web kami. [Dengan mengirimkan pemberitahuan ke email Anda], kami memiliki hak untuk merevisi dan/atau memperbarui Kebijakan Privasi kami dari waktu ke waktu dan Anda setuju untuk terikat dengan Kebijakan Privasi yang direvisi dan/atau diperbarui tersebut. Jika Anda tidak setuju dengan ketentuan kami yang direvisi dan/atau diperbarui dalam Kebijakan Privasi, silakan berhenti mengakses layanan atau produk kami atau Situs Web kami.</p><p>MPenerimaan dan persetujuan Anda terhadap Kebijakan Privasi ini juga akan berkaitan dengan ketentuan yang tercantum berdasarkan&nbsp;<a href=\"https://ptnetindo.com/layanan\" target=\"_blank\" style=\"color: rgb(0, 180, 235);\">Ketentuan Layanan</a>&nbsp;dan akan dianggap dan tidak dapat dipisahkan dan satu perjanjian yang mengatur hak dan kewajiban kami kepada Anda. .</p><h4>Penggunaan Informasi Pribadi yang Kami Kumpulkan</h4><p>Kami dapat menggunakan Informasi Pribadi yang dikumpulkan untuk tujuan sebagai berikut maupun untuk tujuan lain yang diizinkan oleh peraturan perundang-undangan yang berlaku (\"<strong>Tujuan\"</strong>):A-&nbsp;untuk mengidentifikasi dan mendaftarkan Anda sebagai pengguna dan untuk mengadministrasikan, memverifikasi, menonaktifkan, atau mengelola akun Anda;</p><ol><li data-list=\"ordered\">untuk memfasilitasi atau memungkinkan verifikasi apa pun yang menurut pertimbangan kami diperlukan sebelum penyedia layanan memberikan layanan kepada Anda atau sebelum kami mendaftarkan Anda sebagai pengguna, termasuk melakukan proses Mengenal Pelanggan (<em>Know Your Customer -</em>&nbsp;KYC atau&nbsp;<em>Know Your Business</em>&nbsp;- KYB) dan penentuan kredit (<em>credit scoring</em>);</li><li data-list=\"ordered\">untuk memungkinkan penyedia layanan untuk menyediakan layanan yang Anda minta;</li><li data-list=\"ordered\">untuk mengolah dan memfasilitasi pesanan dan transaksi pembayaran yang Anda lakukan, termasuk sebagaimana berlaku, transaksi yang dilakukan melalui kartu pembayaran atau rekening yang tersedia pada Platform;</li><li data-list=\"ordered\">untuk memberi tahu Anda atas transaksi atau aktivitas yang terjadi dalam Platform atau sistem lain yang terhubung dengan Platform kami;</li><li data-list=\"ordered\">untuk berkomunikasi dengan Anda dan mengirimkan Anda informasi sehubungan dengan penggunaan Platform;</li><li data-list=\"ordered\">untuk memberi tahu Anda mengenai segala pembaruan pada Platform atau perubahan pada layanan yang disediakan;</li><li data-list=\"ordered\">untuk mengolah dan menanggapi pertanyaan dan saran yang diterima dari Anda;</li><li data-list=\"ordered\">untuk memelihara, mengembangkan, menguji, meningkatkan, dan mempersonalisasikan Platform untuk memenuhi kebutuhan dan preferensi Anda sebagai pengguna;</li><li data-list=\"ordered\">untuk memantau dan menganalisis aktivitas, perilaku, dan data demografis pengguna termasuk kebiasaan dan penggunaan berbagai layanan yang tersedia di Platform;</li><li data-list=\"ordered\">untuk memproses dan mengelola<em>&nbsp;reward points</em>&nbsp;Anda;</li><li data-list=\"ordered\">untuk menawarkan atau menyediakan layanan dari afiliasi atau mitra kami; dan</li><li data-list=\"ordered\">untuk mengirimkan Anda komunikasi pemasaran, iklan, voucher, survei, dan informasi secara langsung atau terfokus, dan informasi tentang penawaran atau promosi khusus;</li><li data-list=\"ordered\">untuk melakukan proses dan fungsi bisnis terkait;</li><li data-list=\"ordered\">untuk memantau penggunaan Platform dan mengelola, mendukung serta meningkatkan efisiensi kinerja, perkembangan, pengalaman pengguna dan fungsi-fungsi Platform;</li><li data-list=\"ordered\">untuk memberikan bantuan sehubungan dengan dan untuk menyelesaikan kesulitan teknis atau masalah operasional dengan Platform atau layanan;</li><li data-list=\"ordered\">untuk menghasilkan informasi statistik dan data analitik untuk tujuan pengujian, penelitian, analisis, pengembangan produk, kemitraan komersial, dan kerja sama;</li><li data-list=\"ordered\">untuk mencegah, mendeteksi dan menyelidiki segala kegiatan yang dilarang, ilegal, tidak sah, atau curang;</li><li data-list=\"ordered\">untuk memfasilitasi transaksi aset bisnis (yang dapat berupa penggabungan, akuisisi, atau penjualan aset) yang melibatkan kami dan/atau afiliasi kami; dan</li><li data-list=\"ordered\">untuk memungkinkan kami mematuhi semua kewajiban berdasarkan peraturan perundang-undangan yang berlaku, termasuk namun tidak terbatas pada menanggapi permintaan, penyelidikan, atau arahan peraturan, mematuhi persyaratan pengarsipan, pelaporan, dan perizinan yang disyaratkan oleh peraturan yang berlaku) dan melakukan pemeriksaan audit, uji tuntas dan penyelidikan.</li></ol><h4>Pemberian Informasi Pribadi yang Kami Kumpulkan</h4><ol><li data-list=\"ordered\">Kami dapat mengungkapkan atau membagikan Informasi Pribadi Anda dengan afiliasi dan pihak lain untuk tujuan sebagai berikut ini serta untuk tujuan lain yang diizinkan oleh peraturan perundang-undangan yang berlaku:</li><li data-list=\"ordered\">jika disyaratkan atau diotorisasikan oleh peraturan perundang-undangan yang berlaku (termasuk namun tidak terbatas pada, menanggapi pertanyaan terkait regulasi, penyelidikan atau pedoman, atau mematuhi persyaratan atau ketentuan pengarsipan pelaporan, dan perizinan berdasarkan undang-undang), untuk tujuan yang ditentukan dalam peraturan perundang-undangan yang berlaku;</li><li data-list=\"ordered\">jika diinstruksikan, diminta, disyaratkan atau diperbolehkan oleh pemerintah yang berwenang, untuk tujuan sebagaimana disebutkan dalam kebijakan pemerintah, peraturan atau peraturan perundang-undangan yang berlaku;</li><li data-list=\"ordered\">jika terdapat proses hukum dalam bentuk apa pun antara Anda dengan kami, atau antara Anda dengan pihak lain, sehubungan dengan, atau terkait dengan layanan, untuk keperluan proses hukum tersebut;</li><li data-list=\"ordered\">sehubungan dengan setiap verifikasi yang menurut pertimbangan kami atau pihak ketiga mungkin perlu dilakukan sebelum penyedia layanan menyediakan layanan kepada Anda atau kami mendaftarkan Anda sebagai pengguna, termasuk untuk&nbsp;<em>Know Your Customer</em>&nbsp;(KYC) dan penentuan kredit (<em>credit scoring</em>);</li><li data-list=\"ordered\">dalam keadaan darurat terkait keselamatan Anda untuk keperluan menangani keadaan darurat tersebut;</li><li data-list=\"ordered\">dalam situasi terkait kesehatan Anda atau kepentingan umum (baik Anda adalah pengguna maupun penyedia layanan), kami dapat membagikan Informasi Pribadi Anda kepada pemerintah yang berwenang dan/atau institusi lainnya yang dapat ditunjuk oleh pemerintah yang berwenang atau memiliki kerja sama dengan kami, untuk tujuan pelacakan kontak, mendukung inisiatif, kebijakan atau program pemerintah, kesehatan publik, dan tujuan lainnya sebagaimana dibutuhkan secara wajar;</li><li data-list=\"ordered\">sehubungan dengan penggabungan, penjualan aset perusahaan, konsolidasi atau restrukturisasi, pembiayaan atau akuisisi semua atau sebagian dari bisnis kami oleh atau ke perusahaan lain, untuk keperluan transaksi tersebut (bahkan jika kemudian transaksi tidak dilanjutkan);</li><li data-list=\"ordered\">kepada pihak ketiga (termasuk agen, vendor, pemasok, kontraktor, mitra, dan pihak lain yang memberikan layanan kepada kami atau Anda, melakukan tugas atas nama kami, atau pihak dengan siapa kami mengadakan kerja sama komersial), untuk atau sehubungan dengan tujuan di mana pihak ketiga tersebut terlibat, untuk melaksanakan pengungkapan kepada pihak ketiga terkait yang secara teknis diperlukan untuk memproses transaksi Anda atau tujuan kerja sama kami dengan pihak ketiga tersebut (tergantung keadaannya), yang dapat mencakup diperbolehkannya pihak ketiga tersebut untuk memperkenalkan atau menawarkan produk atau layanan kepada Anda, melakukan autentikasi terhadap Anda atau menghubungkan Anda dengan Akun atau melakukan kegiatan lain termasuk pemasaran, penelitian, analisis dan pengembangan produk; dan</li><li data-list=\"ordered\">dalam hal kami berbagi Informasi Pribadi dengan afiliasi, kami akan melakukannya dengan maksud agar mereka membantu kami dalam menyediakan Platform, untuk mengoperasikan bisnis kami (termasuk, ketika Anda berlangganan milis kami, untuk tujuan pemasaran langsung), atau untuk tujuan pengolahan data atas nama kami. Misalnya, sebuah afiliasi kami di negara lain dapat mengolah dan/atau menyimpan Informasi Pribadi Anda atas nama perusahaan grup kami di negara Anda. Semua afiliasi kami berkomitmen untuk mengolah Informasi Pribadi yang mereka terima dari kami sesuai dengan Kebijakan Privasi dan peraturan perundang-undangan yang berlaku ini.</li><li data-list=\"ordered\">Ketika Informasi Pribadi tidak perlu dikaitkan dengan Anda, kami akan melakukan upaya yang wajar untuk menghapus dikaitkannya Informasi Pribadi tersebut dengan Anda sebagai individu sebelum mengungkapkan atau berbagi informasi tersebut.</li><li data-list=\"ordered\">Kami tidak akan menjual atau menyewakan Informasi Pribadi Anda.</li><li data-list=\"ordered\">Selain sebagaimana diatur dalam Kebijakan Privasi ini, kami dapat mengungkapkan dan membagikan Informasi Pribadi Anda jika kami memberitahu Anda dan kami telah memperoleh persetujuan Anda untuk pengungkapan atau pembagian tersebut.</li></ol><h4>Penyimpanan Informasi Pribadi</h4><ol><li data-list=\"ordered\">Informasi Pribadi Anda hanya akan disimpan selama diperlukan untuk memenuhi tujuan dari pengumpulannya, atau selama penyimpanan tersebut diperlukan atau diperbolehkan oleh peraturan perundang-undangan yang berlaku. Kami akan berhenti menyimpan Informasi Pribadi, atau menghapus maksud dari dikaitkannya Informasi Pribadi tersebut dengan Anda sebagai individu, segera setelah dianggap bahwa tujuan pengumpulan Informasi Pribadi tersebut tidak lagi dibutuhkan dengan menyimpan Informasi Pribadi dan penyimpanan tidak lagi diperlukan untuk tujuan bisnis atau secara hukum.</li><li data-list=\"ordered\">Mohon diperhatikan bahwa masih ada kemungkinan bahwa beberapa Informasi Pribadi Anda disimpan oleh pihak lain dengan termasuk institusi pemerintah cara tertentu. Dalam hal kami membagikan Informasi Pribadi Anda kepada institusi pemerintah yang berwenang dan/atau institusi lainnya yang dapat ditunjuk oleh pemerintah yang berwenang atau memiliki kerja sama dengan kami, Anda menyetujui dan mengakui bahwa penyimpanan Informasi Pribadi Anda oleh institusi terkait akan mengikuti kebijakan penyimpanan data masing-masing institusi tersebut. Informasi yang disampaikan melalui komunikasi antara pengguna dan penyedia layanan yang dilakukan selain melalui penggunaan Platform (seperti melalui panggilan telepon, SMS, pesan seluler atau cara komunikasi lainnya dan pengumpulan atas Informasi Pribadi Anda oleh agen kami) juga dapat disimpan dengan beberapa cara. Kami tidak mengizinkan penyimpanan Informasi Pribadi dengan cara demikian dan kami tidak bertanggung jawab kepada Anda untuk hal tersebut. Kami tidak akan bertanggung jawab atas penyimpanan Informasi Pribadi Anda. Anda setuju untuk mengganti rugi, membela, dan membebaskan kami, pejabat, direktur, karyawan, agen, mitra, pemasok, kontraktor, dan afiliasi kami dari dan terhadap setiap dan segala klaim, kerugian, kewajiban, biaya, kerusakan, dan ongkos (termasuk tetapi tidak terbatas pada biaya hukum dan pengeluaran biaya ganti rugi penuh) yang dihasilkan secara langsung atau tidak langsung dari setiap penyimpanan yang tidak sah atas Informasi Pribadi Anda.</li></ol><h4>Akses dan Koreksi Informasi Pribadi</h4><ol><li data-list=\"ordered\">Tunduk pada peraturan perundang-undangan yang berlaku, Anda dapat meminta kepada kami untuk mengakses dan/atau mengoreksi Informasi Pribadi Anda yang berada dalam kepemilikan dan penguasaan kami, dengan menghubungi kami di perincian yang disediakan di bawah ini.</li><li data-list=\"ordered\">Kami berhak menolak permintaan Anda untuk mengakses, atau untuk memperbaiki, sebagian atau semua Informasi Pribadi Anda yang kami miliki atau kuasai jika diizinkan atau diperlukan berdasarkan perundang-undangan yang berlaku. Hal ini termasuk dalam keadaan di mana Informasi Pribadi tersebut dapat berisi referensi kepada orang lain atau di mana permintaan untuk akses atau permintaan untuk mengoreksi adalah untuk alasan yang kami anggap tidak relevan, tidak serius, atau menyulitkan.</li></ol><h4>Pengiriman Data Lintas Negara</h4><ol><li data-list=\"ordered\">Informasi Pribadi dari Anda yang kami kumpulkan dapat disimpan, ditransfer, atau diolah oleh penyedia layanan pihak ketiga. Kami akan menggunakan semua upaya yang wajar untuk memastikan bahwa semua penyedia layanan pihak ketiga tersebut memberikan tingkat perlindungan yang sebanding dengan komitmen kami berdasarkan Kebijakan Privasi ini.</li><li data-list=\"ordered\">Kami akan mematuhi seluruh peraturan dan hukum yang berlaku dan menggunakan seluruh usaha yang terbaik untuk memastikan Afiliasi kami di negara lain dan seluruh pihak ketiga pemberi layanan memberikan tingkat perlindungan yang setara dengan komitmen kami dalam Kebijakan Privasi ini.</li></ol><h4>Keamanan Informasi Pribadi</h4><p>Kami akan memberlakukan upaya yang wajar untuk melindungi dan mengamankan data dan Informasi Pribadi Anda dari akses, pengumpulan, penggunaan atau pengungkapan oleh orang-orang yang tidak berwenang dan dari pengolahan yang bertentangan dengan hukum, kehilangan yang tidak disengaja, pemusnahan dan kerusakan atau risiko serupa. Namun, pengiriman informasi melalui internet tidak sepenuhnya aman. Walau kami akan berusaha sebaik mungkin untuk melindungi Informasi Pribadi Anda, Anda mengakui bahwa kami tidak dapat menjamin keutuhan dan keakuratan Informasi Pribadi apa pun yang Anda kirimkan melalui Internet, atau menjamin bahwa Informasi Pribadi tersebut tidak akan dicegat, diakses, diungkapkan, diubah atau dihancurkan oleh pihak ketiga yang tidak berwenang, karena faktor-faktor di luar kendali kami. Anda bertanggung jawab untuk menjaga kerahasiaan detail Akun Anda, termasuk kata sandi Anda dan&nbsp;<em>One Time Password</em>&nbsp;(OTP) dengan siapa pun dan harus selalu menjaga dan bertanggung jawab atas keamanan perangkat yang Anda gunakan.</p><h4>Perubahan Atas Kebijakan Pribadi Ini</h4><p>MKami dapat meninjau dan mengubah Kebijakan Privasi ini atas kebijakan kami sendiri dari waktu ke waktu, untuk memastikan bahwa Kebijakan Privasi ini konsisten dengan perkembangan kami di masa depan, dan/atau perubahan persyaratan hukum atau peraturan. Jika kami memutuskan untuk mengubah Kebijakan Privasi ini, kami akan memberi tahu Anda tentang perubahan tersebut melalui pemberitahuan umum yang dipublikasikan pada Platform, atau sebaliknya ke alamat&nbsp;<em>email</em>&nbsp;Anda yang tercantum dalam Akun Anda. Anda setuju bahwa Anda bertanggung jawab untuk meninjau Kebijakan Privasi ini secara teratur untuk informasi terbaru tentang pengolahan data dan praktik perlindungan data kami, dan bahwa dengan Anda terus menggunakan Platform, berkomunikasi dengan kami, atau mengakses dan menggunakan layanan setelah adanya perubahan apa pun terhadap Kebijakan Privasi ini akan dianggap sebagai persetujuan Anda terhadap Kebijakan Privasi ini dan segala perubahannya.e</p><h4>Pengakuan dan Persetujuan</h4><ol><li data-list=\"ordered\">Dengan menyetujui Kebijakan Privasi, Anda mengakui bahwa Anda telah membaca dan memahami Kebijakan Privasi ini dan menyetujui segala ketentuannya. Secara khusus, Anda setuju dan memberikan persetujuan kepada kami untuk mengumpulkan, menggunakan, membagikan, mengungkapkan, menyimpan, mentransfer, atau mengolah Informasi Pribadi Anda sesuai dengan Kebijakan Privasi ini.</li><li data-list=\"ordered\">Dalam keadaan di mana Anda memberikan kepada kami Informasi Pribadi yang berkaitan dengan individu lain (seperti Informasi Pribadi yang berkaitan dengan pasangan Anda, anggota keluarga, teman, atau pihak lain), Anda menyatakan dan menjamin bahwa Anda telah memperoleh persetujuan dari individu tersebut untuk, dan dengan ini menyetujui atas nama individu tersebut untuk, pengumpulan, penggunaan, pengungkapan dan pengolahan Informasi Pribadi mereka oleh kami.</li><li data-list=\"ordered\">Anda dapat menarik persetujuan Anda untuk setiap atau segala pengumpulan, penggunaan, atau pengungkapan Informasi Pribadi Anda kapan saja dengan memberikan kepada kami pemberitahuan yang wajar secara tertulis menggunakan rincian kontak yang disebutkan di bawah ini. Anda juga dapat menarik persetujuan pengiriman komunikasi dan informasi tertentu dari kami melalui fasilitas \"opt-out\" atau pilihan \"berhenti berlangganan\" yang tersedia dalam pesan kami kepada Anda. Tergantung pada keadaan dan sifat persetujuan yang Anda tarik, Anda harus memahami dan mengakui bahwa setelah penarikan persetujuan tersebut, Anda mungkin tidak lagi dapat menggunakan Platform atau layanan. Penarikan persetujuan Anda dapat mengakibatkan penghentian Akun Anda atau hubungan kontraktual Anda dengan kami, dengan semua hak dan kewajiban yang muncul sepenuhnya harus dipenuhi. Setelah menerima pemberitahuan untuk menarik persetujuan untuk pengumpulan, penggunaan atau pengungkapan Informasi Pribadi Anda, kami akan menginformasikan Anda tentang konsekuensi yang mungkin terjadi dari penarikan tersebut sehingga Anda dapat memutuskan apakah Anda tetap ingin menarik persetujuan.</li></ol><h4>Materi Pemasan dan Promosi</h4><p>Kami dan mitra kami dapat mengirimkan Anda pemasaran langsung, iklan, dan komunikasi promosi melalui Platform&nbsp;<em>push-notification</em>, pesan melalui Platform, pos, panggilan telepon, layanan pesan singkat (SMS), WhatsApp, media sosial, dan&nbsp;<em>email&nbsp;</em>(“<strong>Materi Pemasaran</strong>”) jika Anda telah setuju untuk berlangganan milis kami, dan/atau setuju untuk menerima materi pemasaran dan promosi dari kami. Anda dapat memilih untuk tidak menerima komunikasi pemasaran tersebut kapan saja dengan mengklik pilihan “berhenti berlangganan” yang ada dalam pesan yang bersangkutan, atau menghubungi kami melalui detail kontak yang tercantum di bawah ini. Mohon perhatikan bahwa jika Anda memilih untuk keluar, kami masih dapat mengirimi Anda pesan-pesan non-promosi, seperti tanda terima atau informasi tentang Akun Anda.</p><h4>Data Anonim</h4><p>Kami dapat membuat, menggunakan, melisensikan atau mengungkapkan Informasi Pribadi, yang tersedia, dengan catatan, (i) bahwa semua hal yang dapat mengidentifikasi telah dihapus sehingga data, baik sendiri atau dikombinasi dengan data lain yang tersedia, tidak dapat dihubungkan dengan atau dikaitkan dengan atau tidak dapat mengidentifikasi suatu individu, dan (ii) data serupa telah digabungkan sehingga data asli membentuk bagian dari kumpulan data yang lebih besar.</p><h4>Platform Pihak Ketiga</h4><ol><li data-list=\"ordered\">Platform dan Materi Pemasaran dapat berisi tautan ke situs web yang dioperasikan oleh pihak ketiga. Kami tidak mengendalikan atau menerima pertanggungjawaban atau tanggung jawab untuk situs ini dan untuk pengumpulan, penggunaan, pemeliharaan, berbagi, atau pengungkapan data dan informasi oleh pihak ketiga tersebut. Silakan baca syarat dan ketentuan dan kebijakan privasi dari situs pihak ketiga tersebut untuk mengetahui bagaimana mereka mengumpulkan dan menggunakan Informasi Pribadi Anda.</li><li data-list=\"ordered\">Iklan yang terdapat pada Platform, dan Materi Pemasaran kami berfungsi sebagai tautan ke situs pengiklan dan dengan demikian segala informasi yang mereka kumpulkan berdasarkan klik Anda pada tautan itu akan dikumpulkan dan digunakan oleh pengiklan yang relevan sesuai dengan kebijakan privasi pengiklan tersebut.</li></ol><h4>Keterpisahan</h4><p>Jika ketentuan dalam Kebijakan Privasi ini dinyatakan tidak berlaku, illegal atau tidak bisa dilaksanakan karena alasan apa pun oleh hukum atau kebijakan publik lainnya, ketidakberlakuan tersebut hanya akan terbatas pada ketentuan yang tidak berlaku atau tidak dapat dilaksanakan dan ketentuan lainnya dalam Kebijakan Privasi ini akan tetap berlaku penuh.</p><h6>Cara untuk Menghubungi Kami</h6><h6>Jika Anda memiliki pertanyaan mengenai Kebijakan Privasi ini atau Anda ingin mendapatkan akses terhadap Informasi Pribadi Anda, silakan hubungi&nbsp;<em>customer support&nbsp;</em>kami di 1500970 dan/atau&nbsp;<em>email&nbsp;</em>di&nbsp;<a href=\"privacy@ptnetindo.com\" target=\"_blank\" style=\"color: rgb(0, 180, 235);\">privacy@ptnetindo.com</a>.</h6>', '', '2022-04-20 13:27:56');
INSERT INTO `section` (`id`, `judul`, `deskripsi`, `gambar`, `tanggal`) VALUES
(2, 'Tentang', '<h2>Right Partner for Software Innovation</h2><p>Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum auctor a ornare odio.</p>', 'upload/section/450cb4ed0f0c5328fe2d33dd4367d171.png', '2022-04-18 08:55:39'),
(3, 'Syarat_Ketentuan', '<h4 class=\"ql-align-center\">BACALAH SELURUH KETENTUAN PENGGUNAAN INI SEBELUM MENGAKSES ATAU MENGGUNAKAN LAYANAN MOKAPOS</h4><p>Ketentuan Penggunaan MOKAPOS ini mengatur hubungan antara pengguna (“Mitra Usaha”) dan PT Moka Teknologi Indonesia (\"MOKA\"), dengan ketentuan-ketentuan sebagaimana tertera di bawah ini yang dituangkan dalam bentuk Kontrak Elektronik.</p><p>MOKA dan Mitra Usaha masing-masing disebut sebagai “Pihak” dan secara bersama-sama disebut sebagai “Para Pihak”.</p><p>Bahwa:</p><ol><li data-list=\"ordered\">MOKA adalah suatu perusahaan yang bergerak di bidang aktivitas pengolahan data, portal web dan/atau platform digital dengan tujuan komersial serta penyediaan layanan aplikasi sistem kasir dengan merek dagang “MOKA”.</li><li data-list=\"ordered\">Mitra Usaha adalah suatu badan hukum dan/atau perorangan yang bergerak di bidang perdagangan barang dan/atau jasa, bertindak secara independen, menjalankan bisnisnya dengan kebijakan sendiri dan bermaksud untuk menggunakan layanan MOKAPOS.</li><li data-list=\"ordered\">Ketentuan Penggunaan ini mengatur akses dan penggunaan Mitra Usaha atas Aplikasi MOKAPOS, situs web&nbsp;https://www.mokapos.com/&nbsp;dan&nbsp;https://backoffice.mokapos.com/, beserta konten dan produk-produk yang MOKA sediakan didalamnya (selanjutnya secara bersama-sama disebut sebagai “Platform MOKAPOS”).</li><li data-list=\"ordered\">Dengan menyetujui Ketentuan Penggunaan ini, Mitra Usaha juga menyetujui Ketentuan Penggunaan tambahan, termasuk Ketentuan Penggunaan pada masing-masing Layanan, beserta setiap perubahannya yang merupakan bagian yang tidak terpisahkan dari Ketentuan Penggunaan ini (selanjutnya, Ketentuan Penggunaan, Ketentuan Penggunaan tambahan dan setiap perubahannya secara bersama-sama disebut sebagai “Ketentuan Penggunaan”). Meskipun merupakan satu kesatuan, Ketentuan Penggunaan tambahan akan berlaku dalam hal terdapat perbedaan dengan Ketentuan Penggunaan.</li></ol>', 'upload/section/a8250f11164aeef6c85e9c91b0f4c316.png', '2022-04-20 13:01:43'),
(4, 'Pengaturan_Cookie', 'Pengaturan Cookie Saat anda mengunjungi situs web kami, kami menyimpan cookies di peramban anda untuk mengumpulkan informasi. Informasi yang dikumpulkan mungkin berhubungan dengan anda, preferensi anda atau perangkat anda, dan sebagian besar digunakan untuk membuat situs berfungsi seperti yang anda harapkan dan untuk memberikan pengalaman web yang lebih personal. Namun, anda dapat memilih untuk tidak mengizinkan jenis cookies tertentu, yang dapat mempengaruhi pengalaman anda di situs dan layanan yang dapat kami tawarkan. Klik pada judul kategori yang berbeda untuk mengetahui lebih lanjut dan mengubah pengaturan default kami sesuai dengan preferensi anda. Anda tidak dapat memilih keluar dari Cookies Yang Sangat Diperlukan kami karena cookies tersebut digunakan untuk memastikan berfungsinya situs web kami dengan benar (seperti meminta spanduk cookies dan mengingat pengaturan anda, untuk masuk ke akun anda, untuk mengarahkan anda saat anda keluar, dll.)', '', '2022-04-20 13:26:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sejarah`
--

CREATE TABLE `sejarah` (
  `id` int(11) NOT NULL,
  `deskripsi` varchar(100) NOT NULL,
  `tanggal` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sejarah`
--

INSERT INTO `sejarah` (`id`, `deskripsi`, `tanggal`) VALUES
(1, 'PT NETINDO MEDIATAMA PERKASA DI BENTUK', '2011-01'),
(2, 'PT NETINDO MEDIATAMA PERKASA MELUNCURKAN APLIKASI NPOS', '2012-07'),
(3, 'NPOS BERHASIL MENJANGKAU LEBIH DARI 500 TOKO', '2013-06'),
(4, 'NPOS MENJANGKAU 1000 TOKO', '2014-11'),
(5, 'NPOS DILUNCURKAN DI 8 KOTA BESAR INDONESIA', '2015-02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `socmed`
--

CREATE TABLE `socmed` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  `gambar` varchar(200) NOT NULL,
  `status` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `socmed`
--

INSERT INTO `socmed` (`id`, `nama`, `link`, `gambar`, `status`, `tanggal`) VALUES
(1, 'Facebook', 'https://facebook.com', 'upload/socmed/066be1b2af63b24b01d6ada1ed5c9881.png', 1, '2022-04-13 00:52:54'),
(8, 'Instagram', 'https://instagram.com', 'upload/socmed/a834ee6d783cfb6ae12b50399da23d77.webp', 1, '2022-04-20 10:31:25'),
(9, 'Twitter', 'https://twitter.com', 'upload/socmed/05546a4401d35050db186764e039793d.png', 1, '2022-04-20 10:32:13'),
(10, 'Shopee', 'https://shopee.com', 'upload/socmed/d8dfdbab8e1e6df6efda47fa0c4800ed.png', 1, '2022-04-20 10:34:50'),
(11, 'Tokopedia', 'https://tokopedia.com', 'upload/socmed/d02ecc26f5ba63a6100d1758570b3ac3.png', 1, '2022-04-20 10:36:09'),
(12, 'Youtube', 'https://youtube.com', 'upload/socmed/0df56b57627de1609a3464d172caa943.webp', 1, '2022-04-20 10:33:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `testimoni`
--

CREATE TABLE `testimoni` (
  `id` int(11) NOT NULL,
  `partner` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `deskripsi` longtext NOT NULL,
  `gambar` varchar(200) NOT NULL,
  `status` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `testimoni`
--

INSERT INTO `testimoni` (`id`, `partner`, `nama`, `deskripsi`, `gambar`, `status`, `tanggal`) VALUES
(1, 6, 'annashrul', '<p>mantap sekali pelayanannya, terimakasi netindo sudah membantu kami dalam penanganan software</p>', 'upload/testimoni/18ab1936e9ae652260836d1420aa7027.jpg', 1, '2022-04-22 11:15:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `video`
--

INSERT INTO `video` (`id`, `judul`, `gambar`, `link`, `status`, `tanggal`) VALUES
(1, 'Void Transaksi Penjualan (Retur)', 'upload/video/adc2a2f3330f061b293b507d59f79f3c.webp', 'Oww0ixzF1z4', 1, '2022-04-18 08:15:32'),
(2, 'Penjualan Tunai, EDC & Gabungan', 'upload/video/e86cb7fc6acb7b5ca50d347ca1ca8ace.webp', 'YcKQmar-ubk', 1, '2022-04-18 08:15:20'),
(3, 'Setup Printer Apps NPOS', 'upload/video/db262383974f71f73d693851c57c01c1.webp', 'gssqNf1c2FI', 1, '2022-04-18 08:13:26'),
(4, 'Transaksi Penjualan Dengan Diskon', 'upload/video/249b3e6db8461755c42fb03cb29f3932.webp', 'uOUKtEEyzlc', 1, '2022-04-18 08:14:26'),
(5, 'Transaksi Penjualan (Hold Bill)', 'upload/video/09104060f7b44f1fef2659331bb97595.webp', 'xpdeZLCro8s', 1, '2022-04-18 08:16:30');

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `view_informasi`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `view_informasi` (
`id` int(11)
,`judul` varchar(100)
,`slug` varchar(200)
,`deskripsi` longtext
,`gambar` varchar(100)
,`tags` longtext
,`status` int(11)
,`tanggal` timestamp
,`kategori` varchar(200)
,`id_kategori` int(11)
,`jenis` varchar(100)
,`id_jenis` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `view_model`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `view_model` (
`id` int(11)
,`nama` varchar(200)
,`slug` varchar(100)
,`warna` varchar(50)
,`status` int(11)
,`id_kategori` int(11)
,`nama_kategori` varchar(200)
,`slug_kategori` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `view_paket`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `view_paket` (
`id` int(11)
,`model` text
,`kategori` int(11)
,`nama` varchar(200)
,`deskripsi` longtext
,`gambar` varchar(100)
,`status` int(11)
,`harga` varchar(50)
,`harga_coret` varchar(50)
,`varian` longtext
,`tanggal` timestamp
,`nama_kategori` varchar(200)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `view_produk`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `view_produk` (
`id` int(11)
,`platform` longtext
,`nama` varchar(200)
,`slug` varchar(200)
,`deskripsi` longtext
,`gambar` text
,`status` int(11)
,`tanggal` timestamp
,`model` int(11)
,`nama_model` varchar(200)
,`slug_model` varchar(100)
,`kategori` int(11)
,`nama_kategori` varchar(200)
,`slug_kategori` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `view_testimoni`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `view_testimoni` (
`id` int(11)
,`nama` varchar(100)
,`deskripsi` longtext
,`gambar` varchar(200)
,`status` int(11)
,`tanggal` timestamp
,`id_partner` int(11)
,`nama_partner` varchar(100)
,`gambar_partner` varchar(100)
,`link_partner` varchar(100)
,`model` text
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `visitor`
--

CREATE TABLE `visitor` (
  `id_visitor` int(11) NOT NULL,
  `ip_visitor` varchar(32) NOT NULL,
  `browser_visitor` varchar(64) NOT NULL,
  `date_visitor` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `platform` varchar(200) NOT NULL,
  `full_info` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `visitor`
--

INSERT INTO `visitor` (`id_visitor`, `ip_visitor`, `browser_visitor`, `date_visitor`, `platform`, `full_info`) VALUES
(4, '36.72.28.17', 'Chrome', '2022-03-09 21:37:25', '', ''),
(5, '34.221.130.133', 'Other', '2022-02-28 22:07:24', '', ''),
(6, '54.201.209.214', 'Other', '2022-02-28 22:08:46', '', ''),
(7, '70.42.131.170', 'Internet Explorer', '2022-03-02 00:35:19', '', ''),
(8, '65.154.226.126', 'Chrome', '2022-03-02 00:39:33', '', ''),
(9, '103.59.156.16', 'Internet Explorer', '2022-03-02 00:47:16', '', ''),
(10, '65.154.226.109', 'Internet Explorer', '2020-03-01 01:26:59', '', ''),
(11, '103.123.84.203', 'Ubuntu Web Browser', '2021-03-01 01:27:18', '', ''),
(12, '66.165.236.210', 'Chrome', '2020-03-01 01:27:20', '', ''),
(13, '206.225.80.193', 'Firefox', '2020-03-01 01:39:36', '', ''),
(14, '103.87.78.122', 'Other', '2020-03-01 02:49:57', '', ''),
(15, '54.69.103.92', 'Other', '2020-03-01 03:53:24', '', ''),
(16, '54.39.100.61', 'Opera', '2020-03-01 09:46:30', '', ''),
(17, '46.148.112.23', 'Firefox', '2020-03-01 11:10:12', '', ''),
(18, '46.148.112.141', 'Firefox', '2020-03-01 11:10:14', '', ''),
(19, '141.8.142.9', 'YandexBot', '2021-03-02 03:10:07', '', ''),
(20, '5.45.207.20', 'YandexBot', '2021-03-02 03:10:41', '', ''),
(21, '37.9.113.204', 'YandexBot', '2021-03-02 03:10:42', '', ''),
(22, '34.222.233.212', 'Other', '2019-03-02 04:15:47', '', ''),
(23, '209.126.119.177', 'Firefox', '2019-03-02 10:27:22', '', ''),
(24, '209.126.119.176', 'Firefox', '2019-03-02 11:08:26', '', ''),
(25, '66.249.71.51', 'Googlebot', '2019-03-02 11:38:37', '', ''),
(26, '66.249.71.47', 'Googlebot', '2019-03-02 11:42:27', '', ''),
(27, '180.253.2.107', 'Chrome', '2019-03-02 16:19:24', '', ''),
(28, '18.237.189.245', 'Other', '2019-03-03 04:01:45', '', ''),
(29, '202.138.248.88', 'Chrome', '2019-03-03 06:35:47', '', ''),
(30, '222.124.113.76', 'Chrome', '2019-03-03 09:27:35', '', ''),
(31, '61.154.29.140', 'Chrome', '2019-03-04 01:51:59', '', ''),
(32, '13.92.226.151', 'Chrome', '2019-03-04 05:01:25', '', ''),
(33, '36.71.232.19', 'Chrome', '2019-03-04 15:18:27', '', ''),
(34, '10.32.84.87', 'Chrome', '2019-03-04 15:18:30', '', ''),
(35, '165.227.189.110', 'Internet Explorer', '2019-03-05 03:54:36', '', ''),
(36, '54.187.107.9', 'Other', '2019-03-05 04:04:21', '', ''),
(37, '114.124.196.102', 'Chrome', '2019-03-05 06:07:33', '', ''),
(38, '207.46.13.99', 'Bing', '2019-03-05 12:42:03', '', ''),
(39, '66.249.71.49', 'Googlebot', '2019-03-05 13:00:30', '', ''),
(40, '54.212.204.50', 'Other', '2019-03-06 10:56:03', '', ''),
(41, '157.55.39.65', 'Bing', '2019-03-06 20:31:26', '', ''),
(42, '66.249.71.63', 'Googlebot', '2019-03-06 23:03:44', '', ''),
(43, '66.249.70.17', 'Googlebot', '2019-03-07 06:57:35', '', ''),
(44, '66.249.70.15', 'Googlebot', '2019-03-07 07:26:03', '', ''),
(45, '5.9.116.101', 'Chrome', '2019-03-07 09:16:42', '', ''),
(46, '34.219.106.255', 'Other', '2019-03-07 11:07:13', '', ''),
(47, '207.241.229.160', 'Chrome', '2019-03-07 12:26:15', '', ''),
(48, '5.255.251.14', 'YandexBot', '2019-03-07 12:26:51', '', ''),
(49, '10.3.5.121', 'Chrome', '2019-03-07 12:27:36', '', ''),
(50, '66.249.70.19', 'Googlebot', '2019-03-07 12:33:08', '', ''),
(51, '207.241.225.217', 'Chrome', '2019-03-07 12:44:56', '', ''),
(52, '207.241.230.164', 'Chrome', '2019-03-07 16:46:18', '', ''),
(53, '66.249.84.97', 'Mozilla', '2019-03-07 16:53:20', '', ''),
(54, '66.249.84.100', 'Mozilla', '2019-03-07 16:53:20', '', ''),
(55, '66.249.84.127', 'Mozilla', '2019-03-07 16:55:12', '', ''),
(56, '207.241.229.161', 'Chrome', '2019-03-07 16:56:20', '', ''),
(57, '66.249.64.93', 'Googlebot', '2019-03-07 20:57:20', '', ''),
(58, '157.55.39.245', 'Bing', '2019-03-08 04:29:36', '', ''),
(59, '34.213.254.146', 'Other', '2019-03-08 10:52:01', '', ''),
(60, '63.35.235.136', 'Other', '2019-03-08 19:21:48', '', ''),
(61, '34.216.142.33', 'Firefox', '2019-03-09 19:32:24', '', ''),
(62, '182.0.231.147', 'Chrome', '2019-03-10 12:58:37', '', ''),
(63, '182.0.196.58', 'Chrome', '2019-03-10 12:58:44', '', ''),
(64, '182.0.196.170', 'Chrome', '2019-03-10 12:58:44', '', ''),
(65, '182.0.196.110', 'Chrome', '2019-03-10 12:58:44', '', ''),
(66, '182.0.230.76', 'Chrome', '2019-03-10 12:58:44', '', ''),
(67, '182.0.231.137', 'Chrome', '2019-03-10 12:58:44', '', ''),
(68, '182.0.231.199', 'Chrome', '2019-03-10 12:58:44', '', ''),
(69, '182.0.230.170', 'Chrome', '2019-03-10 13:01:14', '', ''),
(70, '182.0.196.222', 'Chrome', '2019-03-10 13:01:17', '', ''),
(71, '182.0.230.15', 'Chrome', '2019-03-10 13:01:17', '', ''),
(72, '182.0.231.156', 'Chrome', '2019-03-10 13:01:17', '', ''),
(73, '182.0.229.27', 'Chrome', '2019-03-10 13:01:17', '', ''),
(74, '114.124.140.14', 'Chrome', '2019-03-10 22:53:45', '', ''),
(75, '114.124.132.191', 'Chrome', '2019-03-10 22:53:47', '', ''),
(76, '114.124.132.63', 'Chrome', '2019-03-10 22:53:47', '', ''),
(77, '34.247.39.64', 'Other', '2019-03-11 04:11:52', '', ''),
(78, '111.95.65.209', 'Chrome', '2019-03-11 12:37:39', '', ''),
(79, '114.124.145.36', 'Chrome', '2019-03-11 13:57:42', '', ''),
(80, '114.124.144.5', 'Chrome', '2019-03-11 13:57:44', '', ''),
(81, '114.124.144.21', 'Chrome', '2019-03-11 13:57:44', '', ''),
(82, '114.124.144.52', 'Chrome', '2019-03-11 13:57:44', '', ''),
(83, '120.188.79.139', 'Chrome', '2019-03-11 14:57:09', '', ''),
(84, '182.0.198.211', 'Chrome', '2019-03-11 14:57:10', '', ''),
(85, '182.0.197.140', 'Chrome', '2019-03-11 14:57:18', '', ''),
(86, '182.0.199.98', 'Chrome', '2019-03-11 14:57:18', '', ''),
(87, '182.0.199.6', 'Chrome', '2019-03-11 14:57:18', '', ''),
(88, '182.0.198.79', 'Chrome', '2019-03-11 14:57:18', '', ''),
(89, '182.0.197.150', 'Chrome', '2019-03-11 14:57:18', '', ''),
(90, '182.0.196.220', 'Chrome', '2019-03-11 14:57:31', '', ''),
(91, '182.0.196.151', 'Chrome', '2019-03-11 14:57:34', '', ''),
(92, '182.0.197.4', 'Chrome', '2019-03-11 14:57:34', '', ''),
(93, '182.0.198.99', 'Chrome', '2019-03-11 15:31:35', '', ''),
(94, '36.72.50.103', 'Chrome', '2019-03-11 17:23:33', '', ''),
(95, '23.224.64.108', 'Firefox', '2019-03-11 17:56:09', '', ''),
(96, '38.130.165.111', 'Safari', '2019-03-11 18:19:07', '', ''),
(97, '38.130.184.169', 'Firefox', '2019-03-11 18:21:41', '', ''),
(98, '109.74.10.14', 'Mozilla', '2019-03-12 10:22:07', '', ''),
(99, '66.249.69.5', 'Googlebot', '2019-03-12 12:07:14', '', ''),
(100, '66.249.69.3', 'Googlebot', '2019-03-12 12:07:52', '', ''),
(101, '34.219.133.162', 'Other', '2019-03-12 13:39:48', '', ''),
(102, '66.249.69.7', 'Googlebot', '2019-03-12 23:23:02', '', ''),
(103, '178.154.245.132', 'YandexBot', '2019-03-13 01:54:34', '', ''),
(104, '162.243.54.19', 'Other', '2019-03-13 10:06:06', '', ''),
(105, '69.164.193.58', 'Safari', '2019-03-13 10:11:48', '', ''),
(106, '54.189.122.202', 'Other', '2019-03-13 14:27:31', '', ''),
(107, '66.249.71.33', 'Googlebot', '2019-03-13 19:44:32', '', ''),
(108, '77.88.9.130', 'YandexBot', '2019-03-13 19:49:38', '', ''),
(109, '95.27.165.33', 'Internet Explorer', '2019-03-14 01:24:44', '', ''),
(110, '66.249.71.38', 'Googlebot', '2019-03-14 06:59:10', '', ''),
(111, '148.251.4.136', 'Chrome', '2019-03-14 09:06:04', '', ''),
(112, '95.216.18.217', 'Chrome', '2019-03-14 09:54:34', '', ''),
(113, '125.163.51.51', 'Chrome', '2019-03-14 10:10:22', '', ''),
(114, '182.0.215.33', 'Chrome', '2019-03-14 18:47:00', '', ''),
(115, '180.245.91.165', 'Chrome', '2019-03-14 21:12:47', '', ''),
(116, '66.249.71.36', 'Googlebot', '2019-03-15 05:13:36', '', ''),
(117, '95.84.145.219', 'Internet Explorer', '2019-03-15 06:43:54', '', ''),
(118, '157.55.39.148', 'Bing', '2019-03-15 06:52:43', '', ''),
(119, '37.204.9.196', 'Internet Explorer', '2019-03-15 11:02:18', '', ''),
(120, '114.124.171.135', 'Chrome', '2019-03-15 11:25:55', '', ''),
(121, '66.249.65.161', 'Googlebot', '2019-03-16 14:01:43', '', ''),
(122, '54.202.63.79', 'Other', '2019-03-17 11:19:59', '', ''),
(123, '40.77.167.85', 'Bing', '2019-03-17 13:32:01', '', ''),
(124, '188.232.99.209', 'Internet Explorer', '2019-03-18 12:57:56', '', ''),
(125, '120.188.73.64', 'Chrome', '2019-03-18 13:05:51', '', ''),
(126, '114.124.150.250', 'Chrome', '2019-03-18 13:07:20', '', ''),
(127, '114.124.151.60', 'Chrome', '2019-03-18 13:07:37', '', ''),
(128, '34.255.181.18', 'Other', '2019-03-18 23:46:50', '', ''),
(129, '36.79.249.131', 'Chrome', '2019-03-19 01:13:07', '', ''),
(130, '207.46.13.3', 'Bing', '2019-03-19 07:01:42', '', ''),
(131, '10.64.49.25', 'Internet Explorer', '2019-03-20 00:39:39', '', ''),
(132, '54.202.238.69', 'Other', '2019-03-20 11:44:22', '', ''),
(133, '180.245.230.242', 'Chrome', '2019-03-20 17:04:26', '', ''),
(134, '111.95.66.11', 'Chrome', '2019-03-21 00:09:50', '', ''),
(135, '36.72.26.169', 'Chrome', '2019-03-21 17:45:24', '', ''),
(136, '54.185.220.219', 'Firefox', '2019-03-21 21:26:32', '', ''),
(137, '141.8.141.129', 'YandexBot', '2019-03-22 00:09:58', '', ''),
(138, '180.253.226.28', 'Chrome', '2019-03-22 02:29:14', '', ''),
(139, '64.246.165.200', 'Firefox', '2019-03-22 14:21:24', '', ''),
(140, '37.204.75.254', 'Internet Explorer', '2019-03-24 09:14:16', '', ''),
(141, '35.165.120.239', 'Other', '2019-03-24 16:10:47', '', ''),
(142, '34.235.121.212', 'Chrome', '2019-03-25 22:01:43', '', ''),
(143, '27.56.174.125', 'Other', '2019-03-26 21:31:52', '', ''),
(144, '104.223.54.159', 'Firefox', '2019-03-27 22:43:09', '', ''),
(145, '207.46.13.241', 'Bing', '2019-03-28 07:17:21', '', ''),
(146, '66.249.79.102', 'Googlebot', '2019-03-29 00:20:37', '', ''),
(147, '182.0.166.179', 'Chrome', '2019-03-29 18:25:01', '', ''),
(148, '66.249.64.193', 'Googlebot', '2019-03-29 23:10:13', '', ''),
(149, '212.33.255.53', 'Chrome', '2019-03-30 10:00:06', '', ''),
(150, '157.55.39.158', 'Bing', '2019-03-30 18:57:46', '', ''),
(151, '36.71.232.60', 'Chrome', '2019-03-30 21:54:44', '', ''),
(152, '52.25.189.91', 'Chrome', '2019-03-30 23:48:57', '', ''),
(153, '54.184.74.1', 'Other', '2019-03-31 11:01:22', '', ''),
(154, '180.253.241.218', 'Chrome', '2019-03-31 15:29:57', '', ''),
(155, '110.136.158.240', 'Chrome', '2019-03-31 16:52:00', '', ''),
(156, '157.55.39.94', 'Bing', '2019-03-31 18:21:42', '', ''),
(157, '159.65.174.16', 'Mozilla', '2019-04-01 11:05:20', '', ''),
(158, '40.77.167.112', 'Bing', '2019-04-01 13:59:35', '', ''),
(159, '182.0.207.128', 'Chrome', '2019-04-01 18:27:40', '', ''),
(160, '36.79.187.127', 'Chrome', '2019-04-01 22:11:53', '', ''),
(161, '37.204.67.170', 'Internet Explorer', '2019-04-02 02:21:37', '', ''),
(162, '195.154.107.51', 'Other', '2019-04-02 03:52:24', '', ''),
(163, '207.46.13.18', 'Bing', '2019-04-02 14:47:55', '', ''),
(164, '114.124.196.212', 'Chrome', '2019-04-03 00:24:58', '', ''),
(165, '207.46.13.38', 'Bing', '2019-04-03 06:00:10', '', ''),
(166, '10.64.49.29', 'Internet Explorer', '2019-04-03 06:33:08', '', ''),
(167, '139.195.38.195', 'Chrome', '2019-04-03 14:08:20', '', ''),
(168, '159.65.173.229', 'Mozilla', '2019-04-03 18:10:12', '', ''),
(169, '142.93.183.168', 'Mozilla', '2019-04-03 19:47:07', '', ''),
(170, '186.182.82.64', 'Internet Explorer', '2019-04-03 19:54:17', '', ''),
(171, '72.14.199.50', 'Mozilla', '2019-04-03 23:09:15', '', ''),
(172, '100.26.211.76', 'Chrome', '2019-04-04 01:31:11', '', ''),
(173, '192.227.230.102', 'Firefox', '2019-04-04 06:53:38', '', ''),
(174, '54.245.194.26', 'Other', '2019-04-04 11:18:51', '', ''),
(175, '185.153.196.157', 'Firefox', '2019-04-04 16:35:08', '', ''),
(176, '157.55.39.218', 'Bing', '2019-04-06 03:09:58', '', ''),
(177, '37.160.53.8', 'Firefox', '2019-04-06 04:56:12', '', ''),
(178, '35.166.228.153', 'Other', '2019-04-06 13:24:23', '', ''),
(179, '209.97.134.190', 'Firefox', '2019-04-07 04:28:00', '', ''),
(180, '34.218.77.131', 'Other', '2019-04-07 11:20:49', '', ''),
(181, '66.249.65.164', 'Googlebot', '2019-04-07 14:44:23', '', ''),
(182, '34.220.182.193', 'Mozilla', '2019-04-08 11:01:48', '', ''),
(183, '118.96.235.9', 'Chrome', '2019-04-08 17:04:01', '', ''),
(184, '34.216.183.18', 'Chrome', '2019-04-08 18:15:43', '', ''),
(185, '36.72.18.85', 'Chrome', '2019-04-09 03:38:58', '', ''),
(186, '51.15.76.110', 'Firefox', '2019-04-09 10:19:06', '', ''),
(187, '182.0.165.213', 'Chrome', '2019-04-10 01:38:09', '', ''),
(188, '54.81.225.130', 'Chrome', '2019-04-10 23:07:53', '', ''),
(189, '157.55.39.173', 'Bing', '2019-04-11 00:29:49', '', ''),
(190, '157.55.39.153', 'Bing', '2019-04-11 13:27:56', '', ''),
(191, '138.197.169.130', 'Chrome', '2019-04-11 22:04:48', '', ''),
(192, '66.249.79.100', 'Googlebot', '2019-04-11 23:01:01', '', ''),
(193, '114.124.212.24', 'Chrome', '2019-04-12 00:24:25', '', ''),
(194, '178.140.209.211', 'Internet Explorer', '2019-04-12 05:27:38', '', ''),
(195, '66.249.79.97', 'Googlebot', '2019-04-12 09:15:41', '', ''),
(196, '207.46.13.97', 'Bing', '2019-04-12 11:02:00', '', ''),
(197, '114.124.206.208', 'Chrome', '2019-04-12 13:31:24', '', ''),
(198, '157.55.39.205', 'Bing', '2019-04-12 23:49:50', '', ''),
(199, '36.71.234.173', 'Chrome', '2019-04-13 15:50:54', '', ''),
(200, '216.145.11.94', 'Firefox', '2019-04-13 18:15:33', '', ''),
(201, '91.210.147.87', 'Chrome', '2019-04-13 23:24:48', '', ''),
(202, '110.136.108.69', 'Chrome', '2019-04-14 14:54:07', '', ''),
(203, '54.36.148.242', 'Mozilla', '2019-04-14 17:46:27', '', ''),
(204, '54.36.148.93', 'Mozilla', '2019-04-16 00:38:34', '', ''),
(205, '157.55.39.209', 'Bing', '2019-04-16 03:25:27', '', ''),
(206, '40.89.159.77', 'Chrome', '2019-04-16 10:59:40', '', ''),
(207, '13.113.194.116', 'Chrome', '2019-04-16 16:50:51', '', ''),
(208, '217.12.211.189', 'Chrome', '2019-04-16 17:51:27', '', ''),
(209, '203.205.29.177', 'Chrome', '2019-04-16 18:54:02', '', ''),
(210, '54.36.148.233', 'Mozilla', '2019-04-16 22:09:27', '', ''),
(211, '149.202.86.127', 'Internet Explorer', '2019-04-16 23:20:23', '', ''),
(212, '52.53.189.73', 'Chrome', '2019-04-17 12:15:50', '', ''),
(213, '157.55.39.199', 'Bing', '2019-04-18 17:50:48', '', ''),
(214, '66.249.69.196', 'Googlebot', '2019-04-18 23:54:57', '', ''),
(215, '66.249.69.193', 'Googlebot', '2019-04-19 03:39:57', '', ''),
(216, '107.21.1.8', 'Mozilla', '2019-04-19 03:54:15', '', ''),
(217, '36.71.234.214', 'Chrome', '2019-04-19 05:25:21', '', ''),
(218, '114.124.132.86', 'Chrome', '2019-04-19 11:23:28', '', ''),
(219, '66.249.69.198', 'Googlebot', '2019-04-19 13:02:27', '', ''),
(220, '34.211.91.30', 'Other', '2019-04-19 14:53:50', '', ''),
(221, '207.46.13.229', 'Bing', '2019-04-19 23:30:40', '', ''),
(222, '178.32.147.150', 'Chrome', '2019-04-20 18:13:31', '', ''),
(223, '54.36.150.51', 'Mozilla', '2019-04-20 20:11:38', '', ''),
(224, '54.36.148.102', 'Mozilla', '2019-04-20 22:47:11', '', ''),
(225, '46.160.110.146', 'Firefox', '2019-04-21 01:19:03', '', ''),
(226, '157.55.39.117', 'Bing', '2019-04-21 02:24:57', '', ''),
(227, '54.255.219.67', 'Chrome', '2019-04-21 11:09:22', '', ''),
(228, '54.36.150.74', 'Mozilla', '2019-04-21 19:59:42', '', ''),
(229, '54.36.149.2', 'Mozilla', '2019-04-21 21:37:45', '', ''),
(230, '210.4.134.34', 'Chrome', '2019-04-21 22:00:03', '', ''),
(231, '114.124.203.175', 'Chrome', '2019-04-22 01:54:01', '', ''),
(232, '157.55.39.184', 'Bing', '2019-04-22 04:57:56', '', ''),
(233, '114.124.234.63', 'Chrome', '2019-04-22 08:56:07', '', ''),
(234, '114.124.149.95', 'Chrome', '2019-04-22 11:03:46', '', ''),
(235, '114.124.233.158', 'Chrome', '2019-04-22 22:55:35', '', ''),
(236, '118.173.154.3', 'Chrome', '2019-04-22 22:57:03', '', ''),
(237, '54.36.149.51', 'Mozilla', '2019-04-23 00:33:03', '', ''),
(238, '173.252.95.30', 'Other', '2019-04-23 00:52:55', '', ''),
(239, '173.252.95.10', 'Other', '2019-04-23 00:52:58', '', ''),
(240, '173.252.95.12', 'Other', '2019-04-23 00:52:58', '', ''),
(241, '173.252.95.1', 'Other', '2019-04-23 00:52:58', '', ''),
(242, '110.136.154.89', 'Chrome', '2019-04-23 00:53:27', '', ''),
(243, '140.213.57.213', 'Chrome', '2019-04-23 01:01:56', '', ''),
(244, '69.171.251.9', 'Other', '2019-04-23 02:51:35', '', ''),
(245, '40.77.167.196', 'Bing', '2019-04-23 08:13:03', '', ''),
(246, '54.187.61.62', 'Other', '2019-04-23 11:00:01', '', ''),
(247, '54.36.148.165', 'Mozilla', '2019-04-23 11:05:08', '', ''),
(248, '2403:6200:8862:7a24:cc76:32e8:95', 'Chrome', '2019-04-23 20:39:58', '', ''),
(249, '89.197.24.66', 'Chrome', '2019-04-24 01:31:07', '', ''),
(250, '54.218.45.20', 'Other', '2019-04-24 11:34:58', '', ''),
(251, '157.55.39.179', 'Bing', '2019-04-24 13:58:56', '', ''),
(252, '40.77.167.146', 'Bing', '2019-04-24 20:52:06', '', ''),
(253, '94.180.133.222', 'Internet Explorer', '2019-04-25 01:19:14', '', ''),
(254, '114.124.237.76', 'Chrome', '2019-04-25 22:16:19', '', ''),
(255, '176.193.174.200', 'Internet Explorer', '2019-04-26 03:59:03', '', ''),
(256, '66.249.64.196', 'Googlebot', '2019-04-26 04:18:44', '', ''),
(257, '109.70.100.25', 'Chrome', '2019-04-26 09:36:01', '', ''),
(258, '2403:6200:8862:b7d2:61a4:9a01:67', 'Chrome', '2019-04-27 00:15:14', '', ''),
(259, '72.80.29.181', 'Firefox', '2019-04-27 01:41:24', '', ''),
(260, '54.36.149.23', 'Mozilla', '2019-04-27 08:21:28', '', ''),
(261, '34.211.111.157', 'Other', '2019-04-27 10:04:13', '', ''),
(262, '62.210.103.65', 'Chrome', '2019-04-27 20:31:42', '', ''),
(263, '36.71.234.151', 'Chrome', '2019-04-28 01:17:18', '', ''),
(264, '180.245.244.30', 'Chrome', '2019-04-29 13:54:05', '', ''),
(265, '13.230.28.227', 'Other', '2019-04-29 14:56:15', '', ''),
(266, '40.77.167.115', 'Bing', '2019-04-29 15:31:55', '', ''),
(267, '52.70.146.155', 'Firefox', '2019-04-29 22:19:17', '', ''),
(268, '54.36.148.26', 'Mozilla', '2019-04-30 00:26:46', '', ''),
(269, '199.249.230.81', 'Chrome', '2019-04-30 07:19:30', '', ''),
(270, '36.71.235.198', 'Chrome', '2019-05-01 00:20:17', '', ''),
(271, '142.234.202.102', 'Firefox', '2019-05-01 01:14:18', '', ''),
(272, '188.163.35.108', 'Chrome', '2019-05-01 05:39:42', '', ''),
(273, '66.249.79.110', 'Googlebot', '2019-05-01 05:55:58', '', ''),
(274, '54.36.148.54', 'Mozilla', '2019-05-01 13:11:05', '', ''),
(275, '54.185.218.167', 'Other', '2019-05-01 15:22:07', '', ''),
(276, '66.249.79.111', 'Googlebot', '2019-05-02 03:08:41', '', ''),
(277, '157.55.39.222', 'Bing', '2019-05-02 09:55:09', '', ''),
(278, '66.249.79.114', 'Googlebot', '2019-05-03 03:00:15', '', ''),
(279, '159.203.67.47', 'Mozilla', '2019-05-03 08:31:39', '', ''),
(280, '157.55.39.84', 'Bing', '2019-05-03 11:57:35', '', ''),
(281, '165.227.107.109', 'Mozilla', '2019-05-03 14:07:34', '', ''),
(282, '207.46.13.80', 'Bing', '2019-05-03 16:53:45', '', ''),
(283, '54.36.149.79', 'Mozilla', '2019-05-03 18:27:39', '', ''),
(284, '72.14.199.1', 'Mozilla', '2019-05-04 03:09:42', '', ''),
(285, '40.77.167.153', 'Bing', '2019-05-04 11:38:32', '', ''),
(286, '54.36.148.220', 'Mozilla', '2019-05-04 22:31:44', '', ''),
(287, '198.1.96.36', 'Other', '2019-05-04 23:33:17', '', ''),
(288, '54.36.148.237', 'Mozilla', '2019-05-05 01:56:26', '', ''),
(289, '184.22.250.162', 'Chrome', '2019-05-05 19:14:44', '', ''),
(290, '64.246.165.170', 'Firefox', '2019-05-05 20:54:39', '', ''),
(291, '54.36.148.203', 'Mozilla', '2019-05-06 01:17:56', '', ''),
(292, '142.93.179.104', 'Mozilla', '2019-05-06 07:01:35', '', ''),
(293, '104.248.4.218', 'Mozilla', '2019-05-06 07:27:59', '', ''),
(294, '36.71.232.223', 'Chrome', '2019-05-06 17:38:44', '', ''),
(295, '54.36.149.57', 'Mozilla', '2019-05-06 23:41:07', '', ''),
(296, '54.36.148.69', 'Mozilla', '2019-05-07 02:05:34', '', ''),
(297, '110.136.108.217', 'Chrome', '2019-05-07 11:54:34', '', ''),
(298, '114.122.75.240', 'Chrome', '2019-05-08 00:35:41', '', ''),
(299, '115.178.222.207', 'Chrome', '2019-05-08 02:27:09', '', ''),
(300, '34.66.132.189', 'Other', '2019-05-08 03:31:06', '', ''),
(301, '35.222.166.231', 'Other', '2019-05-08 03:57:50', '', ''),
(302, '35.202.155.80', 'Other', '2019-05-08 04:46:12', '', ''),
(303, '35.222.124.181', 'Other', '2019-05-08 06:29:10', '', ''),
(304, '35.225.201.145', 'Other', '2019-05-08 07:06:06', '', ''),
(305, '35.222.243.160', 'Other', '2019-05-08 07:47:35', '', ''),
(306, '35.193.11.21', 'Other', '2019-05-08 09:26:38', '', ''),
(307, '35.225.60.34', 'Other', '2019-05-08 10:25:17', '', ''),
(308, '35.202.185.240', 'Other', '2019-05-08 13:02:02', '', ''),
(309, '34.66.103.246', 'Other', '2019-05-08 14:12:06', '', ''),
(310, '36.71.238.133', 'Chrome', '2019-05-08 19:40:18', '', ''),
(311, '125.166.216.67', 'Chrome', '2019-05-08 20:26:05', '', ''),
(312, '104.198.241.255', 'Other', '2019-05-09 11:40:55', '', ''),
(313, '87.250.224.69', 'YandexBot', '2019-05-10 05:44:51', '', ''),
(314, '87.250.224.41', 'YandexBot', '2019-05-10 13:24:37', '', ''),
(315, '222.124.118.56', 'Chrome', '2019-05-12 22:24:15', '', ''),
(316, '64.233.173.136', 'Chrome', '2019-05-12 22:25:38', '', ''),
(317, '111.95.67.209', 'Chrome', '2019-05-12 22:27:06', '', ''),
(318, '36.71.234.194', 'Chrome', '2019-05-12 22:47:04', '', ''),
(319, '110.136.145.35', 'Chrome', '2019-05-13 04:16:42', '', ''),
(320, '79.24.163.177', 'Firefox', '2019-05-13 04:44:04', '', ''),
(321, '34.80.2.167', 'Chrome', '2019-05-13 11:28:37', '', ''),
(322, '34.219.174.201', 'Chrome', '2019-05-13 13:20:34', '', ''),
(323, '34.221.123.254', 'Chrome', '2019-05-13 13:23:26', '', ''),
(324, '103.123.84.127', 'Chrome', '2019-05-13 14:05:06', '', ''),
(325, '103.123.84.111', 'Chrome', '2019-05-13 14:05:07', '', ''),
(326, '66.249.84.81', 'Chrome', '2019-05-13 14:05:11', '', ''),
(327, '51.254.101.95', 'Firefox', '2019-05-13 15:48:36', '', ''),
(328, '218.17.124.178', 'Safari', '2019-05-13 17:09:50', '', ''),
(329, '169.38.74.53', 'Firefox', '2019-05-13 17:38:07', '', ''),
(330, '42.236.10.125', 'Safari', '2019-05-13 18:10:19', '', ''),
(331, '180.163.220.4', 'Safari', '2019-05-13 18:10:47', '', ''),
(332, '34.228.224.38', 'Chrome', '2019-05-13 21:08:05', '', ''),
(333, '52.50.192.219', 'Other', '2019-05-13 22:17:29', '', ''),
(334, '18.222.54.104', 'Chrome', '2019-05-14 00:13:09', '', ''),
(335, '13.59.204.157', 'Firefox', '2019-05-14 00:31:07', '', ''),
(336, '54.149.143.251', 'Chrome', '2019-05-14 00:46:19', '', ''),
(337, '3.14.86.140', 'Mozilla', '2019-05-14 01:01:51', '', ''),
(338, '18.191.185.247', 'Mozilla', '2019-05-14 01:09:47', '', ''),
(339, '18.191.134.7', 'Mozilla', '2019-05-14 01:22:18', '', ''),
(340, '155.254.115.66', 'Internet Explorer', '2019-05-14 01:28:49', '', ''),
(341, '34.220.196.160', 'Chrome', '2019-05-14 01:58:41', '', ''),
(342, '218.5.20.226', 'Chrome', '2019-05-14 02:02:44', '', ''),
(343, '103.5.135.109', 'Chrome', '2019-05-14 03:50:17', '', ''),
(344, '182.74.219.118', 'Chrome', '2019-05-14 03:55:24', '', ''),
(345, '216.246.212.10', 'Chrome', '2019-05-14 04:15:45', '', ''),
(346, '104.223.93.199', 'Chrome', '2019-05-14 04:15:46', '', ''),
(347, '46.4.33.48', 'Mozilla', '2019-05-14 06:43:53', '', ''),
(348, '34.216.198.50', 'Chrome', '2019-05-14 12:45:39', '', ''),
(349, '34.221.26.235', 'Chrome', '2019-05-14 12:49:10', '', ''),
(350, '50.116.16.218', 'Chrome', '2019-05-14 13:26:55', '', ''),
(351, '66.249.88.8', 'Other', '2019-05-14 16:06:12', '', ''),
(352, '66.102.6.181', 'Other', '2019-05-14 16:13:55', '', ''),
(353, '66.249.83.211', 'Other', '2019-05-14 16:13:57', '', ''),
(354, '64.233.173.139', 'Other', '2019-05-14 16:17:38', '', ''),
(355, '66.249.82.133', 'Other', '2019-05-14 16:17:39', '', ''),
(356, '66.249.82.134', 'Chrome', '2019-05-14 16:17:39', '', ''),
(357, '34.213.8.71', 'Chrome', '2019-05-14 20:55:08', '', ''),
(358, '36.71.232.209', 'Chrome', '2019-05-14 23:49:39', '', ''),
(359, '66.249.65.143', 'Googlebot', '2019-05-14 23:56:03', '', ''),
(360, '1.186.191.135', 'Chrome', '2019-05-15 00:09:35', '', ''),
(361, '54.189.162.226', 'Chrome', '2019-05-15 00:12:01', '', ''),
(362, '171.78.210.85', 'Other', '2019-05-15 02:06:56', '', ''),
(363, '36.71.235.196', 'Chrome', '2019-05-15 02:14:41', '', ''),
(364, '66.249.90.81', 'AdsBot Google', '2019-05-15 03:42:07', '', ''),
(365, '101.128.64.169', 'Chrome', '2019-05-15 04:00:02', '', ''),
(366, '36.71.238.156', 'Chrome', '2019-05-15 05:38:40', '', ''),
(367, '200.59.131.249', 'Other', '2019-05-15 07:34:00', '', ''),
(368, '188.87.161.30', 'Internet Explorer', '2019-05-15 08:52:16', '', ''),
(369, '18.237.176.17', 'Chrome', '2019-05-15 09:45:23', '', ''),
(370, '18.236.225.0', 'Chrome', '2019-05-15 12:14:17', '', ''),
(371, '104.129.40.114', 'Firefox', '2019-05-15 14:03:42', '', ''),
(372, '66.249.65.147', 'Googlebot', '2019-05-15 18:47:59', '', ''),
(373, '47.99.167.6', 'Internet Explorer', '2019-05-15 19:06:49', '', ''),
(374, '180.246.26.33', 'Chrome', '2019-05-15 21:32:19', '', ''),
(375, '192.34.109.112', 'Firefox', '2019-05-15 22:07:39', '', ''),
(376, '36.71.232.194', 'Chrome', '2019-05-15 22:51:45', '', ''),
(377, '182.64.85.167', 'Other', '2019-05-15 22:54:07', '', ''),
(378, '182.64.85.50', 'Other', '2019-05-16 01:07:26', '', ''),
(379, '77.88.9.129', 'YandexBot', '2019-05-16 02:24:16', '', ''),
(380, '87.250.233.65', 'YandexBot', '2019-05-16 03:42:38', '', ''),
(381, '34.243.77.164', 'Other', '2019-05-16 12:43:55', '', ''),
(382, '36.71.232.203', 'Chrome', '2019-05-16 21:10:47', '', ''),
(383, '209.99.133.47', 'Safari', '2019-05-16 21:32:01', '', ''),
(384, '34.245.127.238', 'Other', '2019-05-16 21:37:57', '', ''),
(385, '66.249.79.115', 'Googlebot', '2019-05-16 23:02:34', '', ''),
(386, '182.0.200.81', 'Chrome', '2019-05-16 23:38:26', '', ''),
(387, '141.8.142.67', 'YandexBot', '2019-05-17 05:27:37', '', ''),
(388, '66.249.64.209', 'Googlebot', '2019-05-17 08:13:32', '', ''),
(389, '167.114.117.176', 'Mozilla', '2019-05-17 16:34:58', '', ''),
(390, '66.249.66.145', 'Googlebot', '2019-05-17 17:07:46', '', ''),
(391, '114.124.215.130', 'Chrome', '2019-05-17 20:55:02', '', ''),
(392, '114.124.150.219', 'Chrome', '2019-05-17 23:46:14', '', ''),
(393, '180.245.223.29', 'Chrome', '2019-05-18 09:30:50', '', ''),
(394, '66.249.66.147', 'Googlebot', '2019-05-18 14:58:17', '', ''),
(395, '59.61.184.141', 'Chrome', '2019-05-18 17:35:23', '', ''),
(396, '66.249.79.113', 'Googlebot', '2019-05-19 00:20:40', '', ''),
(397, '107.173.68.210', 'Firefox', '2019-05-19 02:41:25', '', ''),
(398, '180.253.224.75', 'Chrome', '2019-05-19 06:15:07', '', ''),
(399, '27.151.73.194', 'Chrome', '2019-05-19 10:41:54', '', ''),
(400, '69.58.178.58', 'Mozilla', '2019-05-19 11:57:33', '', ''),
(401, '182.0.208.65', 'Chrome', '2019-05-19 11:59:31', '', ''),
(402, '66.249.79.117', 'Googlebot', '2019-05-19 12:19:18', '', ''),
(403, '36.71.232.214', 'Chrome', '2019-05-19 19:55:04', '', ''),
(404, '114.4.4.138', 'Chrome', '2019-05-19 19:55:12', '', ''),
(405, '120.188.84.156', 'Opera', '2019-05-19 20:17:06', '', ''),
(406, '122.161.175.14', 'Other', '2019-05-19 22:54:03', '', ''),
(407, '66.249.88.181', 'Other', '2019-05-19 23:42:57', '', ''),
(408, '208.80.194.42', 'Internet Explorer', '2019-05-20 00:44:03', '', ''),
(409, '66.249.83.209', 'Other', '2019-05-20 00:54:07', '', ''),
(410, '66.249.88.179', 'Other', '2019-05-20 00:54:11', '', ''),
(411, '114.124.242.12', 'Chrome', '2019-05-20 03:50:49', '', ''),
(412, '36.71.236.121', 'Chrome', '2019-05-20 09:14:54', '', ''),
(413, '218.241.108.76', 'Safari', '2019-05-20 11:47:35', '', ''),
(414, '111.95.57.79', 'Chrome', '2019-05-20 15:26:02', '', ''),
(415, '178.62.98.131', 'Chrome', '2019-05-20 16:08:02', '', ''),
(416, '165.227.113.60', 'Chrome', '2019-05-20 18:52:34', '', ''),
(417, '61.94.145.222', 'Chrome', '2019-05-21 01:47:24', '', ''),
(418, '80.211.189.228', 'Firefox', '2019-05-21 01:57:11', '', ''),
(419, '5.45.203.14', 'YandexBot', '2019-05-21 08:19:38', '', ''),
(420, '137.226.113.34', 'Firefox', '2019-05-21 11:17:36', '', ''),
(422, '36.71.236.252', 'Chrome', '2019-05-22 08:04:28', '', ''),
(423, '64.233.173.171', 'Chrome', '2019-05-22 08:28:17', '', ''),
(424, '182.0.132.202', 'Safari', '2019-05-22 08:36:27', '', ''),
(425, '182.0.135.53', 'Safari', '2019-05-22 08:39:20', '', ''),
(426, '182.0.134.42', 'Safari', '2019-05-22 08:39:43', '', ''),
(427, '182.0.132.152', 'Safari', '2019-05-22 08:39:47', '', ''),
(428, '64.233.173.173', 'Chrome', '2019-05-22 09:01:28', '', ''),
(429, '66.249.82.135', 'Chrome', '2019-05-22 09:06:50', '', ''),
(430, '128.199.215.196', 'Other', '2019-05-22 09:08:20', '', ''),
(431, '64.233.172.171', 'Chrome', '2019-05-22 09:10:16', '', ''),
(432, '36.70.59.6', 'Safari', '2019-05-22 09:11:04', '', ''),
(433, '64.233.173.175', 'Chrome', '2019-05-22 13:12:29', '', ''),
(434, '180.244.232.23', 'Chrome', '2019-05-22 13:33:41', '', ''),
(435, '207.46.13.122', 'Bing', '2019-05-22 14:25:53', '', ''),
(436, '66.249.65.221', 'Googlebot', '2019-05-22 15:02:51', '', ''),
(437, '114.142.172.63', 'Chrome', '2019-05-22 16:08:41', '', ''),
(438, '180.248.203.53', 'Chrome', '2019-05-22 17:12:43', '', ''),
(439, '85.214.255.122', 'Opera', '2019-05-22 17:25:53', '', ''),
(440, '69.171.251.24', 'Chrome', '2019-05-22 17:25:57', '', ''),
(441, '66.249.65.75', 'Googlebot', '2019-05-22 17:40:49', '', ''),
(442, '66.249.65.77', 'Googlebot', '2019-05-22 17:44:58', '', ''),
(443, '36.72.81.101', 'Firefox', '2019-05-22 18:28:24', '', ''),
(444, '36.90.255.132', 'Chrome', '2019-05-22 19:23:04', '', ''),
(445, '106.202.101.254', 'Chrome', '2019-05-22 19:47:12', '', ''),
(446, '52.38.241.40', 'Other', '2019-05-22 20:08:48', '', ''),
(447, '222.124.11.146', 'Chrome', '2019-05-22 20:13:58', '', ''),
(448, '54.202.50.153', 'Chrome', '2019-05-22 20:14:35', '', ''),
(449, '42.190.157.49', 'Safari', '2019-05-22 20:32:06', '', ''),
(450, '36.90.159.82', 'Chrome', '2019-05-22 21:23:31', '', ''),
(451, '165.225.112.128', 'Internet Explorer', '2019-05-22 21:41:29', '', ''),
(452, '182.1.187.192', 'Chrome', '2019-05-22 21:58:23', '', ''),
(453, '104.197.79.99', 'Chrome', '2019-05-22 22:01:14', '', ''),
(454, '141.8.142.80', 'YandexBot', '2019-05-22 22:09:16', '', ''),
(455, '87.250.224.118', 'YandexBot', '2019-05-22 22:09:16', '', ''),
(456, '182.0.198.30', 'Chrome', '2019-05-22 22:13:34', '', ''),
(457, '66.220.149.9', 'Chrome', '2019-05-22 22:14:02', '', ''),
(458, '66.220.149.20', 'Spartan', '2019-05-22 22:14:03', '', ''),
(459, '182.0.199.153', 'Chrome', '2019-05-22 22:14:41', '', ''),
(460, '168.235.194.16', 'Chrome', '2019-05-22 22:28:14', '', ''),
(461, '8.37.233.106', 'Safari', '2019-05-22 22:32:23', '', ''),
(462, '114.124.140.173', 'Firefox', '2019-05-22 22:53:47', '', ''),
(463, '188.216.56.41', 'Chrome', '2019-05-22 23:27:35', '', ''),
(464, '216.74.255.182', 'Chrome', '2019-05-22 23:27:38', '', ''),
(465, '173.252.127.4', 'Other', '2019-05-23 00:16:56', '', ''),
(466, '173.252.127.3', 'Other', '2019-05-23 00:16:56', '', ''),
(467, '173.252.95.3', 'Other', '2019-05-23 00:23:30', '', ''),
(468, '173.252.95.26', 'Other', '2019-05-23 00:23:30', '', ''),
(469, '8.37.233.57', 'Safari', '2019-05-23 00:30:12', '', ''),
(470, '114.125.235.223', 'Chrome', '2019-05-23 00:33:17', '', ''),
(471, '66.220.149.32', 'Chrome', '2019-05-23 00:40:28', '', ''),
(472, '182.1.195.45', 'Safari', '2019-05-23 01:38:29', '', ''),
(473, '69.171.251.32', 'Other', '2019-05-23 01:44:52', '', ''),
(474, '69.171.251.7', 'Other', '2019-05-23 01:44:52', '', ''),
(475, '69.171.251.27', 'Other', '2019-05-23 01:44:52', '', ''),
(476, '173.252.87.22', 'Other', '2019-05-23 01:46:13', '', ''),
(477, '173.252.87.19', 'Other', '2019-05-23 01:46:13', '', ''),
(478, '173.252.87.8', 'Other', '2019-05-23 01:46:13', '', ''),
(479, '173.252.87.11', 'Other', '2019-05-23 01:46:13', '', ''),
(480, '173.252.87.7', 'Other', '2019-05-23 01:46:13', '', ''),
(481, '173.252.79.6', 'Other', '2019-05-23 02:02:26', '', ''),
(482, '173.252.79.8', 'Other', '2019-05-23 02:02:27', '', ''),
(483, '173.252.79.7', 'Other', '2019-05-23 02:02:27', '', ''),
(484, '66.220.149.7', 'Other', '2019-05-23 02:14:50', '', ''),
(485, '180.243.253.118', 'Chrome', '2019-05-23 02:41:15', '', ''),
(486, '141.8.142.37', 'YandexBot', '2019-05-23 02:51:02', '', ''),
(487, '178.154.246.12', 'YandexBot', '2019-05-23 02:51:02', '', ''),
(488, '54.36.149.80', 'Mozilla', '2019-05-23 03:04:09', '', ''),
(489, '82.212.107.226', 'Chrome', '2019-05-23 03:20:37', '', ''),
(490, '34.222.104.87', 'Chrome', '2019-05-23 03:21:10', '', ''),
(491, '3.81.71.22', 'Chrome', '2019-05-23 03:21:16', '', ''),
(492, '194.58.118.132', 'Other', '2019-05-23 03:21:55', '', ''),
(493, '40.77.167.34', 'Bing', '2019-05-23 03:29:31', '', ''),
(494, '69.171.251.40', 'Other', '2019-05-23 04:03:21', '', ''),
(495, '173.252.87.24', 'Other', '2019-05-23 04:11:22', '', ''),
(496, '173.252.87.27', 'Other', '2019-05-23 04:11:22', '', ''),
(497, '66.220.149.12', 'Other', '2019-05-23 04:27:33', '', ''),
(498, '66.220.149.31', 'Other', '2019-05-23 04:27:33', '', ''),
(499, '66.220.149.8', 'Other', '2019-05-23 04:40:02', '', ''),
(500, '173.252.87.29', 'Other', '2019-05-23 05:25:02', '', ''),
(501, '120.188.7.28', 'Chrome', '2019-05-23 05:28:17', '', ''),
(502, '116.206.15.30', 'Chrome', '2019-05-23 05:39:40', '', ''),
(503, '173.252.95.32', 'Other', '2019-05-23 05:46:10', '', ''),
(504, '173.252.127.25', 'Other', '2019-05-23 06:35:41', '', ''),
(505, '173.252.127.22', 'Other', '2019-05-23 06:35:41', '', ''),
(506, '173.252.127.11', 'Other', '2019-05-23 06:35:41', '', ''),
(507, '114.124.168.12', 'Chrome', '2019-05-23 06:39:20', '', ''),
(508, '159.89.109.125', 'Mozilla', '2019-05-23 08:00:56', '', ''),
(509, '69.171.251.26', 'Other', '2019-05-23 08:07:05', '', ''),
(510, '69.171.251.33', 'Other', '2019-05-23 08:07:05', '', ''),
(511, '120.188.76.203', 'Chrome', '2019-05-23 08:35:07', '', ''),
(512, '66.220.149.5', 'Other', '2019-05-23 08:38:40', '', ''),
(513, '66.220.149.16', 'Other', '2019-05-23 08:38:40', '', ''),
(514, '66.220.149.13', 'Other', '2019-05-23 08:38:40', '', ''),
(515, '118.137.101.95', 'Mozilla', '2019-05-23 09:12:27', '', ''),
(516, '173.252.127.43', 'Other', '2019-05-23 09:13:50', '', ''),
(517, '66.249.65.73', 'Googlebot', '2019-05-23 09:47:38', '', ''),
(518, '173.252.87.31', 'Other', '2019-05-23 11:20:42', '', ''),
(519, '173.252.87.32', 'Other', '2019-05-23 11:20:42', '', ''),
(520, '173.252.87.14', 'Other', '2019-05-23 11:20:42', '', ''),
(521, '113.200.56.1', 'Chrome', '2019-05-23 12:51:52', '', ''),
(522, '173.252.87.17', 'Other', '2019-05-23 13:14:21', '', ''),
(523, '173.252.87.25', 'Other', '2019-05-23 13:14:21', '', ''),
(524, '40.77.167.101', 'Bing', '2019-05-23 13:15:07', '', ''),
(525, '62.210.202.81', 'Internet Explorer', '2019-05-23 13:20:03', '', ''),
(526, '69.171.251.13', 'Other', '2019-05-23 14:18:01', '', ''),
(527, '69.171.251.22', 'Other', '2019-05-23 14:18:01', '', ''),
(528, '125.160.64.156', 'Safari', '2019-05-23 14:41:21', '', ''),
(529, '66.220.149.30', 'Other', '2019-05-23 15:03:14', '', ''),
(530, '173.252.127.7', 'Other', '2019-05-23 15:57:18', '', ''),
(531, '173.252.127.32', 'Other', '2019-05-23 15:57:18', '', ''),
(532, '173.252.127.8', 'Other', '2019-05-23 15:57:18', '', ''),
(533, '120.188.39.90', 'Chrome', '2019-05-23 16:04:05', '', ''),
(534, '114.124.133.69', 'Chrome', '2019-05-23 16:04:59', '', ''),
(535, '101.89.239.216', 'Chrome', '2019-05-23 16:05:08', '', ''),
(536, '40.77.167.124', 'Bing', '2019-05-23 16:28:03', '', ''),
(537, '54.36.148.49', 'Mozilla', '2019-05-23 16:34:50', '', ''),
(538, '54.36.148.169', 'Mozilla', '2019-05-23 16:35:37', '', ''),
(539, '165.22.127.162', 'Chrome', '2019-05-23 17:13:16', '', ''),
(540, '209.17.96.234', 'Mozilla', '2019-05-23 17:40:33', '', ''),
(541, '202.137.18.34', 'Chrome', '2019-05-23 17:48:16', '', ''),
(542, '36.72.213.134', 'Chrome', '2019-05-23 18:01:50', '', ''),
(543, '66.220.149.25', 'Other', '2019-05-23 18:02:12', '', ''),
(544, '66.220.149.21', 'Other', '2019-05-23 18:02:12', '', ''),
(545, '159.65.104.15', 'Chrome', '2019-05-23 18:03:27', '', ''),
(546, '115.178.234.158', 'Chrome', '2019-05-23 18:27:33', '', ''),
(547, '54.208.102.37', 'Mozilla', '2019-05-23 18:28:25', '', ''),
(548, '64.233.172.175', 'Chrome', '2019-05-23 18:46:23', '', ''),
(549, '103.100.135.72', 'Firefox', '2019-05-23 19:10:52', '', ''),
(550, '173.252.127.26', 'Other', '2019-05-23 19:10:53', '', ''),
(551, '173.252.127.41', 'Other', '2019-05-23 19:10:53', '', ''),
(552, '173.252.127.21', 'Other', '2019-05-23 19:10:53', '', ''),
(553, '54.36.148.240', 'Mozilla', '2019-05-23 19:14:51', '', ''),
(554, '66.102.9.45', 'Chrome', '2019-05-23 19:16:13', '', ''),
(555, '36.71.239.155', 'Chrome', '2019-05-23 19:16:46', '', ''),
(556, '54.212.217.39', 'Chrome', '2019-05-23 19:19:03', '', ''),
(557, '180.248.122.198', 'Chrome', '2019-05-23 19:23:31', '', ''),
(558, '69.171.251.20', 'Other', '2019-05-23 19:35:00', '', ''),
(559, '182.0.200.54', 'Chrome', '2019-05-23 19:55:55', '', ''),
(560, '8.37.233.47', 'Chrome', '2019-05-23 20:00:45', '', ''),
(561, '173.252.79.3', 'Other', '2019-05-23 20:15:40', '', ''),
(562, '173.252.79.4', 'Other', '2019-05-23 20:15:40', '', ''),
(563, '173.252.79.1', 'Other', '2019-05-23 20:15:40', '', ''),
(564, '101.89.239.238', 'Chrome', '2019-05-23 20:20:51', '', ''),
(565, '114.124.206.157', 'Chrome', '2019-05-23 20:57:36', '', ''),
(566, '114.124.204.12', 'Chrome', '2019-05-23 20:57:43', '', ''),
(567, '64.233.172.173', 'Chrome', '2019-05-23 21:07:39', '', ''),
(568, '173.252.83.6', 'Other', '2019-05-23 21:55:35', '', ''),
(569, '173.252.83.11', 'Other', '2019-05-23 21:55:35', '', ''),
(570, '173.252.83.6', 'Other', '2019-05-23 21:55:35', '', ''),
(571, '36.83.41.3', 'Chrome', '2019-05-23 22:10:04', '', ''),
(572, '182.0.134.108', 'Chrome', '2019-05-23 22:41:05', '', ''),
(573, '66.220.149.18', 'Other', '2019-05-23 22:49:44', '', ''),
(574, '66.220.149.43', 'Other', '2019-05-23 22:49:45', '', ''),
(575, '40.117.213.15', 'Spartan', '2019-05-23 22:52:06', '', ''),
(576, '140.213.1.64', 'Chrome', '2019-05-23 22:54:24', '', ''),
(577, '125.160.115.111', 'Chrome', '2019-05-23 23:00:36', '', ''),
(578, '114.124.134.167', 'Safari', '2019-05-23 23:03:05', '', ''),
(579, '222.124.47.69', 'Chrome', '2019-05-23 23:04:38', '', ''),
(580, '119.11.181.70', 'Chrome', '2019-05-23 23:06:43', '', ''),
(581, '119.11.176.156', 'Chrome', '2019-05-23 23:12:18', '', ''),
(582, '118.136.34.86', 'Chrome', '2019-05-23 23:20:04', '', ''),
(583, '31.13.115.21', 'Spartan', '2019-05-23 23:26:00', '', ''),
(584, '61.5.82.33', 'Firefox', '2019-05-23 23:43:38', '', ''),
(585, '112.215.208.31', 'Chrome', '2019-05-24 00:23:44', '', ''),
(586, '31.13.115.3', 'Chrome', '2019-05-24 00:45:36', '', ''),
(587, '173.252.95.37', 'Chrome', '2019-05-24 00:45:36', '', ''),
(588, '180.244.234.226', 'Chrome', '2019-05-24 01:08:51', '', ''),
(589, '114.4.4.196', 'Chrome', '2019-05-24 01:25:36', '', ''),
(590, '157.55.39.229', 'Bing', '2019-05-24 01:38:28', '', ''),
(591, '54.212.119.25', 'Safari', '2019-05-24 01:57:53', '', ''),
(592, '173.252.127.44', 'Other', '2019-05-24 02:17:14', '', ''),
(593, '173.252.127.19', 'Other', '2019-05-24 02:17:14', '', ''),
(594, '36.71.238.37', 'Chrome', '2019-05-24 02:29:27', '', ''),
(595, '69.171.251.17', 'Chrome', '2019-05-24 02:57:29', '', ''),
(596, '180.244.235.134', 'Chrome', '2019-05-24 03:35:35', '', ''),
(597, '66.220.149.19', 'Other', '2019-05-24 04:14:50', '', ''),
(598, '66.220.149.23', 'Other', '2019-05-24 04:14:50', '', ''),
(599, '66.220.149.4', 'Other', '2019-05-24 04:14:50', '', ''),
(600, '185.127.17.85', 'Other', '2019-05-24 04:43:05', '', ''),
(601, '114.5.209.186', 'Chrome', '2019-05-24 06:10:14', '', ''),
(602, '112.215.236.27', 'Safari', '2019-05-24 06:23:10', '', ''),
(603, '115.178.254.90', 'Chrome', '2019-05-24 06:46:05', '', ''),
(604, '82.145.210.243', 'Opera', '2019-05-24 07:02:16', '', ''),
(605, '69.171.251.37', 'Other', '2019-05-24 07:02:29', '', ''),
(606, '66.220.149.42', 'Other', '2019-05-24 07:10:05', '', ''),
(607, '66.220.149.38', 'Other', '2019-05-24 07:10:05', '', ''),
(608, '66.220.149.17', 'Other', '2019-05-24 07:10:05', '', ''),
(609, '66.220.149.34', 'Other', '2019-05-24 07:10:05', '', ''),
(610, '66.220.149.22', 'Other', '2019-05-24 07:10:10', '', ''),
(611, '66.220.149.26', 'Other', '2019-05-24 07:10:10', '', ''),
(612, '66.220.149.41', 'Other', '2019-05-24 07:10:10', '', ''),
(613, '66.220.149.40', 'Other', '2019-05-24 07:10:10', '', ''),
(614, '36.71.232.255', 'Chrome', '2019-05-24 07:21:10', '', ''),
(615, '66.220.149.39', 'Other', '2019-05-24 09:26:59', '', ''),
(616, '140.213.49.83', 'Chrome', '2019-05-24 10:06:17', '', ''),
(617, '64.233.173.191', 'Chrome', '2019-05-24 10:46:06', '', ''),
(618, '112.215.105.153', 'Other', '2019-05-24 11:08:03', '', ''),
(619, '66.220.149.44', 'Other', '2019-05-24 11:16:24', '', ''),
(620, '42.190.159.249', 'Firefox', '2019-05-24 11:41:31', '', ''),
(621, '125.161.210.26', 'Safari', '2019-05-24 12:39:19', '', ''),
(622, '209.17.97.106', 'Mozilla', '2019-05-24 13:05:01', '', ''),
(623, '111.95.67.73', 'Spartan', '2019-05-24 13:24:59', '', ''),
(624, '182.0.232.202', 'Safari', '2019-05-24 14:05:56', '', ''),
(625, '69.171.251.42', 'Other', '2019-05-24 14:06:34', '', ''),
(626, '69.171.251.41', 'Other', '2019-05-24 14:06:34', '', ''),
(627, '69.171.251.39', 'Other', '2019-05-24 14:06:34', '', ''),
(628, '207.46.13.12', 'Bing', '2019-05-24 15:05:49', '', ''),
(629, '173.252.95.34', 'Other', '2019-05-24 15:53:49', '', ''),
(630, '173.252.95.14', 'Other', '2019-05-24 15:53:49', '', ''),
(631, '54.36.148.57', 'Mozilla', '2019-05-24 16:15:06', '', ''),
(632, '54.187.214.161', 'Other', '2019-05-24 17:10:56', '', ''),
(633, '115.164.85.115', 'Chrome', '2019-05-24 18:01:57', '', ''),
(634, '180.248.123.155', 'Chrome', '2019-05-24 18:29:41', '', ''),
(635, '203.106.140.68', 'Firefox', '2019-05-24 18:47:17', '', ''),
(636, '66.220.149.11', 'Other', '2019-05-24 19:28:43', '', ''),
(637, '66.220.149.28', 'Other', '2019-05-24 19:28:43', '', ''),
(638, '66.220.149.33', 'Other', '2019-05-24 19:28:43', '', ''),
(639, '66.220.149.10', 'Other', '2019-05-24 19:28:43', '', ''),
(640, '31.13.115.4', 'Chrome', '2019-05-24 19:58:03', '', ''),
(641, '157.55.39.52', 'Bing', '2019-05-24 19:58:17', '', ''),
(642, '180.246.195.199', 'Chrome', '2019-05-24 20:30:19', '', ''),
(643, '36.72.35.9', 'Chrome', '2019-05-24 21:11:51', '', ''),
(644, '173.252.95.46', 'Other', '2019-05-24 21:33:52', '', ''),
(645, '173.252.95.23', 'Other', '2019-05-24 21:33:52', '', ''),
(646, '182.0.135.219', 'Chrome', '2019-05-24 22:44:38', '', ''),
(647, '116.206.15.56', 'Chrome', '2019-05-24 22:53:33', '', ''),
(648, '134.249.141.24', 'Chrome', '2019-05-24 23:10:11', '', ''),
(649, '185.127.18.74', 'Other', '2019-05-24 23:12:44', '', ''),
(650, '139.255.101.218', 'Chrome', '2019-05-24 23:20:34', '', ''),
(651, '173.252.87.4', 'Chrome', '2019-05-24 23:50:44', '', ''),
(652, '173.252.87.12', 'Other', '2019-05-24 23:57:13', '', ''),
(653, '125.160.64.203', 'Safari', '2019-05-25 01:10:44', '', ''),
(654, '182.1.193.50', 'Safari', '2019-05-25 01:19:55', '', ''),
(655, '69.171.251.10', 'Other', '2019-05-25 01:25:53', '', ''),
(656, '69.171.251.23', 'Other', '2019-05-25 01:25:53', '', ''),
(657, '125.167.207.209', 'Firefox', '2019-05-25 01:37:28', '', ''),
(658, '173.252.95.13', 'Other', '2019-05-25 01:39:23', '', ''),
(659, '173.252.95.6', 'Other', '2019-05-25 01:39:23', '', ''),
(660, '173.252.95.28', 'Other', '2019-05-25 01:39:23', '', ''),
(661, '64.233.173.163', 'Chrome', '2019-05-25 01:56:13', '', ''),
(662, '31.13.127.31', 'Other', '2019-05-25 02:04:32', '', ''),
(663, '31.13.127.14', 'Other', '2019-05-25 02:04:32', '', ''),
(664, '31.13.127.4', 'Other', '2019-05-25 02:04:32', '', ''),
(665, '223.185.212.67', 'Chrome', '2019-05-25 02:20:47', '', ''),
(666, '114.4.4.198', 'Chrome', '2019-05-25 03:12:12', '', ''),
(667, '173.252.87.6', 'Other', '2019-05-25 03:26:34', '', ''),
(668, '173.252.87.26', 'Other', '2019-05-25 03:26:34', '', ''),
(669, '157.55.39.192', 'Bing', '2019-05-25 03:51:37', '', ''),
(670, '182.0.169.20', 'Chrome', '2019-05-25 04:30:23', '', ''),
(671, '140.213.13.26', 'Chrome', '2019-05-25 04:48:05', '', ''),
(672, '36.88.137.215', 'Chrome', '2019-05-25 06:07:51', '', ''),
(673, '114.124.168.182', 'Opera', '2019-05-25 06:38:53', '', ''),
(674, '112.215.65.60', 'Chrome', '2019-05-25 06:54:17', '', ''),
(675, '114.124.139.186', 'Chrome', '2019-05-25 07:08:14', '', ''),
(676, '158.140.187.209', 'Firefox', '2019-05-25 07:14:30', '', ''),
(677, '36.90.158.77', 'Chrome', '2019-05-25 07:37:31', '', ''),
(678, '114.124.135.172', 'Chrome', '2019-05-25 07:42:05', '', ''),
(679, '148.64.56.125', 'Mozilla', '2019-05-25 07:48:04', '', ''),
(680, '116.206.15.9', 'Chrome', '2019-05-25 08:27:32', '', ''),
(681, '173.252.95.19', 'Chrome', '2019-05-25 08:41:58', '', ''),
(682, '36.83.58.201', 'Chrome', '2019-05-25 09:10:16', '', ''),
(683, '182.1.176.181', 'Chrome', '2019-05-25 09:10:52', '', ''),
(684, '173.252.87.16', 'Other', '2019-05-25 09:23:37', '', ''),
(685, '114.5.212.42', 'Chrome', '2019-05-25 11:08:32', '', ''),
(686, '115.178.207.4', 'Chrome', '2019-05-25 13:47:38', '', ''),
(687, '36.82.98.148', 'Chrome', '2019-05-25 14:01:35', '', ''),
(688, '173.252.95.47', 'Other', '2019-05-25 14:04:47', '', ''),
(689, '40.77.167.83', 'Bing', '2019-05-25 14:20:37', '', ''),
(690, '209.17.97.58', 'Mozilla', '2019-05-25 14:21:35', '', ''),
(691, '182.0.143.194', 'Safari', '2019-05-25 14:24:29', '', ''),
(692, '111.95.12.83', 'Chrome', '2019-05-25 14:35:28', '', ''),
(693, '116.206.9.9', 'Chrome', '2019-05-25 15:32:33', '', ''),
(694, '66.220.149.37', 'Other', '2019-05-25 15:38:47', '', ''),
(695, '66.220.149.47', 'Other', '2019-05-25 15:38:47', '', ''),
(696, '116.206.15.19', 'Chrome', '2019-05-25 15:46:28', '', ''),
(697, '120.188.95.213', 'Chrome', '2019-05-25 15:58:33', '', ''),
(698, '5.77.36.84', 'Other', '2019-05-25 16:17:54', '', ''),
(699, '173.252.127.2', 'Other', '2019-05-25 16:40:17', '', ''),
(700, '173.252.127.31', 'Other', '2019-05-25 16:40:17', '', ''),
(701, '173.252.127.37', 'Other', '2019-05-25 16:40:17', '', ''),
(702, '8.37.230.81', 'Safari', '2019-05-25 18:04:18', '', ''),
(703, '173.252.127.9', 'Other', '2019-05-25 18:23:20', '', ''),
(704, '173.252.127.46', 'Other', '2019-05-25 18:23:20', '', ''),
(705, '173.252.127.9', 'Other', '2019-05-25 18:23:20', '', ''),
(706, '144.76.115.163', 'Majestic-12', '2019-05-25 18:50:36', '', ''),
(707, '37.32.11.152', 'Chrome', '2019-05-25 18:56:06', '', ''),
(708, '37.156.31.34', 'Chrome', '2019-05-25 18:56:11', '', ''),
(709, '78.56.102.89', 'Chrome', '2019-05-25 18:57:07', '', ''),
(710, '157.55.39.244', 'Bing', '2019-05-25 19:51:53', '', ''),
(711, '173.252.87.18', 'Chrome', '2019-05-25 20:28:39', '', ''),
(712, '173.252.87.2', 'Other', '2019-05-25 20:37:39', '', ''),
(713, '66.220.149.1', 'Other', '2019-05-25 20:45:28', '', ''),
(714, '66.220.149.46', 'Other', '2019-05-25 20:45:28', '', ''),
(715, '37.9.113.126', 'YandexBot', '2019-05-25 21:06:06', '', ''),
(716, '37.9.113.54', 'YandexBot', '2019-05-25 21:06:06', '', ''),
(717, '66.249.65.222', 'Googlebot', '2019-05-25 22:10:46', '', ''),
(718, '114.124.169.89', 'Chrome', '2019-05-25 23:44:21', '', ''),
(719, '114.124.197.2', 'Chrome', '2019-05-26 00:03:15', '', ''),
(720, '66.220.149.36', 'Other', '2019-05-26 00:15:06', '', ''),
(721, '110.76.149.194', 'Firefox', '2019-05-26 00:45:21', '', ''),
(722, '40.77.167.215', 'Bing', '2019-05-26 02:53:41', '', ''),
(723, '139.192.62.250', 'Chrome', '2019-05-26 02:57:32', '', ''),
(724, '36.89.128.55', 'Opera', '2019-05-26 03:42:36', '', ''),
(725, '112.215.253.208', 'Chrome', '2019-05-26 04:32:44', '', ''),
(726, '120.188.33.246', 'Chrome', '2019-05-26 05:15:43', '', ''),
(727, '114.124.138.50', 'Chrome', '2019-05-26 06:21:28', '', ''),
(728, '182.0.229.200', 'Firefox', '2019-05-26 06:37:40', '', ''),
(729, '66.102.6.86', 'Chrome', '2019-05-26 06:56:51', '', ''),
(730, '182.0.166.254', 'Chrome', '2019-05-26 07:15:52', '', ''),
(731, '107.167.105.72', 'Opera', '2019-05-26 07:16:47', '', ''),
(732, '182.0.197.166', 'Chrome', '2019-05-26 07:26:55', '', ''),
(733, '180.245.161.41', 'Chrome', '2019-05-26 07:31:04', '', ''),
(734, '140.213.23.182', 'Safari', '2019-05-26 07:34:45', '', ''),
(735, '173.252.87.30', 'Other', '2019-05-26 07:42:51', '', ''),
(736, '173.252.87.5', 'Other', '2019-05-26 07:42:51', '', ''),
(737, '87.248.128.210', 'Chrome', '2019-05-26 08:34:09', '', ''),
(738, '66.220.149.15', 'Other', '2019-05-26 08:38:13', '', ''),
(739, '114.124.215.240', 'Firefox', '2019-05-26 09:06:39', '', ''),
(740, '103.84.141.73', 'Firefox', '2019-05-26 09:39:02', '', ''),
(741, '36.79.249.39', 'Mozilla', '2019-05-26 11:58:10', '', ''),
(742, '114.4.213.115', 'Chrome', '2019-05-26 13:09:21', '', ''),
(743, '173.252.127.39', 'Other', '2019-05-26 13:15:32', '', ''),
(744, '173.252.127.45', 'Other', '2019-05-26 13:15:32', '', ''),
(745, '173.252.127.23', 'Other', '2019-05-26 13:15:32', '', ''),
(746, '157.55.39.228', 'Bing', '2019-05-26 13:48:25', '', ''),
(747, '114.124.141.50', 'Chrome', '2019-05-26 13:58:21', '', ''),
(748, '37.164.54.202', 'Chrome', '2019-05-26 14:55:06', '', ''),
(749, '173.252.95.16', 'Chrome', '2019-05-26 15:37:30', '', ''),
(750, '69.171.251.45', 'Chrome', '2019-05-26 15:37:30', '', ''),
(751, '182.0.143.124', 'Safari', '2019-05-26 16:43:23', '', ''),
(752, '114.124.175.146', 'Chrome', '2019-05-26 16:59:02', '', ''),
(753, '116.206.15.39', 'Chrome', '2019-05-26 17:27:09', '', ''),
(754, '204.13.201.138', 'Internet Explorer', '2019-05-26 17:57:33', '', ''),
(755, '66.220.149.3', 'Other', '2019-05-26 18:08:00', '', ''),
(756, '36.80.40.163', 'Chrome', '2019-05-26 18:56:16', '', ''),
(757, '54.186.178.251', 'Chrome', '2019-05-26 19:13:58', '', ''),
(758, '185.156.175.94', 'Firefox', '2019-05-26 19:19:20', '', ''),
(759, '114.5.208.165', 'Opera', '2019-05-26 19:24:56', '', ''),
(760, '54.214.74.42', 'Other', '2019-05-26 20:08:08', '', ''),
(761, '54.36.148.91', 'Mozilla', '2019-05-26 20:13:25', '', ''),
(762, '31.13.103.8', 'Other', '2019-05-26 20:26:36', '', ''),
(763, '202.59.172.34', 'Chrome', '2019-05-26 20:35:19', '', ''),
(764, '66.220.149.6', 'Other', '2019-05-26 20:36:00', '', ''),
(765, '36.81.218.208', 'Firefox', '2019-05-26 20:40:28', '', ''),
(766, '110.138.148.223', 'Chrome', '2019-05-26 21:23:53', '', ''),
(767, '36.71.157.220', 'Chrome', '2019-05-26 21:25:26', '', ''),
(768, '202.67.34.21', 'Chrome', '2019-05-26 21:38:40', '', ''),
(769, '115.178.220.154', 'Chrome', '2019-05-26 22:11:23', '', ''),
(770, '199.58.86.211', 'Majestic-12', '2019-05-26 22:21:35', '', ''),
(771, '43.230.130.5', 'Chrome', '2019-05-26 22:45:40', '', ''),
(772, '114.199.91.2', 'Chrome', '2019-05-26 22:46:58', '', ''),
(773, '36.75.195.11', 'Firefox', '2019-05-26 23:58:35', '', ''),
(774, '36.75.88.141', 'Chrome', '2019-05-27 00:10:24', '', ''),
(775, '114.124.140.212', 'Chrome', '2019-05-27 00:24:23', '', ''),
(776, '180.244.243.253', 'Firefox', '2019-05-27 00:25:26', '', ''),
(777, '36.71.232.252', 'Chrome', '2019-05-27 00:33:47', '', ''),
(778, '66.220.149.24', 'Other', '2019-05-27 00:46:08', '', ''),
(779, '173.252.95.33', 'Other', '2019-05-27 01:01:00', '', ''),
(780, '173.252.95.38', 'Other', '2019-05-27 01:01:00', '', ''),
(781, '173.252.95.7', 'Other', '2019-05-27 01:01:00', '', ''),
(782, '125.161.130.71', 'Chrome', '2019-05-27 01:04:28', '', ''),
(783, '69.171.251.4', 'Other', '2019-05-27 01:50:26', '', ''),
(784, '69.171.251.28', 'Other', '2019-05-27 01:50:26', '', ''),
(785, '207.46.13.174', 'Bing', '2019-05-27 02:11:22', '', ''),
(786, '114.142.172.36', 'Chrome', '2019-05-27 02:38:21', '', ''),
(787, '31.13.127.17', 'Other', '2019-05-27 04:43:00', '', ''),
(788, '31.13.127.27', 'Other', '2019-05-27 04:43:00', '', ''),
(789, '31.13.127.16', 'Other', '2019-05-27 04:43:00', '', ''),
(790, '66.220.149.2', 'Other', '2019-05-27 06:18:15', '', ''),
(791, '114.122.115.187', 'Chrome', '2019-05-27 06:59:04', '', '');
INSERT INTO `visitor` (`id_visitor`, `ip_visitor`, `browser_visitor`, `date_visitor`, `platform`, `full_info`) VALUES
(792, '114.122.115.239', 'Chrome', '2019-05-27 07:00:36', '', ''),
(793, '182.0.174.39', 'Safari', '2019-05-27 07:00:52', '', ''),
(794, '182.0.140.10', 'Chrome', '2019-05-27 07:02:41', '', ''),
(795, '182.0.143.147', 'Chrome', '2019-05-27 07:10:02', '', ''),
(796, '36.79.250.147', 'Chrome', '2019-05-27 07:10:08', '', ''),
(797, '182.0.140.153', 'Chrome', '2019-05-27 07:14:23', '', ''),
(798, '114.125.111.237', 'Chrome', '2019-05-27 07:20:20', '', ''),
(799, '114.124.173.39', 'Chrome', '2019-05-27 07:23:30', '', ''),
(800, '182.0.197.184', 'Chrome', '2019-05-27 07:24:28', '', ''),
(801, '182.0.231.54', 'Chrome', '2019-05-27 07:27:32', '', ''),
(802, '36.72.217.107', 'Chrome', '2019-05-27 07:53:07', '', ''),
(803, '112.215.237.96', 'Other', '2019-05-27 08:07:40', '', ''),
(804, '125.160.65.235', 'Safari', '2019-05-27 08:47:10', '', ''),
(805, '39.41.207.224', 'Firefox', '2019-05-27 10:24:35', '', ''),
(806, '51.68.88.149', 'Chrome', '2019-05-27 10:34:04', '', ''),
(807, '77.244.219.14', 'Other', '2019-05-27 11:22:06', '', ''),
(808, '45.63.15.169', 'Other', '2019-05-27 12:06:57', '', ''),
(809, '54.36.150.49', 'Mozilla', '2019-05-27 12:24:13', '', ''),
(810, '182.0.135.178', 'Opera', '2019-05-27 13:56:40', '', ''),
(811, '40.77.167.14', 'Bing', '2019-05-27 13:57:10', '', ''),
(812, '182.0.134.179', 'Opera', '2019-05-27 14:00:34', '', ''),
(813, '182.0.166.236', 'Chrome', '2019-05-27 14:03:09', '', ''),
(814, '182.0.165.162', 'Chrome', '2019-05-27 14:23:19', '', ''),
(815, '182.0.132.30', 'Chrome', '2019-05-27 14:23:38', '', ''),
(816, '173.252.87.39', 'Other', '2019-05-27 14:27:05', '', ''),
(817, '180.97.118.219', 'Chrome', '2019-05-27 15:43:55', '', ''),
(818, '18.228.228.97', 'Chrome', '2019-05-27 16:41:45', '', ''),
(819, '35.160.175.59', 'Other', '2019-05-27 17:21:43', '', ''),
(820, '182.0.166.27', 'Chrome', '2019-05-27 17:32:51', '', ''),
(821, '120.188.78.131', 'Chrome', '2019-05-27 18:05:35', '', ''),
(822, '203.189.89.209', 'Chrome', '2019-05-27 18:11:03', '', ''),
(823, '86.155.80.12', 'Safari', '2019-05-27 18:43:04', '', ''),
(824, '116.206.29.110', 'Firefox', '2019-05-27 19:03:36', '', ''),
(825, '69.171.251.47', 'Other', '2019-05-27 19:53:19', '', ''),
(826, '101.50.1.2', 'Firefox', '2019-05-27 20:00:01', '', ''),
(827, '173.252.127.12', 'Other', '2019-05-27 20:00:02', '', ''),
(828, '173.252.127.13', 'Other', '2019-05-27 20:00:02', '', ''),
(829, '173.252.87.1', 'Other', '2019-05-27 20:16:11', '', ''),
(830, '140.213.25.164', 'Chrome', '2019-05-27 20:41:39', '', ''),
(831, '173.252.95.20', 'Other', '2019-05-27 20:44:21', '', ''),
(832, '31.13.115.17', 'Chrome', '2019-05-27 21:00:12', '', ''),
(833, '45.77.171.235', 'Chrome', '2019-05-27 21:06:02', '', ''),
(834, '163.53.186.50', 'Firefox', '2019-05-27 21:10:20', '', ''),
(835, '36.79.191.94', 'Firefox', '2019-05-27 21:13:38', '', ''),
(836, '31.13.127.29', 'Other', '2019-05-27 21:34:17', '', ''),
(837, '31.13.127.9', 'Other', '2019-05-27 21:34:17', '', ''),
(838, '31.13.127.24', 'Other', '2019-05-27 22:18:16', '', ''),
(839, '31.13.127.26', 'Other', '2019-05-27 22:18:16', '', ''),
(840, '31.13.127.13', 'Other', '2019-05-27 22:18:16', '', ''),
(841, '36.72.135.25', 'Chrome', '2019-05-27 22:39:18', '', ''),
(842, '62.210.201.91', 'Internet Explorer', '2019-05-27 23:49:11', '', ''),
(843, '36.71.234.94', 'Firefox', '2019-05-28 00:00:24', '', ''),
(844, '49.14.158.25', 'Chrome', '2019-05-28 00:52:15', '', ''),
(845, '69.171.251.3', 'Other', '2019-05-28 00:53:42', '', ''),
(846, '103.242.107.3', 'Internet Explorer', '2019-05-28 01:18:18', '', ''),
(847, '173.252.95.9', 'Other', '2019-05-28 02:19:24', '', ''),
(848, '120.188.35.180', 'Opera', '2019-05-28 03:04:24', '', ''),
(849, '34.201.140.159', 'Chrome', '2019-05-28 04:02:58', '', ''),
(850, '66.102.6.88', 'Chrome', '2019-05-28 05:42:54', '', ''),
(851, '62.4.14.198', 'Firefox', '2019-05-28 06:10:20', '', ''),
(852, '116.206.9.8', 'Chrome', '2019-05-28 06:22:35', '', ''),
(853, '118.137.244.237', 'Chrome', '2019-05-28 06:47:52', '', ''),
(854, '8.37.234.217', 'Safari', '2019-05-28 07:32:33', '', ''),
(855, '173.252.87.35', 'Other', '2019-05-28 07:44:41', '', ''),
(856, '173.252.87.13', 'Other', '2019-05-28 07:44:41', '', ''),
(857, '173.252.87.33', 'Other', '2019-05-28 07:44:41', '', ''),
(858, '31.13.103.6', 'Other', '2019-05-28 08:36:58', '', ''),
(859, '31.13.103.3', 'Other', '2019-05-28 08:36:58', '', ''),
(860, '31.13.103.5', 'Other', '2019-05-28 08:36:58', '', ''),
(861, '54.36.150.170', 'Mozilla', '2019-05-28 08:41:16', '', ''),
(862, '182.0.172.73', 'Chrome', '2019-05-28 08:50:59', '', ''),
(863, '54.36.148.34', 'Mozilla', '2019-05-28 11:11:52', '', ''),
(864, '34.208.85.126', 'Internet Explorer', '2019-05-28 13:42:03', '', ''),
(865, '114.4.218.236', 'Chrome', '2019-05-28 14:19:39', '', ''),
(866, '66.220.149.14', 'Other', '2019-05-28 15:52:16', '', ''),
(867, '116.206.14.13', 'Chrome', '2019-05-28 15:52:55', '', ''),
(868, '120.188.32.206', 'Chrome', '2019-05-28 16:01:48', '', ''),
(869, '163.172.76.63', 'Other', '2019-05-28 17:07:17', '', ''),
(870, '114.125.182.252', 'Safari', '2019-05-28 17:15:52', '', ''),
(871, '207.46.13.87', 'Bing', '2019-05-28 17:24:50', '', ''),
(872, '23.101.168.33', 'Firefox', '2019-05-28 18:49:39', '', ''),
(873, '54.200.31.166', 'Other', '2019-05-28 19:35:36', '', ''),
(874, '54.36.148.115', 'Mozilla', '2019-05-28 20:12:10', '', ''),
(875, '140.213.16.181', 'Chrome', '2019-05-28 20:16:49', '', ''),
(876, '31.13.115.9', 'Chrome', '2019-05-28 21:00:47', '', ''),
(877, '66.220.149.45', 'Other', '2019-05-28 21:01:52', '', ''),
(878, '182.23.28.243', 'Chrome', '2019-05-28 21:13:30', '', ''),
(879, '114.124.136.14', 'Chrome', '2019-05-28 21:54:35', '', ''),
(880, '116.206.15.42', 'Chrome', '2019-05-28 22:16:34', '', ''),
(881, '120.188.85.25', 'Chrome', '2019-05-28 23:05:29', '', ''),
(882, '31.13.127.6', 'Spartan', '2019-05-28 23:07:54', '', ''),
(883, '31.13.115.24', 'Spartan', '2019-05-28 23:07:55', '', ''),
(884, '118.151.220.92', 'Chrome', '2019-05-28 23:31:40', '', ''),
(885, '54.36.150.13', 'Mozilla', '2019-05-28 23:36:12', '', ''),
(886, '66.220.149.27', 'Other', '2019-05-28 23:40:25', '', ''),
(887, '114.4.4.134', 'Chrome', '2019-05-29 00:49:29', '', ''),
(888, '182.1.211.52', 'Safari', '2019-05-29 00:56:25', '', ''),
(889, '173.252.127.18', 'Other', '2019-05-29 01:09:44', '', ''),
(890, '173.252.83.16', 'Other', '2019-05-29 01:15:01', '', ''),
(891, '173.252.83.1', 'Other', '2019-05-29 01:15:01', '', ''),
(892, '69.171.251.44', 'Other', '2019-05-29 01:32:16', '', ''),
(893, '114.124.247.206', 'Chrome', '2019-05-29 01:40:38', '', ''),
(894, '54.221.7.185', 'Chrome', '2019-05-29 02:13:33', '', ''),
(895, '36.71.232.11', 'Chrome', '2019-05-29 02:20:05', '', ''),
(896, '36.70.51.67', 'Chrome', '2019-05-29 02:47:40', '', ''),
(897, '118.96.243.235', 'Chrome', '2019-05-29 03:25:08', '', ''),
(898, '173.252.87.9', 'Other', '2019-05-29 04:00:52', '', ''),
(899, '173.252.87.21', 'Other', '2019-05-29 04:00:52', '', ''),
(900, '40.77.167.7', 'Bing', '2019-05-29 04:19:09', '', ''),
(901, '120.188.93.5', 'Chrome', '2019-05-29 04:31:54', '', ''),
(902, '120.188.32.71', 'Chrome', '2019-05-29 05:18:42', '', ''),
(903, '140.213.23.33', 'Chrome', '2019-05-29 06:10:18', '', ''),
(904, '69.171.251.21', 'Other', '2019-05-29 06:41:59', '', ''),
(905, '69.171.251.25', 'Other', '2019-05-29 06:41:59', '', ''),
(906, '69.171.251.16', 'Other', '2019-05-29 06:41:59', '', ''),
(907, '54.36.150.61', 'Mozilla', '2019-05-29 06:58:21', '', ''),
(908, '173.252.83.12', 'Other', '2019-05-29 07:10:08', '', ''),
(909, '173.252.83.4', 'Other', '2019-05-29 07:10:08', '', ''),
(910, '36.79.248.127', 'Chrome', '2019-05-29 07:34:10', '', ''),
(911, '114.122.68.226', 'Chrome', '2019-05-29 07:54:21', '', ''),
(912, '173.252.127.30', 'Other', '2019-05-29 08:24:09', '', ''),
(913, '54.36.150.120', 'Mozilla', '2019-05-29 08:28:37', '', ''),
(914, '66.220.149.29', 'Other', '2019-05-29 08:33:04', '', ''),
(915, '173.252.95.42', 'Other', '2019-05-29 08:58:03', '', ''),
(916, '173.252.87.36', 'Other', '2019-05-29 10:02:33', '', ''),
(917, '173.252.87.10', 'Other', '2019-05-29 10:02:35', '', ''),
(918, '69.171.251.43', 'Other', '2019-05-29 10:27:30', '', ''),
(919, '69.171.251.2', 'Other', '2019-05-29 10:27:30', '', ''),
(920, '69.171.251.5', 'Other', '2019-05-29 10:27:30', '', ''),
(921, '54.36.148.53', 'Mozilla', '2019-05-29 10:38:17', '', ''),
(922, '159.203.173.101', 'YandexBot', '2019-05-29 10:57:17', '', ''),
(923, '125.160.66.182', 'Chrome', '2019-05-29 11:03:05', '', ''),
(924, '182.1.23.232', 'Chrome', '2019-05-29 11:04:34', '', ''),
(925, '180.244.234.248', 'Chrome', '2019-05-29 11:56:35', '', ''),
(926, '64.233.173.165', 'Chrome', '2019-05-29 13:59:00', '', ''),
(927, '114.5.147.198', 'Chrome', '2019-05-29 14:14:08', '', ''),
(928, '5.228.197.20', 'Internet Explorer', '2019-05-29 14:18:40', '', ''),
(929, '182.1.186.191', 'Chrome', '2019-05-29 15:01:01', '', ''),
(930, '182.1.170.175', 'Chrome', '2019-05-29 15:04:23', '', ''),
(931, '31.13.127.2', 'Other', '2019-05-29 15:22:03', '', ''),
(932, '31.13.127.30', 'Other', '2019-05-29 15:22:03', '', ''),
(933, '69.171.251.11', 'Other', '2019-05-29 16:41:21', '', ''),
(934, '173.252.95.22', 'Spartan', '2019-05-29 16:59:51', '', ''),
(935, '173.252.87.3', 'Other', '2019-05-29 17:04:45', '', ''),
(936, '173.252.87.28', 'Other', '2019-05-29 17:04:45', '', ''),
(937, '182.0.198.223', 'Chrome', '2019-05-29 19:18:30', '', ''),
(938, '178.128.225.216', 'Chrome', '2019-05-29 19:41:50', '', ''),
(939, '31.13.127.1', 'Chrome', '2019-05-29 20:01:05', '', ''),
(940, '31.13.115.18', 'Chrome', '2019-05-29 20:40:31', '', ''),
(941, '115.164.187.47', 'Chrome', '2019-05-29 21:35:31', '', ''),
(942, '69.171.251.30', 'Other', '2019-05-29 21:37:35', '', ''),
(943, '36.76.66.73', 'Firefox', '2019-05-29 22:34:34', '', ''),
(944, '64.233.172.236', 'Chrome', '2019-05-29 22:41:36', '', ''),
(945, '54.36.150.75', 'Mozilla', '2019-05-29 23:18:19', '', ''),
(946, '202.67.39.12', 'Chrome', '2019-05-30 00:09:10', '', ''),
(947, '173.252.127.38', 'Other', '2019-05-30 00:12:22', '', ''),
(948, '182.0.132.208', 'Safari', '2019-05-30 00:20:29', '', ''),
(949, '173.252.79.5', 'Other', '2019-05-30 01:11:39', '', ''),
(950, '182.0.134.136', 'Chrome', '2019-05-30 01:36:37', '', ''),
(951, '173.252.127.16', 'Other', '2019-05-30 02:44:05', '', ''),
(952, '173.252.127.47', 'Other', '2019-05-30 02:44:05', '', ''),
(953, '173.252.127.24', 'Other', '2019-05-30 02:44:05', '', ''),
(954, '203.78.117.152', 'Chrome', '2019-05-30 02:47:43', '', ''),
(955, '207.46.13.125', 'Bing', '2019-05-30 03:00:03', '', ''),
(956, '114.124.173.91', 'Chrome', '2019-05-30 03:16:55', '', ''),
(957, '54.36.148.252', 'Mozilla', '2019-05-30 03:47:56', '', ''),
(958, '114.125.245.130', 'Chrome', '2019-05-30 04:55:07', '', ''),
(959, '116.206.14.3', 'Chrome', '2019-05-30 05:02:44', '', ''),
(960, '54.175.74.27', 'Safari', '2019-05-30 05:44:31', '', ''),
(961, '120.188.32.76', 'Opera', '2019-05-30 06:45:34', '', ''),
(962, '54.36.149.8', 'Mozilla', '2019-05-30 07:14:23', '', ''),
(963, '103.78.75.2', 'Firefox', '2019-05-30 07:57:36', '', ''),
(964, '69.171.251.12', 'Other', '2019-05-30 08:18:28', '', ''),
(965, '64.233.172.238', 'Chrome', '2019-05-30 08:36:03', '', ''),
(966, '173.252.95.36', 'Other', '2019-05-30 08:59:40', '', ''),
(967, '114.124.206.109', 'Chrome', '2019-05-30 09:30:50', '', ''),
(968, '114.124.212.236', 'Other', '2019-05-30 09:31:46', '', ''),
(969, '111.95.58.233', 'Chrome', '2019-05-30 11:19:35', '', ''),
(970, '120.188.39.12', 'Chrome', '2019-05-30 13:19:30', '', ''),
(971, '209.17.96.226', 'Mozilla', '2019-05-30 15:01:56', '', ''),
(972, '173.252.95.31', 'Chrome', '2019-05-30 15:23:17', '', ''),
(973, '180.241.135.73', 'Chrome', '2019-05-30 15:29:28', '', ''),
(974, '64.233.173.167', 'Chrome', '2019-05-30 15:31:05', '', ''),
(975, '114.125.180.22', 'Safari', '2019-05-30 15:31:45', '', ''),
(976, '36.90.3.165', 'Chrome', '2019-05-30 18:04:20', '', ''),
(977, '114.4.217.108', 'Chrome', '2019-05-30 18:07:44', '', ''),
(978, '115.178.220.127', 'Chrome', '2019-05-30 18:31:57', '', ''),
(979, '114.4.222.15', 'Chrome', '2019-05-30 18:47:06', '', ''),
(980, '140.213.4.195', 'Chrome', '2019-05-30 19:15:22', '', ''),
(981, '168.235.205.178', 'Chrome', '2019-05-30 19:16:01', '', ''),
(982, '36.72.0.224', 'Chrome', '2019-05-30 19:27:37', '', ''),
(983, '180.248.123.7', 'Firefox', '2019-05-30 20:06:57', '', ''),
(984, '164.132.119.83', 'Googlebot', '2019-05-30 20:10:37', '', ''),
(985, '202.173.17.251', 'Chrome', '2019-05-30 20:35:56', '', ''),
(986, '114.125.124.45', 'Safari', '2019-05-30 21:03:10', '', ''),
(987, '207.46.13.186', 'Bing', '2019-05-30 21:20:45', '', ''),
(988, '54.68.140.53', 'Firefox', '2019-05-30 21:21:46', '', ''),
(989, '182.0.134.14', 'Chrome', '2019-05-30 22:10:12', '', ''),
(990, '139.255.86.187', 'Chrome', '2019-05-30 22:47:00', '', ''),
(991, '66.220.149.35', 'Other', '2019-05-30 23:06:04', '', ''),
(992, '144.76.118.82', 'Majestic-12', '2019-05-31 00:20:52', '', ''),
(993, '116.206.8.46', 'Chrome', '2019-05-31 00:36:02', '', ''),
(994, '120.188.5.236', 'Chrome', '2019-05-31 01:15:28', '', ''),
(995, '36.79.252.35', 'Firefox', '2019-05-31 02:29:08', '', ''),
(996, '140.213.4.238', 'Safari', '2019-05-31 04:48:36', '', ''),
(997, '54.36.148.249', 'Mozilla', '2019-05-31 06:55:47', '', ''),
(998, '66.220.149.48', 'Other', '2019-05-31 07:17:59', '', ''),
(999, '212.83.146.233', 'Firefox', '2019-05-31 07:29:04', '', ''),
(1000, '54.36.148.238', 'Mozilla', '2019-05-31 08:10:09', '', ''),
(1001, '49.34.47.137', 'Firefox', '2019-05-31 09:10:21', '', ''),
(1002, '207.46.13.163', 'Bing', '2019-05-31 09:17:53', '', ''),
(1003, '36.71.235.238', 'Chrome', '2019-05-31 11:34:13', '', ''),
(1004, '52.90.235.182', 'Chrome', '2019-05-31 11:35:15', '', ''),
(1005, '115.178.223.84', 'Chrome', '2019-05-31 12:03:03', '', ''),
(1006, '209.17.96.50', 'Mozilla', '2019-05-31 12:20:22', '', ''),
(1007, '157.55.39.124', 'Bing', '2019-05-31 12:21:07', '', ''),
(1008, '114.125.244.88', 'Chrome', '2019-05-31 14:49:00', '', ''),
(1009, '173.252.95.5', 'Other', '2019-05-31 14:50:04', '', ''),
(1010, '173.252.95.27', 'Other', '2019-05-31 14:50:04', '', ''),
(1011, '69.171.251.35', 'Other', '2019-05-31 15:04:28', '', ''),
(1012, '69.171.251.14', 'Other', '2019-05-31 15:04:28', '', ''),
(1013, '114.124.205.178', 'Chrome', '2019-05-31 15:12:22', '', ''),
(1014, '40.77.167.6', 'Bing', '2019-05-31 15:23:08', '', ''),
(1015, '139.195.103.34', 'Chrome', '2019-05-31 15:35:20', '', ''),
(1016, '112.215.244.173', 'Chrome', '2019-05-31 15:57:16', '', ''),
(1017, '36.71.232.225', 'Safari', '2019-05-31 17:23:00', '', ''),
(1018, '157.55.39.144', 'Bing', '2019-05-31 18:26:46', '', ''),
(1019, '173.252.127.15', 'Other', '2019-05-31 18:57:17', '', ''),
(1020, '173.252.127.29', 'Other', '2019-05-31 18:57:17', '', ''),
(1021, '209.17.96.250', 'Mozilla', '2019-05-31 21:10:17', '', ''),
(1022, '180.253.129.90', 'Safari', '2019-05-31 21:17:13', '', ''),
(1023, '112.215.210.222', 'Chrome', '2019-05-31 22:35:04', '', ''),
(1024, '173.252.87.15', 'Other', '2019-05-31 23:21:56', '', ''),
(1025, '173.252.87.20', 'Other', '2019-05-31 23:21:57', '', ''),
(1026, '31.13.115.6', 'Chrome', '2019-06-01 00:15:13', '', ''),
(1027, '114.125.127.7', 'Chrome', '2019-06-01 00:43:01', '', ''),
(1028, '114.125.126.59', 'Chrome', '2019-06-01 00:43:01', '', ''),
(1029, '182.0.230.211', 'Safari', '2019-06-01 01:03:11', '', ''),
(1030, '173.252.127.48', 'Safari', '2019-06-01 01:40:40', '', ''),
(1031, '40.77.167.152', 'Bing', '2019-06-01 03:26:15', '', ''),
(1032, '116.206.14.32', 'Chrome', '2019-06-01 05:11:53', '', ''),
(1033, '129.0.205.161', 'Chrome', '2019-06-01 06:09:08', '', ''),
(1034, '129.0.205.126', 'Chrome', '2019-06-01 06:09:13', '', ''),
(1035, '40.77.167.190', 'Bing', '2019-06-01 06:28:51', '', ''),
(1036, '116.206.14.51', 'Chrome', '2019-06-01 06:47:04', '', ''),
(1037, '115.178.253.189', 'Chrome', '2019-06-01 06:55:28', '', ''),
(1038, '116.206.15.29', 'Chrome', '2019-06-01 07:02:01', '', ''),
(1039, '40.77.167.94', 'Bing', '2019-06-01 09:47:56', '', ''),
(1040, '195.154.61.206', 'Firefox', '2019-06-01 09:54:48', '', ''),
(1041, '114.124.247.138', 'Chrome', '2019-06-01 11:58:59', '', ''),
(1042, '51.15.191.81', 'Firefox', '2019-06-01 12:44:24', '', ''),
(1043, '188.166.116.151', 'Chrome', '2019-06-01 14:50:50', '', ''),
(1044, '3.87.80.193', 'Other', '2019-06-01 15:03:03', '', ''),
(1045, '64.233.172.234', 'Chrome', '2019-06-01 15:08:15', '', ''),
(1046, '36.84.63.233', 'Chrome', '2019-06-01 15:12:13', '', ''),
(1047, '114.125.228.76', 'Chrome', '2019-06-01 15:29:16', '', ''),
(1048, '120.188.83.221', 'Firefox', '2019-06-01 15:35:40', '', ''),
(1049, '120.188.37.75', 'Opera', '2019-06-01 16:06:16', '', ''),
(1050, '54.144.117.86', 'Other', '2019-06-01 16:15:44', '', ''),
(1051, '182.1.65.110', 'Safari', '2019-06-01 17:01:19', '', ''),
(1052, '116.206.15.14', 'Spartan', '2019-06-01 17:15:59', '', ''),
(1053, '31.13.127.3', 'Chrome', '2019-06-01 17:24:34', '', ''),
(1054, '203.78.119.70', 'Chrome', '2019-06-01 17:29:21', '', ''),
(1055, '36.72.186.190', 'Chrome', '2019-06-01 17:29:48', '', ''),
(1056, '112.215.245.143', 'Chrome', '2019-06-01 17:58:26', '', ''),
(1057, '157.55.39.189', 'Bing', '2019-06-01 18:48:39', '', ''),
(1058, '121.52.137.185', 'Firefox', '2019-06-01 18:50:13', '', ''),
(1059, '54.202.239.65', 'Other', '2019-06-01 18:59:20', '', ''),
(1060, '66.249.65.200', 'Googlebot', '2019-06-01 19:27:00', '', ''),
(1061, '122.49.28.44', 'Safari', '2019-06-01 20:31:44', '', ''),
(1062, '116.206.33.34', 'Chrome', '2019-06-01 21:38:26', '', ''),
(1063, '40.77.167.8', 'Bing', '2019-06-01 21:52:51', '', ''),
(1064, '85.115.52.140', 'Internet Explorer', '2019-06-01 22:57:18', '', ''),
(1065, '114.125.125.79', 'Safari', '2019-06-02 00:08:12', '', ''),
(1066, '112.215.63.16', 'Chrome', '2019-06-02 00:36:18', '', ''),
(1067, '120.188.80.206', 'Chrome', '2019-06-02 00:47:10', '', ''),
(1068, '61.151.178.164', 'Chrome', '2019-06-02 00:48:13', '', ''),
(1069, '157.55.39.207', 'Bing', '2019-06-02 00:57:45', '', ''),
(1070, '182.0.235.23', 'Chrome', '2019-06-02 01:16:18', '', ''),
(1071, '182.0.228.24', 'Chrome', '2019-06-02 01:24:21', '', ''),
(1072, '36.72.134.255', 'Chrome', '2019-06-02 01:50:07', '', ''),
(1073, '36.71.236.170', 'Chrome', '2019-06-02 02:33:58', '', ''),
(1074, '139.192.173.8', 'Safari', '2019-06-02 03:05:29', '', ''),
(1075, '112.215.175.236', 'Chrome', '2019-06-02 04:40:02', '', ''),
(1076, '31.13.127.15', 'Mozilla', '2019-06-02 04:50:04', '', ''),
(1077, '180.248.120.195', 'Chrome', '2019-06-02 06:03:22', '', ''),
(1078, '173.252.127.34', 'Other', '2019-06-02 07:00:28', '', ''),
(1079, '69.171.251.6', 'Other', '2019-06-02 07:02:45', '', ''),
(1080, '182.0.143.245', 'Chrome', '2019-06-02 07:05:49', '', ''),
(1081, '173.252.95.17', 'Other', '2019-06-02 07:37:37', '', ''),
(1082, '168.235.205.155', 'Chrome', '2019-06-02 08:22:15', '', ''),
(1083, '40.77.167.119', 'Bing', '2019-06-02 08:22:43', '', ''),
(1084, '114.125.199.115', 'Chrome', '2019-06-02 08:28:17', '', ''),
(1085, '34.66.95.149', 'Other', '2019-06-02 09:24:19', '', ''),
(1086, '40.77.167.143', 'Bing', '2019-06-02 10:17:55', '', ''),
(1087, '37.9.113.35', 'YandexBot', '2019-06-02 12:32:43', '', ''),
(1088, '34.228.65.172', 'Chrome', '2019-06-02 13:17:07', '', ''),
(1089, '140.213.12.249', 'Chrome', '2019-06-02 14:18:23', '', ''),
(1090, '114.124.164.40', 'Chrome', '2019-06-02 14:21:25', '', ''),
(1091, '182.0.166.23', 'Chrome', '2019-06-02 14:23:02', '', ''),
(1092, '223.255.229.2', 'Chrome', '2019-06-02 15:03:42', '', ''),
(1093, '116.206.9.26', 'Chrome', '2019-06-02 15:33:25', '', ''),
(1094, '158.140.187.248', 'Chrome', '2019-06-02 15:42:49', '', ''),
(1095, '207.46.13.111', 'Bing', '2019-06-02 15:49:40', '', ''),
(1096, '114.124.136.106', 'Chrome', '2019-06-02 16:04:30', '', ''),
(1097, '116.206.8.12', 'Chrome', '2019-06-02 16:15:50', '', ''),
(1098, '114.5.208.109', 'Chrome', '2019-06-02 16:46:14', '', ''),
(1099, '140.213.10.205', 'Chrome', '2019-06-02 16:55:49', '', ''),
(1100, '31.13.115.19', 'Chrome', '2019-06-02 16:59:24', '', ''),
(1101, '140.213.19.30', 'Chrome', '2019-06-02 17:39:49', '', ''),
(1102, '114.124.214.234', 'Chrome', '2019-06-02 17:41:30', '', ''),
(1103, '140.213.46.34', 'Chrome', '2019-06-02 18:03:44', '', ''),
(1104, '95.216.11.233', 'Majestic-12', '2019-06-02 18:09:52', '', ''),
(1105, '114.125.228.244', 'Mozilla', '2019-06-02 18:15:00', '', ''),
(1106, '223.255.229.7', 'Chrome', '2019-06-02 18:21:37', '', ''),
(1107, '202.67.46.247', 'Chrome', '2019-06-02 18:40:28', '', ''),
(1108, '114.124.137.170', 'Opera', '2019-06-02 18:47:32', '', ''),
(1109, '180.252.225.23', 'Chrome', '2019-06-02 18:55:37', '', ''),
(1110, '114.124.175.217', 'Chrome', '2019-06-02 19:09:41', '', ''),
(1111, '182.0.230.102', 'Safari', '2019-06-02 19:12:16', '', ''),
(1112, '168.235.205.34', 'Chrome', '2019-06-02 19:12:27', '', ''),
(1113, '36.77.157.81', 'Chrome', '2019-06-02 19:46:40', '', ''),
(1114, '180.253.182.224', 'Mozilla', '2019-06-02 20:02:08', '', ''),
(1115, '112.215.200.87', 'Spartan', '2019-06-02 20:19:59', '', ''),
(1116, '114.124.134.8', 'Chrome', '2019-06-02 20:23:14', '', ''),
(1117, '31.13.115.16', 'Chrome', '2019-06-02 20:25:50', '', ''),
(1118, '36.79.254.7', 'Chrome', '2019-06-02 20:30:38', '', ''),
(1119, '180.245.218.72', 'Chrome', '2019-06-02 20:42:07', '', ''),
(1120, '202.80.215.13', 'Chrome', '2019-06-02 20:52:13', '', ''),
(1121, '118.96.126.57', 'Chrome', '2019-06-02 20:59:47', '', ''),
(1122, '207.46.13.152', 'Bing', '2019-06-02 21:01:35', '', ''),
(1123, '115.178.255.93', 'Chrome', '2019-06-02 21:03:52', '', ''),
(1124, '202.80.218.164', 'Chrome', '2019-06-02 21:04:20', '', ''),
(1125, '114.124.173.157', 'Chrome', '2019-06-02 21:23:58', '', ''),
(1126, '114.124.140.45', 'Chrome', '2019-06-02 21:24:12', '', ''),
(1127, '114.124.212.146', 'Chrome', '2019-06-02 21:25:38', '', ''),
(1128, '114.5.219.73', 'Chrome', '2019-06-02 21:29:58', '', ''),
(1129, '114.5.147.102', 'Mozilla', '2019-06-02 21:40:20', '', ''),
(1130, '116.206.8.50', 'Chrome', '2019-06-02 22:01:49', '', ''),
(1131, '114.124.228.63', 'Chrome', '2019-06-02 22:03:41', '', ''),
(1132, '115.178.238.17', 'Chrome', '2019-06-02 22:04:11', '', ''),
(1133, '114.124.141.188', 'Chrome', '2019-06-02 22:13:20', '', ''),
(1134, '173.252.127.14', 'Chrome', '2019-06-02 22:17:36', '', ''),
(1135, '125.166.219.81', 'Chrome', '2019-06-02 22:22:56', '', ''),
(1136, '36.71.178.228', 'Chrome', '2019-06-02 22:25:53', '', ''),
(1137, '36.71.234.231', 'Chrome', '2019-06-02 22:29:05', '', ''),
(1138, '36.81.247.40', 'Chrome', '2019-06-02 22:30:42', '', ''),
(1139, '114.124.142.43', 'Chrome', '2019-06-02 22:33:42', '', ''),
(1140, '114.124.198.102', 'Chrome', '2019-06-02 22:42:18', '', ''),
(1141, '140.213.20.43', 'Chrome', '2019-06-02 22:44:41', '', ''),
(1142, '116.206.15.25', 'Chrome', '2019-06-02 22:50:57', '', ''),
(1143, '182.0.134.165', 'Chrome', '2019-06-02 23:01:48', '', ''),
(1144, '114.4.212.253', 'Chrome', '2019-06-02 23:04:16', '', ''),
(1145, '182.0.135.154', 'Chrome', '2019-06-02 23:05:47', '', ''),
(1146, '36.80.95.91', 'Chrome', '2019-06-02 23:08:44', '', ''),
(1147, '116.206.8.53', 'Chrome', '2019-06-02 23:11:39', '', ''),
(1148, '180.245.183.108', 'Chrome', '2019-06-02 23:19:03', '', ''),
(1149, '114.124.140.18', 'Chrome', '2019-06-02 23:20:12', '', ''),
(1150, '114.124.141.39', 'Chrome', '2019-06-02 23:20:35', '', ''),
(1151, '173.252.95.4', 'Chrome', '2019-06-02 23:24:16', '', ''),
(1152, '69.171.251.15', 'Other', '2019-06-02 23:24:26', '', ''),
(1153, '115.178.203.99', 'Chrome', '2019-06-02 23:40:17', '', ''),
(1154, '125.161.26.62', 'Chrome', '2019-06-02 23:48:44', '', ''),
(1155, '36.90.215.109', 'Chrome', '2019-06-02 23:58:07', '', ''),
(1156, '114.142.172.22', 'Chrome', '2019-06-03 00:13:07', '', ''),
(1157, '114.124.175.119', 'Chrome', '2019-06-03 00:18:46', '', ''),
(1158, '114.4.79.203', 'Chrome', '2019-06-03 00:27:20', '', ''),
(1159, '115.178.202.183', 'Chrome', '2019-06-03 00:47:15', '', ''),
(1160, '182.1.99.243', 'Safari', '2019-06-03 00:53:13', '', ''),
(1161, '112.215.63.12', 'Chrome', '2019-06-03 00:56:24', '', ''),
(1162, '118.96.240.249', 'Chrome', '2019-06-03 01:05:35', '', ''),
(1163, '36.79.255.48', 'Chrome', '2019-06-03 01:11:57', '', ''),
(1164, '125.160.158.77', 'Chrome', '2019-06-03 01:37:38', '', ''),
(1165, '54.36.150.119', 'Mozilla', '2019-06-03 01:44:16', '', ''),
(1166, '40.77.167.206', 'Bing', '2019-06-03 01:54:02', '', ''),
(1167, '114.124.138.240', 'Chrome', '2019-06-03 02:08:03', '', ''),
(1168, '139.194.50.164', 'Chrome', '2019-06-03 02:20:44', '', ''),
(1169, '223.255.230.33', 'Chrome', '2019-06-03 02:24:12', '', ''),
(1170, '140.213.18.234', 'Mozilla', '2019-06-03 02:46:24', '', ''),
(1171, '114.5.146.148', 'Chrome', '2019-06-03 02:48:18', '', ''),
(1172, '182.0.135.209', 'Chrome', '2019-06-03 02:49:36', '', ''),
(1173, '116.206.8.1', 'Chrome', '2019-06-03 02:53:20', '', ''),
(1174, '139.0.208.9', 'Chrome', '2019-06-03 02:54:04', '', ''),
(1175, '103.247.197.1', 'Chrome', '2019-06-03 02:59:41', '', ''),
(1176, '114.124.230.142', 'Chrome', '2019-06-03 03:06:37', '', ''),
(1177, '114.124.139.77', 'Chrome', '2019-06-03 03:11:25', '', ''),
(1178, '114.122.111.235', 'Chrome', '2019-06-03 03:18:25', '', ''),
(1179, '175.158.52.54', 'Chrome', '2019-06-03 03:34:57', '', ''),
(1180, '140.213.26.217', 'Chrome', '2019-06-03 03:37:21', '', ''),
(1181, '112.215.152.141', 'Chrome', '2019-06-03 03:41:47', '', ''),
(1182, '140.213.20.173', 'Chrome', '2019-06-03 03:41:52', '', ''),
(1183, '118.96.235.179', 'Chrome', '2019-06-03 03:46:09', '', ''),
(1184, '116.206.9.62', 'Chrome', '2019-06-03 03:47:29', '', ''),
(1185, '180.244.233.46', 'Chrome', '2019-06-03 03:47:44', '', ''),
(1186, '118.136.150.67', 'Mozilla', '2019-06-03 03:58:50', '', ''),
(1187, '116.206.40.89', 'Chrome', '2019-06-03 04:02:57', '', ''),
(1188, '182.0.231.184', 'Chrome', '2019-06-03 04:03:26', '', ''),
(1189, '114.124.204.10', 'Chrome', '2019-06-03 04:03:30', '', ''),
(1190, '182.0.230.125', 'Chrome', '2019-06-03 04:03:36', '', ''),
(1191, '182.0.165.142', 'Chrome', '2019-06-03 04:11:16', '', ''),
(1192, '120.188.37.104', 'Chrome', '2019-06-03 04:29:20', '', ''),
(1193, '115.178.220.207', 'Chrome', '2019-06-03 04:38:58', '', ''),
(1194, '120.188.92.203', 'Chrome', '2019-06-03 04:42:26', '', ''),
(1195, '40.77.167.12', 'Bing', '2019-06-03 04:46:27', '', ''),
(1196, '180.252.82.65', 'Chrome', '2019-06-03 05:18:11', '', ''),
(1197, '180.253.179.146', 'Chrome', '2019-06-03 05:18:18', '', ''),
(1198, '114.124.213.145', 'Chrome', '2019-06-03 05:23:18', '', ''),
(1199, '103.29.150.34', 'Chrome', '2019-06-03 05:26:38', '', ''),
(1200, '114.124.207.172', 'Chrome', '2019-06-03 05:37:13', '', ''),
(1201, '182.0.228.146', 'Chrome', '2019-06-03 06:01:02', '', ''),
(1202, '115.178.236.59', 'Chrome', '2019-06-03 06:41:02', '', ''),
(1203, '114.142.172.3', 'Chrome', '2019-06-03 06:46:17', '', ''),
(1204, '114.5.210.207', 'Chrome', '2019-06-03 06:47:49', '', ''),
(1205, '114.5.218.4', 'Chrome', '2019-06-03 06:48:18', '', ''),
(1206, '36.80.82.17', 'Chrome', '2019-06-03 07:04:21', '', ''),
(1207, '184.72.115.35', 'Safari', '2019-06-03 07:13:02', '', ''),
(1208, '182.0.196.209', 'Chrome', '2019-06-03 07:19:20', '', ''),
(1209, '173.252.95.15', 'Other', '2019-06-03 07:29:42', '', ''),
(1210, '116.206.14.12', 'Mozilla', '2019-06-03 07:33:49', '', ''),
(1211, '182.0.203.85', 'Chrome', '2019-06-03 07:36:05', '', ''),
(1212, '114.124.137.193', 'Chrome', '2019-06-03 07:41:12', '', ''),
(1213, '114.142.171.47', 'Chrome', '2019-06-03 07:49:53', '', ''),
(1214, '66.249.65.198', 'Googlebot', '2019-06-03 07:52:18', '', ''),
(1215, '40.77.167.106', 'Bing', '2019-06-03 07:52:26', '', ''),
(1216, '180.244.233.154', 'Chrome', '2019-06-03 07:57:42', '', ''),
(1217, '150.249.214.253', 'Internet Explorer', '2019-06-03 08:02:08', '', ''),
(1218, '150.249.214.254', 'Internet Explorer', '2019-06-03 08:02:15', '', ''),
(1219, '114.125.11.71', 'Chrome', '2019-06-03 08:04:43', '', ''),
(1220, '202.80.214.125', 'Chrome', '2019-06-03 08:09:10', '', ''),
(1221, '114.124.173.102', 'Chrome', '2019-06-03 08:14:51', '', ''),
(1222, '180.253.211.110', 'Chrome', '2019-06-03 08:24:46', '', ''),
(1223, '182.0.174.96', 'Chrome', '2019-06-03 08:33:54', '', ''),
(1224, '66.102.6.229', 'Chrome', '2019-06-03 08:35:21', '', ''),
(1225, '66.249.65.116', 'Googlebot', '2019-06-03 08:48:43', '', ''),
(1226, '116.206.15.12', 'Chrome', '2019-06-03 08:51:26', '', ''),
(1227, '114.125.230.189', 'Chrome', '2019-06-03 08:51:59', '', ''),
(1228, '168.235.205.197', 'Chrome', '2019-06-03 08:54:41', '', ''),
(1229, '180.253.227.3', 'Chrome', '2019-06-03 08:56:22', '', ''),
(1230, '120.188.37.200', 'Chrome', '2019-06-03 09:00:58', '', ''),
(1231, '161.69.99.11', 'Firefox', '2019-06-03 09:29:57', '', ''),
(1232, '35.187.126.233', 'Chrome', '2019-06-03 09:41:58', '', ''),
(1233, '95.216.15.49', 'Safari', '2019-06-03 10:07:20', '', ''),
(1234, '182.0.231.6', 'Chrome', '2019-06-03 10:08:42', '', ''),
(1235, '120.188.38.224', 'Chrome', '2019-06-03 10:09:50', '', ''),
(1236, '182.0.133.54', 'Chrome', '2019-06-03 10:14:39', '', ''),
(1237, '110.138.150.223', 'Chrome', '2019-06-03 10:16:17', '', ''),
(1238, '36.80.110.111', 'Chrome', '2019-06-03 10:19:02', '', ''),
(1239, '182.0.171.148', 'Safari', '2019-06-03 10:22:15', '', ''),
(1240, '114.5.213.153', 'Chrome', '2019-06-03 10:27:00', '', ''),
(1241, '36.79.252.187', 'Chrome', '2019-06-03 10:42:56', '', ''),
(1242, '114.124.245.230', 'Chrome', '2019-06-03 10:45:09', '', ''),
(1243, '103.44.37.166', 'Chrome', '2019-06-03 11:03:58', '', ''),
(1244, '114.5.216.105', 'Chrome', '2019-06-03 11:10:01', '', ''),
(1245, '116.206.15.58', 'Chrome', '2019-06-03 12:38:19', '', ''),
(1246, '203.78.122.47', 'Chrome', '2019-06-03 12:38:57', '', ''),
(1247, '89.234.68.78', 'Firefox', '2019-06-03 12:39:31', '', ''),
(1248, '36.71.234.113', 'Chrome', '2019-06-03 13:03:44', '', ''),
(1249, '116.206.15.10', 'Chrome', '2019-06-03 13:04:54', '', ''),
(1250, '114.124.206.16', 'Chrome', '2019-06-03 13:13:06', '', ''),
(1251, '112.215.238.95', 'Chrome', '2019-06-03 13:30:45', '', ''),
(1252, '40.77.167.78', 'Bing', '2019-06-03 13:40:20', '', ''),
(1253, '36.79.253.175', 'Chrome', '2019-06-03 13:48:23', '', ''),
(1254, '140.213.42.171', 'Chrome', '2019-06-03 13:48:43', '', ''),
(1255, '36.80.45.75', 'Chrome', '2019-06-03 13:56:08', '', ''),
(1256, '114.124.138.231', 'Chrome', '2019-06-03 14:01:11', '', ''),
(1257, '182.0.139.149', 'Chrome', '2019-06-03 14:22:24', '', ''),
(1258, '198.58.107.211', 'Chrome', '2019-06-03 14:32:41', '', ''),
(1259, '120.188.35.150', 'Chrome', '2019-06-03 14:35:22', '', ''),
(1260, '66.249.65.82', 'Googlebot', '2019-06-03 14:39:17', '', ''),
(1261, '34.222.22.128', 'Chrome', '2019-06-03 14:59:13', '', ''),
(1262, '180.244.234.171', 'Chrome', '2019-06-03 15:02:20', '', ''),
(1263, '111.95.56.139', 'Chrome', '2019-06-03 15:13:44', '', ''),
(1264, '180.242.42.129', 'Chrome', '2019-06-03 15:14:54', '', ''),
(1265, '31.13.127.39', 'Chrome', '2019-06-03 15:50:31', '', ''),
(1266, '31.13.115.20', 'Spartan', '2019-06-03 15:50:32', '', ''),
(1267, '31.13.115.12', 'Spartan', '2019-06-03 15:53:04', '', ''),
(1268, '114.5.208.126', 'Chrome', '2019-06-03 16:02:48', '', ''),
(1269, '114.4.78.213', 'Chrome', '2019-06-03 16:04:28', '', ''),
(1270, '125.161.181.36', 'Opera', '2019-06-03 16:11:19', '', ''),
(1271, '157.55.39.50', 'Bing', '2019-06-03 16:45:24', '', ''),
(1272, '182.1.34.39', 'Chrome', '2019-06-03 17:45:38', '', ''),
(1273, '114.5.216.170', 'Chrome', '2019-06-03 18:00:50', '', ''),
(1274, '112.215.229.186', 'Chrome', '2019-06-03 18:02:24', '', ''),
(1275, '223.255.229.1', 'Chrome', '2019-06-03 18:03:55', '', ''),
(1276, '157.230.144.81', 'Firefox', '2019-06-03 18:13:33', '', ''),
(1277, '31.13.127.36', 'Firefox', '2019-06-03 19:00:18', '', ''),
(1278, '36.72.193.164', 'Chrome', '2019-06-03 19:06:06', '', ''),
(1279, '114.124.134.151', 'Chrome', '2019-06-03 19:11:45', '', ''),
(1280, '147.92.137.139', 'Other', '2019-06-03 19:26:00', '', ''),
(1281, '147.92.137.168', 'Other', '2019-06-03 19:26:02', '', ''),
(1282, '111.95.88.59', 'Chrome', '2019-06-03 19:26:21', '', ''),
(1283, '120.188.93.50', 'Chrome', '2019-06-03 19:38:33', '', ''),
(1284, '140.213.18.215', 'Chrome', '2019-06-03 19:45:45', '', ''),
(1285, '116.206.15.32', 'Chrome', '2019-06-03 20:14:21', '', ''),
(1286, '36.79.252.246', 'Chrome', '2019-06-03 20:28:43', '', ''),
(1287, '182.0.198.104', 'Chrome', '2019-06-03 20:37:11', '', ''),
(1288, '180.245.161.87', 'Chrome', '2019-06-03 20:45:40', '', ''),
(1289, '140.213.15.29', 'Chrome', '2019-06-03 21:02:59', '', ''),
(1290, '116.206.15.28', 'Chrome', '2019-06-03 21:12:20', '', ''),
(1291, '120.188.38.111', 'Opera', '2019-06-03 21:51:51', '', ''),
(1292, '139.255.150.11', 'Chrome', '2019-06-03 22:05:42', '', ''),
(1293, '112.215.253.135', 'Chrome', '2019-06-03 22:12:21', '', ''),
(1294, '54.36.150.126', 'Mozilla', '2019-06-03 22:35:02', '', ''),
(1295, '114.124.150.238', 'Chrome', '2019-06-03 23:00:24', '', ''),
(1296, '157.55.39.232', 'Bing', '2019-06-03 23:04:44', '', ''),
(1297, '114.124.228.237', 'Chrome', '2019-06-03 23:19:36', '', ''),
(1298, '140.213.44.158', 'Chrome', '2019-06-03 23:21:12', '', ''),
(1299, '178.128.0.34', 'Chrome', '2019-06-03 23:27:57', '', ''),
(1300, '114.124.207.166', 'Chrome', '2019-06-03 23:42:35', '', ''),
(1301, '140.213.33.10', 'Chrome', '2019-06-03 23:58:56', '', ''),
(1302, '114.125.169.217', 'Firefox', '2019-06-04 00:00:27', '', ''),
(1303, '131.159.0.2', 'Other', '2019-06-04 00:25:31', '', ''),
(1304, '182.0.203.108', 'Chrome', '2019-06-04 00:38:02', '', ''),
(1305, '116.206.29.67', 'Chrome', '2019-06-04 00:38:17', '', ''),
(1306, '38.99.62.93', 'Mozilla', '2019-06-04 01:05:28', '', ''),
(1307, '114.124.238.8', 'Chrome', '2019-06-04 01:08:13', '', ''),
(1308, '36.71.233.15', 'Chrome', '2019-06-04 01:10:22', '', ''),
(1309, '114.5.146.57', 'Chrome', '2019-06-04 01:39:49', '', ''),
(1310, '36.80.40.102', 'Chrome', '2019-06-04 01:53:17', '', ''),
(1311, '66.249.82.136', 'Chrome', '2019-06-04 02:03:16', '', ''),
(1312, '114.124.164.7', 'Chrome', '2019-06-04 02:03:16', '', ''),
(1313, '64.233.173.179', 'Chrome', '2019-06-04 02:03:16', '', ''),
(1314, '173.252.127.5', 'Other', '2019-06-04 02:07:10', '', ''),
(1315, '173.252.127.40', 'Other', '2019-06-04 02:07:10', '', ''),
(1316, '173.252.127.33', 'Other', '2019-06-04 02:07:10', '', ''),
(1317, '173.252.127.27', 'Other', '2019-06-04 02:07:10', '', ''),
(1318, '173.252.127.17', 'Other', '2019-06-04 02:07:10', '', ''),
(1319, '64.233.172.240', 'Chrome', '2019-06-04 02:23:20', '', ''),
(1320, '111.95.13.65', 'Chrome', '2019-06-04 02:23:26', '', ''),
(1321, '116.206.9.58', 'Chrome', '2019-06-04 02:27:45', '', ''),
(1322, '120.188.65.180', 'Chrome', '2019-06-04 02:34:25', '', ''),
(1323, '114.124.207.230', 'Chrome', '2019-06-04 02:38:11', '', ''),
(1324, '185.82.202.54', 'Safari', '2019-06-04 02:40:29', '', ''),
(1325, '114.124.166.149', 'Chrome', '2019-06-04 02:49:46', '', ''),
(1326, '103.108.157.250', 'Chrome', '2019-06-04 02:54:50', '', ''),
(1327, '114.124.146.150', 'Chrome', '2019-06-04 03:04:40', '', ''),
(1328, '116.206.15.61', 'Chrome', '2019-06-04 03:13:11', '', ''),
(1329, '114.142.168.42', 'Mozilla', '2019-06-04 03:29:46', '', ''),
(1330, '115.178.207.212', 'Chrome', '2019-06-04 03:41:46', '', ''),
(1331, '116.206.15.35', 'Chrome', '2019-06-04 04:00:09', '', ''),
(1332, '116.206.28.35', 'Chrome', '2019-06-04 04:05:34', '', ''),
(1333, '116.206.8.51', 'Chrome', '2019-06-04 04:15:38', '', ''),
(1334, '125.161.86.158', 'Chrome', '2019-06-04 04:20:45', '', ''),
(1335, '116.206.15.38', 'Chrome', '2019-06-04 04:20:51', '', ''),
(1336, '140.213.19.74', 'Chrome', '2019-06-04 04:27:47', '', ''),
(1337, '180.244.232.243', 'Chrome', '2019-06-04 04:41:17', '', ''),
(1338, '180.245.220.38', 'Chrome', '2019-06-04 04:47:26', '', ''),
(1339, '157.55.39.96', 'Bing', '2019-06-04 04:58:53', '', ''),
(1340, '114.5.208.50', 'Chrome', '2019-06-04 05:04:03', '', ''),
(1341, '198.108.66.224', 'Mozilla', '2019-06-04 05:09:46', '', ''),
(1342, '114.124.138.135', 'Chrome', '2019-06-04 05:11:13', '', ''),
(1343, '36.72.131.48', 'Chrome', '2019-06-04 05:16:28', '', ''),
(1344, '198.108.67.16', 'Mozilla', '2019-06-04 05:35:18', '', ''),
(1345, '140.213.39.105', 'Chrome', '2019-06-04 05:47:44', '', ''),
(1346, '182.0.149.38', 'Chrome', '2019-06-04 06:12:03', '', ''),
(1347, '180.244.232.43', 'Chrome', '2019-06-04 06:15:38', '', ''),
(1348, '120.188.66.182', 'Chrome', '2019-06-04 06:15:38', '', ''),
(1349, '140.213.5.198', 'Chrome', '2019-06-04 06:46:45', '', ''),
(1350, '140.213.59.20', 'Chrome', '2019-06-04 06:51:56', '', ''),
(1351, '140.213.9.149', 'Chrome', '2019-06-04 07:33:14', '', ''),
(1352, '120.188.77.58', 'Chrome', '2019-06-04 07:35:15', '', ''),
(1353, '182.0.228.128', 'Chrome', '2019-06-04 07:36:51', '', ''),
(1354, '115.178.221.140', 'Safari', '2019-06-04 07:51:22', '', ''),
(1355, '103.28.225.242', 'Chrome', '2019-06-04 07:52:23', '', ''),
(1356, '60.217.72.16', 'Firefox', '2019-06-04 07:53:55', '', ''),
(1357, '207.46.13.206', 'Bing', '2019-06-04 08:00:20', '', ''),
(1358, '140.213.15.200', 'Chrome', '2019-06-04 08:29:46', '', ''),
(1359, '116.206.14.25', 'Chrome', '2019-06-04 08:32:22', '', ''),
(1360, '180.253.219.164', 'Chrome', '2019-06-04 08:41:15', '', ''),
(1361, '198.108.66.96', 'Mozilla', '2019-06-04 08:46:27', '', ''),
(1362, '54.255.192.165', 'Chrome', '2019-06-04 09:13:30', '', ''),
(1363, '114.124.134.250', 'Chrome', '2019-06-04 09:16:53', '', ''),
(1364, '182.0.149.36', 'Mozilla', '2019-06-04 09:18:46', '', ''),
(1365, '150.249.214.250', 'Internet Explorer', '2019-06-04 09:22:56', '', ''),
(1366, '150.249.214.251', 'Internet Explorer', '2019-06-04 09:23:04', '', ''),
(1367, '150.249.214.249', 'Internet Explorer', '2019-06-04 09:23:13', '', ''),
(1368, '36.88.149.185', 'Chrome', '2019-06-04 09:43:43', '', ''),
(1369, '140.213.51.27', 'Chrome', '2019-06-04 09:43:58', '', ''),
(1370, '209.17.96.202', 'Mozilla', '2019-06-04 09:45:09', '', ''),
(1371, '35.205.110.232', 'Chrome', '2019-06-04 09:45:43', '', ''),
(1372, '120.188.7.153', 'Chrome', '2019-06-04 09:57:29', '', ''),
(1373, '116.206.8.59', 'Chrome', '2019-06-04 11:02:15', '', ''),
(1374, '182.1.64.100', 'Safari', '2019-06-04 11:11:11', '', ''),
(1375, '66.249.65.202', 'Googlebot', '2019-06-04 11:44:36', '', ''),
(1376, '54.185.246.128', 'Firefox', '2019-06-04 13:45:36', '', ''),
(1377, '66.249.65.112', 'Googlebot', '2019-06-04 14:03:32', '', ''),
(1378, '104.198.131.46', 'Other', '2019-06-04 14:20:41', '', ''),
(1379, '54.36.148.154', 'Mozilla', '2019-06-04 14:36:09', '', ''),
(1380, '207.46.13.136', 'Bing', '2019-06-04 14:55:27', '', ''),
(1381, '180.243.220.4', 'Chrome', '2019-06-04 15:15:22', '', ''),
(1382, '199.127.56.236', 'Chrome', '2019-06-04 15:19:21', '', ''),
(1383, '36.71.233.135', 'Chrome', '2019-06-04 15:26:46', '', ''),
(1384, '114.142.173.56', 'Chrome', '2019-06-04 15:34:53', '', ''),
(1385, '140.213.15.215', 'Chrome', '2019-06-04 15:37:44', '', ''),
(1386, '114.124.208.82', 'Mozilla', '2019-06-04 15:41:52', '', ''),
(1387, '120.188.7.86', 'Chrome', '2019-06-04 15:46:19', '', ''),
(1388, '45.33.15.94', 'Chrome', '2019-06-04 15:53:07', '', ''),
(1389, '116.206.15.6', 'Chrome', '2019-06-04 15:58:43', '', ''),
(1390, '52.11.99.15', 'Other', '2019-06-04 16:09:57', '', ''),
(1391, '114.122.78.190', 'Mozilla', '2019-06-04 16:28:06', '', ''),
(1392, '207.46.13.155', 'Bing', '2019-06-04 16:50:48', '', ''),
(1393, '182.1.86.40', 'Safari', '2019-06-04 17:02:00', '', ''),
(1394, '64.233.173.177', 'Chrome', '2019-06-04 17:11:10', '', ''),
(1395, '114.124.139.247', 'Chrome', '2019-06-04 17:11:10', '', ''),
(1396, '209.17.97.2', 'Mozilla', '2019-06-04 17:26:44', '', ''),
(1397, '114.5.223.98', 'Chrome', '2019-06-04 17:43:04', '', ''),
(1398, '120.188.6.142', 'Chrome', '2019-06-04 17:46:31', '', ''),
(1399, '31.13.127.28', 'Chrome', '2019-06-04 17:49:19', '', ''),
(1400, '182.1.125.106', 'Chrome', '2019-06-04 17:59:46', '', ''),
(1401, '114.124.237.78', 'Chrome', '2019-06-04 19:06:59', '', ''),
(1402, '36.88.38.184', 'Chrome', '2019-06-04 19:39:47', '', ''),
(1403, '116.206.15.40', 'Chrome', '2019-06-04 19:41:30', '', ''),
(1404, '115.178.207.3', 'Chrome', '2019-06-04 19:46:25', '', ''),
(1405, '112.215.200.68', 'Chrome', '2019-06-04 19:52:06', '', ''),
(1406, '114.5.217.61', 'Chrome', '2019-06-04 19:53:00', '', ''),
(1407, '140.213.25.134', 'Chrome', '2019-06-04 19:55:07', '', ''),
(1408, '116.206.14.38', 'Chrome', '2019-06-04 19:57:07', '', ''),
(1409, '139.193.84.5', 'Chrome', '2019-06-04 20:09:34', '', ''),
(1410, '114.124.143.190', 'Chrome', '2019-06-04 20:26:52', '', ''),
(1411, '40.77.167.105', 'Bing', '2019-06-04 20:42:39', '', ''),
(1412, '140.213.16.17', 'Chrome', '2019-06-04 20:59:20', '', ''),
(1413, '116.206.8.37', 'Chrome', '2019-06-04 21:09:14', '', ''),
(1414, '140.213.25.186', 'Chrome', '2019-06-04 21:14:46', '', ''),
(1415, '36.72.145.199', 'Chrome', '2019-06-04 21:32:04', '', ''),
(1416, '140.213.17.89', 'Chrome', '2019-06-04 21:32:29', '', ''),
(1417, '182.0.198.255', 'Chrome', '2019-06-04 22:23:44', '', ''),
(1418, '114.124.242.244', 'Chrome', '2019-06-04 22:37:04', '', ''),
(1419, '114.5.145.54', 'Chrome', '2019-06-04 22:44:25', '', ''),
(1420, '188.40.131.176', 'Chrome', '2019-06-04 22:52:50', '', ''),
(1421, '112.215.201.64', 'Chrome', '2019-06-04 23:02:13', '', ''),
(1422, '114.124.147.19', 'Chrome', '2019-06-04 23:06:49', '', ''),
(1423, '173.252.95.40', 'Other', '2019-06-04 23:38:05', '', ''),
(1424, '207.46.13.192', 'Bing', '2019-06-04 23:54:19', '', ''),
(1425, '140.213.47.24', 'Chrome', '2019-06-04 23:57:46', '', ''),
(1426, '36.72.52.113', 'Chrome', '2019-06-05 00:05:10', '', ''),
(1427, '116.206.29.58', 'Mozilla', '2019-06-05 00:10:08', '', ''),
(1428, '116.206.15.62', 'Chrome', '2019-06-05 00:16:14', '', ''),
(1429, '114.124.203.223', 'Chrome', '2019-06-05 00:24:34', '', ''),
(1430, '180.246.197.254', 'Chrome', '2019-06-05 00:31:07', '', ''),
(1431, '114.5.217.63', 'Chrome', '2019-06-05 00:39:37', '', ''),
(1432, '182.0.210.171', 'Chrome', '2019-06-05 00:41:07', '', ''),
(1433, '140.213.23.152', 'Chrome', '2019-06-05 01:32:55', '', ''),
(1434, '112.215.200.237', 'Chrome', '2019-06-05 01:41:56', '', ''),
(1435, '114.122.74.244', 'Chrome', '2019-06-05 01:43:58', '', ''),
(1436, '114.124.173.17', 'Chrome', '2019-06-05 01:44:24', '', ''),
(1437, '112.215.236.98', 'Chrome', '2019-06-05 02:06:35', '', ''),
(1438, '103.84.228.18', 'Opera', '2019-06-05 02:17:33', '', ''),
(1439, '120.188.34.62', 'Chrome', '2019-06-05 02:26:41', '', ''),
(1440, '114.124.183.210', 'Chrome', '2019-06-05 02:35:28', '', ''),
(1441, '69.171.251.29', 'Other', '2019-06-05 02:37:14', '', ''),
(1442, '69.171.251.38', 'Other', '2019-06-05 02:37:15', '', ''),
(1443, '140.213.45.36', 'Spartan', '2019-06-05 02:47:16', '', ''),
(1444, '114.125.38.114', 'Chrome', '2019-06-05 03:06:40', '', ''),
(1445, '120.188.36.48', 'Chrome', '2019-06-05 03:31:19', '', ''),
(1446, '139.0.250.109', 'Chrome', '2019-06-05 03:37:38', '', ''),
(1447, '140.213.11.141', 'Chrome', '2019-06-05 03:40:45', '', ''),
(1448, '182.0.245.6', 'Mozilla', '2019-06-05 03:41:26', '', ''),
(1449, '114.124.206.67', 'Chrome', '2019-06-05 03:43:08', '', ''),
(1450, '115.178.206.206', 'Chrome', '2019-06-05 03:56:21', '', ''),
(1451, '140.213.32.82', 'Chrome', '2019-06-05 04:00:44', '', ''),
(1452, '114.124.244.167', 'Chrome', '2019-06-05 04:03:18', '', ''),
(1453, '114.124.239.216', 'Chrome', '2019-06-05 04:04:42', '', ''),
(1454, '36.68.236.45', 'Chrome', '2019-06-05 04:17:04', '', ''),
(1455, '114.122.83.107', 'Chrome', '2019-06-05 04:19:31', '', ''),
(1456, '95.143.195.107', 'Safari', '2019-06-05 04:19:47', '', ''),
(1457, '112.215.170.153', 'Chrome', '2019-06-05 04:20:57', '', ''),
(1458, '198.108.66.240', 'Mozilla', '2019-06-05 04:23:20', '', ''),
(1459, '180.245.166.196', 'Chrome', '2019-06-05 04:28:45', '', ''),
(1460, '114.125.38.30', 'Chrome', '2019-06-05 04:36:50', '', ''),
(1461, '52.240.144.164', 'Firefox', '2019-06-05 04:49:24', '', ''),
(1462, '116.206.9.40', 'Chrome', '2019-06-05 04:55:23', '', ''),
(1463, '36.71.234.224', 'Chrome', '2019-06-05 04:58:59', '', ''),
(1464, '31.13.115.13', 'Firefox', '2019-06-05 05:17:02', '', ''),
(1465, '66.249.65.84', 'Googlebot', '2019-06-05 05:19:36', '', ''),
(1466, '49.32.241.190', 'Firefox', '2019-06-05 05:31:47', '', ''),
(1467, '120.188.5.250', 'Chrome', '2019-06-05 05:32:16', '', ''),
(1468, '49.32.238.12', 'Firefox', '2019-06-05 05:35:38', '', ''),
(1469, '49.32.201.157', 'Firefox', '2019-06-05 05:51:41', '', ''),
(1470, '120.188.65.123', 'Chrome', '2019-06-05 06:00:21', '', ''),
(1471, '40.77.167.131', 'Bing', '2019-06-05 06:03:57', '', ''),
(1472, '140.213.47.231', 'Chrome', '2019-06-05 06:12:29', '', ''),
(1473, '180.245.182.74', 'Chrome', '2019-06-05 06:16:44', '', ''),
(1474, '116.206.14.47', 'Chrome', '2019-06-05 06:20:45', '', ''),
(1475, '140.213.7.24', 'Opera', '2019-06-05 06:23:03', '', ''),
(1476, '114.124.137.227', 'Chrome', '2019-06-05 06:24:38', '', ''),
(1477, '140.213.1.121', 'Chrome', '2019-06-05 06:38:48', '', ''),
(1478, '140.213.9.246', 'Chrome', '2019-06-05 06:50:25', '', ''),
(1479, '110.137.228.1', 'Chrome', '2019-06-05 06:53:50', '', ''),
(1480, '173.193.191.202', 'Firefox', '2019-06-05 07:06:28', '', ''),
(1481, '36.80.107.135', 'Chrome', '2019-06-05 07:15:08', '', ''),
(1482, '198.108.66.32', 'Mozilla', '2019-06-05 07:40:08', '', ''),
(1483, '202.133.247.208', 'Other', '2019-06-05 09:21:40', '', ''),
(1484, '140.213.50.67', 'Chrome', '2019-06-05 10:55:48', '', ''),
(1485, '180.253.8.124', 'Chrome', '2019-06-05 11:02:21', '', ''),
(1486, '114.4.217.229', 'Chrome', '2019-06-05 11:32:24', '', ''),
(1487, '115.178.222.43', 'Chrome', '2019-06-05 11:36:58', '', ''),
(1488, '185.25.34.137', 'Chrome', '2019-06-05 11:42:43', '', ''),
(1489, '114.4.213.12', 'Chrome', '2019-06-05 13:30:43', '', ''),
(1490, '180.252.154.240', 'Chrome', '2019-06-05 13:51:08', '', ''),
(1491, '203.78.124.224', 'Chrome', '2019-06-05 14:25:20', '', ''),
(1492, '115.178.220.148', 'Chrome', '2019-06-05 15:12:24', '', ''),
(1493, '36.79.253.165', 'Chrome', '2019-06-05 15:13:15', '', ''),
(1494, '112.215.210.131', 'Chrome', '2019-06-05 15:14:48', '', ''),
(1495, '115.178.203.136', 'Chrome', '2019-06-05 15:17:56', '', ''),
(1496, '118.97.93.211', 'Chrome', '2019-06-05 15:37:09', '', ''),
(1497, '115.178.206.207', 'Chrome', '2019-06-05 15:46:57', '', ''),
(1498, '120.188.73.101', 'Chrome', '2019-06-05 15:54:27', '', ''),
(1499, '112.215.65.111', 'Chrome', '2019-06-05 16:27:28', '', ''),
(1500, '140.213.46.240', 'Chrome', '2019-06-05 16:57:34', '', ''),
(1501, '114.124.233.50', 'Chrome', '2019-06-05 17:35:21', '', ''),
(1502, '114.124.183.163', 'Chrome', '2019-06-05 17:35:24', '', ''),
(1503, '35.0.127.52', 'Internet Explorer', '2019-06-05 18:00:02', '', ''),
(1504, '140.213.36.36', 'Chrome', '2019-06-05 18:01:16', '', ''),
(1505, '52.59.102.42', 'Chrome', '2019-06-05 18:01:24', '', ''),
(1506, '182.0.241.245', 'Chrome', '2019-06-05 18:03:11', '', ''),
(1507, '115.178.203.158', 'Chrome', '2019-06-05 18:04:25', '', ''),
(1508, '114.124.206.82', 'Chrome', '2019-06-05 18:07:03', '', ''),
(1509, '112.215.201.218', 'Chrome', '2019-06-05 18:11:36', '', ''),
(1510, '173.252.87.38', 'Spartan', '2019-06-05 18:15:06', '', ''),
(1511, '115.178.219.144', 'Chrome', '2019-06-05 18:21:15', '', ''),
(1512, '114.124.214.178', 'Chrome', '2019-06-05 18:24:46', '', ''),
(1513, '173.252.95.24', 'Other', '2019-06-05 18:34:29', '', ''),
(1514, '223.255.229.22', 'Chrome', '2019-06-05 18:36:59', '', ''),
(1515, '114.124.145.155', 'Chrome', '2019-06-05 18:51:50', '', ''),
(1516, '114.125.69.45', 'Chrome', '2019-06-05 18:53:33', '', ''),
(1517, '140.213.0.126', 'Chrome', '2019-06-05 18:57:03', '', ''),
(1518, '116.206.14.35', 'Chrome', '2019-06-05 19:01:33', '', ''),
(1519, '140.213.45.53', 'Spartan', '2019-06-05 19:02:02', '', ''),
(1520, '114.124.181.132', 'Chrome', '2019-06-05 19:13:35', '', ''),
(1521, '114.124.198.8', 'Chrome', '2019-06-05 19:21:57', '', ''),
(1522, '182.1.84.196', 'Chrome', '2019-06-05 19:22:43', '', ''),
(1523, '180.253.176.197', 'Chrome', '2019-06-05 19:41:03', '', ''),
(1524, '34.216.194.24', 'Chrome', '2019-06-05 19:41:13', '', ''),
(1525, '114.124.168.36', 'Chrome', '2019-06-05 19:47:55', '', ''),
(1526, '114.4.82.44', 'Chrome', '2019-06-05 19:59:11', '', ''),
(1527, '114.5.218.93', 'Chrome', '2019-06-05 20:11:02', '', ''),
(1528, '182.0.145.177', 'Chrome', '2019-06-05 20:11:16', '', ''),
(1529, '114.122.115.80', 'Chrome', '2019-06-05 20:26:33', '', ''),
(1530, '36.71.235.84', 'Chrome', '2019-06-05 20:29:24', '', ''),
(1531, '114.5.217.8', 'Chrome', '2019-06-05 20:43:23', '', ''),
(1532, '116.206.14.30', 'Chrome', '2019-06-05 20:46:08', '', ''),
(1533, '116.206.9.28', 'Chrome', '2019-06-05 20:47:45', '', ''),
(1534, '114.4.82.75', 'Chrome', '2019-06-05 21:13:19', '', ''),
(1535, '203.78.122.13', 'Chrome', '2019-06-05 21:20:56', '', ''),
(1536, '125.161.77.232', 'Chrome', '2019-06-05 21:38:53', '', ''),
(1537, '36.90.78.114', 'Chrome', '2019-06-05 21:53:14', '', ''),
(1538, '54.36.149.83', 'Mozilla', '2019-06-05 22:40:07', '', ''),
(1539, '36.77.157.84', 'Chrome', '2019-06-05 23:09:36', '', ''),
(1540, '182.0.201.1', 'Chrome', '2019-06-05 23:10:46', '', ''),
(1541, '114.124.198.0', 'Chrome', '2019-06-05 23:23:36', '', ''),
(1542, '140.213.38.47', 'Chrome', '2019-06-05 23:29:45', '', ''),
(1543, '120.188.39.21', 'Chrome', '2019-06-05 23:57:12', '', ''),
(1544, '182.0.231.90', 'Chrome', '2019-06-06 00:09:35', '', ''),
(1545, '182.0.137.38', 'Chrome', '2019-06-06 00:54:43', '', ''),
(1546, '114.124.199.183', 'Chrome', '2019-06-06 01:26:46', '', ''),
(1547, '114.124.247.6', 'Chrome', '2019-06-06 01:52:47', '', ''),
(1548, '114.124.236.232', 'Chrome', '2019-06-06 01:55:38', '', ''),
(1549, '140.213.36.121', 'Mozilla', '2019-06-06 02:01:56', '', ''),
(1550, '114.122.108.170', 'Chrome', '2019-06-06 02:19:35', '', ''),
(1551, '36.80.40.81', 'Chrome', '2019-06-06 02:31:59', '', ''),
(1552, '140.213.34.117', 'Chrome', '2019-06-06 02:33:52', '', ''),
(1553, '114.5.147.176', 'Chrome', '2019-06-06 02:57:14', '', ''),
(1554, '31.13.115.8', 'Chrome', '2019-06-06 03:03:27', '', ''),
(1555, '45.55.47.150', 'Mozilla', '2019-06-06 03:05:52', '', ''),
(1556, '182.1.42.142', 'Chrome', '2019-06-06 03:06:47', '', ''),
(1557, '36.72.51.27', 'Chrome', '2019-06-06 03:07:11', '', ''),
(1558, '104.248.15.65', 'Mozilla', '2019-06-06 03:19:25', '', ''),
(1559, '185.236.42.19', 'Safari', '2019-06-06 03:20:01', '', ''),
(1560, '115.178.219.154', 'Chrome', '2019-06-06 03:49:59', '', ''),
(1561, '159.203.120.51', 'Mozilla', '2019-06-06 03:52:09', '', ''),
(1562, '140.213.26.202', 'Chrome', '2019-06-06 03:52:40', '', ''),
(1563, '134.209.36.109', 'Mozilla', '2019-06-06 04:03:08', '', ''),
(1564, '158.140.187.217', 'Chrome', '2019-06-06 04:35:30', '', ''),
(1565, '182.1.99.58', 'Chrome', '2019-06-06 05:26:53', '', ''),
(1566, '173.252.95.45', 'Other', '2019-06-06 06:28:16', '', ''),
(1567, '140.213.21.239', 'Opera', '2019-06-06 06:34:38', '', ''),
(1568, '54.36.150.183', 'Mozilla', '2019-06-06 10:03:12', '', ''),
(1569, '51.158.117.104', 'Other', '2019-06-06 10:20:19', '', ''),
(1570, '221.124.241.101', 'Chrome', '2019-06-06 11:44:59', '', '');
INSERT INTO `visitor` (`id_visitor`, `ip_visitor`, `browser_visitor`, `date_visitor`, `platform`, `full_info`) VALUES
(1571, '114.5.217.155', 'Chrome', '2019-06-06 12:55:50', '', ''),
(1572, '209.17.96.42', 'Mozilla', '2019-06-06 14:14:21', '', ''),
(1573, '36.72.128.131', 'Chrome', '2019-06-06 15:45:39', '', ''),
(1574, '66.249.65.86', 'Googlebot', '2019-06-06 16:01:10', '', ''),
(1575, '31.13.115.22', 'Chrome', '2019-06-06 16:01:31', '', ''),
(1576, '114.124.209.204', 'Safari', '2019-06-06 16:52:25', '', ''),
(1577, '182.0.247.91', 'Chrome', '2019-06-06 18:05:14', '', ''),
(1578, '157.55.39.134', 'Bing', '2019-06-06 18:29:58', '', ''),
(1579, '180.244.8.85', 'Chrome', '2019-06-06 20:17:06', '', ''),
(1580, '209.17.96.58', 'Mozilla', '2019-06-06 21:03:52', '', ''),
(1581, '114.124.143.13', 'Chrome', '2019-06-06 21:06:23', '', ''),
(1582, '114.124.168.240', 'Chrome', '2019-06-06 22:39:20', '', ''),
(1583, '66.249.71.9', 'Googlebot', '2019-06-06 22:51:58', '', ''),
(1584, '34.221.216.225', 'Firefox', '2019-06-06 22:59:07', '', ''),
(1585, '36.72.18.81', 'Mozilla', '2019-06-06 23:44:33', '', ''),
(1586, '114.124.209.237', 'Safari', '2019-06-07 00:05:42', '', ''),
(1587, '173.252.127.36', 'Other', '2019-06-07 00:13:55', '', ''),
(1588, '173.252.127.42', 'Other', '2019-06-07 00:13:59', '', ''),
(1589, '173.252.127.49', 'Other', '2019-06-07 00:13:59', '', ''),
(1590, '114.5.146.230', 'Opera', '2019-06-07 01:08:11', '', ''),
(1591, '182.1.209.93', 'Safari', '2019-06-07 01:33:00', '', ''),
(1592, '140.213.38.117', 'Spartan', '2019-06-07 02:26:19', '', ''),
(1593, '114.124.198.13', 'Chrome', '2019-06-07 02:56:39', '', ''),
(1594, '188.244.32.76', 'Internet Explorer', '2019-06-07 05:59:09', '', ''),
(1595, '199.16.157.182', 'Other', '2019-06-07 07:01:30', '', ''),
(1596, '199.16.157.180', 'Other', '2019-06-07 07:02:27', '', ''),
(1597, '120.188.67.62', 'Chrome', '2019-06-07 07:17:29', '', ''),
(1598, '157.32.87.187', 'Firefox', '2019-06-07 09:08:43', '', ''),
(1599, '35.230.16.48', 'Chrome', '2019-06-07 11:12:59', '', ''),
(1600, '104.248.0.205', 'Chrome', '2019-06-07 11:34:44', '', ''),
(1601, '207.46.13.209', 'Bing', '2019-06-07 12:08:33', '', ''),
(1602, '66.249.71.8', 'Googlebot', '2019-06-07 12:55:04', '', ''),
(1603, '40.77.167.114', 'Bing', '2019-06-07 15:12:38', '', ''),
(1604, '209.58.188.120', 'Safari', '2019-06-07 16:05:47', '', ''),
(1605, '52.237.152.32', 'Firefox', '2019-06-07 16:19:13', '', ''),
(1606, '202.80.212.236', 'Chrome', '2019-06-07 17:51:12', '', ''),
(1607, '207.46.13.135', 'Bing', '2019-06-07 18:12:19', '', ''),
(1608, '64.233.172.179', 'Chrome', '2019-06-07 18:57:42', '', ''),
(1609, '114.124.140.175', 'Chrome', '2019-06-07 20:38:23', '', ''),
(1610, '40.77.167.163', 'Bing', '2019-06-07 21:12:57', '', ''),
(1611, '114.125.111.137', 'Chrome', '2019-06-07 23:09:55', '', ''),
(1612, '114.124.139.137', 'Safari', '2019-06-07 23:13:25', '', ''),
(1613, '173.252.127.55', 'Other', '2019-06-07 23:39:16', '', ''),
(1614, '207.46.13.22', 'Bing', '2019-06-08 00:16:22', '', ''),
(1615, '114.125.110.136', 'Chrome', '2019-06-08 00:52:30', '', ''),
(1616, '69.171.251.31', 'Other', '2019-06-08 01:34:27', '', ''),
(1617, '173.252.95.48', 'Firefox', '2019-06-08 01:41:16', '', ''),
(1618, '182.1.218.53', 'Chrome', '2019-06-08 02:45:12', '', ''),
(1619, '168.235.205.83', 'Chrome', '2019-06-08 03:11:16', '', ''),
(1620, '207.46.13.161', 'Bing', '2019-06-08 03:20:39', '', ''),
(1621, '114.124.196.248', 'Chrome', '2019-06-08 06:01:01', '', ''),
(1622, '114.124.138.24', 'Safari', '2019-06-08 06:30:06', '', ''),
(1623, '46.4.96.69', 'Mozilla', '2019-06-08 07:30:32', '', ''),
(1624, '140.213.15.80', 'Spartan', '2019-06-08 07:50:12', '', ''),
(1625, '157.55.39.55', 'Bing', '2019-06-08 09:29:14', '', ''),
(1626, '207.46.13.127', 'Bing', '2019-06-08 12:30:31', '', ''),
(1627, '202.67.46.23', 'Chrome', '2019-06-08 15:06:40', '', ''),
(1628, '157.55.39.217', 'Bing', '2019-06-08 18:40:46', '', ''),
(1629, '36.71.232.241', 'Chrome', '2019-06-08 19:33:46', '', ''),
(1630, '140.213.17.138', 'Chrome', '2019-06-08 19:35:17', '', ''),
(1631, '140.213.49.168', 'Chrome', '2019-06-08 19:43:48', '', ''),
(1632, '157.55.39.169', 'Bing', '2019-06-08 19:55:24', '', ''),
(1633, '114.124.200.176', 'Chrome', '2019-06-08 20:17:41', '', ''),
(1634, '116.206.15.48', 'Chrome', '2019-06-08 20:33:19', '', ''),
(1635, '66.249.83.91', 'Chrome', '2019-06-08 21:05:03', '', ''),
(1636, '114.5.212.36', 'Safari', '2019-06-08 22:40:48', '', ''),
(1637, '38.99.62.94', 'Other', '2019-06-08 23:08:50', '', ''),
(1638, '182.1.124.116', 'Safari', '2019-06-08 23:46:16', '', ''),
(1639, '36.85.146.46', 'Chrome', '2019-06-09 00:30:07', '', ''),
(1640, '157.55.39.195', 'Bing', '2019-06-09 00:47:26', '', ''),
(1641, '114.124.232.128', 'Chrome', '2019-06-09 01:26:36', '', ''),
(1642, '173.252.95.25', 'Chrome', '2019-06-09 01:28:47', '', ''),
(1643, '173.252.95.29', 'Chrome', '2019-06-09 02:14:47', '', ''),
(1644, '196.190.95.39', 'Chrome', '2019-06-09 04:58:49', '', ''),
(1645, '180.248.120.23', 'Chrome', '2019-06-09 05:07:21', '', ''),
(1646, '182.0.200.222', 'Safari', '2019-06-09 05:59:31', '', ''),
(1647, '40.77.167.127', 'Bing', '2019-06-09 06:48:38', '', ''),
(1648, '111.95.50.38', 'Spartan', '2019-06-09 06:57:24', '', ''),
(1649, '54.36.148.72', 'Mozilla', '2019-06-09 07:23:26', '', ''),
(1650, '66.102.7.181', 'Chrome', '2019-06-09 07:39:55', '', ''),
(1651, '17.58.103.231', 'Safari', '2019-06-09 07:54:12', '', ''),
(1652, '182.1.86.106', 'Chrome', '2019-06-09 09:20:56', '', ''),
(1653, '173.252.127.54', 'Other', '2019-06-09 13:02:00', '', ''),
(1654, '173.252.127.51', 'Other', '2019-06-09 13:02:00', '', ''),
(1655, '40.77.167.95', 'Bing', '2019-06-09 14:40:00', '', ''),
(1656, '182.1.108.251', 'Chrome', '2019-06-09 15:35:24', '', ''),
(1657, '111.95.69.197', 'Chrome', '2019-06-09 15:50:35', '', ''),
(1658, '114.124.200.246', 'Safari', '2019-06-09 17:08:01', '', ''),
(1659, '52.12.86.183', 'Other', '2019-06-09 17:08:11', '', ''),
(1660, '222.124.31.61', 'Chrome', '2019-06-09 18:41:10', '', ''),
(1661, '114.124.203.69', 'Chrome', '2019-06-09 20:02:52', '', ''),
(1662, '202.67.39.22', 'Firefox', '2019-06-09 21:03:53', '', ''),
(1663, '54.36.149.16', 'Mozilla', '2019-06-09 22:41:09', '', ''),
(1664, '36.90.254.204', 'Chrome', '2019-06-09 23:08:00', '', ''),
(1665, '173.252.95.11', 'Chrome', '2019-06-09 23:27:40', '', ''),
(1666, '14.192.210.136', 'Chrome', '2019-06-09 23:41:16', '', ''),
(1667, '14.192.210.136', 'Chrome', '2019-06-09 23:41:16', '', ''),
(1668, '35.230.23.94', 'Other', '2019-06-09 23:42:43', '', ''),
(1669, '69.171.251.19', 'Other', '2019-06-10 00:02:55', '', ''),
(1670, '69.171.251.1', 'Other', '2019-06-10 00:02:55', '', ''),
(1671, '69.171.251.34', 'Other', '2019-06-10 00:02:55', '', ''),
(1672, '185.86.93.58', 'Mozilla', '2019-06-10 00:24:19', '', ''),
(1673, '66.249.82.137', 'Chrome', '2019-06-10 00:39:31', '', ''),
(1674, '114.124.167.89', 'Chrome', '2019-06-10 00:39:31', '', ''),
(1675, '36.71.238.12', 'Firefox', '2019-06-10 02:00:29', '', ''),
(1676, '31.13.115.10', 'Chrome', '2019-06-10 02:15:10', '', ''),
(1677, '40.77.167.164', 'Bing', '2019-06-10 02:58:19', '', ''),
(1678, '213.174.152.185', 'Mozilla', '2019-06-10 03:15:57', '', ''),
(1679, '173.252.95.43', 'Other', '2019-06-10 03:36:00', '', ''),
(1680, '144.76.6.230', 'Majestic-12', '2019-06-10 05:43:06', '', ''),
(1681, '3.0.163.208', 'Chrome', '2019-06-10 05:51:27', '', ''),
(1682, '43.231.225.20', 'Chrome', '2019-06-10 05:51:28', '', ''),
(1683, '46.105.127.166', 'Firefox', '2019-06-10 07:44:18', '', ''),
(1684, '173.252.83.9', 'Other', '2019-06-10 07:55:49', '', ''),
(1685, '182.0.206.43', 'Chrome', '2019-06-10 07:56:19', '', ''),
(1686, '207.46.13.51', 'Bing', '2019-06-10 15:10:47', '', ''),
(1687, '114.5.214.237', 'Chrome', '2019-06-10 17:47:22', '', ''),
(1688, '182.0.181.139', 'Chrome', '2019-06-10 19:27:16', '', ''),
(1689, '167.99.198.95', 'Chrome', '2019-06-10 19:29:34', '', ''),
(1690, '114.124.215.34', 'Spartan', '2019-06-10 21:53:20', '', ''),
(1691, '31.13.127.10', 'Chrome', '2019-06-10 21:59:33', '', ''),
(1692, '66.249.83.92', 'Chrome', '2019-06-10 22:04:42', '', ''),
(1693, '114.125.111.80', 'Safari', '2019-06-10 22:13:59', '', ''),
(1694, '114.124.169.128', 'Chrome', '2019-06-10 23:43:30', '', ''),
(1695, '182.0.133.128', 'Chrome', '2019-06-11 00:11:57', '', ''),
(1696, '218.161.111.29', 'Chrome', '2019-06-11 02:39:04', '', ''),
(1697, '114.5.147.67', 'Chrome', '2019-06-11 02:58:04', '', ''),
(1698, '114.124.198.139', 'Chrome', '2019-06-11 02:59:48', '', ''),
(1699, '40.77.167.197', 'Bing', '2019-06-11 03:05:23', '', ''),
(1700, '163.47.151.113', 'Chrome', '2019-06-11 03:15:00', '', ''),
(1701, '54.36.150.24', 'Mozilla', '2019-06-11 03:55:10', '', ''),
(1702, '54.36.148.130', 'Mozilla', '2019-06-11 04:10:42', '', ''),
(1703, '140.213.42.207', 'Chrome', '2019-06-11 04:17:46', '', ''),
(1704, '36.90.17.173', 'Chrome', '2019-06-11 05:30:38', '', ''),
(1705, '87.250.224.68', 'YandexBot', '2019-06-11 06:32:32', '', ''),
(1706, '180.254.93.77', 'Safari', '2019-06-11 07:02:24', '', ''),
(1707, '173.252.95.21', 'Chrome', '2019-06-11 11:44:49', '', ''),
(1708, '54.191.216.76', 'Opera', '2019-06-11 12:43:53', '', ''),
(1709, '207.46.13.222', 'Bing', '2019-06-11 14:54:12', '', ''),
(1710, '203.78.122.253', 'Chrome', '2019-06-11 15:58:08', '', ''),
(1711, '103.213.130.16', 'Chrome', '2019-06-11 16:56:03', '', ''),
(1712, '116.206.14.63', 'Chrome', '2019-06-11 19:22:54', '', ''),
(1713, '116.206.14.60', 'Chrome', '2019-06-11 19:57:19', '', ''),
(1714, '173.252.87.34', 'Chrome', '2019-06-11 21:18:30', '', ''),
(1715, '182.1.207.184', 'Chrome', '2019-06-11 23:30:03', '', ''),
(1716, '40.77.167.55', 'Bing', '2019-06-12 03:03:30', '', ''),
(1717, '114.124.238.211', 'Safari', '2019-06-12 03:41:55', '', ''),
(1718, '43.249.37.56', 'Safari', '2019-06-12 04:59:27', '', ''),
(1719, '182.1.71.49', 'Safari', '2019-06-12 05:32:25', '', ''),
(1720, '36.72.0.176', 'Firefox', '2019-06-12 05:38:40', '', ''),
(1721, '173.252.83.7', 'Other', '2019-06-12 07:10:17', '', ''),
(1722, '182.1.68.154', 'Safari', '2019-06-12 07:31:34', '', ''),
(1723, '202.80.218.133', 'Mozilla', '2019-06-12 08:20:28', '', ''),
(1724, '101.255.36.146', 'Firefox', '2019-06-12 09:57:01', '', ''),
(1725, '51.83.76.186', 'Firefox', '2019-06-12 11:09:50', '', ''),
(1726, '125.163.59.37', 'Safari', '2019-06-12 11:15:38', '', ''),
(1727, '182.160.152.100', 'Firefox', '2019-06-12 13:13:35', '', ''),
(1728, '54.36.148.171', 'Mozilla', '2019-06-12 13:38:19', '', ''),
(1729, '36.71.237.149', 'Firefox', '2019-06-12 13:48:36', '', ''),
(1730, '51.158.73.199', 'Firefox', '2019-06-12 14:27:31', '', ''),
(1731, '207.46.13.211', 'Bing', '2019-06-12 15:02:12', '', ''),
(1732, '202.59.171.130', 'Chrome', '2019-06-12 16:57:37', '', ''),
(1733, '112.78.168.182', 'Chrome', '2019-06-12 19:14:19', '', ''),
(1734, '180.248.120.12', 'Chrome', '2019-06-12 19:46:59', '', ''),
(1735, '158.69.217.87', 'Other', '2019-06-12 20:02:25', '', ''),
(1736, '36.71.235.247', 'Chrome', '2019-06-12 21:32:37', '', ''),
(1737, '207.46.13.112', 'Bing', '2019-06-12 23:36:40', '', ''),
(1738, '114.124.203.184', 'Spartan', '2019-06-13 00:43:35', '', ''),
(1739, '18.216.197.133', 'Chrome', '2019-06-13 02:18:10', '', ''),
(1740, '182.160.152.114', 'Firefox', '2019-06-13 02:45:36', '', ''),
(1741, '207.46.13.203', 'Bing', '2019-06-13 03:01:08', '', ''),
(1742, '36.72.17.20', 'Chrome', '2019-06-13 04:38:34', '', ''),
(1743, '178.154.244.19', 'YandexBot', '2019-06-13 05:20:06', '', ''),
(1744, '114.124.198.52', 'Safari', '2019-06-13 05:37:11', '', ''),
(1745, '178.154.200.64', 'YandexBot', '2019-06-13 07:47:24', '', ''),
(1746, '95.108.213.62', 'YandexBot', '2019-06-13 07:47:27', '', ''),
(1747, '114.124.176.158', 'Chrome', '2019-06-13 11:09:16', '', ''),
(1748, '27.97.151.145', 'Chrome', '2019-06-13 13:48:00', '', ''),
(1749, '114.124.199.132', 'Safari', '2019-06-13 15:36:43', '', ''),
(1750, '114.124.199.37', 'Safari', '2019-06-13 16:48:30', '', ''),
(1751, '202.67.38.3', 'Firefox', '2019-06-13 18:15:18', '', ''),
(1752, '140.213.17.41', 'Spartan', '2019-06-13 19:16:47', '', ''),
(1753, '103.131.17.1', 'Chrome', '2019-06-13 20:36:33', '', ''),
(1754, '114.124.146.16', 'Chrome', '2019-06-13 20:44:31', '', ''),
(1755, '36.79.248.246', 'Chrome', '2019-06-13 20:45:51', '', ''),
(1756, '54.224.230.57', 'Chrome', '2019-06-13 20:49:15', '', ''),
(1757, '173.252.127.20', 'Other', '2019-06-13 20:52:23', '', ''),
(1758, '173.252.127.50', 'Other', '2019-06-13 20:52:23', '', ''),
(1759, '114.124.231.21', 'Safari', '2019-06-13 21:38:45', '', ''),
(1760, '101.128.68.135', 'Chrome', '2019-06-13 22:57:24', '', ''),
(1761, '36.81.239.94', 'Chrome', '2019-06-13 23:15:29', '', ''),
(1762, '173.252.95.41', 'Other', '2019-06-13 23:54:33', '', ''),
(1763, '173.252.95.44', 'Other', '2019-06-13 23:54:33', '', ''),
(1764, '114.124.243.234', 'Mozilla', '2019-06-14 00:13:12', '', ''),
(1765, '114.124.198.28', 'Chrome', '2019-06-14 00:19:11', '', ''),
(1766, '64.233.172.177', 'Chrome', '2019-06-14 01:07:16', '', ''),
(1767, '35.164.90.202', 'Internet Explorer', '2019-06-14 01:10:28', '', ''),
(1768, '114.142.173.24', 'Chrome', '2019-06-14 03:30:31', '', ''),
(1769, '182.0.132.189', 'Chrome', '2019-06-14 05:23:54', '', ''),
(1770, '116.206.14.49', 'Chrome', '2019-06-14 05:37:14', '', ''),
(1771, '213.168.250.151', 'Firefox', '2019-06-14 05:44:14', '', ''),
(1772, '64.15.129.116', 'Other', '2019-06-14 05:45:25', '', ''),
(1773, '192.175.111.242', 'Chrome', '2019-06-14 05:45:35', '', ''),
(1774, '192.175.111.229', 'Chrome', '2019-06-14 05:46:42', '', ''),
(1775, '192.175.111.228', 'Chrome', '2019-06-14 05:48:13', '', ''),
(1776, '72.55.136.156', 'Chrome', '2019-06-14 05:48:15', '', ''),
(1777, '64.15.129.118', 'Chrome', '2019-06-14 05:48:19', '', ''),
(1778, '64.15.129.102', 'Chrome', '2019-06-14 05:48:21', '', ''),
(1779, '64.15.129.119', 'Chrome', '2019-06-14 05:48:24', '', ''),
(1780, '192.175.111.231', 'Chrome', '2019-06-14 05:48:28', '', ''),
(1781, '192.175.111.243', 'Chrome', '2019-06-14 05:48:30', '', ''),
(1782, '192.175.111.241', 'Chrome', '2019-06-14 05:48:48', '', ''),
(1783, '192.175.111.240', 'Chrome', '2019-06-14 05:48:52', '', ''),
(1784, '64.15.129.124', 'Chrome', '2019-06-14 05:49:04', '', ''),
(1785, '70.38.27.248', 'Chrome', '2019-06-14 05:49:20', '', ''),
(1786, '140.213.7.98', 'Internet Explorer', '2019-06-14 05:54:14', '', ''),
(1787, '114.122.110.167', 'Firefox', '2019-06-14 06:13:25', '', ''),
(1788, '80.248.225.168', 'Other', '2019-06-14 07:06:35', '', ''),
(1789, '209.17.97.34', 'Mozilla', '2019-06-14 07:14:29', '', ''),
(1790, '157.55.39.210', 'Bing', '2019-06-14 11:12:11', '', ''),
(1791, '5.45.64.76', 'Googlebot', '2019-06-14 14:05:50', '', ''),
(1792, '114.124.230.180', 'Safari', '2019-06-14 17:40:35', '', ''),
(1793, '209.17.97.82', 'Mozilla', '2019-06-14 19:21:30', '', ''),
(1794, '114.124.134.136', 'Chrome', '2019-06-14 19:52:08', '', ''),
(1795, '114.124.213.179', 'Chrome', '2019-06-14 20:39:26', '', ''),
(1796, '36.90.254.107', 'Spartan', '2019-06-14 21:21:43', '', ''),
(1797, '114.124.149.85', 'Chrome', '2019-06-14 21:40:31', '', ''),
(1798, '114.124.151.81', 'Spartan', '2019-06-14 22:29:47', '', ''),
(1799, '69.58.178.59', 'Mozilla', '2019-06-14 22:45:32', '', ''),
(1800, '110.138.151.232', 'Firefox', '2019-06-14 23:13:36', '', ''),
(1801, '5.255.253.10', 'YandexBot', '2019-06-15 01:14:00', '', ''),
(1802, '207.46.13.81', 'Bing', '2019-06-15 01:14:48', '', ''),
(1803, '114.124.230.4', 'Safari', '2019-06-15 01:21:46', '', ''),
(1804, '141.8.183.215', 'YandexBot', '2019-06-15 01:38:53', '', ''),
(1805, '51.158.98.255', 'Other', '2019-06-15 02:04:18', '', ''),
(1806, '147.92.137.179', 'Other', '2019-06-15 02:09:02', '', ''),
(1807, '147.92.137.154', 'Other', '2019-06-15 02:09:03', '', ''),
(1808, '114.124.199.4', 'Safari', '2019-06-15 04:10:54', '', ''),
(1809, '140.213.0.101', 'Chrome', '2019-06-15 05:31:56', '', ''),
(1810, '114.124.201.7', 'Chrome', '2019-06-15 05:52:58', '', ''),
(1811, '52.37.222.213', 'Chrome', '2019-06-15 05:57:44', '', ''),
(1812, '116.206.29.124', 'Chrome', '2019-06-15 07:13:30', '', ''),
(1813, '116.206.29.124', 'Chrome', '2019-06-15 07:13:30', '', ''),
(1814, '115.178.220.215', 'Chrome', '2019-06-15 09:19:49', '', ''),
(1815, '13.52.186.184', 'Chrome', '2019-06-15 09:45:54', '', ''),
(1816, '54.219.137.190', 'Chrome', '2019-06-15 09:47:44', '', ''),
(1817, '54.183.112.134', 'Chrome', '2019-06-15 09:47:44', '', ''),
(1818, '114.125.168.229', 'Chrome', '2019-06-15 15:19:38', '', ''),
(1819, '114.124.239.26', 'Safari', '2019-06-15 16:28:48', '', ''),
(1820, '208.87.233.140', 'Chrome', '2019-06-15 18:04:12', '', ''),
(1821, '107.178.194.11', 'Internet Explorer', '2019-06-15 18:04:13', '', ''),
(1822, '114.125.95.203', 'Safari', '2019-06-15 18:51:10', '', ''),
(1823, '54.245.159.211', 'Chrome', '2019-06-15 19:10:04', '', ''),
(1824, '188.166.98.249', 'Chrome', '2019-06-15 19:11:47', '', ''),
(1825, '35.163.134.226', 'Other', '2019-06-15 19:20:20', '', ''),
(1826, '66.249.65.114', 'Googlebot', '2019-06-15 20:03:12', '', ''),
(1827, '182.1.90.190', 'Safari', '2019-06-15 20:08:09', '', ''),
(1828, '182.0.204.210', 'Safari', '2019-06-15 21:26:20', '', ''),
(1829, '140.213.16.193', 'Chrome', '2019-06-15 22:09:59', '', ''),
(1830, '125.163.61.163', 'Firefox', '2019-06-15 22:57:12', '', ''),
(1831, '140.213.19.134', 'Chrome', '2019-06-15 23:14:50', '', ''),
(1832, '157.39.89.48', 'Chrome', '2019-06-16 01:00:32', '', ''),
(1833, '31.13.115.5', 'Firefox', '2019-06-16 02:01:03', '', ''),
(1834, '36.67.62.165', 'Firefox', '2019-06-16 02:26:00', '', ''),
(1835, '36.82.226.70', 'Safari', '2019-06-16 06:03:44', '', ''),
(1836, '36.82.226.70', 'Safari', '2019-06-16 06:03:44', '', ''),
(1837, '34.224.83.210', 'Chrome', '2019-06-16 06:37:09', '', ''),
(1838, '54.88.147.91', 'Other', '2019-06-16 06:53:36', '', ''),
(1839, '110.138.149.98', 'Chrome', '2019-06-16 08:17:02', '', ''),
(1840, '182.0.237.115', 'Safari', '2019-06-16 08:40:35', '', ''),
(1841, '140.213.73.70', 'Chrome', '2019-06-16 08:49:03', '', ''),
(1842, '140.213.74.254', 'Chrome', '2019-06-16 08:52:24', '', ''),
(1843, '207.46.13.228', 'Bing', '2019-06-16 10:57:36', '', ''),
(1844, '125.160.44.148', 'Chrome', '2019-06-16 12:01:16', '', ''),
(1845, '120.188.33.15', 'Chrome', '2019-06-16 12:29:18', '', ''),
(1846, '136.243.144.81', 'Chrome', '2019-06-16 12:48:35', '', ''),
(1847, '120.188.38.64', 'Chrome', '2019-06-16 14:50:16', '', ''),
(1848, '54.36.150.150', 'Mozilla', '2019-06-16 15:40:36', '', ''),
(1849, '157.55.39.160', 'Bing', '2019-06-16 16:11:11', '', ''),
(1850, '112.215.210.149', 'Chrome', '2019-06-16 18:59:32', '', ''),
(1851, '116.206.14.36', 'Chrome', '2019-06-16 19:01:02', '', ''),
(1852, '36.90.254.111', 'Spartan', '2019-06-16 19:16:40', '', ''),
(1853, '148.251.10.183', 'Majestic-12', '2019-06-16 19:30:31', '', ''),
(1854, '173.252.87.37', 'Other', '2019-06-16 19:40:22', '', ''),
(1855, '116.206.14.9', 'Chrome', '2019-06-16 19:46:55', '', ''),
(1856, '116.206.14.21', 'Safari', '2019-06-16 19:53:56', '', ''),
(1857, '116.206.14.22', 'Chrome', '2019-06-16 20:46:40', '', ''),
(1858, '112.215.208.55', 'Chrome', '2019-06-16 20:46:40', '', ''),
(1859, '36.65.243.32', 'Chrome', '2019-06-16 22:06:19', '', ''),
(1860, '182.0.179.218', 'Chrome', '2019-06-16 22:54:33', '', ''),
(1861, '114.124.177.207', 'Chrome', '2019-06-16 23:41:40', '', ''),
(1862, '144.76.68.76', 'Other', '2019-06-17 00:05:26', '', ''),
(1863, '182.0.168.127', 'Other', '2019-06-17 00:33:17', '', ''),
(1864, '119.18.159.166', 'Firefox', '2019-06-17 01:14:29', '', ''),
(1865, '157.55.39.147', 'Bing', '2019-06-17 02:08:37', '', ''),
(1866, '66.96.214.58', 'Chrome', '2019-06-17 02:15:43', '', ''),
(1867, '112.215.209.22', 'Chrome', '2019-06-17 02:35:49', '', ''),
(1868, '114.4.83.36', 'Chrome', '2019-06-17 02:48:40', '', ''),
(1869, '207.46.13.117', 'Bing', '2019-06-17 03:39:28', '', ''),
(1870, '182.0.138.80', 'Other', '2019-06-17 04:07:55', '', ''),
(1871, '114.124.246.66', 'Chrome', '2019-06-17 04:22:57', '', ''),
(1872, '182.0.232.59', 'Other', '2019-06-17 04:54:31', '', ''),
(1873, '114.124.205.52', 'Other', '2019-06-17 05:53:52', '', ''),
(1874, '36.79.170.98', 'Other', '2019-06-17 07:52:56', '', ''),
(1875, '54.36.148.216', 'Mozilla', '2019-06-17 08:07:01', '', ''),
(1876, '182.0.240.194', 'Safari', '2019-06-17 08:16:23', '', ''),
(1877, '36.65.244.61', 'Other', '2019-06-17 08:37:57', '', ''),
(1878, '103.119.140.54', 'Chrome', '2019-06-17 09:05:47', '', ''),
(1879, '103.26.247.94', 'Other', '2019-06-17 12:28:04', '', ''),
(1880, '141.8.142.90', 'YandexBot', '2019-06-17 13:33:40', '', ''),
(1881, '61.5.89.212', 'Chrome', '2019-06-17 14:22:23', '', ''),
(1882, '216.244.84.83', 'Other', '2019-06-17 14:31:52', '', ''),
(1883, '182.1.117.105', 'Safari', '2019-06-17 17:50:05', '', ''),
(1884, '114.125.185.165', 'Chrome', '2019-06-17 18:16:24', '', ''),
(1885, '209.17.97.10', 'Mozilla', '2019-06-17 18:22:22', '', ''),
(1886, '125.163.109.92', 'Chrome', '2019-06-17 19:06:38', '', ''),
(1887, '114.142.172.16', 'Firefox', '2019-06-17 19:09:30', '', ''),
(1888, '114.124.150.80', 'Chrome', '2019-06-17 19:52:06', '', ''),
(1889, '203.78.116.36', 'Chrome', '2019-06-17 20:01:34', '', ''),
(1890, '140.213.68.169', 'Chrome', '2019-06-17 20:09:33', '', ''),
(1891, '114.5.208.41', 'Chrome', '2019-06-17 20:28:13', '', ''),
(1892, '36.79.151.157', 'Chrome', '2019-06-17 20:49:48', '', ''),
(1893, '116.206.15.22', 'Chrome', '2019-06-17 22:47:02', '', ''),
(1894, '120.188.5.226', 'Chrome', '2019-06-18 02:26:05', '', ''),
(1895, '182.0.133.115', 'Chrome', '2019-06-18 03:13:33', '', ''),
(1896, '116.206.14.14', 'Chrome', '2019-06-18 05:03:05', '', ''),
(1897, '114.124.133.33', 'Firefox', '2019-06-18 05:09:39', '', ''),
(1898, '207.46.13.20', 'Bing', '2019-06-18 05:45:33', '', ''),
(1899, '36.72.212.100', 'Safari', '2019-06-18 07:00:17', '', ''),
(1900, '203.78.116.235', 'Chrome', '2019-06-18 08:36:27', '', ''),
(1901, '157.55.39.172', 'Bing', '2019-06-18 10:37:51', '', ''),
(1902, '115.178.204.116', 'Chrome', '2019-06-18 11:02:45', '', ''),
(1903, '180.250.30.147', 'Chrome', '2019-06-18 11:19:06', '', ''),
(1904, '54.36.150.4', 'Mozilla', '2019-06-18 11:54:59', '', ''),
(1905, '34.222.58.25', 'Safari', '2019-06-18 12:28:50', '', ''),
(1906, '36.69.248.13', 'Other', '2019-06-18 13:48:42', '', ''),
(1907, '31.13.127.42', 'Chrome', '2019-06-18 17:21:27', '', ''),
(1908, '114.125.171.202', 'Chrome', '2019-06-18 18:39:57', '', ''),
(1909, '182.253.121.52', 'Chrome', '2019-06-18 19:20:16', '', ''),
(1910, '116.206.14.18', 'Chrome', '2019-06-18 19:29:03', '', ''),
(1911, '34.210.80.16', 'Other', '2019-06-18 19:29:57', '', ''),
(1912, '104.219.54.252', 'Chrome', '2019-06-18 19:34:34', '', ''),
(1913, '202.158.26.43', 'Internet Explorer', '2019-06-18 20:03:40', '', ''),
(1914, '180.248.121.215', 'Chrome', '2019-06-18 20:29:24', '', ''),
(1915, '114.124.147.103', 'Chrome', '2019-06-18 23:29:11', '', ''),
(1916, '125.160.67.57', 'Chrome', '2019-06-18 23:33:50', '', ''),
(1917, '139.192.63.44', 'Chrome', '2019-06-18 23:40:09', '', ''),
(1918, '66.249.71.50', 'Googlebot', '2019-06-19 00:39:48', '', ''),
(1919, '66.249.71.48', 'Googlebot', '2019-06-19 00:42:02', '', ''),
(1920, '103.87.84.170', 'Chrome', '2019-06-19 01:15:40', '', ''),
(1921, '185.20.6.75', 'Firefox', '2019-06-19 01:41:25', '', ''),
(1922, '173.252.127.10', 'Other', '2019-06-19 02:01:24', '', ''),
(1923, '182.0.199.101', 'Firefox', '2019-06-19 02:33:41', '', ''),
(1924, '123.136.116.202', 'Chrome', '2019-06-19 03:06:38', '', ''),
(1925, '115.178.250.159', 'Chrome', '2019-06-19 03:19:35', '', ''),
(1926, '54.36.150.190', 'Mozilla', '2019-06-19 03:37:11', '', ''),
(1927, '173.252.83.3', 'Other', '2019-06-19 04:43:08', '', ''),
(1928, '114.125.187.194', 'Chrome', '2019-06-19 04:50:26', '', ''),
(1929, '173.252.95.35', 'Other', '2019-06-19 05:23:41', '', ''),
(1930, '173.252.95.35', 'Other', '2019-06-19 05:23:41', '', ''),
(1931, '213.186.4.78', 'Other', '2019-06-19 05:31:46', '', ''),
(1932, '207.46.13.169', 'Bing', '2019-06-19 05:34:00', '', ''),
(1933, '154.16.46.205', 'Chrome', '2019-06-19 05:58:04', '', ''),
(1934, '178.154.171.15', 'YandexBot', '2019-06-19 06:13:23', '', ''),
(1935, '114.125.181.130', 'Chrome', '2019-06-19 06:38:33', '', ''),
(1936, '114.5.209.62', 'Chrome', '2019-06-19 07:58:58', '', ''),
(1937, '141.8.142.172', 'YandexBot', '2019-06-19 08:16:06', '', ''),
(1938, '120.188.65.207', 'Chrome', '2019-06-19 08:36:46', '', ''),
(1939, '203.78.119.46', 'Chrome', '2019-06-19 09:15:51', '', ''),
(1940, '66.249.71.10', 'Googlebot', '2019-06-19 09:30:00', '', ''),
(1941, '66.249.71.159', 'Googlebot', '2019-06-19 10:12:12', '', ''),
(1942, '202.80.214.173', 'Chrome', '2019-06-19 11:57:52', '', ''),
(1943, '34.229.126.29', 'Other', '2019-06-19 12:40:46', '', ''),
(1944, '115.178.218.212', 'Chrome', '2019-06-19 16:41:48', '', ''),
(1945, '180.245.193.188', 'Chrome', '2019-06-19 18:40:30', '', ''),
(1946, '120.188.75.206', 'Firefox', '2019-06-19 20:11:31', '', ''),
(1947, '35.167.134.153', 'Other', '2019-06-19 20:38:37', '', ''),
(1948, '114.124.135.92', 'Chrome', '2019-06-19 21:05:21', '', ''),
(1949, '114.124.135.92', 'Chrome', '2019-06-19 21:05:21', '', ''),
(1950, '114.124.135.92', 'Chrome', '2019-06-19 21:05:21', '', ''),
(1951, '120.188.7.139', 'Chrome', '2019-06-19 21:05:37', '', ''),
(1952, '180.246.217.205', 'Chrome', '2019-06-19 21:10:22', '', ''),
(1953, '31.13.127.19', 'Chrome', '2019-06-19 21:18:07', '', ''),
(1954, '114.142.169.15', 'Chrome', '2019-06-19 22:16:25', '', ''),
(1955, '103.44.37.163', 'Chrome', '2019-06-19 22:46:59', '', ''),
(1956, '173.252.95.8', 'Other', '2019-06-19 22:57:37', '', ''),
(1957, '36.79.253.78', 'Chrome', '2019-06-19 23:28:03', '', ''),
(1958, '47.9.204.46', 'Chrome', '2019-06-19 23:30:40', '', ''),
(1959, '180.246.63.50', 'Chrome', '2019-06-19 23:33:21', '', ''),
(1960, '182.160.152.74', 'Firefox', '2019-06-20 00:45:25', '', ''),
(1961, '140.213.40.222', 'Chrome', '2019-06-20 01:21:07', '', ''),
(1962, '115.178.219.248', 'Chrome', '2019-06-20 01:56:52', '', ''),
(1963, '118.96.235.94', 'Chrome', '2019-06-20 02:03:53', '', ''),
(1964, '182.1.167.28', 'Chrome', '2019-06-20 03:43:55', '', ''),
(1965, '114.124.231.86', 'Chrome', '2019-06-20 04:32:15', '', ''),
(1966, '116.206.40.17', 'Chrome', '2019-06-20 05:02:55', '', ''),
(1967, '114.125.222.211', 'Chrome', '2019-06-20 05:28:33', '', ''),
(1968, '114.5.216.90', 'Chrome', '2019-06-20 07:32:19', '', ''),
(1969, '202.67.32.3', 'Chrome', '2019-06-20 10:02:09', '', ''),
(1970, '125.160.64.210', 'Chrome', '2019-06-20 10:59:39', '', ''),
(1971, '141.8.132.12', 'YandexBot', '2019-06-20 12:05:59', '', ''),
(1972, '87.250.224.33', 'YandexBot', '2019-06-20 16:42:25', '', ''),
(1973, '141.8.142.175', 'YandexBot', '2019-06-20 16:51:02', '', ''),
(1974, '114.122.104.226', 'Opera', '2019-06-20 18:56:39', '', ''),
(1975, '114.122.107.20', 'Opera', '2019-06-20 19:05:45', '', ''),
(1976, '114.122.105.72', 'Opera', '2019-06-20 19:18:52', '', ''),
(1977, '114.122.105.227', 'Other', '2019-06-20 19:19:37', '', ''),
(1978, '36.70.242.255', 'Firefox', '2019-06-20 19:23:59', '', ''),
(1979, '182.1.69.168', 'Chrome', '2019-06-20 19:30:19', '', ''),
(1980, '139.195.170.146', 'Chrome', '2019-06-20 19:54:19', '', ''),
(1981, '118.96.200.23', 'Chrome', '2019-06-20 20:23:25', '', ''),
(1982, '182.0.176.193', 'Chrome', '2019-06-20 20:26:07', '', ''),
(1983, '182.0.176.193', 'Chrome', '2019-06-20 20:26:07', '', ''),
(1984, '180.248.122.75', 'Chrome', '2019-06-20 22:39:09', '', ''),
(1985, '182.1.179.227', 'Chrome', '2019-06-20 23:02:34', '', ''),
(1986, '125.160.65.162', 'Chrome', '2019-06-20 23:02:58', '', ''),
(1987, '173.252.95.39', 'Other', '2019-06-20 23:06:29', '', ''),
(1988, '66.249.83.15', 'Chrome', '2019-06-20 23:19:59', '', ''),
(1989, '223.255.230.13', 'Chrome', '2019-06-20 23:23:13', '', ''),
(1990, '173.252.127.53', 'Other', '2019-06-20 23:27:25', '', ''),
(1991, '104.248.153.171', 'Other', '2019-06-20 23:51:29', '', ''),
(1992, '118.96.94.121', 'Chrome', '2019-06-21 00:39:53', '', ''),
(1993, '112.215.230.224', 'Chrome', '2019-06-21 00:58:05', '', ''),
(1994, '114.4.83.4', 'Chrome', '2019-06-21 01:01:56', '', ''),
(1995, '139.167.233.135', 'Firefox', '2019-06-21 01:51:11', '', ''),
(1996, '34.212.74.86', 'Opera', '2019-06-21 02:09:22', '', ''),
(1997, '182.1.207.242', 'Chrome', '2019-06-21 05:22:13', '', ''),
(1998, '182.1.207.242', 'Chrome', '2019-06-21 05:22:13', '', ''),
(1999, '182.1.90.203', 'Chrome', '2019-06-21 10:12:00', '', ''),
(2000, '182.0.203.207', 'Chrome', '2019-06-21 10:18:10', '', ''),
(2001, '202.80.214.135', 'Chrome', '2019-06-21 10:23:35', '', ''),
(2002, '219.64.5.2', 'Internet Explorer', '2019-06-21 10:41:17', '', ''),
(2003, '120.188.32.136', 'Safari', '2019-06-21 11:36:30', '', ''),
(2004, '110.137.176.193', 'Firefox', '2019-06-21 12:49:37', '', ''),
(2005, '209.17.97.98', 'Mozilla', '2019-06-21 13:55:02', '', ''),
(2006, '31.13.115.1', 'Chrome', '2019-06-21 16:19:44', '', ''),
(2007, '116.206.14.15', 'Chrome', '2019-06-21 17:21:59', '', ''),
(2008, '36.73.130.122', 'Chrome', '2019-06-21 18:42:06', '', ''),
(2009, '182.0.212.23', 'Chrome', '2019-06-21 18:52:22', '', ''),
(2010, '125.160.66.97', 'Chrome', '2019-06-21 19:14:22', '', ''),
(2011, '69.171.251.36', 'Other', '2019-06-21 19:18:14', '', ''),
(2012, '114.5.210.103', 'Safari', '2019-06-21 20:07:30', '', ''),
(2013, '36.80.119.135', 'Chrome', '2019-06-21 21:20:01', '', ''),
(2014, '120.188.93.157', 'Chrome', '2019-06-21 21:39:26', '', ''),
(2015, '140.213.22.241', 'Firefox', '2019-06-21 21:58:08', '', ''),
(2016, '114.124.148.234', 'Chrome', '2019-06-21 22:10:47', '', ''),
(2017, '116.206.14.48', 'Chrome', '2019-06-21 23:28:27', '', ''),
(2018, '114.124.171.28', 'Chrome', '2019-06-21 23:30:55', '', ''),
(2019, '182.0.211.155', 'Chrome', '2019-06-21 23:32:05', '', ''),
(2020, '36.71.233.179', 'Firefox', '2019-06-21 23:39:16', '', ''),
(2021, '36.72.198.32', 'Chrome', '2019-06-22 00:13:51', '', ''),
(2022, '120.188.72.162', 'Internet Explorer', '2019-06-22 00:14:09', '', ''),
(2023, '180.244.241.184', 'Chrome', '2019-06-22 00:39:06', '', ''),
(2024, '182.1.118.97', 'Chrome', '2019-06-22 01:07:19', '', ''),
(2025, '114.124.246.134', 'Chrome', '2019-06-22 02:06:19', '', ''),
(2026, '140.213.18.170', 'Chrome', '2019-06-22 02:29:41', '', ''),
(2027, '182.0.174.83', 'Chrome', '2019-06-22 03:01:16', '', ''),
(2028, '61.94.91.225', 'Chrome', '2019-06-22 04:24:50', '', ''),
(2029, '114.124.199.7', 'Chrome', '2019-06-22 04:28:03', '', ''),
(2030, '114.124.213.64', 'Chrome', '2019-06-22 04:38:09', '', ''),
(2031, '54.162.26.21', 'Chrome', '2019-06-22 05:07:53', '', ''),
(2032, '114.124.179.128', 'Safari', '2019-06-22 05:18:10', '', ''),
(2033, '116.206.14.37', 'Chrome', '2019-06-22 06:58:31', '', ''),
(2034, '66.249.83.19', 'Chrome', '2019-06-22 07:11:49', '', ''),
(2035, '40.77.167.162', 'Bing', '2019-06-22 07:53:39', '', ''),
(2036, '116.206.14.55', 'Chrome', '2019-06-22 08:51:40', '', ''),
(2037, '116.206.14.55', 'Chrome', '2019-06-22 08:51:40', '', ''),
(2038, '180.245.194.20', 'Chrome', '2019-06-22 09:12:39', '', ''),
(2039, '115.178.254.198', 'Chrome', '2019-06-22 09:15:25', '', ''),
(2040, '17.58.102.165', 'Safari', '2019-06-22 11:05:10', '', ''),
(2041, '54.36.150.180', 'Mozilla', '2019-06-22 13:58:43', '', ''),
(2042, '114.124.206.187', 'Chrome', '2019-06-22 16:13:23', '', ''),
(2043, '114.124.238.155', 'Chrome', '2019-06-22 17:34:05', '', ''),
(2044, '114.4.213.132', 'Chrome', '2019-06-22 17:55:05', '', ''),
(2045, '223.255.230.65', 'Chrome', '2019-06-22 18:11:36', '', ''),
(2046, '125.160.115.47', 'Chrome', '2019-06-22 18:45:16', '', ''),
(2047, '18.237.233.165', 'Other', '2019-06-22 19:02:56', '', ''),
(2048, '81.209.177.189', 'Other', '2019-06-22 19:54:00', '', ''),
(2049, '111.90.141.171', 'Other', '2019-06-22 19:56:12', '', ''),
(2050, '114.124.142.46', 'Chrome', '2019-06-22 20:21:05', '', ''),
(2051, '17.58.102.188', 'Safari', '2019-06-22 20:26:33', '', ''),
(2052, '36.72.46.197', 'Chrome', '2019-06-22 22:53:51', '', ''),
(2053, '36.80.134.181', 'Chrome', '2019-06-22 23:06:55', '', ''),
(2054, '36.90.14.13', 'Chrome', '2019-06-22 23:09:13', '', ''),
(2055, '140.213.23.126', 'Chrome', '2019-06-22 23:37:28', '', ''),
(2056, '118.96.237.197', 'Chrome', '2019-06-23 01:41:35', '', ''),
(2057, '114.125.21.217', 'Chrome', '2019-06-23 01:43:15', '', ''),
(2058, '180.249.23.2', 'Chrome', '2019-06-23 02:12:10', '', ''),
(2059, '69.171.251.18', 'Firefox', '2019-06-23 03:28:55', '', ''),
(2060, '95.163.255.29', 'Mozilla', '2019-06-23 03:51:47', '', ''),
(2061, '114.5.222.12', 'Chrome', '2019-06-23 03:57:36', '', ''),
(2062, '125.163.65.115', 'Chrome', '2019-06-23 07:11:17', '', ''),
(2063, '40.77.167.61', 'Bing', '2019-06-23 08:45:33', '', ''),
(2064, '54.36.150.82', 'Mozilla', '2019-06-23 10:00:46', '', ''),
(2065, '35.153.69.82', 'Firefox', '2019-06-23 11:55:01', '', ''),
(2066, '115.124.74.26', 'Chrome', '2019-06-23 13:30:21', '', ''),
(2067, '159.203.196.79', 'Firefox', '2019-06-23 14:56:36', '', ''),
(2068, '193.188.122.169', 'Chrome', '2019-06-23 14:56:37', '', ''),
(2069, '31.13.115.11', 'Firefox', '2019-06-23 15:06:25', '', ''),
(2070, '54.202.4.200', 'Other', '2019-06-23 17:18:42', '', ''),
(2071, '36.90.254.52', 'Chrome', '2019-06-23 18:26:44', '', ''),
(2072, '103.23.244.254', 'Chrome', '2019-06-23 18:50:53', '', ''),
(2073, '178.63.13.154', 'Majestic-12', '2019-06-23 19:20:11', '', ''),
(2074, '180.245.25.35', 'Chrome', '2019-06-23 19:34:09', '', ''),
(2075, '173.252.95.18', 'Other', '2019-06-23 20:02:24', '', ''),
(2076, '115.178.203.13', 'Chrome', '2019-06-23 21:21:29', '', ''),
(2077, '47.11.249.185', 'Chrome', '2019-06-23 21:58:04', '', ''),
(2078, '103.119.144.250', 'Chrome', '2019-06-23 23:12:04', '', ''),
(2079, '140.213.3.185', 'Chrome', '2019-06-23 23:46:07', '', ''),
(2080, '180.248.65.61', 'Chrome', '2019-06-23 23:53:55', '', ''),
(2081, '36.71.233.146', 'Firefox', '2019-06-24 00:57:33', '', ''),
(2082, '173.252.127.52', 'Other', '2019-06-24 01:08:55', '', ''),
(2083, '54.36.148.6', 'Mozilla', '2019-06-24 01:36:26', '', ''),
(2084, '173.252.95.2', 'Other', '2019-06-24 04:02:07', '', ''),
(2085, '120.188.65.178', 'Chrome', '2019-06-24 04:49:12', '', ''),
(2086, '111.94.210.69', 'Chrome', '2019-06-24 06:38:49', '', ''),
(2087, '180.254.254.100', 'Chrome', '2019-06-24 06:58:09', '', ''),
(2088, '180.248.120.146', 'Chrome', '2019-06-24 07:14:37', '', ''),
(2089, '207.46.13.210', 'Bing', '2019-06-24 08:33:13', '', ''),
(2090, '125.160.65.29', 'Chrome', '2019-06-24 09:07:50', '', ''),
(2091, '114.125.191.96', 'Chrome', '2019-06-24 10:54:57', '', ''),
(2092, '54.169.184.234', 'Other', '2019-06-24 13:32:29', '', ''),
(2093, '199.229.249.151', 'Firefox', '2019-06-24 14:17:49', '', ''),
(2094, '13.229.122.50', 'Other', '2019-06-24 14:51:38', '', ''),
(2095, '47.9.193.174', 'Chrome', '2019-06-24 17:51:00', '', ''),
(2096, '114.4.78.147', 'Chrome', '2019-06-24 18:13:25', '', ''),
(2097, '125.160.65.62', 'Chrome', '2019-06-24 18:20:00', '', ''),
(2098, '158.140.187.236', 'Chrome', '2019-06-24 19:01:00', '', ''),
(2099, '112.215.235.14', 'Chrome', '2019-06-24 19:08:05', '', ''),
(2100, '120.188.66.95', 'Chrome', '2019-06-24 19:20:35', '', ''),
(2101, '114.124.200.29', 'Chrome', '2019-06-24 19:43:29', '', ''),
(2102, '114.122.72.207', 'Chrome', '2019-06-24 20:20:39', '', ''),
(2103, '211.187.7.65', 'Chrome', '2019-06-24 20:24:39', '', ''),
(2104, '34.219.111.115', 'Other', '2019-06-24 20:42:29', '', ''),
(2105, '125.161.139.124', 'Firefox', '2019-06-24 20:44:28', '', ''),
(2106, '103.11.96.226', 'Firefox', '2019-06-24 20:46:35', '', ''),
(2107, '114.122.73.46', 'Other', '2019-06-24 21:40:06', '', ''),
(2108, '47.29.101.227', 'Chrome', '2019-06-24 22:10:14', '', ''),
(2109, '114.122.74.229', 'Safari', '2019-06-24 22:34:41', '', ''),
(2110, '114.122.72.208', 'Other', '2019-06-24 22:47:32', '', ''),
(2111, '182.0.207.232', 'Chrome', '2019-06-24 22:48:47', '', ''),
(2112, '140.213.52.187', 'Chrome', '2019-06-24 22:56:22', '', ''),
(2113, '182.1.91.125', 'Chrome', '2019-06-24 23:13:11', '', ''),
(2114, '114.125.85.6', 'Chrome', '2019-06-24 23:54:59', '', ''),
(2115, '54.36.150.5', 'Mozilla', '2019-06-25 00:15:24', '', ''),
(2116, '103.44.37.79', 'Other', '2019-06-25 01:29:02', '', ''),
(2117, '182.0.209.69', 'Chrome', '2019-06-25 01:29:54', '', ''),
(2118, '140.213.5.158', 'Firefox', '2019-06-25 01:32:15', '', ''),
(2119, '115.178.252.12', 'Chrome', '2019-06-25 01:32:36', '', ''),
(2120, '120.188.78.0', 'Chrome', '2019-06-25 02:47:30', '', ''),
(2121, '114.122.75.44', 'Safari', '2019-06-25 02:48:13', '', ''),
(2122, '104.36.17.15', 'Chrome', '2019-06-25 03:38:48', '', ''),
(2123, '116.206.15.50', 'Chrome', '2019-06-25 04:11:33', '', ''),
(2124, '112.215.241.162', 'Chrome', '2019-06-25 04:35:10', '', ''),
(2125, '54.36.148.87', 'Mozilla', '2019-06-25 04:38:50', '', ''),
(2126, '175.142.244.148', 'Chrome', '2019-06-25 05:25:50', '', ''),
(2127, '182.0.204.58', 'Chrome', '2019-06-25 06:15:51', '', ''),
(2128, '66.102.7.183', 'Chrome', '2019-06-25 06:31:37', '', ''),
(2129, '115.178.221.119', 'Chrome', '2019-06-25 06:51:58', '', ''),
(2130, '114.122.75.228', 'Safari', '2019-06-25 07:49:53', '', ''),
(2131, '36.80.111.8', 'Chrome', '2019-06-25 07:54:37', '', ''),
(2132, '54.202.247.190', 'Safari', '2019-06-25 10:35:06', '', ''),
(2133, '207.46.13.11', 'Bing', '2019-06-25 14:13:27', '', ''),
(2134, '120.188.33.179', 'Chrome', '2019-06-25 14:22:36', '', ''),
(2135, '114.142.171.46', 'Chrome', '2019-06-25 15:53:50', '', ''),
(2136, '125.161.137.239', 'Chrome', '2019-06-25 16:38:56', '', ''),
(2137, '120.188.93.2', 'Chrome', '2019-06-25 16:43:33', '', ''),
(2138, '182.1.204.26', 'Chrome', '2019-06-25 17:54:06', '', ''),
(2139, '120.188.92.243', 'Firefox', '2019-06-25 17:59:40', '', ''),
(2140, '107.178.194.15', 'Internet Explorer', '2019-06-25 18:04:35', '', ''),
(2141, '182.1.220.154', 'Chrome', '2019-06-25 18:54:35', '', ''),
(2142, '36.81.4.217', 'Chrome', '2019-06-25 19:10:31', '', ''),
(2143, '116.206.28.5', 'Chrome', '2019-06-25 19:51:46', '', ''),
(2144, '3.95.245.233', 'Chrome', '2019-06-25 19:52:25', '', ''),
(2145, '54.164.136.35', 'Chrome', '2019-06-25 19:52:36', '', ''),
(2146, '54.89.249.72', 'Chrome', '2019-06-25 19:53:32', '', ''),
(2147, '35.230.94.114', 'Chrome', '2019-06-25 20:21:15', '', ''),
(2148, '114.124.213.140', 'Chrome', '2019-06-25 20:53:12', '', ''),
(2149, '125.161.128.83', 'Chrome', '2019-06-25 21:25:30', '', ''),
(2150, '36.72.218.73', 'Chrome', '2019-06-25 21:35:50', '', ''),
(2151, '35.164.172.2', 'Chrome', '2019-06-25 22:47:38', '', ''),
(2152, '36.81.53.247', 'Chrome', '2019-06-26 00:21:54', '', ''),
(2153, '36.71.239.20', 'Chrome', '2019-06-26 01:01:22', '', ''),
(2154, '::1', 'Chrome', '2019-06-26 02:31:02', '', ''),
(2155, '36.80.80.11', 'Chrome', '2019-07-05 23:01:37', '', ''),
(2156, '114.125.215.240', 'Chrome', '2019-07-05 23:11:53', '', ''),
(2157, '114.125.215.80', 'Chrome', '2019-07-05 23:18:36', '', ''),
(2158, '180.244.235.179', 'Chrome', '2019-07-06 01:59:27', '', ''),
(2159, '54.86.66.252', 'Safari', '2019-07-06 02:42:27', '', ''),
(2160, '36.80.249.144', 'Chrome', '2019-07-06 05:17:06', '', ''),
(2161, '180.244.235.72', 'Chrome', '2019-07-06 05:17:17', '', ''),
(2162, '114.124.202.123', 'Chrome', '2019-07-07 05:47:52', '', ''),
(2163, '114.124.242.122', 'Chrome', '2019-07-07 05:54:17', '', ''),
(2164, '110.137.176.11', 'Chrome', '2019-07-08 17:42:25', '', ''),
(2165, '54.165.59.7', 'Alexa Crawler', '2019-07-09 04:58:51', '', ''),
(2166, '87.250.233.70', 'YandexBot', '2019-07-09 06:14:59', '', ''),
(2167, '180.245.91.69', 'Chrome', '2019-07-14 01:51:50', '', ''),
(2168, '180.253.181.255', 'Chrome', '2019-07-18 12:47:09', '', ''),
(2169, '180.246.1.246', 'Chrome', '2019-07-30 01:49:52', '', ''),
(2170, '36.72.149.67', 'Chrome', '2019-08-03 01:21:22', '', ''),
(2171, '36.71.234.84', 'Chrome', '2019-08-12 07:06:47', '', ''),
(2172, '111.94.215.181', 'Chrome', '2019-09-02 07:12:17', '', ''),
(2173, '180.247.200.120', 'Chrome', '2019-09-04 15:34:06', '', ''),
(2174, '110.137.177.162', 'Chrome', '2019-09-05 01:49:29', '', ''),
(2175, '61.94.145.18', 'Chrome', '2019-10-08 21:52:32', '', ''),
(2176, '5.255.251.125', 'YandexBot', '2019-10-17 09:55:47', '', ''),
(2177, '10.36.195.22', 'Chrome', '2019-12-02 23:07:12', '', ''),
(2178, '10.36.195.22', 'Chrome', '2019-12-02 23:07:12', '', ''),
(2179, '114.122.105.176', 'Chrome', '2019-12-26 08:40:13', '', ''),
(2180, '114.125.111.13', 'Chrome', '2019-12-26 11:35:56', '', ''),
(2181, '180.245.218.226', 'Chrome', '2022-02-27 07:32:11', '', ''),
(2185, '192.168.18.20', 'Chrome', '2022-03-10 16:02:21', '', ''),
(2184, '192.168.18.9', 'Chrome', '2022-02-13 17:32:45', '', ''),
(2186, '192.168.100.17', 'Chrome', '2022-02-24 10:31:03', '', ''),
(2187, '192.168.18.23', 'Chrome', '2022-02-27 12:46:35', '', ''),
(2188, '192.168.18.9', 'Chrome', '2022-03-10 16:25:55', 'Android', 'Mozilla/5.0 (Linux; Android 11; SM-A515F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.58 Mobile Safari/537.36'),
(2189, '::1', 'Chrome', '2022-03-10 16:26:18', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36'),
(2190, '::1', 'Chrome', '2022-03-10 16:26:29', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36'),
(2191, '103.144.178.204', 'Chrome', '2022-03-10 16:29:51', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36'),
(2192, '103.144.178.142', 'Chrome', '2022-03-10 16:30:02', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36'),
(2193, '103.144.178.196', 'Chrome', '2022-03-10 16:30:15', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36');

-- --------------------------------------------------------

--
-- Struktur untuk view `view_informasi`
--
DROP TABLE IF EXISTS `view_informasi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_informasi`  AS SELECT `i`.`id` AS `id`, `i`.`judul` AS `judul`, `i`.`slug` AS `slug`, `i`.`deskripsi` AS `deskripsi`, `i`.`gambar` AS `gambar`, `i`.`tags` AS `tags`, `i`.`status` AS `status`, `i`.`tanggal` AS `tanggal`, `ki`.`nama` AS `kategori`, `ki`.`id` AS `id_kategori`, `ji`.`nama` AS `jenis`, `ji`.`id` AS `id_jenis` FROM ((`informasi` `i` join `kategori_informasi` `ki` on(`ki`.`id` = `i`.`kategori`)) join `jenis_informasi` `ji` on(`ji`.`id` = `i`.`jenis`)) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `view_model`
--
DROP TABLE IF EXISTS `view_model`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_model`  AS SELECT `m`.`id` AS `id`, `m`.`nama` AS `nama`, `m`.`slug` AS `slug`, `m`.`warna` AS `warna`, `m`.`status` AS `status`, `k`.`id` AS `id_kategori`, `k`.`nama` AS `nama_kategori`, `k`.`slug` AS `slug_kategori` FROM (`model` `m` join `kategori` `k` on(`k`.`id` = `m`.`kategori`)) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `view_paket`
--
DROP TABLE IF EXISTS `view_paket`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_paket`  AS SELECT `p`.`id` AS `id`, `p`.`model` AS `model`, `p`.`kategori` AS `kategori`, `p`.`nama` AS `nama`, `p`.`deskripsi` AS `deskripsi`, `p`.`gambar` AS `gambar`, `p`.`status` AS `status`, `p`.`harga` AS `harga`, `p`.`harga_coret` AS `harga_coret`, `p`.`varian` AS `varian`, `p`.`tanggal` AS `tanggal`, `k`.`nama` AS `nama_kategori` FROM (`paket` `p` join `kategori` `k` on(`k`.`id` = `p`.`kategori`)) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `view_produk`
--
DROP TABLE IF EXISTS `view_produk`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_produk`  AS SELECT `p`.`id` AS `id`, `p`.`platform` AS `platform`, `p`.`nama` AS `nama`, `p`.`slug` AS `slug`, `p`.`deskripsi` AS `deskripsi`, `p`.`gambar` AS `gambar`, `p`.`status` AS `status`, `p`.`tanggal` AS `tanggal`, `m`.`id` AS `model`, `m`.`nama` AS `nama_model`, `m`.`slug` AS `slug_model`, `k`.`id` AS `kategori`, `k`.`nama` AS `nama_kategori`, `k`.`slug` AS `slug_kategori` FROM ((`produk` `p` join `model` `m` on(`m`.`id` = `p`.`model`)) join `kategori` `k` on(`k`.`id` = `p`.`kategori`)) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `view_testimoni`
--
DROP TABLE IF EXISTS `view_testimoni`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_testimoni`  AS SELECT `t`.`id` AS `id`, `t`.`nama` AS `nama`, `t`.`deskripsi` AS `deskripsi`, `t`.`gambar` AS `gambar`, `t`.`status` AS `status`, `t`.`tanggal` AS `tanggal`, `p`.`id` AS `id_partner`, `p`.`nama` AS `nama_partner`, `p`.`gambar` AS `gambar_partner`, `p`.`link` AS `link_partner`, `p`.`model` AS `model` FROM (`testimoni` `t` join `partner` `p` on(`p`.`id` = `t`.`partner`)) ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `informasi`
--
ALTER TABLE `informasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jenis_informasi`
--
ALTER TABLE `jenis_informasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategori_informasi`
--
ALTER TABLE `kategori_informasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `layanan`
--
ALTER TABLE `layanan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `lokasi`
--
ALTER TABLE `lokasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `model`
--
ALTER TABLE `model`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `paket`
--
ALTER TABLE `paket`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `partner`
--
ALTER TABLE `partner`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengaturan`
--
ALTER TABLE `pengaturan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengunjung`
--
ALTER TABLE `pengunjung`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `platform`
--
ALTER TABLE `platform`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_produk_id_kategori` (`kategori`),
  ADD KEY `fk_produk_id_model` (`model`);

--
-- Indeks untuk tabel `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sejarah`
--
ALTER TABLE `sejarah`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `socmed`
--
ALTER TABLE `socmed`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `testimoni`
--
ALTER TABLE `testimoni`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `visitor`
--
ALTER TABLE `visitor`
  ADD PRIMARY KEY (`id_visitor`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `faq`
--
ALTER TABLE `faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `informasi`
--
ALTER TABLE `informasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `jenis_informasi`
--
ALTER TABLE `jenis_informasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT untuk tabel `kategori_informasi`
--
ALTER TABLE `kategori_informasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `layanan`
--
ALTER TABLE `layanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `lokasi`
--
ALTER TABLE `lokasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `model`
--
ALTER TABLE `model`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `paket`
--
ALTER TABLE `paket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT untuk tabel `partner`
--
ALTER TABLE `partner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `pengaturan`
--
ALTER TABLE `pengaturan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `pengunjung`
--
ALTER TABLE `pengunjung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `platform`
--
ALTER TABLE `platform`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT untuk tabel `section`
--
ALTER TABLE `section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `sejarah`
--
ALTER TABLE `sejarah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `socmed`
--
ALTER TABLE `socmed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `testimoni`
--
ALTER TABLE `testimoni`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `visitor`
--
ALTER TABLE `visitor`
  MODIFY `id_visitor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2194;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `fk_produk_id_kategori` FOREIGN KEY (`kategori`) REFERENCES `kategori` (`id`),
  ADD CONSTRAINT `fk_produk_id_model` FOREIGN KEY (`model`) REFERENCES `model` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
