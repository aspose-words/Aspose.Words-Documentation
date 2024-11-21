---
title: Переклад Markdown до DOM
second_title: Aspose.Words для Python via .NET
articleTitle: Переклад Markdown до Document Object Model (Українська)DOMй
linktitle: Переклад Markdown до Document Object Model (Українська)DOMй
type: docs
description: "Тарнслат Markdown документ до Document Object Model і назад за допомогою Pythonй Так ви можете працювати з комплексними існуючими Markdown і программатично створюють Markdown документ з нуля."
weight: 20
url: /uk/python-net/translate-markdown-to-document-object-model/
timestamp: 2024-10-21-11-17-44
---

Щоб программатично читати, маніпулювати і змінювати зміст і форматування документа, потрібно перевести його до Aspose.Words Document Object Model (Українська)DOM).

На відміну від документів Word, Markdown не відповідає DOM описано в [Aspose.Words Document Object Model (DOM)](/words/uk/python-net/aspose-words-document-object-model/) стаття. Однак Aspose.Words забезпечує власний механізм перетягування Markdown документи DOM і назад, так що ми можемо успішно працювати з елементами, такими як форматування тексту, таблиці, заголовки та інші.

Ця стаття пояснює, як різні markdown функції можна перекласти в Aspose.Words DOM і назад Markdown Формат.

## Складність перекладу Markdown до DOM до Markdown

Основна складність цього механізму не тільки для перекладу Markdown до DOM, але також зробити зворотну трансформацію – зберегти документ назад до Markdown формат з мінімальною втратою. Є елементи, такі як багаторівневі котирування, для яких зворотна трансформація не тривіально.

Ми можемо самі зателефонувати одержувачу і узгодити зручний час і місце вручення квітів. Markdown документ, але також створити власний документ у Markdown формат з оригінальною структурою з нуля. Щоб створити різні елементи, потрібно використовувати стилі з певними назвами відповідно до певних правил, описаних пізніше в цій статті. Такі стилі можуть бути створені тематично.

## Переклад Принципи

Ми використовуємо [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) форматування для вбудованих блоків. Коли немає прямого листування Markdown в наявності Aspose.Words DOM, Ми використовуємо стиль персонажа з назвою, яка починається з деяких спеціальних слів.

Для контейнерних блоків ми використовуємо стиль спадкування, щоб викинути Markdown особливості. У цьому випадку, навіть якщо немає непристойних функцій, ми також використовуємо абзац стилі з назвою, яка починається з деяких спеціальних слів.

Булетні та замовлені списки є контейнерними блоками в Markdown і Їх гніздування представлена в DOM так само, як і для всіх інших контейнерних блоків з використанням стильного спадкування. Тим не менш, додатково, списки в DOM відповідати формату номеру в стилі список або форматування абзаців.

## Внутрішні блоки

Ми використовуємо [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) форматування при перекладі **Bold**, *Italic* або ~ ~ Розгортання ~ ~ inline markdown особливості.

|  Markdown Головна |   Aspose.Words        |
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

Ми використовуємо стиль персонажа з назвою, яка починається з слова <span notrans="<span notrans=" `InlineCode`"=""></span>, > далі за бажанням `(.)` і ряд бектики ```(`)``` для `InlineCode` функція. Якщо пропущено ряд спандексів, то один задняк буде використовуватися за замовчуванням.

|  Markdown Головна |   Aspose.Words        |
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
|  **Autolink**<br/>`<scheme://domain.com>`<br/>`<email@domain.com>` |  Про нас [FieldHyperlink](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldhyperlink/) клас |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Insert hyperlink.
builder.insert_hyperlink("https://www.aspose.com", "https://www.aspose.com", False);
builder.insert_hyperlink("email@aspose.com", "mailto:email@aspose.com", False);

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.autolink_example.md"){{< /highlight >}} |  |
|  **Link**<br/>`{1}`<br/>`{2}`<br/>`{3}`<br/>`{4})` |  Про нас [FieldHyperlink](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldhyperlink/) |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Insert hyperlink.
builder.insert_hyperlink("Aspose", "https://www.aspose.com", False)

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.link_example.md"){{< /highlight >}} |  |
|  **Image**<br/>`{1}`<br/>`{2}`<br/>`{3}`<br/>`{4})` |  Про нас [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) клас |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Insert image.
shape = aw.drawing.Shape(builder.document, aw.drawing.ShapeType.IMAGE)
shape.wrap_type = aw.drawing.WrapType.INLINE
shape.image_data.source_full_name = "/attachment/1456/pic001.png"
shape.image_data.title = "title"
builder.insert_node(shape)

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.image_example.md"){{< /highlight >}} |  |

## Блоки контейнерів

Документ є послідовністю контейнерних блоків, таких як заголовки, абзаци, списки, котирування та інші. Контейнерні блоки можна розділити на 2 класи: Листові блоки та складні контейнери. Блоки Leaf можуть містити лише інлайн. Комплексні контейнери, в свою чергу, можуть містити інші контейнерні блоки, в тому числі блоки Leaf.

### Листові блоки

Таблиця нижче показує приклади використання Markdown Листові блоки в Aspose.Words:

|  Markdown Головна |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **HorizontalRule**<br/>`-----` |  Це простий абзац з відповідною формою HorizontalRule:<br/>[DocumentBuilder.insert_horizontal_rule()](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_horizontal_rule/) |
|   {{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-HorizontalRule.py" >}}  |                                                                |
|  **ATX Heading**<br/>`# H1, ## H2, ### H3…` |  `ParagraphFormat.style_name = "Heading N"`, де (1<= N <=9).<br/>Це перекладається в вбудований стиль і має бути саме з зазначеного шаблону (не суфікси або префікси допускаються).<br/>В іншому випадку це буде просто звичайний абзац з відповідним стилем |
|   {{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-Headings.py" >}}  |                                                                |
|  **Setext Heading**<br/>`===` (якщо рівень заголовка 1),<br/>`---` (якщо рівень заголовка 2) |  `ParagraphFormat.style_name = "SetextHeading[some suffix]"`, на основі `"Heading N"` стиль.<br/>Якщо (N >= 2), то `"Heading 2"` буде використовуватися, інакше `"Heading 1"`й<br/>Допускається будь-який suffix, але Aspose.Words імпортер використовує номери "1" і "2" відповідно |
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
```{{< /highlight >}} |  `ParagraphFormat.style_name = "FencedCode[.][info string]"`<br/>Про нас `[.]` і `[info string]` необов'язково |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

fencedCode = builder.document.styles.add(aw.StyleType.PARAGRAPH, "FencedCode")
builder.paragraph_format.style = fencedCode
builder.writeln("This is an fenced code")

fencedCodeWithInfo = builder.document.styles.add(aw.StyleType.PARAGRAPH, "FencedCode.C#")
builder.paragraph_format.style = fencedCodeWithInfo
builder.writeln("This is a fenced code with info string")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.fenced_code_example.md"){{< /highlight >}} |                                                                |

### Комплексні контейнери

Таблиця нижче показує приклади використання Markdown Комплексні контейнери в Aspose.Words:

|  Markdown Головна |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **Quote**<br/>`> quote,`<br/>`>> nested quote` |  `ParagraphFormat.style_name = "Quote[some suffix]"`<br/>Суфікс в назві стилю необов'язково, але Aspose.Words імпортер використовує замовлені номери 1, 2, 3, .... в разі необрізних котирування.<br/>Ведуться ведучі стилі |
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
|  **BulletedList**<br/>`- Item 1`<br/>`- Item 2`<br/> `   - Item 2a`<br/> `   - Item 2b` |  Списки буклетів представлені за допомогою абзацу:<br/>[ListFormat.apply_bullet_default()](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_bullet_default/)<br/>Ви можете бути 3 види бюлетенів. Вони розрізняються лише в форматі нумерації першого рівня. Це: `'-'`, `'+'` або `'*'` відповідно |
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
|  **OrderedList**<br/>`1. Item 1`<br/>`2. Item 2`<br/> `1) Item 2a`<br/> `2) Item 2b` |  Замовлені списки представлені за допомогою абзаців:<br/>[ListFormat.apply_number_default()](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_number_default/)<br/>Товарів у наявності: 2 `'.'` і `')'`й Маркувальник за замовчуванням `'.'`й |
|  {{< highlight python >}}doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.list_format.apply_number_default()

builder.writeln("Item 1")
builder.writeln("Item 2")

builder.list_format.list_indent()

builder.writeln("Item 2a")
builder.write("Item 2b")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.ordered_list_example.md"){{< /highlight >}} |                                                                |

### Столи

Aspose.Words також дозволяє перевести таблиці в DOM, як показано нижче:

|  Markdown Головна |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  `Table` <br/>й | б`<br />`-\ | -до`<br />`й | й й |  [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) і [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) класи |
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

## Дивитися ще

* [Робота з Markdown Особливості](/words/uk/python-net/working-with-markdown-features/)

