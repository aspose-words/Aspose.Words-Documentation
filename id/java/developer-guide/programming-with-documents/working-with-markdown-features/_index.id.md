---
title: Bekerja dengan Fitur Markdown di Java
second_title: Aspose.Words untuk Java
articleTitle: Bekerja dengan Fitur Markdown
linktitle: Bekerja dengan Fitur Markdown
description: "Cara menerapkan fitur Markdown menggunakan Java. Semua fitur direpresentasikan sebagai gaya yang sesuai atau pemformatan langsung."
type: docs
weight: 420
url: /id/java/working-with-markdown-features/
timestamp: 2024-01-31-14-23-37
---

Topik ini membahas cara mengimplementasikan fitur Markdown menggunakan Aspose.Words. Markdown adalah cara sederhana untuk memformat teks biasa yang dapat dengan mudah dikonversi menjadi HTML. Aspose.Words mendukung fitur Markdown berikut:

- Judul
- Blockquotes
- Aturan horisontal
- Penekanan yang berani
- Penekanan miring

Implementasi fitur Markdown sebagian besar mengikuti spesifikasi `CommonMark` dalam Aspose.Words API dan semua fitur direpresentasikan sebagai gaya yang sesuai atau pemformatan langsung. Yang berarti bahwa

- Tebal dan Miring direpresentasikan sebagai `Font.Bold` dan `Font.Italic`.
- Judul adalah paragraf dengan gaya Heading 1 - Heading 6.
- Kutipan adalah paragraf dengan "Kutipan" dalam nama gaya.
- HorizontalRule adalah paragraf dengan bentuk `HorizontalRule`.

{{% alert color="primary" %}}

Ada nuansa menerjemahkan Markdown ke Model Objek Dokumen Aspose.Words (DOM), yang dijelaskan dalam artikel [Temukan Markdown ke Model Objek Dokumen (DOM)](/words/java/translate-markdown-to-document-object-model/).

{{% /alert %}}


## Markdown Dokumen dengan Penekanan

Bagian ini menunjukkan kepada Anda cara membuat dokumen markdown dengan penekanan seperti yang diberikan di bawah ini:

{{< highlight csharp >}}
Markdown treats asterisks (*) and underscores (_) as indicators of emphasis.
You can write **bold** or *italic* text. 
You can also write ***BoldItalic***text.
{{< /highlight >}}

Cuplikan kode berikut dapat digunakan untuk menghasilkan dokumen markdown yang diberikan di atas.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithEmphases.java" >}}


## Markdown Dokumen dengan Judul

Bagian ini menunjukkan kepada Anda cara membuat dokumen markdown dengan judul seperti yang diberikan di bawah ini:

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

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithHeadings.java" >}}

## Markdown Dokumen dengan Tanda Kutip Balok

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

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithBlockQuotes.java" >}}

## Markdown Dokumen dengan Aturan Horizontal

Bagian ini menunjukkan kepada Anda cara membuat dokumen markdown dengan Aturan Horizontal seperti yang diberikan di bawah ini:

{{< highlight csharp >}}
We support Horizontal rules (Thematic breaks) in Markdown:
-----

{{< /highlight >}}

Cuplikan kode berikut dapat digunakan untuk menghasilkan dokumen markdown yang diberikan di atas.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithHorizontalRule.java" >}}

## Membaca Dokumen Markdown

Cuplikan kode berikut menunjukkan cara membaca dokumen markdown.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-ReadMarkdownDocument.java" >}}

## Tentukan Opsi Penyimpanan Markdown

Aspose.Words API menyediakan kelas [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) untuk menentukan opsi tambahan saat menyimpan dokumen ke dalam format Markdown.

Contoh kode berikut mendemonstrasikan cara menentukan berbagai opsi penyimpanan Markdown.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-SaveAsMD.java" >}}

## Cara Menyelaraskan Konten Di Dalam Tabel saat Mengekspor ke Markdown

Aspose.Words API menyediakan enumerasi [TableContentAlignment](https://reference.aspose.com/words/java/com.aspose.words/tablecontentalignment/) yang menentukan arah perataan untuk menyelaraskan konten dalam tabel saat mengekspor ke dalam dokumen Markdown. Contoh kode berikut menunjukkan cara menyelaraskan konten di dalam tabel.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-ExportIntoMarkdownWithTableContentAlignment.java" >}}
