---
title: Tentukan Opsi Tata Letak di Python
second_title: Aspose.Words untuk Python via .NET
articleTitle: Tentukan Opsi Tata Letak
linktitle: Tentukan Opsi Tata Letak
description: "Tentukan Opsi Tata Letak untuk berbagai tata letak dokumen menggunakan Python."
type: docs
weight: 10
url: /id/python-net/specify-layout-options/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words memungkinkan Anda membuat dokumen keluaran dengan berbagai tata letak, bergantung pada parameter yang ditentukan dalam properti kelas [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/). Beberapa properti ini menyerupai beberapa opsi menu antarmuka pengguna Microsoft Word – properti tersebut akan dijelaskan dalam artikel ini.

Untuk daftar lengkap parameter seperti [continuous_section_page_numbering_restart](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/continuous_section_page_numbering_restart/) untuk menghitung nomor halaman di bagian berkelanjutan yang memulai ulang penomoran halaman, atau [ignore_printer_metrics](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/ignore_printer_metrics/) untuk mengabaikan opsi kompatibilitas "Gunakan metrik printer untuk menata letak dokumen", lihat halaman kelas [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/).

## Tanda Pemformatan

Aspose.Words memungkinkan untuk mengelola tanda pemformatan menggunakan properti berikut:

- [show_hidden_text](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_hidden_text/) – nilai `Boolean`, yang menentukan apakah teks tersembunyi dirender.
- [show_paragraph_marks](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_paragraph_marks/) – nilai `Boolean`, yang menentukan apakah karakter tanda paragraf dirender.

Halaman yang digambarkan pada contoh di bawah ini berisi tiga paragraf. Yang kedua disembunyikan. Pengguna dapat mengubah opsi [show_hidden_text](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_hidden_text/) untuk menampilkan teks tersembunyi ini di halaman. Selain itu, setiap paragraf memiliki tanda paragraf di akhir. Tanda paragraf biasanya tidak terlihat kecuali properti [show_paragraph_marks](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_paragraph_marks/) diatur untuk merendernya.

![specify-layout-options_1](/words/python-net/specify-layout-options/specify-layout-options-1.png)

Di Microsoft Word, parameter ini diatur menggunakan kotak dialog "File → Options → Display" sebagai berikut:

![specify-layout-options_2](/words/python-net/specify-layout-options/specify-layout-options-2.jpg)

## Komentar dan Revisi

Dengan Aspose.Words, Anda dapat merender komentar dokumen yang tampilannya sama seperti di Microsoft Word. Untuk menentukan apakah komentar dirender, gunakan properti [comment_display_mode](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/comment_display_mode/).

Di Microsoft Word, parameter ini diatur menggunakan kotak dialog "Opsi Lacak Perubahan", seperti yang ditunjukkan di bawah ini:

![specify-layout-options_3](/words/python-net/specify-layout-options/specify-layout-options-3.jpg)

Selain itu, Aspose.Words memungkinkan Anda menampilkan revisi dalam dokumen. Gunakan properti [revision_options](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/revision_options/) dari kelas [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/) untuk menentukan apakah revisi dokumen ditampilkan. Untuk mengontrol tampilannya (revisi warna highlight, revisi warna bilah, dll.), gunakan kelas [RevisionOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/revisionoptions/).

Anda juga dapat menampilkan revisi sebagai komentar terhadap konten. Untuk tujuan ini, gunakan properti [comment_display_mode](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/comment_display_mode/) dan nilai [SHOW_IN_BALLOONS](https://reference.aspose.com/words/python-net/aspose.words.layout/commentdisplaymode/#show_in_balloons).

Contoh kode berikut menunjukkan cara menyesuaikan tampilan revisi:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_revisions-ShowRevisionsInBalloons.py" >}}

Gambar di bawah menunjukkan bagaimana Aspose.Words merender komentar dan revisi Hapus:

<img src="/words/python-net/specify-layout-options/specify-layout-options-4.png" alt="komentar_dan_revisi_example_aspose_words_net" style="width:800px"/>
