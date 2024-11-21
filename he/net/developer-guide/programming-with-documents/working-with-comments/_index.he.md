---
title: עבודה עם הערות C#
second_title: Aspose.Words עבור .NET
articleTitle: עבודה עם הערות
linktitle: עבודה עם הערות
description: "עבודה עם הערות באמצעות C#."
type: docs
weight: 260
url: /he/net/working-with-comments/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

**נסה באינטרנט**

אתה יכול לנסות את הפונקציונליות שלנו [חינם באינטרנט להסיר הודעות](https://products.aspose.app/words/annotation).

{{% /alert %}}

Aspose.Words מאפשר למשתמשים לעבוד עם הערות - הערות במסמך Aspose.Words מיוצגים על ידי [Comment](https://reference.aspose.com/words/net/aspose.words/comment/) מעמד. השתמש גם [CommentRangeStart](https://reference.aspose.com/words/net/aspose.words/commentrangestart/) ו [CommentRangeEnd](https://reference.aspose.com/words/net/aspose.words/commentrangeend/) שיעורים כדי לציין את אזור הטקסט כי צריך להיות קשור עם תגובה.

## הוסף תגובה

Aspose.Words מאפשר להוסיף הערות בכמה דרכים:

1.1 1. באמצעות [Comment](https://reference.aspose.com/words/net/aspose.words/comment/) הכיתה
2. באמצעות [CommentRangeStart](https://reference.aspose.com/words/net/aspose.words/commentrangestart/) ו [CommentRangeEnd](https://reference.aspose.com/words/net/aspose.words/commentrangeend/) שיעורים

הדוגמה הבאה של הקוד מראה כיצד להוסיף תגובה לפסקה באמצעות הסעיף **Comment** קטגוריה:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-AddComments-AddComments.cs" >}}

הדוגמה הבאה של הקוד מראה כיצד להוסיף תגובה לפסקה באמצעות אזור טקסט והטקסט **CommentRangeStart** ו **CommentRangeEnd** שיעורים:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-AnchorComment-AnchorComment.cs" >}}

## לחלץ או להסיר הערות

שימוש בהערות במסמך Word (בנוסף לשינויים במעקב) הוא תרגול נפוץ בעת בדיקת מסמכים, במיוחד כאשר ישנם מספר סוקרים. יש מצבים שבהם הדבר היחיד שאתה צריך במסמך הוא התגובות. נניח שאתה רוצה ליצור רשימה של ממצאי ביקורת, או אולי אספת את כל המידע השימושי של המסמך ואתה פשוט רוצה להסיר הערות מיותרות. ייתכן שתרצה להציג או להסיר הערות של מבקר מסוים.

בדגימה זו אנו הולכים לבחון כמה שיטות פשוטות עבור איסוף מידע מההערות בתוך מסמך ועל הסרת הערות ממסמכים. באופן ספציפי, אנו נעמוד כיצד:

- להפיק את כל התגובות של מסמך או רק את אלה שנעשו על ידי מחבר מסוים
- להסיר את כל ההערות של מסמך או רק ממחבר מסוים

### כיצד להסיר או להסיר הערות

הקוד במדגם זה הוא למעשה פשוט למדי וכל השיטות מבוססות על אותה גישה. תגובה במסמך Word מיוצגת על ידי [Comment](https://reference.aspose.com/words/net/aspose.words/comment/) אובייקט Aspose.Words מסמך מודל אובייקט כדי לאסוף את כל התגובות במסמך להשתמש [GetChildNodes](https://reference.aspose.com/words/net/aspose.words/compositenode/getchildnodes/) שיטה עם הפרמטר הראשון להגדיר [NodeType.Comment](https://reference.aspose.com/words/net/aspose.words/nodetype/). ודא כי הפרמטר השני של **GetChildNodes** השיטה מיועדת trueכוחות אלה **GetChildNodes** כדי לבחור מכל בלוטות הילד, במקום רק לאסוף את הילדים המיידיים.

כדי להמחיש כיצד לחלץ ולהסיר הערות ממסמכים, אנו עוברים את השלבים הבאים:

1.1 1. פתח מסמך Word באמצעות [Document](https://reference.aspose.com/words/net/aspose.words/document/) הכיתה
2. קבלו את כל התגובות מהמסמכים לאוסף
3. להוציא הערות:
   1 לעבור את האוסף באמצעות מפעיל ה-Foreach
   2. לחלץ ולרשום את שם המחבר, תאריך וזמן וטקסט של כל הערות
   3. לחלץ ולרשום את שם המחבר, תאריך ושעה וטקסט של הערות שנכתבו על ידי מחבר ספציפי, במקרה זה המחבר "ks"
4. להסיר הערות:
   1 הפוך דרך האוסף באמצעות המפעיל
   2 הסרת הערות
5. להציל את השינויים

### כיצד להפיק את כל התגובות

The The The **GetChildNodes** שיטה היא מאוד שימושית ואתה יכול להשתמש בה בכל פעם שאתה צריך לקבל רשימה של דפי מסמך מכל סוג. האוסף המתקבל אינו יוצר כותרת מיידית, כי הצמתים נבחרים לתוך אוסף זה רק כאשר אתה אוכל או גישה פריטים בו.

דוגמה הקוד הבא מראה כיצד לחלץ את שם המחבר, תאריך וטקסט של כל התגובות במסמך:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-ExtractComments.cs" >}}

### כיצד להפיק הערות של מחבר ספציפי

אחרי שבחרת **Comment** צומת לתוך אוסף, כל שעליך לעשות הוא לחלץ את המידע שאתה צריך. בדגימה זו, המחבר הראשוניים, התאריך, הזמן והטקסט הפשוט של ההערה משולבים לתוך מיתר אחד; אתה יכול לבחור לאחסן אותו בדרכים אחרות במקום.

השיטה המוגברת שמוציאה את ההערות של מחבר מסוים כמעט זהה, היא רק בודקת את שם המחבר לפני הוספת המידע למערך.

הדוגמה הבאה של הקוד מראה כיצד לחלץ את שם המחבר, תאריך וטקסט של ההערות של המחבר שצוין:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-ExtractCommentsByAuthor.cs" >}}

### כיצד להסיר הערות

אם אתם מסירים את כל ההערות, אין צורך לעבור דרך ההערות של האוסף. אתה יכול להסיר אותם על ידי קריאה [Clear](https://reference.aspose.com/words/net/aspose.words/nodecollection/clear/) שיטה לאיסוף הערות

הדוגמה הבאה של הקוד מראה כיצד להסיר את כל התגובות במסמך:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-RemoveComments.cs" >}}

כאשר אתה צריך להסיר הערות באופן סלקטיבי, התהליך הופך להיות דומה יותר לקוד שבו השתמשנו למיצוי תגובה.

הדוגמה הבאה של הקוד מראה כיצד להסיר הערות על ידי המחבר שצוין:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-RemoveCommentsByAuthor.cs" >}}

הנקודה העיקרית להדגיש כאן היא השימוש של המפעיל. בניגוד למיצוי הפשוט, אתם רוצים למחוק תגובה. טריק מתאים הוא להפוך את האוסף לאחור מההערה האחרונה לראשון. הסיבה לכך אם אתה מתחיל מן הסוף והזיז לאחור, המדד של הפריטים הקודמים נשאר ללא שינוי, ואתה יכול לעבוד את דרכך חזרה אל הפריט הראשון באוסף.

הדוגמה הבאה של הקוד מציגה את השיטות למיצוי הערות וההסרה:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-ProcessComments.cs" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ הדגימה של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Comments.docx).

{{% /alert %}}

### כיצד להסיר הערה בין CommentRangeStart ו- CommentRange End

שימוש Aspose.Words ניתן גם להסיר הערות בין **CommentRangeStart** ו **CommentRangeEnd** צומת

דוגמה לקוד הבא מראה כיצד להסיר טקסט בין **CommentRangeStart** ו **CommentRangeEnd**:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-RemoveRegionText-RemoveRegionText.cs" >}}

## הוסף או להסיר תגובה

The The The [AddReply](https://reference.aspose.com/words/net/aspose.words/comment/addreply/) השיטה מוסיפה תשובה להערה זו. שימו לב כי בשל הקיים Microsoft הגבלות Office רק רמה אחת של תשובות מותרות במסמך. יוצא דופן מסוג *InvalidOperationException* יעלה אם שיטה זו נקראת על תגובת התשובה הקיימת.

אתה יכול להשתמש [RemoveReply](https://reference.aspose.com/words/net/aspose.words/comment/removereply/) שיטה להסיר את התשובה המפורטת להערה זו.

הדוגמה הבאה של הקוד מראה כיצד להוסיף תשובה להגיב ולהסיר את התשובה:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-CommentReply-AddRemoveCommentReply.cs" >}}

## תגובה

The The The [Replies](https://reference.aspose.com/words/net/aspose.words/comment/replies/) הנכס מחזיר אוסף של [Comment](https://reference.aspose.com/words/net/aspose.words/comment/) פריטים שהם ילדים מיידיים של התגובה המפורטת.

הדוגמה הבאה של הקוד מראה כיצד לתקן באמצעות תשובות של תגובה ופתירתם:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-CommentResolvedandReplies.cs" >}}
