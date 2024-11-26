---
title: Login Markdown Login DOM
second_title: Aspose.Words Sitemap Java
articleTitle: Login Markdown Login Document Object Model SitemapDOMSitemap
linktitle: Login Markdown Login Document Object Model SitemapDOMSitemap
type: docs
description: "Login Markdown dokumen Document Object Model dan kembali. Jadi Anda dapat bekerja dengan kompleks yang ada Markdown dan programmatically menciptakan Markdown dokumen dari awal menggunakan JavaSitemap"
weight: 20
url: /id/java/translate-markdown-to-document-object-model/
timestamp: 2024-10-21-11-17-44
---

Untuk membaca secara programmatik, memanipulasi, dan memodifikasi konten dan memformat dokumen, Anda perlu menerjemahkannya ke Aspose.Words Document Object Model SitemapDOMSitemap

Berbeda dengan dokumen Word, Markdown tidak sesuai dengan DOM dijelaskan dalam [Aspose.Words Document Object Model (DOM)](/words/id/java/aspose-words-document-object-model/) Artikel Login Aspose.Words memberikan mekanisme sendiri untuk menerjemahkan Markdown dokumen DOM dan kembali, sehingga kita dapat berhasil bekerja dengan unsur-unsur mereka seperti format teks, tabel, header, dan lain-lain.

Artikel ini menjelaskan bagaimana berbagai markdown fitur dapat diterjemahkan ke Aspose.Words DOM dan kembali ke Markdown Login

## Kompleksitas Terjemahan Markdown Sitemap DOM Sitemap Markdown

Kesulitan utama mekanisme ini tidak hanya untuk menerjemahkan Markdown Login DOM, tetapi juga untuk melakukan transformasi terbalik - untuk menyimpan dokumen kembali ke Markdown format dengan kerugian minimal. Ada unsur-unsur, seperti kutipan multilevel, yang transformasi terbalik tidak sepele.

Mesin terjemahan kami memungkinkan pengguna tidak hanya bekerja dengan elemen yang kompleks dalam hal yang ada Markdown dokumen, tetapi juga untuk membuat dokumen mereka sendiri Markdown format dengan struktur asli dari awal. Untuk membuat berbagai elemen, Anda perlu menggunakan gaya dengan nama tertentu sesuai dengan aturan tertentu yang dijelaskan nanti dalam artikel ini. Gaya seperti itu dapat dibuat secara programmatik.

## Terjemahan Umum Sitemap

Kami menggunakan [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) format untuk blok inline. Ketika tidak ada korespondensi langsung untuk Markdown Sitemap Aspose.Words DOM, kita menggunakan gaya karakter dengan nama yang dimulai dari beberapa kata khusus.

Untuk blok kontainer, kami menggunakan warisan gaya untuk menunjukkan bersarang Markdown Sitemap Dalam hal ini, bahkan ketika tidak ada fitur bersarang, kami juga menggunakan gaya paragraf dengan nama yang dimulai dari beberapa kata khusus.

Daftar terpeluru dan dipesan adalah blok wadah di Markdown Sitemap Mereka bersarang diwakili dalam Meme it DOM cara yang sama untuk semua blok kontainer lainnya menggunakan warisan gaya. Namun, tambahan, daftar di DOM memiliki format nomor yang sesuai dengan gaya daftar atau format paragraf.

## Blok Inline

Kami menggunakan [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) format saat menerjemahkan **Bold**, *Italic* ~~POS=TRUNC markdown Sitemap

|  Markdown Sitemap |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **Bold**<br/>`{1}` |  `Font.Bold = true`  |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-BoldText.java" >}}  |  |
|  **Italic**<br/>`*italic text*` |  `Font.Italic = true`  |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-ItalicText.java" >}}  |  |
|  **Strikethrough**<br/>`~Strikethrough text~` |  `Font.StrikeThrough = true`  |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Strikethrough.java" >}}  |  |

Kami menggunakan gaya karakter dengan nama yang dimulai dari kata `InlineCode`Sitemap diikuti oleh titik opsional `(.)` dan sejumlah backticks ```(`)``` Sitemap `InlineCode` Sitemap Jika sejumlah backticks terjawab, maka satu backtick akan digunakan secara default.

|  Markdown Sitemap |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **InlineCode**<br/>`{1}` |  `Font.StyleName = “InlineCode[.][N]”`  |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-InlineCode.java" >}}  |  |
|  **Autolink**<br/>`<scheme://domain.com>`<br/>`<email@domain.com>` |  Login [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/) Sitemap |
|     {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Autolink.java" >}}  |  |
|  **Link**<br/>`{1}`<br/>`{2}`<br/>`{3}`<br/>`{4})` |  Login [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/) Sitemap |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Link.java" >}}  |  |
|  **Image**<br/>`{1}`<br/>`{2}`<br/>`{3}`<br/>`{4})` |  Login [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) Sitemap |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Image.java" >}}  |  |

## Blok Kontainer

Sebuah dokumen adalah urutan blok kontainer seperti judul, paragraf, daftar, kutipan, dan lain-lain. Blok kontainer dapat dibagi menjadi 2 kelas: Blok daun dan Kontainer Kompleks. Blok daun hanya dapat mengandung konten inline. Kontainer kompleks, pada gilirannya, dapat mengandung blok kontainer lainnya, termasuk blok Daun.

### Blok Daun

Tabel di bawah ini menunjukkan contoh penggunaan Markdown Blok daun di Aspose.WordsSitemap

|  Markdown Sitemap |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **HorizontalRule**<br/>`-----` |  Ini adalah paragraf sederhana dengan bentuk HorizontalRule yang sesuai:<br/>`DocumentBuilder.InsertHorizontalRule()` |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-HorizontalRule.java" >}}  |                                                                |
|  **ATX Heading**<br/>`# H1, ## H2, ### H3…` |  `ParagraphFormat.StyleName = "Heading N"`, di mana (1<= N <= 9).<br/>Ini diterjemahkan ke dalam gaya built-in dan harus persis dari pola yang ditentukan (tidak ada suffixes atau prefix diperbolehkan).<br/>Jika tidak, itu hanya akan menjadi paragraf biasa dengan gaya yang sesuai |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Heading.java" >}}  |                                                                |
|  **Setext Heading**<br/>`===` (jika tingkat kepala 1),<br/>`---` (jika tingkat kepala 2) |  `ParagraphFormat.StyleName = “SetextHeading[some suffix]”`, berdasarkan 'Heading N' Login<br/>Jika (N >= 2), kemudian 'Heading 2' akan digunakan, jika tidak 'Heading 1'Sitemap<br/>Setiap suffix diperbolehkan, tetapi Aspose.Words importir menggunakan angka "1" dan "2" |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SetextHeading.java" >}}  |                                                                |
|   **Indented Code**                                             |  `ParagraphFormat.StyleName = “IndentedCode[some suffix]”`     |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-IndentedCode.java" >}}  |                                                                |
|  **Fenced Code**<br/>{{< highlight java >}}``` java
if ()
then
else
```{{< /highlight >}} |  `ParagraphFormat.StyleName = “FencedCode[.][info string]”`<br/>Login `[.]` Login `[info string]` adalah opsional |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-FencedCode.java" >}}   |                                                                |

### Kontainer Kompleks

Tabel di bawah ini menunjukkan contoh penggunaan Markdown Kontainer Kompleks di Aspose.WordsSitemap

|  Markdown Sitemap |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **Quote**<br/>`> quote,`<br/>`>> nested quote` |  `ParagraphFormat.StyleName = “Quote[some suffix]”`<br/>The suffix dalam nama gaya adalah opsional, tetapi Aspose.Words importir menggunakan nomor yang dipesan 1, 2, 3, .... dalam kasus kutipan bersarang.<br/>Bersarang didefinisikan melalui gaya yang diwariskan |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Quote.java" >}}  |                                                                |
|  **BulletedList**<br/>`- Item 1`<br/>`- Item 2`<br/> `   - Item 2a`<br/> `   - Item 2b` |  Daftar terpeluru diwakili menggunakan nomor paragraf:<br/>`ListFormat.ApplyBulletDefault()`<br/>Ada 3 jenis daftar peluru. Mereka hanya menyebar dalam format jumlah tingkat pertama. Sitemap `‘-’`, `‘+’` Sitemap `‘*’` Sitemap |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-BulletedList.java" >}}  |                                                                |
|  **OrderedList**<br/>`1. Item 1`<br/>`2. Item 2`<br/> `1) Item 2a`<br/> `2) Item 2b` |  Daftar pesanan diwakili menggunakan nomor paragraf:<br/>`ListFormat.ApplyNumberDefault()`<br/>Ada 2 penanda format nomor: '.' dan ')'. Penanda default adalah '.' |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-OrderedList.java" >}}  |                                                                |

### Login

Aspose.Words juga memungkinkan untuk menerjemahkan tabel ke DOM, seperti yang ditunjukkan di bawah ini:

|  Markdown Sitemap |   Aspose.Words                                                  |
|  ----------------------------------------  |  ------------------------------------------------------------  |
|  `Table`<br/>Login | Login`<br />`Login | -Login`<br />`Login | Sitemap Sitemap |  [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) Login [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) kelas |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Table.java" >}}  |                                                                |

## Lihat Juga

* [Sitemap Markdown Sitemap](/words/id/java/working-with-markdown-features/)

