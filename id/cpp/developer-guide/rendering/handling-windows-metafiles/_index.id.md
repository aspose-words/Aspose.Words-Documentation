---
title: Menangani Windows Metafile dalam C++
second_title: Aspose.Words untuk C++
articleTitle: Menangani Windows Metafile
linktitle: Menangani Windows Metafile
description: "Aspose.Words untuk C++ mengimplementasikan pemutar Metafile Windows miliknya sendiri untuk memutar format Metafile di semua platform dan mendukung penanganan fitur metafile dasar dan dapat melakukan fallback ke jenis pemutar metafile yang berbeda."
type: docs
weight: 30
url: /id/cpp/handling-windows-metafiles/
---

Windows Format Metafile adalah format file gambar yang dapat berisi grafik vektor dan raster. Format ini digunakan untuk menyimpan data grafik dalam memori atau file pada disk. Metafile menyimpan daftar pemanggilan fungsi di Antarmuka Perangkat Grafik Windows (GDI) yang harus dijalankan untuk menampilkan gambar di layar. Sistem menafsirkan dan menjalankan perintah ini dalam konteks tampilan.

Sebelumnya, Windows Metafile adalah satu-satunya format gambar vektor yang didukung oleh Microsoft Word. Microsoft Word sekarang juga mendukung format SVG, tetapi format metafile masih umum digunakan di dokumen Word. Selain itu, Metafile dapat menjadi format pertukaran untuk beberapa aplikasi lain, seperti Microsoft Visio. Pada dasarnya, tujuan utama Metafile adalah untuk memastikan pertukaran informasi grafis antara Windows aplikasi.

Ada 3 versi dari Windows Metafile:

- WMF - menyimpan panggilan ke 16bit GDI.
- EMF - menyimpan panggilan ke Win32 / GDI.
- EMF+ Metafile menyimpan panggilan ke GDI+. EMF+ Metafile mungkin juga ganda, menggambarkan grafik yang sama dengan bagian EMF dan EMF+.

Masalah yang ada dengan Windows Metafile adalah tidak didukung oleh sebagian besar format non-Word, yang biasanya menyimpan dokumen. Oleh karena itu, diperlukan konversi format Metafile ke format raster atau vektor lainnya. Sangat mudah untuk mengonversi Windows Metafile menjadi gambar raster pada .NET hanya dengan meneruskannya ke GDI+, tetapi tidak mungkin pada platform lain karena bahkan GDI+ tidak menyediakan fungsionalitas untuk mengekstrak grafik vektor dari Metafile. Untuk mengatasi masalah ini, Aspose.Words mengimplementasikan pemutar Metafile Windows miliknya sendiri, yang dapat memutar format Metafile baik grafik vektor maupun raster di semua platform.

## Mengontrol Pemutar Metafile Aspose.Words

Kelas [MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/) memungkinkan Anda untuk mengontrol pemutar metafile. Misalnya, Anda dapat menentukan bagaimana gambar metafile harus dirender menggunakan properti [RenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_renderingmode/), yang memiliki arti khusus saat mengonversi ke bitmap (lihat juga properti [MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/metafilerenderingoptions/)).

Menyimpan ke bitmap bekerja secara berbeda pada platform selain .NET. Meskipun .NET GDI+ rendering adalah referensi yang berfungsi hampir sempurna bahkan untuk format metafile yang paling kompleks, pada platform lain hal itu dapat menyebabkan masalah atau tidak didukung sama sekali.

## Mendukung Operasi Raster

Operasi raster adalah fitur metafile yang kompleks, yang saat ini memiliki dukungan terbatas. Operasi raster tersedia dalam format metafile WMF dan EMF. Format EMF+ metafile tidak menggunakan operasi raster secara langsung tetapi dapat berisi EMF bagian, WMF tertanam, atau EMF metafile.

Ada operasi raster biner dan terner:

- Operasi raster biner diterapkan pada perintah menggambar pena, seperti menggambar garis dan kurva. Saat menggambar garis, warna pena digabungkan dengan warna bitmap tujuan (warna piksel yang sesuai pada permukaan perangkat) dengan menggunakan operasi logika bitwise yang ditentukan dengan nilai warna hex. Contoh gambar di bawah ini mengilustrasikan efek dari semua 16 operasi raster biner yang diterapkan pada 20 batang warna berbeda. Batang warna vertikal digambar terlebih dahulu, batang horizontal digambar setelah setiap operasi raster biner diterapkan. Untuk kasus sederhana, R2_BLACK menggambar hitam, R2_NOT membalikkan warna, R2_NOP tidak mengubah latar belakang, dan R2_WHITE menggambar putih.

<img src="handling-windows-metafiles-1.png" alt="handling-windows-metafiles-aspose-words-cpp-1" style="width:650px"/>

- Operasi raster terner diterapkan saat menggambar gambar bitmap. Mereka menggabungkan warna piksel gambar bitmap yang sesuai, kuas, dan bitmap tujuan dengan menggunakan operasi logika bitwise dengan nilai warna hex yang ditentukan. Salah satu tujuan paling umum dari penggunaan operasi raster terner adalah meniru transparansi. Gambar yang disediakan dalam contoh di bawah ini menunjukkan bagaimana transparansi ikon dapat ditiru. Ada dua jenis bitmap: bitmap topeng b / w dan bitmap warna. Pertama, bitmap topeng digambar dengan operasi raster SRCAND. Ini mengubah wilayah ikon buram menjadi hitam putih, membiarkan wilayah transparan tidak berubah. Kemudian bitmap kedua digambar dengan operasi raster SRCINVERT. Ini menampilkan piksel warna pada wilayah hitam, membiarkan wilayah transparan tidak berubah.

<img src="handling-windows-metafiles-2.png" alt="handling-windows-metafiles-aspose-words-cpp-2" style="width:650px"/>

Operasi raster tidak dapat dikonversi menjadi grafik vektor secara langsung. Aspose.Words mengemulasi operasi raster dengan melakukan rasterisasi sebagian pada permukaan perangkat yang dipengaruhi oleh operasi raster. Untuk tujuan ini, properti [EmulateRasterOperations](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emulaterasteroperations/) digunakan.

{{% alert color="primary" %}}

Meskipun operasi raster biner saat ini tidak didukung dan terbatasnya jumlah operasi raster terner didukung oleh Aspose.Words, operasi ini dapat menangani kasus dasar konversi ke grafik vektor secara langsung, misalnya, R2_BLACK, R2_WHITE, R2_NOP. Selain itu, rasterisasi permukaan perangkat secara signifikan memengaruhi kinerja, terutama jika melibatkan sejumlah besar catatan operasi raster.

{{% /alert %}}

Contoh yang ditunjukkan di bawah ini mendemonstrasikan bagaimana Aspose.Words merender metafile menjadi bitmap ketika tidak memungkinkan untuk merender beberapa record metafile dengan benar ke grafik vektor:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Doc2Pdf-RenderMetafileToBitmap.cpp" >}}

## Pengaturan Fallback Metafile

Aspose.Words tidak mendukung sejumlah fitur metafile yang paling kompleks atau langka. Pengguna dapat mengimplementasikan antarmuka [IWarningCallBack](https://reference.aspose.com/words/cpp/aspose.words/iwarningcallback/) dan menerima pesan peringatan. Jika Aspose.Words menemukan fitur yang tidak didukung dalam metafile, pesan peringatan akan muncul dengan [WarningSource](https://reference.aspose.com/words/cpp/aspose.words/warninginfo/get_source/).**Metafile**. Dalam hal ini Aspose.Words dapat melakukan fallback ke jenis pemutar metafile yang berbeda. Pesan peringatan tentang fallback juga dikeluarkan.

Pertama, Aspose.Words melakukan fallback dari pemutar metafile vektor ke raster, yang dikendalikan oleh properti [RenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_renderingmode/). Jika fitur fallback dinonaktifkan, Aspose.Words mencoba merender beberapa grafik substitusi alih-alih fitur yang tidak didukung.

Aspose.Words berhasil memutar metafile ke raster menggunakan GDI+ pada .NET, yang membuat opsi panggilan balik ini aman.

Kedua, ada opsi untuk EMF + Metafile ganda untuk mundur dari memainkan bagian EMF+ ke bagian EMF. Ini dikendalikan oleh [EmfPlusDualRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emfplusdualrenderingmode/). Jika ada beberapa masalah yang terjadi saat memainkan bagian EMF, maka fallback ke raster juga dapat dilakukan.

Sedangkan untuk operasi raster, jika [EmulateRasterOperations](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emulaterasteroperations/) dinonaktifkan, maka operasi raster dianggap tidak didukung, yang memicu fallback ke bitmap metafile player jika diaktifkan. Oleh karena itu, jika Anda memiliki metafile dengan operasi raster, tetapi Anda tidak ingin menggunakan emulasi operasi raster namun ingin mendapatkan keluaran vektor dengan grafik substitusi, maka pilih [MetafileRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_renderingmode/).**Vector**.
