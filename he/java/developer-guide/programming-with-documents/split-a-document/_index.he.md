---
title: להפיץ מסמך Java
second_title: Aspose.Words עבור Java
articleTitle: פיצול מסמך
linktitle: פיצול מסמך
description: "Aspose.Words עבור Java מספק לך דרך יעילה לפצל מסמך אחד למסמכים מרובים על ידי כותרות או קטעים, כמו גם דפים או טווחי דפים."
type: docs
weight: 90
url: /he/java/split-a-document/
timestamp: 2024-01-27-14-07-04
---

*Splitting* או *חלק מסמך * הוא תהליך של העברת מסמך גדול למספר גדול יותר של קבצים קטנים יותר. ישנן סיבות שונות לחלק קובץ. לדוגמה, אתה צריך רק כמה דפים מתוך מסמך ספציפי ולא את כל אחד. או מסיבות פרטיות, אתה רוצה לשתף רק כמה חלקים של מסמך עם אחרים. עם התכונה פיצול, אתה יכול לקבל רק את החלקים הדרושים של המסמך ולעשות את הפעולות הדרושות איתם, למשל, כדי לסמן, לחסוך או לשלוח.

Aspose.Words מספק לך דרך יעילה לפצל מסמך אחד למסמכים מרובים על ידי כותרות או קטעים. אתה יכול גם לפצל מסמך על ידי דפים או על ידי טווחי דפים. שתי אפשרויות הפיצול יתוארו במאמר זה.

להפיץ מסמך לקבצים קטנים יותר באמצעות Aspose.Words, צריך לעקוב אחר השלבים הבאים:

1.1 1. לטעון את המסמך בכל פורמט נתמך.
1.1 1. חלקו את המסמך.
1.1 1. שמור את מסמכי הפלט

לאחר שתפיצו מסמך, תוכלו לפתוח את כל מסמכי התפוקה שיתחילו עם הדפים הדרושים, הטקסט וכו '.

{{% alert color="primary" %}}

**נסה באינטרנט**

אתה יכול לנסות את הפונקציונליות שלנו [מסמך מקוון חינם מפוצל](https://products.aspose.app/words/splitter).

{{% /alert %}}

## להפיץ מסמך באמצעות קריטריה שונה {#split-a-document-using-different-criteria}

Aspose.Words מאפשר לחלק את מסמכי EPUB או HTML לפרקים לפי קריטריונים שונים. בתהליך, סגנון הפריסה של מסמך המקור נשמרים עבור מסמכי הפלט.

ניתן לציין קריטריונים באמצעות [DocumentSplitCriteria](https://reference.aspose.com/words/java/com.aspose.words/documentsplitcriteria/) אזהרה. אז אתה יכול לחלק מסמך לפרקים באמצעות אחד הקריטריונים הבאים או לשלב יותר מקריטריונים אחד יחד:

- כותרת סעיף,
- הפסקה,
- עמודה Break,
- דף נשבר

בעת שמירת הפלט ל-HTML, Aspose.Words שמור כל פרק בנפרד כקובץ HTML נפרד. כתוצאה מכך, המסמך יתפצל לקבצי HTML מרובים. בעת שמירת הפלט ל- EPUB, Aspose.Words שמור את התוצאה בקובץ EPUB יחיד ללא קשר `DocumentSplitCriteria` הערך שהשתמשת בו. לכן, תוך שימוש במסמכים של DocumentSplitCriteria עבור EPUB משפיע רק על המראה של התוכן שלהם באפליקציות הקוראות: תוכן יחולק לפרקים, והמסמכים כבר לא מופיעים רצופים.

{{% alert color="primary" %}}

אי אפשר לחלק מסמך באמצעות [DocumentSplitCriteria](https://reference.aspose.com/words/java/com.aspose.words/documentsplitcriteria/) רכוש בעת שמירת פורמט MHTML.

{{% /alert %}}

בסעיף זה, אנו רואים רק חלק מהקריטריונים המפוזרים האפשריים.

### להפיץ מסמך על ידי כותרות {#split-a-document-by-headings}

כדי לחלק מסמך לפרקים על ידי כותרות, השתמש **HeadingParagraph** הערך של **DocumentSplitCriteria** רכוש.

אם אתה צריך לפצל מסמך ברמה מסוימת של פסקאות כותרות, כגון כותרות 1, 2, ו 3, השתמש גם [DocumentSplitHeadingLevel](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getDocumentSplitHeadingLevel) רכוש. הפלט יחולק על ידי פסקאות המדוימות עם רמת הכותרת המפורטת.

דוגמה לקוד הבא מראה כיצד לחלק מסמך לחלקים קטנים יותר לפי הכותרת:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-SplitDocumentByHeadingsHTML.java" >}}

אנא שימו לב לקריטריונים אלה, Aspose.Words תומך רק בשמירת פורמט HTML בעת פיצול.

בעת שמירת EPUB, המסמך אינו מחולק למספר קבצים, ויהיה רק קובץ פלט אחד.

### להפיץ מסמך לפי סעיפים {#split-a-document-by-sections}

Aspose.Words כמו כן, מאפשר לך להשתמש הפסקות סעיף כדי לחלק מסמכים ולהציל אותם ל- HTML. לשם כך, השתמש **SectionBreak** כמו **DocumentSplitCriteria**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-SplitDocumentBySectionsHTML.java" >}}

יש דרך אחרת לפצל את מסמך המקור למסמכים מרובים של פלט, ואתה יכול לבחור כל פורמט פלט נתמך על ידי Aspose.Words.

הדוגמה הבאה של הקוד מראה כיצד לחלק מסמך לחלקים קטנים יותר על ידי הפסקות (ללא שימוש) `DocumentSplitCriteria` רכוש):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentBySections.java" >}}

## פיצול על ידי דפים {#splitting-by-pages}

אתה יכול גם לפצל דף מסמך על ידי דף, על ידי טווחי דף, או להתחיל עם מספרי העמוד המפורטים. במקרה כזה [ExtractPages](https://reference.aspose.com/words/java/com.aspose.words/document/#extractPages-int-int) השיטה יכולה לעשות את העבודה.

סעיף זה מתאר מספר מקרים של שימוש בחלוקת מסמכים על ידי דף באמצעות שימוש [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) הכיתה וה **ExtractPages** שיטה.

{{% alert color="primary" %}}

אתה יכול להשתמש בכל [מסמך](/words/he/java/supported-document-formats/).

{{% /alert %}}

{{% alert color="primary" %}}

בגלל הניואנסים הרבים מופיעים תוך צמצום מספר העמודים, משחק מלא עם Microsoft Word הפריסה היא משימה מורכבת למדי. לכן, בהתאם למורכבות המסמך, ייתכן שיש הבדלים קלים בפריסת המסמך המתקבלת מן המסמך המקורי.

{{% /alert %}}

### שתף מסמך בעמוד {#split-a-document-page-by-page}

Aspose.Words מאפשר לך לפצל דף מסמך מרובה עמודים על ידי דף.

לדוגמה הקוד הבא מראה כיצד לחלק מסמך ולהציל כל דף מסמך נפרד:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentPageByPage.java" >}}

### פיצול מסמך על ידי Page Ranges {#split-a-document-by-page-ranges}

Aspose.Words מאפשר פיצול מסמך רב עמודים על ידי טווחי הדף. ניתן לחלק קובץ אחד לקבצים מרובים עם טווחי דפים שונים או רק לבחור טווח אחד ולהציל רק חלק זה של מסמך המקור. שים לב שאתה יכול לבחור את טווח העמוד על פי מספר העמוד המקסימלי והמינימום של המסמך.

הדוגמה הבאה של הקוד מראה כיצד לחלק מסמך לחלקים קטנים יותר על ידי טווח הדף עם התחלות ספציפיות ואינדקסי קצה:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentByPageRange.java" >}}

## אפשרות להחזיר מסמך {#callback-option-for-saving-a-document}

אתה יכול להשתמש [DocumentPartSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getDocumentPartSavingCallback) רכוש כדי לשלוט כיצד Aspose.Words שמור חלקי מסמך כאשר מסמך זה ייצוא בפורמט HTML. נכס זה מאפשר לך לקרוא מחדש קבצים פלט או אפילו להפנות אותם לזרמים מותאמים אישית.

אנא שימו לב כי קריאה זו אינה מועילה בעת שמירת EPUB כי כל חלקי התפוקה חייבים להינצל לתוך מיכל אחד - קובץ .epub. לכן, הפניה של זרם אינה נתמכת, והאפקט של renaming אינו גלוי שכן קבצים שונו בתוך מיכל.

## מריג את מסמך הפיצול עם מסמך אחר {#merge-the-split-document-with-another-file}

Aspose.Words מאפשר לך למזג את מסמך הפיצול עם מסמך אחר כדי ליצור מסמך חדש. ניתן לקרוא לזה מסמך מיזוג.

דוגמה לקוד הבא מראה כיצד למזג מסמך מפוצל עם מסמך אחר:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-MergeDocuments.java" >}}
