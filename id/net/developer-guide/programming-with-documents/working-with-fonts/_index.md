---
title: Bekerja dengan Font di C#
second_title: Aspose.Words untuk .NET
articleTitle: Bekerja dengan Font
linktitle: Bekerja dengan Font
description: "Pemformatan font secara detail menggunakan C#. Tanda penekanan di C#. Dapatkan spasi baris font menggunakan C#."
type: docs
weight: 230
url: /id/net/working-with-fonts/
---

Font adalah sekumpulan karakter dengan ukuran, warna, dan desain tertentu. Aspose.Words memungkinkan Anda bekerja dengan font menggunakan namespace [Fonts](https://reference.aspose.com/words/net/aspose.words.fonts/) dan kelas [Font](https://reference.aspose.com/words/net/aspose.words/font/).

## Pemformatan Font

Pemformatan font saat ini diwakili oleh objek **Font** yang dikembalikan oleh properti [Font](https://reference.aspose.com/words/net/aspose.words/documentbuilder/font/). Kelas **Font** berisi beragam properti font, mereplikasi properti yang tersedia dalam Microsoft Word.

Contoh kode berikut menunjukkan cara mengatur pemformatan font:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetFontFormatting.cs" >}}

Properti isian juga tersedia untuk font guna mengatur format isian teks. Hal ini memungkinkan untuk mengubah, misalnya, warna latar depan atau transparansi isi teks.

## Mendapatkan Spasi Baris Font

Spasi baris font adalah jarak vertikal antara garis dasar dua baris teks yang berurutan. Jadi spasi baris mencakup spasi kosong antar baris beserta tinggi karakter itu sendiri.

Properti [LineSpacing](https://reference.aspose.com/words/net/aspose.words/font/linespacing/) diperkenalkan ke kelas **Font** untuk mendapatkan nilai ini, seperti yang ditunjukkan pada contoh di bawah ini:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-GetFontLineSpacing-GetFontLineSpacing.cs" >}}

## Tanda Penekanan Font

Beberapa bahasa Asia Timur menggunakan tanda penekanan khusus untuk menunjukkan suatu penekanan. Kelas **Font** menyediakan properti [EmphasisMark](https://reference.aspose.com/words/net/aspose.words/font/emphasismark/) untuk mendapatkan atau mengatur nilai enumerasi [EmphasisMark](https://reference.aspose.com/words/net/aspose.words/emphasismark/) yang akan diterapkan saat memformat.

Contoh kode berikut menunjukkan cara mengatur properti **EphasisMark**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetFontEmphasisMark.cs" >}}
