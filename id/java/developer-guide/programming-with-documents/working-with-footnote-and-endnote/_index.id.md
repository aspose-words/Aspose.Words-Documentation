---
title: Bekerja dengan Footnote dan Endnote di Java
second_title: Aspose.Words Sitemap Java
articleTitle: Bekerja dengan Footnote dan Endnote
linktitle: Bekerja dengan Footnote dan Endnote
description: "Bagaimana cara memanipulasi catatan kaki dan catatan akhir menggunakan JavaSitemap"
type: docs
weight: 160
url: /id/java/working-with-footnote-and-endnote/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words juga menyediakan beberapa kelas, metode dan sifat untuk bekerja dengan catatan kaki dan catatan akhir.

## Masukkan Endnote dan Mengatur Pilihan Nomor

Jika Anda ingin memasukkan catatan kaki atau catatan akhir dalam dokumen Word, silakan gunakan [InsertFootnote](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertFootnote-int-java.lang.String) Login Metode ini memasukkan catatan kaki atau menunjukkan dokumen.

[EndnoteOptions](https://reference.aspose.com/words/java/com.aspose.words/endnoteoptions/) Login [FootnoteOptions](https://reference.aspose.com/words/java/com.aspose.words/footnoteoptions/) kelas mewakili opsi pencatatan untuk catatan kaki dan catatan akhir.

Contoh kode berikut menunjukkan cara memasukkan endnote ke dokumen dan mengatur opsi pencatatannya:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetEndnoteOptions.java" >}}

## Mengatur Jumlah Kolom Tata Letak Footnote

Anda dapat mengatur jumlah kolom tata letak catatan kaki menggunakan [Columns](https://reference.aspose.com/words/java/com.aspose.words/footnoteoptions/#getColumns) Login Jika properti ini memiliki nilai 0, area rekaman kaki diformat dengan sejumlah kolom berdasarkan jumlah kolom pada halaman yang ditampilkan.

Contoh kode berikut menunjukkan cara mengatur jumlah kolom untuk tata letak catatan kaki:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetFootNoteColumns.java" >}}

## Mengatur Posisi Footnote dan EndNote

Posisi footnote dapat berada di bagian bawah setiap halaman atau di bawah teks pada setiap halaman. Posisi akhir dapat pada akhir bagian atau pada akhir dokumen.

Contoh kode berikut menunjukkan cara mengatur posisi catatan kaki dan catatan akhir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetFootnoteAndEndNotePosition.java" >}}
