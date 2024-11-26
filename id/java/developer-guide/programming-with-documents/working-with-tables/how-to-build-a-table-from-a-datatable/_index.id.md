---
title: Cara Membuat Tabel dari DataTable dalam Java
second_title: Aspose.Words untuk Java
articleTitle: Buat Tabel dari DataTable
linktitle: Buat Tabel dari DataTable
description: "Contoh pengisian tabel dokumen dari database eksternal menggunakan Java."
type: docs
weight: 130
url: /id/java/how-to-build-a-table-from-a-datatable/
timestamp: 2024-01-27-14-07-04
---

Seringkali aplikasi Anda akan menarik data dari database dan menyimpannya dalam bentuk **DataTable**. Anda mungkin ingin memasukkan data ini dengan mudah ke dalam dokumen Anda sebagai tabel baru dan dengan cepat menerapkan pemformatan ke seluruh tabel.

{{% alert color="primary" %}}

Perhatikan bahwa cara yang disukai untuk memasukkan data dari **DataTable** ke dalam tabel dokumen adalah dengan menggunakan [Mail Merge dengan Wilayah](/words/java/mail-merge-and-reporting/#aboutmailmerge-mailmergewithregionsexplained). Teknik yang disajikan dalam artikel ini hanya disarankan jika Anda tidak dapat membuat templat yang sesuai sebelumnya untuk menggabungkan data, dengan kata lain, jika Anda mengharuskan semuanya terjadi secara terprogram.

{{% /alert %}}

Menggunakan Aspose.Words, Anda dapat dengan mudah mengambil data dari database dan menyimpannya sebagai tabel:

1. Buat objek [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) baru pada [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) Anda.
1. Mulai tabel baru menggunakan [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/).
1. Jika kita ingin menyisipkan nama masing-masing kolom dari **DataTable** kita sebagai baris header, ulangi setiap kolom data dan tulis nama kolom ke dalam satu baris dalam tabel.
1. Iterate melalui setiap **DataRow** dalam **DataTable**:
   1. Iterate melalui setiap objek dalam **DataRow**.
   1. Sisipkan objek ke dalam dokumen menggunakan [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/). Metode yang digunakan bergantung pada jenis objek yang disisipkan, mis. [DocumentBuilder.writeln()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln()) untuk teks dan [DocumentBuilder.insertImage()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage(byte[])) untuk array byte yang mewakili gambar.
   1. Pada akhir pemrosesan baris data, akhiri juga baris yang dibuat oleh [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder) dengan menggunakan [DocumentBuilder.endRow()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow).
1. Setelah semua baris dari **DataTable** diproses, selesaikan tabel dengan memanggil [DocumentBuilder.endTable()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable).
1. Terakhir, kita dapat mengatur gaya tabel yang diinginkan menggunakan salah satu properti tabel yang sesuai seperti [Table.getStyleIdentifier()](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getStyleIdentifier) untuk menerapkan pemformatan secara otomatis ke seluruh tabel.
   Data berikut dalam **DataTable** kita digunakan dalam contoh ini:

![build-a-table-from-a-datatable-aspose-words-java-1](/words/java/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-1.png)

Contoh kode berikut menunjukkan cara menjalankan algoritme di atas dalam Aspose.Words:

{{< gist "aspose-words-gists" "b5330afb035e842063be7ce93cefe219" "import-table-from-data-table.java" >}}

Metode ini kemudian dapat dengan mudah dipanggil menggunakan **DocumentBuilder** dan data Anda.

Contoh kode berikut menunjukkan cara mengimpor data dari `DataTable` dan memasukkannya ke dalam tabel baru di dokumen:

{{< gist "aspose-words-gists" "b5330afb035e842063be7ce93cefe219" "build-table-from-data-table.java" >}}

Tabel yang ditunjukkan pada gambar di bawah ini dibuat dengan menjalankan kode di atas.

![build-a-table-from-a-datatable-aspose-words-java-2](/words/java/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-2.png)
