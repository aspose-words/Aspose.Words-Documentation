---
title: Konversikan Dokumen menjadi Markdown dalam Java
second_title: Aspose.Words untuk Java
articleTitle: Konversikan Dokumen menjadi Markdown
linktitle: Konversikan Dokumen menjadi Markdown
type: docs
description: "Konversikan dokumen dalam format pemuatan apa pun yang didukung ke Markdown dan sebaliknya menggunakan Java."
keywords: how to convert a document to markdown Java, save as MD, DOCX to MD
weight: 33
url: /id/java/convert-a-document-to-markdown/
timestamp: 2024-01-27-14-07-04
---

Markdown adalah format populer yang digunakan untuk menandai teks dan selanjutnya diubah menjadi HTML, PDF, DOCX, atau format lainnya. Banyak pengembang memilih format ini untuk menulis dokumentasi, menyiapkan artikel untuk dipublikasikan di blog, mendeskripsikan proyek, dan sebagainya.

Markdown sangat populer karena mudah untuk bekerja dengan format ini, dan juga dapat dengan mudah dikonversi ke format lain. Untuk alasan ini, Aspose.Words menyediakan kemampuan untuk mengonversi dokumen dalam [format pemuatan apa pun yang didukung](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) menjadi Markdown dan sebaliknya - Aspose.Words juga mendukung [simpan format](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) yang paling populer.

Sekarang fungsionalitas untuk bekerja dengan format Markdown sedang dikembangkan secara aktif untuk memberi Anda lebih banyak peluang untuk pekerjaan yang nyaman dan nyaman dengan dokumen.

## Konversikan Dokumen menjadi Markdown

Untuk mengonversi dokumen menjadi Markdown, Anda hanya perlu memuat dokumen dalam format apa pun yang didukung atau membuat dokumen baru secara terprogram. Kemudian Anda perlu menyimpan dokumen ke format Markdown.

Contoh kode berikut menunjukkan cara mengonversi DOCX menjadi Markdown:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SaveAsMD.java" >}}


## Tentukan Opsi Penyimpanan saat Mengonversi ke Markdown

Aspose.Words menyediakan kemampuan untuk menggunakan kelas [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) untuk bekerja dengan opsi lanjutan saat menyimpan dokumen ke format Markdown. Selain properti pewarisan atau kelebihan beban lainnya, sejumlah properti yang khusus untuk format Markdown juga telah ditambahkan. Misalnya, properti [TableContentAlignment](https://reference.aspose.com/words/java/com.aspose.words/tablecontentalignment/) untuk mengontrol perataan konten dalam tabel, atau [ImageSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImageSavingCallback) dan [ImagesFolder](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImagesFolder) untuk mengontrol bagaimana gambar disimpan saat mengonversi dokumen ke format Markdown.

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

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SupportedMarkdownFeatures.java" >}}

Hasil dari contoh kode ini ditunjukkan di bawah ini.

![markdown-example-aspose-words-java](/words/java/convert-a-document-to-markdown/markdown-example.png)

## Kiat Bermanfaat

Ada beberapa nuansa dan kasus menarik, setelah mempelajari yang mana Anda dapat bekerja dengan file Markdown dengan lebih fleksibel dan nyaman. Misalnya, ada kemampuan untuk menggunakan:

* SetextHeading yang memungkinkan Anda membuat judul multi-baris di Markdown, sedangkan judul reguler di Markdown hanya dapat berupa satu baris. SetextHeading didasarkan pada gaya "Heading N", dan levelnya hanya bisa 1 atau 2. Jika N dalam "Heading N" lebih besar dari atau sama dengan 2, maka SetextHeading yang sesuai didasarkan pada "Heading 2", sebaliknya pada"Heading 1".
* Penanda berbeda untuk daftar berpoin tingkat pertama ("-", "+" atau "*", penanda standarnya adalah "-".) dan berbagai jenis penomoran untuk daftar terurut ("." atau ")", penanda standarnya adalah ".").
