---
title: ליצור או לטעון מסמך Java
second_title: Aspose.Words עבור Java
articleTitle: ליצור או לטעון מסמך
linktitle: ליצור או לטעון מסמך
type: docs
weight: 10
url: /he/java/create-or-load-a-document/
description: "Aspose.Words מאפשר לך ליצור מסמך ריק או לטעון אותו מקובץ או זרם באמצעות שימוש Java."
timestamp: 2024-01-27-14-07-04
---

כמעט כל משימה שאתה רוצה לעשות עם Aspose.Words כולל טעינה של מסמך. The The The `Document` הכיתה מייצגת מסמך טעון בזיכרון. המסמך יש כמה מבני בנייה מוגזמים המאפשרים לך ליצור מסמך ריק או לטעון אותו מקובץ או זרם. ניתן לטעון את המסמך בכל פורמט עומס נתמך על ידי Aspose.Words. לרשימה של כל פורמטי העומס הנתמכים, ראה את [LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) אזהרה.

## צור מסמך חדש {#create-a-new-document}

נקרא The [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) לבנות ללא פרמטרים כדי ליצור מסמך ריק חדש. אם אתה רוצה ליצור מסמך באופן מתודולוגי, הדרך הפשוטה ביותר היא להשתמש [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder) שיעור להוסיף תוכן מסמך.

הדוגמה הבאה של הקוד מראה כיצד ליצור מסמך באמצעות בונה המסמך:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CreateDocument-CreateDocument.java" >}}

{{% alert color="primary" %}}

שימו לב לערכי ברירת המחדל:

- מסמך ריק מכיל סעיף אחד עם פרמטרים ברירת מחדל, פסקה ריקה אחת, כמה סגנונות מסמך. למעשה, מסמך זה הוא זהה ליצירת "המסמכים החדשים" ב Microsoft Word.
- - גודל נייר המסמך הוא [PaperSize](https://reference.aspose.com/words/java/com.aspose.words/papersize/).**Letter**.

{{% /alert %}}

## לטעון מסמך

כדי לטעון מסמך קיים בכל אחד [LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) פורמטים, להעביר את שם הקובץ או את הזרם לתוך אחד מבני המסמך. פורמט המסמך טעון נקבע באופן אוטומטי על ידי הרחבה שלו.

### תגית: a File {#load-from-a-file}

להעביר שם קובץ כמחרוזת אל בונה המסמך כדי לפתוח מסמך קיים מקובץ.

לדוגמה הקוד הבא מראה כיצד לפתוח מסמך מקובץ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenFromFile.java" >}}

ניתן להוריד את קובץ התבנית של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

### תגית: a Stream {#load-from-a-stream}

כדי לפתוח מסמך מזרם, פשוט להעביר אובייקט זר המכיל את המסמך לתוך בונה המסמכים.

הדוגמה הבאה של הקוד מראה כיצד לפתוח מסמך מתוך זרם:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenFromStream.java" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ התבנית של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}
