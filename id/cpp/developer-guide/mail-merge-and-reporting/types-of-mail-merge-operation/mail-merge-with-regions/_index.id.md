---
title: Mail Merge dengan Wilayah dalam C++
second_title: Aspose.Words untuk C++
articleTitle: Mail Merge dengan Wilayah
linktitle: Mail Merge dengan Wilayah
type: docs
description: "Buat wilayah berbeda di templat Anda untuk memiliki area khusus yang dapat Anda isi dengan data Anda. Gunakan Mail Merge dengan wilayah jika Anda ingin menyisipkan tabel, baris dengan data berulang untuk membuat dokumen Anda berkembang secara dinamis."
keywords: "how to execute Mail Merge c++"
weight: 20
url: /id/cpp/mail-merge-with-regions/
timestamp: 2024-09-24-14-35-44
---

Anda dapat membuat wilayah berbeda di templat Anda untuk memiliki area khusus yang dapat Anda isi dengan data Anda. Gunakan Mail Merge dengan wilayah jika Anda ingin menyisipkan tabel, baris dengan data berulang untuk membuat dokumen Anda berkembang secara dinamis dengan menentukan wilayah tersebut di dalam templat Anda.

Anda dapat membuat wilayah bersarang (turunan) serta menggabungkan wilayah. Keuntungan utama menggunakan tipe ini adalah menambah bagian di dalam dokumen secara dinamis. Lihat detail selengkapnya di artikel berikutnya "Bersarang Mail Merge dengan Wilayah".

{{% alert color="primary" %}}

Informasi tentang wilayah Mail Merge dapat diperoleh dengan menggunakan kelas [MailMergeRegionInfo](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmergeregioninfo/).

{{% /alert %}}

## Cara Mengeksekusi Mail Merge dengan Region

Wilayah Mail Merge adalah bagian tertentu di dalam dokumen yang memiliki titik awal dan titik akhir. Kedua titik direpresentasikan sebagai bidang Mail Merge yang memiliki nama spesifik *"TableStart:XXX"* dan *"TableEnd:XXX"*. Semua konten yang disertakan dalam wilayah Mail Merge akan diulang secara otomatis untuk setiap rekaman di sumber data.

Aspose.Words memungkinkan Anda menjalankan Mail Merge dengan wilayah menggunakan salah satu metode [ExecuteWithRegions](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/executewithregions/) yang menerima sumber data khusus [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/).

Contoh kode berikut menunjukkan cara mengeksekusi Mail Merge dengan wilayah dari database sqlite dengan [SQLiteCpp](https://github.com/SRombauts/SQLiteCpp):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "nested-mail-merge.h" >}}

Anda dapat melihat perbedaan antara dokumen sebelum mengeksekusi Mail Merge dengan wilayah:

<img src="execute-mail-merge-with-regions-1.png" alt="mail_merge_with_regions_template" style="width:850px"/>

Dan setelah mengeksekusi Mail Merge dengan wilayah:

<img src="execute-mail-merge-with-regions-2.png" alt="mail_merge_with_regions_execute" style="width:850px"/>

## Batasan Mail Merge dengan Wilayah

Ada beberapa poin penting yang perlu Anda pertimbangkan saat melakukan Mail Merge dengan wilayah:

* Titik awal *TableStart:Orders* dan titik akhir *TableEnd:Orders* keduanya harus berada di baris atau sel yang sama. Misalnya, jika Anda memulai wilayah penggabungan di sel tabel, Anda harus mengakhiri wilayah penggabungan di baris yang sama dengan sel pertama.
  Nama bidang gabungan harus cocok dengan nama kolom di DataTable Anda. Kecuali Anda menentukan bidang yang dipetakan, Mail Merge dengan wilayah tidak akan berhasil untuk bidang gabungan apa pun yang memiliki nama selain nama kolom.
* Aspose.Words untuk C++ hanya mendukung sumber data berbasis [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) dan [IMailMergeDataSourceRoot](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasourceroot/). Tidak seperti .NET dan Java, C++ tidak memiliki lintas platform API yang diterima secara umum untuk bekerja dengan basis data (seperti ADODB, ODBC, atau JDBC). Untuk bekerja dengan sumber data tertentu, Anda harus mengimplementasikan antarmuka [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) atau [IMailMergeDataSourceRoot](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasourceroot/).

Jika salah satu dari aturan ini dilanggar, Anda akan mendapatkan hasil yang tidak terduga atau pengecualian dapat dilemparkan.

{{% alert color="primary" %}}

Jika Anda tidak menggunakan wilayah mail merge, maka wilayah tersebut akan serupa dengan Microsoft Word mail merge, dan seluruh konten dokumen akan diulang untuk setiap catatan di sumber data.

{{% /alert %}}

