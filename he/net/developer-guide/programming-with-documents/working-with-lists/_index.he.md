---
title: עבודה עם רשימות C#
second_title: Aspose.Words עבור .NET
articleTitle: עבודה עם רשימות
linktitle: עבודה עם רשימות
description: "מבוא לתבנית מספר Aspose.Words עבור .NET."
type: docs
weight: 200
url: /he/net/working-with-lists/
---

רשימה ב Microsoft Word מסמך הוא קבוצה של תכונות גיבוש סעיף. רשימות ניתן להשתמש במסמכים למבנה, לארגן ולהדגיש טקסט. רשימות הן דרך מצוינת לארגן נתונים במסמכים באופן שהופך את זה קל לקוראים לספוג ולהבין נקודות מפתח.

כל רשימה יכולה להיות עד 9 רמות, ולעצב נכסים כגון סגנון מספר, להתחיל ערך, זיהוי, מיקום הכרטיסייה, ואחרים מוגדרים בנפרד לכל רמה.

In In In Aspose.Words, עבודה עם רשימות מיוצגת על ידי [Lists](https://reference.aspose.com/words/net/aspose.words.lists/) שם. אבל, [List](https://reference.aspose.com/words/net/aspose.words.lists/list/) האובייקט תמיד שייך [ListCollection](https://reference.aspose.com/words/net/aspose.words.lists/listcollection/).

מאמר זה מתאר עבודה מעשית עם רשימות באמצעות Aspose.Words.

## יצירת רשימות על ידי Applying List Format

Aspose.Words מאפשר יצירת רשימות קלה על ידי יישום רשימה. [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) מספק [ListFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/listformat/) רכוש מחזיר **ListFormat** אובייקט. לאובייקט הזה יש כמה שיטות להתחיל ולסיים רשימה ולהגביר את ההערה. ישנם שני סוגים של רשימות Microsoft Wordתגית: Bulleted and Numbered:

- כדי להתחיל רשימה מזוינת, התקשר [ApplyBulletDefault](https://reference.aspose.com/words/net/aspose.words.lists/listformat/applybulletdefault/)
- כדי להתחיל רשימה מספרית, התקשר [ApplyNumberDefault](https://reference.aspose.com/words/net/aspose.words.lists/listformat/applynumberdefault/)

הכדור או המספר והפורמטים מתווספים לפסקה הנוכחית ולכל פסקאות נוספות שנוצרו באמצעות שימוש **DocumentBuilder** עד [RemoveNumbers](https://reference.aspose.com/words/net/aspose.words.lists/listformat/removenumbers/) הוא נקרא להפסיק את פורמט הרשימה.

במסמכים של Word, רשימות עשויות להכיל עד תשע רמות. רשימת העיצוב של כל רמה מפרטת מה נעשה שימוש בכדור או במספר, שמאל בdent, חלל בין הכדור לטקסט וכו '. השיטות הבאות משנות את רמת הרשימה וליישם את התכונות של הרמה החדשה:

- - כדי להגדיל את רמת הרשימה של הסעיף הנוכחי ברמה אחת, התקשר [ListIndent](https://reference.aspose.com/words/net/aspose.words.lists/listformat/listindent/)
- - כדי להפחית את רמת הרשימה של הסעיף הנוכחי ברמה אחת, התקשר [ListOutdent](https://reference.aspose.com/words/net/aspose.words.lists/listformat/listoutdent/)

אתה יכול גם להשתמש [ListLevelNumber](https://reference.aspose.com/words/net/aspose.words.lists/listformat/listlevelnumber/) רכוש כדי להגיע או להגדיר את רמת הרשימה עבור הסעיף.

{{% alert color="primary" %}}

רמות הרשימה מסומנים 0 עד 8.

{{% /alert %}}

דוגמה לקוד הבא מראה כיצד לבנות רשימה רב-דרגית:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetMultilevelListFormatting.cs" >}}

## המונחים: a list Level

אובייקטים ברמת הרשימה נוצרים באופן אוטומטי כאשר נוצרת רשימה. השתמש בתכונות ושיטות של [ListLevel](https://reference.aspose.com/words/net/aspose.words.lists/listlevel/) הכיתה לשלוט בפורמט של רמות בודדות של רשימה.

## רשימת פריטים לכל סעיף

באפשרותך להפעיל מחדש רשימה עבור כל סעיף באמצעות [IsRestartAtEachSection](https://reference.aspose.com/words/net/aspose.words.lists/list/isrestartateachsection/) רכוש. שים לב כי אפשרות זו נתמכת רק בפורמטי RTF, DOC ו- DOCX. אפשרות זו תכתב ל-DoCX רק אם ה-OoxmlCompliance גבוה יותר אז אקסה376.

הדוגמה הבאה של הקוד מראה כיצד ליצור רשימה ולהפעיל אותה מחדש לכל חלק:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-List-WorkingWithList-SetRestartAtEachSection.cs" >}}
