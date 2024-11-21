---
title: עבודה עם טקסט בטבלה
second_title: Aspose.Words עבור Java
articleTitle: עבודה עם טקסט בטבלה
linktitle: עבודה עם טקסט בטבלה
description: "להחליף טקסט בטבלה Java. צילום טקסט רגיל משולחן או תאים באמצעות Java."
type: docs
weight: 60
url: /he/java/extract-text-from-and-replace-text-in-a-table/
timestamp: 2024-01-27-14-07-04
---

כפי שצוין במאמרים קודמים, שולחן מכיל בדרך כלל טקסט פשוט, אם כי תוכן אחר כגון תמונות או אפילו טבלאות אחרות ניתן להציב בתאי שולחן.

הוספת טקסט או תוכן אחר בטבלה מתבצעת באמצעות השיטות המתאימות של [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) הכיתה ומתוארת ב **"לתקן שולחן"** מאמר. במאמר זה נדבר על איך לעבוד עם טקסט בטבלה קיימת כבר.

## החלפת טקסט בטבלה

השולחן, כמו כל צומת אחר Aspose.Words, יש גישה [Range](https://reference.aspose.com/words/java/com.aspose.words/range/) אובייקט באמצעות אובייקט טווח השולחן, אתה יכול להחליף טקסט בטבלה.

היכולת להשתמש בדמויות מיוחדות כאשר ההחלפה נתמכת כיום, כך שניתן להחליף טקסט קיים עם טקסט רב-פרמטרי. כדי לעשות זאת, אתה צריך להשתמש metacharacters מיוחד המתואר המקביל [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.lang.String-java.lang.String) שיטה.

{{% alert color="primary" %}}

בדרך כלל, החלפת טקסט צריכה להיעשות ברמת התא (per cell) או ברמת פסקה.

{{% /alert %}}

לדוגמה הקוד הבא מראה כיצד להחליף את כל המקרים של מחרוזת של טקסט בתאים של שולחן שלם:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "replace-text.java" >}}

## צילום טקסט רגיל מתוך שולחן

באמצעות **Range** אובייקט, אתה יכול גם לקרוא שיטות על טווח השולחן כולו ולהוציא את השולחן כטקסט פשוט. לעשות זאת, השתמש [Text](https://reference.aspose.com/words/java/com.aspose.words/range/#Text) רכוש

לדוגמה הקוד הבא מראה כיצד להדפיס את טווח הטקסט של שולחן:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "extract-text.java" >}}

{{% alert color="primary" %}}

אותה טכניקה משמשת כדי להפיק תוכן מתאי שולחן בודדים בלבד.

דוגמה הקוד הבא מראה כיצד להדפיס טווח טקסט של שורות ורכיבי שולחן:

{{% /alert %}}

הדוגמה הקודית הבאה מראה כיצד להדפיס את טווח הטקסט של אלמנטים שורות וטבלאות.

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "print-text-range-row-and-table.java" >}}

## עבודה עם טקסט שולחן חלופי

Microsoft Word שולחנות יש `table title` ו `table description` זה מספק ייצוג טקסטי חלופי של המידע הכלול בטבלה.

In In In Aspose.Words, אתה יכול גם להוסיף כותרת שולחן ותיאור באמצעות [Title](https://reference.aspose.com/words/java/com.aspose.words/table/#getTitle) ו [Description](https://reference.aspose.com/words/java/com.aspose.words/table/#getDescription) תכונות. תכונות אלה הן משמעותיות עבור מסמכי DOCX התואמים את ISO29500 בעת שמירת פורמטים מוקדם יותר מאשר ISO29500 נכסים אלה מתעלמים.

הדוגמה הבאה של הקוד מראה כיצד להגדיר את הכותרת ואת תכונות התיאור של שולחן:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "table-title-and-description.java" >}}
