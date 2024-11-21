---
title: שדות מבט Python
second_title: Aspose.Words עבור Python via .NET
articleTitle: שדות
linktitle: שדות
description: "אתה יכול לגשת שדה שינוי באמצעות Python. שדות המסמך טעונים לתוך Aspose.Words Document Object Model ()DOM)."
type: docs
weight: 10
url: /he/python-net/fields-overview/
timestamp: 2024-10-21-11-17-44
---


בדרך כלל שדה, כאשר מוכנס פנימה Microsoft Word, כבר מכיל ערך עדכני. לדוגמה, אם השדה הוא נוסחה או מספר דף, הוא יכלול ערך מחושב נכון לגרסה נתונה של המסמך. אבל אם יש לך יישום שיוצר או משנה מסמך עם שדות (לדוגמה משלב שני מסמכים או פופולטים עם נתונים) ולאחר מכן עבור המסמך להיות שימושי, כל התחומים צריכים להיות מעודכנים באופן אידיאלי.

שדה מורכב:

![fields-aspose-words](/words/python-net/fields-overview/fields-overview-1.png)

- - תחילת השדה ונקודות קצה משמשות כדי לכלול את התוכן שמרכיבים את קוד השדה (בדרך כלל כטקסט רגיל)
- קצה השדה והשדה כולל את התוצאה של השדה. זה יכול להיות מורכב סוגים שונים של תוכן החל מריצה של טקסט עד פסקאות לטבלאות.
- שדות מסוימים עשויים לא להיות מפריד, כלומר כל התוכן יוצר את קוד השדה.
- - קוד השדה מגדיר את ההתנהגות של השדה והוא מורכב מזהה שדה ולעתים קרובות פרמטרים אחרים כגון שם שדה ומתגים.
- - התוצאה של השדה מכילה את ההערכה האחרונה של התחום. ערך זה נשמר בתוצאה השדה והוא מה שמוצג למשתמש. ייתכן שלתחומים מסוימים אין תוצאה של שדה ולכן לא יציגו שום דבר במסמך. כמו כן, ייתכן שתחומים מסוימים עדיין לא מעודכנים ולכן גם לא יהיו תוצאות שדה.

הנה מבט על איך שדה מאוחסן Aspose.Words על ידי שימוש ב-"DocumentExplorer" *דוגמה שניתן למצוא [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples/DocumentExplorer).

![document-explorer-aspose-words](/words/python-net/fields-overview/fields-overview-2.png)

Aspose.Words היא ספריית כיתה המיועדת לעיבוד לצד השרת של Microsoft Word מסמכים ותומכים בתחומים בדרכים הבאות:

- כל השדות במסמך נשמרים במהלך פתוחים / שעות מנוחה והמרות.
- - ניתן לעדכן תוצאות של כמה מהתחומים הפופולריים ביותר.

## שדות Microsoft Word

שדות Microsoft Word המסמכים מורכבים. ישנם מעל 50 סוגים של שדה (כל אחד צריך הליך חישוב תוצאה משלו), נוסחאות וביטויים, סימניות ופניות, פונקציות ומתגים שונים. גם שדות ניתן לקנן. בדרך כלל כאשר מסמך נפתח, התוצאה של השדה (הערך של השדה) מוצגת לכל התחומים במסמך. אתה יכול לעקוף את התצוגה של תוצאות שדה או קודי שדה ב Microsoft Word לכל התחומים על ידי לחיצה **ALT+F9**.

| קוד שדה | תוצאות שדה |
|  :-  |  :-  |
| ![field-code-result-aspose-words](/words/python-net/fields-overview/fields-overview-3.png) | ![todo:image_alt_text](/words/python-net/fields-overview/fields-overview-4.png) |

### הכנסת שדות Microsoft Word

להכניס שדה Microsoft Word:

1.1 1. לחץ על **Insert** התפריט.
1.1 1. לחץ על **Quick Parts** הורדת התפריט
1.1 1. בחר בחר **Field**
1.1 1. אתה מוצג עם מסך המאפשר לך להיכנס לפרטים של השדה. בצד שמאל ניתן רשימה של התחומים האפשריים בצד ימין הוא מסך לערוך באופן ויזואלי את המאפיינים של השדה.<br/>
![field-edit-aspose-words](/words/python-net/fields-overview/fields-overview-5.png)
1.1 1. בנוסף, אתה יכול ללחוץ על **Field Codes** כפתור המאפשר לך לכתוב ישירות את קוד השדה.<br/>
![field-properties-aspose-words](/words/python-net/fields-overview/fields-overview-6.png)
1.1 1. ניתן גם להוסיף Switch על ידי שימוש **Options** כפתור כפתור<br/>
![field-options-aspose-words](/words/python-net/fields-overview/fields-overview-7.png)
1.1 1. באמצעות כל שיטה, למלא את השדות הרצויים עם המידע המתאים ולאחר מכן הקש על **Ok**.
1.1 1. השדה מוכנס לתוך המסמך בעמדה הנוכחית.<br/>
![insert-field-aspose-words](/words/python-net/fields-overview/fields-overview-8.png)

### העלאת שדות Microsoft Word

כדי לעדכן שדה אחד Microsoft Word:

1.1 1. הזיזו את הטיפול לתוך השדה שברצונך לעדכן.
1.1 1. Press **F9** לעדכן את השדה.

לעדכן את כל התחומים Microsoft Word:

1.1 1. Press **Ctrl+A** לבחור את כל התוכן במסמך.
1.1 1. Press **F9** לעדכן את כל התחומים שנמצאו בתוך הבחירה.

### מעבר בין הצגת קוד שדה ושדה

כדי לעקוף את קודי שדה של שדה אחד Microsoft Word:

1.1 1. הזיזו את הטיפול לתוך השדה הרצוי.
1.1 1. Press **SHIFT+F9** לעקוף את קוד השדה רק עבור שדה זה.

כדי לעקוף את קודי שדה של כל התחומים Microsoft Word:

1.1 1. Press **ALT+F9**

### המרת שדות לטקסט סטטי Microsoft Word

להמיר שדה דינמי לטקסט סטטי Microsoft Word:

1.1 1. הזיזו את הטיפול לתוך השדה שברצונך להמיר.
1.1 1. Press **Ctrl+Shift+F9** להמיר את השדות לטקסט סטטי.

### הסרת שדה בתוך Microsoft Word

כדי להסיר שדה Microsoft Word:

1.1 1. בחר את כל התוכן המרכיבים את השדה. אם קודים שדה מוצגים אז את פתיחת וסיום יש לבחור גם.
1.1 1. Press **Delete** להסיר את כל השדה.

## שדות Aspose.Words

כאשר מסמך טעון <span notrans="<span notrans=" Aspose.Words"=""></span>" שדות המסמך טעונים לתוך Aspose.Words Document Object Model קבוצה של רכיבים נפרדים (nodes). שדה אחד טעון כאוסף של [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/), [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) ו [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) יחד עם התוכן בין נקודות אלה. אם לשדה אין תוצאה של שדה אז לא יהיה [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) צומת. כל הצמתים האלה תמיד נמצאים בקו הפנימי (כילדים של [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) או [SmartTag](https://reference.aspose.com/words/python-net/aspose.words.markup/smarttag/).

התוכן שהופך את קוד השדה נשמר כמו [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) צומת בין [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) ו [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/). התוצאה של השדה נשמרת בין [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) ו [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) צמתים וניתן להמציא סוגים שונים של תוכן. בדרך כלל התוצאה של השדה מכילה רק טקסט עשוי [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) אבל זה אפשרי עבור [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) צומת להיות ממוקם בפסקה שונה לחלוטין, ובכך להפוך את התוצאה שדה המורכבת מנקודות חסימת כגון ריצוף. [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) ו [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) גם חסרונות.

In In In Aspose.Words כל אחד **FieldXXX** צמתים נובעים [FieldChar](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/). מעמד זה מספק נכס כדי לבדוק את סוג השדה המיוצג על ידי הצומת שצוין דרך הצומת שצוין. [FieldChar.field_type](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/field_type/) רכוש. לדוגמא [FieldType.FIELD_MERGE_FIELD](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtype/#field_merge_field) מייצג שדה מיזוג במסמך.

{{% alert color="primary" %}}

ישנם כמה תחומים ספציפיים הקיימים במסמך Word שאינם מיובאים לתוך Aspose.Words כאוסף **FieldXXX** צומת למשל, `LINK` שדה ו `INCLUDEPICTURE` שדה מיובא Aspose.Words כמו [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) אובייקט. אובייקט זה מספק תכונות לעבוד עם נתוני התמונה בדרך כלל מאוחסנים בתחומים אלה.

גם שדות הטופס מיובאים Aspose.Words כמעמד מיוחד משלהם. The The The [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) הכיתה מייצגת שדה צורה במסמך Word ומספקת שיטות נוספות שהן ספציפיות לתחום צורה.

{{% /alert %}}

### שדות נתמך במהלך עדכון

חישוב השדות הבאים נתמך בגרסה הנוכחית של Aspose.Words:

- המונחים: (formula field)
- `ADDRESSBLOCK`
- `AUTHOR`
- `COMPARE`
- `CREATEDATE`
- `DATE`
- `DOCPROPERTY`
- `DOCVARIABLE`
- `GREETINGLINE`
- `IF`
- `INCLUDETEXT`
- `MERGEFIELD`
- `MERGEREC`
- `MERGESEQ`
- `NEXT`
- `NEXTIF`
- `NUMPAGES`
- `PAGE`
- `PAGEREF`
- `REF`
- `SECTION`
- `SECTIONPAGES`
- `SEQ`
- `SET`
- `STYLEREF`
- `TIME`
- `TITLE`
- `TOA`
- - `TOC` (כולל TOT ו- TOF)
- TC

### המונחים: psing

Aspose.Words עקבו אחרי The Way Microsoft Word תהליכים שדות וכתוצאה מכך הוא מטפל נכון:

- שדות נטושים
  `: IF { =OR({ COMPARE { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- טיעון שדה יכול להיות תוצאה של שדה מקונן.
- שדות ניתן לקנן בתוך קוד שדה, כמו גם בתוצאות השדה.
- חללים / אין חללים, ציטוטים / לא ציטוטים, בריחה דמויות בתחומים וכו ':
  `MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- שדות המשתרעים על פני סעיפים מרובים.

#### פורמולה שדות

Aspose.Words מספק יישום רציני מאוד של מנוע הנוסחה ותומך הבאים:

- מפעילי אריתמטיים ולוגיים:
  `=(54+4*(6-77)-(5))+(-6-5)/4/5`
- פונקציות:
  `=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- המלצות להערות ספרים:
  `=IF(C>4, 5,ABS(A)*.76) +3.85`
- מספר מתגים:
  `=00000000 \\\# "$#,##0.00;($#,##0.00)"`

הפונקציות הבאות בביטויים נתמכות: `ABS`, `AND`, `AVERAGE`, `COUNT`, `DEFINED`, `FALSE`, `IF`, `INT`, `MAX`, `MIN`, `MOD`, `NOT`, `OR`, `PRODUCT`, `ROUND`, `SIGN`, `SUM`, TRUE.

#### `IF` ו `COMPARE` שדות שדות שדות

רק חלק `IF` ביטויים Aspose.Words יכול בקלות לחשב צריך לתת לך מושג כמה חזק תכונה זו היא:

- `IF 3 > 5.7^4+MAX(4,3) True False`
- `IF "abcd" > "abc" True False`
- `IF "?ab*" = "1abdsg" True False`
- `IF 4 = "2*2" True False`
- `COMPARE 3+5/34 < 4.6/3/2`

#### `DATE` ו `TIME` שדות שדות שדות

Aspose.Words תומך בכל מתגי התאריך והשעה הזמינים Microsoft Word, כמה דוגמאות הן:

- `DATE @ "d-MMM-yy"`
- `DATE @ "d/MM/yyyy h:mm am/pm`

#### Mail Merge שדות שדות שדות

Aspose.Words אין הגבלה על המורכבות של mail merge שדות במסמכים שלך ותומכת קינון `IF` שדות פורמולה ויכולים אפילו לחשב את שם שדה המיזוג באמצעות נוסחה.

כמה דוגמאות mail merge שדות Aspose.Words תמיכה:

- - Mail merge מתגי שדה:
  `MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- שדות מתמזגים בנוסחת:
  `IF { `תגית: meRGFIELD` Value1 } >= { `תגית: meRGFIELD` Value2 } True False`
- חישוב שמו של שדה המיזוג בזמן ריצה:
  `MERGEFIELD { `IF` { `תגית: meRGFIELD` Value1 } >= { `תגית: meRGFIELD` Value2 } FirstName"LastName" }`
- מעבר זמני לתיעוד הבא במקור הנתונים:
  `NEXTIF { `תגית: meRGFIELD` Value1 } <= { =IF(-2.45 >= 6*{ `תגית: meRGFIELD` Value2 }, 2, -.45) }`

#### פורמט Switches

שדה במסמך יכול להיות מתגי פורמט המציין כיצד יש לעצב את הערך המתקבל. Aspose.Words תומך מתגי פורמט הבאים:

- המונחים: date and time Format
- המונחים: number
- \\ Caps Caps
- שם הסרטון: FirstCap
- \\ נמוך יותר
- \\ עליון עליון
- * CHARFORMAT - תוצאה של פורמט לפי האופי הראשון של קוד השדה.
- * MERGEFORMAT - תוצאה של פורמט לפי האופן שבו התוצאה הישנה מעוצבת.

#### Date מספר עיצוב שדות

מתי Aspose.Words חישוב תוצאה של שדה, זה לעתים קרובות צריך לחלק מחרוזת לתוך מספר או תאריך ערך וכן לעצב אותו בחזרה למחרוזת. כברירת מחדל Aspose.Words משתמשת בתרבות החוט הנוכחית כדי לבצע parsing ופורמטיקה בעת חישוב ערכי שדה במהלך עדכון שדה ועדכונים. mail merge. יש גם אפשרויות הניתנים בצורת [FieldOptions](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldoptions/) מעמד המאפשר שליטה נוספת על איזו תרבות משמשת במהלך עדכון שדה.

- - כברירת מחדל [FieldOptions.field_update_culture_source](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldoptions/field_update_culture_source/) הנכס נקבע [FieldUpdateCultureSource.CURRENT_THREAD](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldupdateculturesource/#current_thread) אילו שדות משתמשים בתרבות החוט הנוכחית.
- - ניתן להגדיר את הנכס הזה [FieldUpdateCultureSource.FIELD_CODE](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldupdateculturesource/#field_code) לכן השפה שנקבעה מקוד השדה של השדה משמשת לפורמט במקום זאת.

#### עיצוב באמצעות התרבות הנוכחית של

כדי לשלוט בתרבות המשמשת במהלך חישוב שדה, רק להשתמש **מקומי.setlocale** שיטה להגדיר את התרבות של הבחירה שלך לפני מעורר חישוב שדה.
להלן דוגמה מראה כיצד לשנות את התרבות המשמשת בעיצוב שדות במהלך העדכון.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ChangeLocale.py" >}}

שימוש בתרבות הנוכחית לפורמט שדות מאפשר למערכת לשלוט בקלות ובעקביות כיצד כל התחומים במסמך מעוצבים במהלך עדכון שדה.

#### עיצוב התרבות במסמך

מצד שני, Microsoft Word פורמטים כל שדה בודד מבוסס על שפת הטקסט שנמצאו בשטח (במיוחד, את הריצה מקוד השדה). לפעמים במהלך עדכון שדה זה עשוי להיות ההתנהגות הרצויה, למשל אם יש לך מסמכים גלובליים המכילים תוכן המורכב משפות רבות ושונות ירצה כל שדות לכבד את המקומיים המשמש הטקסט. Aspose.Words תומך גם בפונקציונליות זו.

The The The [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) הכיתה מספקת [field_options](https://reference.aspose.com/words/python-net/aspose.words/document/field_options/) רכוש המכיל חברים אשר ניתן להשתמש כדי לשלוט כיצד שדות מעודכנים בתוך המסמך. להלן דוגמה מראה כיצד לציין היכן התרבות המשמשת לתבנית תאריך במהלך עדכון שדה ועדכונים mail merge הוא נבחר.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ChangeFieldUpdateCultureSource.py" >}}

## מציאת קוד השדה והשדה

שדה אשר מוכנס באמצעות [DocumentBuilder.insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) חוזר [Field](https://reference.aspose.com/words/python-net/aspose.words.fields/field/) אובייקט. זוהי מחלקה חזיתית המספקת שיטות שימושיות כדי למצוא במהירות תכונות כאלה של שדה. שימו לב אם אתם מחפשים רק את שמות שדות המיזוג במסמך, תוכלו להשתמש בשיטה הבנויה. [MailMerge.get_field_names](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_field_names/). להלן דוגמאות כיצד לקבל שמות של כל שדות המיזוג במסמך.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-GetFieldNames.py" >}}

## איך להגות Merge Fields

להלן דוגמה מראה כיצד להגדיר מחדש שדות מתמזגים במסמך Word.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-RenameMergeFields.py" >}}
