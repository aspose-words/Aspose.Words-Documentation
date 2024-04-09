---
title: עבודה עם Hyperlinks
second_title: Aspose.Words עבור Python via .NET
articleTitle: הוסף או Modify Hyperlinks
linktitle: הוסף או Modify Hyperlinks
description: "הוסף, להחליף או לשנות היפר-קישור במסמך באמצעות Python."
type: docs
weight: 50
url: /he/python-net/working-with-hyperlinks/
---

היפר-קישור Microsoft Word המסמכים הם `HYPERLINK` שדה. In In In Aspose.Words, הקישורים יושמו באמצעות [FieldHyperlink](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldhyperlink/) מעמד.

## הוספת Hyperlink

השתמש [insert_hyperlink](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_hyperlink/) שיטה להכניס היפר-קישור אל המסמך. שיטה זו מקבלת שלושה פרמטרים:

1.1 1. טקסט של הקישור המוצג במסמך
2. יעד קישור (URL או שם של סימן ספר בתוך המסמך)
3. פרמטר מבריק שצריך להיות true אם `URL` שם הספר בתוך מסמך

The The The **InsertHyperlink** השיטה תמיד מוסיפה נספחים בתחילת וסוף ה-URL.

{{% alert color="primary" %}}

שים לב שאתה צריך לציין פורמט גופני עבור טקסט התצוגה היפר-קישור במפורש באמצעות הטקסט. `Font` רכוש.

{{% /alert %}}

הדוגמה הבאה של הקוד מראה כיצד להכניס היפר-קישור למסמך באמצעות שימוש [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertHyperlink.py" >}}

## להחליף או לשנות Hyperlinks

Hyperlink Microsoft Word מסמכים הם שדה. שדה במסמך Word הוא מבנה מורכב המורכב המורכב של צמתים מרובים הכוללים התחלה שדה, קוד שדה, מפריד שדה, תוצאת שדה וסיום שדה. ניתן לקנן שדות, להכיל תוכן עשיר ולעבור פסקאות מרובות או חלקים במסמך

כדי להחליף או לשנות היפר-קישורים, יש צורך למצוא את הקישורים במסמך ולהחליף את הטקסט, ה-URL או את שניהם.

הדוגמה הבאה של הקוד מראה כיצד למצוא את כל הקישורים במסמך Word ולשנות את `URL` שם תצוגה:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ReplaceHyperlinks.py" >}}
