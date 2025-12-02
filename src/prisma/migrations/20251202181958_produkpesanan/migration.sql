-- CreateTable
CREATE TABLE "produk" (
    "no" SERIAL NOT NULL,
    "kode" TEXT NOT NULL,
    "kategori" TEXT,
    "bahan" TEXT,
    "variasi" TEXT,
    "jual1" INTEGER,
    "jual12" INTEGER,
    "beli" INTEGER,
    "gambar1" TEXT,
    "gambar2" TEXT,
    "video1" TEXT,
    "suplier" TEXT,
    "deskripsi" TEXT,
    "url" TEXT,

    CONSTRAINT "produk_pkey" PRIMARY KEY ("no")
);

-- CreateTable
CREATE TABLE "pesanan" (
    "id_pesanan" SERIAL NOT NULL,
    "kode_pesanan" TEXT NOT NULL,
    "tanggal_pesanan" TIMESTAMP(3),
    "nama_penerima" TEXT NOT NULL,
    "telepon_penerima" TEXT NOT NULL,
    "provinsi" TEXT,
    "kabupaten_kota" TEXT,
    "kecamatan" TEXT,
    "desa_kelurahan" TEXT,
    "alamat_detail_jalan" TEXT,
    "catatan_pemesan" TEXT,
    "status_pesanan" TEXT NOT NULL,
    "metode_pembayaran" TEXT,
    "total_item_harga" INTEGER,
    "biaya_kirim" INTEGER,
    "grand_total" INTEGER,

    CONSTRAINT "pesanan_pkey" PRIMARY KEY ("id_pesanan")
);

-- CreateTable
CREATE TABLE "detail_pesanan" (
    "id_detail" SERIAL NOT NULL,
    "id_pesanan" INTEGER NOT NULL,
    "no_produk" INTEGER,
    "kode_produk" TEXT,
    "kuantitas" INTEGER NOT NULL,
    "harga_satuan_saat_jual" INTEGER NOT NULL,
    "subtotal" INTEGER NOT NULL,

    CONSTRAINT "detail_pesanan_pkey" PRIMARY KEY ("id_detail")
);

-- CreateIndex
CREATE UNIQUE INDEX "produk_kode_key" ON "produk"("kode");

-- CreateIndex
CREATE UNIQUE INDEX "pesanan_kode_pesanan_key" ON "pesanan"("kode_pesanan");

-- CreateIndex
CREATE INDEX "detail_pesanan_id_pesanan_idx" ON "detail_pesanan"("id_pesanan");

-- CreateIndex
CREATE INDEX "detail_pesanan_no_produk_idx" ON "detail_pesanan"("no_produk");

-- CreateIndex
CREATE INDEX "Session_userId_idx" ON "Session"("userId");

-- AddForeignKey
ALTER TABLE "detail_pesanan" ADD CONSTRAINT "detail_pesanan_id_pesanan_fkey" FOREIGN KEY ("id_pesanan") REFERENCES "pesanan"("id_pesanan") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "detail_pesanan" ADD CONSTRAINT "detail_pesanan_no_produk_fkey" FOREIGN KEY ("no_produk") REFERENCES "produk"("no") ON DELETE SET NULL ON UPDATE CASCADE;
