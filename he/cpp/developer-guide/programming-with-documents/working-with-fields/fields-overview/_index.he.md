---
title: סקירת שדות ב C++
second_title: Aspose.Words עבור C++
articleTitle: סקירת שדות
linktitle: סקירת שדות
description: "שדות מופיעים בפרטים, קודי שדה ותוצאות שדה מוסברים ב Aspose.Words עבור C++."
type: docs
weight: 10
url: /he/cpp/fields-overview/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words היא ספריית כיתות המיועדת לעיבוד בצד השרת של מסמכים Microsoft Word ותומכת בשדות בדרכים הבאות:

- כל השדות במסמך נשמרים במהלך פתיחה / שמירה והמרות
- ניתן לעדכן את התוצאות של רוב השדות

במאמר זה נלמד עוד על מבנה השדה, השדות הנתמכים ב Aspose.Words ופרטים על עבודה עם שדות כאלה.

## מבנה שדות

שדה מורכב מ:

- נקודות ההתחלה והפרדה של השדה משמשות כדי לכלול את התוכן המרכיב את קוד השדה (בדרך כלל כטקסט פשוט).
- מפריד השדה וסוף השדה מקיפים את תוצאת השדה. זה יכול להיות מורכב מסוגים שונים של תוכן החל מריצות טקסט לפסקאות ועד טבלאות.
- ייתכן שלחלק מהשדות אין מפריד, מה שאומר שכל התוכן מהווה את קוד השדה.
- קוד השדה מגדיר את התנהגות השדה והוא מורכב ממזהה השדה ולעתים קרובות פרמטרים אחרים כגון שמות שדות ומתגים.
- תוצאת השדה מכילה את ההערכה האחרונה של השדה. ערך זה מאוחסן בשדה תוצאה וזה מה שמוצג למשתמש. שדות מסוימים עשויים שלא להיות כל תוצאות שדה ולכן לא יציג שום דבר במסמך. כמו כן, ייתכן שחלק מהשדות לא יעודכנו עדיין ולכן גם לא תהיה להם תוצאת שדה.

![fields-overview-aspose-words-cpp-1](fields-overview-1.png)

התוכן המרכיב את קוד השדה מאוחסן כ [Run](https://reference.aspose.com/words/cpp/class/aspose.words.run) צמתים בין [FieldStart](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_start/) ו [FieldSeparator](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_separator/). תוצאת השדה מאוחסנת בין הצמתים **FieldSeparator** ו - [FieldEnd](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_end/) ויכולה להיות מורכבת מסוגים שונים של תוכן. בדרך כלל תוצאת השדה מכילה רק טקסט המורכב מ **Run** צמתים, אולם יתכן שהצומת **FieldEnd** יהיה ממוקם בפסקה שונה לחלוטין, ובכך הופך את תוצאת השדה למורכבת מ [צמתים ברמת הבלוק](/words/cpp/logical-levels-of-nodes-in-a-document/) כמו **Table** ו **Paragraph** צמתים גם כן.

הנה תצוגה של איך שדה מאוחסן ב Aspose.Words באמצעות הדוגמה " *DocumentExplorer"*.

![fields-overview-aspose-words-cpp-2](fields-overview-2.png)

## שדות במודל אובייקט המסמך Aspose.Words (DOM)

כאשר מסמך נטען לתוך Aspose.Words, השדות של המסמך נטענים לתוך [Aspose.Words מודל אובייקט מסמך](/words/cpp/aspose-words-document-object-model/) כמערכת של רכיבים נפרדים (צמתים). שדה יחיד נטען כאוסף של **FieldStart**, **FieldSeparator** ו **FieldEnd** צמתים יחד עם התוכן שבין הצמתים הללו. אם לשדה אין תוצאת שדה אז לא יהיה צומת **FieldSeparator**. כל הצמתים האלה תמיד נמצאים בשורה (כילדים של [Paragraph](https://reference.aspose.com/words/cpp/class/aspose.words.paragraph) או [SmartTag](https://reference.aspose.com/words/cpp/class/aspose.words.markup.smart_tag/)).

ב Aspose.Words כל אחד מהצמתים **FieldXXX** נובע מ [FieldChar](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_char/). מחלקה זו מספקת מאפיין לבדיקת סוג השדה המיוצג על ידי הצומת שצוין דרך המאפיין [FieldType](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldchar/get_fieldtype/). לדוגמה **FieldType.FieldMergeField** מייצג שדה מיזוג במסמך.

{{% alert color="primary" %}}

ישנם כמה שדות מסוימים הקיימים במסמך Word שאינם מיובאים ל Aspose.Words כאוסף של **FieldXXX** צמתים. לדוגמה, שדה `LINK` ושדה `INCLUDEPICTURE` מיובאים ל Aspose.Words כאובייקט `Shape`. אובייקט זה מספק מאפיינים לעבודה עם נתוני התמונה המאוחסנים בדרך כלל בשדות אלה. כדי לייבא שדה `INCLUDEPICTURE` כצמתים **FieldXXX** יש לציין את האפשרות [PreserveIncludePictureField](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_preserveincludepicturefield/) כ **true**.

שדות טופס מיובאים גם ל Aspose.Words ככיתה מיוחדת משלהם. הכיתה [FormField](https://reference.aspose.com/words/cpp/class/aspose.words.fields.form_field/) מייצגת שדה טופס במסמך Word ומספקת שיטות נוספות הספציפיות לשדה טופס.

{{% /alert %}}

## שדות נתמכים

חישוב השדות הבאים נתמך בגרסה הנוכחית של Aspose.Words:

- = (נוסחה)
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
- `TOC`
- `USERADDRESS`
- `USERINITIALS`
- `USERNAME`

## ניתוח שדה מתוחכם

Aspose.Words עוקב אחר הדרך Microsoft Word מעבד שדות וכתוצאה מכך הוא מטפל נכון:

- שדות מקוננים:
  `IF { =OR({ COMPARE { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- טיעון שדה יכול להיות תוצאה של שדה מקונן
- ניתן לקנן שדות בתוך קוד שדה כמו גם בתוצאת השדה
- רווחים / ללא רווחים, ציטוטים/ללא ציטוטים, דמויות בריחה בשדות וכו'.:
  `MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- שדות המשתרעים על פני מספר פסקאות

### שדות פורמולה

Aspose.Words מספק יישום רציני מאוד של מנוע הנוסחה ותומך בדברים הבאים::

- מפעילים אריתמטיים ולוגיים:
  `=(54+4*(6-77)-(5))+(-6-5)/4/5`
- פונקציות:
  `=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- הפניות לסימניות:
  `=IF(C>4, 5,ABS(A)*.76) +3.85`
- מתגי עיצוב מספרים:
  `=00000000 \\\# "$#,##0.00;($#,##0.00)"`

הפונקציות הבאות בביטויים נתמכות: `ABS`, `AND`, `AVERAGE`, `COUNT`, `DEFINED`, `FALSE`, `IF`, `INT`, `MAX`, `MIN`, `MOD`, `NOT`, `OR`, `PRODUCT`, `ROUND`, `SIGN`, `SUM`, TRUE.

### `IF` and `COMPARE` Fields

רק חלק מהביטויים `IF` ש Aspose.Words יכול לחשב בקלות אמור לתת לך מושג עד כמה התכונה הזו חזקה:

- `IF 3 > 5.7^4+MAX(4,3) True False`
- `IF "abcd" > "abc" True False`
- `IF "?ab*" = "1abdsg" True False`
- `IF 4 = "2*2" True False`
- `COMPARE 3+5/34 < 4.6/3/2`

### `DATE` and `TIME` Fields

Aspose.Words תומך בכל מתגי העיצוב של התאריך והשעה הזמינים ב Microsoft Word, כמה דוגמאות הן:

- `DATE @ "d-MMM-yy"`
- `DATE @ "d/MM/yyyy h:mm am/pm`

### Mail Merge שדות

Aspose.Words אינו מטיל הגבלה על המורכבות של Mail Merge שדות במסמכים שלך ותומך מקונן `IF` ושדות נוסחה ואף יכול לחשב את שם שדה המיזוג באמצעות נוסחה.

כמה דוגמאות לשדות Mail Merge שתומכים Aspose.Words:

- Mail merge שדה מתגים:
  `MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- שדות מיזוג מקוננים בנוסחה:
  `IF { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } True False`
- חשב את שם שדה המיזוג בזמן ריצה:
  `MERGEFIELD { `IF` { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } FirstName"LastName" }`
- מעבר מותנה לרשומה הבאה במקור הנתונים:
  `NEXTIF { `MERGEFIELD` Value1 } <= { =IF(-2.45 >= 6*{ `MERGEFIELD` Value2 }, 2, -.45) }`

### מתגי פורמט

בשדה במסמך יכולים להיות מתגי עיצוב המציינים כיצד יש לעצב את הערך המתקבל. Aspose.Words תומך במתגי הפורמט הבאים:

- @ - עיצוב תאריך ושעה
- \\\# - עיצוב מספר
- \\\\\\\\* Caps
- \\\\\\\\* FirstCap
- \\\\\\\\* Lower
- \\\\\\\\* Upper
- \\\\\ \\\* CHARFORMAT - פורמט תוצאה לפי התו הראשון של קוד השדה
- \\\\\ \\\* MERGEFORMAT - פורמט תוצאה לפי אופן עיצוב התוצאה הישנה

### עיצוב תאריך ומספר בשדות

כאשר Aspose.Words מחשב תוצאת שדה, לעתים קרובות הוא צריך לנתח מחרוזת לערך מספר או תאריך וגם לעצב אותה בחזרה ל string.By ברירת מחדל Aspose.Words משתמש בתרבות החוט הנוכחית כדי לבצע ניתוח ועיצוב בעת חישוב ערכי שדה במהלך עדכון שדה ו mail merge. ישנן גם אפשרויות הניתנות בצורה של [FieldOptions](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_options/) מחלקה המאפשרת שליטה נוספת באיזו תרבות משתמשים במהלך עדכון שדה.

- כברירת מחדל, המאפיין [FieldUpdateCultureSource](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldoptions/get_fieldupdateculturesource/) מוגדר ל [CurrentThread](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldupdateculturesource/) אשר מעצב שדות באמצעות תרבות החוט הנוכחית
- ניתן להגדיר מאפיין זה ל [FieldCode](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldupdateculturesource/) כך שהגדרת השפה מקוד השדה של השדה משמשת לעיצוב במקום זאת

### עיצוב באמצעות התרבות של החוט הנוכחי

כדי לשלוט בתרבות המשמשת במהלך חישוב שדה, פשוט הגדר את המאפיין **CurrentCulture** לתרבות שבחרת לפני שתפנה לחישוב שדה.

דוגמת הקוד הבאה מראה כיצד לשנות את התרבות המשמשת בשדות עיצוב במהלך העדכון:

EXAMPLE

השימוש בתרבות הנוכחית לעיצוב שדות מאפשר למערכת לשלוט בקלות ובעקביות באופן שבו כל השדות במסמך מעוצבים במהלך עדכון השדה.

### עיצוב באמצעות התרבות במסמך

מצד שני, Microsoft Word מעצב כל שדה בודד בהתבסס על שפת הטקסט שנמצא בשדה (במיוחד, הריצות מקוד השדה). לפעמים במהלך עדכון שדה זו עשויה להיות ההתנהגות הרצויה, למשל אם יש לך מסמכים גלובליים המכילים תוכן המורכב משפות רבות ושונות והיית רוצה שכל שדות יכבדו את האזור המשמש מהטקסט. Aspose.Words תומך גם בפונקציונליות זו.

המחלקה [Document](https://reference.aspose.com/words/cpp/class/aspose.words.document) מספקת מאפיין [FieldOptions](https://reference.aspose.com/words/cpp/aspose.words/document/get_fieldoptions/) המכיל חברים שניתן להשתמש בהם כדי לשלוט באופן עדכון השדות במסמך.

דוגמת הקוד הבאה מראה כיצד לציין מהיכן נבחרה התרבות המשמשת לעיצוב תאריך במהלך עדכון שדה ו Mail Merge:

EXAMPLE
