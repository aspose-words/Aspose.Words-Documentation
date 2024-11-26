---
title: עבודה עם Hyphenation Python
second_title: Aspose.Words עבור Python via .NET
articleTitle: עבודה עם Hyphenation
linktitle: עבודה עם Hyphenation
description: "השתמש בהיסטריה עבור סידור קומפקטי יותר של טקסט באמצעות Python. הוא מספק אלגוריתמים מתקדמים לעבוד עם דיוני ההפניה, משתמש במילוני OpenOffice."
type: docs
weight: 220
url: /he/python-net/working-with-hyphenation/
timestamp: 2024-01-27-14-07-04
---

לפעמים יש צורך להשתמש hyphenation להסדר קומפקטי יותר של טקסט במסמך. במקביל, חשוב להבין כי הפרטים של המילה hyphenation עשויים להיות שונים עבור כל שפה.

כיום, ההפניה אינה משמשת לעתים קרובות כפי שהייתה, במיוחד בטקסטים אנגליים. עם זאת, השימוש בתכונה זו יכול להיות השפעה רצינית על מסמכי המשתמש - ההפניה משפיעה על הפריסה וכתוצאה מכך, המראה של קבצי הפלט, למשל בפורמט PDF.

עבור פיצול נכון של מילים, דיוני ההפניה ספציפיים שפה משמשים. Aspose.Words השתמש באלגוריתמים מתקדמים כדי לעבוד עם דיסלקציות כאלה ומאפשר לך לקבל את אותה ההפניה כמו ב Microsoft Word.

## Hyphenation Dictionaries

מאחר ששפות שונות משתמשות בנורמות ובכללים שונים למילה hyphenation, הפתרון האופטימלי להיסטריה נכונה הוא להשתמש במילונים מיוחדים. Aspose.Words משתמשים ב- OpenOffice dictionaries.

עבור בדיקת האיות, OpenOffice משתמש [Hunspell ספריית הספרייה](https://hunspell.github.io/), זוהי הכללה של אלגוריתם ההפניה של TeX. אלגוריתם זה מאפשר ההפניה אוטומטית לא סטנדרטית באמצעות דפוסים סטנדרטיים והתאמה אישית. Hunspell שימושים [Hyphen](https://github.com/hunspell/hyphen) על ההפניה.

{{% alert color="primary" %}}

יומני Hyphenation ניתן לקחת מן [LibreOffice המונחים GitHub](https://github.com/LibreOffice/dictionaries). לדוגמה, [המונחים: hyphenation](https://github.com/LibreOffice/dictionaries/blob/master/en/hyph_en_US.dic).

{{% /alert %}}

{{% alert color="primary" %}}

כמו Microsoft Word משתמשים במילונים אחרים מאשר קודמיו של OpenOffice כדי לבצע hyphenation, ההפניה של כמה מילים שהוגדרו על ידי דיוני OpenOffice עשויים להיות שונים מן ההפניה. Microsoft Word היפנוזה. מסיבה זו, לפעמים אנחנו צריכים לייעץ ללקוחות להוסיף את הדפוסים הדרושים לדיונים שלהם כדי לתקן את ההפניה של מילים מסוימות.

{{% /alert %}}

## היפנוזה Algorithm

Aspose.Words יישום [אלגוריתם hyphenation](https://github.com/hunspell/hyphen/blob/master/README.hyphen) ניתן להשתמש ב- OpenOffice hyphenation dictionaries.

התכונות הבאות של Aspose.Words יש לקחת בחשבון אלגוריתמים:

* Hyphenation Distance הפרמטרים (LEFTHYPHENMIN, RightHYPHENMIN) COMהמונחים: COMPOUNDRIGHTHYPHENMIN) שצוין במילון ההפניה מתעלמים. Aspose.Words משתמש במערך פרמטרים של מרחק בהתאם למצב תאימות המסמך.
* אלגוריתם ההפניה ב Aspose.Words תמיכה [hyphenation](https://github.com/hunspell/hyphen/blob/master/README.compound). עם Aspose.Words רצף אופי מפוצל המכיל דמויות אלפביתיות ולא-אלphabetic מעורבות לחלקים אלפביתיים בלבד (מילים) ו-hyphenates אותם בנפרד.
  שימו לב Microsoft Word לוגיקה של hyphenation של מילים מורכבות תלויה במצב תאימות מסמך.
* אלגוריתם ההפניה ב Aspose.Words לא ליישם את [היפנוזה לא סטנדרטית](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf). דפוסים לא סטנדרטיים מתעלמים.

## עקבו אחרי Hyphenation Dictionaries

כדי להשתמש בתכונה ההפניה, תחילה לרשום מילון ההפניה. הדוגמה הבאה של הקוד מראה כיצד לטעון את דיוני ההפניה של השפות המפורטות מקובץ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_hyphenation-HyphenateWordsOfLanguages.py" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ התבנית של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

הדוגמה הקודית הבאה מראה כיצד לטעון את דיוני ההפניה לשפה המפורטת מתוך זרם:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_hyphenation-LoadHyphenationDictionaryForLanguage.py" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ התבנית של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## ההשפעה של Hyphenation על Layout

כאשר שוברים טקסט לקווים, Aspose.Words בודק כל מילה אם היא מתאימה לחלוטין לקו הנוכחי. אם מילה אחרת ארוכה מדי כדי להתאים בסוף הקו, כברירת מחדל Aspose.Words הוא מעביר אותו לתחילת השורה הבאה במקום להנגיש אותו.

עם זאת, את תכונה ההפניה ניתן להשתמש Aspose.Words להכניס hyphens למילים כדי לחסל פערים בטקסט מוצדק או לשמור על אורך קו אפילו בעמודות צרות. זה יכול כמובן להשפיע על מספר הקווים ולכן מספר העמודים. במילים אחרות, השימוש בתפקוד ההפניה משפיע על פריסת המסמך.

## Hyphenation and Justification (H&J)

Microsoft Word יש היגיון מורכב לבחירת נקודת שבר אם הטקסט מוצדק וההפניה מופעל. בקיצור, Microsoft Word יכול להיות מעדיף לכווץ או למתוח חללים כדי להימנע מההפניה קו. ככל הנראה ההיגיון הזה מבוסס [המאמר של Knuth](https://www.eprg.org/G53DOC/pdfs/knuth-plass-breaking.pdf).

Aspose.Words יישום אלגוריתם H&J משלו שנותן את אותה התוצאה Microsoft Word מספק קו זהה פורץ במסמך הפלט.

## ראה גם

* [Hyphen - ספריית Hyphenation](https://github.com/hunspell/hyphen/blob/master/README)
* [היפנוזה לא סטנדרטית](https://github.com/hunspell/hyphen/blob/master/README.nonstandard)
* [היפנוזה אוטומטית לא סטנדרטית ב Open Office](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf)
