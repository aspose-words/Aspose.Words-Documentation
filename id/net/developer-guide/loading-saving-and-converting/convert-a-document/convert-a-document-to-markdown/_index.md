---
title: Konversikan Dokumen ke Markdown di C#
second_title: Aspose.Words untuk .NET
articleTitle: Konversikan Dokumen ke Markdown
linktitle: Konversikan Dokumen ke Markdown
type: docs
description: "Konversikan dokumen dalam format pemuatan apa pun yang didukung ke Markdown dan sebaliknya menggunakan C#."
keywords: how to convert a document to markdown c#
weight: 40
url: /id/net/convert-a-document-to-markdown/
---

Markdown adalah format populer yang digunakan untuk menandai teks dan selanjutnya mengkonversinya ke HTML, PDF, DOCX, atau format lainnya. Banyak pengembang memilih format ini untuk menulis dokumentasi, menyiapkan artikel untuk dipublikasikan di blog, menjelaskan proyek, dan sebagainya.

Markdown sangat populer karena mudah digunakan dengan format ini, dan juga dapat dengan mudah dikonversi ke format lain. Oleh karena itu, Aspose.Words menyediakan kemampuan untuk mengonversi dokumen dalam [format pemuatan apa pun yang didukung](https://reference.aspose.com/words/net/aspose.words/loadformat/) ke Markdown dan sebaliknya – Aspose.Words juga mendukung [menyimpan format](https://reference.aspose.com/words/net/aspose.words/saveformat/) paling populer.

Sekarang fungsionalitas untuk bekerja dengan format Markdown sedang dikembangkan secara aktif untuk memberi Anda lebih banyak peluang untuk bekerja dengan nyaman dan nyaman dengan dokumen.

## Konversi Dokumen

Untuk mengonversi dokumen ke Markdown, Anda hanya perlu memuat dokumen dalam format apa pun yang didukung atau membuat yang baru secara terprogram. Maka Anda perlu menyimpan dokumen ke format Markdown.

Contoh kode berikut menunjukkan cara mengonversi DOCX ke Markdown:

**.NET**
{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToMarkdown-SaveAsMD.cs" >}}

Anda juga dapat menentukan folder fisik tempat Anda ingin menyimpan gambar saat mengekspor dokumen ke format Markdown. Secara default, Aspose.Words menyimpan gambar di folder yang sama tempat file dokumen disimpan, namun Anda dapat mengganti perilaku ini menggunakan properti [ImagesFolder](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/imagesfolder/).

Menentukan folder melalui **ImagesFolder** juga berguna jika Anda menyimpan dokumen ke aliran dan Aspose.Words tidak memiliki folder untuk menyimpan gambar.

Jika **ImagesFolder** yang ditentukan tidak ada, maka akan dibuat secara otomatis.

Contoh kode berikut menunjukkan cara menentukan folder untuk gambar saat menyimpan dokumen ke aliran:

**.NET**
{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToMarkdown-SetImagesFolder.cs" >}}

## Tentukan Opsi Simpan saat Mengonversi ke Markdown

Aspose.Words menyediakan kemampuan untuk menggunakan kelas [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/) untuk bekerja dengan opsi lanjutan saat menyimpan dokumen ke format Markdown. Sebagian besar properti mewarisi atau membebani properti yang sudah ada dalam kelas [Aspose.Words.Saving](https://reference.aspose.com/words/net/aspose.words.saving/) Namespace lainnya. Selain itu, sejumlah properti khusus untuk format Markdown juga telah ditambahkan. Misalnya, properti [TableContentAlignment](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/tablecontentalignment/) untuk mengontrol perataan konten dalam tabel, atau [ImageSavingCallback](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/imagesavingcallback/) dan [ImagesFolder](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/imagesfolder/) untuk mengontrol cara gambar disimpan saat mengonversi dokumen ke format Markdown.

## Fitur Markdown yang Didukung

Aspose.Words saat ini mendukung fitur Markdown berikut, yang sebagian besar mengikuti spesifikasi `CommonMark` di Aspose.Words API dan direpresentasikan sebagai gaya yang sesuai atau format langsung:

* Heading adalah paragraf dengan gaya Heading 1 – Heading 6
* Blockquote adalah paragraf dengan "Quote" pada nama gayanya
* IndentedCode adalah paragraf dengan "IndentedCode" pada nama gayanya
* FencedCode adalah paragraf dengan "FencedCode" di nama gayanya
* InlineCode dijalankan dengan "InlineCode" dalam nama gaya `Font`
* Aturan horizontal adalah paragraf dengan bentuk `HorizontalRule`
* Penekanan yang berani
* Penekanan miring
* Pemformatan Coret
* Daftar adalah paragraf bernomor atau berpoin
* Tabel diwakili dengan kelas `Table`
* Tautan direpresentasikan sebagai kelas `FieldHyperlink`

Contoh berikut menunjukkan cara membuat dokumen dengan beberapa gaya dan menyimpannya ke Markdown:

**.NET**
{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToMarkdown-SupportedMarkdownFeatures.cs" >}}

Hasil dari contoh kode ini ditunjukkan di bawah ini.

![markdown-example-aspose-words-net](/words/net/convert-a-document-to-markdown/markdown-example.png)

## Kiat Berguna

Ada beberapa nuansa dan kasus menarik, setelah mempelajarinya Anda dapat bekerja dengan file Markdown dengan lebih fleksibel dan nyaman. Misalnya, ada kemampuan untuk menggunakan:

* SetextHeading yang memungkinkan Anda membuat judul multi-baris di Markdown, sedangkan judul biasa di Markdown hanya bisa berupa satu baris. SetextHeading didasarkan pada gaya "Heading N", dan levelnya hanya boleh 1 atau 2. Jika N dalam "Heading N" lebih besar dari atau sama dengan 2, maka SetextHeading yang bersangkutan didasarkan pada "Heading 2", sebaliknya pada "Judul 1".
* Penanda berbeda untuk daftar berpoin tingkat pertama ("-", "+" atau "*", penanda default adalah "-".) dan jenis penomoran berbeda untuk daftar berurutan ("." atau ")", penanda defaultnya adalah ".").
