---
title: עבודה עם שדות טפסים Python
second_title: Aspose.Words עבור Python via .NET
articleTitle: עבודה עם שדות טפסים
linktitle: עבודה עם שדות טפסים
description: "הכנס, להשיג או לעצב שדה טופס במסמך באמצעות Python."
type: docs
weight: 380
url: /he/python-net/working-with-form-fields/
timestamp: 2024-01-27-14-07-04
---

מסמך המכיל ריקות מלא (שדות) ידוע כצורה. לדוגמה, באפשרותך ליצור טופס רישום Microsoft Word זה משתמש ברשימות נפילה שממנו משתמשים יכולים לבחור ערכים. The The The `Form` שדה הוא מיקום שבו סוג מסוים של נתונים, כגון שם או כתובת, נשמר. שדות טופס Microsoft Word כולל קלט טקסט, combobox ו Checkbox.

אתה יכול להשתמש שדות טופס בפרויקט שלך כדי "לתקשר" עם המשתמשים שלך. לדוגמה, אתה יוצר מסמך שהתוכן שלו מוגן, אבל רק שדות צורה ניתן לערוך. המשתמשים יכולים להיכנס לנתונים בשדות הטופס ולמסור את המסמך. היישום שלך המשתמש Aspose.Words ניתן לשחזר נתונים משדות הטופס ולעבד אותו.

יצירת שדות לתוך המסמך באמצעות קוד היא קלה. [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) יש שיטות מיוחדות להוסיף אותם, אחד לכל סוג שדה צורה. כל אחת מהשיטות מקבלת פרמטר מיתר המייצג את השם של שדה הטופס. השם יכול להיות מיתר ריק. עם זאת, אם אתה מציין שם עבור שדה הטופס, סימן ספר נוצר באופן אוטומטי עם אותו שם.

## הקמת שדות

שדות טפסים הם מקרה מסוים של שדות Word המאפשר "פעולה" עם המשתמש. שדות טופס Microsoft Word כולל תיבת טקסט, תיבת קומבו ו- Checkbox.

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) מספק שיטות מיוחדות להכניס כל סוג של שדה טופס לתוך המסמך: [insert_text_input](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_text_input/), [insert_check_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_check_box/), ו [insert_combo_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_combo_box/). שים לב שאם אתה מציין שם עבור שדה הטופס, סימן ספר נוצר באופן אוטומטי עם אותו שם.

הדוגמה הבאה של הקוד מראה כיצד להכניס שדה טופס תיבת קומבול לתוך מסמך:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-InsertFormFields.py" >}}

### הכנס הודעת טקסט

השתמש [insert_text_input](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_text_input/) שיטה להכניס תיבת טקסט לתוך המסמך.

דוגמה הקוד הבא מראה כיצד להכניס שדה טופס קלט טקסט לתוך מסמך:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", "Hello", 0)
        
doc.save(docs_base.artifacts_dir + "WorkingWithFormFields.document_builder_insert_text_input_form_field.docx")
{{< /highlight >}}

### תגית: Check Box

Call [insert_check_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_check_box/) להכניס תיבת צ'ק לתוך המסמך.

הדוגמה הבאה של הקוד מראה כיצד להכניס שדה טופס Checkbox לתוך מסמך:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_check_box("CheckBox", True, True, 0)
        
doc.save(docs_base.artifacts_dir + "WorkingWithFormFields.document_builder_insert_check_box_form_field.docx")
{{< /highlight >}}

### תגית: Combo Box

Call [insert_combo_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_combo_box/) להכניס קומבווקס לתוך המסמך.

לדוגמה הקוד הבא מראה כיצד להכניס שדה טופס Combobox לתוך מסמך:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

items =  ["One", "Two", "Three"] 
builder.insert_combo_box("DropDown", items, 0)

doc.save(docs_base.artifacts_dir + "WorkingWithFormFields.document_builder_insert_combo_box_form_field.docx")
{{< /highlight >}}

## טופס שדות

אוסף של שדות צורה מיוצג על ידי [FormFieldCollection](https://reference.aspose.com/words/python-net/aspose.words.fields/formfieldcollection/) שיעור שניתן לשחזר באמצעות [form_fields](https://reference.aspose.com/words/python-net/aspose.words/range/form_fields/) רכוש. זה אומר שאתה יכול להשיג שדות טופס הכלולים בכל מסמך כולל המסמך עצמו.

{{% alert color="primary" %}}

ניתן להוריד את קובץ הדגימה של הדוגמאות הבאות [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Form%20fields.docx).

{{% /alert %}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsGetFormFieldsCollection.py" >}}

אתה יכול לקבל שדה טופס מסוים על ידי אינדקס או שם.

דוגמה לקוד הבא מראה כיצד לגשת לשדות צורה:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsGetByName.py" >}}

The The The [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) תכונות מאפשרות לך לעבוד עם שם שדה טופס, סוג ותוצאה.

הדוגמה הקודית הבאה מראה כיצד לעבוד עם שם שדה צורה, סוג ותוצאה:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsWorkWithProperties.py" >}}

## עיצוב שדות

The The The [font](https://reference.aspose.com/words/python-net/aspose.words/inline/font/) רכוש [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) מאפשר יישום פונטו פורמט ל [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) ככלל, כולל ערך השדה.

הדוגמה הקודית הבאה מראה כיצד ליישם את הגרפיקה **FormField**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsFontFormatting.py" >}}
