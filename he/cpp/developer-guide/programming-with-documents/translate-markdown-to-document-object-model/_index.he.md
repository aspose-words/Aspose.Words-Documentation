---
title: תרגם Markdown לתעד מודל אובייקט (DOM)
second_title: Aspose.Words עבור C++
articleTitle: תרגם Markdown לתעד מודל אובייקט (DOM)
linktitle: תרגם Markdown לתעד מודל אובייקט (DOM)
type: docs
description: "טארנסלאט א Markdown מסמך לתעד מודל אובייקט ובחזרה באמצעות C++. אז אתה יכול לעבוד עם מורכב הקיים Markdown וליצור באופן פרוגרמטי מסמך Markdown מאפס."
weight: 20
url: /he/cpp/translate-markdown-to-document-object-model/
timestamp: 2024-10-21-11-17-44
---

כדי לקרוא, לתפעל ולשנות באופן תכנותי את התוכן והעיצוב של מסמך, עליך לתרגם אותו למודל אובייקט המסמך Aspose.Words (DOM).

בניגוד למסמכים Word, Markdown אינו תואם את DOM המתואר ב [Aspose.Words מודל אובייקט מסמך (DOM)](/words/cpp/aspose-words-document-object-model/) סעיף. עם זאת, Aspose.Words מספק מנגנון משלו לתרגום Markdown מסמכים ל DOM ובחזרה, כך שנוכל לעבוד בהצלחה עם האלמנטים שלהם כגון עיצוב טקסט, טבלאות, כותרות ואחרים.

מאמר זה מסביר כיצד ניתן לתרגם את התכונות השונות markdown ל Aspose.Words DOM ובחזרה ל Markdown פוּרמָט.

## מורכבות התרגום Markdown – DOM – Markdown

הקושי העיקרי של מנגנון זה הוא לא רק לתרגם Markdown ל DOM, אלא גם לבצע את השינוי ההפוך – לשמור את המסמך בחזרה לפורמט Markdown עם הפסד מינימלי. ישנם אלמנטים, כגון ציטוטים מדורגת, אשר השינוי ההפוך אינו טריוויאלי.

מנוע התרגום שלנו מאפשר למשתמשים לא רק לעבוד עם אלמנטים מורכבים במסמך Markdown קיים, אלא גם ליצור מסמך משלהם בפורמט Markdown עם המבנה המקורי מאפס. כדי ליצור אלמנטים שונים, עליך להשתמש בסגנונות עם שמות ספציפיים על פי כללים מסוימים המתוארים בהמשך מאמר זה. סגנונות כאלה ניתן ליצור באופן פרוגרמטי.

## עקרונות תרגום נפוצים

אנו משתמשים בעיצוב [Font](https://reference.aspose.com/words/cpp/aspose.words/font/) עבור בלוקים מוטבעים. כאשר אין התאמה ישירה לתכונה Markdown ב Aspose.Words DOM, אנו משתמשים בסגנון תווים עם שם שמתחיל מכמה מילים מיוחדות.

עבור בלוקים של מכולות, אנו משתמשים בירושה בסגנון כדי לציין תכונות מקוננות Markdown. במקרה זה, גם כשאין תכונות מקוננות, אנו משתמשים גם בסגנונות פסקה עם שם שמתחיל מכמה מילים מיוחדות.

רשימות עם תבליטים ומסודרים הן גם בלוקים של מכולות ב - Markdown. הקינון שלהם מיוצג ב DOM באותו אופן כמו לכל שאר גושי המכולות המשתמשים בירושה בסגנון. עם זאת, בנוסף, רשימות ב DOM התאימו לעיצוב מספרים בסגנון רשימה או בעיצוב פסקה.

## בלוקים מוטבעים

אנו משתמשים בעיצוב [Font](https://reference.aspose.com/words/cpp/aspose.words/font/) בעת תרגום **Bold**, *Italic* או ~~Strikethrough~~ תכונות מוטבעות markdown.

| Markdown תכונה | Aspose.Words |
| ----------------------------- | ------------------ |
| **Bold**<br />`**bold text**` | `get_Font()->set_Bold(true)` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-BoldText.h" >}} |  |
| **Italic**<br />`*italic text*` | `get_Font()->set_Italic(true)` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-ItalicText.h" >}} |  |
| **Strikethrough**<br />`~Strikethrough text~` | `get_Font()->set_StrikeThrough(true)` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Strikethrough.h" >}} |  |

אנו משתמשים בסגנון תווים עם שם שמתחיל מהמילה `InlineCode`, ואחריו נקודה אופציונלית `(.)` ומספר נקודות גב ```(`)``` לתכונה `InlineCode`. אם מספר נקודות גב מפספסות, אז נקודת גב אחת תשמש כברירת מחדל.

| Markdown תכונה | Aspose.Words |
| ----------------------------- | ------------------ |
| **InlineCode**<br />`**inline code**` | `get_Font()->set_StyleName(u"InlineCode[.][N]")` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-InlineCode.h" >}} |  |
| **Autolink**<br />`<scheme://domain.com>`<br />`<email@domain.com>` | הכיתה [FieldHyperlink](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldhyperlink/). |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Autolink.h" >}} |  |
| **Link**<br />`[link text](url)`<br />`[link text](<url>"title")`<br />`[link text](url 'title')`<br />`[link text](url (title))` | הכיתה [FieldHyperlink](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldhyperlink/). |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Link.h" >}} |  |
| **Image**<br />`![](url)`<br />`![alt text](<url>"title")`<br />`![alt text](url ‘title’)`<br />`![alt text](url (title))` | הכיתה [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/). |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Image.h" >}} |  |

## בלוקים מיכל

מסמך הוא רצף של בלוקים מיכל כגון כותרות, פסקאות, רשימות, ציטוטים, ואחרים. בלוקים מיכל ניתן לחלק 2 כיתות: בלוקים עלה מכולות מורכבות. גושי עלים יכולים להכיל רק תוכן מוטבע. מיכלים מורכבים, בתורם, יכולים להכיל גושי מיכל אחרים, כולל גושי עלים.

### בלוקים עלים

הטבלה שלהלן מציגה דוגמאות לשימוש Markdown בלוקי עלים ב Aspose.Words:

| Markdown תכונה | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **HorizontalRule**<br />`-----` | זוהי פסקה פשוטה עם צורה מקבילה HorizontalRule:<br />`DocumentBuilder::InsertHorizontalRule()` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-HorizontalRule.h" >}} |  |
| **ATX Heading**<br />`# H1, ## H2, ### H3…` | `get_ParagraphFormat()->set_StyleName(u"Heading N")`, איפה (1<= נ <= 9).<br />זה מתורגם לסגנון מובנה וצריך להיות בדיוק מהתבנית שצוינה (אין סיומות או קידומות מותרות).<br />אחרת, זה יהיה רק פסקה רגילה עם סגנון המתאים. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Heading.h" >}} |  |
| **Setext Heading**<br />`===` (if Heading level 1),<br />`---` (if Heading level 2) | `get_ParagraphFormat->set_StyleName(u"SetextHeading[some suffix]")`, מבוסס על סגנון' כותרת נ'.<br />אם (נ > = 2), אז' Heading 2 'ישמש, אחרת'Heading 1'.<br />כל תוספת מותרת, אבל Aspose.Words היבואן משתמש במספרים "1" ו "2" בהתאמה. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-SetextHeading.h" >}} |  |
| **Indented Code** | `get_ParagraphFormat->set_StyleName(u"IndentedCode[some suffix]")` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-IndentedCode.h" >}} |  |
| **Fenced Code**<br />{{< highlight csharp >}}``` c#
if ()
then
else
```{{< /highlight >}} | `get_ParagraphFormat()->set_StyleName(u"FencedCode[.][info string]")`<br /> `[.]` ו `[info string]` הם אופציונליים. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-FencedCode.h" >}} |  |

### מכולות מורכבות

הטבלה שלהלן מציגה דוגמאות לשימוש Markdown מכולות מורכבות ב Aspose.Words:

| Markdown תכונה | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **Quote**<br />`> quote,`<br />`>> nested quote` | `get_ParagraphFormat()->set_StyleName(u"Quote[some suffix]")`<br />הסיומת בשם הסגנון היא אופציונלית, אך Aspose.Words היבואן משתמש במספרים שהוזמנו 1, 2, 3, .... במקרה של ציטוטים מקוננים.<br />הקן מוגדר באמצעות הסגנונות המורשת. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Quote.h" >}} |  |
| **BulletedList**<br />`- Item 1`<br />`- Item 2`<br />	` - Item 2a`<br />	` - Item 2b` | רשימות עם תבליטים מיוצגות באמצעות מספור פסקאות:<br />`get_ListFormat()->ApplyBulletDefault()`<br />יכולים להיות 3 סוגים של רשימות תבליטים. הם נבדלים רק בפורמט מספור ברמה הראשונה. אלה הם: `‘-’`, `‘+’` או `‘*’` בהתאמה. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-BulletedList.h" >}} |  |
| **OrderedList**<br />`1. Item 1`<br />`2. Item 2`<br />	`1) Item 2a`<br />	`2) Item 2b` | רשימות מסודרות מיוצגות באמצעות מספור פסקאות:<br />`get_ListFormat()->ApplyNumberDefault()`<br />יכולים להיות 2 סמני פורמט מספרים: ‘.’ ו ‘)’. סמן ברירת המחדל הוא ‘.’. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-OrderedList.h" >}} |  |

### שולחנות

Aspose.Words מאפשר גם לתרגם טבלאות ל DOM, כפי שמוצג להלן:

| Markdown תכונה | Aspose.Words |
| ---------------------------------------- | ------------------------------------------------------------ |
| `Table`<br />`a|b`<br />`-|-`<br />`c|d` | [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/), [Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/) ו [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/) כיתות. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Table.h" >}} |  |

## ראה גם

* [עבודה עם Markdown תכונות](/words/cpp/working-with-markdown-features/)

