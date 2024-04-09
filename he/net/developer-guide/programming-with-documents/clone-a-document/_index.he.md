---
title: קבל מסמך C#
second_title: Aspose.Words עבור .NET
articleTitle: קליק מסמך
linktitle: קליק מסמך
type: docs
description: "קבל מסמך כדי לקבל עותק זהה באמצעות C#. בעת יצירת עותק, צמתים ונכסים של המסמך המקורי משוחזרים."
weight: 70
url: /he/net/clone-a-document/
---

Cloning מסמך הוא התהליך של יצירת עותק זהה של מסמך מקורי, אשר יכול לשפר את הביצועים ולשמור אותך מפני דליפות זיכרון פוטנציאלי.

מאמר זה יסביר את המקרים העיקריים של הפעלת מסמך וכיצד ליצור משובט מסמך באמצעות שימוש Aspose.Words.

## תוצאות עם Cloning Documents

פעולת השיבוט מאפשרת לך להפוך את התהליך של יצירת מסמכים מהר יותר, כיוון שלא תצטרך לטעון ולהפיץ מסמך מקובץ בכל פעם.

לאחר יצירת שיבוט של המסמך שלך, תוכל לערוך אותו ולבצע פעולות שונות על זה, למשל, להשוות אותו עם המסמך המקורי, להוסיף או להכניס אותו למסמך אחר. אתה יכול גם לשנות אלמנטים משובקים או התוכן שלהם לפני הוספת אותם לתוך מסמך אחר.

## יצירת מסמך Clone

Aspose.Words מאפשר לך לשחזר מסמך באמצעות [Clone](https://reference.aspose.com/words/net/aspose.words/document/clone/) שיטה המבצעת עותק עמוק של המסמך ומחזירה אותו. במילים אחרות, זה יקבל עותק מלא של DOM. The The The `Clone` שיטה מאיצה את דור המסמכים, ואתה רק צריך קו אחד של קוד כדי לקבל עותק של המסמך שלך.

Cloning יוצר מסמך חדש עם אותו תוכן כמו המקורי, אבל עם עותק ייחודי של כל אחד מהמסמכים המקוריים. [nodes](https://reference.aspose.com/words/net/aspose.words/node/). אתה יכול גם ליישם את פעולת השיבוט למסמך על ידי שימוש בצומת [Clone](https://reference.aspose.com/words/net/aspose.words/node/clone/) שיטה, המאפשרת לך לשכפל צומת מסמך מורכב עם וללא בלוטות הילד שלהם.

{{% alert color="primary" %}}

שים לב שכאשר יישום שיטת ההשבחה כל תכונות המסמך יוחזרו.

{{% /alert %}}

הדוגמה הבאה של הקוד מראה כיצד לשחזר מסמך וליצור עותק של סעיף במסמך זה:

{{< highlight csharp >}}
// Create a document.
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
builder.Writeln("This is the original document before applying the clone method"); 

// Clone the document.
Document clone = doc.Clone();

// Edit the cloned document.
DocumentBuilder builder = new DocumentBuilder(clone);
builder.Write("Section 1");
builder.InsertBreak(BreakType.SectionBreakNewPage);
builder.Write("Section 2");

// This shows what is in the document originally. The document has two sections.
Assert.AreEqual("Section 1\x000cSection 2", clone.GetText().Trim());

// Duplicate the last section and append the copy to the end of the document.
int lastSectionIdx = clone.Sections.Count - 1;
Section newSection = clone.Sections[lastSectionIdx].Clone();
clone.Sections.Add(newSection);

// Check what the document contains after we changed it.
Assert.AreEqual("Section 1\x000cSection 2", clone.GetText().Trim());
{{< /highlight >}}
