---
title: Mail Merge ודיווח ב C#
second_title: Aspose.Words עבור .NET
articleTitle: Mail Merge ודיווח
linktitle: Mail Merge ודיווח
type: docs
description: "Mail Merge היא תכונה פופולרית ליצירת מסמכים במהירות באמצעות C#. Aspose.Words עבור .NET לוקח את הפונקציונליות הסטנדרטית Mail Merge ומקדם אותה צעדים רבים קדימה, והופך אותה לפיתרון דיווח מן המניין המאפשר לך ליצור מסמכים מורכבים עוד יותר כגון דוחות, קטלוגים, מלאי וחשבוניות."
keywords: "how to use Mail Merge c#"
weight: 30
url: /he/net/mail-merge-and-reporting/
timestamp: 2024-07-11-08-07-06
---

Mail Merge היא תכונה פופולרית ליצירת מסמכים במהירות ובקלות כגון מכתבים, תוויות ומעטפות. Aspose.Words מאפשר לך ליצור מסמכים מתבניות עם שדות Mail Merge.

שדה Mail Merge הוא שדה שניתן להכניס לתבנית mail merge כדי לכלול ערכים ספציפיים מרשומת מקור נתונים במסמכי פלט. לדוגמה, אתה יכול להוסיף שדה מיזוג בתבנית דוא " ל כך שלברכה יהיה שם פרטי של הנמען ולא "שלום!". Aspose.Words מציב נתונים ממקור חיצוני, כגון מסד נתונים או קובץ, בשדות אלה ומעצב אותם. המסמך המתקבל נשמר בתיקיה שצוינה.

Aspose.Words לוקח את הפונקציונליות הסטנדרטית Mail Merge ומקדם אותה צעדים רבים קדימה, והופך אותה לפיתרון דיווח מן המניין המאפשר ליצור מסמכים מורכבים עוד יותר כמו דוחות, קטלוגים, מלאי וחשבוניות. הנה כמה יתרונות של פתרון הדיווח Aspose.Words:

- דוחות עיצוב ב Microsoft Word באמצעות שדות Mail Merge סטנדרטיים
- הגדר אזורים במסמך שצומחים, כגון שורות הזמנה מפורטות
- הכנס תמונות במהלך mail merge
- בצע כל לוגיקה מותאמת אישית, שלוט בעיצוב או הכנס תוכן מורכב באמצעות Mail Merge מטפלי אירועים
- מלא מסמכים עם נתונים מכל סוג של מקור נתונים

{{% alert color="primary" %}}

מרחב השמות [Aspose.Words.MailMerging](https://reference.aspose.com/words/net/aspose.words.mailmerging/) משמש לעבודה עם מיזוג דואר.

{{% /alert %}}

## מנגנון ורכיבים עיקריים של Mail Merge {#mechanism-and-main-components-of-a-mail-merge-operation}

Aspose.Words מספק את היכולת לטעון מסמכים שונים [supported formats](https://reference.aspose.com/words/net/aspose.words/loadformat/) ולאחר מכן מאפשר למשתמשים לבצע פעולה Mail Merge.

בדרך כלל, מסמך טעון מאפשר לך לאחסן שדות מיזוג, לדוגמה, מסמך בפורמט DOCX. אבל יש פורמטים שאינם מאחסנים שדות כאלה, למשל, TXT. אם Aspose.Words תומך בטעינת פורמטים של קבצים כאלה, תוכל להוסיף את שדות המיזוג ישירות למודל המסמך, לשמור את המסמך ב [supported format](https://reference.aspose.com/words/net/aspose.words/saveformat/) נוח ולבצע את פעולת Mail Merge.

הפעולה Mail Merge תמזג את *mail merge template* ואת *data source* שלך כדי ליצור יחיד *merged documents*.

## מהי תבנית Mail Merge {#what-is-a-mail-merge-template}

המטרה של יישום פעולה mail merge באמצעות תבנית מיזוג היא לפשט את תהליך יצירת המסמך.

ישנן מספר דרכים ליצור ולעצב תבנית מיזוג. אתה יכול להשתמש Microsoft Word, ותבנית המיזוג לא חייבת להיות תבנית Microsoft Word, כלומר מסמך בפורמט DOT או DOTX, זה יכול להיות מסמך רגיל בפורמט DOC או DOCX. עליך להוסיף כמה שדות מיוחדים הנקראים מיזוג שדות לתבנית זו במקומות שבהם ברצונך להכניס נתונים ממקור הנתונים שלך מאוחר יותר. לחלופין, תוכל ליצור תבנית מיזוג באופן פרוגרמטי באמצעות הכיתה [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/).

תבנית המיזוג מכילה את הטקסט הראשי, שאמור להיות זהה בכל מסמכי הפלט לאחר ביצוע הפעולה Mail Merge. אתה יכול להשתמש בכל פורמט עבור התבנית שלך אם יש יכולת להוסיף שדות מיזוג אליו. כל שדות המיזוג בתוך התבנית שלך ימולאו ממקור הנתונים שלך במהלך פעולת Mail Merge.

## מקורות נתונים לפעולה Mail Merge {#data-source-types-for-a-mail-merge-operation}

Aspose.Words Mail Merge מקבל מקורות נתונים שונים. זה יכול להיות גם DataTable, DataView, DataSet, IDataReader, מערך של ערכים הנתמכים על ידי ADO .NET, או מקורות נתונים מותאמים אישית המיוצגים על ידי [IMailMergeDataSource](https://reference.aspose.com/words/net/aspose.words.mailmerging/imailmergedatasource/) יישומים.

מקור הנתונים מכיל את כל המידע שנמשך במהלך פעולת Mail Merge על מנת להתאים אישית מיילים ומסמכים בודדים. ניתן ליצור מקורות נתונים באופן ידני או שנוצר על ידי דיווח ממסד נתונים או יישום קיימים. אם יש לך נתונים בפורמט XML, אתה יכול לטעון ולמזג אותם עם DataSet. פעולת Mail Merge תעבור על כל רשומות מקור הנתונים ותכניס אותן לשדות Mail Merge במסמך. ניתן ליישם כמה ממשקים mail merge כגון [IMailMergeDataSourceRoot](https://reference.aspose.com/words/net/aspose.words.mailmerging/imailmergedatasourceroot/) כדי למזג נתונים מכל מקור נתונים, כולל שאילתה LINQ, קובץ XML או אובייקטים עסקיים.

דוגמת הקוד הבאה מראה כיצד לטעון טבלת נתונים כמקור הנתונים עבור הפעולה Mail Merge:

{{< gist "aspose-words-gists" "de5e13f5d5bb7d8cb88da900b4f9ed8b" "execute-with-regions-data-table.cs" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ המדגם של דוגמה זו מ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail%20merge%20destinations%20-%20Orders.docx).

{{% /alert %}}

## מסמכים ממוזגים של פעולת Mail Merge {#merged-documents-of-a-mail-merge-operation}

מסמך ממוזג הוא התוצאה של פעולת Mail Merge בעת מיזוג התבנית עם מקור הנתונים. כל שדות המיזוג במסמך הממוזג מוחלפים בנתונים בפועל ממקור הנתונים שלך.

התמונה הבאה מציגה דוגמה לתבנית המיזוג עם שדות ממוזגים לפני ביצוע פעולת Mail Merge.

![mail-merge-and-reporting-fields-aspose-words-net](mail-merge-and-reporting-1.jpg)

התמונה הבאה מציגה דוגמה למסמך הממוזג של הפלט כתוצאה מביצוע פעולת Mail Merge.

![mail-merge-and-reporting-result-aspose-words-net](mail-merge-and-reporting-2.jpg)

## ראה גם

- [עבודה עם Mail Merge תבניות ב Word](https://docs.microsoft.com/en-us/power-platform/admin/work-mail-merge-templates)
