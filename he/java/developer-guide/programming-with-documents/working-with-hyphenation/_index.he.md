---
title: עבודה עם Hyphenation Java
second_title: Aspose.Words עבור Java
articleTitle: עבודה עם Hyphenation
linktitle: עבודה עם Hyphenation
description: "השתמש בהיסטריה להסדר קומפקטי יותר של טקסט. הוא מספק אלגוריתמים מתקדמים לעבוד עם דיוורקציות ההפניה, משתמש במילוני OpenOffice באמצעות שימוש Java."
type: docs
weight: 220
url: /he/java/working-with-hyphenation/
---

לפעמים יש צורך להשתמש hyphenation עבור סידור קומפקטי יותר של טקסט במסמך. במקביל, חשוב להבין כי הפרטים של המילה hyphenation עשויים להיות שונים עבור כל שפה.

כיום, ההפניה אינה משמשת לעתים קרובות כפי שהייתה, במיוחד בטקסטים אנגליים. עם זאת, השימוש בתכונה זו יכול להיות השפעה רצינית על מסמכי המשתמש - ההפניה משפיעה על הפריסה וכתוצאה מכך, המראה של קבצי הפלט, למשל בפורמט PDF.

עבור פיצול נכון של מילים, דיוני ההפניה ספציפית שפה משמשים. Aspose.Words השתמש באלגוריתמים מתקדמים כדי לעבוד עם דיסלקציות כאלה ומאפשר לך לקבל את אותה ההיפנוזה כמו ב Microsoft Word.

## Hyphenation Dictionaries

מאחר ששפות שונות משתמשות בנורמות ובכללים שונים למילה hyphenation, הפתרון האופטימלי להיסטריה נכונה הוא להשתמש במילונים מיוחדים. Aspose.Words משתמשים ב- OpenOffice dictionaries.

עבור בדיקת כישוף, OpenOffice משתמש [Hunspell ספריית הספרייה](https://hunspell.github.io/), זהו הכללה של אלגוריתם ההפניה של TeX. אלגוריתם זה מאפשר ההפניה אוטומטית לא סטנדרטית באמצעות דפוסים סטנדרטיים והתאמה אישית. Hunspell שימושים [Hyphen](https://github.com/hunspell/hyphen) עבור ההפניה.

{{% alert color="primary" %}}

ניתן לקחת dictionaries from the [LibreOffice המונחים GitHub](https://github.com/LibreOffice/dictionaries). לדוגמה, [המונחים: Hyphenation](https://github.com/LibreOffice/dictionaries/blob/master/en/hyph_en_US.dic).

{{% /alert %}}

{{% alert color="primary" %}}

כמו Microsoft Word משתמשים במילונים אחרים מאשר קודמי OpenOffice כדי לבצע hyphenation, ההפניה של כמה מילים שהוגדרו על ידי דיוני OpenOffice עשויים להיות שונים מן ההפניה. Microsoft Word היפנוזה. מסיבה זו, לפעמים אנחנו צריכים לייעץ ללקוחות להוסיף את הדפוסים הדרושים לדיונים שלהם כדי לתקן את ההפניה של מילים מסוימות.

{{% /alert %}}

## היפנוזה Algorithm

Aspose.Words יישום [תגית: Hyphenation TeX](https://github.com/hunspell/hyphen/blob/master/README.hyphen) ניתן להשתמש ב- OpenOffice hyphenation dictionaries.

התכונות הבאות של Aspose.Words יש לקחת בחשבון אלגוריתמים:

* • Hyphenation Distance הפרמטרים (LEFTHYPHENMIN, RightHYPHENMIN) COMהמונחים: COMPOUNDRIGHTHYPHENMIN) שצוין במילון ההפניה מתעלמים. Aspose.Words משתמש במערך פרמטרים של מרחק בהתאם למצב תאימות המסמך.
* אלגוריתם ההפניה ב Aspose.Words תמיכה [hyphenation](https://github.com/hunspell/hyphen/blob/master/README.compound). עם Aspose.Words מתפצלים רצפי אופי המכילים דמויות אלפביתיות ולא-alphabetic מעורבות לחלקים אלפביתיים בלבד (מילים) ו-hyphenates אותם בנפרד.
  שימו לב Microsoft Word לוגיקה של hyphenation של מילים מורכבות תלויה במצב תאימות מסמך.
* אלגוריתם ההפניה ב Aspose.Words לא ליישם את [היפנוזה לא סטנדרטית](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf). דפוסים לא סטנדרטיים מתעלמים.

## עקבו אחרי Hyphenation Dictionaries

כדי להשתמש בתכונה ההפניה, תחילה לרשום מילון ההפניה. הדוגמה הבאה של הקוד מראה כיצד לטעון את דיוני ההפניה לשפות המפורטות מקובץ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-LoadHyphenationDictionaryFromFile.java" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ התבנית של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

הדוגמה הקודית הבאה מראה כיצד לטעון את דיוני ההפניה לשפה המפורטת מתוך זרם:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-LoadHyphenationDictionaryFromStream.java" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ התבנית של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

כחלופה לדיגורי היפנוזה מוקדמת, ניתן לרשום רק דיוני ההפניה הנדרשים "על פי בקשה". כדי להשיג זאת, ליישם את [IHyphenationCallback](https://reference.aspose.com/words/java/com.aspose.words/ihyphenationcallback/) ממשק ולהשתמש בכתובת סטטית [Callback](https://reference.aspose.com/words/java/com.aspose.words/hyphenation/#getCallback).

דוגמה לקוד הבא מראה כיצד ליישם את **IHyphenationCallback** ממשק:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-HyphenationCallback.java" >}}

## ההשפעה של Hyphenation על Layout

כאשר שוברים טקסט לקווים, Aspose.Words בודק כל מילה אם היא מתאימה לחלוטין לקו הנוכחי. אם מילה אחרת ארוכה מדי כדי להתאים בסוף הקו, כברירת מחדל Aspose.Words עובר אותו לתחילת השורה הבאה במקום להנגיש אותו.

עם זאת, את תכונה ההפניה ניתן להשתמש Aspose.Words להכניס hyphens למילים כדי לחסל פערים בטקסט מוצדק או לשמור על אורך קו אפילו בעמודות צרות. זה יכול כמובן להשפיע על מספר הקווים ולכן מספר העמודים. במילים אחרות, השימוש בתפקוד ההפניה משפיע על פריסת המסמך.

## Hyphenation and Justification (H&J)

Microsoft Word יש היגיון מורכב לבחירת נקודת שבר אם הטקסט מוצדק וההפניקה מופעל. בקיצור, Microsoft Word יכול להיות מעדיף לכווץ או למתוח חללים כדי להימנע מההפניה קו. ככל הנראה ההיגיון הזה מבוסס [המונחים: knuth](https://www.eprg.org/G53DOC/pdfs/knuth-plass-breaking.pdf).

Aspose.Words יישום אלגוריתם H&J משלו שנותן את אותה התוצאה Microsoft Word מספק קו זהה פורץ במסמך הפלט.

## ראה גם

* [Hyphen - Hyphenation](https://github.com/hunspell/hyphen/blob/master/README)
* [היפנוזה לא סטנדרטית](https://github.com/hunspell/hyphen/blob/master/README.nonstandard)
* [משרדים פתוחים](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf)
