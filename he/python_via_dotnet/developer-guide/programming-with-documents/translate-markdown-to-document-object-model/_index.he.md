---
title: תרגום Markdown to to DOM
second_title: Aspose.Words עבור Python via .NET
articleTitle: תרגום Markdown to to Document Object Model ()DOM)
linktitle: תרגום Markdown to to Document Object Model ()DOM)
type: docs
description: "טארינסלט Markdown מסמך Document Object Model חזרה לשימוש Python. אז אתה יכול לעבוד עם קיים מורכב Markdown באופן יזום ליצור Markdown מסמך מאפס"
weight: 20
url: /he/python-net/translate-markdown-to-document-object-model/
---

כדי לקרוא, לתמרן ולשנות את התוכן ואת הפורמט של מסמך, עליך לתרגם אותו ל Aspose.Words Document Object Model ()DOM).

בניגוד למסמכים של Word, Markdown לא תואם את DOM תואר ב [Aspose.Words Document Object Model (DOM)](/words/he/python-net/aspose-words-document-object-model/) מאמר. עם Aspose.Words מספק מנגנון משלו לתרגום Markdown מסמכים DOM ובחזרה, כך שנוכל לעבוד בהצלחה עם האלמנטים שלהם כגון פורמט טקסט, טבלאות, ראשים ואחרים.

מאמר זה מסביר כיצד השונים markdown ניתן לתרגם תכונות לתוך Aspose.Words DOM ובחזרה Markdown פורמט.

## המורכבות של התרגום Markdown - - - DOM - - - Markdown

הקושי העיקרי של מנגנון זה אינו רק לתרגם Markdown to to DOM, אבל גם לעשות את הטרנספורמציה לאחור - כדי להציל את המסמך בחזרה Markdown פורמט עם אובדן מינימלי. ישנם אלמנטים, כגון ציטוטים רב-דרגיים, שעבורם השינוי הפוך אינו טריוויאלי.

מנוע התרגום שלנו מאפשר למשתמשים לא רק לעבוד עם אלמנטים מורכבים הקיימים Markdown מסמך, אך גם ליצירת מסמך משלו Markdown פורמט עם המבנה המקורי מאפס. כדי ליצור אלמנטים שונים, עליך להשתמש בסגנונות עם שמות ספציפיים על פי כללים מסוימים המתוארים מאוחר יותר במאמר זה. ניתן ליצור סגנונות כאלה באופן מתודולוגי.

## תרגום כללי עקרונות

אנו משתמשים [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) עיצוב בלוקים פנימיים כשאין התכתבות ישירה Markdown תכונה Aspose.Words DOM, אנו משתמשים בסגנון אופי עם שם שמתחיל מכמה מילים מיוחדות.

עבור בלוקים מכולה, אנו משתמשים בירושה בסגנון כדי לציין קינון Markdown תכונות. במקרה זה, גם כאשר אין תכונות מקוננות, אנו משתמשים גם בסגנונות סעיף עם שם שמתחיל מכמה מילים מיוחדות.

רשימות מוצפות וצווים הן בלוקים של מיכל Markdown גם. הקינון שלהם מיוצג ב DOM אותו אופן כמו עבור כל בלוקים אחרים באמצעות ירושה בסגנון. בנוסף, רשימות DOM התאימו את מספר העיצוב בכל סגנון הרשימה או את הפורמט.

## Inline Blocks

אנו משתמשים [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) עיצוב מתי לתרגם **Bold**, *Italic* המונחים: Strike Through - Inline markdown תכונות.

|  Markdown תכונה |   Aspose.Words        |
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

אנו משתמשים בסגנון אופי עם שם שמתחיל מהמילה <span notrans="<span notrans=" `InlineCode`"=""></span>" עקבו אחרי אופציונלי `(.)` מספר חזרות ```(`)``` עבור `InlineCode` תכונה. אם מספר חזרות מפספס, אז טיפול אחד ישמש כברירת מחדל.

|  Markdown תכונה |   Aspose.Words        |
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
|  **Autolink**<br/>`<scheme://domain.com>`<br/>`<email@domain.com>` |  The The The [FieldHyperlink](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldhyperlink/) מעמד |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Insert hyperlink.
builder.insert_hyperlink("https://www.aspose.com", "https://www.aspose.com", False);
builder.insert_hyperlink("email@aspose.com", "mailto:email@aspose.com", False);

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.autolink_example.md"){{< /highlight >}} |  |
|  **Link**<br/>`{1}`<br/>`{2}`<br/>`{3}`<br/>`{4})` |  The The The [FieldHyperlink](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldhyperlink/) |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Insert hyperlink.
builder.insert_hyperlink("Aspose", "https://www.aspose.com", False)

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.link_example.md"){{< /highlight >}} |  |
|  **Image**<br/>`{1}`<br/>`{2}`<br/>`{3}`<br/>`{4})` |  The The The [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) מעמד |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Insert image.
shape = aw.drawing.Shape(builder.document, aw.drawing.ShapeType.IMAGE)
shape.wrap_type = aw.drawing.WrapType.INLINE
shape.image_data.source_full_name = "/attachment/1456/pic001.png"
shape.image_data.title = "title"
builder.insert_node(shape)

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.image_example.md"){{< /highlight >}} |  |

## תגית: Blocks

מסמך הוא רצף של בלוקים של מיכל כגון כותרות, פסקאות, רשימות, ציטוטים ואחרים. בלוקים המכילים ניתן לחלק לשתי כיתות: בלוקים וצריפים מורכבים בלוקים עלים יכולים להכיל רק תכנים פנימיים. מיכלים מורכבים, בתורו, יכולים להכיל בלוקים אחרים של מיכל, כולל בלוקים עלים.

### תגית: Blocks

השולחן למטה מציג דוגמאות לשימוש Markdown בלוקים ב Aspose.Words:

|  Markdown תכונה |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **HorizontalRule**<br/>`-----` |  זהו פסקה פשוטה עם צורת HorizontalRule המקבילה:<br/>[DocumentBuilder.insert_horizontal_rule()](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_horizontal_rule/) |
|   {{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-HorizontalRule.py" >}}  |                                                                |
|  **ATX Heading**<br/>`# H1, ## H2, ### H3…` |  `ParagraphFormat.style_name = "Heading N"`, שם (1=N <= 9).<br/>זה מתורגם לסגנון מובנה צריך להיות בדיוק של התבנית המפורטת (לא suffixes או prefixes מותר).<br/>אחרת, זה יהיה רק סעיף רגיל עם סגנון מתאים |
|   {{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-Headings.py" >}}  |                                                                |
|  **Setext Heading**<br/>`===` (אם רמת ראש 1)<br/>`---` (אם רמת ראש 2) |  `ParagraphFormat.style_name = "SetextHeading[some suffix]"`, מבוסס `"Heading N"` סגנון.<br/>אם (==) `"Heading 2"` ישמש, אחרת `"Heading 1"`.<br/>כל suffix מותר, אבל Aspose.Words יבוא משתמש במספרים "1" ו-"2" בהתאמה |
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
```{{< /highlight >}} |  `ParagraphFormat.style_name = "FencedCode[.][info string]"`<br/>The The The `[.]` ו `[info string]` הם אופציונליים |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

fencedCode = builder.document.styles.add(aw.StyleType.PARAGRAPH, "FencedCode")
builder.paragraph_format.style = fencedCode
builder.writeln("This is an fenced code")

fencedCodeWithInfo = builder.document.styles.add(aw.StyleType.PARAGRAPH, "FencedCode.C#")
builder.paragraph_format.style = fencedCodeWithInfo
builder.writeln("This is a fenced code with info string")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.fenced_code_example.md"){{< /highlight >}} |                                                                |

### תגית: Containers

השולחן למטה מציג דוגמאות לשימוש Markdown קומפלקסים ב Aspose.Words:

|  Markdown תכונה |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **Quote**<br/>`> quote,`<br/>`>> nested quote` |  `ParagraphFormat.style_name = "Quote[some suffix]"`<br/>suffix בשם סגנון הוא אופציונלי, אבל Aspose.Words יבוא משתמש במספרים המוזמנים 1, 2, 3, במקרה של ציטוטים מזוינים.<br/>הקן מוגדר באמצעות סגנונות תורשתיים |
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
|  **BulletedList**<br/>`- Item 1`<br/>`- Item 2`<br/> `   - Item 2a`<br/> `   - Item 2b` |  רשימות מוכות מיוצגות באמצעות סעיף מספר:<br/>[ListFormat.apply_bullet_default()](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_bullet_default/)<br/>יכול להיות שיש 3 סוגים של רשימות. הם רק מסתפקים בתבנית מספרית של הרמה הראשונה. אלה הם: `'-'`, `'+'` או `'*'` בהתאמה |
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
|  **OrderedList**<br/>`1. Item 1`<br/>`2. Item 2`<br/> `1) Item 2a`<br/> `2) Item 2b` |  רשימות מסודרות מיוצגות באמצעות סעיף מספר:<br/>[ListFormat.apply_number_default()](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_number_default/)<br/>יכול להיות שני סמנים: `'.'` ו `')'`. סמן ברירת המחדל הוא `'.'` |
|  {{< highlight python >}}doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.list_format.apply_number_default()

builder.writeln("Item 1")
builder.writeln("Item 2")

builder.list_format.list_indent()

builder.writeln("Item 2a")
builder.write("Item 2b")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.ordered_list_example.md"){{< /highlight >}} |                                                                |

### שולחנות

Aspose.Words מאפשר לתרגם טבלאות DOM, כפי שמוצג להלן:

|  Markdown תכונה |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  `Table` <br/>"א" | B`<br />`- | - -`<br />`c|d " |  [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) ו [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) שיעורים |
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

## ראה גם

* [עבודה עם Markdown תכונות](/words/he/python-net/working-with-markdown-features/)

