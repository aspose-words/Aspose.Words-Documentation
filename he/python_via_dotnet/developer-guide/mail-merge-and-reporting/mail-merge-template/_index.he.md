---
title: Mail Merge תבנית ב Python
second_title: Aspose.Words עבור Python via .NET
articleTitle: Mail Merge תבנית
linktitle: Mail Merge תבנית
type: docs
description: "צור תבנית Mail Merge להגדרת תוכן קבוע במסמכי פלט, ולאחר מכן צור מסמכי מיזוג באמצעות שדות המיזוג ב Python."
keywords: "create Mail Merge template python"
weight: 10
url: /he/python-net/mail-merge-template/
timestamp: 2024-01-31-14-23-37
---

מקובל להשתמש בתבנית מיזוג כמסמך הבסיס לפעולה Mail Merge אם היא פשוטה Mail Merge או Mail Merge עם אזורים. Mail merge עם אזורים הוא חזק יותר פופולרי מאשר פשוט mail merge. פשוט Mail Merge נחשב למקרה מסוים של Mail Merge עם אזורים שבהם האזור הוא המסמך כולו. הכל מוסבר במאמר הבא" סוגי Mail Merge פעולה " בפירוט רב יותר.

התבנית מבטיחה שהטקסט במסמך הממוזג של הפלט מעוצב כהלכה, והפעולה Mail Merge מבטיחה שהטקסט ממקור הנתונים מוזן כהלכה בתבנית המיזוג.

Aspose.Words מספק את היכולת ליצור תבנית Mail Merge להגדרת תוכן קבוע ולאחר מכן ליצור מסמכי מיזוג באמצעות שדות המיזוג. לפיכך, לתבנית המיזוג יהיה הטקסט הדרוש, זהה בכל מסמכי הפלט, ושדות המיזוג למילוי התוכן המשתנה. כתוצאה מכך, מידע ממקור הנתונים שצוין יתווסף לתבנית המיזוג דרך שדות אלה במהלך יצירת המסמך הממוזג.

## מהי תבנית Mail Merge

תבנית Mail Merge היא מסמך מותאם אישית המכיל את הנתונים הקבועים ואת השדות הממוזגים שבהם ברצונך שהטקסט המשתנה יהיה. תבנית מיזוג יכולה להיות בכל פורמט התומך בשדות, למשל, DOC, DOCX, DOT, DOTX, RTF. בנוסף, ניתן גם להשתמש בתבנית mustache המוסברת במאמר "Mustache תחביר תבנית" ביתר פירוט.

אתה יכול ליצור תבנית מיזוג כדי להיות מודל למסמכים חדשים, והיא צריכה לכלול את הטקסט הראשי שצריך להיות זהה עבור כל גרסה של המסמך הממוזג. הוספת שדות מיזוג בתוך התבנית תייצג את נתוני ההתאמה האישית כגון שמות או כתובות שנלקחו ממקור נתונים. פעולה Mail Merge תכניס אוטומטית את נתוני ההתאמה האישית ממקור הנתונים למסמך תבנית המיזוג שלך.

בנוסף, תוכל להוסיף אזור Mail Merge בתבנית שלך על ידי הוספת שני שדות Mail Merge כדי לסמן את ההתחלה ואת הסוף של אזור הדואר. המאמר הבא" סוגי פעולה Mail Merge " מסביר זאת ביתר פירוט.

## צור תבנית Mail Merge

ניתן ליצור תבנית ולהוסיף לה שדות מיזוג ספציפיים, שיוחלפו בערכים ממקור הנתונים באופן ידני, לדוגמה, באמצעות Microsoft Word, או באמצעות תכנות Aspose.Words. במאמר זה, נבחן את הדרך הפרוגרמטית ליצירת תבנית.

השתמש בכיתה [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) כדי ליצור את תבנית המיזוג הנדרשת באמצעות Aspose.Words. ניתן לכלול טקסט, שדה מיזוג ומעבר שורה בתבנית כזו באמצעות השיטות [insert_text_input](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_text_input/), [inset_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) ו [insert_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_paragraph/).

דוגמת הקוד הבאה מראה כיצד ליצור תבנית Mail Merge:

{{< highlight python >}}
@staticmethod
def create_mail_merge_template() :
    
    builder = aw.DocumentBuilder()
    
    # Insert a text input field the unique name of this field is "Hello", the other parameters define
    # what type of FormField it is, the format of the text, the field result and the maximum text length (0 = no limit)
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", "Hello", 0)
    builder.insert_field("MERGEFIELD CustomerFirstName \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput1", aw.fields.TextFormFieldType.REGULAR, "", " ", 0)
    builder.insert_field("MERGEFIELD CustomerLastName \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput1", aw.fields.TextFormFieldType.REGULAR, "", " , ", 0)
    
    # Inserts a paragraph break into the document
    builder.insert_paragraph()
    
    # Insert mail body
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", "Thanks for purchasing our ", 0)
    builder.insert_field("MERGEFIELD ProductName \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", ", please download your Invoice at ", 0)
    builder.insert_field("MERGEFIELD InvoiceURL \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", ". If you have any questions please call ", 0)
    builder.insert_field("MERGEFIELD Supportphone \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", ", or email us at ", 0)
    builder.insert_field("MERGEFIELD SupportEmail \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", ".", 0)
    
    builder.insert_paragraph()
    
    # Insert mail ending
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", "Best regards,", 0)
    builder.insert_break(aw.BreakType.LINE_BREAK)
    builder.insert_field("MERGEFIELD EmployeeFullname \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput1", aw.fields.TextFormFieldType.REGULAR, "", " ", 0)
    builder.insert_field("MERGEFIELD EmployeeDepartment \\* MERGEFORMAT")
    
    return builder.document
{{< /highlight >}}

התמונה שלהלן מציגה את התבנית שנוצרה:

<img src="mail-merge-template-1.png" alt="mail_merge_template" style="width:650px"/>

## התאמה אישית של מאפייני תבנית Mail Merge

Aspose.Words מאפשר לך להתאים אישית את התבנית שלך באמצעות מאפיינים רבים. התאמה אישית של תבנית תתואר להלן באמצעות דוגמה להתאמה אישית של מאפיינים מסוימים של תמונות וטקסט.

## ראה גם

* לפרטים נוספים על אופן יצירת תבניות ב Microsoft Word באופן ידני, אנא בדוק את [צור תבנית](https://support.microsoft.com/en-us/office/save-a-word-document-as-a-template-cb17846d-ecec-49d4-82ea-a6f5e3e8b9ae) מאמר בתיעוד Microsoft
