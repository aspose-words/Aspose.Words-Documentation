---
title: Konversikan Dokumen ke Markdown
second_title: Aspose.Words untuk Python via .NET
articleTitle: Konversikan Dokumen ke Markdown
linktitle: Konversikan Dokumen ke Markdown
type: docs
description: "Konversikan dokumen dalam format pemuatan apa pun yang didukung ke Markdown dan sebaliknya menggunakan Python."
keywords: how to convert a document to markdown python
weight: 40
url: /id/python-net/convert-a-document-to-markdown/
timestamp: 2024-01-27-14-07-04
---

Markdown adalah format populer yang digunakan untuk menandai teks dan selanjutnya mengkonversinya ke HTML, PDF, DOCX, atau format lainnya. Banyak pengembang memilih format ini untuk menulis dokumentasi, menyiapkan artikel untuk dipublikasikan di blog, menjelaskan proyek, dan sebagainya.

Markdown sangat populer karena mudah digunakan dengan format ini, dan juga dapat dengan mudah dikonversi ke format lain. Oleh karena itu, Aspose.Words menyediakan kemampuan untuk mengonversi dokumen dalam [format pemuatan apa pun yang didukung](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) ke Markdown dan sebaliknya – Aspose.Words juga mendukung [menyimpan format](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) paling populer.

Sekarang fungsionalitas untuk bekerja dengan format Markdown sedang dikembangkan secara aktif untuk memberi Anda lebih banyak peluang untuk bekerja dengan nyaman dan nyaman dengan dokumen.

## Konversi Dokumen

Untuk mengonversi dokumen ke Markdown, Anda hanya perlu memuat dokumen dalam format apa pun yang didukung atau membuat yang baru secara terprogram. Maka Anda perlu menyimpan dokumen ke format Markdown.

Contoh kode berikut menunjukkan cara mengonversi DOCX ke Markdown:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-SaveToMarkdownDocument.py" >}}

Anda juga dapat menentukan folder fisik tempat Anda ingin menyimpan gambar saat mengekspor dokumen ke format Markdown. Secara default, Aspose.Words menyimpan gambar di folder yang sama tempat file dokumen disimpan, namun Anda dapat mengganti perilaku ini menggunakan properti [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder/).

Menentukan folder melalui [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder/) juga berguna jika Anda menyimpan dokumen ke aliran dan Aspose.Words tidak memiliki folder untuk menyimpan gambar.

Jika [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder/) yang ditentukan tidak ada, maka akan dibuat secara otomatis.

Contoh kode berikut menunjukkan cara menentukan folder untuk gambar saat menyimpan dokumen ke aliran:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_markdown_save_options-SetImagesFolder.py" >}}

## Tentukan Opsi Simpan saat Mengonversi ke Markdown

Aspose.Words menyediakan kemampuan untuk menggunakan kelas [MarkdownSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/) untuk bekerja dengan opsi lanjutan saat menyimpan dokumen ke format Markdown. Sebagian besar properti mewarisi atau membebani properti yang sudah ada di kelas [aspose.words.saving](https://reference.aspose.com/words/python-net/aspose.words.saving/) lainnya. Selain itu, sejumlah properti khusus untuk format Markdown juga telah ditambahkan. Misalnya, properti [table_content_alignment](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/table_content_alignment/) untuk mengontrol perataan konten dalam tabel, atau [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder/) untuk mengontrol lokasi penyimpanan gambar saat mengonversi dokumen ke format Markdown.

## Fitur Markdown yang Didukung

Aspose.Words saat ini mendukung fitur Markdown berikut, yang sebagian besar mengikuti spesifikasi `CommonMark` di Aspose.Words API dan direpresentasikan sebagai gaya yang sesuai atau format langsung:

* Heading adalah paragraf dengan gaya Heading 1 – Heading 6
* Blockquote adalah paragraf dengan "Quote" di nama gayanya
* IndentedCode adalah paragraf dengan "IndentedCode" pada nama gayanya
* FencedCode adalah paragraf dengan "FencedCode" di nama gayanya
* InlineCode dijalankan dengan "InlineCode" dalam nama gaya `Font`
* Aturan horizontal adalah paragraf dengan bentuk `HorizontalRule`
* Penekanan yang berani
* Penekanan miring
* Pemformatan Coret
* Daftar adalah paragraf bernomor atau berpoin
* Tabel diwakili dengan kelas [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/)
* Tautan direpresentasikan sebagai kelas [FieldHyperlink](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldhyperlink/)

Contoh berikut menunjukkan cara membuat dokumen dengan beberapa gaya dan menyimpannya ke Markdown:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-CreateMarkdownDocument.py" >}}

Hasil dari contoh kode ini ditunjukkan di bawah ini.

![markdown-example-aspose-words-net](/words/python-net/convert-a-document-to-markdown/markdown-example.png)

## Kiat Berguna

Ada beberapa nuansa dan kasus menarik, setelah mempelajarinya Anda dapat bekerja dengan file Markdown dengan lebih fleksibel dan nyaman. Misalnya, ada kemampuan untuk menggunakan:

* SetextHeading yang memungkinkan Anda membuat judul multi-baris di Markdown, sedangkan judul biasa di Markdown hanya bisa berupa satu baris. SetextHeading didasarkan pada gaya "Heading N", dan levelnya hanya boleh 1 atau 2. Jika N dalam "Heading N" lebih besar dari atau sama dengan 2, maka SetextHeading yang bersangkutan didasarkan pada "Heading 2", sebaliknya pada "Judul 1".
* Penanda berbeda untuk daftar berpoin tingkat pertama ("-", "+" atau "*", penanda default adalah "-".) dan jenis penomoran berbeda untuk daftar berurutan ("." atau ")", penanda defaultnya adalah ".").
