---
title: השוואת מסמכים ב C++
second_title: Aspose.Words עבור C++
articleTitle: השוואת מסמכים
linktitle: השוואת מסמכים
type: docs
description: "השווה שני מסמכים בכל פורמטים נתמכים ומציג שינויים בתוכן באמצעות C++. ניתן להחיל אפשרויות מתקדמות בעת השוואה."
weight: 60
url: /he/cpp/compare-documents/
timestamp: 2024-01-27-14-07-04
---

השוואת מסמכים היא תהליך שמזהה שינויים בין שני מסמכים ומכיל את השינויים כתיקונים. תהליך זה משווה בין שני מסמכים, כולל גרסאות של מסמך ספציפי אחד, ואז השינויים בין שני המסמכים יוצגו כתיקונים במסמך הראשון.

שיטת ההשוואה מושגת על ידי השוואת מילים ברמת התו או ברמת המילה. אם מילה מכילה שינוי של תו אחד לפחות, בתוצאה, ההבדל יוצג כשינוי של המילה כולה, לא תו. תהליך השוואה זה הוא משימה רגילה בענפים המשפטיים והפיננסיים.

במקום לחפש באופן ידני הבדלים בין מסמכים או בין גרסאות שונות שלהם, אתה יכול להשתמש Aspose.Words להשוואת מסמכים ולקבל שינויים בתוכן בעיצוב, כותרת עליונה/תחתונה, טבלאות ועוד.

מאמר זה מסביר כיצד להשוות מסמכים וכיצד לציין מאפייני השוואה מתקדמים.

{{% alert color="primary" %}}

**נסה באינטרנט**

ניתן להשוות בין שני מסמכים באופן מקוון באמצעות [השוואת מסמכים באינטרנט](https://products.aspose.app/words/comparison) כלי.

שים לב ששיטת ההשוואה, המתוארת להלן, משמשת בכלי זה כדי להבטיח קבלת תוצאות שוות. כך תקבלו את אותן תוצאות גם באמצעות כלי ההשוואה המקוון או באמצעות שיטת ההשוואה ב Aspose.Words.

{{% /alert %}}

## מגבלות ותבניות קבצים נתמכות {#limitations-and-supported-file-formats}

השוואת מסמכים היא תכונה מורכבת מאוד. ישנם חלקים מגוונים של שילוב תוכן שצריך לנתח כדי לזהות את כל ההבדלים. הסיבה למורכבות זו נובעת מהעובדה ש Aspose.Words שואף להשיג את אותן תוצאות השוואה כמו אלגוריתם ההשוואה Microsoft Word.

המגבלה הכללית לשני מסמכים שנשווים היא שאסור להם לבצע שינויים לפני שהם קוראים לשיטת ההשוואה, שכן המגבלה הזו קיימת ב - Microsoft Word.

{{% alert color="primary" %}}

שים לב שאתה יכול להשוות כל שני מסמכים בתוך [פורמטים של קבצים נתמכים](/words/cpp/supported-document-formats/). אתה יכול להשוות אובייקטים של מסמכים ואפילו אתה יכול ליצור אובייקטים אלה מאפס מבלי שיהיה לך פורמט ספציפי.

{{% /alert %}}

## השווה בין שני מסמכים {#compare-two-documents}

כאשר אתה משווה מסמכים, ההבדלים של המסמך האחרון מהראשון מופיעים כתיקונים לראשון. בעת שינוי מסמך, לכל עריכה תהיה גרסה משלה לאחר הפעלת שיטת ההשוואה.

Aspose.Words מאפשר לך לזהות הבדלי מסמכים באמצעות שיטת [Compare](https://reference.aspose.com/words/cpp/aspose.words/document/compare/) - זה דומה לתכונה Microsoft Word השוואת מסמכים. זה מאפשר לך לבדוק מסמכים או גרסאות מסמכים כדי למצוא הבדלים ושינויים, כולל שינויי עיצוב כגון שינויי גופן, שינויי ריווח, הוספת מילים ופסקאות.

כתוצאה מההשוואה, ניתן לקבוע מסמכים כשווים או לא שווים. המונח מסמכים "שווים" פירושו ששיטת ההשוואה אינה מסוגלת לייצג שינויים כתיקונים. המשמעות היא שגם טקסט המסמך וגם עיצוב הטקסט זהים. אבל יכולים להיות הבדלים אחרים בין מסמכים. לדוגמה, Microsoft Word תומך רק בתיקונים בפורמט עבור סגנונות, ואינך יכול לייצג הכנסת / מחיקה של סגנון. אז מסמכים יכולים להיות קבוצה שונה של סגנונות, ושיטת **Compare** עדיין לא מייצרת שינויים.

דוגמת הקוד הבאה מראה כיצד לבדוק אם שני מסמכים שווים או לא:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-CompareDocument-CompareForEqual.cpp" >}}

דוגמת הקוד הבאה מראה כיצד פשוט ליישם את שיטת `Compare` לשני מסמכים:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-CompareDocument-CompareWhenDocumentHasRevisions.cpp" >}}

## ציין אפשרויות השוואה מתקדמות {#specify-advanced-comparing-properties}

ישנם מאפיינים רבים ושונים של הכיתה [CompareOptions](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/) שניתן להחיל כאשר ברצונך להשוות מסמכים.

לדוגמה, Aspose.Words מאפשר לך להתעלם משינויים שבוצעו במהלך פעולת השוואה עבור סוגים מסוימים של אובייקטים במסמך המקורי. באפשרותך לבחור את המאפיין המתאים לסוג האובייקט, כגון [IgnoreHeadersAndFooters](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/get_ignoreheadersandfooters/), [IgnoreFormatting](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/get_ignoreformatting/), [IgnoreComments](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/get_ignorecomments/), ואחרים על ידי הגדרת אותם "נכון".

בנוסף, Aspose.Words מספק את המאפיין [Granularity](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/get_granularity/) שבעזרתו ניתן לציין אם לעקוב אחר שינויים לפי תו או לפי מילה.

מאפיין משותף נוסף הוא בחירה באיזה מסמך להציג שינויים בהשוואה. לדוגמה, בתיבת הדו – שיח" השווה מסמכים "ב Microsoft Word יש את האפשרות" הצג שינויים ב " - זה משפיע גם על תוצאות ההשוואה. Aspose.Words מספק את המאפיין [Target](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/get_target/) שמשרת מטרה זו.

דוגמת הקוד הבאה מראה כיצד להגדיר את מאפייני ההשוואה המתקדמים:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-CompareDocument-CompareDocumentWithCompareOptions.cpp" >}}
