---
title: עבודה עם סימניות ב C++
second_title: Aspose.Words עבור C++
articleTitle: עבודה עם סימניות
linktitle: עבודה עם סימניות
description: "הבנת מושגי סימניות וכיצד ניתן להשתמש בסימניות בתוכנית שלך באמצעות C++."
type: docs
weight: 180
url: /he/cpp/working-with-bookmarks/
timestamp: 2024-01-27-14-07-04
---

סימניות מזהות ב Microsoft Word לתעד את המיקומים או השברים שאתה שם ומזהה לעיון עתידי. לדוגמה, תוכל להשתמש בסימנייה כדי לזהות טקסט שברצונך לשנות מאוחר יותר. במקום לגלול במסמך כדי לאתר את הטקסט, תוכל לעבור אליו באמצעות תיבת הדו-שיח סימניות.

הפעולות שניתן לבצע באמצעות סימניות באמצעות Aspose.Words זהות לאלה שניתן לבצע באמצעות Microsoft Word. ניתן להוסיף סימניה חדשה, למחוק, לעבור לסימניה, לקבל או להגדיר שם סימניה, לקבל או להגדיר טקסט המצורף בה. עם Aspose.Words, אתה יכול גם להשתמש בסימניות בדוחות או במסמכים כדי להכניס נתונים מסוימים לסימניה או להחיל עיצוב מיוחד על תוכנו. אתה יכול גם להשתמש בסימניות כדי לאחזר טקסט ממיקום מסוים במסמך שלך.

## הכנס סימניה

השתמש [StartBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/startbookmark/) ו [EndBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endbookmark/) כדי ליצור סימניה על ידי סימון ההתחלה והסיום שלה, בהתאמה. אל תשכח להעביר את אותו שם סימניה לשתי השיטות. סימניות במסמך יכולות לחפוף ולפרוס כל טווח. סימניות או סימניות שנוצרו בצורה גרועה עם שמות כפולים יתעלמו בעת שמירת המסמך.

דוגמת הקוד הבאה מראה כיצד ליצור סימניה חדשה:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-CreateBookmark-CreateBookmark.cpp" >}}

## השג סימניות

לפעמים יש צורך להשיג אוסף סימניות כדי לחזור על עצמו באמצעות סימניות או למטרות אחרות. השתמש במאפיין [Node.Range](https://reference.aspose.com/words/cpp/aspose.words/node/get_range/) שנחשף על ידי כל צומת מסמך שמחזיר אובייקט [Range](https://reference.aspose.com/words/cpp/aspose.words/range/) המייצג את החלק של המסמך הכלול בצומת זה. השתמש באובייקט זה כדי לאחזר [BookmarkCollection](https://reference.aspose.com/words/cpp/aspose.words/bookmarkcollection/) ולאחר מכן השתמש באינדקס האוסף כדי לקבל סימניה ספציפית.

דוגמת הקוד הבאה מראה כיצד להשיג סימניות מאוסף סימניות:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-AccessBookmarks-AccessBookmarks.cpp" >}}

דוגמת הקוד הבאה מראה כיצד לקבל או להגדיר שם וטקסט של סימניה:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-BookmarkNameAndText-BookmarkNameAndText.cpp" >}}

דוגמת הקוד הבאה מראה כיצד לסמן טבלה:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-BookmarkTable-BookmarkTable.cpp" >}}

אם תשנה את שם הסימנייה לשם שכבר קיים במסמך, לא תיווצר שגיאה ורק הסימנייה הראשונה תישמר בעת שמירת המסמך.

{{% alert color="primary" %}}

שים לב שחלק מהסימניות במסמך מוקצות לשדות טופס. מעבר לסימנייה כזו והכנסת טקסט שם מכניס את הטקסט לקוד שדה הטופס. למרות שזה לא יבטל את שדה הטופס, הטקסט שהוכנס לא יהיה גלוי מכיוון שהוא הופך לחלק מקוד השדה.

{{% /alert %}}

## מעבר לסימנייה

אם אתה צריך להכניס תוכן עשיר (לא רק טקסט רגיל) לסימניה, עליך להשתמש ב [MoveToBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetobookmark/) כדי להזיז את הסמן לסימניה ולאחר מכן להשתמש ב [DocumentBuilder's](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) שיטות ומאפיינים כדי להוסיף תוכן.

## הצג הסתר תוכן סימניות

כל הסימנייה (*including the bookmarked content*) יכולה להיות מכוסה בחלק האמיתי של השדה `IF` באמצעות Aspose.Words. זה יכול להיות בצורה כזו ששדה `IF` מכיל שדה מיזוג מקונן בביטוי (*Left of Operator*) ובהתאם לערך שדה המיזוג, השדה `IF` מציג או מסתיר את תוכן הסימנייה במסמך Word.

דוגמת הקוד הבאה מראה כיצד להציג / להסתיר סימניות:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-ShowHideBookmarks-ShowHideBookmarks.cpp" >}}
