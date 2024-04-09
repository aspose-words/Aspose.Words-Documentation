---
title: הכנס ונספח מסמכים
second_title: Aspose.Words עבור Python via .NET
articleTitle: הכנס ונספח מסמכים
linktitle: הכנס ונספח מסמכים
description: "לשלב מסמכים לתוך אחד: להוסיף או לאמת מסמך חדש או קיים באמצעות מציאת והחלפה, מיזוג שדה, סימן ספר או פשוט בסוף המסמך בסוף המסמך. Python."
type: docs
weight: 80
url: /he/python-net/insert-and-append-documents/
---

לפעמים צריך לשלב כמה מסמכים לאחד. אתה יכול לעשות את זה באופן ידני או שאתה יכול להשתמש Aspose.Words להוסיף או להוסיף תכונה.

ניתוח הכנס מאפשר לך להוסיף את התוכן של מסמכים שנוצרו בעבר לתוך חדש או קיים.

בתורו, התכונה Append מאפשר לך להוסיף מסמך רק בסוף מסמך אחר.

מאמר זה מסביר כיצד להוסיף או לאמת מסמך זה בדרכים שונות, ומתאר את התכונות הנפוצות שאתה יכול ליישם בעת הוספת מסמכים או יישום.

## הכנס מסמך

כאמור לעיל, Aspose.Words מסמך מיוצג כעץ של צמתים, ופעולת הוספת מסמך אחד לשני היא העתקת צמתים מן עץ המסמך הראשון אל השני.

ניתן להוסיף מסמכים במגוון מיקומים בדרכים שונות. לדוגמה, באפשרותך להוסיף מסמך באמצעות הפעלה חלופית, שדה מיזוג במהלך פעולת מיזוג, או באמצעות סימן ספר.

אתה יכול גם להשתמש [insert_document](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document/) או [insert_document_inline](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document_inline/#document_importformatmode_importformatoptions) שיטה, אשר דומה להכניס מסמך Microsoft Word, כדי להוסיף מסמך שלם בעמדה הנוכחית של cursor ללא ייבוא קודם.

הדוגמה הבאה של הקוד מראה כיצד להוסיף מסמך באמצעות **המונחים: document** שיטה:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-with-builder.py" >}}

הדוגמה הבאה של הקוד מראה כיצד להוסיף מסמך באמצעות **המונחים:_document_inline** שיטה:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-inline-with-builder.py" >}}

הקטעים הבאים מתארים את האפשרויות שבהן ניתן להכניס מסמך אחד לשני.

### הכנס מסמך ב- Bookmark

אתה יכול לייבא קובץ טקסט לתוך מסמך ולהכניס אותו מיד לאחר סימן ספר שהגדרת במסמך. כדי לעשות זאת, ליצור סעיף מסומנים שבו אתה רוצה את המסמך להיות מוכנס.

הדוגמה הבאה מציגה כיצד להכניס את התוכן של מסמך אחד לסימן ספר במסמך אחר:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-at-bookmark.py" >}}

{{% alert color="primary" %}}

שים לב שסימן הספר לא צריך לסגור מספר פסקאות או טקסט שאתה רוצה שהן יופיעו במסמך הסופי שלך.

{{% /alert %}}

## אישור מסמך

ייתכן שיש לך מקרה שימוש שבו אתה צריך לכלול דפים נוספים ממסמכים עד סוף מסמך קיים. כדי לעשות זאת, אתה רק צריך לקרוא [append_document](https://reference.aspose.com/words/python-net/aspose.words/document/append_document/) שיטה להוסיף מסמך עד סוף אחד.

{{% alert color="primary" %}}

שימו לב [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/) זוהי שיטת צומת בתוך מסמך. לדוגמה, אתה יכול ליצור פסקה, להגדיר תכונות עיצוב ולאחר מכן להעריך אותו כילד לגוף באמצעות הגוף באמצעות הגוף. [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/) שיטה.

{{% /alert %}}

דוגמה לקוד הבא מראה כיצד להגיש מסמך לסיום מסמך אחר:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "keep-source-formatting.py" >}}

## יבוא והכנסת Nodes באופן ידני

Aspose.Words מאפשר לך להוסיף ולערוך מסמכים באופן אוטומטי ללא דרישות ייבוא קודמות. עם זאת, אם אתה צריך להוסיף או לאשר צומת מסוים של המסמך שלך, כגון סעיף או פסקה, ולאחר מכן קודם אתה צריך לייבא את הצומת הזה באופן ידני.

כאשר אתה צריך להוסיף או לאשר סעיף אחד או פסקה אחד לאחר, אתה בעצם צריך לייבא את הצמתים של עץ הצומת הראשון לתוך השני באמצעות השני באמצעות שימוש. [import_node](https://reference.aspose.com/words/python-net/aspose.words/documentbase/import_node/) שיטה. לאחר ייבוא הצמתים שלך, עליך להשתמש [insert_after](https://reference.aspose.com/words/python-net/aspose.words/compositenode/insert_after/) / / / / [insert_before](https://reference.aspose.com/words/python-net/aspose.words/compositenode/insert_before/) שיטה להכניס צומת חדש לאחר / לפני צומת ההתייחסות. זה מאפשר לך להתאים אישית את תהליך ההחדרה על ידי ייבוא צמתים מ מסמך והוספתו במיקומים מסוימים.

אתה יכול גם להשתמש [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/) שיטה להוסיף צומת חדש שצוין עד סוף הרשימה של בלוטות הילד, למשל, אם ברצונך להוסיף תוכן ברמת הסעיף במקום ברמת הסעיף.

הדוגמה הבאה של הקוד מראה כיצד לייבא באופן ידני צומתים ולהכניס אותם לאחר צומת מסוים באמצעות צומת ספציפי. [insert_after](https://reference.aspose.com/words/python-net/aspose.words/compositenode/insert_after/) שיטה:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-as-nodes.py" >}}

{{% alert color="primary" %}}

הייבוא יוצר צומת חדש שהוא עותק של הצומת המקורי ומתאים להחדרה לתוך מסמך היעד.

{{% /alert %}}

התוכן מיובא לתוך סעיף מסמך היעד לפי סעיף, כלומר הגדרות, כגון הגדרות דף, כותרות או רגלים, נשמרות במהלך היבוא. זה גם שימושי לציין כי אתה יכול להגדיר הגדרות פורמט בעת הוספת או נספח מסמך כדי לציין כיצד שני מסמכים משולבים יחד.

## תכונות נפוצות עבור הכנס ונספח מסמכים

שניהם [insert_document](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document/) ו [append_document](https://reference.aspose.com/words/python-net/aspose.words/document/append_document/) שיטות לקבל [ImportFormatMode](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/) ו [ImportFormatOptions](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/) כפרמטרי קלט. The The The [ImportFormatMode](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/) מאפשר לך לשלוט כיצד פורמט מסמך ממוזג כאשר אתה לייבא תוכן מ מסמך אחד למשנהו על ידי בחירת מצבי פורמט שונים כגון [USE_DESTINATION_STYLES](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/#use_destination_styles), [KEEP_SOURCE_FORMATTING](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/#keep_source_formatting), ו [KEEP_DIFFERENT_STYLES](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/#keep_different_styles). The The The [ImportFormatOptions](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/) מאפשר לך לבחור אפשרויות ייבוא שונות כגון [ignore_header_footer](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/ignore_header_footer/), [ignore_text_boxes](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/ignore_text_boxes/), [keep_source_numbering](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/keep_source_numbering/), [merge_pasted_lists](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/merge_pasted_lists/), ו [smart_style_behavior](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/smart_style_behavior/).

Aspose.Words מאפשר לך להתאים את ויזואליזציה של מסמך וכתוצאה מכך כאשר שני מסמכים מתווספים יחד בפעולת כניסה או אפליקציה על ידי שימוש [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) ו [PageSetup](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/). The The The [page_setup](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/page_setup/) רכוש מכיל את כל התכונות של סעיף כגון <span notrans="<span notrans=" [section_start](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/section_start/)"=""></span>" [restart_page_numbering](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/restart_page_numbering/), [page_starting_number](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/page_starting_number/), [orientation](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/orientation/), ואחרים. מקרה השימוש הנפוץ ביותר הוא להגדיר את [section_start](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/section_start/) רכוש כדי להגדיר אם התוכן הנוסף יופיע באותו דף או פיצול לתוך חדש.

{{% alert color="primary" %}}

תגית: The [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) ו [PageSetup](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/) אל תבקרו כיצד שני מסמכים מוכנסים/מופצים יחד. הם רק מאפשרים לך לשנות את המראה של מסמך התוצאות שלך.

{{% /alert %}}

הדוגמה הבאה של הקוד מראה כיצד לתקן מסמך אחד לאחר תוך שמירה על התוכן מפיצול בשני דפים:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "different-page-setup.py" >}}
