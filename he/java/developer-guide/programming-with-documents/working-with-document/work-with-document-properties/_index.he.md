---
title: עבודה עם Document Properties Java
second_title: Aspose.Words עבור Java
articleTitle: עבודה עם Document Properties
linktitle: עבודה עם Document Properties
description: "Aspose.Words עבור Java מאפשר אחסון מידע שימושי על המסמך שלך, כגון API מספר גירסה או Authorized Date, במתקני מסמך בנויים או מותאמים אישית."
type: docs
weight: 10
url: /he/java/work-with-document-properties/
---

תכונות המסמכים מאפשרות אחסון מידע שימושי על המסמך שלך. תכונות אלה ניתן לחלק לשתי קבוצות:

* • מערכת או בנתה-in המכילים ערכים כגון שם מסמך, שם המחבר, סטטיסטיקות מסמכים ואחרים.
* מוגדר למשתמש או מותאם אישית, בתנאי שמות-ערך זוגות שבו המשתמש יכול להגדיר הן את השם ואת הערך.

שימושי לדעת את המידע הזה API מספר גרסאות וגרסה נכתב ישירות למסמכים. לדוגמה, על ידי המרת מסמך ל- PDF, Aspose.Words ממלא את שדה "השכפול" עם "Aspose.Words"המפיק ה-PDF" עם שדה "Aspose.Words עבור Java YY.M.N, Where *YY.M.N* זו הגרסה של Aspose.Words משמש להמרה. לפרטים נוספים, ראה [גנרטור או שם מפיק הכלול במסמכים חיצוניים](/words/he/java/generator-or-producer-name-included-in-output-documents/).

{{% alert color="primary" %}}

שים לב **לא יכול להיות ישיר** Aspose.Words כדי לשנות או להסיר מידע זה ממסמכים.

{{% /alert %}}

## Access Document Properties

גישה לתכונות מסמך Aspose.Words שימוש:

* [BuiltInDocumentProperties](https://reference.aspose.com/words/java/com.aspose.words/document/#getBuiltInDocumentProperties) להשיג תכונות בנויות.

* [CustomDocumentProperties](https://reference.aspose.com/words/java/com.aspose.words/document/#getCustomDocumentProperties) להשיג תכונות מותאמות אישית.

**BuiltInDocumentProperties** ו **CustomDocumentProperties** הם אוספים [DocumentProperty](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/) אובייקטים. אובייקטים אלה ניתן להשיג באמצעות הנכס אינדקס על ידי שם או על ידי אינדקס.

**BuiltInDocumentProperties** בנוסף, מספק גישה לתכונות מסמך באמצעות קבוצה של תכונות נכנסות אשר מחזירות ערכים של הסוג המתאים. **CustomDocumentProperties** ניתן להוסיף או להסיר תכונות מסמך מ מסמך.

The The The [DocumentProperty](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/) הכיתה מאפשרת לך לקבל את השם, הערך וסוג של נכס מסמך. [המונחים: Reverse Lodge: mit euch (Pool'sPSK) Transform Lodge - Meadows, Volume {0} המונחים: {1}(צילום:](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#toString) ו **DocumentProperty.**[ToInt](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#toInt), כדי להשיג את הערך של הסוג המתאים.

הדוגמה הבאה של הקוד מראה כיצד למנות את כל התכונות המובנות והמותאמות אישית במסמך:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-EnumerateProperties.java" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ התבנית של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

In In In Microsoft Word, באפשרותך לגשת לתכונות מסמך באמצעות התפריט "File Properties".

<img src="/words/java/work-with-document-properties/work-with-document-properties-1.png" alt="work-with-document-properties-aspose-words-java.png" style="width:400px"/>

## הוסף או להסיר נכסים

אינך יכול להוסיף או להסיר תכונות מסמך בנוי באמצעות Aspose.Words. אתה יכול רק לשנות או לעדכן את הערכים שלהם.

כדי להוסיף תכונות מסמך מותאמות אישית Aspose.Words, שימוש [Add](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#add-java.lang.String-boolean) שיטה, להעביר את שם הנכס החדש ואת הערך של הסוג המתאים. השיטה מחזירה את החדש שנוצר **DocumentProperty** אובייקט

כדי להסיר תכונות מותאמות אישית, השתמש [Remove](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#remove-java.lang.String) שיטה, להעביר את שם הנכס כדי להסיר, או [RemoveAt](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#removeAt-int) שיטה להסיר את הנכס על ידי אינדקס. ניתן גם להסיר את כל התכונות באמצעות [Clear](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#clear) שיטה.

הדוגמה הבאה בודקת האם קיים נכס מותאם אישית עם שם נתון במסמך ומוסיף כמה תכונות מסמך מותאמות אישית:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-CustomAdd.java" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ התבנית של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

הדוגמה הבאה של הקוד מראה כיצד להסיר נכס מסמך מותאם אישית:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-CustomRemove.java" >}}

## עדכון מובנה-In Document Properties

Aspose.Words לא לעדכן באופן אוטומטי את תכונות המסמך, כמו Microsoft Word עושה עם כמה תכונות, אבל מספק שיטה לעדכן כמה תכונות מסמכים בנוי סטטיסטי. התקשר [UpdateWordCount](https://reference.aspose.com/words/java/com.aspose.words/document/#updateWordCount) שיטה לחישוב מחדש ולעדכן את התכונות הבאות:

* [Characters](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Characters)
* [CharactersWithSpaces](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#CharactersWithSpaces)
* [Words](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Words)
* [Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Paragraphs)
* [Lines](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Lines)

## יצירת נכס מותאם אישית חדש לתכנים

Aspose.Words מספק [AddLinkToContent](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#addLinkToContent-java.lang.String-java.lang.String) שיטה ליצירת נכס מסמך מותאם אישית חדש הקשור לתוכן. נכס זה מחזיר את אובייקט הנדל"ן שנוצר לאחרונה או אפס אם [LinkSource](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#isLinkToContent) זה לא חוקי.

לדוגמה הקוד הבא מראה כיצד להגדיר קישור לרכוש מותאם אישית:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-ConfiguringLinkToContent.java" >}}

## קבל מסמך משתנה

אתה יכול לקבל אוסף של משתנים באמצעות [Variables](https://reference.aspose.com/words/java/com.aspose.words/document/#getVariables) רכוש. שמות וערכים שונים הם מיתרים.

הדוגמה הבאה של הקוד מראה כיצד למנות משתנים:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-GetDocumentVariables-GetDocumentVariables.java" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ התבנית של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

## להסיר מידע אישי מ- Document

אם ברצונך לשתף מסמך Word עם אנשים אחרים, ייתכן שתרצה להסיר מידע אישי כגון שם המחבר והחברה. לעשות שימוש זה [RemovePersonalInformation](https://reference.aspose.com/words/java/com.aspose.words/document/#getRemovePersonalInformation) רכוש להציב את הדגל מצביע על כך Microsoft Word יסיר את כל פרטי המשתמש מהערות, תיקונים, ותכונות מסמך על שמירת המסמך.

{{% alert color="primary" %}}

קביעת אפשרות זו אינה למעשה מסירת מידע אישי תוך עיבוד מסמך Aspose.Words משפיע רק על Microsoft Word התנהגות.

{{% /alert %}}
