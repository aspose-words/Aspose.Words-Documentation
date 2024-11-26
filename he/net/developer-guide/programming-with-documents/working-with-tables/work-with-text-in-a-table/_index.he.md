---
title: עבודה עם טקסט בטבלה
second_title: Aspose.Words עבור .NET
articleTitle: עבודה עם טקסט בטבלה
linktitle: עבודה עם טקסט בטבלה
description: "להחליף טקסט בטבלה C#. צילום טקסט רגיל משולחן או תאים באמצעות C#."
type: docs
weight: 60
url: /he/net/work-with-text-in-a-table/
timestamp: 2024-01-27-14-07-04
---

כפי שצוין במאמרים קודמים, שולחן מכיל בדרך כלל טקסט פשוט, אם כי תוכן אחר כגון תמונות או אפילו טבלאות אחרות ניתן להציב בתאי שולחן.

הוספת טקסט או תוכן אחר בטבלה מתבצעת באמצעות השיטות המתאימות של [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) הכיתה ומתוארת ב **"לתקן שולחן"** מאמר. במאמר זה נדבר על איך לעבוד עם טקסט בטבלה קיימת כבר.

## החלפת טקסט בטבלה

השולחן, כמו כל צומת אחר Aspose.Words, יש גישה אל [Range](https://reference.aspose.com/words/net/aspose.words/range/) אובייקט. באמצעות אובייקט טווח השולחן, אתה יכול להחליף טקסט בטבלה.

היכולת להשתמש בדמויות מיוחדות כאשר ההחלפה נתמכת כיום, כך שניתן להחליף טקסט קיים עם טקסט רב-פרמטרי. כדי לעשות זאת, אתה צריך להשתמש metacharacters מיוחד המתואר המקביל [Replace](https://reference.aspose.com/words/net/aspose.words/range/replace/) שיטה.

{{% alert color="primary" %}}

בדרך כלל, החלפת טקסט צריכה להיעשות ברמת התא (per cell) או ברמת פסקה.

{{% /alert %}}

לדוגמה הקוד הבא מראה כיצד להחליף את כל המקרים של מחרוזת של טקסט בתאים של שולחן שלם:

{{< gist "aspose-words-gists" "458eb4fd5bd1de8b06fab4d1ef1acdc6" "replace-text.cs" >}}

## צילום טקסט רגיל משולחן או תאים

באמצעות **Range** אובייקט, אתה יכול גם לקרוא שיטות על טווח השולחן כולו ולהוציא את השולחן כטקסט פשוט. לעשות זאת, השתמש [Text](https://reference.aspose.com/words/net/aspose.words/range/text/) רכוש

לדוגמה הקוד הבא מראה כיצד להדפיס את טווח הטקסט של שולחן:

{{< gist "aspose-words-gists" "458eb4fd5bd1de8b06fab4d1ef1acdc6" "extract-text.cs" >}}

אותה טכניקה משמשת כדי להפיק תוכן מתאי שולחן בודדים בלבד.

דוגמה הקוד הבא מראה כיצד להדפיס טווח טקסט של שורות ורכיבי שולחן:

{{< gist "aspose-words-gists" "458eb4fd5bd1de8b06fab4d1ef1acdc6" "print-text-range-row-and-table.cs" >}}

## עבודה עם טקסט שולחן חלופי

Microsoft Word שולחנות יש `table title` ו `table description` זה מספק ייצוג טקסט אלטרנטיבי של המידע הכלול בטבלה.

In In In Aspose.Words, אתה יכול גם להוסיף כותרת שולחן ותיאור באמצעות [Title](https://reference.aspose.com/words/net/aspose.words.tables/table/title/) ו [Description](https://reference.aspose.com/words/net/aspose.words.tables/table/description/) תכונות. תכונות אלה הן משמעותיות עבור מסמכי DOCX התואמים את ISO29500 בעת שמירת פורמטים מוקדם יותר מאשר ISO29500 נכסים אלה מתעלמים.

הדוגמה הבאה של הקוד מראה כיצד להגדיר את הכותרת ואת תכונות התיאור של שולחן:

{{< gist "aspose-words-gists" "458eb4fd5bd1de8b06fab4d1ef1acdc6" "table-title-and-description.cs" >}}
