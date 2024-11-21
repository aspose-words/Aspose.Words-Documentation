---
title: עבודה עם Paragraphs Python
second_title: Aspose.Words עבור Python via .NET
articleTitle: עבודה עם Paragraphs
linktitle: עבודה עם Paragraphs
description: "הכנס פסקה וציין את הפורמט שלה במסמך באמצעות Python."
type: docs
weight: 210
url: /he/python-net/working-with-paragraphs/
timestamp: 2024-01-27-14-07-04
---

פסקה היא קבוצה של דמויות המשולבות לבלוק לוגי וסיום עם אופי מיוחד - הפסקה של פסקאות*. In In In Aspose.Words, סעיף מיוצג על ידי [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) מעמד.

## הכנס סעיף

כדי להכניס פסקה חדשה למסמך, למעשה, עליך להכניס אליו את הדמות של פסקה. [DocumentBuilder.writeln](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/writeln/) הוספת מחרוזת של טקסט לתוך המסמך, אבל בנוסף, הוא מוסיף הפסקה.

פורמט הגופן הנוכחי מוגדר גם על ידי [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/) רכוש ותבנית הסעיף הנוכחית נקבעים על ידי [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/) רכוש.

דוגמה לקוד הבא מראה כיצד להכניס פסקה למסמך:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertParagraph.py" >}}

## תבנית Paragraph

פורמט הסעיף הנוכחי מיוצג על ידי [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/) אובייקט שחזר על ידי [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/) רכוש. אובייקט זה encapsulates שונים תצורה של סעיף תכונות זמין Microsoft Word. אתה יכול בקלות לאפס את הסעיף פורמט ברירת מחדל לסגנון רגיל, שמאלה מיישרת, ללא הסתייגות, ללא ספאק, ללא גבולות וללא גילוח על ידי קריאה [clear_formatting](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/clear_formatting/).

דוגמה לקוד הבא מראה כיצד להגדיר את סעיף הפורמט:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ParagraphFormatting.py" >}}

## עקבו אחרי Paragraph Style

כמה אובייקטים מעצבים כמו [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) או [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/) סגנונות תמיכה סגנון מובנה יחיד או משתמש מוגדר מיוצג על ידי [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) אובייקט המכיל את תכונות הסגנון המקביל כמו שם, סגנון בסיס, גופני ופסקה פורמט של הסגנון, וכן הלאה.

יתר על כן, [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) האובייקט מספק [Style.style_identifier](https://reference.aspose.com/words/python-net/aspose.words/style/style_identifier/) רכוש מחזיר מזהה בסגנון עצמאי מקומי מיוצג על ידי [StyleIdentifier](https://reference.aspose.com/words/python-net/aspose.words/styleidentifier/) ערך enumeration הנקודה היא שמות סגנונות בנויים בסגנונות Microsoft Word הם מקומיים לשפות שונות. באמצעות מזהה סגנון, אתה יכול למצוא את הסגנון הנכון ללא קשר לשפת המסמך. ערכי ההשכלה תואמים את Microsoft Word סגנונות בנויים כגון נורמלי, ראש 1, ראש 2 וכו '. כל סגנונות המוגדרים של המשתמש מוקצים את [StyleIdentifier.USER](https://reference.aspose.com/words/python-net/aspose.words/styleidentifier/#user) ערך

דוגמה לקוד הבא מראה כיצד ליישם את סגנון סעיף:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ApplyParagraphStyle.py" >}}

## המונחים: style Separator to Put different Paragraph

ניתן להוסיף לסיומו של סעיף באמצעות Ctrl + אלט + Enter Keyboard קיצור של MS Word. תכונה זו מאפשרת שני סגנונות ס"ק שונים בשימוש בפסקה מודפסת הגיונית אחת. אם אתה רוצה טקסט מההתחלה של כותרת מסוימת להופיע בטבלה של תוכן אבל לא רוצה את הכותרת כולה בטבלה של תוכן, אתה יכול להשתמש תכונה זו

הדוגמה הבאה של הקוד מראה כיצד להוסיף מפריד סגנון כדי להתאים סגנונות פסקה שונים:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-InsertStyleSeparator.py" >}}

## זיהוי Paragraph סגנון ספרדי

Aspose.Words מספק נכס ציבורי [break_is_style_separator](https://reference.aspose.com/words/python-net/aspose.words/paragraph/break_is_style_separator/) לתוך [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) המחלקה מאפשרת זיהוי פרדיגמה של סגנון Separator כפי שמוצג בדוגמה שניתנה להלן:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-GetParagraphStyleSeparator.py" >}}

## החל את הגבולות והמשך לפסקה

הגבולות מיוצגים על ידי [BorderCollection](https://reference.aspose.com/words/python-net/aspose.words/bordercollection/). זהו אוסף של [Border](https://reference.aspose.com/words/python-net/aspose.words/border/) פריטים אשר נגישים על ידי אינדקס או על ידי סוג גבול. סוג הגבול מיוצג על ידי [BorderType](https://reference.aspose.com/words/python-net/aspose.words/bordertype/) אזהרה. כמה ערכים של ההנצחה חלים על מספר או רק אלמנט מסמך אחד. לדוגמה, [BorderType.BOTTOM](https://reference.aspose.com/words/python-net/aspose.words/bordertype/#bottom) חל על סעיף או תא שולחן בזמן [BorderType.DIAGONALDOWN](https://reference.aspose.com/words/python-net/aspose.words/bordertype/#diagonaldown) מציג את הגבול האלכסוני בתא שולחן בלבד.

גם אוסף הגבול ולכל גבול נפרד יש תכונות דומות כמו צבע, סגנון קו, רוחב קו, מרחק מטקסט וצל אופציונלי. הם מיוצגים על ידי תכונות של אותו שם. אתה יכול להשיג סוגים שונים של גבולות על ידי שילוב ערכי הנכס. בנוסף, שניהם [BorderCollection](https://reference.aspose.com/words/python-net/aspose.words/bordercollection/) ו [Border](https://reference.aspose.com/words/python-net/aspose.words/border/) אובייקטים מאפשרים לך לאפס את הערכים האלה כברירת מחדל על ידי קריאה [Border.clear_formatting](https://reference.aspose.com/words/python-net/aspose.words/border/clear_formatting/) שיטה.

{{% alert color="primary" %}}

שימו לב שכאשר תכונות הגבול מתאפסות לערכי ברירת המחדל שלהם, הגבול הופך לבלתי נראה.

{{% /alert %}}

Aspose.Words יש גם את [Shading](https://reference.aspose.com/words/python-net/aspose.words/shading/) הכיתה מכילה תכונות קידוד עבור רכיבי מסמך. אתה יכול להגדיר את המרקם הרצוי ואת הצבעים מוחלים על הרקע ואת הבסיס של האלמנט.

מרקם הגילוח נקבע עם [TextureIndex](https://reference.aspose.com/words/python-net/aspose.words/textureindex/) ערך enumeration המאפשר יישום של דפוסים שונים [Shading](https://reference.aspose.com/words/python-net/aspose.words/shading/) אובייקט. לדוגמה, כדי להגדיר צבע רקע עבור רכיב מסמך, השתמש ב [TextureIndex.TEXTURE_SOLID](https://reference.aspose.com/words/python-net/aspose.words/textureindex/#texture_solid) ערך ולהגדיר את הצבע הקדמי מתאים. להלן דוגמה לכך היא כיצד ליישם את הגבולות ולהשפיל לפסקה.

הדוגמה הבאה של הקוד מראה כיצד ליישם את הגבולות ולהשפיל לפסקה:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ApplyBordersAndShadingToParagraph.py" >}}
