---
title: Bekerja dengan Smart Rendering Dingin Seni dalam Java
second_title: Aspose.Words Sitemap Java
articleTitle: Bekerja dengan Smart Rendering dingin seni
linktitle: Bekerja dengan Smart Rendering dingin seni
type: docs
description: "Aspose.Words Sitemap Java melakukan Smart Art Cold Rendering, yang berarti bahwa itu berbaring dan render benda SmartArt jika gambar SmartArt yang telah ditentukan hilang atau salah."
weight: 330
url: /id/java/working-with-smartart-cold-rendering/
timestamp: 2024-01-27-14-07-04
---

Grafik SmartArt digunakan untuk dengan cepat dan mudah membuat representasi informasi visual. Anda hanya memilih dari sejumlah besar tata letak yang paling sesuai dengan situasi Anda. Kemudahan penggunaan ini membuat grafis SmartArt cukup populer untuk beberapa tujuan.

Microsoft Word menghasilkan dan menyimpan gambar yang telah ditentukan bersama dengan `SmartArt` Sitemap Dalam kebanyakan kasus, gambar yang telah ditentukan dengan baik oleh Aspose.Words dan tidak ada tindakan tambahan yang diperlukan. Namun, jika dokumen disimpan oleh aplikasi lain, gambar SmartArt yang telah ditentukan dapat hilang atau salah. Dalam hal ini, `SmartArt` objek itu sendiri harus diletakkan-out dan dirender menggunakan Aspose.WordsSitemap Kami menyebut proses ini `SmartArt` Rendering dingin.

## Menggunakan Smart Rendering dingin seni

Aspose.Words memungkinkan Anda untuk menggunakan gambar yang telah ditentukan atau melakukan rendering dingin:

* Sitemap Jika gambar yang telah ditentukan tersedia, Aspose.Words menggunakannya untuk membuat Meme it `SmartArt` Sitemap
* Sitemap Jika gambar yang telah ditentukan hilang, Aspose.Words benar-benar melakukan rendering dingin untuk membuat Meme it `SmartArt` Sitemap
* Sitemap Jika gambar yang telah dirender hadir tetapi tidak benar, diperlukan untuk melakukan rendering dingin SmartArt secara eksplisit dengan memanggil [UpdateSmartArtDrawing](https://reference.aspose.com/words/java/com.aspose.words/shape/#updateSmartArtDrawing) Login

Contoh kode berikut menunjukkan cara memperbarui gambar untuk semua diagram dalam dokumen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-UpdateSmartArtDrawing.java" >}}

## Dukungan untuk Tata Letak SmartArt Standar

Saat ini, hanya sejumlah standar terbatas Microsoft Word Tata letak SmartArt didukung. Juga, beberapa tata letak ini didukung sebagian, berarti bahwa node dan bentuk yang signifikan dari diagram diberikan, tetapi mungkin ada perbedaan antara Microsoft Word Login Aspose.Words tata letak diagram.

Tabel di bawah ini daftar tata letak yang didukung sepenuhnya dan sebagian:

|  Login Tata letak seni Group |  Tata letak yang didukung penuh |  Tata letak yang didukung secara terpisah |
|  ----------------------  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  `List`  |  <ul><li>Daftar Blok Dasar</li><li>Sitemap</li><li>Daftar Bullet Vertikal</li><li>Daftar Kotak Vertikal</li><li>Daftar Lebar Varying</li><li>Daftar peluru horisontal</li><li>GroupSitemap</li><li>Daftar Blok Vertikal</li><li>Daftar Chevron Vertikal</li><li>Daftar Panah Vertikal</li><li>Daftar Trapezoid</li><li>Daftar tabel</li><li>Login</li><li>Daftar Target</li></ul> |  <ul><li>Daftar Baris</li><li>Daftar Bracket Vertikal</li><li>Daftar Tab</li><li>Daftar Stacked</li><li>Daftar Accent Vertikal</li><li>Daftar Lingkaran Vertikal</li></ul> |
|  `Process`  |  <ul><li>Proses dasar</li><li>Proses Accent</li><li>Proses Blok Terus menerus</li><li>Meningkatkan Proses Arrow</li><li>Login</li><li>Timeline Dasar</li><li>Proses Chevron Dasar</li><li>Proses Accent Chevron</li><li>Proses Chevron Tertutup</li><li>Daftar Chevron</li><li>Proses Vertikal</li><li>Proses Staggered</li><li>Daftar Proses</li><li>Proses Bending Dasar</li><li>Mengulangi Proses Bending</li><li>Proses terperinci</li><li>Panah ke atas</li><li>Proses Dek</li><li>Proses Bending Edaran</li></ul> |  <ul><li>Proses Langkah</li><li>Langkah Proses Turun</li><li>Aliran Alternating</li><li>Meningkatkan Proses Lingkaran</li><li>Proses Pie</li><li>Proses Blok Interkoneksi</li><li>Proses Panah</li><li>Lingkaran Accent Timeline</li><li>Proses Lingkaran</li><li>Proses Sub Langkah</li><li>Proses Fase</li><li>Acak Proses Hasil</li><li>Proses Panah Lingkaran</li></ul> |
|  `Cycle`  |  –                                                             |  <ul><li>Siklus Teregmentasi</li><li>Sitemap</li></ul> |
|  `Hierarchy`  |  –                                                             |  <ul><li>Tabel Hierarchy</li><li>Tata letak arsitektur</li></ul> |
|  `Relationship`  |  <ul><li>Login</li><li>Login</li><li>Login</li><li>Plus Dan Minus</li><li>Pita Panah</li><li>Panah Counterbalance</li><li>Sitemap</li><li>Sitemap</li><li>Target Dasar</li><li>Dasar Pie</li><li>Dasar Venn</li><li>Login</li><li>Cincin Interkoneksi</li></ul> |  <ul><li>Hubungan Lingkaran</li><li>Sitemap</li><li>Login</li><li>Equasi Vertikal</li><li>tlhIngan</li></ul> |
|  `Matrix`  |  <ul><li>Matriks Dasar</li><li>Matriks Judul</li><li>Jaringan Matriks</li><li>Siklus Matriks</li></ul> |  –                                                             |
|  `Pyramid`  |  –                                                             |  <ul><li>Piramida tersegmentasi</li></ul> |

## Perbandingan Pengirim SmartArt dalam Aspose.Words Login Microsoft

Tabel di bawah ini menunjukkan gambar contoh Aspose.Words Login rendering beberapa tata letak standar dibandingkan dengan Microsoft Word keluaran:

|                                 |   **Aspose.Words**                                              |   **Microsoft Word**                                            |
|  -----------------------------  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|   **Basic Process**              |   <img src="/words/java/working-with-smartart-cold-rendering/basic-process-aspose.png" alt="basic_process_aspose"/>  |   <img src="/words/java/working-with-smartart-cold-rendering/basic-process-word.png" alt="basic_process_word"/>  |
|   **Circular Bending Process**   |   <img src="/words/java/working-with-smartart-cold-rendering/circular-bending-process-aspose.png" alt="circular_bending_process_aspose"/>  |   <img src="/words/java/working-with-smartart-cold-rendering/circular-bending-process-word.png" alt="circular_bending_process_word"/>  |
|   **Repeating Bending Process**  |   <img src="/words/java/working-with-smartart-cold-rendering/repearing-bending-process-aspose.png" alt="repearing_bending_process_aspose"/>  |   <img src="/words/java/working-with-smartart-cold-rendering/repearing-bending-process-word.png" alt="repearing_bending_process_word"/>  |
|   **Trapezoid List**             |   <img src="/words/java/working-with-smartart-cold-rendering/trapezoid-list-aspose.png" alt="trapezoid_list_aspose"/>  |   <img src="/words/java/working-with-smartart-cold-rendering/trapezoid-list-word.png" alt="trapezoid_list_word"/>  |
