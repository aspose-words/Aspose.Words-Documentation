---
title: Cara Membuat Tabel dari `DataTable` di C#
second_title: Aspose.Words untuk .NET
articleTitle: Buat Tabel dari `DataTable`
linktitle: Buat Tabel dari `DataTable`
description: "Contoh pengisian tabel dokumen dari database eksternal menggunakan C#."
type: docs
weight: 120
url: /id/net/how-to-build-a-table-from-a-datatable/
---

Seringkali aplikasi Anda mengambil data dari database dan menyimpannya dalam bentuk **DataTable**. Anda dapat dengan mudah memasukkan data ini ke dalam dokumen Anda sebagai tabel baru dan dengan cepat menerapkan pemformatan ke seluruh tabel.

{{% alert color="primary" %}}

Perhatikan bahwa cara yang lebih disukai untuk memasukkan data dari **DataTable** ke dalam tabel dokumen adalah dengan menggunakan [Mail Merge dengan Wilayah](https://docs.aspose.com/words/net/types-of-mail-merge-operations/#mail-merge-with-regions). Teknik yang disajikan dalam artikel ini hanya disarankan jika Anda tidak dapat membuat template yang sesuai sebelumnya untuk menggabungkan data, dengan kata lain jika Anda memerlukan semuanya terjadi secara terprogram.

{{% /alert %}}

Dengan menggunakan Aspose.Words, Anda dapat dengan mudah mengambil data dari database dan menyimpannya sebagai tabel:

1. Buat objek **DocumentBuilder** baru di **Document** Anda.
1. Mulai tabel baru menggunakan **DocumentBuilder**.
1. Jika kita ingin menyisipkan nama masing-masing kolom dari **DataTable** kita sebagai baris header, maka lakukan iterasi pada setiap kolom data dan tuliskan nama kolom tersebut ke dalam satu baris dalam tabel.
1. Ulangi setiap **DataRow** di **DataTable**:
   1. Ulangi setiap objek di **DataRow**.
   1. Masukkan objek ke dalam dokumen menggunakan **DocumentBuilder**. Metode yang digunakan tergantung pada jenis objek yang dimasukkan misalnya **DocumentBuilder.Writeln** untuk teks dan **DocumentBuilder.InsertImage** untuk array byte yang mewakili suatu gambar.
   1. Di akhir pemrosesan **DataRow**, akhiri juga baris yang dibuat oleh **DocumentBuilder** dengan menggunakan **DocumentBuilder.EndRow**.
1. Setelah semua baris dari **DataTable** diproses, selesaikan tabel dengan memanggil **DocumentBuilder.EndTable**.
1. Terakhir, kita dapat mengatur gaya tabel yang diinginkan menggunakan salah satu properti tabel yang sesuai seperti **Table.StyleIdentifier** untuk secara otomatis menerapkan pemformatan ke seluruh tabel.

Metode **ImportTableFromDataTable** menerima objek **DocumentBuilder**, **DataTable** yang berisi data dan tanda yang menentukan apakah judul kolom dari **DataTable** disertakan di bagian atas tabel. Metode ini membuat tabel dari parameter ini menggunakan posisi dan format pembuat saat ini. Menyediakan metode untuk mengimpor data dari `DataTable` dan memasukkannya ke dalam tabel baru menggunakan DocumentBuilder.

Data berikut di **DataTable** kami digunakan dalam contoh ini:

![how-to-build-a-table-from-a-datatable-aspose-words-net](/words/net/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-1.png)

Contoh kode berikut menunjukkan cara menjalankan algoritma di atas di Aspose.Words:

{{< gist "aspose-words-gists" "affb937d8f345f60e6a506e1da3db9fa" "import-table-from-data-table.cs" >}}

Metode ini kemudian dapat dengan mudah dipanggil menggunakan **DocumentBuilder** dan data Anda.

Contoh kode berikut menunjukkan cara mengimpor data dari `DataTable` dan menyisipkannya ke tabel baru di dokumen:

{{< gist "aspose-words-gists" "affb937d8f345f60e6a506e1da3db9fa" "build-table-from-data-table.cs" >}}
