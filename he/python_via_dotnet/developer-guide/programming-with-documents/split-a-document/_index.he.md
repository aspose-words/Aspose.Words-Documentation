---
title: להפיץ מסמך Python
second_title: Aspose.Words עבור Python via .NET
articleTitle: פיצול מסמך
linktitle: פיצול מסמך
description: "להפיץ מסמך למספר קבצים באמצעות Python. השתמש בתכונה המפולגת כדי לחלק ביעילות מסמך על ידי כותרות או קטעים, כמו גם על ידי דפים או על ידי טווחי דפים."
type: docs
weight: 90
url: /he/python-net/split-a-document/
timestamp: 2024-01-27-14-07-04
---

*Splitting* או *חלק מסמך * הוא תהליך של העברת מסמך גדול למספר גדול יותר של קבצים קטנים יותר. ישנן סיבות שונות לחלק קובץ. לדוגמה, אתה צריך רק כמה דפים מתוך מסמך ספציפי ולא את כל אחד. או מסיבות פרטיות, אתה רוצה לשתף רק חלקים של מסמך עם אחרים. עם התכונה פיצול, אתה יכול לקבל רק את החלקים הדרושים של המסמך ולעשות את הפעולות הדרושות איתם, למשל, כדי לסמן, לחסוך או לשלוח.

Aspose.Words מספק לך דרך יעילה לפצל מסמך אחד למסמכים מרובים על ידי כותרות או קטעים. אתה יכול גם לפצל מסמך על ידי דפים או על ידי טווחי דפים. שתי אפשרויות פיצול תואר במאמר זה.

להפיץ מסמך לקבצים קטנים יותר באמצעות Aspose.Words, צריך לעקוב אחר השלבים הבאים:

1.1 1. לטעון את המסמך בכל פורמט נתמך.
1.1 1. חלקו את המסמך
1.1 1. שמור את מסמכי הפלט

לאחר שתפיצו מסמך, תוכלו לפתוח את כל מסמכי התפוקה שיתחילו עם הדפים הדרושים, הטקסט וכו '.

{{% alert color="primary" %}}

**נסה באינטרנט**

אתה יכול לנסות את הפונקציונליות שלנו [מסמך מקוון חינם מפוצל](https://products.aspose.app/words/splitter).

{{% /alert %}}

## להפיץ מסמך באמצעות קריטריה שונה {#split-a-document-using-different-criteria}

Aspose.Words מאפשר לחלק את מסמכי EPUB או HTML לפרקים לפי קריטריונים שונים. בתהליך, סגנון הפריסה של מסמך המקור נשמרים עבור מסמכי הפלט.

ניתן לציין קריטריונים באמצעות [DocumentSplitCriteria](https://reference.aspose.com/words/python-net/aspose.words.saving/documentsplitcriteria/) אזהרה. אז אתה יכול לחלק מסמך לפרקים באמצעות אחד הקריטריונים הבאים או לשלב יותר מקריטריונים אחד יחד:

- כותרת סעיף,
- הפסקה,
- עמודה Break,
- דף נשבר

בעת שמירת הפלט ל-HTML, Aspose.Words שמור כל פרק בנפרד כקובץ HTML נפרד. כתוצאה מכך, המסמך יתפצל לקבצי HTML מרובים. בעת שמירת הפלט ל- EPUB, Aspose.Words שמור את התוצאה בקובץ EPUB יחיד ללא קשר [DocumentSplitCriteria](https://reference.aspose.com/words/python-net/aspose.words.saving/documentsplitcriteria/) הערך שהשתמשת בו. אז, באמצעות [DocumentSplitCriteria](https://reference.aspose.com/words/python-net/aspose.words.saving/documentsplitcriteria/) עבור מסמכי EPUB משפיע רק על המראה של התוכן שלהם באפליקציות קורא: תוכן יחולק לפרקים והמסמכים כבר לא יופיעו רצופים.

{{% alert color="primary" %}}

אי אפשר לחלק מסמך באמצעות [document_split_criteria](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/document_split_criteria/) רכוש בעת שמירת פורמט MHTML.

{{% /alert %}}

בסעיף זה, אנו רואים רק חלק מהקריטריונים המפוזרים האפשריים.

### להפיץ מסמך על ידי כותרות {#split-a-document-by-headings}

כדי לחלק מסמך לפרקים על ידי כותרות, השתמש [HEADING_PARAGRAPH](https://reference.aspose.com/words/python-net/aspose.words.saving/documentsplitcriteria/#HEADING_PARAGRAPH) הערך של [document_split_criteria](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/document_split_criteria/) רכוש.

אם אתה צריך לפצל מסמך על ידי רמה מסוימת של פסקאות כותרות, כגון כותרות 1, 2, ו 3, השתמש גם [document_split_heading_level](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/document_split_heading_level/) רכוש. הפלט יחולק על ידי פסקאות המדוימות עם רמת הכותרת המפורטת.

לדוגמה הקוד הבא מראה כיצד לחלק מסמך לחלקים קטנים יותר על ידי הכותרת:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-SplitDocumentByHeadingsHtml.py" >}}

אנא שימו לב לקריטריונים אלה, Aspose.Words תומך רק בשמירת פורמט HTML בעת פיצול.

בעת שמירת EPUB, המסמך אינו מחולק למספר קבצים, ויהיה רק קובץ פלט אחד.

### להפיץ מסמך לפי סעיפים {#split-a-document-by-sections}

Aspose.Words כמו כן, מאפשר לך להשתמש הפסקות סעיף כדי לחלק מסמכים ולהציל אותם ל- HTML. לשם כך, השתמש [SECTION_BREAK](https://reference.aspose.com/words/python-net/aspose.words.saving/documentsplitcriteria/#section_break) כמו [document_split_criteria](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/document_split_criteria/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-SplitDocumentBySectionsHtml.py" >}}

יש דרך אחרת לפצל את מסמך המקור למסמכים מרובים של פלט, ואתה יכול לבחור כל פורמט פלט נתמך על ידי Aspose.Words.

הדוגמה הבאה של הקוד מראה כיצד לחלק מסמך לחלקים קטנים יותר על ידי הפסקות (ללא שימוש) [document_split_criteria](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/document_split_criteria/) רכוש):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-SplitDocumentBySections.py" >}}

## פיצול על ידי דפים {#splitting-by-pages}

אתה יכול גם לפצל דף מסמך על ידי דף, על ידי טווחי דפים, או להתחיל עם מספרי העמוד המפורטים. במקרה כזה [extract_pages](https://reference.aspose.com/words/python-net/aspose.words/document/extract_pages/) השיטה יכולה לעשות את העבודה.

סעיף זה מתאר מספר מקרים של שימוש בחלוקת מסמכים על ידי דף באמצעות שימוש [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) הכיתה וה [extract_pages](https://reference.aspose.com/words/python-net/aspose.words/document/extract_pages/) שיטה.

{{% alert color="primary" %}}

אתה יכול להשתמש בכל [תגיות Document Formats](/words/he/python-net/supported-document-formats/).

{{% /alert %}}

{{% alert color="primary" %}}

בגלל הניואנסים הרבים מופיעים תוך צמצום מספר העמודים, משחק מלא עם Microsoft Word הפריסה היא משימה מורכבת למדי. לכן, בהתאם למורכבות המסמך, ייתכן שיש הבדלים קלים בפריסת המסמך המתקבלת מן המסמך המקורי.

{{% /alert %}}

### שתף מסמך בעמוד {#split-a-document-page-by-page}

Aspose.Words מאפשר לך לפצל דף מסמך מרובה עמודים על ידי דף.

הדוגמה הבאה של הקוד מראה כיצד לחלק מסמך ולהציל כל דף מסמך נפרד:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-SplitDocumentPageByPage.py" >}}

### פיצול מסמך על ידי Page Ranges {#split-a-document-by-page-ranges}

Aspose.Words מאפשר פיצול מסמך רב עמודים על ידי טווחי הדף. ניתן לחלק קובץ אחד לקבצים מרובים עם טווחי דפים שונים או רק לבחור טווח אחד ולהציל רק חלק זה של מסמך המקור. שים לב שאתה יכול לבחור את טווח העמוד על פי מספר העמוד המקסימלי והמינימום של המסמך.

הדוגמה הבאה של הקוד מראה כיצד לחלק מסמך לחלקים קטנים יותר על ידי טווח הדף עם התחלות ספציפיות ואינדקסי קצה:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-SplitDocumentByPageRange.py" >}}

## שתף את מסמך הפיצול עם קובץ אחר {#merge-the-split-document-with-another-file}

Aspose.Words מאפשר לך למזג את מסמך הפיצול עם מסמך אחר כדי ליצור מסמך חדש. ניתן לקרוא לזה מסמך מיזוג.

דוגמה לקוד הבא מראה כיצד למזג מסמך מפוצל עם מסמך אחר:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-MergeSplitDocuments.py" >}}
