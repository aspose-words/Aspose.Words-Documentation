---
title: Membuat Serial dan Bekerja dengan Dokumen dalam Database
second_title: Aspose.Words untuk Java
articleTitle: Membuat Serial dan Bekerja dengan Dokumen dalam Database
linktitle: Membuat Serial dan Bekerja dengan Dokumen dalam Database
description: "Konversikan dokumen menjadi larik byte untuk bekerja dengan dokumen ini dalam database. Anda dapat menyimpan dan mengambil dokumen ke dan dari database menggunakan Java."
type: docs
weight: 40
url: /id/java/serialize-and-work-with-a-document-in-a-database/
timestamp: 2024-01-27-14-07-04
---

Salah satu tugas yang mungkin perlu Anda selesaikan saat bekerja dengan dokumen adalah menyimpan dan mengambil objek **Document** ke dan dari database. Misalnya, ini akan diperlukan jika Anda menerapkan semua jenis sistem manajemen konten. Semua versi dokumen sebelumnya harus disimpan dalam sistem basis data. Kemampuan untuk menyimpan dokumen dalam database juga sangat berguna ketika aplikasi Anda menyediakan layanan berbasis web.

Aspose.Words menyediakan kemampuan untuk mengonversi dokumen menjadi larik byte untuk pekerjaan selanjutnya dengan dokumen ini dalam database.

## Konversikan Dokumen menjadi Array Byte

Untuk menyimpan dokumen dalam database atau menyiapkan dokumen untuk dikirim ke seluruh web, seringkali dokumen perlu diserialkan untuk mendapatkan larik byte.

Untuk membuat serial objek [Document](https://reference.aspose.com/words/java/com.aspose.words/document/)dalam Aspose.Words:

1. Simpan ke **MemoryStream** menggunakan kelebihan metode [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-int) dari kelas **Document**.
1. Panggil metode **ToArray**, yang mengembalikan larik byte yang mewakili dokumen dalam bentuk byte.

Langkah-langkah di atas kemudian dapat dibalik untuk memuat byte kembali ke objek **Document**.

{{% alert color="primary" %}}

Format penyimpanan yang dipilih penting untuk memastikan kesetiaan tertinggi dipertahankan saat menyimpan dan memuat ulang ke objek **Document**. Untuk alasan ini, disarankan untuk menggunakan serangkaian format file OOXML.

{{% /alert %}}

Contoh di bawah ini menunjukkan cara membuat serial objek **Document** untuk mendapatkan array byte, lalu cara membatalkan serialisasi array byte untuk mendapatkan objek **Document** lagi:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToByte-ConvertDocumentToByte.java" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file templat contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## Menyimpan, Membaca, dan Menghapus Dokumen dalam Basis Data

Bagian ini menunjukkan cara menyimpan dokumen dalam database dan kemudian memuatnya kembali ke objek `Document` untuk bekerja dengannya. Untuk mempermudah, nama file adalah kunci yang digunakan untuk menyimpan dan mengambil dokumen dari database. Basis data berisi dua kolom. Kolom pertama "FileName " disimpan sebagai String dan digunakan untuk mengidentifikasi dokumen. Kolom kedua "FileContent " disimpan sebagai objek `BLOB` yang menyimpan objek dokumen dalam bentuk byte.

Contoh kode berikut menunjukkan cara mengatur koneksi ke database dan menjalankan perintah:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-OpenDatabaseConnection.java" >}}

{{% alert color="primary" %}}

Dalam contoh ini, kita menggunakan basis data MySQL untuk menyimpan dokumen Aspose.Words.

{{% /alert %}}

Contoh kode berikut menunjukkan cara menyimpan dokumen ke database, lalu membaca dokumen yang sama lagi, dan terakhir menghapus catatan yang berisi dokumen dari database:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-OpenRetrieveAndDelete.java" >}}

### Menyimpan Dokumen ke Basis Data

Untuk menyimpan dokumen dalam database, konversikan dokumen ini menjadi larik byte, seperti yang dijelaskan di awal artikel ini. Kemudian, simpan array byte ini ke dalam bidang basis data.

Contoh kode berikut menunjukkan cara menyimpan dokumen ke database yang ditentukan:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-StoreToDatabase.java" >}}

Tentukan commandString, yang merupakan ekspresi SQL yang melakukan semua pekerjaan:

- Untuk menyimpan dokumen ke dalam basis data, perintah "INSERT INTO" digunakan dan tabel ditentukan bersama dengan nilai dari dua bidang catatan - FileName dan FileContent. Untuk menghindari parameter tambahan, nama file diambil dari objek **Document** itu sendiri. Nilai bidang `FileContent` diberi byte dari aliran memori, yang berisi representasi biner dari dokumen yang disimpan.
- Baris kode yang tersisa menjalankan perintah yang menyimpan dokumen Aspose.Words dalam database.

### Mengambil Dokumen dari Database

Untuk mengambil dokumen dari database, pilih catatan yang berisi data dokumen sebagai larik byte. Kemudian muat array byte dari rekaman ke **MemoryStream** dan buat objek **Document** yang akan memuat dokumen dari **MemoryStream**.

Contoh kode berikut menunjukkan cara mengambil dan mengembalikan dokumen dari database yang ditentukan menggunakan nama file sebagai kunci untuk mengambil dokumen ini:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-ReadFromDatabase.java" >}}

{{% alert color="primary" %}}

Perintah SQL "SELECT * FROM " digunakan untuk mengambil rekaman yang sesuai berdasarkan nama file.

{{% /alert %}}

### Menghapus Dokumen dari Basis Data

Untuk menghapus dokumen dari database, gunakan perintah SQL yang sesuai tanpa manipulasi apa pun pada objek **Document**.

Contoh kode berikut menunjukkan cara menghapus dokumen dari database, menggunakan nama file untuk mengambil catatan:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-DeleteFromDatabase.java" >}}
