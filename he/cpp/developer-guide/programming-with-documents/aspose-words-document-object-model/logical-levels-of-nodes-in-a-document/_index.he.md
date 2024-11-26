---
title: רמות לוגיות של צמתים במסמך ב C++
second_title: Aspose.Words עבור C++
articleTitle: רמות לוגיות של צמתים במסמך
linktitle: רמות לוגיות של צמתים במסמך
type: docs
description: "ב Aspose.Words עבור C++ תיעוד הזכיר רמות לוגיות של צמתים-רמת בלוק, רמה מוטבעת או רמת שורה. רמת הצומת משמשת כדי לתאר את המיקום בעץ המסמך שבו הצומת מתרחשת בדרך כלל."
weight: 10
url: /he/cpp/logical-levels-of-nodes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

תיעוד זה מתייחס לפעמים לקבוצה של כיתות צומת כשל "רמה" במסמך, כגון "רמת בלוק", "רמת קו" (הידוע גם בשם "קו"), או "רמת שורה" צמתים. רמות אלה במסמך מובחנות באופן הגיוני בלבד ואינן מתבטאות במפורש בירושה או באמצעים אחרים Aspose.Words DOM. רמת הצומת משמשת כדי לתאר את המקום בעץ המסמך שבו הצומת תתרחש בדרך כלל.

במאמר הקודם, כבר דיברנו על הקשר בין הצמתים לבין העובדה שלא כל הצמתים רשאים להיות ילד של כל הצמתים. לדוגמה, תא יכול להיות רק ילד שורה, ושורה יכולה להיות רק ילד שולחן, וכן הלאה. יחסים אלה חלים גם על חלוקה לוגית של צמתים לרמות במסמך.

החלקים הבאים מתארים את הרמות הלוגיות של הצמתים ב Aspose.Words ואת הכיתות השייכות לכל רמה.

## מסמך וסעיף רמה לוגית

מסמך Word מורכב מקטע אחד או יותר, המיוצג על ידי הכיתה [Section](https://reference.aspose.com/words/cpp/aspose.words/section) ומופרד על ידי מעברי קטעים. קטע יכול להגדיר גודל עמוד משלו, שוליים, כיוון, מספר עמודות טקסט וכותרות עליונות ותחתונות.

[Document](https://reference.aspose.com/words/cpp/aspose.words/document/) ו [סעיף](https://www.aspose.com/api/words/cpp/aspose.words/section/) צמתים ברמה יש את המבנה כפי שמוצג בתרשים הבא.

<img src="document-and-section-level.png" alt="document-and-section-level-aspose-words-cpp" style="width:700px"/>

קטע מכיל את הטקסט הראשי, כמו גם כותרות עליונות ותחתונות עבור הדפים הראשונים, הזוגיים והמוזרים. "זרימות" שונות אלה של טקסט נקראות *stories*.

ב - Aspose.Words, הצומת **Section** מכילה את הצמתים [Body](https://reference.aspose.com/words/cpp/aspose.words/body/) ו - [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/). האובייקט **Body** מאחסן את הטקסט הראשי. האובייקטים **HeaderFooter** מאחסנים את הטקסט עבור כל כותרת עליונה ותחתונה. הטקסט של כל סיפור מורכב מפסקאות וטבלאות, המיוצגות בהתאמה על ידי האובייקטים **Paragraph** ו **Table** של רמת הבלוק.

בנוסף, כל מסמך Word יכול להכיל מילון מונחים, המיוצג על ידי הצומת [GlossaryDocument](https://reference.aspose.com/words/cpp/aspose.words.buildingblocks/glossarydocument/) ב Aspose.Words. מסמך מילון מונחים מכיל ערכים [BuildingBlocks](https://reference.aspose.com/words/cpp/aspose.words.buildingblocks/glossarydocument/get_buildingblocks/), [AutoText](https://reference.aspose.com/words/cpp/aspose.words.buildingblocks/buildingblocktype/) ו [AutoCorrect](https://reference.aspose.com/words/cpp/aspose.words.buildingblocks/buildingblocktype/).

**GlossaryDocument**

## לחסום רמה לוגית

צמתים ברמת הבלוק מייצגים מיכלים עבור בקרות תוכן ותוכן, ויכולים להתרחש בצמתים של עץ המסמך בצמתים הבאים:

- גוף
- כותרת
- כותרת תחתונה
- הערת שוליים
- תגובה
- צורה
- GroupShape
- תא
- StructuredDocumentTag

צמתים ברמת הבלוק מיוצגים על ידי הכיתות הבאות:

- [Tables](https://reference.aspose.com/words/cpp/aspose.words.tables/table/) ו [Paragraphs](https://reference.aspose.com/words/cpp/aspose.words/paragraph/), שהם הצמתים החשובים ביותר ברמת הבלוק
- סימניות, המתרחשות הן ברמת הבלוק והן ברמת השורה
- [StructuredDocumentTag](https://reference.aspose.com/words/cpp/aspose.words.markup/structureddocumenttag/), המייצגים סימון מותאם אישית ויכולים להכיל גם בקרות תוכן וגם תוכן

התרשים הבא מציג את האלמנטים ברמת הבלוק.

<img src="block-level.png" alt="block-level-aspose-words-cpp" style="width:550px"/>

## רמה לוגית מוטבעת

צמתים ברמת השורה מייצגים את התוכן בפועל של המסמך וניתן להכיל אותם במיכלים הבאים:

- פסקה-המכולה הנפוצה ביותר
- [SmartTag](https://reference.aspose.com/words/cpp/aspose.words.markup/smarttag/)
- StructuredDocumentTag

אלמנטים ברמת קו מיוצגים על ידי המעמדות הבאים::

- [Run](https://reference.aspose.com/words/cpp/aspose.words/run/) - ריצות טקסט מעוצבות אחרת
- [BookmarkStart](https://reference.aspose.com/words/cpp/aspose.words/bookmarkstart/) ו [BookmarkEnd](https://reference.aspose.com/words/cpp/aspose.words/bookmarkend) מייצגים סימניות
- [CommentRangeStart](https://reference.aspose.com/words/cpp/aspose.words/commentrangestart/), [CommentRangeEnd](https://reference.aspose.com/words/cpp/aspose.words/commentrangeend/), [Comment](https://reference.aspose.com/words/cpp/aspose.words/comment/) ו [Footnote](https://reference.aspose.com/words/cpp/aspose.words.notes/footnote/) מייצגים הערות
- [FieldStart](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldstart/), [FieldChar](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldchar/), [FieldSeparator](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldseparator/) ו [FieldEnd](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldend/) שמייצגים אותיות שדה, ו [FormField](https://reference.aspose.com/words/cpp/aspose.words.fields/formfield/) מייצגים Word שדות
- [SpecialChar](https://reference.aspose.com/words/cpp/aspose.words/specialchar/) מייצג תווים מיוחדים במסמך
- [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) ו [GroupShape](https://reference.aspose.com/words/cpp/aspose.words.drawing/groupshape/) מייצגים צורות, רישומים, תמונות וכו'.
- SmartTag ו StructuredDocumentTag מייצגים סימון מותאם אישית

הדיאגרמה הבאה מראה את מבנה הצמתים ברמת השורה.

<img src="inline-level.png" alt="inline-level-aspose-words-cpp" style="width:785px"/>

{{% alert color="primary" %}}

צורות ב Microsoft Word כוללות אמנות משרדית AutoShapes, תיבות טקסט, תמונות, OLE אובייקטים ובקרות אקטיבקס, שכולן מיוצגות באמצעות הכיתה `Shape`. צורות מסוימות יכולות גם להכיל טקסט, כך שצמתים בצורת Aspose.Words יכולים להכיל צמתים ברמת הבלוק.

ניתן לקבץ צורות אחת בתוך השנייה באמצעות GroupShape צמתים.

{{% /alert %}}

{{% alert color="primary" %}}

הערות שוליים והערות יכולות להכיל טקסט, ולכן נקודות הערות שוליים והערות ב Aspose.Words יכולות להכיל נקודות ברמת הבלוק.

{{% /alert %}}

## רמת צומת טבלה, שורה ותא

הטבלה מורכבת מצמתים של שורות ותאים. אלמנטים בטבלה מיוצגים על ידי הכיתות הבאות:

- [Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/) מייצג שורת טבלה
- [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/) מייצג תא טבלה
- StructuredDocumentTag מייצג סימון מותאם אישית

התרשים הבא מציג את מבני הצומת של רמות הטבלה, השורה והתא.

<img src="table-row-cell.png" alt="table-row-cell-aspose-words-cpp" style="width:910px"/>
