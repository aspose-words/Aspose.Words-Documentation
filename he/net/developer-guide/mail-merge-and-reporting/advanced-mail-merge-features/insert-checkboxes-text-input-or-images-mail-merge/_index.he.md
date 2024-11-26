---
title: הכנס Checkbox, קלט טקסט או תמונות במהלך Mail Merge
second_title: Aspose.Words עבור .NET
articleTitle: הכנס Checkbox, קלט טקסט או תמונות
linktitle: הכנס Checkbox, קלט טקסט או תמונות
description: "הכנס checkboxאו שדות קלט טקסט במהלך Mail Merge באמצעות C#. הכנס גם תמונות ממסד נתונים במהלך Mail Merge ב C#."
type: docs
weight: 40
url: /he/net/insert-checkboxes-text-input-or-images-mail-merge/
timestamp: 2024-07-11-08-07-06
---

מנוע המיזוג לוקח מסמך כקלט, מחפש בו שדות `MERGEFIELD` ומחליף אותם בנתונים המתקבלים ממקור הנתונים. בדרך כלל, טקסט רגיל ו HTML מוכנסים, אך Aspose.Words משתמשים יכולים גם ליצור מסמך המטפל בתרחישים יוצאי דופן יותר עבור שדות Mail Merge.

פונקציונליות Aspose.Words עוצמתית מאפשרת לך להרחיב את התהליך Mail Merge:

- הכנס checkboxשדות טופס קלט טקסט למסמך במהלך mail merge
- הוסף תמונות מכל אחסון מותאם אישית (קבצים, BLOB שדות, וכו').)

## הכנס Checkboxקלט טקסט במהלך Mail Merge

לפעמים יש צורך לבצע פעולת Mail Merge כך שלא יוחלף טקסט בשדה המיזוג, אלא שדה checkbox או קלט טקסט. למרות שזה לא התרחיש הנפוץ ביותר, זה מאוד שימושי למשימות מסוימות.

צילום המסך הבא של מסמך Word מציג תבנית עם שדות מיזוג:

<img src="insert-checkboxes-html-or-images-during-mail-merge-1.jpeg" alt="insert-checkboxes-or-images-mail-merge-aspose-words" style="width:600px"/>

צילום מסך זה של המסמך Word למטה מציג את המסמך שכבר נוצר:

<img src="insert-checkboxes-html-or-images-during-mail-merge-2.png" alt="insert-checkboxes-html-or-images-mail-merge-aspose-words" style="width:600px"/>

{{% alert color="primary" %}}

שימו לב שחלק מהשדות הוחלפו בטקסט רגיל, חלק מהשדות הוחלפו בשדות טופס checkbox, והשדה `Subject` הוחלף בשדה קלט טקסט.

{{% /alert %}}

דוגמת הקוד הבאה מראה כיצד להוסיף checkboxשדות טקסט ושדות טקסט למסמך במהלך mail merge:

{{< gist "aspose-words-gists" "0a1baaa127443b485cc692c8d98ee353" "mail-merge-form-fields.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "handle-merge-field.cs" >}}

## הכנס תמונות במהלך Mail Merge

בעת ביצוע פעולת Mail Merge, ניתן להוסיף תמונות ממסד הנתונים למסמך באמצעות שדות מיוחדים Mail Merge. שדה התמונה Mail Merge הוא שדה מיזוג בשם תמונה: MyFieldName.

### הכנס תמונות ממסד נתונים

במהלך mail merge, כאשר שדה תמונה Mail Merge נתקל במסמך, האירוע [FieldMergingCallback](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/fieldmergingcallback/) יורה. אתה יכול להגיב לאירוע זה כדי להחזיר שם קובץ, זרם או אובייקט תמונה למנוע Mail Merge כך שניתן יהיה להכניס אותו למסמך.

דוגמת הקוד הבאה מראה כיצד להוסיף תמונות המאוחסנות בשדה מסד נתונים BLOB לדוח:

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "mail-merge-image-from-blob.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "handle-merge-image-field-from-blob.cs" >}}

### הגדר מאפייני תמונה במהלך Mail Merge

בעת מיזוג שדה מיזוג תמונות, ייתכן שתצטרך לפעמים לשלוט במאפייני תמונה שונים, כגון [WrapType](https://reference.aspose.com/words/net/aspose.words.drawing/wraptype/).

נכון לעכשיו, באמצעות [ImageFieldMergingArgs](https://reference.aspose.com/words/net/aspose.words.mailmerging/imagefieldmergingargs/) ניתן להגדיר רק מאפייני רוחב תמונה או גובה, בהתאמה. כדי להתגבר על בעיה זו, Aspose.Words מספק את המאפיין [Shape](https://reference.aspose.com/words/net/aspose.words.mailmerging/imagefieldmergingargs/shape/), המאפשר לקבל שליטה מלאה על התמונה שהוכנסה או על כל צורה אחרת.

דוגמת הקוד הבאה מראה כיצד להגדיר מאפייני תמונה שונים:

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "mail-merge-image-field.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "image-field-merging-handler.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "data-source-root.cs" >}}
