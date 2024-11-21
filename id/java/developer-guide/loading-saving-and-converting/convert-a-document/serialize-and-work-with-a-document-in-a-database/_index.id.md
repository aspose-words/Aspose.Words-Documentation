---
title: Serialisasi dan Bekerja dengan Dokumen di Database
second_title: Aspose.Words Sitemap Java
articleTitle: Serialisasi dan Bekerja dengan Dokumen di Database
linktitle: Serialisasi dan Bekerja dengan Dokumen di Database
description: "Konversi dokumen menjadi array byte untuk bekerja dengan dokumen ini dalam database. Anda dapat menyimpan dan mengambil dokumen ke dan dari database menggunakan JavaSitemap"
type: docs
weight: 40
url: /id/java/serialize-and-work-with-a-document-in-a-database/
timestamp: 2024-01-27-14-07-04
---

Salah satu tugas yang dapat Anda lakukan ketika bekerja dengan dokumen disimpan dan pengambilan **Document** objek dan dari database. Misalnya, ini akan diperlukan jika Anda menerapkan jenis sistem manajemen konten. Semua versi dokumen sebelumnya harus disimpan dalam sistem database. Kemampuan untuk menyimpan dokumen di database juga sangat berguna ketika aplikasi Anda memberikan layanan berbasis web.

Aspose.Words memberikan kemampuan untuk mengubah dokumen menjadi array byte untuk pekerjaan berikutnya dengan dokumen ini dalam database.

## Mengkonversi Dokumen ke Byte Array

Untuk menyimpan dokumen dalam database atau mempersiapkan dokumen untuk transmisi di seluruh web, seringkali diperlukan untuk menemani dokumen untuk mendapatkan array byte.

Untuk serialisasi [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) Sitemap Aspose.WordsSitemap

Sitemap Simpan ke **MemoryStream** menggunakan [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-int) metode kelebihan beban **Document** Sitemap
Sitemap Sitemap **ToArray** metode, yang mengembalikan array byte mewakili dokumen dalam bentuk byte.

Langkah di atas kemudian dapat terbalik untuk memuat byte kembali ke **Document** Sitemap

{{% alert color="primary" %}}

Format hemat yang dipilih penting untuk memastikan kesetiaan tertinggi dipertahankan ketika menyimpan dan mengisi ulang ke dalam **Document** Sitemap Untuk alasan ini, disarankan untuk menggunakan serangkaian format file OOXML.

{{% /alert %}}

Contoh di bawah ini menunjukkan cara serialisasi **Document** objek untuk mendapatkan array byte, dan kemudian bagaimana cara mengorganisir array byte untuk mendapatkan **Document** Sitemap

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToByte-ConvertDocumentToByte.java" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file template dari contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc)Sitemap

{{% /alert %}}

## Simpan, Baca dan Hapus Dokumen di Database

Bagian ini menunjukkan cara menyimpan dokumen dalam database dan kemudian memuatnya kembali ke `Document` objek untuk bekerja dengan itu. Untuk kesederhanaan, nama file adalah kunci yang digunakan untuk menyimpan dan mengambil dokumen dari database. Database berisi dua kolom. Kolom pertama "FileName" disimpan sebagai String dan digunakan untuk mengidentifikasi dokumen. Kolom kedua "FileContent" disimpan sebagai `BLOB` objek yang menyimpan objek dokumen dalam bentuk byte.

Contoh kode berikut menunjukkan cara mengatur koneksi ke database dan melaksanakan perintah:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-OpenDatabaseConnection.java" >}}

{{% alert color="primary" %}}

Dalam contoh ini, kita menggunakan database MySQL untuk menyimpan database MySQL Aspose.Words Sitemap

{{% /alert %}}

Contoh kode berikut menunjukkan cara menyimpan dokumen ke database, kemudian membaca dokumen yang sama lagi, dan akhirnya menghapus catatan yang berisi dokumen dari database:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-OpenRetrieveAndDelete.java" >}}

### Simpan Dokumen ke Database

Untuk menyimpan dokumen dalam database mengkonversi dokumen ini ke array byte, seperti yang dijelaskan pada awal artikel ini. Kemudian, simpan array byte ini ke bidang database.

Contoh kode berikut menunjukkan cara menyimpan dokumen ke database yang ditentukan:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-StoreToDatabase.java" >}}

Tentukan perintahString, yang merupakan ekspresi SQL yang melakukan semua pekerjaan:

- Login Untuk menyimpan dokumen ke database, perintah "INSERT INTO" digunakan dan tabel yang ditentukan bersama dengan nilai-nilai dua bidang catatan - FileName dan FileContent. Untuk menghindari parameter tambahan, nama file diambil dari **Document** Sitemap Login `FileContent` nilai lapangan ditetapkan oleh byte dari aliran memori, yang berisi representasi biner dokumen yang tersimpan.
- Login Garis kode yang tersisa mengeksekusi perintah yang menyimpan Aspose.Words database.

### Database

Untuk mengambil dokumen dari database, pilih catatan yang berisi data dokumen sebagai array byte. Kemudian memuat array byte dari rekor ke **MemoryStream** dan menciptakan **Document** objek yang akan memuat dokumen dari **MemoryStream**Sitemap

Contoh kode berikut menunjukkan cara mengambil dan mengembalikan dokumen dari database yang ditentukan menggunakan nama file sebagai kunci untuk mengambil dokumen ini:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-ReadFromDatabase.java" >}}

{{% alert color="primary" %}}

Perintah SQL "SELECT * DARI" digunakan untuk mengambil catatan yang sesuai berdasarkan nama file.

{{% /alert %}}

### Hapus Dokumen dari Database

Untuk menghapus dokumen dari database, gunakan perintah SQL yang sesuai tanpa manipulasi pada **Document** Sitemap

Contoh kode berikut menunjukkan bagaimana menghapus dokumen dari database, menggunakan nama file untuk mengambil catatan:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-DeleteFromDatabase.java" >}}
