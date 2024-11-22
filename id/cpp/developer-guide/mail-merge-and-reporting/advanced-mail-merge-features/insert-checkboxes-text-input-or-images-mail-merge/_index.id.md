---
title: Sisipkan Checkbox es, Masukan Teks, atau Gambar selama Mail Merge
second_title: Aspose.Words untuk C++
articleTitle: Sisipkan Checkboxes, Masukan Teks, atau Gambar
linktitle: Sisipkan Checkboxes, Masukan Teks, atau Gambar
description: "Sisipkan kotak centang atau kolom input teks selama Mail Merge menggunakan C++. Sisipkan juga gambar dari Database selama Mail Merge dalam C++."
type: docs
weight: 40
url: /id/cpp/insert-checkboxes-text-input-or-images-mail-merge/
timestamp: 2024-01-27-14-07-04
---

Mesin penggabungan mengambil dokumen sebagai masukan, mencari bidang `MERGEFIELD` di dalamnya, dan menggantinya dengan data yang diperoleh dari sumber data. Biasanya, teks biasa dan HTML disisipkan, tetapi pengguna Aspose.Words juga dapat membuat dokumen yang menangani skenario yang lebih tidak biasa untuk bidang mail merge.

Fungsionalitas Aspose.Words yang kuat memungkinkan Anda untuk memperpanjang proses mail merge:

- sisipkan kotak centang dan kolom formulir masukan teks ke dalam dokumen selama mail merge
- sisipkan gambar dari penyimpanan khusus apa pun (file, bidang BLOB, dll.)

## Sisipkan Checkbox es dan Masukan Teks selama Mail Merge

Terkadang perlu untuk melakukan operasi Mail Merge agar bukan teks yang diganti di bidang gabungan, tetapi kotak centang atau bidang input teks. Meskipun ini bukan skenario yang paling umum, ini sangat berguna untuk beberapa tugas.

Tangkapan layar dokumen Word berikut menunjukkan templat dengan bidang gabungan:

<img src="insert-checkboxes-html-or-images-during-mail-merge-1.jpeg" alt="insert-checkboxes-or-images-mail-merge-aspose-words" style="width:600px"/>

Tangkapan layar dokumen Word di bawah ini menunjukkan dokumen yang sudah dibuat:

<img src="insert-checkboxes-html-or-images-during-mail-merge-2.png" alt="insert-checkboxes-html-or-images-mail-merge-aspose-words" style="width:600px"/>

{{% alert color="primary" %}}

Perhatikan bahwa beberapa bidang diganti dengan teks biasa, beberapa bidang diganti dengan bidang formulir kotak centang, dan bidang `Subject` diganti dengan bidang input teks.

{{% /alert %}}

Contoh kode berikut menunjukkan cara menyisipkan kotak centang dan memasukkan bidang teks ke dalam dokumen selama mail merge:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeFormFields-MailMergeFormFields.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeFormFields-HandleMergeField.cpp" >}}

## Sisipkan Gambar selama Mail Merge

Saat melakukan operasi mail merge, Anda dapat menyisipkan gambar dari database ke dalam dokumen menggunakan bidang gambar khusus mail merge. Bidang image Mail Merge adalah bidang gabungan bernama Image: MyFieldName.

### Menyisipkan Gambar dari Database

Selama mail merge, saat bidang image Mail Merge ditemukan dalam dokumen, peristiwa [FieldMergingCallback](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/get_fieldmergingcallback/) diaktifkan. Anda dapat menanggapi peristiwa ini untuk mengembalikan nama file, aliran, atau objek gambar ke mesin Mail Merge sehingga dapat disisipkan ke dalam dokumen.

Contoh kode berikut menunjukkan cara menyisipkan gambar yang disimpan dalam bidang database BLOB ke dalam laporan:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeImageField-MailMergeImageInsert.cpp" >}}

### Setel Properti Gambar selama Mail Merge

Saat menggabungkan bidang penggabungan gambar, terkadang Anda mungkin perlu mengontrol berbagai properti gambar, seperti [WrapType](https://reference.aspose.com/words/cpp/aspose.words.drawing/wraptype/).

Saat ini, menggunakan [ImageFieldMergingArgs](https://reference.aspose.com/words/cpp/class/aspose.words.mail_merging.image_field_merging_args) Anda hanya dapat mengatur properti lebar atau tinggi gambar. Untuk mengatasi masalah ini, Aspose.Words menyediakan properti [Shape](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imagefieldmergingargs/get_shape/), yang memudahkan untuk mendapatkan kontrol penuh atas gambar yang disisipkan atau bentuk lainnya.

Contoh kode berikut menunjukkan cara mengatur berbagai properti gambar:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeImageField-MailMergeImageField.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeImageField-ImageFieldMergingHandler.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeImageField-DataSourceRoot.cpp" >}}
