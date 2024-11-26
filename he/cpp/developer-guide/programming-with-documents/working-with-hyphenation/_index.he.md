---
title: עבודה עם מקף ב C++
second_title: Aspose.Words עבור C++
articleTitle: עבודה עם מקף
linktitle: עבודה עם מקף
description: "השתמש במקף לסידור טקסט קומפקטי יותר באמצעות C++. הוא מספק אלגוריתמים מתקדמים לעבודה עם מילוני מקף, משתמש במילונים OpenOffice."
type: docs
weight: 220
url: /he/cpp/working-with-hyphenation/
timestamp: 2024-01-30-16-22-34
---

לפעמים יש צורך להשתמש במקף עבור סידור קומפקטי יותר של טקסט במסמך. יחד עם זאת, חשוב להבין כי הפרטים של מקף מילים עשויים להיות שונים עבור כל שפה.

נכון לעכשיו, מקף אינו משמש לעתים קרובות כפי שהיה פעם, במיוחד בטקסטים באנגלית. עם זאת, לשימוש בתכונה זו יכולה להיות השפעה רצינית על מסמכי המשתמש – מקף משפיע על הפריסה וכתוצאה מכך על מראה קבצי הפלט, למשל בפורמט PDF.

לפיצול נכון של מילים משתמשים במילוני מקף ספציפיים לשפה. Aspose.Words משתמש באלגוריתמים מתקדמים כדי לעבוד עם מילונים כאלה ומאפשר לך לקבל את אותו מקף כמו ב Microsoft Word.

## מילוני מיקוף

מכיוון ששפות שונות משתמשות בנורמות וכללים שונים למקף מילים, הפיתרון האופטימלי למקף נכון הוא שימוש במילונים מיוחדים. Aspose.Words משתמש OpenOffice מילונים.

לבדיקת איות, OpenOffice משתמש ב [Hunspell ספרייה](https://hunspell.github.io/), שהוא הכללה של אלגוריתם המיקוף של טקס. אלגוריתם זה מאפשר מיקוף אוטומטי שאינו סטנדרטי באמצעות דפוסי מיקוף סטנדרטיים ומותאמים אישית מתחרים. Hunspell משתמש ב [מקף](https://github.com/hunspell/hyphen) למקף.

{{% alert color="primary" %}}

ניתן לקחת מילונים של קישור מה [LibreOffice מילונים GitHub](https://github.com/LibreOffice/dictionaries). לדוגמה, [- US מילון מיקוף](https://github.com/LibreOffice/dictionaries/blob/master/en/hyph_en_US.dic).

{{% /alert %}}

{{% alert color="primary" %}}

מאחר ו - Microsoft Word משתמש במילונים אחרים מלבד OpenOffice מילונים כדי לבצע קישור, הקישור של כמה מילים שהוגדרו על ידי OpenOffice מילונים עשוי להיות שונה מהקישור Microsoft Word. מסיבה זו, לפעמים אנחנו צריכים לייעץ ללקוחות להוסיף את הדפוסים הדרושים למילונים שלהם כדי לתקן את המקף של מילים מסוימות.

{{% /alert %}}

## אלגוריתם מיקוף

Aspose.Words כלים [אלגוריתם המיקוף של טקס](https://github.com/hunspell/hyphen/blob/master/README.hyphen) ויכול לעשות שימוש חוזר במילוני מיקוף OpenOffice.

יש לקחת בחשבון את התכונות הבאות של אלגוריתמים Aspose.Words:

* פרמטרים של מרחק מיקוף (LEFTHYPHENMIN, RIGHTHYPHENMIN, COMPOUNDLEFTHYPHENMIN, COMPOUNDRIGHTHYPHENMIN) שצוין במילון המקף מתעלמים. Aspose.Words משתמש משלו סט של מרחק פרמטרים בהתאם מסמך תאימות מצב.
* אלגוריתם המיקוף ב Aspose.Words תומך [קישור מורכב](https://github.com/hunspell/hyphen/blob/master/README.compound). עם זאת, Aspose.Words מחלק רצפי אותיות המכילים אותיות אלפביתיות מעורבות ולא אלפביתיות לחלקים (מילים) אלפביתיים בלבד ומקף אותם בנפרד.
  שימו לב ש Microsoft Word לוגיקה של מיקוף של מילים מורכבות תלויה במצב תאימות המסמך.
* אלגוריתם ההיקף ב Aspose.Words אינו מיישם את [מיקוף לא סטנדרטי](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf). מתעלמים מדפוסים לא סטנדרטיים.

## טעינת מילוני מיקוף

כדי להשתמש בתכונת המקף, רשום תחילה מילון מקף.דוגמת הקוד הבאה מראה כיצד לטעון מילוני מיקוף עבור השפות שצוינו מקובץ:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Hyphenation-HyphenateWordsOfLanguages.h" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ התבנית של דוגמה זו מ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples)

{{% /alert %}}

דוגמת הקוד הבאה מראה כיצד לטעון מילוני מיקוף עבור השפה שצוינה מזרם:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Hyphenation-LoadHyphenationDictionaryForLanguage.h" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ התבנית של דוגמה זו מ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples)

{{% /alert %}}

כחלופה לרישום מראש של מילוני מקף, ניתן לרשום רק מילוני מקף נדרשים"לפי בקשה". כדי להשיג זאת, יישם את ממשק [IHyphenationCallback](https://reference.aspose.com/words/cpp/aspose.words/ihyphenationcallback/) והשתמש בהתקשרות הסטטית [Callback](https://reference.aspose.com/words/cpp/aspose.words/hyphenation/get_callback/).

דוגמת הקוד הבאה מראה כיצד ליישם את ממשק **IHyphenationCallback**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Hyphenation-CustomHyphenation.h" >}}

## השפעת המקף על הפריסה

כאשר שוברים טקסט לשורות, Aspose.Words בודק כל מילה אם היא מתאימה לחלוטין לשורה הנוכחית. אם מילה אחרת ארוכה מכדי להתאים בסוף השורה, כברירת מחדל Aspose.Words מעביר אותה לתחילת השורה הבאה במקום למקף אותה.

עם זאת, ניתן להשתמש בתכונת המקף ב Aspose.Words כדי להכניס מקפים למילים כדי לחסל פערים בטקסט מוצדק או לשמור על אורך קו אחיד בעמודות צרות. זה כמובן יכול להשפיע על מספר השורות ולכן על מספר העמודים. במילים אחרות, השימוש בפונקציית המקף משפיע על פריסת המסמך.

## מקף והצדקה (ח & י)

Microsoft Word יש לוגיקה מורכבת לבחירת נקודת עצירה אם טקסט מוצדק ומקף מופעל. בקיצור, Microsoft Word עשוי להעדיף לכווץ או למתוח רווחים כדי למנוע מקף קו. סביר להניח שההיגיון הזה מבוסס על [המאמר של קנות](https://www.eprg.org/G53DOC/pdfs/knuth-plass-breaking.pdf).

Aspose.Words מיישם אלגוריתם משלו של ח&ג ' שנותן את אותה תוצאה כמו Microsoft Word ומספק שבירת קו זהה במסמך הפלט.

## ראה גם

* [ספריית מקף-מקף](https://github.com/hunspell/hyphen/blob/master/README)
* [מיקוף לא סטנדרטי](https://github.com/hunspell/hyphen/blob/master/README.nonstandard)
* [מקף אוטומטי לא סטנדרטי במשרד פתוח](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf)
