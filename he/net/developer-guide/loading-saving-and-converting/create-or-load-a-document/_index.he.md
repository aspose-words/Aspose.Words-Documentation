---
title: ליצור או לטעון מסמך C#
second_title: Aspose.Words עבור .NET
articleTitle: ליצור או לטעון מסמך
linktitle: ליצור או לטעון מסמך
type: docs
url: /he/net/create-or-load-a-document/
description: "צור מסמך ריק או לטעון אותו מקובץ או מזרם באמצעות שימוש C#."
keywords: "create a document c#, load a document c#, create a blank document c#, load a document from file c#, load a document from stream c#, create a document Aspose .NET, load a document Aspose .NET, load formats supported by Aspose.Words .NET"
weight: 10
---

כמעט כל משימה שאתה רוצה לעשות עם Aspose.Words כולל טעינה של מסמך. The The The `Document` הכיתה מייצגת מסמך טעון בזיכרון. המסמך יש כמה מבני בנייה מוגזמים המאפשרים לך ליצור מסמך ריק או לטעון אותו מקובץ או זרם. ניתן לטעון את המסמך בכל פורמט עומס נתמך על ידי Aspose.Words. לרשימה של כל פורמטי העומס הנתמכים, ראה את [LoadFormat](https://reference.aspose.com/words/net/aspose.words/loadformat/) אזהרה.

## יצירת מסמך חדש {#create-a-new-document}

נקרא The [Document](https://reference.aspose.com/words/net/aspose.words/document/document/) לבנות ללא פרמטרים כדי ליצור מסמך ריק חדש. אם אתה רוצה ליצור מסמך באופן מתודולוגי, הדרך הפשוטה ביותר היא להשתמש [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) שיעור להוסיף תוכן מסמך.

הדוגמה הבאה של הקוד מראה כיצד ליצור מסמך באמצעות בונה המסמך:

{{< gist "aspose-words-gists" "16b9cfe5420b6e033f90a45263eef020" "create-docx.cs" >}}

{{% alert color="primary" %}}

שימו לב לערכי ברירת המחדל:

- מסמך ריק מכיל סעיף אחד עם פרמטרים ברירת מחדל, פסקה ריקה אחת, כמה סגנונות מסמך. למעשה, מסמך זה הוא זהה ליצירת "המסמכים החדשים" ב Microsoft Word.
- - גודל הנייר הוא [PaperSize](https://reference.aspose.com/words/net/aspose.words/papersize/).**Letter**.

{{% /alert %}}

## לטעון מסמך {#load-a-document}

על מנת לטעון מסמך קיים בכל אחד מהם [LoadFormat](https://reference.aspose.com/words/net/aspose.words/loadformat/) פורמטים, להעביר את שם הקובץ או את הזרם לתוך אחד מבני המסמך. פורמט המסמך המוטע נקבע באופן אוטומטי על ידי הרחבה שלו.

### תגית: a File {#load-from-a-file}

להעביר שם קובץ כמחרוזת אל בונה המסמך כדי לפתוח מסמך קיים מקובץ.

לדוגמה הקוד הבא מראה כיצד לפתוח מסמך מקובץ:

{{< gist "aspose-words-gists" "5bd617e9ea10953cbdd084bcf3810c02" "load-docx.cs" >}}

ניתן להוריד את קובץ התבנית של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

### תגית: a Stream {#load-from-a-stream}

כדי לפתוח מסמך מזרם, פשוט להעביר אובייקט זר המכיל את המסמך לתוך בונה המסמכים.

לדוגמה הקוד הבא מראה כיצד לפתוח מסמך מתוך זרם:

{{< gist "aspose-words-gists" "5bd617e9ea10953cbdd084bcf3810c02" "load-docx-stream.cs" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ התבנית של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}
