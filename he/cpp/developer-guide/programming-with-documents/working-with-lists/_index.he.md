---
title: עבודה עם רשימות ב C++
second_title: Aspose.Words עבור C++
articleTitle: עבודה עם רשימות
linktitle: עבודה עם רשימות
description: "מבוא לתכונת עיצוב המספור ב Aspose.Words עבור C++."
type: docs
weight: 200
url: /he/cpp/working-with-lists/
timestamp: 2024-01-30-16-22-34
---

רשימה במסמך Microsoft Word היא קבוצה של מאפייני עיצוב רשימה. ניתן להשתמש ברשימות במסמכים שלך כדי לעצב, לסדר ולהדגיש טקסט. רשימות הן דרך מצוינת לארגן נתונים במסמכים, והן מקלות על הקוראים להבין נקודות מפתח.

כל רשימה יכולה להכיל עד 9 רמות ומאפייני עיצוב, כגון סגנון מספר, ערך התחלה, כניסה, מיקום כרטיסייה וכו ' מוגדרים בנפרד עבור כל רמה.

ב Aspose.Words, עבודה עם רשימות מיוצגת על ידי [Lists](https://reference.aspose.com/words/cpp/aspose.words.lists/) מרחב שמות. עם זאת, האובייקט [List](https://reference.aspose.com/words/cpp/aspose.words.lists/list/) תמיד שייך לאוסף [ListCollection](https://reference.aspose.com/words/cpp/aspose.words.lists/listcollection/).

נושא זה מתאר כיצד לעבוד באופן פרוגרמטי עם רשימות באמצעות Aspose.Words.

## ציין עיצוב לרמת רשימה

אובייקטים ברמת רשימה נוצרים באופן אוטומטי כאשר רשימה נוצרת. השתמש במאפיינים ובשיטות של הכיתה [ListLevel](https://reference.aspose.com/words/cpp/aspose.words.lists/listlevel/) כדי לשלוט בעיצוב של רמות בודדות של רשימה.

## רשימת הפעלה מחדש עבור כל מקטע

ניתן להפעיל מחדש רשימה עבור כל מקטע באמצעות המאפיין [IsRestartAtEachSection](https://reference.aspose.com/words/cpp/aspose.words.lists/list/get_isrestartateachsection/). שים לב שאפשרות זו נתמכת רק ב RTF, DOC ו DOCX פורמטים של מסמכים. אפשרות זו תיכתב ל DOCX רק אם OoxmlCompliance גבוה יותר אז אקמה376.

דוגמת הקוד הבאה מראה כיצד ליצור רשימה ולהפעיל אותה מחדש עבור כל קטע:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-List-WorkingWithList-SetRestartAtEachSection.cpp" >}}
