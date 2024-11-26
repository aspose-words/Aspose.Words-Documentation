---
title: הכנס Checkbox, קלט טקסט או תמונות במהלך Mail Merge
second_title: Aspose.Words עבור C++
articleTitle: הכנס Checkbox, קלט טקסט או תמונות
linktitle: הכנס Checkbox, קלט טקסט או תמונות
description: "הכנס checkboxאו שדות קלט טקסט במהלך Mail Merge באמצעות C++. הכנס גם תמונות ממסד נתונים במהלך Mail Merge ב C++."
type: docs
weight: 40
url: /he/cpp/insert-checkboxes-text-input-or-images-mail-merge/
timestamp: 2024-01-27-14-07-04
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

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeFormFields-MailMergeFormFields.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeFormFields-HandleMergeField.cpp" >}}

## הכנס תמונות במהלך Mail Merge

בעת ביצוע פעולת Mail Merge, ניתן להוסיף תמונות ממסד הנתונים למסמך באמצעות שדות מיוחדים Mail Merge. שדה התמונה Mail Merge הוא שדה מיזוג בשם תמונה: MyFieldName.

### הכנס תמונות ממסד נתונים

במהלך mail merge, כאשר שדה תמונה Mail Merge נתקל במסמך, האירוע [FieldMergingCallback](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/get_fieldmergingcallback/) יורה. אתה יכול להגיב לאירוע זה כדי להחזיר שם קובץ, זרם או אובייקט תמונה למנוע Mail Merge כך שניתן יהיה להכניס אותו למסמך.

דוגמת הקוד הבאה מראה כיצד להוסיף תמונות המאוחסנות בשדה מסד נתונים BLOB לדוח:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeImageField-MailMergeImageInsert.cpp" >}}

### הגדר מאפייני תמונה במהלך Mail Merge

בעת מיזוג שדה מיזוג תמונות, ייתכן שתצטרך לפעמים לשלוט במאפייני תמונה שונים, כגון [WrapType](https://reference.aspose.com/words/cpp/aspose.words.drawing/wraptype/).

נכון לעכשיו, באמצעות [ImageFieldMergingArgs](https://reference.aspose.com/words/cpp/class/aspose.words.mail_merging.image_field_merging_args) ניתן להגדיר רק מאפייני רוחב תמונה או גובה, בהתאמה. כדי להתגבר על בעיה זו, Aspose.Words מספק את המאפיין [Shape](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imagefieldmergingargs/get_shape/), המאפשר לקבל שליטה מלאה על התמונה שהוכנסה או על כל צורה אחרת.

דוגמת הקוד הבאה מראה כיצד להגדיר מאפייני תמונה שונים:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeImageField-MailMergeImageField.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeImageField-ImageFieldMergingHandler.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeImageField-DataSourceRoot.cpp" >}}
