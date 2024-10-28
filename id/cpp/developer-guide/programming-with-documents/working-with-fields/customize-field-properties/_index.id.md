---
title: Sesuaikan Properti Bidang di C++
second_title: Aspose.Words untuk C++
articleTitle: Sesuaikan Properti Bidang
linktitle: Sesuaikan Properti Bidang
description: "Pelajari cara menyesuaikan properti bidang di C++. Ganti nama bidang gabungan atau dapatkan hasil untuk bidang tanpa simpul pemisah di C++."
type: docs
weight: 27
url: /id/cpp/customize-field-properties/
---

Aspose.Words menyediakan kemampuan untuk berinteraksi secara terprogram dengan berbagai properti bidang. Pada artikel ini, kita akan melihat beberapa contoh sehingga Anda memahami prinsip dasar bekerja dengan properti bidang. Anda dapat melihat daftar lengkap properti untuk setiap jenis bidang di kelas terkait di [Fields namespace](https://reference.aspose.com/words/cpp/namespace/aspose.words.fields).

## Pembaruan Properti Bidang

Terkadang pengguna perlu mengubah nilai properti bidang. Misalnya, perbarui properti [AuthorName](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldauthor/get_authorname/) dari bidang `AUTHOR` atau ubah properti [FieldName](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/get_fieldname/) dari bidang `MERGEFIELD`.

Contoh kode berikut menunjukkan cara mengganti nama menggabungkan bidang dalam dokumen Word:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-RenameMergeFields-RenameMergeFields.cpp" >}}

## Hasil Tampilan Bidang

Aspose.Words menyediakan properti untuk mendapatkan hasil bidang untuk bidang yang tidak memiliki simpul pemisah bidang. Kami menyebutnya "hasil palsu" atau hasil tampilan; Microsoft Word menampilkannya dalam dokumen dengan menghitung nilai bidang dengan cepat, tetapi tidak ada nilai seperti itu dalam model dokumen.

Contoh kode berikut menunjukkan penggunaan properti [DisplayResult](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_displayresult/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldDisplayResults-FieldDisplayResults.cpp" >}}