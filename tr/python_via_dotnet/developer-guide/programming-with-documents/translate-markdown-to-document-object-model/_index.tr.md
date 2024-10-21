---
title: Markdown'i DOM'ye çevir
second_title: Python via .NET için Aspose.Words
articleTitle: Markdown'i Document Object Model'ye (DOM) çevir
linktitle: Markdown'i Document Object Model'ye (DOM) çevir
type: docs
description: "Bir Markdown belgesini Document Object Model'ye dönüştürün ve Python kullanarak geri alın. Böylece, mevcut karmaşık Markdown ile çalışabilir ve programlı olarak sıfırdan bir Markdown belgesi oluşturabilirsiniz."
weight: 20
url: /tr/python-net/translate-markdown-to-document-object-model/
---

Bir belgenin içeriğini ve biçimlendirmesini programlı olarak okumak, değiştirmek ve değiştirmek için onu Aspose.Words Document Object Model'ye (DOM) çevirmeniz gerekir.

Markdown, Word belgelerinin aksine, [Aspose.Words Document Object Model (DOM)](/words/tr/python-net/aspose-words-document-object-model/) makalesinde açıklanan DOM'ye uymuyor. Ancak Aspose.Words, Markdown belgelerini DOM'ye ve geriye çevirmek için kendi mekanizmasını sağlar, böylece metin biçimlendirmesi, tablolar, başlıklar ve diğerleri gibi öğeleriyle başarılı bir şekilde çalışabiliriz.

Bu makalede, çeşitli markdown özelliklerinin Aspose.Words DOM'e ve tekrar Markdown biçimine nasıl çevrilebileceği açıklanmaktadır.

## Markdown – DOM – Markdown Çevirisinin Karmaşıklığı

Bu mekanizmanın ana zorluğu yalnızca Markdown'i DOM'ye çevirmek değil, aynı zamanda ters dönüşümü de yapmaktır; yani belgeyi minimum kayıpla tekrar Markdown formatına kaydetmektir. Çok düzeyli tırnak işaretleri gibi ters dönüşümün önemsiz olmadığı öğeler vardır.

Çeviri motorumuz, kullanıcıların yalnızca mevcut bir Markdown belgesindeki karmaşık öğelerle çalışmasına değil, aynı zamanda orijinal yapıyla sıfırdan Markdown formatında kendi belgelerini oluşturmalarına da olanak tanır. Çeşitli öğeler oluşturmak için bu makalenin ilerleyen kısımlarında açıklanan belirli kurallara göre belirli adlara sahip stiller kullanmanız gerekir. Bu tür stiller programlı olarak oluşturulabilir.

## Ortak Çeviri İlkeleri

Satır içi bloklar için [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) formatını kullanıyoruz. Aspose.Words DOM'de bir Markdown özelliğinin doğrudan karşılığı olmadığında, bazı özel kelimelerden başlayan bir isme sahip karakter stili kullanırız.

Konteyner blokları için, iç içe geçmiş Markdown özelliklerini belirtmek üzere stil mirasını kullanırız. Bu durumda iç içe geçmiş özellikler olmasa bile adı bazı özel kelimelerden başlayan paragraf stillerini de kullanıyoruz.

Madde işaretli ve sıralı listeler Markdown'te de kapsayıcı bloklardır. Yuvalanmaları, stil kalıtımını kullanan diğer tüm konteyner bloklarıyla aynı şekilde DOM'de temsil edilir. Bununla birlikte, ek olarak, DOM'deki listeler, liste stilinde veya paragraf biçiminde karşılık gelen sayı biçimlendirmesine sahiptir.

## Satır İçi Bloklar

**Bold**, *Italic* veya ~~Strikethrough~~ satır içi markdown özelliklerini çevirirken [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) formatını kullanırız.

|  Markdown özelliği |   Aspose.Words        |
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

`InlineCode` özelliği için `InlineCode` kelimesinden başlayan bir isme ve ardından isteğe bağlı bir nokta `(.)`'ye ve bir dizi geri tırnak ```(`)```'ine sahip bir karakter stili kullanırız. Bir dizi geri tıklama kaçırılırsa, varsayılan olarak bir geri tıklama kullanılacaktır.

|  Markdown özelliği |   Aspose.Words        |
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
|  **Autolink**<br /> `<scheme://domain.com>`<br /> `<email@domain.com>` |  [FieldHyperlink](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldhyperlink/) sınıfı |
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
|  **Image**<br /> `{1}`<br /> `{2}`<br /> `{3}`<br /> `{4})` |  [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) sınıfı |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Insert image.
shape = aw.drawing.Shape(builder.document, aw.drawing.ShapeType.IMAGE)
shape.wrap_type = aw.drawing.WrapType.INLINE
shape.image_data.source_full_name = "/attachment/1456/pic001.png"
shape.image_data.title = "title"
builder.insert_node(shape)

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.image_example.md"){{< /highlight >}} |  |

## Konteyner Blokları

Belge, başlıklar, paragraflar, listeler, alıntılar ve diğerleri gibi bir dizi kapsayıcı bloktan oluşur. Konteyner blokları 2 sınıfa ayrılabilir: Yaprak bloklar ve Kompleks Konteynerler. Yaprak blokları yalnızca satır içi içerik içerebilir. Karmaşık kaplar ise Yaprak bloklar dahil diğer kap bloklarını içerebilir.

### Yaprak Blokları

Aşağıdaki tablo Aspose.Words'de Markdown Yaprak bloklarının kullanımına ilişkin örnekleri göstermektedir:

|  Markdown özelliği |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **HorizontalRule**<br /> `-----` |  Bu, karşılık gelen HorizontalRule şekline sahip basit bir paragraftır:<br /> [DocumentBuilder.insert_horizontal_rule()](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_horizontal_rule/) |
|   {{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-HorizontalRule.py" >}}  |                                                                |
|  **ATX Heading**<br /> `# H1, ## H2, ### H3…` |  `ParagraphFormat.style_name = "Heading N"`, burada (1&lt;= N &lt;= 9).<br /> Bu, yerleşik bir stile dönüştürülür ve tam olarak belirtilen modelde olmalıdır (hiçbir sonek veya öneklere izin verilmez).<br /> Aksi takdirde, karşılık gelen stile sahip sıradan bir paragraf olacaktır |
|   {{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-Headings.py" >}}  |                                                                |
|  **Setext Heading**<br /> `===` (Başlık düzeyi 1 ise),<br /> `---` (Başlık düzeyi 2 ise) |  `ParagraphFormat.style_name = "SetextHeading[some suffix]"`, `"Heading N"` stilini temel alır.<br /> (N &gt;= 2) ise `"Heading 2"` kullanılacaktır, aksi takdirde `"Heading 1"` kullanılacaktır.<br /> Herhangi bir son eke izin verilir, ancak Aspose.Words içe aktarıcısı sırasıyla "1" ve "2" rakamlarını kullanır |
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
```{{< /highlight >}} |  `ParagraphFormat.style_name = "FencedCode[.][info string]"`<br /> `[.]` ve `[info string]` isteğe bağlıdır |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

fencedCode = builder.document.styles.add(aw.StyleType.PARAGRAPH, "FencedCode")
builder.paragraph_format.style = fencedCode
builder.writeln("This is an fenced code")

fencedCodeWithInfo = builder.document.styles.add(aw.StyleType.PARAGRAPH, "FencedCode.C#")
builder.paragraph_format.style = fencedCodeWithInfo
builder.writeln("This is a fenced code with info string")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.fenced_code_example.md"){{< /highlight >}} |                                                                |

### Karmaşık Konteynerler

Aşağıdaki tablo Aspose.Words'de Markdown Karmaşık Kapsayıcıların kullanımına ilişkin örnekleri göstermektedir:

|  Markdown özelliği |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **Quote**<br /> `> quote,`<br /> `>> nested quote` |  `ParagraphFormat.style_name = "Quote[some suffix]"`<br /> Stil adındaki son ek isteğe bağlıdır, ancak Aspose.Words içe aktarıcısı 1, 2, 3, … sıralı sayıları kullanır. iç içe geçmiş tırnaklar durumunda.<br /> Yuvalama, devralınan stillerle tanımlanır |
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
|  **BulletedList**<br /> `- Item 1`<br /> `- Item 2`<br /> `   - Item 2a`<br /> `   - Item 2b` |  Madde işaretli listeler paragraf numaralandırması kullanılarak temsil edilir:<br /> [ListFormat.apply_bullet_default()](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_bullet_default/)<br /> 3 tip madde imli liste olabilir. Bunlar yalnızca ilk düzeyin numaralandırma biçiminde farklılık gösterir. Bunlar: sırasıyla `'-'`, `'+'` veya `'*'` |
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
|  **OrderedList**<br /> `1. Item 1`<br /> `2. Item 2`<br /> `1) Item 2a`<br /> `2) Item 2b` |  Sıralı listeler paragraf numaralandırması kullanılarak temsil edilir:<br /> [ListFormat.apply_number_default()](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_number_default/)<br /> 2 sayı biçimi işaretçisi olabilir: `'.'` ve `')'`. Varsayılan işaretleyici `'.'`'dir |
|  {{< highlight python >}}doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.list_format.apply_number_default()

builder.writeln("Item 1")
builder.writeln("Item 2")

builder.list_format.list_indent()

builder.writeln("Item 2a")
builder.write("Item 2b")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.ordered_list_example.md"){{< /highlight >}} |                                                                |

### Tablolar

Aspose.Words ayrıca aşağıda gösterildiği gibi tabloların DOM'ye çevrilmesine de olanak tanır:

|  Markdown özelliği |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  `Table`<br /> 'bir\' | b`<br />`-\ | -`<br />`c\ | d' |  [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) ve [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) sınıfları |
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

## Ayrıca bakınız

* [Markdown Özellikleriyle Çalışmak](/words/tr/python-net/working-with-markdown-features/)

