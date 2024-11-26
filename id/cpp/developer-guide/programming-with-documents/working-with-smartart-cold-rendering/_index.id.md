---
title: Bekerja dengan Rendering Dingin SmartArt di C++
second_title: Aspose.Words untuk C++
articleTitle: Bekerja dengan Rendering Dingin SmartArt
linktitle: Bekerja dengan Rendering Dingin SmartArt
type: docs
description: "Aspose.Words untuk C++ melakukan Rendering Dingin SmartArt, artinya ia menjabarkan dan merender objek SmartArt jika gambar SmartArt yang dirender sebelumnya hilang atau salah."
weight: 330
url: /id/cpp/working-with-smartart-cold-rendering/
timestamp: 2024-01-27-14-07-04
---

SmartArt grafik digunakan untuk membuat representasi visual informasi dengan cepat dan mudah. Anda cukup memilih dari sejumlah besar tata letak yang paling sesuai dengan situasi Anda. Kemudahan penggunaan ini membuat grafik SmartArt cukup populer untuk beberapa tujuan.

Microsoft Word menghasilkan dan menyimpan gambar yang telah dirender sebelumnya bersama dengan objek `SmartArt`. Dalam kebanyakan kasus, gambar yang dirender sebelumnya dirender dengan baik oleh Aspose.Words dan tidak diperlukan tindakan tambahan. Namun, jika dokumen disimpan oleh aplikasi lain, gambar SmartArt yang telah dirender sebelumnya mungkin hilang atau salah. Dalam hal ini, objek `SmartArt` itu sendiri harus ditata dan dirender menggunakan Aspose.Words. Kami menyebut proses ini sebagai Rendering Dingin `SmartArt`.

## Menggunakan SmartArt Rendering Dingin

Aspose.Words memungkinkan Anda menggunakan gambar yang telah dirender sebelumnya atau melakukan rendering dingin:

* Jika gambar yang dirender sebelumnya tersedia, Aspose.Words menggunakannya untuk merender objek `SmartArt`.
* Jika gambar yang dirender sebelumnya tidak ada, Aspose.Words secara implisit melakukan rendering dingin untuk merender objek `SmartArt`.
* Jika ada gambar yang dirender sebelumnya tetapi salah, gambar tersebut harus melakukan rendering dingin SmartArt secara eksplisit dengan memanggil metode [UpdateSmartArtDrawing](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/updatesmartartdrawing/).

Contoh kode berikut menunjukkan cara memperbarui gambar untuk semua diagram dalam dokumen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-UpdateSmartArtDrawing.cpp" >}}

## Dukungan untuk Tata Letak SmartArt Standar

Saat ini, hanya tata letak standar Microsoft Word SmartArt dalam jumlah terbatas yang didukung. Selain itu, beberapa tata letak ini didukung sebagian, artinya simpul dan bentuk diagram yang signifikan dirender, tetapi mungkin ada perbedaan antara tata letak diagram Microsoft Word dan Aspose.Words.

Tabel di bawah ini mencantumkan tata letak yang didukung sepenuhnya dan sebagian:

| SmartArt Grup Tata Letak | Tata letak yang didukung penuh | Tata letak yang didukung sebagian |
| ---------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| `List` | <ul><li>Daftar Blok Dasar</li><li>Segi Enam Bergantian</li><li>Daftar Peluru Vertikal</li><li>Daftar Kotak Vertikal</li><li>Daftar Lebar yang Bervariasi</li><li>Daftar Peluru Horizontal</li><li>Daftar yang Dikelompokkan</li><li>Daftar Blok Vertikal</li><li>Daftar Chevron Vertikal</li><li>Daftar Panah Vertikal</li><li>Daftar Trapesium</li><li>Daftar Tabel</li><li>Daftar Piramida</li><li>Daftar Target</li></ul> | <ul><li>Daftar Berjajar</li><li>Daftar Braket Vertikal</li><li>Daftar Tab</li><li>Daftar Bertumpuk</li><li>Daftar Aksen Vertikal</li><li>Daftar Lingkaran Vertikal</li></ul> |
| `Process` | <ul><li>Proses Dasar</li><li>Proses Aksen</li><li>Proses Blok Berkelanjutan</li><li>Meningkatkan Proses Panah</li><li>Teks Konvergen</li><li>Garis Waktu Dasar</li><li>Proses Dasar Chevron</li><li>Proses Aksen Chevron</li><li>Proses Chevron Tertutup</li><li>Daftar Chevron</li><li>Proses Vertikal</li><li>Proses Terhuyung-huyung</li><li>Daftar Proses</li><li>Proses Pembengkokan Dasar</li><li>Mengulangi Proses Pembengkokan</li><li>Proses Terperinci</li><li>Panah ke Atas</li><li>Proses Menurun</li><li>Proses Pembengkokan Melingkar</li></ul> | <ul><li>Meningkatkan Proses</li><li>Proses Mundur</li><li>Aliran Bergantian</li><li>Meningkatkan Proses Lingkaran</li><li>Pie Proses</li><li>Proses Blok yang Saling Berhubungan</li><li>Proses Panah</li><li>Garis Waktu Aksen Lingkaran</li><li>Proses Lingkaran</li><li>Proses Sub Langkah</li><li>Proses bertahap</li><li>Proses Acak ke Hasil</li><li>Proses Panah Lingkaran</li></ul> |
| `Cycle` |  | <ul><li>Siklus Tersegmentasi</li><li>Hexagon Radial</li></ul> |
| `Hierarchy` |  | <ul><li>Hierarki Tabel</li><li>Tata Letak Arsitektur</li></ul> |
| `Relationship` | <ul><li>Saldo</li><li>Corong</li><li>Perlengkapan</li><li>Plus dan minus</li><li>Arrow Ribbon</li><li>Panah Penyeimbang</li><li>Panah yang Berlawanan</li><li>Target Bersarang</li><li>Target Dasar</li><li>Dasar Pie</li><li>Venn Dasar</li><li>Venn Bertumpuk</li><li>Cincin yang Saling Berhubungan</li></ul> | <ul><li>Hubungan Lingkaran</li><li>Menentang Gagasan</li><li>Persamaan</li><li>Persamaan Vertikal</li><li>Venn Linier</li></ul> |
| `Matrix` | <ul><li>Matriks Dasar</li><li>Berjudul Matrix</li><li>Matriks Kisi</li><li>Matriks Siklus</li></ul> |  |
| `Pyramid` |  | <ul><li>Piramida Tersegmentasi</li></ul> |

## Perbandingan Rendering SmartArt dalam Aspose.Words dan Microsoft

Tabel di bawah ini menunjukkan contoh gambar Rendering Dingin Aspose.Words dari beberapa tata letak standar dibandingkan dengan keluaran Microsoft Word:

|  | **Aspose.Words** | **Microsoft Word** |
| ----------------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| **Basic Process** | <img src="basic-process-aspose.png" alt="basic_process_aspose"/> | <img src="basic-process-word.png" alt="basic_process_word"/> |
| **Circular Bending Process** | <img src="circular-bending-process-aspose.png" alt="circular_bending_process_aspose"/> | <img src="circular-bending-process-word.png" alt="circular_bending_process_word"/> |
| **Repeating Bending Process** | <img src="repearing-bending-process-aspose.png" alt="repearing_bending_process_aspose"/> | <img src="repearing-bending-process-word.png" alt="repearing_bending_process_word"/> |
| **Trapezoid List** | <img src="trapezoid-list-aspose.png" alt="trapezoid_list_aspose"/> | <img src="trapezoid-list-word.png" alt="trapezoid_list_word"/> |
