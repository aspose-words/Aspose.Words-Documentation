---
title: עבודה עם הערות ספרים Java
second_title: Aspose.Words עבור Java
articleTitle: עבודה עם הערות
linktitle: עבודה עם הערות
description: "הבנת מושגי סימן ספר וכיצד ניתן להשתמש בסימן הספר בתוכנית שלך Java."
type: docs
weight: 180
url: /he/java/working-with-bookmarks/
timestamp: 2024-01-27-14-07-04
---

רשימות קריאה בהן מופיע Microsoft Word לתעד את המיקומים או החלקים שאתה שם וזיהוי עבור התייחסות עתידית. לדוגמה, אתה יכול להשתמש בסימן כדי לזהות טקסט שאתה רוצה לשחזר מאוחר יותר. במקום לגלול באמצעות המסמך כדי לאתר את הטקסט, אתה יכול ללכת אליו באמצעות תיבת הדו-שיח של Bookmark.

עם Aspose.Words, באפשרותך להשתמש בהערות ספרים בדוחות או במסמכים כדי להכניס נתונים מסוימים לסימן הספר או ליישם פורמט מיוחד לתוכן שלו. אתה יכול גם להשתמש סמנים כדי לאחזר טקסט ממקום מסוים במסמך שלך.

הפעולות שניתן לבצע עם סימניות באמצעות Aspose.Words זהה לאלה שאתה יכול לבצע באמצעות Microsoft Word. אתה יכול להוסיף סימן חדש, למחוק, לעבור לסימן ספר, לקבל או להגדיר שם סימן, לקבל או להגדיר טקסט סגור בו.

## תגית: Bookmark

שימוש בשימוש [startBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startBookmark-java.lang.String) ו [endBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endBookmark-java.lang.String) כדי ליצור סימן על ידי סימון ההתחלה והסוף שלו, בהתאמה. אל תשכחו להעביר את אותו שם הספר לשתי השיטות. סימני ספר במסמך יכולים לחפוף ולעבור כל טווח. סימני ספר שנוצרו בטעות או סימני ספר עם שמות כפולים יתעלמו כאשר המסמך נשמר.

{{% alert color="primary" %}}

כל החללים הלבנים בסימן הספר הוחלפו במערות. הגבלה זו באה מפורמטים של MS Word, שכן סממנים בפורמטים של MS Word, כמו DOCX או DOC, לא יכולים להיות חללים לבנים. עם זאת, PDF מאפשר הערות כאלה. אז עכשיו, אם אתה צריך להשתמש ב- PDF, XPS או קווי SWF, אתה יכול להשתמש בהם עם חללים לבנים.

{{% /alert %}}

דוגמה לקוד הבא מראה כיצד ליצור סימן חדש:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-CreateBookmark-CreateBookmark.java" >}}

## הערות ספרים

לפעמים יש צורך להשיג אוסף של סימן ספר כדי להסס באמצעות סימניות או למטרות אחרות. השתמש **Node.getRange** רכוש שנחשף על ידי כל מסמך אשר מחזיר **Range** האובייקט המייצג את חלקו של המסמך הכלול בצומת זה. השתמש באובייקט הזה כדי להחזיר **BookmarkCollection** לאחר מכן השתמש באינדקס האוסף כדי לקבל סימן ספר מסוים.

{{% alert color="primary" %}}

ניתן להוריד את קובץ הדגימה של הדוגמאות הבאות [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Bookmarks.docx).

{{% /alert %}}

הדוגמה הבאה של הקוד מראה כיצד להשיג סימני ספר מאוסף של סממנים:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-AccessBookmarks-AccessBookmarks.java" >}}

הדוגמה הבאה של הקוד מראה כיצד להגיע או להגדיר שם סימן וטקסט:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkNameAndText-BookmarkNameAndText.java" >}}

דוגמה לקוד הבא מראה כיצד לסמן שולחן:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkTable-BookmarkTable.java" >}}

אם תשנה את שמו של סימן ספר בשם שכבר קיים במסמך, לא ייגרם טעות ורק סימן הספר הראשון יישמר בעת שמירת המסמך.

שים לב כי כמה סימני ספר במסמך מוקצה ליצירת שדות. לעבור לסימן ספר כזה ולהכניס טקסט שם מכניס את הטקסט לתוך קוד שדה הטופס. למרות שזה לא יסולא את שדה הטופס, הטקסט המוכנס לא יהיה גלוי כי זה הופך לחלק קוד השדה.

הדוגמה הבאה של הקוד מראה כיצד לגשת לעמודות של השולחן המסומן:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkTable-BookmarkTableColumns.java" >}}

## לעבור לסימן ספר

אם אתה צריך להוסיף תוכן עשיר (לא רק טקסט רגיל) לתוך סימן ספר, אתה צריך להשתמש [moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String) להעביר את הcursor לסימן הספר ולאחר מכן להשתמש **DocumentBuilder** שיטות ונכסים כדי להוסיף תוכן.

## תגית: Hide Bookmark

את כל סימן הספר (כולל תוכן מסומן) ניתן לשער בתוך החלק האמיתי של החלק האמיתי של `IF` שדה באמצעות Aspose.Words. זה יכול להיות באופן כזה `IF` שדה מכיל שדה Merge מקונן בביטוי (*Left of Operator*) ובהתאם לערך של שדה Merge, השדה. `IF` שדה מראה או מסתיר את התוכן של סימן ספר במסמך Word.

דוגמה לקוד הבא מראה כיצד להציג / להסתיר סימני ספר.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-ShowHideBookmarks-ShowHideBookmarks_call.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-ShowHideBookmarks-ShowHideBookmarks.java" >}}
