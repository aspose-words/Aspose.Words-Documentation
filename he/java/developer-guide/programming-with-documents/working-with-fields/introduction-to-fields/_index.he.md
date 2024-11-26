---
title: מבוא לשדות Java
second_title: Aspose.Words עבור Java
articleTitle: מבוא לשדות
linktitle: מבוא לשדות
description: "שדות תכונה בפרטים, קודי שדה ותוצאות שדה מוסברים ב Aspose.Words עבור Java."
type: docs
weight: 10
url: /he/java/introduction-to-fields/
timestamp: 2024-09-25-11-08-55
---

Aspose.Words היא ספריית כיתה המיועדת לעיבוד לצד השרת של Microsoft Word מסמכים ותומכים בתחומים בדרכים הבאות:

- כל השדות במסמך נשמרים במהלך פתוח / גילוח והמרות
- ניתן לעדכן תוצאות של רוב התחומים

במאמר זה נלמד עוד על מבנה שדה, התחומים הנתמכות בו. Aspose.Words, פרטים על עבודה עם שדות כאלה.

## מבנה שדה

שדה מורכב:

- - שדה מתחיל ונקודות קצה משמשים כדי לכלול את התוכן שמרכיבים את קוד השדה (בדרך כלל כטקסט רגיל).
- קצה השדה והשדה כולל את התוצאה של השדה. זה יכול להיות מורכב סוגים שונים של תוכן החל מריצה של טקסט עד פסקאות לטבלאות.
- שדות מסוימים עשויים לא להיות מפריד, כלומר כל התוכן יוצר את קוד השדה.
- - קוד השדה מגדיר את ההתנהגות של השדה והוא מורכב מזהה שדה ולעתים קרובות פרמטרים אחרים כגון שם שדה ומתגים.
- - התוצאה של השדה מכילה את ההערכה האחרונה של התחום. ערך זה נשמר בתוצאה השדה והוא מה שמוצג למשתמש. ייתכן שלתחומים מסוימים אין תוצאות שדה ולכן לא יציגו שום דבר במסמך. כמו כן, ייתכן שחלק מהתחומים עדיין לא מעודכנים ולכן גם לא יהיו תוצאות שדה.

![fields-aspose-words-java](/words/java/introduction-to-fields/introduction-to-fields-1.png)

התוכן שהופך את קוד השדה נשמר כמו [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) צומת בין [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/) ו [FieldSeparator](https://reference.aspose.com/words/java/com.aspose.words/fieldseparator/). התוצאה של השדה נשמרת בין **FieldSeparator** ו [FieldEnd](https://reference.aspose.com/words/java/com.aspose.words/fieldend/) צמתים וניתן להמציא סוגים שונים של תוכן. בדרך כלל התוצאה של השדה מכילה רק טקסט המורכב מעמודי Run, אבל זה אפשרי עבור צומת השדה להיות ממוקם בפסקה שונה לחלוטין, ובכך להפוך את תוצאת השדה מורכב של [רמות לוגיות של נקודות במסמך](/words/he/java/logical-levels-of-nodes-in-a-document/) כגון **Table** ו **Paragraph** גם חסרונות.

הנה מבט על איך שדה מאוחסן Aspose.Words על ידי שימוש ב-"DocumentExplorer" *דוגמה שניתן למצוא [Github](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/java/com/aspose/words/examples/viewers_visualizers/document_explorer).

![document-explorer-aspose-words-java](/words/java/introduction-to-fields/introduction-to-fields-2.png)

## שדות Aspose.Words Document Object Model ()DOM)

כאשר מסמך טעון Aspose.Words שדות המסמך טעונים לתוך Aspose.Words Document Object Model קבוצה של רכיבים נפרדים (nodes). שדה אחד טעון כאוסף של **FieldStart**, **FieldSeparator** ו **FieldEnd** יחד עם התוכן בין נקודות אלה. אם לשדה אין תוצאה של שדה אז לא יהיה **FieldSeparator** צומת. כל הצמתים האלה תמיד נמצאים בקו הפנימי (כילדים של [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) או [SmartTag](https://reference.aspose.com/words/java/com.aspose.words/smarttag/).

In In In Aspose.Words כל אחד **FieldXXX** צמתים נובעים [FieldChar](https://reference.aspose.com/words/java/com.aspose.words/fieldchar/). מעמד זה מספק נכס לבדוק את סוג השדה המיוצג על ידי הצומת שצוין דרך הצומת שצוין. [FieldType](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) רכוש. לדוגמא `FieldType.FieldMergeField` מייצג שדה מיזוג במסמך.

{{% alert color="primary" %}}

ישנם כמה תחומים ספציפיים הקיימים במסמך Word שאינם מיובאים לתוך Aspose.Words כאוסף **FieldXXX** צומת למשל, `LINK` שדה ו `INCLUDEPICTURE` שדה מיובא Aspose.Words כמו [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) אובייקט אובייקט זה מספק תכונות לעבוד עם נתוני התמונה מאוחסנים בדרך כלל בתחומים אלה. לייבא `INCLUDEPICTURE` שדה **FieldXXX** תגית: The nodes [PreserveIncludePictureField](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getPreserveIncludePictureField) יש לציין את האפשרות כ **true**.

שדות טופס גם מיובאים Aspose.Words כמעמד מיוחד משלהם. The The The [FormField](https://reference.aspose.com/words/java/com.aspose.words/formfield/) הכיתה מייצגת שדה צורה במסמך Word ומספקת שיטות נוספות שהן ספציפיות לתחום צורה.

{{% /alert %}}

## שדות

חישוב השדות הבאים נתמך בגרסה הנוכחית של Aspose.Words:

- המונחים: (formula)
- `ADDRESSBLOCK`
- `ASK`
- `AUTHOR`
- `AUTONUM`
- `AUTONUMLGL`
- `AUTONUMOUT`
- `AUTOTEXT`
- `BARCODE`
- `COMMENTS`
- `COMPARE`
- `CREATEDATE`
- `DATABASE`
- `DATE`
- `DISPLAYBARCODE`
- `DOCPROPERTY`
- `DOCVARIABLE`
- `EDITTIME`
- `EQ`
- `FILENAME`
- `FILESIZE`
- `FILLIN`
- `FORMCHECKBOX`
- `FORMDROPDOWN`
- `FORMTEXT`
- `GLOSSARY`
- `GOTOBUTTON`
- `GREETINGLINE`
- `HYPERLINK`
- `IF`
- `IMPORT`
- `INCLUDE`
- `INCLUDEPICTURE`
- `INCLUDETEXT`
- `INDEX`
- `INFO`
- `KEYWORDS`
- `LASTSAVEDBY`
- `LISTNUM`
- `MACROBUTTON`
- `MERGEBARCODE`
- `MERGEFIELD`
- `MERGEREC`
- `MERGESEQ`
- `NEXT`
- `NEXTIF`
- `NOTEREF`
- `NUMCHARS`
- `NUMPAGES`
- `NUMWORDS`
- `PAGE`
- `PAGEREF`
- `PRINTDATE`
- `QUOTE`
- `REF`
- `REVNUM`
- `SAVEDATE`
- `SECTION`
- `SECTIONPAGES`
- `SEQ`
- `SET`
- `SHAPE`
- `SKIPIF`
- `STYLEREF`
- `SUBJECT`
- `SYMBOL`
- `TEMPLATE`
- `TIME`
- `TITLE`
- `TOA`
- - `TOC` (כולל TOT ו- TOF)
- `USERADDRESS`
- `USERINITIALS`
- `USERNAME`

## שדה שדה מבוזר

Aspose.Words עקבו אחרי The Way Microsoft Word תהליכים שדות וכתוצאה מכך הוא מטפל נכון:

- שדות מזוינים:
  `IF { =OR({ `COMPARE` { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- טיעון שדה יכול להיות תוצאה של שדה מקונן
- שדות ניתן לקנן בתוך קוד שדה, כמו גם בתוצאות שדה
- חללים / אין חללים, ציטוטים / לא ציטוטים, בריחה דמויות בתחומים וכו ':
  `MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- שדות המשתרעים על פני סעיפים מרובים

### פורמולה שדות

Aspose.Words מספק יישום רציני מאוד של מנוע הנוסחה ותומך הבאים:

- מפעילי אנתרופולוגיה ומפעילים לוגיים:
  `=(54+4*(6-77)-(5))+(-6-5)/4/5`
- פונקציות:
  `=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- תגיות קשורות Bookmarks:
  `=IF(C>4, 5,ABS(A)*.76) +3.85`
- מספר מתגים:
  `=00000000 \\\# "$#,##0.00;($#,##0.00)"`

הפונקציות הבאות בביטויים נתמכות: `ABS`, `AND`, `AVERAGE`, `COUNT`, `DEFINED`, `FALSE`, `IF`, `INT`, `MAX`, `MIN`, `MOD`, `NOT`, `OR`, `PRODUCT`, `ROUND`, `SIGN`, `SUM`, TRUE.

### `IF` ו `COMPARE` שדות תעופה

רק חלק `IF` ביטויים Aspose.Words יכול בקלות לחשב צריך לתת לך מושג כמה חזק תכונה זו היא:

- `IF 3 > 5.7^4+MAX(4,3) True False`
- `IF "abcd" > "abc" True False`
- `IF "?ab*" = "1abdsg" True False`
- `IF 4 = "2*2" True False`
- `COMPARE 3+5/34 < 4.6/3/2`

### `DATE` ו `TIME` שדות תעופה

Aspose.Words תומך בכל מתגי התאריך והשעה הזמינים Microsoft Word, כמה דוגמאות הן:

- `DATE @ "d-MMM-yy"`
- `DATE @ "d/MM/yyyy h:mm am/pm`

### Mail Merge שדות תעופה

Aspose.Words אין הגבלה על המורכבות של Mail Merge שדות במסמכים שלך ותומכת קינון `IF` שדות פורמולה ואפילו יכולים לחשב את שם השדה המיזוג באמצעות נוסחה.

כמה דוגמאות Mail Merge שדות Aspose.Words תמיכה:

- - Mail merge מתגי שדה:
  `MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- שדות ממזגנים בנוסחת:
  `IF { `תגית: meRGFIELD` Value1 } >= { `תגית: meRGFIELD` Value2 } True False`
- לחשב את שם שדה המיזוג בזמן ריצה:
  `MERGEFIELD { `IF` { `תגית: meRGFIELD` Value1 } >= { `תגית: meRGFIELD` Value2 } FirstName"LastName" }`
- • העברה מותנית לתיעוד הבא במקור הנתונים:
  `NEXTIF { `תגית: meRGFIELD` Value1 } <= { =IF(-2.45 >= 6*{ `תגית: meRGFIELD` Value2 }, 2, -.45) }`

### פורמט Switches

שדה במסמך יכול להיות מתגי פורמט המציין כיצד יש לעצב את הערך המתקבל. Aspose.Words תומך מתגי פורמט הבאים:

- המונחים: date and time Format
- המונחים: number
- \\ Caps Caps
- שם הסרטון: FirstCap
- \\ נמוך יותר
- \\ עליון עליון
- \\* CHARFORMAT - תוצאה של פורמט לפי הדמות הראשונה של קוד השדה
- * MERGEFORMAT - תוצאה של פורמט לפי האופן שבו התוצאה הישנה מעוצבת

### Date מספר עיצוב שדות

מתי Aspose.Words חישוב תוצאה של שדה, זה לעתים קרובות צריך לחלק מחרוזת לתוך מספר או תאריך ערך וכן לעצב אותו בחזרה למחרוזת. כברירת מחדל Aspose.Words משתמשת בתרבות החוט הנוכחית כדי לבצע parsing ופורמטיקה בעת חישוב ערכי שדה במהלך עדכון שדה ועדכונים. mail merge. יש גם אפשרויות הניתנים בצורת [FieldOptions](https://reference.aspose.com/words/java/com.aspose.words/fieldoptions/) שיעור המאפשר שליטה נוספת על איזו תרבות משמשת במהלך עדכון שדה

* כברירת מחדל [FieldUpdateCultureSource](https://reference.aspose.com/words/java/com.aspose.words/fieldoptions/#getFieldUpdateCultureSource) הנכס מוגדר [CurrentThread](https://reference.aspose.com/words/java/com.aspose.words/fieldupdateculturesource/#CURRENT-THREAD) אילו שדות משתמשים בתרבות חוט נוכחית
* ניתן להגדיר את הנכס הזה [FieldCode](https://reference.aspose.com/words/java/com.aspose.words/fieldupdateculturesource/#FIELD-CODE) לכן השפה שנקבעה מקוד השדה של השדה משמשת לפורמט במקום

### עיצוב התרבות הנוכחית

כדי לשלוט בתרבות המשמשת במהלך חישוב שדה, רק להגדיר את התרבות **CurrentCulture** נכס לתרבות של הבחירה שלך לפני קבלת חישוב שדה.

דוגמה לקוד הבא מראה כיצד לשנות את התרבות המשמשת בתבנית שדות במהלך העדכון:

ExAMPLE (שימוש בחתלתף הציבורי הנוכחי של ה-ThreadSettings.get Locale) ו- Set Locale() במקום הפרטי `Thread.CurrentThread`.CurrentCulture)

באמצעות התרבות הנוכחית לפורמט שדות מאפשר למערכת לשלוט בקלות ובעקביות כיצד כל התחומים במסמך מעוצבים במהלך עדכון שדה.

### עיצוב תרבות במסמך

מצד שני, Microsoft Word פורמטים שכל שדה בודד מבוסס על שפת הטקסט שנמצאו בשטח (במיוחד, את הריצה מקוד השדה). לפעמים במהלך עדכון שדה זה עשוי להיות ההתנהגות הרצויה, למשל אם יש לך מסמכים גלובליים המכילים תוכן המורכב משפות רבות ושונות ירצה כל שדות לכבד את המקומיים המשמש הטקסט. Aspose.Words תומך גם בפונקציונליות זו.

The The The [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) הכיתה מספקת [FieldOptions](https://reference.aspose.com/words/java/com.aspose.words/document/#getFieldOptions) רכוש המכיל חברים אשר ניתן להשתמש כדי לשלוט כיצד שדות מעודכנים בתוך המסמך.

הדוגמה הבאה של הקוד מראה כיצד לציין היכן התרבות המשמשת לפורמט תאריך במהלך עדכון שדה ועדכונים. Mail Merge נבחר מתוך:

ExAMPLE
