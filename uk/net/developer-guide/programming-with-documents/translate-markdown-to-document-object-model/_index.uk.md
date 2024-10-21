---
title: Переклад Markdown до DOM
second_title: Aspose.Words для .NET
articleTitle: Переклад Markdown до Document Object Model (Українська)DOMй
linktitle: Переклад Markdown до Document Object Model (Українська)DOMй
type: docs
description: "Переклад Markdown документ до Document Object Model і назад за допомогою C#й Так ви можете працювати з комплексними існуючими Markdown і программатично створюють Markdown документ з нуля."
weight: 20
url: /uk/net/translate-markdown-to-document-object-model/
---

Щоб программатично читати, маніпулювати і змінювати зміст і форматування документа, потрібно перевести його до Aspose.Words Document Object Model (Українська)DOM).

На відміну від документів Word, Markdown не відповідає DOM описано в [Aspose.Words Document Object Model (DOM)](/words/uk/net/aspose-words-document-object-model/) стаття. Однак Aspose.Words забезпечує власний механізм перетягування Markdown документи DOM і назад, так що ми можемо успішно працювати з елементами, такими як форматування тексту, таблиці, заголовки та інші.

Ця стаття пояснює, як різні markdown функції можна перекласти в Aspose.Words DOM і назад Markdown Формат.

## Складність перекладу Markdown до DOM до Markdown

Основна складність цього механізму не тільки для перекладу Markdown до DOM, але також зробити зворотну трансформацію – зберегти документ назад до Markdown формат з мінімальною втратою. Є елементи, такі як багаторівневі котирування, для яких зворотна трансформація не тривіально.

Ми можемо самі зателефонувати одержувачу і узгодити зручний час і місце вручення квітів. Markdown документ, але також створити власний документ у Markdown формат з оригінальною структурою з нуля. Щоб створити різні елементи, потрібно використовувати стилі з певними назвами відповідно до певних правил, описаних пізніше в цій статті. Такі стилі можуть бути створені тематично.

## Переклад Принципи

Ми використовуємо [Font](https://reference.aspose.com/words/net/aspose.words/font/) форматування для вбудованих блоків. Коли немає прямого листування Markdown в наявності Aspose.Words DOM, Ми використовуємо стиль персонажа з назвою, яка починається з деяких спеціальних слів.

Для контейнерних блоків ми використовуємо стиль спадкування, щоб викинути Markdown особливості. У цьому випадку, навіть якщо немає непристойних функцій, ми також використовуємо абзац стилі з назвою, яка починається з деяких спеціальних слів.

Булетні та замовлені списки є контейнерними блоками в Markdown і Їх гніздування представлена в DOM так само, як і для всіх інших контейнерних блоків з використанням стильного спадкування. Тим не менш, додатково, списки в DOM відповідати формату номеру в стилі список або форматування абзаців.

## Внутрішні блоки

Ми використовуємо [Font](https://reference.aspose.com/words/net/aspose.words/font/) форматування при перекладі **Bold**, *Italic* або ~ ~ Розгортання ~ ~ inline markdown особливості.

|  Markdown Головна |   Aspose.Words        |
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

Ми використовуємо стиль персонажа з назвою, яка починається з слова <span notrans="<span notrans=" `InlineCode`"=""></span>, > далі за бажанням `(.)` і ряд бектики ```(`)``` для `InlineCode` функція. Якщо пропущено ряд спандексів, то один задняк буде використовуватися за замовчуванням.

|  Markdown Головна |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **InlineCode**<br/>`{1}` |  `Font.StyleName = “InlineCode[.][N]”`  |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-InlineCode.cs" >}}  |  |
|  **Autolink**<br/>`<scheme://domain.com>`<br/>`<email@domain.com>` |  Про нас [FieldHyperlink](https://reference.aspose.com/words/net/aspose.words.fields/fieldhyperlink/) клас |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Autolink.cs" >}}  |  |
|  **Link**<br/>`{1}`<br/>`{2}`<br/>`{3}`<br/>`{4})` |  Про нас [FieldHyperlink](https://reference.aspose.com/words/net/aspose.words.fields/fieldhyperlink/) клас |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Link.cs" >}}  |  |
|  **Image**<br/>`{1}`<br/>`{2}`<br/>`{3}`<br/>`{4})` |  Про нас [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) клас |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Image.cs" >}}  |  |

## Блоки контейнерів

Документ є послідовністю контейнерних блоків, таких як заголовки, абзаци, списки, котирування та інші. Контейнерні блоки можна розділити на 2 класи: Листові блоки та складні контейнери. Блоки Leaf можуть містити лише інлайн. Комплексні контейнери, в свою чергу, можуть містити інші контейнерні блоки, в тому числі блоки Leaf.

### Листові блоки

Таблиця нижче показує приклади використання Markdown Листові блоки в Aspose.Words:

|  Markdown Головна |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **HorizontalRule**<br/>`-----` |  Це простий абзац з відповідною формою HorizontalRule:<br/>`DocumentBuilder.InsertHorizontalRule()` |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-HorizontalRule.cs" >}}  |                                                                |
|  **ATX Heading**<br/>`# H1, ## H2, ### H3…` |  `ParagraphFormat.StyleName = “Heading N”`, де (1<= N <=9).<br/>Це перекладається в вбудований стиль і має бути саме з зазначеного шаблону (не суфікси або префікси допускаються).<br/>В іншому випадку це буде просто звичайний абзац з відповідним стилем |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Heading.cs" >}}  |                                                                |
|  **Setext Heading**<br/>`===` (якщо рівень заголовка 1),<br/>`---` (якщо рівень заголовка 2) |  `ParagraphFormat.StyleName = “SetextHeading[some suffix]”`, на основі `“Heading N”` стиль.<br/>Якщо (N >= 2), то `“Heading 2”` буде використовуватися, інакше `“Heading 1”`й<br/>Допускається будь-який suffix, але Aspose.Words імпортер використовує номери "1" та "2" відповідно |
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
```{{< /highlight >}} |  `ParagraphFormat.StyleName = “FencedCode[.][info string]”`<br/>Про нас `[.]` і `[info string]` необов'язково |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-FencedCode.cs" >}}   |                                                                |

### Комплексні контейнери

Таблиця нижче показує приклади використання Markdown Комплексні контейнери в Aspose.Words:

|  Markdown Головна |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **Quote**<br/>`> quote,`<br/>`>> nested quote` |  `ParagraphFormat.StyleName = “Quote[some suffix]”`<br/>Суфікс в назві стилю необов'язково, але Aspose.Words імпортер використовує замовлені номери 1, 2, 3, .... в разі необрізних котирування.<br/>Ведуться ведучі стилі |
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
|  **BulletedList**<br/>`- Item 1`<br/>`- Item 2`<br/> `   - Item 2a`<br/> `   - Item 2b` |  Списки буклетів представлені за допомогою абзацу:<br/>`ListFormat.ApplyBulletDefault()`<br/>Ви можете бути 3 види бюлетенів. Вони розрізняються лише в форматі нумерації першого рівня. Це: `‘-’`, `‘+’` або `‘*’` відповідно |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-BulletedList.cs" >}}  |                                                                |
|  **OrderedList**<br/>`1. Item 1`<br/>`2. Item 2`<br/> `1) Item 2a`<br/> `2) Item 2b` |  Замовлені списки представлені за допомогою абзаців:<br/>`ListFormat.ApplyNumberDefault()`<br/>Відмітки формату 2: "." та ")" Маркувальник за замовчуванням "." |
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

### Столи

Aspose.Words також дозволяє перевести таблиці в DOM, як показано нижче:

|  Markdown Головна |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  `Table`<br/>й | б`<br />`до | -до`<br />`з | й й |  [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/), [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) і [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/) класи |
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

## Дивитися ще

* [Робота з Markdown Особливості](/words/uk/net/working-with-markdown-features/)

