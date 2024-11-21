---
title: ליצור או לטעון מסמך Python
second_title: Aspose.Words עבור Python via .NET
articleTitle: ליצור או לטעון מסמך
linktitle: ליצור או לטעון מסמך
type: docs
url: /he/python-net/create-or-load-a-document/
description: "צור מסמך ריק או לטעון אותו מקובץ או מזרם באמצעות שימוש Python."
keywords: "create a document python, load a document python, create a blank document python, load a document from file python, load a document from stream python, create a document Aspose python, load a document Aspose python, load formats supported by Aspose.Words python"
weight: 10
timestamp: 2024-01-27-14-07-04
---

כמעט כל משימה שאתה רוצה לעשות עם Aspose.Words כולל טעינה של מסמך. The The The [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) הכיתה מייצגת מסמך טעון בזיכרון. המסמך יש כמה מבני בנייה מוגזמים המאפשרים לך ליצור מסמך ריק או לטעון אותו מקובץ או זרם. ניתן לטעון את המסמך בכל פורמט עומס נתמך על ידי Aspose.Words. לרשימה של כל פורמטי העומס הנתמכים, ראה את [LoadFormat](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) אזהרה.

## יצירת מסמך חדש

נקרא The [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) לבנות ללא פרמטרים כדי ליצור מסמך ריק חדש. אם אתה רוצה ליצור מסמך באופן מתודולוגי, הדרך הפשוטה ביותר היא להשתמש [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) שיעור להוסיף תוכן מסמך.

הדוגמה הבאה של הקוד מראה כיצד ליצור מסמך באמצעות בונה המסמך:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
            
builder.write("Hello world!")

doc.save(docs_base.artifacts_dir + "out.docx")
{{< /highlight >}}

{{% alert color="primary" %}}

שימו לב לערכי ברירת המחדל:

- מסמך ריק מכיל סעיף אחד עם פרמטרים ברירת מחדל, פסקה ריקה אחת, כמה סגנונות מסמך. למעשה, מסמך זה הוא זהה ליצירת "המסמכים החדשים" ב Microsoft Word.
- - גודל הנייר הוא [PaperSize.LETTER](https://reference.aspose.com/words/python-net/aspose.words/papersize/#letter).

{{% /alert %}}

## לטעון מסמך

על מנת לטעון מסמך קיים בכל אחד מהם [LoadFormat](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) פורמטים, להעביר את שם הקובץ או את הזרם לתוך אחד [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) בונה. פורמט המסמך המוטע נקבע באופן אוטומטי על ידי הרחבה שלו.

### תגית: a File

להעביר שם קובץ כמחרוזת [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) לבנות מסמך קיים מקובץ.

לדוגמה הקוד הבא מראה כיצד לפתוח מסמך מקובץ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-OpenDocument.py" >}}

ניתן להוריד את קובץ התבנית של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

### תגית: a Stream

כדי לפתוח מסמך מזרם, פשוט להעביר אובייקט זר המכיל את המסמך לתוך המסמך [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) בונה.

לדוגמה הקוד הבא מראה כיצד לפתוח מסמך מתוך זרם:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-OpeningFromStream.py" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ התבנית של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}
