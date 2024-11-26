---
title: Konversikan Dokumen menjadi Markdown dalam C++
second_title: Aspose.Words untuk C++
articleTitle: Konversikan Dokumen menjadi Markdown
linktitle: Konversikan Dokumen menjadi Markdown
type: docs
description: "Konversikan dokumen dalam format pemuatan apa pun yang didukung ke Markdown dan sebaliknya menggunakan C++."
keywords: how to convert a document to markdown c++, Convert doc to MD C++, convert DOCX to Markdown C++
weight: 40
url: /id/cpp/convert-a-document-to-markdown/
timestamp: 2024-10-21-08-52-03
---

Markdown adalah format populer yang digunakan untuk menandai teks dan selanjutnya mengubahnya menjadi HTML, PDF, DOCX, atau format lainnya. Banyak pengembang memilih format ini untuk menulis dokumentasi, menyiapkan artikel untuk dipublikasikan di blog, mendeskripsikan proyek, dan sebagainya.

Markdown sangat populer karena mudah untuk bekerja dengan format ini, dan juga dapat dengan mudah dikonversi ke format lain. Untuk alasan ini, Aspose.Words menyediakan kemampuan untuk mengonversi dokumen dalam [any supported load format](https://reference.aspose.com/words/cpp/aspose.words/) menjadi Markdown dan sebaliknya - Aspose.Words juga mendukung [save formats](https://reference.aspose.com/words/cpp/aspose.words/saveformat/) yang paling populer.

Sekarang fungsionalitas untuk bekerja dengan format Markdown sedang dikembangkan secara aktif untuk memberi Anda lebih banyak peluang untuk pekerjaan yang nyaman dan nyaman dengan dokumen.

## Konversikan Dokumen

Untuk mengonversi dokumen menjadi Markdown, Anda hanya perlu memuat dokumen dalam format apa pun yang didukung atau membuat dokumen baru secara terprogram. Kemudian Anda perlu menyimpan dokumen ke format Markdown.

Contoh kode berikut menunjukkan cara mengonversi DOCX menjadi Markdown:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToMarkdown-SaveAsMD.cpp" >}}

Anda juga dapat menentukan folder fisik tempat Anda ingin menyimpan gambar saat mengekspor dokumen ke format Markdown. Secara default, Aspose.Words menyimpan gambar di folder yang sama tempat file dokumen disimpan, tetapi Anda dapat mengesampingkan perilaku ini menggunakan properti [ImagesFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_imagesfolder/).

Menentukan folder melalui **ImagesFolder** juga berguna jika Anda menyimpan dokumen ke aliran dan Aspose.Words tidak memiliki folder untuk menyimpan gambar.

Jika **ImagesFolder** yang ditentukan tidak ada, itu akan dibuat secara otomatis.

Contoh kode berikut menunjukkan cara menentukan folder untuk gambar saat menyimpan dokumen ke aliran:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToMarkdown-SetImagesFolder.cpp" >}}

## Tentukan Opsi Penyimpanan saat Mengonversi ke Markdown

Aspose.Words menyediakan kemampuan untuk menggunakan kelas [MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/) untuk bekerja dengan opsi lanjutan saat menyimpan dokumen ke format Markdown. Sebagian besar properti mewarisi atau membebani properti yang sudah ada dalam kelas Namespace [Aspose.Words.Saving](https://reference.aspose.com/words/cpp/aspose.words.saving/) lainnya. Selain itu, sejumlah properti yang khusus untuk format Markdown juga telah ditambahkan. Misalnya, properti [TableContentAlignment](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_tablecontentalignment/) untuk mengontrol perataan konten dalam tabel, atau [ImageSavingCallback](https://reference.aspose.com/words/cpp/aspose.words.saving/iimagesavingcallback/) dan [ImagesFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_imagesfolder/) untuk mengontrol bagaimana gambar disimpan saat mengonversi dokumen ke format Markdown.

## Fitur Markdown yang didukung

Aspose.Words saat ini mendukung fitur Markdown berikut, yang sebagian besar mengikuti spesifikasi `CommonMark` dalam Aspose.Words API dan direpresentasikan sebagai gaya yang sesuai atau pemformatan langsung:

* Judul adalah paragraf dengan gaya Heading 1 – Heading 6
* Blockquotes adalah paragraf dengan "Quote" pada nama gaya
* IndentedCode adalah paragraf dengan "IndentedCode " dalam nama gaya
* FencedCode adalah paragraf dengan "FencedCode " dalam nama gaya
* InlineCode dijalankan dengan "InlineCode " dalam nama gaya `Font`
* Aturan horizontal adalah paragraf dengan bentuk `HorizontalRule`
* Penekanan yang berani
* Penekanan miring
* StrikeThrough pemformatan
* Daftar diberi nomor atau paragraf berpoin
* Tabel direpresentasikan dengan kelas `Table`
* Tautan direpresentasikan sebagai kelas `FieldHyperlink`

Contoh berikut menunjukkan cara membuat dokumen dengan beberapa gaya dan menyimpannya ke Markdown:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToMarkdown-SupportedMarkdownFeatures.cpp" >}}

Hasil dari contoh kode ini ditunjukkan di bawah ini.

![markdown-example-aspose-words-cpp](markdown-example.png)

## Kiat Bermanfaat

Ada beberapa nuansa dan kasus menarik, setelah mempelajari yang mana Anda dapat bekerja dengan file Markdown dengan lebih fleksibel dan nyaman. Misalnya, ada kemampuan untuk menggunakan:

* SetextHeading yang memungkinkan Anda membuat judul multi-baris di Markdown, sedangkan judul reguler di Markdown hanya dapat berupa satu baris. SetextHeading didasarkan pada gaya "Heading N", dan levelnya hanya bisa 1 atau 2. Jika N dalam "Heading N" lebih besar dari atau sama dengan 2, maka SetextHeading yang sesuai didasarkan pada "Heading 2", sebaliknya pada"Heading 1".
* Penanda berbeda untuk daftar berpoin tingkat pertama ("-", "+" atau "*", penanda standarnya adalah "-".) dan berbagai jenis penomoran untuk daftar terurut ("." atau ")", penanda standarnya adalah ".").
