---
title: Memanipulasi dan Mengganti Font TrueType di C++
second_title: Aspose.Words untuk C++
articleTitle: Memanipulasi dan Mengganti Font TrueType
linktitle: Memanipulasi dan Mengganti Font TrueType
description: "Aspose.Words untuk C++ dapat menyematkan font TrueType yang benar ke dalam dokumen yang dihasilkan untuk memastikannya ditampilkan secara akurat. Jika font atau karakter tertentu tidak tersedia, Aspose.Words mencari pengganti font yang sesuai atau menggunakan mekanisme fallback Font."
type: docs
weight: 10
url: /id/cpp/manipulate-and-substitute-truetype-fonts/
---

Aspose.Words memerlukan font TrueType untuk berbagai tugas, termasuk merender dokumen ke format halaman tetap, misalnya, PDF atau XPS. Saat Aspose.Words merender dokumen, dokumen perlu melakukan penyematan dan penyematan subset font TrueType ke dalam dokumen yang dihasilkan, yang merupakan praktik normal selama pembuatan dokumen, termasuk format PDF atau XPS yang populer. Ini memastikan bahwa dokumen akan tampak sama di semua penampil. Selain itu, spesifikasi XPS mengharuskan font untuk selalu disematkan dalam dokumen.

Untuk memastikan Aspose.Words mengukur karakter secara akurat dan berhasil menyematkan font yang relevan, persyaratan berikut harus dipenuhi:

1. Aspose.Words harus dapat menemukan dan mengakses file font TrueType di sistem.
1. Harus ada cukup font TrueType yang tersedia untuk Aspose.Words, sebaiknya dengan nama keluarga font yang sama dengan yang digunakan dalam dokumen.

Perhatikan bahwa font dalam dokumen mewakili entitas, seperti nama keluarga, gaya, ukuran, warna, yang berbeda dari entitas `TrueType` font (font fisik). Aspose.Words menyelesaikan font dalam dokumen menjadi font fisik pada beberapa tahap pemrosesan. Hal ini memungkinkan tugas-tugas tertentu, paling umum tugas menghitung ukuran teks selama konstruksi tata letak dan menyematkan / mensubset ke format halaman tetap. Sejumlah tugas lain yang kurang populer, seperti penyelesaian dan penggantian font saat memuat HTML atau menyematkan / mensubset ke beberapa format alur, juga diaktifkan.

## Dimana Aspose.Words Mencari Font

Aspose.Words mencoba menemukan TrueType font pada sistem file secara otomatis. Biasanya, Anda dapat mengandalkan perilaku default Aspose.Words untuk menemukan font `TrueType`, tetapi terkadang Anda perlu menentukan folder Anda sendiri yang berisi font TrueType. The [Tentukan Lokasi Font TrueType ](/words/cpp/specify-truetype-fonts-location/) topik menjelaskan bagaimana dan di mana Aspose.Words mencari font, serta cara menentukan lokasi font Anda sendiri.

## Perbedaan Pemrosesan Format Font dalam Aspose.Words dan Microsoft Word

Ada beberapa perbedaan dalam pemrosesan format font di Aspose.Words dan Microsoft Word seperti yang ditunjukkan pada tabel di bawah ini:

|  | Microsoft Word | Aspose.Words |
| :- | :- | :- |
| Font TrueType dan font OpenType dengan garis besar TrueType | Didukung. | Didukung. |
| OpenType fonta dengan garis luar PostScript | Didukung untuk sebagian besar skenario. Menyematkan ke format halaman tetap seperti PDF dan XPS tidak didukung. Teks diganti dengan gambar bitmap. | Didukung untuk sebagian besar skenario, termasuk menyematkan ke format halaman tetap. |
| OpenType Variasi Fonta | Hanya instans bernama yang didukung. Variasi berkelanjutan tidak didukung. | Didukung untuk satu-satunya instans default. Instans bernama dan variasi berkelanjutan tidak didukung. |
| Type1 fonta | Didukung pada versi Windows sebelum 2013 dan versi macOS. Dukungan dihentikan pada versi Windows mulai tahun 2013. | Tidak didukung. |


