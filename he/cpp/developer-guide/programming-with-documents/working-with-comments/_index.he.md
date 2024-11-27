---
title: עבודה עם הערות ב C++
second_title: Aspose.Words עבור C++
articleTitle: עבודה עם הערות
linktitle: עבודה עם הערות
description: "עבודה עם הערות באמצעות C++."
type: docs
weight: 260
url: /he/cpp/working-with-comments/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

**נסה באינטרנט**

אתה יכול לנסות את הפונקציונליות הזו עם שלנו [חינם באינטרנט להסיר הערות](https://products.aspose.app/words/annotation).

{{% /alert %}}

Aspose.Words מאפשר למשתמשים לעבוד עם הערות-הערות במסמך ב Aspose.Words מיוצגות על ידי הכיתה [Comment](https://reference.aspose.com/words/cpp/aspose.words/comment/). השתמש גם בכיתות [CommentRangeStart](https://reference.aspose.com/words/cpp/aspose.words/commentrangestart/) ו - [CommentRangeEnd](https://reference.aspose.com/words/cpp/aspose.words/commentrangeend/) כדי לציין את אזור הטקסט שצריך לשייך לתגובה.

## הוסף תגובה

Aspose.Words מאפשר לך להוסיף הערות בכמה דרכים:

1. שימוש בכיתה [Comment](https://reference.aspose.com/words/cpp/aspose.words/comment/)
2. שימוש בכיתות [CommentRangeStart](https://reference.aspose.com/words/cpp/aspose.words/commentrangestart/) ו [CommentRangeEnd](https://reference.aspose.com/words/net/aspose.words/commentrangeend/)

דוגמת הקוד הבאה מראה כיצד להוסיף הערה לפסקה באמצעות הכיתה **Comment**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-AddComments-AddComments.cpp" >}}

דוגמת הקוד הבאה מראה כיצד להוסיף הערה לפסקה באמצעות אזור טקסט ושיעורי **CommentRangeStart** ו - **CommentRangeEnd**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-AnchorComment-AnchorComment.cpp" >}}

## חלץ או הסר הערות

שימוש בהערות במסמך Word (בנוסף לשינויים במסלול) הוא נוהג נפוץ בעת סקירת מסמכים, במיוחד כאשר יש מספר מבקרים. לא יכול להיות מצבים שבהם הדבר היחיד שאתה צריך ממסמך הוא הערות. נניח שאתה רוצה ליצור רשימה של ממצאי סקירה, או שאולי אספת את כל המידע השימושי מהמסמך ואתה פשוט רוצה להסיר הערות מיותרות. ייתכן שתרצה להציג או להסיר את ההערות של סוקר מסוים.

במדגם זה אנו הולכים לבחון כמה שיטות פשוטות הן לאיסוף מידע מההערות במסמך והן להסרת הערות ממסמך. באופן ספציפי, נסקור כיצד:

- חלץ את כל ההערות ממסמך או רק את אלה שנעשו על ידי מחבר מסוים.
- הסר את כל ההערות ממסמך או רק ממחבר מסוים.

### כיצד לחלץ או להסיר הערות

הקוד במדגם זה הוא למעשה די פשוט וכל השיטות מבוססות על אותה גישה. הערה במסמך Word מיוצגת על ידי אובייקט [Comment](https://reference.aspose.com/words/cpp/aspose.words/comment/) במודל אובייקט המסמך Aspose.Words. כדי לאסוף את כל ההערות במסמך השתמש בשיטת [GetChildNodes](https://reference.aspose.com/words/cpp/aspose.words/compositenode/getchildnodes/) עם הפרמטר הראשון שהוגדר ל [NodeType.Comment](https://reference.aspose.com/words/cpp/aspose.words/nodetype/). ודא שהפרמטר השני של שיטת **GetChildNodes** מוגדר כנכון: זה מאלץ את **GetChildNodes** לבחור מכל צמתי הילד באופן רקורסיבי, במקום לאסוף רק את הילדים המיידיים.

כדי להמחיש כיצד לחלץ ולהסיר הערות ממסמך, נעבור על השלבים הבאים:

1. פתח מסמך Word באמצעות הכיתה [Document](https://reference.aspose.com/words/cpp/aspose.words/document/)
1. קבל את כל ההערות מהמסמך לאוסף
1. כדי לחלץ הערות:
   1. לעבור את האוסף באמצעות מפעיל כל מפעיל
   1. חלץ ורשום את שם המחבר, התאריך והשעה והטקסט של כל ההערות
   1. חלץ ורשום את שם המחבר, תאריך ושעה וטקסט של הערות שנכתבו על ידי מחבר ספציפי, במקרה זה, המחבר 'קס'
1. כדי להסיר הערות:
   1. ללכת אחורה דרך האוסף באמצעות עבור המפעיל
   1. הסר הערות
1. שמור את השינויים

### כיצד לחלץ את כל ההערות

שיטת **GetChildNodes** שימושית מאוד ותוכלו להשתמש בה בכל פעם שתצטרכו לקבל רשימה של צמתי מסמכים מכל סוג שהוא. האוסף המתקבל אינו יוצר תקורה מיידית מכיוון שהצמתים נבחרים לאוסף זה רק כאשר אתה מונה או ניגש לפריטים בו.

דוגמת הקוד הבאה מראה כיצד לחלץ את שם המחבר, התאריך והשעה והטקסט של כל ההערות במסמך:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-ExtractComments.cpp" >}}

### כיצד לחלץ הערות של מחבר שצוין

לאחר שבחרת צמתים תגובה לאוסף, כל שעליך לעשות הוא לחלץ את המידע הדרוש לך. במדגם זה, ראשי התיבות של המחבר, התאריך, השעה והטקסט הפשוט של ההערה משולבים למחרוזת אחת; אתה יכול לבחור לאחסן אותו בדרכים אחרות במקום.

השיטה העמוסה המחלצת את ההערות ממחבר מסוים היא כמעט זהה, היא רק בודקת את שם המחבר לפני הוספת המידע למערך.

דוגמת הקוד הבאה מראה כיצד לחלץ את שם המחבר, התאריך והשעה והטקסט של ההערות על ידי המחבר שצוין:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-ExtractCommentsByAuthor.cpp" >}}

### כיצד להסיר הערות

אם אתה מסיר את כל ההערות, אין צורך לעבור באוסף מחיקת הערות אחת אחת; אתה יכול להסיר אותן על ידי התקשרות `NodeCollection.Clear` באוסף ההערות.

דוגמת הקוד הבאה מראה כיצד להסיר את כל ההערות במסמך:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-RemoveComments.cpp" >}}

כאשר אתה צריך להסיר הערות באופן סלקטיבי, התהליך הופך להיות דומה יותר לקוד בו השתמשנו לחילוץ הערות.

דוגמת הקוד הבאה מראה כיצד להסיר הערות של המחבר שצוין:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-RemoveCommentsByAuthor.cpp" >}}

הנקודה העיקרית להדגיש כאן היא השימוש של עבור מפעיל. שלא כמו החילוץ פשוט, כאן אתה רוצה למחוק תגובה. טריק מתאים הוא לחזור על האוסף לאחור מההערה האחרונה לתגובה הראשונה. הסיבה לכך אם אתה מתחיל מהסוף ולעבור אחורה, המדד של הפריטים הקודמים נשאר ללא שינוי, ואתה יכול לעבוד בדרך חזרה לפריט הראשון באוסף.

דוגמת הקוד הבאה מציגה את השיטות להוצאת ההערות והסרתן:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-ProcessComments.cpp" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ המדגם של דוגמה זו מ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### כיצד להסיר תגובה בין CommentRangeStart ו CommentRangeEnd

באמצעות Aspose.Words ניתן גם להסיר הערות בין הצמתים **CommentRangeStart** ו **CommentRangeEnd**.

דוגמת הקוד הבאה מראה כיצד להסיר טקסט בין **CommentRangeStart** ו **CommentRangeEnd**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-RemoveRegionText-RemoveRegionText.cpp" >}}

## הוספה והסרה של תגובה

שיטת [AddReply](https://reference.aspose.com/words/cpp/aspose.words/comment/addreply/) מוסיפה תשובה לתגובה זו. לידיעתך, בשל מגבלות המשרד הקיימות Microsoft רק רמת 1 של תגובות מותרת במסמך. חריגה מסוג *InvalidOperationException* תועלה אם שיטה זו נקראת בהערת התשובה הקיימת.

אתה יכול להשתמש בשיטת [RemoveReply](https://reference.aspose.com/words/cpp/aspose.words/comment/removereply/) כדי להסיר את התשובה שצוינה לתגובה זו.

דוגמת הקוד הבאה מראה כיצד להוסיף תגובה לתגובה ולהסיר את תגובת התגובה:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-CommentReply-AddRemoveCommentReply.cpp" >}}

## קרא תגובה של תגובה

המאפיין [Replies](https://reference.aspose.com/words/cpp/aspose.words/comment/get_replies/) מחזיר אוסף של האובייקטים **Comment** שהם ילדים מיידיים של ההערה שצוינה.

דוגמת הקוד הבאה מראה כיצד לחזור על התגובות של תגובה ולפתור אותן:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-CommentResolvedandReplies.cpp" >}}
