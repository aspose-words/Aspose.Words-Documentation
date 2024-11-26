---
title: Bekerja dengan Fitur Markdown
second_title: Aspose.Words untuk Python via .NET
articleTitle: Bekerja dengan Fitur Markdown
linktitle: Bekerja dengan Fitur Markdown
description: "Cara mengimplementasikan fitur Markdown menggunakan Python. Semua fitur direpresentasikan sebagai gaya yang sesuai atau format langsung."
type: docs
weight: 420
url: /id/python-net/working-with-markdown-features/
timestamp: 2024-01-31-14-23-37
---

Topik ini membahas cara mengimplementasikan fitur Markdown menggunakan Aspose.Words. Markdown adalah cara sederhana untuk memformat teks biasa yang dapat dengan mudah dikonversi ke HTML. Aspose.Words mendukung fitur Markdown berikut:

- Judul
- Blockquote
- Aturan horisontal
- Penekanan yang berani
- Penekanan miring

Implementasi fitur Markdown sebagian besar mengikuti spesifikasi `CommonMark` dalam Aspose.Words API dan semua fitur direpresentasikan sebagai gaya yang sesuai atau format langsung. Artinya

- Tebal dan Miring direpresentasikan sebagai [Font.bold](https://reference.aspose.com/words/python-net/aspose.words/font/bold/) dan [Font.Italic](https://reference.aspose.com/words/python-net/aspose.words/font/italic/)
- Heading adalah paragraf dengan gaya Heading 1 - Heading 6
- Kutipan adalah paragraf dengan "Kutipan" di nama gayanya
- HorizontalRule adalah paragraf yang berbentuk HorizontalRule.

{{% alert color="primary" %}}

Ada nuansa menerjemahkan Markdown ke Aspose.Words Document Object Model (DOM), yang dijelaskan dalam artikel [Terjemahkan Markdown ke Document Object Model (DOM)](/words/id/python-net/translate-markdown-to-document-object-model/).

{{% /alert %}}

## Dokumen Markdown dengan Penekanan

Bagian ini menunjukkan kepada Anda cara membuat dokumen markdown dengan penekanan seperti yang diberikan di bawah ini:

{{< highlight csharp >}}
Markdown treats asterisks (*) and underscores (_) as indicators of emphasis.
You can write **bold** or *italic* text. 
You can also write ***BoldItalic*** text.
{{< /highlight >}}

Cuplikan kode berikut dapat digunakan untuk menghasilkan dokumen markdown yang diberikan di atas.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-Emphases.py" >}}

## Dokumen Markdown dengan Judul

Bagian ini menunjukkan kepada Anda cara membuat dokumen markdown dengan judul seperti di bawah ini:

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

Cuplikan kode berikut dapat digunakan untuk menghasilkan dokumen markdown yang diberikan di atas.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-Headings.py" >}}

## Dokumen Markdown dengan Kutipan Blok

Bagian ini menunjukkan kepada Anda cara membuat dokumen markdown dengan tanda kutip blok seperti yang diberikan di bawah ini:

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

Cuplikan kode berikut dapat digunakan untuk menghasilkan dokumen markdown yang diberikan di atas.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-BlockQuotes.py" >}}

## Dokumen Markdown dengan Aturan Horizontal

Bagian ini menunjukkan kepada Anda cara membuat dokumen markdown dengan Aturan Horizontal seperti yang diberikan di bawah ini:

{{< highlight csharp >}}
We support Horizontal rules (Thematic breaks) in Markdown:
-----

{{< /highlight >}}

Cuplikan kode berikut dapat digunakan untuk menghasilkan dokumen markdown yang diberikan di atas.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-HorizontalRule.py" >}}

## Membaca Dokumen Markdown

Cuplikan kode berikut menunjukkan cara membaca dokumen markdown.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-ReadMarkdownDocument.py" >}}

## Tentukan Opsi Penyimpanan Markdown

Aspose.Words API menyediakan kelas [MarkdownSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/) untuk menentukan opsi tambahan saat menyimpan dokumen ke dalam format Markdown.

Contoh kode berikut menunjukkan cara menentukan berbagai opsi penyimpanan Markdown.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-SaveToMarkdownDocument.py" >}}

## Cara Menyelaraskan Konten di Dalam Tabel saat Mengekspor ke Markdown

Aspose.Words API menyediakan enumerasi [TableContentAlignment](https://reference.aspose.com/words/python-net/aspose.words.saving/tablecontentalignment/) yang menentukan arah penyelarasan untuk menyelaraskan konten dalam tabel saat mengekspor ke dokumen Markdown. Contoh kode berikut menunjukkan cara menyelaraskan konten di dalam tabel.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_markdown_save_options-ExportIntoMarkdownWithTableContentAlignment.py" >}}
