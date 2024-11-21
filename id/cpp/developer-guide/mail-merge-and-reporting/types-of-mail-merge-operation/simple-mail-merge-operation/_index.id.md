---
title: Operasi Mail Merge sederhana dalam C++
second_title: Aspose.Words untuk C++
articleTitle: Operasi Mail Merge Sederhana
linktitle: Operasi Mail Merge Sederhana
type: docs
description: "Mail merge sederhana digunakan untuk mengisi kolom mail merge di dalam templat Anda dengan data yang diperlukan dari sumber data Anda-ini mirip dengan mail merge klasik di Microsoft Word. Tambahkan satu atau lebih bidang gabungan di templat Anda, lalu jalankan operasi mail merge sederhana."
keywords: "how to execute mail merge c++"
weight: 10
url: /id/cpp/simple-mail-merge-operation/
timestamp: 2024-09-24-14-35-44
---

Mail merge sederhana digunakan untuk mengisi kolom mail merge di dalam templat Anda dengan data yang diperlukan dari sumber data Anda (representasi tabel tunggal). Jadi ini mirip dengan mail merge klasik di Microsoft Word.

Anda dapat menambahkan satu atau lebih bidang gabungan di templat Anda, lalu menjalankan operasi mail merge sederhana. Disarankan untuk menggunakannya jika templat Anda tidak berisi wilayah gabungan apa pun.

Batasan utama penggunaan tipe ini adalah seluruh konten dokumen akan diulang untuk setiap catatan di sumber data.

## Cara Menjalankan Operasi Mail Merge Sederhana

Setelah templat Anda siap, Anda dapat mulai melakukan operasi mail merge sederhana. Aspose.Words memungkinkan Anda menjalankan operasi mail merge sederhana menggunakan metode [Execute](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/execute/) berbeda yang menerima berbagai objek data sebagai sumber data.

Contoh kode berikut menunjukkan cara menjalankan operasi mail merge sederhana menggunakan salah satu metode [Execute](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/execute/):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "simple-mail-merge.h" >}}

Anda dapat melihat perbedaan antara dokumen sebelum menjalankan mail mergesederhana:

<img src="execute-simple-mail-merge-1.png" alt="simple_mail_merge_template-aspose-words-cpp" style="width:300px"/>

Dan setelah mengeksekusi mail mergesederhana:

<img src="execute-simple-mail-merge-2.png" alt="execute_simple_mail_merge-aspose-words-cpp" style="width:300px"/>

## Cara Membuat Beberapa Dokumen Gabungan

Dalam Aspose.Words, operasi mail merge standar hanya mengisi satu dokumen dengan konten dari sumber data Anda. Jadi, Anda perlu menjalankan operasi mail merge berkali-kali untuk membuat beberapa dokumen gabungan sebagai keluaran.

Contoh kode berikut menunjukkan cara membuat beberapa dokumen gabungan selama operasi mail merge dengan [SQLiteCpp](https://github.com/SRombauts/SQLiteCpp):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "multiple-documents-mail-merge.h" >}}
