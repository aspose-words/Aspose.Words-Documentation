---
title: Bekerja dengan Hyperlink di C#
second_title: Aspose.Words untuk .NET
articleTitle: Menambah atau Memodifikasi Hyperlink
linktitle: Menambah atau Memodifikasi Hyperlink
description: "Cara menambahkan hyperlink ke dokumen Anda di C# menggunakan Aspose.Words untuk .NET."
type: docs
weight: 50
url: /id/net/working-with-hyperlinks/
timestamp: 2024-01-27-14-07-04
---

Hyperlink dalam dokumen Microsoft Word adalah bidang `HYPERLINK`. Dalam Aspose.Words, hyperlink diimplementasikan melalui kelas [FieldHyperlink](https://reference.aspose.com/words/net/aspose.words.fields/fieldhyperlink/).

## Sisipkan Hyperlink

Gunakan metode [InsertHyperlink](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserthyperlink/) untuk menyisipkan hyperlink ke dalam dokumen. Metode ini menerima tiga parameter:

1. Teks link yang akan ditampilkan dalam dokumen
2. Tautan tujuan (URL atau nama penanda di dalam dokumen)
3. Parameter Boolean yang seharusnya berupa true jika `URL` adalah nama bookmark di dalam dokumen

Metode **InsertHyperlink** selalu menambahkan apostrof di awal dan akhir URL

{{% alert color="primary" %}}

Perhatikan bahwa Anda perlu menentukan format font untuk teks tampilan hyperlink secara eksplisit menggunakan properti `Font`.

{{% /alert %}}

Contoh kode berikut menunjukkan cara menyisipkan hyperlink ke dalam dokumen menggunakan [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHyperlink.cs" >}}

## Ganti atau Ubah Hyperlink

Hyperlink dalam dokumen Microsoft Word adalah sebuah bidang. Bidang dalam dokumen Word, seperti yang kami katakan sebelumnya, adalah struktur kompleks yang terdiri dari beberapa node yang mencakup bidang awal, kode bidang, pemisah bidang, hasil bidang, dan akhir bidang. Bidang dapat disarangkan, berisi konten yang kaya, dan mencakup beberapa paragraf atau bagian dalam dokumen.

Untuk mengganti atau memodifikasi hyperlink, Anda perlu menemukan hyperlink di dokumen dan mengganti teks, URL, atau keduanya.

Contoh kode berikut menunjukkan cara menemukan semua hyperlink di dokumen Word dan mengubah `URL` serta nama tampilannya:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.cs" >}}
