---
title: יצרן מסמכים סקירה Java
second_title: Aspose.Words עבור Java
articleTitle: Document Builder
linktitle: Document Builder
type: docs
description: "DocumentBuilder מאפשר לך לבנות מסמכים דינמיים מאפס או להוסיף אלמנטים חדשים לאלה הקיימים. DocumentBuilder מספק שיטות להוסיף טקסט, צ'קוקס, טבלאות, תמונות ואלמנטים אחרים של תוכן Java."
weight: 30
url: /he/java/document-builder-overview/
timestamp: 2024-01-27-14-07-04
---

[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) הוא מעמד חזק שקושר עם [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) ומאפשר לך לבנות מסמכים דינמיים מאפס או להוסיף אלמנטים חדשים לאחד קיים.

**DocumentBuilder** מספק שיטות כדי להוסיף טקסט, צ'קוקס, אובייקטים ole, פסקאות, רשימות, טבלאות, תמונות ואלמנטים אחרים של תוכן. זה מאפשר לך לציין גופנים, סעיף או סעיף פורמט, ולבצע פעולות אחרות.

## בונה מסמכים או Aspose.Words DOM

**DocumentBuilder** משלים שיעורים ושיטות זמינים Aspose.Words Document Object Model ()DOMכדי לפשט את משימות בניית המסמכים הנפוצות ביותר. כלומר, אתה יכול ליצור ולשנות את התוכן של המסמכים הן דרך Aspose.Words DOMאשר דורש הבנה טובה של מבנה העץ, ושימוש ב- DocumentBuilder. The The The `DocumentBuilder` הוא "מסעדה" למורכב **Document** מבנה המאפשר לך להכניס במהירות ובקלות תוכן ופורמטיקה.

פעולות אפשריות עם **DocumentBuilder** ניתן גם כאשר משתמשים בכיתות של Aspose.Words DOM ישירות. עם זאת, באמצעות Aspose.Words DOM שיעורים בדרך כלל דורשים יותר שורות קוד מאשר שימוש **DocumentBuilder**.

## מסמך ניווט

ניווט מסמכים מבוסס על הרעיון של קידוד וירטואלי, שבו אתה יכול לעבור למיקום אחר במסמך באמצעות מגוון רחב של **DocumentBuilder.MoveToXXX** שיטות כגון [MoveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart) ו [MoveToField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToField-com.aspose.words.Field-boolean). cursor וירטואלית זו מציינת היכן הטקסט יוכנס בעת קריאה לשיטות [Write](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#write-java.lang.String), [Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln), [InsertBreak](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertBreak-int), ואחרים. ראה את המאמר הבא "Navigation with Cursor" כדי ללמוד עוד על cursor וירטואלית.

דוגמה לקוד הבא מראה כיצד לנווט לסימן ספר:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmarkEnd-DocumentBuilderMoveToBookmarkEnd.java" >}}

## בניית מסמכים ושינוי

Aspose.Words API מספק מספר שיעורים האחראים לתבנית אלמנטים שונים של מסמך. כל אחת מהכיתות מדגימה נכסים הקשורים אלמנט מסמך ספציפי, כגון טקסט, פסקה, סעיף ואחרים. לדוגמה, [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) הכיתה מייצגת תכונות עיצוב אופי, [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) הכיתה מייצגת את התכונות של סעיף, וכן הלאה. אובייקטים של שיעורים אלה יוחזרו על ידי התואם **DocumentBuilder** נכסים, שיש להם את אותם השמות כמו המעמדות. לכן, אתה יכול לגשת אליהם ולהגדיר את הפורמט הרצוי במהלך בניית המסמך.

באפשרותך גם להוסיף טקסט, Checkbox, ole object, תמונות, סמנים, שדות טופס ואלמנטים אחרים של מסמכים בעמדה cursor באמצעות המיקום cursor באמצעות cursor `Write` שיטה או כל אחד **DocumentBuilder.InsertXXX** שיטות, כגון [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean), [InsertHtml](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHtml-java.lang.String), שיטות דומות.

בואו נראה כיצד ליצור מסמך פשוט באמצעות **DocumentBuilder**.

### צור מסמך באמצעות DocumentBuilder

כדי להתחיל, אתה צריך ליצור **DocumentBuilder** לקשור אותו עם **Document** אובייקט אתה יוצר מקרה חדש של **DocumentBuilder** על ידי קריאה ליוצר שלו ולהעביר אותו ל **Document** להתנגד להחזקה ל-The Buildinger.

כדי להוסיף טקסט, להעביר את מחרוזת הטקסט שאתה צריך להכניס לתוך המסמך אל המסמך. **Write** שיטה.

הדוגמה הבאה של הקוד מראה כיצד ליצור מסמך פשוט באמצעות בונה מסמך.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-quickstart-HelloWorld-CreateNewDocument.java" >}}

### המונחים Document Format

The The The [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) הנכס מגדיר פורמט טקסט. אובייקט זה מכיל תכונות גופניות שונות (שם גופני, גודל גופן, צבע וכן הלאה). כמה תכונות גופניות חשובות מיוצגות גם על ידי **DocumentBuilder** תכונות כדי לאפשר לך לגשת אליהם ישירות. אלה הם [Font.Bold](https://reference.aspose.com/words/java/com.aspose.words/font/#getBold), [Font.Italic](https://reference.aspose.com/words/java/com.aspose.words/font/#getItalic), ו [Font.Underline](https://reference.aspose.com/words/java/com.aspose.words/font/#getUnderline) תכונות בוטות

הדוגמה הבאה של הקוד מראה כיצד להוסיף טקסט מעוצב באמצעות **DocumentBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}

{{% alert color="primary" %}}

- - [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) מפרט את פורמט האופי שיושם על כל הטקסט שהוכנס מהמיקום הנוכחי במסמך ואילך.
- - [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) מפרט את הסעיף הפורמטי לסעיף הנוכחי והכל הסעיפים שיש להכניס.
- - [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) מפרט את הדף ואת התכונות של החלק הנוכחי ואת כל הקטע שיוכנס.
- - [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) ו [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) ציין תכונות עיצוב שיושמו על תאים ושורה מהמיקום הנוכחי במסמך ואילך.

במצב זה, "נוכחי" פירושו העמדה, פסקה, סעיף, תא או שורה שבה הcursor הוא.

{{% /alert %}}

{{% alert color="primary" %}}

שימו לב **Font**, **ParagraphFormat**, ו **PageSetup** נכסים מעודכנים בכל פעם שאתה לנווט למיקום אחר במסמך כדי לשקף את התכונות המפורמטיביות של מיקום זה.

{{% /alert %}}
