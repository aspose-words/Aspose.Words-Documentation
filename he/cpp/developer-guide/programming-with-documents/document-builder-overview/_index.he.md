---
title: סקירת בונה מסמכים ב C++
second_title: Aspose.Words עבור C++
articleTitle: סקירה כללית של בונה מסמכים
linktitle: סקירה כללית של בונה מסמכים
type: docs
description: "DocumentBuilder מאפשר לך לבנות מסמכים דינמיים מאפס או להוסיף אלמנטים חדשים לקיימים באמצעות C++. DocumentBuilder מספק שיטות להוספת טקסט, checkbox, טבלאות, תמונות ורכיבי תוכן אחרים ב C++."
weight: 30
url: /he/cpp/document-builder-overview/
timestamp: 2024-01-27-14-07-04
---

[DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) הוא מעמד רב עוצמה המקשר עם [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) ומאפשר לך לבנות מסמכים דינמיים מאפס או להוסיף אלמנטים חדשים לאחד קיים.

**DocumentBuilder**

## בונה מסמכים או Aspose.Words DOM

**DocumentBuilder**

פעולות אפשריות עם **DocumentBuilder** אפשריות גם כאשר משתמשים בכיתות של Aspose.Words DOM ישירות. עם זאת, באמצעות Aspose.Words DOM כיתות ישירות בדרך כלל דורש יותר שורות קוד מאשר באמצעות **DocumentBuilder**.

## ניווט במסמכים

ניווט במסמכים מבוסס על הרעיון של סמן וירטואלי, איתו ניתן לעבור למיקום אחר במסמך בשיטות שונות **DocumentBuilder.MoveToXXX** כגון [MoveToDocumentStart](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetodocumentstart/) ו [MoveToField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetofield/). סמן וירטואלי זה מציין היכן יוכנס הטקסט בעת התקשרות לשיטות [Write](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/write/), [Writeln](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/writeln/), [InsertBreak](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertbreak/), ואחרים.

דוגמת הקוד הבאה מראה כיצד לנווט לסימניה:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmarkEnd.cpp" >}}

## בניית מסמכים ושינוי

Aspose.Words API מספק מספר מחלקות האחראיות על עיצוב אלמנטים שונים של מסמך. כל אחת מהכיתות מכילה מאפייני עיצוב הקשורים לאלמנט מסמך ספציפי, כגון טקסט, פיסקה, קטע ואחרים. לדוגמה, המחלקה [Font](https://reference.aspose.com/words/cpp/aspose.words/font/) מייצגת מאפייני עיצוב תווים, המחלקה [ParagraphFormat](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/) מייצגת מאפייני עיצוב פסקאות וכן הלאה. אובייקטים של מחלקות אלה מוחזרים על ידי המאפיינים המתאימים **DocumentBuilder**, שיש להם את אותם שמות כמו המחלקות. לכן, אתה יכול לגשת אליהם ולהגדיר את העיצוב הרצוי במהלך בניית המסמך.

ניתן גם להוסיף טקסט, checkbox, אובייקט אולה, תמונות, סימניות, שדות טופס ורכיבי מסמך אחרים במיקום הסמן באמצעות שיטת `Write` או כל אחת מהשיטות **DocumentBuilder.InsertXXX**, כגון [InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/), [InsertHtml](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/inserthtml/) ושיטות דומות.

בואו נראה כיצד ליצור מסמך פשוט באמצעות **DocumentBuilder**.

### צור מסמך באמצעות DocumentBuilder

כדי להתחיל, עליך ליצור **DocumentBuilder** ולשייך אותו לאובייקט **Document**. אתה יוצר מופע חדש של **DocumentBuilder** על ידי התקשרות לבנאי שלו ומעביר אותו לאובייקט **Document** לצורך התקשרות לבונה.

כדי להוסיף טקסט, העבר את מחרוזת הטקסט שעליך להכניס למסמך לשיטה **Write**.

דוגמת הקוד הבאה מראה כיצד ליצור מסמך פשוט באמצעות בונה מסמכים.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Quick-Start-HelloWorld-HelloWorld.cpp" >}}

### ציין עיצוב מסמך

המאפיין [Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/) מגדיר עיצוב טקסט. אובייקט זה מכיל תכונות גופן שונות (שם גופן, גודל גופן, צבע וכן הלאה). כמה תכונות גופן חשובות מיוצגות גם על ידי **DocumentBuilder** מאפיינים כדי לאפשר לך לגשת אליהם ישירות. אלה הם [Font.Bold](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_bold/), [Font.Italic](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_italic/), ו [Font.Underline](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_underline/) תכונות בוליאניות.

דוגמת הקוד הבאה מראה כיצד להוסיף טקסט מעוצב באמצעות **DocumentBuilder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cpp" >}}

{{% alert color="primary" %}}

- [Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/) מציין את עיצוב התווים שיוחל על כל הטקסט שהוכנס מהמיקום הנוכחי במסמך ואילך.
- [ParagraphFormat](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/) מציין את עיצוב הפיסקה עבור הפסקאות הנוכחיות וכל הפסקאות שיוכנסו.
- [PageSetup](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/) מציין את מאפייני הדף והקטע עבור הקטע הנוכחי ואת כל הקטע שיוכנס.
- [CellFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_cellformat/) ו [RowFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_rowformat/) ציין מאפייני עיצוב שיוחלו על תאי טבלה ושורות מהמיקום הנוכחי במסמך ואילך.

במצב זה," זרם " פירושו המיקום, הפסקה, הקטע, התא או השורה שבהם נמצא הסמן.

{{% /alert %}}

{{% alert color="primary" %}}

שים לב שהמאפיינים **Font**, **ParagraphFormat** ו **PageSetup** מתעדכנים בכל פעם שאתה מנווט למיקום אחר במסמך כדי לשקף את מאפייני העיצוב של מיקום זה.

{{% /alert %}}
