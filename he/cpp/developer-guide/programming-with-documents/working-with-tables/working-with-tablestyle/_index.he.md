---
title: שנה את סגנון הטבלה במסמכים Word
second_title: Aspose.Words עבור C++
articleTitle: החל סגנון טבלה
linktitle: החל סגנון טבלה
description: "עיצוב טבלה מתקדם C++. צור סגנון טבלה באמצעות C++. החל סגנון טבלה C++."
type: docs
weight: 80
url: /he/cpp/working-with-tablestyle/
timestamp: 2024-01-27-14-07-04
---

סגנון טבלה מגדיר קבוצה של עיצוב שניתן להחיל בקלות על טבלה. ניתן להגדיר עיצוב כגון גבולות, הצללה, יישור וגופן בסגנון טבלה ולהחיל אותו על טבלאות רבות לקבלת מראה עקבי.

Aspose.Words תומך החלת שולחן סגנון לשולחן וגם קריאת מאפיינים של כל שולחן סגנון. סגנונות טבלה נשמרים במהלך טעינה ושמירה בדרכים הבאות:

- סגנונות טבלה בפורמטים DOCX ו - WordML נשמרים בעת טעינה ושמירה בפורמטים אלה
- סגנונות טבלה נשמרים בעת טעינה ושמירה בפורמט DOC (אך לא בשום פורמט אחר)
- בעת ייצוא לפורמטים אחרים, עיבוד או הדפסה, סגנונות טבלה מורחבים לעיצוב ישיר בטבלה, כך שכל העיצוב נשמר

## צור סגנון טבלה

המשתמש יכול ליצור סגנון חדש ולהוסיף אותו לאוסף סגנון. שיטת [Add](https://reference.aspose.com/words/cpp/aspose.words/stylecollection/add/) משמשת ליצירת סגנון טבלה חדש.

דוגמת הקוד הבאה מראה כיצד ליצור סגנון טבלה חדש המוגדר על ידי המשתמש:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "create-table-style.h" >}}

## העתק סגנון טבלה קיים

במידת הצורך, תוכל להעתיק סגנון טבלה שכבר קיים במסמך מסוים לאוסף הסגנונות שלך בשיטת `AddCopy`.

חשוב לדעת שעם העתקה זו מועתקים גם הסגנונות המקושרים.

דוגמת הקוד הבאה מראה כיצד לייבא סגנון ממסמך אחד למסמך אחר:

EXAMPLE

## החל סגנון טבלה קיים

Aspose.Words מספק [TableStyle](https://reference.aspose.com/words/cpp/aspose.words/tablestyle/) שירש מהכיתה [Style](https://reference.aspose.com/words/cpp/aspose.words/style/). **TableStyle** מאפשר למשתמש להחיל אפשרויות סגנון שונות כמו הצללה, ריפוד, כניסה, [CellSpacing](https://reference.aspose.com/words/cpp/aspose.words/tablestyle/get_cellspacing/) ו [Font](https://reference.aspose.com/words/cpp/aspose.words/style/get_font/) וכו'.

בנוסף, Aspose.Words מספק את הכיתה [StyleCollection](https://reference.aspose.com/words/cpp/aspose.words/stylecollection/) וכמה מאפיינים של הכיתה `Table` כדי לציין עם איזה סגנון טבלה נעבוד: [Style](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_style/), [StyleIdentifier](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_styleidentifier/), [StyleName](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_stylename/), ו - [StyleOptions](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_styleoptions/).

Aspose.Words מספק גם [ConditionalStyle](https://reference.aspose.com/words/cpp/aspose.words/conditionalstyle/) מחלקה המייצגת עיצוב מיוחד המיושם על אזור כלשהו בטבלה עם סגנון טבלה שהוקצה, ו [ConditionalStyleCollection](https://reference.aspose.com/words/cpp/aspose.words/conditionalstylecollection/) המייצג אוסף של **ConditionalStyle** אובייקטים. אוסף זה מכיל קבוצה קבועה של פריטים המייצגים פריט אחד עבור כל ערך של סוג הספירה [ConditionalStyleType](https://reference.aspose.com/words/cpp/aspose.words/conditionalstyletype/). הספירה **ConditionalStyleType** מגדירה את כל אזורי הטבלה האפשריים שאליהם ניתן להגדיר עיצוב מותנה בסגנון טבלה.

במקרה זה, ניתן להגדיר עיצוב מותנה עבור כל אזור הטבלה האפשרי המוגדר תחת סוג הספירה ConditionalStyleType.

דוגמת הקוד הבאה מראה כיצד להגדיר עיצוב מותנה עבור שורת הכותרת של הטבלה:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "define-conditional-formatting.h" >}}

אתה יכול גם לבחור לאילו חלקי טבלה להחיל סגנונות, כגון עמודה ראשונה, עמודה אחרונה, שורות פסים. הם מופיעים בספירה [TableStyleOptions](https://reference.aspose.com/words/cpp/aspose.words.tables/tablestyleoptions/) והם מיושמים דרך המאפיין [StyleOptions](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_styleoptions/). הספירה **TableStyleOptions** מאפשרת שילוב ביטי של תכונות אלה.

דוגמת הקוד הבאה מראה כיצד ליצור טבלה חדשה עם סגנון טבלה מיושם:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "build-table-with-style.h" >}}

התמונות למטה מראות ייצוג של **Table Styles** ב Microsoft Word והמאפיינים המתאימים שלהם ב Aspose.Words.

![formatting-table-style-aspose-words-cpp](applying-formatting-10.png)

## קח עיצוב מסגנון הטבלה והחל אותו כעיצוב ישיר

Aspose.Words מספק גם את שיטת [ExpandTableStylesToDirectFormatting](https://reference.aspose.com/words/cpp/aspose.words/document/expandtablestylestodirectformatting/) לקחת עיצוב שנמצא על סגנון טבלה ומרחיב אותו על השורות והתאים של הטבלה כעיצוב ישיר. נסה לשלב עיצוב עם סגנון טבלה וסגנון תא.

{{% alert color="primary" %}}

שיטה זו לא תעקוף כל עיצוב אחר שכבר הוחל על הטבלה באמצעות פורמט שורה או תא.

{{% /alert %}}

דוגמת הקוד הבאה מראה כיצד להרחיב את העיצוב מסגנונות לשורות ותאים בטבלה כעיצוב ישיר:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "expand-formatting-on-cells-and-row-from-style.h" >}}
