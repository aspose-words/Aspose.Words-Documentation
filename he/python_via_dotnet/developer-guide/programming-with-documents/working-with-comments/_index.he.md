---
title: עבודה עם הערות Python
second_title: Aspose.Words עבור Python via .NET
articleTitle: עבודה עם הערות
linktitle: עבודה עם הערות
description: "כיצד להוסיף, להסיר או לתמרן הערות במסמך באמצעות Python."
type: docs
weight: 260
url: /he/python-net/working-with-comments/
---

{{% alert color="primary" %}}

**נסה באינטרנט**

אתה יכול לנסות את הפונקציונליות שלנו [חינם באינטרנט להסיר הודעות](https://products.aspose.app/words/annotation).

{{% /alert %}}

Aspose.Words מאפשר למשתמשים לעבוד עם הערות - הערות במסמך Aspose.Words מיוצגים על ידי [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) מעמד. השתמש גם [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) ו [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) שיעורים כדי לציין את אזור הטקסט כי צריך להיות קשור עם תגובה.

## הוסף תגובה

Aspose.Words מאפשר להוסיף הערות בכמה דרכים:

1.1 1. באמצעות [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) הכיתה
2. באמצעות [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) ו [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) שיעורים

הדוגמה הבאה של הקוד מראה כיצד להוסיף תגובה לפסקה באמצעות הסעיף **Comment** קטגוריה:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-AddComments.py" >}}

הדוגמה הבאה של הקוד מראה כיצד להוסיף תגובה לפסקה באמצעות אזור טקסט והטקסט **CommentRangeStart** ו **CommentRangeEnd** שיעורים:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-AnchorComment.py" >}}

## לחלץ או להסיר הערות

שימוש בהערות במסמך Word (בנוסף לשינויים במעקב) הוא תרגול נפוץ בעת בדיקת מסמכים, במיוחד כאשר ישנם מספר סוקרים. יש מצבים שבהם הדבר היחיד שאתה צריך במסמך הוא התגובות. נניח שאתה רוצה ליצור רשימה של ממצאי ביקורת, או אולי אספת את כל המידע השימושי של המסמך ואתה פשוט רוצה להסיר הערות מיותרות. ייתכן שתרצה להציג או להסיר הערות של מבקר מסוים.

בדגימה זו אנו הולכים לבחון כמה שיטות פשוטות עבור איסוף מידע מההערות בתוך מסמך ועל הסרת הערות ממסמכים. באופן ספציפי, אנו נעמוד כיצד:

- הוציאו את כל התגובות של מסמך או רק את אלה שנעשו על ידי מחבר מסוים.
- להסיר את כל ההערות של מסמך או רק ממחבר מסוים.

### כיצד להסיר או להסיר הערות

הקוד במדגם זה הוא למעשה פשוט למדי וכל השיטות מבוססות על אותה גישה. תגובה במסמך Word מיוצגת על ידי [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) אובייקט Aspose.Words מסמך מודל אובייקט כדי לאסוף את כל התגובות במסמך להשתמש [get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) שיטה עם הפרמטר הראשון להגדיר [NodeType.COMMENT](https://reference.aspose.com/words/python-net/aspose.words/nodetype/#comment). ודא כי הפרמטר השני של **Get_child_nodes** השיטה מיועדת trueכוחות אלה **Get_child_nodes** כדי לבחור מכל בלוטות הילד, במקום רק לאסוף את הילדים המיידיים.

כדי להמחיש כיצד לחלץ ולהסיר הערות ממסמכים, אנו עוברים את השלבים הבאים:

1.1 1. פתח מסמך Word באמצעות [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) הכיתה
1.1 1. קבלו את כל התגובות מהמסמכים לאוסף
1.1 1. להוציא הערות:
   1 לעבור את האוסף באמצעות מפעיל ה-Foreach
   1 לחלץ ולרשום את שם המחבר, תאריך וזמן וטקסט של כל הערות
   1 לחלץ ולרשום את שם המחבר, תאריך וזמן וטקסט של הערות שנכתבו על ידי מחבר ספציפי, במקרה זה המחבר "ks"
1.1 1. להסיר הערות:
   1 הפוך דרך האוסף באמצעות המפעיל
   1. Remove הערות
1.1 1. להציל את השינויים

### כיצד להפיק את כל התגובות

The The The [get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) שיטה היא מאוד שימושית ואתה יכול להשתמש בה בכל פעם שאתה צריך לקבל רשימה של דפי מסמך מכל סוג. האוסף המתקבל אינו יוצר כותרת מיידית, כי הצמתים נבחרים לתוך אוסף זה רק כאשר אתה אוכל או גישה פריטים בו.

דוגמה הקוד הבא מראה כיצד לחלץ את שם המחבר, תאריך וטקסט של כל התגובות במסמך:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-ExtractComments.py" >}}

### כיצד להפיק הערות של מחבר ספציפי

אחרי שבחרת [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) צומת לתוך אוסף, כל שעליך לעשות הוא לחלץ את המידע שאתה צריך. בדגימה זו, המחבר הראשוניים, התאריך, הזמן והטקסט הפשוט של ההערה משולבים לתוך מיתר אחד; אתה יכול לבחור לאחסן אותו בדרכים אחרות במקום.

השיטה המוגברת שמוציאה את ההערות של מחבר מסוים כמעט זהה, היא רק בודקת את שם המחבר לפני הוספת המידע למערך.

הדוגמה הבאה של הקוד מראה כיצד לחלץ את שם המחבר, תאריך וטקסט של ההערות של המחבר שצוין:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-ExtractCommentsByAuthor.py" >}}

### כיצד להסיר הערות

אם אתה מסיר את כל ההערות, אין צורך לעבור דרך הקולקציה המסלקת הערות אחד על ידי אחד; אתה יכול להסיר אותם על ידי קריאה [clear](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/clear/) על אוסף התגובות

הדוגמה הבאה של הקוד מראה כיצד להסיר את כל התגובות במסמך:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-RemoveComments.py" >}}

כאשר אתה צריך להסיר הערות באופן סלקטיבי, התהליך הופך להיות דומה יותר לקוד שבו השתמשנו למיצוי תגובה.

הדוגמה הבאה של הקוד מראה כיצד להסיר הערות על ידי המחבר שצוין:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-RemoveCommentsByAuthor.py" >}}

הנקודה העיקרית להדגיש כאן היא השימוש של המפעיל. בניגוד למיצוי הפשוט, אתם רוצים למחוק תגובה. טריק מתאים הוא להפוך את האוסף לאחור מן האחרון [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) הראשון. הסיבה לכך אם אתה מתחיל מן הסוף והזיז לאחור, המדד של הפריטים הקודמים נשאר ללא שינוי, ואתה יכול לעבוד את דרכך חזרה אל הפריט הראשון באוסף.

הדוגמה הבאה של הקוד מציגה את השיטות למיצוי הערות וההסרה:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-ProcessComments.py" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ הדגימה של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Comments.docx).

{{% /alert %}}

### כיצד להסיר הערה בין CommentRangeStart ו- CommentRange End

שימוש Aspose.Words ניתן גם להסיר הערות בין **CommentRangeStart** ו **CommentRangeEnd** צומת

דוגמה לקוד הבא מראה כיצד להסיר טקסט בין **CommentRangeStart** ו **CommentRangeEnd**:

{{< highlight python >}}
# Open the document.
doc = aw.Document(docs_base.my_dir + "Comments.docx")

commentStart = doc.get_child(aw.NodeType.COMMENT_RANGE_START, 0, True).as_comment_range_start()
commentEnd = doc.get_child(aw.NodeType.COMMENT_RANGE_END, 0, True).as_comment_range_end()

currentNode = commentStart
isRemoving = True
while (currentNode != None and isRemoving) :
    if (currentNode.node_type == aw.NodeType.COMMENT_RANGE_END) :
        isRemoving = False

    nextNode = currentNode.next_pre_order(doc)
    currentNode.remove()
    currentNode = nextNode

# Save the document.
doc.save(docs_base.artifacts_dir + "WorkingWithComments.remove_region_text.docx")
{{< /highlight >}}

## הוסף או להסיר תגובה

The The The [add_reply](https://reference.aspose.com/words/python-net/aspose.words/comment/add_reply/) השיטה מוסיפה תשובה להערה זו. שימו לב כי בשל הקיים Microsoft הגבלות Office רק רמה אחת של תשובות מותרות במסמך. יוצא דופן מסוג **InvalidOperationException** יעלה אם שיטה זו נקראת על תגובת התשובה הקיימת.

אתה יכול להשתמש [remove_reply](https://reference.aspose.com/words/python-net/aspose.words/comment/remove_reply/) שיטה להסיר את התשובה המפורטת להערה זו.

הדוגמה הבאה של הקוד מראה כיצד להוסיף תשובה להגיב ולהסיר את התשובה:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-AddRemoveCommentReply.py" >}}

## תגובה

The The The [replies](https://reference.aspose.com/words/python-net/aspose.words/comment/replies/) רכוש מחזיר אוסף [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) פריטים שהם ילדים מיידיים של התגובה המפורטת.

הדוגמה הבאה של הקוד מראה כיצד לתקן באמצעות תשובות של תגובה ופתירתם:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-CommentResolvedandReplies.py" >}}