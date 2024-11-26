---
title: מצא והחלפת Java
second_title: Aspose.Words עבור Java
articleTitle: מצא והחלפת
linktitle: מצא והחלפת
type: docs
description: "מצא דפוס ביטוי מחרוזת או קבוע במסמך שלך ולהחליף אותו עם הטקסט שברצונך להשתמש Java."
weight: 100
url: /he/java/find-and-replace/
timestamp: 2024-01-27-14-07-04
---

אתה יכול לנווט בקלות במסמך שלך באמצעות מקלדת ועכבר, אבל אם יש לך דפים רבים לגלול דרך, זה ייקח די הרבה זמן כדי למצוא טקסט מסוים במסמך ארוך. זה יהיה יותר זמן לצרוך כאשר אתה רוצה להחליף דמויות או מילים מסוימות שהשתמשת במסמך שלך. פונקציונליות "מצא והחלפת" מאפשרת לך למצוא רצף של דמויות במסמך ולהחליף אותו עם רצף אחר של דמויות.

Aspose.Words מאפשר לך למצוא תבנית מחרוזת מסוימת או ביטוי קבוע במסמך שלך ולהחליף אותו עם אלטרנטיבה ללא התקנה ושימוש יישומים נוספים כגון: Microsoft Word. זה יזרז משימות הקלדה ופורמטיביות רבות, שעלולות לחסוך שעות עבודה.

מאמר זה מסביר כיצד ליישם החלפת מיתר וביטויים קבועים עם התמיכה של metacharacters.

## דרכים למצוא ולחליף {#ways-to-find-and-replace}

Aspose.Words מספק שתי דרכים ליישם את החיפוש ולהחליף את הפעולה באמצעות הפעולות הבאות:

1.1 1. * החלפת מחרוזת פשוטה* - כדי למצוא ולהחליף מחרוזת מסוימת עם אחר, אתה צריך לציין מחרוזת חיפוש (דמויות אלפרמריות) אשר תוחלף על פי כל האירועים עם מחרוזת חלופית נוספת. שני המיתרים לא חייבים להכיל סמלים. קח בחשבון כי השוואה מחרוזת יכול להיות רגיש במקרה, או שאתה יכול להיות לא בטוח לחשים או יש כמה לחשים דומים.
2. * ביטויים רשומים* – כדי לציין ביטוי קבוע למציאת משחקי המחרוזת המדויקים ולהחליפם בהתאם לביטוי הרגיל שלך. שים לב שמילה מוגדרת כמרכיבים רק דמויות אלפאמריות. אם החלפת מבוצעת עם רק מילים שלמות תואמות ומחרוזת קלט מתרחשת להכיל סמלים, אז לא יימצאו ביטויים.

כמו כן, אתה יכול להשתמש metacharacters מיוחדים עם תחליף מחרוזת פשוט ביטויים קבועים כדי לציין הפסקות בתוך מוצא להחליף את המבצע.

Aspose.Words מציג את הפונקציונליות וההחלפה עם [IReplacingCallBack](https://reference.aspose.com/words/java/com.aspose.words/ireplacingcallback/). אתה יכול לעבוד עם אפשרויות רבות במהלך למצוא ולהחליף את התהליך באמצעות [FindReplaceOptions](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/) מעמד.

### Find and Replace Text Using Simple String {#find-and-replace-text-using-simple-string-replacement}

אתה יכול להשתמש באחד [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.lang.String-java.lang.String) שיטות למצוא או להחליף מחרוזת מסוימת ולהחזיר את מספר ההחלפה שנעשו. במקרה זה, אתה יכול לציין מחרוזת שיש להחליף, מחרוזת שתחליף את כל האירועים שלה, בין אם ההחלפה היא רגישה במקרה, ואם רק מילים עומדות-אלון יושפעו.

הדוגמה הקודית הבאה מראה כיצד למצוא את המחרוזת "_Customername_" ולהחליף אותו עם המחרוזת *"ג'יימס בונד"*:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-SimpleStringReplacement.java" >}}

ניתן להבחין בין המסמך לפני החלת החלפת מחרוזת פשוטה:

<img src="/words/java/find-and-replace/before-simple-string-replacement.png" alt="before-simple-string-replacement-aspose-words-java" style="width:600px"/>

לאחר הגשת החלפת מחרוזת פשוטה:

<img src="/words/java/find-and-replace/after-simple-string-replacement.png" alt="after-simple-string-replacement-aspose-words-java" style="width:600px"/>

### מצא והחלפת טקסט באמצעות ביטויים רגילים {#find-and-replace-text-using-regular-expressions}

ביטוי קבוע (regex) הוא דפוס המתאר רצף מסוים של טקסט. נניח שאתה רוצה להחליף את כל האירועים הכפולים של מילה עם התרחשות מילה אחת. לאחר מכן תוכל ליישם את הביטוי הרגיל הבא כדי לציין את תבנית המילה הכפולה: `([a-zA-Z]+) \1`.

השתמש באחר [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.util.regex.Pattern-java.lang.String) שיטה לחיפוש ולהחלפת שילובי אופי ספציפיים על ידי הגדרת `Regex` פרמטר כתבנית ביטוי רגילה למציאת משחקים.

הדוגמה הבאה של הקוד מראה כיצד להחליף מיתרים שמתאימים לתבנית ביטוי רגילה עם מיתר חלופי מוגדר:


{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-UsingRegularExpression.java" >}}


אתה יכול להבחין בין המסמך לפני החלת החלפת מיתר עם ביטויים קבועים:

<img src="/words/java/find-and-replace/before-replacement-with-regular-expressions.png" alt="before-replacement-with-regular-expressions-aspose-words-java" style="width:600px"/>

לאחר יישום החלפת מיתר עם ביטויים קבועים:

<img src="/words/java/find-and-replace/after-replacement-with-regular-expressions.png" alt="after-replacement-with-regular-expressions-aspose-words-java" style="width:600px"/>

### Find and Replace String Using Metacharacters {#find-and-replace-text-using-metacharacters}

אתה יכול להשתמש metacharacters במחרוזת החיפוש או מחרוזת החלפת אם טקסט מסוים או ביטוי מורכב פסקאות מרובות, חלקים או דפים. חלק מהמטגנים כוללים **&p** על הפסקה, **&b** עבור הפסקה, **&m** עבור דף נשבר, **&l** בשביל הפסקה קו.

{{% alert color="primary" %}}

תגית: metacharacter **&&** שווה **&**. לדוגמה, אם אתה צריך למצוא את הטקסט **&p** זה לא הפסקה, אז אתה יכול להשתמש **&&p**.

{{% /alert %}}

הדוגמה הבאה של הקוד מראה כיצד להחליף טקסט עם פסקה ושבר דף:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextContaingMetaCharacters.java" >}}

## Find and Replace String in Header/Footer of a Document {#find-and-replace-string-in-header-or-footer-of-a-document}

אתה יכול למצוא ולהחליף טקסט בחלק ראש / מ"ר של מסמך Word באמצעות מסמך Word באמצעות [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) מעמד.

הדוגמה הבאה של הקוד מראה כיצד להחליף את הטקסט של החלק הראשי במסמך שלך:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextInHeader.java" >}}


ניתן להבחין בין המסמך לפני החלת החלפת מיתר ראש:

<img src="/words/java/find-and-replace/before-applying-header-string-replacement.png" alt="before-applying-header-string-replacement-aspose-words-java" style="width:600px"/>

לאחר יישום החלפת מיתר ראש:

<img src="/words/java/find-and-replace/after-applying-header-string-replacement.png" alt="after-applying-header-string-replacement-aspose-words-java" style="width:600px"/>

לדוגמה הקוד להחליף את הטקסט של סעיף ה- Footer במסמך שלך דומה מאוד לדוגמה הקודמת קוד ראשי. כל שעליך לעשות הוא להחליף את שני השורות הבאות:

{{< highlight java >}}
HeaderFooter header = headersFooters.get(HeaderFooterType.HEADER_PRIMARY);
header.getRange().replace("Aspose.Words", "Remove", options);
{{< /highlight >}}

עם הדברים הבאים:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextInFooter.java" >}}


אתה יכול להבחין ההבדל בין המסמך לפני החלת החלפת מיתר רגל:

<img src="/words/java/find-and-replace/before-applying-footer-string-replacement.png" alt="before-applying-footer-string-replacement-aspose-words-java" style="width:600px"/>

לאחר הגשת החלפת מחרוזת Footer:

<img src="/words/java/find-and-replace/after-applying-footer-string-replacement.png" alt="after-applying-footer-string-replacement-aspose-words-java" style="width:600px"/>

## עקבו אחרי Find and Replace {#ignore-text-during-find-and-replace}

בעת החלת פעולת המוצא וההחלפה, אתה יכול להתעלם מקטעים מסוימים של הטקסט. לכן, חלקים מסוימים של הטקסט ניתן לשלול מן החיפוש, ואת הממצאים וההחלפה ניתן ליישם רק את החלקים הנותרים.

Aspose.Words מספק תכונות רבות להתעלמות מטקסט כגון [IgnoreDeleted](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreDeleted), [IgnoreFieldCodes](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFieldCodes), [IgnoreFields](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFields), [IgnoreFootnotes](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFootnotes), ו [IgnoreInserted](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreInserted).

הדוגמה הבאה של הקוד מראה כיצד להתעלם טקסט בתוך הסרת תיקונים:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-IgnoreText-IgnoreTextInsideDeleteRevisions.java" >}}

## עקבו אחרי Find and Replace Operation {#customize-find-and-replace-operation}

Aspose.Words מספק הרבה שונה [properties](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/) למצוא ולהחליף טקסט כגון יישום פורמט ספציפי עם [ApplyFont](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getApplyFont) ו [ApplyParagraphFormats](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getApplyParagraphFormat) תכונות, באמצעות החלפת דפוסים חלופיים [UseSubstitutions](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getUseSubstitutions) רכוש, ואחרים.

לדוגמה הקוד הבא מראה כיצד להדגיש מילה מסוימת במסמך שלך:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-CustomizeFindAndReplaceOperation.java" >}}


Aspose.Words מאפשר לך להשתמש [IReplacingCallback](https://reference.aspose.com/words/java/com.aspose.words/ireplacingcallback/) ממשק כדי ליצור ולקרוא שיטה אישית במהלך הפעלה חלופית. ייתכן שיש לך כמה מקרים שבהם אתה צריך להתאים אישית את המצא ולהחליף את הפעולה כגון החלפת טקסט שצוין עם ביטוי קבוע עם תגי HTML, אז בעיקרון אתה תיישם להחליף עם הוספת HTML.

אם אתה צריך להחליף מחרוזת עם תג HTML, ליישם את המחרוזת **IReplacingCallback** ממשק כדי להתאים אישית את מציאת והחלפת הפעולה כך המשחק מתחיל בתחילת ריצה עם צומת המשחק של המסמך שלך. תן לנו לספק כמה דוגמאות לשימוש **IReplacingCallback**.

לדוגמה הקוד הבא מראה כיצד להחליף טקסט שצוין עם HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceWithHtml.java" >}}


לדוגמה הקוד הבא מראה כיצד להדגיש מספרים חיוביים עם צבע ירוק ומספרים שליליים עם צבע אדום:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-NumberHighlightCallback.java" >}}

הדוגמה הבאה של הקוד מראה כיצד להעביר מספר קו לכל קו:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-TestLineCounter.java" >}}
