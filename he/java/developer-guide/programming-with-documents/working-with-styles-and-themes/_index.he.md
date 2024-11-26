---
title: עבודה עם סגנונות ונושאים
second_title: Aspose.Words עבור Java
articleTitle: עבודה עם סגנונות ונושאים
linktitle: עבודה עם סגנונות ונושאים
description: "שיפור Microsoft Word עיצוב תכונות, עבודה עם סגנונות ונושאים באמצעות Java."
type: docs
weight: 110
url: /he/java/working-with-styles-and-themes/
timestamp: 2024-01-27-14-07-04
---

The The The [StyleCollection](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) הכיתה משמשת לניהול הגדרות בנויות וליישם הגדרות מוגדרות למשתמש לסגנונות.

## כיצד להפיק תוכן מבוסס על סגנונות

ברמה פשוטה, החזרת התוכן מבוסס על סגנונות מ מסמך Word יכול להיות שימושי לזהות, רשימה ספירה פסקאות וריצה של טקסט מעוצב בסגנון ספציפי. לדוגמה, ייתכן שיהיה עליך לזהות סוגים מסוימים של תוכן במסמך, כגון דוגמאות, כותרים, מילות מפתח, שמות דמויות ומחקרי מקרה.

כדי לקחת את זה כמה צעדים קדימה, זה יכול לשמש גם כדי למנף את המבנה של המסמך, המוגדר על ידי הסגנונות שהוא משתמש, כדי לנסח מחדש את המסמך עבור פלט אחר, כגון HTML. למעשה, כך נוצר תיעוד As נניח, שם Aspose.Words למבחן. כלי שנבנה באמצעות Aspose.Words לוקח את מקור מסמכי Word ומתפצל אותם לנושאים ברמות כותרת מסוימות. קובץ XML מיוצר באמצעות Aspose.Words משמש לבניית עץ הניווט שאתה יכול לראות בצד שמאל. ואז Aspose.Words הופך כל נושא ל-HTML. הפתרון לחידוש הטקסט בפורמט עם סגנונות ספציפיים במסמך Word הוא בדרך כלל כלכלי ופשוט באמצעות שימוש פשוט באמצעות שימוש Aspose.Words.

להראות כמה בקלות Aspose.Words טיפול חוזר תוכן מבוסס על סגנונות, בואו נסתכל על דוגמה. בדוגמה זו, אנו הולכים לאחזר טקסט מעוצב עם סגנון סעיף מסוים וסגנון אופי של מסמך מדגם Word.

ברמה גבוהה, זה יהיה כרוך:

1.1 1. פתיחת מסמך Word באמצעות [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) מעמד.
1.1 1. מקבל אוספים של כל הסעיפים וכל פועל במסמך.
1.1 1. בחר רק את הסעיפים הנדרשים ורץ.

באופן ספציפי, אנו נחזיר טקסט מעוצב בסגנון "Heading 1" ס"ק ואת סגנון האופי "Intense Emphasis" מ מסמך זה מדגם Word

![working-with-styles-aspose-words-java-1](/words/java/working-with-styles-and-themes/working-with-styles-1.png)

במסמך מדגם זה, הטקסט הפורמטיבי בסגנון "Heading 1" סעיף הוא "Insert Tab", "Quick Styles" ו-"Theme", והטקסט המתואם לסגנון האופי "הדגשה" הוא מספר מקרים של כחול, מוקרן, טקסט נועז כמו "מגורים" ו"כל המראה".

יישום של שאילתה המבוססת על סגנון הוא פשוט למדי. Aspose.Words מסמך מודל אובייקט, כפי שהוא פשוט משתמש בכלים שכבר נמצאים במקום. שתי שיטות ייצוגיות יושמו לפתרון זה:

1.1 1. **ParagraphsByStyleName** - - - שיטה זו משחזרת מערך של פסקאות אלה במסמך שיש לו שם סגנון מסוים.
1.1 1. **RunsByStyleName** - - - שיטה זו משחזרת מערך של אלה רצים במסמך שיש להם שם סגנון מסוים.

שתי השיטות הללו דומות מאוד, ההבדלים היחידים הם סוגי הצומת והייצוג של פרטי הסגנון בתוך הסעיף ועושים צמתים. הנה יישום של Paragraphs ByStyle שם המוצג בדוגמה הקוד שניתן להלן כדי למצוא את כל פסקאות מעוצבות בסגנון שצוין.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-paragraphsByStyleName.java" >}}

יישום זה גם משתמש [Document.getChildNodes()](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) שיטת `Document` שיעור, אשר מחזיר אוסף של כל בלוטות הילד המיידיות.

כמו כן, ראוי לציין כי אוסף פסקאות אינו יוצר כותרת מיידית כי פסקאות טעונים באוסף זה רק כאשר אתה ניגש פריטים בהם. אז, כל מה שאתה צריך לעשות הוא לעבור את האוסף, באמצעות מפעיל סטנדרטי עבור כל אחד ולהוסיף פסקאות שיש להם את הסגנון שצוין לפסקאות. עם מערך Style The The The `Paragraph` שם סגנון ניתן למצוא [Style.getName()](https://reference.aspose.com/words/java/com.aspose.words/style/#getName) רכוש [Paragraph.getParagraphFormat()](https://reference.aspose.com/words/java/com.aspose.words/style/#getParagraphFormat) אובייקט

היישום של Runs ByStyle שם הוא כמעט זהה, למרות שאנחנו בהחלט משתמשים `NodeType.Run` עקבו אחרי Nodes The The The [Font.getStyle()](https://reference.aspose.com/words/java/com.aspose.words/font/#getStyle) רכוש של [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) האובייקט משמש לגישה למידע בסגנון **Run** צומת

הדוגמה הקודית הבאה מוצאת את כל הפונקציות מעוצבות בסגנון שצוין.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-runsByStyleName.java" >}}

{{% alert color="primary" %}}

כאשר שתי השאילתות יישמו, כל מה שאתה צריך לעשות הוא להעביר אובייקט מסמך ולקבוע את שמות הסגנון של התוכן שאתה רוצה לשחזר:

{{% /alert %}}

דוגמא הקוד הבאה מפעילה שאילתות ותוצאות תצוגה.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-ExtractContentBasedOnStyles.java" >}}

כאשר הכל נעשה, הפעלת הדגימה תציג את הפלט הבא:

![working-with-styles-aspose-words-java-2](/words/java/working-with-styles-and-themes/working-with-styles-2.png)

כפי שאתה יכול לראות, זו דוגמה פשוטה מאוד, מראה את המספר והטקסט של פסקאות שנאספו ורץ במסמך Word המדגם.

## המונחים: style Separator to Put different Paragraph

ניתן להוסיף לסיומו של סעיף באמצעות Ctrl + Alt + Enter Keyboard Shortcut into MS Word. תכונה זו מאפשרת שני סגנונות שונים של פסקה בשימוש בפסקה מודפסת הגיונית אחת. אם אתה רוצה טקסט מההתחלה של כותרת מסוימת להופיע בטבלה של תוכן אבל לא רוצה את הכותרת כולה בטבלה של תוכן, אתה יכול להשתמש תכונה זו

הדוגמה הבאה של הקוד מראה כיצד להוסיף מפריד סגנון כדי להציב סגנונות שונים של פסקה

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ParagraphInsertStyleSeparator.java" >}}

## העתק את כל הסגנונות מתבנית

ישנם מקרים שבהם אתה רוצה להעתיק את כל הסגנונות של מסמך אחד למשנהו. אתה יכול להשתמש `Document.CopyStylesFromTemplate` שיטה להעתיק סגנונות מן התבנית המפורטת במסמך. כאשר סגנונות מועתקים מתבנית למסמך, סגנונות דמויי שם במסמך מוגדרים מחדש כדי להתאים את תיאורי הסגנון בתבנית. סגנונות ייחודיים מן התבנית מועתקים אל המסמך. סגנונות ייחודיים במסמך נשארים שלמים

הדוגמה הבאה של הקוד מראה כיצד להעתיק סגנונות ממכתב אחד למשנהו.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CopyStylesFromDocument.java" >}}

## איך להגות תכונות נושא

הוספנו בסיסי API פנימה Aspose.Words גישה למאפייני נושא. לעת עתה, זה API כולל את האובייקטים הציבוריים הבאים:

- - נושא
- תגית: ThemeFonts
- תגית: ThemeColors

הנה איך אתה יכול לקבל תכונות נושא:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Theme-GetThemeProperties-GetThemeProperties.java" >}}

הנה איך אתה יכול להגדיר תכונות נושא:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Theme-SetThemeProperties-SetThemeProperties.java" >}}
