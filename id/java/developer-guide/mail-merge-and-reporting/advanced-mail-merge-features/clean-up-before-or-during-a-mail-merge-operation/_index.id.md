---
title: Bersihkan Sebelum atau Selama Operasi Mail Merge
second_title: Aspose.Words untuk Java
articleTitle: Bersihkan Sebelum atau Selama Operasi Mail Merge
linktitle: Bersihkan Sebelum atau Selama Operasi Mail Merge
type: docs
description: "Terapkan opsi pembersihan dan penghapusan yang berbeda seperti menghapus bidang gabungan sebelum melakukan operasi Mail Merge atau menghapus wilayah yang tidak digunakan selama operasi Mail Merge menggunakan Java."
keywords: "cleanup options Mail Merge c#"
weight: 10
url: /id/java/clean-up-before-or-during-mail-merge/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words memungkinkan Anda menerapkan opsi pembersihan dan penghapusan yang berbeda seperti menghapus bidang gabungan sebelum melakukan operasi Mail Merge atau menghapus wilayah yang tidak digunakan selama operasi Mail Merge. Bagian ini akan menjelaskan cara menghapus bidang yang digabungkan dan cara menyiapkan opsi penghapusan.

## Hapus Bidang Gabungan

Saat Anda menggunakan beberapa templat panjang yang dibuat oleh orang lain, Anda mungkin ingin menghapus semua bidang gabungan yang sudah ada di templat tersebut sebelum melakukan operasi Mail Merge. Anda dapat menggunakan metode [DeleteFields](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#deleteFields) jika Anda ingin menghapus semua bidang gabungan dari dokumen tanpa menjalankan operasi Mail Merge. Metode ini tidak terpengaruh oleh opsi penghapusan apa pun dari properti [CleanupOptions](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getCleanupOptions) dan menjalankannya hanya menghapus bidang yang digabungkan, bukan bidang yang berisi atau paragraf kosong.

Contoh kode berikut menunjukkan cara menghapus semua bidang gabungan dari templat Anda tanpa menjalankan operasi Mail Merge:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-GetFieldNames-DeleteFields.java" >}}

## Siapkan Opsi `Removing`

Aspose.Words memungkinkan Anda menghapus bidang, wilayah, dan paragraf yang tidak digabungkan dari templat selama operasi Mail Merge menggunakan opsi penghapusan.

Gunakan properti **CleanupOptions** bersama dengan enumerasi [MailMergeCleanupOptions](https://reference.aspose.com/words/java/com.aspose.words/mailmergecleanupoptions/) untuk mengatur opsi penghapusan. Tentukan item mana yang ingin Anda hapus dengan memilih opsi berikut (Anda dapat menggabungkan lebih dari satu):

* Hapus paragraf kosong
* Hapus wilayah yang tidak digunakan
* Hapus bidang yang tidak digunakan
* Hapus bidang yang berisi
* Hapus bidang statis
* Hapus baris tabel kosong

Anda dapat menganggap bidang gabungan sebagai tidak digabungkan dalam salah satu kondisi berikut:

1. Jika bidang penggabungan di sumber data tidak memiliki kolom atau bidang pemetaan.
2. Jika bidang penggabungan di sumber data berisi bidang pemetaan tetapi datanya nol.

{{% alert color="primary" %}}

Jika Anda menggabungkan data menggunakan sumber data terpisah, maka opsi penghapusan tersebut hanya akan diaktifkan dengan panggilan terakhir dari metode eksekusi Mail Merge.

{{% /alert %}}

### Hapus Paragraf Kosong

Paragraf yang hanya menyertakan bidang gabungan akan kosong saat proses Mail Merge menghapus semua bidang penggabungannya sebagai tidak digabungkan. Paragraf kosong tersebut dapat menambah ruang yang tidak diinginkan dan mengubah tampilan laporan yang dihasilkan. Anda mungkin menghadapi dua situasi dengan paragraf selama operasi Mail Merge:

1. Bidang Mail Merge akan digabungkan dengan data kosong.
2. Bidang penggabungan tidak digunakan dan akan dihapus.

Dalam kedua situasi tersebut, opsi **RemoveEmptyParagraphs** akan secara otomatis menghapus paragraf kosong dari dokumen. Selain itu, ini akan menghapus bidang gabungan `TableStart` dan TableEnd jika sisa paragraf kosong.

Contoh kode berikut menunjukkan cara menghapus paragraf kosong:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeCleanUp-RemoveEmptyParagraphs.java" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file contoh contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Table%20with%20fields.docx).

{{% /alert %}}

### Hapus Wilayah yang Tidak Digunakan

Di versi Aspose.Words sebelumnya, wilayah Mail Merge yang kosong telah dihapus dari dokumen secara otomatis selama operasi Mail Merge. Dengan Aspose versi terbaru.kata-kata, wilayah Mail Merge kosong tetap ada setelah operasi Mail Merge secara default. Namun, Anda dapat menggunakan opsi **RemoveUnusedRegions** untuk menghapus wilayah Mail Merge yang tidak digunakan selama operasi Mail Merge. Misalnya, Anda dapat menggabungkan dokumen dengan sumber data kosong yang tidak berisi tabel data yang mengarah ke wilayah yang tidak digunakan dalam dokumen.

Contoh kode berikut menunjukkan cara menghapus wilayah penggabungan yang tidak digunakan:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeCleanUp-RemoveUnmergedRegions.java" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file contoh contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Mail%20merge%20destination%20-%20Northwind%20suppliers.docx).

{{% /alert %}}

**Catatan**

### Hapus Bidang yang Tidak Digunakan

Aspose.Words memungkinkan Anda menghapus bidang Mail Merge yang tidak digunakan dengan menetapkan tanda **RemoveUnusedFields** ke **CleanupOptions**. Opsi ini akan menghapus bidang gabungan yang tidak memiliki data terkait di sumber data.

Contoh kode berikut menunjukkan cara menghapus bidang gabungan yang tidak digunakan dari dokumen secara otomatis selama operasi Mail Merge:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeCleanUp-RemoveUnusedFields.java" >}}

### Menghapus Bidang yang Berisi

Bidang gabungan dapat dimuat di dalam bidang lain seperti bidang **IF** atau bidang rumus. Hapus bidang luar ini saat bidang gabungan digabungkan atau dihapus dari dokumen.

Contoh kode berikut menunjukkan cara menghapus bidang yang berisi bidang gabungan dari dokumen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeCleanUp-RemoveContainingFields.java" >}}

**Catatan**

### Hapus Baris Tabel Kosong

Aspose.Words memungkinkan Anda menghapus baris tabel kosong dengan menetapkan tanda **RemoveEmptyTableRows** ke **CleanupOptions**. Opsi ini akan menghapus baris tabel yang berisi bidang gabungan kosong.

Contoh kode berikut menunjukkan cara menghapus baris tabel kosong yang berisi wilayah Mail Merge dari dokumen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeCleanUp-RemoveEmptyTableRows.java" >}}
