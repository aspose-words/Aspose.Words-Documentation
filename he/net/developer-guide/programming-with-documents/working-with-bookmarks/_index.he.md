---
title: עבודה עם הערות ספרים C#
second_title: Aspose.Words עבור .NET
articleTitle: עבודה עם הערות
linktitle: עבודה עם הערות
description: "הבנת מושגי הערות ואיזה סימן ניתן להשתמש בתוכנה שלך C#."
type: docs
weight: 180
url: /he/net/working-with-bookmarks/
---

רשימות קריאה בהן מופיע Microsoft Word לתעד את המיקומים או החלקים שאתה שם וזיהוי עבור התייחסות עתידית. לדוגמה, אתה יכול להשתמש בסימן כדי לזהות טקסט שאתה רוצה לשחזר מאוחר יותר. במקום לגלול באמצעות המסמך כדי לאתר את הטקסט, אתה יכול ללכת אליו באמצעות תיבת הדו-שיח של Bookmark.

הפעולות שניתן לבצע עם סימניות באמצעות Aspose.Words זהה לאלה שאתה יכול לבצע באמצעות Microsoft Word. אתה יכול להוסיף סימן חדש, למחוק, לעבור לסימן ספר, לקבל או להגדיר שם סימן, לקבל או להגדיר טקסט סגור בו.

## תגית: Bookmark

שימוש בשימוש [StartBookmark](https://reference.aspose.com/words/net/aspose.words/documentbuilder/startbookmark/) ו [EndBookmark](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endbookmark/) כדי ליצור סימן על ידי סימון ההתחלה והסוף שלו, בהתאמה. אל תשכחו להעביר את אותו שם הספר לשתי השיטות. סימני ספר במסמך יכולים לחפוף ולעבור כל טווח. סימני ספר שנוצרו בטעות או סימני ספר עם שמות כפולים יתעלמו כאשר המסמך נשמר.

{{% alert color="primary" %}}

כל החללים הלבנים בסימן הספר הוחלפו במערות. הגבלה זו באה Microsoft Word פורמטים, מכיוון שסימנים בתבניות Word כמו DOCX או DOC אינם יכולים להיות חללים לבנים. עם זאת, PDF מאפשר הערות כאלה. אז עכשיו, אם אתה צריך להשתמש בסימנים ב- PDF או XPS קווי מתאר, אתה יכול להשתמש בהם עם חללים לבנים.

{{% /alert %}}

דוגמה לקוד הבא מראה כיצד ליצור סימן חדש:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-CreateBookmark-CreateBookmark.cs" >}}

## הערות ספרים

לפעמים יש צורך להשיג אוסף של סימן ספר כדי להחליש באמצעות סימניות או למטרות אחרות. השתמש [Node.Range](https://reference.aspose.com/words/net/aspose.words/node/range/) רכוש שנחשף על ידי כל מסמך אשר מחזיר [Range](https://reference.aspose.com/words/net/aspose.words/range/) האובייקט המייצג את חלקו של המסמך הכלול בצומת זה. השתמש באובייקט הזה כדי להחזיר [BookmarkCollection](https://reference.aspose.com/words/net/aspose.words/bookmarkcollection/) לאחר מכן השתמש באינדקס האוסף כדי לקבל סימן ספר מסוים.

הדוגמה הבאה של הקוד מראה כיצד להשיג סימני ספר מאוסף של סממנים:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-AccessBookmarks-AccessBookmarks.cs" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ הדגימה של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Bookmarks.docx).

{{% /alert %}}


הדוגמה הבאה של הקוד מראה כיצד להגיע או להגדיר שם סימן וטקסט:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-BookmarkNameAndText-BookmarkNameAndText.cs" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ הדגימה של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Bookmarks.docx).

{{% /alert %}}

דוגמה לקוד הבא מראה כיצד לסמן שולחן:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-BookmarkTable-BookmarkTable.cs" >}}

אם תשנה את שמו של סימן ספר בשם שכבר קיים במסמך, שום טעות לא תיווצר ורק הסימן הראשון יישמר בעת שמירת המסמך.

שימו לב כי מספר סימניות במסמך מוקצה ליצירת שדות. לעבור לסימן ספר כזה ולהכניס טקסט שם מכניס את הטקסט לתוך קוד שדה הטופס. למרות שזה לא יסולא את שדה הטופס, הטקסט המוכנס לא יהיה גלוי כי זה הופך לחלק קוד השדה.

הדוגמה הבאה של הקוד מראה כיצד לגשת לעמודות של השולחן המסומן:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-BookmarkTable-BookmarkTableColumns.cs" >}}

## לעבור לסימן ספר

אם אתה צריך להוסיף תוכן עשיר (לא רק טקסט רגיל) לתוך סימן ספר, אתה צריך להשתמש [MoveToBookmark](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetobookmark/) להעביר את הcursor לסימן הספר ולאחר מכן להשתמש [DocumentBuilder's](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) שיטות ונכסים כדי להוסיף תוכן.

## תגית: Hide Bookmark content

את כל סימן הספר (כולל תוכן מסומן) ניתן לשער בתוך החלק האמיתי של החלק האמיתי של `IF` שדה באמצעות Aspose.Words. זה יכול להיות באופן כזה `IF` שדה מכיל שדה Merge קינן בביטוי (*Left of Operator*) ובהתאם לערך של שדה Merge, השדה. `IF` שדה מראה או מסתיר את התוכן של סימן ספר במסמך Word.

דוגמה לקוד הבא מראה כיצד להציג / להסתיר סימני ספר:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-ShowHideBookmarks-ShowHideBookmarks_call.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-ShowHideBookmarks-ShowHideBookmarks.cs" >}}
