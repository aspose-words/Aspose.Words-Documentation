---
title: Jenis Operasi Mail Merge dalam Java
second_title: Aspose.Words untuk Java
articleTitle: Jenis Operasi Mail Merge
linktitle: Jenis Operasi Mail Merge
type: docs
description: "Lakukan dua jenis operasi Mail Merge yang berbeda: Mail Merge sederhana dan Mail Merge dengan wilayah. Mail Merge sederhana mengulangi seluruh dokumen per setiap catatan sumber data, sedangkan Mail Merge dengan wilayah hanya mengulangi wilayah yang ditentukan per catatan menggunakan Java."
keywords: "how to execute Mail Merge java, Mail Merge Java, Simple Mail Merge"
weight: 20
url: /id/java/types-of-mail-merge-operations/
timestamp: 2024-01-27-14-07-04
---

Gagasan utama Mail Merge adalah membuat dokumen atau beberapa dokumen secara otomatis berdasarkan templat Anda dan data yang diambil dari sumber data Anda. Aspose.Words memungkinkan Anda melakukan dua jenis operasi Mail Merge yang berbeda: Mail Merge sederhana dan Mail Merge dengan wilayah.

Contoh paling umum menggunakan Mail Merge sederhana adalah saat Anda ingin mengirim dokumen untuk klien yang berbeda dengan mencantumkan nama mereka di awal dokumen. Untuk melakukannya, Anda perlu membuat bidang gabungan seperti *First Name* dan *Last Name* di templat Anda, lalu mengisinya dengan data dari sumber data Anda. Sedangkan contoh paling umum menggunakan Mail Merge dengan wilayah adalah saat Anda ingin mengirim dokumen yang menyertakan pesanan tertentu dengan daftar semua item dalam setiap pesanan. Untuk melakukan ini, Anda perlu membuat wilayah gabungan di dalam wilayah templat Anda sendiri untuk setiap pesanan, untuk mengisinya dengan semua data yang diperlukan untuk item tersebut.

Perbedaan utama antara kedua operasi penggabungan adalah bahwa Mail Merge sederhana (tanpa wilayah) mengulangi seluruh dokumen per setiap catatan sumber data, sedangkan Mail Merge dengan wilayah hanya mengulangi wilayah yang ditentukan per catatan. Anda dapat menganggap operasi Mail Merge sederhana sebagai kasus penggabungan tertentu dengan wilayah di mana satu-satunya wilayah adalah keseluruhan dokumen.

{{% alert color="primary" %}}

Kelas [MailMerge](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/) mewakili fungsionalitas Mail Merge. Dengan propertinya, Anda dapat menyesuaikan perilaku yang diperlukan sebelum menjalankan operasi Mail Merge.

{{% /alert %}}

## Operasi Mail Merge Sederhana {#simple-mail-merge-operation}

Mail Merge sederhana digunakan untuk mengisi kolom Mail Merge di dalam templat Anda dengan data yang diperlukan dari sumber data Anda (representasi tabel tunggal). Jadi ini mirip dengan Mail Merge klasik di Microsoft Word.

Anda dapat menambahkan satu atau lebih bidang gabungan di templat Anda, lalu menjalankan operasi Mail Merge sederhana. Disarankan untuk menggunakannya jika templat Anda tidak berisi wilayah gabungan apa pun.

Batasan utama penggunaan tipe ini adalah seluruh konten dokumen akan diulang untuk setiap catatan di sumber data.

### Cara Menjalankan Operasi Mail Merge Sederhana {#how-to-execute-a-simple-mail-merge-operation}

Setelah templat Anda siap, Anda dapat mulai melakukan operasi Mail Merge sederhana. Aspose.Words memungkinkan Anda menjalankan operasi Mail Merge sederhana menggunakan [Jalankan metode](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#execute-com.aspose.words.IMailMergeDataSource) berbeda yang menerima berbagai objek data sebagai sumber data.

Contoh kode berikut menunjukkan cara menjalankan operasi Mail Merge sederhana menggunakan salah satu metode [Execute](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#execute-java.lang.String---java.lang.Object):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e"  "Examples-src-main-java-com-aspose-words-examples-mail_merge-TypesofMailMergeOperations-ExecuteSimpleMailMerge.java" >}}

Anda dapat melihat perbedaan antara dokumen sebelum menjalankan mail mergesederhana:

<img src="/words/java/types-of-mail-merge-operations/execute-simple-mail-merge-1.png" alt="simple_mail_merge_template_aspose_words_java" style="width:300px"/>

Dan setelah mengeksekusi mail mergesederhana:

<img src="/words/java/types-of-mail-merge-operations/execute-simple-mail-merge-2.png" alt="execute_simple_mail_merge_aspose_words_java" style="width:300px"/>

### Cara Membuat Beberapa Dokumen Gabungan

Dalam Aspose.Words, operasi Mail Merge standar hanya mengisi satu dokumen dengan konten dari sumber data Anda. Jadi, Anda perlu menjalankan operasi Mail Merge beberapa kali untuk membuat beberapa dokumen gabungan sebagai keluaran.

Contoh kode berikut menunjukkan cara membuat beberapa dokumen gabungan selama operasi Mail Merge:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e"  "Examples-src-main-java-com-aspose-words-examples-mail_merge-ProduceMultipleDocumentsDuringMailMerge-ProduceMultipleDocumentsDuringMailMerge.java" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file contoh contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/MailMerge).

{{% /alert %}}

## Mail Merge dengan Wilayah

Anda dapat membuat wilayah berbeda di templat Anda untuk memiliki area khusus yang dapat Anda isi dengan data Anda. Gunakan Mail Merge dengan wilayah jika Anda ingin menyisipkan tabel, baris dengan data berulang untuk membuat dokumen Anda berkembang secara dinamis dengan menentukan wilayah tersebut di dalam templat Anda.

Anda dapat membuat wilayah bersarang (turunan) serta menggabungkan wilayah. Keuntungan utama menggunakan tipe ini adalah menambah bagian di dalam dokumen secara dinamis. Lihat detail selengkapnya di artikel berikutnya "Bersarang Mail Merge dengan Wilayah".

{{% alert color="primary" %}}

Informasi tentang wilayah Mail Merge dapat diperoleh dengan menggunakan kelas [MailMergeRegionInfo](https://reference.aspose.com/words/java/com.aspose.words/mailmergeregioninfo/).

{{% /alert %}}

### Cara Mengeksekusi Mail Merge dengan Region

Wilayah Mail Merge adalah bagian tertentu di dalam dokumen yang memiliki titik awal dan titik akhir. Kedua titik direpresentasikan sebagai bidang Mail Merge yang memiliki nama spesifik *"TableStart:XXX"* dan *"TableEnd:XXX"*. Semua konten yang disertakan dalam wilayah Mail Merge akan diulang secara otomatis untuk setiap rekaman di sumber data.

Aspose.Words memungkinkan Anda menjalankan Mail Merge dengan wilayah menggunakan [Jalankan metode](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/executewithregions/#executewithregions/) berbeda yang menerima berbagai objek data sebagai sumber data.

Sebagai langkah pertama, kita perlu membuat `DataSet` untuk diteruskan nanti sebagai parameter input ke metode `ExecuteWithRegions`:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e"  "Examples-src-main-java-com-aspose-words-examples-mail_merge-TypesofMailMergeOperations-CreateDataSet.java" >}}

Contoh kode berikut menunjukkan cara menjalankan Mail Merge dengan wilayah menggunakan metode [ExecuteWithRegions(DataSet)](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#executeWithRegions-com.aspose.words.net.System.Data.DataSet):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e"  "Examples-src-main-java-com-aspose-words-examples-mail_merge-TypesofMailMergeOperations-MailMergeWithRegions.java" >}}

Anda dapat melihat perbedaan antara dokumen sebelum mengeksekusi Mail Merge dengan wilayah:

<img src="/words/java/types-of-mail-merge-operations/execute-mail-merge-with-regions-1.png" alt="mail_merge_with_regions_template_aspose_words_java" style="width:850px"/>

Dan setelah mengeksekusi Mail Merge dengan wilayah:

<img src="/words/java/types-of-mail-merge-operations/execute-mail-merge-with-regions-2.png" alt="mail_merge_with_regions_execute_aspose_words_java" style="width:850px"/>

### Batasan Mail Merge dengan Wilayah

Ada beberapa poin penting yang perlu Anda pertimbangkan saat melakukan Mail Merge dengan wilayah:

* Titik awal *TableStart:Orders* dan titik akhir *TableEnd:Orders* keduanya harus berada di baris atau sel yang sama. Misalnya, jika Anda memulai wilayah penggabungan di sel tabel, Anda harus mengakhiri wilayah penggabungan di baris yang sama dengan sel pertama.
* Nama bidang gabungan harus cocok dengan nama kolom di DataTable Anda. Kecuali Anda telah menentukan bidang yang dipetakan, Mail Merge dengan wilayah tidak akan berhasil untuk bidang gabungan apa pun yang memiliki nama berbeda dari nama kolom.

Jika salah satu dari aturan ini dilanggar, Anda akan mendapatkan hasil yang tidak terduga atau pengecualian dapat dilemparkan.

{{% alert color="primary" %}}

Jika Anda tidak menggunakan wilayah Mail Merge, maka wilayah tersebut akan serupa dengan Microsoft Word mail merge, dan seluruh konten dokumen akan diulang untuk setiap catatan di sumber data.

{{% /alert %}}

