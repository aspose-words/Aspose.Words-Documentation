---
title: עקוב אחר שינויים במסמך ב C++
second_title: Aspose.Words עבור C++
articleTitle: עקוב אחר שינויים במסמך
linktitle: עקוב אחר שינויים במסמך
description: "עקוב אחר שינויים בתוכן ובעיצוב שבוצעו על ידך או על ידי אחרים באמצעות C++. גש לתיקונים בודדים במסמך והחל עליהם מאפיינים שונים."
type: docs
weight: 270
url: /he/cpp/track-changes-in-a-document/
timestamp: 2024-01-30-16-22-34
---

הפונקציונליות של שינויי מסלול, המכונה גם סקירה, מאפשרת לך לעקוב אחר שינויים בתוכן ובעיצוב שבוצעו על ידך או על ידי משתמשים אחרים. תכונת שינויי מסלול זה עם Aspose.Words תומכת בשינויי מסלול ב Microsoft Word. בעזרת פונקציונליות זו, תוכל לגשת לתיקונים בודדים במסמך ולהחיל עליהם מאפיינים שונים.

כאשר תפעיל את תכונת שינויי המסלול, כל האלמנטים שהוכנסו, נמחקו והשתנו במסמך יודגשו חזותית עם מידע על ידי מי, מתי ומה השתנה. אובייקטים הנושאים את המידע על מה שהשתנה נקראים"מעקב אחר שינויים". לדוגמה, נניח שברצונך לעיין במסמך ולבצע שינויים חשובים-פירוש הדבר שעליך לבצע תיקונים. כמו כן, ייתכן שיהיה עליך להוסיף הערות כדי לדון בכמה מהשינויים. זה המקום שבו מעקב אחר שינויים במסמכים לבוא.

מאמר זה מסביר כיצד לנהל ולעקוב אחר שינויים שנוצרו על ידי סוקרים רבים באותו מסמך, כמו גם את המאפיינים למעקב אחר שינויים.

{{% alert color="primary" %}}

שים לב שתכונת התגובה ב Aspose.Words, כמו גם ב Microsoft Word, יכולה להיות משויכת למעקב אחר שינויים. עם זאת, זכור כי הערות אינן תלויות לחלוטין במעקב אחר שינויים.

{{% /alert %}}

## מהו תיקון

לפני צלילה לתוך תיקונים, בואו להסביר את המשמעות של תיקונים. [revision](https://reference.aspose.com/words/cpp/aspose.words/revision/) הוא שינוי שמתרחש בצומת אחת של מסמך בעוד קבוצת שינויים, המייצגת על ידי הכיתה [RevisionGroup](https://reference.aspose.com/words/cpp/aspose.words/revisiongroup/), היא קבוצה של שינויים רצופים המתרחשים בצמתים רבים של מסמך. בעיקרון, תיקון הוא כלי למעקב אחר שינויים.

שינויים משמשים בתכונת השינויים במעקב ובמאפיין השוואת מסמכים, כאשר שינויים מופיעים כתוצאה מההשוואה. אז, תיקונים בתוך תכונת שינויי המעקב מראים על ידי מי ומה השתנה.

{{% alert color="primary" %}}

שים לב ש Microsoft Word אינו מאפשר לך להציג תיקונים בודדים, הוא מאפשר לך להציג רק תיקונים עוקבים כישות אחת. אבל Aspose.Words פותר את המגבלה הזו עם הכיתה **RevisionGroup**.

{{% /alert %}}

Aspose.Words תומך בסוגי גרסאות שונים, כמו גם ב Microsoft Word, כגון הכנסה, מחיקה, FormatChange, StyleDefinitionChange, ומרגש. כל סוגי הגרסאות מיוצגים עם הספירה [RevisionType](https://reference.aspose.com/words/cpp/aspose.words/revisiontype/).

{{% alert color="primary" %}}

שים לב שלתיקונים יש תוצאה דומה ל Microsoft Word אבל Aspose.Words לא מזהה עיצוב במהלך שינויי מעקב.

{{% /alert %}}

## התחל והפסיק לעקוב אחר שינויים

עריכת מסמך בדרך כלל אינה נחשבת כתיקון עד שתתחיל לעקוב אחריו. Aspose.Words מאפשר לך לעקוב באופן אוטומטי אחר כל השינויים במסמך שלך בצעדים פשוטים. אתה יכול בקלות להתחיל את התהליך של מעקב אחר שינויים באמצעות שיטת [StartTrackRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/starttrackrevisions/). אם עליך להפסיק את תהליך המעקב אחר שינויים כך שעריכות עתידיות לא ייחשבו כתיקונים, יהיה עליך להשתמש בשיטת [StopTrackRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/stoptrackrevisions/).

{{% alert color="primary" %}}

שים לב ששיטת `StartTrackingRevisions` אינה משנה את הסטטוס של המאפיין [TrackRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/set_trackrevisions/) ואינה משתמשת בערכו לצורך מעקב אחר גרסאות. בנוסף,אם צומת הועבר ממיקום אחד למשנהו בתוך המסמך המעקב, ייווצרו תיקוני העברה, כולל מעבר מ ומעבר לטווח.

{{% /alert %}}

בסוף תהליך שינויי המעקב במסמך שלך, תהיה לך היכולת אפילו לקבל את כל התיקונים או לדחות אותם כדי להחזיר את המסמך לצורתו המקורית. ניתן להשיג זאת באמצעות שיטת [AcceptAllRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/acceptallrevisions/) או [RejectAll](https://reference.aspose.com/words/cpp/aspose.words/revisioncollection/rejectall/). בנוסף, ניתן לקבל או לדחות כל גרסה בנפרד באמצעות השיטה [Accept](https://reference.aspose.com/words/cpp/aspose.words/revision/accept/) או [Reject](https://reference.aspose.com/words/cpp/aspose.words/revision/reject/).

כל השינויים יעקבו אחר איטרציה אחת מהרגע שתתחיל בתהליך ועד לרגע שתפסיק אותו. החיבור בין איטרציות שונות מיוצג כתרחיש הבא: אתה משלים את תהליך המעקב, ואז מבצע כמה שינויים ומתחיל לעקוב אחר שינויים שוב. בתרחיש זה, כל השינויים שלא קיבלת או דחית יוצגו שוב.

{{% alert color="primary" %}}

שימו לב ששיטת `AcceptAllRevisions` דומה ל "קבל את כל השינויים" ב Microsoft Word.

{{% /alert %}}

דוגמת הקוד הבאה מראה כיצד לעבוד עם שינויי מעקב:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRevisions-AcceptAllRevisions.cpp" >}}

דוגמת הקוד הבאה מראה כיצד נוצרות שינויים כאשר צומת נע בתוך מסמך מעקב:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRevisions-MoveNodeInTrackedDocument.cpp" >}}

## נהל ואחסן שינויים כתיקונים

בעזרת התכונה הקודמת של שינויי מעקב, תוכל להבין אילו שינויים בוצעו במסמך שלך ומי ביצע שינויים אלה. כאשר אתה משתמש בתכונה [TrackRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/get_trackrevisions/), אתה מכריח את כל השינויים במסמך שלך להיות מאוחסנים כתיקונים.

Aspose.Words מאפשר לך לבדוק אם למסמך יש גרסה או לא באמצעות המאפיין [HasRevision](https://reference.aspose.com/words/cpp/aspose.words/document/get_hasrevisions/). אם אינך צריך לעקוב באופן אוטומטי אחר השינויים במסמך באמצעות השיטות StartTrackRevisions ו - StopTrackRevisions, תוכל להשתמש במאפיין `TrackRevisions` כדי לבדוק אם מעקב אחר השינויים בעת עריכת מסמך ב - Microsoft Word ומאוחסנים כתיקונים.

התכונה `TrackRevisions` מבצעת תיקונים במקום שינויים DOM אמיתיים. אבל התיקונים עצמם נפרדים. לדוגמה, אם תמחק פיסקה כלשהי, Aspose.Words הפוך אותה כתיקון, סמן אותה כמחיקה, במקום למחוק אותה.

בנוסף, Aspose.Words מאפשר לך לבדוק אם אובייקט הוכנס, נמחק או השתנה עיצוב באמצעות [IsDeleteRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_isdeleterevision/), [IsFormatRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_isformatrevision/), [IsInsertRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_isinsertrevision/), [IsMoveFromRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_isformatrevision/), ו [IsMoveToRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_ismovetorevision/) מאפיינים.

{{% alert color="primary" %}}

שימו לב שאין קשר בין התיקונים עצמם לבין המאפיין `TrackRevisions`. בנוסף, תוכל לקבל / לדחות תיקונים ללא קשר לתכונת שינויי המעקב.

{{% /alert %}}

דוגמת הקוד הבאה מראה כיצד ליישם מאפיינים שונים עם שינויים:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRevisions-ShapeRevision.cpp" >}}
