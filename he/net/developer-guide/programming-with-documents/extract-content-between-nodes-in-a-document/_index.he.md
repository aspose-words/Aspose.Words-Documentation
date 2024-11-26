---
title: כיצד להפיק תוכן בין המסמכים
second_title: Aspose.Words עבור .NET
articleTitle: יצירת תוכן בין נקודות במסמך
linktitle: "המונחים: nodes"
description: "יצירת תוכן מסמך שונה באמצעות C#."
type: docs
weight: 140
url: /he/net/how-to-extract-selected-content-between-nodes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

בעת עבודה עם מסמכים, חשוב להיות מסוגל בקלות להפיק תוכן מטווח מסוים בתוך מסמך. עם זאת, התוכן עשוי לכלול אלמנטים מורכבים כגון פסקאות, טבלאות, תמונות וכו '.

ללא קשר לשאלה איזה תוכן צריך להיות מופק, השיטה כדי לחלץ את התוכן הזה תמיד ייקבע על ידי אילו צמתים נבחרים כדי להפיק תוכן בין. אלה יכולים להיות גוף טקסט שלם או טקסט פשוט פועל.

ישנם מצבים רבים אפשריים ולכן סוגים שונים של צומת לשקול בעת תמצית התוכן. לדוגמה, ייתכן שתרצה להפיק תוכן בין:

- 2 סעיפים ספציפיים
- ניהול ספציפי של טקסט
- שדות מסוגים שונים, כגון שדות מתמזגים
- התחל וסיום טווחים של סימן או תגובה
- גופים שונים של טקסט הכלולים בחלקים נפרדים

במצבים מסוימים, ייתכן אפילו צריך לשלב סוגים שונים של צומת, כגון תמצית תוכן בין פסקה לשדה, או בין ריצה וסימן ספר.

מאמר זה מספק את יישום הקוד כדי לחלץ טקסט בין צמתים שונים, כמו גם דוגמאות של תרחישים נפוצים.

{{% alert color="primary" %}}

דוגמאות אלה הן רק כמה הפגנות של אפשרויות רבות. אנו מתכננים את פונקציית החילוץ של הטקסט להיות חלק מהציבור API בעתיד, ואין צורך בקוד נוסף. בינתיים, הרגישו חופשיים לפרסם את בקשותיכם בנוגע לפונקציונליות זו. [Aspose.Words פורום](https://forum.aspose.com/c/words/8).

{{% /alert %}}

## למה להפיק תוכן

לעתים קרובות המטרה של מיצוי התוכן היא לשכפל או להציל אותו בנפרד במסמך חדש. לדוגמה, אתה יכול להפיק תוכן ו:

- העתק אותו לתוך מסמך נפרד
- להמיר חלק מסוים של מסמך ל- PDF או תמונה
- עדכון התוכן במסמך פעמים רבות
- עבודה עם תוכן מופק בנפרד משאר המסמך

ניתן להשיג זאת בקלות באמצעות Aspose.Words יישום הקוד למטה.

## יצירת תוכן Algorithm

הקוד בסעיף זה מתייחס לכל המצבים האפשריים המתוארים לעיל עם שיטה אחת כללית וניתנת לזיהוי. קווי המתאר הכלליים של טכניקה זו כוללים:

1.1 1. איסוף הצמתים שיכתיבו את תחום התוכן שיושג מהמסמכים שלכם. שחזור נקודות אלה מטופל על ידי המשתמש בקוד שלהם, בהתבסס על מה שהם רוצים להיות מופקים.
1.1 1. לעבור את הנקודות האלה אל **ExtractContent** השיטה סיפקה למטה. כמו כן, עליך לעבור פרמטר בולקטי שקובע אם נקודות אלה, הפועלות כסמן, יש לכלול במיצוי או לא.
1.1 1. קבלת רשימה של תוכן משובש (עמודים ממוחזרים) שצוין להיות מופק. אתה יכול להשתמש ברשימה זו של צמתים בכל דרך רלוונטית, למשל, יצירת מסמך חדש המכיל רק את התוכן שנבחר.

## כיצד להפיק תוכן

כדי להפיק את התוכן מהמסמכים שלך אתה צריך להתקשר **ExtractContent** שיטה למטה ולהעביר את הפרמטרים המתאימים. הבסיס הבסיסי של שיטה זו כרוך במציאת צמתים ברמת בלוק (סעיפים וטבלאות) ולהסיג אותם כדי ליצור עותקים זהים. אם בלוטות הסימון חלפו הן רמת בלוק, אז השיטה מסוגלת פשוט להעתיק את התוכן ברמה זו ולהוסיף אותו למערך.

עם זאת, אם הצמתים הם קו תחתון (ילד של פסקה) המצב הופך מורכב יותר, שכן יש צורך לפצל את פסקה בצומת קו, להיות זה ריצה, שדות סימן ספר וכו '. תוכן בבלוטות ההורה המשובט לא קיים בין הסמן הוסר. תהליך זה משמש כדי להבטיח כי הצמתים באינטרנט עדיין ישמרו את התבנית של פסקת ההורים. השיטה גם תפעיל בדיקות על הצמתים שעברו כפרמטרים וזרק יוצא מן הכלל אם הצומת אינו חוקי. הפרמטרים שיש לעבור בשיטה זו הם:

1.1 1. **StartNode** ו **EndNode**. שני הפרמטרים הראשונים הם הנקודות המגדירות היכן מיצוי התוכן הוא להתחיל ולסיים בהתאמה. נקודות אלה יכולות להיות גם רמת בלוק ([Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/) , [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/)) או רמת Inline (e.g [Run](https://reference.aspose.com/words/net/aspose.words/run/) , [FieldStart](https://reference.aspose.com/words/net/aspose.words.fields/fieldstart/) , [BookmarkStart](https://reference.aspose.com/words/net/aspose.words/bookmark/bookmarkstart/) וכו'):
   1.לעבור שדה אתה צריך לעבור את המתאים **FieldStart** אובייקט
   1.כדי להעביר הערות ספרים, **BookmarkStart** ו [BookmarkEnd](https://reference.aspose.com/words/net/aspose.words/bookmark/bookmarkend/) יש לעבור
   1.כדי להעביר הערות, [CommentRangeStart](https://reference.aspose.com/words/net/aspose.words/commentrangestart/) ו [CommentRangeEnd](https://reference.aspose.com/words/net/aspose.words/commentrangeend/) יש להשתמש
1.1 1. **IsInclusive**. Defines אם הסמן נכללים במיצוי או לא. אם אפשרות זו נקבעת false ואותו צומת או צמתים רצופים מועברים, ואז יוחזרו רשימה ריקה:
   1 אם **FieldStart** צומת מועבר אז אפשרות זו מגדירה אם כל השדה יש לכלול או לא לכלול
   1 אם **BookmarkStart** או **BookmarkEnd** Node מועבר, אפשרות זו מגדירה אם סימן הספר נכלל או רק את התוכן בין טווח הסימון.
   1 אם **CommentRangeStart** או **CommentRangeEnd** Node מועבר, אפשרות זו מגדירה אם התשובה עצמה היא לכלול או רק את התוכן בטווח ההערה.

היישום של **ExtractContent** שיטה שאתה יכול למצוא [על Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/DocsExamples/DocsExamples/Programming%20with%20Documents/Contents%20Management/Extract%20content%20helper.cs). שיטה זו תתייחס לתרחישים במאמר זה.

כמו כן, אנו מגדירים שיטה מותאמת ליצירת מסמך בקלות מנקודות מופקות. שיטה זו משמשת ברבים מהתרחישים הבאים ופשוט יוצרת מסמך חדש ומייבאת את התוכן המפלט אליו.

הדוגמה הבאה של הקוד מראה כיצד לקחת רשימה של צמתים ולהכניס אותם למסמך חדש:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "generate-document.cs" >}}

## המונחים: Paragraphs

זה מדגים כיצד להשתמש בשיטה לעיל כדי להפיק תוכן בין סעיפים ספציפיים. במקרה זה, אנו רוצים לחלץ את הגוף של המכתב שנמצא במחצית הראשונה של המסמך. אנו יכולים לומר שזה בין סעיף 7 ל-11.

הקוד הבא מבצע משימה זו. הסעיפים המתאימים מופקים באמצעות [GetChild](https://reference.aspose.com/words/net/aspose.words/compositenode/) שיטה על המסמך ועברת כתבי אישום המפורטים. לאחר מכן אנו עוברים את הצמתים האלה אל **ExtractContent** שיטה ומדינה כי אלה יש לכלול במיצוי. שיטה זו תחזיר את התוכן המועתק בין נקודות אלה אשר מוכנסות לתוך מסמך חדש.

הדוגמה הבאה של הקוד מראה כיצד להפיק את התוכן בין סעיפים ספציפיים באמצעות הסעיף `ExtractContent` שיטה למעלה:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-paragraphs.cs" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ הדגימה של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## המונחים: different Types of Nodes

אנו יכולים להפיק תוכן בין כל שילובים של רמת בלוק או צמתים פנימיים. בתרחיש זה להלן נוציא את התוכן בין הסעיף הראשון לשולחן בחלק השני באופן בלעדי. אנחנו מקבלים את הסימון על ידי קריאה [FirstParagraph](https://reference.aspose.com/words/net/aspose.words/story/firstparagraph/) ו [GetChild](https://reference.aspose.com/words/net/aspose.words/compositenode/getchild/) שיטות על החלק השני של המסמך כדי לשחזר את המתאים **Paragraph** ו **Table** צומת עבור וריאציות קלות בואו לשכפל את התוכן ולהכניס אותו מתחת למקור.

הדוגמה הבאה של הקוד מראה כיצד להפיק את התוכן בין פסקה לשולחן באמצעות הסעיף **ExtractContent** שיטה:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-block-level-nodes.cs" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ הדגימה של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## המונחים: Paragraphs מבוסס על סגנון

ייתכן שיהיה עליך להפיק את התוכן בין פסקאות של אותו סגנון או שונה, כגון בין פסקאות המסומנים בסגנונות כותרת. הקוד הבא מראה כיצד להשיג זאת. זוהי דוגמה פשוטה שתוציא את התוכן בין הדוגמה הראשונה של סגנונות "Heading 1" ו-"Header 3" מבלי להוציא גם את הכותרות. כדי לעשות זאת, אנו מציבים את הפרמטר האחרון false, אשר מציין כי לא צריך לכלול את הסימון.

ביישום ראוי זה צריך להיות לרוץ בלולאה כדי לחלץ תוכן בין כל פסקאות של סגנונות אלה מן המסמך. התוכן מופק מועתק במסמך חדש.

הדוגמה הבאה של הקוד מראה כיצד להפיק תוכן בין פסקאות עם סגנונות ספציפיים באמצעות הפורמט **ExtractContent** שיטה:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-paragraph-styles.cs" >}}

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "paragraphs-by-style-name.cs" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ הדגימה של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## המונחים: Specific Runs

אתה יכול להפיק תוכן בין בלוטות אינטרנט כגון [Run](https://reference.aspose.com/words/net/aspose.words/run/) גם. **Runs** מסעיפים שונים ניתן לעבור כסמן. הקוד להלן מראה כיצד להפיק טקסט ספציפי בין אותו הדבר **Paragraph** צומת.

הדוגמה הבאה של הקוד מראה כיצד להפיק תוכן בין ריצות ספציפיות של אותה פסקה באמצעות אותה פסקה באמצעות הסעיף **ExtractContent** שיטה:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-runs.cs" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ הדגימה של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## יצירת תוכן באמצעות שדה

להשתמש בשדה כסמן, `FieldStart` צריך לעבור את הצומת. הפרמטר האחרון ל `ExtractContent` השיטה תגדיר אם כל השדה ייכלל או לא. בואו נוציא את התוכן בין שדה המיזוג המלא לפסקה במסמך. אנחנו משתמשים [MoveToMergeField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetomergefield/) שיטת [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) מעמד. זה ישוב **FieldStart** צומת בשם שדה המיזוג עבר אליו.

במקרה שלנו, נגדיר את הפרמטר האחרון שעבר **ExtractContent** שיטה false להוציא את השדה מהמיצוי. אנו נעביר את התוכן המופץ ל- PDF.

הדוגמה הבאה של הקוד מראה כיצד להפיק תוכן בין שדה מסוים לפסקה במסמך באמצעות השימוש במסמך **ExtractContent** שיטה:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-using-field.cs" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ הדגימה של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## צילום: a Bookmark

במסמך התוכן שמוגדר בתוך סימן ספר מוזנח על ידי `BookmarkStart` שם הספר: End nodes התוכן נמצא בין שני צמתים אלה מעלה את סימן הספר. אתה יכול לעבור את הצומתים האלה כמו כל סימן, אפילו אלה מסימני ספר שונים, כל עוד הסימן מתחיל מופיע לפני הסמן הסופי במסמך. אנו נוציא את התוכן הזה במסמך חדש באמצעות הקוד להלן. The The The **IsInclusive** אפשרות פרמטר מראה כיצד לשמור או למחוק את סימן הספר.

הדוגמה הבאה של הקוד מראה כיצד לחלץ את התוכן המתייחס לסימן ספר באמצעות הסימן **ExtractContent** שיטה:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-bookmark.cs" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ הדגימה של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## יצירת תוכן מתוך A Comment

תגובה מורכבת מההערהRangeStart, CommentRange End and Comment nodes. כל הצומתים האלה הם פנימיים. שני צמתים הראשונים מבססים את התוכן במסמך אשר מתייחס על ידי ההערה, כפי שנראה בתמונה למטה.

The The The **Comment** צומת עצמו הוא [InlineStory](https://reference.aspose.com/words/net/aspose.words/inlinestory/) זה יכול להכיל פסקאות וריצה. זה מייצג את המסר של ההערה כפי שנראה כבועה תגובה במחבת הביקורת. מכיוון שצומת זה הוא קו פנימי וצאצא של גוף אתה יכול גם לחלץ את התוכן מבפנים הודעה זו.

ההערה מעלה את הכותרת, הסעיף הראשון והשולחן בחלק השני. בואו נוציא את ההערה הזו למסמך חדש. The The The **IsInclusive** אפשרות תכתיב אם התגובה עצמה נשמרת או נמחקה.

דוגמה לקוד הבא מראה כיצד לעשות זאת:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-comment-range.cs" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ הדגימה של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## כיצד להפיק תוכן באמצעות DocumentVisitor

השתמש [DocumentVisitor](https://reference.aspose.com/words/net/aspose.words/documentvisitor/) שיעור ליישום תרחיש זה של שימוש. מחלקה זו תואמת את דפוס עיצוב המבקרים הידוע. עם **DocumentVisitor** **,** אתה יכול להגדיר ולבצע פעולות מותאמות אישית הדורשות הארה על עץ המסמך.

**DocumentVisitor** מספק קבוצה **VisitXXX** שיטות אשר מופעלות כאשר רכיב מסמך מסוים (node) נתקל. לדוגמה, [VisitParagraphStart](https://reference.aspose.com/words/net/aspose.words/documentvisitor/visitparagraphstart/) נקרא כאשר תחילת פסקת טקסט נמצאה ו [VisitParagraphEnd](https://reference.aspose.com/words/net/aspose.words/documentvisitor/visitparagraphend/) הוא נקרא כשסיומו של סעיף טקסט נמצא. כל אחד **DocumentVisitor.VisitXXX** השיטה מקבלת את האובייקט המתאים שהוא נתקל בו כך שתוכל להשתמש בו כנדרש (לדוגמא לאחזר את הפורמט), למשל. **DocumentVisitor.VisitParagraphStart** ו **DocumentVisitor.VisitParagraphEnd** קבל [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/) אובייקט.

כל אחד **DocumentVisitor.VisitXXX** שיטה מחזירה [VisitorAction](https://reference.aspose.com/words/net/aspose.words/visitoraction/) ערך השולט בהארה של צמתים. אתה יכול לבקש או להמשיך את האמרה, לדלג על הצומת הנוכחי (אך להמשיך את האמרה), או לעצור את האמרה של צמתים.

אלה הם השלבים שאתה צריך לעקוב כדי לקבוע ולבצע חלקים שונים של מסמך:

- יצירת מעמד הנגזר **DocumentVisitor**
- להתגבר ולספק יישום עבור חלק או את כל **DocumentVisitor.VisitXXX** שיטות לביצוע פעולות מותאמות אישית
- Call [Node.Accept](https://reference.aspose.com/words/net/aspose.words/node/accept/) על הצומת מאיפה אתה רוצה להתחיל את האמרה, למשל, אם אתה רוצה לספר את כל המסמך, להשתמש [Document.Accept](https://reference.aspose.com/words/net/aspose.words/document/accept/)

**DocumentVisitor** מספק יישום ברירת מחדל עבור כל **DocumentVisitor.VisitXXX** שיטות. זה הופך את זה קל יותר ליצור מבקרים חדשים לתעד רק את השיטות הנדרשות עבור המבקר הספציפי צריך להיות overridden. אין צורך לעקוף את כל שיטות המבקרים.

הדוגמה הבאה מראה כיצד להשתמש בדפוס המבקרים כדי להוסיף פעולות חדשות Aspose.Words מודל אובייקט במקרה זה, אנו יוצרים מסמך פשוט להמיר לתבנית טקסט:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-using-document-visitor.cs" >}}

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "convert-doc-to-txt.cs" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ הדגימה של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## איך להוציא טקסט רק

הדרכים להחזיר טקסט מן המסמך הן:

- שימוש - [Document.Save](https://reference.aspose.com/words/net/aspose.words/document/save/) עם [SaveFormat.Text](https://reference.aspose.com/words/net/aspose.words/saveformat/) כדי לשמור טקסט רגיל לתוך קובץ או זרם
- שימוש - [Node.ToString](https://reference.aspose.com/words/net/aspose.words/node/tostring/) ולהעביר את **SaveFormat.Text** פרמטר באופן פנימי, זה הופך את הטקסט לזרם זיכרון ומחזיר את המיתרים וכתוצאה מכך
- שימוש - [Node.GetText](https://reference.aspose.com/words/net/aspose.words/node/gettext/) לשלוח טקסט עם הכל Microsoft Word דמויות בקרה כולל קודים שדה
- יישום מותאם אישית [DocumentVisitor](https://reference.aspose.com/words/net/aspose.words/documentvisitor/) ביצוע מיצוי מותאם אישית

### שימוש `Node.GetText` ו `Node.ToString`

A A A A מסמך Word יכול להכיל דמויות שליטה המתכנן אלמנטים מיוחדים כגון שדה, סוף התא, סוף סעיף וכו '. הרשימה המלאה של דמויות בקרת מילים אפשריות מוגדרת ב **ControlChar** מעמד. The The The **Node.GetText** השיטה מחזירה טקסט עם כל דמויות הדמות השולטות הקיימות בצומת.

Calling **ToString** מחזיר את ייצוג הטקסט הפשוט של המסמך רק ללא דמויות שליטה. לקבלת מידע נוסף על הייצוא כטקסט פשוט ראה לאחר סעיף **"השתמשו ב- SaveFormat.Text"**.

הדוגמה הבאה מציגה את ההבדל בין קריאה **GetText** ו **ToString** שיטות על צומת:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "simple-extract-text.cs" >}}

### שימוש `SaveFormat.Text`

דוגמה זו מצילה את המסמך כדלקמן:

- מסננים החוצה דמויות שדה וקודי שדה, צורה, הערה, הערות והערות
- סוף סעיף **ControlChar.Cr** דמויות עם **ControlChar.CrLf** שילוב
- שימוש ב- UTF8 encoding

דוגמה לקוד הבא מראה כיצד לשמור מסמך בפורמט TXT:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "docx-to-txt.cs" >}}

## תמונות של Shapes

ייתכן שתצטרך להפיק תמונות מסמך כדי לבצע משימות מסוימות. Aspose.Words אפשר גם לעשות זאת.

הדוגמה הבאה של הקוד מראה כיצד להפיק תמונות מתוך מסמך:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-images.cs" >}}
