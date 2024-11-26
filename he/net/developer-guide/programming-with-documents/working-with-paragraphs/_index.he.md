---
title: עבודה עם Paragraphs C#
second_title: Aspose.Words עבור .NET
articleTitle: עבודה עם Paragraphs
linktitle: עבודה עם Paragraphs
description: "הכנס פסקה למסמך C#. המונחים: C#. עבודה עם נספח סגנון C#. המונחים: node C#."
type: docs
weight: 210
url: /he/net/working-with-paragraphs/
timestamp: 2024-01-27-14-07-04
---

פסקה היא קבוצה של דמויות המשולבות לבלוק לוגי וסיום עם אופי מיוחד - הפסקה של פסקאות*. In In In Aspose.Words, סעיף מיוצג על ידי [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/) מעמד.

## הכנס סעיף

כדי להכניס פסקה חדשה למסמך, למעשה, עליך להכניס אליו את הדמות של פסקה. [DocumentBuilder.Writeln](https://reference.aspose.com/words/net/aspose.words/documentbuilder/writeln/) הוספת לא רק מחרוזת של טקסט לתוך המסמך, אלא גם מוסיף הפסקה.

פורמט הגופן הנוכחי מוגדר גם על ידי [Font](https://reference.aspose.com/words/net/aspose.words/documentbuilder/font/) רכוש, ותבנית הסעיף הנוכחית נקבעת על ידי [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/paragraphformat/) רכוש. בחלק הבא נעבור לפרטים נוספים בנוגע לתבנית סעיף.

דוגמה לקוד הבא מראה כיצד להכניס פסקה למסמך:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cs" >}}

## תבנית Paragraph

פורמט הסעיף הנוכחי מיוצג על ידי [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) אובייקט שחזר על ידי [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/paragraphformat/) רכוש. אובייקט זה encapsulates שונים תצורה של סעיף תכונות זמין Microsoft Word. אתה יכול בקלות לאפס את הפורמט של פסקה לתוך ברירת המחדל שלה - סגנון רגיל, שמאלי, ללא הסתרה, ללא ספאק, ללא גבולות, ללא גילוח - על ידי קריאה [ClearFormatting](https://reference.aspose.com/words/net/aspose.words/paragraphformat/clearformatting/).

דוגמה לקוד הבא מראה כיצד להגדיר את סעיף הפורמט:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetParagraphFormatting.cs" >}}

## המונחים: Paragraph Style

כמה אובייקטים מעוצבים, כגון **Font** או **ParagraphFormat**, סגנונות תמיכה סגנון מובנה או מוגדר למשתמש מיוצג על ידי [Style](https://reference.aspose.com/words/net/aspose.words/style/) אובייקט, המכיל את תכונות הסגנון המתאים כמו שם, סגנון בסיס, גופן, סגנון סעיף עיצוב, וכן הלאה.

בנוסף, **Style** האובייקט חושף את [StyleIdentifier](https://reference.aspose.com/words/net/aspose.words/style/styleidentifier/) רכוש, אשר מחזיר את מזהה הסגנון המקומי עצמאי מיוצג על ידי [StyleIdentifier](https://reference.aspose.com/words/net/aspose.words/styleidentifier/) ערך enumeration למעשה, השמות של הסגנונות הבנויים Microsoft Word הם מקומיים לשפות שונות. באמצעות מזהה סגנון, אתה יכול למצוא את הסגנון הנכון ללא קשר לשפת המסמך. ערכי ההנצחה תואמים לערכי המובנה Microsoft Word סגנונות כגון *Normal*, 1 *הופנה מהדף Heading 2 וכן הלאה. כל סגנונות המוגדרים על ידי המשתמש מוגדרים **StyleIdentifier.User** ערך enumeration

דוגמה לקוד הבא מראה כיצד ליישם את סגנון סעיף:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyParagraphStyle.cs" >}}

### המונחים: style Separator to Put different Paragraph

ניתן להוסיף לסיומו של פסקה באמצעות קיצור המקלדת Ctrl+Alt+Enter In Microsoft Word. תכונה זו מאפשרת לך להשתמש בשני סגנונות פסקה שונים באותו סעיף מודפס. אם אתה רוצה טקסט מההתחלה של כותרת מסוימת להופיע בטבלה של תוכן, אבל לא רוצה את כל הכותרת להראות בטבלה של תוכן, אתה יכול להשתמש פונקציה זו.

הדוגמה הבאה של הקוד מראה כיצד להוסיף מפריד סגנון כדי להתאים סגנונות פסקה שונים:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-InsertStyleSeparator-ParagraphInsertStyleSeparator.cs" >}}

### זיהוי Paragraph סגנון ספרדי

Aspose.Words חושף את [BreakIsStyleSeparator](https://reference.aspose.com/words/net/aspose.words/paragraph/breakisstyleseparator/) רכוש ציבורי על `Paragraph` שיעור לזהות פסקה עם מפריד סגנון, כפי שמוצג בדוגמה להלן:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-ParagraphStyleSeparator-ParagraphStyleSeparator.cs" >}}

## החל את הגבולות והמשך לפסקה

גבולות Aspose.Words מיוצגים על ידי [BorderCollection](https://reference.aspose.com/words/net/aspose.words/bordercollection/) מעמד – זהו אוסף של [Border](https://reference.aspose.com/words/net/aspose.words/border/) פריטים אשר נגישים על ידי אינדקס או על ידי סוג גבול. סוג הגבול הוא בתורו מיוצג על ידי [BorderType](https://reference.aspose.com/words/net/aspose.words/bordertype/) אזהרה. כמה ערכי enumeration חלים על מספר רב או רק אלמנט מסמך אחד. לדוגמה, **BorderType.Bottom** חל על סעיף או תא שולחן, **BorderType.DiagonalDown** מציג גבול דיגוני בתא שולחן בלבד.

גם אוסף הגבול ולכל גבול נפרד יש תכונות דומות כגון צבע, סגנון קו, רוחב קו, מרחק מטקסט וצל אופציונלי. הם מיוצגים על ידי תכונות של אותו שם. אתה יכול לקבל סוגים שונים של גבולות על ידי שילוב ערכי רכוש. בנוסף, **BorderCollection** ו **Border** אובייקטים מאפשרים לך לאפס ערכים אלה לערכי ברירת המחדל שלהם על ידי קריאה [ClearFormatting](https://reference.aspose.com/words/net/aspose.words/border/clearformatting/) שיטה.

{{% alert color="primary" %}}

שימו לב שכאשר תכונות הגבול מתאפסות לערכי ברירת המחדל שלהם, הגבול הופך לבלתי נראה.

{{% /alert %}}

Aspose.Words יש גם את [Shading](https://reference.aspose.com/words/net/aspose.words/shading/) שיעור המכיל תכונות קידוד עבור רכיבי מסמך. אתה יכול להגדיר את המרקם והצבעים הרצויים מוחלים על הרקע ואת הבסיס של אלמנט באמצעות האלמנט תוך שימוש [TextureIndex](https://reference.aspose.com/words/net/aspose.words/textureindex/) ערך enumeration **TextureIndex** גם מאפשר לך ליישם דפוסים שונים **Shading** אובייקט. לדוגמה, כדי להגדיר את צבע הרקע עבור אלמנט מסמך, השתמש ב **TextureIndex.TextureSolid** ערך ולהגדיר את הצבע הקדמי מתאים.

הדוגמה הבאה של הקוד מראה כיצד ליישם את הגבולות ולהשפיל לפסקה:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyBordersAndShadingToParagraph.cs" >}}

## Count Paragraph Lines

אם ברצונך לספור את מספר השורות בפסקה עבור כל מסמך Word, ניתן להשתמש במדגם הקוד הבא:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-CountLinesInParagraphs-CountLinesInParagraph.cs" >}}
