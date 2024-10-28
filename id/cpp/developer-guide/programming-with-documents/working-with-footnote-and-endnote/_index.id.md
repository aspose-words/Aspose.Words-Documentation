---
title: Bekerja dengan Catatan Kaki dan Catatan Akhir di C++
second_title: Aspose.Words untuk C++
articleTitle: Bekerja dengan Catatan Kaki dan Catatan Akhir
linktitle: Bekerja dengan Catatan Kaki dan Catatan Akhir
description: "Cara memanipulasi catatan kaki dan catatan akhir menggunakan C++."
type: docs
weight: 160
url: /id/cpp/working-with-footnote-and-endnote/
---

Aspose.Words juga menyediakan beberapa kelas, metode, dan properti untuk bekerja dengan catatan kaki dan catatan akhir.

## Sisipkan Catatan Akhir dan Atur Opsi Penomoran

Jika Anda ingin menyisipkan catatan kaki atau catatan akhir dalam dokumen Word, gunakan metode [InsertFootnote](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfootnote/). Metode ini menyisipkan catatan kaki atau catatan akhir ke dalam dokumen.

kelas [EndnoteOptions](https://reference.aspose.com/words/cpp/aspose.words.notes/endnoteoptions/) dan [FootnoteOptions](https://reference.aspose.com/words/cpp/aspose.words.notes/footnoteoptions/) mewakili opsi penomoran untuk catatan kaki dan catatan akhir.

Contoh kode berikut menunjukkan cara menyisipkan catatan akhir ke dalam dokumen dan mengatur opsi penomorannya:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithFootnote-SetEndnoteOptions.cpp" >}}

## Tetapkan Jumlah Kolom Tata Letak Catatan Kaki

Anda dapat mengatur jumlah kolom tata letak catatan kaki menggunakan properti [Columns](https://reference.aspose.com/words/cpp/aspose.words.notes/footnoteoptions/get_columns/). Jika properti ini memiliki nilai 0, area catatan kaki diformat dengan sejumlah kolom berdasarkan jumlah kolom pada halaman yang ditampilkan.

Contoh kode berikut menunjukkan cara mengatur jumlah kolom untuk tata letak catatan kaki:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithFootnote-SetFootNoteColumns.cpp" >}}

## Setel Posisi Catatan Kaki dan EndNote

Posisi catatan kaki dapat berada di bagian bawah setiap halaman atau di bawah teks pada setiap halaman. Posisi catatan akhir dapat berada di akhir bagian atau di akhir dokumen.

Contoh kode berikut menunjukkan cara mengatur posisi catatan kaki dan catatan akhir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithFootnote-SetFootnoteAndEndNotePosition.cpp" >}}
