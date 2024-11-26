---
title: לנקות מסמך Python
second_title: Aspose.Words עבור Python via .NET
articleTitle: לנקות מסמך
linktitle: לנקות מסמך
description: "להסיר מידע לא משומש או כפול כדי להפחית את גודל התפוקה ואת זמן העיבוד באמצעות Python. להסיר סגנונות לא בשימוש, סגנונות לא מנוצלים, סגנונות כפולים או רשימות לא בשימוש."
type: docs
weight: 30
url: /he/python-net/clean-up-a-document/
timestamp: 2024-01-27-14-07-04
---

לפעמים ייתכן שתצטרך להסיר מידע לא משומש או לשכפל כדי להפחית את גודל מסמך הפלט ואת זמן העיבוד.

בעוד שאתה יכול למצוא ולהסיר נתונים שאינם בשימוש, כגון סגנונות או רשימות, או מידע כפול באופן ידני, זה יהיה הרבה יותר נוח לעשות זאת באמצעות תכונות ויכולות המסופקות על ידי Aspose.Words.

The The The [CleanupOptions](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/) הכיתה מאפשרת לך לציין אפשרויות לניקוי מסמכים. כדי להסיר סגנונות משוכפלים או רק סגנונות או רשימות לא בשימוש מן המסמך, אתה יכול להשתמש [cleanup](https://reference.aspose.com/words/python-net/aspose.words/document/cleanup/) שיטה.

## הסרת מידע לא משומש ממסמכים

אתה יכול להשתמש [unused_styles](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/unused_styles/) ו [unused_builtin_styles](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/unused_builtin_styles/) תכונות לזהות ולהסיר סגנונות המסומנים כ"לא בשימוש".

אתה יכול להשתמש [unused_lists](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/unused_lists/) רכוש כדי לזהות ולהסיר רשימות והגדרות רשימה המסומנים כ"לא בשימוש".

לדוגמה הקוד הבא מראה כיצד להסיר רק סגנונות לא בשימוש ממסמכים:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-CleanupUnusedStylesandLists.py" >}}

## להסיר מידע מדויק ממסמכים

אתה יכול גם להשתמש [duplicate_style](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/duplicate_style/) רכוש להחליף את כל סגנונות משוכפלים עם המקורי ולהסיר משוכפלות ממסמכים.

הדוגמה הבאה של הקוד מראה כיצד להסיר סגנונות משוכפלים ממסמכים:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-CleanupDuplicateStyle.py" >}}
