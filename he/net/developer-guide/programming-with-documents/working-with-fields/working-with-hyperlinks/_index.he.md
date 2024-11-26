---
title: עבודה עם Hyperlinks C#
second_title: Aspose.Words עבור .NET
articleTitle: הוסף או Modify Hyperlinks
linktitle: הוסף או Modify Hyperlinks
description: "כיצד להוסיף היפר-קישור במסמך שלך C# באמצעות שימוש Aspose.Words עבור .NET."
type: docs
weight: 50
url: /he/net/working-with-hyperlinks/
timestamp: 2024-01-27-14-07-04
---

היפר-קישור Microsoft Word המסמכים הם `HYPERLINK` שדה. In In In Aspose.Words, הקישורים יושמו באמצעות [FieldHyperlink](https://reference.aspose.com/words/net/aspose.words.fields/fieldhyperlink/) מעמד.

## הכנס Hyperlink

השתמש [InsertHyperlink](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserthyperlink/) שיטה להכניס היפר-קישור אל המסמך. שיטה זו מקבלת שלושה פרמטרים:

1.1 1. טקסט של הקישור המוצג במסמך
2. יעד קישור (URL או שם של סימן ספר בתוך המסמך)
3. פרמטר מבריק שצריך להיות true אם `URL` שם הספר בתוך מסמך

The The The **InsertHyperlink** השיטה תמיד מוסיפה נספחים בתחילת וסוף ה-URL

{{% alert color="primary" %}}

שים לב שאתה צריך לציין פורמט גופני עבור טקסט התצוגה היפר-קישור במפורש באמצעות הטקסט. `Font` רכוש.

{{% /alert %}}

הדוגמה הבאה של הקוד מראה כיצד להכניס היפר-קישור למסמך באמצעות שימוש [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHyperlink.cs" >}}

## להחליף או לשנות Hyperlinks

Hyperlink Microsoft Word מסמכים הם שדה. שדה במסמך Word, כפי שאמרנו קודם לכן, הוא מבנה מורכב המורכב מורכב המורכב מנקודות מרובות הכוללות התחלה שדה, קוד שדה, סיבור שדה, תוצאת שדה וסיום שדה. ניתן לקנן שדות, להכיל תוכן עשיר ולעבור פסקאות מרובות או חלקים במסמך.

כדי להחליף או לשנות היפר-קישורים, יש צורך למצוא את הקישורים במסמך ולהחליף את הטקסט, ה-URL או את שניהם.

הדוגמה הבאה של הקוד מראה כיצד למצוא את כל הקישורים במסמך Word ולשנות את `URL` שם תצוגה:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.cs" >}}
