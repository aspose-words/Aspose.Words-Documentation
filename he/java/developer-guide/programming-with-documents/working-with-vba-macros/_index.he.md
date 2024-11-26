---
title: עבודה עם VBA Macros Java
second_title: Aspose.Words עבור Java
articleTitle: עבודה עם VBA Macros
linktitle: עבודה עם VBA Macros
description: "עבודה עם מסמכים VBA פרויקטים באמצעות Java."
type: docs
weight: 410
url: /he/java/working-with-vba-macros/
timestamp: 2024-01-27-14-07-04
---

Visual Basic בקשה (VBA) Microsoft Word היא שפת תכנות פשוטה אך עוצמתית שניתן להשתמש בה כדי להרחיב את הפונקציונליות. Aspose.Words API מספק שלוש כיתות כדי לקבל גישה לקוד המקור של פרויקט VBA:

- The [VBAProject](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/) המחלקה מספקת גישה למידע של פרויקט VBA
- The [VBAModulesCollection](https://reference.aspose.com/words/java/com.aspose.words/vbamodulecollection/) קבוצת VBA מחזירה את אוסף מודולי פרויקט VBA
- The [VbaModule](https://reference.aspose.com/words/java/com.aspose.words/vbamodule/) שיעור מספק גישה למודול פרויקט VBA

## יצירת פרויקט VBA

Aspose.Words API מספק [VbaProject](https://reference.aspose.com/words/java/com.aspose.words/document/#getVbaProject) לרכוש או להגדיר VbaProject במסמך.

הדוגמה הקודית הבאה מראה כיצד ליצור פרויקט VBA ומודול VBA יחד עם תכונות בסיסיות e.g. שם וסוג:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CreateVbaProject.java" >}}

## Read Macros

Aspose.Words מספק למשתמשים את היכולת לקרוא מאקרו VBA.

דוגמה לקוד הבא מראה כיצד לקרוא את VBA Macros מהמסמכים:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-ReadVbaMacros.java" >}}

## שינוי Macros

שימוש Aspose.Words, משתמשים יכולים לשנות מאקרו VBA.

דוגמה לקוד הבא מראה כיצד לשנות את VBA Macros באמצעות ה-VBA. [SourceCode](https://reference.aspose.com/words/java/com.aspose.words/vbamodule/#getSourceCode) רכוש:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-ModifyVbaMacros.java" >}}

## Clone VBA פרויקט

עם Aspose.Words ניתן גם לשחזר פרויקטים של VBA.

הדוגמה הבאה לקוד ממחישה כיצד לשחזר את פרויקט VBA באמצעות פרויקט VBA. [Clone](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/#deepClone) נכסים שיוצרים עותק של הפרויקט הקיים:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CloneVbaProject.java" >}}

## Clone VBA מודול

ניתן גם לשחזר מודולי VBA במידת הצורך.

הדוגמה הבאה של הקוד מראה כיצד לשחזר את מודול VBA באמצעות ה- VBA. [Clone](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/#deepClone) רכוש שיוצר עותק של הפרויקט הקיים

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CloneVbaModule.java" >}}
