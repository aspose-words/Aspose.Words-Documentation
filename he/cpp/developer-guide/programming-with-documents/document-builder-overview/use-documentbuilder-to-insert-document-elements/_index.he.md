---
title: השתמש DocumentBuilder כדי להוסיף רכיבי מסמך
second_title: Aspose.Words עבור C++
articleTitle: השתמש DocumentBuilder כדי להוסיף רכיבי מסמך
linktitle: השתמש DocumentBuilder כדי להוסיף רכיבי מסמך
type: docs
description: "הכנס רכיבי מסמך באמצעות בונה המסמכים ב C++."
weight: 80
url: /he/cpp/use-documentbuilder-to-insert-document-elements/
timestamp: 2024-01-27-14-07-04
---

`DocumentBuilder` משמש לשינוי מסמכים. מאמר זה מסביר ומתאר כיצד לבצע מספר משימות:

## הוספת מחרוזת טקסט

כל שעליך לעשות הוא להעביר את מחרוזת הטקסט שעליך להכניס למסמך לשיטה `DocumentBuilder.Write`. עיצוב הטקסט נקבע על ידי המאפיין `Font`. אובייקט זה מכיל תכונות גופן שונות (שם גופן, גודל גופן, צבע וכן הלאה). כמה תכונות גופן חשובות מיוצגות גם על ידי DocumentBuilder מאפיינים כדי לאפשר לך לגשת אליהם ישירות. אלה הם תכונות בוליאניות `Font.Bold`, `Font.Italic`, ו `Font.Underline`.

שים לב שעיצוב התווים שהגדרת יחול על כל הטקסט שהוכנס מהמיקום הנוכחי במסמך ואילך.

לדוגמה, הוספת טקסט מעוצב באמצעות DocumentBuilder.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-WriteAndFont-WriteAndFont.cpp" >}}

## הוספת פסקה

 `DocumentBuilder.Writeln` מוסיף מחרוזת טקסט גם למסמך, אך בנוסף, הוא מוסיף מעבר פסקה. עיצוב הגופן הנוכחי מוגדר גם על ידי המאפיין `DocumentBuilder.Font` ועיצוב הפסקה הנוכחי נקבע על ידי המאפיין `DocumentBuilder.ParagraphFormat`. להלן דוגמה מראה כיצד להכניס פסקה למסמך.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cpp" >}}

## הוספת טבלה

האלגוריתם הבסיסי ליצירת טבלה באמצעות DocumentBuilder הוא פשוט:

1. הפעל את הטבלה באמצעות `DocumentBuilder.StartTable`.
1. הכנס תא באמצעות `DocumentBuilder.InsertCell`. פעולה זו מתחילה באופן אוטומטי שורה חדשה. במידת הצורך, השתמש במאפיין `DocumentBuilder.CellFormat` כדי לציין עיצוב תאים.
1. הכנס תוכן תא בשיטות `DocumentBuilder`.
1. חזור על שלבים 2 ו -3 עד להשלמת השורה.
1. התקשר `DocumentBuilder.EndRow` לסיום השורה הנוכחית. במידת הצורך, השתמש במאפיין `DocumentBuilder.RowFormat` כדי לציין עיצוב שורות.
1. חזור על שלבים 2-5 עד להשלמת הטבלה.
1. התקשר `DocumentBuilder.EndTable` כדי לסיים את בניין השולחן. שיטות יצירת הטבלה המתאימות DocumentBuilder מתוארות להלן.

### פתיחת שולחן

קריאה `DocumentBuilder.StartTable` היא הצעד הראשון בבניית טבלה. זה יכול להיקרא גם בתוך תא, ובמקרה זה הוא מתחיל שולחן מקונן. השיטה הבאה להתקשר היא `DocumentBuilder.InsertCell`.

### הכנסת תא

לאחר שתתקשר `DocumentBuilder->InsertCell`, נוצר תא חדש וכל תוכן שתוסיף בשיטות אחרות של הכיתה `DocumentBuilder` יתווסף לתא הנוכחי. כדי להפעיל תא חדש באותה שורה, התקשר שוב `DocumentBuilder->InsertCell`. השתמש במאפיין `DocumentBuilder.CellFormat` כדי לציין עיצוב תאים. הוא מחזיר אובייקט `CellFormat` המייצג את כל העיצוב עבור תא טבלה.

### סיום שורה

התקשר `DocumentBuilder.EndRow` כדי לסיים את השורה הנוכחית. אם אתה מתקשר `DocumentBuilder->InsertCell` מיד לאחר מכן, הטבלה ממשיכה בשורה חדשה.

השתמש במאפיין `DocumentBuilder.RowFormat` כדי לציין עיצוב שורות. הוא מחזיר אובייקט `RowFormat` המייצג את כל העיצוב עבור שורת טבלה.

### סיום שולחן

התקשר `DocumentBuilder.EndTable` כדי לסיים את הטבלה הנוכחית. שיטה זו צריכה להיקרא רק פעם אחת אחרי `DocumentBuilder->EndRow` נקרא. כאשר נקרא, `DocumentBuilder.EndTable` מעביר את הסמן מהתא הנוכחי למצב ממש אחרי הטבלה. הדוגמה הבאה מדגימה כיצד לבנות טבלה מעוצבת המכילה 2 שורות ו -2 עמודות.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderBuildTable-DocumentBuilderBuildTable.cpp" >}}

## הוספת הפסקה

אם ברצונך להתחיל במפורש שורה, פסקה, עמודה, קטע או עמוד חדשים, התקשר `DocumentBuilder.InsertBreak`. העבירו לשיטה זו את סוג ההפסקה שעליכם להכניס המיוצג על ידי ספירת `BreakType`. להלן דוגמה מראה כיצד להוסיף מעברי דף למסמך.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertBreak-DocumentBuilderInsertBreak.cpp" >}}

## הוספת תמונה

DocumentBuilder מספק מספר עומסי יתר של שיטת `DocumentBuilder->InsertImage` המאפשרת להכניס תמונה מוטבעת או צפה. אם התמונה היא EMF או WMF מטא-קובץ, היא תוכנס למסמך בפורמט מטא-קובץ. כל שאר התמונות יאוחסנו בפורמט PNG. שיטת `DocumentBuilder->InsertImage` יכולה להשתמש בתמונות ממקורות שונים:

- מקובץ או `URL` על ידי העברת פרמטר מחרוזת `DocumentBuilder->InsertImage`.
- מזרם על ידי העברת פרמטר `Stream` `DocumentBuilder->InsertImage`.
- מאובייקט תמונה על ידי העברת פרמטר תמונה `DocumentBuilder->InsertImage`.
- ממערך בתים על ידי העברת פרמטר מערך בתים `DocumentBuilder.InsertImage`.עבור כל אחת מהשיטות `DocumentBuilder->InsertImage`, ישנם עומסי יתר נוספים המאפשרים לך להוסיף תמונה עם האפשרויות הבאות:
- מוטבע או צף במיקום מסוים, למשל, `DocumentBuilder->InsertImage`.
- סולם אחוזים או גודל מותאם אישית, למשל, `DocumentBuilder.InsertImage`. יתר על כן, שיטת `DocumentBuilder->InsertImage` מחזירה אובייקט `Shape` שנוצר והוכנס זה עתה, כך שתוכל לשנות עוד יותר את מאפייני הצורה.

### הוספת תמונה מוטבעת

העבר מחרוזת אחת המייצגת קובץ המכיל את התמונה ל - `DocumentBuilder->InsertImage` כדי להכניס את התמונה למסמך כגרפיקה מוטבעת. הדוגמה הבאה מראה כיצד להוסיף תמונה מוטבעת במיקום הסמן למסמך.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertInlineImage.cpp" >}}

### הוספת תמונה צפה (ממוקמת לחלוטין)

דוגמה זו מכניסה תמונה צפה מקובץ או `URL` במיקום ובגודל מוגדרים.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertFloatingImage.cpp" >}}

## הוספת סימניה

כדי להוסיף סימניה למסמך, עליך לבצע את הפעולות הבאות:

1. התקשר `DocumentBuilder->StartBookmark` והעביר לו את השם הרצוי של הסימנייה.
1. הכנס את טקסט הסימנייה בשיטות DocumentBuilder.
1. התקשר `DocumentBuilder.EndBookmark` והעביר לו את אותו השם שבו השתמשת עם **DocumentBuilder->StartBookmark**.
1. סימניות יכולות לחפוף ולפרוס כל טווח. כדי ליצור סימניה חוקית עליך להתקשר גם `DocumentBuilder->StartBookmark` וגם `DocumentBuilder->EndBookmark` עם אותו שם סימניה.

{{% alert color="primary" %}}

סימניות או סימניות שנוצרו בצורה גרועה עם שמות כפולים יתעלמו בעת שמירת המסמך.

{{% /alert %}}

הדוגמה הבאה מראה כיצד להוסיף סימניה למסמך באמצעות בונה מסמכים.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertBookmark-DocumentBuilderInsertBookmark.cpp" >}}

## הוספת שדה `Form`

שדות טופס הם מקרה מסוים של שדות Word המאפשר "אינטראקציה" עם המשתמש. שדות טופס ב Microsoft Word כוללים תיבת טקסט, תיבה משולבת ו checkbox.DocumentBuilder מספק שיטות מיוחדות להכנסת כל סוג של שדה טופס למסמך: `DocumentBuilder.InsertTextInput`, `DocumentBuilder->InsertCheckBox` ו `DocumentBuilder.InsertComboBox`. שים לב שאם אתה מציין שם לשדה הטופס, סימניה נוצרת אוטומטית עם אותו שם.

### הוספת קלט טקסט

 `DocumentBuilder.InsertTextInput` כדי להכניס תיבת טקסט למסמך. להלן דוגמה מראה כיצד להוסיף שדה טופס קלט טקסט למסמך.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertTextInputFormField.cpp" >}}

### הוספת תיבת סימון

התקשר `DocumentBuilder.InsertCheckBox` כדי להכניס checkbox למסמך. הדוגמה הבאה מראה כיצד להוסיף שדה טופס checkbox למסמך.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertCheckBoxFormField.cpp" >}}

### הוספת תיבה משולבת

התקשר `DocumentBuilder.InsertComboBox` כדי להכניס תיבה משולבת למסמך. להלן דוגמא מראה כיצד להוסיף שדה טופס תיבה משולבת למסמך.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertComboBoxFormField.cpp" >}}

## הוספת אזור ברמת השדה

לקוחות יכולים לציין אזור ברמת השדה כעת ויכולים להשיג שליטה טובה יותר. ניתן לשייך מזהי אזור לכל שדה בתוך DocumentBuilder. הדוגמאות שלהלן ממחישות כיצד להשתמש באפשרות זו.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.cpp" >}}

## הוספת קישור

השתמש ב `DocumentBuilder.InsertHyperlink` כדי להכניס היפר-קישור למסמך. שיטה זו מקבלת שלושה פרמטרים: טקסט של הקישור שיוצג במסמך, יעד קישור (URL או שם של סימניה בתוך המסמך) ופרמטר בוליאני שאמור להיות נכון אם `URL` הוא שם של סימניה בתוך המסמך.DocumentBuilder.InsertHyperlink שיחות פנימיות `DocumentBuilder.InsertField`.השיטה תמיד מוסיפה אפוסטרופים בתחילת ובסוף URL. שים לב שעליך לציין עיצוב גופן עבור טקסט תצוגת ההיפר-קישור באופן מפורש באמצעות המאפיין `Font`. הדוגמה הבאה מכניסה קישור למסמך באמצעות DocumentBuilder.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHyperlink.cpp" >}}

## הוספת Ole אובייקט

אם אתה רוצה Ole שיחת אובייקט `DocumentBuilder.InsertOleObject`. לעבור לשיטה זו `ProgId` במפורש עם פרמטרים אחרים. הדוגמה הבאה מראה כיצד להוסיף Ole אובייקט למסמך.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertOleObject.cpp" >}}

## הגדר שם קובץ וסיומת בעת הכנסת Ole אובייקט

OLE חבילה היא דרך מורשת ו" לא מתועדת " לאחסן אובייקט מוטבע אם OLE המטפל אינו ידוע. מוקדם Windows גרסאות כגון Windows 3.1, 95 ו 98 היה Packager.exe יישום שניתן להשתמש בו כדי להטביע כל סוג של נתונים במסמך. עכשיו, יישום זה אינו נכלל Windows אבל MS Word ויישומים אחרים עדיין להשתמש בו כדי להטביע נתונים אם OLE המטפל חסר או לא ידוע. OlePackage הכיתה מאפשרת גישה OLE Package מאפיינים. הדוגמה הבאה מראה כיצד להגדיר שם קובץ, סיומת ושם תצוגה עבור OLE Package.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.cpp" >}}

## הכנסת HTML

ניתן להוסיף בקלות מחרוזת HTML המכילה קטע HTML או מסמך שלם HTML למסמך Word. פשוט העבירו את המחרוזת הזו לשיטת `DocumentBuilder->InsertHtml`. אחד היישומים השימושיים של השיטה הוא אחסון מחרוזת HTML במסד נתונים והכנסתו למסמך במהלך Mail Merge כדי להוסיף את התוכן המעוצב במקום לבנות אותו בשיטות שונות של בונה המסמכים. הדוגמה הבאה מציגה תוספות HTML למסמך באמצעות DocumentBuilder.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHtml.cpp" >}}

## הכנס כלל אופקי למסמך

להיותlow code דוגמה מראה כיצד להוסיף צורת כלל אופקית למסמך בשיטה `DocumentBuilder->InsertHorizontalRule`.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.cpp" >}}
