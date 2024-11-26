---
title: Преобразовать Markdown в DOM
second_title: Aspose.Words для Python via .NET
articleTitle: Преобразовать Markdown в объектную модель документа (DOM)
linktitle: Преобразовать Markdown в объектную модель документа (DOM)
type: docs
description: "Преобразуйте документ Markdown в объектную модель документа и обратно, используя Python. Таким образом, вы можете работать со сложными существующими Markdown и программно создавать документ Markdown с нуля."
weight: 20
url: /ru/python-net/translate-markdown-to-document-object-model/
timestamp: 2024-10-21-11-17-44
---

Чтобы программно считывать содержимое и форматирование документа, манипулировать им и изменять их, вам необходимо преобразовать его в объектную модель документа Aspose.Words (DOM).

В отличие от документов Word, Markdown не соответствует DOM, описанному в объектной модели документа [Aspose.Words (DOM).](/words/python-net/aspose-words-document-object-model/) статья. Однако Aspose.Words предоставляет свой собственный механизм для перевода документов Markdown в документы DOM и обратно, так что мы можем успешно работать с их элементами, такими как форматирование текста, таблицы, заголовки и другие.

В этой статье объясняется, как различные функции markdown могут быть переведены в формат Aspose.Words DOM и обратно в формат Markdown.

## Сложность перевода Markdown – DOM – Markdown

Основная сложность этого механизма заключается не только в преобразовании Markdown в DOM, но и в выполнении обратного преобразования – сохранении документа обратно в формат Markdown с минимальными потерями. Существуют элементы, такие как многоуровневые кавычки, для которых обратное преобразование нетривиально.

Наш механизм перевода позволяет пользователям не только работать со сложными элементами в существующем документе Markdown, но и создавать свой собственный документ в формате Markdown с оригинальной структурой с нуля. Для создания различных элементов вам необходимо использовать стили с определенными названиями в соответствии с определенными правилами, описанными далее в этой статье. Такие стили могут быть созданы программно.

## Общие принципы перевода

Мы используем форматирование [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) для встроенных блоков. Когда нет прямого соответствия для элемента Markdown в Aspose.Words DOM, мы используем стиль символов с названием, которое начинается с некоторых специальных слов.

Для контейнерных блоков мы используем наследование стилей для обозначения вложенных объектов Markdown. В этом случае, даже если вложенных объектов нет, мы также используем стили абзацев с именами, которые начинаются с некоторых специальных слов.

Маркированные и упорядоченные списки также являются контейнерными блоками в Markdown. Их вложенность в DOM представлена таким же образом, как и для всех других контейнерных блоков, с использованием наследования стиля. Однако, кроме того, списки в DOM имеют соответствующее числовое оформление либо в виде списка, либо в виде абзаца.

## Встроенные блоки

Мы используем форматирование [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) при переводе **Bold**, *Italic* или ~~Strikethrough~~ встроенных функций markdown.

| Markdown особенность | Aspose.Words |
| ----------------------------- | ------------------ |
| **Bold**<br />`**bold text**` | `Font.bold = True` |
| {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Make the text Bold.
builder.font.bold = True
builder.writeln("This text will be Bold")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.bold_text_example.md"){{< /highlight >}} |  |
| **Italic**<br />`*italic text*` | `Font.italic = True` |
| {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Make the text Italic.
builder.font.italic = True
builder.writeln("This text will be Italic")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.italic_text_example.md"){{< /highlight >}} |  |
| **Strikethrough**<br />`~Strikethrough text~` | `Font.strike_through = True` |
| {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Make the text Strikethrough.
builder.font.strike_through = True
builder.writeln("This text will be Strikethrough")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.strikethrough_text_example.md"){{< /highlight >}} |  |

Мы используем стиль символов с именем, которое начинается со слова `InlineCode`, за которым следует необязательная точка `(.)` и несколько обратных меток ```(`)``` для элемента `InlineCode`. Если пропущено несколько обратных меток, то по умолчанию будет использоваться одна обратная метка.

| Markdown особенность | Aspose.Words |
| ----------------------------- | ------------------ |
| **InlineCode**<br />`**inline code**` | `Font.style_name = "InlineCode[.][N]"` |
| {{< highlight python >}}# Use a document builder to add content to the document.
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
| **Autolink**<br />`<scheme://domain.com>`<br />`<email@domain.com>` | Класс [FieldHyperlink](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldhyperlink/). |
| {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Insert hyperlink.
builder.insert_hyperlink("https://www.aspose.com", "https://www.aspose.com", False);
builder.insert_hyperlink("email@aspose.com", "mailto:email@aspose.com", False);

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.autolink_example.md"){{< /highlight >}} |  |
| **Link**<br />`[link text](url)`<br />`[link text](<url>"title")`<br />`[link text](url 'title')`<br />`[link text](url (title))` | Тот самый [FieldHyperlink](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldhyperlink/) |
| {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Insert hyperlink.
builder.insert_hyperlink("Aspose", "https://www.aspose.com", False)

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.link_example.md"){{< /highlight >}} |  |
| **Image**<br />`![](url)`<br />`![alt text](<url>"title")`<br />`![alt text](url ‘title’)`<br />`![alt text](url (title))` | Класс [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/). |
| {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Insert image.
shape = aw.drawing.Shape(builder.document, aw.drawing.ShapeType.IMAGE)
shape.wrap_type = aw.drawing.WrapType.INLINE
shape.image_data.source_full_name = "/attachment/1456/pic001.png"
shape.image_data.title = "title"
builder.insert_node(shape)

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.image_example.md"){{< /highlight >}} |  |

## Контейнерные блоки

Документ представляет собой последовательность блоков-контейнеров, таких как заголовки, абзацы, списки, цитаты и другие. Блоки-контейнеры можно разделить на 2 класса: конечные блоки и сложные контейнеры. Конечные блоки могут содержать только встроенное содержимое. Сложные контейнеры, в свою очередь, могут содержать другие блоки контейнеров, включая конечные блоки.

### Листовые блоки

В таблице ниже приведены примеры использования конечных блоков Markdown в Aspose.Words:

| Markdown особенность | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **HorizontalRule**<br />`-----` | Это простой абзац с соответствующей формой HorizontalRule:<br />[DocumentBuilder.insert_horizontal_rule()](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_horizontal_rule/) |
| {{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-HorizontalRule.py" >}} |  |
| **ATX Heading**<br />`# H1, ## H2, ### H3…` | `ParagraphFormat.style_name = "Heading N"`, где (1<= N <= 9).<br />Это переводится во встроенный стиль и должно точно соответствовать указанному шаблону (суффиксы и префиксы не допускаются).<br />В противном случае это будет просто обычный абзац с соответствующим стилем. |
| {{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-Headings.py" >}} |  |
| **Setext Heading**<br />`===` (if Heading level 1),<br />`---` (if Heading level 2) | `ParagraphFormat.style_name = "SetextHeading[some suffix]"`, основанный на стиле `"Heading N"`.<br />Если (N >= 2), то будет использоваться `"Heading 2"`, в противном случае `"Heading 1"`.<br />Допускается использование любого суффикса, но импортер Aspose.Words использует цифры "1" и "2" соответственно. |
| {{< highlight python >}}# Use a document builder to add content to the document.
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
| **Indented Code** | `ParagraphFormat.style_name = "IndentedCode[some suffix]"` |
| {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

indentedCode = builder.document.styles.add(aw.StyleType.PARAGRAPH, "IndentedCode")
builder.paragraph_format.style = indentedCode
builder.writeln("This is an indented code")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.indented_code_example.md"){{< /highlight >}} |  |
| **Fenced Code**<br />{{< highlight csharp >}}``` c#
if ()
then
else
```{{< /highlight >}} | `ParagraphFormat.style_name = "FencedCode[.][info string]"`<br /> Значения `[.]` и `[info string]` являются необязательными. |
| {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

fencedCode = builder.document.styles.add(aw.StyleType.PARAGRAPH, "FencedCode")
builder.paragraph_format.style = fencedCode
builder.writeln("This is an fenced code")

fencedCodeWithInfo = builder.document.styles.add(aw.StyleType.PARAGRAPH, "FencedCode.C#")
builder.paragraph_format.style = fencedCodeWithInfo
builder.writeln("This is a fenced code with info string")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.fenced_code_example.md"){{< /highlight >}} |  |

### Сложные контейнеры

В таблице ниже приведены примеры использования Markdown сложных контейнеров в Aspose.Words:

| Markdown особенность | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **Quote**<br />`> quote,`<br />`>> nested quote` | `ParagraphFormat.style_name = "Quote[some suffix]"`<br /> Суффикс в названии стиля необязателен, но Aspose.Words импортер использует упорядоченные номера 1, 2, 3, .... в случае вложенных кавычек.<br />Вложенность определяется с помощью унаследованных стилей. |
| {{< highlight python >}}# Use a document builder to add content to the document.
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
| **BulletedList**<br />`- Item 1`<br />`- Item 2`<br />	` - Item 2a`<br />	` - Item 2b` | Маркированные списки представлены с использованием нумерации абзацев:<br />[ListFormat.apply_bullet_default()](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_bullet_default/)<br />Маркированные списки могут быть трех типов. Они различаются только в формате нумерации самого первого уровня. Это: `'-'`, `'+'` или `'*'` соответственно. |
| {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

builder.list_format.apply_bullet_default()
builder.list_format.list.list_levels[0].number_format = "-"

builder.writeln("Item 1")
builder.writeln("Item 2")

builder.list_format.list_indent()

builder.writeln("Item 2a")
builder.writeln("Item 2b")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.bulleted_list_example.md"){{< /highlight >}} |  |
| **OrderedList**<br />`1. Item 1`<br />`2. Item 2`<br />	`1) Item 2a`<br />	`2) Item 2b` | Упорядоченные списки представлены с использованием нумерации абзацев:<br />[ListFormat.apply_number_default()](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_number_default/)<br />Может быть 2 маркера числового формата: `'.'` и `')'`. По умолчанию используется маркер `'.'`. |
| {{< highlight python >}}doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.list_format.apply_number_default()

builder.writeln("Item 1")
builder.writeln("Item 2")

builder.list_format.list_indent()

builder.writeln("Item 2a")
builder.write("Item 2b")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.ordered_list_example.md"){{< /highlight >}} |  |

### Таблицы

Aspose.Words также позволяет преобразовать таблицы в DOM, как показано ниже:

| Markdown особенность | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| `Table` <br />`а\ | b`<br />`-\ | -`<br />`c\ | д' | классы [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) и [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/). |
| {{< highlight python >}}# Use a document builder to add content to the document.
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

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.ordered_list_table.md"){{< /highlight >}} |  |

## Смотрите также

* [Работа с Markdown функциями](/words/python-net/working-with-markdown-features/)

