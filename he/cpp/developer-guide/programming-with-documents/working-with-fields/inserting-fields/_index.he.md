---
title: הכנס שדות ב C++
second_title: Aspose.Words עבור C++
articleTitle: הוספת שדות
linktitle: הוספת שדות
description: "דרכים שונות להכניס שדות למסמך באמצעות C++."
type: docs
weight: 20
url: /he/cpp/inserting-fields/
timestamp: 2024-01-27-14-07-04
---

ישנן מספר דרכים שונות להכניס שדות למסמך:

- שימוש [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/)
- שימוש [FieldBuilder](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldbuilder/)
- שימוש [Aspose.Words מודל אובייקט מסמך (DOM)](/words/cpp/aspose-words-document-object-model/)

במאמר זה, נבחן כל דרך בפירוט רב יותר ולנתח כיצד להוסיף שדות מסוימים באמצעות אפשרויות אלה.

## הוספת שדות למסמך באמצעות DocumentBuilder

ב Aspose.Words ה [InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/) השיטה משמשת להכנסת שדות חדשים למסמך. הפרמטר הראשון מקבל את קוד השדה המלא של השדה שיוכנס. הפרמטר השני הוא אופציונלי ומאפשר להגדיר את תוצאת השדה של השדה באופן ידני. אם זה לא מסופק אז השדה מתעדכן באופן אוטומטי. אתה יכול להעביר אפס או ריק לפרמטר זה כדי להוסיף שדה עם ערך שדה ריק. אם אינך בטוח לגבי תחביר קוד השדה המסוים, צור תחילה את השדה ב Microsoft Word ועבר לראות את קוד השדה שלו.

{{% alert color="primary" %}}

אם לקוד השדה שלך יש פרמטר המכיל רווח, עליו להיות מוקף בסימני דיבור. אחרת השדה בשני Microsoft Word ו Aspose.Words לא יכול לעבוד כצפוי כמו הפרמטר מטופל על ידי שניהם כמו להיות מקוצר

{{% /alert %}}

דוגמת הקוד הבאה מראה כיצד להוסיף שדה מיזוג למסמך באמצעות **DocumentBuilder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Fields-InsertField.h" >}}

אותה טכניקה משמשת להכנסת שדות המקוננים בשדות אחרים.

דוגמת הקוד הבאה מראה כיצד להוסיף שדות מקוננים בתוך שדה אחר באמצעות **DocumentBuilder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertNestedFields-InsertNestedFields.cpp" >}}

### ציין אזור ברמת השדה

מזהה שפה הוא קיצור מספרי בינלאומי סטנדרטי לשפה במדינה או באזור גיאוגרפי. באמצעות Aspose.Words, ניתן לציין את האזור ברמת השדה באמצעות המאפיין [LocaleId](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_localeid/), שמקבל או מגדיר את אזור השדה ID.

דוגמת הקוד הבאה מראה כיצד להשתמש באפשרות זו:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.cpp" >}}

### הכנס שדה לא מקליד / ריק

אם ברצונך להוסיף שדות לא מוקלדים/ריקים ({}) בדיוק כמו Microsoft Word מאפשר, אתה יכול להשתמש בשיטת [InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield) עם הפרמטר [FieldType.FieldNone](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldtype/). כדי להוסיף שדה למסמך Word, אתה יכול ללחוץ על" שילוב מקשים + F9".

דוגמת הקוד הבאה מראה כיצד להוסיף שדה ריק למסמך:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertFieldNone-InsertFieldNone.cpp" >}}

## הוספת שדות למסמך באמצעות FieldBuilder

הדרך האלטרנטיבית להכניס שדות ב Aspose.Words היא הכיתה [FieldBuilder](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldbuilder/). הוא מספק ממשק שוטף כדי לציין בוררי שדה וערכי ארגומנט כטקסט, צמתים או אפילו שדות מקוננים.

דוגמת הקוד הבאה מראה כיצד להוסיף שדה למסמך באמצעות **FieldBuilder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertFieldUsingFieldBuilder-InsertFieldUsingFieldBuilder.cpp" >}}

## הוספת שדות באמצעות DOM

ניתן גם להוסיף סוגים שונים של שדות באמצעות [Aspose.Words מודל אובייקט מסמך (DOM)](/words/cpp/aspose-words-document-object-model/). בחלק זה נבחן כמה דוגמאות.

### הוספת שדה מיזוג למסמך באמצעות DOM

השדה `MERGEFIELD` במסמך Word יכול להיות מיוצג על ידי הכיתה [FieldMergeField](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/). אתה יכול להשתמש בכיתה **FieldMergeField** כדי לבצע את הפעולות הבאות:

- ציין את שם שדה המיזוג
- ציין את העיצוב של שדה המיזוג
- ציין את הטקסט שנמצא בין מפריד השדות לסוף השדה של שדה המיזוג
- ציין את הטקסט שיוכנס לאחר שדה המיזוג אם השדה אינו ריק
- ציין את הטקסט שיוכנס לפני שדה המיזוג אם השדה אינו ריק

{{% alert color="primary" %}}

לפרטים נוספים, ראה את [FieldMergeField](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/) כיתה API.

{{% /alert %}}

דוגמת הקוד הבאה מראה כיצד להוסיף את השדה `MERGE` באמצעות DOM לפסקה במסמך:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertMergeFieldUsingDOM-InsertMergeFieldUsingDOM.cpp" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ המדגם של דוגמה זו מ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### הוספת שדה בלוק כתובת Mail Merge למסמך באמצעות DOM

השדה `ADDRESSBLOCK` משמש להכנסת בלוק כתובת Mail Merge במסמך Word. `ADDRESSBLOCK` שדה במסמך Word יכול להיות מיוצג על ידי הכיתה [FieldAddressBlock](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldaddressblock/). אתה יכול להשתמש בכיתה **FieldAddressBlock** כדי לבצע את הפעולות הבאות:

- ציין אם לכלול את שם המדינה/האזור בשדה
- ציין אם לעצב את הכתובת בהתאם למדינה / אזור הנמען כפי שהוגדר על ידי POST * CODE (איחוד הדואר האוניברסלי 2006)
- ציין את שם המדינה/האזור שלא נכלל
- ציין את תבנית השם והכתובת
- ציין את השפה ID המשמשת לעיצוב הכתובת

{{% alert color="primary" %}}

לפרטים נוספים, ראה את [FieldAddressBlock](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldaddressblock/) כיתה API.

{{% /alert %}}

דוגמת הקוד הבאה מראה כיצד להוסיף את השדה Mail Merge `ADDRESSBLOCK` באמצעות DOM לפסקה במסמך:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertMailMergeAddressBlockFieldUsingDOM-InsertMailMergeAddressBlockFieldUsingDOM.cpp" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ המדגם של דוגמה זו מ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### הוספת שדה מראש למסמך ללא שימוש DocumentBuilder

השדה `ADVANCE` משמש לקיזוז טקסט עוקב בתוך שורה שמאלה, ימינה, למעלה או למטה. השדה `ADVANCE` במסמך Word יכול להיות מיוצג על ידי הכיתה [FieldAdvance](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldadvance/). אתה יכול להשתמש בכיתה FieldAdvance כדי לבצע את הפעולות הבאות:

- ציין את מספר הנקודות שבאמצעותן יש להעביר את הטקסט העוקב אחר השדה אנכית מהקצה העליון של הדף
- ציין את מספר הנקודות שבאמצעותן יש להזיז את הטקסט העוקב אחר השדה אופקית מהקצה השמאלי של העמודה, המסגרת או תיבת הטקסט
- ציין את מספר הנקודות שבאמצעותן יש להזיז את הטקסט העוקב אחר השדה שמאלה, ימינה, למעלה או למטה

{{% alert color="primary" %}}

לפרטים נוספים, ראה את [FieldAdvance](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldadvance/) כיתה API.

{{% /alert %}}

דוגמת הקוד הבאה מראה כיצד להוסיף את השדה `ADVANCE` באמצעות DOM לפסקה במסמך:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertAdvanceFieldWithoutDocumentBuilder-InsertAdvanceFieldWithoutDocumentBuilder.cpp" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ המדגם של דוגמה זו מ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### הוספת שדה `ASK` למסמך ללא שימוש DocumentBuilder

השדה `ASK` משמש כדי לבקש מהמשתמש להקצות טקסט לסימניה במסמך Word. `ASK` שדה במסמך Word יכול להיות מיוצג על ידי הכיתה [FieldAsk](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldask/). אתה יכול להשתמש בכיתה **FieldAsk** כדי לבצע את הפעולות הבאות:

- ציין את שם הסימנייה
- ציין תגובת משתמש ברירת מחדל (ערך ראשוני הכלול בחלון הפקודה)
- ציין אם יש לקבל את תגובת המשתמש פעם אחת לכל פעולה Mail Merge
- ציין את טקסט ההנחיה (כותרת חלון ההנחיה)

{{% alert color="primary" %}}

לפרטים נוספים, ראה את [FieldAsk](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldask) כיתה API.

{{% /alert %}}

דוגמת הקוד הבאה מראה כיצד להוסיף את השדה `ASK` באמצעות DOM לפסקה במסמך:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertASKFieldWithoutDocumentBuilder-InsertASKFieldWithoutDocumentBuilder.cpp" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ המדגם של דוגמה זו מ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### הוספת שדה `AUTHOR` למסמך ללא שימוש DocumentBuilder

השדה `AUTHOR` משמש לציון שם מחבר המסמך מהמאפיינים `Document`. השדה `AUTHOR` במסמך Word יכול להיות מיוצג על ידי הכיתה [FieldAuthor](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldauthor/). אתה יכול להשתמש בכיתה **FieldAuthor** כדי לבצע את הפעולות הבאות:

- ציין את שם מחבר המסמך

{{% alert color="primary" %}}

לפרטים נוספים, ראה את [FieldAuthor](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldauthor/) כיתה API.

{{% /alert %}}

דוגמת הקוד הבאה מראה כיצד להוסיף את השדה `AUTHOR` באמצעות DOM לפסקה במסמך:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertAuthorField-InsertAuthorField.cpp" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ המדגם של דוגמה זו מ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### הוספת שדה `INCLUDETEXT` למסמך ללא שימוש DocumentBuilder

השדה `INCLUDETEXT` מוסיף את הטקסט והגרפיקה הכלולים במסמך ששמו בקוד השדה. אתה יכול להכניס את המסמך כולו או חלק מהמסמך שאליו מתייחסת סימניה. שדה זה במסמך Word מיוצג על ידי INCLUDETEXT. אתה יכול להשתמש בכיתה [FieldIncludeText](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldincludetext/) כדי לבצע את הפעולות הבאות:

- ציין את שם הסימנייה של המסמך הכלול
- ציין את מיקום המסמך

{{% alert color="primary" %}}

לפרטים נוספים, ראה את [FieldIncludeText](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldincludetext/) כיתה API.

{{% /alert %}}

דוגמת הקוד הבאה מראה כיצד להוסיף את השדה `INCLUDETEXT` באמצעות DOM לפסקה במסמך:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Fields-InsertFieldIncludeTextWithoutDocumentBuilder.h" >}}

### הוספת שדה `TOA` למסמך ללא שימוש DocumentBuilder

השדה `TOA` (*Table of Authorities*) בונה ומכניס טבלת רשויות. השדה `TOA` אוסף ערכים המסומנים בשדות `TA` (*Table of Authorities Entry*). Microsoft משרד Word מוסיף את השדה `TOA` כאשר אתה לוחץ על *Insert Table of Authorities* בקבוצה **Table of Authorities** בכרטיסייה **References**. כשאתה מציג את השדה `TOA` במסמך שלך, התחביר נראה כך:

{ `TOA` [Switches ] }

{{% alert color="primary" %}}

לפרטים נוספים, ראה את [FieldToa](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldtoa/) כיתה API.

{{% /alert %}}

דוגמת הקוד הבאה מראה כיצד להוסיף את השדה `TOA` באמצעות DOM לפסקה במסמך:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertTOAFieldWithoutDocumentBuilder-InsertTOAFieldWithoutDocumentBuilder.cpp" >}}/
