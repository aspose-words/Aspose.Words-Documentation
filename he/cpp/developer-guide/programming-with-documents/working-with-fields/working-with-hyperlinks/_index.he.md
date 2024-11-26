---
title: עבודה עם היפר-קישורים ב - C++
second_title: Aspose.Words עבור C++
articleTitle: הוספה או שינוי של היפר-קישורים
linktitle: הוספה או שינוי של היפר-קישורים
description: "כיצד להוסיף היפר-קישור למסמך באמצעות Aspose.Words עבור C++."
type: docs
weight: 180
url: /he/cpp/working-with-hyperlinks/
timestamp: 2024-01-27-14-07-04
---

היפר-קישור במסמכים Microsoft Word הוא השדה `HYPERLINK`. ב - Aspose.Words, היפר-קישורים מיושמים דרך הכיתה [FieldHyperlink](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldhyperlink/).

## הוספת קישור

השתמש בשיטת [InsertHyperlink](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/inserthyperlink/) כדי להוסיף היפר-קישור למסמך. שיטה זו מקבלת שלושה פרמטרים:

1. טקסט של הקישור שיוצג במסמך
2. יעד קישור (URL או שם של סימניה בתוך המסמך)
3. פרמטר בוליאני שאמור להיות נכון אם `URL` הוא שם של סימניה בתוך המסמך

שיטת **InsertHyperlink** תמיד מוסיפה אפוסטרופים בתחילת ובסוף URL.

{{% alert color="primary" %}}

שים לב שעליך לציין עיצוב גופן עבור טקסט תצוגת ההיפר-קישור באופן מפורש באמצעות המאפיין `Font`.

{{% /alert %}}

דוגמת הקוד הבאה מראה כיצד להוסיף היפר-קישור למסמך באמצעות [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHyperlink.cpp" >}}

## להחליף או לשנות קישורים

היפר-קישור במסמכים Microsoft Word הוא שדה. שדה במסמך Word הוא מבנה מורכב המורכב ממספר צמתים הכוללים התחלת שדה, קוד שדה, מפריד שדה, תוצאת שדה וסוף שדה. ניתן לקנן שדות, להכיל תוכן עשיר ולפרוס מספר פסקאות או קטעים במסמך.

הכיתה `FieldHyperlink` מיישמת את השדה `HYPERLINK`.

דוגמת הקוד הבאה מראה כיצד למצוא את כל ההיפר-קישורים במסמך Word ומשנה את `URL` ואת שם התצוגה שלהם:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.cpp" >}}
