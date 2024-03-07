---
title: Bekerja dengan Font di Python
second_title: Aspose.Words untuk Python via .NET
articleTitle: Bekerja dengan Font
linktitle: Bekerja dengan Font
description: "Sesuaikan pengaturan font menggunakan Python."
type: docs
weight: 230
url: /id/python-net/working-with-fonts/
---

Font adalah sekumpulan karakter dengan ukuran, warna, dan desain tertentu. Aspose.Words memungkinkan Anda bekerja dengan font menggunakan modul [fonts](https://reference.aspose.com/words/python-net/aspose.words.fonts/) dan kelas [Font](https://reference.aspose.com/words/python-net/aspose.words/font/).

## Pemformatan Font

Pemformatan font saat ini diwakili oleh objek **Font** yang dikembalikan oleh properti [Font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/). Kelas **Font** berisi beragam properti font, mereplikasi properti yang tersedia dalam Microsoft Word.

Contoh kode berikut menunjukkan cara mengatur pemformatan font:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-DocumentBuilderSetFontFormatting.py" >}}

Properti isian sekarang juga tersedia untuk font guna mengatur format isian teks. Ini memberikan kemampuan untuk mengubah, misalnya, warna latar depan atau transparansi isi teks.

## Mendapatkan Spasi Baris Font

Spasi baris font adalah jarak vertikal antara garis dasar dua baris teks yang berurutan. Jadi spasi baris mencakup spasi kosong antar baris beserta tinggi karakter itu sendiri.

Properti [line_spacing](https://reference.aspose.com/words/python-net/aspose.words/font/line_spacing/) diperkenalkan di kelas [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) untuk mendapatkan nilai ini seperti yang ditunjukkan pada contoh di bawah ini:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-GetFontLineSpacing.py" >}}

## Tanda Penekanan Font

Beberapa bahasa Asia Timur menggunakan tanda penekanan khusus untuk menunjukkan suatu penekanan. Kelas **Font** menyediakan properti [emphasis_mark](https://reference.aspose.com/words/python-net/aspose.words/font/emphasis_mark/) untuk mendapatkan atau mengatur nilai enumerasi [EmphasisMark](https://reference.aspose.com/words/python-net/aspose.words/emphasismark/) untuk diterapkan dalam pemformatan.

Contoh kode berikut menunjukkan cara mengatur properti **EphasisMark**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontEmphasisMark.py" >}}
