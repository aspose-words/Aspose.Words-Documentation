---
title: עבודה עם Document Properties C#
second_title: Aspose.Words עבור .NET
articleTitle: עבודה עם Document Properties
linktitle: עבודה עם Document Properties
description: "Aspose.Words עבור .NET מאפשר אחסון מידע שימושי על המסמך שלך, כגון API מספר גירסה או Authorized Date, תכונות מסמך בנוי או מותאם אישית באמצעות C#."
type: docs
weight: 10
url: /he/net/work-with-document-properties/
timestamp: 2024-01-31-14-23-37
---

תכונות המסמכים מאפשרות אחסון מידע שימושי על המסמך שלך. תכונות אלה ניתן לחלק לשתי קבוצות:

* • מערכת או בנתה-in המכילים ערכים כגון שם מסמך, שם המחבר, סטטיסטיקות מסמכים ואחרים.
* מוגדר למשתמש או מותאם אישית, בתנאי שמות-ערך זוגות שבו המשתמש יכול להגדיר הן את השם ואת הערך.

שימושי לדעת את המידע הזה API מספר הגירסה והגרסה נכתב ישירות למסמכים. לדוגמה, על ידי המרת מסמך ל- PDF, Aspose.Words מלא בשדה "Application" עםAspose.Words"המפיק ה-PDF" עם שדה "Aspose.Words עבור .NET YY.M.N, Where *YY.M.N* זו הגרסה של Aspose.Words משמש להמרה. לפרטים נוספים, ראה [גנרטור או שם מפיק הכלולים במסמכים חיצוניים](/words/he/net/generator-or-producer-name-included-in-output-documents/).

{{% alert color="primary" %}}

שים לב **לא יכול להיות ישיר** Aspose.Words לשנות או להסיר מידע זה ממסמכים.

{{% /alert %}}

## Access Document Properties

גישה לתכונות מסמך Aspose.Words שימוש:

* [BuiltInDocumentProperties](https://reference.aspose.com/words/net/aspose.words/document/builtindocumentproperties/) להשיג תכונות בנויות.

* [CustomDocumentProperties](https://reference.aspose.com/words/net/aspose.words/document/customdocumentproperties/) להשיג תכונות מותאמות אישית.

**BuiltInDocumentProperties** ו **CustomDocumentProperties** הם אוספים [DocumentProperty](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/) אובייקטים. אובייקטים אלה ניתן להשיג באמצעות הנכס אינדקס על ידי שם או על ידי אינדקס.

**BuiltInDocumentProperties** בנוסף, מספק גישה לתכונות מסמך באמצעות קבוצה של תכונות נכנסות אשר מחזירות ערכים של הסוג המתאים. **CustomDocumentProperties** ניתן להוסיף או להסיר תכונות מסמך מ מסמך.

The The The [DocumentProperty](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/) הכיתה מאפשרת לך לקבל את השם, הערך וסוג של נכס מסמך. [Value](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/value/) מחזיר אובייקט, אבל יש קבוצה של שיטות המאפשרות לך לקבל את ערך הנכס מומר לסוג מסוים. לאחר שאתה יודע איזה סוג הנכס הוא, אתה יכול להשתמש אחד **DocumentProperty.ToXXX** שיטות, כגון **DocumentProperty.**[ToString](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/tostring/) ו **DocumentProperty.**[ToInt](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/toint/), כדי להשיג את הערך של הסוג המתאים.

הדוגמה הבאה של הקוד מראה כיצד למנות את כל התכונות המובנות והמותאמות אישית במסמך:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-EnumerateProperties.cs" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ התבנית של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

In In In Microsoft Word, באפשרותך לגשת לתכונות מסמך באמצעות תפריט "File Properties"

<img src="/words/net/work-with-document-properties/work-with-document-properties-1.png" alt="/words/net/work-with-document-properties/work-with-document-properties-1.png" style="width:400px"/>

## הוסף או להסיר מסמכים

אתה לא יכול להוסיף או להסיר תכונות מסמך בנוי באמצעות Aspose.Words. אתה יכול רק לשנות או לעדכן את הערכים שלהם.

כדי להוסיף תכונות מסמך מותאמות אישית Aspose.Words, שימוש [Add](https://reference.aspose.com/words/net/aspose.words.properties/customdocumentproperties/add/#add/) שיטה, להעביר את שם הנכס החדש ואת הערך של הסוג המתאים. השיטה מחזירה את החדש שנוצר **DocumentProperty** אובייקט.

כדי להסיר תכונות מותאמות אישית, השתמש [Remove](https://reference.aspose.com/words/net/aspose.words.properties/documentpropertycollection/remove/) שיטה, להעביר את שם הנכס כדי להסיר, או [RemoveAt](https://reference.aspose.com/words/net/aspose.words.properties/documentpropertycollection/remove/at) שיטה להסיר את הנכס על ידי אינדקס. ניתן גם להסיר את כל התכונות באמצעות [Clear](https://reference.aspose.com/words/net/aspose.words.properties/documentpropertycollection/clear/) שיטה.

הדוגמה הבאה בודקת האם קיים נכס מותאם אישית עם שם נתון במסמך ומוסיף כמה תכונות מסמך מותאמות אישית יותר:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-CustomAdd.cs" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ התבנית של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

הדוגמה הבאה של הקוד מראה כיצד להסיר נכס מסמך מותאם אישית:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-CustomRemove.cs" >}}

## עדכון מובנה-In Document Properties

Aspose.Words לא לעדכן באופן אוטומטי את תכונות המסמך, כמו Microsoft Word עושה עם כמה תכונות, אבל מספק שיטה לעדכן כמה תכונות מסמכים בנוי סטטיסטי. התקשר [UpdateWordCount](https://reference.aspose.com/words/net/aspose.words/document/updatewordcount/#updatewordcount/) שיטה לחישוב מחדש ולעדכן את התכונות הבאות:

* [Characters](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/characters/)
* [CharactersWithSpaces](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/characterswithspaces/)
* [Words](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/words/)
* [Paragraphs](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/paragraphs/)
* [Lines](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/lines/)

## יצירת נכס חדש מקושר לתוכן

Aspose.Words מספק [AddLinkToContent](https://reference.aspose.com/words/net/aspose.words.properties/customdocumentproperties/addlinktocontent/) שיטה ליצירת נכס מסמך מותאם אישית חדש הקשור לתוכן. נכס זה מחזיר את אובייקט הנדל"ן שנוצר לאחרונה או אפס אם [LinkSource](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/linksource/) זה לא חוקי.

הדוגמה הבאה של הקוד מראה כיצד להגדיר קישור לרכוש מותאם אישית:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-ConfiguringLinkToContent.cs" >}}

## קבל מסמך משתנה

אתה יכול לקבל אוסף של משתנים באמצעות [Variables](https://reference.aspose.com/words/net/aspose.words/document/variables/) רכוש. שמות וערכים שונים הם מיתרים.

הדוגמה הבאה של הקוד מראה כיצד למנות משתנים של מסמך:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-GetVariables-GetVariables.cs" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ התבנית של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

## להסיר מידע אישי מ- Document

אם ברצונך לשתף מסמך Word עם אנשים אחרים, ייתכן שתרצה להסיר מידע אישי כגון שם המחבר והחברה. לעשות שימוש זה [RemovePersonalInformation](https://reference.aspose.com/words/net/aspose.words/document/removepersonalinformation/) רכוש להציב את הדגל מצביע על כך Microsoft Word יסיר את כל פרטי המשתמש מהערות, תיקונים, ותכונות מסמך על שמירת המסמך.

דוגמה לקוד הבא מראה כיצד להסיר מידע אישי:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-RemovePersonalInformation.cs" >}}

{{% alert color="primary" %}}

קביעת אפשרות זו אינה למעשה מסירת מידע אישי תוך עיבוד מסמך Aspose.Words משפיע רק על Microsoft Word התנהגות.

{{% /alert %}}
