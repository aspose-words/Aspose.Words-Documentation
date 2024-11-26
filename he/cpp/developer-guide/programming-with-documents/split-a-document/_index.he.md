---
title: פיצול מסמך ב C++
second_title: Aspose.Words עבור C++
articleTitle: פיצול מסמך
linktitle: פיצול מסמך
description: "פיצול מסמך למספר קבצים באמצעות C++. השתמש בתכונת הפיצול כדי לפצל מסמך ביעילות לפי כותרות או קטעים, כמו גם לפי דפים או לפי טווחי עמודים."
type: docs
weight: 90
url: /he/cpp/split-a-document/
timestamp: 2024-01-27-14-07-04
---

*Splitting* או *split a document* הוא תהליך של פירוק מסמך גדול למספר גדול יותר של קבצים קטנים יותר. ישנן סיבות שונות לפצל קובץ. לדוגמה, אתה צריך רק כמה דפים ממסמך ספציפי ולא את כולו. או מטעמי פרטיות, ברצונך לשתף רק חלקים מסוימים במסמך עם אחרים. בעזרת תכונת הפיצול תוכלו לקבל רק את החלקים הנדרשים במסמך ולבצע איתם את הפעולות הדרושות, למשל, כדי לסמן, לשמור או לשלוח.

Aspose.Words מספק לך דרך יעילה לפצל מסמך אחד למספר מסמכים לפי כותרות או קטעים. ניתן גם לפצל מסמך לפי דפים או לפי טווחי עמודים. שתי אפשרויות הפיצול יתוארו במאמר זה.

כדי לפצל מסמך לקבצים קטנים יותר באמצעות Aspose.Words, עליך לבצע את השלבים הבאים:

1. טען את המסמך בכל פורמט נתמך.
1. לפצל את המסמך.
1. שמור את מסמכי הפלט.

לאחר פיצול מסמך, תוכל לפתוח את כל מסמכי הפלט שיתחילו בדפים הנדרשים, בטקסט וכו'.

{{% alert color="primary" %}}

**נסה באינטרנט**

אתה יכול לנסות את הפונקציונליות הזו עם שלנו [מפצל מסמכים מקוון חינם](https://products.aspose.app/words/splitter).

{{% /alert %}}

## פיצול מסמך באמצעות קריטריונים שונים {#split-a-document-using-different-criteria}

Aspose.Words מאפשר לך לפצל EPUB או HTML מסמכים לפרקים על פי קריטריונים שונים. בתהליך זה, הסגנון והפריסה של מסמך המקור נשמרים עבור מסמכי הפלט.

ניתן לציין קריטריונים באמצעות הספירה [DocumentSplitCriteria](https://reference.aspose.com/words/cpp/aspose.words.saving/documentsplitcriteria/). כך שתוכלו לחלק מסמך לפרקים באמצעות אחד מהקריטריונים הבאים או לשלב יותר מקריטריונים אחד יחד:

- פסקת כותרת,
- קטע הפסקה,
- מעבר עמודה,
- מעבר לדף.

בעת שמירת הפלט ל HTML, Aspose.Words שמור כל פרק בודד כקובץ HTML נפרד. כתוצאה מכך, המסמך יחולק למספר קבצים HTML. בעת שמירת הפלט ל EPUB, Aspose.Words שמור את התוצאה בקובץ EPUB יחיד ללא קשר לערך `DocumentSplitCriteria` בו השתמשת. לכן, השימוש ב DocumentSplitCriteria עבור EPUB מסמכים משפיע רק על מראה התוכן שלהם ביישומי קוראים: התוכן יחולק לפרקים והמסמך כבר לא יופיע רציף.

{{% alert color="primary" %}}

לא ניתן לפצל מסמך באמצעות המאפיין [DocumentSplitCriteria](https://reference.aspose.com/words/cpp/aspose.words.saving/documentsplitcriteria/) בעת שמירה בפורמט MHTML.

{{% /alert %}}

בחלק זה אנו רואים רק חלק מהקריטריונים המפוצלים האפשריים.

### פיצול מסמך לפי סעיפים {#split-a-document-by-sections}

Aspose.Words גם מאפשר לך להשתמש מעברי סעיף לפצל מסמכים ולשמור אותם HTML. למטרה זו, השתמש **SectionBreak** כ **DocumentSplitCriteria**:

דוגמת הקוד הבאה מראה כיצד לפצל מסמך לחלקים קטנים יותר לפי מעברי קטעים (ללא שימוש במאפיין `DocumentSplitCriteria`):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-SplitDocument-SplitDocumentBySections.cpp" >}}

## פיצול לפי עמודים {#splitting-by-pages}

ניתן גם לפצל דף מסמך לפי דף, לפי טווחי עמודים או להתחיל במספרי העמודים שצוינו. במקרה כזה שיטת [ExtractPages](https://reference.aspose.com/words/cpp/aspose.words/document/extractpages/) יכולה לעשות את העבודה.

סעיף זה מתאר מספר מקרים של שימוש בחלוקת מסמכים לפי דף באמצעות סוג [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) ושיטת **ExtractPages**.

{{% alert color="primary" %}}

אתה יכול להשתמש בכל [פורמט פלט נתמך על ידי Aspose.Words](/words/cpp/supported-document-formats/).

{{% /alert %}}

{{% alert color="primary" %}}

בשל הניואנסים הרבים המופיעים תוך צמצום מספר העמודים, התאמה מלאה לפריסה Microsoft Word היא משימה מסובכת למדי. לכן, בהתאם למורכבות המסמך, יתכנו הבדלים קלים בפריסת המסמך המתקבלת מהמסמך המקורי.

{{% /alert %}}

### פיצול דף מסמך לפי דף {#split-a-document-page-by-page}

Aspose.Words מאפשר לך לפצל דף מסמך מרובה עמודים על ידי דף.

דוגמת הקוד הבאה מראה כיצד לחלק מסמך ולשמור כל עמוד כמסמך נפרד:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Split Documents-Split document-SplitDocumentPageByPage.h" >}}

### פיצול מסמך לפי טווחי עמודים {#split-a-document-by-page-ranges}

Aspose.Words מאפשר פיצול מסמך מרובה עמודים לפי טווחי עמודים. אתה יכול לפצל קובץ אחד למספר קבצים עם טווחי עמודים שונים או פשוט לבחור טווח אחד ולשמור רק את החלק הזה של מסמך המקור. שים לב שאתה יכול לבחור את טווח העמודים בהתאם למספר העמודים המרבי והמינימלי של מסמך.

דוגמת הקוד הבאה מראה כיצד לפצל מסמך לחלקים קטנים יותר לפי טווח עמודים עם אינדקסים ספציפיים של התחלה וסיום:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Split Documents-Split document-SplitDocumentByPageRange.h" >}}

## מיזוג המסמך המפוצל עם מסמך אחר {#merge-the-split-document-with-another-file}

Aspose.Words מאפשר לך למזג את פלט פיצול מסמך עם מסמך אחר כדי ליצור מסמך חדש. זה יכול להיקרא מיזוג מסמכים.

דוגמת הקוד הבאה מראה כיצד למזג מסמך מפוצל עם מסמך אחר:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-SplitDocument-MergeSplitDocuments.cpp" >}}
