---
title: Tentukan Opsi Tata Letak di C++
second_title: Aspose.Words untuk C++
articleTitle: Tentukan Opsi Tata Letak
linktitle: Tentukan Opsi Tata Letak
description: "Tentukan Opsi Tata Letak untuk berbagai tata letak dokumen."
type: docs
weight: 20
url: /id/cpp/specify-layout-options/
---

Aspose.Words memungkinkan Anda membuat dokumen keluaran dengan berbagai tata letak, bergantung pada parameter yang ditentukan dalam properti [LayoutOptions](https://reference.aspose.com/words/cpp/class/aspose.words.layout.layout_options) dari **Document**. Properti ini menyerupai beberapa opsi menu antarmuka pengguna Microsoft Word yang dijelaskan dalam artikel ini.

Untuk daftar lengkap parameter seperti [ContinuousSectionPageNumberingRestart](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_continuoussectionpagenumberingrestart/) untuk menghitung nomor halaman di bagian berkelanjutan yang memulai ulang penomoran halaman, atau [IgnorePrinterMetrics](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_ignoreprintermetrics/) untuk mengabaikan opsi kompatibilitas "Gunakan metrik printer untuk menyusun dokumen", lihat halaman kelas [LayoutOptions](https://reference.aspose.com/words/cpp/class/aspose.words.layout.layout_options).

## Tanda Pemformatan

Aspose.Words memungkinkan untuk mengelola tanda pemformatan menggunakan properti berikut:

- [ShowHiddenText](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_showhiddentext/) - nilai `Boolean`, yang menentukan apakah teks tersembunyi dirender.
- [ShowParagraphMarks](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_showparagraphmarks/) - nilai `Boolean`, yang menentukan apakah karakter tanda paragraf dirender.

Halaman yang digambarkan dalam contoh di bawah ini berisi tiga paragraf. Yang kedua disembunyikan. Pengguna dapat mengubah opsi **ShowHiddenText** untuk menampilkan teks tersembunyi ini di halaman. Juga, setiap paragraf memiliki tanda paragraf di bagian akhir. Tanda paragraf biasanya tidak terlihat kecuali properti **ShowParagraphMarks** disetel untuk merendernya.

![specify-layout-options-aspose-words-cpp-1](specify-layout-options-1.png)

Di Microsoft Word, parameter ini disetel menggunakan kotak dialog "File → Options → Display" sebagai berikut:

![specify-layout-options-aspose-words-cpp-2](specify-layout-options-3.png)

## Komentar dan Revisi

Dengan Aspose.Words, Anda dapat merender komentar dokumen yang akan terlihat sama seperti di Microsoft Word. Untuk menentukan apakah komentar dirender, gunakan properti [CommentDisplayMode](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_commentdisplaymode/).

Di Microsoft Word, parameter ini disetel menggunakan kotak dialog "Lacak Opsi Perubahan", seperti yang ditunjukkan di bawah ini:

![specify-layout-options-aspose-words-cpp-3](specify-layout-options-4.png)

Selain itu, Aspose.Words memungkinkan Anda menampilkan revisi dalam dokumen. Gunakan properti [RevisionOptions](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_revisionoptions/) dari kelas **LayoutOptions** untuk menentukan apakah revisi dokumen ditampilkan. Untuk mengontrol tampilannya (warna sorotan revisi, warna bilah revisi, dll.), gunakan kelas [RevisonOptions](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_revisionoptions/).

Anda juga dapat menampilkan revisi sebagai komentar pada konten. Untuk tujuan ini, gunakan properti [CommentDisplayMode](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/set_commentdisplaymode/) dan nilai [ShowInBalloons](https://reference.aspose.com/words/cpp/aspose.words.layout/commentdisplaymode/).

Contoh kode berikut menunjukkan cara menyesuaikan tampilan revisi:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRevisionOptions-SetShowInBalloons.cpp" >}}

Gambar di bawah ini menunjukkan bagaimana Aspose.Words menampilkan komentar dan revisi Hapus:

<img src="specify-layout-options-2.png" alt="comments_and_revisions_example_aspose_words_cpp" style="width:800px"/>

## Pembentuk Teks untuk Rendering Tipografi Tingkat Lanjut

Properti [TextShaperFactory](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_textshaperfactory/) memungkinkan Anda menyetel fungsionalitas pembentukan teks, serta dukungan fitur `OpenType`.

Gunakan pembentukan teks untuk pemrosesan dokumen dalam kasus utama berikut:

- Dokumen menggunakan Kerning, Pembentukan Angka, Bentuk Angka, atau Pengikat.
- Dokumen menggunakan Skrip yang Rumit, seperti bahasa Arab, Khmer, Thailand, dll.

{{% alert color="primary" %}}

Pembentukan teks hanya akan diaktifkan saat mengekspor dokumen ke PDF atau XPS.

{{% /alert %}}
