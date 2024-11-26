---
title: עבודה עם שדות טפסים Java
second_title: Aspose.Words עבור Java
articleTitle: עבודה עם שדות טפסים
linktitle: עבודה עם שדות טפסים
description: "הבנת שדות טפסים, עבודה עם שדות טפסים Java."
type: docs
weight: 380
url: /he/java/working-with-form-fields/
timestamp: 2024-01-27-14-07-04
---

מסמך המכיל ריקות מלא (שדות) ידוע כצורה. לדוגמה, באפשרותך ליצור טופס רישום Microsoft Word זה משתמש ברשימות נפילה שממנו משתמשים יכולים לבחור ערכים. The The The `Form` שדה הוא מיקום שבו סוג מסוים של נתונים, כגון שם או כתובת, נשמר. שדות טופס Microsoft Word כולל קלט טקסט, combobox ו Checkbox.

אתה יכול להשתמש שדות טופס בפרויקט שלך כדי "לתקשר" עם המשתמשים שלך. לדוגמה, אתה יוצר מסמך שהתוכן שלו מוגן, אבל רק שדות צורה ניתן לערוך. המשתמשים יכולים להיכנס לנתונים בשדות הטופס ולמסור את המסמך. היישום שלך המשתמש Aspose.Words ניתן לשחזר נתונים משדות הטופס ולעבד אותו.

יצירת שדות לתוך המסמך באמצעות קוד היא קלה. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) יש שיטות מיוחדות להוסיף אותם, אחד לכל סוג שדה צורה. כל אחת מהשיטות מקבלת פרמטר מיתר המייצג את השם של שדה הטופס. השם יכול להיות מיתר ריק. עם זאת, אם אתה מציין שם עבור שדה הטופס, סימן ספר נוצר באופן אוטומטי עם אותו שם.

## טופס שדות

שדות טופס הם מקרה מסוים של שדות Word המאפשר "פעולה" עם המשתמש. שדות טופס Microsoft Word כולל תיבת טקסט, תיבת קומבו ו- Checkbox.

**DocumentBuilder** מספק שיטות מיוחדות להכניס כל סוג של שדה טופס לתוך המסמך: [insertTextInput](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-boolean-int), [insertCheckBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-boolean-int) או [insertComboBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-int).

הדוגמה הבאה של הקוד מראה כיצד להכניס שדה טופס של קידוד לתוך מסמך:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertFormFields-InsertFormFields.java" >}}

### הכנס הודעת טקסט

השתמש **הכנס הודעות טקסט** שיטה להכניס תיבת טקסט לתוך המסמך.

לדוגמה הקוד הבא מראה כיצד להכניס שדה טופס קלט טקסט לתוך מסמך:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTextInputFormField-DocumentBuilderInsertTextInputFormField.java" >}}

### תגית: Check Box

Call **תגית:CheckBox** להכניס תיבת צ'ק לתוך המסמך.

הדוגמה הבאה של הקוד מראה כיצד להכניס שדה טופס צ'ק לתוך מסמך:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertCheckBoxFormField-DocumentBuilderInsertCheckBoxFormField.java" >}}

### תגית: Combo Box

Call **הכנסComboBox** כדי להכניס תיבת קומפלקס לתוך המסמך.

לדוגמה הקוד הבא מראה כיצד להכניס שדה טופס Combobox לתוך מסמך:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertComboBoxFormField-DocumentBuilderInsertComboBoxFormField.java" >}}

## טופס שדות

אוסף של שדות צורה מיוצג על ידי [FormFieldCollection](https://reference.aspose.com/words/java/com.aspose.words/formfieldcollection/) שיעור שניתן לשחזר באמצעות [Range.getFormFields](https://reference.aspose.com/words/java/com.aspose.words/range/#getFormFields) רכוש. זה אומר שאתה יכול להשיג שדות טופס הכלולים בכל מסמך כולל המסמך עצמו.

דוגמה לקוד הבא מראה כיצד לקבל אוסף של שדות צורה:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.java" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ הדגימה של הדוגמאות הבאות [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Form%20fields.docx).

{{% /alert %}}

אתה יכול לקבל שדה טופס מסוים על ידי אינדקס או שם.

דוגמה לקוד הבא מראה כיצד לגשת לשדות צורה:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsGetByName-FormFieldsGetByName.java" >}}

The The The **FormField** תכונות מאפשרות לך לעבוד עם שם שדה טופס, סוג ותוצאה.

הדוגמה הקודית הבאה מראה כיצד לעבוד עם שם שדה צורה, סוג ותוצאה:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.java" >}}
