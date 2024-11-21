---
title: עבודה עם סגנונות ונושאים C#
second_title: Aspose.Words עבור .NET
articleTitle: עבודה עם סגנונות ונושאים
linktitle: עבודה עם סגנונות ונושאים
description: "מתקדם Microsoft Word עיצוב תכונות, עבודה עם סגנונות ונושאים באמצעות C#."
type: docs
weight: 110
url: /he/net/working-with-styles-and-themes/
timestamp: 2024-10-24-11-44-28
---

The The The [StyleCollection](https://reference.aspose.com/words/net/aspose.words/stylecollection/) הכיתה משמשת לניהול הגדרות בנויות וליישם הגדרות מוגדרות למשתמש לסגנונות.

## גישה לסגנונות

אתה יכול לקבל אוסף של סגנונות המוגדרים במסמך באמצעות [Document.Styles](https://reference.aspose.com/words/net/aspose.words/documentbase/styles/) רכוש. אוסף זה מחזיק הן בסגנונות המובנים והן בסגנונות המוגדרים למשתמש במסמך. סגנון מסוים ניתן להשיג על ידי שמו /alias, מזהה סגנון, או אינדקס. הדוגמה הבאה של הקוד ממחישה כיצד להגיע לאוסף של סגנונות המוגדרים במסמך.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-AccessStyles-AccessStyles.cs" >}}

## כיצד להפיק תוכן מבוסס על סגנונות

ברמה פשוטה, החזרת התוכן מבוסס על סגנונות מ מסמך Word יכול להיות שימושי לזהות, רשימה וספירת פסקאות וריצה של טקסט מעוצב בסגנון ספציפי. לדוגמה, ייתכן שיהיה עליך לזהות סוגים מסוימים של תוכן במסמך, כגון דוגמאות, כותרים, מילות מפתח, שמות דמויות ומחקרי מקרה.

כדי לקחת את זה כמה צעדים קדימה, זה יכול לשמש גם כדי למנף את המבנה של המסמך, המוגדר על ידי הסגנונות שהוא משתמש, כדי ליצור מחדש את המסמך עבור פלט אחר, כגון HTML. למעשה, כך נוצר תיעוד As נניח, שם Aspose.Words למבחן. כלי שנבנה באמצעות Aspose.Words לוקח את מקור מסמכי Word ומתפצל אותם לנושאים ברמות כותרת מסוימות. קובץ XML מיוצר באמצעות Aspose.Words משמש לבניית עץ הניווט שאתה יכול לראות בצד שמאל. ואז Aspose.Words הופך כל נושא ל-HTML.

הפתרון לחידוש הטקסט בפורמט עם סגנונות ספציפיים במסמך Word הוא בדרך כלל כלכלי ופשוט באמצעות שימוש פשוט באמצעות שימוש Aspose.Words.

### הפתרון

להראות כמה בקלות Aspose.Words טיפול חוזר תוכן מבוסס על סגנונות, בואו נסתכל על דוגמה. בדוגמה זו, אנו הולכים לאחזר טקסט מעוצב עם סגנון סעיף מסוים וסגנון אופי מתעודה מילה מדגם. ברמה גבוהה, זה יהיה כרוך: # פתיחת מסמך Word באמצעות [Document](https://reference.aspose.com/words/net/aspose.words/document/) שיעור.# מקבל אוספים של כל הסעיפים וכל פועל במסמך. בחר רק את הסעיפים הנדרשים ורץ. באופן ספציפי, אנו נחזיר טקסט מעוצב בסגנון "Heading 1" ס"ק ואת סגנון האופי "Intense Emphasis" מ מסמך זה מדגם Word.

![working-with-styles-and-themes-aspose-words-net](/words/net/working-with-styles-and-themes/working-with-styles-and-themes-1.png)


במסמך מדגם זה, הטקסט הפורמטיבי בסגנון "Heading 1" הוא "Insert Tab", "Quick Styles" ו-"Theme", והטקסט התואם לסגנון האופי "הדגשה הסנסציה" הוא מספר מקרים של טקסט כחול, מוקרן, נועז כמו "מגורים" ו"כל המראה".

### הקוד

יישום של שאילתה המבוססת על סגנון הוא פשוט למדי. Aspose.Words מסמך מודל אובייקט, כפי שהוא פשוט משתמש בכלים שכבר נמצאים במקום. שתי שיטות ייצוגיות יושמו לפתרון זה: # **ParagraphsByStyleName** - - - שיטה זו משחזרת מערך של פסקאות אלה במסמך שיש לו שם סגנון מסוים. # # # **RunsByStyleName** - - - שיטה זו משחזרת מערך של אלה רצים במסמך שיש להם שם סגנון מסוים. שתי השיטות הללו דומות מאוד, ההבדלים היחידים הם סוגי הצומת והייצוג של פרטי הסגנון בתוך הסעיף ועושים צמתים. הנה יישום של Paragraphs על ידיStylename: להלן דוגמה למצוא את כל פסקאות מעוצבות בסגנון שצוין.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ExtractContentBasedOnStyles-ParagraphsByStyleName.cs" >}}

{{% alert color="primary" %}}

יישום זה גם משתמש `Document.GetChildNodes` שיטת `Document` שיעור, אשר מחזיר אוסף של צמתים עם הסוג שצוין, אשר במקרה זה בכל פסקאות.

שימו לב לפרמטר השני של **Document.GetChildNodes** השיטה מיועדת true. הכוחות האלה **Document.GetChildNodes** שיטה לבחור מכל בלוטות הילד חוזרת, במקום לבחור את הילדים המיידיים בלבד.

{{% /alert %}}

כמו כן, ראוי לציין כי אוסף פסקאות אינו יוצר כותרת מיידית כי פסקאות טעו באוסף זה רק כאשר אתה ניגש פריטים בהם. אז, כל מה שאתה צריך לעשות הוא לעבור את האוסף, באמצעות מפעיל סטנדרטי עבור כל אחד ולהוסיף פסקאות שיש להם את הסגנון שצוין לפסקאות. עם מערך Style The The The `Paragraph` שם סגנון ניתן למצוא [Style.Name](https://reference.aspose.com/words/net/aspose.words/style/name/) רכוש [Paragraph.ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraph/paragraphformat/) אובייקט. היישום של Runs ByStyle שם הוא כמעט זהה, למרות שאנחנו בהחלט משתמשים [NodeType.Run](https://reference.aspose.com/words/net/aspose.words/nodetype/) כדי לאחזר נקודות. The The The [Font.Style](https://reference.aspose.com/words/net/aspose.words/font/style/) רכוש של [Run](https://reference.aspose.com/words/net/aspose.words/run/) האובייקט משמש לגישה למידע בסגנון **Run** צומת להלן דוגמה למצוא את כל רץ מעוצב עם הסגנון שצוין.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ExtractContentBasedOnStyles-RunsByStyleName.cs" >}}


כאשר שתי השאילתות יישמו, כל מה שאתה צריך לעשות הוא להעביר אובייקט מסמך ולקבוע את שמות הסגנון של התוכן שאתה רוצה לשחזר: להלן דוגמה לביצוע שאילתות ותוצאות תצוגה. ניתן להוריד את קובץ התבנית של דוגמה זו [כאן](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Styles.docx).

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ExtractContentBasedOnStyles-ExtractContentBasedOnStyles.cs" >}}

### תוצאות סוף

כאשר הכל נעשה, הפעלת הדגימה תציג את הפלט הבא:

![styles-and-themes-aspose-words-net](/words/net/working-with-styles-and-themes/working-with-styles-and-themes-2.png)


כפי שאתה יכול לראות, זו דוגמה פשוטה מאוד, מראה את המספר והטקסט של פסקאות שנאספו ורץ במסמך Word המדגם.

## העתק את כל הסגנונות מתבנית

ישנם מקרים שבהם אתה רוצה להעתיק את כל הסגנונות של מסמך אחד למשנהו. אתה יכול להשתמש `Document.CopyStylesFromTemplate` שיטה להעתיק סגנונות מן התבנית המפורטת במסמך. כאשר סגנונות מועתקים מתבנית למסמך, סגנונות דמויי שם במסמך מוגדרים מחדש כדי להתאים את תיאורי הסגנון בתבנית. סגנונות ייחודיים מן התבנית מועתקים אל המסמך. סגנונות ייחודיים במסמך נשארים שלמים. להיותlow code לדוגמה, כיצד להעתיק סגנונות מ מסמך אחד למשנהו.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-CopyStyles-CopyStylesFromDocument.cs" >}}

## איך להגות תכונות נושא

הוספנו בסיסי API פנימה Aspose.Words גישה למאפייני נושא. לעת עתה, זה API כולל פריטים ציבוריים:

- - נושא
- תגית: ThemeFonts
- נושא

הנה איך אתה יכול לקבל תכונות נושא:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Theme-ManipulateThemeProperties-GetThemeProperties.cs" >}}

הנה איך אתה יכול להגדיר תכונות נושא:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Theme-ManipulateThemeProperties-SetThemeProperties.cs" >}}
