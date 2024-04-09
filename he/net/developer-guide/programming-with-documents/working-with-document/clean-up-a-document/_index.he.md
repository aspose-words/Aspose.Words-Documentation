---
title: לנקות מסמך C#
second_title: Aspose.Words עבור .NET
articleTitle: לנקות מסמך
linktitle: לנקות מסמך
description: "להסיר מידע לא משומש או כפול כדי להפחית את גודל התפוקה ואת זמן העיבוד באמצעות C#. להסיר סגנונות לא בשימוש, סגנונות לא מנוצלים, סגנונות כפולים או רשימות לא בשימוש."
type: docs
weight: 30
url: /he/net/clean-up-a-document/
---

לפעמים ייתכן שתצטרך להסיר מידע לא משומש או לשכפל כדי להפחית את גודל מסמך הפלט ואת זמן העיבוד.

בעוד שאתה יכול למצוא ולהסיר נתונים שאינם בשימוש, כגון סגנונות או רשימות, או מידע כפול באופן ידני, זה יהיה הרבה יותר נוח לעשות זאת באמצעות תכונות ויכולות המסופקות על ידי Aspose.Words.

The The The [CleanupOptions](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/) הכיתה מאפשרת לך לציין אפשרויות לניקוי מסמכים. כדי להסיר סגנונות משוכפלים או רק סגנונות או רשימות לא בשימוש מן המסמך, אתה יכול להשתמש [Cleanup](https://reference.aspose.com/words/net/aspose.words/document/cleanup/) שיטה.

## הסרת מידע לא משומש ממסמכים

אתה יכול להשתמש [UnusedStyles](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/unusedstyles/) ו [UnusedBuiltinStyles](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/unusedbuiltinstyles/) תכונות לזהות ולהסיר סגנונות המסומנים כ"לא בשימוש".

אתה יכול להשתמש [UnusedLists](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/unusedlists/) רכוש כדי לזהות ולהסיר רשימות והגדרות רשימה המסומנים כ"לא בשימוש".

לדוגמה הקוד הבא מראה כיצד להסיר רק סגנונות לא בשימוש ממסמכים:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Working with document options and settings-CleanupUnusedStylesandLists.cs" >}}

## להסיר מידע מדויק ממסמכים

אתה יכול גם להשתמש [DuplicateStyle](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/duplicatestyle/) רכוש להחליף את כל סגנונות משוכפלים עם המקורי ולהסיר משוכפלות ממסמכים.

הדוגמה הבאה של הקוד מראה כיצד להסיר סגנונות משוכפלים ממסמכים:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Working with document options and settings-CleanupDuplicateStyle.cs" >}}
