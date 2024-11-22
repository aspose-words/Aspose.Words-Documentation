---
title: שימוש `DocumentBuilder` לשנות מסמך
second_title: Aspose.Words עבור Java
articleTitle: שימוש `DocumentBuilder` לשנות מסמך
linktitle: שימוש `DocumentBuilder` לשנות מסמך
type: docs
description: "השתמש במבנה המסמך כדי לשנות מסמך בקלות Java."
weight: 20
url: /he/java/using-documentbuilder-to-modify-a-document/
timestamp: 2024-10-21-11-17-44
---

## עיצוב ספציפי

### המונחים:

פורמט גופני נוכחי מיוצג על ידי `Font` החפץ חזר `DocumentBuilder.Font` רכוש. The The The `Font` הכיתה מכילה מגוון רחב של תכונות גופניות אפשריות Microsoft Word.

| ![font-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-1.png) |
|  :-  |
הדוגמה הקודית הבאה מראה כיצד להגדיר פורמט גופני.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetFontFormatting-DocumentBuilderSetFontFormatting.java" >}}


### עיצוב תאים

עיצוב תאים משמש במהלך בניית שולחן. הוא מיוצג על ידי `CellFormat` החפץ חזר `DocumentBuilder.CellFormat` רכוש. CellFormat encapsulates תכונות תאים בטבלה שונים כגון רוחב או היערכות אנכית.

| ![cell-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-2.png) |
|  :-  |
הדוגמה הקודית הבאה מראה כיצד ליצור שולחן המכיל תא יחיד מעוצב.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetTableCellFormatting-DocumentBuilderSetTableCellFormatting.java" >}}

### המונחים:

פורמט שורות נוכחי נקבע על ידי `RowFormat` אובייקט שחזר על ידי `DocumentBuilder.RowFormat` רכוש. האובייקט משקף מידע על כל עיצוב שורות השולחן.

| ![row-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-3.png) |
|  :-  |
להיותlow code דוגמה מראה כיצד ליצור שולחן המכיל תא אחד וליישם עיצוב שורות.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetTableRowFormatting-DocumentBuilderSetTableRowFormatting.java" >}}

### עיצוב רשימה

Aspose.Words מאפשר יצירת רשימות קלה על ידי יישום רשימה. DocumentBuilder מספק `DocumentBuilder.ListFormat` רכוש מחזיר `ListFormat` אובייקט לאובייקט הזה יש כמה שיטות להתחיל ולסיים רשימה ולהגביר/decrease the Indent.

| ![list-fformatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-4.png) |
|  :-  |
ישנם שני סוגים של רשימות Microsoft Word bullet bullet.

- כדי להתחיל רשימה מזוינת, התקשר [ListFormat.applyBulletDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyBulletDefault).
- כדי להתחיל רשימה מספרית, התקשר [ListFormat.applyNumberDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyNumberDefault).

הכדור או המספר והפורמטים מתווספים לפסקה הנוכחית ולכל פסקאות נוספות שנוצרו באמצעות שימוש **DocumentBuilder** עד [ListFormat.removeNumbers](https://reference.aspose.com/words/java/com.aspose.words/listformat/#removeNumbers) נקרא להפסיק את פורמט הרשימה.

במסמכים של Word, רשימות עשויות להכיל עד תשע רמות. רשימת העיצוב של כל רמה מפרטת מה כדור או מספר משמש, נשאר בdent, חלל בין הכדור לטקסט וכו '.

- - כדי להגדיל את רמת הרשימה של הסעיף הנוכחי ברמה אחת, התקשר [ListFormat.listIndent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listIndent).
- - כדי להפחית את רמת הרשימה של הסעיף הנוכחי ברמה אחת, התקשר [ListFormat.listOutdent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listOutdent).

השיטות משנות את רמת הרשימה וליישם את התכונות המפורמטיות של הרמה החדשה.

{{% alert color="primary" %}}

אתה יכול גם להשתמש [ListFormat.listLevelNumber](https://reference.aspose.com/words/java/com.aspose.words/listformat/#setListLevelNumber-int) רכוש כדי להגיע או להגדיר את רמת הרשימה עבור הסעיף. רמות הרשימה מסומנים 0 עד 8.

{{% /alert %}}

הדוגמה הבאה של הקוד מראה כיצד לבנות רשימה רב-דרגתית.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetMultilevelListFormatting-DocumentBuilderSetMultilevelListFormatting.java" >}}

### Page and Article Format

הגדרות דף ונכסים סעיף הם בשפע `PageSetup` אובייקט שחזר על ידי `DocumentBuilder.PageSetup` רכוש. האובייקט מכיל את כל תכונות ההתקנה של הדף של סעיף (רווח שמאל, שולי תחתית, גודל נייר וכן הלאה) כנכסים.

| ![section-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-5.png) |
|  :-  |
הדוגמה הבאה של הקוד מראה כיצד להגדיר תכונות כגון גודל דף וכיוון לסעיף הנוכחי.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetPageSetupAndSectionFormatting-DocumentBuilderSetPageSetupAndSectionFormatting.java" >}}

### יישום סגנון

כמה אובייקטים מעוצבים כמו פונט או ParagraphFormat סגנונות תמיכה. סגנון מובנה יחיד או מוגדר למשתמש מיוצג על ידי `Style` אובייקט המכיל את תכונות הסגנון המקביל כמו שם, סגנון בסיס, גופני ופסקה פורמט של הסגנון, וכן הלאה.

יתר על כן, **Style** האובייקט מספק [Style.getStyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/style/#getStyleIdentifier) רכוש מחזיר מזהה בסגנון עצמאי מקומי מיוצג על ידי **Style.StyleIdentifier** ערך enumeration הנקודה היא שמות סגנונות בנויים בסגנונות Microsoft Word הם מקומיים לשפות שונות. באמצעות מזהה סגנון, אתה יכול למצוא את הסגנון הנכון ללא קשר לשפת המסמך. ערכי ההשכלה תואמים את Microsoft Word סגנונות בנויים כגון נורמלי, ראש 1, ראש 2 וכו '. כל סגנונות המוגדרים על ידי המשתמש מוקצים את **מעצב אופנה ערך המשתמש**.

| ![apply-style-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-6.png) |
|  :-  |
הדוגמה הבאה של הקוד מראה כיצד ליישם את סגנון הסעיף.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyParagraphStyle.java" >}}

### גבולות ושינג

הגבולות מיוצגים על ידי הגבול. זהו אוסף של אובייקטים הגבול אשר נגישים על ידי אינדקס או על ידי סוג גבול. סוג הגבול מיוצג על ידי `BorderType` אזהרה. כמה ערכים של ההנצחה חלים על מספר או רק אלמנט מסמך אחד. לדוגמה, `BorderType.Bottom` חל על סעיף או תא שולחן בזמן `BorderType.DiagonalDown` מציג את הגבול האלכסוני בתא שולחן בלבד.

גם אוסף הגבול ולכל גבול נפרד יש תכונות דומות כמו צבע, סגנון קו, רוחב קו, מרחק מהטקסט, וצל אופציונלי. הם מיוצגים על ידי תכונות של אותו שם. אתה יכול להשיג סוגים שונים של גבולות על ידי שילוב ערכי רכוש. בנוסף, שניהם **BorderCollection** ו **Border** אובייקטים מאפשרים לך לאפס את הערכים האלה כברירת מחדל על ידי קריאה [Border.clearFormatting](https://reference.aspose.com/words/java/com.aspose.words/border/#clearFormatting) שיטה. שים לב שכאשר תכונות הגבול מתאפסות לערכי ברירת מחדל, הגבול הוא בלתי נראה.

| ![set-borders-shading-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-7.png) |
|  :-  |
The The The [Shading](https://reference.aspose.com/words/java/com.aspose.words/shading/) הכיתה מכילה תכונות קידוד עבור רכיבי מסמך. אתה יכול להגדיר את המרקם הרצוי ואת הצבעים מוחלים על הרקע ואת הבסיס של האלמנט.

מרקם הגילוח נקבע עם [מדד](https://www.aspose.com/api/java/words/com.aspose.words/constants/TextureIndex) ערך enumeration המאפשר יישום של דפוסים שונים **Shading** אובייקט לדוגמה, כדי להגדיר צבע רקע עבור אלמנט מסמך, השתמש ב [המונחים: המונחים:](https://www.aspose.com/api/java/words/com.aspose.words/constants/TextureIndex) ערך ולהגדיר את הצבע הקדמי כנכון.

| ![borders-and-shading-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-8.png) |
|  :-  |
הדוגמה הבאה מראה כיצד ליישם את הגבולות ולהשפיל לפסקה.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyBordersAndShadingToParagraph.java" >}}

### Snap to Grid

Aspose.Words מספק שני נכסים `ParagraphFormat.SnapToGrid` ו `Font.SnapToGrid` כדי להשיג ולהגדיר את סעיף נכס להתחבר לרשת

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-SetSnapToGrid.java" >}}

### להזיז את Cursor

### המונחים: Current Cursor Position

אתה יכול להשיג איפה הcursor של בונה ממוקם כרגע בכל עת. The The The [DocumentBuilder.getCurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentNode) הנכס מחזיר את הצומת שנבחר כיום בבנו הזה. הצומת הוא ילד ישיר של פסקה. כל פעילות שתבצע באמצעות `DocumentBuilder` להוסיף לפני `DocumentBuilder.CurrentNode`. כאשר הסעיף הנוכחי ריק או הcursor ממוקם ממש לפני סוף פסקה, `DocumentBuilder.CurrentNode` מחזירים אפס

גם אתה יכול להשתמש [DocumentBuilder.getCurrentParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentParagraph) רכוש, אשר מקבל את הסעיף שנבחר כרגע. **DocumentBuilder**. להיותlow code לדוגמה, כיצד לגשת לצומת הנוכחי בBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderCursorPosition-DocumentBuilderCursorPosition.java" >}}

### מעבר לכל צומת (Paragraphs and Their Children)

אם יש לך מסמך התנגדות, המהווה פסקה או ילד ישיר של פסקה, אתה יכול להצביע על הסמן של בונה לצומת זה. השתמש [DocumentBuilder.moveTo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveTo-com.aspose.words.Node) שיטה לבצע זאת.
הדוגמה הקודית הבאה מראה כיצד להעביר מיקום cursor לצומת שצוין.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToNode-DocumentBuilderMoveToNode.java" >}}

### התחל/סוף

אם אתה צריך לעבור לתחילת המסמך, התקשר [DocumentBuilder.moveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart). אם אתה צריך לעבור לסוף המסמך, התקשר [DocumentBuilder.moveToDocumentEnd](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentEnd).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToDocumentStartEnd-DocumentBuilderMoveToDocumentStartEnd.java" >}}

### לעבור לסעיף

אם אתה עובד עם מסמך המכיל סעיפים מרובים, אתה יכול לעבור לחלק הרצוי באמצעות שימוש [DocumentBuilder.moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int). שיטה זו מעבירה את הcursor לתחילת סעיף מוגדר ומקבלת את המדד של החלק הנדרש. כאשר מדד הסעיף גדול או שווה ל-0, הוא מפרט אינדקס מתחילת המסמך עם 0 להיות החלק הראשון. כאשר מדד הסעיף הוא פחות מ 0, הוא מפרט מדד מסוף המסמך עם 1 להיות החלק האחרון. להיותlow code דוגמה מראה כיצד להעביר מיקום cursor לסעיף שצוין. ניתן להוריד את קובץ התבנית של דוגמה זו [כאן](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToSection-DocumentBuilderMoveToSection.java" >}}

### עקבו אחרי Header / Footer

כאשר אתה צריך לשים כמה נתונים לתוך ראש או רגל, אתה צריך לעבור שם תחילה באמצעות שימוש. [DocumentBuilder.moveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int). השיטה מקבלת ערך של HeaderFooterType המזהה את הסוג של Header או Footer למקום בו יש לעבור את הcursor.

אם אתה רוצה ליצור ראשים ורגליים שונים עבור הדף הראשון, אתה צריך להגדיר את הדף הראשון. [PageSetup.getDifferentFirstPageHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getDifferentFirstPageHeaderFooter) רכוש **true**. אם אתה רוצה ליצור ראשים ורגליים שונים אפילו ודפים מוזרים, אתה צריך להגדיר [PageSetup.getOddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOddAndEvenPagesHeaderFooter) to to **true**.

אם אתה צריך לחזור לסיפור הראשי, השתמש[DocumentBuilder.moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int) לצאת מהראש או מהרגל. להלן דוגמה יוצרת כותרות ורגליות במסמך באמצעות DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderHeadersAndFooters-DocumentBuilderHeaderAndFooters.java" >}}

### לעבור ל Paragraph

שימוש בשימוש[DocumentBuilder.moveToParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToParagraph-int-int) להעביר את הcursor לפסקה הרצויה בסעיף הנוכחי. אתה צריך לעבור שני פרמטרים בשיטה זו: סעיף Index (האינדקס של פסקה כדי לעבור) ו CharacterIndex (אינדקס של הדמות בתוך הסעיף).

הניווט מתבצע בתוך הסיפור הנוכחי של החלק הנוכחי. כלומר, אם העברת את הcursor לראש הראשי של החלק הראשון, אז ס"ק אינדוק מציין את מדד הסעיף בתוך אותו ראש של סעיף.

כאשר סעיף Index הוא גדול או שווה ל-0, הוא מפרט אינדקס מתחילת הקטע עם 0 להיות הסעיף הראשון. כאשר סעיף Index הוא פחות מ 0, הוא מפרט אינדקס מסוף הקטע עם 1 להיות הסעיף האחרון. מדד האופי יכול להיות מוגדר רק כ-0 כדי לעבור לתחילת פסקה או 1 כדי לעבור עד סוף פסקה. הדוגמה הקודית הבאה מראה כיצד להעביר עמדה cursor לפסקה המפורטת. ניתן להוריד את קובץ התבנית של דוגמה זו [כאן](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToParagraph-DocumentBuilderMoveToParagraph.java" >}}

### לעבור אל תא שולחן

שימוש בשימוש [DocumentBuilder.moveToCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToCell-int-int-int-int) אם אתה צריך להעביר את cursor לתא שולחן בחלק הנוכחי. שיטה זו מקבלת ארבעה פרמטרים:

- TableIndex - מדד השולחן כדי לעבור.
- שורת Index - מדד השורה בטבלה.
- עמודה Index - מדד העמודה בטבלה.
- CharacterIndex - המדד של הדמות בתוך התא.

הניווט מתבצע בתוך הסיפור הנוכחי של החלק הנוכחי.

עבור הפרמטרים של המדד, כאשר המדד גדול או שווה ל-0, הוא מפרט אינדקס מההתחלה עם 0 להיות הגורם הראשון. כאשר האינדקס הוא פחות מ 0, הוא מפרט מדד מן הסוף עם 1 להיות האלמנט האחרון.

כמו כן, שימו לב כי איור Index כיום יכול רק לציין 0 כדי לעבור לתחילת התא או 1 כדי לעבור עד סוף התא. הדוגמה הקודית הבאה מראה כיצד להעביר מיקום cursor לתא השולחן שצוין. ניתן להוריד את קובץ התבנית של דוגמה זו [כאן](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToTableCell-DocumentBuilderMoveToTableCell.java" >}}

### לעבור לסימן ספר

סימני ספר משמשים לעתים קרובות כדי לסמן מקומות מסוימים במסמך שבו יש להכניס אלמנטים חדשים. כדי לעבור לסימן ספר, השתמש [DocumentBuilder.moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String). בשיטה זו יש שני עומסים. הפשוט ביותר אינו מקבל דבר מלבד השם של סימן הספר שבו יש להעביר את הcursor. הדוגמה הקודית הבאה מראה כיצד להעביר מיקום cursor לסימן ספר.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmark-DocumentBuilderMoveToBookmark.java" >}}

עומס זה מניע את cursor לעמדה בדיוק לאחר תחילת סימן הספר עם השם שצוין. עוד עומס [DocumentBuilder.moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String-boolean-boolean) מעביר את הcursor לסימן עם דיוק גדול יותר. הוא מקבל שני פרמטרים נוספים:

- isstart קובע אם להעביר את הcursor להתחלה או עד סוף סימן הספר.
- לאחר מכן, הוא קובע אם להעביר את הcursor כדי להיות לאחר תחילת סימן הספר או סיום מיקום, או להעביר את הcursor להיות לפני תחילת סימן הספר או סיום מיקום.

הדוגמה הקודית הבאה מראה כיצד להעביר מיקום cursor רק לאחר סיום סימן הספר.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmarkEnd-DocumentBuilderMoveToBookmarkEnd.java" >}}

הכנסת טקסט חדש בדרך זו אינה מחליפה את הטקסט הקיים של סימן הספר. שים לב כי כמה סימני ספר במסמך מוקצה ליצירת שדות. לעבור לסימן ספר כזה ולהכניס טקסט שם מכניס את הטקסט לתוך קוד שדה הטופס. למרות שזה לא יסולא את שדה הטופס, הטקסט המוכנס לא יהיה גלוי כי זה הופך לחלק קוד השדה.

### לעבור אל A `Merge` שדה

לפעמים צריך לבצע "אדם" Mail Merge שימוש באמצעות `DocumentBuilder` או למלא שדה מיזוג באופן מיוחד בתוך שדה Mail Merge מטפלת באירוע זה מתי [DocumentBuilder.moveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField-java.lang.String) יכול להיות שימושי. השיטה מקבלת את השם של שדה המיזוג. הוא מעביר את הcursor למצב ממש מעבר לשדה המיזוג שצוין ומסיר את שדה המיזוג. הדוגמה הקודית הבאה מראה כיצד להעביר את הcursor למצב ממש מעבר לשדה המיזוג שצוין.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToMergeField-DocumentBuilderMoveToMergeField.java" >}}

## כיצד להמיר בין יחידות מדידה

רוב נכסי האובייקט הניתנים ב Aspose.Words API זה מייצג כמה מדידות (width /height, שולי ומרחקים שונים) לקבל ערכים בנקודות (1 אינץ 'שווה 72 נקודות). לפעמים זה לא נוח כך שיש `ConvertUtil` מעמד המספק פונקציות עוזר להמיר בין יחידות מדידה שונות. זה מאפשר להמיר אינץ ' נקודות, נקודות אינץ ', פיקסלים נקודות, נקודות נקודות על פיקסלים. כאשר פיקסלים מומרים נקודות ולהיפך, ניתן לבצע זאת ב 96 dpi (dots per Inch) החלטות או ברזולוציה dpi שצוין.

**ConvertUtil** הוא מאוד שימושי בעת הגדרת תכונות דף שונות כי לדוגמה אינץ ' הם יותר יחידות מדידה רגיל מאשר נקודות. הדוגמה הבאה מוכיחה כיצד להגדיר את תכונות העמוד אינץ'.

הדוגמה הבאה של הקוד מראה כיצד לציין תכונות דף בסנטימטר.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ConvertBetweenMeasurementUnits-ConvertBetweenMeasurementUnits.java" >}}
