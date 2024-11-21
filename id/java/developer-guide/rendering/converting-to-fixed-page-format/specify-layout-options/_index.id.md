---
title: Tentukan Pilihan Tata Letak di Java
second_title: Aspose.Words Sitemap Java
articleTitle: Tentukan pilihan Layout
linktitle: Tentukan pilihan Layout
description: "Buat dokumen output dengan berbagai tata letak, tergantung pada parameter yang ditentukan dalam Dokumen menggunakan JavaSitemap"
type: docs
weight: 10
url: /id/java/specify-layout-options/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words memungkinkan Anda untuk membuat dokumen output dengan berbagai tata letak, tergantung pada parameter yang ditentukan dalam [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) properti **Document**Sitemap Properti ini menyerupai beberapa Microsoft Word pilihan menu antarmuka pengguna yang dijelaskan dalam artikel ini.

Untuk daftar lengkap parameter seperti [ContinuousSectionPageNumberingRestart](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getContinuousSectionPageNumberingRestart) untuk menghitung nomor halaman di bagian terus menerus yang restart halaman nomor, atau [IgnorePrinterMetrics](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getIgnorePrinterMetrics) untuk mengabaikan "Gunakan metrik printer untuk meletakkan dokumen" opsi kompatibilitas, lihat [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) Login

## Login

Aspose.Words memungkinkan untuk mengelola tanda format menggunakan sifat berikut:

- Login [ShowHiddenText](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getShowHiddenText) Sitemap `Boolean` nilai, yang menentukan apakah teks tersembunyi diberikan.
- Login [ShowParagraphMarks](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getShowParagraphMarks) Sitemap `Boolean` nilai, yang menentukan apakah karakter tanda paragraf diberikan.

Halaman yang digambarkan dalam contoh di bawah ini berisi tiga ayat. Yang kedua adalah tersembunyi. Pengguna dapat mengubah **ShowHiddenText** opsi untuk menampilkan teks tersembunyi ini di halaman. Juga, setiap paragraf memiliki tanda paragraf di akhir. Tanda paragraf biasanya tidak terlihat kecuali **ShowParagraphMarks** properti diatur untuk membuatnya. Meme it

![formatting_marks_example_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-1.png)

Sitemap Microsoft Word, parameter ini diatur menggunakan kotak dialog "File → Options → Display" sebagai berikut:

![formatting_marks_ms_word_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-3.png)

## Komentar dan Revisi

Sitemap Aspose.Words, Anda dapat membuat komentar dokumen yang akan terlihat sama seperti Microsoft WordSitemap Untuk menentukan apakah komentar diberikan, gunakan [ShowComments](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) Login

Sitemap Microsoft Word, parameter ini diatur menggunakan "Track Changes Options" kotak dialog, seperti yang ditunjukkan di bawah ini:

![comments_and_revisions_ms_word_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-4.png)

Sitemap Aspose.Words memungkinkan Anda untuk menampilkan revisi dalam dokumen. Gunakan [RevisionOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getRevisionOptions) properti **LayoutOptions** kelas untuk menentukan apakah revisi dokumen ditampilkan. Untuk mengontrol penampilan mereka (warna sorotan revisi, warna revisi bar, dll.), gunakan [RevisonOptions](https://reference.aspose.com/words/java/com.aspose.words/revisionoptions/) Sitemap

Anda juga dapat memiliki revisi yang ditampilkan sebagai komentar pada konten. Untuk tujuan ini, gunakan [CommentDisplayMode](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getCommentDisplayMode) properti dan [ShowInBalloons](https://reference.aspose.com/words/java/com.aspose.words/commentdisplaymode/) Sitemap

Contoh kode berikut menunjukkan bagaimana menyesuaikan tampilan revisi:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-SetShowInBalloons.java" >}}

Gambar di bawah ini menunjukkan bagaimana Aspose.Words render komentar dan revisi Hapus:

<img src="/words/java/specify-layout-options/specify-layout-options-2.png" alt="comments_and_revisions_example_aspose_words_java" style="width:800px"/>

## Teks Shaper untuk Advanced Typography Rendering

Login [TextShaperFactory](https://reference.aspose.com/words/java/com.aspose.words/itextshaperfactory/) properti memungkinkan Anda untuk mengatur fungsi pembentukan teks, serta `OpenType` fitur dukungan.

Gunakan pembentuk teks untuk pemrosesan dokumen dalam kasus utama berikut:

- Dokumen menggunakan Kerning, Pembentukan Numeral, Bentuk Numeral, atau Ligatur.
- Sebuah dokumen menggunakan Script Kompleks, seperti Arab, Khmer, Thailand, dll.

{{% alert color="primary" %}}

Teks membentuk hanya akan diaktifkan ketika mengekspor dokumen ke PDF atau XPSSitemap

{{% /alert %}}
