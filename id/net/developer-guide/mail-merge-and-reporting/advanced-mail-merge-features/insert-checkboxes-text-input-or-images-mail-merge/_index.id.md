---
title: Sisipkan Checkbox es, Masukan Teks, atau Gambar selama Mail Merge
second_title: Aspose.Words untuk .NET
articleTitle: Sisipkan Checkboxes, Masukan Teks, atau Gambar
linktitle: Sisipkan Checkboxes, Masukan Teks, atau Gambar
description: "Sisipkan checkbox es atau kolom input teks selama Mail Merge menggunakan C#. Sisipkan juga gambar dari Database selama Mail Merge dalam C#."
type: docs
weight: 40
url: /id/net/insert-checkboxes-text-input-or-images-mail-merge/
timestamp: 2024-07-11-08-07-06
---

Mesin penggabungan mengambil dokumen sebagai masukan, mencari bidang `MERGEFIELD` di dalamnya, dan menggantinya dengan data yang diperoleh dari sumber data. Biasanya, teks biasa dan HTML disisipkan, tetapi pengguna Aspose.Words juga dapat membuat dokumen yang menangani skenario yang lebih tidak biasa untuk bidang Mail Merge.

Fungsionalitas Aspose.Words yang kuat memungkinkan Anda untuk memperpanjang proses Mail Merge:

- sisipkan checkboxes dan kolom formulir masukan teks ke dalam dokumen selama mail merge
- sisipkan gambar dari penyimpanan khusus apa pun (file, bidang BLOB, dll.)

## Sisipkan Checkbox es dan Masukan Teks selama Mail Merge

Terkadang perlu untuk melakukan operasi Mail Merge agar bukan teks yang diganti di bidang gabungan, tetapi checkbox atau bidang input teks. Meskipun ini bukan skenario yang paling umum, ini sangat berguna untuk beberapa tugas.

Tangkapan layar berikut dari dokumen Word menunjukkan templat dengan bidang gabungan:

<img src="insert-checkboxes-html-or-images-during-mail-merge-1.jpeg" alt="insert-checkboxes-or-images-mail-merge-aspose-words" style="width:600px"/>

Tangkapan layar dokumen Word di bawah ini menunjukkan dokumen yang sudah dibuat:

<img src="insert-checkboxes-html-or-images-during-mail-merge-2.png" alt="insert-checkboxes-html-or-images-mail-merge-aspose-words" style="width:600px"/>

{{% alert color="primary" %}}

Perhatikan bahwa beberapa bidang diganti dengan teks biasa, beberapa bidang diganti dengan bidang formulir checkbox, dan bidang `Subject` diganti dengan bidang input teks.

{{% /alert %}}

Contoh kode berikut menunjukkan cara menyisipkan checkbox es dan memasukkan bidang teks ke dalam dokumen selama mail merge:

{{< gist "aspose-words-gists" "0a1baaa127443b485cc692c8d98ee353" "mail-merge-form-fields.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "handle-merge-field.cs" >}}

## Sisipkan Gambar selama Mail Merge

Saat melakukan operasi Mail Merge, Anda dapat menyisipkan gambar dari database ke dalam dokumen menggunakan bidang gambar khusus Mail Merge. Bidang image Mail Merge adalah bidang gabungan bernama Image: MyFieldName.

### Menyisipkan Gambar dari Database

Selama mail merge, saat bidang image Mail Merge ditemukan dalam dokumen, peristiwa [FieldMergingCallback](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/fieldmergingcallback/) diaktifkan. Anda dapat menanggapi peristiwa ini untuk mengembalikan nama file, aliran, atau objek gambar ke mesin Mail Merge sehingga dapat disisipkan ke dalam dokumen.

Contoh kode berikut menunjukkan cara menyisipkan gambar yang disimpan dalam bidang database BLOB ke dalam laporan:

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "mail-merge-image-from-blob.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "handle-merge-image-field-from-blob.cs" >}}

### Setel Properti Gambar selama Mail Merge

Saat menggabungkan bidang penggabungan gambar, terkadang Anda mungkin perlu mengontrol berbagai properti gambar, seperti [WrapType](https://reference.aspose.com/words/net/aspose.words.drawing/wraptype/).

Saat ini, menggunakan [ImageFieldMergingArgs](https://reference.aspose.com/words/net/aspose.words.mailmerging/imagefieldmergingargs/) Anda hanya dapat mengatur properti lebar atau tinggi gambar. Untuk mengatasi masalah ini, Aspose.Words menyediakan properti [Shape](https://reference.aspose.com/words/net/aspose.words.mailmerging/imagefieldmergingargs/shape/), yang memudahkan untuk mendapatkan kontrol penuh atas gambar yang disisipkan atau bentuk lainnya.

Contoh kode berikut menunjukkan cara mengatur berbagai properti gambar:

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "mail-merge-image-field.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "image-field-merging-handler.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "data-source-root.cs" >}}
