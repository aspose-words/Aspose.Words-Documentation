---
title: Serialisasi Dokumen dalam Database
second_title: Aspose.Words untuk .NET
articleTitle: Membuat serial dan Bekerja dengan Dokumen dalam Database
linktitle: Membuat serial dan Bekerja dengan Dokumen dalam Database
description: "Ubah dokumen menjadi array byte untuk bekerja dengan dokumen ini dalam database menggunakan C#. Anda dapat menyimpan dan mengambil dokumen ke dan dari database."
type: docs
weight: 10
url: /id/net/serialize-and-work-with-a-document-in-a-database/
timestamp: 2024-07-09-19-00-42
---

Salah satu tugas yang mungkin perlu Anda selesaikan saat bekerja dengan dokumen adalah menyimpan dan mengambil objek **Document** ke dan dari database. Misalnya, hal ini diperlukan jika Anda menerapkan sistem pengelolaan konten jenis apa pun. Semua dokumen versi sebelumnya harus disimpan dalam sistem database. Kemampuan untuk menyimpan dokumen dalam database juga sangat berguna ketika aplikasi Anda menyediakan layanan berbasis web.

Aspose.Words menyediakan kemampuan untuk mengubah dokumen menjadi array byte untuk pekerjaan selanjutnya dengan dokumen ini dalam database.

## Ubah Dokumen menjadi Byte Array

Untuk menyimpan dokumen dalam database atau untuk menyiapkan dokumen untuk transmisi melalui web, seringkali dokumen perlu dibuat bersambung untuk mendapatkan array byte.

Untuk membuat serial objek [Document](https://reference.aspose.com/words/net/aspose.words/document/) di Aspose.Words:

1. Simpan ke **MemoryStream** menggunakan metode [Save](https://reference.aspose.com/words/net/aspose.words/document/save/) yang membebani kelas **Document**.
1. Panggil metode **ToArray**, yang mengembalikan array byte yang mewakili dokumen dalam bentuk byte.

Langkah-langkah di atas kemudian dapat dibalik untuk memuat byte kembali ke objek **Document**.

{{% alert color="primary" %}}

Format penyimpanan yang dipilih penting untuk memastikan fidelitas tertinggi dipertahankan saat menyimpan dan memuat ulang ke objek **Document**. Oleh karena itu, disarankan untuk menggunakan serangkaian format file OOXML.

{{% /alert %}}

Contoh di bawah ini menunjukkan cara membuat serialisasi objek **Document** untuk mendapatkan array byte, dan kemudian cara membatalkan serialisasi array byte untuk mendapatkan objek **Document** lagi:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToByte-ConvertDocumentToByte.cs" >}}

Anda dapat mengunduh file template contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

## Simpan, Baca dan Hapus Dokumen dalam Database

Bagian ini memperlihatkan cara menyimpan dokumen dalam database dan kemudian memuatnya kembali ke objek `Document` untuk dikerjakan. Untuk mempermudah, nama file adalah kunci yang digunakan untuk menyimpan dan mengambil dokumen dari database. Basis data berisi dua kolom. Kolom pertama "Nama File" disimpan sebagai String dan digunakan untuk mengidentifikasi dokumen. Kolom kedua "FileContent" disimpan sebagai objek `BLOB` yang menyimpan objek dokumen dalam bentuk byte.

Contoh kode berikut menunjukkan cara mengatur koneksi ke database dan menjalankan perintah:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-OpenDatabaseConnection.cs" >}}

{{% alert color="primary" %}}

Dalam contoh ini, kami menggunakan database Microsoft Access .mdb untuk menyimpan dokumen Aspose.Words.

{{% /alert %}}

Contoh kode berikut menunjukkan cara menyimpan dokumen ke database, lalu membaca kembali dokumen yang sama, dan terakhir menghapus record yang berisi dokumen tersebut dari database:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-OpenRetrieveAndDelete.cs" >}}

### Simpan Dokumen ke Database

Untuk menyimpan dokumen dalam database, konversikan dokumen ini ke array byte, seperti yang dijelaskan di awal artikel ini. Kemudian, simpan array byte ini ke dalam kolom database.

Contoh kode berikut menunjukkan cara menyimpan dokumen ke database yang ditentukan:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-StoreToDatabase.cs" >}}

Tentukan commandString, yang merupakan ekspresi SQL yang melakukan semua pekerjaan:

- Untuk menyimpan dokumen ke dalam database, perintah "INSERT INTO" digunakan dan tabel ditentukan bersama dengan nilai dari dua kolom rekaman – Nama File dan Konten File. Untuk menghindari parameter tambahan, nama file diambil dari objek **Document** itu sendiri. Nilai bidang `FileContent` diberikan byte dari aliran memori, yang berisi representasi biner dari dokumen yang disimpan.
- Baris kode yang tersisa menjalankan perintah yang menyimpan dokumen Aspose.Words dalam database.

### Ambil Dokumen dari Database

Untuk mengambil dokumen dari database, pilih rekaman yang berisi data dokumen sebagai array byte. Kemudian muat array byte dari catatan ke **MemoryStream** dan buat objek **Document** yang akan memuat dokumen dari **MemoryStream**.

Contoh kode berikut menunjukkan cara mengambil dan mengembalikan dokumen dari database tertentu menggunakan nama file sebagai kunci untuk mengambil dokumen ini:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-ReadFromDatabase.cs" >}}

{{% alert color="primary" %}}

Perintah SQL "SELECT * FROM" digunakan untuk mengambil record yang sesuai berdasarkan nama file.

{{% /alert %}}

### Hapus Dokumen dari Database

Untuk menghapus dokumen dari database, gunakan perintah SQL yang sesuai tanpa manipulasi apa pun pada objek **Document**.

Contoh kode berikut menunjukkan cara menghapus dokumen dari database, menggunakan nama file untuk mengambil catatan:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-DeleteFromDatabase.cs" >}}
