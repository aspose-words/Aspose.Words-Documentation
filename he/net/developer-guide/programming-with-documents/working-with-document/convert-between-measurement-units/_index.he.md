---
title: להמיר בין יחידות מדידה C#
second_title: Aspose.Words עבור .NET
articleTitle: להמיר בין יחידות מדידה
linktitle: להמיר בין יחידות מדידה
description: "Aspose.Words עבור .NET יכול לעזור לך עם איך להמיר בין יחידות מדידה, למשל, אינץ ' נקודות נקודות נקודות נקודות, פיקסלים נקודות, נקודות על פיקסלים באמצעות פיקסלים C#."
type: docs
weight: 20
url: /he/net/convert-between-measurement-units/
---

רוב נכסי האובייקט הניתנים ב Aspose.Words API זה מייצג מידה מסוימת, כגון רוחב או גובה, שולי ומרחקים שונים, לקבל ערכים בנקודות, שבו 1 אינץ ' שווה 72 נקודות. לפעמים זה לא נוח ונקודות צריך להיות מומר ליחידות אחרות.

Aspose.Words מספק [ConvertUtil](https://reference.aspose.com/words/net/aspose.words/convertutil/) מעמד המספק פונקציות עוזר להמיר בין יחידות מדידה שונות. זה מאפשר להמיר:

- אינץ', פיקסלים ומילימטרים עד נקודות
- נקודות לסנטימטרים ופיקסלים
- פיקסלים מהחלטה אחת לאחרת

המרת פיקסלים נקודות ולהיפך ניתן לבצע ב 96 dpi (dots per Inch) החלטות או רזולוציה dpi שצוין.

The The The **ConvertUtil** הכיתה מועילה במיוחד בעת הגדרת תכונות דף שונות, כי, לדוגמה, אינץ ' הם יחידות מדידה נפוצות יותר מאשר נקודות.

הדוגמה הבאה של הקוד מראה כיצד לציין תכונות דף בסנטימטר:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-ConvertUtil-UtilityClasses-ConvertBetweenMeasurementUnits.cs" >}}
