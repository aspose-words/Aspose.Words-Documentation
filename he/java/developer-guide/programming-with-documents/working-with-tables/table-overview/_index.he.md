---
title: מצגת שולחן
second_title: Aspose.Words עבור Java
articleTitle: מצגת שולחן
linktitle: מצגת שולחן
description: "עבודה עם טבלאות ורכיביהם כגון תאים, שורות, עמודות Aspose.Words עבור Java. איך לעבוד עם שולחנות Java."
type: docs
weight: 10
url: /he/java/table-overview/
---

Aspose.Words היא ספריית כיתה המיועדת לעיבוד לצד השרת של מסמכים בפורמטים שונים - PDF, HTML, שונה Microsoft Word פורמטים ואחרים - ותומכים בטבלאות בדרכים הבאות:

* טבלאות במסמך נשמרות במהלך Open/save והמרות
* ניתן לערוך טבלה, תוכן, ותבניתו, ולאחר מכן לייצא את השינויים לקובץ בפורמט התומך בטבלאות

במאמר זה נלמד יותר על מבנה שולחן, תאים, שורות ועמודות הנתמכות על ידי Aspose.Words, פרטים על עבודה עם טבלאות כאלה.

## מבנה שולחן

כפי שכבר הוזכר, השולחן מורכב מרכיבים כגון **Cell**, **Row** ו **Column**. אלה הם מושגים נפוצים לכל הטבלאות באופן כללי, ללא קשר לתבנית המסמך.

זוהי דוגמא נפוצה של שולחן שנמצא בתוך Microsoft Word מסמך:

![tables-overview-aspose-words-java-1](/words/java/table-overview/tables-overview-1.png)

### טבלה Nodes

שולחן מכל מסמך טעון לתוך Aspose.Words הוא מיובא כמו **תגית: node**. ניתן למצוא את השולחן כילד:

- טקסט עיקרי
- סיפור פנימי כגון תגובה או הודעת שוליים
- תאים כאשר טבלה שוכנת בתוך שולחן אחר

{{% alert color="primary" %}}

שימו לב שטבלאות ניתן לקן בתוך טבלאות אחרות לכל עומק.

{{% /alert %}}

### תוכן שולחן

צומת השולחן אינו מכיל תוכן אמיתי - במקום זאת, הוא מיכל עבור צמתים אחרים שמרכיבים את התוכן:

- - **Table** מכיל רבים **Row** צומת השולחן מספק את כל האלמנטים הרגילים, ומאפשר לך לנוע בחופשיות, לשנות ולהסיר את השולחן במסמך.
- - **Row** מייצג שורת שולחן אחת ומכילה רבים **Cell** צומת בנוסף, **Row** מספק אלמנטים המגדירים כיצד מוצגת השורה, כגון גובה והיערכות.
- - **Cell** מה מכיל true תוכן גלוי בטבלה והוא מורכב **Paragraph** ונקודות בלוק אחרות. בנוסף, תאים יכולים להכיל שולחנות מזוינים.

![tables-overview-aspose-words-java-2](/words/java/table-overview/tables-overview-2.png)

{{% alert color="primary" %}}

אתה יכול לבדוק את המבנה של טבלאות במסמך באמצעות **DocumentExplorer**.

{{% /alert %}}

### תצלום ריק לאחר שולחן

התמונה לעיל מראה כי המסמך מכיל שולחן של כמה שורות, אשר בתורו מורכב משני תאים. כל אחד משני התאים כולל פסקה, שהיא המכולה לטקסט המתואם של התא.

ראוי גם לציין כי הפרדת שני שולחנות רצופים במסמך דורשת לפחות פסקה ריקה אחת לאחר השולחן. ללא סעיף כזה, טבלאות רצופות יתחברו אחד לשני. התנהגות זו זהה בשני Microsoft Word ו Aspose.Words.

Aspose.Words יש מספר שיעורים הקשורים לטבלאות - [Tables](https://reference.aspose.com/words/java/com.aspose.words/table/), [Rows](https://reference.aspose.com/words/java/com.aspose.words/row/), [Cells](https://reference.aspose.com/words/java/com.aspose.words/cell/), ואחרים.

## ראה גם

* [Aspose.Words Document Object Model (DOM)](/words/he/java/aspose-words-document-object-model/)
* [רמות לוגיות של נקודות במסמך](/words/he/java/logical-levels-of-nodes-in-a-document/)