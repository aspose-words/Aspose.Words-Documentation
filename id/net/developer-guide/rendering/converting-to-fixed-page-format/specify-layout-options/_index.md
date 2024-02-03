---
title: Tentukan Opsi Tata Letak di C#
second_title: Aspose.Words untuk .NET
articleTitle: Tentukan Opsi Tata Letak
linktitle: Tentukan Opsi Tata Letak
description: "Tentukan Opsi Tata Letak untuk berbagai tata letak dokumen menggunakan C#."
type: docs
weight: 10
url: /id/net/specify-layout-options/
---

Aspose.Words memungkinkan Anda membuat dokumen keluaran dengan berbagai tata letak, bergantung pada parameter yang ditentukan dalam properti kelas [LayoutOptions](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/). Beberapa properti ini menyerupai beberapa opsi menu antarmuka pengguna Microsoft Word – properti tersebut akan dijelaskan dalam artikel ini.

Untuk daftar lengkap parameter seperti [ContinuousSectionPageNumberingRestart](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/continuoussectionpagenumberingrestart/) untuk menghitung nomor halaman di bagian berkelanjutan yang memulai ulang penomoran halaman, atau [IgnorePrinterMetrics](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/ignoreprintermetrics/) untuk mengabaikan opsi kompatibilitas "Gunakan metrik printer untuk menata letak dokumen", lihat halaman kelas [LayoutOptions](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/).

## Tanda Pemformatan

Aspose.Words memungkinkan untuk mengelola tanda pemformatan menggunakan properti berikut:

- [ShowHiddenText](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/showhiddentext/) – nilai `Boolean`, yang menentukan apakah teks tersembunyi dirender.
- [ShowParagraphMarks](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/showparagraphmarks/) – nilai `Boolean`, yang menentukan apakah karakter tanda paragraf dirender.

Halaman yang digambarkan pada contoh di bawah ini berisi tiga paragraf. Yang kedua disembunyikan. Pengguna dapat mengubah opsi **ShowHiddenText** untuk menampilkan teks tersembunyi ini di halaman. Selain itu, setiap paragraf memiliki tanda paragraf di akhir. Tanda paragraf biasanya tidak terlihat kecuali properti **ShowParagraphMarks** diatur untuk merendernya.

![specify-layout-options_1](/words/net/specify-layout-options/specify-layout-options-1.png)

Di Microsoft Word, parameter ini diatur menggunakan kotak dialog "File → Options → Display" sebagai berikut:

![specify-layout-options_2](/words/net/specify-layout-options/specify-layout-options-2.jpg)

## Komentar dan Revisi

Dengan Aspose.Words, Anda dapat merender komentar dokumen yang tampilannya sama seperti di Microsoft Word. Untuk menentukan apakah komentar dirender, gunakan properti [CommentDisplayMode](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/commentdisplaymode/).

Di Microsoft Word, parameter ini diatur menggunakan kotak dialog "Opsi Lacak Perubahan", seperti yang ditunjukkan di bawah ini:

![specify-layout-options_3](/words/net/specify-layout-options/specify-layout-options-3.jpg)

Selain itu, Aspose.Words memungkinkan Anda menampilkan revisi dalam dokumen. Gunakan properti [RevisionOptions](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/revisionoptions/) dari kelas **LayoutOptions** untuk menentukan apakah revisi dokumen ditampilkan. Untuk mengontrol tampilannya (revisi warna highlight, revisi warna bilah, dll.), gunakan kelas [RevisonOptions](https://reference.aspose.com/words/net/aspose.words.layout/revisionoptions/).

Anda juga dapat menampilkan revisi sebagai komentar terhadap konten. Untuk tujuan ini, gunakan properti [CommentDisplayMode](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/commentdisplaymode/) dan nilai [ShowInBalloons](https://reference.aspose.com/words/net/aspose.words.layout/commentdisplaymode/).

Contoh kode berikut menunjukkan cara menyesuaikan tampilan revisi:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Revisions-ShowRevisionsInBalloons.cs" >}}

Gambar di bawah menunjukkan bagaimana Aspose.Words merender komentar dan revisi Hapus:

<img src="/words/net/specify-layout-options/specify-layout-options-4.png" alt="komentar_dan_revisi_example_aspose_words_net" style="width:800px"/>

## Pembentuk Teks untuk Rendering Tipografi Tingkat Lanjut

Properti [TextShaperFactory](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/textshaperfactory/) memungkinkan Anda mengatur fungsionalitas pembentukan teks, serta dukungan fitur `OpenType`.

Gunakan pembentukan teks untuk pemrosesan dokumen dalam kasus utama berikut:

- Sebuah dokumen menggunakan Kerning, Numeral Shaping, Numeral Forms, atau Ligatures.
- Dokumen menggunakan Aksara Kompleks, seperti Arab, Khmer, Thailand, dll.

{{% alert color="primary" %}}

Pembentukan teks hanya akan diaktifkan saat mengekspor dokumen ke PDF atau XPS.

{{% /alert %}}
