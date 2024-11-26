---
title: הכנסת שדות Python
second_title: Aspose.Words עבור Python via .NET
articleTitle: הכניסו שדות
linktitle: הכניסו שדות
description: "הכניסו שדות למסמך Python בדרכים שונות: שימוש `DocumentBuilder` או DOM ()Document Object Model)."
type: docs
weight: 20
url: /he/python-net/inserting-fields/
timestamp: 2024-09-25-11-08-55
---

ישנן מספר דרכים שונות להכניס שדות למסמך:

- באמצעות [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/)
- באמצעות [FieldBuilder](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldbuilder/)
- באמצעות [Aspose.Words Document Object Model (DOM)](/words/he/python-net/aspose-words-document-object-model/)

במאמר זה נבחן כל דרך בפירוט רב יותר לנתח כיצד להכניס שדות מסוימים באמצעות אפשרויות אלה.

## הכנסת שדות לתוך מסמך באמצעות מסמך בניית מסמכים

In In In Aspose.Words The The [insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) השיטה משמשת כדי להכניס שדות חדשים למסמך. הפרמטר הראשון מקבל את קוד השדה המלא של השדה להיות מוכנס. הפרמטר השני הוא אופציונלי ומאפשר את תוצאת השדה להיות מוגדר באופן ידני. אם זה לא מסופק אז השדה עודכן באופן אוטומטי. אתה יכול לעבור אפס או ריק לפרמטר זה כדי להוסיף שדה עם ערך שדה ריק. אם אתה לא בטוח לגבי syntax קוד שדה מסוים, ליצור את השדה Microsoft Word קודם כל לעבור לראות את קוד השדה שלו.

{{% alert color="primary" %}}

אם קוד השדה שלך יש פרמטר המכיל שטח, אז זה חייב להיות סגור בתוך סימני דיבור. אחרת התחום בשני Microsoft Word ו Aspose.Words אולי לא לעבוד כצפוי כמו הפרמטר מטופל על ידי שניהם כמו להיות מנוטר.

{{% /alert %}}

הדוגמה הבאה של הקוד מראה כיצד להכניס שדה מיזוג למסמך באמצעות שימוש **DocumentBuilder**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertField.py" >}}

הדוגמה הבאה של הקוד מראה כיצד להכניס שדה מיזוג עם המקומיים הגרמנים לתוך מסמך תוך שימוש במסמך באמצעות שימוש **DocumentBuilder**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-DocumentBuilderInsertField.py" >}}

אותה טכניקה משמשת כדי להכניס שדות מקונן בתחומים אחרים.

הדוגמה הבאה של הקוד מראה כיצד להכניס שדות הקן בתוך שדה אחר באמצעות שימוש **DocumentBuilder**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertNestedFields.py" >}}

### המונחים: Field Level

מזהה שפה הוא קיצור בינלאומי סטנדרטי לשפה במדינה או באזור גיאוגרפי. עם Aspose.Words, ניתן לציין מקומי ברמת שדה The The The [locale_id](https://reference.aspose.com/words/python-net/aspose.words.fields/field/locale_id/) הנכס מקבל או מגדיר את מזהה המקומי של השדה.

דוגמה לקוד הבא מראה כיצד להשתמש באפשרות זו:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-SpecifylocaleAtFieldlevel.py" >}}

### תגית: Untyped / Empty Field

אם אתה רוצה להוסיף שדות לא מטיפוס / mpty ({}בדיוק כמו Microsoft Word מאפשר, אתה יכול להשתמש [insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) שיטה עם [FieldType.FIELD_NONE](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtype/#field_none) פרמטר כדי להכניס שדה למסמך Word, באפשרותך ללחוץ על "Ctrl + F9" שילוב מפתח.

הדוגמה הבאה של הקוד מראה כיצד להכניס שדה ריק לתוך המסמך:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertFieldNone.py" >}}

## הכנסת שדות אל תוך מסמך באמצעות שדה בונה

דרך חלופית להכניס שדות Aspose.Words הוא [FieldBuilder](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldbuilder/) מעמד. הוא מספק ממשק שוטף כדי לציין מתגי שדה וערכי טיעון כטקסט, צמתים או אפילו שדות מקונן.

הדוגמה הבאה של הקוד מראה כיצד להכניס שדה למסמך באמצעות **FieldBuilder**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertFieldUsingFieldBuilder.py" >}}

## הכנסת שדות באמצעות DOM

ניתן גם להוסיף סוגים שונים של שדות באמצעות [Aspose.Words Document Object Model (DOM)](/words/he/python-net/aspose-words-document-object-model/). בחלק זה נבחן כמה דוגמאות.

### תגית: Merge שדה לתוך מסמך באמצעות DOM

The The The `MERGEFIELD` שדה במסמך Word יכול להיות מיוצג על ידי [FieldMergeField](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldmergefield/) מעמד. אתה יכול להשתמש [FieldMergeField](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldmergefield/) לבצע את הפעולות הבאות:

- שם שדה המיזוג
- מפרט את הפורמט של שדה המיזוג
- ציין את הטקסט כי הוא בין ניתוח השדה לבין סוף השדה של שדה המיזוג
- ציין את הטקסט להיות מוכנס לאחר שדה המיזוג אם השדה אינו ריק
- ציין את הטקסט להיות מוכנס לפני שדה המיזוג אם השדה אינו ריק

דוגמה לקוד הבא מראה כיצד להוסיף `Merge` שדה באמצעות DOM לפסקה במסמך:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertMergeFieldUsingDOM.py" >}}

### הכנסת Mail Merge `ADDRESSBLOCK` שדה לתוך מסמך באמצעות DOM

The The The `ADDRESSBLOCK` שדה משמש כדי להוסיף Mail Merge כתובת בלוק במסמך Word `ADDRESSBLOCK` שדה במסמך Word יכול להיות מיוצג על ידי [FieldAddressBlock](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldaddressblock/) מעמד. אתה יכול להשתמש [FieldAddressBlock](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldaddressblock/) לבצע את הפעולות הבאות:

- ציין האם לכלול את שם המדינה/אזור בשדה
- ציין אם לעצב את הכתובת לפי המדינה / הרגולציה של המקבל כפי שהוגדר על ידי POST*CODE (Universal Postal Union 2006)
- שם המדינה/region
- מפרט את שם וכתובת
- ציין את מזהה השפה המשמש כדי לעצב את הכתובת

הדוגמה הבאה מציגה כיצד להוסיף Mail Merge `ADDRESSBLOCK` שדה באמצעות DOM לפסקה במסמך:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertMailMergeAddressBlockFieldUsingDOM.py" >}}

### הכנסת `ADVANCE` שטח אל תוך מסמך מבלי להשתמש ב- DocumentBuilder

The The The `ADVANCE` שדה משמש כדי להתחיל טקסט לאחר מכן בתוך קו לשמאל, ימין, למעלה או למטה. The The The `ADVANCE` שדה במסמך Word יכול להיות מיוצג על ידי [FieldAdvance](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldadvance/) מעמד. אתה יכול להשתמש [FieldAdvance](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldadvance/) לבצע את הפעולות הבאות:

- ציין את מספר הנקודות שבאמצעותו הטקסט עוקב אחר השדה צריך לעבור אנכי מן הקצה העליון של הדף
- ציין את מספר הנקודות שבאמצעותו הטקסט עוקב אחר השדה צריך לעבור אופקית מן הקצה השמאלי של עמודה, מסגרת, או תיבת טקסט
- ציין את מספר הנקודות שבאמצעותן יש להעביר את הטקסט שלהלן השדה, ימין, למעלה או למטה

הדוגמה הבאה מציגה כיצד להוסיף `ADVANCE` שדה באמצעות DOM לפסקה במסמך.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertAdvanceFieldWithOutDocumentBuilder.py" >}}

### הכנסת `ASK` שטח אל תוך מסמך מבלי להשתמש ב- DocumentBuilder

The The The `ASK` שדה משמש כדי להניע את המשתמש לטקסט כדי להקצות לסימן ספר במסמך Word. `ASK` שדה במסמך Word יכול להיות מיוצג על ידי [FieldAsk](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldask/) מעמד. אתה יכול להשתמש **FieldAsk** לבצע את הפעולות הבאות:

- שם הספר
- ציין תגובה למשתמש ברירת מחדל (ערך חיוני הכלול בחלון המהיר)
- ציין האם יש לקבל את תגובת המשתמש פעם אחת לכל Mail Merge המבצע
- ציין את הטקסט המהיר (שם החלון המהיר)

הדוגמה הבאה מציגה כיצד להוסיף `ASK` שדה באמצעות DOM לפסקה במסמך:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertASKFieldWithOutDocumentBuilder.py" >}}

### הכנסת `AUTHOR` שטח אל תוך מסמך מבלי להשתמש ב- DocumentBuilder

The The The `AUTHOR` שדה משמש כדי לציין את שם המחבר של המסמך מן `Document` תכונות. The The The `AUTHOR` שדה במסמך Word יכול להיות מיוצג על ידי [FieldAuthor](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldauthor/) מעמד. אתה יכול להשתמש **FieldAuthor** לבצע את הפעולות הבאות:

- שם המחבר

הדוגמה הבאה מציגה כיצד להוסיף `AUTHOR` שדה באמצעות DOM לפסקה במסמך:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertAuthorField.py" >}}

### הכנסת `INCLUDETEXT` שטח אל תוך מסמך מבלי להשתמש ב- DocumentBuilder

The The The `INCLUDETEXT` שדה מוסיף את הטקסט והגרפיקה הכלולים במסמך בשם קוד השדה. באפשרותך להוסיף את המסמך כולו או חלק מהמסמכים המוזכרים בסימן ספר. שדה זה במסמך Word מיוצג על ידי INCLUDETEXT. אתה יכול להשתמש [FieldIncludeText](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldincludetext/) לבצע את הפעולות הבאות:

- שם הספר של המסמך
- לציין את המיקום של המסמך

הדוגמה הבאה מציגה כיצד להוסיף `INCLUDETEXT` שדה באמצעות DOM לפסקה במסמך:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertFieldIncludeTextWithoutDocumentBuilder.py" >}}

### הכנסת `TOA` שטח אל תוך מסמך מבלי להשתמש ב- DocumentBuilder

The The The `TOA` (אפשרות הרשויות) בונה ומכניסת שולחן של רשויות. The The The `TOA` שדה אוסף ערכים המסומנים על ידי `TA` (אפשרות כניסה לרשויות) Microsoft Office Word מוסיף `TOA` שדה כאשר אתה לוחץ *שולחן אינסטלציה של הרשויות * **שולחן הרשויות** הקבוצה על **References** הכרטיסיה כשאתם רואים את `TOA` שדה במסמך שלך, הסינמס נראה כך:

{ `TOA` [Switches ] }

אתה יכול להשתמש [FieldToa](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtoa/) שיעור לבצע את הפעולות עם `TOA` שדה.

הדוגמה הבאה מציגה כיצד להוסיף `TOA` שדה באמצעות DOM לפסקה במסמך:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertTOAFieldWithoutDocumentBuilder.py" >}}
