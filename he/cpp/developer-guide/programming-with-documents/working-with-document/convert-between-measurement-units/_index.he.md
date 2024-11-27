---
title: המר בין יחידות מדידה ב C++
second_title: Aspose.Words עבור C++
articleTitle: המר בין יחידות מדידה
linktitle: המר בין יחידות מדידה
description: "Aspose.Words עבור C++ יכול לעזור לך כיצד להמיר בין יחידות מדידה, למשל, אינץ 'לנקודות ונקודות לאינץ', פיקסלים לנקודות, נקודות לפיקסלים."
type: docs
weight: 20
url: /he/cpp/convert-between-measurement-units/
timestamp: 2024-01-27-14-07-04
---

רוב מאפייני האובייקט המסופקים ב Aspose.Words API המייצגים מדידה מסוימת, כגון רוחב או גובה, שוליים ומרחקים שונים, מקבלים ערכים בנקודות, כאשר 1 אינץ ' שווה ל 72 נקודות. לפעמים זה לא נוח ויש להמיר נקודות ליחידות אחרות.

Aspose.Words מספק את הכיתה [ConvertUtil](https://reference.aspose.com/words/cpp/class/aspose.words.convert_util) המספקת פונקציות עוזר להמרה בין יחידות מדידה שונות. זה מאפשר המרת אינץ', פיקסלים ומילימטרים לנקודות, נקודות לאינץ ' ופיקסלים, והמרת פיקסלים מרזולוציה אחת לאחרת.המרת פיקסלים לנקודות ולהיפך יכולה להתבצע ברזולוציות של 96 נקודות לאינץ ' או ברזולוציות ספציפיות.

הכיתה **ConvertUtil** שימושית במיוחד בעת הגדרת מאפייני דף שונים, כי, למשל, אינץ ' הם יחידות מדידה נפוצות יותר מאשר נקודות.

דוגמת הקוד הבאה מראה כיצד לציין מאפייני דף באינצ ' ים:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-ConvertUtil-UtilityClasses-ConvertBetweenMeasurementUnits.cpp" >}}

