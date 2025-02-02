---
title: להחליף שדות עם טקסט Java
second_title: Aspose.Words עבור Java
articleTitle: להחליף שדות עם טקסט סטטי
linktitle: להחליף שדות עם טקסט סטטי
description: "למד כיצד להחליף שדות עם טקסט Java. להחליף שדות עם נתונים סטטיים באמצעות Java API."
type: docs
weight: 37
url: /he/java/replace-fields/
timestamp: 2024-01-27-14-07-04
---

הצבת שדות נדרשת לעתים קרובות כאשר ברצונך לשמור את המסמך כעתק סטטי. לדוגמה, בעת שליחת קבצים מצורפים בדואר אלקטרוני. המרת שדות כגון `DATE` או `TIME` לטקסט סטטי יאפשר את המסמך להציג את אותו התאריך כמו כאשר הוא נשלח. כמו כן, במצבים מסוימים, ייתכן שתצטרך להסיר את המצב. `IF` שדות מהמסמכים שלך ומחליפים אותם עם תוצאות הטקסט העדכניות ביותר. לדוגמה, המרת התוצאה של `IF` שדה לטקסט סטטי כך שהוא כבר לא ישנה באופן דינמי את ערכו כאשר שדות במסמך מעודכנים.

הדיאגרמה למטה מראה כיצד `IF` שדה נשמר במסמך:

* הטקסט מוקף בצומת שדה מיוחד - [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/) ו [FieldEnd](https://reference.aspose.com/words/java/com.aspose.words/fieldend/)
* [FieldSeparator](https://reference.aspose.com/words/java/com.aspose.words/fieldseparator/) Node מפריד את הטקסט בתוך השדה לתוך קוד השדה ותוצאה שדה
* קוד השדה מגדיר את ההתנהגות הכללית של התחום, בעוד שתוצאת השדה שומרת על התוצאה האחרונה כאשר שדה זה עודכן באמצעות שימוש Microsoft Word או Aspose.Words
* התוצאה של השדה היא מה מאוחסן בתחום ומוצג במסמך בעת צפייה

![update-remove-a-field-aspose-words](/words/java/replace-fields/updating-and-removing-a-field-1.png)

ניתן לראות גם את המבנה מתחת בצורת היררכי באמצעות פרויקט ההדגמה **“DocumentExplorer”**, ספינות עם **Aspose.Words** ההתקנה.

![update-remove-a-field-aspose-words-2](/words/java/replace-fields/updating-and-removing-a-field-2.png)

## שדות שלא ניתן להחליף באמצעות טקסט

הצבת שדה עם טקסט סטטי לא עובד כראוי עבור כמה שדות בראש או רגל.

לדוגמה, מנסה להמיר את `PAGE` שדה בראש או רגל לטקסט סטטי יביא לאותו ערך המוצג בכל הדפים. הסיבה לכך היא כי Headers ו Footers חוזרים על עצמם על פני דפים מרובים, וכאשר הם נשארים כמו שדות, הם מטופלים במיוחד כך שהם מציגים את התוצאה הנכונה עבור כל דף.

עם זאת, בראש, `PAGE` שדה מתורגם היטב לריצה סטטית של טקסט. קטע זה של טקסט יובחן כאילו היה העמוד האחרון בסעיף, אשר יגרום לכל אחד. `PAGE` שדה בראש כדי להציג את הדף האחרון על כל הדפים.

דוגמה לקוד הבא מראה כיצד להחליף את השדה עם התוצאה האחרונה:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UnlinkFields-UnlinkFields.java" >}}

## המרת סוגי שדה מסוימים ב- Specific Document Parts

מאז **ConvertFieldsToStaticText** השיטה מקבלת שני פרמטרים - [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) תכונות ו [FieldType](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) בהנחה, ניתן להעביר כל צומת מורכב בשיטה זו. זה מאפשר שדות להיות מומרים לטקסט סטטי רק בחלקים ספציפיים של המסמך.

לדוגמה, אתה יכול להעביר [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) אובייקט וממיר שדות של הסוג שצוין מן המסמך כולו לטקסט סטטי, או שאתה יכול להעביר את [Body](https://reference.aspose.com/words/java/com.aspose.words/body/) אובייקט של סעיף וממיר רק את השדות שנמצאו בגוף זה.

{{% alert color="primary" %}}

כאשר עוברים צומת ברמת בלוק כגון [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), להיות מודע לכך שבמקרים מסוימים, שדות יכולים לעבור על פסקאות מרובות. אם זה קורה, מומלץ להעביר את ההורה של המתחם במקום להימנע מכך.

{{% /alert %}}

The The The [FieldType](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) ההארה עברה **ConvertFieldsToStaticText** שיטה מפרטת איזה סוג של שדות יש להמיר לטקסט סטטי. כל סוג אחר שנמצא במסמך יישאר ללא שינוי.

הדוגמה הבאה של הקוד מראה כיצד לבחור שדות מסוג מסוים - *targetFieldType* בצומת מסוים - *compositeNode* ואז להמיר אותם לטקסט סטטי:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldHelper-FieldsHelper.java" >}}

דוגמה לקוד הבא מראה כיצד להמיר את כל `IF` שדות במסמך לטקסט סטטי:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInDocument-ConvertFieldsInDocument.java" >}}

דוגמה לקוד הבא מראה כיצד להמיר את כל `PAGE` שדות בגוף של מסמך לטקסט סטטי:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInBody-ConvertFieldsInBody.java" >}}

דוגמה לקוד הבא מראה כיצד להמיר את כל `IF` שדות בפסקה האחרונה לטקסט סטטי:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInParagraph-ConvertFieldsInParagraph.java" >}}
