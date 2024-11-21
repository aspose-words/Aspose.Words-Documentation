---
title: Aspose.Words DOM
second_title: Aspose.Words עבור Python via .NET
articleTitle: Aspose.Words Document Object Model (DOM)
linktitle: Aspose.Words Document Object Model (DOM)
type: docs
description: "Document Object Model ()DOM) הוא ייצוג פנימי של מסמך Word. קרא, מניפולציות ולשנות את התוכן והפורמט של מסמך Word באמצעות שימוש Python."
weight: 10
url: /he/python-net/aspose-words-document-object-model/
timestamp: 2024-01-27-14-07-04
---

The The The Aspose.Words Document Object Model ()DOM) הוא ייצוג פנימי של מסמך Word. The The The Aspose.Words DOM מאפשר לך לקרוא, לתמרן ולשנות את התוכן והפורמט של מסמך Word.

סעיף זה מתאר את המעמדות העיקריים של Aspose.Words DOM היחסים שלהם. על ידי שימוש Aspose.Words DOM שיעורים, אתה יכול לקבל גישה מתודולוגית למסמכים ולפורמט.

## ליצור `Document` אובייקטים עץ {#create-a-document-objects-tree}

כאשר מסמך קורא לתוך Aspose.Words <span notrans="<span notrans=" DOM"=""></span>" לאחר מכן עץ אובייקט בנוי וסוגים שונים של אלמנטים של המסמך המקור יש משלהם. DOM חפצי עץ עם תכונות שונות.

### בניית עץ Nodes {#build-document-nodes-tree}

מתי Aspose.Words קורא מסמך Word לזיכרון, הוא יוצר אובייקטים של סוגים שונים המייצגים אלמנטים שונים של מסמכים. כל ריצה של טקסט, פסקה, שולחן, או קטע היא צומת, ואפילו המסמך עצמו הוא צומת. Aspose.Words מגדיר שיעור לכל סוג של מסמך.

עץ המסמך Aspose.Words עקבו אחרי Composite Design Pattern:

- כל שיעורי הצומת בסופו של דבר נובעים מן [Node](https://reference.aspose.com/words/python-net/aspose.words/node/) שיעור, שהוא מעמד הבסיס ב Aspose.Words Document Object Model.
- צמתים שיכולים להכיל צמתים אחרים, למשל, [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) או [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), מקור: [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) השיעור, אשר בתורו נובע מן [Node](https://reference.aspose.com/words/python-net/aspose.words/node/) מעמד.

הדיאגרמה המסופקת להלן מציגה ירושה בין כיתות הצומת של Aspose.Words Document Object Model ()DOM). השמות של כיתות מופשטות נמצאים ב- Italics.

<img src="/words/python-net/aspose-words-document-object-model/aspose-words-dom.png" alt="aspose-words-dom" style="width:700px"/>

{{% alert color="primary" %}}

The The The Aspose.Words DOM מכיל גם את כיתות הלא-נודה, כגון [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) או [Font](https://reference.aspose.com/words/python-net/aspose.words/font/), אשר משמשים כדי להתאים אישית את המראה והסגנונות בתוך מסמך. שיעורים אלה אינם מוצגים בתרשים זה כפי שאינם תורשתיים מן [Node](https://reference.aspose.com/words/python-net/aspose.words/node/) מעמד.

{{% /alert %}}

בואו נראה דוגמה. התמונה הבאה מציגה Microsoft Word מסמך עם סוגים שונים של תוכן.

<img src="/words/python-net/aspose-words-document-object-model/document-example.png" alt="document-example-aspose-words" style="width:700px"/>

בעת קריאת המסמך לעיל לתוך Aspose.Words DOM, עץ האובייקטים נוצר, כפי שמוצג בschema למטה.

<img src="/words/python-net/aspose-words-document-object-model/document-example-dom.png" alt="dom-aspose-words" style="width:700px"/>

[Document](https://reference.aspose.com/words/python-net/aspose.words/document/), [Section](https://reference.aspose.com/words/python-net/aspose.words/section/), [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/), [Run](https://reference.aspose.com/words/python-net/aspose.words/run/), וכל שאר ellipses על הדיאגרמה הם Aspose.Words אובייקטים המייצגים אלמנטים של מסמך Word.

### קבל `Node` סוג {#get-a-node-type}

למרות [Node](https://reference.aspose.com/words/python-net/aspose.words/node/) הכיתה מספיקה כדי להבחין בין נקודות שונות זה מזה, Aspose.Words מספק [NodeType](https://reference.aspose.com/words/python-net/aspose.words/nodetype/) עידוד לפשט חלק API משימות, כגון בחירת נקודות מסוג מסוים.

סוג של כל צומת ניתן להשיג באמצעות [Node.node_type](https://reference.aspose.com/words/python-net/aspose.words/node/node_type/) רכוש. הנכס הזה מחזיר [NodeType](https://reference.aspose.com/words/python-net/aspose.words/nodetype/) ערך enumeration לדוגמה, פסקה מיוצגת על ידי [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) שיעור החזרה [NodeType.PARAGRAPH](https://reference.aspose.com/words/python-net/aspose.words/nodetype/#paragraph), צומת שולחן מיוצג על ידי [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) שיעור החזרה [NodeType.TABLE](https://reference.aspose.com/words/python-net/aspose.words/nodetype/#table).

הדוגמה הבאה מראה כיצד לקבל סוג של צומת באמצעות [NodeType](https://reference.aspose.com/words/python-net/aspose.words/nodetype/) המונחים:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-UseNodeType.py" >}}

## מסמך ניווט {#document-tree-navigation}

Aspose.Words מייצג מסמך כעץ צומת, המאפשר לך לנווט בין צמתים. סעיף זה מתאר כיצד לחקור ולניווט את עץ המסמך ב Aspose.Words.

כאשר אתה פותח את מסמך הדגימה, שהוצג קודם לכן, ב- Document Explorer, עץ הצומת מופיע בדיוק כפי שהוא מיוצג ב Aspose.Words.

<img src="/words/python-net/aspose-words-document-object-model/document-in-document-explorer.png" alt="document-in-document-explorer" style="width:680px"/>

{{% alert color="primary" %}}

ניתן ללמוד את פרויקט הדגימה "Document Explorer" על [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples).

{{% /alert %}}

### מסמכים Nodes Relationships {#document-nodes-relationships}

לדבורים בעץ יש יחסים ביניהן:

- A node המכיל עוד צומת הוא *parent.*
- - הצומת הכלול בהורה *child.* צמתים של אותו הורה הם *sibling* צומת
- The *root* צומת הוא תמיד [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) צומת.

הצמתים שיכולים להכיל צמתים אחרים נובעים מן [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) השיעור, וכל הצמתים נובעים בסופו של דבר מן [Node](https://reference.aspose.com/words/python-net/aspose.words/node/) מעמד. שתי כיתות בסיס אלה מספקות שיטות ונכסים משותפים לניווט מבנה העץ ושינוי.

הדיאגרמת האובייקט של UML מציגה מספר צמתים של מסמך הדגימה והקשרים שלהם זה לזה באמצעות ההורה, הילד ותכונות אח:

<img src="/words/python-net/aspose-words-document-object-model/document-nodes-relationships.png" alt="document-nodes-relationships-aspose-words" style="width:370px"/>

#### מקור: Node Husband

צומת תמיד שייך למסמך מסוים, גם אם הוא נוצר או הוסר מהעץ, משום שמבני מסמך חיוניים כגון סגנונות ורשימות מאוחסנים בעץ. [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) צומת. לדוגמא, אין אפשרות לקבל [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) ללא [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) כי לכל סעיף יש סגנון מוקצה מוגדר ברחבי העולם עבור המסמך. חוק זה משמש בעת יצירת נקודות חדשות. הוספת חדש [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) ישירות DOM דורש אובייקט מסמך עבר ליוצר.

{{% alert color="primary" %}}

The The The [Node.document](https://reference.aspose.com/words/python-net/aspose.words/node/document/) הנכס מחזיר את המסמך אליו שייך הצומת.

{{% /alert %}}

בעת יצירת פסקה חדשה באמצעות [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/), לבן תמיד יש [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) מעמד מקושר אליו דרך [DocumentBuilder.document](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/document/) רכוש.

הדוגמה הקודית הבאה מראה כי בעת יצירת כל צומת, מסמך שיהיה בעל הצומת מוגדר תמיד:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-OwnerDocument.py" >}}

#### הורים Node

לכל צומת יש הורה שצוין על ידי [parent_node](https://reference.aspose.com/words/python-net/aspose.words/node/parent_node/) רכוש. לצומת אין זכר הורה, כלומר [parent_node](https://reference.aspose.com/words/python-net/aspose.words/node/parent_node/) הוא *None*, במקרים הבאים:

- - הצומת נוצר ולא נוספו לעץ.
- - הצומת הוסר מהעץ.
- - זה השורש [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) צומת שתמיד אין לו הורה.

אתה יכול להסיר צומת מהורה שלו על ידי קריאה [Node.remove](https://reference.aspose.com/words/python-net/aspose.words/node/remove/) שיטה. דוגמה לקוד הבא מראה כיצד לגשת לצומת ההורה:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-GetParentNode.py" >}}

#### תינוק

הדרך היעילה ביותר לגשת אלמות הילד [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) דרך [first_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/first_child/) ו [last_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/last_child/) תכונות להחזיר את בלוטות הילד הראשון והאחרון בהתאמה. אם אין צמתים של ילדים, תכונות אלה חוזרות *None*.

[CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) גם מספק [get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) איסוף המאפשר גישה מאינדקס או מנהרה אל בלוטות הילד. The The The [get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) שיטה מחזירה אוסף חי של צמתים, כלומר, בכל פעם שהשתנת המסמך, כגון כאשר צמתים הוסרו או נוספו. **Get_child_nodes** האוסף עודכן באופן אוטומטי.

אם לצומת אין ילד, אז **Get_child_nodes** השיטה מחזירה אוסף ריק. אתה יכול לבדוק אם [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) מכיל כל בלוטות ילדים באמצעות [has_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/has_child_nodes/) רכוש.

הדוגמה הבאה של הקוד מראה כיצד לספור צמתים של ילד מיידי [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) שימוש ב- enumerator המסופק על ידי **Get_child_nodes** אוסף:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-EnumerateChildNodes.py" >}}

#### תגית: Nodes

אתה יכול לקבל את הצומת כי מיד precedes או לעקוב אחר צומת מסוים באמצעות הצומת מסוים. [previous_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/previous_sibling/) ו [next_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/next_sibling/) תכונות, בהתאמה. אם צומת הוא הילד האחרון של ההורה שלו, אז [next_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/next_sibling/) הרכוש הוא *None*. לעומת זאת, אם הצומת הוא הילד הראשון של ההורה שלו, [previous_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/previous_sibling/) הרכוש הוא *None*.

הדוגמה הבאה של הקוד מראה כיצד לבקר ביעילות את כל אבני הילד הישירות והעקיפות של צומת מורכב:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-RecurseAllNodes.py" >}}

### גישה קלה לילד ולהורים {#typed-access-to-child-and-parent-nodes}

עד כה, דנו בתכונות שמחזירות את אחד מסוגי הבסיס – [Node](https://reference.aspose.com/words/python-net/aspose.words/node/) או [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/). אבל לפעמים יש מצבים שבהם ייתכן שיהיה עליך להטיל ערכים לשיעור מסוים, כגון [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) או [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/). כלומר, אתה לא יכול להתנתק לחלוטין מהליכוד כאשר אתה עובד עם Aspose.Words DOM, זה מורכב.

כדי להפחית את הצורך ליהוק, רוב Aspose.Words שיעורים מספקים תכונות ואוספים המספקים גישה קלה מאוד. ישנם שלושה דפוסים בסיסיים של גישה קלה:

- צומת הורה חושף **קודם כל | 01** ו **אחרון | 01** תכונות. לדוגמה, [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) יש [first_section](https://reference.aspose.com/words/python-net/aspose.words/document/first_section/) ו [last_section](https://reference.aspose.com/words/python-net/aspose.words/document/last_section/) תכונות. באופן דומה, [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) יש תכונות כגון [first_row](https://reference.aspose.com/words/python-net/aspose.words.tables/table/first_row/), [last_row](https://reference.aspose.com/words/python-net/aspose.words.tables/table/last_row/), ואחרים.
- צומת הורה חושף אוסף טיפוסי של בלוטות ילדים, כגון [Document.sections](https://reference.aspose.com/words/python-net/aspose.words/document/sections/), [Body.paragraphs](https://reference.aspose.com/words/python-net/aspose.words/story/paragraphs/), ואחרים.
- ילד צומת מספק גישה קלה אל ההורה שלו, כגון [Run.parent_paragraph](https://reference.aspose.com/words/python-net/aspose.words/inline/parent_paragraph/), [Paragraph.parent_section](https://reference.aspose.com/words/python-net/aspose.words/paragraph/parent_section/), ואחרים.

תכונות סוג הם רק קיצורי דרך שימושיים שלפעמים מספקים גישה קלה יותר מאשר תכונות גנריות תורשתיות [Node.parent_node](https://reference.aspose.com/words/python-net/aspose.words/node/parent_node/) ו [CompositeNode.first_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/first_child/).

הדוגמה הבאה של הקוד מראה כיצד להשתמש בתכונות מקלות כדי לגשת לאדים של עץ המסמך:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-TypedAccess.py" >}}
