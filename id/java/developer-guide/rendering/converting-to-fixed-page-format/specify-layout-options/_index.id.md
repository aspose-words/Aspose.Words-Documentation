---
title: Tentukan Opsi Tata Letak dalam Java
second_title: Aspose.Words untuk Java
articleTitle: Tentukan Opsi Tata Letak
linktitle: Tentukan Opsi Tata Letak
description: "Buat dokumen keluaran dengan berbagai tata letak, bergantung pada parameter yang ditentukan dalam Dokumen menggunakan Java."
type: docs
weight: 10
url: /id/java/specify-layout-options/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words memungkinkan Anda membuat dokumen keluaran dengan berbagai tata letak, bergantung pada parameter yang ditentukan dalam properti [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) dari **Document**. Properti ini menyerupai beberapa opsi menu antarmuka pengguna Microsoft Word yang dijelaskan dalam artikel ini.

Untuk daftar lengkap parameter seperti [ContinuousSectionPageNumberingRestart](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getContinuousSectionPageNumberingRestart) untuk menghitung nomor halaman di bagian berkelanjutan yang memulai ulang penomoran halaman, atau [IgnorePrinterMetrics](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getIgnorePrinterMetrics) untuk mengabaikan opsi kompatibilitas "Gunakan metrik printer untuk menyusun dokumen", lihat halaman kelas [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/).

## Tanda Pemformatan

Aspose.Words memungkinkan untuk mengelola tanda pemformatan menggunakan properti berikut:

- [ShowHiddenText](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getShowHiddenText) - nilai `Boolean`, yang menentukan apakah teks tersembunyi dirender.
- [ShowParagraphMarks](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getShowParagraphMarks) - nilai `Boolean`, yang menentukan apakah karakter tanda paragraf dirender.

Halaman yang digambarkan dalam contoh di bawah ini berisi tiga paragraf. Yang kedua disembunyikan. Pengguna dapat mengubah opsi **ShowHiddenText** untuk menampilkan teks tersembunyi ini di halaman. Juga, setiap paragraf memiliki tanda paragraf di bagian akhir. Tanda paragraf biasanya tidak terlihat kecuali properti **ShowParagraphMarks** disetel untuk merendernya.

![formatting_marks_example_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-1.png)

Di Microsoft Word, parameter ini disetel menggunakan kotak dialog "File → Options → Display" sebagai berikut:

![formatting_marks_ms_word_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-3.png)

## Komentar dan Revisi

Dengan Aspose.Words, Anda dapat merender komentar dokumen yang akan terlihat sama seperti di Microsoft Word. Untuk menentukan apakah komentar dirender, gunakan properti [ShowComments](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/).

Di Microsoft Word, parameter ini disetel menggunakan kotak dialog "Lacak Opsi Perubahan", seperti yang ditunjukkan di bawah ini:

![comments_and_revisions_ms_word_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-4.png)

Selain itu, Aspose.Words memungkinkan Anda menampilkan revisi dalam dokumen. Gunakan properti [RevisionOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getRevisionOptions) dari kelas **LayoutOptions** untuk menentukan apakah revisi dokumen ditampilkan. Untuk mengontrol tampilannya (warna sorotan revisi, warna bilah revisi, dll.), gunakan kelas [RevisonOptions](https://reference.aspose.com/words/java/com.aspose.words/revisionoptions/).

Anda juga dapat menampilkan revisi sebagai komentar pada konten. Untuk tujuan ini, gunakan properti [CommentDisplayMode](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getCommentDisplayMode) dan nilai [ShowInBalloons](https://reference.aspose.com/words/java/com.aspose.words/commentdisplaymode/).

Contoh kode berikut menunjukkan cara menyesuaikan tampilan revisi:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-SetShowInBalloons.java" >}}

Gambar di bawah ini menunjukkan bagaimana Aspose.Words menampilkan komentar dan revisi Hapus:

<img src="/words/java/specify-layout-options/specify-layout-options-2.png" alt="comments_and_revisions_example_aspose_words_java" style="width:800px"/>

## Pembentuk Teks untuk Rendering Tipografi Tingkat Lanjut

Properti [TextShaperFactory](https://reference.aspose.com/words/java/com.aspose.words/itextshaperfactory/) memungkinkan Anda menyetel fungsionalitas pembentukan teks, serta dukungan fitur `OpenType`.

Gunakan pembentukan teks untuk pemrosesan dokumen dalam kasus utama berikut:

- Dokumen menggunakan Kerning, Pembentukan Angka, Bentuk Angka, atau Pengikat.
- Dokumen menggunakan Skrip yang Rumit, seperti bahasa Arab, Khmer, Thailand, dll.

{{% alert color="primary" %}}

Pembentukan teks hanya akan diaktifkan saat mengekspor dokumen ke PDF atau XPS.

{{% /alert %}}
