---
title: Sesuaikan Properti Bidang di Python
second_title: Aspose.Words untuk Python via .NET
articleTitle: Sesuaikan Properti Bidang
linktitle: Sesuaikan Properti Bidang
description: "Pelajari cara menyesuaikan properti bidang di Python. Ganti nama bidang gabungan atau dapatkan hasil untuk bidang tanpa simpul pemisah di Python via .NET."
type: docs
weight: 27
url: /id/python-net/customize-field-properties/
---

Aspose.Words menyediakan kemampuan untuk berinteraksi secara terprogram dengan berbagai properti bidang. Pada artikel ini, kita akan melihat beberapa contoh agar Anda memahami prinsip dasar bekerja dengan properti bidang. Anda dapat melihat daftar lengkap properti untuk setiap jenis bidang di kelas terkait di [Modul bidang](https://reference.aspose.com/words/python-net/aspose.words.fields/).

## Pembaruan Properti Lapangan

Terkadang pengguna perlu mengubah nilai properti bidang. Misalnya, perbarui properti [author_name](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldauthor/author_name/) pada bidang `AUTHOR` atau ubah properti [field_name](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldmergefield/field_name/) pada bidang `MERGEFIELD`.

Contoh kode berikut memperlihatkan cara mengganti nama bidang gabungan di dokumen Word:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-RenameMergeFields.py" >}}

## Hasil Tampilan Lapangan

Aspose.Words menyediakan properti untuk mendapatkan hasil bidang untuk bidang yang tidak memiliki node pemisah bidang. Kami menyebutnya "hasil palsu" atau hasil tampilan; MS Word menampilkannya dalam dokumen dengan menghitung nilai bidang dengan cepat, namun tidak ada nilai seperti itu dalam model dokumen.

Contoh kode berikut menunjukkan penggunaan properti [display_result](https://reference.aspose.com/words/python-net/aspose.words.fields/field/display_result/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-FieldDisplayResults.py" >}}