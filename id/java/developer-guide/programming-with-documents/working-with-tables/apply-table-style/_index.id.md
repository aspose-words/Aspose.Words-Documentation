---
title: Bekerja dengan Gaya Tabel di Java
second_title: Aspose.Words untuk Java
articleTitle: Terapkan Gaya Tabel
linktitle: Terapkan Gaya Tabel
description: "Pemformatan tabel lanjutan Java. Buat gaya tabel menggunakan Java. Pengantar pemformatan tabel lanjutan, Gaya tabel menggunakan Java."
type: docs
weight: 80
url: /id/java/working-with-tablestyle/
timestamp: 2024-01-27-14-07-04
---

Gaya tabel mendefinisikan serangkaian pemformatan yang dapat dengan mudah diterapkan ke tabel. Pemformatan seperti batas, bayangan, perataan, dan font dapat diatur dalam gaya tabel dan diterapkan ke banyak tabel untuk tampilan yang konsisten.

Aspose.Words mendukung penerapan gaya tabel ke tabel dan juga membaca properti gaya tabel apa pun. Gaya tabel dipertahankan selama pemuatan dan penyimpanan dengan cara berikut:

- Gaya tabel dalam format DOCX dan WordML dipertahankan saat memuat dan menyimpan ke format ini
- Gaya tabel dipertahankan saat memuat dan menyimpan dalam format DOC (tetapi tidak ke format lain)
- Saat mengekspor ke format lain, merender, atau mencetak, gaya tabel diperluas ke pemformatan langsung dalam tabel, sehingga semua pemformatan dipertahankan

## Buat Gaya Tabel

Pengguna dapat membuat gaya baru dan menambahkannya ke koleksi gaya. Metode [Add](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) digunakan untuk membuat gaya tabel baru.

Contoh kode berikut menunjukkan cara membuat gaya tabel baru yang ditentukan pengguna:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "create-table-style.java" >}}

## Salin Gaya Tabel yang Ada

Jika perlu, Anda dapat menyalin gaya tabel yang sudah ada di dokumen tertentu ke dalam koleksi gaya Anda menggunakan metode `AddCopy`.

Penting untuk diketahui bahwa dengan penyalinan ini, gaya tertaut juga disalin.

Contoh kode berikut menunjukkan cara mengimpor gaya dari satu dokumen ke dokumen lain:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "copy-style-different-document.java" >}}

## Terapkan Gaya Tabel yang Ada

Aspose.Words menyediakan [TableStyle](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/) yang diwarisi dari kelas [Style](https://reference.aspose.com/words/java/com.aspose.words/style/). **TableStyle** memudahkan pengguna untuk menerapkan opsi gaya yang berbeda seperti shading, padding, indentasi, [CellSpacing](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getCellSpacing) dan [Font](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getFont), dll.

Selain itu, Aspose.Words menyediakan kelas [StyleCollection](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) dan beberapa properti dari kelas `Table` untuk menentukan gaya tabel mana yang akan kita kerjakan: [Style](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyle), [StyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/table/#setStyleIdentifier-int), [StyleName](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyleName), dan [StyleOptions](https://reference.aspose.com/words/java/com.aspose.words/table/#setStyleOptions-int).

Aspose.Words juga menyediakan kelas [ConditionalStyle](https://reference.aspose.com/words/java/com.aspose.words/conditionalstyle/) yang mewakili pemformatan khusus yang diterapkan ke beberapa area tabel dengan gaya tabel yang ditetapkan, dan [ConditionalStyleCollection](https://reference.aspose.com/words/java/com.aspose.words/conditionalstylecollection/) yang mewakili kumpulan objek **ConditionalStyle**. Koleksi ini berisi kumpulan item permanen yang mewakili satu item untuk setiap nilai dari tipe enumerasi [ConditionalStyleType](https://reference.aspose.com/words/java/com.aspose.words/conditionalstyletype/). Pencacahan **ConditionalStyleType** mendefinisikan semua area tabel yang memungkinkan pemformatan bersyarat dapat didefinisikan dalam gaya tabel.

Dalam hal ini, pemformatan bersyarat dapat didefinisikan untuk semua kemungkinan area tabel yang didefinisikan di bawah tipe enumerasi ConditionalStyleType.

Contoh kode berikut menunjukkan cara menentukan pemformatan bersyarat untuk baris header tabel:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "define-conditional-formatting.java" >}}

Anda juga dapat memilih bagian tabel mana yang akan menerapkan gaya, seperti kolom pertama, kolom terakhir, baris berpita. Mereka terdaftar dalam pencacahan [TableStyleOptions](https://reference.aspose.com/words/java/com.aspose.words/tablestyleoptions/) dan diterapkan melalui properti [StyleOptions](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyleOptions). Pencacahan **TableStyleOptions** memungkinkan kombinasi bitwise dari fitur-fitur ini.

Contoh kode berikut menunjukkan cara membuat tabel baru dengan gaya tabel yang diterapkan:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "build-table-with-style.java" >}}

Gambar-gambar di bawah ini menunjukkan representasi dari **Table Styles** dalam Microsoft Word dan properti yang sesuai dalam Aspose.Words.

![table-style-aspose-words-java](/words/java/working-with-tablestyle/working-with-table-styles-1.png)

## Ambil Pemformatan dari Gaya Tabel dan Terapkan sebagai Pemformatan Langsung

Aspose.Words juga menyediakan metode [ExpandTableStylesToDirectFormatting](https://reference.aspose.com/words/java/com.aspose.words/document/#expandTableStylesToDirectFormatting) untuk mengambil pemformatan yang ditemukan pada gaya tabel dan memperluasnya ke baris dan sel tabel sebagai pemformatan langsung. Coba gabungkan pemformatan dengan gaya tabel dan gaya sel.

{{% alert color="primary" %}}

Metode ini tidak akan mengesampingkan pemformatan lain yang sudah diterapkan ke tabel melalui format baris atau sel.

{{% /alert %}}

Contoh kode berikut menunjukkan cara memperluas pemformatan dari gaya ke baris tabel dan sel sebagai pemformatan langsung:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "expand-formatting-on-cells-and-row-from-style.java" >}}
