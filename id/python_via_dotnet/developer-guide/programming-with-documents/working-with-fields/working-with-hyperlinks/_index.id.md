---
title: Bekerja dengan Hyperlink
second_title: Aspose.Words untuk Python via .NET
articleTitle: Menambah atau Memodifikasi Hyperlink
linktitle: Menambah atau Memodifikasi Hyperlink
description: "Tambahkan, ganti, atau ubah hyperlink dalam dokumen menggunakan Python."
type: docs
weight: 50
url: /id/python-net/working-with-hyperlinks/
---

Hyperlink dalam dokumen Microsoft Word adalah bidang `HYPERLINK`. Dalam Aspose.Words, hyperlink diimplementasikan melalui kelas [FieldHyperlink](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldhyperlink/).

## Memasukkan Hyperlink

Gunakan metode [insert_hyperlink](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_hyperlink/) untuk menyisipkan hyperlink ke dalam dokumen. Metode ini menerima tiga parameter:

1. Teks link yang akan ditampilkan dalam dokumen
2. Tautan tujuan (URL atau nama penanda di dalam dokumen)
3. Parameter Boolean yang seharusnya berupa true jika `URL` adalah nama bookmark di dalam dokumen

Metode **InsertHyperlink** selalu menambahkan apostrof di awal dan akhir URL.

{{% alert color="primary" %}}

Perhatikan bahwa Anda perlu menentukan format font untuk teks tampilan hyperlink secara eksplisit menggunakan properti `Font`.

{{% /alert %}}

Contoh kode berikut menunjukkan cara menyisipkan hyperlink ke dalam dokumen menggunakan [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertHyperlink.py" >}}

## Ganti atau Ubah Hyperlink

Hyperlink dalam dokumen Microsoft Word adalah sebuah bidang. Bidang dalam dokumen Word adalah struktur kompleks yang terdiri dari beberapa node yang mencakup bidang awal, kode bidang, pemisah bidang, hasil bidang, dan akhir bidang. Bidang dapat disarangkan, berisi konten yang kaya, dan mencakup beberapa paragraf atau bagian dalam dokumen

Untuk mengganti atau memodifikasi hyperlink, Anda perlu menemukan hyperlink di dokumen dan mengganti teks, URL, atau keduanya.

Contoh kode berikut menunjukkan cara menemukan semua hyperlink di dokumen Word dan mengubah `URL` serta nama tampilannya:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ReplaceHyperlinks.py" >}}
