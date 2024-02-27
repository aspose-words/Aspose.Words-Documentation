---
title: Перевести Markdown на DOM
second_title: Aspose.Words для .NET
articleTitle: Перевести Markdown на Document Object Model (DOM)
linktitle: Перевести Markdown на Document Object Model (DOM)
type: docs
description: "Переведите документ Markdown в Document Object Model и обратно, используя C#. Таким образом, вы можете работать со сложным существующим Markdown и программно создавать документ Markdown с нуля."
weight: 20
url: /ru/net/translate-markdown-to-document-object-model/
---

Чтобы программно читать, манипулировать и изменять содержимое и форматирование документа, вам необходимо перевести его в Aspose.Words Document Object Model (DOM).

В отличие от документов Word, Markdown не соответствует DOM, описанному в статье [Aspose.Words Document Object Model (DOM)](/words/ru/net/aspose-words-document-object-model/). Однако Aspose.Words предоставляет собственный механизм перевода Markdown документов в DOM и обратно, чтобы мы могли успешно работать с их элементами, такими как форматирование текста, таблицы, заголовки и другие.

В этой статье объясняется, как различные функции markdown можно преобразовать в формат Aspose.Words DOM и обратно в формат Markdown.

## Сложность перевода Markdown – DOM – Markdown

Основная сложность этого механизма заключается не только в том, чтобы перевести Markdown в DOM, но и сделать обратное преобразование — сохранить документ обратно в формат Markdown с минимальными потерями. Есть элементы, например многоуровневые котировки, для которых обратное преобразование не является тривиальным.

Наш механизм перевода позволяет пользователям не только работать со сложными элементами существующего документа Markdown, но и создавать с нуля собственный документ в формате Markdown с оригинальной структурой. Для создания различных элементов необходимо использовать стили с определенными именами по определенным правилам, описанным далее в этой статье. Такие стили можно создавать программно.

## Общие принципы перевода

Мы используем форматирование [Font](https://reference.aspose.com/words/net/aspose.words/font/) для строковых блоков. Если нет прямого соответствия функции Markdown в Aspose.Words DOM, мы используем стиль символов с именем, которое начинается с некоторых специальных слов.

Для блоков-контейнеров мы используем наследование стилей для обозначения Markdown вложенных функций. В этом случае, даже если вложенных функций нет, мы также используем стили абзацев с именем, начинающимся с некоторых специальных слов.

Маркированные и упорядоченные списки также являются блоками-контейнерами в Markdown. Их вложенность представлена в DOM так же, как и для всех остальных блоков-контейнеров с использованием наследования стилей. Однако, кроме того, списки в DOM имеют соответствующее числовое форматирование либо в стиле списка, либо в формате абзаца.

## Встроенные блоки

Мы используем форматирование [Font](https://reference.aspose.com/words/net/aspose.words/font/) при переводе **Bold**, *Italic* или ~~Зачеркивание~~ встроенных функций markdown.

|  Markdown функция |   Aspose.Words        |
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

Мы используем стиль символов с именем, которое начинается со слова `InlineCode`, за которым следует необязательная точка `(.)` и несколько обратных кавычек ```(`)``` для функции `InlineCode`. Если пропущено несколько обратных кавычек, по умолчанию будет использоваться один обратный кавычек.

|  Markdown функция |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **InlineCode**<br /> `{1}` |  `Font.StyleName = “InlineCode[.][N]”`  |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-InlineCode.cs" >}}  ||
|  **Autolink**<br /> `<scheme://domain.com>`<br /> `<email@domain.com>` |  Класс [FieldHyperlink](https://reference.aspose.com/words/net/aspose.words.fields/fieldhyperlink/) |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Autolink.cs" >}}  ||
|  **Link**<br /> `{1}`<br /> `{2}`<br /> `{3}`<br /> `{4})` |  Класс [FieldHyperlink](https://reference.aspose.com/words/net/aspose.words.fields/fieldhyperlink/) |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Link.cs" >}}  ||
|  **Image**<br /> `{1}`<br /> `{2}`<br /> `{3}`<br /> `{4})` |  Выпуск [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) года |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Image.cs" >}}  ||

## Контейнерные блоки

Документ представляет собой последовательность блоков-контейнеров, таких как заголовки, абзацы, списки, цитаты и другие. Блоки-контейнеры можно разделить на 2 класса: листовые блоки и сложные контейнеры. Листовые блоки могут содержать только встроенный контент. Сложные контейнеры, в свою очередь, могут содержать другие блоки-контейнеры, включая блоки Leaf.

### Листовые блоки

В таблице ниже приведены примеры использования блоков Leaf Markdown в Aspose.Words:

|  Markdown функция |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **HorizontalRule**<br /> `-----` |  Это простой абзац с соответствующей формой HorizontalRule:<br /> `DocumentBuilder.InsertHorizontalRule()` |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-HorizontalRule.cs" >}}  |                                                                |
|  **ATX Heading**<br /> `# H1, ## H2, ### H3…` |  `ParagraphFormat.StyleName = “Heading N”`, где (1&lt;= N &lt;= 9).<br /> Он переводится во встроенный стиль и должен точно соответствовать указанному шаблону (суффиксы и префиксы не допускаются).<br /> В противном случае это будет обычный абзац с соответствующим стилем |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Heading.cs" >}}  |                                                                |
|  **Setext Heading**<br /> `===` (если уровень заголовка 1),<br /> `---` (если уровень заголовка 2) |  `ParagraphFormat.StyleName = “SetextHeading[some suffix]”`, на основе стиля `“Heading N”`.<br /> Если (N &gt;= 2), то будет использоваться `“Heading 2”`, иначе `“Heading 1”`.<br /> Допускается любой суффикс, но импортер Aspose.Words использует цифры "1" и "2" соответственно |
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
```{{< /highlight >}} |  `ParagraphFormat.StyleName = “FencedCode[.][info string]”`<br /> `[.]` и `[info string]` являются дополнительными |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-FencedCode.cs" >}}   |                                                                |

### Сложные контейнеры

В таблице ниже показаны примеры использования сложных контейнеров Markdown в Aspose.Words:

|  Markdown функция |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **Quote**<br /> `> quote,`<br /> `>> nested quote` |  `ParagraphFormat.StyleName = “Quote[some suffix]”`<br /> Суффикс в названии стиля не является обязательным, но импортер Aspose.Words использует заказанные номера 1, 2, 3,…. в случае вложенных кавычек.<br /> Вложенность определяется через унаследованные стили |
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
|  **BulletedList**<br /> `- Item 1`<br /> `- Item 2`<br /> `   - Item 2a`<br /> `   - Item 2b` |  Маркированные списки представляются с использованием нумерации абзацев:<br /> `ListFormat.ApplyBulletDefault()`<br /> Маркированные списки могут быть трех типов. Они отличаются только форматом нумерации самого первого уровня. Это: `‘-’`, `‘+’` или `‘*’` соответственно |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-BulletedList.cs" >}}  |                                                                |
|  **OrderedList**<br /> `1. Item 1`<br /> `2. Item 2`<br /> `1) Item 2a`<br /> `2) Item 2b` |  Упорядоченные списки представляются с использованием нумерации абзацев:<br /> `ListFormat.ApplyNumberDefault()`<br /> Может быть два маркера числового формата: '.' и ')'. Маркер по умолчанию — "." |
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

### Таблицы

Aspose.Words также позволяет преобразовывать таблицы в DOM, как показано ниже:

|  Markdown функция |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  `Table`<br /> `а | b`<br />`- | -`<br />`c | д` |  Классы [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/), [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) и [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/) |
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

## Смотрите также

* [Работа с функциями Markdown](/words/ru/net/working-with-markdown-features/)

