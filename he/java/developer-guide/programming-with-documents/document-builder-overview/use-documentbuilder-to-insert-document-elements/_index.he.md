---
title: "שימוש בשימוש `DocumentBuilder` תגית: Document Elements"
second_title: Aspose.Words עבור Java
articleTitle: "שימוש בשימוש `DocumentBuilder` תגית: Document Elements"
linktitle: "שימוש בשימוש `DocumentBuilder` תגית: Document Elements"
type: docs
description: "הכנס רכיבי מסמך באמצעות בונה המסמך ב Java."
weight: 10
url: /he/java/use-documentbuilder-to-insert-document-elements/
---

The The The [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) משמש כדי לשנות מסמכים. מאמר זה מסביר ומסביר כיצד לבצע מספר משימות.

## המונחים: a String of Text

פשוט להעביר את מחרוזת הטקסט שאתה צריך להכניס לתוך המסמך אל המסמך. [DocumentBuilder.write](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#write(java.lang.String)) שיטה. פורמט טקסט נקבע על ידי `Font` רכוש. אובייקט זה מכיל תכונות גופניות שונות (שם גופני, גודל גופן, צבע וכן הלאה). כמה תכונות גופניות חשובות מיוצגות גם על ידי [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) תכונות כדי לאפשר לך לגשת אליהם ישירות. אלה תכונות בוטות [Font.getBold](https://reference.aspose.com/words/java/com.aspose.words/font/#getBold), [Font.getItalic](https://reference.aspose.com/words/java/com.aspose.words/font/#getItalic), ו [Font.getUnderline](https://reference.aspose.com/words/java/com.aspose.words/font/#getUnderline).

{{% alert color="primary" %}}

שים לב שפורמט האופי שהגדרתם יחול על כל הטקסט שהוכנס מהמיקום הנוכחי במסמך ואילך.

{{% /alert %}}

הדוגמה הבאה לקוד מציגה טקסט בפורמט באמצעות DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WriteAndFont-WriteAndFont.java" >}}

## המונחים: a Paragraph

מסמך בונה פורמט הגופן הנוכחי מוגדר גם על ידי מסמך בונה. קבל נכס פונטן ותבנית פסקה נוכחית נקבעת על ידי הנכס DocumentBuilder.getParagraphFormat

הדוגמה הבאה של הקוד מראה כיצד להכניס פסקה אל המסמך.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}

## הכנס שולחן

האלגוריתם הבסיסי ליצירת שולחן באמצעות `DocumentBuilder` זה פשוט:

1.1 1. התחל את השולחן באמצעות [DocumentBuilder.startTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable).
1.1 1. הכנס תא באמצעות [DocumentBuilder.insertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell). זה מתחיל באופן אוטומטי שורה חדשה. אם צריך, השתמש [DocumentBuilder.getCellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) רכוש כדי לציין פורמט תאים.
1.1 1. המונחים: `DocumentBuilder` שיטות.
1.1 1. חזור על שלבים 2 ו 3 עד שהשורה הושלמה.
1.1 1. Call [DocumentBuilder.endRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) לסיום השורה הנוכחית. במידת הצורך, השתמש [DocumentBuilder.RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) רכוש כדי לציין פורמט שורות.
1.1 1. חזור על שלבים 2 - 5 עד להשלמת השולחן.
1.1 1. Call [DocumentBuilder.endTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) לסיים את בניין השולחן. שיטות יצירת שולחן המסמכים המתאימות מתוארות להלן.

### פתיחת שולחן

Calling DocumentBuilder שולחן הוא הצעד הראשון בבניית שולחן. זה יכול גם להיקרא בתוך תא, במקרה זה, זה מתחיל שולחן מקונן. השיטה הבאה לקרוא היא מסמך בונה.insertCell.

### הכנסת תא

לאחר שתקראו ל- DocumentBuilder. הכנס תא, תא חדש נוצר וכל תוכן שאתה מוסיף באמצעות שיטות אחרות של `DocumentBuilder` הכיתה תתווסף לתא הנוכחי. כדי להתחיל תא חדש באותה שורה, התקשר ל- DocumentBuilder. הכנס שוב תא. השתמש ב- DocumentBuilder.getCell עיצוב נכס כדי לציין פורמט תאים. זה מחזיר [getCellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) אובייקט המייצג את כל העיצוב עבור תא שולחן.

### סוף סוף רו

Call DocumentBuilder בואו לסיים את השורה הנוכחית. אם אתה קורא מסמך בונה. הכנס מיד לאחר מכן, השולחן ממשיך בשורה חדשה. השתמש `DocumentBuilder.RowFormat` רכוש כדי לציין פורמט שורות. זה מחזיר [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/) אובייקט המייצג את כל העיצוב לשורה של שולחן.

### סיום שולחן

Call DocumentBuilder שולחן כדי לסיים את השולחן הנוכחי. שיטה זו צריכה להיקרא רק פעם לאחר ש- DocumentBuilder. רונדו נקרא. שם הסרטון: DocumentBuilder.end שולחן מעביר את הcursor מהתא הנוכחי למצב בדיוק אחרי השולחן. הדוגמה הבאה מראה כיצד לבנות שולחן מעוצב המכיל 2 שורות ו 2 עמודות.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderBuildTable-DocumentBuilderBuildTable.java" >}}

## תגית: a Break

אם ברצונך לפתוח באופן מפורש קו חדש, סעיף, עמודה, או דף, התקשר ל- DocumentBuilder. הוסף. לעבור בשיטה זו את סוג ההפסקה שאתה צריך להוסיף כי מיוצג על ידי `BreakType` אזהרה
הדוגמה הבאה של הקוד מראה כיצד להכניס דף לתוך מסמך.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertBreak-DocumentBuilderInsertBreak.java" >}}

## הוספת תמונה

DocumentBuilder מספק מספר רב של [DocumentBuilder.insertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte) שיטה המאפשרת לך להוסיף תמונה פנימית או צף. אם התמונה היא metafile EMF או WMF, זה יוכנס לתוך המסמך בפורמט metafile. כל התמונות האחרות מאוחסנים בפורמט PNG. The DocumentBuilder שיטת צילום יכולה להשתמש בתמונות ממקורות שונים:

- מקובץ או `URL` על ידי עובר פרמטר מיתר
- מתוך זרם על ידי עובר `Stream` פרמטר
- מאובייקט תמונה על ידי העברת פרמטר תמונה
- ממערך Byte על ידי העברת פרמטר פרמטר מערך
- - ואחרים

עבור כל אחד מהמסמכים. הכנס שיטות צילום, יש עומסים נוספים המאפשרים לך להוסיף תמונה עם האפשרויות הבאות:

- Inline או צף במיקום מסוים
- גודל אחוז או גודל מותאם אישית

יתר על כן, המסמךBuilder.insert שיטת צילום מחזירה [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) אובייקט שנוצר והוכנס כדי שתוכל לשנות עוד תכונות של הצורה.

### הוספת Inline Image

לעבור מחרוזת אחת המייצגת קובץ המכיל את התמונה ל- DocumentBuilder. הכנס תמונה להכניס את התמונה לתוך המסמך כגרפיקה פנימית. הדוגמה הקודית הבאה מראה כיצד להכניס תמונה איליין בעמדה cursor לתוך מסמך.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertInlineImage-DocumentBuilderInsertInlineImage.java" >}}

### צילום: Absolute Positioned

דוגמה זו מציגה תמונה צף מקובץ או `URL` במיקום מסוים וגודל.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertFloatingImage-DocumentBuilderInsertFloatingImage.java" >}}

## המונחים: a Bookmark

כדי להוסיף סימן ספר לתוך המסמך, עליך לעשות את הפעולות הבאות:

1.1 1. Call [DocumentBuilder.startBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startBookmark-java.lang.String) להעביר את השם הרצוי של סימן הספר.
1.1 1. הכנס את הסימון באמצעות טקסט `DocumentBuilder` שיטות.
1.1 1. Call [DocumentBuilder.endBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endBookmark-java.lang.String) להעביר את אותו שם השתמשת עם DocumentBuilder.startBookmark.

סימני ספר יכולים לחפוף ולעבור כל טווח. כדי ליצור סימן ספר תקף אתה צריך לקרוא הן DocumentBuilder.startBookmark ו- DocumentBuilder.endBookmark עם אותו שם ספר.

סימני ספר שנוצרו בטעות או סימני ספר עם שמות כפולים יתעלמו כאשר המסמך נשמר.

הדוגמה הבאה של הקוד מראה כיצד להכניס סימן ספר למסמך באמצעות בונה מסמך.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertBookmark-DocumentBuilderInsertBookmark.java" >}}

## הכנסת שדה

שדות Microsoft Word מסמכים מורכבים מקוד שדה ותוצאה שדה. קוד השדה הוא כמו נוסחה ותוצאה השדה היא הערך שהנוסחת מייצרת. קוד השדה עשוי גם להכיל מתגי שדה שהם הוראות נוספות לביצוע פעולה מסוימת. אתה יכול לעבור בין הצגת קודים שדה ותוצאות במסמך שלך Microsoft Word באמצעות קיצור דרך המקלדת אלט+F9. קודים שדה מופיעים בין חזיות מרפאות (Altaltly braces) { } (Use) [DocumentBuilder.insertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) ליצור שדות במסמך. אתה צריך לציין סוג שדה, קוד שדה וערך שדה. אם אתה לא בטוח לגבי syntax קוד שדה מסוים, ליצור את השדה Microsoft Word קודם כל לעבור לראות את קוד השדה שלו
הדוגמה הבאה של הקוד מציגה שדה מיזוג במסמך באמצעות DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertField-DocumentBuilderInsertField.java" >}}

## הוספת a `Form` שדה

שדות טופס הם מקרה מסוים של שדות Word המאפשר "פעולה" עם המשתמש. שדות טופס Microsoft Word כולל תיבת טקסט, Combobox ו Checkbox. DocumentBuilder מספק שיטות מיוחדות להכניס כל סוג של שדה טופס לתוך המסמך: [DocumentBuilder.insertTextInput](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTextInput-java.lang.String-int-java.lang.String-java.lang.String-int) , [DocumentBuilder.insertCheckBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-boolean-int), ו [DocumentBuilder.insertComboBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertComboBox-java.lang.String-java.lang.String---int). שים לב שאם אתה מציין שם עבור שדה הטופס, סימן ספר נוצר באופן אוטומטי עם אותו שם.

### הוספת הודעות טקסט

DocumentBuilder.insertTextinput כדי להכניס תיבת טקסט לתוך המסמך. הדוגמה הבאה של הקוד מראה כיצד להכניס שדה טופס קלט טקסט לתוך מסמך.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTextInputFormField-DocumentBuilderInsertTextInputFormField.java" >}}

### הוספת a `CheckBox`

Call DocumentBuilder CheckBox כדי להכניס תיבת צ'ק לתוך המסמך. הדוגמה הבאה של הקוד מראה כיצד להכניס שדה טופס צ'ק לתוך מסמך.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertCheckBoxFormField-DocumentBuilderInsertCheckBoxFormField.java" >}}

### תגית: Combo Box

Call DocumentBuilderComboBox להכניס קופסא לתוך המסמך. הדוגמה הבאה של הקוד מראה כיצד להכניס שדה בצורת תיבת קומבו לתוך מסמך.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertComboBoxFormField-DocumentBuilderInsertComboBoxFormField.java" >}}

## כניסה מקומית ברמת שדה

לקוחות יכולים לציין המקומיים ברמת השדה יכולים להשיג שליטה טובה יותר. מקומי ניתן לקשר עם כל שדה בתוך המסמך. הדוגמאות להלן ממחישות כיצד להשתמש באפשרות זו.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.java" >}}

## הכנס HTML

אתה יכול בקלות להוסיף מחרוזת HTML המכילה קטע HTML או מסמך HTML שלם במסמך Word. פשוט להעביר את המחרוזת הזאת ל- DocumentBuilder. הכנס שיטת Html אחד המימושים השימושיים של השיטה הוא אחסון מחרוזת HTML במסד נתונים והכניס אותו למסמכים במהלך המסמך. mail merge כדי לקבל את התוכן המתואם במקום לבנות אותו באמצעות שיטות שונות של בונה המסמך. הדוגמה הקודית הבאה מציגה את HTML במסמך באמצעות DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHtml-DocumentBuilderInsertHtml.java" >}}

## הוספת Hyperlink

השתמש ב- DocumentBuilder.insertHyperlink כדי להכניס קישור לתוך המסמך. שיטה זו מקבלת שלושה פרמטרים: טקסט של הקישור להיות מוצג במסמך, יעד קישור (URL או שם של סימן ספר בתוך המסמך), ופרמטר boolean כי צריך להיות מוצג במסמך, true אם `URL` זהו שם של סימן בתוך המסמך. DocumentBuilder.insertHyperlink קורא ל- DocumentBuilder.insertField. השיטה תמיד מוסיפה נבואות בתחילת וסוף ה-URL. שים לב שאתה צריך לציין פורמט גופני עבור טקסט התצוגה היפר-קישור במפורש באמצעות הטקסט. `Font` רכוש. הדוגמה הבאה לקוד מוסיפה היפר-קישור במסמך באמצעות DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHyperlink-DocumentBuilderInsertHyperlink.java" >}}

## הוספת שולחן של תוכן

אתה יכול להוסיף `TOC` (שולחן התוכן) לתוך המסמך במיקום הנוכחי על ידי קריאה [DocumentBuilder.insertTableOfContents](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTableOfContents-java.lang.String) שיטה. שיטת ה- DocumentBuilder.inserttable OfContents תוסיף רק `TOC` שדה לתוך המסמך על מנת לבנות את שולחן התוכן ולהציג אותם לפי מספרי העמודים, שניהם **Document.UpdateFields**יש לקרוא את השיטה לאחר הוספת השדה. הדוגמה הבאה של הקוד מראה כיצד להכניס טבלת תכנים לתוך מסמך.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTableOfContents-DocumentBuilderInsertTableOfContents.java" >}}

## המונחים: Ole Object

אם אתה רוצה שיחת Ole Object [DocumentBuilder.insertOleObjectAsIcon](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObjectAsIcon-java.lang.String-boolean-java.lang.String-java.lang.String).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertOleObject-DocumentBuilderInsertOleObject.java" >}}

## הגדרת שם הקובץ והרחבה בעת הוספת אובייקט Ole

חבילת OLE היא מורשת ו-"לא מטופלת" דרך לאחסן חפצים מוטבעים אם מטפל OLE אינו ידוע. מוקדם Windows גרסאות כגון Windows 3.1, 95 ו-98 היו מפצחים. יישום exe שניתן להשתמש בו כדי להטביע כל סוג של נתונים במסמך. כעת, יישום זה אינו נכלל Windows אבל MS Word ויישומים אחרים עדיין להשתמש בו כדי להטביע נתונים אם המטפל חסר או לא ידוע. מעמד OlePackage מאפשר גישה לתכונות החבילה OLE. הדוגמה הבאה של הקוד מראה כיצד להגדיר את שם הקובץ, הרחבה ושם התצוגה של חבילת OLE.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.java" >}}

## גישה ל-OLE Object Raw Data

דוגמה לקוד הבא מוכיחה כיצד להגיע ל-OLE נתונים גולמיים באמצעות `OleFormat.GetRawData`() שיטה.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.java" >}}

## הכנס Horizontal חוק לתוך מסמך

הדוגמה הבאה של הקוד מראה כיצד להכניס צורה אופקית של שלטון לתוך מסמך באמצעות שימוש `DocumentBuilder.InsertHorizontalRule` שיטה.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.java" >}}

## עבודה עם Shapes

### שילוב Inline and Freefloating Shapes

באפשרותך להוסיף טופס inline עם סוג מסוים וגודל וצורה חופשית עם המיקום שצוין, גודל וטקסט עטופה סוג לתוך מסמך באמצעות מסמך באמצעות שימוש באמצעות מסמך באמצעות שימוש `DocumentBuilder.InsertShape` שיטה. The The The `DocumentBuilder.InsertShape` שיטה מאפשרת להכניס את צורת DML למודל המסמך. יש לשמור את המסמך בפורמט, אשר תומך בצורות DML, אחרת נקודות כאלה יומרו לצורת VML, תוך שמירת מסמכים. הדוגמה הבאה של הקוד מראה כיצד להכניס סוגים אלה של צורות לתוך המסמך.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.java" >}}

### תגית: Snip Corner Rectangle

אתה יכול ליצור מלבן פינה נופי באמצעות Aspose.Words. סוגי הצורה הם יחידCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCorners OneRounded OneSnipped, SingleCornerRounded, TopCornersRounded, ו DiagonalCornersRounded. צורת DML נוצרת באמצעות `DocumentBuilder.InsertShape` שיטה עם צורות אלה. סוגים אלה לא ניתן להשתמש כדי ליצור צורות VML. ניסיון ליצור צורה על ידי שימוש במבנה הציבורי של המעמד "Shape" מעלה את החריג "NotSupportedException". הדוגמה הבאה של הקוד מראה כיצד להכניס סוגים אלה של צורות לתוך המסמך.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-AddCornersSnipped.java" >}}

### ייבוא Shapes with Math XML as Shapes into DOM

אתה יכול להשתמש `LoadOptions.ConvertShapeToOfficeMath` נכס להמיר את הצורות עם EquationXML לאובייקטים של Office Math. ערך ברירת המחדל של נכס זה תואם להתנהגות MS Word i.צורות עם משוואה XML אינם מומרים לאובייקטים מתמטיים של Office.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-ConvertShapeToOfficeMath.java" >}}
