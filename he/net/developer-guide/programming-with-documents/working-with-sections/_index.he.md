---
title: עבודה עם סעיפים C#
second_title: Aspose.Words עבור .NET
articleTitle: עבודה עם סעיפים
linktitle: עבודה עם סעיפים
description: "הבנה של מושגים ותרגולי מניפולציה באמצעות C#. הכנס סעיף במסמך C#. להסיר סעיף C#. העתק קטעים בין מסמכים"
type: docs
weight: 120
url: /he/net/working-with-sections/
timestamp: 2024-09-25-11-08-55
---

לפעמים אתה רוצה מסמך שאין לו אותו פורמט בכל הדפים. לדוגמה, ייתכן שיהיה עליך לשנות את פורמטי מספר העמוד, יש גודל וכיוון שונים, או שיש לך את דף המסמך הראשון כעמוד כיסוי ללא מספר. אתה יכול להשיג את זה עם חלקים.

סעיפים הם בלוטות רמות השולטות ראשים והולכי רגל, אוריינטציה, עמודות, שוליים, שוליים, מספר העמודים פורמט, ואחרים.

Aspose.Words מאפשר לך לנהל חלקים, לחלק מסמך לחלקים, ולבצע שינויים פורמט החל רק על סעיף מסוים. Aspose.Words מאחסנת מידע על פורמט סעיף כגון Headers and Footers, דף ההתקנה והגדרות עמודה בפסקה.

מאמר זה מסביר כיצד לעבוד עם חלקים וקטעים.

## איזה סעיף ופסקה הם

סעיפים של מסמכים מיוצגים על ידי [Section](https://reference.aspose.com/words/net/aspose.words/section/) ו [SectionCollection](https://reference.aspose.com/words/net/aspose.words/section/collection) שיעורים. חפצים הם ילדים מיידיים של [Document](https://reference.aspose.com/words/net/aspose.words/document/) צומת וניתן לגשת אליו באמצעות [Sections](https://reference.aspose.com/words/net/aspose.words/document//properties/sections) רכוש. אתה יכול לנהל את הנקודות האלה באמצעות כמה שיטות כגון [Remove](https://reference.aspose.com/words/net/aspose.words/nodecollection/remove/), [Add](https://reference.aspose.com/words/net/aspose.words/nodecollection/add/), [IndexOf](https://reference.aspose.com/words/net/aspose.words/nodecollection/indexof/), ואחרים.

שבר סעיף הוא אופציה המחלקת דפים מסמך לסעיפים עם פריסות מותאמות אישית.

## סוגים של הפסקה

Aspose.Words מאפשר להפיץ ולעצב מסמכים באמצעות הפסקות חלקים שונות של [BreakType](https://reference.aspose.com/words/net/aspose.words/breaktype/) המונחים:

* סעיףBreakContinense
* תגית: Breaking NewColumn
* תגית:BreakNewPage
* תגית:Break EvenPage
* פרק:BreakOdPage

אתה יכול גם להשתמש [SectionStart](https://reference.aspose.com/words/net/aspose.words/sectionstart/) בהנחה לבחור סוג הפסקה שחל רק על החלק הראשון כגון NewColumn, NewPage, EvenPage, ו- OddPage.

## נהל סעיף

מכיוון שסעיף הוא צומת מורכב רגיל, כל מניפולציה הצומת API ניתן להשתמש כדי לתמרן חלקים: להוסיף, להסיר ופעולות אחרות על חלקים. ניתן לקרוא עוד על צמתים במאמר [Aspose.Words Document Object Model (DOM)](/words/he/net/aspose-words-document-object-model/).

מצד שני, אתה יכול גם להשתמש `DocumentBuilder` API לעבוד עם חלקים במאמר זה נתמקד בדרך מסוימת זו של עבודה עם חלקים.

## הוסף או להסיר פסקה

Aspose.Words מאפשר להוסיף קטע לפרוץ לטקסט באמצעות [InsertBreak](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertbreak/) שיטה.

הדוגמה הבאה של הקוד מראה כיצד להכניס חלק לתוך מסמך:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "insert-section-breaks.cs" >}}

השתמש [Remove](https://reference.aspose.com/words/net/aspose.words/node/remove/) שיטה למחוק הפסקה. אם אתה לא צריך להסיר הפסקה מסוימת ובמקום זאת למחוק את התוכן של סעיף זה, אתה יכול להשתמש [ClearContent](https://reference.aspose.com/words/net/aspose.words/section/clearcontent/) שיטה.

דוגמה לקוד הבא מראה כיצד להסיר הפסקות:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "remove-section-breaks.cs" >}}

{{% alert color="primary" %}}

שים לב שלפסקה חלק יש מידע על הקטע שלפניו, לא על הקטע שהולך אחריו. אז אם תסירו הפסקה של סעיף, הטקסט לפני ההפסקה הוסרה יקבל את התכונות של הקטע לאחר מכן. זה יכול לגרום לכל המסמך להפוך לנוף, או ראשים והולכי רגל לשנות או להיעלם לחלוטין.

{{% /alert %}}

## העברת סעיף

אם אתה רוצה להעביר קטע ממקום אחד למשנהו במסמך שלך, אתה צריך לקבל את המדד של סעיף זה. Aspose.Words מאפשר לך לקבל מיקום חלק מ [SectionCollection](https://reference.aspose.com/words/net/aspose.words/sectioncollection/) באמצעות שימוש [Item](https://reference.aspose.com/words/net/aspose.words/sectioncollection//properties/item) רכוש. אתה יכול להשתמש [Sections](https://reference.aspose.com/words/net/aspose.words/document/sections/) לרכוש את כל החלקים במסמך שלך. אם אתה רוצה לקבל רק את החלק הראשון, אתה יכול להשתמש [FirstSection](https://reference.aspose.com/words/net/aspose.words/document/firstsection/) רכוש.

הדוגמה הבאה של הקוד מראה כיצד לגשת לחלק הראשון ולהתפתל דרך הילדים של צומת מורכב:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "section-child-nodes.cs" >}}

## המונחים: a part Layout

לפעמים אתה רוצה שהמסמך שלך ייראה טוב יותר על ידי ביצוע פריסות יצירתיות עבור קטעי מסמך שונים. אם ברצונך לציין את סוג רשת הסעיף הנוכחית, באפשרותך לבחור מצב פריסת חלק באמצעות טופס [SectionLayoutMode](https://reference.aspose.com/words/net/aspose.words/sectionlayoutmode/) המונחים:

* Default
* גרי
* LineGrid
* SnapToCharles

הדוגמה הבאה של הקוד מראה כיצד להגביל את מספר השורות שיש לכל דף:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "line-grid-section-layout-mode.cs" >}}

## לערוך סעיף

כאשר אתה מוסיף סעיף חדש במסמך שלך, לא יהיה גוף או סעיף שניתן לערוך. Aspose.Words מאפשר לך להבטיח כי סעיף מכיל גוף עם לפחות פסקה אחת. [EnsureMinimum](https://reference.aspose.com/words/net/aspose.words/section/ensureminimum/) שיטה – היא תוסיף באופן אוטומטי גוף (או HeaderFooter) צומת למסמך ולאחר מכן תוסיף סעיף לכך.

הדוגמה הבאה של הקוד מראה כיצד להכין פסקה חדשה באמצעות שימוש **EnsureMinimum**:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "ensure-minimum.cs" >}}

### תוכן מראש או Prepend

אם אתה רוצה לצייר צורה או להוסיף טקסט או תמונה בתחילת / סיום של סעיף, אתה יכול להשתמש [AppendContent](https://reference.aspose.com/words/net/aspose.words/section/appendcontent/) ו [PrependContent](https://reference.aspose.com/words/net/aspose.words/section/prependcontent/) שיטות של [Section](https://reference.aspose.com/words/net/aspose.words/section/) מעמד.

הדוגמה הבאה של הקוד מראה כיצד לתקן תוכן של סעיף קיים:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "append-section-content.cs" >}}

### סימן לסעיף

Aspose.Words מאפשר לשכפל סעיף על ידי יצירת עותק מלא של זה באמצעות [Clone](https://reference.aspose.com/words/net/aspose.words/section/clone/) שיטה.

הדוגמה הבאה של הקוד מראה כיצד לשחזר את הקטע הראשון במסמך שלך:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "clone-section.cs" >}}

### העתק בין מסמכים

במקרים מסוימים, ייתכן שיש לך מסמכים גדולים עם חלקים רבים ואתה רוצה להעתיק את התוכן של סעיף מ מסמך אחד למשנהו.

Aspose.Words מאפשר לך להעתיק חלקים בין מסמכים באמצעות [ImportNode](https://reference.aspose.com/words/net/aspose.words/nodeimporter/importnode/) שיטה.

דוגמה לקוד הבא מראה כיצד להעתיק קטעים בין מסמכים:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "copy-section.cs" >}}

### עבודה עם מדורה Header and Footer

הכללים הבסיסיים להצגת ראש או רגל לכל חלק הם פשוטים למדי:

1.1 1. אם לסעיף אין ראשים/מרגלים משלו מסוג מסוים, הוא נלקח מהחלק הקודם.
2. הסוג של Header/footer המוצג בעמוד נשלט על ידי "העמוד הראשון" ו-"Different Odd & Even Pages" הגדרות - אם הן מוגבלות, אז הכותרות של הקטע תעלמו.

לדוגמה הקוד הבא מראה כיצד ליצור 2 חלקים עם ראשים שונים:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "link-to-previous-header-footer.cs" >}}

אם אתה רוצה להסיר את הטקסט של ראשים והולכי רגל מבלי להסיר [HeaderFooter](https://reference.aspose.com/words/net/aspose.words/headerfooter/) אובייקטים במסמך שלך, אתה יכול להשתמש [ClearHeadersFooters](https://reference.aspose.com/words/net/aspose.words/section/clearheadersfooters/) שיטה. בנוסף, אתה יכול להשתמש [DeleteHeaderFooterShapes](https://reference.aspose.com/words/net/aspose.words/section/deleteheaderfootershapes/) שיטה להסיר את כל הצורות של Headers ו Footers במסמך שלך.

הדוגמה הבאה של הקוד מראה כיצד לנקות את התוכן של כל הראשים וההולכי הרגל בסעיף:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "delete-header-footer-content.cs" >}}

הדוגמה הבאה של הקוד כיצד להסיר את כל הצורות מכל ההולכי רגל בראש בסעיף:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "delete-header-footer-shapes.cs" >}}

## Customize Page Properties in a Part

לפני הדפסה דף או מסמך ייתכן שתרצה להתאים אישית ולשנות את הגודל ואת הפריסה של דף אחד או את המסמך כולו. עם הגדרת דף, באפשרותך לשנות את ההגדרות של דפי מסמך כגון שולי, אוריינטציה וגודל להדפסה של דפים ראשונים שונים או דפים מוזרים.

Aspose.Words מאפשר לך להתאים אישית דף ותכונות סעיף באמצעות [PageSetup](https://reference.aspose.com/words/net/aspose.words/pagesetup/) מעמד.

דוגמה הקוד הבא מראה כיצד להגדיר תכונות כגון גודל דף וכיוון לסעיף הנוכחי:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "page-setup-and-section-formatting.cs" >}}

הדוגמה הבאה של הקוד מראה כיצד לשנות את תכונות העמוד בכל הסעיפים:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "modify-page-setup-in-all-sections.cs" >}}

## ראה גם

* [רמות לוגיות של נקודות במסמך](/words/net/logical-levels-of-nodes-in-a-document/#document-and-section-logical-level)
* [הכנס ונספח מסמכים](/words/he/net/insert-and-append-documents/)

