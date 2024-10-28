---
title: Rendering dalam C++
second_title: Aspose.Words untuk C++
articleTitle: Rendering
linktitle: Rendering
description: "Gunakan Aspose.Words untuk C++ fitur rendering untuk memformat dokumen tata letak alur menjadi halaman dan mengonversi dokumen tersebut atau halaman yang dipilih ke dokumen lain(PDF, HTML, XPS, dll.) atau gambar (TIFF, PNG, SVG, dll.) format untuk dilihat, konversi lebih lanjut, atau pencetakan."
type: docs
weight: 20
url: /id/cpp/rendering/
---

Kami menggunakan istilah "rendering" dalam Aspose.Words untuk menggambarkan proses pengubahan dokumen menjadi format file atau media yang diberi paginasi atau memiliki konsep halaman. Kita berbicara tentang rendering dokumen menjadi beberapa halaman. Diagram berikut menunjukkan rendering apa yang ada di Aspose.Words.

![rendering-aspose-words-cpp](rendering-1.png)

Fitur rendering Aspose.Words memungkinkan Anda melakukan hal berikut:

- Mengonversi dokumen atau halaman yang dipilih menjadi PDF, XPS, HTML, XAML, PostScript, dan format PCL.
- Konversikan dokumen menjadi dokumen TIFF multi-halaman, atau konversikan halaman apa pun menjadi gambar raster dan simpan sebagai BMP, PNG, atau JPEG.
- Konversikan halaman dokumen menjadi gambar Grafik Vektor yang Dapat Diskalakan (SVG), atau konversikan menjadi gambar vektor dan simpan sebagai EMF.
- Render (gambar) halaman dokumen dengan ukuran atau skala tertentu pada objek `Graphics` untuk membuat gambar mini, gambar halaman dokumen berukuran penuh, atau berskala.
- Merender objek [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) secara terpisah dari dokumen ke format gambar apa pun atau ke objek `Graphics`.
- Menampilkan setiap halaman dokumen dalam Bentuk Windows.

## Format Dokumen tata letak alur atau Tata letak tetap {#flow-layout-or-fixed-layout-document-formats}

Sebagian besar format dokumen yang dapat dimuat ke dalam Aspose.Words dikenal sebagai format "tata letak alur". Format tata letak alur meliputi DOC, OOXML, RTF, ODT, dan HTML. Dokumen dalam format ini terdiri dari berbagai elemen seperti paragraf, tabel, header, footer, gambar, field, dan formatnya, misalnya bold, italic, font, size. Namun, format tata letak alur tidak berisi informasi tentang posisi di mana setiap paragraf atau karakter tertentu ditampilkan pada halaman.

Sebaliknya, format" tata letak tetap "(juga dikenal sebagai" halaman tetap") seperti PDF dan XPS berisi informasi pemosisian yang tepat untuk semua elemen dokumen. Format ini mempertahankan tampilan asli dokumen setelah ditata menjadi beberapa halaman, memberikan akurasi yang lebih tinggi dari informasi yang ditampilkan.

## Mesin Tata Letak Halaman {#page-layout-engine}

Aspose.Words mengimplementasikan mesin tata letak halamannya sendiri yang memformat dokumen tata letak alur menjadi halaman. Aspose.Words mengimplementasikan sejumlah penyaji yang menghasilkan dokumen dengan tata letak tetap seperti PDF atau XPS, atau menampilkan halaman ke media lain seperti mencetak atau menggambar. Perhatikan bahwa ekspor juga dapat diberi paginasi untuk HTML dan XAML. Ini berarti bahwa dokumen dapat disimpan sebagai HTML atau XAML biasa (format tata letak alur), atau sebagai" paginasi " HTML dan XAML yang menampilkan posisi absolut elemen.

Keuntungan terpenting menggunakan mesin tata letak halaman Aspose.Words adalah meniru cara kerja mesin tata letak halaman Microsoft Word. Oleh karena itu, saat Anda mengonversi dokumen Microsoft Word menjadi PDF, XPS, atau mencetaknya menggunakan Aspose.Words, hasilnya akan muncul hampir persis seperti yang dilakukan oleh Microsoft Word. Perhatikan bahwa Aspose.Words tidak menggunakan Microsoft Word.
