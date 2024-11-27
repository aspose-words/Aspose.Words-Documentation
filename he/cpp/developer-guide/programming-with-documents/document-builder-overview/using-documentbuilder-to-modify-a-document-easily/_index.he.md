---
title: שימוש DocumentBuilder כדי לשנות מסמך בקלות
second_title: Aspose.Words עבור C++
articleTitle: שימוש DocumentBuilder כדי לשנות מסמך בקלות
linktitle: שימוש DocumentBuilder כדי לשנות מסמך בקלות
type: docs
description: "השתמש בבונה המסמכים כדי לשנות מסמך בקלות ב C++."
weight: 190
url: /he/cpp/using-documentbuilder-to-modify-a-document-easily/
timestamp: 2024-01-27-14-07-04
---

## ציון עיצוב

### עיצוב גופן

עיצוב הגופן הנוכחי מיוצג על ידי אובייקט `Font` שהוחזר על ידי המאפיין `DocumentBuilder.Font`. הכיתה `Font` מכילה מגוון רחב של מאפייני הגופן האפשריים ב Microsoft Word. להלן דוגמה מראה כיצד להגדיר עיצוב גופן.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetFontFormatting.cpp" >}}

### עיצוב פסקה

עיצוב פסקה נוכחי מיוצג על ידי אובייקט `ParagraphFormat` המוחזר על ידי המאפיין `DocumentBuilder.ParagraphFormat`. אובייקט זה מכיל מאפיינים שונים של עיצוב פסקאות הזמינים ב Microsoft Word. אתה יכול לאפס בקלות את עיצוב הפסקה לברירת המחדל לסגנון רגיל, מיושר שמאלה, ללא כניסה, ללא ריווח, ללא גבולות וללא הצללה על ידי התקשרות `ParagraphFormat.ClearFormatting`. להלן דוגמה מראה כיצד להגדיר עיצוב פסקה.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetParagraphFormatting.cpp" >}}

### עבודה עם טיפוגרפיה אסיאתית

#### התאם אוטומטית את הרווח בין טקסט אסייתי ללטיני, מספרים

אם אתה מעצב תבנית עם טקסט מזרח אסייתי ולטיני כאחד, וברצונך לשפר את מראה תבנית הטופס על ידי שליטה ברווחים בין שני סוגי הטקסט, תוכל להגדיר את תבנית הטופס שלך כך שתתאים אוטומטית את הרווחים בין שני סוגי הטקסט הללו. אתה יכול להשתמש AddSpaceBetweenFarEastAndAlpha ו AddSpaceBetweenFarEastAndDigit מאפיינים של ParagraphFormat מחלקה כדי להשיג זאת.

דוגמה לקוד הבא מראה כיצד להשתמש במאפיינים `ParagraphFormat.AddSpaceBetweenFarEastAndAlpha` ו `ParagraphFormat.AddSpaceBetweenFarEastAndDigit`.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cpp" >}}

#### שינוי ריווח פסקה אסיה וכניסות

דוגמת הקוד הבאה מדגימה כיצד לשנות את המרווח בין פסקאות אסיה וכניסות.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cpp" >}}

#### הגדר אפשרויות מעבר קו

לשונית טיפוגרפיה אסייתית של הדו-שיח `Paragraph` מאפיינים ב MS Word יש קבוצת מעבר שורה. ניתן להגדיר את האפשרויות של קבוצה זו באמצעות FarEastLineBreakControl, WordWrap, HangingPunctuation מאפיינים של ParagraphFormat כיתה. להיותlow code דוגמה מראה כיצד להשתמש במאפיינים אלה.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetAsianTypographyLinebreakGroupProp.cpp" >}}

### עיצוב תא

עיצוב תאים משמש במהלך בניית טבלה. הוא מיוצג על ידי אובייקט `CellFormat` שהוחזר על ידי המאפיין `DocumentBuilder.CellFormat`. CellFormat מתמצת מאפייני תא טבלה שונים כמו רוחב או יישור אנכי. להלן דוגמה מראה כיצד ליצור טבלה המכילה תא מעוצב יחיד.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetTableCellFormatting.cpp" >}}

### עיצוב שורה

עיצוב השורה הנוכחית נקבע על ידי אובייקט `RowFormat` המוחזר על ידי המאפיין `DocumentBuilder.RowFormat`. האובייקט מכיל מידע על כל עיצוב שורות הטבלה. להלן דוגמה מראה כיצד ליצור טבלה המכילה תא בודד ולהחיל עיצוב שורה.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetTableRowFormatting.cpp" >}}

### עיצוב רשימה

Aspose.Words מאפשר יצירה קלה של רשימות על ידי יישום עיצוב רשימה. DocumentBuilder מספק את המאפיין `DocumentBuilder.ListFormat` שמחזיר אובייקט `ListFormat`. לאובייקט זה מספר שיטות להתחיל ולסיים רשימה ולהגדיל / להקטין את הכניסה. ישנם שני סוגים כלליים של רשימות ב Microsoft Word: תבליטים וממוספרים.

- כדי להתחיל רשימה עם תבליטים, התקשר `ListFormat.ApplyBulletDefault`.
- כדי להתחיל רשימה ממוספרת, התקשר `ListFormat.ApplyNumberDefault`.

הכדור או המספר והעיצוב מתווספים לפסקה הנוכחית וכל הפסקאות הנוספות שנוצרו באמצעות **DocumentBuilder** עד `ListFormat.RemoveNumbers` נקרא להפסיק את עיצוב הרשימה עם תבליטים. ב Word מסמכים, רשימות עשויות להכיל עד תשע רמות. עיצוב רשימה עבור כל רמה מציין באיזה כדור או מספר משתמשים, כניסה שמאלית, רווח בין הכדור לטקסט וכו'.

- כדי להגדיל את רמת הרשימה של הפסקה הנוכחית ברמה אחת, התקשר `ListFormat.ListIndent`.
- כדי להקטין את רמת הרשימה של הפסקה הנוכחית ברמה אחת, התקשר `ListFormat.ListOutdent`.

השיטות משנות את רמת הרשימה ומחילות את מאפייני העיצוב של הרמה החדשה.

{{% alert color="primary" %}}

אתה יכול גם להשתמש במאפיין `ListFormat.ListLevelNumber` כדי לקבל או להגדיר את רמת הרשימה עבור הפסקה. רמות הרשימה מסומנות 0 עד 8.

{{% /alert %}}

להלן דוגמא מראה כיצד לבנות רשימה מדורגת.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetMultilevelListFormatting.cpp" >}}

### הגדרת עמוד ועיצוב מקטעים

מאפייני הגדרת עמוד וקטע מכוסים באובייקט `PageSetup` המוחזר על ידי המאפיין `DocumentBuilder.PageSetup`. האובייקט מכיל את כל תכונות הגדרת העמוד של קטע (שוליים שמאליים, שוליים תחתונים, גודל נייר וכן הלאה) כמאפיינים. הדוגמה הבאה מראה כיצד להגדיר מאפיינים כגון גודל עמוד וכיוון עבור החלק הנוכחי.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetPageSetupAndSectionFormatting.cpp" >}}

### החלת סגנון

אובייקטים מסוימים בעיצוב כמו גופן או ParagraphFormat תומכים בסגנונות. סגנון מובנה יחיד או מוגדר על ידי משתמש מיוצג על ידי אובייקט `Style` המכיל את מאפייני הסגנון המתאימים כמו שם, סגנון בסיס, עיצוב גופן ופסקה של הסגנון וכן הלאה.

יתר על כן, אובייקט **Style** מספק את המאפיין `Style.StyleIdentifier` שמחזיר מזהה סגנון שאינו תלוי באזור המיוצג על ידי ערך ספירה **Style.StyleIdentifier**. הנקודה היא ששמות הסגנונות המובנים ב Microsoft Word ממוקמים עבור שפות שונות. באמצעות מזהה סגנון, תוכל למצוא את הסגנון הנכון ללא קשר לשפת המסמך. ערכי הספירה מתאימים לסגנונות המובנים Microsoft Word כגון רגיל, Heading 1, Heading 2 וכו'. לכל הסגנונות המוגדרים על ידי המשתמש מוקצה **StyleIdentifier.User value**. להלן דוגמה מראה כיצד להחיל סגנון פסקה.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyParagraphStyle.cpp" >}}

### גבולות והצללה

גבולות מיוצגים על ידי BorderCollection. זהו אוסף של אובייקטים הגבול כי הם נגישים על ידי אינדקס או לפי סוג הגבול. סוג הגבול מיוצג על ידי הספירה `BorderType`. ערכים מסוימים של הספירה חלים על מספר או רק אלמנט מסמך אחד. לדוגמה, `BorderType.Bottom` חל על פסקה או תא טבלה ואילו `BorderType.DiagonalDown` מציין את הגבול האלכסוני בתא טבלה בלבד.

גם לאוסף הגבולות וגם לכל גבול נפרד יש תכונות דומות כמו צבע, סגנון קו, רוחב קו, מרחק מטקסט וצל אופציונלי. הם מיוצגים על ידי מאפיינים של אותו שם. ניתן להשיג סוגי גבולות שונים על ידי שילוב ערכי המאפיינים. בנוסף, הן **BorderCollection** והן **Border** אובייקטים מאפשרים לך לאפס ערכים אלה לברירת מחדל על ידי קריאה לשיטת `Border.ClearFormatting`. שים לב שכאשר מאפייני הגבול מאופסים לערכי ברירת המחדל, הגבול אינו נראה. הכיתה `Shading` מכילה תכונות הצללה עבור רכיבי מסמך. ניתן להגדיר את מרקם ההצללה הרצוי ואת הצבעים המוחלים על הרקע והחזית של האלמנט.

מרקם ההצללה מוגדר בערך ספירה `TextureIndex` המאפשר יישום של דפוסים שונים על האובייקט **Shading**. לדוגמה, כדי להגדיר צבע רקע עבור אלמנט מסמך, השתמש בערך `TextureIndex.TextureSolid` והגדר את צבע הצללת החזית בהתאם לצורך. הדוגמה הבאה מראה כיצד להחיל גבולות והצללה על פסקה.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyBordersAndShadingToParagraph.cpp" >}}

### הצמד לרשת

Aspose.Words מספק שני מאפיינים `ParagraphFormat.SnapToGrid` ו `Font.SnapToGrid` כדי לקבל ולהגדיר תכונת פסקה הצמד לרשת.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetSnapToGrid.cpp" >}}

## הזזת הסמן

### איתור מיקום הסמן הנוכחי

אתה יכול להשיג היכן הסמן של הקבלן ממוקם כעת בכל עת. המאפיין `DocumentBuilder.CurrentNode` מחזיר את הצומת שנבחר כעת בבונה זה. הצומת הוא ילד ישיר של פסקה. כל פעולות הוספה שתבצע באמצעות `DocumentBuilder` יכניסו לפני `DocumentBuilder.CurrentNode`. כאשר הפסקה הנוכחית ריקה או שהסמן ממוקם ממש לפני סוף הפסקה, `DocumentBuilder.CurrentNode` מחזיר אפס.

כמו כן, אתה יכול להשתמש במאפיין `DocumentBuilder.CurrentParagraph`, שמקבל את הפסקה שנבחרה כרגע ב **DocumentBuilder** זה. הדוגמה הבאה מראה כיצד לגשת לצומת הנוכחי בבונה מסמכים. ניתן להוריד קובץ תבנית של דוגמה זו מכאן.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderCursorPosition.cpp" >}}

### מעבר לכל צומת (פסקאות וילדיהם)

אם יש לך צומת אובייקט מסמך, שהוא פסקה או ילד ישיר של פסקה, תוכל להפנות את סמן הבונה לצומת זה. השתמש בשיטת `DocumentBuilder.MoveTo` כדי לבצע זאת. להלן דוגמא מראה כיצד להעביר את מיקום סמן לצומת שצוין. ניתן להוריד קובץ תבנית של דוגמה זו מכאן.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToNode.cpp" >}}

### מעבר למסמך התחלה / סיום

אם עליך לעבור לתחילת המסמך, התקשר `DocumentBuilder.MoveToDocumentStart`. אם עליך לעבור לסוף המסמך, התקשר `DocumentBuilder.MoveToDocumentEnd`. להלן דוגמא מראה כיצד להעביר את מיקום סמן להתחלה או הסוף של מסמך. ניתן להוריד קובץ תבנית של דוגמה זו מכאן.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToDocumentStartEnd.cpp" >}}

### מעבר לקטע

אם אתה עובד עם מסמך המכיל מספר קטעים, תוכל לעבור לקטע הרצוי באמצעות `DocumentBuilder.MoveToSection`. שיטה זו מעבירה את הסמן לתחילת קטע מסוים ומקבלת את האינדקס של החלק הנדרש. כאשר מדד החלקים גדול או שווה ל-0, הוא מציין אינדקס מתחילת המסמך כאשר 0 הוא החלק הראשון. כאשר אינדקס החלקים קטן מ-0, הוא מציין אינדקס מסוף המסמך כאשר -1 הוא החלק האחרון. להלן דוגמא מראה כיצד להעביר את מיקום סמן לקטע שצוין. ניתן להוריד קובץ תבנית של דוגמה זו מכאן.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToSection.cpp" >}}

### מעבר לכותרת עליונה / תחתונה

כאשר אתה צריך למקם נתונים מסוימים בכותרת עליונה או תחתונה, עליך לעבור לשם תחילה באמצעות `DocumentBuilder.MoveToHeaderFooter`. השיטה מקבלת ערך ספירה HeaderFooterType שמזהה את סוג הכותרת העליונה או התחתונה למקום שבו יש להזיז את הסמן. אם ברצונך ליצור כותרות עליונות ותחתונות שונות עבור העמוד הראשון, עליך להגדיר את המאפיין `PageSetup.DifferentFirstPageHeaderFooter` ל **true**. אם ברצונך ליצור כותרות עליונות ותחתונות שונות עבור דפים זוגיים ומשונים, עליך להגדיר `PageSetup.OddAndEvenPagesHeaderFooter` ל **true**.

אם אתה צריך לחזור לסיפור הראשי, השתמש **DocumentBuilder.MoveToSection** כדי לצאת מהכותרת העליונה או התחתונה. הדוגמה הבאה יוצרת כותרות עליונות ותחתונות במסמך באמצעות DocumentBuilder.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderHeadersAndFooters.cpp" >}}

### מעבר לפסקה

השתמש ב `DocumentBuilder.MoveToParagraph` כדי להזיז את הסמן לפסקה הרצויה בסעיף הנוכחי. אתה צריך להעביר שני פרמטרים לשיטה זו: paragraphIndex (האינדקס של הפסקה כדי לעבור) ו characterIndex (האינדקס של התו בתוך הפסקה).

הניווט מתבצע בתוך הסיפור הנוכחי של החלק הנוכחי. כלומר, אם העברת את הסמן לכותרת הראשית של החלק הראשון, אז paragraphIndex מציין את האינדקס של הפסקה בתוך הכותרת של אותו קטע.

כאשר paragraphIndex גדול או שווה ל-0, הוא מציין אינדקס מתחילת הקטע כאשר 0 הוא הפסקה הראשונה. כאשר paragraphIndex הוא פחות מ-0, הוא מציין אינדקס מסוף הקטע כאשר -1 הוא הפסקה האחרונה.

ניתן כרגע לציין את אינדקס התווים רק כ-0 כדי לעבור לתחילת הפסקה או -1 כדי לעבור לסוף הפסקה. להלן דוגמא מראה כיצד להעביר את מיקום סמן לפסקה שצוינה. ניתן להוריד קובץ תבנית של דוגמה זו מכאן.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToParagraph.cpp" >}}

### מעבר לתא שולחן

השתמש ב `DocumentBuilder.MoveToCell` אם עליך להעביר את הסמן לתא טבלה בקטע הנוכחי. שיטה זו מקבלת ארבעה פרמטרים:

- tableIndex - האינדקס של הטבלה כדי לעבור.
- rowIndex - אינדקס השורה בטבלה.
- columnIndex - אינדקס העמודה בטבלה.
- characterIndex - אינדקס התו בתוך התא.

הניווט מתבצע בתוך הסיפור הנוכחי של החלק הנוכחי. עבור פרמטרי האינדקס, כאשר האינדקס גדול או שווה ל-0, הוא מציין אינדקס מההתחלה כאשר 0 הוא האלמנט הראשון. כאשר האינדקס קטן מ-0, הוא מציין אינדקס מהסוף כאשר -1 הוא האלמנט האחרון.

כמו כן, שים לב ש characterIndex כרגע יכול לציין רק 0 כדי לעבור לתחילת התא או -1 כדי לעבור לסוף התא. להלן דוגמא מראה כיצד להעביר את מיקום סמן לתא הטבלה שצוין. ניתן להוריד קובץ תבנית של דוגמה זו מכאן.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToTableCell.cpp" >}}

### מעבר לסימנייה

סימניות משמשות לעתים קרובות כדי לסמן מקומות מסוימים במסמך שבו יש להוסיף אלמנטים חדשים. כדי לעבור לסימנייה, השתמש ב `DocumentBuilder.MoveToBookmark`. לשיטה זו שני עומסי יתר. הפשוטה ביותר לא מקבלת דבר מלבד שם הסימנייה שאליה יש להזיז את הסמן. להלן דוגמא מראה כיצד להעביר את מיקום סמן לסימנייה. ניתן להוריד קובץ תבנית של דוגמה זו מכאן.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmark.cpp" >}}

עומס יתר זה מעביר את הסמן למיקום מיד לאחר תחילת הסימנייה עם השם שצוין. עומס יתר נוסף `DocumentBuilder.MoveToBookmark` מעביר את הסמן לסימניה בדיוק רב יותר. הוא מקבל שני פרמטרים בוליאניים נוספים:

- isStart קובע אם להזיז את הסמן להתחלה או לסוף הסימנייה.
- isAfter קובע אם להזיז את הסמן להיות אחרי מיקום ההתחלה או הסיום של הסימניה, או להזיז את הסמן להיות לפני מיקום ההתחלה או הסיום של הסימניה.

להלן דוגמא מראה כיצד להעביר את מיקום סמן רק לאחר סיום הסימנייה.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmarkEnd.cpp" >}}

ההשוואה לשתי השיטות אינה תלויה באותיות רישיות.

הכנסת טקסט חדש בדרך זו אינה מחליפה את הטקסט הקיים של הסימנייה. שים לב שחלק מהסימניות במסמך מוקצות לשדות טופס. מעבר לסימנייה כזו והכנסת טקסט שם מכניס את הטקסט לקוד שדה הטופס. למרות שזה לא יבטל את שדה הטופס, הטקסט שהוכנס לא יהיה גלוי מכיוון שהוא הופך לחלק מקוד השדה.

## כיצד להמיר בין יחידות מדידה

רוב מאפייני האובייקט המסופקים ב Aspose.Words API המייצגים מדידה מסוימת (רוחב/גובה, שוליים ומרחקים שונים) מקבלים ערכים בנקודות (1 אינץ ' שווה ל 72 נקודות). לפעמים זה לא נוח אז יש את הכיתה `ConvertUtil` המספקת פונקציות עוזר להמיר בין יחידות מדידה שונות. זה מאפשר המרת אינץ 'לנקודות, נקודות לאינץ', פיקסלים לנקודות ונקודות לפיקסלים. כאשר פיקסלים מומרים לנקודות ולהיפך, ניתן לבצע זאת ברזולוציות 96 נקודות לאינץ ' או ברזולוציית מדד המחירים לצרכן שצוינה.
**ConvertUtil**

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-ConvertUtil-UtilityClasses-ConvertBetweenMeasurementUnits.cpp" >}}
