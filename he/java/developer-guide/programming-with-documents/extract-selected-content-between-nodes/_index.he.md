---
title: תוכן נבחר בין נקודות Java
second_title: Aspose.Words עבור Java
articleTitle: יצירת תוכן בין נקודות במסמך
linktitle: "המונחים: nodes"
type: docs
description: "יצירת תוכן מסמך שונה באמצעות Java."
weight: 140
url: /he/java/extract-selected-content-between-nodes/
timestamp: 2024-01-27-14-07-04
---

בעת עבודה עם מסמכים, חשוב להיות מסוגל בקלות להפיק תוכן מטווח מסוים בתוך מסמך. עם זאת, התוכן עשוי לכלול אלמנטים מורכבים כגון פסקאות, טבלאות, תמונות וכו '.

ללא קשר לשאלה איזה תוכן צריך להיות מופק, השיטה כדי לחלץ תוכן זה תמיד ייקבע על ידי אילו צמתים נבחרים כדי להפיק תוכן בין. אלה יכולים להיות גוף טקסט שלם או טקסט פשוט פועל.

ישנם מצבים רבים אפשריים ולכן סוגים שונים של צומת לשקול בעת תמצית התוכן. לדוגמה, ייתכן שתרצה להפיק תוכן בין:

- 2 סעיפים ספציפיים
- ריצה ספציפית של טקסט
- שדות מסוגים שונים, כגון שדות מתמזגים
- התחל וסיום טווחים של הערה או תגובה
- גופים שונים של טקסט הכלולים בחלקים נפרדים

במצבים מסוימים, ייתכן אפילו צריך לשלב סוגים שונים של צומת, כגון תמצית תוכן בין פסקה לשדה, או בין ריצה וסימן ספר.

מאמר זה מספק את יישום הקוד עבור תמצית טקסט בין צמתים שונים, כמו גם דוגמאות של תרחישים נפוצים.

{{% alert color="primary" %}}

דוגמאות אלה הן רק כמה הפגנות של אפשרויות רבות. אנו מתכננים את פונקציית החילוץ של הטקסט להיות חלק מהציבור API בעתיד, ואין צורך בקוד נוסף. בינתיים, הרגישו חופשיים לפרסם את בקשותיכם בנוגע לפונקציונליות זו. [Aspose.Words פורום](https://forum.aspose.com/c/words/8).

{{% /alert %}}

## למה לחלץ תוכן

לעתים קרובות המטרה של תמצית התוכן היא לשכפל או להציל אותו בנפרד במסמך חדש. לדוגמה, אתה יכול להפיק תוכן ו:

- העתק אותו לתוך מסמך נפרד
- להמיר חלק מסוים של מסמך ל- PDF או תמונה
- מחק את התוכן במסמך פעמים רבות
- עבודה עם תוכן מופק בנפרד משאר המסמך

ניתן להשיג זאת בקלות באמצעות Aspose.Words יישום הקוד למטה.

## יצירת תוכן Algorithm

הקוד בסעיף זה מתייחס לכל המצבים האפשריים המתוארים לעיל עם שיטה אחת כללית וניתנת לזיהוי. קווי המתאר הכלליים של טכניקה זו כוללים:

1.1 1. איסוף הצמתים המכתיבים את תחום התוכן שיוציא מהמסמכים שלך. שחזור נקודות אלה מטופל על ידי המשתמש בקוד שלהם, בהתבסס על מה שהם רוצים להיות מופקים.
1.1 1. לעבור את הנקודות האלה אל **ExtractContent** השיטה סיפקה למטה. כמו כן, עליך לעבור פרמטר בולקטי שקובע אם נקודות אלה, הפועלות כסמן, יש לכלול במיצוי או לא.
1.1 1. החזרת רשימה של תוכן משובש (עמודים מאוישים) שצוין להיות מופק. אתה יכול להשתמש ברשימה זו של צמתים בכל דרך רלוונטית, למשל, יצירת מסמך חדש המכיל רק את התוכן שנבחר.

## כיצד להפיק תוכן

אנו נפעל עם המסמך למטה במאמר זה. כפי שאתה יכול לראות זה מכיל מגוון של תוכן. כמו כן, המסמך מכיל סעיף שני שמתחיל באמצע העמוד הראשון. הערה והערה מופיעים גם במסמך אך אינם גלויים בתצלום המסך למטה.

![extract-content-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-1.png)

כדי להפיק את התוכן מהמסמכים שלך אתה צריך להתקשר `ExtractContent` שיטה למטה ולהעביר את הפרמטרים המתאימים.

הבסיס הבסיסי של שיטה זו כרוך במציאת בלוטות ברמת חסימת (סעיפים וטבלאות) ולהטיש אותם כדי ליצור עותקים זהים. אם צומת הסמן עבר הם ברמת בלוק, השיטה מסוגלת פשוט להעתיק את התוכן ברמה זו ולהוסיף אותו למערך.

עם זאת, אם הצמתים הם קו תחתון (ילד של פסקה) המצב הופך מורכב יותר, שכן יש צורך לפצל את פסקה בצומת קו, להיות זה ריצה, שדות סימן ספר וכו '. תוכן בבלוטות ההורות המשובחות אינו נוכח בין הסמן הוסר. תהליך זה משמש כדי להבטיח כי הצמתים באינטרנט עדיין ישמרו את התבנית של פסקת ההורים.

השיטה גם תרוץ בדיקות על הצמתים שעברו כפרמטרים וזרק יוצא מן הכלל אם הצומת אינו חוקי. הפרמטרים שיש לעבור בשיטה זו הם:

1.1 1. **StartNode** ו **EndNode**. שני הפרמטרים הראשונים הם המכשולים המגדירים איפה החילוץ של התוכן הוא להתחיל ולסיים בהתאמה. נקודות אלה יכולות להיות גם רמת בלוק ([Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) , [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) ) או רמת Inline (e.g [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) , [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/) , [BookmarkStart](https://reference.aspose.com/words/java/com.aspose.words/bookmarkstart/) וכו'):
   1.לעבור שדה אתה צריך לעבור את המתאים **FieldStart** אובייקט
   1.כדי להעביר הערות ספרים, **BookmarkStart** ו [BookmarkEnd](https://reference.aspose.com/words/java/com.aspose.words/bookmarkend/) יש להעביר את הצמתים.
   1.כדי להעביר הערות, [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) ו [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/) יש להשתמש במכשולים.
1.1 1. **IsInclusive**. Defines אם הסמן נכללים במיצוי או לא. אם אפשרות זו נקבעת false ואותה צומת או צמתים רצופים מועברים, ואז יוחזרו רשימה ריקה:

      1 אם **FieldStart** הצומת מועבר אז אפשרות זו מגדירה אם כל השדה יש לכלול או לשלול.
      1 אם **BookmarkStart** או **BookmarkEnd** Node מועבר, אפשרות זו מגדירה אם סימן הספר נכלל או רק את התוכן בין טווח הסימון.
      1 אם **CommentRangeStart** או **CommentRangeEnd** Node מועבר, אפשרות זו מגדירה אם התגובה עצמה היא לכלול או רק את התוכן בטווח ההערה.

היישום של **ExtractContent** שיטה שאתה יכול למצוא [כאן](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Programming_with_documents/Contents_management/ExtractContentHelper.java). שיטה זו תתייחס לתרחישים במאמר זה.

כמו כן, אנו מגדירים שיטה מותאמת ליצירת מסמך בקלות מנקודות מופקות. שיטה זו משמשת ברבים מהתרחישים הבאים ופשוט יוצרת מסמך חדש ומייבאת את התוכן המפלט אליו.

הדוגמה הבאה של הקוד מראה כיצד לקחת רשימה של צמתים ולהכניס אותם למסמך חדש:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "generate-document.java" >}}

## המונחים: Paragraphs

זה מדגים כיצד להשתמש בשיטה לעיל כדי להפיק תוכן בין סעיפים ספציפיים. במקרה זה, אנו רוצים לחלץ את הגוף של המכתב שנמצא במחצית הראשונה של המסמך. אנחנו יכולים לומר שזה בין הסעיפים השביעית וה-11.

הקוד הבא מבצע משימה זו. הסעיפים המתאימים מופקים באמצעות [getChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getChild-int-int-boolean) שיטה על המסמך ועברת כתבי אישום המפורטים. לאחר מכן אנו עוברים את הנקודות האלה אל **ExtractContent** שיטה ומדינה כי אלה יש לכלול במיצוי. שיטה זו תחזיר את התוכן המועתק בין נקודות אלה אשר מוכנסות לתוך מסמך חדש.

הדוגמה הבאה של הקוד מראה כיצד להפיק את התוכן בין סעיפים ספציפיים באמצעות הסעיף `ExtractContent` שיטה למעלה:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-paragraphs.java" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ הדגימה של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

מסמך הפלט מכיל את שתי הסעיפים שהופקו.

![extract-content-result-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-2.png)

## המונחים: different Types of Nodes

אנו יכולים להפיק תוכן בין כל שילובים של צמתים ברמת בלוק או איליין. בתרחיש זה להלן נוציא את התוכן בין הסעיף הראשון לשולחן בחלק השני באופן בלעדי. אנחנו מקבלים את הסמן על ידי קריאה [getFirstParagraph](https://reference.aspose.com/words/java/com.aspose.words/body/#getFirstParagraph) ו [getChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getChild-int-int-boolean) שיטה על החלק השני של המסמך כדי לשחזר את המתאים **Paragraph** ו **Table** צומת עבור וריאציות קלות בואו לשכפל את התוכן ולהכניס אותו מתחת למקור.

הדוגמה הבאה של הקוד מראה כיצד להפיק את התוכן בין פסקה ושולחן באמצעות הסעיף **ExtractContent** שיטה:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-block-level-nodes.java" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ הדגימה של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

התוכן בין הסעיף והשולחן משוכפל למטה הוא התוצאה.

![extract-content-between-paragraphs-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-3.png)

## המונחים: Paragraphs מבוסס על סגנון

ייתכן שיהיה עליך להפיק את התוכן בין פסקאות של אותו סגנון או שונה, כגון בין פסקאות המסומנים עם סגנונות כותרת.

הקוד הבא מראה כיצד להשיג זאת. זוהי דוגמה פשוטה שתוציא את התוכן בין הדוגמה הראשונה של סגנונות "Heading 1" ו-"Header 3" מבלי להוציא גם את הכותרות. כדי לעשות זאת, אנו מציבים את הפרמטר האחרון false, אשר מציין כי לא צריך לכלול את הסמן.

ביישום ראוי, זה צריך להיות מופעל בלולאה כדי לחלץ תוכן בין כל פסקאות של סגנונות אלה מן המסמך. התוכן מופק מועתק במסמך חדש.

הדוגמה הבאה של הקוד מראה כיצד להפיק תוכן בין פסקאות עם סגנונות ספציפיים באמצעות הפורמט **ExtractContent** שיטה:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-paragraph-styles.java" >}}

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "paragraphs-by-style-name.java" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ הדגימה של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

להלן התוצאה של הפעולה הקודמת.

![extract-content-between-paragraph-style-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-4.png)

## המונחים: Specific Runs

אתה יכול להפיק תוכן בין בלוטות אינטרנט כגון **Run** גם. **Runs** מסעיפים שונים ניתן לעבור כסמן. הקוד להלן מראה כיצד להפיק טקסט ספציפי בין אותו הדבר **Paragraph** צומת.

הדוגמה הבאה של הקוד מראה כיצד להפיק תוכן בין ריצות ספציפיות של אותה פסקה באמצעות אותה פסקה באמצעות הסעיף **ExtractContent** שיטה:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-runs.java" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ הדגימה של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

הטקסט מופק מוצג על הקונסולה

![extract-content-between-runs-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-5.png)

## יצירת תוכן באמצעות שדה

להשתמש בשדה כסמן, `FieldStart` צריך לעבור את הצומת. הפרמטר האחרון ל `ExtractContent` השיטה תגדיר אם כל השדה ייכלל או לא. בואו נוציא את התוכן בין שדה המיזוג המלא לפסקה במסמך. אנחנו משתמשים [moveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField(java.lang.String)) שיטת [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) מעמד. זה ישוב **FieldStart** משמו של שדה המיזוג עבר אליו.

במקרה שלנו, נגדיר את הפרמטר האחרון שעבר **ExtractContent** שיטה false להוציא את השדה מהמיצוי. אנו נעביר את התוכן המופץ ל- PDF.

הדוגמה הבאה של הקוד מראה כיצד להפיק תוכן בין שדה ספציפי לפסקה במסמך באמצעות השימוש בתוכן **ExtractContent** שיטה:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-using-field.java" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ הדגימה של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

התוכן המוציא בין השדה לפסקה, ללא שדה וסימן פסקאות שניתנו ל- PDF.

![extract-content-using-field-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-6.png)

## צילום: a Bookmark

במסמך, התוכן שמוגדר בתוך סימן ספר מוזנח על ידי `BookmarkStart` שם הספר: End nodes התוכן נמצא בין שני צמתים אלה מעלה את סימן הספר. אתה יכול לעבור את הצומתים האלה כמו כל סימן, אפילו אלה מסימנים שונים, כל עוד הסימן מתחיל מופיע לפני הסמן הסופי במסמך.

במסמך המדגם שלנו, יש לנו סימן אחד בשם "Bookmark1". התוכן של הערה זו מודגש תוכן במסמך שלנו:

![extract-content-from-bookmark-aspose-words-java-1](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-7.png)

אנו נוציא את התוכן הזה במסמך חדש באמצעות הקוד להלן. The The The **IsInclusive** אפשרות פרמטר מראה כיצד לשמור או למחוק את סימן הספר.

הדוגמה הבאה של הקוד מראה כיצד לחלץ את התוכן המתייחס לסימן ספר באמצעות הסימן **ExtractContent** שיטה:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-bookmark.java" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ הדגימה של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

הפלט מופק עם `IsInclusive` פרמטר true. גם העותק ישמר את סימן הספר.

![extract-content-from-bookmark-aspose-words-java-2](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-8.png)

הפלט מופק עם **IsInclusive** פרמטר false. העותק מכיל את התוכן, אך ללא סימן הספר.

![extract-content-from-bookmark-aspose-words-java-3](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-9.png)

## יצירת תוכן מתוך A Comment

תגובה מורכבת מ- CommentRangeStart, CommentRange End and Comment nodes. כל הצומתים האלה הם פנימיים. שני הצומת הראשונים מבססים את התוכן במסמך אשר מתייחס על ידי ההערה, כפי שנראה בתמונה למטה.

The The The **Comment** צומת עצמו הוא [InlineStory](https://reference.aspose.com/words/java/com.aspose.words/inlinestory/) זה יכול להכיל פסקאות וריצה. זה מייצג את המסר של התגובה כפי שנראה כמו בועה תגובה במחבת הביקורת. מכיוון שצומת זה הוא קו פנימי וצאצא של גוף אתה יכול גם לחלץ את התוכן מבפנים הודעה זו.

במסמך שלנו יש תגובה אחת. בואו להציג את זה על ידי הצגת סימון בכרטיסיה:

![extract-content-from-comment-aspose-words-java-1](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-10.png)

ההערה מעלה את הכותרת, הסעיף הראשון והשולחן בחלק השני. בואו נוציא את ההערה הזו למסמך חדש. The The The **IsInclusive** אפשרות תכתיב אם התגובה עצמה נשמרת או נמחקה.

דוגמה לקוד הבא מראה כיצד לעשות זאת היא למטה:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-comment-range.java" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ הדגימה של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

ראשית, הפלט המפלט עם `IsInclusive` פרמטר true. העותק יכלול גם את ההערה.

![extract-content-from-comment-aspose-words-java-2](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-11.png)

שנית, הפלט מופק עם **כולל** להגדיר false. העותק מכיל את התוכן אך ללא התגובה.

![extract-content-from-comment-aspose-words-java-12](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-12.png)

## ערכת תוכן באמצעות DocumentVisitor

Aspose.Words ניתן להשתמש לא רק ליצירת Microsoft Word מסמכים על ידי בנייתם באופן דינמי או מיזוג תבניות עם נתונים, אבל גם עבור מסמכים כדי לחלץ אלמנטים מסמך נפרדים כגון ראשים, רגלים, פסקאות, טבלאות, תמונות ואחרים. משימה אפשרית נוספת היא למצוא את כל הטקסט של פורמט או סגנון ספציפי.

השתמש [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) שיעור ליישום תרחיש שימוש זה. מחלקה זו תואמת את דפוס עיצוב המבקרים הידוע. עם [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/)אתה יכול להגדיר ולבצע פעולות מותאמות אישית הדורשות הארה על עץ המסמך.

[DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) מספק קבוצה **VisitXXX** שיטות אשר מופעלות כאשר רכיב מסמך מסוים (node) נתקל. לדוגמה, [VisitParagraphStart](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphStart-com.aspose.words.Paragraph) נקרא כאשר תחילת פסקת טקסט נמצאת ו [VisitParagraphEnd](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphEnd-com.aspose.words.Paragraph) הוא נקרא כשסיומו של סעיף טקסט נמצא. כל אחד **DocumentVisitor.VisitXXX** השיטה מקבלת את האובייקט המתאים שהוא נתקל בו כך שתוכל להשתמש בו כנדרש (לדוגמא לאחזר את הפורמט), למשל. [VisitParagraphStart](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphStart-com.aspose.words.Paragraph) ו [VisitParagraphEnd](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphEnd-com.aspose.words.Paragraph) קבל [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) אובייקט

כל אחד **DocumentVisitor.VisitXXX** שיטה מחזירה **VisitorAction** ערך השולט בהארה של צמתים. אתה יכול לבקש להמשיך את האמרה, לדלג על הצומת הנוכחי (אך להמשיך את האמרה), או לעצור את האמרה של צמתים.

אלה הם השלבים שאתה צריך לעקוב כדי לקבוע וליישם חלקים שונים של מסמך:

- יצירת מעמד נגזר [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/).
- להתגבר ולספק יישום עבור חלק או את כל **DocumentVisitor.VisitXXX** שיטות לביצוע פעולות מותאמות אישית.
- Call [Node.accept](https://reference.aspose.com/words/java/com.aspose.words/node/#accept-com.aspose.words.DocumentVisitor) על הצומת מאיפה אתה רוצה להתחיל את האמרה. לדוגמה, אם ברצונך למנות את כל המסמך, השתמש [accept(DocumentVisitor)](https://reference.aspose.com/words/java/com.aspose.words/document/#accept-com.aspose.words.DocumentVisitor).

[DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) מספק יישום ברירת מחדל עבור כל **DocumentVisitor.VisitXXX** שיטות. זה הופך את זה קל יותר ליצור מבקרים חדשים מסמך רק את השיטות הנדרשות עבור מבקר מסוים צריך להיות overridden. אין צורך לעקוף את כל שיטות המבקרים.

הדוגמה הבאה מראה כיצד להשתמש בדפוס המבקרים כדי להוסיף פעולות חדשות Aspose.Words מודל אובייקט במקרה זה, אנו יוצרים מסמך פשוט להמיר לתבנית טקסט:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-using-document-visitor.java" >}}

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "convert-doc-to-txt.java" >}}

## צילום טקסט רק רק רק

הדרכים להחזיר טקסט מן המסמך הן:

- שימוש [Document.save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) עם [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) כדי לשמור טקסט רגיל לתוך קובץ או זרם
- שימוש [Node.toString](https://reference.aspose.com/words/java/com.aspose.words/node/#toString-com.aspose.words.SaveOptions) ולהעביר את `SaveFormat.Text` פרמטר באופן פנימי, זה הופך את הטקסט לזרם זיכרון ומחזיר את המחרוזת וכתוצאה מכך
- שימוש [Node.getText](https://reference.aspose.com/words/java/com.aspose.words/node/#getText) לשלוח טקסט עם הכל Microsoft Word דמויות בקרה כולל קודים שדה
- יישום מותאם אישית [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) ביצוע מיצוי מותאם אישית

### שימוש `Node.GetText` ו `Node.ToString`

A A A מסמך Word יכול להכיל דמויות שליטה המתכנן אלמנטים מיוחדים כגון שדה, סוף התא, סוף סעיף וכו '. הרשימה המלאה של דמויות בקרת מילים אפשריות מוגדרת ב **ControlChar** מעמד. The The The [GetText](https://reference.aspose.com/words/java/com.aspose.words/node/#getText) השיטה מחזירה טקסט עם כל דמויות הדמות השולטות הקיימות בצומת.

קריאה לString מחזירה את ייצוג הטקסט הפשוט של המסמך רק ללא דמויות שליטה. למידע נוסף על ייצוא כטקסט רגיל **Using SaveFormat.Text**.

הדוגמה הבאה מציגה את ההבדל בין קריאה **GetText** ו [ToString](https://reference.aspose.com/words/java/com.aspose.words/node/#toString) שיטות על צומת:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "simple-extract-text.java" >}}

### שימוש `SaveFormat.Text`

דוגמה זו מצילה את המסמך כדלקמן:

- מסננים החוצה דמויות שדה וקודי שדה, צורה, הערה, הערות והערות
- סוף סעיף [ControlChar.Cr](https://reference.aspose.com/words/java/com.aspose.words/controlchar/) דמויות עם [ControlChar.CrLf](https://reference.aspose.com/words/java/com.aspose.words/controlchar/) שילוב
- שימוש ב UTF8 encoding

דוגמה לקוד הבא מראה כיצד לשמור מסמך בפורמט TXT:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "docx-to-txt.java" >}}

## צילום: Shapes

ייתכן שתצטרך להפיק תמונות מסמך כדי לבצע משימות מסוימות. Aspose.Words מאפשר לך לעשות זאת גם.

לדוגמה הקוד הבא מראה כיצד להפיק תמונות ממסמכים:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-images.java" >}}
