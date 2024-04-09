---
title: Aspose.Words Document Object Model ()DOM(1) C#
second_title: Aspose.Words עבור .NET
articleTitle: Aspose.Words Document Object Model (DOM)
linktitle: Aspose.Words Document Object Model (DOM)
type: docs
description: "Document Object Model ()DOM) הוא ייצוג פנימי של מסמך Word. קרא, מניפולציות ולשנות את התוכן והפורמט של מסמך Word באמצעות שימוש C#."
weight: 10
url: /he/net/aspose-words-document-object-model/
---

The The The Aspose.Words Document Object Model ()DOM) הוא ייצוג פנימי של מסמך Word. The The The Aspose.Words DOM מאפשר לך לקרוא, לתמרן ולשנות את התוכן והפורמט של מסמך Word.

סעיף זה מתאר את המעמדות העיקריים של Aspose.Words DOM היחסים שלהם. על ידי שימוש Aspose.Words DOM שיעורים, אתה יכול לקבל גישה מתודולוגית למסמכים ולפורמט.

## ליצור `Document` עץ אובייקטים {#create-a-document-objects-tree}

כאשר מסמך קורא לתוך Aspose.Words <span notrans="<span notrans=" DOM"=""></span>" לאחר מכן עץ אובייקט בנוי וסוגים שונים של אלמנטים של המסמך המקור יש משלהם. DOM חפצי עץ עם תכונות שונות.

### בניית עץ Nodes {#build-document-nodes-tree}

מתי Aspose.Words קורא מסמך Word לזיכרון, הוא יוצר אובייקטים של סוגים שונים המייצגים אלמנטים שונים של מסמכים. כל ריצה של טקסט, פסקה, שולחן, או קטע היא צומת, ואפילו המסמך עצמו הוא צומת. Aspose.Words מגדיר שיעור לכל סוג של מסמך.

עץ המסמך Aspose.Words עקבו אחרי Composite Design Pattern:

- כל שיעורי הצומת בסופו של דבר נובעים מן [Node](https://reference.aspose.com/words/net/aspose.words/node/) שיעור, שהוא מעמד הבסיס ב Aspose.Words Document Object Model.
- צמתים שיכולים להכיל צמתים אחרים, למשל, **Section** או **Paragraph**, מקור: [CompositeNode](https://reference.aspose.com/words/net/aspose.words/compositenode/) השיעור, אשר בתורו נובע מן **Node** מעמד.

הדיאגרמה המסופקת להלן מציגה ירושה בין כיתות הצומת של Aspose.Words Document Object Model ()DOM). השמות של כיתות מופשטות נמצאים ב- Italics.

<img src="/words/net/aspose-words-document-object-model/aspose-words-dom.png" alt="aspose-words-dom" style="width:700px"/>

{{% alert color="primary" %}}

The The The Aspose.Words DOM מכיל גם את כיתות הלא-נודה, כגון [Style](https://reference.aspose.com/words/net/aspose.words/style/) או [Font](https://reference.aspose.com/words/net/aspose.words/font/), אשר משמשים כדי להתאים אישית את המראה והסגנונות בתוך מסמך. שיעורים אלה אינם מוצגים בתרשים זה כפי שאינם תורשתיים מן `Node` מעמד.

{{% /alert %}}

בואו נראה דוגמה. התמונה הבאה מציגה Microsoft Word מסמך עם סוגים שונים של תוכן.

<img src="/words/net/aspose-words-document-object-model/document-example.png" alt="document-example-aspose-words" style="width:700px"/>

בעת קריאת המסמך לעיל לתוך Aspose.Words DOM, עץ האובייקטים נוצר, כפי שמוצג בschema למטה.

<img src="/words/net/aspose-words-document-object-model/document-example-dom.png" alt="dom-aspose-words" style="width:700px"/>

[Document](https://reference.aspose.com/words/net/aspose.words/document/), [Section](https://reference.aspose.com/words/net/aspose.words/section/), [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/), [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/), [Run](https://reference.aspose.com/words/net/aspose.words/run/), וכל שאר ellipses על הדיאגרמה הם Aspose.Words אובייקטים המייצגים אלמנטים של מסמך Word.

### קבל `Node` סוג {#get-a-node-type}

למרות [Node](https://reference.aspose.com/words/net/aspose.words/node/) הכיתה מספיקה כדי להבחין בין נקודות שונות זה מזה, Aspose.Words מספק [NodeType](https://reference.aspose.com/words/net/aspose.words/node/nodetype/) עידוד לפשט חלק API משימות, כגון בחירת נקודות מסוג מסוים.

סוג של כל צומת ניתן להשיג באמצעות [NodeType](https://reference.aspose.com/words/net/aspose.words/node/nodetype/) רכוש. הנכס הזה מחזיר **NodeType** ערך enumeration לדוגמה, פסקה מיוצגת על ידי **Paragraph** שיעור החזרה **NodeType**.**Paragraph**צומת שולחן מיוצג על ידי **Table** שיעור החזרה **NodeType**.**Table**.

הדוגמה הבאה מראה כיצד לקבל סוג של צומת באמצעות **NodeType** המונחים:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-UseNodeType.cs" >}}

## מסמך ניווט {#document-tree-navigation}

Aspose.Words מייצג מסמך כעץ צומת, המאפשר לך לנווט בין צמתים. סעיף זה מתאר כיצד לחקור ולניווט את עץ המסמך ב Aspose.Words.

כאשר אתה פותח את מסמך הדגימה, שהוצג קודם לכן, ב- Document Explorer, עץ הצומת מופיע בדיוק כפי שהוא מיוצג ב Aspose.Words.

<img src="/words/net/aspose-words-document-object-model/document-in-document-explorer.png" alt="document-in-document-explorer" style="width:680px"/>

{{% alert color="primary" %}}

ניתן ללמוד את פרויקט הדגימה "Document Explorer" על [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples/DocumentExplorer).

{{% /alert %}}

### מסמך Node Relationships {#document-nodes-relationships}

לדבורים בעץ יש יחסים ביניהן:

- A node המכיל עוד צומת הוא *parent.*
- - הצומת הכלול בהורה *child.* צמתים של אותו הורה הם *sibling* צומת
- The *root* צומת הוא תמיד [Document](https://reference.aspose.com/words/net/aspose.words/document/) צומת.

הצמתים שיכולים להכיל צמתים אחרים נובעים מן [CompositeNode](https://reference.aspose.com/words/net/aspose.words/compositenode/) השיעור, וכל הצמתים נובעים בסופו של דבר מן [Node](https://reference.aspose.com/words/net/aspose.words/node/) מעמד. שתי כיתות בסיס אלה מספקות שיטות ונכסים משותפים לניווט מבנה העץ ושינוי.

הדיאגרמת האובייקט של UML מציגה מספר צמתים של מסמך הדגימה והקשרים שלהם זה לזה באמצעות ההורה, הילד ותכונות אח:

<img src="/words/net/aspose-words-document-object-model/document-nodes-relationships.png" alt="document-nodes-relationships-aspose-words" style="width:370px"/>

#### מקור: Node Husband

צומת תמיד שייך למסמך מסוים, גם אם הוא נוצר או הוסר מהעץ, משום שמבני מסמך חיוניים כגון סגנונות ורשימות מאוחסנים בעץ. **Document** צומת. לדוגמא, אין אפשרות לקבל **Paragraph** ללא **Document** כי לכל סעיף יש סגנון מוקצה מוגדר ברחבי העולם עבור המסמך. חוק זה משמש בעת יצירת נקודות חדשות. הוספת חדש **Paragraph** ישירות DOM דורש אובייקט מסמך עבר ליוצר.

{{% alert color="primary" %}}

The The The [Node.Document](https://reference.aspose.com/words/net/aspose.words/node/document/) הנכס מחזיר את המסמך אליו שייך הצומת.

{{% /alert %}}

בעת יצירת פסקה חדשה באמצעות [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/), לבן תמיד יש **Document** מעמד מקושר אליו דרך [DocumentBuilder.Document](https://reference.aspose.com/words/net/aspose.words/documentbuilder/document/) רכוש.

הדוגמה הקודית הבאה מראה כי בעת יצירת כל צומת, מסמך שיהיה בעל הצומת מוגדר תמיד:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-OwnerDocument.cs" >}}

#### הורים Node

לכל צומת יש הורה שצוין על ידי [ParentNode](https://reference.aspose.com/words/net/aspose.words/node/parentnode/) רכוש. לצומת אין זכר הורה, כלומר **ParentNode** הוא אפס, במקרים הבאים:

- - הצומת נוצר ולא נוספו לעץ.
- - הצומת הוסר מהעץ.
- - זה השורש **Document** צומת שתמיד יש צומת הורה אפס.

אתה יכול להסיר צומת מהורה שלו על ידי קריאה [Remove](https://reference.aspose.com/words/net/aspose.words/node/remove/) שיטה. דוגמה לקוד הבא מראה כיצד לגשת לצומת ההורה:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-GetParentNode.cs" >}}

#### תינוק

הדרך היעילה ביותר לגשת אלמות הילד [CompositeNode](https://reference.aspose.com/words/net/aspose.words/compositenode/) דרך [FirstChild](https://reference.aspose.com/words/net/aspose.words/compositenode/firstchild/) ו [LastChild](https://reference.aspose.com/words/net/aspose.words/compositenode/lastchild/) תכונות להחזיר את בלוטות הילד הראשון והאחרון בהתאמה. אם אין צמתים של ילדים, תכונות אלה חוזרות *null*.

**CompositeNode** גם מספק [GetChildNodes](https://reference.aspose.com/words/net/aspose.words/compositenode/getchildnodes/) שיטה המאפשרת גישה מאינדקס או מנהרה אל בלוטות הילד. The The The **ChildNodes** הנכס הוא אוסף חי של צמתים, כלומר, בכל פעם שהמסמכים משתנים, כגון כאשר צמתים הוסרו או נוספו, **ChildNodes** האוסף עודכן באופן אוטומטי.

אם לצומת אין ילד, אז **ChildNodes** רכוש מחזיר אוסף ריק. אתה יכול לבדוק אם **CompositeNode** מכיל כל בלוטות ילדים באמצעות [HasChildNodes](https://reference.aspose.com/words/net/aspose.words/compositenode/haschildnodes/) רכוש.

הדוגמה הבאה של הקוד מראה כיצד לספור צמתים של ילד מיידי `CompositeNode` שימוש ב- enumerator המסופק על ידי `ChildNodes` אוסף:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-EnumerateChildNodes.cs" >}}

הדוגמה הבאה של הקוד מראה כיצד לספור צמתים של ילד מיידי `CompositeNode` באמצעות גישה לאינדקס:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-IndexChildNodes.cs" >}}

#### תגית: Nodes

אתה יכול לקבל את הצומת כי מיד precedes או לעקוב אחר צומת מסוים באמצעות הצומת מסוים. [PreviousSibling](https://reference.aspose.com/words/net/aspose.words/node/previoussibling/) ו [NextSibling](https://reference.aspose.com/words/net/aspose.words/node/nextsibling/) תכונות, בהתאמה. אם צומת הוא הילד האחרון של ההורה שלו, אז **NextSibling** הרכוש הוא *null*. לעומת זאת, אם הצומת הוא הילד הראשון של ההורה שלו, **PreviousSibling** הרכוש הוא *null*.

הדוגמה הבאה של הקוד מראה כיצד לבקר ביעילות את כל אבני הילד הישירות והעקיפות של צומת מורכב:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-RecurseAllNodes.cs" >}}

### גישה קלה לילד ולהורים {#typed-access-to-child-and-parent-nodes}

עד כה, דנו בתכונות שמחזירות את אחד מסוגי הבסיס – **Node** או **CompositeNode**. אבל לפעמים יש מצבים שבהם ייתכן שיהיה עליך להטיל ערכים לשיעור מסוים, כגון **Run** או **Paragraph**. כלומר, אתה לא יכול להתנתק לחלוטין מהליכוד כאשר אתה עובד עם Aspose.Words DOM, זה מורכב.

כדי להפחית את הצורך ליהוק, רוב Aspose.Words שיעורים מספקים תכונות ואוספים המספקים גישה קלה מאוד. ישנם שלושה דפוסים בסיסיים של גישה קלה:

- צומת הורה חושף **FirstXXX** ו **LastXXX** תכונות. לדוגמה, **Document** יש [FirstSection](https://reference.aspose.com/words/net/aspose.words/document/firstsection/) ו [LastSection](https://reference.aspose.com/words/net/aspose.words/document/lastsection/) תכונות. באופן דומה, **Table** יש תכונות כגון [FirstRow](https://reference.aspose.com/words/net/aspose.words.tables/table/firstrow/), [LastRow](https://reference.aspose.com/words/net/aspose.words.tables/table/lastrow/), ואחרים.
- צומת הורה חושף אוסף טיפוסי של בלוטות ילדים, כגון [Document.Sections](https://reference.aspose.com/words/net/aspose.words/document/sections/), [Body.Paragraphs](https://reference.aspose.com/words/net/aspose.words/story/paragraphs/), ואחרים.
- ילד צומת מספק גישה קלה אל ההורה שלו, כגון [Run.ParentParagraph](https://reference.aspose.com/words/net/aspose.words/inline/parentparagraph/), [Paragraph.ParentSection](https://reference.aspose.com/words/net/aspose.words/paragraph/parentsection/), ואחרים.

תכונות סוג הם רק קיצורי דרך שימושיים שלפעמים מספקים גישה קלה יותר מאשר תכונות גנריות תורשתיות [Node.ParentNode](https://reference.aspose.com/words/net/aspose.words/node/parentnode/) ו [CompositeNode.FirstChild](https://reference.aspose.com/words/net/aspose.words/compositenode/firstchild/).

הדוגמה הבאה של הקוד מראה כיצד להשתמש בתכונות מקלות כדי לגשת לאדים של עץ המסמך:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-TypedAccess.cs" >}}
