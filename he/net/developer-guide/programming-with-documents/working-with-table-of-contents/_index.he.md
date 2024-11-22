---
title: עבודה עם שולחן של תוכן C#
second_title: Aspose.Words עבור .NET
articleTitle: עבודה עם שולחן של תוכן
linktitle: עבודה עם שולחן של תוכן
description: "שולחן התוכן בפרטים כיצד ליצור ולשנות `TOC` שדה באמצעות C#. הכנס `TOC` C#."
type: docs
weight: 170
url: /he/net/working-with-table-of-contents/
timestamp: 2024-10-21-11-17-44
---

לעתים קרובות תעבוד עם מסמכים המכילים שולחן תוכן (TOC). שימוש Aspose.Words באפשרותך להוסיף את שולחן התוכן שלך או לבנות מחדש לחלוטין את שולחן התוכן הקיים במסמך באמצעות רק כמה שורות קוד. מאמר זה מתאר כיצד לעבוד עם השולחן של שדה התוכן ומדגים:

- כיצד להוסיף מותג חדש `TOC`
- עדכון חדש או קיים ל- TOCs במסמך.
- מתגים ציין לשלוט בפורמט ובמבנה הכולל f TOC.
- כיצד לשנות את הסגנונות ואת המראה של שולחן התוכן.
- איך להסיר כל `TOC` שדה יחד עם כל הערכים יוצר את המסמך.

## הכנס את שולחן התוכן באופן אסטרטגי

אתה יכול להוסיף `TOC` (שולחן התוכן) לתוך המסמך במיקום הנוכחי על ידי קריאה [InsertTableOfContents](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserttableofcontents/) שיטה.

טבלה של תוכן במסמך Word ניתן לבנות במספר דרכים ותבנית באמצעות מגוון אפשרויות. מתגי השדה שאתה עובר אל השיטה שולטים בדרך שבה השולחן בנוי ומוצג במסמך שלך.

מתגי ברירת המחדל המשמשים `TOC` נכנס Microsoft Word הם **""13\h\z\u"**. תיאורים של מתגים אלה, כמו גם רשימה של מתגים נתמך ניתן למצוא מאוחר יותר במאמר. אתה יכול להשתמש מדריך זה להשיג את מתגים הנכונים או אם יש לך כבר מסמך המכיל דומה `TOC` אתה רוצה להציג קודים שדה (*ALT+F9*) ולהעתיק את המתגים ישירות מהשדה.

הדוגמה הבאה של הקוד מראה כיצד להכניס טבלה של תוכן לתוך מסמך:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertTOC-DocumentBuilderInsertTOC.cs" >}}

הדוגמה הבאה של הקוד מראה כיצד להכניס שולחן של תכנים (TOC) למסמכים באמצעות סגנונות כותרת כערכים.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertTableOfContents.cs" >}}

{{% alert color="primary" %}}

ללא שיטות המשמשות בדוגמה, כאשר אתה פותח את מסמך הפלט, תמצא את `TOC` שדה, אך ללא תוכן גלוי. זה בגלל `TOC` השדה הוחדר אך עדיין לא מיושב עד שהוא מעודכן במסמך. מידע נוסף על כך נדון בסעיף הבא.

{{% /alert %}}

## עדכון שולחן התוכן

Aspose.Words מאפשר לך לעדכן לחלוטין `TOC` עם רק כמה שורות קוד. זה יכול להיעשות כדי לבלבל חדש `TOC` או לעדכן קיים `TOC` לאחר שינויים במסמך נעשו. יש להשתמש בשתי השיטות הבאות כדי לעדכן את `TOC` שדות במסמך:

1. [UpdateFields](https://reference.aspose.com/words/net/aspose.words/document/updatefields/)
1. [UpdatePageLayout](https://reference.aspose.com/words/net/aspose.words/document/updatepagelayout/)

אנא שימו לב כי שתי שיטות עדכון אלה נדרשות כדי להיקרא בסדר זה. אם הפוך את שולחן התוכן יהיה מאוכלס, אבל לא יופיעו מספרי דף. ניתן לעדכן כל מספר של TOCs שונים. שיטות אלה יעדכןו באופן אוטומטי את כל TOCs שנמצאו במסמך.

דוגמה לקוד הבא מראה כיצד לבנות מחדש לחלוטין `TOC` שדות במסמך על ידי יצירת עדכון שדה:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertTOC-UpdateFields.cs" >}}

הקריאה הראשונה **UpdateFields** נבנה את `TOC`" כל הודעות הטקסט מאוכלסות וה `TOC` נראה כמעט שלם. הדבר היחיד שחסר לו הוא מספרי העמוד שכרגע מוצגים ב"? הקריאה השניה **UpdatePageLayout** נבנה את הפריסה של המסמך בזיכרון. זה צריך להיעשות כדי לאסוף את מספרי העמוד של הערכים. מספרי העמוד הנכונים המחושבים מהקריאה זו מוכנסים ל- TOC.

## השתמש ב-Switches to Control Table of Contents Behavior

כמו בכל תחום אחר, `TOC` שדה יכול לקבל מתגים המוגדרים בתוך קוד השדה השולט כיצד נבנה שולחן התוכן. מתגים מסוימים משמשים כדי לשלוט אילו ערכים כלולים ובאיזו רמה בעוד אחרים משמשים כדי לשלוט במראה של TOC. ניתן לשלב את ה-Switchs יחד כדי לאפשר יצירת שולחן מורכב של תוכן.

![working-with-table-of-contents-aspose-words-net](/words/net/working-with-table-of-contents/working-with-table-of-contents-1.png)


כברירת מחדל מתגים אלה לעיל כלולים בעת הוספת ברירת מחדל `TOC` במסמך. A A A A `TOC` ללא מתגים יכלול תוכן מסגנונות הכותרת המובנות (כמו למשל מתג ה-O מוגדר). זמין `TOC` מתגים הנתמכות על ידי Aspose.Words להלן והשימושים שלהם מתוארים בפירוט. ניתן לחלק אותם לסעיפים נפרדים המבוססים על הסוג שלהם. מתגים בחלק הראשון מגדירים את התוכן לכלול `TOC` והמתגים בחלק השני שולטים במראה של TOC. אם מתג לא מופיע כאן, זה לא נתמך כרגע. כל המתגים יתמכו בגרסאות עתידיות. אנו מוסיפים תמיכה נוספת בכל שחרור.

### תגית: Switches

|  Switch Switch Switch Switch | תיאור תיאור |
|  :-  |  :-  |
| **Heading Styles** <br/>(O Switch) | <p>מתג זה מגדיר כי `TOC` צריך להיבנות מסגנונות הכותרת המובנות. In In In Microsoft Word שם הסרטון: Heading 1 - Heading 9 Aspose.Words סגנונות אלה מיוצגים על ידי enumeration התואם. הגדרה זו מייצגת מזהה עצמאי מקומי של סגנון, למשל `StyleIdentifier.Heading1` מייצג סגנון אחד. באמצעות זה, את הפורמט והמאפיינים של הסגנון ניתן לשחזר מתוך אוסף סגנון של המסמך. ניתן להחזיר את מעמד הסגנון המתאים מן `Document.Styles` אוסף על ידי שימוש במאפיין האינדקס של הקלד StyleIdentifier.</p>

<p>![working-with-table-of-contents-styles](/words/net/working-with-table-of-contents/working-with-table-of-contents-2.png)</p>

<p>כל תוכן מעוצב עם סגנונות אלה נכלל בטבלה של תוכן. רמת הכותרת תגדיר את הרמה ההיררכית המקבילה של הכניסה ב- TOC. לדוגמה, פסקה עם ראש סגנון 1 תטופל כרמה הראשונה. `TOC` בעוד שפסקה עם ראש 2 תטופל כרמה הבאה בהיררכיה וכן הלאה.</p>
 |
| **Outline Levels** <br/>(\U מתג) | <p>כל סעיף יכול להגדיר רמת קווי מתאר תחת אפשרויות סעיף.</p>

<p>![working-with-table-of-contents-paragraph](/words/net/working-with-table-of-contents/working-with-table-of-contents-3.png)</p>

<p>הגדרה זו תכתיב באיזו רמה יש להתייחס לסעיף זה בהיררכיה של המסמך. זה נפוץ בפועל המשמש כדי בקלות לבנות את הפריסה של מסמך. היררכיה זו ניתן לראות על ידי שינוי בתצוגת Outline Microsoft Word. בדומה לסגנונות כותרת, ניתן להיות 1-9 רמות מתאר בנוסף לרמה "Body Text". רמות 1 - 9 יופיעו `TOC` ברמה המקבילה של ההיררכיה <br/>כל תוכן עם רמת מתווה מוגדר בסגנון פסקה או ישירות על הסעיף עצמו נכלל ב- TOC. In In In Aspose.Words רמת המתאר מיוצגת על ידי `ParagraphFormat.OutlineLevel` רכושו של ה- Paragraph node רמת המתאר של סגנון פסקה מיוצגת באותו אופן על ידי `Style.ParagraphFormat` רכוש.</p>

<p>{{% alert color="primary" %}}</p>

<p>שים לב כי סגנונות כותרת בנויים כגון Heading 1 יש סט חובה ברמת מתווה בהגדרות סגנון.</p>

<p>{{% /alert %}}</p>
 |
| **Custom Styles** <br/>(\T מתג) | <p>מתג זה יאפשר סגנונות מותאמים אישית לשמש בעת איסוף ערכים לשימוש ב- TOC. זה משמש לעתים קרובות בשילוב עם מתג "O" כדי לכלול סגנונות מותאם אישית יחד עם סגנונות כותרת מובנה ב TOC. <br/>הפרמטרים של מתג צריך להיות סגור בתוך סימני דיבור. סגנונות מותאמים רבים ניתן לכלול, עבור כל סגנון את השם צריך להיות שצוין ואחריו קוממה ואחריו הרמה כי הסגנון צריך להופיע. `TOC` כמו. סגנונות נוספים מופרדים גם על ידי קודמה. <br/>למשל</p>

<p>{{< highlight csharp >}}

<p>  { TOC \o "1-3" \t "CustomHeading1, 1,   CustomHeading2, 2"} </p><p>{{< /highlight >}}</p>

<p>יהיה להשתמש בתוכן מעוצב עם CustomHeading1 כתוכן 1 ברמה `TOC` ו- CustomHeading2 כרמה 2.</p>
 |
| **Use TC Fields** <br/>(\F ו-L Switches) | <p>בגרסאות ישנות יותר Microsoft Word, הדרך היחידה לבנות `TOC` היה השימוש בשדות TC. שדות אלה מוכנסים בתוך המסמך גם כאשר מוצגים קודי שדה. הם כוללים את הטקסט שיש להציג בכניסה ואת `TOC` נבנה מהם. פונקציונליות זו אינה בשימוש לעתים קרובות מאוד, אך עשויה עדיין להיות שימושית במקרים מסוימים כדי לכלול ערכים. `TOC` מה שלא ניתן לראות במסמך. <br/>כאשר מוכנסים שדות אלה מופיעים חבויים גם כאשר קודים שדה מוצגים. לא ניתן לראות אותם מבלי להציג תוכן נסתר. כדי לראות את הפורמטים של תצוגת שדות אלה יש לבחור.</p>

<p>![working-with-table-of-contents-paragraph-settings](/words/net/working-with-table-of-contents/working-with-table-of-contents-4.png)</p>שדות אלה יכולים להיות מוכנסים לתוך מסמך בכל עמדה כמו כל שדה אחר והם מיוצגים על ידי השדה. `FieldType.FieldTOCEntry` אזהרה. <br/>מתג ה-F ב `TOC` משמש כדי לציין כי שדות TC יש להשתמש כמו ערכים. המעבר מעצמו ללא מזהה נוסף פירושו שכל שדה TC במסמך ייכלל. כל פרמטר נוסף, לעתים קרובות מכתב אחד, יסביר כי רק שדות TC שיש להם מתג תואם / מתג f ייכלל ב TOC. לדוגמה *<p>{{< highlight csharp >}}

<p>  { TOC \f t } </p><p>{{< /highlight >}}</p>

<p>יכלול רק שדות TC כגון</p>

<p>{{< highlight csharp >}}
p> {   TC \f t }</p><p>{{< /highlight >}}</p>

<p>The The The `TOC` שדה יש גם מתג קשור, את "\L" מתג מפרט כי רק שדה TC עם רמות בטווח שצוין כלולים.</p>

<p>![todo:image_alt_text](/words/net/working-with-table-of-contents/working-with-table-of-contents-5.png)</p>

<p>The The The `TC` גם לשדות עצמם יש `{several, multiple, a few, many, numerous}` מתגים להגדיר. אלה הם:</p>

<p>*\F – הסבר למעלה. *</p>

<p>*\L - Defines That Level in the `TOC` שדה TC זה יופיע. A A A A `TOC` שימוש באותו מתג יכלול רק שדה TC זה אם הוא בטווח שצוין. *</p>

<p>תגית: העמוד מספר על כך `TOC` הכניסה אינה מוצגת. קוד דוגמאות של איך להכניס שדות TC ניתן למצוא בסעיף הבא.</p>
 |

### עקבו אחרי Switchs

|  Switch Switch Switch Switch | תיאור תיאור |
|  :-  |  :-  |
| **Omit Page Numbers** <br/>(N Switch) | <p>מתג זה משמש כדי להסתיר מספרי דף עבור רמות מסוימות של TOC. לדוגמה, אתה יכול להגדיר</p>

<p>{{< highlight csharp >}}
<p>  {TOC \o "1-4" \n "3-4" } </p><p>{{< /highlight >}}</p>

<p>ומספר העמודים על הערכים של רמות 3 וארבעה יוסתרו יחד עם המנהיגים (אם יש כאלה). כדי לציין רק רמה אחת יש להשתמש בטווח, לדוגמה "1-1" לא לכלול מספרי דפים רק לרמה הראשונה. <br/>אספקת כל טווח ברמה לא יניחה מספרי דף לכל הרמות ב- TOC. זה שימושי להגדיר בעת ייצוא מסמך ל- HTML או פורמט דומה. הסיבה לכך היא כי לפורמטים המבוססים על HTML אין מושג של דף ולכן אין צורך בכל דף.</p>

<p>![todo:image_alt_text](/words/net/working-with-table-of-contents/working-with-table-of-contents-6.png)</p>
 |
| **Insert As Hyperlinks** <br/>(H Switch) | <p>מתג זה מפרט כי `TOC` ערכים מוכנסים כמו Hyperlinks. בעת צפייה במסמך Microsoft Word ערכים אלה עדיין מופיעים כטקסט רגיל בתוך `TOC` אבל הם היפר-קישורים ובכך ניתן להשתמש כדי לנווט את המיקום של הכניסה המקורית במסמך על ידי שימוש *Ctrl + שמאל לחיצה * Microsoft Word. כאשר מתג זה כלול, קישורים אלה נשמרים גם בפורמטים אחרים. לדוגמה בפורמטים מבוססי HTML כולל EPUB והפך פורמטים כגון PDF ו- PDF XPS אלה ייצואו כקשרי עבודה. <br/>ללא מתג זה הגדר את `TOC` בכל הפלטים האלה ייצואו כטקסט פשוט ולא ימחיש התנהגות זו. אם מסמך נפתח ב-MS Word הטקסט של הערכים לא יהיה קליק בדרך זו, אבל מספרי העמוד עדיין ניתן להשתמש כדי לנווט את הכניסה המקורית.</p>

<p>![working-with-table-of-contents-titles](/words/net/working-with-table-of-contents/working-with-table-of-contents-7.png)</p>
 |
| **Set Separator Character** <br/>(\P Switch) | <p>מתג זה מאפשר את התוכן המפריד את הכותרת של כניסה ועמוד מספר על מנת להשתנות בקלות ב- TOC. המבדיל לשימוש צריך להיות מוגדר לאחר מתג זה וסגור סימני דיבור. <br/>בניגוד למה שמתועד בתיעוד Office, רק דמות אחת יכולה לשמש במקום עד 5. זה חל גם על MS Word וגם Aspose.Words. <br/>באמצעות מתג זה לא מומלץ כפי שהוא לא מאפשר הרבה שליטה על מה שהוא השתמש כדי להפריד ערכים ומספרי דפים ב- TOC. במקום זאת מומלץ לערוך את המתאים `TOC` סגנון כגון `StyleIdentifier.TOC1` משם לערוך את סגנון המנהיג עם גישה לחברי גפן ספציפיים וכו '. פרטים נוספים על איך לעשות זאת ניתן למצוא מאוחר יותר במאמר.</p>

<p>![working-with-table-of-contents-toc](/words/net/working-with-table-of-contents/working-with-table-of-contents-8.png)</p>
 |
| **Preserve Tab Entries** <br/>(W Switch) | <p>באמצעות מתג זה יהיה לציין כי כל ערכים שיש להם אופי הכרטיסייה, למשל כותרת שיש לו הכרטיסיה בסוף השורה, יישמרו כדמות כרטיסיה נאותה כאשר מאוכלסים את TOC. משמעות הדבר היא כי הפונקציה של אופי הכרטיסייה תהיה נוכח `TOC` ניתן להשתמש כדי לעצב את הכניסה. לדוגמה, ערכים מסוימים עשויים להשתמש הפסקות הכרטיסייה והדמויות לשוניות כדי אפילו למקם את הטקסט. כל עוד התואם `TOC` רמה מגדירה את הכרטיסייה המקבילה מפסיק לאחר מכן `TOC` הערכים יופיעו עם ספיגה דומה. <br/><br/>באותו מצב אם מתג זה לא הוגדר אז דמויות הכרטיסייה יומרו לחלל לבן שווה ערך כמו כרטיסיות לא מתפקדות. התפוקה לא תופיע כמצופה.</p>

<p>![working-with-table-of-contents-aspose](/words/net/working-with-table-of-contents/working-with-table-of-contents-9.png)</p>
 |
| **Preserve New Line Entries** <br/>(x Switch) | <p>בדומה למתג לעיל, specifies מתג זה כי כותרות המשתרעות על פני קווים מרובים (באמצעות דמויות קו חדשות שאינן נפרדות פסקאות) יישמרו כפי שהם מיוצרים TOC. לדוגמה, כותרת שהיא להפיץ קווים מרובים יכולה להשתמש באופי הקו החדש (Ctrl + Enter או Enter או Enter או `ControlChar.LineBreak`) להפריד תוכן בין קווים שונים. עם מתג זה שצוין, הכניסה `TOC` ישמור על דמויות הקו החדשות הללו כפי שמוצג להלן. <br/><br/>במצב זה אם המעבר אינו מוגדר אז דמויות הקו החדש מומרים לחלל לבן יחיד.</p>

<p>![working-with-table-of-contents-aspose-words](/words/net/working-with-table-of-contents/working-with-table-of-contents-10.png)</p>
 |

## שדות TC

ניתן להוסיף שדה TC חדש במיקום הנוכחי של [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) על ידי קריאה [InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/) שיטה וסימון שם השדה "TC" יחד עם כל מתגים הדרושים.

דוגמה לקוד הבא מראה כיצד להוסיף `TC` שדה לתוך המסמך באמצעות **DocumentBuilder**:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertTCField-DocumentBuilderInsertTCField.cs" >}}

לעתים קרובות קו מסוים של טקסט מיועד `TOC` והוא מסומן עם `TC` שדה. הדרך הקלה לעשות זאת ב Microsoft Word כדי להדגיש את הטקסט והעיתונות *ALT+SHIFT+O*. זה יוצר באופן אוטומטי `TC` שדה באמצעות הטקסט שנבחר אותה טכניקה ניתן להשיג באמצעות קוד. הקוד הבא ימצא טקסט תואם את הקלט ולהוסיף `TC` שטח באותו מיקום עם הטקסט. הקוד מבוסס על אותה טכניקה המשמשת במאמר.

דוגמה לקוד הבא מראה כיצד למצוא ולהכניס `TC` שדה בטקסט במסמך:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertTCFieldsAtText-DocumentBuilderInsertTCFieldsAtText.cs" >}}

## שינוי שולחן התוכן

פורמט הערכים ב `TOC` אין להשתמש בסגנונות המקוריים של הערכים המסומנים, במקום זאת כל רמה מעוצבת באמצעות שווה ערך. `TOC` סגנון. לדוגמה, הרמה הראשונה ב `TOC` הוא מעוצב עם **ToC1** סגנון, הרמה השנייה מעוצבת עם **TOC2** סגנון וכו'. זה אומר לשנות את המראה של `TOC` יש לשנות סגנונות אלה. In In In Aspose.Words סגנונות אלה מיוצגים על ידי המקומי עצמאי `StyleIdentifier.TOC1` דרך `StyleIdentifier.TOC9` ניתן להחזיר אותם מן [Styles](https://reference.aspose.com/words/net/aspose.words/documentbase/styles/) איסוף באמצעות מזהים אלה.

ברגע שהסגנון המתאים של המסמך ניתן לשנות את הפורמט של סגנון זה. כל שינוי בסגנונות אלה יוחזר באופן אוטומטי על TOCs במסמך.

דוגמה נוספת של הקוד משנה נכס עיצוב המשמש ברמה הראשונה `TOC` סגנון:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ChangeStyleOfTOCLevel-ChangeStyleOfTOCLevel.cs" >}}

זה גם שימושי לציין כי כל פורמט ישיר של פסקה (ההגדרה על פסקה עצמה ולא בסגנון) מסומן כדי לכלול את הסעיף. `TOC` יועתק בכניסת TOC. לדוגמה, אם סגנון ראש 1 משמש כדי לסמן תוכן עבור `TOC` ולסגנון זה יש פורמט Bold בעוד לפסקה יש גם פורמט healic החל ישירות על זה. התוצאה `TOC` הכניסה לא תהיה נועזת משום שהיא חלק מעיצוב סגנון, אך היא תהיה איתקלית כפי שהיא מעוצבת ישירות בפסקה.

אתה יכול גם לשלוט בפורמט של מפרידים המשמשים בין כל מספר כניסה ועמוד. כברירת מחדל זה קו ספארי המשתרע על פני הדף מספרינג באמצעות דמות הכרטיסייה וכרטיסיה נכונה להפסיק קו ישר קרוב שולי הנכון.

באמצעות [Style](https://reference.aspose.com/words/net/aspose.words/style/) שיעור נלקח עבור הספציפי `TOC` ברמה שאתה רוצה לשנות, אתה יכול גם לשנות איך אלה מופיעים במסמך. לשנות איך זה מופיע לראשונה [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/style/paragraphformat/) יש לקרוא כדי לאחזר את הסעיף לסגנון. משם ניתן להחזיר את הכרטיסיה באמצעות קריאה [TabStops](https://reference.aspose.com/words/net/aspose.words/paragraphformat/tabstops/) הכרטיסיה המתאימה מפסיקת להשתנות. באמצעות אותה טכניקה ניתן להעביר את הכרטיסיה עצמה או להסיר את כולם יחד.

הדוגמה הבאה של הקוד מראה כיצד לשנות את המיקום של הכרטיסייה הנכונה לעצור `TOC` סעיפים קשורים:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ChangeTOCTabStops-ChangeTOCTabStops.cs" >}}

## הסרת שולחן התוכן מהמסמכים

טבלה של תוכן ניתן להסיר מן המסמך על ידי הסרת כל הנקודות שנמצאו בין `FieldStart` סוף השדה `TOC` שדה. הקוד למטה מדגים את זה. הסרת `TOC` שדה הוא פשוט יותר מאשר שדה רגיל כפי שאנחנו לא עוקבים אחר שדות מזוינים. במקום זאת אנחנו בודקים את [FieldEnd](https://reference.aspose.com/words/net/aspose.words.fields/fieldend/) Node הוא סוג [FieldType.FieldTOC](https://reference.aspose.com/words/net/aspose.words.fields/fieldtype/) כלומר, נתקלנו בסוף ה- TOC הנוכחי. טכניקה זו ניתן להשתמש במקרה זה ללא דאגה לגבי כל שדות מקוננות כפי שאנו יכולים להניח כי כל מסמך שנוצר כראוי לא יהיה קן מלא. `TOC` שדה בתוך שדה אחר `TOC` שדה.

ראשית, [FieldStart](https://reference.aspose.com/words/net/aspose.words.fields/fieldstart/) צומת של כל `TOC` נאספים ומאוחסנים. המונחים: `TOC` לאחר מכן הוא נחשב כך שכל הצמתים בתוך השדה מבקרים ומאוחסנים. הצמתים הוסרו מן המסמך.

דוגמה לקוד הבא מראה כיצד להסיר הודעה `TOC` מתוך מסמך:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-RemoveTOCFromDocument-RemoveTOCFromDocument.cs" >}}

## יצירת שולחן תוכן

אם ברצונך להוציא טבלה של תוכן מכל מסמך Word, ניתן להשתמש במדגם הקוד הבא:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-ExtractTableOfContents-ExtractTableOfContents.cs" >}}
