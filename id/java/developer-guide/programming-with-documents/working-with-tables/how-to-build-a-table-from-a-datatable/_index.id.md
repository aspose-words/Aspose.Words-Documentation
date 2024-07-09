---
title: Cara Membangun Tabel dari `DataTable` Sitemap Java
second_title: Aspose.Words Sitemap Java
articleTitle: Bangun Tabel dari `DataTable`
linktitle: Bangun Tabel dari `DataTable`
description: "Contoh mengisi tabel dokumen dari database eksternal menggunakan JavaSitemap"
type: docs
weight: 130
url: /id/java/how-to-build-a-table-from-a-datatable/
---

Sering aplikasi Anda akan menarik data dari database dan menyimpannya dalam bentuk **DataTable**Sitemap Anda mungkin ingin dengan mudah memasukkan data ini ke dalam dokumen Anda sebagai tabel baru dan dengan cepat menerapkan format ke seluruh tabel.

{{% alert color="primary" %}}

Perhatikan bahwa cara yang disukai memasukkan data dari **DataTable** ke dalam tabel dokumen dengan menggunakan [Mail Merge Login](/words/java/mail-merge-and-reporting/#aboutmailmerge-mailmergewithregionsexplained)Sitemap Teknik yang disajikan dalam artikel ini hanya disarankan jika Anda tidak bisa membuat template yang cocok untuk menggabungkan data dengan, dengan kata lain, jika Anda memerlukan segala sesuatu untuk terjadi secara programtik.

{{% /alert %}}

Sitemap Aspose.Words, Anda dapat dengan mudah mengambil data dari database dan menyimpannya sebagai tabel:

Sitemap Buat baru [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) Sitemap [Document](https://reference.aspose.com/words/java/com.aspose.words/document/)Sitemap
Sitemap Mulai meja baru menggunakan [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)Sitemap
Sitemap Jika kita ingin memasukkan nama masing-masing kolom dari kita **DataTable** sebagai baris header kemudian iterate melalui setiap kolom data dan menulis nama kolom ke dalam baris di meja.
Sitemap Sitemap **DataRow** Sitemap **DataTable**Sitemap
   1. Inierate melalui setiap objek di Meme it **DataRow**Sitemap
   1. Masukkan objek ke dalam dokumen menggunakan [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)Sitemap Metode yang digunakan tergantung pada jenis objek yang dimasukkan misalnya [DocumentBuilder.writeln()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln()) untuk teks dan [DocumentBuilder.insertImage()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage(byte[])) untuk array byte yang mewakili gambar.
   1. Pada akhir pemrosesan baris data juga berakhir baris yang diciptakan oleh [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder) dengan menggunakan [DocumentBuilder.endRow()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow)Sitemap
Sitemap Setelah semua baris dari Meme it **DataTable** telah diproses selesai tabel dengan memanggil [DocumentBuilder.endTable()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable)Sitemap
Sitemap Akhirnya, kami dapat mengatur gaya meja yang diinginkan menggunakan salah satu properti meja yang sesuai seperti [Table.getStyleIdentifier()](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getStyleIdentifier) untuk secara otomatis menerapkan format ke seluruh tabel.
   Data berikut **DataTable** digunakan dalam contoh ini:

![build-a-table-from-a-datatable-aspose-words-java-1](/words/java/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-1.png)

Contoh kode berikut menunjukkan cara mengeksekusi algoritma di atas Aspose.WordsSitemap

{{< gist "aspose-words-gists" "b5330afb035e842063be7ce93cefe219" "import-table-from-data-table.java" >}}

Metode kemudian dapat dengan mudah disebut menggunakan Anda **DocumentBuilder** Sitemap

Contoh kode berikut menunjukkan cara mengimpor data dari `DataTable` dan masukkan ke dalam tabel baru dalam dokumen:

{{< gist "aspose-words-gists" "b5330afb035e842063be7ce93cefe219" "build-table-from-data-table.java" >}}

Tabel yang ditunjukkan pada gambar di bawah ini diproduksi dengan menjalankan kode di atas.

![build-a-table-from-a-datatable-aspose-words-java-2](/words/java/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-2.png)
