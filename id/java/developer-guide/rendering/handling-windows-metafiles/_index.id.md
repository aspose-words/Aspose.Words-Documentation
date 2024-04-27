---
title: Login Windows Metafile Java
second_title: Aspose.Words Sitemap Java
articleTitle: Login Windows Login
linktitle: Login Windows Login
description: "Aspose.Words Sitemap Java menerapkan sendiri Windows Metafile pemain untuk memainkan format Metafile pada semua platform dan mendukung penanganan fitur metafile dasar dan dapat melakukan fallback ke berbagai jenis pemain metafile."
type: docs
weight: 30
url: /id/java/handling-windows-metafiles/
---

Windows Format Metafile adalah format file gambar yang dapat berisi grafik vektor dan raster. Format ini digunakan untuk menyimpan data grafis dalam file memori atau on-disk. Metafile menyimpan daftar panggilan fungsi di Windows Antarmuka Perangkat Grafik (GDI) yang harus dieksekusi untuk menampilkan gambar di layar. Sistem menafsirkan dan mengeksekusi perintah ini dalam konteks tampilan.

Sitemap Windows Metafile adalah satu-satunya format gambar vektor yang didukung oleh Microsoft WordSitemap Microsoft Word Sekarang juga mendukung format SVG, tetapi format metafile masih sering digunakan dalam dokumen Word. Juga, Metafile bisa menjadi format pertukaran untuk beberapa aplikasi lain, seperti Microsoft Login Pada dasarnya, tujuan utama Metafile adalah untuk memastikan pertukaran informasi grafis antara Windows Sitemap

Ada 3 versi Windows Metafile

- WMF - toko panggilan ke 16bit GDI.
- EMF - toko panggilan ke Win32/GDI.
- EMF+ Toko Metafile memanggil GDI+. EMF + Metafile juga dapat dual, menggambarkan grafis yang sama dengan bagian EMF dan EMF +.

Masalah yang ada dengan Windows Metafile adalah bahwa tidak didukung oleh format yang paling non-Word, yang dokumen biasanya disimpan. Oleh karena itu, diperlukan untuk mengubah format Metafile ke format raster atau vektor lainnya. Mudah untuk mengkonversi Windows Metafile untuk gambar raster pada .NET hanya melewatinya ke GDI+, tetapi tidak mungkin pada platform lain karena bahkan GDI+ tidak memberikan fungsi untuk mengekstrak grafik vektor dari Metafile. Untuk memecahkan masalah ini, Aspose.Words menerapkan sendiri Windows Metafile player, yang mampu memainkan format Metafile baik vektor dan raster grafis pada semua platform.

## Mengontrol Aspose.Words Metafile

Login [MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/) kelas memungkinkan Anda untuk mengontrol pemain metafile. Misalnya, Anda dapat menentukan bagaimana gambar metafile harus diberikan menggunakan [RenderingMode](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingmode/) properti, yang memiliki makna khusus ketika mengkonversi ke bitmaps (lihat juga [MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getMetafileRenderingOptions) Login

## Mendukung Operasi Raster

Operasi Raster adalah fitur metafile yang kompleks, yang saat ini memiliki dukungan terbatas. Operasi Raster tersedia dalam format metafile WMF dan EMF. Format EMF + metafile tidak menggunakan operasi raster secara langsung tetapi dapat mengandung bagian EMF, tertanam metafile WMF atau EMF.

Ada operasi raster biner dan ternary:

- Operasi raster biner diterapkan untuk menggambar perintah, seperti garis gambar dan kurva. Ketika menggambar garis, warna pena dikombinasikan dengan warna bitmap tujuan (warna piksel yang sesuai pada permukaan perangkat) dengan menggunakan operasi logis yang ditentukan dengan nilai warna hex. Contoh gambar di bawah ini menggambarkan efek dari semua 16 operasi raster biner diterapkan untuk 20 batang warna yang berbeda. Bar warna vertikal ditarik pertama, batang horisontal ditarik setelah setiap operasi raster biner diterapkan. Untuk kasus sederhana, R2_BLACK menggambar hitam, R2_Tidak melintang warna, R2_NOP tidak mengubah latar belakang, dan R2_WHITE menggambar putih.

<img src="/words/java/handling-windows-metafiles/handling-windows-metafiles-1.png" alt="handling-windows-metafiles-aspose-words-java-1" style="width:650px"/>

- Operasi raster Ternary diterapkan ketika gambar bitmap gambar. Mereka menggabungkan warna dari piksel gambar bitmap yang sesuai, sikat, dan bitmap tujuan dengan menggunakan operasi logis yang bijaksana dengan nilai warna hex yang ditentukan. Salah satu tujuan yang paling umum menggunakan operasi raster ternary adalah emulasi transparansi. Gambar yang disediakan dalam contoh di bawah ini menunjukkan bagaimana transparansi ikon dapat dinaikkan. Ada dua jenis bitmaps: bitmap masker b / w dan bitmap warna. Pertama, bitmap masker ditarik dengan operasi raster SRCAND. Ini mengubah wilayah ikon buram menjadi hitam dan putih, meninggalkan daerah transparan tidak berubah. Kemudian bitmap kedua ditarik dengan operasi raster SRCINVERT. Ini menampilkan piksel warna di wilayah hitam, meninggalkan daerah transparan tidak berubah.

<img src="/words/java/handling-windows-metafiles/handling-windows-metafiles-2.png" alt="handling-windows-metafiles-aspose-words-java-2" style="width:650px"/>

Operasi Raster tidak dapat dikonversi ke grafik vektor secara langsung. Aspose.Words meniru operasi raster oleh sebagian rasterizing permukaan perangkat yang dipengaruhi oleh operasi raster. Untuk tujuan ini, [EmulateRasterOperations](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/#getEmulateRasterOperations) properti digunakan.

{{% alert color="primary" %}}

Sementara operasi raster biner tidak saat ini didukung dan jumlah operasi raster ternary didukung oleh Aspose.Words, dapat menangani kasus dasar konversi ke grafik vektor secara langsung, misalnya, R2_BLACK, R2_WHITE, R2_NOPSitemap Juga, rasterizing permukaan perangkat secara signifikan mempengaruhi kinerja, terutama ketika jumlah signifikan dari catatan operasi raster terlibat.

{{% /alert %}}

Contoh yang ditunjukkan di bawah ini menunjukkan bagaimana Aspose.Words render metafile ke bitmap ketika tidak mungkin untuk benar render beberapa catatan metafile ke grafis vektor:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HandleDocumentWarnings-HandleDocumentWarnings.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderMetafileToBitmap-RenderMetafileToBitmap.java" >}}
