PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "User" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "name" TEXT,
    "email" TEXT,
    "emailVerified" text,
    "image" TEXT
, password TEXT);
CREATE TABLE IF NOT EXISTS "VerificationToken" (
    "identifier" TEXT NOT NULL,
    "token" TEXT NOT NULL,
    "expires" text NOT NULL);
CREATE TABLE PasswordResetTokens (
  email TEXT NOT NULL,
  token TEXT NOT NULL,
  expiresAt INTEGER NOT NULL
);
CREATE TABLE IF NOT EXISTS "detail_pesanan" (
	`id_detail` integer PRIMARY KEY AUTOINCREMENT NOT NULL,
	`id_pesanan` integer NOT NULL,
	`no_produk` integer,
	`kode_produk` text,
	`kuantitas` integer NOT NULL,
	`harga_satuan_saat_jual` integer NOT NULL,
	`subtotal` integer NOT NULL
);
INSERT INTO detail_pesanan VALUES(1,1,NULL,'GPJRYD-0002',1,95000,95000);
INSERT INTO detail_pesanan VALUES(2,1,NULL,'GPJRYD-0003',1,95000,95000);
INSERT INTO detail_pesanan VALUES(3,1,NULL,'GPJRYD-0006',1,95000,95000);
INSERT INTO detail_pesanan VALUES(4,1,NULL,'GPJRYD-0005',1,95000,95000);
INSERT INTO detail_pesanan VALUES(5,2,NULL,'GPJRYD-0002',1,95000,95000);
INSERT INTO detail_pesanan VALUES(6,2,NULL,'GPJRYD-0004',2,95000,190000);
INSERT INTO detail_pesanan VALUES(7,2,NULL,'GPJRYD-0003',1,95000,95000);
INSERT INTO detail_pesanan VALUES(8,3,NULL,'SASRYPD-0001',1,70000,70000);
INSERT INTO detail_pesanan VALUES(9,3,NULL,'SASRYPD-0002',1,70000,70000);
INSERT INTO detail_pesanan VALUES(10,3,NULL,'HPDPCA-0001',1,50000,50000);
INSERT INTO detail_pesanan VALUES(11,3,NULL,'HPDPCA-0003',1,50000,50000);
INSERT INTO detail_pesanan VALUES(12,3,NULL,'HPDYTD-0003',1,60000,60000);
CREATE TABLE IF NOT EXISTS "Account" (
	`id` text PRIMARY KEY NOT NULL,
	`userId` text NOT NULL,
	`type` text NOT NULL,
	`provider` text NOT NULL,
	`providerAccountId` text NOT NULL,
	`refresh_token` text,
	`access_token` text,
	`expires_at` integer,
	`token_type` text,
	`scope` text,
	`id_token` text,
	`session_state` text
);
CREATE TABLE IF NOT EXISTS "Session" (
	`id` text PRIMARY KEY NOT NULL,
	`sessionToken` text NOT NULL,
	`userId` text NOT NULL,
	`expires` text NOT NULL
);
CREATE TABLE IF NOT EXISTS "produk" (
	`no` integer PRIMARY KEY AUTOINCREMENT NOT NULL,
	`kode` text NOT NULL,
	`kategori` text,
	`bahan` text,
	`variasi` text,
	`jual1` integer,
	`jual12` integer,
	`beli` integer,
	`gambar1` text,
	`gambar2` text,
	`video1` text,
	`suplier` text,
	`deskripsi` text,
	`url` text
);
INSERT INTO produk VALUES(1,'HPJYTD-0001','HEM Dewasa','YANDET','Panjang',65000,45000,40000,'HPJYTD-0001','HPJYTD-0015','','',replace('**Deskripsi Produk: Kemeja Flanel Pria Motif Kotak-Kotak**\n\nTampil gaya dan nyaman dengan Kemeja Flanel Pria Motif Kotak-Kotak yang siap melengkapi koleksi wardrobe Anda! Kemeja ini memiliki tampilan yang modern dengan desain yang simpel namun tetap menarik perhatian.\n\n**Tampilan:**\nKemeja ini hadir dengan warna dominan merah dan putih yang dipadukan dengan sentuhan warna biru navy, memberikan kesan ceria dan energik. Pola kotak-kotak yang klasik menambah daya tarik visual, cocok untuk berbagai suasana, baik itu santai maupun semi-formal. Detail kerah yang rapi dan kancing hitam memberikan nuansa elegan yang memikat.\n\n**Bahan:**\nTerbuat dari bahan flanel berkualitas tinggi, kemeja ini sangat nyaman dipakai sepanjang hari. Bahan flanel yang lembut dan ringan membuatnya tidak hanya nyaman di kulit namun juga mudah menyerap keringat, ideal untuk digunakan di berbagai cuaca. Kemeja ini juga dilengkapi dengan saku di sisi kiri, memberikan fungsionalitas tambahan untuk menyimpan barang kecil.\n\n**Kegunaan:**\nKemeja flanel ini adalah pilihan sempurna untuk berbagai kesempatan. Kenakan saat berkumpul dengan teman, piknik, atau bahkan untuk suasana kerja yang lebih santai. Kombinasikan dengan jeans atau celana chinos, dan Anda siap tampil stylish dengan effortless. Kemeja ini juga cocok untuk layering, bisa Anda padukan dengan sweater atau jaket untuk tampilan yang lebih trendy.\n\nJangan lewatkan kesempatan untuk memiliki Kemeja Flanel Pria Motif Kotak-Kotak ini! Tambahkan segera ke keranjang belanja Anda dan tunjukkan gaya Anda yang fashionable!','\n',char(10)),'https://www.malabis.my.id/PRODUK/GambarProduk/HPJYTD/HPJYTD-0001.jpeg');
INSERT INTO produk VALUES(2,'HPJYTD-0002','HEM Dewasa','YANDET','Panjang',65000,45000,40000,'HPJYTD-0002','HPJYTD-0015','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/HPJYTD/HPJYTD-0002.jpeg');
INSERT INTO produk VALUES(3,'HPJYTD-0003','HEM Dewasa','YANDET','Panjang',65000,45000,40000,'HPJYTD-0003','HPJYTD-0015','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/HPJYTD/HPJYTD-0003.jpeg');
INSERT INTO produk VALUES(4,'HPJYTD-0004','HEM Dewasa','YANDET','Panjang',65000,45000,40000,'HPJYTD-0004','HPJYTD-0015','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/HPJYTD/HPJYTD-0004.jpeg');
INSERT INTO produk VALUES(5,'HPJYTD-0005','HEM Dewasa','YANDET','Panjang',65000,45000,40000,'HPJYTD-0005','HPJYTD-0015','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/HPJYTD/HPJYTD-0005.jpeg');
INSERT INTO produk VALUES(6,'HPJYTD-0006','HEM Dewasa','YANDET','Panjang',65000,45000,40000,'HPJYTD-0006','HPJYTD-0015','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/HPJYTD/HPJYTD-0006.jpeg');
INSERT INTO produk VALUES(7,'HPJYTD-0007','HEM Dewasa','YANDET','Panjang',65000,45000,40000,'HPJYTD-0007','HPJYTD-0015','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/HPJYTD/HPJYTD-0007.jpeg');
INSERT INTO produk VALUES(8,'HPJYTD-0008','HEM Dewasa','YANDET','Panjang',65000,45000,40000,'HPJYTD-0008','HPJYTD-0015','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/HPJYTD/HPJYTD-0008.jpeg');
INSERT INTO produk VALUES(9,'HPJYTD-0009','HEM Dewasa','YANDET','Panjang',65000,45000,40000,'HPJYTD-0009','HPJYTD-0015','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/HPJYTD/HPJYTD-0009.jpeg');
INSERT INTO produk VALUES(10,'HPJYTD-0010','HEM Dewasa','YANDET','Panjang',65000,45000,40000,'HPJYTD-0010','HPJYTD-0015','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/HPJYTD/HPJYTD-0010.jpeg');
INSERT INTO produk VALUES(11,'HPJYTD-0011','HEM Dewasa','YANDET','Panjang',65000,45000,40000,'HPJYTD-0011','HPJYTD-0015','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/HPJYTD/HPJYTD-0011.jpeg');
INSERT INTO produk VALUES(12,'HPJYTD-0012','HEM Dewasa','YANDET','Panjang',65000,45000,40000,'HPJYTD-0012','HPJYTD-0015','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/HPJYTD/HPJYTD-0012.jpeg');
INSERT INTO produk VALUES(13,'HPJYTD-0013','HEM Dewasa','YANDET','Panjang',65000,45000,40000,'HPJYTD-0013','HPJYTD-0015','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/HPJYTD/HPJYTD-0013.jpeg');
INSERT INTO produk VALUES(14,'HPJYTD-0014','HEM Dewasa','YANDET','Panjang',65000,45000,40000,'HPJYTD-0014','HPJYTD-0015','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/HPJYTD/HPJYTD-0014.jpeg');
INSERT INTO produk VALUES(15,'HPJYTD-0016','HEM Dewasa','YANDET','Panjang',65000,45000,40000,'HPJYTD-0016','HPJYTD-0015','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/HPJYTD/HPJYTD-0016.jpeg');
INSERT INTO produk VALUES(16,'HPJYTD-0017','HEM Dewasa','YANDET','Panjang',65000,45000,40000,'HPJYTD-0017','HPJYTD-0015','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/HPJYTD/HPJYTD-0017.jpeg');
INSERT INTO produk VALUES(17,'HPJYTD-0018','HEM Dewasa','YANDET','Panjang',65000,45000,40000,'HPJYTD-0018','HPJYTD-0015','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/HPJYTD/HPJYTD-0018.jpeg');
INSERT INTO produk VALUES(18,'HPJYTD-0019','HEM Dewasa','YANDET','Panjang',65000,45000,40000,'HPJYTD-0019','HPJYTD-0015','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/HPJYTD/HPJYTD-0019.jpeg');
INSERT INTO produk VALUES(19,'HPDYTD-0001','HEM Dewasa','YANDET','Pendek',60000,40000,35000,'HPDYTD-0001','HPDYTD-0016','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/HPDYTD/HPDYTD-0001.jpeg');
INSERT INTO produk VALUES(20,'HPDYTD-0002','HEM Dewasa','YANDET','Pendek',60000,40000,35000,'HPDYTD-0002','HPDYTD-0017','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/HPDYTD/HPDYTD-0002.jpeg');
INSERT INTO produk VALUES(21,'HPDYTD-0003','HEM Dewasa','YANDET','Pendek',60000,40000,35000,'HPDYTD-0003','HPDYTD-0016','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/HPDYTD/HPDYTD-0003.jpeg');
INSERT INTO produk VALUES(22,'HPDYTD-0004','HEM Dewasa','YANDET','Pendek',60000,40000,35000,'HPDYTD-0004','HPDYTD-0017','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/HPDYTD/HPDYTD-0004.jpeg');
INSERT INTO produk VALUES(23,'HPDYTD-0005','HEM Dewasa','YANDET','Pendek',60000,40000,35000,'HPDYTD-0005','HPDYTD-0016','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/HPDYTD/HPDYTD-0005.jpeg');
INSERT INTO produk VALUES(24,'HPDYTD-0006','HEM Dewasa','YANDET','Pendek',60000,40000,35000,'HPDYTD-0006','HPDYTD-0017','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/HPDYTD/HPDYTD-0006.jpeg');
INSERT INTO produk VALUES(25,'HPDYTD-0007','HEM Dewasa','YANDET','Pendek',60000,40000,35000,'HPDYTD-0007','HPDYTD-0016','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/HPDYTD/HPDYTD-0007.jpeg');
INSERT INTO produk VALUES(26,'HPDYTD-0008','HEM Dewasa','YANDET','Pendek',60000,40000,35000,'HPDYTD-0008','HPDYTD-0017','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/HPDYTD/HPDYTD-0008.jpeg');
INSERT INTO produk VALUES(27,'HPDYTD-0009','HEM Dewasa','YANDET','Pendek',60000,40000,35000,'HPDYTD-0009','HPDYTD-0016','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/HPDYTD/HPDYTD-0009.jpeg');
INSERT INTO produk VALUES(28,'HPDYTD-0010','HEM Dewasa','YANDET','Pendek',60000,40000,35000,'HPDYTD-0010','HPDYTD-0017','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/HPDYTD/HPDYTD-0010.jpeg');
INSERT INTO produk VALUES(29,'HPDYTD-0011','HEM Dewasa','YANDET','Pendek',60000,40000,35000,'HPDYTD-0011','HPDYTD-0016','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/HPDYTD/HPDYTD-0011.jpeg');
INSERT INTO produk VALUES(30,'HPDYTD-0012','HEM Dewasa','YANDET','Pendek',60000,40000,35000,'HPDYTD-0012','HPDYTD-0017','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/HPDYTD/HPDYTD-0012.jpeg');
INSERT INTO produk VALUES(31,'HPDYTD-0013','HEM Dewasa','YANDET','Pendek',60000,40000,35000,'HPDYTD-0013','HPDYTD-0016','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/HPDYTD/HPDYTD-0013.jpeg');
INSERT INTO produk VALUES(32,'HPDYTD-0014','HEM Dewasa','YANDET','Pendek',60000,40000,35000,'HPDYTD-0014','HPDYTD-0017','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/HPDYTD/HPDYTD-0014.jpeg');
INSERT INTO produk VALUES(33,'HPDYTD-0015','HEM Dewasa','YANDET','Pendek',60000,40000,35000,'HPDYTD-0015','HPDYTD-0016','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/HPDYTD/HPDYTD-0015.jpeg');
INSERT INTO produk VALUES(34,'HPDYTD-0018','HEM Dewasa','YANDET','Pendek',60000,40000,35000,'HPDYTD-0018','HPDYTD-0017','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/HPDYTD/HPDYTD-0018.jpeg');
INSERT INTO produk VALUES(35,'HPDYTD-0019','HEM Dewasa','YANDET','Pendek',60000,40000,35000,'HPDYTD-0019','HPDYTD-0016','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/HPDYTD/HPDYTD-0019.jpeg');
INSERT INTO produk VALUES(36,'HPDPCA-0001','HEM Anak','PACOL','Pendek',50000,35000,25000,'HPDPCA-0001','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/HPDPCA/HPDPCA-0001.jpeg');
INSERT INTO produk VALUES(37,'HPDPCA-0002','HEM Anak','PACOL','Pendek',50000,35000,25000,'HPDPCA-0002','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/HPDPCA/HPDPCA-0002.jpeg');
INSERT INTO produk VALUES(38,'HPDPCA-0003','HEM Anak','PACOL','Pendek',50000,35000,25000,'HPDPCA-0003','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/HPDPCA/HPDPCA-0003.jpeg');
INSERT INTO produk VALUES(39,'HPDPCA-0004','HEM Anak','PACOL','Pendek',50000,35000,25000,'HPDPCA-0004','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/HPDPCA/HPDPCA-0004.jpeg');
INSERT INTO produk VALUES(40,'HPDPCA-0005','HEM Anak','PACOL','Pendek',50000,35000,25000,'HPDPCA-0005','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/HPDPCA/HPDPCA-0005.jpeg');
INSERT INTO produk VALUES(41,'HPDPCA-0006','HEM Anak','PACOL','Pendek',50000,35000,25000,'HPDPCA-0006','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/HPDPCA/HPDPCA-0006.jpeg');
INSERT INTO produk VALUES(42,'HPDPCA-0007','HEM Anak','PACOL','Pendek',50000,35000,25000,'HPDPCA-0007','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/HPDPCA/HPDPCA-0007.jpeg');
INSERT INTO produk VALUES(43,'HPDPCA-0008','HEM Anak','PACOL','Pendek',50000,35000,25000,'HPDPCA-0008','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/HPDPCA/HPDPCA-0008.jpeg');
INSERT INTO produk VALUES(44,'HPDPCA-0009','HEM Anak','PACOL','Pendek',50000,35000,25000,'HPDPCA-0009','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/HPDPCA/HPDPCA-0009.jpeg');
INSERT INTO produk VALUES(45,'GPJRYD-0001','Gamis Dewasa','Rayon','Panjang',95000,80000,55000,'GPJRYD-0001','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/GPJRYD/GPJRYD-0001.jpeg');
INSERT INTO produk VALUES(46,'GPJRYD-0002','Gamis Dewasa','Rayon','Panjang',95000,80000,55000,'GPJRYD-0002','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/GPJRYD/GPJRYD-0002.jpeg');
INSERT INTO produk VALUES(47,'GPJRYD-0003','Gamis Dewasa','Rayon','Panjang',95000,80000,55000,'GPJRYD-0003','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/GPJRYD/GPJRYD-0003.jpeg');
INSERT INTO produk VALUES(48,'GPJRYD-0004','Gamis Dewasa','Rayon','Panjang',95000,80000,55000,'GPJRYD-0004','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/GPJRYD/GPJRYD-0004.jpeg');
INSERT INTO produk VALUES(49,'GPJRYD-0005','Gamis Dewasa','Rayon','Panjang',95000,80000,55000,'GPJRYD-0005','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/GPJRYD/GPJRYD-0005.jpeg');
INSERT INTO produk VALUES(50,'GPJRYD-0006','Gamis Dewasa','Rayon','Panjang',95000,80000,55000,'GPJRYD-0006','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/GPJRYD/GPJRYD-0006.jpeg');
INSERT INTO produk VALUES(51,'GPJRYD-0007','Gamis Dewasa','Rayon','Panjang',95000,80000,55000,'GPJRYD-0007','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/GPJRYD/GPJRYD-0007.jpeg');
INSERT INTO produk VALUES(52,'GPJRYD-0008','Gamis Dewasa','Rayon','Panjang',95000,80000,55000,'GPJRYD-0008','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/GPJRYD/GPJRYD-0008.jpeg');
INSERT INTO produk VALUES(53,'GPJRYD-0009','Gamis Dewasa','Rayon','Panjang',95000,80000,55000,'GPJRYD-0009','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/GPJRYD/GPJRYD-0009.jpeg');
INSERT INTO produk VALUES(54,'GPJRYD-0010','Gamis Dewasa','Rayon','Panjang',95000,80000,55000,'GPJRYD-0010','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/GPJRYD/GPJRYD-0010.jpeg');
INSERT INTO produk VALUES(55,'GPJRYD-0011','Gamis Dewasa','Rayon','Panjang',95000,80000,55000,'GPJRYD-0011','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/GPJRYD/GPJRYD-0011.jpeg');
INSERT INTO produk VALUES(56,'GPJRYD-0012','Gamis Dewasa','Rayon','Panjang',95000,80000,55000,'GPJRYD-0012','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/GPJRYD/GPJRYD-0012.jpeg');
INSERT INTO produk VALUES(57,'GPJRYD-0013','Gamis Dewasa','Rayon','Panjang',95000,80000,55000,'GPJRYD-0013','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/GPJRYD/GPJRYD-0013.jpeg');
INSERT INTO produk VALUES(58,'GPJVCD-0001','Gamis Dewasa','Viscos','Panjang',110000,95000,75000,'GPJVCD-0001','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/GPJVCD/GPJVCD-0001.jpeg');
INSERT INTO produk VALUES(59,'GPJVCD-0002','Gamis Dewasa','Viscos','Panjang',110000,95000,75000,'GPJVCD-0002','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/GPJVCD/GPJVCD-0002.jpeg');
INSERT INTO produk VALUES(60,'GPJVCD-0003','Gamis Dewasa','Viscos','Panjang',110000,95000,75000,'GPJVCD-0003','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/GPJVCD/GPJVCD-0003.jpeg');
INSERT INTO produk VALUES(61,'GPJVCD-0004','Gamis Dewasa','Viscos','Panjang',110000,95000,75000,'GPJVCD-0004','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/GPJVCD/GPJVCD-0004.jpeg');
INSERT INTO produk VALUES(62,'GPJVCD-0005','Gamis Dewasa','Viscos','Panjang',110000,95000,75000,'GPJVCD-0005','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/GPJVCD/GPJVCD-0005.jpeg');
INSERT INTO produk VALUES(63,'GPJVCD-0006','Gamis Dewasa','Viscos','Panjang',110000,95000,75000,'GPJVCD-0006','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/GPJVCD/GPJVCD-0006.jpeg');
INSERT INTO produk VALUES(64,'GPJVCD-0007','Gamis Dewasa','Viscos','Panjang',110000,95000,75000,'GPJVCD-0007','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/GPJVCD/GPJVCD-0007.jpeg');
INSERT INTO produk VALUES(65,'GPJVCD-0008','Gamis Dewasa','Viscos','Panjang',110000,95000,75000,'GPJVCD-0008','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/GPJVCD/GPJVCD-0008.jpeg');
INSERT INTO produk VALUES(66,'GPJVCD-0009','Gamis Dewasa','Viscos','Panjang',110000,95000,75000,'GPJVCD-0009','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/GPJVCD/GPJVCD-0009.jpeg');
INSERT INTO produk VALUES(67,'GPJVCD-0010','Gamis Dewasa','Viscos','Panjang',110000,95000,75000,'GPJVCD-0010','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/GPJVCD/GPJVCD-0010.jpeg');
INSERT INTO produk VALUES(68,'GPJVCD-0011','Gamis Dewasa','Viscos','Panjang',110000,95000,75000,'GPJVCD-0011','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/GPJVCD/GPJVCD-0011.jpeg');
INSERT INTO produk VALUES(69,'GPJVCD-0012','Gamis Dewasa','Viscos','Panjang',110000,95000,75000,'GPJVCD-0012','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/GPJVCD/GPJVCD-0012.jpeg');
INSERT INTO produk VALUES(70,'GPJVCD-0013','Gamis Dewasa','Viscos','Panjang',110000,95000,75000,'GPJVCD-0013','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/GPJVCD/GPJVCD-0013.jpeg');
INSERT INTO produk VALUES(71,'GPJVCD-0014','Gamis Dewasa','Viscos','Panjang',110000,95000,75000,'GPJVCD-0014','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/GPJVCD/GPJVCD-0014.jpeg');
INSERT INTO produk VALUES(72,'GPJVCD-0015','Gamis Dewasa','Viscos','Panjang',110000,95000,75000,'GPJVCD-0015','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/GPJVCD/GPJVCD-0015.jpeg');
INSERT INTO produk VALUES(73,'GPJVCD-0016','Gamis Dewasa','Viscos','Panjang',110000,95000,75000,'GPJVCD-0016','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/GPJVCD/GPJVCD-0016.jpeg');
INSERT INTO produk VALUES(74,'GPJVCD-0017','Gamis Dewasa','Viscos','Panjang',110000,95000,75000,'GPJVCD-0017','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/GPJVCD/GPJVCD-0017.jpeg');
INSERT INTO produk VALUES(75,'GPJVCD-0018','Gamis Dewasa','Viscos','Panjang',110000,95000,75000,'GPJVCD-0018','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/GPJVCD/GPJVCD-0018.jpeg');
INSERT INTO produk VALUES(76,'GPJVCD-0019','Gamis Dewasa','Viscos','Panjang',110000,95000,75000,'GPJVCD-0019','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/GPJVCD/GPJVCD-0019.jpeg');
INSERT INTO produk VALUES(77,'SASKTPD-0001','Sarung Dewasa','Katun','Printing',80000,65000,55000,'SASKTPD-0001','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/SASKTPD/SASKTPD-0001.jpeg');
INSERT INTO produk VALUES(78,'SASKTPD-0002','Sarung Dewasa','Katun','Printing',80000,65000,55000,'SASKTPD-0002','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/SASKTPD/SASKTPD-0002.jpeg');
INSERT INTO produk VALUES(79,'SASKTPD-0003','Sarung Dewasa','Katun','Printing',80000,65000,55000,'SASKTPD-0003','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/SASKTPD/SASKTPD-0003.jpeg');
INSERT INTO produk VALUES(80,'SASKTPD-0004','Sarung Dewasa','Katun','Printing',80000,65000,55000,'SASKTPD-0004','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/SASKTPD/SASKTPD-0004.jpeg');
INSERT INTO produk VALUES(81,'SASKTPD-0005','Sarung Dewasa','Katun','Printing',80000,65000,55000,'SASKTPD-0005','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/SASKTPD/SASKTPD-0005.jpeg');
INSERT INTO produk VALUES(82,'SASKTPD-0006','Sarung Dewasa','Katun','Printing',80000,65000,55000,'SASKTPD-0006','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/SASKTPD/SASKTPD-0006.jpeg');
INSERT INTO produk VALUES(83,'SASKTPD-0007','Sarung Dewasa','Katun','Printing',80000,65000,55000,'SASKTPD-0007','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/SASKTPD/SASKTPD-0007.jpeg');
INSERT INTO produk VALUES(84,'SASKTPD-0008','Sarung Dewasa','Katun','Printing',80000,65000,55000,'SASKTPD-0008','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/SASKTPD/SASKTPD-0008.jpeg');
INSERT INTO produk VALUES(85,'SASKTPD-0009','Sarung Dewasa','Katun','Printing',80000,65000,55000,'SASKTPD-0009','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/SASKTPD/SASKTPD-0009.jpeg');
INSERT INTO produk VALUES(86,'SASKTPD-0010','Sarung Dewasa','Katun','Printing',80000,65000,55000,'SASKTPD-0010','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/SASKTPD/SASKTPD-0010.jpeg');
INSERT INTO produk VALUES(87,'SASKTPD-0011','Sarung Dewasa','Katun','Printing',80000,65000,55000,'SASKTPD-0011','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/SASKTPD/SASKTPD-0011.jpeg');
INSERT INTO produk VALUES(88,'SASKTPD-0012','Sarung Dewasa','Katun','Printing',80000,65000,55000,'SASKTPD-0012','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/SASKTPD/SASKTPD-0012.jpeg');
INSERT INTO produk VALUES(89,'SASKTPD-0013','Sarung Dewasa','Katun','Printing',80000,65000,55000,'SASKTPD-0013','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/SASKTPD/SASKTPD-0013.jpeg');
INSERT INTO produk VALUES(90,'SASKTPD-0014','Sarung Dewasa','Katun','Printing',80000,65000,55000,'SASKTPD-0014','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/SASKTPD/SASKTPD-0014.jpeg');
INSERT INTO produk VALUES(91,'SASKTPD-0015','Sarung Dewasa','Katun','Printing',80000,65000,55000,'SASKTPD-0015','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/SASKTPD/SASKTPD-0015.jpeg');
INSERT INTO produk VALUES(92,'SASKTPD-0016','Sarung Dewasa','Katun','Printing',80000,65000,55000,'SASKTPD-0016','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/SASKTPD/SASKTPD-0016.jpeg');
INSERT INTO produk VALUES(93,'SASKTPD-0017','Sarung Dewasa','Katun','Printing',80000,65000,55000,'SASKTPD-0017','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/SASKTPD/SASKTPD-0017.jpeg');
INSERT INTO produk VALUES(94,'SASKTPD-0018','Sarung Dewasa','Katun','Printing',80000,65000,55000,'SASKTPD-0018','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/SASKTPD/SASKTPD-0018.jpeg');
INSERT INTO produk VALUES(95,'SASKTPD-0019','Sarung Dewasa','Katun','Printing',80000,65000,55000,'SASKTPD-0019','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/SASKTPD/SASKTPD-0019.jpeg');
INSERT INTO produk VALUES(96,'SASKTPD-0020','Sarung Dewasa','Katun','Printing',80000,65000,55000,'SASKTPD-0020','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/SASKTPD/SASKTPD-0020.jpeg');
INSERT INTO produk VALUES(97,'SASKTPD-0021','Sarung Dewasa','Katun','Printing',80000,65000,55000,'SASKTPD-0021','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/SASKTPD/SASKTPD-0021.jpeg');
INSERT INTO produk VALUES(98,'SASKTPD-0022','Sarung Dewasa','Katun','Printing',80000,65000,55000,'SASKTPD-0022','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/SASKTPD/SASKTPD-0022.jpeg');
INSERT INTO produk VALUES(99,'SASKTPD-0023','Sarung Dewasa','Katun','Printing',80000,65000,55000,'SASKTPD-0023','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/SASKTPD/SASKTPD-0023.jpeg');
INSERT INTO produk VALUES(100,'SASKTPD-0024','Sarung Dewasa','Katun','Printing',80000,65000,55000,'SASKTPD-0024','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/SASKTPD/SASKTPD-0024.jpeg');
INSERT INTO produk VALUES(101,'SASKTPD-0025','Sarung Dewasa','Katun','Printing',80000,65000,55000,'SASKTPD-0025','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/SASKTPD/SASKTPD-0025.jpeg');
INSERT INTO produk VALUES(102,'SASKTPD-0026','Sarung Dewasa','Katun','Printing',80000,65000,55000,'SASKTPD-0026','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/SASKTPD/SASKTPD-0026.jpeg');
INSERT INTO produk VALUES(103,'SASKTPD-0027','Sarung Dewasa','Katun','Printing',80000,65000,55000,'SASKTPD-0027','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/SASKTPD/SASKTPD-0027.jpeg');
INSERT INTO produk VALUES(104,'SASKTPD-0028','Sarung Dewasa','Katun','Printing',80000,65000,55000,'SASKTPD-0028','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/SASKTPD/SASKTPD-0028.jpeg');
INSERT INTO produk VALUES(105,'SASKTPD-0029','Sarung Dewasa','Katun','Printing',80000,65000,55000,'SASKTPD-0029','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/SASKTPD/SASKTPD-0029.jpeg');
INSERT INTO produk VALUES(106,'SASKTPD-0030','Sarung Dewasa','Katun','Printing',80000,65000,55000,'SASKTPD-0030','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/SASKTPD/SASKTPD-0030.jpeg');
INSERT INTO produk VALUES(107,'SASKTPD-0031','Sarung Dewasa','Katun','Printing',80000,65000,55000,'SASKTPD-0031','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/SASKTPD/SASKTPD-0031.jpeg');
INSERT INTO produk VALUES(108,'SASKTPD-0032','Sarung Dewasa','Katun','Printing',80000,65000,55000,'SASKTPD-0032','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/SASKTPD/SASKTPD-0032.jpeg');
INSERT INTO produk VALUES(109,'SASKTPD-0033','Sarung Dewasa','Katun','Printing',80000,65000,55000,'SASKTPD-0033','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/SASKTPD/SASKTPD-0033.jpeg');
INSERT INTO produk VALUES(110,'SASKTPD-0034','Sarung Dewasa','Katun','Printing',80000,65000,55000,'SASKTPD-0034','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/SASKTPD/SASKTPD-0034.jpeg');
INSERT INTO produk VALUES(111,'SASKTPD-0035','Sarung Dewasa','Katun','Printing',80000,65000,55000,'SASKTPD-0035','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/SASKTPD/SASKTPD-0035.jpeg');
INSERT INTO produk VALUES(112,'SASKTPD-0036','Sarung Dewasa','Katun','Printing',80000,65000,55000,'SASKTPD-0036','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/SASKTPD/SASKTPD-0036.jpeg');
INSERT INTO produk VALUES(113,'SASKTPD-0037','Sarung Dewasa','Katun','Printing',80000,65000,55000,'SASKTPD-0037','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/SASKTPD/SASKTPD-0037.jpeg');
INSERT INTO produk VALUES(114,'SASKTPD-0038','Sarung Dewasa','Katun','Printing',80000,65000,55000,'SASKTPD-0038','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/SASKTPD/SASKTPD-0038.jpeg');
INSERT INTO produk VALUES(115,'SASRYPD-0001','Sarung Dewasa','Rayon','Printing',70000,60000,53000,'SASRYPD-0001','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/SASRYPD/SASRYPD-0001.jpeg');
INSERT INTO produk VALUES(116,'SASRYPD-0002','Sarung Dewasa','Rayon','Printing',70000,60000,53000,'SASRYPD-0002','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/SASRYPD/SASRYPD-0002.jpeg');
INSERT INTO produk VALUES(117,'SASRYPD-0003','Sarung Dewasa','Rayon','Printing',70000,60000,53000,'SASRYPD-0003','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/SASRYPD/SASRYPD-0003.jpeg');
INSERT INTO produk VALUES(118,'SASRYPD-0004','Sarung Dewasa','Rayon','Printing',70000,60000,53000,'SASRYPD-0004','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/SASRYPD/SASRYPD-0004.jpeg');
INSERT INTO produk VALUES(119,'SASRYPD-0005','Sarung Dewasa','Rayon','Printing',70000,60000,53000,'SASRYPD-0005','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/SASRYPD/SASRYPD-0005.jpeg');
INSERT INTO produk VALUES(120,'SASRYPD-0006','Sarung Dewasa','Rayon','Printing',70000,60000,53000,'SASRYPD-0006','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/SASRYPD/SASRYPD-0006.jpeg');
INSERT INTO produk VALUES(121,'SASRYPD-0007','Sarung Dewasa','Rayon','Printing',70000,60000,53000,'SASRYPD-0007','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/SASRYPD/SASRYPD-0007.jpeg');
INSERT INTO produk VALUES(122,'SASRYPD-0008','Sarung Dewasa','Rayon','Printing',70000,60000,53000,'SASRYPD-0008','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/SASRYPD/SASRYPD-0008.jpeg');
INSERT INTO produk VALUES(123,'SASRYPD-0009','Sarung Dewasa','Rayon','Printing',70000,60000,53000,'SASRYPD-0009','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/SASRYPD/SASRYPD-0009.jpeg');
INSERT INTO produk VALUES(124,'SASRYPD-0010','Sarung Dewasa','Rayon','Printing',70000,60000,53000,'SASRYPD-0010','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/SASRYPD/SASRYPD-0010.jpeg');
INSERT INTO produk VALUES(125,'SASRYPD-0011','Sarung Dewasa','Rayon','Printing',70000,60000,53000,'SASRYPD-0011','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/SASRYPD/SASRYPD-0011.jpeg');
INSERT INTO produk VALUES(126,'SASRYPD-0012','Sarung Dewasa','Rayon','Printing',70000,60000,53000,'SASRYPD-0012','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/SASRYPD/SASRYPD-0012.jpeg');
INSERT INTO produk VALUES(127,'SASRYPD-0013','Sarung Dewasa','Rayon','Printing',70000,60000,53000,'SASRYPD-0013','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/SASRYPD/SASRYPD-0013.jpeg');
INSERT INTO produk VALUES(128,'SASRYPD-0014','Sarung Dewasa','Rayon','Printing',70000,60000,53000,'SASRYPD-0014','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/SASRYPD/SASRYPD-0014.jpeg');
INSERT INTO produk VALUES(129,'SASRYPD-0015','Sarung Dewasa','Rayon','Printing',70000,60000,53000,'SASRYPD-0015','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/SASRYPD/SASRYPD-0015.jpeg');
INSERT INTO produk VALUES(130,'SASRYPD-0016','Sarung Dewasa','Rayon','Printing',70000,60000,53000,'SASRYPD-0016','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/SASRYPD/SASRYPD-0016.jpeg');
INSERT INTO produk VALUES(131,'SASRYPD-0017','Sarung Dewasa','Rayon','Printing',70000,60000,53000,'SASRYPD-0017','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/SASRYPD/SASRYPD-0017.jpeg');
INSERT INTO produk VALUES(132,'SASRYPD-0018','Sarung Dewasa','Rayon','Printing',70000,60000,53000,'SASRYPD-0018','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/SASRYPD/SASRYPD-0018.jpeg');
INSERT INTO produk VALUES(133,'SASRYPD-0019','Sarung Dewasa','Rayon','Printing',70000,60000,53000,'SASRYPD-0019','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/SASRYPD/SASRYPD-0019.jpeg');
INSERT INTO produk VALUES(134,'SASRYPD-0020','Sarung Dewasa','Rayon','Printing',70000,60000,53000,'SASRYPD-0020','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/SASRYPD/SASRYPD-0020.jpeg');
INSERT INTO produk VALUES(135,'SASRYPD-0021','Sarung Dewasa','Rayon','Printing',70000,60000,53000,'SASRYPD-0021','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/SASRYPD/SASRYPD-0021.jpeg');
INSERT INTO produk VALUES(136,'SASRYPD-0022','Sarung Dewasa','Rayon','Printing',70000,60000,53000,'SASRYPD-0022','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/SASRYPD/SASRYPD-0022.jpeg');
INSERT INTO produk VALUES(137,'SASRYPD-0023','Sarung Dewasa','Rayon','Printing',70000,60000,53000,'SASRYPD-0023','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/SASRYPD/SASRYPD-0023.jpeg');
INSERT INTO produk VALUES(138,'SASRYPD-0024','Sarung Dewasa','Rayon','Printing',70000,60000,53000,'SASRYPD-0024','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/SASRYPD/SASRYPD-0024.jpeg');
INSERT INTO produk VALUES(139,'SASRYPD-0025','Sarung Dewasa','Rayon','Printing',70000,60000,53000,'SASRYPD-0025','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/SASRYPD/SASRYPD-0025.jpeg');
INSERT INTO produk VALUES(140,'SASRYPD-0026','Sarung Dewasa','Rayon','Printing',70000,60000,53000,'SASRYPD-0026','','','',NULL,'https://www.malabis.my.id/PRODUK/GambarProduk/SASRYPD/SASRYPD-0026.jpeg');
CREATE TABLE IF NOT EXISTS "pesanan" (
	`id_pesanan` integer PRIMARY KEY AUTOINCREMENT NOT NULL,
	`kode_pesanan` text NOT NULL,
	`tanggal_pesanan` text,
	`nama_penerima` text NOT NULL,
	`telepon_penerima` text NOT NULL,
	`provinsi` text,
	`kabupaten_kota` text,
	`kecamatan` text,
	`desa_kelurahan` text,
	`alamat_detail_jalan` text,
	`catatan_pemesan` text,
	`status_pesanan` text NOT NULL,
	`metode_pembayaran` text,
	`total_item_harga` integer,
	`biaya_kirim` integer,
	`grand_total` integer
);
INSERT INTO pesanan VALUES(1,'P-24/11/25-0001','2025-11-23 20:57:18','Jack','087788934569','JAWA TENGAH','KABUPATEN KUDUS','DAWE','JAPAN','m','0','Menunggu Pembayaran','WhatsApp',380000,0,380000);
INSERT INTO pesanan VALUES(2,'P-24/11/25-0002','2025-11-24T07:04:16.896Z','Jack','087788934569','JAWA TENGAH','KABUPATEN BLORA','RANDUBLATUNG','GEMBYUNGAN','b','tes','Menunggu Pembayaran','WhatsApp',380000,0,380000);
INSERT INTO pesanan VALUES(3,'P-24/11/25-0003','2025-11-24T07:18:59.839Z','asif','087788934569','JAWA TENGAH','KABUPATEN KUDUS','KOTA KUDUS','KRANDON','sdfgh','tes','Menunggu Pembayaran','WhatsApp',300000,0,300000);
DELETE FROM sqlite_sequence;
INSERT INTO sqlite_sequence VALUES('detail_pesanan',12);
INSERT INTO sqlite_sequence VALUES('produk',140);
INSERT INTO sqlite_sequence VALUES('pesanan',3);
COMMIT;
