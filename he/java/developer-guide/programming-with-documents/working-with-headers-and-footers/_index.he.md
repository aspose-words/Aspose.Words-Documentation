---
title: עבודה עם Headers ו Footers Java
second_title: Aspose.Words עבור Java
articleTitle: עבודה עם Headers & Footers
linktitle: עבודה עם Headers & Footers
description: "כיצד לתמרן ראשים ורגליים באמצעות Java."
type: docs
weight: 150
url: /he/java/working-with-headers-and-footers/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words מאפשר למשתמשים לעבוד עם Headers ו Footers במסמך. כותרת היא טקסט ממוקם בחלק העליון של דף, וצוואר הוא טקסט בתחתית העמוד. בדרך כלל, אזורים אלה משמשים כדי להוסיף מידע שיש לחזור על כל או כמה דפים של המסמך, כגון מספרי דף, תאריך יצירה, מידע של החברה וכן הלאה.

## צור כותרות או Footers באמצעות DocumentBuilder

אם אתה רוצה להוסיף מנהל מסמך או מנהל קדמית, הדרך הקלה ביותר היא להשתמש [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) הכיתה לעשות את זה.

הדוגמה הבאה לקוד מראה כיצד להוסיף ראש ורגל לדפים:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "create-header-footer.java" >}}

## המונחים: Header or Footer Options

כאשר אתה מוסיף מנהל או רגל למסמך, אתה יכול להגדיר כמה תכונות מתקדמות. Aspose.Words מספק למשתמשים את [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) ו [HeaderFooterCollection](https://reference.aspose.com/words/java/com.aspose.words/headerfootercollection/) שיעורים, כמו [HeaderFooterType](https://reference.aspose.com/words/java/com.aspose.words/headerfootertype/) הערכה שנותנת לך שליטה רבה יותר על תהליך ההתאמה של Header ו- Footer.

### המונחים: Header or Footer type

ניתן לציין שלושה סוגים שונים של ראש ושלושה סוגים שונים עבור מסמך אחד:

1.1 1. Header ו/או Footer for the First page
2. Header ו/או Footer for אפילו דפים
3. Header ו/או Footer for Strange דפים

הדוגמה הבאה של הקוד מראה כיצד להוסיף כותרת עבור דפי מסמך מוזרים:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "header-footer-type.java" >}}

### ציין האם להציג ראשים שונים או Footers עבור הדף הראשון

כפי שנאמר לעיל, אתה יכול גם להגדיר ראש אחר או רגל עבור הדף הראשון. כדי לעשות זאת, עליך להגדיר את [DifferentFirstPageHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getDifferentFirstPageHeaderFooter) דגל `true` ולאחר מכן הצצה אל **HeaderFirst** או **FooterFirst** ערך.

לדוגמה הקוד הבא מראה כיצד להגדיר את ראש העמוד הראשון בלבד:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "different-first-page.java" >}}

### ציין האם להציג ראשים שונים או Footers for Odd or Even Pages

 לאחר מכן, אתה רוצה להגדיר כותרות או הולכי רגל שונים עבור מוזר ואפילו דפים במסמך. כדי לעשות זאת, עליך להגדיר את [OddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOddAndEvenPagesHeaderFooter) דגל `true` ואז להבין את הערכים **HeaderPrimary** ו **HeaderEven**, או **FooterPrimary** ו **FooterEven**.

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "odd-even-pages.java" >}}

### הכנס מיקום מוחלט צילום: The Header

כדי להציב תמונה בראש או ברגל, השתמש **HeaderPrimary** סוג ראש או **FooterPrimary** סוג כף הרגל וה [InsertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte) שיטה.

דוגמה לקוד הבא מראה כיצד להוסיף תמונה לראש:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "insert-image.java" >}}

### Set Font and Paragraph Properties for Header or Footer

עם Aspose.Words באפשרותך להגדיר את התכונות של הגופן והפסקה, השתמש **HeaderPrimary** סוג ראש או **FooterPrimary** סוג רגל, כמו גם שיטות ונכסים לעבודה עם הגופנים והפסקאות שאתה משתמש עבור גוף המסמך.

הדוגמה הבאה של הקוד מראה כיצד להגדיר את הטקסט בראש אריאל, נועז, בגודל 14, והיערכות מרכזית:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "font-props.java" >}}

### הכנס דף מספרים אל ראש או Footer

אם יש צורך, באפשרותך להוסיף מספרי דף ל- Header או Footer. לעשות זאת, השתמש **HeaderPrimary** סוג ראש או **FooterPrimary** סוג כף הרגל וה [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) שיטה להוסיף את השדה הנדרש.

הדוגמה הבאה של הקוד מראה כיצד להוסיף מספרי דף לכף הרגל מימין:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "page-numbers.java" >}}

### השתמש ב Headers או Footers Defined בסעיף הקודם

אם אתה צריך להעתיק את ראש או רגל מהחלק הקודם, אתה יכול לעשות את זה גם.

הדוגמה הבאה של הקוד מראה כיצד להעתיק את הפנר או את הרגל מהחלק הקודם:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "copy-headers-footers-from-previous-section.java" >}}

### ודא Header או Footer מראה בעת שימוש באוריינטציות שונות של פייג '

Aspose.Words מאפשר לך לספק את המראה של Header או Footer בעת שימוש בכיוונים שונים וגדלי דף.

הדוגמה הבאה מראה כיצד לעשות זאת:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "link-to-previous-header-footer.java" >}}

## כיצד להסיר רק ראשים או רק רגליים

כל קטע במסמך יכול להיות עד שלושה ראשים ועד שלושה הולכי רגל (לראשונה, אפילו דפי מוזר). אם אתה רוצה להסיר את כל הראשים או את כל ההולכים במסמך, אתה צריך לחדור דרך כל הקטעים ולהסיר כל צומת ראש או צומת כף רגל מתאימה.

הדוגמה הקודית הבאה מראה כיצד להסיר את כל ההולכי הרגל מכל הסעיפים, אך להשאיר את הראשים שלמים. ניתן להסיר רק ראשים באופן דומה:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "remove-footers.java" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ הדגימה של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Footer.docx).

{{% /alert %}}
