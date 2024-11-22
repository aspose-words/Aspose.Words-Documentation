---
title: Terjemahkan Markdown ke DOM
second_title: Aspose.Words untuk Python via .NET
articleTitle: Terjemahkan Markdown ke Document Object Model (DOM)
linktitle: Terjemahkan Markdown ke Document Object Model (DOM)
type: docs
description: "Tarnslate dokumen Markdown ke Document Object Model dan kembali menggunakan Python. Jadi Anda dapat bekerja dengan Markdown kompleks yang sudah ada dan membuat dokumen Markdown secara terprogram dari awal."
weight: 20
url: /id/python-net/translate-markdown-to-document-object-model/
timestamp: 2024-10-21-11-17-44
---

Untuk membaca, memanipulasi, dan memodifikasi konten dan format dokumen secara terprogram, Anda perlu menerjemahkannya ke Aspose.Words Document Object Model (DOM).

Berbeda dengan dokumen Word, Markdown tidak sesuai dengan DOM yang dijelaskan dalam artikel [Aspose.Words Document Object Model (DOM)](/words/id/python-net/aspose-words-document-object-model/). Namun, Aspose.Words menyediakan mekanismenya sendiri untuk menerjemahkan dokumen Markdown ke DOM dan sebaliknya, sehingga kami dapat berhasil bekerja dengan elemen-elemennya seperti pemformatan teks, tabel, header, dan lain-lain.

Artikel ini menjelaskan bagaimana berbagai fitur markdown dapat diterjemahkan ke dalam Aspose.Words DOM dan kembali ke format Markdown.

## Kompleksitas Terjemahan Markdown – DOM – Markdown

Kesulitan utama dari mekanisme ini tidak hanya menerjemahkan Markdown ke DOM, tetapi juga melakukan transformasi terbalik – menyimpan dokumen kembali ke format Markdown dengan kerugian minimal. Ada elemen, seperti kutipan bertingkat, yang transformasi kebalikannya bukanlah hal yang sepele.

Mesin terjemahan kami memungkinkan pengguna tidak hanya bekerja dengan elemen kompleks dalam dokumen Markdown yang ada, tetapi juga membuat dokumen mereka sendiri dalam format Markdown dengan struktur asli dari awal. Untuk membuat berbagai elemen, Anda perlu menggunakan gaya dengan nama tertentu sesuai dengan aturan tertentu yang dijelaskan nanti di artikel ini. Gaya seperti itu dapat dibuat secara terprogram.

## Prinsip Penerjemahan Umum

Kami menggunakan format [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) untuk blok sebaris. Jika tidak ada korespondensi langsung untuk fitur Markdown di Aspose.Words DOM, kami menggunakan gaya karakter dengan nama yang dimulai dari beberapa kata khusus.

Untuk blok kontainer, kami menggunakan pewarisan gaya untuk menunjukkan fitur Markdown yang disarangkan. Dalam hal ini, meskipun tidak ada fitur bertingkat, kami juga menggunakan gaya paragraf dengan nama yang dimulai dari beberapa kata khusus.

Daftar berpoin dan terurut juga merupakan blok penampung di Markdown. Sarangnya direpresentasikan di DOM dengan cara yang sama seperti semua blok penampung lainnya menggunakan pewarisan gaya. Namun, selain itu, daftar di DOM memiliki format angka yang sesuai dalam gaya daftar atau format paragraf.

## Blok Sebaris

Kami menggunakan format [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) saat menerjemahkan fitur markdown sebaris **Bold**, *Italic*, atau ~~Dicoret~~.

|  fitur Markdown |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **Bold**<br /> `{1}` |  `Font.bold = True`  |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Make the text Bold.
builder.font.bold = True
builder.writeln("This text will be Bold")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.bold_text_example.md"){{< /highlight >}} |  |
|  **Italic**<br /> `*italic text*` |  `Font.italic = True`  |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Make the text Italic.
builder.font.italic = True
builder.writeln("This text will be Italic")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.italic_text_example.md"){{< /highlight >}} |  |
|  **Strikethrough**<br /> `~Strikethrough text~` |  `Font.strike_through = True`  |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Make the text Strikethrough.
builder.font.strike_through = True
builder.writeln("This text will be Strikethrough")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.strikethrough_text_example.md"){{< /highlight >}} |  |

Kami menggunakan gaya karakter dengan nama yang dimulai dari kata `InlineCode`, diikuti dengan titik `(.)` opsional dan sejumlah ```(`)``` backticks untuk fitur `InlineCode`. Jika sejumlah backtick terlewatkan, maka satu backtick akan digunakan secara default.

|  fitur Markdown |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **InlineCode**<br /> `{1}` |  `Font.style_name = "InlineCode[.][N]"`  |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Number of backticks is missed, one backtick will be used by default.
inlineCode1BackTicks = builder.document.styles.add(aw.StyleType.CHARACTER, "InlineCode")
builder.font.style = inlineCode1BackTicks
builder.writeln("Text with InlineCode style with 1 backtick")

# There will be 3 backticks.
inlineCode3BackTicks = builder.document.styles.add(aw.StyleType.CHARACTER, "InlineCode.3")
builder.font.style = inlineCode3BackTicks
builder.writeln("Text with InlineCode style with 3 backtick")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.inline_code_example.md"){{< /highlight >}} |  |
|  **Autolink**<br /> `<scheme://domain.com>`<br /> `<email@domain.com>` |  Kelas [FieldHyperlink](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldhyperlink/) |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Insert hyperlink.
builder.insert_hyperlink("https://www.aspose.com", "https://www.aspose.com", False);
builder.insert_hyperlink("email@aspose.com", "mailto:email@aspose.com", False);

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.autolink_example.md"){{< /highlight >}} |  |
|  **Link**<br /> `{1}`<br /> `{2}`<br /> `{3}`<br /> `{4})` |  [FieldHyperlink](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldhyperlink/) |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Insert hyperlink.
builder.insert_hyperlink("Aspose", "https://www.aspose.com", False)

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.link_example.md"){{< /highlight >}} |  |
|  **Image**<br /> `{1}`<br /> `{2}`<br /> `{3}`<br /> `{4})` |  Kelas [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Insert image.
shape = aw.drawing.Shape(builder.document, aw.drawing.ShapeType.IMAGE)
shape.wrap_type = aw.drawing.WrapType.INLINE
shape.image_data.source_full_name = "/attachment/1456/pic001.png"
shape.image_data.title = "title"
builder.insert_node(shape)

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.image_example.md"){{< /highlight >}} |  |

## Blok Kontainer

Dokumen merupakan rangkaian blok penampung seperti judul, paragraf, daftar, kutipan, dan lain-lain. Blok kontainer dapat dibagi menjadi 2 kelas: blok daun dan kontainer kompleks. Blok daun hanya dapat berisi konten sebaris. Kontainer yang kompleks, pada gilirannya, dapat berisi blok kontainer lain, termasuk blok Leaf.

### Blok Daun

Tabel di bawah menunjukkan contoh penggunaan blok Markdown Leaf di Aspose.Words:

|  fitur Markdown |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **HorizontalRule**<br /> `-----` |  Ini adalah paragraf sederhana dengan bentuk HorizontalRule yang sesuai:<br /> [DocumentBuilder.insert_horizontal_rule()](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_horizontal_rule/) |
|   {{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-HorizontalRule.py" >}}  |                                                                |
|  **ATX Heading**<br /> `# H1, ## H2, ### H3…` |  `ParagraphFormat.style_name = "Heading N"`, dimana (1&le; N &le; 9).<br /> Ini diterjemahkan ke dalam gaya bawaan dan harus sesuai dengan pola yang ditentukan (tidak ada sufiks atau awalan yang diperbolehkan).<br /> Jika tidak, itu hanya akan menjadi paragraf biasa dengan gaya yang sesuai |
|   {{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-Headings.py" >}}  |                                                                |
|  **Setext Heading**<br /> `===` (jika Pos level 1),<br /> `---` (jika Heading level 2) |  `ParagraphFormat.style_name = "SetextHeading[some suffix]"`, berdasarkan gaya `"Heading N"`.<br /> Jika (N &ge; 2), maka `"Heading 2"` akan digunakan, jika tidak `"Heading 1"`.<br /> Sufiks apa pun diperbolehkan, namun pengimpor Aspose.Words menggunakan angka "1" dan "2" masing-masing |
|  {{< highlight python >}}# Use a document builder to add content to the document.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.paragraph_format.style_name = "Heading 1"
builder.writeln("This is an H1 tag")

# Reset styles from the previous paragraph to not combine styles between paragraphs.
builder.font.bold = False
builder.font.italic = False

setexHeading1 = doc.styles.add(aw.StyleType.PARAGRAPH, "SetexHeading1")
builder.paragraph_format.style = setexHeading1
doc.styles.get_by_name("SetexHeading1").base_style_name = "Heading 1"
builder.writeln("Setex Heading level 1")

builder.paragraph_format.style = doc.styles.get_by_name("Heading 3")
builder.writeln("This is an H3 tag")

# Reset styles from the previous paragraph to not combine styles between paragraphs.
builder.font.bold = False
builder.font.italic = False

setexHeading2 = doc.styles.add(aw.StyleType.PARAGRAPH, "SetexHeading2")
builder.paragraph_format.style = setexHeading2
doc.styles.get_by_name("SetexHeading2").base_style_name = "Heading 3"

# Setex heading level will be reset to 2 if the base paragraph has a Heading level greater than 2.
builder.writeln("Setex Heading level 2")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.setext_heading_example.md"){{< /highlight >}} |
|   **Indented Code**                                             |  `ParagraphFormat.style_name = "IndentedCode[some suffix]"`     |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

indentedCode = builder.document.styles.add(aw.StyleType.PARAGRAPH, "IndentedCode")
builder.paragraph_format.style = indentedCode
builder.writeln("This is an indented code")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.indented_code_example.md"){{< /highlight >}} |                                                                |
|  **Fenced Code**<br /> {{< highlight csharp >}}``` c#
if ()
then
else
```{{< /highlight >}} |  `ParagraphFormat.style_name = "FencedCode[.][info string]"`<br /> `[.]` dan `[info string]` bersifat opsional |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

fencedCode = builder.document.styles.add(aw.StyleType.PARAGRAPH, "FencedCode")
builder.paragraph_format.style = fencedCode
builder.writeln("This is an fenced code")

fencedCodeWithInfo = builder.document.styles.add(aw.StyleType.PARAGRAPH, "FencedCode.C#")
builder.paragraph_format.style = fencedCodeWithInfo
builder.writeln("This is a fenced code with info string")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.fenced_code_example.md"){{< /highlight >}} |                                                                |

### Kontainer Kompleks

Tabel di bawah menunjukkan contoh penggunaan Markdown Complex Containers di Aspose.Words:

|  fitur Markdown |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **Quote**<br /> `> quote,`<br /> `>> nested quote` |  `ParagraphFormat.style_name = "Quote[some suffix]"`<br /> Akhiran pada nama gaya bersifat opsional, namun importir Aspose.Words menggunakan nomor urut 1, 2, 3,…. dalam kasus kutipan bersarang.<br /> Penyarangannya ditentukan melalui gaya yang diwariskan |
|  {{< highlight python >}}# Use a document builder to add content to the document.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

# By default a document stores blockquote style for the first level.
builder.paragraph_format.style_name = "Quote"
builder.writeln("Blockquote")

# Create styles for nested levels through style inheritance.
quoteLevel2 = doc.styles.add(aw.StyleType.PARAGRAPH, "Quote1")
builder.paragraph_format.style = quoteLevel2
doc.styles.get_by_name("Quote1").base_style_name = "Quote"
builder.writeln("1. Nested blockquote")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.quote_example.md"){{< /highlight >}} |
|  **BulletedList**<br /> `- Item 1`<br /> `- Item 2`<br /> `   - Item 2a`<br /> `   - Item 2b` |  Daftar berpoin direpresentasikan menggunakan penomoran paragraf:<br /> [ListFormat.apply_bullet_default()](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_bullet_default/)<br /> Ada 3 jenis daftar berpoin. Perbedaannya hanya pada format penomoran tingkat pertama. Ini adalah: `'-'`, `'+'` atau `'*'` masing-masing |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

builder.list_format.apply_bullet_default()
builder.list_format.list.list_levels[0].number_format = "-"

builder.writeln("Item 1")
builder.writeln("Item 2")

builder.list_format.list_indent()

builder.writeln("Item 2a")
builder.writeln("Item 2b")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.bulleted_list_example.md"){{< /highlight >}} |                                                                |
|  **OrderedList**<br /> `1. Item 1`<br /> `2. Item 2`<br /> `1) Item 2a`<br /> `2) Item 2b` |  Daftar yang diurutkan direpresentasikan menggunakan penomoran paragraf:<br /> [ListFormat.apply_number_default()](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_number_default/)<br /> Mungkin ada 2 penanda format angka: `'.'` dan `')'`. Penanda defaultnya adalah `'.'` |
|  {{< highlight python >}}doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.list_format.apply_number_default()

builder.writeln("Item 1")
builder.writeln("Item 2")

builder.list_format.list_indent()

builder.writeln("Item 2a")
builder.write("Item 2b")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.ordered_list_example.md"){{< /highlight >}} |                                                                |

### Tabel

Aspose.Words juga memungkinkan untuk menerjemahkan tabel ke DOM, seperti yang ditunjukkan di bawah ini:

|  fitur Markdown |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  `Table`<br /> `a\ | b`<br />`-\ | -`<br />`c\ | d` |  Kelas [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) dan [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Add the first row.
builder.insert_cell()
builder.writeln("a")
builder.insert_cell()
builder.writeln("b")
builder.end_row()

# Add the second row.
builder.insert_cell()
builder.writeln("c")
builder.insert_cell()
builder.writeln("d")
builder.end_table()

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.ordered_list_table.md"){{< /highlight >}} |                                                                |

## Lihat juga

* [Bekerja dengan Fitur Markdown](/words/id/python-net/working-with-markdown-features/)

