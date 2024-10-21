---
title: תרגום Markdown to to DOM
second_title: Aspose.Words עבור Java
articleTitle: תרגום Markdown to to Document Object Model ()DOM)
linktitle: תרגום Markdown to to Document Object Model ()DOM)
type: docs
description: "טארינסלט Markdown מסמך Document Object Model ובחזרה. אז אתה יכול לעבוד עם קיים מורכב Markdown כנות יוצרות Markdown מסמך באמצעות Java."
weight: 20
url: /he/java/translate-markdown-to-document-object-model/
---

כדי לקרוא, לתמרן ולשנות את התוכן ואת הפורמט של מסמך, עליך לתרגם אותו ל Aspose.Words Document Object Model ()DOM).

בניגוד למסמכים של Word, Markdown לא תואם את DOM תואר ב [Aspose.Words Document Object Model (DOM)](/words/he/java/aspose-words-document-object-model/) מאמר. עם Aspose.Words מספק מנגנון משלו לתרגום Markdown מסמכים DOM ובחזרה, כך שנוכל לעבוד בהצלחה עם האלמנטים שלהם כגון פורמט טקסט, טבלאות, ראשים ואחרים.

מאמר זה מסביר כיצד השונים markdown ניתן לתרגם תכונות לתוך Aspose.Words DOM ובחזרה Markdown פורמט.

## המורכבות של התרגום Markdown - - - DOM - - - Markdown

הקושי העיקרי של מנגנון זה אינו רק לתרגם Markdown to to DOM, אבל גם לעשות את הטרנספורמציה לאחור - כדי להציל את המסמך בחזרה Markdown פורמט עם אובדן מינימלי. ישנם אלמנטים, כגון ציטוטים רב-דרגיים, שעבורם השינוי הפוך אינו טריוויאלי.

מנוע התרגום שלנו מאפשר למשתמשים לא רק לעבוד עם אלמנטים מורכבים הקיימים Markdown מסמך, אך גם ליצירת מסמך משלו Markdown פורמט עם המבנה המקורי מאפס. כדי ליצור אלמנטים שונים, עליך להשתמש בסגנונות עם שמות ספציפיים על פי כללים מסוימים המתוארים מאוחר יותר במאמר זה. ניתן ליצור סגנונות כאלה באופן מתודולוגי.

## תרגום כללי עקרונות

אנו משתמשים [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) עיצוב בלוקים פנימיים כשאין התכתבות ישירה Markdown תכונה Aspose.Words DOM, אנו משתמשים בסגנון אופי עם שם שמתחיל מכמה מילים מיוחדות.

עבור בלוקי מכולה, אנו משתמשים בירושה בסגנון כדי לציין קינון Markdown תכונות. במקרה זה, גם כאשר אין תכונות מקוננות, אנו משתמשים גם בסגנונות סעיף עם שם שמתחיל מכמה מילים מיוחדות.

רשימות מוצפות וצווים הן בלוקים של מיכל Markdown גם. הקן שלהם מיוצג ב DOM אותו אופן כמו עבור כל בלוקים אחרים באמצעות ירושה בסגנון. בנוסף, רשימות DOM התאימו את מספר הפורמטים בכל סגנון רשימה או פיסקה.

## Inline Blocks

אנו משתמשים [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) עיצוב מתי לתרגם **Bold**, *Italic* המונחים: Strike Through - Inline markdown תכונות.

|  Markdown תכונה |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **Bold**<br/>`{1}` |  `Font.Bold = true`  |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-BoldText.java" >}}  |  |
|  **Italic**<br/>`*italic text*` |  `Font.Italic = true`  |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-ItalicText.java" >}}  |  |
|  **Strikethrough**<br/>`~Strikethrough text~` |  `Font.StrikeThrough = true`  |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Strikethrough.java" >}}  |  |

אנו משתמשים בסגנון אופי עם שם שמתחיל מהמילה <span notrans="<span notrans=" `InlineCode`"=""></span>" עקבו אחרי אופציונלי `(.)` מספר חזרות ```(`)``` עבור `InlineCode` תכונה. אם כמות של backticks מפספסת, אז טיפול אחד ישמש כברירת מחדל.

|  Markdown תכונה |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **InlineCode**<br/>`{1}` |  `Font.StyleName = “InlineCode[.][N]”`  |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-InlineCode.java" >}}  |  |
|  **Autolink**<br/>`<scheme://domain.com>`<br/>`<email@domain.com>` |  The The The [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/) מעמד |
|     {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Autolink.java" >}}  |  |
|  **Link**<br/>`{1}`<br/>`{2}`<br/>`{3}`<br/>`{4})` |  The The The [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/) מעמד |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Link.java" >}}  |  |
|  **Image**<br/>`{1}`<br/>`{2}`<br/>`{3}`<br/>`{4})` |  The The The [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) מעמד |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Image.java" >}}  |  |

## מכיל בלוקים

מסמך הוא רצף של בלוקים של מיכל כגון כותרות, פסקאות, רשימות, ציטוטים ואחרים. בלוקים המכילים ניתן לחלק לשתי כיתות: בלוקים ומכלילים מורכבים בלוקים עלים יכולים להכיל רק תכנים פנימיים. מיכלים מורכבים, בתורו, יכולים להכיל בלוקים אחרים של מיכל, כולל בלוקים עלים.

### תגית: Blocks

השולחן למטה מציג דוגמאות לשימוש Markdown בלוקים ב Aspose.Words:

|  Markdown תכונה |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **HorizontalRule**<br/>`-----` |  זהו פסקה פשוטה עם צורת HorizontalRule המקבילה:<br/>`DocumentBuilder.InsertHorizontalRule()` |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-HorizontalRule.java" >}}  |                                                                |
|  **ATX Heading**<br/>`# H1, ## H2, ### H3…` |  `ParagraphFormat.StyleName = “Heading N”`, שם (1=N <= 9).<br/>זה מתורגם לסגנון מובנה צריך להיות בדיוק של התבנית המפורטת (לא suffixes או prefixes מותר).<br/>אחרת, זה יהיה רק סעיף רגיל עם סגנון מתאים |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Heading.java" >}}  |                                                                |
|  **Setext Heading**<br/>`===` (אם רמת ראש 1)<br/>`---` (אם רמת ראש 2) |  `ParagraphFormat.StyleName = “SetextHeading[some suffix]”`, מבוסס `“Heading N”` סגנון.<br/>אם (==) `“Heading 2”` ישמש, אחרת `“Heading 1”`.<br/>כל suffix מותר, אבל Aspose.Words יבוא משתמש במספרים "1" ו-"2" בהתאמה |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SetextHeading.java" >}}  |                                                                |
|   **Indented Code**                                             |  `ParagraphFormat.StyleName = “IndentedCode[some suffix]”`     |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-IndentedCode.java" >}}  |                                                                |
|  **Fenced Code**<br/>{{< highlight java >}}``` java
if ()
then
else
```{{< /highlight >}} |  `ParagraphFormat.StyleName = “FencedCode[.][info string]”`<br/>The The The `[.]` ו `[info string]` הם אופציונליים |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-FencedCode.java" >}}   |                                                                |

### תגית: Containers

השולחן למטה מציג דוגמאות לשימוש Markdown קומפלקסים ב Aspose.Words:

|  Markdown תכונה |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **Quote**<br/>`> quote,`<br/>`>> nested quote` |  `ParagraphFormat.StyleName = “Quote[some suffix]”`<br/>suffix בשם סגנון הוא אופציונלי, אבל Aspose.Words יבוא משתמש במספרים המוזמנים 1, 2, 3, במקרה של ציטוטים מזוינים.<br/>הקן מוגדר באמצעות סגנונות תורשתיים |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Quote.java" >}}  |                                                                |
|  **BulletedList**<br/>`- Item 1`<br/>`- Item 2`<br/> `   - Item 2a`<br/> `   - Item 2b` |  רשימות מוכות מיוצגות באמצעות סעיף מספר:<br/>`ListFormat.ApplyBulletDefault()`<br/>יכול להיות שיש 3 סוגים של רשימות. הם רק מסתפקים בתבנית מספרית של הרמה הראשונה. אלה הם: `‘-’`, `‘+’` או `‘*’` בהתאמה |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-BulletedList.java" >}}  |                                                                |
|  **OrderedList**<br/>`1. Item 1`<br/>`2. Item 2`<br/> `1) Item 2a`<br/> `2) Item 2b` |  רשימות מסודרות מיוצגות באמצעות סעיף מספר:<br/>`ListFormat.ApplyNumberDefault()`<br/>יכול להיות שני סמנים: ". סימן ברירת המחדל הוא " |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-OrderedList.java" >}}  |                                                                |

### שולחנות

Aspose.Words מאפשר לתרגם טבלאות DOM, כפי שמוצג להלן:

|  Markdown תכונה |   Aspose.Words                                                  |
|  ----------------------------------------  |  ------------------------------------------------------------  |
|  `Table`<br/>"a|B`<br />`- - | - -`<br />`c|d " |  [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) ו [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) שיעורים |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Table.java" >}}  |                                                                |

## ראה גם

* [עבודה עם Markdown תכונות](/words/he/java/working-with-markdown-features/)

