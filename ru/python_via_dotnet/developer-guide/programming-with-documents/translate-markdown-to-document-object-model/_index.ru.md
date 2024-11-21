---
title: Переводить Markdown то DOM
second_title: Aspose.Words для Python via .NET
articleTitle: Переводить Markdown то Document Object Model ()DOM)
linktitle: Переводить Markdown то Document Object Model ()DOM)
type: docs
description: "Тарнслат Markdown документировать Document Object Model и обратно с использованием Python. Вы можете работать со сложными существующими Markdown программным путем создать Markdown Документ с нуля."
weight: 20
url: /ru/python-net/translate-markdown-to-document-object-model/
timestamp: 2024-10-21-11-17-44
---

Чтобы программно читать, манипулировать и изменять содержание и форматирование документа, вам нужно перевести его на веб-сайт. Aspose.Words Document Object Model ()DOM).

В отличие от текстов, Markdown не соответствует требованиям DOM описанный в [Aspose.Words Document Object Model (DOM)](/words/ru/python-net/aspose-words-document-object-model/) Статья. Однако, Aspose.Words Создает собственный механизм перевода Markdown документы для DOM и обратно, чтобы мы могли успешно работать с их элементами, такими как форматирование текста, таблицы, заголовки и другие.

В этой статье объясняется, как различные markdown Функции могут быть переведены в Aspose.Words DOM и обратно в Markdown Формат.

## Сложность перевода Markdown - DOM - Markdown

Основная сложность этого механизма заключается не только в переводе. Markdown то DOM, но и сделать обратную трансформацию – сохранить документ обратно в исходное состояние. Markdown Формат с минимальными потерями. Есть элементы, такие как многоуровневые котировки, для которых обратное преобразование не тривиально.

Наш движок перевода позволяет пользователям не только работать со сложными элементами в существующем Markdown документ, а также для создания собственного документа в Markdown Формат с оригинальной структурой с нуля. Для создания различных элементов необходимо использовать стили с конкретными названиями по определенным правилам, описанным ниже в этой статье. Такие стили можно создавать программно.

## Общий перевод Принципы

Мы используем [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) Форматирование для встроенных блоков. Если нет прямой корреспонденции для Markdown свойство Aspose.Words DOM, Мы используем стиль персонажа с именем, которое начинается с некоторых специальных слов.

Для контейнерных блоков мы используем наследование стиля для обозначения вложенных Markdown особенности. В этом случае, даже когда нет вложенных функций, мы также используем стили абзацев с именем, которое начинается с некоторых специальных слов.

Бюллетени и упорядоченные списки представляют собой контейнерные блоки. Markdown И тоже. Их гнездование представлено в DOM Так же, как и для всех остальных контейнерных блоков, использующих стиль наследования. Кроме того, списки в DOM соответствовали форматированию номеров в стиле списка или в формате абзаца.

## Встроенные блоки

Мы используем [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) Форматирование при переводе **Bold**, *Italic* или ~~Strikethrough~~inline markdown особенности.

|  Markdown особенность |   Aspose.Words        |
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

Мы используем стиль персонажа с именем, начинающимся от слова. <p notrans="<p notrans=" `InlineCode`"=""></p>"> с последующей факультативной точкой `(.)` и несколько задних ходов ```(`)``` для `InlineCode` особенность. Если пропущено несколько бэктиков, то по умолчанию будет использоваться один бэктик.

|  Markdown особенность |   Aspose.Words        |
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
|  **Autolink**<br/>`<scheme://domain.com>`<br/>`<email@domain.com>` |  The [FieldHyperlink](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldhyperlink/) класс |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Insert hyperlink.
builder.insert_hyperlink("https://www.aspose.com", "https://www.aspose.com", False);
builder.insert_hyperlink("email@aspose.com", "mailto:email@aspose.com", False);

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.autolink_example.md"){{< /highlight >}} |  |
|  **Link**<br/>`{1}`<br/>`{2}`<br/>`{3}`<br/>`{4})` |  The [FieldHyperlink](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldhyperlink/) |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Insert hyperlink.
builder.insert_hyperlink("Aspose", "https://www.aspose.com", False)

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.link_example.md"){{< /highlight >}} |  |
|  **Image**<br/>`{1}`<br/>`{2}`<br/>`{3}`<br/>`{4})` |  The [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) класс |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Insert image.
shape = aw.drawing.Shape(builder.document, aw.drawing.ShapeType.IMAGE)
shape.wrap_type = aw.drawing.WrapType.INLINE
shape.image_data.source_full_name = "/attachment/1456/pic001.png"
shape.image_data.title = "title"
builder.insert_node(shape)

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.image_example.md"){{< /highlight >}} |  |

## Контейнерные блоки

Документ представляет собой последовательность контейнерных блоков, таких как заголовки, абзацы, списки, цитаты и другие. Блоки контейнеров можно разделить на 2 класса: Блоки листьев и сложные контейнеры. Блоки листьев могут содержать только встроенный контент. Сложные контейнеры, в свою очередь, могут содержать другие контейнерные блоки, в том числе блоки Leaf.

### Блоки листьев

В приведенной ниже таблице приведены примеры использования Markdown Листья блокируют Aspose.Words:

|  Markdown особенность |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **HorizontalRule**<br/>`-----` |  Это простой абзац с соответствующей формой горизонтального правила:<br/>[DocumentBuilder.insert_horizontal_rule()](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_horizontal_rule/) |
|   {{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-HorizontalRule.py" >}}  |                                                                |
|  **ATX Heading**<br/>`# H1, ## H2, ### H3…` |  `ParagraphFormat.style_name = "Heading N"`, где (1<= N <= 9).<br/>Это переводится во встроенный стиль и должно быть именно указанного шаблона (никаких суффиксов или префиксов не допускается).<br/>В противном случае это будет обычный абзац с соответствующим стилем |
|   {{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-Headings.py" >}}  |                                                                |
|  **Setext Heading**<br/>`===` (если уровень 1),<br/>`---` (если уровень 2) |  `ParagraphFormat.style_name = "SetextHeading[some suffix]"`, основанный на `"Heading N"` стиль.<br/>Если (N > 2), то `"Heading 2"` будет использоваться, в противном случае `"Heading 1"`.<br/>Допускается любой суффикс, но Aspose.Words Импортер использует цифры "1" и "2" соответственно |
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
```{{< /highlight >}} |  `ParagraphFormat.style_name = "FencedCode[.][info string]"`<br/>The `[.]` и `[info string]` необязательно |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

fencedCode = builder.document.styles.add(aw.StyleType.PARAGRAPH, "FencedCode")
builder.paragraph_format.style = fencedCode
builder.writeln("This is an fenced code")

fencedCodeWithInfo = builder.document.styles.add(aw.StyleType.PARAGRAPH, "FencedCode.C#")
builder.paragraph_format.style = fencedCodeWithInfo
builder.writeln("This is a fenced code with info string")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.fenced_code_example.md"){{< /highlight >}} |                                                                |

### Комплексные контейнеры

В приведенной ниже таблице приведены примеры использования Markdown Сложные контейнеры в Aspose.Words:

|  Markdown особенность |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **Quote**<br/>`> quote,`<br/>`>> nested quote` |  `ParagraphFormat.style_name = "Quote[some suffix]"`<br/>Суффикс в названии стиля необязателен, но Aspose.Words Импортер использует упорядоченные номера 1, 2, 3, .... в случае вложенных котировок.<br/>Гнездо определяется через унаследованные стили |
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
|  **BulletedList**<br/>`- Item 1`<br/>`- Item 2`<br/> `   - Item 2a`<br/> `   - Item 2b` |  Бюллетени представлены с использованием нумерации пунктов:<br/>[ListFormat.apply_bullet_default()](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_bullet_default/)<br/>Могут быть 3 типа списков. Они диффундируют только в нумерационном формате самого первого уровня. Это: `'-'`, `'+'` или `'*'` соответственно |
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
|  **OrderedList**<br/>`1. Item 1`<br/>`2. Item 2`<br/> `1) Item 2a`<br/> `2) Item 2b` |  Упорядоченные списки представлены с использованием нумерации пунктов:<br/>[ListFormat.apply_number_default()](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_number_default/)<br/>Может быть 2 символа формата: `'.'` и `')'`. Маркер по умолчанию является `'.'` |
|  {{< highlight python >}}doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.list_format.apply_number_default()

builder.writeln("Item 1")
builder.writeln("Item 2")

builder.list_format.list_indent()

builder.writeln("Item 2a")
builder.write("Item 2b")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.ordered_list_example.md"){{< /highlight >}} |                                                                |

### Таблицы

Aspose.Words позволяет переводить таблицы в DOM, Как показано ниже:

|  Markdown особенность |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  `Table` <br/>"а" | b`<br />`-|-`<br />`c|d пункт |  [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) и [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) классы |
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

## Смотрите также

* [Работать с Markdown Особенности](/words/ru/python-net/working-with-markdown-features/)

