---
title: רמות לוגיות של נקודות במסמך C#
second_title: Aspose.Words עבור .NET
articleTitle: רמות לוגיות של נקודות במסמך
linktitle: רמות לוגיות של נקודות במסמך
type: docs
description: "In In In Aspose.Words עבור .NET תיעוד הזכיר רמות לוגיות של צמתים - רמת בלוק, רמת קו תחתון, או רמת שורות באמצעות C#. רמת הצומת משמשת לתיאור המיקום בעץ המסמך שבו מתרחשת בדרך כלל הצומת."
weight: 10
url: /he/net/logical-levels-of-nodes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

תיעוד זה מתייחס לפעמים לקבוצה של כיתות צומת השייכות ל"רמה" במסמך, כגון "רמת בלוק", "רמה מקוונת" (הידועה גם בשם "inline"), או "רמת צמיחה". רמות אלה במסמך נבדלות באופן הגיוני בלבד ואינן מובעות במפורש על ידי ירושה או אחרת. Aspose.Words DOM האמצעים. רמת הצומת משמשת לתיאור המקום בעץ המסמך שבו הצומת היה מתרחש בדרך כלל.

במאמר הקודם, כבר דיברנו על הקשר בין צמתים לבין העובדה כי לא כל הצמתים מותר להיות ילד של כל צמתים. לדוגמה, תאים יכולים להיות רק ילד רו, ופרק יכול להיות רק ילד שולחן, וכן הלאה. מערכות יחסים אלה חלות גם על חלוקה הגיונית של נקודות לתוך רמות במסמך.

הקטעים הבאים מתארים את הרמות הלוגיות של צמתים Aspose.Words השיעורים שייכים לכל רמה.

## מסמך ודרגה לוגית

A A A A מסמך Word מורכב מחלק אחד או יותר, מיוצג על ידי [Section](https://reference.aspose.com/words/net/aspose.words/section/) הכיתה והמפולגת על ידי הפסקות. סעיף יכול להגדיר את גודל העמוד שלו, שוליים, אוריינטציה, מספר עמודות טקסט, כותרות ו Footers.

[Document](https://reference.aspose.com/words/net/aspose.words/document/) ו [Section](https://reference.aspose.com/words/net/aspose.words/section/) נקודות מדרגות יש את המבנה כפי שמוצג בתרשים הבא.

<img src="/words/net/logical-levels-of-nodes-in-a-document/document-and-section-level.png" alt="document-and-section-level-aspose-words" style="width:700px"/>

חלק מכיל את הטקסט הראשי, כמו גם ראשים והולכי רגל עבור הראשון, אפילו, דפי מוזר. "זרימות" שונות אלה נקראות *stories*.

In In In Aspose.Words, The The **Section** Node מכיל [Body](https://reference.aspose.com/words/net/aspose.words/body/) ו [HeaderFooter](https://reference.aspose.com/words/net/aspose.words/headerfooter/) סיפורים. The The The **Body** האובייקט מאחסן את הטקסט הראשי. The The The **HeaderFooter** חפצים מאחסנים את הטקסט לכל ראש ורגל. הטקסט של כל סיפור מורכב פסקאות וטבלאות, בהתאמה מיוצג על ידי **Paragraph** ו **Table** אובייקטים ברמת הבלוק

בנוסף, כל אחד מסמך Word יכול להכיל מבריק, אשר מיוצג על ידי [GlossaryDocument](https://reference.aspose.com/words/net/aspose.words.buildingblocks/glossarydocument/) המונחים: Aspose.Words. מסמך מבריק מכיל [BuildingBlocks](https://reference.aspose.com/words/net/aspose.words.buildingblocks/glossarydocument/buildingblocks/), [AutoText](https://reference.aspose.com/words/net/aspose.words.buildingblocks/buildingblocktype/), ו [AutoCorrect](https://reference.aspose.com/words/net/aspose.words.buildingblocks/buildingblocktype/) ערכים.

**GlossaryDocument** כולל [BuildingBlock](https://reference.aspose.com/words/net/aspose.words.buildingblocks/buildingblock/) נקודות המייצגות סוגים שונים של רשומות מסמך מבריקות. כל אחד **BuildingBlock** מכיל חלקים שניתן להכניס, להסיר ולהעתק למסמכים.

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

- - [Tables](https://reference.aspose.com/words/net/aspose.words.tables/table/) ו [Paragraphs](https://reference.aspose.com/words/net/aspose.words/paragraph/), מהן הנקודות החשובות ביותר לבלוק
- הערות ספרים, המתרחשות הן ברמת הבלוק והן ברמה הפנימית
- - [StructuredDocumentTag](https://reference.aspose.com/words/net/aspose.words.markup/structureddocumenttag/), המייצג סמרטוט מותאם אישית ויכול להכיל גם את בקרת התוכן והתוכן

הדיאגרמה הבאה מציגה אלמנטים ברמת בלוק.

<img src="/words/net/logical-levels-of-nodes-in-a-document/block-level.png" alt="block-level-aspose-words" style="width:550px"/>

## רמה הגיונית

צמתים ברמת Inline מייצגים את התוכן האמיתי של המסמך ויכולים להיכלל במיכלים הבאים:

- Paragraph - המכל הנפוץ ביותר
- [SmartTag](https://reference.aspose.com/words/net/aspose.words.markup/smarttag/)
- המונחים: StructuredDocumentTag

מרכיבים ברמת Inline מיוצגים על ידי המעמדות הבאים:

- - [Run](https://reference.aspose.com/words/net/aspose.words/run/) - ריצה של טקסט מעוצבת אחרת
- - [BookmarkStart](https://reference.aspose.com/words/net/aspose.words/bookmarkstart/) ו [BookmarkEnd](https://reference.aspose.com/words/net/aspose.words/bookmarkend/) תגית: Bookmarks
- - [CommentRangeStart](https://reference.aspose.com/words/net/aspose.words/commentrangestart/), [CommentRangeEnd](https://reference.aspose.com/words/net/aspose.words/commentrangeend/), [Comment](https://reference.aspose.com/words/net/aspose.words/comment/) ו [Footnote](https://reference.aspose.com/words/net/aspose.words.notes/footnote/) מייצג
- - [FieldStart](https://reference.aspose.com/words/net/aspose.words.fields/fieldstart/), [FieldChar](https://reference.aspose.com/words/net/aspose.words.fields/fieldchar/), [FieldSeparator](https://reference.aspose.com/words/net/aspose.words.fields/fieldseparator/) ו [FieldEnd](https://reference.aspose.com/words/net/aspose.words.fields/fieldend/) זה מייצג דמויות שדה, [FormField](https://reference.aspose.com/words/net/aspose.words.fields/formfield/) מייצגים שדות Word
- - [SpecialChar](https://reference.aspose.com/words/net/aspose.words/specialchar/) מייצג דמויות מיוחדות במסמך
- - [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) ו [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/) מייצגים צורות, ציורים, תמונות וכו'.
- SmartTag and StructuredDocument Tag מייצג סמן מותאם אישית

הדיאגרמה הבאה מציגה את מבנה הצמתים ברמת הרשת.

<img src="/words/net/logical-levels-of-nodes-in-a-document/inline-level.png" alt="inline-level-aspose-words" style="width:785px"/>

{{% alert color="primary" %}}

צורות Microsoft Word כולל Office Art AutoShapes, תיבות טקסט, תמונות, אובייקטים פשוטים, ובקרת ActiveX, אשר כולם מיוצגים באמצעות `Shape` מעמד. חלק מהצורות יכולות גם להכיל טקסט, כך ש- Shape nodes in Aspose.Words יכול להכיל צמתים ברמת בלוק.

ניתן לחלק את הצורות בתוך זו באמצעות Groupלעצב צומת

{{% /alert %}}

{{% alert color="primary" %}}

הערות והערות יכולות להכיל טקסט, לכן הערות והערות הערות בפנים Aspose.Words יכול להכיל צמתים ברמת בלוק.

{{% /alert %}}

## כתובת: Row and Cell Node Level

השולחן מורכב מעמודי שורות ותאים. רכיבי שולחן מיוצגים על ידי המעמדות הבאים:

- - [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) מייצג שורת שולחן
- - [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/) מייצג תא שולחן
- המונחים: StructuredDocument Tag מייצג סמן מותאם אישית

הדיאגרמה הבאה מציגה את המבנים של השולחן, רו ורמות תאים.

<img src="/words/net/logical-levels-of-nodes-in-a-document/table-row-cell.png" alt="table-row-cell-aspose-words" style="width:910px"/>
