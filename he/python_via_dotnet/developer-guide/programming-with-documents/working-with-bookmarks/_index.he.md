---
title: עבודה עם הערות ספרים Python
second_title: Aspose.Words עבור Python via .NET
articleTitle: עבודה עם הערות
linktitle: עבודה עם הערות
description: "כיצד להוסיף, לקבל, לזוז, להציג או להסתיר הערות ספרים באמצעות Python."
type: docs
weight: 180
url: /he/python-net/working-with-bookmarks/
---

רשימות קריאה בהן מופיע Microsoft Word לתעד את המיקומים או החלקים שאתה שם וזיהוי עבור התייחסות עתידית. לדוגמה, אתה יכול להשתמש בסימן כדי לזהות טקסט שאתה רוצה לשחזר מאוחר יותר. במקום לגלול באמצעות המסמך כדי לאתר את הטקסט, אתה יכול ללכת אליו באמצעות תיבת הדו-שיח של Bookmark.

הפעולות שניתן לבצע עם סימניות באמצעות Aspose.Words זהה לאלה שאתה יכול לבצע באמצעות Microsoft Word. אתה יכול להוסיף סימן חדש, למחוק, לעבור לסימן ספר, לקבל או להגדיר שם סימן, לקבל או להגדיר טקסט סגור בו. עם Aspose.Wordsאתה יכול גם להשתמש סממנים בדיווחים או במסמכים כדי להכניס נתונים מסוימים לסימן הספר או ליישם פורמט מיוחד לתוכן שלו. אתה יכול גם להשתמש סממנים כדי לאחזר טקסט ממקום מסוים במסמך שלך.

## תגית: Bookmark

שימוש בשימוש [start_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/start_bookmark/) ו [end_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_bookmark/) כדי ליצור סימן על ידי סימון ההתחלה והסוף שלו, בהתאמה. אל תשכחו להעביר את אותו שם הספר לשתי השיטות. סימני ספר במסמך יכולים לחפוף ולעבור כל טווח. סימני ספר שנוצרו בטעות או סימני ספר עם שמות כפולים יתעלמו כאשר המסמך נשמר.

{{% alert color="primary" %}}

כל החללים הלבנים בסימן הספר הוחלפו במערות. הגבלה זו באה מפורמטים של MS Word, שכן סממנים בפורמטים של MS Word, כמו DOCX או DOC, לא יכולים להיות חללים לבנים. עם זאת, PDF מאפשר הערות כאלה. אז עכשיו, אם אתה צריך להשתמש בסימנים ב- PDF או XPS קווי מתאר, אתה יכול להשתמש בהם עם חללים לבנים.

{{% /alert %}}

דוגמה לקוד הבא מראה כיצד ליצור סימן חדש:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-CreateBookmark.py" >}}

## הערות ספרים

לפעמים יש צורך להשיג אוסף של סימן ספר כדי להחליש באמצעות סימניות או למטרות אחרות. השתמש [Node.range](https://reference.aspose.com/words/python-net/aspose.words/node/range/) רכוש שנחשף על ידי כל מסמך אשר מחזיר [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) האובייקט המייצג את חלקו של המסמך הכלול בצומת זה. השתמש באובייקט הזה כדי להחזיר [BookmarkCollection](https://reference.aspose.com/words/python-net/aspose.words/bookmarkcollection/) לאחר מכן השתמש באינדקס האוסף כדי לקבל סימן ספר מסוים.

{{% alert color="primary" %}}

ניתן להוריד את קובץ הדגימה של דוגמאות אלה [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Bookmarks.docx).

{{% /alert %}}

הדוגמה הבאה של הקוד מראה כיצד להשיג סימני ספר מאוסף של סממנים:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-AccessBookmarks.py" >}}

הדוגמה הבאה של הקוד מראה כיצד להגיע או להגדיר שם סימן וטקסט:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-UpdateBookmarkData.py" >}}

דוגמה לקוד הבא מראה כיצד לסמן שולחן:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-BookmarkTable.py" >}}

אם תשנה את שמו של סימן ספר בשם שכבר קיים במסמך, שום טעות לא תיווצר ורק הסימן הראשון יישמר בעת שמירת המסמך.

שימו לב כי מספר סימניות במסמך מוקצה ליצירת שדות. לעבור לסימן ספר כזה ולהכניס טקסט שם מכניס את הטקסט לתוך קוד שדה הטופס. למרות שזה לא יסולא את שדה הטופס, הטקסט המוכנס לא יהיה גלוי כי זה הופך לחלק קוד השדה.

הדוגמה הבאה של הקוד מראה כיצד לגשת לעמודות של השולחן המסומן:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-BookmarkTableColumns.py" >}}

## לעבור לסימן ספר

אם אתה צריך להוסיף תוכן עשיר (לא רק טקסט רגיל) לתוך סימן ספר, אתה צריך להשתמש [move_to_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_bookmark/) להעביר את הcursor לסימן הספר ולאחר מכן להשתמש [DocumentBuilder's](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) שיטות ונכסים כדי להוסיף תוכן.

## תגית: Hide Bookmark content

את כל סימן הספר (כולל תוכן מסומן) ניתן לשער בתוך החלק האמיתי של החלק האמיתי של `IF` שדה באמצעות Aspose.Words. זה יכול להיות באופן כזה `IF` שדה מכיל שדה Merge קינן בביטוי (*Left of Operator*) ובהתאם לערך של שדה Merge, השדה. `IF` שדה מראה או מסתיר את התוכן של סימן ספר במסמך Word.

דוגמה לקוד הבא מראה כיצד להציג / להסתיר סימני ספר:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-ShowHideBookmarks.py" >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-ShowHideBookmarkedContent.py" >}}
