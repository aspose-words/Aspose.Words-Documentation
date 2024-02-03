---
title: Terjemahkan Markdown ke DOM
second_title: Aspose.Words untuk .NET
articleTitle: Terjemahkan Markdown ke Document Object Model (DOM)
linktitle: Terjemahkan Markdown ke Document Object Model (DOM)
type: docs
description: "Terjemahkan dokumen Markdown ke Document Object Model dan kembali menggunakan C#. Jadi Anda dapat bekerja dengan Markdown kompleks yang sudah ada dan membuat dokumen Markdown secara terprogram dari awal."
weight: 20
url: /id/net/translate-markdown-to-document-object-model/
---

Untuk membaca, memanipulasi, dan mengubah konten dan format dokumen secara terprogram, Anda perlu menerjemahkannya ke Aspose.Words Document Object Model (DOM).

Berbeda dengan dokumen Word, Markdown tidak sesuai dengan DOM yang dijelaskan dalam artikel [Aspose.Words Document Object Model (DOM)](/words/id/net/aspose-words-document-object-model/). Namun, Aspose.Words menyediakan mekanismenya sendiri untuk menerjemahkan dokumen Markdown ke DOM dan sebaliknya, sehingga kami dapat berhasil bekerja dengan elemen-elemennya seperti pemformatan teks, tabel, header, dan lain-lain.

Artikel ini menjelaskan bagaimana berbagai fitur markdown dapat diterjemahkan ke dalam Aspose.Words DOM dan kembali ke format Markdown.

## Kompleksitas Terjemahan Markdown – DOM – Markdown

Kesulitan utama dari mekanisme ini tidak hanya menerjemahkan Markdown ke DOM, tetapi juga melakukan transformasi sebaliknya – menyimpan dokumen kembali ke format Markdown dengan kerugian minimal. Ada elemen, seperti kutipan bertingkat, yang transformasi kebalikannya bukanlah hal yang sepele.

Mesin terjemahan kami memungkinkan pengguna tidak hanya bekerja dengan elemen kompleks dalam dokumen Markdown yang ada, tetapi juga membuat dokumen mereka sendiri dalam format Markdown dengan struktur asli dari awal. Untuk membuat berbagai elemen, Anda perlu menggunakan gaya dengan nama tertentu sesuai dengan aturan tertentu yang dijelaskan nanti di artikel ini. Gaya seperti itu dapat dibuat secara terprogram.

## Prinsip Penerjemahan Umum

Kami menggunakan format [Font](https://reference.aspose.com/words/net/aspose.words/font/) untuk blok sebaris. Jika tidak ada korespondensi langsung untuk fitur Markdown di Aspose.Words DOM, kami menggunakan gaya karakter dengan nama yang dimulai dari beberapa kata khusus.

Untuk blok kontainer, kami menggunakan pewarisan gaya untuk menunjukkan fitur Markdown yang disarangkan. Dalam hal ini, meskipun tidak ada fitur bertingkat, kami juga menggunakan gaya paragraf dengan nama yang dimulai dari beberapa kata khusus.

Daftar berpoin dan terurut juga merupakan blok penampung di Markdown. Sarangnya direpresentasikan di DOM dengan cara yang sama seperti semua blok kontainer lainnya menggunakan pewarisan gaya. Namun, selain itu, daftar di DOM memiliki format angka yang sesuai dalam gaya daftar atau format paragraf.

## Blok Sebaris

Kami menggunakan format [Font](https://reference.aspose.com/words/net/aspose.words/font/) saat menerjemahkan fitur markdown sebaris **Bold**, *Italic*, atau ~~Dicoret~~.

|  fitur Markdown |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **Bold**<br /> `{1}` |  `Font.Bold = true`  |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-BoldText.cs" >}}  ||
|  **Italic**<br /> `*italic text*` |  `Font.Italic = true`  |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-ItalicText.cs" >}}  ||
|  **Strikethrough**<br /> `~Strikethrough text~` |  `Font.StrikeThrough = true`  |
|  {{< highlight csharp >}}// Use a document builder to add content to the document.
DocumentBuilder builder = new DocumentBuilder();

// Make the text Strikethrough.
builder.Font.Strikethrough = true;
builder.Writeln("This text will be Strikethrough");{{< /highlight >}} ||

Kami menggunakan gaya karakter dengan nama yang dimulai dari kata `InlineCode`, diikuti dengan titik `(.)` opsional dan sejumlah ```(`)``` backticks untuk fitur `InlineCode`. Jika sejumlah backtick terlewatkan, maka satu backtick akan digunakan secara default.

|  fitur Markdown |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **InlineCode**<br /> `{1}` |  `Font.StyleName = “InlineCode[.][N]”`  |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-InlineCode.cs" >}}  ||
|  **Autolink**<br /> `<scheme://domain.com>`<br /> `<email@domain.com>` |  Kelas [FieldHyperlink](https://reference.aspose.com/words/net/aspose.words.fields/fieldhyperlink/) |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Autolink.cs" >}}  ||
|  **Link**<br /> `{1}`<br /> `{2}`<br /> `{3}`<br /> `{4})` |  Kelas [FieldHyperlink](https://reference.aspose.com/words/net/aspose.words.fields/fieldhyperlink/) |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Link.cs" >}}  ||
|  **Image**<br /> `{1}`<br /> `{2}`<br /> `{3}`<br /> `{4})` |  Kelas [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Image.cs" >}}  ||

## Blok Kontainer

Dokumen merupakan rangkaian blok penampung seperti judul, paragraf, daftar, kutipan, dan lain-lain. Blok kontainer dapat dibagi menjadi 2 kelas: blok daun dan kontainer kompleks. Blok daun hanya dapat berisi konten sebaris. Kontainer yang kompleks, pada gilirannya, dapat berisi blok kontainer lain, termasuk blok Leaf.

### Blok Daun

Tabel di bawah menunjukkan contoh penggunaan blok Markdown Leaf di Aspose.Words:

|  fitur Markdown |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **HorizontalRule**<br /> `-----` |  Ini adalah paragraf sederhana dengan bentuk HorizontalRule yang sesuai:<br /> `DocumentBuilder.InsertHorizontalRule()` |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-HorizontalRule.cs" >}}  |                                                                |
|  **ATX Heading**<br /> `# H1, ## H2, ### H3…` |  `ParagraphFormat.StyleName = “Heading N”`, dimana (1&lt;= N &lt;= 9).<br /> Ini diterjemahkan ke dalam gaya bawaan dan harus sesuai dengan pola yang ditentukan (tidak ada sufiks atau awalan yang diperbolehkan).<br /> Jika tidak, itu hanya akan menjadi paragraf biasa dengan gaya yang sesuai |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Heading.cs" >}}  |                                                                |
|  **Setext Heading**<br /> `===` (jika Pos level 1),<br /> `---` (jika Heading level 2) |  `ParagraphFormat.StyleName = “SetextHeading[some suffix]”`, berdasarkan gaya `“Heading N”`.<br /> Jika (N &gt;= 2), maka `“Heading 2”` akan digunakan, jika tidak `“Heading 1”`.<br /> Sufiks apa pun diperbolehkan, tetapi pengimpor Aspose.Words menggunakan angka "1" dan "2" masing-masing |
|  {{< highlight csharp >}}// Use a document builder to add content to the document.
DocumentBuilder builder = new DocumentBuilder();

builder.ParagraphFormat.StyleName = "Heading 1";
builder.Writeln("This is an H1 tag");

// Reset styles from the previous paragraph to not combine styles between paragraphs.
builder.Font.Bold = false;
builder.Font.Italic = false;

Style setexHeading1 = builder.Document.Styles.Add(StyleType.Paragraph, "SetextHeading1");
builder.ParagraphFormat.Style = setexHeading1;
builder.Document.Styles["SetextHeading1"].BaseStyleName = "Heading 1";
builder.Writeln("Setext Heading level 1");

builder.ParagraphFormat.Style = builder.Document.Styles["Heading 3"];
builder.Writeln("This is an H3 tag");

// Reset styles from the previous paragraph to not combine styles between paragraphs.
builder.Font.Bold = false;
builder.Font.Italic = false;

Style setexHeading2 = builder.Document.Styles.Add(StyleType.Paragraph, "SetextHeading2");
builder.ParagraphFormat.Style = setexHeading2;
builder.Document.Styles["SetextHeading2"].BaseStyleName = "Heading 3";

// Setex heading level will be reset to 2 if the base paragraph has a Heading level greater than 2.
builder.Writeln("Setext Heading level 2");{{< /highlight >}} |
|   **Indented Code**                                             |  `ParagraphFormat.StyleName = “IndentedCode[some suffix]”`     |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-IndentedCode.cs" >}}  |                                                                |
|  **Fenced Code**<br /> {{< highlight csharp >}}``` c#
if ()
then
else
```{{< /highlight >}} |  `ParagraphFormat.StyleName = “FencedCode[.][info string]”`<br /> `[.]` dan `[info string]` bersifat opsional |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-FencedCode.cs" >}}   |                                                                |

### Kontainer Kompleks

Tabel di bawah menunjukkan contoh penggunaan Markdown Complex Containers di Aspose.Words:

|  fitur Markdown |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **Quote**<br /> `> quote,`<br /> `>> nested quote` |  `ParagraphFormat.StyleName = “Quote[some suffix]”`<br /> Akhiran pada nama gaya bersifat opsional, namun importir Aspose.Words menggunakan nomor urut 1, 2, 3,…. dalam kasus kutipan bersarang.<br /> Penyarangannya ditentukan melalui gaya yang diwariskan |
|  {{< highlight csharp >}}// Use a document builder to add content to the document.
DocumentBuilder builder = new DocumentBuilder();

// By default a document stores blockquote style for the first level.
builder.ParagraphFormat.StyleName = "Quote";
builder.Writeln("Blockquote");

// Create styles for nested levels through style inheritance.
Style quoteLevel2 = builder.Document.Styles.Add(StyleType.Paragraph, "Quote1");
builder.ParagraphFormat.Style = quoteLevel2;
builder.Document.Styles["Quote1"].BaseStyleName = "Quote";
builder.Writeln("1. Nested blockquote");{{< /highlight >}} |
|  **BulletedList**<br /> `- Item 1`<br /> `- Item 2`<br /> `   - Item 2a`<br /> `   - Item 2b` |  Daftar berpoin direpresentasikan menggunakan penomoran paragraf:<br /> `ListFormat.ApplyBulletDefault()`<br /> Ada 3 jenis daftar berpoin. Perbedaannya hanya pada format penomoran tingkat pertama. Ini adalah: `‘-’`, `‘+’` atau `‘*’` masing-masing |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-BulletedList.cs" >}}  |                                                                |
|  **OrderedList**<br /> `1. Item 1`<br /> `2. Item 2`<br /> `1) Item 2a`<br /> `2) Item 2b` |  Daftar yang diurutkan direpresentasikan menggunakan penomoran paragraf:<br /> `ListFormat.ApplyNumberDefault()`<br /> Bisa ada 2 penanda format angka: '.' Dan ')'. Penanda defaultnya adalah '.' |
|  {{< highlight csharp >}}Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

builder.ListFormat.ApplyBulletDefault();
builder.ListFormat.List.ListLevels[0].NumberFormat = $"{(char) 0}.";
builder.ListFormat.List.ListLevels[1].NumberFormat = $"{(char) 1}.";

builder.Writeln("Item 1");
builder.Writeln("Item 2");

builder.ListFormat.ListIndent();

builder.Writeln("Item 2a");
builder.Writeln("Item 2b");{{< /highlight >}} |                                                                |

### Tabel

Aspose.Words juga memungkinkan untuk menerjemahkan tabel ke DOM, seperti yang ditunjukkan di bawah ini:

|  fitur Markdown |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  `Table`<br /> `a | b`<br />`- | -`<br />`c | d` |  Kelas [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/), [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) dan [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/) |
|  {{< highlight csharp >}}// Use a document builder to add content to the document.
DocumentBuilder builder = new DocumentBuilder();

// Add the first row.
builder.InsertCell();
builder.Writeln("a");
builder.InsertCell();
builder.Writeln("b");

// Add the second row.
builder.InsertCell();
builder.Writeln("c");
builder.InsertCell();
builder.Writeln("d");{{< /highlight >}} |                                                                |

## Lihat juga

* [Bekerja dengan Fitur Markdown](/words/id/net/working-with-markdown-features/)

