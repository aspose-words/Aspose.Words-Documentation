---
title: קבל מסמך Java
second_title: Aspose.Words עבור Java
articleTitle: קליק מסמך
linktitle: קליק מסמך
type: docs
description: "קבל מסמך כדי לקבל עותק זהה. בעת יצירת עותק, צמתים ונכסים של המסמך המקורי משוחזרים באמצעות Java."
weight: 70
url: /he/java/clone-a-document/
---

Cloning מסמך הוא התהליך של יצירת עותק זהה של מסמך מקורי, אשר יכול לשפר את הביצועים ולשמור אותך מפני דליפות זיכרון פוטנציאלי.

מאמר זה יסביר את המקרים העיקריים של הפעלת מסמך וכיצד ליצור משובט מסמך באמצעות יישום. Aspose.Words.

## תוצאות עם Cloning Documents

פעולת השיבוט מאפשרת לך להפוך את התהליך של יצירת מסמכים מהר יותר כפי שאתה לא צריך לטעון ולהפיץ מסמך מקובץ בכל פעם.

לאחר יצירת שיבוט של המסמך שלך, תוכל לערוך אותו ולבצע פעולות שונות על זה, למשל, להשוות אותו עם המסמך המקורי, להוסיף או להכניס אותו למסמך אחר. אתה יכול גם לשנות אלמנטים משובקים או התוכן שלהם לפני הוספת אותם לתוך מסמך אחר.

## יצירת מסמך Clone

Aspose.Words מאפשר לך לשחזר מסמך באמצעות [Clone](https://reference.aspose.com/words/java/com.aspose.words/document/#deepClone) שיטה המבצעת עותק עמוק של המסמך ומחזירה אותו. במילים אחרות, זה יקבל עותק מלא של DOM. The The The `Clone` שיטה מאיצה את דור המסמכים, ואתה צריך רק קו אחד של קוד כדי לקבל עותק של המסמך שלך.

Cloning יוצר מסמך חדש עם אותו תוכן כמו המקורי, אבל עם עותק ייחודי של כל אחד מהמסמכים המקוריים. [nodes](https://reference.aspose.com/words/java/com.aspose.words/node/). אתה יכול גם ליישם את פעולת השיבוט למסמך על ידי שימוש בצומת [Clone](https://reference.aspose.com/words/java/com.aspose.words/node/#deepClone-boolean) שיטה, המאפשרת לך לשכפל צומת מסמך מורכב עם וללא בלוטות הילד שלהם.

{{% alert color="primary" %}}

שים לב שכאשר יישום שיטת ההשבחה כל תכונות המסמך יוחזרו.

{{% /alert %}}

הדוגמה הבאה של הקוד מראה כיצד לשחזר מסמך וליצור עותק של סעיף במסמך זה:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CloneDocument-CloneADocument.java" >}}
