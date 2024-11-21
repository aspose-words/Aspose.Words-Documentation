---
title: עבודה עם שולחן של תוכן Java
second_title: Aspose.Words עבור Java
articleTitle: עבודה עם שולחן של תוכן
linktitle: עבודה עם שולחן של תוכן
description: "טבלה של שדה תוכן בפרטים כיצד ליצור ולשנות `TOC` שדה באמצעות Java."
type: docs
weight: 170
url: /he/java/working-with-table-of-contents/
timestamp: 2024-10-21-11-17-44
---

לעתים קרובות תעבוד עם מסמכים המכילים שולחן תוכן (TOC). שימוש Aspose.Words באפשרותך להוסיף שולחן תוכן משלך או לבנות מחדש לחלוטין את שולחן התוכן הקיים במסמך באמצעות רק כמה שורות קוד.

מאמר זה מתאר כיצד לעבוד עם שולחן התוכן שדה ומדגים:

- כיצד להוסיף מותג חדש
- עדכונים חדשים או קיימים במסמך.
- מתגי ציין לשלוט בפורמט ובמבנה הכולל של TOC.
- כיצד לשנות את הסגנונות ואת המראה של שולחן התוכן.
- כיצד להסיר כל `TOC` שטח יחד עם כל הערכים מהמסמכים.

## הכנס את שולחן התוכן באופן matically

אתה יכול להוסיף `TOC` (שולחן התוכן) לתוך המסמך במיקום הנוכחי על ידי קריאה [InsertTableOfContents](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTableOfContents-java.lang.String) שיטה.

ניתן לבנות טבלה של תוכן במסמך Word במספר דרכים ותבנית באמצעות מגוון אפשרויות. מתגי השדה שאתה עובר אל השיטה שולטים בדרך שבה השולחן בנוי ומוצג במסמך שלך.

מתגי ברירת המחדל המשמשים `TOC` נכנס Microsoft Word הם **""13\h/z\u"**. תיאורים של מתגים אלה, כמו גם רשימה של מתגים נתמך ניתן למצוא מאוחר יותר במאמר. אתה יכול להשתמש מדריך זה כדי להשיג את מתגים הנכונים או אם יש לך כבר מסמך המכיל דומה `TOC` אתה רוצה שאתה יכול להציג קודים שדה (*ALT+F9*) ולהעתיק את המתגים ישירות מהשדה.

הדוגמה הבאה של הקוד מראה כיצד להכניס טבלת תכנים לתוך מסמך:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertATableOfContentsField-InsertATableOfContentsField.java" >}}

הדוגמה הבאה של הקוד ממחישה כיצד להכניס שולחן של תוכן (TOC) למסמך באמצעות סגנונות כותרת כערכים:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertATableOfContentsUsingHeadingStyles-InsertATableOfContentsUsingHeadingStyles.java" >}}

הקוד מדגים את שולחן התוכן החדש מוכנס לתוך מסמך ריק. The The The [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) לאחר מכן, הכיתה משמשת כדי להוסיף כמה תוכן מדגם פורמט עם סגנונות כותרת מתאימים המשמשים כדי לסמן את התוכן כדי להיות כלול ב- TOC. הקווים הבאים מבלבלים את `TOC` על ידי עדכון השדות ואת פריסת העמוד של המסמך.

![insert-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-1.png)

{{% alert color="primary" %}}

ללא שיטות המשמשות בדוגמה, כאשר אתה פותח את מסמך הפלט, תמצא את `TOC` שדה, אך ללא תוכן גלוי. זה בגלל `TOC` השדה הוחדר אך עדיין לא מיושב עד שהוא מעודכן במסמך. מידע נוסף על כך נדון בסעיף הבא.

{{% /alert %}}

## עדכון שולחן התוכן

Aspose.Words מאפשר לך לעדכן לחלוטין `TOC` עם רק כמה שורות קוד. זה יכול להיעשות כדי למפות חדש `TOC` או לעדכן קיים `TOC` לאחר שינויים במסמך נעשו.

יש להשתמש בשתי השיטות הבאות כדי לעדכן את `TOC` שדות במסמך:

1. [Document.updateFields()](https://reference.aspose.com/words/java/com.aspose.words/Document#updateFields())
1. [Document.updatePageLayout()](https://reference.aspose.com/words/java/com.aspose.words/Document#updatePageLayout())

אנא שימו לב כי שתי שיטות עדכון אלה נדרשות כדי להיקרא בסדר זה. אם הפוך את שולחן התוכן יהיה מאוכלס, אבל לא יופיעו מספרי דף. ניתן לעדכן כל מספר של TOCs שונים. שיטות אלה יעודכנו אוטומטית את כל ה- TOCs שנמצאו במסמך.

דוגמה לקוד הבא מראה כיצד לבנות מחדש לחלוטין `TOC` שדות במסמך על ידי הפצת עדכוני שדה:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertATableOfContentsField-UpdateTableOfContents.java" >}}

הקריאה הראשונה [Document.updateFields()](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields) נבנה את <span notrans="<span notrans=" `TOC`"=""></span>" כל הודעות הטקסט מאוכלסות וה `TOC` נראה כמעט שלם. הדבר היחיד שחסר לו הוא מספרי העמוד שכרגע מוצגים ב"?

הקריאה השניה [Document.updatePageLayout()](https://reference.aspose.com/words/java/com.aspose.words/document/#updatePageLayout) נבנה את הפריסה של המסמך בזיכרון. זה צריך להיעשות כדי לאסוף את מספרי העמוד של הערכים. מספרי העמוד הנכון המחושבים מהקריאה זו מוכנסים ל- TOC.

## השתמש ב-Switches to Control Table of Contents Behavior

כמו בכל תחום אחר, `TOC` שדה יכול לקבל מתגים המוגדרים בתוך קוד השדה השולט כיצד נבנה שולחן התוכן. מתגים מסוימים משמשים כדי לשלוט אילו ערכים כלולים ובאיזו רמה בעוד אחרים משמשים כדי לשלוט במראה של TOC. ניתן לשלב את ה-Switchs יחד כדי לאפשר יצירת שולחן מורכב של תוכן.

![ccontrol-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-2.png)


כברירת מחדל, מתגים אלה לעיל כלולים בעת הוספת ברירת מחדל `TOC` במסמך. A A A `TOC` ללא מתגים יכלול תוכן מסגנונות הכותרת המובנות (כמו אם מתג ה-O מוגדר).

זמין `TOC` מתגים הנתמכות על ידי Aspose.Words להלן והשימושים שלהם מתוארים בפירוט. ניתן לחלק אותם לחלקים נפרדים המבוססים על סוגם. המתגים בסעיף הראשון מגדירים מה התוכן לכלול בסעיף הראשון `TOC` והמתגים בחלק השני שולטים במראה של TOC.

אם מתג לא מופיע כאן אז זה לא נתמך. כל המתגים יתמכו בגרסאות עתידיות. אנו מוסיפים תמיכה נוספת לכל שחרור.

### תגית: Switches

|  Switch Switch Switch Switch | תיאור תיאור |
|  :-  |  :-  |
| **Heading Styles** <br/> (O Switch) <br/> | <p>מתג זה מגדיר כי `TOC` צריך להיבנות מסגנונות הכותרת המובנות. In In In Microsoft Word, שם הסרטון: Heading 1 - Heading 9 Aspose.Words סגנונות אלה מיוצגים על ידי enumeration התואם. הגדרה זו מייצגת מזהה עצמאי מקומי של סגנון, למשל, `StyleIdentifier.Heading1` מייצג סגנון אחד. באמצעות זה, את הפורמט והמאפיינים של הסגנון ניתן לשחזר מתוך אוסף סגנון של המסמך. ניתן להחזיר את שיעור הסגנון המתאים מן `Document.Styles` אוסף על ידי שימוש במאפיין האינדקס של הקלד StyleIdentifier.</p>

<p>![style-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-3.png)</p>

<p><br/><br/>כל תוכן מעוצב עם סגנונות אלה נכלל בטבלה של תוכן. רמת הכותרת תגדיר את הרמה ההיררכית המקבילה של הכניסה ב- TOC. לדוגמה, פסקה עם ראש סגנון 1 תתייחס לרמה הראשונה של `TOC` בעוד שפסקה עם ראש 2 תטופל כרמה הבאה בהיררכיה וכך הלאה.</p>
 |
| **Outline Levels** <br/> (\U מתג) <br/> | <p>כל סעיף יכול להגדיר רמת קווי מתאר תחת אפשרויות סעיף.</p>

<p>![modify-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-4.png)</p>

<p><br/><br/>הגדרה זו תכתיב באיזו רמה יש להתייחס לסעיף זה בהיררכיה של המסמך. זהו תרגול נפוץ המשמש כדי לבנות בקלות את הפריסה של מסמך. היררכיה זו ניתן לראות על ידי שינוי בתצוגת Outline Microsoft Word. בדומה לסגנונות כותרת, ניתן להיות 1-9 רמות מתאר בנוסף לרמה "Body Text". רמות 1 - 9 יופיעו `TOC` ברמה המקבילה של ההיררכיה <br/>כל תוכן עם רמת מתאר מוגדר בסגנון פסקה או ישירות על הסעיף עצמו נכלל ב- TOC. In In In Aspose.Words רמת המתאר מיוצגת על ידי `ParagraphFormat.OutlineLevel` רכושו של ה- Paragraph node רמת המתאר של סגנון פסקה מיוצגת באותו אופן על ידי `Style.ParagraphFormat` רכוש.</p>

<p>{{% alert color="primary" %}}</p>

<p>שים לב כי סגנונות כותרת בנויים כגון Heading 1 יש סט חובה ברמת מתווה בהגדרות סגנון.</p>

<p>{{% /alert %}}</p>
 |
| **Custom Styles** <br/> (\T מתג) <br/> | <p>מתג זה יאפשר סגנונות מותאמים אישית לשמש בעת איסוף ערכים לשימוש ב- TOC. זה משמש לעתים קרובות בשילוב עם מתג "O" כדי לכלול סגנונות מותאם אישית יחד עם סגנונות כותרת מובנה ב TOC. <br/>הפרמטרים של מתג צריך להיות סגור בתוך סימני דיבור. סגנונות מותאמים רבים ניתן לכלול, עבור כל סגנון, את השם צריך להיות שצוין ואחריו תואר ואחריו הרמה כי הסגנון צריך להופיע. `TOC` כמו. סגנונות נוספים מופרדים גם על ידי קודמה. <br/>למשל</p>

<p>{{< highlight csharp >}}
{ TOC \o "1-3" \t "CustomHeading1, 1,   CustomHeading2, 2"}{{< /highlight >}}</p>

<p>יהיה להשתמש בתוכן מעוצב עם CustomHeading1 כתוכן 1 ברמה `TOC` ו- CustomHeading2 כרמה 2.</p>
 |
| שדות TC <br/> (\F ו-L Switches) <br/> | <p>בגרסאות ישנות יותר Microsoft Word, הדרך היחידה לבנות `TOC` היה השימוש בשדות TC. שדות אלה מוכנסים בתוך המסמך גם כאשר מוצגים קודי שדה. הם כוללים את הטקסט שיש להציג בכניסה ואת `TOC` נבנה מהם. פונקציונליות זו אינה בשימוש לעתים קרובות מאוד, אך עשויה עדיין להיות מועילה במקרים מסוימים כדי לכלול ערכים. `TOC` מה שלא ניתן לראות במסמך. <br/>כאשר מוכנסים שדות אלה מופיעים חבויים גם כאשר קודים שדה מוצגים. לא ניתן לראות אותם מבלי להציג תוכן נסתר. על מנת לראות את הפורמט של הצגת שדות אלה יש לבחור.</p>

<p>![setup-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-5.png)</p>

<p>שדות אלה יכולים להיות מוכנסים לתוך מסמך בכל עמדה כמו כל שדה אחר והם מיוצגים על ידי השדה. `FieldType.FieldTOCEntry` אזהרה.<br/>מתג ה-F ב `TOC` משמש כדי לציין כי שדות TC יש להשתמש כמו ערכים. המעבר מעצמו ללא מזהה נוסף פירושו שכל שדה TC במסמך ייכלל. כל פרמטר נוסף, לעתים קרובות מכתב אחד, יסביר שרק שדות TC שיש להם מתג תואם / מתג f יהיה כלול ב TOC. לדוגמה *</p>

<p>{{< highlight csharp >}}
{ TOC \f t }{{< /highlight >}}</p>

<p>יכלול רק שדות TC כגון</p>

<p>{{< highlight csharp >}}
{ TC \f t }{{< /highlight >}}</p>

<p>The The The `TOC` לשדה יש גם מתג קשור, "\L" מתג מפרט כי רק שדה TC עם רמות בטווח שצוין נכללים.</p>

<p>![table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-6.png)</p>

<p><br/><br/>The The The `TC` גם לשדות עצמם יש {several, `multiple`, a few, `many`, numerous} מתגים להגדיר. אלה הם:</p>

<p>F - הסבר למעלה. *</p>

<p>תגית: Defines that Level in the `TOC` שדה TC זה יופיע. A A A `TOC` שימוש באותו מתג יכלול רק שדה TC זה אם הוא בטווח שצוין.</p>

<p>תגית: העמוד מספר על כך `TOC` הכניסה אינה מוצגת. קוד דוגמאות של איך להכניס שדות TC ניתן למצוא בסעיף הבא.</p>
 |

### תגית: Switches

|  Switch Switch Switch Switch | תיאור תיאור |
|  :-  |  :-  |
| **Omit Page Numbers** <br/> (N Switch) | <p>מתג זה משמש כדי להסתיר מספרי דף עבור רמות מסוימות של TOC. לדוגמה, אתה יכול להגדיר</p>

<p>{{< highlight csharp >}}
{TOC \o "1-4" \n "3-4" }{{< /highlight >}}</p>

<p>ומספר העמודים על ערכים של רמות 3 וארבעה יסתרו יחד עם המנהיגים (אם יש כאלה). כדי לציין רק רמה אחת יש להשתמש בטווח, לדוגמה, "1-1" לא לכלול מספרי דפים רק לרמה הראשונה. <br/>אספקת כל טווח ברמה לא יניחה מספרי דף עבור כל הרמות ב- TOC. זה שימושי להגדיר בעת ייצוא מסמך ל- HTML או פורמט דומה. הסיבה לכך היא כי לפורמטים המבוססים על HTML אין מושג של דף ולכן אין צורך במספר דפים.</p>

<p>![table-of-contents-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-7.png)</p>
 |
| המונחים: Hyperlinks <br/> (H Switch) | <p>מתג זה מפרט כי `TOC` ערכים מוכנסים כמו Hyperlinks. בעת צפייה במסמך Microsoft Word ערכים אלה עדיין מופיעים כטקסט רגיל בתוך `TOC` אבל הם היפר-קישורים ובכך ניתן להשתמש כדי לנווט את המיקום של הכניסה המקורית במסמך על ידי שימוש *Ctrl + שמאל Click *. Microsoft Word. כאשר מתג זה כלול, קישורים אלה נשמרים גם בפורמטים אחרים. לדוגמה, בפורמטים מבוססי HTML כולל EPUB והפך פורמטים כגון PDF ו- PDF. XPS, אלה ייצואו כקשרי עבודה. <br/>ללא שינוי זה, `TOC` בכל הפלטים האלה ייצואו כטקסט פשוט ולא ימחיש התנהגות זו. אם מסמך נפתח ב- MS Word הטקסט של הערכים לא יהיה קליק בדרך זו, אבל מספרי העמוד עדיין ניתן להשתמש כדי לנווט את הכניסה המקורית.</p>

<p>![tree-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-8.png)</p>
 |
| **Set Separator Character** <br/> (\P Switch) <br/> | <p>מתג זה מאפשר את התוכן המפריד את הכותרת של כניסה ועמוד מספרינג להיות שונה בקלות ב- TOC. המבדיל לשימוש צריך להיות מוגדר לאחר מתג זה וסגור סימני דיבור. <br/>בניגוד למה שמתועד בתיעוד Office, ניתן להשתמש רק דמות אחת במקום עד 5. זה חל גם על MS Word וגם Aspose.Words. <br/>באמצעות מתג זה לא מומלץ כפי שהוא לא מאפשר הרבה שליטה על מה שהוא השתמש כדי להפריד ערכים ומספרי דפים ב- TOC. במקום זאת, מומלץ לערוך את המתאים `TOC` סגנון כגון `StyleIdentifier.TOC1` משם לערוך את סגנון המנהיג עם גישה לחברי גפן ספציפיים וכו '. פרטים נוספים על איך לעשות זאת ניתן למצוא מאוחר יותר במאמר.</p>

<p>![list-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-9.png)</p>
 |
| **Preserve Tab Entries** <br/> (W Switch) | <p>באמצעות מתג זה יהיה לציין כי כל ערכים שיש להם אופי הכרטיסייה, למשל, כותרת שיש לו כרטיסה בסוף הקו, יישמרו כדמות כרטיסיה נאותה כאשר מאוכלסים את TOC. משמעות הדבר היא כי הפונקציה של אופי הכרטיסייה תהיה נוכח `TOC` ניתן להשתמש כדי לעצב את הכניסה. לדוגמה, ערכים מסוימים עשויים להשתמש הפסקות הכרטיסייה והדמויות לשוניות כדי ליישר את הטקסט. כל עוד התואם `TOC` רמה מגדירה את הכרטיסייה המקבילה מפסיק לאחר מכן `TOC` ערכים יופיעו עם ספיגה דומה. <br/><br/>באותו מצב אם מתג זה לא הוגדר אז דמויות הכרטיסייה יומרו לחלל לבן שווה ערך כמו כרטיסיות לא מתפקדות. התפוקה לא תופיע כמצופה.</p>

<p>![tab-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-10.png)</p>
 |
| **Preserve New Line Entries** <br/> (x Switch) <br/> | <p>בדומה למתג לעיל, specifies מתג זה כותרות המשתרעות על פני קווים מרובים (באמצעות דמויות חדשות, לא פסקאות נפרדות) יישמרו כפי שהם מיוצרים TOC. לדוגמה, כותרת שהיא להפיץ קווים מרובים יכולה להשתמש באופי הקו החדש (Ctrl + Enter או Enter או Enter או `ControlChar.LineBreak`) להפריד תוכן בין קווים שונים. עם מתג זה שצוין, הכניסה `TOC` ישמור על דמויות הקו החדשות הללו כפי שמוצג להלן. <br/><br/>במצב זה, אם המעבר אינו מוגדר אז דמויות הקו החדש מומרים לחלל לבן יחיד.</p>

<p>![tab-space-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-11.png)</p>
 |

## שדות TC

ניתן להוסיף שדה TC חדש במיקום הנוכחי של `DocumentBuilder` על ידי call the `DocumentBuilder.InsertField` שיטה וסימון שם השדה "TC" יחד עם כל מתגים הדרושים.

דוגמה לקוד הבא מראה כיצד להוסיף `TC` שדה לתוך המסמך באמצעות [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertTCField-InsertTCField.java" >}}

לעתים קרובות קו מסוים של טקסט מיועד `TOC` והוא מסומן עם `TC` שדה. הדרך הקלה לעשות זאת ב- MS Word היא להדגיש את הטקסט והעיתונות *ALT+SHIFT+O*. זה יוצר באופן אוטומטי `TC` שדה באמצעות הטקסט שנבחר. אותה טכניקה ניתן להשיג באמצעות קוד. הקוד הבא ימצא טקסט תואם את הקלט ולהוסיף `TC` שדה באותו מיקום כמו הטקסט. הקוד מבוסס על אותה טכניקה המשמשת במאמר. דוגמה לקוד הבא מראה כיצד למצוא ולהכניס `TC` שדה בטקסט במסמך

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-FindAndInsertATCField-InsertTCFieldHandler.java" >}}

## שינוי שולחן של תוכן

### לשנות את העיצוב של סגנונות

פורמט הערכים ב `TOC` אין להשתמש בסגנונות המקוריים של הערכים המסומנים, במקום זאת, כל רמה מעוצבת באמצעות שווה ערך. `TOC` סגנון. לדוגמה, הרמה הראשונה ב `TOC` הוא מעוצב עם **ToC1** סגנון, הרמה השנייה מעוצבת עם **TOC2** סגנון וכו'. זה אומר לשנות את המראה של `TOC` סגנונות אלה חייבים להשתנות. In In In Aspose.Words סגנונות אלה מיוצגים על ידי המקומיים `StyleIdentifier.TOC1` דרך `StyleIdentifier.TOC9` ניתן להחזיר אותם מן `Document.Styles` איסוף באמצעות מזהים אלה.

ברגע שהסגנון המתאים של המסמך ניתן לשנות את הפורמט לסגנון זה. כל שינוי בסגנונות אלה יותקף באופן אוטומטי ב- TOCs במסמך.

דוגמה נוספת של הקוד משנה נכס עיצוב המשמש ברמה הראשונה `TOC` סגנון.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-ModifyATableOfContents-changeAFormattingPropertyUsedInFirstLevelTOCStyle.java" >}}

זה גם שימושי לציין כי כל פורמט ישיר של פסקה (המכונה בפסקה עצמה ולא בסגנון) מסומן להיות כלול בסגנון. `TOC` יועתק בכניסת TOC. לדוגמה, אם סגנון ראש 1 משמש לסמן תוכן עבור `TOC` ולסגנון זה יש פורמט Bold בעוד לפסקה יש גם פורמט healic החל ישירות על זה. התוצאה `TOC` הכניסה לא תהיה נועזת משום שהיא חלק מעיצוב סגנון, אך היא תהיה איתקלית כפי שהיא מעוצבת ישירות בפסקה.

אתה יכול גם לשלוט בפורמט של מפרידים המשמשים בין כל כניסה ומספר העמוד. כברירת מחדל, זהו קו ספארי שמתפשט אל הדף המספר באמצעות דמות לשונית וכרטיסיה נכונה להפסיק קו ישר קרוב בשולי הנכון.

באמצעות `Style` שיעור נלקח עבור הספציפי `TOC` ברמה שאתה רוצה לשנות, אתה יכול גם לשנות איך אלה מופיעים במסמך.

לשנות איך זה מופיע לראשונה `Style.ParagraphFormat` יש לקרוא כדי לאחזר את הסעיף לסגנון. מכאן ניתן להחזיר את הכרטיסייה באמצעות קריאה `ParagraphFormat.TabStops` הכרטיסיה המתאימה מפסיקת להשתנות. באמצעות אותה טכניקה ניתן להעביר את הכרטיסיה עצמה או להסיר לחלוטין.

הדוגמה הבאה של הקוד מראה כיצד לשנות את המיקום של הכרטיסייה הנכונה לעצור `TOC` סעיפים קשורים

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-ModifyATableOfContents-modifyPositionOfRightTabStopInTOC.java" >}}

## להסיר שולחן של תכנים מהמסמכים

טבלה של תוכן ניתן להסיר מן המסמך על ידי הסרת כל הנקודות שנמצאו בין `FieldStart` סוף השדה `TOC` שדה.

הקוד למטה מדגים את זה. הסרת `TOC` שדה הוא פשוט יותר מאשר שדה רגיל כפי שאנחנו לא עוקבים אחר שדות מזוינים. במקום זאת, אנחנו בודקים את `FieldEnd` Node הוא סוג `FieldType.FieldTOC` כלומר, נתקלנו בסוף ה- TOC הנוכחי. טכניקה זו ניתן להשתמש במקרה זה ללא דאגה לגבי כל שדות מקוננות כפי שאנו יכולים להניח כי כל מסמך שנוצר כראוי לא יהיה קן מלא. `TOC` שדה בתוך שדה אחר `TOC` שדה.

ראשית, `FieldStart` צומת של כל `TOC` נאספים ומאוחסנים. המונחים: `TOC` לאחר מכן הוא נחשב כך שכל הצמתים בתוך השדה מבקרים ומאוחסנים. הצמתים הוסרו מן המסמך. הדוגמה הבאה של הקוד מוכיחה כיצד להסיר את ההודעה `TOC` מתוך מסמך.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-RemoveATableOfContents-RemoveATableOfContents.java" >}}

## טבלה של תוכן

אם אתה רוצה להוציא טבלה של תוכן מכל מסמך Word, ניתן להשתמש במדגם הקוד הבא.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-ExtractTableOfContents-ExtractTableOfContents.java" >}}
