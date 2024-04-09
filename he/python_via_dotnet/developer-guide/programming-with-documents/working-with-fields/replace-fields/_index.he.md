---
title: להחליף שדות Python
second_title: Aspose.Words עבור Python via .NET
articleTitle: להחליף שדות עם טקסט סטטי
linktitle: להחליף שדות עם טקסט סטטי
description: "למד כיצד להחליף שדות עם טקסט Python. להחליף שדות עם נתונים סטטיים באמצעות Python via .NET API."
type: docs
weight: 37
url: /he/python-net/replace-fields/
---

הצבת שדות נדרשת לעתים קרובות כאשר ברצונך לשמור את המסמך כעתק סטטי. לדוגמה, בעת שליחת קבצים מצורפים בדואר אלקטרוני. המרת שדות כגון `DATE` או `TIME` לטקסט סטטי יאפשר את המסמך להציג את אותו התאריך כמו כאשר הוא נשלח. כמו כן, במצבים מסוימים, ייתכן שתצטרך להסיר את המצב. `IF` שדות מהמסמכים שלך ומחליפים אותם עם תוצאות הטקסט העדכניות ביותר. לדוגמה, המרת התוצאה של `IF` שדה לטקסט סטטי כך שהוא כבר לא ישנה באופן דינמי את ערכו כאשר שדות במסמך מעודכנים.

הדיאגרמה למטה מראה כיצד `IF` שדה מאוחסן במסמך:

* הטקסט מוקף בצומת שדה מיוחד - [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) ו [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/)
* [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) Node מפריד את הטקסט בתוך השדה לתוך קוד השדה ותוצאה שדה
* קוד השדה מגדיר את ההתנהגות הכללית של התחום, בעוד שתוצאת השדה שומרת על התוצאה האחרונה כאשר שדה זה עודכן באמצעות שימוש Microsoft Word או Aspose.Words
* התוצאה של השדה היא מה מאוחסן בתחום ומוצג במסמך בעת צפייה

![update-remove-a-field-aspose-words](/words/python-net/replace-fields/updating-and-removing-a-field-1.png)

ניתן לראות גם את המבנה מתחת בצורת היררכי באמצעות המבנה. [פרוייקט ההדגמה "DocumentExplorer"](https://github.com/aspose-words/Aspose.Words-for-.NET)*.*

![update-remove-a-field-aspose-words-2](/words/python-net/replace-fields/updating-and-removing-a-field-2.png)

## שדות שלא ניתן להחליף באמצעות טקסט

הצבת שדה עם טקסט סטטי לא עובד כראוי עבור כמה שדות בראש או רגל.

לדוגמה, מנסה להמיר את `PAGE` שדה בראש או רגל לטקסט סטטי יביא לאותו ערך המוצג בכל הדפים. הסיבה לכך היא כי Headers ו Footers חוזרים על עצמם על פני דפים מרובים, וכאשר הם נשארים כמו שדות, הם מטופלים במיוחד כך שהם מציגים את התוצאה הנכונה עבור כל דף.

עם זאת, בראש, `PAGE` שדה מתורגם היטב לריצה סטטית של טקסט. קטע זה של טקסט יובחן כאילו היה העמוד האחרון בסעיף, אשר יגרום לכל אחד מהם. `PAGE` שדה בראש כדי להציג את הדף האחרון על כל הדפים.

דוגמה לקוד הבא מראה כיצד להחליף את השדה עם התוצאה האחרונה:

ExAMPLE

## המרת סוגי שדה מסוימים ב- Specific Document Parts

מאז **ConvertFieldsToStaticText** השיטה מקבלת שני פרמטרים - [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) תכונות ו [FieldType](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtype/) בהנחה, ניתן להעביר כל צומת מורכב בשיטה זו. זה מאפשר שדות להיות מומרים לטקסט סטטי רק בחלקים ספציפיים של המסמך.

לדוגמה, אתה יכול להעביר [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) אובייקט וממיר שדות של הסוג שצוין מן המסמך כולו לטקסט סטטי, או שאתה יכול להעביר את [Body](https://reference.aspose.com/words/python-net/aspose.words/body/) אובייקט של סעיף וממיר רק את השדות שנמצאו בגוף זה.

{{% alert color="primary" %}}

כאשר עוברים צומת ברמת בלוק כגון [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), להיות מודע לכך שבמקרים מסוימים, שדות יכולים לעבור על פסקאות מרובות. אם זה קורה, מומלץ להעביר את ההורה של המתחם במקום להימנע מכך.

{{% /alert %}}

The The The [FieldType](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtype/) ההארה עברה **ConvertFieldsToStaticText** שיטה מפרטת איזה סוג של שדות יש להמיר לטקסט סטטי. כל סוגי שדה אחרים שנמצאו במסמך יישארו ללא שינוי.

הדוגמה הבאה של הקוד מראה כיצד לבחור שדות מסוג מסוים - *targetFieldType* בצומת מסוים - *compositeNode* ואז להמיר אותם לטקסט סטטי:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldsHelper-FieldsHelper.cs" >}}

דוגמה לקוד הבא מראה כיצד להמיר את כל `IF` שדות במסמך לטקסט סטטי:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ConvertFieldsInDocument.py" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ הדגימה של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Linked%20fields.docx).

{{% /alert %}}

דוגמה לקוד הבא מראה כיצד להמיר את כל `PAGE` שדות בגוף של מסמך לטקסט סטטי:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ConvertFieldsInBody.py" >}}

דוגמה לקוד הבא מראה כיצד להמיר את כל `IF` שדות בפסקה האחרונה לטקסט סטטי:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ConvertFieldsInParagraph.py" >}}