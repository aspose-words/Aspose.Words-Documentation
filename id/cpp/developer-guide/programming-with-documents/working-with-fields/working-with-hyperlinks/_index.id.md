---
title: Bekerja dengan Hyperlink di C++
second_title: Aspose.Words untuk C++
articleTitle: Menambahkan atau Memodifikasi Hyperlink
linktitle: Menambahkan atau Memodifikasi Hyperlink
description: "Cara menambahkan hyperlink ke dalam dokumen Anda menggunakan Aspose.Words untuk C++."
type: docs
weight: 180
url: /id/cpp/working-with-hyperlinks/
---

Hyperlink dalam dokumen Microsoft Word adalah bidang `HYPERLINK`. Dalam Aspose.Words, hyperlink diimplementasikan melalui kelas [FieldHyperlink](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldhyperlink/).

## Menyisipkan Hyperlink

Gunakan metode [InsertHyperlink](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/inserthyperlink/) untuk menyisipkan hyperlink ke dalam dokumen. Metode ini menerima tiga parameter:

1. Teks tautan yang akan ditampilkan dalam dokumen
2. Tujuan tautan (URL atau nama penanda di dalam dokumen)
3. Parameter boolean yang seharusnya true jika `URL` adalah nama penanda di dalam dokumen

Metode **InsertHyperlink** selalu menambahkan apostrof di awal dan akhir URL.

{{% alert color="primary" %}}

Perhatikan bahwa Anda perlu menentukan pemformatan font untuk teks tampilan hyperlink secara eksplisit menggunakan properti `Font`.

{{% /alert %}}

Contoh kode berikut menunjukkan cara menyisipkan hyperlink ke dalam dokumen menggunakan [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHyperlink.cpp" >}}

## Mengganti atau Memodifikasi Hyperlink

Hyperlink dalam dokumen Microsoft Word adalah bidang. Bidang dalam dokumen Word adalah struktur kompleks yang terdiri dari beberapa simpul yang mencakup awal bidang, kode bidang, pemisah bidang, hasil bidang, dan akhir bidang. Bidang dapat disarangkan, berisi konten yang kaya, dan menjangkau beberapa paragraf atau bagian dalam dokumen.

Kelas `FieldHyperlink` mengimplementasikan bidang `HYPERLINK`.

Contoh kode berikut menunjukkan cara menemukan semua hyperlink di dokumen Word dan mengubah `URL` dan nama tampilannya:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.cpp" >}}
