---
title: Aspose.Words מודל אובייקט מסמך (DOM) ב C++
second_title: Aspose.Words עבור C++
articleTitle: Aspose.Words מודל אובייקט מסמך (DOM)
linktitle: Aspose.Words מודל אובייקט מסמך (DOM)
type: docs
description: "מודל אובייקט המסמך (DOM) הוא ייצוג בזיכרון של מסמך Word. לקרוא, לתפעל ולשנות את התוכן והעיצוב של מסמך Word באמצעות C++."
weight: 10
url: /he/cpp/aspose-words-document-object-model/
timestamp: 2024-01-27-14-07-04
---

מודל אובייקט המסמך Aspose.Words (DOM) הוא ייצוג בזיכרון של מסמך Word. Aspose.Words DOM מאפשר לך לקרוא, לתפעל ולשנות באופן פרוגרמטי את התוכן והעיצוב של מסמך Word.

החלק הזה מתאר את המעמדות העיקריים של Aspose.Words DOM ואת היחסים שלהם. על ידי שימוש בכיתות Aspose.Words DOM, תוכל לקבל גישה פרוגרמטית לרכיבי מסמך ולעיצוב.

## צור עץ אובייקט מסמך {#create-a-document-objects-tree}

כאשר מסמך נקרא לתוך Aspose.Words DOM, אז עץ אובייקט נבנה וסוגים שונים של אלמנטים של מסמך המקור יש שלהם DOM אובייקטים עץ עם תכונות שונות.

### בניית צמתי מסמכים עץ {#build-document-nodes-tree}

כאשר Aspose.Words קורא מסמך Word לזיכרון, הוא יוצר אובייקטים מסוגים שונים המייצגים אלמנטים שונים של מסמך. כל ריצה של טקסט, פיסקה, טבלה או קטע היא צומת, ואפילו המסמך עצמו הוא צומת. Aspose.Words מגדיר מחלקה לכל סוג צומת מסמך.

עץ המסמך ב - Aspose.Words עוקב אחר דפוס העיצוב המורכב:

- כל כיתות הצומת נובעות בסופו של דבר מהכיתה [Node](https://reference.aspose.com/words/cpp/aspose.words/node/), שהיא הכיתה הבסיסית במודל אובייקט המסמך Aspose.Words.
- צמתים שיכולים להכיל צמתים אחרים, למשל, **Section** או **Paragraph**, נובעים מהכיתה [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/), אשר בתורו נובעת מהכיתה **Node**.

הדיאגרמה המוצגת להלן מראה ירושה בין כיתות צומת של מודל אובייקט המסמך Aspose.Words (DOM). שמות המעמדות המופשטים הם בכתב עוקף.

<img src="aspose-words-dom.png" alt="aspose-words-dom-aspose-words-cpp" style="width:700px"/>

{{% alert color="primary" %}}

Aspose.Words DOM מכיל גם את הכיתות שאינן צומת, כגון [Style](https://reference.aspose.com/words/cpp/aspose.words/style/) או [Font](https://reference.aspose.com/words/cpp/aspose.words/font/), המשמשות להתאמה אישית של המראה והסגנונות בתוך מסמך. כיתות אלה אינן מוצגות בתרשים זה כלא עוברות בירושה מכיתה `Node`.

{{% /alert %}}

בואו נסתכל על דוגמה. התמונה הבאה מציגה מסמך Microsoft Word עם סוגים שונים של תוכן.

<img src="document-example.png" alt="document-example-aspose-words-cpp" style="width:700px"/>

כאשר קוראים את המסמך לעיל לתוך Aspose.Words DOM, עץ האובייקטים נוצר, כפי שמוצג בתרשים למטה.

<img src="document-example-dom.png" alt="document-example-dom-aspose-words-cpp" style="width:700px"/>

[Document](https://reference.aspose.com/words/cpp/aspose.words/document/), [Section](https://reference.aspose.com/words/cpp/aspose.words/section/), [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/), [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape), [Run](https://reference.aspose.com/words/cpp/aspose.words/run/), וכל האליפסות האחרות בתרשים הן Aspose.Words אובייקטים המייצגים אלמנטים של המסמך Word.

### קבל `Node` סוג {#get-a-node-type}

למרות שהכיתה [Node](https://reference.aspose.com/words/cpp/aspose.words/node/) מספיקה מספיק כדי להבחין בין צמתים שונים זה מזה, Aspose.Words מספק את הספירה [NodeType](https://reference.aspose.com/words/cpp/aspose.words/nodetype/) כדי לפשט כמה משימות API, כגון בחירת צמתים מסוג מסוים.

ניתן להשיג את סוג כל צומת באמצעות המאפיין [NodeType](https://reference.aspose.com/words/cpp/aspose.words/node/get_nodetype/). מאפיין זה מחזיר ערך ספירה **NodeType**. לדוגמה, צומת פסקה המייצגת על ידי **Paragraph** מחזירה את הכיתה **NodeType**.**Paragraph**, וצומת טבלה המייצגת על ידי **Table** מחזירה את הכיתה **NodeType**.**Table**.

הדוגמה הבאה מראה כיצד להשיג סוג צומת באמצעות הספירה **NodeType**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-UseNodeType.cpp" >}}

## ניווט בעץ המסמכים {#document-tree-navigation}

Aspose.Words מייצג מסמך כעץ צומת, המאפשר לך לנווט בין צמתים. סעיף זה מתאר כיצד לחקור ולנווט בעץ המסמך ב Aspose.Words.

כאשר אתה פותח את המסמך לדוגמה, שהוצג קודם לכן, בסייר המסמכים, עץ הצומת מופיע בדיוק כפי שהוא מיוצג ב Aspose.Words.

<img src="document-in-document-explorer.png" alt="document-in-document-explorer-aspose-words-cpp" style="width:680px"/>

### קשרי צומת מסמכים {#document-nodes-relationships}

הצמתים בעץ יש יחסים ביניהם:

- צומת המכיל צומת אחר הוא *parent.*
- הצומת הכלולה בצומת ההורה היא *child.* צמתים של אותו הורה הם *sibling* צמתים.
- הצומת *root* היא תמיד הצומת [Document](https://reference.aspose.com/words/cpp/aspose.words/document/).

הצמתים שיכולים להכיל צמתים אחרים נובעים מכיתה [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode), וכל הצמתים נובעים בסופו של דבר מכיתה [Node](https://reference.aspose.com/words/cpp/aspose.words/node/). שני סוגי הבסיס הללו מספקים שיטות ותכונות נפוצות לנווט ושינוי מבנה העץ.

דיאגרמת האובייקט UML הבאה מציגה כמה צמתים של מסמך המדגם ויחסיהם זה לזה באמצעות מאפייני ההורה, הילד והאח:

<img src="document-nodes-relationships.png" alt="document-nodes-relationships-aspose-words-cpp" style="width:370px"/>

#### המסמך הוא בעל הצומת

צומת תמיד שייך למסמך מסוים, גם אם הוא נוצר או הוסר מהעץ, מכיוון שמבנים חיוניים בכל המסמך כגון סגנונות ורשימות מאוחסנים בצומת **Document**. לדוגמה, לא ניתן לקבל **Paragraph** ללא **Document** מכיוון שלכל פסקה יש סגנון מוקצה המוגדר באופן גלובלי עבור המסמך. כלל זה משמש בעת יצירת צמתים חדשים. הוספת **Paragraph** חדש ישירות ל DOM דורש אובייקט מסמך שהועבר לבנאי.

{{% alert color="primary" %}}

המאפיין [Node.Document](https://reference.aspose.com/words/cpp/aspose.words/node/get_document/) מחזיר את המסמך אליו שייך הצומת.

{{% /alert %}}

בעת יצירת פסקה חדשה באמצעות [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/), לבונה תמיד יש מחלקה **Document** המקושרת אליה דרך המאפיין [DocumentBuilder.Document](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_document/).

דוגמת הקוד הבאה מראה שכאשר יוצרים כל צומת, מסמך שיהיה הבעלים של הצומת תמיד מוגדר:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-OwnerDocument.cpp" >}}

#### צומת הורה

לכל צומת יש הורה שצוין על ידי המאפיין [ParentNode](https://reference.aspose.com/words/cpp/aspose.words/node/get_parentnode/). לצומת אין צומת אב, כלומר **ParentNode** הוא אפס, במקרים הבאים:

- הצומת נוצר זה עתה וטרם התווסף לעץ.
- הצומת הוסר מהעץ.
- זהו צומת השורש **Document** שתמיד יש לו צומת אב אפס.

ניתן להסיר צומת מההורה שלו על ידי קריאה לשיטת [Remove](https://reference.aspose.com/words/cpp/aspose.words/node/remove/).דוגמת הקוד הבאה מראה כיצד לגשת לצומת האב:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-GetParentNode.cpp" >}}

#### צמתים לילדים

הדרך היעילה ביותר לגשת לצמתים של ילד של [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/) היא באמצעות המאפיינים [FirstChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_firstchild/) ו [LastChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_lastchild/) שמחזירים את הצמתים של הילד הראשון והאחרון, בהתאמה. אם אין צמתים של ילדים, תכונות אלה חוזרות *null*.

**CompositeNode**

אם לצומת אין ילד, המאפיין **ChildNodes** מחזיר אוסף ריק. אתה יכול לבדוק אם **CompositeNode** מכיל צמתים של ילדים באמצעות המאפיין [HasChildNodes](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_haschildnodes/).

דוגמת הקוד הבאה מראה כיצד למנות נקודות ילד מיידיות של `CompositeNode` באמצעות המונה שמסופק על ידי אוסף `ChildNodes`:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-EnumerateChildNodes.cpp" >}}

דוגמת הקוד הבאה מראה כיצד למנות נקודות ילד מיידיות של `CompositeNode` באמצעות גישה ממוזגת:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-IndexChildNodes.cpp" >}}

#### צמתים אחים

אתה יכול להשיג את הצומת שמקדים מיד או עוקב אחר צומת מסוים באמצעות המאפיינים [PreviousSibling](https://reference.aspose.com/words/cpp/aspose.words/node/get_previoussibling/) ו [NextSibling](https://reference.aspose.com/words/cpp/aspose.words/node/get_nextsibling/), בהתאמה. אם צומת הוא הילד האחרון של ההורה שלו, אז המאפיין **NextSibling** הוא *null*. לעומת זאת, אם הצומת הוא הילד הראשון של ההורה שלו, המאפיין **PreviousSibling** הוא *null*.

דוגמת הקוד הבאה מראה כיצד לבקר ביעילות בכל צמתים ישירים ועקיפים של צומת מורכב:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-RecurseAllNodes.cpp" >}}

### גישה מוקלדת לצמתים של ילדים והורים

עד כה דנו בתכונות המחזירות אחד מסוגי הבסיס – **Node** או **CompositeNode**. אבל לפעמים יש מצבים שבהם ייתכן שיהיה עליך להעביר ערכים למחלקת צומת ספציפית, כגון **Run** או **Paragraph**. כלומר, אתה לא יכול להתרחק לחלוטין מהיציקה כשאתה עובד עם Aspose.Words DOM, שהוא מורכב.

כדי להפחית את הצורך בגיסוי, רוב הכיתות Aspose.Words מספקות תכונות ואוספים המספקים גישה עם טיפוס חזק. יש שלושה דפוסים בסיסיים של גישה מודפסת:

- צומת אב חושף מאפיינים מוקלדים **FirstXXX** ו **LastXXX**. לדוגמה, **Document** יש [FirstSection](https://reference.aspose.com/words/cpp/aspose.words/document/get_firstsection/) ו [LastSection](https://reference.aspose.com/words/cpp/aspose.words/document/get_lastsection/) מאפיינים. באופן דומה, **Table** יש תכונות כגון [FirstRow](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_firstrow/), [LastRow](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_lastrow/), ואחרים.
- צומת הורה חושפת אוסף מודפס של צמתים ילדים, כגון [Document.Sections](https://reference.aspose.com/words/cpp/aspose.words/document/get_sections/), [Body.Paragraphs](https://reference.aspose.com/words/cpp/aspose.words/story/get_paragraphs/) ואחרים.
- צומת ילד מספק גישה מודפסת להורה שלו, כגון [Run.ParentParagraph](https://reference.aspose.com/words/cpp/aspose.words/inline/get_parentparagraph/), [Paragraph.ParentSection](https://reference.aspose.com/words/cpp/aspose.words/paragraph/get_parentsection/) ואחרים.

מאפיינים מודפסים הם רק קיצורי דרך שימושיים שלפעמים מספקים גישה קלה יותר מאשר מאפיינים גנריים שירשו מ [Node.ParentNode](https://reference.aspose.com/words/cpp/aspose.words/node/get_parentnode/) ו [CompositeNode.FirstChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_firstchild/).

דוגמת הקוד הבאה מראה כיצד להשתמש בתכונות שהוקלדו כדי לגשת לצמתים של עץ המסמך:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-TypedAccess.cpp" >}}
