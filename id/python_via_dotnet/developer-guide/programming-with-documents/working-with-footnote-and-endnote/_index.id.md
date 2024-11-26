---
title: Bekerja dengan Catatan Kaki dan Catatan Akhir
second_title: Aspose.Words untuk Python via .NET
articleTitle: Bekerja dengan Catatan Kaki dan Catatan Akhir
linktitle: Bekerja dengan Catatan Kaki dan Catatan Akhir
description: "Masukkan catatan kaki atau catatan akhir ke dalam dokumen dan tentukan opsinya menggunakan Python."
type: docs
weight: 160
url: /id/python-net/working-with-footnote-and-endnote/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words juga menyediakan beberapa kelas, metode, dan properti untuk bekerja dengan catatan kaki dan catatan akhir.

## Masukkan Catatan Akhir dan Atur Opsi Penomoran

Jika Anda ingin menyisipkan catatan kaki atau catatan akhir pada dokumen Word, silakan gunakan metode [insert_footnote](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_footnote/). Cara ini menyisipkan catatan kaki atau catatan akhir ke dalam dokumen.

Kelas [EndnoteOptions](https://reference.aspose.com/words/python-net/aspose.words.notes/endnoteoptions/) dan [FootnoteOptions](https://reference.aspose.com/words/python-net/aspose.words.notes/footnoteoptions/) mewakili opsi penomoran untuk catatan kaki dan catatan akhir.

Contoh kode berikut menunjukkan cara memasukkan catatan akhir ke dalam dokumen dan mengatur opsi penomorannya:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_footnote_and_endnote-SetEndnoteOptions.py" >}}

## Tetapkan Jumlah Kolom Tata Letak Catatan Kaki

Anda dapat mengatur jumlah kolom tata letak catatan kaki menggunakan properti [columns](https://reference.aspose.com/words/python-net/aspose.words.notes/footnoteoptions/columns/). Jika properti ini bernilai 0, maka area catatan kaki diformat dengan jumlah kolom berdasarkan jumlah kolom pada halaman yang ditampilkan.

Contoh kode berikut menunjukkan cara mengatur jumlah kolom untuk tata letak catatan kaki:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_footnote_and_endnote-SetFootNoteColumns.py" >}}

## Mengatur Posisi Catatan Kaki dan Catatan Akhir

Posisi catatan kaki bisa berada di bagian bawah setiap halaman atau di bawah teks setiap halaman. Posisi catatan akhir bisa di akhir bagian atau di akhir dokumen.

Contoh kode berikut menunjukkan cara mengatur posisi catatan kaki dan catatan akhir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_footnote_and_endnote-SetFootnoteAndEndNotePosition.py" >}}
