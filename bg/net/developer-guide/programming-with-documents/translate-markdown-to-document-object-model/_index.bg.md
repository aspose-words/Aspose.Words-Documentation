---
title: Превод Markdown до DOM
second_title: Aspose.Words вместо .NET
articleTitle: Превод Markdown до Document Object Model (DOM)
linktitle: Превод Markdown до Document Object Model (DOM)
type: docs
description: "Превод Markdown документ към Document Object Model и обратно използване C#. Така че можете да работите със сложни съществуващи Markdown и програмно създаване на Markdown документ от нулата."
weight: 20
url: /bg/net/translate-markdown-to-document-object-model/
timestamp: 2024-10-21-11-17-44
---

За да се чете, манипулира и променя съдържанието и форматирането на документ, трябва да го преведете на Aspose.Words Document Object Model (DOM).

За разлика от Word документи, Markdown не съответства на DOM описани в [Aspose.Words Document Object Model (DOM)](/words/bg/net/aspose-words-document-object-model/) статия. Все пак, Aspose.Words осигурява свой собствен механизъм за превод Markdown документи за DOM и обратно, за да можем успешно да работим с техните елементи като форматиране на текст, таблици, заглавни части и други.

Тази статия обяснява как различните markdown функции могат да бъдат преведени в Aspose.Words DOM и обратно към Markdown формат.

## Сложност на превода Markdown - Да. DOM - Да. Markdown

Основната трудност на този механизъм е не само да се превежда Markdown до DOM, но също така да се направи обратната трансформация за да запази документа обратно към Markdown формат с минимална загуба. Има елементи, като многостепенни цитати, за които обратната трансформация не е тривиална.

Нашият превод двигател позволява на потребителите не само да работят със сложни елементи в съществуващи Markdown документ, но и за създаване на свой собствен документ в Markdown формат с оригиналната структура от нулата. За да създадете различни елементи, трябва да използвате стилове със специфични имена съгласно определени правила, описани по-късно в тази статия. Такива стилове могат да бъдат създадени програмно.

## Общ превод Принципи

Ние използваме [Font](https://reference.aspose.com/words/net/aspose.words/font/) форматиране за вътрешни блокове. Когато няма директна кореспонденция за Markdown функция в Aspose.Words DOM, използваме стил на характер с име, което започва от някои специални думи.

За контейнери блокове, ние използваме стил наследство, за да означаваме гнездо Markdown особености. В този случай, дори когато няма скрити черти, ние също използваме стилове на параграфа с име, което започва от някои специални думи.

Куршумирани и поръчани списъци са контейнери блокове в Markdown Както добре. Тяхното гнездо е представено в DOM по същия начин, както и за всички други контейнери, използващи стил наследство. Въпреки това, допълнително, списъци в DOM са отговаряли на форматиране на номера в стил на списъка или форматиране на параграф.

## Входни блокове

Ние използваме [Font](https://reference.aspose.com/words/net/aspose.words/font/) форматиране при превод **Bold**, *Italic* или ~ ~ Strikethrough ~ ~ inline markdown особености.

|  Markdown функция |   Aspose.Words        |
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

Използваме стил на героя с име, което започва от думата <span notrans="<span notrans=" `InlineCode`"=""></span>,"> последвано от незадължителна точка `(.)` и редица подпори ```(`)``` за `InlineCode` функция. Ако се пропусне определен брой backticks, тогава един backtick ще се използва по подразбиране.

|  Markdown функция |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **InlineCode**<br/>`{1}` |  `Font.StyleName = “InlineCode[.][N]”`  |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-InlineCode.cs" >}}  |  |
|  **Autolink**<br/>`<scheme://domain.com>`<br/>`<email@domain.com>` |  На [FieldHyperlink](https://reference.aspose.com/words/net/aspose.words.fields/fieldhyperlink/) Клас |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Autolink.cs" >}}  |  |
|  **Link**<br/>`{1}`<br/>`{2}`<br/>`{3}`<br/>`{4})` |  На [FieldHyperlink](https://reference.aspose.com/words/net/aspose.words.fields/fieldhyperlink/) Клас |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Link.cs" >}}  |  |
|  **Image**<br/>`{1}`<br/>`{2}`<br/>`{3}`<br/>`{4})` |  На [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) Клас |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Image.cs" >}}  |  |

## Блокове за контейнери

Документът е поредица от контейнери блокове като заглавия, параграфи, списъци, кавички и други. Контейнерните блокове могат да бъдат разделени на 2 класа: Листни блокове и комплексни контейнери. Листните блокове могат да съдържат само в линия съдържание. Комплексните контейнери от своя страна могат да съдържат други контейнери, включително Листни блокове.

### Листни блокове

Таблицата по- долу показва примери за използване Markdown Листни блокове в Aspose.Words:

|  Markdown функция |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **HorizontalRule**<br/>`-----` |  Това е прост параграф със съответстваща хоризонтална форма на правило:<br/>`DocumentBuilder.InsertHorizontalRule()` |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-HorizontalRule.cs" >}}  |                                                                |
|  **ATX Heading**<br/>`# H1, ## H2, ### H3…` |  `ParagraphFormat.StyleName = “Heading N”`, където (1 <= N <= 9).<br/>Това се превежда в вграден стил и трябва да бъде точно на посочения модел (не се допускат наставки или префикси).<br/>В противен случай това ще бъде просто обикновен параграф със съответния стил |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Heading.cs" >}}  |                                                                |
|  **Setext Heading**<br/>`===` (ако е посочено ниво 1),<br/>`---` (ако е посочено ниво 2) |  `ParagraphFormat.StyleName = “SetextHeading[some suffix]”`, въз основа на `“Heading N”` стил.<br/>Ако (N >= 2) тогава `“Heading 2”` ще се използва, в противен случай `“Heading 1”`.<br/>Всяка наставка е позволена, но Aspose.Words Вносителят използва номера съответно .... .. .. ..  |
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
```{{< /highlight >}} |  `ParagraphFormat.StyleName = “FencedCode[.][info string]”`<br/>На `[.]` както и `[info string]` са по избор |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-FencedCode.cs" >}}   |                                                                |

### Комплексни контейнери

Таблицата по- долу показва примери за използване Markdown Комплексни контейнери в Aspose.Words:

|  Markdown функция |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **Quote**<br/>`> quote,`<br/>`>> nested quote` |  `ParagraphFormat.StyleName = “Quote[some suffix]”`<br/>Наставката със стилно име е незадължителна, но Aspose.Words Вносителят използва поръчаните номера 1, 2, 3 .... в случай на гнездене.<br/>Гнезденето се определя чрез наследените стилове |
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
|  **BulletedList**<br/>`- Item 1`<br/>`- Item 2`<br/> `   - Item 2a`<br/> `   - Item 2b` |  Списъците с куршуми са представени с номерация на параграфа:<br/>`ListFormat.ApplyBulletDefault()`<br/>Може да има 3 вида списъци с куршуми. Те са само diff в номерационен формат на първото ниво. Това са: `‘-’`, `‘+’` или `‘*’` съответно |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-BulletedList.cs" >}}  |                                                                |
|  **OrderedList**<br/>`1. Item 1`<br/>`2. Item 2`<br/> `1) Item 2a`<br/> `2) Item 2b` |  Поръчаните списъци се представят с номерация на параграфа:<br/>`ListFormat.ApplyNumberDefault()`<br/>Може да има 2 маркери за формат на номера: гот.. и) Подразбиращият се маркер е .. |
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

### Таблици

Aspose.Words също така позволява да се превежда таблици в DOM, както е показано по-долу:

|  Markdown функция |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  `Table`<br/> год | b`<br />`-|-`<br />`c|d - Да |  [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/), [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) както и [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/) Класове |
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

## Вижте също

* [Работа с Markdown Характеристики](/words/bg/net/working-with-markdown-features/)

