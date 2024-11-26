---
title: Serialize ולעבוד עם מסמך במסד נתונים
second_title: Aspose.Words עבור Java
articleTitle: Serialize ולעבוד עם מסמך במסד נתונים
linktitle: Serialize ולעבוד עם מסמך במסד נתונים
description: "להפוך מסמך למערך עוטה לעבודה עם מסמך זה במסד נתונים. אתה יכול לאחסן ולאחזר מסמך אל וממסד הנתונים באמצעות Java."
type: docs
weight: 40
url: /he/java/serialize-and-work-with-a-document-in-a-database/
timestamp: 2024-01-27-14-07-04
---

אחת המשימות שאתה יכול לעשות כאשר עבודה עם מסמכים היא אחסון ושיקום **Document** אובייקטים וממסד נתונים. לדוגמה, זה יהיה הכרחי אם תיישם כל סוג של מערכת ניהול תוכן. יש לאחסן את כל הגרסאות הקודמות של המסמכים במערכת מסד הנתונים. היכולת לאחסן מסמכים במסד הנתונים היא גם שימושית ביותר כאשר היישום שלך מספק שירות מבוסס אינטרנט.

Aspose.Words מספק יכולת להמיר מסמך לתוך מערך עוטה עבור עבודה לאחר מכן עם מסמך זה במסד נתונים.

## עקבו אחרי Byte Array

כדי לאחסן מסמך במסד נתונים או להכין מסמך לשידור ברחבי האינטרנט, לעתים קרובות יש צורך לקבוע את המסמך כדי להשיג מערך עוטה.

כדי לנסח [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) אובייקט Aspose.Words:

1.1 1. להציל אותו ל **MemoryStream** באמצעות [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-int) המונחים: overload **Document** מעמד.
1.1 1. התקשר **ToArray** שיטה, אשר מחזירה מערך של עיתות המייצגות את המסמך בצורה עוטה.

השלבים לעיל ניתן להפוך כדי לטעון את המטות בחזרה לתוך a **Document** אובייקט

{{% alert color="primary" %}}

פורמט החיסכון שנבחר חשוב להבטיח את הנאמנות הגבוהה ביותר נשמרת בעת שמירה ועומס לתוך הסגידה **Document** אובייקט מסיבה זו, מומלץ להשתמש בסדרה של פורמטי קובץ OOXML.

{{% /alert %}}

הדוגמה הבאה מראה כיצד לארגן **Document** להתנגד להשגת מערך עוטה, ולאחר מכן כיצד להשבית את מערך ה- Byte כדי להשיג מערך **Document** להתנגד שוב:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToByte-ConvertDocumentToByte.java" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ התבנית של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## קרא ומחק מסמך במסד נתונים

סעיף זה מראה כיצד לחסוך מסמך במסד נתונים ולאחר מכן לטעון אותו בחזרה לתוך מסד נתונים. `Document` להתנגד לעבוד איתו. לשם פשטות, שם הקובץ הוא המפתח המשמש לאחסון ולמשוך מסמכים ממסד הנתונים. מסד הנתונים מכיל שני עמודים. העמודה הראשונה "File Name" מאוחסנת כ String ומשמשת לזיהוי מסמכים. העמודה השנייה "Filecontent" מאוחסנת כעמוד `BLOB` אובייקט אשר מאחסן את אובייקט המסמך בצורה עוטה.

דוגמה הקוד הבא מראה כיצד להגדיר חיבור למסד נתונים ולבצע פקודות:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-OpenDatabaseConnection.java" >}}

{{% alert color="primary" %}}

בדוגמה זו, אנו משתמשים במסד הנתונים של MySQL כדי לאחסן מסד נתונים Aspose.Words מסמך.

{{% /alert %}}

הדוגמה הבאה של הקוד מראה כיצד לחסוך מסמך למסד הנתונים, ואז לקרוא את אותו מסמך שוב, ולבסוף למחוק את הרשומה המכילה את המסמך ממסד הנתונים:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-OpenRetrieveAndDelete.java" >}}

### שמור מסמך למסד נתונים

כדי לשמור מסמך במסד נתונים להמיר מסמך זה למערך של עציצים, כפי שתואר בתחילת מאמר זה. לאחר מכן, שמור את מערך התווך הזה לתחום מסד נתונים.

הדוגמה הבאה של הקוד מראה כיצד לחסוך מסמך למסד הנתונים שצוין:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-StoreToDatabase.java" >}}

הוראות ספציפיות, שהיא ביטוי של SQL שעושה את כל העבודה:

- - כדי לשמור מסמך לתוך מסד הנתונים, הפקודה "INSERT INTO" משמשת ושולחן שצוין יחד עם הערכים של שני שדות שיא - שם קובץ ו- Filecontent. כדי למנוע פרמטרים נוספים, שם הקובץ נלקח מן **Document** להתנגד לעצמו. The The The `FileContent` ערך שדה מוקצה על ידיות מהזרם הזיכרון, המכיל ייצוג בינארי של המסמך המאוחסן.
- - קו הקוד הנותרים מבצע את הפקודה אשר מאחסנת את הפקודה Aspose.Words מסמך במסד הנתונים.

### החזרת מסמך ממסד נתונים

כדי לאחזר מסמך ממסד הנתונים, בחר את הרשומה המכילה את נתוני המסמך כמערך של עקיפים. לאחר מכן לטעון את מערך התווך מן השיא לתוך **MemoryStream** ליצור **Document** אובייקט שיטען את המסמך מן **MemoryStream**.

הדוגמה הבאה של הקוד מראה כיצד לשחזר ולהחזיר מסמך ממסד הנתונים שצוין באמצעות שם הקובץ כמפתח להביא מסמך זה:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-ReadFromDatabase.java" >}}

{{% alert color="primary" %}}

הפקודה "SELECT * FROM" משמשת כדי להביא את הרשומה המתאימה על בסיס שם הקובץ.

{{% /alert %}}

### למחוק מסמך ממסד נתונים

כדי למחוק מסמך ממסד הנתונים, השתמש בפקד SQL המתאים ללא כל מניפולציה על **Document** אובייקט

דוגמה הקוד הבא מראה כיצד למחוק מסמך ממסד הנתונים, באמצעות שם הקובץ כדי להביא את הרשומה:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-DeleteFromDatabase.java" >}}
