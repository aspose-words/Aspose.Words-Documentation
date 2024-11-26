---
title: קבל מסמך Python
second_title: Aspose.Words עבור Python via .NET
articleTitle: קליק מסמך
linktitle: קליק מסמך
type: docs
description: "קבל מסמך כדי לקבל עותק זהה באמצעות Python. בעת יצירת עותק, צמתים ונכסים של המסמך המקורי משוחזרים."
weight: 70
url: /he/python-net/clone-a-document/
timestamp: 2024-01-27-14-07-04
---

Cloning מסמך הוא התהליך של יצירת עותק זהה של מסמך מקורי, אשר יכול לשפר את הביצועים ולשמור אותך מפני דליפות זיכרון פוטנציאלי.

מאמר זה יסביר את המקרים העיקריים של הפעלת מסמך וכיצד ליצור משובט מסמך באמצעות שימוש Aspose.Words.

## תוצאות עם Cloning Documents

פעולת השיבוט מאפשרת לך להפוך את התהליך של יצירת מסמכים מהר יותר, כיוון שלא תצטרך לטעון ולהפיץ מסמך מקובץ בכל פעם.

לאחר יצירת שיבוט של המסמך שלך, תוכל לערוך אותו ולבצע פעולות שונות על זה, למשל, להשוות אותו עם המסמך המקורי, להוסיף או להכניס אותו למסמך אחר. אתה יכול גם לשנות אלמנטים משובקים או התוכן שלהם לפני הוספת אותם לתוך מסמך אחר.

## יצירת מסמך Clone

Aspose.Words מאפשר לך לשחזר מסמך באמצעות [clone](https://reference.aspose.com/words/python-net/aspose.words/document/clone/) שיטה המבצעת עותק עמוק של המסמך ומחזירה אותו. במילים אחרות, זה יקבל עותק מלא של DOM. The The The [clone](https://reference.aspose.com/words/python-net/aspose.words/document/clone/) שיטה מאיצה את דור המסמכים, ואתה רק צריך קו אחד של קוד כדי לקבל עותק של המסמך שלך.

Cloning יוצר מסמך חדש עם אותו תוכן כמו המקורי, אבל עם עותק ייחודי של כל אחד מהעמודים המקוריים של המסמך. אתה יכול גם ליישם את פעולת השיבוט למסמך על ידי שימוש בצומת [clone](https://reference.aspose.com/words/python-net/aspose.words/document/clone/) שיטה, המאפשרת לך לשכפל צומת מסמך מורכב עם וללא בלוטות הילד שלהם.

{{% alert color="primary" %}}

שים לב שכאשר יישום שיטת ההשבחה כל תכונות המסמך יוחזרו.

{{% /alert %}}

הדוגמה הבאה של הקוד מראה כיצד לשחזר מסמך וליצור עותק של סעיף במסמך זה:

{{< highlight python >}}
# Create a document.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.writeln("This is the original document before applying the clone method")

# Clone the document.
clone = doc.clone().as_document()

# Edit the cloned document.
builder = aw.DocumentBuilder(clone)
builder.write("Section 1")
builder.insert_break(aw.BreakType.SECTION_BREAK_NEW_PAGE)
builder.write("Section 2")

# This shows what is in the document originally. The document has two sections.
self.assertEqual(clone.sections.count, 2)

# Duplicate the last section and append the copy to the end of the document.
lastSectionIdx = clone.sections.count - 1
newSection = clone.sections[lastSectionIdx].clone()
clone.sections.add(newSection)

# Check what the document contains after we changed it.
self.assertEqual(clone.sections.count, 3)
{{< /highlight >}}
