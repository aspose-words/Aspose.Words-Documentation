---
title: עבודה עם קטעים ב C++
second_title: Aspose.Words עבור C++
articleTitle: עבודה עם סעיפים
linktitle: עבודה עם סעיפים
description: "הבנת מושגי סעיף מסמך ושיטות מניפולציה באמצעות C++. הכנס קטע למסמך C++. הסר את הקטע C++. העתק קטעים בין מסמכים."
type: docs
weight: 120
url: /he/cpp/working-with-sections/
timestamp: 2024-01-31-14-23-37
---

לפעמים אתה רוצה מסמך שאין לו אותו עיצוב בכל הדפים. לדוגמה, ייתכן שיהיה עליך לשנות פורמטים של מספר עמוד, להיות בעל גודל וכיוון עמוד שונים, או שיהיה לך את דף המסמך הראשון כעמוד שער ללא כל מספור. אתה יכול להשיג את זה עם קטעים.

חלקים הם צמתים ברמה השולטים בכותרות עליונות ותחתונות, כיוון, עמודות, שוליים, עיצוב מספר עמוד ואחרים.

Aspose.Words מאפשר לך לנהל קטעים, לחלק מסמך למקטעים ולבצע שינויים בעיצוב החלים רק על קטע ספציפי. Aspose.Words מאחסן מידע על עיצוב מקטעים כגון כותרות עליונות ותחתונות, הגדרת עמוד והגדרות עמודות במעבר המקטע.

מאמר זה מסביר כיצד לעבוד עם קטעים והפסקות קטעים.

## מה קטע וקטע הפסקה

קטעי המסמך מיוצגים על ידי הכיתות [Section](https://reference.aspose.com/words/cpp/aspose.words/section/) ו - [SectionCollection](https://reference.aspose.com/words/cpp/aspose.words/sectioncollection/). אובייקטים של סעיף הם ילדים מיידיים של הצומת [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) וניתן לגשת אליהם דרך המאפיין [Sections](https://reference.aspose.com/words/cpp/aspose.words/document/get_sections/). אתה יכול לנהל את הצמתים האלה באמצעות כמה שיטות כגון [Remove](https://reference.aspose.com/words/cpp/aspose.words/nodecollection/remove/), [Add](https://reference.aspose.com/words/cpp/aspose.words/nodecollection/add/), [IndexOf](https://reference.aspose.com/words/cpp/aspose.words/nodecollection/indexof/), ואחרים.

מעבר מקטע הוא אפשרות המחלקת דפי מסמכים למקטעים עם פריסות הניתנות להתאמה אישית.

## סוגי מעבר מקטע

Aspose.Words מאפשר לך לפצל ולעצב מסמכים באמצעות מעברי קטעים שונים של הספירה [BreakType](https://reference.aspose.com/words/cpp/aspose.words/breaktype/):

- SectionBreakContinuous
- SectionBreakNewColumn
- SectionBreakNewPage
- SectionBreakEvenPage
- SectionBreakOddPage

אתה יכול גם להשתמש בספירה [SectionStart](https://reference.aspose.com/words/cpp/aspose.words/sectionstart/) כדי לבחור סוג הפסקה שחל רק על החלק הראשון כגון NewColumn, NewPage, EvenPage, ו - OddPage.

## ניהול קטע

מאחר שחלק הוא צומת מורכב רגיל, ניתן להשתמש בכל מניפולציה של הצומת API כדי לתמרן חלקים: להוסיף, להסיר ופעולות אחרות בחלקים. אתה יכול לקרוא עוד על צמתים במאמר [Aspose.Words מודל אובייקט מסמך (DOM)](/words/cpp/aspose-words-document-object-model/).

מצד שני, אתה יכול גם להשתמש ב `DocumentBuilder` API לעבוד עם קטעים. במאמר זה, נתמקד בדרך מסוימת זו של עבודה עם חלקים.

## הוספה או הסרה של מעבר מקטע

Aspose.Words מאפשר לך להוסיף קטע מעבר לטקסט בשיטת [InsertBreak](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertbreak/).

דוגמת הקוד הבאה מראה כיצד להוסיף פריצת מקטע למסמך:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "insert-section-breaks.cpp" >}}

השתמש בשיטת [Remove](https://reference.aspose.com/words/cpp/aspose.words/node/remove/) כדי למחוק מעבר מקטע. אם אינך צריך להסיר מעבר מקטע ספציפי ובמקום זאת למחוק את התוכן של אותו קטע, תוכל להשתמש בשיטת [ClearContent](https://reference.aspose.com/words/cpp/aspose.words/section/clearcontent/).

דוגמת הקוד הבאה מראה כיצד להסיר מעברי קטעים:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "remove-section-breaks.h" >}}

{{% alert color="primary" %}}

שים לב שבפסקת קטעים יש מידע על הקטע שלפניו, ולא על הקטע שאחריו. כך שאם תסיר מעבר מקטע, הטקסט לפני ההפסקה שהוסרה יקבל את המאפיינים של מעבר המקטע שאחריו. זה יכול לגרום למסמך כולו להפוך לנוף, או לכותרות עליונות ותחתונות להשתנות או להיעלם לחלוטין.

{{% /alert %}}

## העבר קטע

אם ברצונך להעביר קטע ממיקום אחד למשנהו במסמך שלך, עליך לקבל את האינדקס של אותו קטע. Aspose.Words מאפשר לך לקבל מיקום מקטע מ [SectionCollection](https://reference.aspose.com/words/cpp/aspose.words/sectioncollection/). אתה יכול להשתמש במאפיין [Sections](https://reference.aspose.com/words/cpp/aspose.words/document/get_sections/) כדי לקבל את כל הסעיפים במסמך שלך. אבל אם אתה רוצה לקבל רק את החלק הראשון, אתה יכול להשתמש במאפיין [FirstSection](https://reference.aspose.com/words/cpp/aspose.words/document/get_firstsection/).

דוגמת הקוד הבאה מראה כיצד לגשת לחלק הראשון ולחזור דרך הילדים של צומת מורכב:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "section-child-nodes.h" >}}

## ציין פריסת מקטע

לפעמים אתה רוצה שהמסמך שלך ייראה טוב יותר על ידי יצירת פריסות יצירתיות עבור קטעי מסמכים שונים. אם ברצונך לציין את סוג רשת המקטעים הנוכחית, תוכל לבחור מצב פריסת מקטעים באמצעות ספירת [SectionLayoutMode](https://reference.aspose.com/words/cpp/aspose.words/sectionlayoutmode/):

- ברירת מחדל
- רשת
- LineGrid
- SnapToChars

דוגמת הקוד הבאה מראה כיצד להגביל את מספר השורות שעשויות להיות בכל עמוד:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "line-grid-section-layout-mode.h" >}}

## עריכת קטע

כשאתה מוסיף קטע חדש למסמך שלך, לא יהיה גוף או פסקה שתוכל לערוך. Aspose.Words מאפשר לך להבטיח שקטע מכיל גוף עם פיסקה אחת לפחות בשיטת [EnsureMinimum](https://reference.aspose.com/words/cpp/aspose.words/section/ensureminimum/) - הוא יוסיף אוטומטית צומת גוף (או HeaderFooter) למסמך ואז יוסיף לו פסקה.

דוגמת הקוד הבאה מראה כיצד להכין צומת קטע חדש באמצעות **EnsureMinimum**:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "ensure-minimum.h" >}}

### הוסף או הוסף תוכן מראש

אם ברצונך לצייר צורה כלשהי או להוסיף טקסט או תמונה בתחילת/סוף קטע, תוכל להשתמש בשיטות [AppendContent](https://reference.aspose.com/words/cpp/aspose.words/section/appendcontent/) ו - [PrependContent](https://reference.aspose.com/words/cpp/aspose.words/section/prependcontent/) של הכיתה [Section](https://reference.aspose.com/words/cpp/aspose.words/section/).

דוגמת הקוד הבאה מראה כיצד להוסיף תוכן של קטע קיים:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "append-section-content.h" >}}

### שיבוט קטע

Aspose.Words מאפשר לך לשכפל קטע על ידי יצירת עותק מלא שלו בשיטת [Clone](https://reference.aspose.com/words/cpp/aspose.words/section/clone/).

דוגמת הקוד הבאה מראה כיצד לשכפל את החלק הראשון במסמך שלך:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "clone-section.h" >}}

### העתק קטעים בין מסמכים

במקרים מסוימים, ייתכן שיש לך מסמכים גדולים עם חלקים רבים ואתה רוצה להעתיק את התוכן של קטע ממסמך אחד למשנהו.

Aspose.Words מאפשר לך להעתיק קטעים בין מסמכים בשיטת [ImportNode](https://reference.aspose.com/words/cpp/aspose.words/documentbase/importnode/).

דוגמת הקוד הבאה מראה כיצד להעתיק קטעים בין מסמכים:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "copy-section.h" >}}

### עבודה עם כותרת עליונה ותחתונה

הכללים הבסיסיים להצגת כותרת עליונה או תחתונה עבור כל קטע הם פשוטים למדי:

1. אם לקטע אין כותרות עליונות / תחתונות משלו מסוג מסוים, הוא נלקח מהקטע הקודם.
2. סוג הכותרת העליונה / התחתונה המוצגת בדף נשלט על ידי הגדרות הקטע" עמוד ראשון שונה "ו" דפים מוזרים ואחידים שונים " – אם הם מושבתים, מתעלמים מהכותרות של הקטע עצמו.

דוגמת הקוד הבאה מראה כיצד ליצור 2 קטעים עם כותרות שונות:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "link-to-previous-header-footer.h" >}}

אם ברצונך להסיר את הטקסט של כותרות עליונות ותחתונות מבלי להסיר [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/) אובייקטים במסמך, תוכל להשתמש בשיטה [ClearHeadersFooters](https://reference.aspose.com/words/cpp/aspose.words/section/clearheadersfooters/). בנוסף, תוכל להשתמש בשיטת [DeleteHeaderFooterShapes](https://reference.aspose.com/words/cpp/aspose.words/section/deleteheaderfootershapes/) כדי להסיר את כל הצורות מכותרות עליונות ותחתונות במסמך שלך.

דוגמת הקוד הבאה מראה כיצד לנקות תוכן מכל הכותרות העליונות והתחתונות בקטע:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "delete-header-footer-content.h" >}}

דוגמת הקוד הבאה כיצד להסיר את כל הצורות מכל הכותרות התחתונות בסעיף:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "delete-header-footer-shapes.h" >}}

## התאמה אישית של מאפייני דף במקטע

לפני הדפסת דף או מסמך ייתכן שתרצה להתאים אישית ולשנות את הגודל והפריסה של דף בודד או של המסמך כולו. עם הגדרת הדף, באפשרותך לשנות את ההגדרות של דפי מסמכים כגון שוליים, כיוון וגודל להדפסת דפים ראשונים שונים או דפים מוזרים.

Aspose.Words מאפשר לך להתאים אישית את מאפייני הדף והקטע באמצעות הכיתה [PageSetup](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/).

דוגמת הקוד הבאה מראה כיצד להגדיר מאפיינים כגון גודל עמוד וכיוון עבור החלק הנוכחי:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "page-setup-and-section-formatting.h" >}}

דוגמת הקוד הבאה מראה כיצד לשנות את מאפייני הדף בכל הסעיפים:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "modify-page-setup-in-all-sections.h" >}}

## ראה גם

- [רמות לוגיות של צמתים במסמך](/words/cpp/logical-levels-of-nodes-in-a-document/)
- [הכנס וצרף מסמכים](/words/cpp/insert-and-append-documents/)
