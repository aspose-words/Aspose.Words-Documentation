---
title: עבודה עם Paragraphs Java
second_title: Aspose.Words עבור Java
articleTitle: עבודה עם Paragraphs
linktitle: עבודה עם Paragraphs
description: "המונחים: Paragraph node מניפולציה Java."
type: docs
weight: 210
url: /he/java/working-with-paragraphs/
---

פסקה היא קבוצה של דמויות המשולבות לבלוק לוגי וסיום עם אופי מיוחד - הפסקה *פסקה*. In In In Aspose.Words, סעיף מיוצג על ידי [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) מעמד.

## המונחים: a Paragraph

כדי להוסיף פסקה חדשה לתוך המסמך, למעשה, אתה צריך להוסיף סעיף לשבור את הדמות לתוך זה. [DocumentBuilder.Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln) הוסף לא רק מחרוזת של טקסט לתוך המסמך, אלא גם מוסיף הפסקה.

פורמט הגופן הנוכחי מוגדר גם על ידי [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) רכוש, ותבנית הסעיף הנוכחית נקבעת על ידי [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getParagraphFormat) רכוש. בחלק הבא, נעבור לפרטים נוספים על עיצוב סעיף.

דוגמה לקוד הבא מראה כיצד להכניס פסקה למסמך:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}


## תבנית Paragraph

פורמט הסעיף הנוכחי מיוצג על ידי [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) אובייקט שחזר על ידי [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getParagraphFormat) רכוש. אובייקט זה encapsulates שונים תצורה של סעיף תכונות זמין Microsoft Word. אתה יכול בקלות לאפס את הפורמט של פסקה לתוך ברירת המחדל שלה - סגנון רגיל, שמאלי, ללא רתיעה, ללא ספאק, ללא גבולות, ללא גילוח - על ידי קריאה [ClearFormatting](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#clearFormatting).

דוגמה לקוד הבא מראה כיצד להגדיר את סעיף הפורמט:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderSetParagraphFormatting.java" >}}

## המונחים: Paragraph Style

כמה אובייקטים מעוצבים כמו פונט או ParagraphFormat סגנונות תמיכה. סגנון מובנה יחיד או מוגדר למשתמש מיוצג על ידי [Style](https://reference.aspose.com/words/java/com.aspose.words/style/) אובייקט המכיל את תכונות הסגנון המקביל כמו שם, סגנון בסיס, גופני ופסקה פורמט של הסגנון, וכן הלאה.

יתר על כן, **Style** האובייקט מספק [StyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/style/#getStyleIdentifier) רכוש מחזיר מזהה בסגנון עצמאי מקומי מיוצג על ידי **StyleIdentifier** ערך enumeration הנקודה היא שמות סגנונות בנויים בסגנונות Microsoft Word הם מקומיים לשפות שונות. באמצעות מזהה סגנון, אתה יכול למצוא את הסגנון הנכון ללא קשר לשפת המסמך. ערכי ההשכלה תואמים את Microsoft Word סגנונות בנויים כגון *Normal*, *Heading 1*, *Heading*, וכו'. כל סגנונות המוגדרים על ידי המשתמש מוקצים את **מעצב אופנה ערך המשתמש**.

דוגמה לקוד הבא מראה כיצד ליישם את סגנון סעיף:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyParagraphStyle.java" >}}

## המונחים: style Separator to Put different Paragraph

ניתן להוסיף לסיומו של סעיף באמצעות Ctrl + Alt + Enter Keyboard Shortcut into MS Word. תכונה זו מאפשרת שני סגנונות שונים של פסקה בשימוש בפסקה מודפסת הגיונית אחת. אם אתה רוצה טקסט מההתחלה של כותרת מסוימת להופיע בטבלה של תוכן אבל לא רוצה את הכותרת כולה בטבלה של תוכן, אתה יכול להשתמש תכונה זו.

הדוגמה הבאה של הקוד מראה כיצד להוסיף מפריד סגנון כדי להתאים סגנונות פסקה שונים:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ParagraphInsertStyleSeparator.java" >}}


## החל את הגבולות והמשך לפסקה

גבולות Aspose.Words מיוצגים על ידי [BorderCollection](https://reference.aspose.com/words/java/com.aspose.words/bordercollection/) מעמד – זהו אוסף של [Border](https://reference.aspose.com/words/java/com.aspose.words/border/) אובייקטים נגישים על ידי אינדקס או על ידי סוג גבול. The The The `Border` הסוג מיוצג על ידי [BorderType](https://reference.aspose.com/words/java/com.aspose.words/bordertype/) אזהרה. כמה ערכים של ההנצחה חלים על מספר או רק אלמנט מסמך אחד. לדוגמה, **BorderType.Bottom** חל על סעיף או תא שולחן בזמן **BorderType.DiagonalDown** מציג את הגבול האלכסוני בתא שולחן בלבד.

גם אוסף הגבול ולכל גבול נפרד יש תכונות דומות כמו צבע, סגנון קו, רוחב קו, מרחק מהטקסט, וצל אופציונלי. הם מיוצגים על ידי תכונות של אותו שם. אתה יכול להשיג סוגים שונים של גבולות על ידי שילוב ערכי הנכס. בנוסף, שניהם **BorderCollection** ו **Border** אובייקטים מאפשרים לך לאפס את הערכים האלה כברירת מחדל על ידי קריאה [ClearFormatting](https://reference.aspose.com/words/java/com.aspose.words/border/#clearFormatting) שיטה.

{{% alert color="primary" %}}

שים לב שכאשר תכונות הגבול מתאפסות לערכי ברירת מחדל, הגבול הוא בלתי נראה.

{{% /alert %}}

Aspose.Words יש גם את [Shading](https://reference.aspose.com/words/java/com.aspose.words/shading/) הכיתה מכילה תכונות קידוד עבור רכיבי מסמך. אתה יכול להגדיר את המרקם הרצוי ואת הצבעים מוחלים על הרקע ואת הבסיס של האלמנט.

מרקם הגילוח נקבע עם [TextureIndex](https://reference.aspose.com/words/java/com.aspose.words/textureindex/) ערך enumeration המאפשר יישום של דפוסים שונים **Shading** אובייקט לדוגמה, כדי להגדיר צבע רקע עבור אלמנט מסמך, השתמש ב `TextureIndex.TextureSolid` הערך והגדירו את הצבע הקדמי המתאים. דוגמה לקוד שניתן להלן מראה כיצד ליישם את הגבולות ולהשפיל לפסקה.

הדוגמה הבאה של הקוד מראה כיצד ליישם את הגבולות ולהשפיל לפסקה:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyBordersAndShadingToParagraph.java" >}}
