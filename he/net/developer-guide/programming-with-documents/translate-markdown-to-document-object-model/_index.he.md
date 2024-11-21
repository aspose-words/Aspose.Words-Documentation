---
title: תרגום Markdown to to DOM
second_title: Aspose.Words עבור .NET
articleTitle: תרגום Markdown to to Document Object Model ()DOM)
linktitle: תרגום Markdown to to Document Object Model ()DOM)
type: docs
description: "תרגום לעברית Markdown מסמך Document Object Model חזרה לשימוש C#. אז אתה יכול לעבוד עם קיים מורכב Markdown באופן יזום ליצור Markdown מסמך מאפס"
weight: 20
url: /he/net/translate-markdown-to-document-object-model/
timestamp: 2024-10-21-11-17-44
---

כדי לקרוא, לתמרן ולשנות את התוכן ואת הפורמט של מסמך, עליך לתרגם אותו ל Aspose.Words Document Object Model ()DOM).

בניגוד למסמכים של Word, Markdown לא תואם את DOM תואר ב [Aspose.Words Document Object Model (DOM)](/words/he/net/aspose-words-document-object-model/) מאמר. עם Aspose.Words מספק מנגנון משלו לתרגום Markdown מסמכים DOM ובחזרה, כך שנוכל לעבוד בהצלחה עם האלמנטים שלהם כגון פורמט טקסט, טבלאות, ראשים ואחרים.

מאמר זה מסביר כיצד השונים markdown ניתן לתרגם תכונות לתוך Aspose.Words DOM ובחזרה Markdown פורמט.

## המורכבות של התרגום Markdown - - - DOM - - - Markdown

הקושי העיקרי של מנגנון זה אינו רק לתרגם Markdown to to DOM, אבל גם לעשות את הטרנספורמציה לאחור - כדי להציל את המסמך בחזרה Markdown פורמט עם אובדן מינימלי. ישנם אלמנטים, כגון ציטוטים רב-דרגיים, שעבורם השינוי הפוך אינו טריוויאלי.

מנוע התרגום שלנו מאפשר למשתמשים לא רק לעבוד עם אלמנטים מורכבים הקיימים Markdown מסמך, אך גם ליצירת מסמך משלו Markdown פורמט עם המבנה המקורי מאפס. כדי ליצור אלמנטים שונים, עליך להשתמש בסגנונות עם שמות ספציפיים על פי כללים מסוימים המתוארים מאוחר יותר במאמר זה. ניתן ליצור סגנונות כאלה באופן מתודולוגי.

## תרגום כללי עקרונות

אנו משתמשים [Font](https://reference.aspose.com/words/net/aspose.words/font/) עיצוב בלוקים פנימיים כשאין התכתבות ישירה Markdown תכונה Aspose.Words DOM, אנו משתמשים בסגנון אופי עם שם שמתחיל מכמה מילים מיוחדות.

עבור בלוקים מכולה, אנו משתמשים בירושה בסגנון כדי לציין קינון Markdown תכונות. במקרה זה, גם כאשר אין תכונות מקוננות, אנו משתמשים גם בסגנונות סעיף עם שם שמתחיל מכמה מילים מיוחדות.

רשימות מוצפות וצווים הן בלוקים של מיכל Markdown גם. הקינון שלהם מיוצג ב DOM אותו אופן כמו עבור כל בלוקים אחרים באמצעות ירושה בסגנון. בנוסף, רשימות DOM התאימו את מספר העיצוב בכל סגנון הרשימה או את הפורמט.

## Inline Blocks

אנו משתמשים [Font](https://reference.aspose.com/words/net/aspose.words/font/) עיצוב מתי לתרגם **Bold**, *Italic* המונחים: Strike Through - Inline markdown תכונות.

|  Markdown תכונה |   Aspose.Words        |
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

אנו משתמשים בסגנון אופי עם שם שמתחיל מהמילה <span notrans="<span notrans=" `InlineCode`"=""></span>" עקבו אחרי אופציונלי `(.)` מספר חזרות ```(`)``` עבור `InlineCode` תכונה. אם מספר חזרות מפספס, אז טיפול אחד ישמש כברירת מחדל.

|  Markdown תכונה |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **InlineCode**<br/>`{1}` |  `Font.StyleName = “InlineCode[.][N]”`  |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-InlineCode.cs" >}}  |  |
|  **Autolink**<br/>`<scheme://domain.com>`<br/>`<email@domain.com>` |  The The The [FieldHyperlink](https://reference.aspose.com/words/net/aspose.words.fields/fieldhyperlink/) מעמד |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Autolink.cs" >}}  |  |
|  **Link**<br/>`{1}`<br/>`{2}`<br/>`{3}`<br/>`{4})` |  The The The [FieldHyperlink](https://reference.aspose.com/words/net/aspose.words.fields/fieldhyperlink/) מעמד |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Link.cs" >}}  |  |
|  **Image**<br/>`{1}`<br/>`{2}`<br/>`{3}`<br/>`{4})` |  The The The [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) מעמד |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Image.cs" >}}  |  |

## תגית: Blocks

מסמך הוא רצף של בלוקים של מיכל כגון כותרות, פסקאות, רשימות, ציטוטים ואחרים. בלוקים המכילים ניתן לחלק לשתי כיתות: בלוקים וצריפים מורכבים בלוקים עלים יכולים להכיל רק תכנים פנימיים. מיכלים מורכבים, בתורו, יכולים להכיל בלוקים אחרים של מיכל, כולל בלוקים עלים.

### תגית: Blocks

השולחן למטה מציג דוגמאות לשימוש Markdown בלוקים ב Aspose.Words:

|  Markdown תכונה |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **HorizontalRule**<br/>`-----` |  זהו פסקה פשוטה עם צורת HorizontalRule המקבילה:<br/>`DocumentBuilder.InsertHorizontalRule()` |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-HorizontalRule.cs" >}}  |                                                                |
|  **ATX Heading**<br/>`# H1, ## H2, ### H3…` |  `ParagraphFormat.StyleName = “Heading N”`, שם (1=N <= 9).<br/>זה מתורגם לסגנון מובנה צריך להיות בדיוק של התבנית המפורטת (לא suffixes או prefixes מותר).<br/>אחרת, זה יהיה רק סעיף רגיל עם סגנון מתאים |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Heading.cs" >}}  |                                                                |
|  **Setext Heading**<br/>`===` (אם רמת ראש 1)<br/>`---` (אם רמת ראש 2) |  `ParagraphFormat.StyleName = “SetextHeading[some suffix]”`, מבוסס `“Heading N”` סגנון.<br/>אם (==) `“Heading 2”` ישמש, אחרת `“Heading 1”`.<br/>כל suffix מותר, אבל Aspose.Words יבוא משתמש במספרים "1" ו-"2" בהתאמה |
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
```{{< /highlight >}} |  `ParagraphFormat.StyleName = “FencedCode[.][info string]”`<br/>The The The `[.]` ו `[info string]` הם אופציונליים |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-FencedCode.cs" >}}   |                                                                |

### תגית: Containers

השולחן למטה מציג דוגמאות לשימוש Markdown קומפלקסים ב Aspose.Words:

|  Markdown תכונה |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **Quote**<br/>`> quote,`<br/>`>> nested quote` |  `ParagraphFormat.StyleName = “Quote[some suffix]”`<br/>suffix בשם סגנון הוא אופציונלי, אבל Aspose.Words יבוא משתמש במספרים המוזמנים 1, 2, 3, במקרה של ציטוטים מזוינים.<br/>הקן מוגדר באמצעות סגנונות תורשתיים |
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
|  **BulletedList**<br/>`- Item 1`<br/>`- Item 2`<br/> `   - Item 2a`<br/> `   - Item 2b` |  רשימות מוכות מיוצגות באמצעות סעיף מספר:<br/>`ListFormat.ApplyBulletDefault()`<br/>יכול להיות שיש 3 סוגים של רשימות. הם רק מסתפקים בתבנית מספרית של הרמה הראשונה. אלה הם: `‘-’`, `‘+’` או `‘*’` בהתאמה |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-BulletedList.cs" >}}  |                                                                |
|  **OrderedList**<br/>`1. Item 1`<br/>`2. Item 2`<br/> `1) Item 2a`<br/> `2) Item 2b` |  רשימות מסודרות מיוצגות באמצעות סעיף מספר:<br/>`ListFormat.ApplyNumberDefault()`<br/>יכול להיות שני סמנים: ". סימן ברירת המחדל הוא " |
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

### שולחנות

Aspose.Words מאפשר לתרגם טבלאות DOM, כפי שמוצג להלן:

|  Markdown תכונה |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  `Table`<br/>"a|B`<br />`- - | - -`<br />`c|d " |  [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/), [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) ו [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/) שיעורים |
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

## ראה גם

* [עבודה עם Markdown תכונות](/words/he/net/working-with-markdown-features/)

