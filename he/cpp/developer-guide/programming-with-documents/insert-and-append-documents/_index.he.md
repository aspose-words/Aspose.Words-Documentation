---
title: הכנס וצרף מסמכים ב C++
second_title: Aspose.Words עבור C++
articleTitle: הכנס וצרף מסמכים
linktitle: הכנס וצרף מסמכים
description: "שלב מסמכים לאחד: הכנס או הוסף מסמך למסמך חדש או קיים באמצעות חיפוש והחלפה, מיזוג שדה, סימניה או פשוט בסוף המסמך."
type: docs
weight: 80
url: /he/cpp/insert-and-append-documents/
timestamp: 2024-01-27-14-07-04
---

לפעמים זה נדרש לשלב כמה מסמכים לתוך אחד. אתה יכול לעשות זאת באופן ידני או שאתה יכול להשתמש בתכונה Aspose.Words הוספה או צירוף.

פעולת ההוספה מאפשרת לך להכניס את התוכן של מסמכים שנוצרו בעבר למסמך חדש או קיים.

בתורו, התכונה 'הוסף' מאפשרת לך להוסיף מסמך רק בסוף מסמך אחר.

מאמר זה מסביר כיצד להוסיף או לצרף מסמך למסמך אחר בדרכים שונות ומתאר את המאפיינים הנפוצים שניתן להחיל בעת הוספה או צירוף מסמכים.

## הכנס מסמך

כאמור לעיל, ב Aspose.Words מסמך מיוצג כעץ צמתים, והפעולה של הכנסת מסמך אחד למשנהו היא העתקת צמתים מעץ המסמך הראשון לשני.

ניתן להוסיף מסמכים במגוון מיקומים בדרכים שונות. לדוגמה, ניתן להוסיף מסמך באמצעות פעולת החלפה, שדה מיזוג במהלך פעולת מיזוג או באמצעות סימניה.

ניתן גם להשתמש בשיטת [InsertDocument](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertdocument/), הדומה להכנסת מסמך ב Microsoft Word, כדי להוסיף מסמך שלם במיקום הסמן הנוכחי ללא ייבוא קודם.

דוגמת הקוד הבאה מראה כיצד להוסיף מסמך בשיטת `InsertDocument`:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-with-builder.h" >}}

סעיפי המשנה הבאים מתארים את האפשרויות שבמהלכן ניתן להכניס מסמך אחד למסמך אחר.

### הכנס מסמך במהלך פעולת חיפוש והחלפה {#insert-a-document-during-find-and-replace-operation}

ניתן להוסיף מסמכים בעת ביצוע פעולות חיפוש והחלפה. לדוגמה, מסמך יכול להכיל פסקאות עם הטקסט [INTRODUCTION] ו - [CONCLUSION]. אך במסמך הסופי, עליך להחליף את הפסקאות הללו בתוכן המתקבל ממסמך חיצוני אחר. כדי להשיג זאת, יהיה עליך ליצור מטפל לאירוע החלף.

דוגמת הקוד הבאה מראה כיצד ליצור מטפל לאירוע המחליף כדי להשתמש בו מאוחר יותר בתהליך ההכנסה:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-replace-handler.h" >}}

דוגמת הקוד הבאה מראה כיצד הכנס תוכן של מסמך אחד למסמך אחר במהלך פעולת חיפוש והחלפה:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-replace.h" >}}

### הכנס מסמך במהלך פעולת Mail Merge {#insert-a-document-during-mail-merge-operation}

ניתן להוסיף מסמך לשדה מיזוג במהלך פעולת Mail Merge. לדוגמה, תבנית Mail Merge יכולה להכיל שדה מיזוג כגון [סיכום]. אך במסמך הסופי, עליך להוסיף תוכן המתקבל ממסמך חיצוני אחר לשדה מיזוג זה. כדי להשיג זאת, יהיה עליך ליצור מטפל לאירוע המיזוג.

דוגמת הקוד הבאה מראה כיצד ליצור מטפל לאירוע המיזוג כדי להשתמש בו מאוחר יותר בתהליך ההכנסה:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-mail-merge-handler.h" >}}

דוגמת הקוד הבאה מראה כיצד להכניס מסמך לשדה המיזוג באמצעות המטפל שנוצר:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-mail-merge.h" >}}

### הכנס מסמך לסימנייה

ניתן לייבא קובץ טקסט למסמך ולהכניס אותו מיד לאחר סימניה שהגדרת במסמך. לשם כך, צור פסקה בסימניה שבה ברצונך להכניס את המסמך.

דוגמת הקידוד הבאה מראה כיצד להכניס את התוכן של מסמך אחד לסימניה במסמך אחר:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-bookmark.h" >}}

{{% alert color="primary" %}}

שים לב שהסימניה לא צריכה לכלול מספר פסקאות או טקסט שברצונך שיופיעו במסמך הסופי שהתקבל.

{{% /alert %}}

## הוסף מסמך

ייתכן שיש לך מקרה שימוש שבו עליך לכלול דפים נוספים ממסמך ועד לסוף מסמך קיים. לשם כך, עליך רק להתקשר לשיטת [AppendDocument](https://reference.aspose.com/words/cpp/aspose.words/document/appenddocument/) כדי להוסיף מסמך לסוף מסמך אחר.

{{% alert color="primary" %}}

שימו לב ש [AppendChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/appendchild/) היא שיטת רמת צומת בתוך מסמך. לדוגמה, ניתן ליצור פסקה, להגדיר מאפייני עיצוב ולאחר מכן לצרף אותה כילד לגוף בשיטה **AppendChild**.

{{% /alert %}}

דוגמת הקוד הבאה מראה כיצד להוסיף מסמך לסוף מסמך אחר:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "keep-source-formatting.h" >}}

## ייבוא והוספת צמתים ידנית {#import-and-insert-nodes-manually}

Aspose.Words מאפשר לך להוסיף ולצרף מסמכים באופן אוטומטי ללא כל דרישות יבוא קודמות. עם זאת, אם עליך להוסיף או לצרף צומת ספציפי של המסמך שלך, כגון קטע או פסקה, תחילה עליך לייבא צומת זה באופן ידני.

כאשר אתה צריך להוסיף או לצרף קטע או פסקה אחת לאחרת, אתה בעצם צריך לייבא את הצמתים של עץ צומת המסמך הראשון לשני בשיטה [ImportNode](https://reference.aspose.com/words/cpp/aspose.words/nodeimporter/importnode/). לאחר ייבוא הצמתים שלך, עליך להשתמש בשיטת [InsertAfter](https://reference.aspose.com/words/cpp/aspose.words/compositenode/insertafter/) / [InsertBefore](https://reference.aspose.com/words/cpp/aspose.words/compositenode/insertbefore/) כדי להוסיף צומת חדש אחרי / לפני צומת הייחוס. זה מאפשר לך להתאים אישית את תהליך ההכנסה על ידי ייבוא צמתים ממסמך והכנסתו במיקומים נתונים.

ניתן גם להשתמש בשיטת [AppendChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/appendchild/) כדי להוסיף צומת חדש שצוין לסוף רשימת הצמתים של הילד, לדוגמה, אם ברצונך להוסיף תוכן ברמת הפסקה במקום ברמת הקטע.

דוגמת הקוד הבאה מראה כיצד לייבא ידנית צמתים ולהכניס אותם אחרי צומת ספציפי בשיטת **InsertAfter**:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-as-nodes.h" >}}

{{% alert color="primary" %}}

הייבוא יוצר צומת חדש שהוא עותק של הצומת המקורי ומתאים להכנסה למסמך היעד.

{{% /alert %}}

תוכן מיובא למסמך היעד קטע אחר קטע, כלומר הגדרות, כגון הגדרת עמוד וכותרות עליונות או תחתונות, נשמרות במהלך הייבוא. כדאי גם לציין שניתן להגדיר הגדרות עיצוב בעת הוספה או צירוף של מסמך כדי לציין כיצד שני מסמכים מחוברים זה לזה.

## מאפיינים נפוצים עבור הוספה וצירוף מסמכים {#common-properties-for-insert-and-append-documents}

שניהם [InsertDocument](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertdocument/) ו [AppendDocument](https://apireference.codeporting.com/native/cs2cpp/namespace/system#a6b77ccd8c49df28c153be0462cdfdf49) שיטות לקבל [ImportFormatMode](https://reference.aspose.com/words/cpp/aspose.words/importformatmode/) ו [ImportFormatOptions](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/) כפרמטרים קלט. ה **ImportFormatMode** מאפשר לך לשלוט באופן מיזוג עיצוב המסמך בעת ייבוא תוכן ממסמך אחד למשנהו על ידי בחירת מצבי פורמט שונים כגון [UseDestinationStyles](https://reference.aspose.com/words/cpp/aspose.words/importformatmode/), [KeepSourceFormatting](https://reference.aspose.com/words/cpp/aspose.words/importformatmode/) ו [KeepDifferentStyles](https://reference.aspose.com/words/cpp/aspose.words/importformatmode/). **ImportFormatOptions** מאפשר לך לבחור אפשרויות ייבוא שונות כגון [IgnoreHeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_ignoreheaderfooter/), [IgnoreTextBoxes](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_ignoretextboxes/), [KeepSourceNumbering](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_keepsourcenumbering/), [MergePastedLists](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_mergepastedlists/), ו [SmartStyleBehavior](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_smartstylebehavior/).

Aspose.Words מאפשר לך להתאים את ההדמיה של מסמך שהתקבל כאשר שני מסמכים מתווספים יחד בפעולה הוספה או הוספה באמצעות המאפיינים [Section](https://reference.aspose.com/words/cpp/aspose.words/section/) ו [PageSetup](https://reference.aspose.com/words/cpp/aspose.words/pagesetup). המאפיין **PageSetup** מכיל את כל התכונות של קטע כגון [SectionStart](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_sectionstart/), [RestartPageNumbering](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_restartpagenumbering/), [PageStartingNumber](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_pagestartingnumber/), [Orientation](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_orientation/), ואחרים. מקרה השימוש הנפוץ ביותר הוא להגדיר את המאפיין **SectionStart** כדי להגדיר אם התוכן שנוסף יופיע באותו דף או יתפצל לתוכן חדש.

{{% alert color="primary" %}}

שים לב שהמאפיינים **Section** ו - **PageSetup** אינם שולטים באופן שבו שני מסמכים מוכנסים / מצורפים יחד. הם רק מאפשרים לך לשנות את המראה של מסמך התוצאה שלך.

{{% /alert %}}

דוגמת הקוד הבאה מראה כיצד לצרף מסמך אחד למשנהו תוך שמירה על פיצול התוכן לשני עמודים:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "different-page-setup.h" >}}
