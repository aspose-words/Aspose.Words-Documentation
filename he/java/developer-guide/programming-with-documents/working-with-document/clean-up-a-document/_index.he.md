---
title: לנקות מסמך Java
second_title: Aspose.Words עבור Java
articleTitle: לנקות מסמך
linktitle: לנקות מסמך
description: "להסיר מידע לא משומש או כפול כדי להפחית את גודל התפוקה ואת זמן העיבוד. להסיר סגנונות לא בשימוש, סגנונות לא בשימוש בנוי, סגנונות כפולים, או רשימות לא בשימוש באמצעות שימוש Java."
type: docs
weight: 30
url: /he/java/clean-up-a-document/
timestamp: 2024-01-27-14-07-04
---

לפעמים ייתכן שתצטרך להסיר מידע לא משומש או לשכפל כדי להפחית את גודל מסמך הפלט ואת זמן העיבוד.

בעוד שאתה יכול למצוא ולהסיר נתונים שאינם בשימוש, כגון סגנונות או רשימות, או מידע כפול באופן ידני, זה יהיה הרבה יותר נוח לעשות זאת באמצעות תכונות ויכולות המסופקות על ידי Aspose.Words.

The The The [CleanupOptions](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/) הכיתה מאפשרת לך לציין אפשרויות לניקוי מסמכים. כדי להסיר סגנונות משוכפלים או רק סגנונות או רשימות לא בשימוש מן המסמך, אתה יכול להשתמש [Cleanup](https://reference.aspose.com/words/java/com.aspose.words/document/#cleanup) שיטה.

## להסיר מידע לא משומש מתעודה

אתה יכול להשתמש [UnusedStyles](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedStyles) ו [UnusedBuiltinStyles](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedBuiltinStyles) תכונות לזהות ולהסיר סגנונות המסומנים כ"לא בשימוש".

אתה יכול להשתמש [UnusedLists](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedLists) רכוש כדי לזהות ולהסיר רשימות והגדרות רשימה המסומנים כ"לא בשימוש".

הדוגמה הבאה של הקוד מראה כיצד להסיר רק סגנונות שאינם בשימוש ממסמכים:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CleansUnusedStylesandLists.java" >}}

## להסיר מידע מדויק מתעודה

אתה יכול גם להשתמש [DuplicateStyle](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getDuplicateStyle) רכוש להחליף את כל סגנונות משוכפלים עם המקורי ולהסיר משוכפלות ממסמכים.

הדוגמה הבאה של הקוד מראה כיצד להסיר סגנונות משוכפלים ממסמכים:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CleanupDuplicateStyle.java" >}}
