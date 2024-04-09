---
title: Find and Replace Python
second_title: Aspose.Words עבור Python via .NET
articleTitle: מצא והחלפת
linktitle: מצא והחלפת
type: docs
description: "מצא דפוס ביטוי מחרוזת או קבוע במסמך שלך ולהחליף אותו עם הטקסט שברצונך להשתמש Python."
weight: 100
url: /he/python-net/find-and-replace/
---

אתה יכול לנווט בקלות במסמך שלך באמצעות מקלדת ועכבר, אבל אם יש לך דפים רבים לגלול דרך, זה ייקח די הרבה זמן כדי למצוא טקסט מסוים במסמך ארוך. זה יהיה יותר זמן לצרוך כאשר אתה רוצה להחליף דמויות או מילים מסוימות שהשתמשת במסמך שלך. פונקציונליות "מצא והחלפת" מאפשרת לך למצוא רצף של דמויות במסמך ולהחליף אותו עם רצף אחר של דמויות.

Aspose.Words מאפשר לך למצוא תבנית מחרוזת מסוימת או ביטוי קבוע במסמך שלך ולהחליף אותו עם אלטרנטיבה ללא התקנה ושימוש יישומים נוספים כגון: Microsoft Word. זה יזרז משימות הקלדה ופורמטיביות רבות, שעלולות לחסוך שעות עבודה.

מאמר זה מסביר כיצד ליישם החלפת מיתר וביטויים קבועים עם התמיכה של metacharacters.

## דרכים למצוא ולחליף {#ways-to-find-and-replace}

Aspose.Words מספק שתי דרכים ליישם את החיפוש ולהחליף את הפעולה באמצעות הפעולות הבאות:

1.1 1. * החלפת מחרוזת פשוטה* - כדי למצוא ולהחליף מחרוזת מסוימת עם אחר, אתה צריך לציין מחרוזת חיפוש (דמויות אלפרמריות) אשר תוחלף על פי כל האירועים עם מיתר חלופי מוגדר אחר. שני המיתרים לא חייבים להכיל סמלים. קח בחשבון כי השוואה מחרוזת יכול להיות רגיש במקרה, או שאתה יכול להיות לא בטוח לחש או יש כמה לחשים דומים.
2. * ביטויים רשומים* - כדי לציין ביטוי קבוע למציאת משחקי המחרוזת המדויקים ולהחליפם על פי הביטוי הרגיל שלך. שים לב שמילה מוגדרת כמרכיבים רק דמויות אלפאמריות. אם החלפתם מבוצעת עם רק מילים שלמות תואמות ומחרוזת קלט מתרחשת להכיל סמלים, אז לא יימצאו ביטויים.

בנוסף, אתה יכול להשתמש metacharacters מיוחדים עם החלפת מחרוזת פשוטה וביטויים קבועים כדי לציין הפסקות בתוך מוצא והחלפת המבצע.

Aspose.Words מציג את הפונקציונליות וההחלפה עם [aspose.words.replacing](https://reference.aspose.com/words/python-net/aspose.words.replacing/) מודול. אתה יכול לעבוד עם אפשרויות רבות במהלך למצוא ולהחליף את התהליך באמצעות [FindReplaceOptions](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/) מעמד.

### מצא והחלפת טקסט באמצעות החלפת סטרלינג פשוטה {#find-and-replace-text-using-simple-string-replacement}

אתה יכול להשתמש באחד [replace](https://reference.aspose.com/words/python-net/aspose.words/range/replace/) ו [replace_regex](https://reference.aspose.com/words/python-net/aspose.words/range/replace_regex/) שיטות למצוא או להחליף מחרוזת מסוימת ולהחזיר את מספר ההחלפה שנעשו. במקרה זה, אתה יכול לציין מחרוזת שיש להחליף, מחרוזת שתחליף את כל האירועים שלה, בין אם ההחלפה היא רגישה במקרה, ואם רק מילים עומדות-אלון יושפעו.

הדוגמה הקודית הבאה מראה כיצד למצוא את המיתרים "_Customername_" ולהחליף אותו עם המחרוזת *"ג'יימס בונד"*:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.writeln("Hello _CustomerName_,")
print("Original document text: " + doc.range.text)

doc.range.replace("_CustomerName_", "James Bond", aw.replacing.FindReplaceOptions(aw.replacing.FindReplaceDirection.FORWARD))

print("Document text after replace: " + doc.range.text)

# Save the modified document
doc.save(docs_base.artifacts_dir + "FindAndReplace.simple_find_replace.docx")
{{< /highlight >}}

ניתן להבחין בין המסמך לפני החלת החלפת מיתר פשוטה:

<img src="/words/python-net/find-and-replace/before-simple-string-replacement.png" alt="before-simple-string-replacement" style="width:600px"/>

לאחר הגשת החלפת מחרוזת פשוטה:

<img src="/words/python-net/find-and-replace/after-simple-string-replacement.png" alt="after-simple-string-replacement" style="width:600px"/>

### מצא והחלפת טקסט באמצעות הודעות רגילות {#find-and-replace-text-using-regular-expressions}

ביטוי קבוע הוא דפוס המתאר רצף מסוים של טקסט. נניח שאתה רוצה להחליף את כל האירועים הכפולים של מילה עם התרחשות מילה אחת. לאחר מכן תוכל ליישם את הביטוי הרגיל הבא כדי לציין את תבנית המילה הכפולה: `([a-zA-Z]+) \1`.

השתמש [replace_regex](https://reference.aspose.com/words/python-net/aspose.words/range/replace_regex/) שיטה לחיפוש ולהחלפת שילובי אופי ספציפיים על ידי הגדרת פרמטר ביטוי רגיל כמו התבנית כדי למצוא משחקים.

הדוגמה הבאה של הקוד מראה כיצד להחליף מיתרים שמתאימים לתבנית ביטוי רגילה עם מיתר חלופי מוגדר:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-ReplaceWithRegex.py" >}}

אתה יכול להבחין בין המסמך לפני החלת החלפת מיתר עם ביטויים קבועים:

<img src="/words/python-net/find-and-replace/before-replacement-with-regular-expressions.png" alt="before-replacement-with-regular-expressions" style="width:600px"/>

לאחר יישום החלפת מיתר עם ביטויים קבועים:

<img src="/words/python-net/find-and-replace/after-replacement-with-regular-expressions.png" alt="after-replacement-with-regular-expressions" style="width:600px"/>

### Find and Replace String באמצעות Metacharacters {#find-and-replace-text-using-metacharacters}

אתה יכול להשתמש metacharacters במחרוזת החיפוש או מחרוזת החלפת אם טקסט מסוים או ביטוי מורכב פסקאות מרובות, חלקים או דפים. חלק מהמטגנים כוללים **&p** על הפסקה, **&b** עבור הפסקה, **&m** עבור דף נשבר, **&l** בשביל הפסקה קו.

{{% alert color="primary" %}}

תגית: metacharacter **&&** שווה **&**. לדוגמה, אם אתה צריך למצוא טקסט **&p** זה לא הפסקה, אז אתה יכול להשתמש **&&p**.

{{% /alert %}}

הדוגמה הבאה של הקוד מראה כיצד להחליף טקסט עם פסקה ושבר דף:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-ReplaceTextContainingMetaCharacters.py" >}}

## Find and Replace String in Header/Footer of a Document {#find-and-replace-string-in-header-or-footer-of-a-document}

אתה יכול למצוא ולהחליף טקסט בחלק ראש / מ"ר של מסמך Word באמצעות מסמך Word באמצעות [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/) מעמד.

הדוגמה הבאה של הקוד מראה כיצד להחליף את הטקסט של הקטע הראשי במסמך שלך:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-ReplaceTextInFooter.py" >}}

ניתן להבחין בין המסמך לפני החלת החלפת מיתר ראש:

<img src="/words/python-net/find-and-replace/before-applying-header-string-replacement.png" alt="before-applying-header-string-replacement" style="width:600px"/>

לאחר יישום החלפת כותרות:

<img src="/words/python-net/find-and-replace/after-applying-header-string-replacement.png" alt="after-applying-header-string-replacement" style="width:600px"/>

דוגמא הקוד להחליף את הטקסט של סעיף ה- Footer במסמך שלך דומה מאוד לדוגמה הקודמת קוד ראשי. כל שעליך לעשות הוא להחליף את שני השורות הבאות:

{{< highlight python >}}
header = headersFooters.get_by_header_footer_type(aw.HeaderFooterType.HEADER_PRIMARY)
header.range.replace("Aspose.Words", "Remove", options)
{{< /highlight >}}

עם הדברים הבאים:

{{< highlight python >}}
header = headersFooters.get_by_header_footer_type(aw.HeaderFooterType.FOOTER_PRIMARY)
header.range.replace("Aspose.Words", "Remove", options)
{{< /highlight >}}

אתה יכול להבחין ההבדל בין המסמך לפני החלת החלפת מיתר רגל:

<img src="/words/python-net/find-and-replace/before-applying-footer-string-replacement.png" alt="before-applying-footer-string-replacement" style="width:600px"/>

לאחר הגשת החלפת מחרוזת Footer:

<img src="/words/python-net/find-and-replace/after-applying-footer-string-replacement.png" alt="after-applying-footer-string-replacement" style="width:600px"/>

## עקבו אחרי Find and Replace {#ignore-text-during-find-and-replace}

בעת החלת פעולת המוצא וההחלפה, אתה יכול להתעלם מקטעים מסוימים של הטקסט. לכן, חלקים מסוימים של הטקסט ניתן לשלול מן החיפוש, ואת הממצאים וההחלפה ניתן ליישם רק את החלקים הנותרים.

Aspose.Words מספק תכונות רבות להתעלמות מטקסט כגון [ignore_deleted](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/ignore_deleted/), [ignore_fields](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/ignore_fields/), ו [ignore_inserted](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/ignore_inserted/).

הדוגמה הבאה של הקוד מראה כיצד להתעלם טקסט בתוך הסרת תיקונים:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-IgnoreTextInsideDeleteRevisions.py" >}}

## עקבו אחרי Find and Replace {#customize-find-and-replace-operation}

Aspose.Words מספק תכונות רבות ושונות כדי למצוא ולהחליף טקסט כגון יישום פורמט ספציפי עם [apply_font](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/apply_font/) ו [apply_paragraph_formats](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/apply_paragraph_format/) תכונות, באמצעות החלפת דפוסים חלופיים [use_substitutions](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/use_substitutions/) רכוש, ואחרים.

לדוגמה הקוד הבא מראה כיצד להדגיש מילה מסוימת במסמך שלך:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-FindAndHighlight.py" >}}
