---
title: עבודה עם שדות טפסים C#
second_title: Aspose.Words עבור .NET
articleTitle: עבודה עם שדות טפסים
linktitle: עבודה עם שדות טפסים
description: "הבנת שדות טפסים, עבודה עם שדות טפסים C#."
type: docs
weight: 380
url: /he/net/working-with-form-fields/
---

מסמך המכיל ריקות מלא (שדות) ידוע כצורה. לדוגמה, באפשרותך ליצור טופס רישום Microsoft Word זה משתמש ברשימות נפילה שממנו משתמשים יכולים לבחור ערכים. The The The `Form` שדה הוא מיקום שבו סוג מסוים של נתונים, כגון שם או כתובת, נשמר. שדות טופס Microsoft Word כולל קלט טקסט, combobox ו Checkbox.

אתה יכול להשתמש שדות טופס בפרויקט שלך כדי "לתקשר" עם המשתמשים שלך. לדוגמה, אתה יוצר מסמך שהתוכן שלו מוגן, אבל רק שדות צורה ניתן לערוך. המשתמשים יכולים להיכנס לנתונים בשדות הטופס ולמסור את המסמך. היישום שלך המשתמש Aspose.Words ניתן לשחזר נתונים משדות הטופס ולעבד אותו.

יצירת שדות לתוך המסמך באמצעות קוד היא קלה. [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) יש שיטות מיוחדות להוסיף אותם, אחד לכל סוג שדה צורה. כל אחת מהשיטות מקבלת פרמטר מיתר המייצג את השם של שדה הטופס. השם יכול להיות מיתר ריק. עם זאת, אם אתה מציין שם עבור שדה הטופס, סימן ספר נוצר באופן אוטומטי עם אותו שם.

## טופס שדות

שדות טפסים הם מקרה מסוים של שדות Word המאפשר "פעולה" עם המשתמש. שדות טופס Microsoft Word כולל תיבת טקסט, תיבת קומבו ו- Checkbox.

**DocumentBuilder** מספק שיטות מיוחדות להכניס כל סוג של שדה טופס לתוך המסמך: [InsertTextInput](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserttextinput/) , [InsertCheckBox](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertcheckbox/), ו [InsertComboBox](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertcombobox/). שים לב שאם אתה מציין שם עבור שדה הטופס, סימן ספר נוצר באופן אוטומטי עם אותו שם.

הדוגמה הבאה של הקוד מראה כיצד להכניס שדה טופס תיבת קומבול לתוך מסמך:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-InsertFormFields-InsertFormFields.cs" >}}

### הכנס הודעת טקסט

השתמש **InsertTextInput** שיטה להכניס תיבת טקסט לתוך המסמך.

דוגמה הקוד הבא מראה כיצד להכניס שדה טופס קלט טקסט לתוך מסמך:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertTextInputFormField.cs" >}}

### תגית: Check Box

Call **InsertCheckBox** להכניס תיבת צ'ק לתוך המסמך.

הדוגמה הבאה של הקוד מראה כיצד להכניס שדה טופס Checkbox לתוך מסמך:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertCheckBoxFormField.cs" >}}

### תגית: Combo Box

Call **InsertComboBox** כדי להכניס את ה- combobox אל המסמך.

לדוגמה הקוד הבא מראה כיצד להכניס שדה טופס Combobox לתוך מסמך:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertComboBoxFormField.cs" >}}

## טופס שדות

אוסף של שדות צורה מיוצג על ידי [FormFieldCollection](https://reference.aspose.com/words/net/aspose.words.fields/formfieldcollection/) שיעור שניתן לשחזר באמצעות [FormFields](https://reference.aspose.com/words/net/aspose.words/range/formfields/) רכוש. זה אומר שאתה יכול להשיג שדות טופס הכלולים בכל מסמך כולל המסמך עצמו.

{{% alert color="primary" %}}

ניתן להוריד את קובץ הדגימה של הדוגמאות הבאות [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Form%20fields.docx).

{{% /alert %}}

דוגמה לקוד הבא מראה כיצד לקבל אוסף של שדות צורה:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.cs" >}}

אתה יכול לקבל שדה טופס מסוים על ידי אינדקס או שם.

דוגמה לקוד הבא מראה כיצד לגשת לשדות צורה:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsGetByName-FormFieldsGetByName.cs" >}}

The The The **FormField** תכונות מאפשרות לך לעבוד עם שם שדה טופס, סוג ותוצאה.

הדוגמה הקודית הבאה מראה כיצד לעבוד עם שם שדה צורה, סוג ותוצאה:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.cs" >}}

## עיצוב שדות

The The The [Font](https://reference.aspose.com/words/net/aspose.words/inline/font/) רכוש [FormField](https://reference.aspose.com/words/net/aspose.words.fields/formfield/) מאפשר יישום פונטו פורמט ל **FormField** ככלל, כולל ערך השדה.

הדוגמה הקודית הבאה מראה כיצד ליישם את הגרפיקה **FormField**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsFontFormatting-FormFieldsFontFormatting.cs" >}}
