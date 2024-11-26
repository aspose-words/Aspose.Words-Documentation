---
title: Mail Merge תבנית ב C++
second_title: Aspose.Words עבור C++
articleTitle: Mail Merge תבנית
linktitle: Mail Merge תבנית
type: docs
description: "צור תבנית Mail Merge להגדרת תוכן קבוע במסמכי פלט ולאחר מכן צור מסמכי מיזוג באמצעות שדות המיזוג."
keywords: "create Mail Merge template с++"
weight: 10
url: /he/cpp/mail-merge-template/
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

השתמש בכיתה [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) כדי ליצור את תבנית המיזוג הנדרשת באמצעות Aspose.Words. ניתן לכלול טקסט, שדה מיזוג ומעבר שורה בתבנית כזו באמצעות השיטות [InsertTextInput](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/inserttextinput/), [InsetField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/) ו [InsertParagraph](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertparagraph/).

דוגמת הקוד הבאה מראה כיצד ליצור תבנית Mail Merge:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeTemplate-CreateMailMergeTemplate.cpp" >}}

התמונה שלהלן מציגה את התבנית שנוצרה:

<img src="mail-merge-template-1.png" alt="mail_merge_template-aspose-words-cpp" style="width:650px"/>

## התאמה אישית של מאפייני תבנית Mail Merge

Aspose.Words מאפשר לך להתאים אישית את התבנית שלך באמצעות מאפיינים רבים. התאמה אישית של תבנית תתואר להלן באמצעות דוגמה להתאמה אישית של מאפיינים מסוימים של תמונות וטקסט.

### התאמה אישית של מאפייני תמונה

ניתן לציין את מאפייני התמונה באמצעות הכיתה [ImageFieldMergingArgs](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imagefieldmergingargs/).

דוגמת הקוד הבאה מראה כיצד לציין את שם קובץ התמונה וגודל התמונה:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeFormFields-ImageFieldMerging.cpp" >}}

### התאמה אישית של מאפייני טקסט

באפשרותך להשתמש במאפיין [Text](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/fieldmergingargs/get_text/) כדי להוסיף טקסט למסמך עבור שדה המיזוג הנוכחי. כמו כן, אתה יכול לשנות את העיצוב של טקסטים ופסקאות בתוך התבנית שלך באמצעות [Font](https://reference.aspose.com/words/cpp/aspose.words/font/) ו [ParagraphFormat](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/) כיתות. ניתן לטפל בטקסט שיוכנס לפני או אחרי שדה המיזוג באמצעות המאפיינים [TextBefore](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/get_textbefore/) ו - [TextAfter](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/get_textafter/) הכלולים בכיתה [FieldMergeField](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/).

דוגמת הקוד הבאה מראה כיצד להוסיף תיבות סימון או HTML במהלך Mail Merge פעולה:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeFormFields-MailMergeFormFields.cpp" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ המדגם של דוגמה זו מ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

אתה יכול גם לבדוק את יישום הכיתה `HandleMergeField` מ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## ראה גם

* לפרטים נוספים על אופן יצירת תבניות ב Microsoft Word באופן ידני, אנא בדוק את [צור תבנית](https://support.microsoft.com/en-us/office/save-a-word-document-as-a-template-cb17846d-ecec-49d4-82ea-a6f5e3e8b9ae) מאמר בתיעוד Microsoft
