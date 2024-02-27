---
title: Sesuaikan Properti Bidang di C#
second_title: Aspose.Words untuk .NET
articleTitle: Sesuaikan Properti Bidang
linktitle: Sesuaikan Properti Bidang
description: "Pelajari cara menyesuaikan properti bidang di C#. Ganti nama bidang gabungan atau dapatkan hasil untuk bidang tanpa simpul pemisah di .NET."
type: docs
weight: 27
url: /id/net/customize-field-properties/
---

Aspose.Words menyediakan kemampuan untuk berinteraksi secara terprogram dengan berbagai properti bidang. Pada artikel ini, kita akan melihat beberapa contoh agar Anda memahami prinsip dasar bekerja dengan properti bidang. Anda dapat melihat daftar lengkap properti untuk setiap jenis bidang di kelas terkait di [Ruang nama bidang](https://reference.aspose.com/words/net/aspose.words.fields/).

## Pembaruan Properti Lapangan

Terkadang pengguna perlu mengubah nilai properti bidang. Misalnya, perbarui properti [AuthorName](https://reference.aspose.com/words/net/aspose.words.fields/fieldauthor/authorname/) pada bidang `AUTHOR` atau ubah properti [FieldName](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/fieldname/) pada bidang `MERGEFIELD`.

Contoh kode berikut memperlihatkan cara mengganti nama bidang gabungan di dokumen Word:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-RenameMergeFields-RenameMergeFields.cs" >}}

## Hasil Tampilan Lapangan

Aspose.Words menyediakan properti untuk mendapatkan hasil bidang untuk bidang yang tidak memiliki node pemisah bidang. Kami menyebutnya "hasil palsu" atau hasil tampilan; MS Word menampilkannya dalam dokumen dengan menghitung nilai bidang dengan cepat, namun tidak ada nilai seperti itu dalam model dokumen.

Contoh kode berikut menunjukkan penggunaan properti [DisplayResult](https://reference.aspose.com/words/net/aspose.words.fields/field/displayresult/):

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldDisplayResults-FieldDisplayResults.cs" >}}
