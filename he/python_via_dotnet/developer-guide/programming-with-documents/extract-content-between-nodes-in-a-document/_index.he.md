---
title: "המונחים: Document nodes"
second_title: Aspose.Words עבור Python
articleTitle: יצירת תוכן בין נקודות במסמך
linktitle: "המונחים: nodes"
description: "כיצד להפיק תוכן ספציפי מטווח בתוך המסמך בקלות Python."
type: docs
weight: 140
url: /he/python-net/how-to-extract-selected-content-between-nodes-in-a-document/
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

כדי להפיק את התוכן מהמסמכים שלך אתה צריך להתקשר **המונחים: content** שיטה למטה ולהעביר את הפרמטרים המתאימים. הבסיס הבסיסי של שיטה זו כרוך במציאת צמתים ברמת בלוק (סעיפים וטבלאות) ולהסיג אותם כדי ליצור עותקים זהים. אם בלוטות הסימון חלפו הן רמת בלוק, אז השיטה מסוגלת פשוט להעתיק את התוכן ברמה זו ולהוסיף אותו למערך.

עם זאת, אם הצמתים הם קו תחתון (ילד של פסקה) המצב הופך מורכב יותר, שכן יש צורך לפצל את פסקה בצומת קו, להיות זה ריצה, שדות סימן ספר וכו '. תוכן בבלוטות ההורה המשובט לא קיים בין הסמן הוסר. תהליך זה משמש כדי להבטיח כי הצמתים באינטרנט עדיין ישמרו את התבנית של פסקת ההורים. השיטה גם תפעיל בדיקות על הצמתים שעברו כפרמטרים וזרק יוצא מן הכלל אם הצומת אינו חוקי. הפרמטרים שיש לעבור בשיטה זו הם:

1.1 1. **התחל Node** ו **סוף**. שני הפרמטרים הראשונים הם הנקודות המגדירות היכן מיצוי התוכן הוא להתחיל ולסיים בהתאמה. נקודות אלה יכולות להיות גם רמת בלוק ([Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) או רמת Inline (e.g [Run](https://reference.aspose.com/words/python-net/aspose.words/run/), [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/), [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) וכו'):
   1.לעבור שדה אתה צריך לעבור את המתאים [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) אובייקט.
   1.כדי להעביר הערות ספרים, [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) ו [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/) יש להעביר את הצמתים.
   1.כדי להעביר הערות, [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) ו [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) יש להשתמש במכשולים.
1.1 1. **כולל**. Defines אם הסמן נכללים במיצוי או לא. אם אפשרות זו נקבעת false ואותו צומת או צמתים רצופים מועברים, ואז יוחזרו רשימה ריקה:
   1 אם [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) הצומת מועבר אז אפשרות זו מגדירה אם כל השדה יש לכלול או לא נכלל.
   1 אם [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) או [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/) Node מועבר, אפשרות זו מגדירה אם סימן הספר נכלל או רק את התוכן בין טווח הסימון.
   1 אם [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) או [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) Node מועבר, אפשרות זו מגדירה אם התשובה עצמה היא לכלול או רק את התוכן בטווח ההערה.

היישום של **המונחים: content** שיטה שאתה יכול למצוא [כאן](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/DocsExamples/DocsExamples/programming_with_documents/contents_management/extract_content_helper.py). שיטה זו תתייחס לתרחישים במאמר זה.

כמו כן, אנו מגדירים שיטה מותאמת ליצירת מסמך בקלות מנקודות מופקות. שיטה זו משמשת ברבים מהתרחישים הבאים ופשוט יוצרת מסמך חדש ומייבאת את התוכן המפלט אליו.

הדוגמה הבאה של הקוד מראה כיצד לקחת רשימה של צמתים ולהכניס אותם למסמך חדש:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "generate-document.py" >}}

## המונחים: Paragraphs

זה מדגים כיצד להשתמש בשיטה לעיל כדי להפיק תוכן בין סעיפים ספציפיים. במקרה זה, אנו רוצים לחלץ את הגוף של המכתב שנמצא במחצית הראשונה של המסמך. אנו יכולים לומר שזה בין סעיף 7 ל-11.

הקוד הבא מבצע משימה זו. הסעיפים המתאימים מופקים באמצעות [CompositeNode.get_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child/) שיטה על המסמך ועברת כתבי אישום המפורטים. לאחר מכן אנו עוברים את הצמתים האלה אל **המונחים: content** שיטה ומדינה כי אלה יש לכלול במיצוי. שיטה זו תחזיר את התוכן המועתק בין נקודות אלה אשר מוכנסות לתוך מסמך חדש.

הדוגמה הבאה של הקוד מראה כיצד להפיק את התוכן בין סעיפים ספציפיים באמצעות הסעיף **המונחים: content** שיטה למעלה:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-paragraphs.py" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ הדגימה של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## המונחים: different Types of Nodes

אנו יכולים להפיק תוכן בין כל שילובים של רמת בלוק או צמתים פנימיים. בתרחיש זה להלן נוציא את התוכן בין הסעיף הראשון לשולחן בחלק השני באופן בלעדי. אנחנו מקבלים את הסמן על ידי קריאה [Body.first_paragraph](https://reference.aspose.com/words/python-net/aspose.words/story/first_paragraph/) ו [CompositeNode.get_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child/) שיטה על החלק השני של המסמך כדי לשחזר את המתאים [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) ו [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) צומת עבור וריאציות קלות בואו לשכפל את התוכן ולהכניס אותו מתחת למקור.

הדוגמה הבאה של הקוד מראה כיצד להפיק את התוכן בין פסקה לשולחן באמצעות הסעיף **המונחים: content** שיטה:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-block-level-nodes.py" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ הדגימה של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## המונחים: Paragraphs מבוסס על סגנון

ייתכן שיהיה עליך להפיק את התוכן בין פסקאות של אותו סגנון או שונה, כגון בין פסקאות המסומנים עם סגנונות כותרת.

הקוד הבא מראה כיצד להשיג זאת. זוהי דוגמה פשוטה שתוציא את התוכן בין הדוגמה הראשונה של סגנונות "Heading 1" ו-"Header 3" מבלי להוציא גם את הכותרות. כדי לעשות זאת, אנו מציבים את הפרמטר האחרון false, אשר מציין כי לא צריך לכלול את הסימון.

ביישום ראוי זה צריך להיות לרוץ בלולאה כדי לחלץ תוכן בין כל פסקאות של סגנונות אלה מן המסמך. התוכן מופק מועתק במסמך חדש.

הדוגמה הבאה של הקוד מראה כיצד להפיק תוכן בין פסקאות עם סגנונות ספציפיים באמצעות הפורמט **המונחים: content** שיטה:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-paragraph-styles.py" >}}

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "paragraphs-by-style-name.py" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ הדגימה של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## המונחים: Specific Runs

אתה יכול להפיק תוכן בין בלוטות אינטרנט כגון [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) גם. ניתן לעבור מפסקות שונות כסמן. הקוד להלן מראה כיצד להפיק טקסט ספציפי בין אותו הדבר [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) צומת.

הדוגמה הבאה של הקוד מראה כיצד להפיק תוכן בין ריצות ספציפיות של אותה פסקה באמצעות אותה פסקה באמצעות הסעיף **המונחים: content** שיטה:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-runs.py" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ הדגימה של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## יצירת תוכן באמצעות שדה

להשתמש בשדה כסמן, [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) צריך לעבור את הצומת. הפרמטר האחרון ל **המונחים: content** השיטה תגדיר אם כל השדה ייכלל או לא. בואו נוציא את התוכן בין שדה המיזוג המלא לפסקה במסמך. אנחנו משתמשים [DocumentBuilder.move_to_merge_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_merge_field/) שיטת [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) מעמד. זה ישוב [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) צומת בשם שדה המיזוג עבר אליו.

במקרה שלנו, נגדיר את הפרמטר האחרון שעבר **המונחים: content** שיטה `False` להוציא את השדה מהמיצוי. אנו נעביר את התוכן המופץ ל- PDF.

הדוגמה הבאה של הקוד מראה כיצד להפיק תוכן בין שדה מסוים לפסקה במסמך באמצעות השימוש במסמך **המונחים: content** שיטה:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-using-field.py" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ הדגימה של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## צילום: a Bookmark

במסמך התוכן שמוגדר בתוך סימן ספר מוזנח על ידי [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) ו [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/) צומת התוכן נמצא בין שני צמתים אלה מעלה את סימן הספר. אתה יכול לעבור את הצומתים האלה כמו כל סימן, אפילו אלה מסימני ספר שונים, כל עוד הסימן מתחיל מופיע לפני הסמן הסופי במסמך. אנו נוציא את התוכן הזה במסמך חדש באמצעות הקוד להלן. The The The **כולל** אפשרות פרמטר מראה כיצד לשמור או למחוק את סימן הספר.

הדוגמה הבאה של הקוד מראה כיצד לחלץ את התוכן המתייחס לסימן ספר באמצעות הסימן **המונחים: content** שיטה:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-bookmark.py" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ הדגימה של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## יצירת תוכן מתוך A Comment

תגובה מורכבת [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/), [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) ו [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) צומת כל הצומתים האלה הם פנימיים. שני צמתים הראשונים מבססים את התוכן במסמך אשר מתייחס על ידי ההערה, כפי שנראה בתמונה למטה. The The The [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) צומת עצמו הוא [InlineStory](https://reference.aspose.com/words/python-net/aspose.words/inlinestory/) זה יכול להכיל פסקאות וריצה. זה מייצג את המסר של ההערה כפי שנראה כבועה תגובה במחבת הביקורת. מכיוון שצומת זה הוא קו פנימי וצאצא של גוף אתה יכול גם לחלץ את התוכן מבפנים הודעה זו.

ההערה מעלה את הכותרת, הסעיף הראשון והשולחן בחלק השני. בואו נוציא את ההערה הזו למסמך חדש. The The The **כולל** אפשרות תכתיב אם התגובה עצמה נשמרת או נמחקה.

דוגמה לקוד הבא מראה כיצד לעשות זאת:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-comment-range.py" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ הדגימה של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## איך להוציא טקסט רק

הדרכים להחזיר טקסט מן המסמך הן:

- שימוש - [Document.save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) כדי לשמור טקסט רגיל לתוך קובץ או זרם
- שימוש - [Node.to_string](https://reference.aspose.com/words/python-net/aspose.words/node/to_string/) ולהעביר את [SaveFormat.TEXT](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#text) פרמטר באופן פנימי, זה הופך את הטקסט לזרם זיכרון ומחזיר את המיתרים וכתוצאה מכך
- שימוש - [Node.get_text](https://reference.aspose.com/words/python-net/aspose.words/node/get_text/) לשלוח טקסט עם הכל Microsoft Word דמויות בקרה כולל קודים שדה

### שימוש Node.get_text ו- Node.to_string

A A A A מסמך Word יכול להכיל דמויות שליטה המתכנן אלמנטים מיוחדים כגון שדה, סוף התא, סוף סעיף וכו '. הרשימה המלאה של דמויות בקרת מילים אפשריות מוגדרת ב [ControlChar](https://reference.aspose.com/words/python-net/aspose.words/controlchar/) מעמד. The The The [Node.get_text](https://reference.aspose.com/words/python-net/aspose.words/node/get_text/) השיטה מחזירה טקסט עם כל דמויות הדמות השולטות הקיימות בצומת.

Calling [to_string](https://reference.aspose.com/words/python-net/aspose.words/node/to_string/) מחזיר את ייצוג הטקסט הפשוט של המסמך רק ללא דמויות שליטה. למידע נוסף על הייצוא כטקסט רגיל, ראה שימוש [SaveFormat.TEXT](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#text)

הדוגמה הבאה מציגה את ההבדל בין קריאה [get_text](https://reference.aspose.com/words/python-net/aspose.words/node/get_text/) ו [to_string](https://reference.aspose.com/words/python-net/aspose.words/node/to_string/) שיטות על צומת:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "simple-extract-text.py" >}}

### שימוש `SaveFormat.Text`

דוגמה זו מצילה את המסמך כדלקמן:

- מסננים החוצה דמויות שדה וקודי שדה, צורה, הערה, הערות והערות
- סוף סעיף **ControlChar.Cr** דמויות עם **ControlChar.CrLf** שילוב
- שימוש ב- UTF8 encoding

דוגמה לקוד הבא מראה כיצד לשמור מסמך בפורמט TXT:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "docx-to-txt.py" >}}

## תמונות של Shapes

ייתכן שתצטרך להפיק תמונות מסמך כדי לבצע משימות מסוימות. Aspose.Words אפשר גם לעשות זאת.

הדוגמה הבאה של הקוד מראה כיצד להפיק תמונות מתוך מסמך:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-images.py" >}}
