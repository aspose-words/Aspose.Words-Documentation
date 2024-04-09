---
title: הכנס ונספח מסמכים C#
second_title: Aspose.Words עבור .NET
articleTitle: הכנס ונספח מסמכים
linktitle: הכנס ונספח מסמכים
description: "לשלב מסמכים לתוך אחד: להוסיף או לאמת מסמך חדש או קיים באמצעות מציאת והחלפה, מיזוג שדה, סימן ספר או פשוט בסוף המסמך בסוף המסמך. C#."
type: docs
weight: 80
url: /he/net/insert-and-append-documents/
---

לפעמים צריך לשלב כמה מסמכים לאחד. אתה יכול לעשות את זה באופן ידני או שאתה יכול להשתמש Aspose.Words להוסיף או להוסיף תכונה.

ניתוח הכנס מאפשר לך להוסיף את התוכן של מסמכים שנוצרו בעבר לתוך חדש או קיים.

בתורו, התכונה Append מאפשר לך להוסיף מסמך רק בסוף מסמך אחר.

מאמר זה מסביר כיצד להוסיף או לאמת מסמך זה בדרכים שונות, ומתאר את התכונות הנפוצות שאתה יכול ליישם בעת הוספת מסמכים או יישום.

## הכנס מסמך {#insert-a-document}

כאמור לעיל, Aspose.Words מסמך מיוצג כעץ של צמתים, ופעולת הוספת מסמך אחד לשני היא העתקת צמתים מן עץ המסמך הראשון אל השני.

ניתן להוסיף מסמכים במגוון מיקומים בדרכים שונות. לדוגמה, באפשרותך להוסיף מסמך באמצעות הפעלה חלופית, שדה מיזוג במהלך פעולת מיזוג, או באמצעות סימן ספר.

אתה יכול גם להשתמש [InsertDocument](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertdocument/#insertdocument/) או [InsertDocumentInline](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertdocumentinline/) שיטה, אשר דומה להכניס מסמך Microsoft Word, כדי להוסיף מסמך שלם בעמדה הנוכחית של cursor ללא ייבוא קודם.

הדוגמה הבאה של הקוד מראה כיצד להוסיף מסמך באמצעות **InsertDocument** שיטה:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-with-builder.cs" >}}

הדוגמה הבאה של הקוד מראה כיצד להוסיף מסמך באמצעות **InsertDocumentInline** שיטה:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-inline-with-builder.cs" >}}

הקטעים הבאים מתארים את האפשרויות שבהן ניתן להכניס מסמך אחד לשני.

### הכנס מסמך במהלך Find and Replace {#insert-a-document-during-find-and-replace-operation}

באפשרותך להוסיף מסמכים בעת ביצוע חיפוש והחלפת פעולות. לדוגמה, מסמך יכול להכיל פסקאות עם הטקסט [בהתאמה] ו[סעיף]. אבל במסמך הסופי, אתה צריך להחליף את פסקאות אלה עם התוכן המתקבל מסמך חיצוני אחר. כדי להשיג זאת, תצטרך ליצור מטפל לאירוע ההחלפה.

לדוגמה הקוד הבא מראה כיצד ליצור מטפל לאירוע ההחלפה כדי להשתמש בו מאוחר יותר בתהליך הכנס:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-replace-handler.cs" >}}

לדוגמה הקוד הבא מראה כיצד להוסיף תוכן של מסמך אחד לאחר במהלך חיפוש והחלפת הפעולה:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-replace.cs" >}}

### הכנס מסמך במהלך Mail Merge המבצע {#insert-a-document-during-mail-merge-operation}

אתה יכול להוסיף מסמך לתוך שדה מיזוג במהלך שדה mail merge פעולה. לדוגמה, mail merge תבנית יכולה להכיל שדה מיזוג כגון (Summary). אבל במסמך הסופי, אתה צריך להוסיף תוכן המתקבל מ מסמך חיצוני אחר לתחום המיזוג הזה. כדי להשיג זאת, תצטרך ליצור מטפל לאירוע המיזוג.

דוגמה הקוד הבא מראה כיצד ליצור מטפל לאירוע מיזוג כדי להשתמש בו מאוחר יותר בתהליך ההחדרה:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-mail-merge-handler.cs" >}}

הדוגמה הבאה של הקוד מראה כיצד להכניס מסמך לתחום המיזוג באמצעות מטפל שנוצר:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-mail-merge.cs" >}}

### הכנס מסמך ב- Bookmark {#insert-a-document-at-bookmark}

אתה יכול לייבא קובץ טקסט לתוך מסמך ולהכניס אותו מיד לאחר סימן ספר שהגדרת במסמך. כדי לעשות זאת, ליצור סעיף מסומנים שבו אתה רוצה את המסמך להיות מוכנס.

הדוגמה הבאה מציגה כיצד להכניס את התוכן של מסמך אחד לסימן ספר במסמך אחר:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-bookmark.cs" >}}

{{% alert color="primary" %}}

שים לב שסימן הספר לא צריך לסגור מספר פסקאות או טקסט שאתה רוצה שהן יופיעו במסמך הסופי שלך.

{{% /alert %}}

## אישור מסמך {#append-a-document}

ייתכן שיש לך מקרה שימוש שבו אתה צריך לכלול דפים נוספים ממסמכים עד סוף מסמך קיים. כדי לעשות זאת, אתה רק צריך לקרוא [AppendDocument](https://reference.aspose.com/words/net/aspose.words/document/appenddocument/) שיטה להוסיף מסמך עד סוף אחד.

{{% alert color="primary" %}}

שימו לב [AppendChild](https://reference.aspose.com/words/net/aspose.words/compositenode/appendchild/) זוהי שיטת צומת בתוך מסמך. לדוגמה, אתה יכול ליצור פסקה, להגדיר תכונות עיצוב ולאחר מכן להעריך אותו כילד לגוף באמצעות הגוף באמצעות הגוף. **AppendChild** שיטה.

{{% /alert %}}

דוגמה לקוד הבא מראה כיצד להגיש מסמך לסיום מסמך אחר:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "keep-source-formatting.cs" >}}

## יבוא והכנסת Nodes באופן ידני {#import-and-insert-nodes-manually}

Aspose.Words מאפשר לך להוסיף ולערוך מסמכים באופן אוטומטי ללא דרישות ייבוא קודמות. עם זאת, אם אתה צריך להוסיף או לאשר צומת מסוים של המסמך שלך, כגון סעיף או פסקה, ולאחר מכן קודם אתה צריך לייבא את הצומת הזה באופן ידני.

כאשר אתה צריך להוסיף או לאשר סעיף אחד או פסקה אחד לאחר, אתה בעצם צריך לייבא את הצמתים של עץ הצומת הראשון לתוך השני באמצעות השני באמצעות שימוש. [ImportNode](https://reference.aspose.com/words/net/aspose.words/nodeimporter/importnode/) שיטה. לאחר ייבוא הצמתים שלך, עליך להשתמש [InsertAfter](https://reference.aspose.com/words/net/aspose.words/compositenode/insertafter/) / / / / [InsertBefore](https://reference.aspose.com/words/net/aspose.words/compositenode/insertbefore/) שיטה להכניס צומת חדש לאחר / לפני צומת ההתייחסות. זה מאפשר לך להתאים אישית את תהליך ההחדרה על ידי ייבוא צמתים מ מסמך והוספתו במיקומים מסוימים.

אתה יכול גם להשתמש [AppendChild](https://reference.aspose.com/words/net/aspose.words/compositenode/appendchild/) שיטה להוסיף צומת חדש שצוין עד סוף הרשימה של בלוטות הילד, למשל, אם ברצונך להוסיף תוכן ברמת הסעיף במקום ברמת הסעיף.

הדוגמה הבאה של הקוד מראה כיצד לייבא באופן ידני צומתים ולהכניס אותם לאחר צומת מסוים באמצעות צומת ספציפי. **InsertAfter** שיטה:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-as-nodes.cs" >}}

{{% alert color="primary" %}}

הייבוא יוצר צומת חדש שהוא עותק של הצומת המקורי ומתאים להחדרה לתוך מסמך היעד.

{{% /alert %}}

התוכן מיובא לתוך סעיף מסמך היעד לפי סעיף, כלומר הגדרות, כגון הגדרות דף, כותרות או רגלים, נשמרות במהלך היבוא. זה גם שימושי לציין כי אתה יכול להגדיר הגדרות פורמט בעת הוספת או נספח מסמך כדי לציין כיצד שני מסמכים משולבים יחד.

## תכונות נפוצות עבור הכנס ונספח מסמכים {#common-properties-for-insert-and-append-documents}

שניהם [InsertDocument](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertdocument/) ו [AppendDocument](https://reference.aspose.com/words/net/aspose.words/document/appenddocument/) שיטות לקבל [ImportFormatMode](https://reference.aspose.com/words/net/aspose.words/importformatmode/) ו [ImportFormatOptions](https://reference.aspose.com/words/net/aspose.words/importformatoptions/) כפרמטרי קלט. The The The **ImportFormatMode** מאפשר לך לשלוט כיצד פורמט מסמך ממוזג כאשר אתה לייבא תוכן מ מסמך אחד למשנהו על ידי בחירת מצבי פורמט שונים כגון [UseDestinationStyles](https://reference.aspose.com/words/net/aspose.words/importformatmode/), [KeepSourceFormatting](https://reference.aspose.com/words/net/aspose.words/importformatmode/), ו [KeepDifferentStyles](https://reference.aspose.com/words/net/aspose.words/importformatmode/). The The The **ImportFormatOptions** מאפשר לך לבחור אפשרויות ייבוא שונות כגון [IgnoreHeaderFooter](https://reference.aspose.com/words/net/aspose.words/importformatoptions/ignoreheaderfooter/), [IgnoreTextBoxes](https://reference.aspose.com/words/net/aspose.words/importformatoptions/ignoretextboxes/), [KeepSourceNumbering](https://reference.aspose.com/words/net/aspose.words/importformatoptions/keepsourcenumbering/), [MergePastedLists](https://reference.aspose.com/words/net/aspose.words/importformatoptions/mergepastedlists/), ו [SmartStyleBehavior](https://reference.aspose.com/words/net/aspose.words/importformatoptions/smartstylebehavior/).

Aspose.Words מאפשר לך להתאים את ויזואליזציה של מסמך וכתוצאה מכך כאשר שני מסמכים מתווספים יחד בפעולת כניסה או אפליקציה על ידי שימוש [Section](https://reference.aspose.com/words/net/aspose.words/section/) ו [PageSetup](https://reference.aspose.com/words/net/aspose.words/documentbuilder/pagesetup/) תכונות. The The The **PageSetup** רכוש מכיל את כל התכונות של סעיף כגון [SectionStart](https://reference.aspose.com/words/net/aspose.words/pagesetup/sectionstart/), [RestartPageNumbering](https://reference.aspose.com/words/net/aspose.words/pagesetup/restartpagenumbering/), [PageStartingNumber](https://reference.aspose.com/words/net/aspose.words/pagesetup/pagestartingnumber/), [Orientation](https://reference.aspose.com/words/net/aspose.words/pagesetup/orientation/), ואחרים. מקרה השימוש הנפוץ ביותר הוא להגדיר את **SectionStart** רכוש כדי להגדיר אם התוכן הנוסף יופיע באותו דף או פיצול לתוך חדש.

{{% alert color="primary" %}}

תגית: The **Section** ו **PageSetup** נכסים אינם שולטים על האופן שבו שני מסמכים מוכנסים יחד. הם רק מאפשרים לך לשנות את המראה של מסמך התוצאות שלך.

{{% /alert %}}

הדוגמה הבאה של הקוד מראה כיצד לתקן מסמך אחד לאחר תוך שמירה על התוכן מפיצול בשני דפים:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "different-page-setup.cs" >}}
