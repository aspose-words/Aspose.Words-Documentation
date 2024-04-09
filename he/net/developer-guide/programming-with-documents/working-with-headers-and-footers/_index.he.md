---
title: עבודה עם Headers ו Footers C#
second_title: Aspose.Words עבור .NET
articleTitle: עבודה עם Headers & Footers
linktitle: עבודה עם Headers & Footers
description: "כיצד לתמרן ראשים ורגליים באמצעות C#. ליצור ראשים ורגליים C#. להסיר כותרות או רגלים C#."
type: docs
weight: 150
url: /he/net/working-with-headers-and-footers/
---

Aspose.Words מאפשר למשתמשים לעבוד עם Headers ו Footers במסמך. כותרת היא טקסט ממוקם בחלק העליון של דף, וצוואר הוא טקסט בתחתית העמוד. בדרך כלל, אזורים אלה משמשים כדי להוסיף מידע שיש לחזור על כל או כמה דפים של המסמך, כגון מספרי דף, תאריך יצירה, מידע של החברה וכן הלאה.

## צור כותרות או Footers באמצעות DocumentBuilder

אם אתה רוצה להוסיף מנהל מסמך או מנהל קדמית, הדרך הקלה ביותר היא להשתמש [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) הכיתה לעשות את זה.

הדוגמה הבאה של הקוד מראה כיצד להוסיף ראש ורגל לדפים:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "create-header-footer.cs" >}}

## המונחים: Header or Footer Options

כאשר אתה מוסיף מנהל או רגל למסמך, אתה יכול להגדיר כמה תכונות מתקדמות. Aspose.Words מספק למשתמשים את [HeaderFooter](https://reference.aspose.com/words/net/aspose.words/headerfooter/) ו [HeaderFooterCollection](https://reference.aspose.com/words/net/aspose.words/headerfootercollection/) שיעורים, כמו [HeaderFooterType](https://reference.aspose.com/words/net/aspose.words/headerfootertype/) הערכה שנותנת לך שליטה רבה יותר על תהליך ההתאמה הראש והרגל.

### המונחים: Header or Footer type

ניתן לציין שלושה סוגים שונים של ראש ושלושה סוגים שונים עבור מסמך אחד:
1.1 1. Header ו/או Footer for the First page
2. Header ו/או Footer for אפילו דפים
3. Header ו/או Footer for Strange דפים

הדוגמה הבאה של הקוד מראה כיצד להוסיף כותרת עבור דפי מסמך מוזרים:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "header-footer-type.cs" >}}

### ציין האם להציג ראשים שונים או Footers עבור הדף הראשון

כפי שנאמר לעיל, אתה יכול גם להגדיר ראש אחר או רגל עבור הדף הראשון. כדי לעשות זאת, עליך להגדיר את [DifferentFirstPageHeaderFooter](https://reference.aspose.com/words/net/aspose.words/pagesetup/differentfirstpageheaderfooter/) דגל `true` ולאחר מכן הצצה אל **HeaderFirst** או **FooterFirst** ערך.

לדוגמה הקוד הבא מראה כיצד להגדיר את ראש העמוד הראשון בלבד:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "different-first-page.cs" >}}

### ציין האם להציג ראשים שונים או Footers for Odd or Even Pages

 לאחר מכן, אתה רוצה להגדיר ראשים או רגלים שונים עבור מוזר ואפילו דפים במסמך. כדי לעשות זאת, עליך להגדיר את [OddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/net/aspose.words/pagesetup/oddandevenpagesheaderfooter/) דגל `true` ואז להבין את הערכים **HeaderPrimary** ו **HeaderEven**, או **FooterPrimary** ו **FooterEven**.

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "odd-even-pages.cs" >}}

### הכנס מיקום מוחלט צילום: The Header

כדי להציב תמונה בראש או ברגל, השתמש **HeaderPrimary** סוג ראש או **FooterPrimary** סוג כף הרגל וה [InsertImage](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertimage/) שיטה.

הדוגמה הבאה של הקוד מראה כיצד להוסיף תמונה לראש:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "insert-image.cs" >}}

### Set Font and Paragraph Properties for Header or Footer

עם Aspose.Words באפשרותך להגדיר את התכונות של הגופן והפסקה, השתמש **HeaderPrimary** סוג ראש או **FooterPrimary** סוג כף הרגל, כמו גם שיטות ונכסים לעבודה עם גופנים ופסקאות אתה משתמש עבור גוף המסמך.

הדוגמה הבאה של הקוד מראה כיצד להגדיר את הטקסט בראש אריאל, נועז, בגודל 14, והיערכות מרכזית:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "font-props.cs" >}}

### הכנס דף מספרים אל ראש או Footer

אם יש צורך, באפשרותך להוסיף מספרי דף לראש או ל Footer. לעשות זאת, השתמש **HeaderPrimary** סוג ראש או **FooterPrimary** סוג כף הרגל וה [InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/) שיטה להוסיף את השדה הנדרש.

הדוגמה הבאה של הקוד מראה כיצד להוסיף מספרי דף לכף הרגל מימין:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "page-numbers.cs" >}}

### השתמש ב Headers או Footers Defined בסעיף הקודם

אם אתה צריך להעתיק את ראש או רגל מן החלק הקודם, אתה יכול לעשות את זה גם.

הדוגמה הבאה של הקוד מראה כיצד להעתיק את הפנר או את הרגל מהחלק הקודם:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "copy-headers-footers-from-previous-section.cs" >}}

### ודא Header או Footer מראה בעת שימוש באוריינטציות שונות של פייג '

Aspose.Words מאפשר לך לספק את המראה של Header או Footer בעת שימוש בכיוונים שונים וגדלי דף.

הדוגמה הבאה מראה כיצד לעשות זאת:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "link-to-previous-header-footer.cs" >}}

## כיצד להסיר רק ראשים או רק רגליים

כל קטע במסמך יכול להיות עד שלושה ראשים ועד שלושה הולכי רגל (לראשונה, אפילו, ודפים מוזרים). אם אתה רוצה להסיר את כל הראשים או כל ההולכי רגל במסמך, אתה צריך לחדור דרך כל הקטעים ולהסיר כל צומת ראש או צומת כף רגל מתאימה.

הדוגמה הקודית הבאה מראה כיצד להסיר את כל ההולכי הרגל מכל הסעיפים, אך להשאיר ראשים שלמים. ניתן להסיר רק ראשים באופן דומה:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "remove-footers.cs" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ הדגימה של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Header%20and%20footer%20types.docx).

{{% /alert %}}