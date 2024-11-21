---
title: הכנסת שדות C#
second_title: Aspose.Words עבור .NET
articleTitle: הכניסו שדות
linktitle: הכניסו שדות
description: "כיצד להכניס שדות למסמך באמצעות C# למד דרכים שונות עם דוגמאות קוד."
type: docs
weight: 20
url: /he/net/inserting-fields/
timestamp: 2024-01-27-14-07-04
---

ישנן מספר דרכים שונות להכניס שדות למסמך:

* שימוש [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/)
* שימוש [FieldBuilder](https://reference.aspose.com/words/net/aspose.words.fields/fieldbuilder/)
* שימוש [Aspose.Words Document Object Model (DOM)](/words/he/net/aspose-words-document-object-model/)

במאמר זה נבחן כל דרך בפירוט רב יותר לנתח כיצד להכניס שדות מסוימים באמצעות אפשרויות אלה.

## הכנסת שדות לתוך מסמך באמצעות מסמך בניית מסמכים

In In In Aspose.Words The The [InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/) השיטה משמשת כדי להכניס שדות חדשים למסמך. הפרמטר הראשון מקבל את קוד השדה המלא של השדה להיות מוכנס. הפרמטר השני הוא אופציונלי ומאפשר את תוצאת השדה להיות מוגדר באופן ידני. אם זה לא מסופק אז השדה עודכן באופן אוטומטי. אתה יכול לעבור אפס או ריק לפרמטר זה כדי להוסיף שדה עם ערך שדה ריק. אם אתה לא בטוח לגבי syntax קוד שדה מסוים, ליצור את השדה Microsoft Word קודם כל לעבור לראות את קוד השדה שלו.

{{% alert color="primary" %}}

אם קוד השדה שלך יש פרמטר המכיל שטח, אז זה חייב להיות סגור בתוך סימני דיבור. אחרת התחום בשני Microsoft Word ו Aspose.Words אולי לא לעבוד כצפוי כמו הפרמטר מטופל על ידי שניהם כמו להיות מנוטר.

{{% /alert %}}

הדוגמה הבאה של הקוד מראה כיצד להכניס שדה מיזוג למסמך באמצעות שימוש **DocumentBuilder**:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertField-InsertField.cs" >}}

אותה טכניקה משמשת כדי להכניס שדות מקונן בתחומים אחרים.

הדוגמה הבאה של הקוד מראה כיצד להכניס שדות הקן בתוך שדה אחר באמצעות שימוש **DocumentBuilder**:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertNestedFields-InsertNestedFields.cs" >}}

### המונחים: Field Level

מזהה שפה הוא קיצור בינלאומי סטנדרטי לשפה במדינה או באזור גיאוגרפי. עם Aspose.Words, באפשרותך לציין את המקומיים ברמת השדה באמצעות [LocaleId](https://reference.aspose.com/words/net/aspose.words.fields/field/localeid/) רכוש, אשר מקבל או מגדיר את מזהה המקומי של השדה.

דוגמה לקוד הבא מראה כיצד להשתמש באפשרות זו:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.cs" >}}

### תגית: Untyped / Empty Field

אם אתה רוצה להוסיף שדות לא מטיפוס / mpty ({}בדיוק כמו Microsoft Word מאפשר, אתה יכול להשתמש [InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/) שיטה עם [FieldType.FieldNone](https://reference.aspose.com/words/net/aspose.words.fields/fieldtype/) פרמטר כדי להכניס שדה למסמך Word, באפשרותך ללחוץ על "Ctrl + F9" שילוב מפתח.

הדוגמה הבאה של הקוד מראה כיצד להכניס שדה ריק לתוך המסמך:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertFieldNone-InsertFieldNone.cs" >}}

## הכנסת שדות אל תוך מסמך באמצעות שדה בונה
דרך חלופית להכניס שדות Aspose.Words הוא [FieldBuilder](https://reference.aspose.com/words/net/aspose.words.fields/fieldbuilder/) מעמד. הוא מספק ממשק שוטף כדי לציין מתגי שדה וערכי טיעון כטקסט, צמתים או אפילו שדות מקונן.

הדוגמה הבאה של הקוד מראה כיצד להכניס שדה למסמך באמצעות **FieldBuilder**:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertFieldUsingFieldBuilder.cs" >}}

## הכנסת שדות באמצעות DOM

ניתן גם להוסיף סוגים שונים של שדות באמצעות [Aspose.Words Document Object Model (DOM)](/words/he/net/aspose-words-document-object-model/). בחלק זה נבחן כמה דוגמאות.

### תגית: Merge שדה לתוך מסמך באמצעות DOM

The The The `MERGEFIELD` שדה במסמך Word יכול להיות מיוצג על ידי [FieldMergeField](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/) מעמד. אתה יכול להשתמש **FieldMergeField** לבצע את הפעולות הבאות:

- שם שדה המיזוג
- מפרט את הפורמט של שדה המיזוג
- ציין את הטקסט כי הוא בין ניתוח השדה לבין סוף השדה של שדה המיזוג
- ציין את הטקסט להיות מוכנס לאחר שדה המיזוג אם השדה אינו ריק
- ציין את הטקסט להיות מוכנס לפני שדה המיזוג אם השדה אינו ריק

{{% alert color="primary" %}}

לפרטים נוספים, ראה [FieldMergeField](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/) הכיתה API.

{{% /alert %}}

הדוגמה הבאה מציגה כיצד להוסיף `MERGE` שדה באמצעות DOM לפסקה במסמך:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertMergeFieldUsingDOM-InsertMergeFieldUsingDOM.cs" >}}

### הכנסת Mail Merge `ADDRESSBLOCK` שדה לתוך מסמך באמצעות DOM

The The The `ADDRESSBLOCK` שדה משמש כדי להוסיף mail merge כתובת בלוק במסמך Word `ADDRESSBLOCK` שדה במסמך Word יכול להיות מיוצג על ידי [FieldAddressBlock](https://reference.aspose.com/words/net/aspose.words.fields/fieldaddressblock/) מעמד. אתה יכול להשתמש **FieldAddressBlock** לבצע את הפעולות הבאות:

- ציין האם לכלול את שם המדינה/אזור בשדה
- ציין אם לעצב את הכתובת לפי המדינה / הרגולציה של המקבל כפי שהוגדר על ידי POST*CODE (Universal Postal Union 2006)
- שם המדינה/region
- מפרט את שם וכתובת
- ציין את מזהה השפה המשמש כדי לעצב את הכתובת

{{% alert color="primary" %}}

לפרטים נוספים, ראה [FieldAddressBlock](https://reference.aspose.com/words/net/aspose.words.fields/fieldaddressblock/) הכיתה API.

{{% /alert %}}

הדוגמה הבאה מציגה כיצד להוסיף Mail Merge `ADDRESSBLOCK` שדה באמצעות DOM לפסקה במסמך:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertMailMergeAddressBlockFieldUsingDOM-InsertMailMergeAddressBlockFieldUsingDOM.cs" >}}

### הכנסת `ADVANCE` שטח אל תוך מסמך מבלי להשתמש ב- DocumentBuilder

The The The `ADVANCE` שדה משמש כדי להתחיל טקסט לאחר מכן בתוך קו לשמאל, ימין, למעלה או למטה. The The The `ADVANCE` שדה במסמך Word יכול להיות מיוצג על ידי [FieldAdvance](https://reference.aspose.com/words/net/aspose.words.fields/fieldadvance/) מעמד. אתה יכול להשתמש **FieldAdvance** לבצע את הפעולות הבאות:

- ציין את מספר הנקודות שבאמצעותו הטקסט עוקב אחר השדה צריך לעבור אנכי מן הקצה העליון של הדף
- ציין את מספר הנקודות שבאמצעותו הטקסט עוקב אחר השדה צריך לעבור אופקית מן הקצה השמאלי של עמודה, מסגרת, או תיבת טקסט
- ציין את מספר הנקודות שבאמצעותן יש להעביר את הטקסט שלהלן השדה, ימין, למעלה או למטה

{{% alert color="primary" %}}

לפרטים נוספים, ראה [FieldAdvance](https://reference.aspose.com/words/net/aspose.words.fields/fieldadvance/) הכיתה API.

{{% /alert %}}

הדוגמה הבאה מציגה כיצד להוסיף `ADVANCE` שדה באמצעות DOM לפסקה במסמך:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertAdvanceFieldWithOutDocumentBuilder-InsertAdvanceFieldWithOutDocumentBuilder.cs" >}}

### הכנסת `ASK` שטח אל תוך מסמך מבלי להשתמש ב- DocumentBuilder

The The The `ASK` שדה משמש כדי להניע את המשתמש לטקסט כדי להקצות לסימן ספר במסמך Word. `ASK` שדה במסמך Word יכול להיות מיוצג על ידי [FieldAsk](https://reference.aspose.com/words/net/aspose.words.fields/fieldask/) מעמד. אתה יכול להשתמש **FieldAsk** לבצע את הפעולות הבאות:

- שם הספר
- ציין תגובה למשתמש ברירת מחדל (ערך חיוני הכלול בחלון המהיר)
- ציין האם יש לקבל את תגובת המשתמש פעם אחת לכל mail merge המבצע
- ציין את הטקסט המהיר (שם החלון המהיר)

{{% alert color="primary" %}}

לפרטים נוספים, ראה [FieldAsk](https://reference.aspose.com/words/net/aspose.words.fields/fieldask/) הכיתה API.

{{% /alert %}}

הדוגמה הבאה מציגה כיצד להוסיף `ASK` שדה באמצעות DOM לפסקה במסמך:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertASKFieldWithOutDocumentBuilder-InsertASKFieldWithOutDocumentBuilder.cs" >}}

### הכנסת `AUTHOR` שטח אל תוך מסמך מבלי להשתמש ב- DocumentBuilder

The The The `AUTHOR` שדה משמש כדי לציין את שם המחבר של המסמך מן `Document` תכונות. The The The `AUTHOR` שדה במסמך Word יכול להיות מיוצג על ידי [FieldAuthor](https://reference.aspose.com/words/net/aspose.words.fields/fieldauthor/) מעמד. אתה יכול להשתמש **FieldAuthor** לבצע את הפעולות הבאות:

- שם המחבר

{{% alert color="primary" %}}

לפרטים נוספים, ראה [FieldAuthor](https://reference.aspose.com/words/net/aspose.words.fields/fieldauthor/) הכיתה API.

{{% /alert %}}

הדוגמה הבאה מציגה כיצד להוסיף `AUTHOR` שדה באמצעות DOM לפסקה במסמך:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertAuthorField-InsertAuthorField.cs" >}}

### הכנסת `INCLUDETEXT` שטח אל תוך מסמך מבלי להשתמש ב- DocumentBuilder

The The The `INCLUDETEXT` שדה מוסיף את הטקסט והגרפיקה הכלולים במסמך בשם קוד השדה. באפשרותך להוסיף את המסמך כולו או חלק מהמסמכים המוזכרים בסימן ספר. שדה זה במסמך Word מיוצג על ידי INCLUDETEXT. אתה יכול להשתמש [FieldIncludeText](https://reference.aspose.com/words/net/aspose.words.fields/fieldincludetext/) לבצע את הפעולות הבאות:

- שם הספר של המסמך
- לציין את המיקום של המסמך

{{% alert color="primary" %}}

לפרטים נוספים, ראה [FieldIncludeText](https://reference.aspose.com/words/net/aspose.words.fields/fieldincludetext/) הכיתה API.

{{% /alert %}}

הדוגמה הבאה מציגה כיצד להוסיף `INCLUDETEXT` שדה באמצעות DOM לפסקה במסמך:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertIncludeFieldWithoutDocumentBuilder-InsertFieldIncludeTextWithoutDocumentBuilder.cs" >}}

### הכנסת `TOA` שטח אל תוך מסמך מבלי להשתמש ב- DocumentBuilder

The The The `TOA` (אפשרות הרשויות) בונה ומכניסת שולחן של רשויות. The The The `TOA` שדה אוסף ערכים המסומנים על ידי `TA` (אפשרות כניסה לרשויות) Microsoft Office Word מוסיף `TOA` שדה כאשר אתה לוחץ *שולחן אינסטלציה של הרשויות * **שולחן הרשויות** הקבוצה על **References** הכרטיסיה כשאתם רואים את `TOA` שדה במסמך שלך, הסינמס נראה כך:

{ `TOA` [Switches ] }

{{% alert color="primary" %}}

לפרטים נוספים, ראה [FieldToa](https://reference.aspose.com/words/net/aspose.words.fields/fieldtoa/) הכיתה API.

{{% /alert %}}

הדוגמה הבאה מציגה כיצד להוסיף `TOA` שדה באמצעות DOM לפסקה במסמך:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertTOAFieldWithoutDocumentBuilder-InsertTOAFieldWithoutDocumentBuilder.cs" >}}
