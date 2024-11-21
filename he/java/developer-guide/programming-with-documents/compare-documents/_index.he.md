---
title: השוואת מסמכים Java
second_title: Aspose.Words עבור Java
articleTitle: השוואת מסמכים
linktitle: השוואת מסמכים
type: docs
description: "השוואת שני מסמכים בכל פורמטים נתמך ומראה שינויים תוכן. אתה יכול ליישם אפשרויות מתקדמות בעת השוואת שימוש Java."
weight: 60
url: /he/java/compare-documents/
timestamp: 2024-01-27-14-07-04
---

השוואת מסמכים היא תהליך שמזהה שינויים בין שני מסמכים וכולל את השינויים כשינויים. תהליך זה משווה שני מסמכים, כולל גרסאות של מסמך ספציפי אחד, ולאחר מכן את השינויים בין שני המסמכים יוצגו כחידושים במסמך הראשון.

שיטת ההשוואה מושגת על ידי השוואת מילים ברמת האופי או ברמת המילה. אם מילה מכילה שינוי של לפחות דמות אחת, כתוצאה מכך, ההבדל יוצג כשינוי של המילה כולה, לא אופי. תהליך זה של השוואה הוא משימה רגילה בתעשיות המשפטיות והכספיות.

במקום לחפש באופן ידני הבדלים בין מסמכים או בין גרסאות שונות, ניתן להשתמש בהם. Aspose.Words עבור השוואת מסמכים ולקבל שינויים תוכן בפורמט, ראש / מ"ר, טבלאות ועוד.

מאמר זה מסביר כיצד להשוות מסמכים וכיצד לציין תכונות השוואתיות מתקדמות.

{{% alert color="primary" %}}

**נסה באינטרנט**

ניתן להשוות שני מסמכים באינטרנט על ידי שימוש [השוואת מסמכים באינטרנט](https://products.aspose.app/words/comparison) כלי.

שים לב כי שיטת ההשוואה, המתוארת להלן, משמשת בכלי זה כדי להבטיח קבלת תוצאות שוות. אז תקבל את אותן התוצאות גם על ידי שימוש בכלי ההשוואה באינטרנט או באמצעות שיטת ההשוואה. Aspose.Words.

{{% /alert %}}

## מגבלות ותבניות קבצים תמיכה {#limitations-and-supported-file-formats}

השוואת מסמכים היא תכונה מורכבת מאוד. ישנם חלקים מגוונים של שילוב תוכן שיש לנתח כדי לזהות את כל ההבדלים. הסיבה למורכבות זו היא כי Aspose.Words מטרות לקבל את אותן תוצאות השוואה כמו Microsoft Word אלגוריתם השוואה

ההגבלה הכללית של שני מסמכים ששווים היא שאין להם תיקונים לפני שהם קוראים לשיטת ההשוואה כפי שקיים הגבלה זו. Microsoft Word.

{{% alert color="primary" %}}

שימו לב שניתן להשוות בין שני מסמכים בתוך [מסמך](/words/he/java/supported-document-formats/). בעיקרון, אתה יכול להשוות אובייקטים מסמך ואפילו אתה יכול ליצור פריטים אלה מאפס ללא כל פורמט ספציפי.

{{% /alert %}}

## השוואת שני מסמכים {#compare-two-documents}

כאשר אתה משווה מסמכים, ההבדלים של המסמך האחרון מן העבר מופיעים כחידושים אל העבר. כאשר אתה משנה מסמך, כל עריכה תהיה גרסה משלה לאחר הפעלת שיטת ההשוואה.

Aspose.Words מאפשר לך לזהות הבדלים במסמכים באמצעות [Compare](https://reference.aspose.com/words/java/com.aspose.words/document/#compare-com.aspose.words.Document-java.lang.String-java.util.Date) שיטה – זה דומה Microsoft Word מסמך השוואת תכונה זה מאפשר לך לבדוק מסמכים או גירסאות מסמך כדי למצוא הבדלים ושינויים, כולל שינויים פורמט כגון שינויים גופניים, צבירת שינויים, תוספת של מילים ופסקאות.

כתוצאה מההשוואה, ניתן לקבוע מסמכים שווים או לא שווים. פירוש המונח "שווה" הוא ששיטת ההשוואה אינה מסוגלת לייצג שינויים כמו תיקונים. משמעות הדבר היא כי הן מסמך טקסט והן פורמט טקסט הן אותו הדבר. אבל יש הבדלים נוספים בין המסמכים. לדוגמה, Microsoft Word תומך רק שינויים פורמט עבור סגנונות, ואתה לא יכול לייצג הוספת סגנון / מחיקה. מסמכים יכולים להיות קבוצה שונה של סגנונות, **Compare** השיטה עדיין לא מייצרת תיקונים.

לדוגמה הקוד הבא מראה כיצד לבדוק אם שני מסמכים שווים או לא:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CompareTwoWordDocuments-wordDocumentsAreEqual.java" >}}

דוגמה נוספת לקוד מראה כיצד ליישם את `Compare` שיטה לשתי מסמכים:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CompareTwoWordDocuments-caseWhenDocumentHasRevisions.java" >}}

## אפשרויות השוואות מתקדמות {#specify-advanced-comparing-properties}

יש הרבה תכונות שונות של [CompareOptions](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/) שיעור שאתה יכול ליישם כאשר אתה רוצה להשוות מסמכים.

לדוגמה, Aspose.Words מאפשר לך להתעלם שינויים שבוצעו במהלך ניתוח השוואה עבור סוגים מסוימים של אובייקטים בתוך המסמך המקורי. אתה יכול לבחור את הנכס המתאים לסוג האובייקט, כגון [IgnoreHeadersAndFooters](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getIgnoreHeadersAndFooters), [IgnoreFormatting](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getIgnoreFormatting), [IgnoreComments](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getIgnoreComments), ואחרים על ידי הצבתם ל"true".

בנוסף, Aspose.Words מספק [Granularity](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getGranularity) רכוש שבו אתה יכול לציין אם לעקוב אחר שינויים על ידי אופי או במילה.

נכס משותף נוסף הוא בחירה שבה מסמך להציג שינויים בהשוואה. לדוגמה, "קופסת דו-שיח המסמכים" ב-Compare Microsoft Word יש את האפשרות "לראות שינויים" - זה גם משפיע על תוצאות ההשוואה. Aspose.Words מספק [Target](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getTarget) רכוש שמשרת מטרה זו.

הדוגמה הבאה של הקוד מראה כיצד להגדיר את התכונות המתקדמות של השוואת נכסים:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CompareTwoWordDocuments-AdvancedComparingProperties.java" >}}
