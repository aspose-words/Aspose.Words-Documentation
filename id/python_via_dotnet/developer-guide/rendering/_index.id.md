---
title: Merender di Python
second_title: Aspose.Words untuk Python via .NET
articleTitle: Render
linktitle: Render
description: "Gunakan fitur rendering Aspose.Words untuk Python via .NET untuk memformat dokumen tata letak alur menjadi halaman dan mengonversi dokumen tersebut atau halaman yang dipilih ke format dokumen lain (PDF, HTML, XPS, dll.) atau gambar (TIFF, PNG, SVG, dll.) untuk melihat, konversi lebih lanjut, atau mencetak."
type: docs
weight: 20
url: /id/python-net/rendering/
---

Kami menggunakan istilah "rendering" di Aspose.Words untuk menggambarkan proses konversi dokumen ke dalam format file atau media yang diberi halaman atau memiliki konsep halaman. Kita berbicara tentang rendering dokumen menjadi beberapa halaman. Diagram berikut menunjukkan rendering apa yang ada di Aspose.Words.

![rendering_aspose-words](/words/python-net/rendering/rendering-1.png)

Fitur rendering Aspose.Words memungkinkan Anda melakukan hal berikut:

- Konversi dokumen atau halaman yang dipilih ke format PDF, XPS, HTML, XAML, PostScript, dan PCL.
- Ubah dokumen menjadi dokumen TIFF multi-halaman, atau ubah halaman mana pun menjadi gambar raster dan simpan sebagai BMP, PNG, atau JPEG.
- Ubah halaman dokumen menjadi gambar Scalable Vector Graphics (SVG), atau ubah menjadi gambar vektor dan simpan sebagai EMF.
- Render objek [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) secara terpisah dari dokumen ke format gambar apa pun.

## Format Dokumen Tata Letak Aliran atau Tata Letak Tetap

Sebagian besar format dokumen yang dapat dimuat ke Aspose.Words dikenal sebagai format "flow-layout". Format tata letak alur mencakup DOC, OOXML, RTF, ODT, dan HTML. Dokumen dalam format tersebut terdiri dari berbagai elemen seperti paragraf, tabel, header, footer, gambar, field dan formatnya, misalnya tebal, miring, font, ukuran. Namun, format tata letak alur tidak berisi informasi tentang posisi di mana setiap paragraf atau karakter tertentu ditampilkan pada halaman.

Sebaliknya, format "tata letak tetap" (juga dikenal sebagai "halaman tetap") seperti PDF dan XPS berisi informasi posisi yang tepat untuk semua elemen dokumen. Format ini mempertahankan tampilan asli dokumen setelah disusun menjadi beberapa halaman, sehingga memberikan keakuratan informasi yang ditampilkan lebih tinggi.

## Mesin Tata Letak Halaman

Aspose.Words mengimplementasikan mesin tata letak halamannya sendiri yang memformat dokumen tata letak aliran menjadi halaman. Aspose.Words mengimplementasikan sejumlah penyaji yang menghasilkan dokumen dengan tata letak tetap seperti PDF atau XPS, atau halaman keluaran ke media lain seperti pencetakan atau gambar. Perhatikan bahwa ekspor juga dapat diberi nomor halaman untuk HTML dan XAML. Ini berarti bahwa dokumen dapat disimpan sebagai HTML biasa atau XAML (format tata letak alur), atau sebagai HTML dan XAML "bernomor halaman" yang menampilkan posisi elemen absolut.

Keuntungan terpenting menggunakan mesin tata letak halaman Aspose.Words adalah ia meniru cara kerja mesin tata letak halaman Microsoft Word. Oleh karena itu, saat Anda mengonversi dokumen Microsoft Word menjadi PDF, XPS, atau mencetaknya menggunakan Aspose.Words, hasilnya akan tampak hampir persis seperti yang dilakukan oleh Microsoft Word. Perhatikan bahwa Aspose.Words tidak menggunakan Microsoft Word.
