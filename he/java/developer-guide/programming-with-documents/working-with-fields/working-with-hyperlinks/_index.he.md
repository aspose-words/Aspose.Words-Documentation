---
title: עבודה עם Hyperlinks Java
second_title: Aspose.Words עבור Java
articleTitle: הוסף או Modify Hyperlinks
linktitle: הוסף או Modify Hyperlinks
description: "כיצד להוסיף היפר-קישור לתוך המסמך שלך Java."
type: docs
weight: 50
url: /he/java/working-with-hyperlinks/
---

היפר-קישור Microsoft Word המסמכים הם `HYPERLINK` שדה. In In In Aspose.Words, היפר-קישורים יושמו באמצעות [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/) מעמד.

## הכנס Hyperlink

השתמש [InsertHyperlink](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHyperlink-java.lang.String-java.lang.String-boolean) שיטה להכניס היפר-קישור אל המסמך. שיטה זו מקבלת שלושה פרמטרים:

1.1 1. טקסט של הקישור המוצג במסמך
2. יעד קישור (URL או שם של סימן ספר בתוך המסמך)
3. פרמטר מבריק שצריך להיות true אם `URL` שם הספר בתוך מסמך

The The The **InsertHyperlink** השיטה תמיד מוסיפה נספחים בתחילת וסוף ה-URL

{{% alert color="primary" %}}

שים לב שאתה צריך לציין פורמט גופני עבור טקסט התצוגה היפר-קישור במפורש באמצעות הטקסט. `Font` רכוש.

{{% /alert %}}

הדוגמה הבאה של הקוד מראה כיצד להכניס היפר-קישור למסמך באמצעות שימוש [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHyperlink-DocumentBuilderInsertHyperlink.java" >}}

## להחליף או לשנות Hyperlinks

Hyperlink Microsoft Word מסמכים הם שדה. שדה במסמך Word, כפי שאמרנו קודם לכן, הוא מבנה מורכב המורכב מורכב המורכב מנקודות מרובות הכוללות התחלה שדה, קוד שדה, מפריד שדה, תוצאת שדה וסיום שדה. ניתן לקנן שדות, להכיל תוכן עשיר ולעבור פסקאות מרובות או קטעים במסמך.

כדי להחליף או לשנות היפר-קישורים, יש צורך למצוא את הקישורים במסמך ולהחליף את הטקסט, ה-URL או את שניהם.

דוגמה הקוד הבא מראה כיצד למצוא את כל הקישורים במסמך Word ולשנות את `URL` שם תצוגה:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.java" >}}
