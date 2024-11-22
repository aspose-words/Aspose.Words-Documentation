---
title: הכנס ונספח מסמכים Java
second_title: Aspose.Words עבור Java
articleTitle: הכנס ונספח מסמכים
linktitle: הכנס ונספח מסמכים
description: "שילוב מסמכים לתוך אחד: להוסיף או לאמת מסמך חדש או קיים באמצעות מציאת והחלפה, מיזוג שדה, סימן ספר או פשוט בסוף המסמך בסוף המסמך. Java."
type: docs
weight: 80
url: /he/java/insert-and-append-documents/
timestamp: 2024-01-27-14-07-04
---

לפעמים צריך לשלב כמה מסמכים לאחד. אתה יכול לעשות את זה באופן ידני או שאתה יכול להשתמש Aspose.Words להוסיף או להוסיף תכונה.

ניתוח הכנס מאפשר לך להוסיף את התוכן של מסמכים שנוצרו בעבר לתוך חדש או קיים.

בתורו, התכונה Append מאפשר לך להוסיף מסמך רק בסוף מסמך אחר.

מאמר זה מסביר כיצד להוסיף או לאמת מסמך זה בדרכים שונות ולתאר את התכונות הנפוצות שאתה יכול ליישם בעת הוספת מסמכים או יישום.

## הכנס מסמך

כאמור לעיל, Aspose.Words מסמך מיוצג כעץ של צמתים, ופעולת הוספת מסמך אחד לשני היא העתקת צמתים מן עץ המסמך הראשון אל השני.

ניתן להוסיף מסמכים במגוון מיקומים בדרכים שונות. לדוגמה, באפשרותך להוסיף מסמך באמצעות הפעלה חלופית, שדה מיזוג במהלך ניתוח מיזוג, או באמצעות סימן ספר.

אתה יכול גם להשתמש [InsertDocument](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocument-com.aspose.words.Document-int) או [InsertDocumentInline](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocumentInline-com.aspose.words.Document-int-com.aspose.words.ImportFormatOptions) שיטה, אשר דומה להכניס מסמך Microsoft Word, להוסיף מסמך שלם בעמדה הנוכחית של cursor ללא כל יבוא קודם.

הדוגמה הבאה של הקוד מראה כיצד להוסיף מסמך באמצעות **InsertDocument** שיטה:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-with-builder.java" >}}

הדוגמה הבאה של הקוד מראה כיצד להוסיף מסמך באמצעות **InsertDocumentInline** שיטה:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-inline-with-builder.java" >}}

הקטעים הבאים מתארים את האפשרויות שבהן ניתן להכניס מסמך אחד לשני.

### הכנס מסמך במהלך Find and Replace {#insert-a-document-during-find-and-replace-operation}

ניתן להוסיף מסמכים בעת ביצוע חיפוש והחלפת פעולות. לדוגמה, מסמך יכול להכיל פסקאות עם הטקסט [המידע] ו[ההגדרה]. אבל במסמך הסופי, אתה צריך להחליף את פסקאות אלה עם התוכן המתקבל מסמך חיצוני אחר. כדי להשיג זאת, תצטרך ליצור מטפל לאירוע ההחלפה.

לדוגמה הקוד הבא מראה כיצד ליצור מטפל לאירוע ההחלפה כדי להשתמש בו מאוחר יותר בתהליך הכנס:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-replace-handler.java" >}}

לדוגמה הקוד הבא מראה כיצד להוסיף תוכן של מסמך אחד לאחר במהלך חיפוש והחלפת הפעולה:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-replace.java" >}}

### הכנס מסמך במהלך Mail Merge המבצע {#insert-a-document-during-mail-merge-operation}

אתה יכול להוסיף מסמך לתוך שדה מיזוג במהלך שדה Mail Merge פעולה. לדוגמה, Mail Merge תבנית יכולה להכיל שדה מיזוג כגון (Summary). אבל במסמך הסופי, אתה צריך להוסיף תוכן המתקבל מ מסמך חיצוני אחר לתחום המיזוג הזה. כדי להשיג זאת, תצטרך ליצור מטפל לאירוע המיזוג.

הדוגמה הבאה של הקוד מראה כיצד ליצור מטפל לאירוע מיזוג כדי להשתמש בו מאוחר יותר בתהליך ההחדרה:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-mail-merge-handler.java" >}}

דוגמה הקוד הבא מראה כיצד להכניס מסמך לתחום המיזוג באמצעות מטפל שנוצר:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-mail-merge.java" >}}

### הכנס מסמך ב- Bookmark

אתה יכול לייבא קובץ טקסט לתוך מסמך ולהכניס אותו מיד לאחר סימן ספר שהגדרת במסמך. כדי לעשות זאת, ליצור סעיף מסומנים שבו אתה רוצה את המסמך להיות מוכנס.

הדוגמה הבאה מציגה כיצד להכניס את התוכן של מסמך אחד לסימן ספר במסמך אחר:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-bookmark.java" >}}

{{% alert color="primary" %}}

שים לב שסימן הספר לא צריך לסגור מספר פסקאות או טקסט שאתה רוצה שהן יופיעו במסמך הסופי שלך.

{{% /alert %}}

## אישור מסמך

ייתכן שיש לך מקרה שימוש שבו אתה צריך לכלול דפים נוספים ממסמכים עד סוף מסמך קיים. כדי לעשות זאת, אתה רק צריך להתקשר [AppendDocument](https://reference.aspose.com/words/java/com.aspose.words/document/#appendDocument-com.aspose.words.Document-int) שיטה להוסיף מסמך עד סוף אחד.

{{% alert color="primary" %}}

שימו לב [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/document/#appendChild-com.aspose.words.Node) זוהי שיטת צומת בתוך מסמך. לדוגמה, אתה יכול ליצור פסקה, להגדיר תכונות עיצוב ולאחר מכן להעריך אותו כילד לגוף באמצעות הגוף באמצעות הגוף. **AppendChild** שיטה.

{{% /alert %}}

דוגמה לקוד הבא מראה כיצד להגיש מסמך לסיום מסמך אחר:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "keep-source-formatting.java" >}}

## יבוא והכנסת Nodes באופן ידני {#import-and-insert-nodes-manually}

Aspose.Words מאפשר לך להוסיף ולהזמין מסמכים באופן אוטומטי ללא דרישות ייבוא קודמות. עם זאת, אם אתה צריך להוסיף או לאשר צומת מסוים של המסמך שלך, כגון סעיף או פסקה, ולאחר מכן קודם אתה צריך לייבא את הצומת הזה באופן ידני.

כאשר אתה צריך להוסיף או לאשר סעיף אחד או פסקה אחד לאחר, אתה בעצם צריך לייבא את הצמתים של עץ הצומת הראשון לתוך השני באמצעות השני באמצעות שימוש. [ImportNode](https://reference.aspose.com/words/java/com.aspose.words/document/#importNode-com.aspose.words.Node-boolean) שיטה. לאחר ייבוא הצמתים שלך, עליך להשתמש [InsertAfter](https://reference.aspose.com/words/java/com.aspose.words/document/#insertBefore-com.aspose.words.Node-com.aspose.words.Node) שיטה להכניס צומת חדש לאחר / לפני צומת ההתייחסות. זה מאפשר לך להתאים אישית את תהליך ההחדרה על ידי ייבוא צמתים מ מסמך והוספתו במיקומים מסוימים.

אתה יכול גם להשתמש [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/document/#appendChild-com.aspose.words.Node) שיטה להוסיף צומת חדש שצוין עד סוף הרשימה של בלוטות הילד, למשל, אם ברצונך להוסיף תוכן ברמת הסעיף במקום ברמת הסעיף.

הדוגמה הבאה של הקוד מראה כיצד לייבא באופן ידני בלוטות ולהכניס אותם לאחר צומת מסוים באמצעות הצומת ספציפי. **InsertAfter** שיטה:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-as-nodes.java" >}}

{{% alert color="primary" %}}

היבוא יוצר צומת חדש שהוא עותק של הצומת המקורי ומתאים להחדרה לתוך מסמך היעד.

{{% /alert %}}

התוכן מיובא לתוך מסמך היעד לפי סעיף, כלומר הגדרות, כגון הקמת דף וראשי או כותרות, נשמרות במהלך היבוא. זה גם שימושי לציין כי אתה יכול להגדיר הגדרות פורמט בעת הוספת או נספח מסמך כדי לציין כיצד שני מסמכים משולבים יחד.

## תכונות נפוצות עבור הכנס ונספח מסמכים {#common-properties-for-insert-and-append-documents}

שניהם [InsertDocument](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocument-com.aspose.words.Document-int) ו [AppendDocument](https://reference.aspose.com/words/java/com.aspose.words/document/#appendDocument-com.aspose.words.Document-int) שיטות לקבל [ImportFormatMode](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/) ו [ImportFormatOptions](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/) כפרמטרי קלט. The The The **ImportFormatMode** מאפשר לך לשלוט כיצד פורמט מסמך ממוזג כאשר אתה לייבא תוכן מ מסמך אחד למשנהו על ידי בחירת מצבי פורמט שונים כגון [UseDestinationStyles](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#USE-DESTINATION-STYLES), [KeepSourceFormatting](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#KEEP-SOURCE-FORMATTING), ו [KeepDifferentStyles](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#KEEP-DIFFERENT-STYLES). The The The **ImportFormatOptions** מאפשר לך לבחור אפשרויות ייבוא שונות כגון [IgnoreHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getIgnoreHeaderFooter), [IgnoreTextBoxes](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getIgnoreTextBoxes), [KeepSourceNumbering](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getKeepSourceNumbering), [MergePastedLists](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getMergePastedLists), ו [SmartStyleBehavior](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getSmartStyleBehavior).

Aspose.Words מאפשר לך להתאים את ויזואליזציה של מסמך וכתוצאה מכך כאשר שני מסמכים מתווספים יחד בפעולת כניסה או אפליקציה על ידי שימוש [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) ו [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) תכונות. The The The **PageSetup** רכוש מכיל את כל התכונות של סעיף כגון [SectionStart](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getSectionStart), [RestartPageNumbering](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getRestartPageNumbering), [PageStartingNumber](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getPageStartingNumber), [Orientation](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOrientation), ואחרים. מקרה השימוש הנפוץ ביותר הוא להגדיר את **SectionStart** רכוש כדי להגדיר אם התוכן הנוסף יופיע באותו דף או פיצול לתוך חדש.

{{% alert color="primary" %}}

שימו לב **Section** ו **PageSetup** נכסים אינם שולטים על האופן שבו שני מסמכים מוכנסים יחד. הם רק מאפשרים לך לשנות את המראה של מסמך התוצאות שלך.

{{% /alert %}}

הדוגמה הבאה של הקוד מראה כיצד לתקן מסמך אחד לאחר תוך שמירה על התוכן מפיצול בשני דפים:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "different-page-setup.java" >}}
