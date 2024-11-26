---
title: Bekerja dengan Catatan Kaki dan Catatan Akhir dalam Java
second_title: Aspose.Words untuk Java
articleTitle: Bekerja dengan Catatan Kaki dan Catatan Akhir
linktitle: Bekerja dengan Catatan Kaki dan Catatan Akhir
description: "Cara memanipulasi catatan kaki dan catatan akhir menggunakan Java."
type: docs
weight: 160
url: /id/java/working-with-footnote-and-endnote/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words juga menyediakan beberapa kelas, metode, dan properti untuk bekerja dengan catatan kaki dan catatan akhir.

## Sisipkan Catatan Akhir dan Atur Opsi Penomoran

Jika Anda ingin menyisipkan catatan kaki atau catatan akhir dalam dokumen Word, gunakan metode [InsertFootnote](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertFootnote-int-java.lang.String). Metode ini menyisipkan catatan kaki atau catatan akhir ke dalam dokumen.

kelas [EndnoteOptions](https://reference.aspose.com/words/java/com.aspose.words/endnoteoptions/) dan [FootnoteOptions](https://reference.aspose.com/words/java/com.aspose.words/footnoteoptions/) mewakili opsi penomoran untuk catatan kaki dan catatan akhir.

Contoh kode berikut menunjukkan cara menyisipkan catatan akhir ke dalam dokumen dan mengatur opsi penomorannya:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetEndnoteOptions.java" >}}

## Tetapkan Jumlah Kolom Tata Letak Catatan Kaki

Anda dapat mengatur jumlah kolom tata letak catatan kaki menggunakan properti [Columns](https://reference.aspose.com/words/java/com.aspose.words/footnoteoptions/#getColumns). Jika properti ini memiliki nilai 0, area catatan kaki diformat dengan sejumlah kolom berdasarkan jumlah kolom pada halaman yang ditampilkan.

Contoh kode berikut menunjukkan cara mengatur jumlah kolom untuk tata letak catatan kaki:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetFootNoteColumns.java" >}}

## Setel Posisi Catatan Kaki dan EndNote

Posisi catatan kaki dapat berada di bagian bawah setiap halaman atau di bawah teks pada setiap halaman. Posisi catatan akhir dapat berada di akhir bagian atau di akhir dokumen.

Contoh kode berikut menunjukkan cara mengatur posisi catatan kaki dan catatan akhir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetFootnoteAndEndNotePosition.java" >}}
