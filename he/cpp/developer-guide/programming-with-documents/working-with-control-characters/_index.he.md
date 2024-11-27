---
title: עבודה עם תווי בקרה
second_title: Aspose.Words עבור C++
articleTitle: עבודה עם תווי בקרה
linktitle: עבודה עם תווי בקרה
description: "מבוא לעבודה עם תווי בקרה ב Aspose.Words עבור C++."
type: docs
weight: 400
url: /he/cpp/working-with-control-characters/
timestamp: 2024-01-27-14-07-04
---

Microsoft Word מסמכים עשויים להכיל תווים שונים בעלי משמעות מיוחדת. בדרך כלל הם משמשים למטרות עיצוב ולא נמשכים במצב הרגיל. אתה יכול להפוך אותם לגלויים אם תלחץ על הלחצן הצג/הסתר סימני עיצוב הממוקם בסרגל הכלים הרגיל.

לפעמים ייתכן שיהיה עליך להוסיף או להסיר תווים לטקסט / ממנו. לדוגמה, בעת קבלת טקסט באופן תכנותי מהמסמך, Aspose.Words שומר על רוב תווי הבקרה, כך שאם אתה צריך לעבוד עם טקסט זה, עליך כנראה להסיר או להחליף את התווים.

ה [ControlChar](https://reference.aspose.com/words/cpp/aspose.words/controlchar/) הכיתה היא מאגר לקבועים המייצגים תווי בקרה שנמצאים לעתים קרובות במסמכים. הוא מספק גם גרסאות של אותם קבועים. לדוגמה, למחרוזת [LineBreak](https://reference.aspose.com/words/cpp/aspose.words/controlchar/linebreak/) ולחומר **ControlChar.LineBreakChar** יש אותו ערך.

דוגמת הקוד הבאה מראה כיצד להשתמש בתווי בקרה:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-ConvertUtil-UtilityClasses-UseControlCharacters.cpp" >}}
