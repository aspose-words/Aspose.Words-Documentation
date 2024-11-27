---
title: מצא והחלף ב C++
second_title: Aspose.Words עבור C++
articleTitle: מצא והחלף
linktitle: מצא והחלף
type: docs
description: "מצא מחרוזת או דפוס ביטוי רגיל במסמך שלך והחלף אותו בטקסט הרצוי באמצעות C++."
weight: 100
url: /he/cpp/find-and-replace/
timestamp: 2024-01-27-14-07-04
---

אתה יכול לנווט בקלות בתוך המסמך שלך באמצעות מקלדת ועכבר, אך אם יש לך דפים רבים לגלול בהם, ייקח לא מעט זמן למצוא טקסט ספציפי במסמך ארוך. זה ייקח יותר זמן כשתרצה להחליף תווים או מילים מסוימים שבהם השתמשת במסמך שלך. הפונקציונליות "מצא והחלף" מאפשרת לך למצוא רצף של תווים במסמך ולהחליף אותו ברצף אחר של תווים.

Aspose.Words מאפשר לך למצוא מחרוזת ספציפית או דפוס ביטוי רגיל במסמך שלך ולהחליף אותו בחלופה מבלי להתקין ולהשתמש ביישומים נוספים כגון Microsoft Word. זה יאיץ משימות הקלדה ועיצוב רבות, מה שעלול לחסוך לך שעות עבודה.

מאמר זה מסביר כיצד ליישם החלפת מחרוזות וביטויים רגולריים בתמיכת מטא-תווים.

## דרכים למצוא ולהחליף {#ways-to-find-and-replace}

Aspose.Words מספק שתי דרכים ליישם את פעולת החיפוש והחלפה באמצעות:

1. *Simple string replacement* - כדי למצוא ולהחליף מחרוזת ספציפית במחרוזת אחרת, עליך לציין מחרוזת חיפוש (תווים אלפאנומריים) שתוחלף בהתאם לכל המופעים במחרוזת החלפה אחרת שצוינה. אסור ששני המיתרים יכילו סמלים. קח בחשבון שהשוואת מחרוזות יכולה להיות תלוית רישיות, או שאתה לא בטוח באיות או שיש לך כמה איותים דומים.
2. *Regular expressions* - כדי לציין ביטוי רגולרי כדי למצוא את התאמת המחרוזת המדויקת ולהחליף אותם בהתאם לביטוי הרגולרי שלך. שים לב שמילה מוגדרת כמורכבת מאותיות אלפאנומריות בלבד. אם החלפה מבוצעת עם רק מילים שלמות שמתאימות ומחרוזת הקלט מכילה במקרה סמלים, אז לא יימצאו ביטויים.

בנוסף, ניתן להשתמש במטא-תווים מיוחדים עם החלפת מחרוזת פשוטה וביטויים רגולריים כדי לציין הפסקות בתוך פעולת החיפוש והחלפה.

Aspose.Words מציג את הפונקציונליות חיפוש והחלפה במרחב השמות [Aspose.Words.Replacing](https://reference.aspose.com/words/cpp/namespace/aspose.words.replacing). אתה יכול לעבוד עם אפשרויות רבות במהלך תהליך החיפוש והחלפה באמצעות מחלקה [FindReplaceOptions](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions/).

### מצא והחלף טקסט באמצעות החלפת מחרוזת פשוטה {#find-and-replace-text-using-simple-string-replacement}

באפשרותך להשתמש באחת מהשיטות [Replace](https://reference.aspose.com/words/cpp/aspose.words/range/replace/) כדי למצוא או להחליף מחרוזת מסוימת ולהחזיר את מספר ההחלפות שבוצעו. במקרה זה, אתה יכול לציין מחרוזת להחלפה, מחרוזת שתחליף את כל המופעים שלה, האם ההחלפה תלוית רישיות והאם רק מילים עצמאיות יושפעו.

דוגמת הקוד הבאה מראה כיצד למצוא את המחרוזת "_CustomerName_ " ולהחליף אותה במחרוזת *"James Bond"*:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithString-ReplaceWithString.cpp" >}}

אתה יכול להבחין בהבדל בין המסמך לפני החלת החלפת מחרוזת פשוטה:

<img src="before-simple-string-replacement.png" alt="before-simple-string-replacement-aspose-words-cpp" style="width:600px"/>

ולאחר החלת החלפת מחרוזת פשוטה:

<img src="after-simple-string-replacement.png" alt="after-simple-string-replacement-aspose-words-cpp" style="width:600px"/>

### חיפוש והחלפת טקסט באמצעות ביטויים רגולריים {#find-and-replace-text-using-regular-expressions}

ביטוי רגולרי (רגקס) הוא דפוס המתאר רצף מסוים של טקסט. נניח שאתה רוצה להחליף את כל המופעים הכפולים של מילה עם התרחשות מילה אחת. לאחר מכן תוכל להחיל את הביטוי הרגיל הבא כדי לציין את תבנית המילה הכפולה: `([a-zA-Z]+) \1`.

השתמש בשיטה האחרת [Replace](https://reference.aspose.com/words/cpp/aspose.words/range/replace/) כדי לחפש ולהחליף שילובי תווים מסוימים על ידי הגדרת הפרמטר `Regex` כדפוס הביטוי הרגיל כדי למצוא התאמות.

הדוגמה הבאה של הקוד מראה כיצד להחליף מחרוזות שמתאימות לדפוס ביטוי רגיל עם מחרוזת חלופית מוגדרת:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithRegex-ReplaceWithRegex.cpp" >}}

אתה יכול להבחין בהבדל בין המסמך לפני החלת החלפת מחרוזת בביטויים רגולריים:

<img src="before-replacement-with-regular-expressions.png" alt="before-replacement-with-regular-expressions-aspose-words-cpp" style="width:600px"/>

ולאחר החלת החלפת מחרוזת עם ביטויים רגולריים:

<img src="after-replacement-with-regular-expressions.png" alt="after-replacement-with-regular-expressions-aspose-words-cpp" style="width:600px"/>

### מצא והחלף מחרוזת באמצעות מטא-תווים {#find-and-replace-text-using-metacharacters}

אתה יכול להשתמש בתווים מטא במחרוזת החיפוש או במחרוזת ההחלפה אם טקסט או ביטוי מסוים מורכבים ממספר פסקאות, קטעים או עמודים. חלק מטא-תווים כוללים **&p** עבור הפסקה של פסקה, **&b** עבור הפסקה של קטע, **&m** עבור הפסקה של דף, ו **&l** עבור הפסקה של שורה.

{{% alert color="primary" %}}

שימו לב שהמטא-אופי **&&** שווה ל - **&**. לדוגמה, אם עליך למצוא טקסט עבור **&p** שאינו מעבר פסקה, תוכל להשתמש ב **&&p**.

{{% /alert %}}

דוגמת הקוד הבאה מראה כיצד להחליף טקסט בפסקה ומעבר עמוד:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-FindReplaceUsingMetaCharacters-ReplaceTextContaingMetaCharacters.cpp" >}}

## חיפוש והחלפה של מחרוזת בכותרת עליונה / תחתונה של מסמך {#find-and-replace-string-in-header-or-footer-of-a-document}

אתה יכול למצוא ולהחליף טקסט בקטע כותרת עליונה / תחתונה במסמך Word באמצעות הכיתה [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/).

דוגמת הקוד הבאה מראה כיצד להחליף את הטקסט של קטע הכותרת במסמך שלך:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceInHeaderAndFooter-ReplaceTextInFooter.cpp" >}}

אתה יכול להבחין בהבדל בין המסמך לפני החלת החלפת מחרוזת כותרת:

<img src="before-applying-header-string-replacement.png" alt="before-applying-header-string-replacement-aspose-words-cpp" style="width:600px"/>

ולאחר החלת החלפת מחרוזת כותרת:

<img src="after-applying-header-string-replacement.png" alt="after-applying-header-string-replacement-aspose-words-cpp" style="width:600px"/>

דוגמת הקוד להחלפת הטקסט של קטע הכותרת התחתונה במסמך שלך דומה מאוד לדוגמא קוד הכותרת הקודמת. כל שעליך לעשות הוא להחליף את שתי השורות הבאות:

{{< highlight csharp >}}
auto header = headersFooters->idx_get(HeaderFooterType::HeaderPrimary);
header->get_Range()->Replace(u"Aspose.Words", u"Remove", options);
{{< /highlight >}}

עם הדברים הבאים::

{{< highlight csharp >}}
auto footer = headersFooters->idx_get(HeaderFooterType::FooterPrimary);
footer->get_Range()->Replace(u"(C) 2006 Aspose Pty Ltd.", u"Copyright (C) Aspose Pty Ltd.", options);
{{< /highlight >}}

אתה יכול להבחין בהבדל בין המסמך לפני החלת החלפת מחרוזת תחתונה:

<img src="before-applying-footer-string-replacement.png" alt="before-applying-footer-string-replacement-aspose-words-cpp" style="width:600px"/>

ולאחר החלת החלפת מחרוזת תחתונה:

<img src="after-applying-footer-string-replacement.png" alt="after-applying-footer-string-replacement-aspose-words-cpp" style="width:600px"/>

## התעלם מטקסט במהלך חיפוש והחלפה {#ignore-text-during-find-and-replace}

בעת החלת פעולת החיפוש והחלפה, תוכל להתעלם מקטעים מסוימים בטקסט. לכן, חלקים מסוימים של הטקסט ניתן להוציא מן החיפוש, ואת למצוא ולהחליף ניתן להחיל רק על החלקים הנותרים.

Aspose.Words מספק תכונות חיפוש והחלפה רבות להתעלמות מטקסט כגון [IgnoreDeleted](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions), [IgnoreFieldCodes](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions/get_ignorefieldcodes/), [IgnoreFields](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions/get_ignorefields/), [IgnoreFootnotes](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions/get_ignorefootnotes/), ו - [IgnoreInserted](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions/get_ignoreinserted/).

דוגמת הקוד הבאה מראה כיצד להתעלם מטקסט בתוך מחיקת תיקונים:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-IgnoreText-IgnoreTextInsideDeleteRevisions.cpp" >}}

## התאמה אישית של פעולת חיפוש והחלפה {#customize-find-and-replace-operation}

Aspose.Words מספק הרבה [properties](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/) שונים כדי למצוא ולהחליף טקסט כגון החלת פורמט ספציפי עם [ApplyFont](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/applyfont/) ו [ApplyParagraphFormats](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/applyparagraphformat/) מאפיינים, באמצעות החלפות בדפוסי החלפה עם [UseSubstitutions](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/usesubstitutions/) נכס, ואחרים.

דוגמת הקוד הבאה מראה כיצד להדגיש מילה ספציפית במסמך שלך:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithString-HighlightColor.cpp" >}}

Aspose.Words מאפשר לך להשתמש [IReplacingCallback](https://reference.aspose.com/words/cpp/aspose.words.replacing/ireplacingcallback/) ממשק כדי ליצור ולקרוא שיטה מותאמת אישית במהלך פעולת החלפה. ייתכן שיש לך כמה מקרי שימוש שבהם עליך להתאים אישית את פעולת החיפוש והחלפה, כגון החלפת טקסט שצוין בביטוי רגולרי בתגים HTML, כך שבעצם תחיל החלפה בהכנסה HTML.

אם עליך להחליף מחרוזת בתג HTML, החל את ממשק **IReplacingCallback** כדי להתאים אישית את פעולת החיפוש והחלפה כך שההתאמה תתחיל בתחילת הריצה עם צומת ההתאמה של המסמך שלך. תן לנו לספק כמה דוגמאות לשימוש **IReplacingCallback**.

דוגמת הקוד הבאה מראה כיצד להחליף טקסט שצוין ב HTML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithHTML-ReplaceWithHtml.cpp" >}}

דוגמת הקוד הבאה מראה כיצד להדגיש מספרים חיוביים עם צבע ירוק ומספרים שליליים עם צבע אדום:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithHTML-NumberHighlightCallback.cpp" >}}

דוגמת הקוד הבאה מראה כיצד להוסיף מספר שורה לכל שורה:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithHTML-LineCounter.cpp" >}}
