---
title: רמות לוגיות של נקודות במסמך
second_title: Aspose.Words עבור Python via .NET
articleTitle: רמות לוגיות של נקודות במסמך
linktitle: רמות לוגיות של נקודות במסמך
type: docs
description: "In In In Aspose.Words עבור Python via .NET תיעוד הזכיר רמות לוגיות של צמתים - רמת בלוק, רמת איליין או רמת שורות. רמת הצומת משמשת לתיאור המיקום בעץ המסמך שבו מתרחשת בדרך כלל הצומת."
weight: 10
url: /he/python-net/logical-levels-of-nodes-in-a-document/
---

תיעוד זה מתייחס לפעמים לקבוצה של כיתות צומת השייכות ל"רמה" במסמך, כגון "רמת בלוק", "רמה מקוונת" (הידועה גם בשם "inline"), או "רמת צמיחה". רמות אלה במסמך נבדלות באופן הגיוני בלבד ואינן מובעות במפורש על ידי ירושה או אחרת. Aspose.Words DOM האמצעים. רמת הצומת משמשת לתיאור המקום בעץ המסמך שבו הצומת היה מתרחש בדרך כלל.

במאמר הקודם, כבר דיברנו על הקשר בין צמתים לבין העובדה כי לא כל הצמתים מותר להיות ילד של כל צמתים. לדוגמה, [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) יכול להיות רק [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) ילד, ו [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) יכול להיות רק [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) ילד, וכן הלאה. מערכות יחסים אלה חלות גם על חלוקה הגיונית של נקודות לתוך רמות במסמך.

הקטעים הבאים מתארים את הרמות הלוגיות של צמתים Aspose.Words השיעורים שייכים לכל רמה.

## מסמך ודרגה לוגית

A A A A מסמך Word מורכב מחלק אחד או יותר, מיוצג על ידי [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) הכיתה והמפולגת על ידי הפסקות. סעיף יכול להגדיר את גודל העמוד שלו, שוליים, אוריינטציה, מספר עמודות טקסט, כותרות ו Footers.

[Document](https://reference.aspose.com/words/python-net/aspose.words/document/) ו [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) נקודות מדרגות יש את המבנה כפי שמוצג בתרשים הבא.

<img src="/words/python-net/logical-levels-of-nodes-in-a-document/document-and-section-level.png" alt="document-and-section-level-aspose-words" style="width:700px"/>

חלק מכיל את הטקסט הראשי, כמו גם ראשים והולכי רגל עבור הראשון, אפילו, דפי מוזר. "זרימות" שונות אלה נקראות *stories*.

In In In Aspose.Words, The The [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) Node מכיל [Body](https://reference.aspose.com/words/python-net/aspose.words/body/) ו [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/) סיפורים. The The The [Body](https://reference.aspose.com/words/python-net/aspose.words/body/) האובייקט מאחסן את הטקסט הראשי. The The The [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/) חפצים מאחסנים את הטקסט לכל ראש ורגל. הטקסט של כל סיפור מורכב פסקאות וטבלאות, בהתאמה מיוצג על ידי [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) ו [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) אובייקטים ברמת הבלוק

בנוסף, כל אחד מסמך Word יכול להכיל מבריק, אשר מיוצג על ידי [GlossaryDocument](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/glossarydocument/) המונחים: Aspose.Words. מסמך מבריק מכיל [building_blocks](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/glossarydocument/building_blocks/) [BuildingBlockType.AUTO_TEXT](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblocktype/#auto_text), ו [BuildingBlockType.AUTO_CORRECT](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblocktype/#auto_correct) ערכים.

[GlossaryDocument](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/glossarydocument/) כולל [BuildingBlock](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblock/) נקודות המייצגות סוגים שונים של רשומות מסמך מבריקות. כל אחד [BuildingBlock](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblock/) מכיל חלקים שניתן להכניס, להסיר ולהעתק למסמכים.

## רמה הגיונית

צמתים ברמת בלוק מייצגים מכולות עבור בקרת תוכן ותכנים, ויכולים להתרחש בצומת עץ המסמכים בצומת הבאים:

- [Body](https://reference.aspose.com/words/python-net/aspose.words/body/)
- [Header](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/)
- [Footer](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/)
- [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/)
- [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/)
- [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)
- [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/)
- [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/)
- [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/)

צמתים ברמת בלוק מיוצגים על ידי המעמדות הבאים:

- - [Tables](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) ו [Paragraphs](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), מהן הנקודות החשובות ביותר לבלוק
- - [Bookmarks](https://reference.aspose.com/words/python-net/aspose.words/bookmark/), המתרחש הן ברמת הבלוק והן ברמת האינטרנט
- - [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/), המייצג סמרטוט מותאם אישית ויכול להכיל גם את בקרת התוכן והתוכן

הדיאגרמה הבאה מציגה אלמנטים ברמת בלוק.

<img src="/words/python-net/logical-levels-of-nodes-in-a-document/block-level.png" alt="block-level-aspose-words" style="width:550px"/>

## רמה הגיונית

צמתים ברמת Inline מייצגים את התוכן האמיתי של המסמך ויכולים להיכלל במיכלים הבאים:

- - [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) מיכל הנפוץ ביותר
- [SmartTag](https://reference.aspose.com/words/python-net/aspose.words.markup/smarttag/)
- [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/)

מרכיבים ברמת Inline מיוצגים על ידי המעמדות הבאים:

- - [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) - ריצה של טקסט מעוצבת אחרת
- - [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) ו [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/) תגית: Bookmarks
- - [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/), [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/), [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) ו [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/) מייצג
- - [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/), [FieldChar](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/), [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) ו [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) זה מייצג דמויות שדה, [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) מייצגים שדות Word
- - [SpecialChar](https://reference.aspose.com/words/python-net/aspose.words/specialchar/) מייצג דמויות מיוחדות במסמך
- - [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) ו [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) מייצגים צורות, ציורים, תמונות וכו'.
- - [SmartTag](https://reference.aspose.com/words/python-net/aspose.words.markup/smarttag/) ו [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) מייצג סמן מותאם אישית

הדיאגרמה הבאה מציגה את מבנה הצמתים ברמת הרשת.

<img src="/words/python-net/logical-levels-of-nodes-in-a-document/inline-level.png" alt="inline-level-aspose-words" style="width:785px"/>

{{% alert color="primary" %}}

צורות Microsoft Word כולל Office Art AutoShapes, תיבות טקסט, תמונות, אובייקטים פשוטים, ובקרת ActiveX, אשר כולם מיוצגים באמצעות `Shape` מעמד. חלק מהצורות יכולות גם להכיל טקסט, כך ש- Shape nodes in Aspose.Words יכול להכיל צמתים ברמת בלוק.

ניתן לחלק את הצורות בתוך זו באמצעות [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) צומת

{{% /alert %}}

{{% alert color="primary" %}}

הערות והערות יכולות להכיל טקסט, לכן [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/) ו [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) חסרונות Aspose.Words יכול להכיל צמתים ברמת בלוק.

{{% /alert %}}

## כתובת: Row and Cell Node Level

השולחן מורכב מעמודי שורות ותאים. [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) אלמנטים מיוצגים על ידי המעמדות הבאים:

- - [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) מייצג שורת שולחן
- - [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) מייצג תא שולחן
- - [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) מייצג סמן מותאם אישית

הדיאגרמה הבאה מציגה את מבני הצומת של [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/), ו [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) רמות.

<img src="/words/python-net/logical-levels-of-nodes-in-a-document/table-row-cell.png" alt="table-row-cell-aspose-words" style="width:910px"/>