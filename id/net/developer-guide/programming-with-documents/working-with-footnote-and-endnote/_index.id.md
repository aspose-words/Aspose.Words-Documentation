---
title: Bekerja dengan Catatan Kaki dan Catatan Akhir di C#
second_title: Aspose.Words untuk .NET
articleTitle: Bekerja dengan Catatan Kaki dan Catatan Akhir
linktitle: Bekerja dengan Catatan Kaki dan Catatan Akhir
description: "Cara memanipulasi catatan kaki dan catatan akhir menggunakan C#."
type: docs
weight: 160
url: /id/net/working-with-footnote-and-endnote/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words juga menyediakan beberapa kelas, metode, dan properti untuk bekerja dengan catatan kaki dan catatan akhir.

## Masukkan Catatan Akhir dan Atur Opsi Penomoran

Jika Anda ingin memasukkan catatan kaki atau catatan akhir ke dalam dokumen Word, silakan gunakan metode [InsertFootnote](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfootnote/). Cara ini menyisipkan catatan kaki atau catatan akhir ke dalam dokumen.

Kelas [EndnoteOptions](https://reference.aspose.com/words/net/aspose.words.notes/endnoteoptions/) dan [FootnoteOptions](https://reference.aspose.com/words/net/aspose.words.notes/footnoteoptions/) mewakili opsi penomoran untuk catatan kaki dan catatan akhir.

Contoh kode berikut menunjukkan cara memasukkan catatan akhir ke dalam dokumen dan mengatur opsi penomorannya:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithFootnote-SetEndnoteOptions.cs" >}}

## Tetapkan Jumlah Kolom Tata Letak Catatan Kaki

Anda dapat mengatur jumlah kolom tata letak catatan kaki menggunakan properti [Columns](https://reference.aspose.com/words/net/aspose.words.notes/footnoteoptions/columns/). Jika properti ini bernilai 0, maka area catatan kaki diformat dengan jumlah kolom berdasarkan jumlah kolom pada halaman yang ditampilkan.

Contoh kode berikut menunjukkan cara mengatur jumlah kolom untuk tata letak catatan kaki:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithFootnote-SetFootNoteColumns.cs" >}}

## Mengatur Posisi Catatan Kaki dan Catatan Akhir

Posisi catatan kaki bisa berada di bagian bawah setiap halaman atau di bawah teks setiap halaman. Posisi catatan akhir bisa di akhir bagian atau di akhir dokumen.

Contoh kode berikut menunjukkan cara mengatur posisi catatan kaki dan catatan akhir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithFootnote-SetFootnoteOptions.cs" >}}
