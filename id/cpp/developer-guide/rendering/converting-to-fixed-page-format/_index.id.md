---
title: Mengonversi ke Format halaman Tetap di C++
second_title: Aspose.Words untuk C++
articleTitle: Mengonversi ke Format halaman Tetap
linktitle: Mengonversi ke Format halaman Tetap
description: "Simpan dokumen ke PDF, XPS, HTML, XAML, PostScript, dan format PCL."
type: docs
weight: 10
url: /id/cpp/converting-to-fixed-page-format/
timestamp: 2024-09-24-14-35-44
---

Aspose.Words mengimplementasikan mesin tata letak halamannya sendiri. Sebelum mempelajari spesifikasinya, ada baiknya untuk terlebih dahulu membahas dokumen pada tingkat tinggi.

## Apa itu Dokumen?

Saat memikirkan sebuah dokumen, pengguna biasanya membayangkan sejumlah lembar kertas berisi kata, gambar, tabel, dan bagan. Dokumen dapat terdiri dari berbagai jenis, seperti teks, spreadsheet, slide, gambar CAD, diagram alur, dan, oleh karena itu, pada dasarnya dapat memiliki tata letak yang berbeda. Sebagian besar aplikasi memungkinkan pengiriman dokumen ke printer; ini adalah saat pengguna benar-benar dapat melihat tampilan akhir dokumen yang dimaksudkan.

## Menampilkan Dokumen dalam Berbagai Aplikasi

Berbagai aplikasi tampilan atau penerbitan dokumen memungkinkan pengguna untuk membuka (Adobe Acrobat, XPS Viewer) dan terkadang mengedit (Adobe InDesign) dokumen dengan format tertentu. Aplikasi ini biasanya menghasilkan apa yang disebut dokumen berformat "halaman tetap". Format dokumen semacam itu menjelaskan dengan tepat di mana konten dokumen ditempatkan di setiap halaman. Secara internal, format PDF atau XPS berisi deskripsi setiap halaman, serta instruksi menggambar, yang menentukan tata letak konten pada halaman. Ini mirip dengan format gambar, menjelaskan di mana konten ditampilkan baik dalam bentuk raster atau vektor.

Sebaliknya, beberapa aplikasi pengeditan teks tidak mendukung tampilan halaman dokumen. Misalnya, Microsoft Notepad mendukung sangat sedikit fungsi selain hanya menampilkan, mengedit, dan mencetak teks. Pengamatan penting di sini adalah bahwa aplikasi semacam itu tidak dapat menampilkan halaman dokumen atau memberi tahu pengguna berapa banyak halaman yang akan dicetak, hanya memungkinkan untuk melihat konten dokumen. Dokumen dapat disimpan dalam format teks biasa dan dapat dibuka oleh banyak aplikasi lain. Menggunakan aplikasi yang memungkinkan melihat konten biner dari file arbitrer, orang dapat melihat apa yang disimpan dalam file dokumen-itu hanya teks biasa, tidak ada yang lain di dalamnya.

Aplikasi pengeditan teks yang sedikit lebih canggih, seperti Microsoft Word Pad, menyimpan dokumen dalam Format Teks Kaya (RTF), yang mendukung lebih banyak fungsi pemformatan, seperti penyisipan gambar, pemformatan karakter, margin paragraf, dan spasi. Namun, format RTF juga hanya berisi konten dokumen, tidak memiliki informasi tentang halaman.

Microsoft Word adalah aplikasi pengeditan teks tercanggih di Windows saat ini. Ini memformat file dalam format DOCX, yang menjelaskan konten dokumen secara fleksibel dan ekstensif, memungkinkan pengguna untuk menentukan ukuran halaman, orientasi untuk bagian dokumen, dan, sebagai aplikasi WYSIWYG bahkan menampilkan halaman dokumen di layar. Namun demikian, masih belum ada informasi mengenai bagaimana konten dokumen ditampilkan pada halaman yang tersedia di file dokumen. File dokumen hanya menjelaskan konten itu sendiri, dan hubungan objek dokumen satu sama lain, bersama dengan beberapa batasan geometris. Hasilnya, sebelum menampilkan dokumen, Microsoft Word menghitung informasi itu sendiri. Di sinilah tata letak halaman berperan.

## Lihat Juga

* [Apa itu Tata Letak Halaman](/words/cpp/what-is-a-page-layout/)
* [Membuat Tata Letak Halaman](/words/cpp/creating-a-page-layout/)
* [Menyimpan Dokumen ke Format halaman Tetap](/words/cpp/saving-a-document-to-fixed-page-format/)
* [Tentukan Opsi Tata Letak](/words/cpp/specify-layout-options/)
