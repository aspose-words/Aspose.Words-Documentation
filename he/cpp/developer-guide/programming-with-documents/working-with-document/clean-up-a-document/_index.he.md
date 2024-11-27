---
title: נקה מסמך ב C++
second_title: Aspose.Words עבור C++
articleTitle: נקה מסמך
linktitle: נקה מסמך
description: "הסר מידע שאינו בשימוש או שכפל כדי להקטין את גודל הפלט ואת זמן העיבוד באמצעות C++. הסר סגנונות שאינם בשימוש, סגנונות מובנים שאינם בשימוש, סגנונות כפולים או רשימות שאינן בשימוש."
type: docs
weight: 30
url: /he/cpp/clean-up-a-document/
timestamp: 2024-01-27-14-07-04
---

לפעמים ייתכן שיהיה עליך להסיר מידע שאינו בשימוש או לשכפל כדי להקטין את גודל מסמך הפלט וזמן העיבוד.

בעוד שאתה יכול למצוא ולהסיר נתונים שאינם בשימוש, כגון סגנונות או רשימות, או לשכפל מידע באופן ידני, זה יהיה הרבה יותר נוח לעשות זאת באמצעות תכונות ויכולות שסופקו על ידי Aspose.Words.

הכיתה [CleanupOptions](https://reference.aspose.com/words/cpp/class/aspose.words.cleanup_options) מאפשרת לך לציין אפשרויות לניקוי מסמכים. כדי להסיר סגנונות כפולים או רק סגנונות או רשימות שאינם בשימוש מהמסמך, אתה יכול להשתמש בשיטה [Cleanup](https://reference.aspose.com/words/cpp/aspose.words/document/cleanup/).

## הסר מידע שאינו בשימוש ממסמך

אתה יכול להשתמש במאפיינים [UnusedStyles](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_unusedstyles/) ו [UnusedBuiltinStyles](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_unusedbuiltinstyles/) כדי לזהות ולהסיר סגנונות המסומנים כ "לא בשימוש".

אתה יכול להשתמש במאפיין [UnusedLists](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_unusedlists/) כדי לזהות ולהסיר רשימות והגדרות רשימה המסומנות כ "לא בשימוש".

דוגמת הקוד הבאה מראה כיצד להסיר רק סגנונות שאינם בשימוש ממסמך:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Working with document options and settings-CleanupUnusedStylesandLists.h" >}}

## הסר מידע כפול ממסמך

אתה יכול גם להשתמש במאפיין [DuplicateStyle](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_duplicatestyle/) כדי להחליף את כל הסגנונות הכפולים במקור ולהסיר כפילויות ממסמך.

דוגמת הקוד הבאה מראה כיצד להסיר סגנונות כפולים ממסמך:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Working with document options and settings-CleanupDuplicateStyle.h" >}}
