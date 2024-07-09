---
title: עבודה עם הערות Java
second_title: Aspose.Words עבור Java
articleTitle: עבודה עם הערות
linktitle: עבודה עם הערות
description: "עבודה עם הערות באמצעות Java."
type: docs
weight: 260
url: /he/java/working-with-comments/
---

{{% alert color="primary" %}}

**נסה באינטרנט**

אתה יכול לנסות את הפונקציונליות שלנו [המונחים:](https://products.aspose.app/words/annotation).

{{% /alert %}}

Aspose.Words מאפשר למשתמשים לעבוד עם הערות - הערות במסמך Aspose.Words מיוצגים על ידי [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) מעמד. השתמש גם [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) ו [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/) שיעורים כדי לציין את אזור הטקסט כי צריך להיות קשור עם תגובה.

## הוסף תגובה

Aspose.Words מאפשר להוסיף הערות בכמה דרכים:

1.1 1. באמצעות [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) הכיתה
2. באמצעות [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) ו [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/) שיעורים

הדוגמה הבאה של הקוד מראה כיצד להוסיף תגובה לפסקה באמצעות הסעיף **Comment** קטגוריה:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AddComments-AddComments.java" >}}

הדוגמה הבאה של הקוד מראה כיצד להוסיף תגובה לפסקה באמצעות אזור טקסט והטקסט **CommentRangeStart** ו **CommentRangeEnd** שיעורים:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AnchorComment-AnchorComment.java" >}}

## הסרת הערות או הסרת הערות

שימוש בהערות במסמך Word (בנוסף לשינויים במעקב) הוא מנהג נפוץ בעת בדיקת מסמכים, במיוחד כאשר ישנם מספר סוקרים. יש מצבים שבהם הדבר היחיד שאתה צריך במסמך הוא התגובות. נניח שאתה רוצה ליצור רשימה של ממצאי ביקורת, או אולי אספת את כל המידע השימושי של המסמך ואתה פשוט רוצה להסיר הערות מיותרות. ייתכן שתרצה להציג או להסיר הערות של מבקר מסוים.

בדגימה זו, אנו הולכים לבחון כמה שיטות פשוטות עבור איסוף מידע מההערות בתוך מסמך ועל הסרת הערות ממסמכים. באופן ספציפי, אנו נעמוד כיצד:

- הוציאו את כל התגובות של מסמך או רק את אלה שנעשו על ידי מחבר מסוים.
- להסיר את כל ההערות של מסמך או רק ממחבר מסוים.

### כיצד להסיר או להסיר הערות

הקוד במדגם זה הוא די פשוט וכל השיטות מבוססות על אותה גישה. תגובה במסמך Word מיוצגת על ידי `Comment` אובייקט Aspose.Words מסמך מודל אובייקט כדי לאסוף את כל ההערות במסמך להשתמש [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) שיטה עם הפרמטר הראשון להגדיר `NodeType.Comment`. ודא כי הפרמטר השני של **עקבו אחריChild Nodes** השיטה מיועדת trueכוחות אלה **עקבו אחריChild Nodes** כדי לבחור מכל בלוטות הילד, במקום לאסוף רק את הילדים המיידיים.

כדי להמחיש כיצד לחלץ ולהסיר הערות ממסמכים, אנו עוברים את השלבים הבאים:

1.1 1. פתח מסמך Word באמצעות [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) הכיתה
1.1 1. קבלו את כל התגובות מהמסמכים לאוסף
1.1 1. להוציא הערות:
   1 לעבור את האוסף באמצעות המפעיל
   1 לחלץ ולרשום את שם המחבר, תאריך וזמן וטקסט של כל הערות
   1 לחלץ ולרשום את שם המחבר, תאריך וזמן וטקסט של הערות שנכתבו על ידי מחבר ספציפי, במקרה זה, המחבר "ks"
1.1 1. להסיר הערות:
   1 הפוך דרך האוסף באמצעות המפעיל
   1. Remove הערות
1.1 1. להציל את השינויים

אנו הולכים להשתמש במסמך Word הבא עבור התרגיל הזה:

![extract-remove-comments-aspose-words-java-1](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-1.png)

כפי שאתה יכול לראות, הוא מכיל כמה הערות משני מחברים עם הראשונים "pm" ו "ks".

### כיצד להפיק את כל התגובות

The The The [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) שיטה היא מאוד שימושית ואתה יכול להשתמש בה בכל פעם שאתה צריך לקבל רשימה של דפי מסמך מכל סוג. האוסף המתקבל אינו יוצר כותרת מיידית, כי הצמתים נבחרים לתוך אוסף זה רק כאשר אתה אוכל או גישה פריטים בו.

דוגמה הקוד הבא מראה כיצד לחלץ את שם המחבר, תאריך וטקסט של כל התגובות במסמך:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-extractComments.java" >}}

### כיצד להפיק הערות של מחבר ספציפי

לאחר שבחרת צומת הערה לתוך אוסף, כל שעליך לעשות הוא לחלץ את המידע שאתה צריך. במדגם זה, ראשוניות המחבר, תאריך, זמן וטקסט רגיל של ההערה משולב לתוך מיתר אחד; אתה יכול לבחור לאחסן אותו בכמה דרכים אחרות במקום.

השיטה המוגברת שמוציאה את ההערות של מחבר מסוים כמעט זהה, היא רק בודקת את שם המחבר לפני הוספת המידע למערך.

הדוגמה הבאה של הקוד מראה כיצד לחלץ את שם המחבר, תאריך וטקסט של ההערות של המחבר שצוין:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-extractComments_Author.java" >}}

### כיצד להסיר הערות

אם אתה מסיר את כל ההערות, אין צורך לעבור דרך הקולקציה המסלקת הערות אחד על ידי אחד; אתה יכול להסיר אותם על ידי קריאה [clear](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#clear) על אוסף התגובות

הדוגמה הבאה של הקוד מראה כיצד להסיר את כל התגובות במסמך:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-removeComments.java" >}}

כאשר אתה צריך להסיר הערות באופן סלקטיבי, התהליך הופך להיות דומה יותר לקוד שבו השתמשנו למיצוי תגובה.

הדוגמה הבאה של הקוד מראה כיצד להסיר הערות של המחבר שצוין:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-removeComments_Author.java" >}}

הנקודה העיקרית להדגיש כאן היא השימוש במפעיל. בניגוד למיצוי הפשוט, אתם רוצים למחוק תגובה. טריק מתאים הוא להפוך את האוסף לאחור מההערה האחרונה לראשון. הסיבה לכך אם אתה מתחיל מן הסוף והזיז לאחור, המדד של הפריטים הקודמים נשאר ללא שינוי, ואתה יכול לעבוד את דרכך חזרה אל הפריט הראשון באוסף.

הדוגמה הקודית הבאה מציגה את שיטות החילוץ וההסרה של הערות:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-ProcessComments.java" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ הדגימה של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/com/aspose/words/examples/programming_documents/comments/ProcessComments/TestFile.doc).

{{% /alert %}}

כאשר הושק, הדגימה מציגה את התוצאות הבאות. ראשית, היא מציינת את כל התגובות של כל הכותבים, ואז היא מציינת הערות של המחבר הנבחר בלבד. לבסוף, הקוד מסיר את כל התגובות.

![extract-remove-comments-aspose-words-java-2](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-2.png)

מסמך הפלט Word הוסר ממנו כעת:

![extract-remove-comments-aspose-words-java-3](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-3.png)

### כיצד להסיר טקסט בין CommentRangeStart ו- CommentRange End

שימוש Aspose.Words אתה יכול גם להסיר הערות בין הערהRangeStart והערהRange End nodes.

הדוגמה הבאה של הקוד מראה כיצד להסיר טקסט בין CommentRangeStart ו- CommentRange End:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-RemoveCommentRegionText-RemoveCommentRegionText.java" >}}

## הוסף או להסיר תגובה

The The The [addReply](https://reference.aspose.com/words/java/com.aspose.words/comment/#addReply-java.lang.String-java.lang.String-java.util.Date-java.lang.String) השיטה מוסיפה תשובה להערה זו. אנא שימו לב כי בשל מגבלות ה-MS Office הקיימות רק רמה אחת (1) של תשובות מותר במסמך. יוצא דופן מסוג Invalid Operation Exception יעלה אם שיטה זו נקראת על התגובה הקיימת.

אתה יכול להשתמש [removeReply](https://reference.aspose.com/words/java/com.aspose.words/comment/#removeReply-com.aspose.words.Comment) שיטה להסיר את התשובה המפורטת להערה זו.

הדוגמה הבאה של הקוד מראה כיצד להוסיף תשובה להערה ולהסיר תגובה:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AddRemoveCommentReply-AddRemoveCommentReply.java" >}}

## תגובה

Aspose.Words תמיכה לקרוא את התשובה של הערה. The The The [Replies](https://reference.aspose.com/words/java/com.aspose.words/comment/#getReplies) הנכס מחזיר אוסף של [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) פריטים שהם ילדים מיידיים של התגובה המפורטת.

הדוגמה הבאה של הקוד מראה כיצד לתקן באמצעות תשובות של תגובה ופתירתם:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-CommentResolvedandReplies.java" >}}