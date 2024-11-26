---
title: Bekerja dengan Gaya Meja di Java
second_title: Aspose.Words Sitemap Java
articleTitle: Terapkan Gaya Meja
linktitle: Terapkan Gaya Meja
description: "Format tabel lanjutan JavaSitemap Buat gaya meja menggunakan JavaSitemap Pengantar format meja canggih, gaya meja menggunakan JavaSitemap"
type: docs
weight: 80
url: /id/java/working-with-tablestyle/
timestamp: 2024-01-27-14-07-04
---

Gaya meja mendefinisikan satu set format yang dapat dengan mudah diterapkan ke meja. Memformat seperti perbatasan, membentuk, menyelaraskan, dan font dapat diatur dalam gaya tabel dan diterapkan ke banyak tabel untuk penampilan yang konsisten.

Aspose.Words mendukung menerapkan gaya meja ke meja dan juga membaca sifat gaya meja. Gaya tabel dipertahankan selama pemuatan dan penghematan dengan cara berikut:

- Gaya tabel dalam format DOCX dan WordML dipertahankan ketika memuat dan menyimpan ke format ini
- Gaya tabel dipertahankan ketika memuat dan menyimpan dalam format DOC (tetapi tidak ke format lain)
- Login Ketika mengekspor ke format lain, rendering atau pencetakan, gaya tabel diperluas ke format langsung di meja, sehingga semua format dipertahankan

## Buat Gaya Meja

Pengguna dapat membuat gaya baru dan menambahkannya ke koleksi gaya. Login [Add](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) metode digunakan untuk membuat gaya meja baru.

Contoh kode berikut menunjukkan cara membuat gaya tabel yang ditentukan pengguna baru:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "create-table-style.java" >}}

## Salin gaya meja yang ada

Jika perlu, Anda dapat menyalin gaya tabel yang sudah ada dalam dokumen tertentu ke dalam koleksi gaya Anda menggunakan `AddCopy` Login

Penting untuk mengetahui bahwa dengan penyalinan ini, gaya terkait juga disalin.

Contoh kode berikut menunjukkan cara mengimpor gaya dari satu dokumen ke dokumen lain:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "copy-style-different-document.java" >}}

## Menerapkan gaya tabel yang ada

Aspose.Words Sitemap [TableStyle](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/) diwariskan dari [Style](https://reference.aspose.com/words/java/com.aspose.words/style/) Sitemap **TableStyle** memfasilitasi pengguna untuk menerapkan pilihan gaya yang berbeda seperti membentuk, padding, indentasi, [CellSpacing](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getCellSpacing) Login [Font](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getFont), Sitemap

Selain itu, Aspose.Words Sitemap [StyleCollection](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) kelas dan beberapa sifat `Table` kelas untuk menentukan gaya tabel mana kita akan bekerja dengan: [Style](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyle), [StyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/table/#setStyleIdentifier-int), [StyleName](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyleName), Login [StyleOptions](https://reference.aspose.com/words/java/com.aspose.words/table/#setStyleOptions-int)Sitemap

Aspose.Words juga menyediakan [ConditionalStyle](https://reference.aspose.com/words/java/com.aspose.words/conditionalstyle/) kelas yang mewakili format khusus yang diterapkan pada beberapa area meja dengan gaya meja yang ditugaskan, dan [ConditionalStyleCollection](https://reference.aspose.com/words/java/com.aspose.words/conditionalstylecollection/) yang mewakili koleksi **ConditionalStyle** Sitemap Koleksi ini berisi set item permanen yang mewakili satu item untuk setiap nilai [ConditionalStyleType](https://reference.aspose.com/words/java/com.aspose.words/conditionalstyletype/) jenis numerasi. Login **ConditionalStyleType** enumerasi mendefinisikan semua area tabel yang memungkinkan untuk format kondisional dapat didefinisikan dalam gaya tabel.

Dalam kasus ini, format kondisional dapat didefinisikan untuk semua area tabel yang mungkin didefinisikan di bawah jenis numerasi ConditionalType.

Contoh kode berikut menunjukkan cara menentukan format kondisional untuk baris header tabel:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "define-conditional-formatting.java" >}}

Anda juga dapat memilih bagian tabel mana untuk menerapkan gaya ke, seperti kolom pertama, kolom terakhir, baris banded. Mereka terdaftar di Meme it [TableStyleOptions](https://reference.aspose.com/words/java/com.aspose.words/tablestyleoptions/) enumerasi dan diterapkan melalui [StyleOptions](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyleOptions) Login Login **TableStyleOptions** enumerasi memungkinkan kombinasi yang agak bijak dari fitur ini.

Contoh kode berikut menunjukkan cara membuat meja baru dengan gaya meja yang diterapkan:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "build-table-with-style.java" >}}

Gambar di bawah ini menunjukkan representasi dari **Table Styles** Sitemap Microsoft Word dan sifatnya yang sesuai Aspose.WordsSitemap

![table-style-aspose-words-java](/words/java/working-with-tablestyle/working-with-table-styles-1.png)

## Ambil Format dari Gaya Meja dan Terapkan sebagai Format Langsung

Aspose.Words juga menyediakan [ExpandTableStylesToDirectFormatting](https://reference.aspose.com/words/java/com.aspose.words/document/#expandTableStylesToDirectFormatting) metode untuk mengambil format yang ditemukan pada gaya tabel dan memperluasnya ke baris dan sel tabel sebagai format langsung. Coba menggabungkan format dengan gaya meja dan gaya sel.

{{% alert color="primary" %}}

Metode ini tidak akan menimpa format lain yang sudah diterapkan pada tabel melalui format baris atau sel.

{{% /alert %}}

Contoh kode berikut menunjukkan cara memperluas format dari gaya ke baris tabel dan sel sebagai format langsung:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "expand-formatting-on-cells-and-row-from-style.java" >}}
