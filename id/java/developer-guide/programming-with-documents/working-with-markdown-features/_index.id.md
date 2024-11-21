---
title: Sitemap Markdown Fitur dalam Java
second_title: Aspose.Words Sitemap Java
articleTitle: Sitemap Markdown Sitemap
linktitle: Sitemap Markdown Sitemap
description: "Bagaimana cara menerapkan Markdown fitur menggunakan JavaSitemap Semua fitur diwakili sebagai gaya yang sesuai atau format langsung."
type: docs
weight: 420
url: /id/java/working-with-markdown-features/
timestamp: 2024-01-31-14-23-37
---

Topik ini membahas cara menerapkan Markdown fitur menggunakan Aspose.WordsSitemap Markdown adalah cara sederhana untuk memformat teks polos yang dapat dengan mudah dikonversi ke HTML. Aspose.Words mendukung berikut Markdown Fitur:

- Login
- Login
- Aturan horisontal
- Penekanan lama
- Penekanan Italic

Login Markdown implementasi fitur sebagian besar mengikuti `CommonMark` spesifikasi Aspose.Words API dan semua fitur diwakili sebagai gaya yang sesuai atau format langsung. Yang berarti

- Bold dan Italic diwakili sebagai `Font.Bold` Login `Font.Italic`Sitemap
- Headings adalah paragraf dengan Heading 1 - Heading 6 gaya
- Quotes adalah paragraf dengan "Quote" dalam nama gaya
- HorizontalRule adalah paragraf dengan `HorizontalRule` bentuk.

{{% alert color="primary" %}}

Ada nuansa translating Markdown Login Aspose.Words Document Object Model SitemapDOM), dijelaskan dalam artikel [Login Markdown Login Document Object Model SitemapDOMSitemap](/words/id/java/translate-markdown-to-document-object-model/)Sitemap

{{% /alert %}}


## Markdown Dokumen dengan Emphases

Bagian ini menunjukkan cara menghasilkan markdown dokumen dengan fasa yang diberikan di bawah ini:

{{< highlight csharp >}}
Markdown treats asterisks (*) and underscores (_) as indicators of emphasis.
You can write **bold** or *italic* text. 
You can also write ***BoldItalic***text.
{{< /highlight >}}

Potongan kode berikut dapat digunakan untuk menghasilkan di atas-given markdown Sitemap

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithEmphases.java" >}}


## Markdown Dokumen dengan Heading

Bagian ini menunjukkan cara menghasilkan markdown dokumen dengan judul yang diberikan di bawah ini:

{{< highlight csharp >}}
The following produces headings:
# Heading1
## Heading2
### Heading3
#### Heading4
##### Heading5
###### Heading6
# **Bold Heading1**
{{< /highlight >}}

Potongan kode berikut dapat digunakan untuk menghasilkan yang diberikan di atas markdown Sitemap

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithHeadings.java" >}}

## Markdown Dokumen dengan Kutipan Blok

Bagian ini menunjukkan cara menghasilkan markdown dokumen dengan kutipan blok seperti yang diberikan di bawah ini:

{{< highlight csharp >}}
We support blockquotes in Markdown:
>*Lorem*
>*ipsum*
>The quotes can be of any level and can be nested:
>>>Quote level 3
>>>
>>>>Nested quote level 4
>
>*Back to first level*
>### Headings are allowed inside Quotes
>{{< /highlight >}}

Potongan kode berikut dapat digunakan untuk menghasilkan yang diberikan di atas markdown Sitemap

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithBlockQuotes.java" >}}

## Markdown Dokumen dengan Rule Horizontal

Bagian ini menunjukkan cara menghasilkan markdown dokumen dengan Horizontal Aturan yang diberikan di bawah ini:

{{< highlight csharp >}}
We support Horizontal rules (Thematic breaks) in Markdown:
-----

{{< /highlight >}}

Potongan kode berikut dapat digunakan untuk menghasilkan di atas-given markdown Sitemap

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithHorizontalRule.java" >}}

## Baca Markdown Login

Potongan kode berikut menunjukkan bagaimana membaca markdown Sitemap

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-ReadMarkdownDocument.java" >}}

## Login Markdown Simpan Pilihan

Aspose.Words API Sitemap [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) kelas untuk menentukan opsi tambahan sementara menyimpan dokumen ke dalam Markdown Login

Contoh kode berikut menunjukkan cara menentukan berbagai Markdown menyimpan opsi.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-SaveAsMD.java" >}}

## Cara Align Konten Di Dalam Tabel sambil Mengekspor ke Markdown

Aspose.Words API Sitemap [TableContentAlignment](https://reference.aspose.com/words/java/com.aspose.words/tablecontentalignment/) enumerasi yang mendefinisikan arah penyelarasan untuk menyelaraskan konten di meja sambil mengekspor ke Markdown Sitemap Contoh kode berikut menunjukkan bagaimana menyelaraskan konten di dalam tabel.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-ExportIntoMarkdownWithTableContentAlignment.java" >}}
