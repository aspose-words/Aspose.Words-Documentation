---
title: Bekerja dengan SmartArt Cold Rendering di C#
second_title: Aspose.Words untuk .NET
articleTitle: Bekerja dengan Rendering Dingin SmartArt
linktitle: Bekerja dengan Rendering Dingin SmartArt
description: "Pengenalan bentuk SmartArt menggunakan C#."
type: docs
description: "Aspose.Words untuk .NET menjalankan SmartArt Cold Rendering, yang berarti ia menata letak dan merender objek SmartArt jika gambar SmartArt yang telah dirender sebelumnya hilang atau salah menggunakan C#."
weight: 330
url: /id/net/working-with-smartart-cold-rendering/
---

Grafik SmartArt digunakan untuk membuat representasi visual informasi dengan cepat dan mudah. Anda cukup memilih dari sejumlah besar tata letak yang paling sesuai dengan situasi Anda. Kemudahan penggunaan ini membuat grafik SmartArt cukup populer untuk beberapa tujuan.

Microsoft Word menghasilkan dan menyimpan gambar yang telah dirender bersama dengan objek `SmartArt`. Dalam kebanyakan kasus, gambar yang telah dirender sebelumnya dirender dengan baik oleh Aspose.Words dan tidak diperlukan tindakan tambahan. Namun, jika dokumen disimpan oleh aplikasi lain, gambar SmartArt yang telah dirender sebelumnya mungkin hilang atau salah. Dalam hal ini, objek `SmartArt` itu sendiri harus ditata dan dirender menggunakan Aspose.Words. Kami menyebut proses ini `SmartArt` Cold Rendering.

## Menggunakan Rendering Dingin SmartArt

Aspose.Words memungkinkan Anda menggunakan gambar yang telah dirender sebelumnya atau melakukan rendering dingin:

* Jika gambar pra-render tersedia, Aspose.Words menggunakannya untuk merender objek `SmartArt`.
* Jika gambar pra-render tidak ada, Aspose.Words secara implisit melakukan rendering dingin untuk merender objek `SmartArt`.
* Jika gambar yang telah dirender sebelumnya ada tetapi salah, maka diperlukan rendering dingin SmartArt secara eksplisit dengan memanggil metode [UpdateSmartArtDrawing](https://reference.aspose.com/words/net/aspose.words.drawing/shape/updatesmartartdrawing/).

Contoh kode berikut menunjukkan cara memperbarui gambar untuk semua diagram dalam dokumen:

**.NET**
{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-UpdateSmartArtDrawing.cs" >}}

## Dukungan untuk Tata Letak SmartArt Standar

Saat ini, hanya sejumlah tata letak Microsoft Word SmartArt standar yang didukung. Selain itu, beberapa tata letak ini didukung sebagian, artinya node dan bentuk diagram signifikan dirender, namun mungkin ada perbedaan antara tata letak diagram Microsoft Word dan Aspose.Words.

Tabel di bawah mencantumkan tata letak yang didukung sepenuhnya dan sebagian:

|  Tata Letak SmartArt Group |  Tata letak yang didukung penuh |  Tata letak yang didukung sebagian |
|  ----------------------  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  `List`  |  <ul><li>Daftar Blok Dasar</li><li>Segi Enam Bergantian</li><li>Daftar Poin Vertikal</li><li>Daftar Kotak Vertikal</li><li>Memvariasikan Daftar Lebar</li><li>Daftar Poin Horisontal</li><li>Daftar Group</li><li>Daftar Blok Vertikal</li><li>Daftar Chevron Vertikal</li><li>Daftar Panah Vertikal</li><li>Daftar Trapesium</li><li>Daftar Tabel</li><li>Daftar Piramida</li><li>Daftar Sasaran</li></ul> |  <ul><li>Daftar Berjajar</li><li>Daftar Braket Vertikal</li><li>Daftar Tab</li><li>Daftar Bertumpuk</li><li>Daftar Aksen Vertikal</li><li>Daftar Lingkaran Vertikal</li></ul> |
|  `Process`  |  <ul><li>Proses Dasar</li><li>Proses Aksen</li><li>Proses Blok Berkelanjutan</li><li>Meningkatkan Proses Panah</li><li>Teks Konvergen</li><li>Garis Waktu Dasar</li><li>Proses Dasar Chevron</li><li>Proses Aksen Chevron</li><li>Proses Chevron Tertutup</li><li>Daftar Chevron</li><li>Proses Vertikal</li><li>Proses Terhuyung</li><li>Daftar proses</li><li>Proses Pembengkokan Dasar</li><li>Proses Pembengkokan Berulang</li><li>Proses Terperinci</li><li>Panah Atas</li><li>Proses Menurun</li><li>Proses Pembengkokan Melingkar</li></ul> |  <ul><li>Proses Peningkatan</li><li>Proses Mundur</li><li>Aliran Bolak-balik</li><li>Meningkatkan Proses Lingkaran</li><li>Proses Pai</li><li>Proses Blok yang Saling Berhubungan</li><li>Panah Proses</li><li>Garis Waktu Aksen Lingkaran</li><li>Proses Lingkaran</li><li>Proses Sub Langkah</li><li>Proses Bertahap</li><li>Proses Acak hingga Hasil</li><li>Proses Panah Lingkaran</li></ul> |
|  `Cycle`  |  –                                                             |  <ul><li>Siklus Tersegmentasi</li><li>Radial segi enam</li></ul> |
|  `Hierarchy`  |  –                                                             |  <ul><li>Hierarki Tabel</li><li>Tata Letak Arsitektur</li></ul> |
|  `Relationship`  |  <ul><li>Keseimbangan</li><li>Corong</li><li>Gigi</li><li>Plus Dan Minusnya</li><li>Pita Panah</li><li>Panah Penyeimbang</li><li>Menentang Panah</li><li>Target Bersarang</li><li>Sasaran Dasar</li><li>Pai Dasar</li><li>Venn Dasar</li><li>Venn bertumpuk</li><li>Cincin yang Saling Berhubungan</li></ul> |  <ul><li>Hubungan Lingkaran</li><li>Gagasan yang Bertentangan</li><li>Persamaan</li><li>Persamaan Vertikal</li><li>Venn Linier</li></ul> |
|  `Matrix`  |  <ul><li>Matriks Dasar</li><li>Berjudul Matriks</li><li>Matriks Kotak</li><li>Matriks Siklus</li></ul> |  –                                                             |
|  `Pyramid`  |  –                                                             |  <ul><li>Piramida Tersegmentasi</li></ul> |

## Perbandingan SmartArt Rendering di Aspose.Words dan Microsoft

Tabel di bawah ini menunjukkan contoh gambar Aspose.Words Cold Rendering dari beberapa tata letak standar dibandingkan dengan keluaran Microsoft Word:

|                                 |   **Aspose.Words**                                              |   **Microsoft Word**                                            |
|  -----------------------------  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|   **Basic Process**              |  <img src="/words/net/working-with-smartart-cold-rendering/basic-process-aspose.png" alt="basic_process_aspose"/> |  <img src="/words/net/working-with-smartart-cold-rendering/basic-process-word.png" alt="kata_proses_dasar"/> |
|   **Circular Bending Process**   |  <img src="/words/net/working-with-smartart-cold-rendering/circular-bending-process-aspose.png" alt="melingkar_bending_proses_aspose"/> |  <img src="/words/net/working-with-smartart-cold-rendering/circular-bending-process-word.png" alt="kata_proses_pembengkokan_melingkar"/> |
|   **Repeating Bending Process**  |  <img src="/words/net/working-with-smartart-cold-rendering/repearing-bending-process-aspose.png" alt="mengulangi_bending_proses_aspose"/> |  <img src="/words/net/working-with-smartart-cold-rendering/repearing-bending-process-word.png" alt="mengulangi_bending_proses_kata"/> |
|   **Trapezoid List**             |  <img src="/words/net/working-with-smartart-cold-rendering/trapezoid-list-aspose.png" alt="trapezoid_list_aspose"/> |  <img src="/words/net/working-with-smartart-cold-rendering/trapezoid-list-word.png" alt="trapesium_daftar_kata"/> |
