---
title: עבודה עם רשימות Python
second_title: Aspose.Words עבור Python via .NET
articleTitle: עבודה עם רשימות
linktitle: עבודה עם רשימות
description: "ליצור, לציין רשימות פורמט והתחלות במסמך באמצעות Python."
type: docs
weight: 200
url: /he/python-net/working-with-lists/
timestamp: 2024-01-27-14-07-04
---

רשימה ב Microsoft Word מסמך הוא קבוצה של תכונות עיצוב רשימה. רשימות ניתן להשתמש במסמכים שלך כדי לעצב, לארגן ולהדגיש טקסט. רשימות הן דרך מצוינת לארגן נתונים במסמכים, והן מקלות על הקוראים להבין נקודות מפתח

כל רשימה יכולה להיות עד 9 רמות ופורמט של תכונות, כגון סגנון מספר, להתחיל ערך, indent, מיקום הכרטיסייה וכו ' מוגדרים בנפרד לכל רמה.

In In In Aspose.Words, עבודה עם רשימות מיוצגת על ידי [Lists](https://reference.aspose.com/words/python-net/aspose.words.lists/) מודול. אבל, [List](https://reference.aspose.com/words/python-net/aspose.words.lists/list/) האובייקט תמיד שייך [ListCollection](https://reference.aspose.com/words/python-net/aspose.words.lists/listcollection/) אוסף.

נושא זה מתאר כיצד לעבוד באופן מתודולוגי עם רשימות באמצעות Aspose.Words

## יצירת רשימות על ידי Applying List Format

Aspose.Words מאפשר יצירת רשימות קלה על ידי יישום רשימה. [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) מספק [DocumentBuilder.list_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/list_format/) רכוש מחזיר [ListFormat](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/) אובייקט. לאובייקט הזה יש כמה שיטות להתחיל ולסיים רשימה ולהגביר את ההערה. ישנם שני סוגים של רשימות Microsoft Word bullet..

- כדי להתחיל רשימה מזוינת, התקשר [ListFormat.apply_bullet_default](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_bullet_default/).
- כדי להתחיל רשימה מספרית, התקשר [ListFormat.apply_number_default](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_number_default/).

הכדור או המספר והפורמטים מתווספים לפסקה הנוכחית ולכל פסקאות נוספות שנוצרו באמצעות שימוש [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) עד [ListFormat.remove_numbers](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/remove_numbers/) הוא נקרא להפסיק את פורמט הרשימה.

במסמכים של Word, רשימות עשויות להכיל עד תשע רמות. רשימת העיצוב של כל רמה מפרטת מה נעשה שימוש בכדור או במספר, שמאל בdent, חלל בין הכדור לטקסט וכו '. השיטות הבאות משנות את רמת הרשימה וליישם את התכונות של הרמה החדשה:

- - כדי להגדיל את רמת הרשימה של הסעיף הנוכחי ברמה אחת, התקשר [ListFormat.list_indent](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/list_indent/)
- - כדי להפחית את רמת הרשימה של הסעיף הנוכחי ברמה אחת, התקשר [ListFormat.list_outdent](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/list_outdent/)

השיטות משנות את רמת הרשימה וליישם את התכונות המפורמטיות של הרמה החדשה.

{{% alert color="primary" %}}

אתה יכול גם להשתמש [ListFormat.list_level_number](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/list_level_number/) רכוש כדי להגיע או להגדיר את רמת הרשימה עבור הסעיף. רמות הרשימה מסומנים 0 עד 8.

{{% /alert %}}

להלן דוגמאות כיצד לבנות רשימה רב-דרגתית.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-MultilevelListFormatting.py" >}}

## המונחים: a list Level

אובייקטים ברמת הרשימה נוצרים באופן אוטומטי כאשר נוצרת רשימה. השתמש בתכונות ושיטות של [ListLevel](https://reference.aspose.com/words/python-net/aspose.words.lists/listlevel/) הכיתה לשלוט בפורמט של רמות בודדות של רשימה.

## רשימת פריטים לכל סעיף

באפשרותך להפעיל מחדש רשימה עבור כל סעיף באמצעות [כתובת:_restart_at_each_סעיף](https://reference.aspose.com/words/python-net/aspose.words.lists/list/is_restart_at_each_section/) רכוש. שים לב כי אפשרות זו נתמכת רק בפורמטי RTF, DOC ו- DOCX. אפשרות זו תכתב ל-DoCX רק אם ה-OoxmlCompliance גבוה יותר אז אקסה376.

הדוגמה הבאה של הקוד מראה כיצד ליצור רשימה ולהפעיל אותה מחדש לכל חלק:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_list-RestartListAtEachSection.py" >}}
