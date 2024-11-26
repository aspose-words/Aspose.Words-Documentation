---
title: Terjemahkan Markdownmenjadi DOM
second_title: Aspose.Words untuk Java
articleTitle: Terjemahkan Markdown ke Model Objek Dokumen (DOM)
linktitle: Terjemahkan Markdown ke Model Objek Dokumen (DOM)
type: docs
description: "Tarnslate dokumen Markdown ke Model Objek Dokumen dan kembali. Jadi, Anda dapat bekerja dengan Markdown kompleks yang ada dan membuat dokumen Markdown secara terprogram dari awal menggunakan Java."
weight: 20
url: /id/java/translate-markdown-to-document-object-model/
timestamp: 2024-10-21-11-17-44
---

Untuk membaca, memanipulasi, dan memodifikasi konten dan pemformatan dokumen secara terprogram, Anda perlu menerjemahkannya ke Model Objek Dokumen Aspose.Words (DOM).

Berbeda dengan dokumen Word, Markdown tidak sesuai dengan DOM yang dijelaskan dalam [Aspose.Words Model Objek Dokumen (DOM)](/words/java/aspose-words-document-object-model/) artikel. Namun, Aspose.Words menyediakan mekanismenya sendiri untuk menerjemahkan dokumen Markdown ke DOM dan sebaliknya, sehingga kita dapat berhasil mengerjakan elemennya seperti pemformatan teks, tabel, header, dan lainnya.

Artikel ini menjelaskan bagaimana berbagai fitur markdown dapat diterjemahkan ke dalam format Aspose.Words DOM dan kembali ke Markdown.

## Kompleksitas Penerjemahan Markdown – DOM – Markdown

Kesulitan utama dari mekanisme ini tidak hanya menerjemahkan Markdown menjadi DOM, tetapi juga melakukan transformasi terbalik-menyimpan dokumen kembali ke format Markdown dengan kerugian minimal. Ada elemen, seperti tanda kutip bertingkat, yang transformasi baliknya tidak sepele.

Mesin terjemahan kami memungkinkan pengguna tidak hanya bekerja dengan elemen kompleks dalam dokumen Markdown yang ada, tetapi juga membuat dokumen mereka sendiri dalam format Markdown dengan struktur asli dari awal. Untuk membuat berbagai elemen, Anda perlu menggunakan gaya dengan nama tertentu sesuai dengan aturan tertentu yang dijelaskan nanti dalam artikel ini. Gaya seperti itu dapat dibuat secara terprogram.

## Prinsip Penerjemahan Umum

Kami menggunakan pemformatan [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) untuk blok sebaris. Jika tidak ada korespondensi langsung untuk fitur Markdown di Aspose.Words DOM, kami menggunakan gaya karakter dengan nama yang dimulai dari beberapa kata khusus.

Untuk blok penampung, kami menggunakan pewarisan gaya untuk menunjukkan fitur Markdown bersarang. Dalam hal ini, meskipun tidak ada fitur bersarang, kami juga menggunakan gaya paragraf dengan nama yang dimulai dari beberapa kata khusus.

Daftar berpoin dan terurut juga merupakan blok penampung dalam Markdown. Sarangnya direpresentasikan dalam DOM dengan cara yang sama seperti untuk semua blok penampung lainnya yang menggunakan pewarisan gaya. Namun, selain itu, daftar dalam DOM memiliki pemformatan angka yang sesuai baik dalam gaya daftar atau pemformatan paragraf.

## Blok Sebaris

Kami menggunakan pemformatan [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) saat menerjemahkan fitur **Bold**, *Italic* atau ~~Strikethrough~~ sebaris markdown.

| Markdown fitur | Aspose.Words |
| ----------------------------- | ------------------ |
| **Bold**<br />`**bold text**` | `Font.Bold = true` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-BoldText.java" >}} |  |
| **Italic**<br />`*italic text*` | `Font.Italic = true` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-ItalicText.java" >}} |  |
| **Strikethrough**<br />`~Strikethrough text~` | `Font.StrikeThrough = true` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Strikethrough.java" >}} |  |

Kami menggunakan gaya karakter dengan nama yang dimulai dari kata `InlineCode`, diikuti dengan titik opsional `(.)` dan sejumlah backticks ```(`)``` untuk fitur `InlineCode`. Jika sejumlah backtick terlewatkan, maka satu backtick akan digunakan secara default.

| Markdown fitur | Aspose.Words |
| ----------------------------- | ------------------ |
| **InlineCode**<br />`**inline code**` | `Font.StyleName = "InlineCode[.][N]"` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-InlineCode.java" >}} |  |
| **Autolink**<br />`<scheme://domain.com>`<br />`<email@domain.com>` | Kelas [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/). |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Autolink.java" >}} |  |
| **Link**<br />`[teks tautan](url)`<br />`[teks tautan](<url>"title")`<br />`[teks tautan](url 'title')`<br />`[teks tautan](url (title))` | Kelas [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/). |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Link.java" >}} |  |
| **Image**<br />`![](/words/java/translate-markdown-to-document-object-model/url)`<br />`![teks alternatif](/words/java/translate-markdown-to-document-object-model/<url>"title")`<br />`![teks alternatif](/words/java/translate-markdown-to-document-object-model/url ‘title’)`<br />`![teks alternatif](/words/java/translate-markdown-to-document-object-model/url (title))` | Kelas [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/). |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Image.java" >}} |  |

## Blok Kontainer

Dokumen adalah urutan blok penampung seperti judul, paragraf, daftar, tanda kutip, dan lainnya. Blok kontainer dapat dibagi menjadi 2 kelas: Blok daun dan Kontainer Kompleks. Blok daun hanya dapat berisi konten sebaris. Kontainer kompleks, pada gilirannya, dapat berisi blok kontainer lain, termasuk Blok daun.

### Blok Daun

Tabel di bawah ini menunjukkan contoh penggunaan blok Daun Markdowndalam Aspose.Words:

| Markdown fitur | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **HorizontalRule**<br />`-----` | Ini adalah paragraf sederhana dengan bentuk HorizontalRule yang sesuai:<br />`DocumentBuilder.InsertHorizontalRule()` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-HorizontalRule.java" >}} |  |
| **ATX Heading**<br />`# H1, ## H2, ### H3…` | `ParagraphFormat.StyleName = "Heading N"`, dimana (1<= N <= 9).<br />Ini diterjemahkan ke dalam gaya bawaan dan harus persis dengan pola yang ditentukan (tidak ada sufiks atau awalan yang diizinkan).<br />Jika tidak, itu hanya akan menjadi paragraf biasa dengan gaya yang sesuai. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Heading.java" >}} |  |
| **Setext Heading**<br />`===` (if Heading level 1),<br />`---` (if Heading level 2) | `ParagraphFormat.StyleName = "SetextHeading[some suffix]"`, berdasarkan gaya 'Heading N'.<br />Jika (N >= 2), maka 'Heading 2' akan digunakan, sebaliknya 'Heading 1'.<br />Sufiks apa pun diperbolehkan, tetapi pengimpor Aspose.Words masing-masing menggunakan angka "1" dan "2". |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SetextHeading.java" >}} |  |
| **Indented Code**<br>{{< highlight java >}}<br/>if ()<br/>then<br/>else<br/>```{{< /highlight >}} | `ParagraphFormat.StyleName = "IndentedCode[some suffix]"` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-FencedCode.java" >}} |  |
### Wadah Kompleks

Tabel di bawah ini menunjukkan contoh penggunaan Wadah Kompleks Markdowndalam Aspose.Words:

| Markdown fitur | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **Quote**<br />`> quote,`<br />`>> nested quote` | `ParagraphFormat.StyleName = "Quote[some suffix]"`<br />Akhiran dalam nama gaya bersifat opsional, tetapi pengimpor Aspose.Words menggunakan nomor terurut 1, 2, 3, .... dalam kasus tanda kutip bersarang.<br />Bersarang didefinisikan melalui gaya yang diwariskan. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Quote.java" >}} |  |
| **BulletedList**<br />`- Item 1`<br />`- Item 2`<br />	` - Item 2a`<br />	` - Item 2b` | Daftar berpoin direpresentasikan menggunakan penomoran paragraf:<br />`ListFormat.ApplyBulletDefault()`<br />Ada 3 jenis daftar berpoin. Mereka hanya berbeda dalam format penomoran tingkat pertama. Ini adalah: `‘-’`, `‘+’` atau `‘*’` masing-masing. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-BulletedList.java" >}} |  |
| **OrderedList**<br />`1. Item 1`<br />`2. Item 2`<br />	`1) Item 2a`<br />	`2) Item 2b` | Daftar terurut direpresentasikan menggunakan penomoran paragraf:<br />`ListFormat.ApplyNumberDefault()`<br />Bisa ada 2 penanda format angka: ‘.’ dan ‘)’. Penanda standarnya adalah ‘.’. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-OrderedList.java" >}} |  |

### Tabel

Aspose.Words juga memungkinkan untuk menerjemahkan tabel menjadi DOM, seperti yang ditunjukkan di bawah ini:

| Markdown fitur | Aspose.Words |
| ---------------------------------------- | ------------------------------------------------------------ |
| `Table`<br />`a|b`<br />`-|-`<br />`c|d` | kelas [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) dan [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/). |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Table.java" >}} |  |

## Lihat Juga

* [Bekerja dengan Fitur Markdown](/words/java/working-with-markdown-features/)

