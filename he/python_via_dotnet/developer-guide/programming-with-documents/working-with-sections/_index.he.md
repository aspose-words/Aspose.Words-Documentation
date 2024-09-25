---
title: עבודה עם סעיפים Python
second_title: Aspose.Words עבור Python via .NET
articleTitle: עבודה עם סעיפים
linktitle: עבודה עם סעיפים
description: "ליצור ולנהל חלקים וקטע פורץ במסמך באמצעות Python. הכנס סעיף במסמך Python. להסיר סעיף Python. העתק קטעים בין מסמכים"
type: docs
weight: 120
url: /he/python-net/working-with-sections/
---

לפעמים אתה רוצה מסמך שאין לו אותו פורמט בכל הדפים. לדוגמה, ייתכן שיהיה עליך לשנות את פורמטי מספר העמוד, יש גודל וכיוון שונים, או שיש לך את דף המסמך הראשון כעמוד כיסוי ללא מספר. אתה יכול להשיג את זה עם חלקים.

סעיפים הם בלוטות רמות השולטות ראשים והולכי רגל, אוריינטציה, עמודות, שוליים, שוליים, מספר העמודים פורמט, ואחרים.

Aspose.Words מאפשר לך לנהל חלקים, לחלק מסמך לחלקים, ולבצע שינויים פורמט החל רק על סעיף מסוים. Aspose.Words מאחסנת מידע על פורמט סעיף כגון Headers and Footers, דף ההתקנה והגדרות עמודה בפסקה.

מאמר זה מסביר כיצד לעבוד עם חלקים וקטעים.

## איזה סעיף ופסקה הם

סעיפים של מסמכים מיוצגים על ידי [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) ו [SectionCollection](https://reference.aspose.com/words/python-net/aspose.words/sectioncollection/) שיעורים. חפצים הם ילדים מיידיים של [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) צומת וניתן לגשת אליו באמצעות [Sections](https://reference.aspose.com/words/python-net/aspose.words/document/sections/) רכוש. אתה יכול לנהל את הנקודות האלה באמצעות כמה שיטות כגון [Remove](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/remove/#node), [Add](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/add/#node), [IndexOf](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/index_of/#node), ואחרים.

שבר סעיף הוא אופציה המחלקת דפים מסמך לסעיפים עם פריסות מותאמות אישית.

## סוגים של הפסקה

Aspose.Words מאפשר להפיץ ולעצב מסמכים באמצעות הפסקות חלקים שונות של [BreakType](https://reference.aspose.com/words/python-net/aspose.words/breaktype/) המונחים:

- קטגוריה:BreakContinense
- תגית:BreakNewColumn
- תגית:BreakNewPage
- תגית:Break EvenPage
- תגית:BreakOdPage

אתה יכול גם להשתמש [SectionStart](https://reference.aspose.com/words/python-net/aspose.words/sectionstart/) בהנחה לבחור סוג הפסקה שחל רק על החלק הראשון כגון NewColumn, NewPage, EvenPage, ו- OddPage.

## נהל סעיף

מכיוון שסעיף הוא צומת מורכב רגיל, כל מניפולציה הצומת API ניתן להשתמש כדי לתמרן חלקים: להוסיף, להסיר ופעולות אחרות על חלקים. ניתן לקרוא עוד על צמתים במאמר [Aspose.Words Document Object Model (DOM)](/words/he/python-net/aspose-words-document-object-model/).

מצד שני, אתה יכול גם להשתמש `DocumentBuilder` API לעבוד עם חלקים במאמר זה נתמקד בדרך מסוימת זו של עבודה עם חלקים.

## הוסף או להסיר פסקה

Aspose.Words מאפשר להוסיף קטע לפרוץ לטקסט באמצעות [InsertBreak](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_break/#breaktype) שיטה.

הדוגמה הבאה של הקוד מראה כיצד להכניס חלק לתוך מסמך:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "insert-section-breaks.py" >}}

השתמש [Remove](https://reference.aspose.com/words/python-net/aspose.words/node/remove/#default) שיטה למחוק הפסקה. אם אתה לא צריך להסיר הפסקה מסוימת ובמקום זאת למחוק את התוכן של סעיף זה, אתה יכול להשתמש [ClearContent](https://reference.aspose.com/words/python-net/aspose.words/section/clear_content/#default) שיטה.

דוגמה לקוד הבא מראה כיצד להסיר הפסקות:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "remove-section-breaks.py" >}}

{{% alert color="primary" %}}

שים לב שלפסקה חלק יש מידע על הקטע שלפניו, לא על הקטע שהולך אחריו. אז אם תסירו הפסקה של סעיף, הטקסט לפני ההפסקה הוסרה יקבל את התכונות של הקטע לאחר מכן. זה יכול לגרום לכל המסמך להפוך לנוף, או ראשים והולכי רגל לשנות או להיעלם לחלוטין.

{{% /alert %}}

## העברת סעיף

אם אתה רוצה להעביר קטע ממקום אחד למשנהו במסמך שלך, אתה צריך לקבל את המדד של סעיף זה. Aspose.Words מאפשר לך לקבל מיקום חלק מ [SectionCollection](https://reference.aspose.com/words/python-net/aspose.words/sectioncollection/). אתה יכול להשתמש [Sections](https://reference.aspose.com/words/python-net/aspose.words/document/sections/) לרכוש את כל החלקים במסמך שלך. אם אתה רוצה לקבל רק את החלק הראשון, אתה יכול להשתמש [FirstSection](https://reference.aspose.com/words/python-net/aspose.words/document/first_section/) רכוש.

הדוגמה הבאה של הקוד מראה כיצד לגשת לחלק הראשון ולהתפתל דרך הילדים של צומת מורכב:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "section-child-nodes.py" >}}

## המונחים: a part Layout

לפעמים אתה רוצה שהמסמך שלך ייראה טוב יותר על ידי ביצוע פריסות יצירתיות עבור קטעי מסמך שונים. אם ברצונך לציין את סוג רשת הסעיף הנוכחית, באפשרותך לבחור מצב פריסת חלק באמצעות טופס [SectionLayoutMode](https://reference.aspose.com/words/python-net/aspose.words/sectionlayoutmode/) המונחים:

- Default
- גרי
- LineGrid
- SnapToChars

הדוגמה הבאה של הקוד מראה כיצד להגביל את מספר השורות שיש לכל דף:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "line-grid-section-layout-mode.py" >}}

## לערוך סעיף

כאשר אתה מוסיף סעיף חדש במסמך שלך, לא יהיה גוף או סעיף שניתן לערוך. Aspose.Words מאפשר לך להבטיח כי סעיף מכיל גוף עם לפחות פסקה אחת. [EnsureMinimum](https://reference.aspose.com/words/python-net/aspose.words/section/ensure_minimum/#default) שיטה – היא תוסיף באופן אוטומטי גוף (או HeaderFooter) צומת למסמך ולאחר מכן תוסיף סעיף לכך.

הדוגמה הבאה של הקוד מראה כיצד להכין פסקה חדשה באמצעות שימוש **EnsureMinimum**:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "ensure-minimum.py" >}}

### תוכן מראש או Prepend

אם אתה רוצה לצייר צורה או להוסיף טקסט או תמונה בתחילת / סיום של סעיף, אתה יכול להשתמש [AppendContent](https://reference.aspose.com/words/python-net/aspose.words/section/append_content/#section) ו [PrependContent](https://reference.aspose.com/words/python-net/aspose.words/section/prepend_content/#section) שיטות של [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) מעמד.

הדוגמה הבאה של הקוד מראה כיצד לתקן תוכן של סעיף קיים:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "append-section-content.py" >}}

### סימן לסעיף

Aspose.Words מאפשר לשכפל סעיף על ידי יצירת עותק מלא של זה באמצעות [Clone](https://reference.aspose.com/words/python-net/aspose.words/section/clone/#default) שיטה.

הדוגמה הבאה של הקוד מראה כיצד לשחזר את הקטע הראשון במסמך שלך:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "clone-section.py" >}}

### העתק בין מסמכים

במקרים מסוימים, ייתכן שיש לך מסמכים גדולים עם חלקים רבים ואתה רוצה להעתיק את התוכן של סעיף מ מסמך אחד למשנהו.

Aspose.Words מאפשר לך להעתיק חלקים בין מסמכים באמצעות [ImportNode](https://reference.aspose.com/words/python-net/aspose.words/nodeimporter/import_node/#node_bool) שיטה.

דוגמה לקוד הבא מראה כיצד להעתיק קטעים בין מסמכים:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "copy-section.py" >}}

### עבודה עם מדורה Header and Footer

הכללים הבסיסיים להצגת ראש או רגל לכל חלק הם פשוטים למדי:

1.1 1. אם לסעיף אין ראשים/מרגלים משלו מסוג מסוים, הוא נלקח מהחלק הקודם.
2. הסוג של Header/footer המוצג בעמוד נשלט על ידי "העמוד הראשון" ו-"Different Odd & Even Pages" הגדרות - אם הן מוגבלות, אז הכותרות של הקטע תעלמו.

לדוגמה הקוד הבא מראה כיצד ליצור 2 חלקים עם ראשים שונים:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "link-to-previous-header-footer.py" >}}

אם אתה רוצה להסיר את הטקסט של ראשים והולכי רגל מבלי להסיר [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/) אובייקטים במסמך שלך, אתה יכול להשתמש [ClearHeadersFooters](https://reference.aspose.com/words/python-net/aspose.words/section/clear_headers_footers/#default) שיטה. בנוסף, אתה יכול להשתמש [DeleteHeaderFooterShapes](https://reference.aspose.com/words/python-net/aspose.words/section/delete_header_footer_shapes/#default) שיטה להסיר את כל הצורות של Headers ו Footers במסמך שלך.

הדוגמה הבאה של הקוד מראה כיצד לנקות את התוכן של כל הראשים וההולכי הרגל בסעיף:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "delete-header-footer-content.py" >}}

הדוגמה הבאה של הקוד כיצד להסיר את כל הצורות מכל ההולכי רגל בראש בסעיף:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "delete-header-footer-shapes.py" >}}

## Customize Page Properties in a Part

לפני הדפסה דף או מסמך ייתכן שתרצה להתאים אישית ולשנות את הגודל ואת הפריסה של דף אחד או את המסמך כולו. עם הגדרת דף, באפשרותך לשנות את ההגדרות של דפי מסמך כגון שולי, אוריינטציה וגודל להדפסה של דפים ראשונים שונים או דפים מוזרים.

Aspose.Words מאפשר לך להתאים אישית דף ותכונות סעיף באמצעות [PageSetup](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/) מעמד.

דוגמה הקוד הבא מראה כיצד להגדיר תכונות כגון גודל דף וכיוון לסעיף הנוכחי:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "page-setup-and-section-formatting.py" >}}

הדוגמה הבאה של הקוד מראה כיצד לשנות את תכונות העמוד בכל הסעיפים:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "modify-page-setup-in-all-sections.py" >}}

## ראה גם

- [רמות לוגיות של נקודות במסמך](/words/python-net/logical-levels-of-nodes-in-a-document/#document-and-section-logical-level)
- [הכנס ונספח מסמכים](/words/he/python-net/insert-and-append-documents/)
