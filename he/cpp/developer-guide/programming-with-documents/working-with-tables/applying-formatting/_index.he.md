---
title: עיצוב טבלה ב C++
second_title: Aspose.Words עבור C++
articleTitle: החל עיצוב
linktitle: החל עיצוב
description: "עיצוב טבלה בפרטים באמצעות C++. באמצעות C++ כדי לעצב כל חלק בטבלה."
type: docs
weight: 70
url: /he/cpp/applying-formatting/
timestamp: 2024-10-21-11-17-44
---

ניתן ליישם כל אלמנט בטבלה עם עיצוב שונה. לדוגמה, עיצוב טבלה יחול על הטבלה כולה, עיצוב שורות על שורות מסוימות בלבד, עיצוב תאים על תאים מסוימים בלבד.

Aspose.Words מספק עשיר API כדי לאחזר ולהחיל עיצוב לטבלה. אתה יכול להשתמש בצמתים [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/), [RowFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/) ו [CellFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/) כדי להגדיר את העיצוב.

במאמר זה נדבר על אופן החלת העיצוב על צמתים שונים בטבלה ובאילו הגדרות עיצוב טבלה Aspose.Words תומכות.

## החל עיצוב על צמתים שונים

בסעיף זה, נבחן את החלת העיצוב על צמתים שונים בטבלה.

### עיצוב ברמת הטבלה

כדי להחיל עיצוב על טבלה, ניתן להשתמש במאפיינים הזמינים בצומת **Table** המתאים באמצעות הכיתות [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/), [PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/) ו - [TableCollection](https://reference.aspose.com/words/cpp/aspose.words.tables/tablecollection/).

{{% alert color="primary" %}}

שים לב שהטבלה חייבת לכלול שורה אחת לפחות לפני שניתן יהיה להחיל את מאפייני הטבלה. המשמעות היא שכאשר בונים טבלה עם [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/), עיצוב זה חייב להיעשות לאחר השיחה הראשונה ל [InsertCell](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertcell/), או לאחר הוספת השורה הראשונה לטבלה, או כאשר צמתים מוכנסים ישירות ל DOM.

{{% /alert %}}

התמונות שלהלן מציגות ייצוג של תכונות העיצוב **Table** ב Microsoft Word והמאפיינים המתאימים שלהן ב Aspose.Words.

![formattin-features-table-level-aspose-words-cpp](applying-formatting-1.png)

![formatting-table-options-aspose-words-cpp](applying-formatting-2.png)

דוגמת הקוד הבאה מראה כיצד להחיל גבול מתאר על טבלה:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "apply-outline-border.h" >}}

דוגמת הקוד הבאה מראה כיצד לבנות טבלה עם כל הגבולות מופעלים (רשת):

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "build-table-with-borders.h" >}}

### עיצוב רמת שורה

**רמת שורה**

{{% alert color="primary" %}}

שימו לב ש **Row** יכול להיות רק צומת ילד של **Table**. יחד עם זאת, חייב להיות לפחות **Cell** ב **Row** כדי שניתן יהיה להחיל עליו עיצוב.

{{% /alert %}}

התמונות שלהלן מציגות ייצוג של תכונות העיצוב **Row** ב Microsoft Word והמאפיינים המתאימים שלהן ב Aspose.Words.

![formatting-row-level-aspose-words-cpp](applying-formatting-3.png)

דוגמת הקוד הבאה מראה כיצד לשנות את עיצוב שורת הטבלה:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "modify-row-formatting.h" >}}

### עיצוב ברמת התא

עיצוב ברמת התא נשלט על ידי כיתות [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/), [CellFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/) ו - [CellCollection](https://reference.aspose.com/words/cpp/aspose.words.tables/cellcollection/).

{{% alert color="primary" %}}

שימו לב ש **Cell** יכול להיות רק צומת ילד של **Row**. יחד עם זאת, חייב להיות לפחות [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/) ב **Cell** כדי שניתן יהיה להחיל עליו עיצוב.

בנוסף ל **Paragraph**, אתה יכול גם להוסיף **Table** ל **Cell**.

{{% /alert %}}

התמונות שלהלן מציגות ייצוג של תכונות העיצוב **Cell** ב Microsoft Word והמאפיינים המתאימים שלהן ב Aspose.Words.

![formatting-cell-level-aspose-words-cpp](applying-formatting-4.png)

![auto-formatting-cell-level-aspose-words-cpp](applying-formatting-5.png)

דוגמת הקוד הבאה מראה כיצד לשנות את העיצוב של תא טבלה:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "modify-cell-formatting.h" >}}

דוגמת הקוד הבאה מראה כיצד להגדיר את כמות השטח (בנקודות) להוסיף לשמאל / למעלה/ימינה / למטה של תוכן התא:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "cell-padding.h" >}}

## ציין גבהים בשורה

הדרך הפשוטה ביותר להגדיר את גובה השורה היא להשתמש ב - **DocumentBuilder**. באמצעות המאפיינים המתאימים **RowFormat**, באפשרותך להגדיר את הגדרת הגובה המוגדרת כברירת מחדל או להחיל גובה שונה עבור כל שורה בטבלה.

ב Aspose.Words, גובה שורת הטבלה נשלט על ידי:

- מאפיין גובה השורה - [Height](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_height/)
- מאפיין כלל הגובה עבור השורה הנתונה - [HeightRule](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_heightrule/)

במקביל, גובה שונה ניתן להגדיר עבור כל שורה – זה מאפשר לך לשלוט באופן נרחב את הגדרות הטבלה.

{{% alert color="primary" %}}

ניתן להגדיר אפשרויות כלל לציון גובה האובייקט באמצעות ספירת [HeightRule](https://reference.aspose.com/words/cpp/aspose.words/heightrule/).

{{% /alert %}}

דוגמת הקוד הבאה מראה כיצד ליצור טבלה המכילה תא בודד ולהחיל עיצוב שורות:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "apply-row-formatting.h" >}}

## ציון רוחב טבלה ותא

טבלה במסמך Microsoft Word מספקת מספר דרכים שונות לשינוי גודל הטבלה והתאים הבודדים. תכונות אלה מאפשרות שליטה ניכרת על המראה וההתנהגות של הטבלה, כך ש Aspose.Words תומך בהתנהגות של טבלאות, כמו ב Microsoft Word.

חשוב לדעת כי אלמנטים בטבלה מציגים מספר מאפיינים שונים שיכולים להשפיע על אופן חישוב רוחב הטבלה הכוללת, כמו גם תאים בודדים:

- רוחב מועדף על השולחן
- רוחב מועדף על תאים בודדים
- מאפשר התאמה אוטומטית על השולחן

מאמר זה מפרט כיצד פועלים מאפייני חישוב רוחב הטבלה השונים וכיצד ניתן לקבל שליטה מלאה על חישוב רוחב הטבלה. זה הוא
שימושי במיוחד לדעת במקרים כאלה שבהם פריסת הטבלה אינה מופיעה כצפוי.

{{% alert color="primary" %}}

ברוב המקרים, התא המועדף מומלץ מאשר רוחב הטבלה. רוחב התא המועדף הוא יותר בקנה אחד עם מפרט פורמט DOCX כמו גם מודל Aspose.Words.

רוחב התא הוא למעשה ערך מחושב עבור פורמט DOCX. רוחב התא בפועל יכול להיות תלוי בהרבה דברים. לדוגמה, שינוי שולי העמוד או רוחב הטבלה המועדף יכול להשפיע על רוחב התא בפועל.

רוחב התא המועדף הוא מאפיין תא המאוחסן במסמך. זה לא תלוי בשום דבר ולא משתנה כאשר אתה משנה את הטבלה או מאפיינים אחרים של התא.

{{% /alert %}}

{{% alert color="primary" %}}

כל המאפיינים והשיטות המתוארים במאמר זה קשורים לאופן שבו טבלאות פועלות ב Microsoft Word. אז ברוב המקרים, אם אתה בונה את הטבלה שלך באופן תכנותי אך מתקשה ליצור את הטבלה הרצויה, אתה יכול במקום זאת לנסות ליצור אותה חזותית ב Microsoft Word תחילה ואז פשוט להעתיק את ערכי העיצוב ליישום שלך.

{{% /alert %}}

### כיצד להשתמש רוחב מועדף

הרוחב הרצוי של טבלה או תאים בודדים מוגדר באמצעות תכונת הרוחב המועדפת, שהיא הגודל שאלמנט שואף להתאים. כלומר, ניתן לציין את הרוחב המועדף עבור הטבלה כולה או עבור תאים בודדים. במצבים מסוימים יתכן שלא ניתן להתאים את הרוחב הזה בדיוק, אך הרוחב בפועל יהיה קרוב לערך זה ברוב המקרים.

הסוג והערך המתאימים של הרוחב המועדף נקבעים באמצעות השיטות של הכיתה [PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/):

- שיטת [Auto](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/auto/) כדי לציין אוטומטי או "אין רוחב מועדף"
- שיטת [FromPercent](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/frompercent/) כדי לציין אחוז רוחב
- שיטת [FromPoints](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/frompoints/) כדי לציין את הרוחב בנקודות

התמונות למטה מראות ייצוג של *preferred width setting features* ב Microsoft Word והמאפיינים המתאימים שלהם ב Aspose.Words.

![formatting-table-properties-aspose-words-cpp](applying-formatting-8.png)

דוגמה לאופן החלת אפשרויות אלה על טבלה אמיתית במסמך ניתן לראות בתמונה למטה.

![todo:image_alt_text](applying-formatting-9.png)

{{% alert color="primary" %}}

לפני שתוכל להשתמש ברוחב המועדף בטבלה, עליך לוודא שהטבלה מכילה לפחות שורה אחת. הסיבה לכך היא שעיצוב טבלה כזה במסמך Microsoft Word או במסמך שנוצר ב Aspose.Words מאוחסן בשורות הטבלה.

{{% /alert %}}

#### ציין את הטבלה או רוחב התא המועדפים

ב Aspose.Words, רוחבי טבלה ותא מוגדרים באמצעות המאפיין [Table.PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_preferredwidth/) והמאפיין [CellFormat.PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_preferredwidth/), עם אפשרויות זמינות בספירה [PreferredWidthType](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidthtype/):

- **Auto**, שהוא שווה ערך ללא סט רוחב מועדף
- **Percent**, שמתאים לאלמנט ביחס לשטח הזמין בחלון או בגודל המיכל, ומחשב מחדש את הערך כאשר הרוחב הזמין משתנה
- **Points**, המתאים לאלמנט ברוחב שצוין בנקודות

{{% alert color="primary" %}}

כברירת מחדל, ניתן לתאר טבלה כמתאימה ל-100% מהשטח הזמין בדף. במקרה זה, המשמעות היא שהטבלה תנסה לתפוס את הרווח בין שולי העמוד השמאלי והימני.

{{% /alert %}}

שימוש במאפיין [Table.PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_preferredwidth/) יתאים את רוחבו המועדף ביחס למיכל שלו: עמוד, עמודת טקסט או תא טבלה חיצוני אם מדובר בטבלה מקוננת.

דוגמת הקוד הבאה מראה כיצד להגדיר את הטבלה להתאמה אוטומטית ל-50% מרוחב העמוד:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "auto-fit-to-page-width.h" >}}

שימוש במאפיין [CellFormat.PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_preferredwidth/) בתא נתון יתאים את רוחבו המועדף.

דוגמת הקוד הבאה מראה כיצד להגדיר את הגדרות הרוחב המועדפות השונות:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "preferred-width-settings.h" >}}

#### מצא סוג וערך רוחב מועדפים

ניתן להשתמש במאפיינים [Type](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidthtype/) ו - [Value](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidthtype/) כדי למצוא את פרטי הרוחב המועדפים על הטבלה או התא הרצויים.

דוגמת הקוד הבאה מראה כיצד לאחזר את סוג הרוחב המועדף של תא טבלה:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "retrieve-preferred-width-type.h" >}}

### כיצד להגדיר התאמה אוטומטית

המאפיין [AllowAutoFit](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_allowautofit/) מאפשר לתאים בטבלה לגדול ולהתכווץ בהתאם לקריטריון שנבחר. לדוגמה, באפשרותך להשתמש באפשרות **AutoFit to Window** כדי להתאים את הטבלה לרוחב הדף, ובאפשרות **AutoFit to Content** כדי לאפשר לכל תא לגדול או להתכווץ בהתאם לתוכן שלו.

{{% alert color="primary" %}}

בנוסף, ניתן להשתמש במאפיין **AllowAutoFit** יחד עם רוחב תא מועדף כדי לעצב תא שמתאים באופן אוטומטי לתוכן שלו, אך יש לו גם רוחב ראשוני. אם יש צורך, רוחב התא יכול לגדול מעבר לרוחב זה.

{{% /alert %}}

כברירת מחדל, Aspose.Words מוסיף טבלה חדשה באמצעות **AutoFit to Window**. הטבלה תהיה בגודל בהתאם לרוחב העמוד הזמין. כדי לשנות את גודל הטבלה, ניתן לקרוא לשיטת [AutoFit](https://reference.aspose.com/words/cpp/aspose.words.tables/table/autofit/). שיטה זו מקבלת ספירה [AutoFitBehavior](https://reference.aspose.com/words/cpp/aspose.words.tables/autofitbehavior/) המציינת איזה סוג של התאמה אוטומטית מוחל על הטבלה.

חשוב לדעת ששיטת ההתאמה האוטומטית היא למעשה קיצור דרך המחיל מאפיינים שונים על הטבלה בו זמנית. אלה תכונות שלמעשה נותנות לטבלה את ההתנהגות הנצפית. נדון במאפיינים אלה עבור כל אפשרות התאמה אוטומטית.

דוגמת הקוד הבאה מראה כיצד לערוך טבלה לכיווץ או גידול של כל תא בהתאם לתכולתו:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "allow-auto-fit.h" >}}

#### AutoFit שולחן לחלון

כאשר התאמה אוטומטית לחלון מוחלת על טבלה, הפעולות הבאות מבוצעות למעשה מאחורי הקלעים:

1. המאפיין **Table.AllowAutoFit** מאפשר לשנות באופן אוטומטי את גודל העמודות כך שיתאימו לתוכן הזמין, תוך שימוש בערך **Table.PreferredWidth** של 100%
2. **CellFormat.PreferredWidth** מוסר מכל תאי הטבלה
   {{% alert color="primary" %}}
   שימו לב שזה שונה מעט מהתנהגות Microsoft Word, שבה הרוחב המועדף על כל תא מוגדר לערכים מתאימים בהתבסס על הגודל והתוכן הנוכחיים שלהם. Aspose.Words אינו מעדכן את הרוחב המועדף ולכן הם פשוט נמחקים במקום.
   {{% /alert %}}
3. רוחב העמודות מחושב מחדש עבור תוכן הטבלה הנוכחי-התוצאה הסופית היא טבלה שתופסת את כל הרוחב הזמין
4. רוחב העמודות בטבלה משתנה באופן אוטומטי כאשר המשתמש עורך את הטקסט

דוגמת הקוד הבאה מראה כיצד להתאים טבלה אוטומטית לרוחב העמוד:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "auto-fit-table-to-page-width.h" >}}

#### AutoFit טבלה לתוכן

כאשר הטבלה מותאמת אוטומטית לתוכן, השלבים הבאים מבוצעים למעשה מאחורי הקלעים:

1. המאפיין **Table.AllowAutoFit** מאפשר לשנות באופן אוטומטי את גודל כל תא בהתאם לתוכן שלו

2. רוחב הטבלה המועדף מוסר מ **Table.PreferredWidth**, **CellFormat.PreferredWidth** מוסר עבור כל תא טבלה
   {{% alert color="primary" %}}

   שים לב שאפשרות התאמה אוטומטית זו מסירה את הרוחב המועדף מהתאים, בדיוק כמו ב Microsoft Word. אם ברצונך לשמור את גדלי העמודות ולהגדיל או להקטין את העמודות כך שיתאימו לתוכן, עליך להגדיר את המאפיין **Table.AllowAutoFit** ל **True** בפני עצמו במקום להשתמש בקיצור הדרך להתאמה אוטומטית.{{% /alert %}}

3. רוחב העמודות מחושב מחדש עבור תוכן הטבלה הנוכחי-התוצאה הסופית היא טבלה שבה רוחב העמודות ורוחב הטבלה כולה משתנים באופן אוטומטי כך שיתאימו בצורה הטובה ביותר לתוכן כאשר המשתמש עורך את הטקסט

דוגמת הקוד הבאה מראה כיצד להתאים אוטומטית טבלה לתוכן שלה:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "auto-fit-table-to-contents.h" >}}

#### השבת AutoFit בטבלה והשתמש ברוחבי עמודות קבועים

אם לטבלה יש התאמה אוטומטית מושבת ובמקום זאת משתמשים ברוחבי עמודות קבועים, השלבים הבאים מבוצעים:

1. **Table.AllowAutoFit** המאפיין מושבת כך שעמודות לא צומחות או מתכווצות לתוכן שלהן
2. הרוחב המועדף של הטבלה כולה מוסר מ **Table.PreferredWidth**, **CellFormat.PreferredWidth** מוסר מכל תאי הטבלה
3. התוצאה הסופית היא טבלה שרוחב העמודות שלה נקבע על ידי המאפיין [CellFormat.Width](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_width/), והעמודות שלה לא משתנות באופן אוטומטי כאשר המשתמש מזין טקסט או כאשר גודל הדף משתנה

{{% alert color="primary" %}}

שים לב שאם לא צוין רוחב עבור **CellFormat.Width**, נעשה שימוש בערך ברירת המחדל של אינץ ' אחד (72 נקודות).

{{% /alert %}}

דוגמת הקוד הבאה מראה כיצד להשבית התאמה אוטומטית ולאפשר רוחב קבוע עבור הטבלה שצוינה:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "auto-fit-table-to-fixed-column-widths.h" >}}

### סדר עדיפות בעת חישוב רוחב התא

Aspose.Words מאפשר למשתמשים להגדיר את רוחב הטבלה או התא באמצעות אובייקטים מרובים, כולל [CellFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/) – המאפיין [Width](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_width/) שלו נשאר בעיקר מגרסאות קודמות, עם זאת, הוא עדיין שימושי לפשט את הגדרת רוחב התא.

חשוב לדעת כי המאפיין **CellFormat.Width** פועל באופן שונה בהתאם לאיזה מהמאפיינים האחרים של רוחב כבר קיימים בטבלה.

Aspose.Words משתמש בסדר הבא לחישוב רוחב התא:

| הזמנה | נכס | תיאור |
| :- | :- | :- |
|  | [AllowAutoFit](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_allowautofit/) נקבע | אם **AutoFit** מופעל:<br />- הטבלה עשויה לצמוח מעבר לרוחב המועדף כדי להתאים לתוכן-היא בדרך כלל לא מתכווצת מתחת לרוחב המועדף<br />- כל שינוי לערך **CellFormat.Width** מתעלם והתא יתאים לתוכן שלו במקום |
|  | [PreferredWidthType](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/get_type/) עם ערך של **Points** או **Percent** | **CellFormat.Width** מתעלמים |
|  | [PreferredWidthType](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/get_type/) עם ערך של **Auto** | הערך מ **CellFormat.Width** מועתק והופך לרוחב המועדף על התא (בנקודות) |

{{% alert color="primary" %}}

כל שינוי במאפיין הרוחב אינו מעודכן ברוחב המועדף, ובמקום זאת יש להחיל אותו על הרוחב המועדף.

{{% /alert %}}

{{% alert color="primary" %}}

בעת יצירת פריסת טבלה קבועה, ציין את רוחב התא. לא ניתן לשמור תא ללא רוחב בפורמט DOC. פורמטים של מסמכים שאינם DOC, כגון DOCX, מאפשרים, באופן עקרוני, שמירת תאים ללא רוחב בפריסת טבלה קבועה.

{{% /alert %}}

## אפשר מרווח בין תאים

אתה יכול לקבל או להגדיר כל רווח נוסף בין תאי טבלה בדומה לאפשרות "ריווח תאים" ב Microsoft Word. ניתן לעשות זאת באמצעות המאפיין [AllowCellSpacing](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_allowcellspacing/).

דוגמה לאופן החלת אפשרויות אלה על טבלה אמיתית במסמך ניתן לראות בתמונה למטה.

<img src="applying-formatting-10.png" alt="formatting-spacing-between-cells-aspose-words-cpp" style="width:500px"/>

דוגמת הקוד הבאה מראה כיצד להגדיר את המרווח בין תאים:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "allow-cell-spacing.h" >}}

## החל גבולות והצללה

ניתן להחיל גבולות והצללה על כל הטבלה באמצעות [Table.SetBorder](https://reference.aspose.com/words/cpp/aspose.words.tables/table/setborder/), [Table.SetBorders](https://reference.aspose.com/words/cpp/aspose.words.tables/table/setborders/) ו [Table.SetShading](https://reference.aspose.com/words/cpp/aspose.words.tables/table/setshading/), או רק על תאים ספציפיים באמצעות [CellFormat.Borders](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_borders/) ו [CellFormat.Shading](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_shading/). בנוסף, ניתן להגדיר גבולות שורות באמצעות [RowFormat.Borders](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_borders/), אולם לא ניתן ליישם הצללה בדרך זו.

התמונות שלהלן מציגות את הגדרות הגבול והצל ב Microsoft Word ואת המאפיינים המתאימים שלהם ב Aspose.Words.

![formatting-border-line-aspose-words-cpp](applying-formatting-6.png)

![formatting-cell-color-aspose-words-cpp](applying-formatting-7.png)

דוגמת הקוד הבאה מראה כיצד לעצב טבלה ותא עם גבולות וצללים שונים:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "format-table-and-cell-with-different-borders.h" >}}
