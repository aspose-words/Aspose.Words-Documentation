---
title: עבודה עם טקסט בטבלה
second_title: Aspose.Words עבור C++
articleTitle: עבודה עם טקסט בטבלה
linktitle: עבודה עם טקסט בטבלה
description: "החלף טקסט בטבלה ב C++. חלץ טקסט רגיל מהטבלה או התא באמצעות C++."
type: docs
weight: 60
url: /he/cpp/work-with-text-in-a-table/
timestamp: 2024-01-27-14-07-04
---

כאמור במאמרים קודמים, טבלה מכילה בדרך כלל טקסט רגיל, אם כי ניתן להציב תוכן אחר כגון תמונות או אפילו טבלאות אחרות בתאי טבלה.

הוספת טקסט או תוכן אחר לטבלה מתבצעת בשיטות המתאימות של הכיתה [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) ומתוארת במאמר **"Create a Table"**. במאמר זה, נדבר על איך לעבוד עם טקסט בטבלה קיימת כבר.

## החלף טקסט בטבלה

לטבלה, כמו לכל צומת אחר ב - Aspose.Words, יש גישה לאובייקט [Range](https://reference.aspose.com/words/cpp/aspose.words/range/). באמצעות אובייקט טווח הטבלה, באפשרותך להחליף טקסט בטבלה.

היכולת להשתמש בתווים מיוחדים בעת החלפה נתמכת כעת, כך שניתן להחליף טקסט קיים בטקסט רב פסקאות. לשם כך, עליך להשתמש במטא-תווים המיוחדים המתוארים בשיטת [Replace](https://reference.aspose.com/words/cpp/aspose.words/range/replace/) המתאימה.

{{% alert color="primary" %}}

בדרך כלל, החלפת טקסט צריכה להיעשות ברמת התא (לכל תא) או ברמת הפסקה.

{{% /alert %}}

דוגמת הקוד הבאה מראה כיצד להחליף את כל המופעים של מחרוזת טקסט בתאים של טבלה שלמה:

{{< gist "aspose-words-gists" "0c6e4ebd55874aa8634f1d74d5ef492f" "replace-text.h" >}}

## חלץ טקסט רגיל מטבלה או תא

באמצעות האובייקט **Range**, אתה יכול גם לקרוא לשיטות בכל טווח הטבלה ולחלץ את הטבלה כטקסט רגיל. לשם כך, השתמש במאפיין [Text](https://reference.aspose.com/words/cpp/aspose.words/range/get_text/).

דוגמת הקוד הבאה מראה כיצד להדפיס את טווח הטקסט של טבלה:

{{< gist "aspose-words-gists" "0c6e4ebd55874aa8634f1d74d5ef492f" "extract-text.h" >}}

אותה טכניקה משמשת להפקת תוכן מתאי טבלה בודדים בלבד.

דוגמת הקוד הבאה מראה כיצד להדפיס טווח טקסט של רכיבי שורה וטבלה:

{{< gist "aspose-words-gists" "0c6e4ebd55874aa8634f1d74d5ef492f" "print-text-range-row-and-table.h" >}}

## עבודה עם טקסט טבלה חלופי

Microsoft Word לטבלאות יש `table title` ו `table description` המספקים ייצוג טקסטואלי חלופי של המידע הכלול בטבלה.

ב Aspose.Words, אתה יכול גם להוסיף כותרת טבלה ותיאור באמצעות המאפיינים [Title](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_title/) ו [Description](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_description/). מאפיינים אלה משמעותיים עבור DOCX מסמכים התואמים את ISO/IEC 29500. בעת שמירה בפורמטים לפני ISO / IEC 29500, מאפיינים אלה מתעלמים.

דוגמת הקוד הבאה מראה כיצד להגדיר את מאפייני הכותרת והתיאור של טבלה:

{{< gist "aspose-words-gists" "0c6e4ebd55874aa8634f1d74d5ef492f" "table-title-and-description.h" >}}
