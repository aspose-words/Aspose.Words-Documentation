---
title: יצרן מסמכים סקירה Python
second_title: Aspose.Words עבור Python via .NET
articleTitle: Document Builder
linktitle: Document Builder
type: docs
description: "DocumentBuilder מאפשר לך לבנות מסמכים דינמיים מאפס או להוסיף אלמנטים חדשים לאלה הקיימים באמצעות שימוש Python. DocumentBuilder מספק שיטות להוסיף טקסט, צ'קוקס, טבלאות, תמונות ואלמנטים אחרים של תוכן Python."
weight: 30
url: /he/python-net/document-builder-overview/
timestamp: 2024-01-27-14-07-04
---

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) הוא מעמד חזק שקושר עם [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) ומאפשר לך לבנות מסמכים דינמיים מאפס או להוסיף אלמנטים חדשים לאחד קיים.

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) מספק שיטות כדי להוסיף טקסט, צ'קוקס, אובייקטים ole, פסקאות, רשימות, טבלאות, תמונות ואלמנטים אחרים של תוכן. זה מאפשר לך לציין גופנים, סעיף או סעיף פורמט, ולבצע פעולות אחרות.

## בונה מסמכים או Aspose.Words DOM

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) משלים שיעורים ושיטות זמינים Aspose.Words Document Object Model ()DOMכדי לפשט את משימות בניית המסמכים הנפוצות ביותר. כלומר, אתה יכול ליצור ולשנות את התוכן של מסמכים הן דרך Aspose.Words DOMאשר דורש הבנה טובה של מבנה העץ, ושימוש ב- DocumentBuilder. The The The `DocumentBuilder` הוא "מסעדה" למורכב **Document** מבנה המאפשר לך להכניס במהירות ובקלות תוכן ופורמטיקה.

פעולות אפשריות עם [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) ניתן גם כאשר משתמשים בכיתות של Aspose.Words DOM ישירות. עם זאת, באמצעות Aspose.Words DOM שיעורים בדרך כלל דורשים יותר שורות קוד מאשר שימוש [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/).

## מסמך ניווט

ניווט מסמכים מבוסס על הרעיון של קידוד וירטואלי, שבו אתה יכול לעבור למיקום אחר במסמך באמצעות מגוון רחב של **מקור: DocumentBuilder** שיטות כגון [move_to_document_start](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_document_start/) ו [move_to_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_field/). cursor וירטואלית זו מציינת היכן הטקסט יוכנס בעת קריאה לשיטות [write](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/write/), [writeln](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/writeln/), [insert_break](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_break/), ואחרים. ראה את המאמר הבא "Navigation with Cursor" כדי ללמוד עוד על cursor וירטואלית.

דוגמה לקוד הבא מראה כיצד לנווט לסימן ספר:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToBookmarkEnd.py" >}}

## בניית מסמכים ושינוי

Aspose.Words API מספק מספר שיעורים האחראים לתבנית אלמנטים שונים של מסמך. כל אחת מהכיתות מדגימה נכסים הקשורים אלמנט מסמך ספציפי, כגון טקסט, פסקה, סעיף ואחרים. לדוגמה, [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) הכיתה מייצגת תכונות עיצוב אופי, [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/) הכיתה מייצגת את התכונות של סעיף, וכן הלאה. אובייקטים של שיעורים אלה יוחזרו על ידי התואם [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) נכסים, שיש להם את אותם השמות כמו המעמדות. לכן, אתה יכול לגשת אליהם ולהגדיר את הפורמט הרצוי במהלך בניית המסמך.

באפשרותך גם להוסיף טקסט, Checkbox, ole object, תמונות, סמנים, שדות טופס ואלמנטים אחרים של מסמכים בעמדה cursor באמצעות המיקום cursor באמצעות cursor `Write` שיטה או כל אחד **מקור: DocumentBuilder** שיטות, כגון [insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/), [insert_html](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_html/), שיטות דומות.

בואו נראה איך ליצור מסמך פשוט באמצעות [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/).

### יצירת מסמך באמצעות DocumentBuilder

כדי להתחיל, אתה צריך ליצור [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) לקשור אותו עם [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) אובייקט. אתה יוצר מקרה חדש של [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) על ידי קריאה ליוצר שלו ולהעביר אותו ל [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) להתנגד להחזקה אל הבונים.

כדי להוסיף טקסט, להעביר את מחרוזת הטקסט שאתה צריך להכניס לתוך המסמך אל המסמך. [write](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/write/) שיטה.

הדוגמה הבאה של הקוד מראה כיצד ליצור מסמך פשוט באמצעות בונה מסמך.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToDocumentStartEnd.py" >}}

### המונחים Document Format

The The The [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/) הנכס מגדיר פורמט טקסט. אובייקט זה מכיל תכונות גופניות שונות (שם גופני, גודל גופן, צבע וכן הלאה). כמה תכונות גופניות חשובות מיוצגות גם על ידי [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) תכונות כדי לאפשר לך לגשת אליהם ישירות. אלה הם [Font.bold](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/bold/), [Font.italic](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/italic/), ו [Font.underline](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/underline/) תכונות בוטות

הדוגמה הבאה של הקוד מראה כיצד להוסיף טקסט מעוצב באמצעות [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertParagraph.py" >}}

{{% alert color="primary" %}}

- - [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/) מפרט את פורמט האופי שיושם על כל הטקסט שהוכנס מהמיקום הנוכחי במסמך ואילך.
- - [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/) מפרט את הסעיף לתבנית הנוכחית וכל הסעיפים שיש להכניס.
- - [page_setup](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/page_setup/) מפרט את הדף ואת התכונות של החלק הנוכחי ואת כל הקטע שיוכנס.
- - [cell_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/cell_format/) ו [row_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/row_format/) ציין תכונות עיצוב שיושמו על תאים ושורה מהמיקום הנוכחי במסמך ואילך.

במצב זה, "נוכחי" פירושו העמדה, פסקה, סעיף, תא או שורה שבה הcursor הוא.

{{% /alert %}}

{{% alert color="primary" %}}

תגית: The [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/), [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/), ו [page_setup](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/page_setup/) נכסים מעודכנים בכל פעם שאתה לנווט למיקום אחר במסמך כדי לשקף את התכונות המפורמטיביות של מיקום זה.

{{% /alert %}}
