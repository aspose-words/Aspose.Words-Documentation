---
title: הכנסת שדות Java
second_title: Aspose.Words עבור Java
articleTitle: הכניסו שדות
linktitle: הכניסו שדות
description: "דרכים שונות להכניס שדות לתוך המסמך שלך Java."
type: docs
weight: 20
url: /he/java/insert-fields/
timestamp: 2024-01-27-14-07-04
---

ישנן מספר דרכים שונות להכניס שדות למסמך:

- באמצעות [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)
- באמצעות [FieldBuilder](https://reference.aspose.com/words/java/com.aspose.words/fieldbuilder/)
- באמצעות [Aspose.Words Document Object Model (DOM)](/words/he/java/aspose-words-document-object-model/)

במאמר זה, נבחן כל דרך בפירוט רב יותר לנתח כיצד להכניס שדות מסוימים באמצעות אפשרויות אלה.

## הכנסת שדות לתוך מסמך באמצעות DocumentBuilder

In In In Aspose.Words The The [InsertField](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder#insertField(int,boolean)שיטה משמשת להכניס שדות חדשים למסמך. הפרמטר הראשון מקבל את קוד השדה המלא של השדה להיות מוכנס. הפרמטר השני הוא אופציונלי ומאפשר את תוצאת השדה להיות מוגדר באופן ידני. אם זה לא מסופק אז השדה עודכן באופן אוטומטי. אתה יכול לעבור אפס או ריק לפרמטר זה כדי להוסיף שדה עם ערך שדה ריק. אם אתה לא בטוח לגבי syntax קוד שדה מסוים, ליצור את השדה Microsoft Word קודם כל לעבור לראות את קוד השדה שלו.

{{% alert color="primary" %}}

אם קוד השדה שלך יש פרמטר המכיל שטח, אז זה חייב להיות סגור בתוך סימני דיבור. אחרת התחום בשני Microsoft Word ו Aspose.Words אולי לא לעבוד כפי שמצופה כי הפרמטר מטופל על ידי שניהם כמו להיות מנוטר.

{{% /alert %}}

הדוגמה הבאה של הקוד מראה כיצד להכניס שדה מיזוג למסמך באמצעות שימוש **DocumentBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-InsertField.java" >}}

אותה טכניקה משמשת כדי להכניס שדות מקונן בתחומים אחרים.

הדוגמה הבאה של הקוד ממחישה כיצד להכניס שדות הקן בתוך שדה אחר באמצעות שימוש **DocumentBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertNestedFields-InsertNestedFields.java" >}}

### המונחים: Field Level

מזהה שפה הוא קיצור בינלאומי סטנדרטי לשפה במדינה או באזור גיאוגרפי. עם Aspose.Words, באפשרותך לציין את המקומיים ברמת השדה באמצעות [LocaleId](https://reference.aspose.com/words/java/com.aspose.words/field/#getLocaleId) רכוש, אשר מקבל או מגדיר את מזהה המקומי של השדה.

דוגמה לקוד הבא מראה כיצד להשתמש באפשרות זו:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.java" >}}

### המונחים: Untyped / Empty Field

אם אתה רוצה להוסיף שדות לא מטיפוס / mpty ({}בדיוק כמו Microsoft Word מאפשר, אתה יכול להשתמש [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) שיטה עם [FieldType.FieldNone](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) פרמטר כדי להכניס שדה לתוך מסמך Word, אתה יכול ללחוץ על "Ctrl + F9" שילוב מפתח.

הדוגמה הבאה של הקוד מראה כיצד להכניס שדה ריק לתוך המסמך:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertFieldNone-InsertFieldNone.java" >}}

### הכנס `COMPARE` שדה

The The The `COMPARE` השדה משווה שני ערכים ומחזיר את הערך המספרי 1 אם ההשוואה היא true 0 אם ההשוואה היא false.

דוגמה לקוד הבא מראה כיצד להוסיף `COMPARE` שדות באמצעות DocumentBuilder:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldCompare.java" >}}

### הכנס `IF` שדה

The The The `IF` ניתן להשתמש בשדה כדי להעריך טענות באופן תנאי.

דוגמה לקוד הבא מראה כיצד להוסיף `IF` שדות באמצעות DocumentBuilder:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldIf.java" >}}

## הכנסת שדות לתוך מסמך באמצעות שדה בונה

דרך חלופית להכניס שדות Aspose.Words הוא [FieldBuilder](https://reference.aspose.com/words/java/com.aspose.words/fieldbuilder/) מעמד. הוא מספק ממשק שוטה כדי לציין מתגי שדה וערכי טיעון כטקסט, צמתים או אפילו שדות מקונן.

הדוגמה הבאה של הקוד מראה כיצד להכניס שדה לתוך מסמך באמצעות **FieldBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-FieldBuilder.java" >}}

## הכנסת שדות באמצעות DOM

ניתן גם להוסיף סוגים שונים של שדות באמצעות [Aspose.Words Document Object Model (DOM)](/words/he/java/aspose-words-document-object-model/). בחלק זה נבחן כמה דוגמאות.

### תגית: Merge שדה לתוך מסמך באמצעות DOM

`MERGEFIELD` שדה במסמך Word יכול להיות מיוצג על ידי [FieldMergeField](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/) מעמד. אתה יכול להשתמש **FieldMergeField** לבצע את הפעולות הבאות:

- שם שדה המיזוג
- ציין את הפורמט של שדה המיזוג
- ציין את הטקסט כי הוא בין שדה מפריד לקצה השדה של שדה המיזוג
- ציין את הטקסט להיות מוכנס לאחר שדה המיזוג אם השדה אינו ריק
- ציין את הטקסט להיות מוכנס לפני שדה המיזוג אם השדה אינו ריק

{{% alert color="primary" %}}

לפרטים נוספים, ראה [FieldMergeField](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/) הכיתה API.

{{% /alert %}}

דוגמה לקוד הבא מראה כיצד להוסיף `MERGE` שדה באמצעות DOM לפסקה במסמך:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertMergeFieldUsingDOM-InsertMergeFieldUsingDOM.java" >}}

### הכנסת Mail Merge `ADDRESSBLOCK` שדה לתוך מסמך באמצעות DOM

The The The `ADDRESSBLOCK` שדה משמש כדי להוסיף mail merge כתובת בלוק במסמך Word `ADDRESSBLOCK` שדה במסמך Word יכול להיות מיוצג על ידי [FieldAddressBlock](https://reference.aspose.com/words/java/com.aspose.words/fieldaddressblock/) מעמד. אתה יכול להשתמש **FieldAddressBlock** לבצע את הפעולות הבאות:

- ציין אם לכלול את שם המדינה/אזור בשדה
- ציין אם לעצב את הכתובת לפי המדינה / הרגולציה של המקבל כפי שהוגדר על ידי POST*CODE (Universal Postal Union 2006)
- שם המדינה /region
- מפרט את שם וכתובת
- ציין את מזהה השפה המשמש כדי לעצב את הכתובת

{{% alert color="primary" %}}

לפרטים נוספים, ראה [FieldAddressBlock](https://reference.aspose.com/words/java/com.aspose.words/fieldaddressblock/) הכיתה API.

{{% /alert %}}

דוגמה לקוד הבא מראה כיצד להוסיף Mail Merge `ADDRESSBLOCK` שדה באמצעות DOM לפסקה במסמך:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertMailMergeAddressBlockFieldUsingDOM-InsertMailMergeAddressBlockFieldUsingDOM.java" >}}

### הכנסת `ADVANCE` שטח אל תוך מסמך מבלי להשתמש ב- DocumentBuilder

The The The `ADVANCE` שדה משמש כדי להתחיל טקסט לאחר מכן בתוך קו לשמאל, ימין, למעלה או למטה. `ADVANCE` שדה במסמך Word יכול להיות מיוצג על ידי [FieldAdvance](https://reference.aspose.com/words/java/com.aspose.words/fieldadvance/) מעמד. אתה יכול להשתמש **FieldAdvance** שיעור ביצוע הפעולות הבאות:

- ציין את מספר הנקודות שבאמצעותו הטקסט עוקב אחר השדה צריך לעבור אנכי מן הקצה העליון של הדף
- ציין את מספר הנקודות שלפיו הטקסט עוקב אחר השדה צריך לעבור אופקית מן הקצה השמאלי של העמודה, המסגרת, או תיבת טקסט
- ציין את מספר הנקודות שעל פיו יש להעביר את הטקסט, ימין, למעלה או למטה

{{% alert color="primary" %}}

לפרטים נוספים, ראה [FieldAdvance](https://reference.aspose.com/words/java/com.aspose.words/fieldadvance/) הכיתה API.

{{% /alert %}}

דוגמה לקוד הבא מראה כיצד להוסיף `ADVANCE` שדה באמצעות DOM לפסקה במסמך:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldAdvance.java" >}}

### הכנסת `ASK` שטח אל תוך מסמך מבלי להשתמש ב- DocumentBuilder

The The The `ASK` שדה משמש כדי להניע את המשתמש לטקסט כדי להקצות לסימן ספר במסמך Word. `ASK` שדה במסמך Word יכול להיות מיוצג על ידי [FieldAsk](https://reference.aspose.com/words/java/com.aspose.words/fieldask/) מעמד. אתה יכול להשתמש **FieldAsk** שיעור ביצוע הפעולות הבאות:

- שם הספר
- ציין תגובה למשתמש ברירת מחדל (ערך חיוני הכלול בחלון המהיר)
- ציין האם יש לקבל את תגובת המשתמש פעם אחת לכל mail merge המבצע
- ציין את הטקסט המהיר (שם החלון המהיר)

{{% alert color="primary" %}}

לפרטים נוספים, ראה [FieldAsk](https://reference.aspose.com/words/java/com.aspose.words/fieldask/) הכיתה API.

{{% /alert %}}

דוגמה לקוד הבא מראה כיצד להוסיף `ASK` שדה באמצעות DOM לפסקה במסמך:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldAsk.java" >}}

### הכנסת `AUTHOR` שטח אל תוך מסמך מבלי להשתמש ב- DocumentBuilder

The The The `AUTHOR` שדה משמש כדי לציין את שם המחבר של המסמך מן `Document` תכונות. `AUTHOR` שדה במסמך Word יכול להיות מיוצג על ידי [FieldAuthor](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/) מעמד. אתה יכול להשתמש **FieldAuthor** שיעור ביצוע הפעולות הבאות:

- שם המחבר

{{% alert color="primary" %}}

לפרטים נוספים, ראה [FieldAuthor](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/) הכיתה API.

{{% /alert %}}

דוגמה לקוד הבא מראה כיצד להוסיף `AUTHOR` שדה באמצעות DOM לפסקה במסמך:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertAuthorField-InsertAuthorField.java" >}}

### הכנסת `INCLUDETEXT` שטח אל תוך מסמך מבלי להשתמש ב- DocumentBuilder

The The The `INCLUDETEXT` שדה מוסיף את הטקסט והגרפיקה הכלולים במסמך בשם קוד השדה. באפשרותך להוסיף את המסמך כולו או חלק מהמסמכים המוזכרים בסימן ספר. שדה זה במסמך Word מיוצג על ידי INCLUDETEXT. אתה יכול להשתמש [FieldIncludeText](https://reference.aspose.com/words/java/com.aspose.words/fieldincludetext/) שיעור ביצוע הפעולות הבאות:

- שם הספר של המסמך
- לציין את המיקום של המסמך

{{% alert color="primary" %}}

לפרטים נוספים, ראה [FieldIncludeText](https://reference.aspose.com/words/java/com.aspose.words/fieldincludetext/) הכיתה API.

{{% /alert %}}

דוגמה לקוד הבא מראה כיצד להוסיף `INCLUDETEXT` שדה באמצעות DOM לפסקה במסמך:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldIncludeText.java" >}}

### הכנסת `TOA` שטח אל תוך מסמך מבלי להשתמש ב- DocumentBuilder

The The The `TOA` (אפשרות הרשויות*) בונה ומכניסת שולחן של רשויות. The The The `TOA` שדה אוסף ערכים המסומנים על ידי `TA` (אפשרות כניסה לרשויות) Microsoft Office Word מוסיף `TOA` שדה בעת לחיצה על *שולחן אינסטלציה של הרשויות * **שולחן הרשויות** הקבוצה על **References** הכרטיסיה כשאתם רואים את `TOA` שדה במסמך שלך, הסינמס נראה כך:

{ `TOA` [Switches ] }

{{% alert color="primary" %}}

לפרטים נוספים, ראה [FieldToa](https://reference.aspose.com/words/java/com.aspose.words/fieldtoa/) הכיתה API.

{{% /alert %}}

דוגמה לקוד הבא מראה כיצד להוסיף `TOA` שדה באמצעות DOM לפסקה במסמך.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertTOAField-InsertTOAField.java" >}}
