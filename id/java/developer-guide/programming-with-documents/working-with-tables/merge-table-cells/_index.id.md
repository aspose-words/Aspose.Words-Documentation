---
title: Merge Table Cells di Java
second_title: Aspose.Words Sitemap Java
articleTitle: Merge Table Sel
linktitle: Merge Table Sel
description: "Bagaimana cara menggabungkan sel tabel di JavaSitemap Periksa apakah sel dalam tabel digabungkan menggunakan JavaSitemap"
type: docs
weight: 40
url: /id/java/working-with-merged-cells/
timestamp: 2024-01-27-14-07-04
---

Kadang-kadang baris tertentu dalam tabel memerlukan judul atau blok teks besar yang mengambil lebar penuh dari tabel. Untuk desain meja yang tepat, pengguna dapat menggabungkan beberapa sel meja menjadi satu. Aspose.Words mendukung sel yang digabungkan saat bekerja dengan semua format input, termasuk mengimpor konten HTML.

## Cara Merge Table Cells

Sitemap Aspose.Words, sel yang digabungkan diwakili oleh sifat-sifat berikut dari [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) kelas:

- Login [HorizontalMerge](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getHorizontalMerge) yang menggambarkan jika sel adalah bagian dari gabungan sel horisontal
- Login [VerticalMerge](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getVerticalMerge) yang menggambarkan jika sel adalah bagian dari gabungan vertikal sel

Nilai properti ini menentukan perilaku gabungan sel:

- Login Sel pertama dalam urutan sel yang digabungkan akan memiliki [CellMerge.First](https://reference.aspose.com/words/java/com.aspose.words/cellmerge/#FIRST)
- Login Setiap sel yang kemudian digabungkan akan memiliki [CellMerge.Previous](https://reference.aspose.com/words/java/com.aspose.words/cellmerge/#PREVIOUS)
- Sel yang tidak digabungkan akan memiliki [CellMerge.None](https://reference.aspose.com/words/java/com.aspose.words/cellmerge/#NONE)

![work-with-merged-cells-aspose-words-java](/words/java/working-with-merged-cells/working-with-merged-cells-1.png)

{{% alert color="primary" %}}

Kadang-kadang, ketika memuat sel dokumen yang ada di meja, mereka akan muncul digabungkan. Namun, itu sebenarnya bisa menjadi satu sel panjang - kadang-kadang Microsoft Word mengekspor sel yang digabungkan dengan cara ini. Ini dapat membingungkan ketika mencoba bekerja dengan sel-sel individu, tetapi tampaknya tidak ada pola tertentu seperti saat ini terjadi.

{{% /alert %}}

## Memeriksa jika Sel Merged

Untuk memeriksa apakah sel adalah bagian dari urutan sel yang digabungkan, kita cukup periksa **HorizontalMerge** Login **VerticalMerge** Sitemap

Contoh kode berikut menunjukkan cara mencetak tipe gabungan sel horisontal dan vertikal:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "check-cells-merged.java" >}}

## Merge Table Cells Saat Menggunakan DocumentBuilder

Untuk menggabungkan sel dalam tabel yang dibuat dengan [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/), Anda perlu mengatur jenis gabungan yang sesuai untuk setiap sel di mana merge diharapkan - pertama **CellMerge.First** dan kemudian **CellMerge.Previous**Sitemap

Juga, Anda harus ingat untuk membersihkan pengaturan merge untuk sel-sel di mana tidak ada merge diperlukan - ini dapat dilakukan dengan mengatur sel non-merge pertama untuk **CellMerge.None**Sitemap Jika ini tidak dilakukan, semua sel di meja akan digabungkan.

Contoh kode berikut menunjukkan cara membuat meja dengan dua baris di mana sel di baris pertama digabungkan secara horizontal:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "horizontal-merge.java" >}}

Contoh kode berikut menunjukkan cara membuat meja dua kolom di mana sel di kolom pertama digabungkan secara vertikal:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "vertical-merge.java" >}}

## Merge Table Cells dalam Kasus Lain

Dalam situasi lain di mana **DocumentBuilder** tidak digunakan, seperti di meja yang ada, merging sel dengan cara sebelumnya mungkin tidak semudah. Sebaliknya, kita dapat membungkus operasi dasar yang terlibat dalam menerapkan sifat merge ke sel dalam metode yang membuat tugas lebih mudah. Metode ini mirip dengan metode otomasi Merge, yang disebut untuk menggabungkan berbagai sel dalam tabel.

Kode di bawah ini akan menggabungkan sel tabel dalam kisaran yang ditentukan, dimulai pada sel yang diberikan dan berakhir pada sel akhir. Dalam kasus ini, kisaran dapat mencakup beberapa baris atau kolom:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "merge-cells.java" >}}

Contoh kode berikut menunjukkan cara menggabungkan berbagai sel antara dua sel yang ditentukan:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "merge-cell-range.java" >}}

## Sel Merged Vertikal dan Horizontal di Tabel HTML

Seperti yang kita katakan pada artikel sebelumnya, tabel di Microsoft Word adalah set baris independen. Setiap baris memiliki satu set sel yang independen dari sel-sel dari baris lain. Jadi, di Meme it Microsoft Word tabel tidak ada objek seperti "kolumn", dan " Kolom 1" adalah sesuatu seperti "set sel 1 dari setiap baris di meja". Ini memungkinkan pengguna untuk memiliki tabel di mana, misalnya, baris 1 terdiri dari dua sel - 2cm dan 1cm, dan baris 2 terdiri dari dua sel yang berbeda - 1cm dan 2cm lebar. Dan Aspose.Words mendukung konsep tabel ini.

Sebuah tabel di HTML memiliki struktur yang sangat berbeda: setiap baris memiliki jumlah sel yang sama dan ( penting untuk tugas) setiap sel memiliki lebar kolom yang sesuai, sama untuk semua sel dalam satu kolom. Sitemap **HorizontalMerge** Login **VerticalMerge** kembali nilai yang salah, gunakan contoh kode berikut:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "print-horizontal-and-vertical-merged.java" >}}

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "horizontal-and-vertical-merge-helper-classes.java" >}}

## Konversi ke Horizontally Sel Merged

Kadang-kadang tidak mungkin untuk mendeteksi sel-sel mana yang digabungkan karena beberapa versi baru dari Microsoft Word tidak lagi menggunakan bendera gabungan ketika sel digabungkan secara horizontal. Tetapi untuk situasi di mana sel digabungkan ke sel secara horizontal dengan lebar mereka menggunakan menggabungkan bendera, Aspose.Words Sitemap `ConvertToHorizontallyMergedCells` metode untuk mengkonversi sel. Metode ini cukup mengubah tabel dan menambahkan sel baru sesuai kebutuhan.

Contoh kode berikut menunjukkan metode di atas dalam operasi:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "convert-to-horizontally-merged-cells.java" >}}
