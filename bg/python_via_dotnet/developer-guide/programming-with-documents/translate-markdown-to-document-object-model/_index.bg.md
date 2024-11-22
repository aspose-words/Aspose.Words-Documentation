---
title: Превод Markdown до DOM
second_title: Aspose.Words вместо Python via .NET
articleTitle: Превод Markdown до Document Object Model (DOM)
linktitle: Превод Markdown до Document Object Model (DOM)
type: docs
description: "Тарнслат а Markdown документ към Document Object Model и обратно използване Python. Така че можете да работите със сложни съществуващи Markdown и програмно създаване на Markdown документ от нулата."
weight: 20
url: /bg/python-net/translate-markdown-to-document-object-model/
timestamp: 2024-10-21-11-17-44
---

За да се чете, манипулира и променя съдържанието и форматирането на документ, трябва да го преведете на Aspose.Words Document Object Model (DOM).

За разлика от Word документи, Markdown не съответства на DOM описани в [Aspose.Words Document Object Model (DOM)](/words/bg/python-net/aspose-words-document-object-model/) статия. Все пак, Aspose.Words осигурява свой собствен механизъм за превод Markdown документи за DOM и обратно, за да можем успешно да работим с техните елементи като форматиране на текст, таблици, заглавни части и други.

Тази статия обяснява как различните markdown функции могат да бъдат преведени в Aspose.Words DOM и обратно към Markdown формат.

## Сложност на превода Markdown - Да. DOM - Да. Markdown

Основната трудност на този механизъм е не само да се превежда Markdown до DOM, но също така да се направи обратната трансформация за да запази документа обратно към Markdown формат с минимална загуба. Има елементи, като многостепенни цитати, за които обратната трансформация не е тривиална.

Нашият превод двигател позволява на потребителите не само да работят със сложни елементи в съществуващи Markdown документ, но и за създаване на свой собствен документ в Markdown формат с оригиналната структура от нулата. За да създадете различни елементи, трябва да използвате стилове със специфични имена съгласно определени правила, описани по-късно в тази статия. Такива стилове могат да бъдат създадени програмно.

## Общ превод Принципи

Ние използваме [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) форматиране за вътрешни блокове. Когато няма директна кореспонденция за Markdown функция в Aspose.Words DOM, използваме стил на характер с име, което започва от някои специални думи.

За контейнери блокове, ние използваме стил наследство, за да означаваме гнездо Markdown особености. В този случай, дори когато няма скрити черти, ние също използваме стилове на параграфа с име, което започва от някои специални думи.

Куршумирани и поръчани списъци са контейнери блокове в Markdown Както добре. Тяхното гнездо е представено в DOM по същия начин, както и за всички други контейнери, използващи стил наследство. Въпреки това, допълнително, списъци в DOM са отговаряли на форматиране на номера в стил на списъка или форматиране на параграф.

## Входни блокове

Ние използваме [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) форматиране при превод **Bold**, *Italic* или ~ ~ Strikethrough ~ ~ inline markdown особености.

|  Markdown функция |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **Bold**<br/>`{1}` |  `Font.bold = True`  |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Make the text Bold.
builder.font.bold = True
builder.writeln("This text will be Bold")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.bold_text_example.md"){{< /highlight >}} |  |
|  **Italic**<br/>`*italic text*` |  `Font.italic = True`  |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Make the text Italic.
builder.font.italic = True
builder.writeln("This text will be Italic")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.italic_text_example.md"){{< /highlight >}} |  |
|  **Strikethrough**<br/>`~Strikethrough text~` |  `Font.strike_through = True`  |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Make the text Strikethrough.
builder.font.strike_through = True
builder.writeln("This text will be Strikethrough")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.strikethrough_text_example.md"){{< /highlight >}} |  |

Използваме стил на героя с име, което започва от думата `InlineCode` последвано от незадължителна точка `(.)` и редица подпори ```(`)``` за `InlineCode` функция. Ако се пропусне определен брой backticks, тогава един backtick ще се използва по подразбиране.

|  Markdown функция |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **InlineCode**<br/>`{1}` |  `Font.style_name = "InlineCode[.][N]"`  |
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
|  **Autolink**<br/>`<scheme://domain.com>`<br/>`<email@domain.com>` |  На [FieldHyperlink](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldhyperlink/) Клас |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Insert hyperlink.
builder.insert_hyperlink("https://www.aspose.com", "https://www.aspose.com", False);
builder.insert_hyperlink("email@aspose.com", "mailto:email@aspose.com", False);

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.autolink_example.md"){{< /highlight >}} |  |
|  **Link**<br/>`{1}`<br/>`{2}`<br/>`{3}`<br/>`{4})` |  На [FieldHyperlink](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldhyperlink/) |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Insert hyperlink.
builder.insert_hyperlink("Aspose", "https://www.aspose.com", False)

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.link_example.md"){{< /highlight >}} |  |
|  **Image**<br/>`{1}`<br/>`{2}`<br/>`{3}`<br/>`{4})` |  На [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) Клас |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Insert image.
shape = aw.drawing.Shape(builder.document, aw.drawing.ShapeType.IMAGE)
shape.wrap_type = aw.drawing.WrapType.INLINE
shape.image_data.source_full_name = "/attachment/1456/pic001.png"
shape.image_data.title = "title"
builder.insert_node(shape)

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.image_example.md"){{< /highlight >}} |  |

## Блокове за контейнери

Документът е поредица от контейнери блокове като заглавия, параграфи, списъци, кавички и други. Контейнерните блокове могат да бъдат разделени на 2 класа: Листни блокове и комплексни контейнери. Листните блокове могат да съдържат само в линия съдържание. Комплексните контейнери от своя страна могат да съдържат други контейнери, включително Листни блокове.

### Листни блокове

Таблицата по- долу показва примери за използване Markdown Листни блокове в Aspose.Words:

|  Markdown функция |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **HorizontalRule**<br/>`-----` |  Това е прост параграф със съответстваща хоризонтална форма на правило:<br/>[DocumentBuilder.insert_horizontal_rule()](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_horizontal_rule/) |
|   {{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-HorizontalRule.py" >}}  |                                                                |
|  **ATX Heading**<br/>`# H1, ## H2, ### H3…` |  `ParagraphFormat.style_name = "Heading N"`, където (1 <= N <= 9).<br/>Това се превежда в вграден стил и трябва да бъде точно на посочения модел (не се допускат наставки или префикси).<br/>В противен случай това ще бъде просто обикновен параграф със съответния стил |
|   {{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-Headings.py" >}}  |                                                                |
|  **Setext Heading**<br/>`===` (ако е посочено ниво 1),<br/>`---` (ако е посочено ниво 2) |  `ParagraphFormat.style_name = "SetextHeading[some suffix]"`, въз основа на `"Heading N"` стил.<br/>Ако (N >= 2) тогава `"Heading 2"` ще се използва, в противен случай `"Heading 1"`.<br/>Всяка наставка е позволена, но Aspose.Words вносителят използва съответно номера "1" и "2." |
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
|  **Fenced Code**<br/>{{< highlight csharp >}}``` c#
if ()
then
else
```{{< /highlight >}} |  `ParagraphFormat.style_name = "FencedCode[.][info string]"`<br/>На `[.]` както и `[info string]` са по избор |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

fencedCode = builder.document.styles.add(aw.StyleType.PARAGRAPH, "FencedCode")
builder.paragraph_format.style = fencedCode
builder.writeln("This is an fenced code")

fencedCodeWithInfo = builder.document.styles.add(aw.StyleType.PARAGRAPH, "FencedCode.C#")
builder.paragraph_format.style = fencedCodeWithInfo
builder.writeln("This is a fenced code with info string")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.fenced_code_example.md"){{< /highlight >}} |                                                                |

### Комплексни контейнери

Таблицата по- долу показва примери за използване Markdown Комплексни контейнери в Aspose.Words:

|  Markdown функция |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **Quote**<br/>`> quote,`<br/>`>> nested quote` |  `ParagraphFormat.style_name = "Quote[some suffix]"`<br/>Наставката със стилно име е незадължителна, но Aspose.Words Вносителят използва поръчаните номера 1, 2, 3 .... в случай на гнездене.<br/>Гнезденето се определя чрез наследените стилове |
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
|  **BulletedList**<br/>`- Item 1`<br/>`- Item 2`<br/> `   - Item 2a`<br/> `   - Item 2b` |  Списъците с куршуми са представени с номерация на параграфа:<br/>[ListFormat.apply_bullet_default()](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_bullet_default/)<br/>Може да има 3 вида списъци с куршуми. Те са само diff в номерационен формат на първото ниво. Това са: `'-'`, `'+'` или `'*'` съответно |
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
|  **OrderedList**<br/>`1. Item 1`<br/>`2. Item 2`<br/> `1) Item 2a`<br/> `2) Item 2b` |  Поръчаните списъци се представят с номерация на параграфа:<br/>[ListFormat.apply_number_default()](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_number_default/)<br/>Може да има 2 броя маркери формат: `'.'` както и `')'`. Маркерът по подразбиране е `'.'` |
|  {{< highlight python >}}doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.list_format.apply_number_default()

builder.writeln("Item 1")
builder.writeln("Item 2")

builder.list_format.list_indent()

builder.writeln("Item 2a")
builder.write("Item 2b")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.ordered_list_example.md"){{< /highlight >}} |                                                                |

### Таблици

Aspose.Words също така позволява да се превежда таблици в DOM, както е показано по-долу:

|  Markdown функция |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  `Table` <br/>О, не! | b`<br />`- \ | -`<br />`c\ | d - Да |  [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) както и [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) Класове |
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

## Вижте също

* [Работа с Markdown Характеристики](/words/bg/python-net/working-with-markdown-features/)

