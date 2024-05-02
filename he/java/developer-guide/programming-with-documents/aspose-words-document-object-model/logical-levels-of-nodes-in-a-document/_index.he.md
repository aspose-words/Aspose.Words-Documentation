---
title: רמות לוגיות של נקודות במסמך Java
second_title: Aspose.Words עבור Java
articleTitle: רמות לוגיות של נקודות במסמך
linktitle: רמות לוגיות של נקודות במסמך
type: docs
description: "In In In Aspose.Words עבור Java תיעוד הזכיר רמות לוגיות של צמתים - רמת בלוק, רמת קו תחתון, או רמת שורות. רמת הצומת משמשת לתיאור המיקום בעץ המסמך שבו מתרחשת בדרך כלל הצומת."
weight: 10
url: /he/java/logical-levels-of-nodes-in-a-document/
---

תיעוד זה מתייחס לפעמים לקבוצה של כיתות צומת השייכות ל"רמה" במסמך, כגון "רמת בלוק", "רמה מקוונת" (הידועה גם בשם "inline"), או "רמת צמיחה". רמות אלה במסמך נבדלות באופן הגיוני בלבד ואינן מובעות במפורש על ידי ירושה או אחרת. Aspose.Words DOM האמצעים. רמת הצומת משמשת לתיאור המקום בעץ המסמך שבו הצומת היה מתרחש בדרך כלל.

במאמר הקודם כבר דיברנו על הקשר בין צמתים לבין העובדה כי לא כל הצמתים אסורים להיות ילד של כל צמתים. לדוגמה, תא יכול להיות רק ילד רו, ופרק יכול להיות רק ילד שולחן, וכן הלאה. מערכות יחסים אלה חלות גם על החלוקה ההגיונית של צמתים לרמות במסמך.

הקטעים הבאים מתארים את הרמות הלוגיות של צמתים Aspose.Words השיעורים שייכים לכל רמה.

## מסמך ודרגה לוגית

A A A מסמך Word מורכב מחלק אחד או יותר, מיוצג על ידי [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) הכיתה והמפולגת על ידי הפסקות. סעיף יכול להגדיר את גודל העמוד שלו, שוליים, אוריינטציה, מספר עמודות טקסט, כותרות ו Footers.

[Document](https://reference.aspose.com/words/java/com.aspose.words/document/) ו [סעיף](https://www.aspose.com/api/words/java/com.aspose.words/section) לנקודות יש את המבנה כפי שמוצג בתרשים הבא.

<img src="/words/java/logical-levels-of-nodes-in-a-document/document-and-section-level.png" alt="document-and-section-level-aspose-words-java" style="width:700px"/>

חלק מכיל את הטקסט הראשי, כמו גם ראשים והולכי רגל עבור הראשון, אפילו, דפי מוזר. "זרימות" שונות אלה נקראות *stories*.

In In In Aspose.Words, The The **Section** Node מכיל [Body](https://reference.aspose.com/words/java/com.aspose.words/body/) ו [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) סיפורים. The The The **Body** האובייקט מאחסן את הטקסט הראשי. The The The **HeaderFooter** חפצים מאחסנים את הטקסט לכל ראש ורגל. הטקסט של כל סיפור מורכב פסקאות וטבלאות, בהתאמה מיוצג על ידי **Paragraph** ו **Table** אובייקטים ברמת הבלוק

בנוסף, כל אחד מסמך Word יכול להכיל מבריק, אשר מיוצג על ידי [GlossaryDocument](https://reference.aspose.com/words/java/com.aspose.words/glossarydocument/) המונחים: Aspose.Words. מסמך מבריק מכיל [BuildingBlocks](https://reference.aspose.com/words/java/com.aspose.words/buildingblock/), [AutoText](https://reference.aspose.com/words/java/com.aspose.words/buildingblocktype/#AUTO-TEXT), ו [AutoCorrect](https://reference.aspose.com/words/java/com.aspose.words/buildingblocktype/#AUTO-CORRECT) ערכים.

**GlossaryDocument** כולל [BuildingBlock](https://reference.aspose.com/words/java/com.aspose.words/buildingblock/) חסרונות המייצגים סוגים שונים של רשומות מסמך מבריק. כל אחד **BuildingBlock** מכיל חלקים שניתן להכניס, להסיר ולהעתק למסמכים.

## רמה הגיונית

צמתים ברמת בלוק מייצגים מכולות עבור בקרת תוכן ותכנים, ויכולים להתרחש בצומת עץ המסמכים בצומת הבאים:

- גוף
- Header
- Footer
- תגית: Footnote
- תגובה
- צורה
- - Groupצורה
- תאים
- המונחים: StructuredDocumentTag

צמתים ברמת בלוק מיוצגים על ידי המעמדות הבאים:

- - [Tables](https://reference.aspose.com/words/java/com.aspose.words/table/) ו [Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), מהן הנקודות החשובות ביותר לבלוק
- הערות ספרים, המתרחשות הן ברמת הבלוק והן ברמת האינטרנט
- - [StructuredDocumentTag](https://reference.aspose.com/words/java/com.aspose.words/structureddocumenttag/), המייצג סמרטוט מותאם אישית ויכול להכיל גם את בקרת התוכן והתוכן

הדיאגרמה הבאה מציגה את האלמנטים ברמת בלוק.

<img src="/words/java/logical-levels-of-nodes-in-a-document/block-level.png" alt="block-level-aspose-words-java" style="width:550px"/>

## המונחים: logical Level

צמתים ברמת Inline מייצגים את התוכן האמיתי של המסמך ויכולים להיכלל במיכלים הבאים:

- Paragraph - המכל הנפוץ ביותר
- [SmartTag](https://reference.aspose.com/words/java/com.aspose.words/smarttag/)
- המונחים: StructuredDocumentTag

מרכיבים ברמת Inline מיוצגים על ידי המעמדות הבאים:

- - [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) - ריצה של טקסט מעוצבת אחרת
- - [BookmarkStart](https://reference.aspose.com/words/java/com.aspose.words/bookmarkstart/) ו [BookmarkEnd](https://reference.aspose.com/words/java/com.aspose.words/bookmarkend/) תגית: Bookmarks
- - [TuneeStart (CommentRange Ende Ende Ende Ende Ende Ende Ende Ends/java/com)](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/), [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) ו [Footnote](https://reference.aspose.com/words/java/com.aspose.words/footnote/) מייצג
- - [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/), [FieldChar](https://reference.aspose.com/words/java/com.aspose.words/fieldchar/), [FieldSeparator](https://reference.aspose.com/words/java/com.aspose.words/fieldseparator/) ו [FieldEnd](https://reference.aspose.com/words/java/com.aspose.words/fieldend/) זה מייצג דמויות שדה, [FormField](https://reference.aspose.com/words/java/com.aspose.words/formfield/) מייצגים שדות Word
- - [SpecialChar](https://reference.aspose.com/words/java/com.aspose.words/specialchar/) מייצג דמויות מיוחדות במסמך
- - [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) ו [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) מייצגים צורות, ציורים, תמונות וכו'.
- SmartTag and StructuredDocument Tag מייצג סמן מותאם אישית

הדיאגרמה הבאה מציגה את מבנה הצמתים ברמת הרשת.

<img src="/words/java/logical-levels-of-nodes-in-a-document/inline-level.png" alt="inline-level-aspose-words-java" style="width:785px"/>

{{% alert color="primary" %}}

צורות Microsoft Word כוללים את Office Art AutoShapes, תיבות טקסט, תמונות, אובייקטים קטנים, ובקרת ActiveX, אשר כולם מיוצגים באמצעות `Shape` מעמד. חלק מהצורות יכולות גם להכיל טקסט, כך ש- Shape nodes in Aspose.Words יכול להכיל צמתים ברמת בלוק.

ניתן לחלק את הצורות בתוך זה באמצעות Groupלעצב צומת

{{% /alert %}}

{{% alert color="primary" %}}

הערות והערות יכולות להכיל טקסט, לכן הערות והערות הערות בפנים Aspose.Words יכול להכיל צמתים ברמת בלוק.

{{% /alert %}}

## כתובת: Row, and Cell Node Level

השולחן מורכב מעמודי שורות ותאים. רכיבי שולחן מיוצגים על ידי המעמדות הבאים:

- - [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) מייצג שורת שולחן
- - [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) מייצג תא שולחן
- המונחים: StructuredDocument Tag מייצג סמן מותאם אישית

הדיאגרמה הבאה מציגה את המבנים של השולחן, רו ורמות תאים.

<img src="/words/java/logical-levels-of-nodes-in-a-document/table-row-cell.png" alt="table-row-cell-aspose-words-java" style="width:910px"/>
