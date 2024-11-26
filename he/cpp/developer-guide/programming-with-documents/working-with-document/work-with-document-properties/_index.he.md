---
title: עבודה עם מאפייני מסמך ב C++
second_title: Aspose.Words עבור C++
articleTitle: עבודה עם מאפייני מסמך
linktitle: עבודה עם מאפייני מסמך
description: "Aspose.Words עבור C++ מאפשר לאחסן מידע שימושי על המסמך שלך, כגון API ומספר גרסה או תאריך מורשה, במאפייני מסמך מובנים או מותאמים אישית."
type: docs
weight: 10
url: /he/cpp/work-with-document-properties/
timestamp: 2024-01-31-14-23-37
---

מאפייני המסמך מאפשרים לאחסן מידע שימושי על המסמך שלך. ניתן לחלק מאפיינים אלה לשתי קבוצות:

* מערכת או מובנית המכילים ערכים כגון כותרת המסמך, שם המחבר, נתונים סטטיסטיים של מסמכים ואחרים.
* מוגדר על ידי משתמש או מותאם אישית, מסופק כזוגות שם-ערך שבו המשתמש יכול להגדיר את השם והערך.

כדאי לדעת שמידע על API ומספר הגרסה נכתב ישירות למסמכי פלט. לדוגמה, לאחר המרת מסמך ל - PDF, Aspose.Words ממלא את שדה "יישום" עם "Aspose.Words", ואת שדה "PDF מפיק" עם "Aspose.Words עבור C++ YY.מ. נ", שבו *YY.M.N* היא הגרסה של Aspose.Words המשמשת להמרה. לפרטים נוספים, ראה [גנרטור או שם יצרן כלול במסמכי פלט](/words/cpp/generator-or-producer-name-included-in-output-documents/).

{{% alert color="primary" %}}

שים לב שאתה **cannot direct** Aspose.Words לשנות או להסיר מידע זה ממסמכי פלט.

{{% /alert %}}

## גישה למאפייני מסמך

כדי לגשת למאפייני מסמך ב Aspose.Words השתמש:

* [BuiltInDocumentProperties](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/) כדי להשיג מאפיינים מובנים.

* [CustomDocumentProperties](https://reference.aspose.com/words/cpp/aspose.words.properties/customdocumentproperties/) כדי להשיג מאפיינים מותאמים אישית.

**BuiltInDocumentProperties**

**BuiltInDocumentProperties**

המחלקה [DocumentProperty](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/) מאפשרת לך לקבל את השם, הערך והסוג של מאפיין מסמך. [Value](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/get_value/) מחזיר אובייקט, אך יש קבוצה של שיטות המאפשרות לך להמיר את ערך המאפיין לסוג מסוים. לאחר שתכיר איזה סוג המאפיין, תוכל להשתמש באחת מהשיטות **DocumentProperty.ToXXX**, כגון **DocumentProperty.**[ToString](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/tostring/) ו **DocumentProperty.**[ToInt](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/toint/), כדי לקבל את הערך של הסוג המתאים.

דוגמת הקוד הבאה מראה כיצד למנות את כל המאפיינים המובנים והמותאמים במסמך:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-EnumerateProperties.cpp" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ התבנית של דוגמה זו מ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

ב Microsoft Word, אתה יכול לגשת למאפייני מסמך באמצעות התפריט" קובץ מאפיינים".

<img src="work-with-document-properties-1.png" alt="work-with-document-properties-aspose-words-cpp_1.png" style="width:400px"/>

## הוספה או הסרה של מאפייני מסמך

לא ניתן להוסיף או להסיר מאפייני מסמך מובנים באמצעות Aspose.Words. אתה יכול רק לשנות או לעדכן את הערכים שלהם.

כדי להוסיף מאפייני מסמך מותאמים אישית עם Aspose.Words, השתמש בשיטת [Add](https://reference.aspose.com/words/cpp/aspose.words.properties/customdocumentproperties/add/), והעביר את שם המאפיין החדש ואת הערך של הסוג המתאים. השיטה מחזירה את האובייקט החדש שנוצר **DocumentProperty**.

כדי להסיר מאפיינים מותאמים אישית, השתמש בשיטת [Remove](https://reference.aspose.com/words/cpp/aspose.words.properties/documentpropertycollection/remove/), העבר לה את שם המאפיין להסרה, או בשיטת [RemoveAt](https://reference.aspose.com/words/cpp/aspose.words.properties/documentpropertycollection/removeat/) להסרת המאפיין לפי אינדקס. ניתן גם להסיר את כל המאפיינים בשיטת [Clear](https://reference.aspose.com/words/cpp/aspose.words.properties/documentpropertycollection/clear/).

דוגמת הקוד הבאה בודקת אם נכס מותאם אישית עם שם פרטי קיים במסמך ומוסיפה עוד כמה מאפייני מסמך מותאמים אישית:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-CustomAdd.cpp" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ התבנית של דוגמה זו מ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

דוגמת הקוד הבאה מראה כיצד להסיר מאפיין מסמך מותאם אישית:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-CustomRemove.cpp" >}}

## עדכון מאפייני מסמך מובנים

Aspose.Words אינו מעדכן באופן אוטומטי את מאפייני המסמך, כפי שעושה Microsoft Word עם מאפיינים מסוימים, אך מספק שיטה לעדכון כמה מאפייני מסמך מובנים סטטיסטיים. התקשר לשיטה [UpdateWordCount](https://reference.aspose.com/words/cpp/aspose.words/document/updatewordcount/) כדי לחשב מחדש ולעדכן את המאפיינים הבאים:

* [Characters](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_characters/)
* [CharactersWithSpaces](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_characterswithspaces/)
* [Words](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_words/)
* [Paragraphs](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_paragraphs/)
* [Lines](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_lines/)

## צור נכס מותאם אישית חדש המקושר לתוכן

Aspose.Words מספק את השיטה [AddLinkToContent](https://reference.aspose.com/words/cpp/aspose.words.properties/customdocumentproperties/addlinktocontent/) ליצירת מאפיין מסמך מותאם אישית חדש המקושר לתוכן. מאפיין זה מחזיר את אובייקט המאפיין החדש שנוצר או את האפס אם [LinkSource](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/get_linksource/) אינו חוקי.

דוגמת הקוד הבאה מראה כיצד להגדיר קישור למאפיין מותאם אישית:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-ConfiguringLinkToContent.cpp" >}}

## קבל משתני מסמך

אתה יכול לקבל אוסף של משתני מסמך באמצעות המאפיין [Variables](https://reference.aspose.com/words/cpp/aspose.words/document/get_variables/). שמות וערכים משתנים הם מחרוזות.

דוגמת הקוד הבאה מראה כיצד למנות משתני מסמך:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-GetVariables-GetVariables.cpp" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ התבנית של דוגמה זו מ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## הסר מידע אישי מהמסמך

אם ברצונך לשתף מסמך Word עם אנשים אחרים, ייתכן שתרצה להסיר מידע אישי כגון שם המחבר והחברה. לשם כך השתמש במאפיין [RemovePersonalInformation](https://reference.aspose.com/words/cpp/aspose.words/document/get_removepersonalinformation/) כדי להגדיר את הדגל המציין כי Microsoft Word יסיר את כל פרטי המשתמש מהתגובות, התיקונים ומאפייני המסמך בעת שמירת המסמך.

דוגמת הקוד הבאה מראה כיצד להסיר מידע אישי:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-RemovePersonalInformation.cpp" >}}

{{% alert color="primary" %}}

הגדרת אפשרות זו אינה מסירה למעשה מידע אישי בעת עיבוד מסמך ב Aspose.Words ומשפיעה רק על התנהגות Microsoft Word.

{{% /alert %}}
