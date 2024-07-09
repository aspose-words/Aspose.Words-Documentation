---
title: Login Java
second_title: Aspose.Words Sitemap Java
articleTitle: Login
linktitle: Login
description: "Sitemap Aspose.Words Sitemap Java fitur rendering untuk memformat dokumen flow-layout ke halaman dan mengubah dokumen atau halaman yang dipilih ke dokumen lain (PDF, HTML, XPS, dll.) atau gambar (TIFF, PNG, SVG, dll.) format untuk melihat, konversi lebih lanjut, atau pencetakan."
type: docs
weight: 30
url: /id/java/rendering/
---

Kami menggunakan istilah "rendering" dalam Aspose.Words untuk menggambarkan proses mengkonversi dokumen ke format file atau media yang dipesan atau memiliki konsep halaman. Kami berbicara tentang rendering dokumen ke halaman. Diagram berikut menunjukkan apa rendering dalam Aspose.WordsSitemap

![rendering-aspose-words-java](/words/java/rendering/rendering-1.png)

Fitur rendering dari Aspose.Words memungkinkan Anda untuk melakukan berikut:

- Mengkonversi dokumen atau halaman yang dipilih ke PDF, XPS, HTML, XAML, PostScript, dan format PCL.
- Mengkonversi dokumen menjadi dokumen TIFF multi-halaman, atau mengubah halaman ke dalam gambar raster dan menyimpannya sebagai BMP, PNG atau JPEG.
- Mengkonversi halaman dokumen ke dalam gambar Grafik Vektor Scalable (SVG), atau mengubah ke dalam gambar vektor dan menyimpannya sebagai EMF.
- Render (gambar) halaman dokumen pada ukuran atau skala tertentu `Graphics` objek untuk membuat thumbnails, gambar lengkap atau berskala dari halaman dokumen.
- Login [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) objek secara terpisah dari dokumen ke format gambar atau ke `Graphics` Sitemap
- Menampilkan halaman dokumen dalam Komponen Ayun.
- Halaman dokumen cetak atau pratinjau menggunakan standar Java Infrastruktur pencetakan.

## Flow-layout atau tetap-layout Format Dokumen {#flow-layout-or-fixed-layout-document-formats}

Sebagian besar format dokumen yang dapat dimuat ke dalam Aspose.Words dikenal sebagai format "flow-layout". Format aliran termasuk DOC, OOXML, RTF, ODT, dan HTML. Dokumen dalam format ini terdiri dari berbagai elemen seperti paragraf, tabel, header, footer, gambar, bidang, dan format mereka, misalnya, berani, italic, font, ukuran. Namun, format aliran-layout tidak mengandung informasi tentang posisi di mana setiap paragraf atau karakter tertentu ditampilkan di halaman.

Sebaliknya, format "fixed-layout" (juga dikenal sebagai format "fixed page") seperti PDF dan XPS mengandung informasi penentuan posisi yang tepat untuk semua elemen dokumen. Format ini melestarikan tampilan asli dokumen setelah diletakkan ke halaman, memberikan akurasi yang lebih tinggi dari informasi yang ditampilkan.

## Mesin Layout Halaman {#page-layout-engine}

Aspose.Words menerapkan mesin tata letak halaman sendiri yang memformat dokumen aliran-layout ke halaman. Aspose.Words menerapkan sejumlah renderer yang baik menghasilkan dokumen tetap-layout seperti PDF atau XPS, atau halaman output ke media lain seperti pencetakan atau gambar. Catatan bahwa ekspor juga dapat dipesan untuk HTML dan XAML. Ini berarti bahwa dokumen dapat disimpan sebagai HTML biasa atau XAML (format aliran-layout), atau sebagai "paginated" HTML dan XAML yang menampilkan posisi mutlak elemen.

Keuntungan yang paling penting dari penggunaan Aspose.Words mesin tata letak halaman adalah bahwa itu meniru jalan Microsoft WordPekerjaan mesin tata letak halaman. Oleh karena itu, ketika Anda mengkonversi Microsoft Word dokumen ke PDF, XPS, atau mencetaknya menggunakan Aspose.Words, output akan muncul hampir persis seperti jika dilakukan dengan Microsoft WordSitemap Login Aspose.Words tidak menggunakan Microsoft WordSitemap
