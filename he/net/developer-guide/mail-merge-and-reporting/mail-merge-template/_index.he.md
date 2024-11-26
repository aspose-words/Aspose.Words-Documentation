---
title: Mail Merge תבנית ב C#
second_title: Aspose.Words עבור .NET
articleTitle: Mail Merge תבנית
linktitle: Mail Merge תבנית
type: docs
description: "צור תבנית Mail Merge להגדרת תוכן קבוע במסמכי פלט, ולאחר מכן צור מסמכי מיזוג באמצעות שדות המיזוג ב C#."
keywords: "create Mail Merge template с#"
weight: 10
url: /he/net/mail-merge-template/
timestamp: 2024-07-11-08-07-06
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

השתמש בכיתה [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) כדי ליצור את תבנית המיזוג הנדרשת באמצעות Aspose.Words. ניתן לכלול טקסט, שדה מיזוג ומעבר שורה בתבנית כזו באמצעות השיטות [InsertTextInput](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserttextinput/), [InsetField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/) ו [InsertParagraph](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertparagraph/).

דוגמת הקוד הבאה מראה כיצד ליצור תבנית Mail Merge:

{{< gist "aspose-words-gists" "0a1baaa127443b485cc692c8d98ee353" "create-mail-merge-template.cs" >}}

התמונה שלהלן מציגה את התבנית שנוצרה:

<img src="mail-merge-template-1.png" alt="mail_merge_template" style="width:650px"/>

## התאמה אישית של מאפייני תבנית Mail Merge

Aspose.Words מאפשר לך להתאים אישית את התבנית שלך באמצעות מאפיינים רבים. התאמה אישית של תבנית תתואר להלן באמצעות דוגמה להתאמה אישית של מאפיינים מסוימים של תמונות וטקסט.

### התאמה אישית של מאפייני תמונה

ניתן לציין את מאפייני התמונה באמצעות הכיתה [ImageFieldMergingArgs](https://reference.aspose.com/words/net/aspose.words.mailmerging/imagefieldmergingargs/). שים לב שאתה יכול להוסיף תמונה ממסד נתונים כפי שהיא מתוארת ב [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/DocsExamples/DocsExamples/Mail%20Merge%20and%20Reporting/Working%20with%20Fields.cs#L214).

דוגמת הקוד הבאה מראה כיצד לציין את שם קובץ התמונה וגודל התמונה:

{{< gist "aspose-words-gists" "0a1baaa127443b485cc692c8d98ee353" "image-field-merging.cs" >}}

### התאמה אישית של מאפייני טקסט

באפשרותך להשתמש במאפיין [Text](https://reference.aspose.com/words/net/aspose.words.mailmerging/fieldmergingargs/text/) כדי להוסיף טקסט למסמך עבור שדה המיזוג הנוכחי. כמו כן, אתה יכול לשנות את העיצוב של טקסטים ופסקאות בתוך התבנית שלך באמצעות [Font](https://reference.aspose.com/words/net/aspose.words/font/) ו [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) כיתות. ניתן לטפל בטקסט שיוכנס לפני או אחרי שדה המיזוג באמצעות המאפיינים [TextBefore](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/textbefore/) ו - [TextAfter](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/textafter/) הכלולים בכיתה [FieldMergeField](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/).

דוגמת הקוד הבאה מראה כיצד להוסיף תיבות סימון או HTML במהלך Mail Merge פעולה:

{{< gist "aspose-words-gists" "0a1baaa127443b485cc692c8d98ee353" "mail-merge-form-fields.cs" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ המדגם של דוגמה זו מ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail%20merge%20destinations%20-%20Fax.docx).

אתה יכול גם לבדוק את יישום הכיתה `HandleMergeField` מ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/828b58e207e96afa624956867ec9c777fa10af87/Examples/DocsExamples/DocsExamples/Mail%20Merge%20and%20Reporting/Working%20with%20Fields.cs#L43).

{{% /alert %}}

## ראה גם

* לפרטים נוספים על אופן יצירת תבניות ב Microsoft Word באופן ידני, אנא בדוק את [צור תבנית](https://support.microsoft.com/en-us/office/save-a-word-document-as-a-template-cb17846d-ecec-49d4-82ea-a6f5e3e8b9ae) מאמר בתיעוד Microsoft
