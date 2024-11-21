---
title: Переводить Markdown то DOM
second_title: Aspose.Words для .NET
articleTitle: Переводить Markdown то Document Object Model ()DOM)
linktitle: Переводить Markdown то Document Object Model ()DOM)
type: docs
description: "Переводить Markdown документировать Document Object Model и обратно с использованием C#. Вы можете работать со сложными существующими Markdown программным путем создать Markdown Документ с нуля."
weight: 20
url: /ru/net/translate-markdown-to-document-object-model/
timestamp: 2024-10-21-11-17-44
---

Чтобы программно читать, манипулировать и изменять содержание и форматирование документа, вам нужно перевести его на веб-сайт. Aspose.Words Document Object Model ()DOM).

В отличие от текстов, Markdown не соответствует требованиям DOM описанный в [Aspose.Words Document Object Model (DOM)](/words/ru/net/aspose-words-document-object-model/) Статья. Однако, Aspose.Words Создает собственный механизм перевода Markdown документы для DOM и обратно, чтобы мы могли успешно работать с их элементами, такими как форматирование текста, таблицы, заголовки и другие.

В этой статье объясняется, как различные markdown Функции могут быть переведены в Aspose.Words DOM и обратно в Markdown Формат.

## Сложность перевода Markdown - DOM - Markdown

Основная сложность этого механизма заключается не только в переводе. Markdown то DOM, но и сделать обратную трансформацию – сохранить документ обратно в исходное состояние. Markdown Формат с минимальными потерями. Есть элементы, такие как многоуровневые котировки, для которых обратное преобразование не тривиально.

Наш движок перевода позволяет пользователям не только работать со сложными элементами в существующем Markdown документ, а также для создания собственного документа в Markdown Формат с оригинальной структурой с нуля. Для создания различных элементов необходимо использовать стили с конкретными названиями по определенным правилам, описанным ниже в этой статье. Такие стили можно создавать программно.

## Общий перевод Принципы

Мы используем [Font](https://reference.aspose.com/words/net/aspose.words/font/) Форматирование для встроенных блоков. Если нет прямой корреспонденции для Markdown свойство Aspose.Words DOM, Мы используем стиль персонажа с именем, которое начинается с некоторых специальных слов.

Для контейнерных блоков мы используем наследование стиля для обозначения вложенных Markdown особенности. В этом случае, даже когда нет вложенных функций, мы также используем стили абзацев с именем, которое начинается с некоторых специальных слов.

Бюллетени и упорядоченные списки представляют собой контейнерные блоки. Markdown И тоже. Их гнездование представлено в DOM Так же, как и для всех остальных контейнерных блоков, использующих стиль наследования. Кроме того, списки в DOM соответствовали форматированию номеров в стиле списка или в формате абзаца.

## Встроенные блоки

Мы используем [Font](https://reference.aspose.com/words/net/aspose.words/font/) Форматирование при переводе **Bold**, *Italic* или ~~Strikethrough~~inline markdown особенности.

|  Markdown особенность |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **Bold**<br/>`{1}` |  `Font.Bold = true`  |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-BoldText.cs" >}}  |  |
|  **Italic**<br/>`*italic text*` |  `Font.Italic = true`  |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-ItalicText.cs" >}}  |  |
|  **Strikethrough**<br/>`~Strikethrough text~` |  `Font.StrikeThrough = true`  |
|  {{< highlight csharp >}}// Use a document builder to add content to the document.
DocumentBuilder builder = new DocumentBuilder();

// Make the text Strikethrough.
builder.Font.Strikethrough = true;
builder.Writeln("This text will be Strikethrough");{{< /highlight >}} |  |

Мы используем стиль персонажа с именем, начинающимся от слова. <p notrans="<p notrans=" `InlineCode`"=""></p>"> с последующей факультативной точкой `(.)` и несколько задних ходов ```(`)``` для `InlineCode` особенность. Если пропущено несколько бэктиков, то по умолчанию будет использоваться один бэктик.

|  Markdown особенность |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **InlineCode**<br/>`{1}` |  `Font.StyleName = “InlineCode[.][N]”`  |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-InlineCode.cs" >}}  |  |
|  **Autolink**<br/>`<scheme://domain.com>`<br/>`<email@domain.com>` |  The [FieldHyperlink](https://reference.aspose.com/words/net/aspose.words.fields/fieldhyperlink/) класс |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Autolink.cs" >}}  |  |
|  **Link**<br/>`{1}`<br/>`{2}`<br/>`{3}`<br/>`{4})` |  The [FieldHyperlink](https://reference.aspose.com/words/net/aspose.words.fields/fieldhyperlink/) класс |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Link.cs" >}}  |  |
|  **Image**<br/>`{1}`<br/>`{2}`<br/>`{3}`<br/>`{4})` |  The [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) класс |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Image.cs" >}}  |  |

## Контейнерные блоки

Документ представляет собой последовательность контейнерных блоков, таких как заголовки, абзацы, списки, цитаты и другие. Блоки контейнеров можно разделить на 2 класса: Блоки листьев и сложные контейнеры. Блоки листьев могут содержать только встроенный контент. Сложные контейнеры, в свою очередь, могут содержать другие контейнерные блоки, в том числе блоки Leaf.

### Блоки листьев

В приведенной ниже таблице приведены примеры использования Markdown Листья блокируют Aspose.Words:

|  Markdown особенность |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **HorizontalRule**<br/>`-----` |  Это простой абзац с соответствующей формой горизонтального правила:<br/>`DocumentBuilder.InsertHorizontalRule()` |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-HorizontalRule.cs" >}}  |                                                                |
|  **ATX Heading**<br/>`# H1, ## H2, ### H3…` |  `ParagraphFormat.StyleName = “Heading N”`, где (1<= N <= 9).<br/>Это переводится во встроенный стиль и должно быть именно указанного шаблона (никаких суффиксов или префиксов не допускается).<br/>В противном случае это будет обычный абзац с соответствующим стилем |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Heading.cs" >}}  |                                                                |
|  **Setext Heading**<br/>`===` (если уровень 1),<br/>`---` (если уровень 2) |  `ParagraphFormat.StyleName = “SetextHeading[some suffix]”`, основанный на `“Heading N”` стиль.<br/>Если (N > 2), то `“Heading 2”` будет использоваться, в противном случае `“Heading 1”`.<br/>Допускается любой суффикс, но Aspose.Words Импортер использует цифры "1" и "2" соответственно |
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
|  **Fenced Code**<br/>{{< highlight csharp >}}``` c#
if ()
then
else
```{{< /highlight >}} |  `ParagraphFormat.StyleName = “FencedCode[.][info string]”`<br/>The `[.]` и `[info string]` необязательно |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-FencedCode.cs" >}}   |                                                                |

### Комплексные контейнеры

В приведенной ниже таблице приведены примеры использования Markdown Сложные контейнеры в Aspose.Words:

|  Markdown особенность |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **Quote**<br/>`> quote,`<br/>`>> nested quote` |  `ParagraphFormat.StyleName = “Quote[some suffix]”`<br/>Суффикс в названии стиля необязателен, но Aspose.Words Импортер использует упорядоченные номера 1, 2, 3, .... в случае вложенных котировок.<br/>Гнездо определяется через унаследованные стили |
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
|  **BulletedList**<br/>`- Item 1`<br/>`- Item 2`<br/> `   - Item 2a`<br/> `   - Item 2b` |  Бюллетени представлены с использованием нумерации пунктов:<br/>`ListFormat.ApplyBulletDefault()`<br/>Могут быть 3 типа списков. Они диффундируют только в нумерационном формате самого первого уровня. Это: `‘-’`, `‘+’` или `‘*’` соответственно |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-BulletedList.cs" >}}  |                                                                |
|  **OrderedList**<br/>`1. Item 1`<br/>`2. Item 2`<br/> `1) Item 2a`<br/> `2) Item 2b` |  Упорядоченные списки представлены с использованием нумерации пунктов:<br/>`ListFormat.ApplyNumberDefault()`<br/>Может быть 2 символа формата: "." и "." Маркер по умолчанию - "..." |
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

Aspose.Words позволяет переводить таблицы в DOM, Как показано ниже:

|  Markdown особенность |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  `Table`<br/>а) | b`<br />`-|-`<br />`c|d пункт |  [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/), [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) и [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/) классы |
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

* [Работать с Markdown Особенности](/words/ru/net/working-with-markdown-features/)

