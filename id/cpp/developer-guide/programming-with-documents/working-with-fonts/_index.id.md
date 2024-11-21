---
title: Bekerja dengan Font di C++
second_title: Aspose.Words untuk C++
articleTitle: Bekerja dengan Font
linktitle: Bekerja dengan Font
description: "Pemformatan font secara detail menggunakan C++."
type: docs
weight: 230
url: /id/cpp/working-with-fonts/
timestamp: 2024-01-27-14-07-04
---

Font adalah sekumpulan karakter dengan ukuran, warna, dan desain tertentu. Aspose.Words memungkinkan Anda bekerja dengan font menggunakan namespace [Fonts](https://reference.aspose.com/words/cpp/aspose.words.fonts/) dan kelas [Font](https://reference.aspose.com/words/cpp/aspose.words/font/).

## Pemformatan Fonta

Pemformatan font saat ini diwakili oleh objek **Font** yang dikembalikan oleh properti [Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/). Kelas **Font** berisi berbagai macam properti font, mereplikasi properti yang tersedia di Microsoft Word.

Contoh kode berikut menunjukkan cara mengatur pemformatan font:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetFontFormatting.cpp" >}}

Properti isi sekarang juga tersedia untuk font untuk mengatur pemformatan isi teks. Ini memberikan kemampuan untuk mengubah, misalnya, warna latar depan atau transparansi isi teks.

## Mendapatkan Spasi Baris Font

Spasi baris font adalah jarak vertikal antara garis dasar dari dua baris teks yang berurutan. Jadi spasi baris mencakup ruang kosong antar baris bersama dengan tinggi karakter itu sendiri.

Properti [LineSpacing](https://reference.aspose.com/words/cpp/aspose.words/font/get_linespacing/) diperkenalkan ke kelas **Font** untuk mendapatkan nilai ini, seperti yang ditunjukkan pada contoh di bawah ini:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-GetFontLineSpacing-GetFontLineSpacing.cpp" >}}

## Fonta EmphasisMark

Beberapa bahasa Asia Timur menggunakan tanda penekanan khusus untuk menunjukkan penekanan. Kelas **Font** menyediakan properti [EmphasisMark](https://reference.aspose.com/words/cpp/aspose.words/font/get_emphasismark/) untuk mendapatkan atau menyetel nilai enumerasi `EmphasisMark` untuk diterapkan saat memformat.

Contoh kode berikut menunjukkan cara menyetel properti **EphasisMark**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetFontEmphasisMark.cpp" >}}
