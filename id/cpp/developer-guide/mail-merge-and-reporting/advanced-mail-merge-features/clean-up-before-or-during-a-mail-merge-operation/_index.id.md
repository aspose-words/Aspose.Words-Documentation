---
title: Bersihkan Sebelum atau Selama Operasi Mail Merge
second_title: Aspose.Words untuk C++
articleTitle: Bersihkan Sebelum atau Selama Operasi Mail Merge
linktitle: Bersihkan Sebelum atau Selama Operasi Mail Merge
type: docs
description: "Terapkan opsi pembersihan dan penghapusan yang berbeda seperti menghapus bidang gabungan sebelum melakukan operasi mail merge atau menghapus wilayah yang tidak digunakan selama operasi mail merge."
keywords: "cleanup options mail merge c#"
weight: 10
url: /id/cpp/clean-up-before-or-during-mail-merge/
---

Aspose.Words memungkinkan Anda menerapkan opsi pembersihan dan penghapusan yang berbeda seperti menghapus bidang gabungan sebelum melakukan operasi mail merge atau menghapus wilayah yang tidak digunakan selama operasi mail merge. Bagian ini akan menjelaskan cara menghapus bidang yang digabungkan dan cara menyiapkan opsi penghapusan.

## Hapus Bidang Gabungan

Saat Anda menggunakan beberapa templat panjang yang dibuat oleh orang lain, Anda mungkin ingin menghapus semua bidang gabungan yang sudah ada di templat tersebut sebelum melakukan operasi mail merge. Anda dapat menggunakan metode [DeleteFields](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/deletefields/) jika Anda ingin menghapus semua bidang gabungan dari dokumen tanpa menjalankan operasi mail merge. Metode ini tidak terpengaruh oleh opsi penghapusan apa pun dari properti [CleanupOptions](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/get_cleanupoptions/) dan menjalankannya hanya menghapus bidang yang digabungkan, bukan bidang yang berisi atau paragraf kosong.

Contoh kode berikut menunjukkan cara menghapus semua bidang gabungan dari templat Anda tanpa menjalankan operasi mail merge:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Fields-DeleteFields.h" >}}

## Siapkan Opsi `Removing`

Aspose.Words memungkinkan Anda menghapus bidang, wilayah, dan paragraf yang tidak digabungkan dari templat selama operasi mail merge menggunakan opsi penghapusan.

Gunakan properti **CleanupOptions** bersama dengan enumerasi [MailMergeCleanupOptions](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmergecleanupoptions/) untuk mengatur opsi penghapusan. Tentukan item mana yang ingin Anda hapus dengan memilih opsi berikut (Anda dapat menggabungkan lebih dari satu):

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

Jika Anda menggabungkan data menggunakan sumber data terpisah, maka opsi penghapusan tersebut hanya akan diaktifkan dengan panggilan terakhir dari metode eksekusi mail merge.

{{% /alert %}}

### Hapus Paragraf Kosong

Paragraf yang hanya menyertakan bidang gabungan akan kosong saat proses mail merge menghapus semua bidang penggabungannya sebagai tidak digabungkan. Paragraf kosong tersebut dapat menambah ruang yang tidak diinginkan dan mengubah tampilan laporan yang dihasilkan. Anda mungkin menghadapi dua situasi dengan paragraf selama operasi mail merge:

1. Bidang mail merge akan digabungkan dengan data kosong.
2. Bidang penggabungan tidak digunakan dan akan dihapus.

Dalam kedua situasi tersebut, opsi **RemoveEmptyParagraphs** akan secara otomatis menghapus paragraf kosong dari dokumen. Selain itu, ini akan menghapus bidang gabungan `TableStart` dan TableEnd jika sisa paragraf kosong.

Contoh kode berikut menunjukkan cara menghapus paragraf kosong:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Mail Merge and Reporting-Working with CleanupOptions-RemoveEmptyParagraphs.h" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file contoh contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Hapus Bidang yang Tidak Digunakan

Aspose.Words memungkinkan Anda menghapus bidang mail merge yang tidak digunakan dengan menetapkan tanda **RemoveUnusedFields** ke **CleanupOptions**. Opsi ini akan menghapus bidang gabungan yang tidak memiliki data terkait di sumber data.

Contoh kode berikut menunjukkan cara menghapus bidang gabungan yang tidak digunakan dari dokumen secara otomatis selama operasi mail merge:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeCleanUp-RemoveUnusedFields.cpp" >}}

### Menghapus Bidang yang Berisi

Bidang gabungan dapat dimuat di dalam bidang lain seperti bidang **IF** atau bidang rumus. Hapus bidang luar ini saat bidang gabungan digabungkan atau dihapus dari dokumen.

Contoh kode berikut menunjukkan cara menghapus bidang yang berisi bidang gabungan dari dokumen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeCleanUp-RemoveContainingFields.cpp" >}}

**Catatan**

### Hapus Baris Tabel Kosong

Aspose.Words memungkinkan Anda menghapus baris tabel kosong dengan menetapkan tanda **RemoveEmptyTableRows** ke **CleanupOptions**. Opsi ini akan menghapus baris tabel yang berisi bidang gabungan kosong.

Contoh kode berikut menunjukkan cara menghapus baris tabel kosong yang berisi wilayah mail merge dari dokumen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeCleanUp-RemoveEmptyTableRows.cpp" >}}
