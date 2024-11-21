---
title: עבודה עם Document Properties
second_title: Aspose.Words עבור Python via .NET
articleTitle: עבודה עם Document Properties
linktitle: עבודה עם Document Properties
description: "Aspose.Words עבור Python מאפשר אחסון מידע שימושי על המסמך שלך, כגון API מספר גירסה או Authorized Date, במתקני מסמך בנויים או מותאמים אישית."
type: docs
weight: 10
url: /he/python-net/work-with-document-properties/
timestamp: 2024-01-31-14-23-37
---

תכונות המסמכים מאפשרות אחסון מידע שימושי על המסמך שלך. תכונות אלה ניתן לחלק לשתי קבוצות:

* • מערכת או בנתה-in המכילים ערכים כגון שם מסמך, שם המחבר, סטטיסטיקות מסמכים ואחרים.
* מוגדר למשתמש או מותאם אישית, בתנאי שמות-ערך זוגות שבו המשתמש יכול להגדיר הן את השם ואת הערך.

שימושי לדעת את המידע הזה API מספר הגירסה והגרסה נכתב ישירות למסמכים. לדוגמה, על ידי המרת מסמך ל- PDF, Aspose.Words מלא בשדה "Application" עםAspose.Words"המפיק ה-PDF" עם שדה "Aspose.Words עבור .NET YY.M.N, Where *YY.M.N* זו הגרסה של Aspose.Words משמש להמרה. לפרטים נוספים, ראה [גנרטור או שם מפיק הכלולים במסמכים חיצוניים](/words/he/python-net/generator-or-producer-name-included-in-output-documents/).

{{% alert color="primary" %}}

שים לב **לא יכול להיות ישיר** Aspose.Words לשנות או להסיר מידע זה ממסמכים.

{{% /alert %}}

## Access Document Properties

גישה לתכונות מסמך Aspose.Words שימוש:

* [built_in_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/built_in_document_properties/) להשיג תכונות בנויות.

* [custom_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/custom_document_properties/) להשיג תכונות מותאמות אישית.

[built_in_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/built_in_document_properties/) ו [custom_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/custom_document_properties/) הם אוספים [DocumentProperty](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/) אובייקטים. אובייקטים אלה ניתן להשיג באמצעות הנכס אינדקס על ידי שם או על ידי אינדקס.

[built_in_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/built_in_document_properties/) בנוסף, מספק גישה לתכונות מסמך באמצעות קבוצה של תכונות נכנסות אשר מחזירות ערכים של הסוג המתאים. [custom_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/custom_document_properties/) ניתן להוסיף או להסיר תכונות מסמך מ מסמך.

The The The [DocumentProperty](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/) הכיתה מאפשרת לך לקבל את השם, הערך וסוג של נכס מסמך. [value](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/value/) מחזיר אובייקט, אבל יש קבוצה של שיטות המאפשרות לך לקבל את ערך הנכס מומר לסוג מסוים. לאחר שאתה יודע איזה סוג הנכס הוא, אתה יכול להשתמש אחד **מקור: to_XXX** שיטות, כגון **DocumentProperty** ו [DocumentProperty.to_int](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/to_int/), כדי להשיג את הערך של הסוג המתאים.

הדוגמה הבאה של הקוד מראה כיצד למנות את כל התכונות המובנות והמותאמות אישית במסמך:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-EnumerateProperties.py" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ התבנית של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

In In In Microsoft Word, באפשרותך לגשת לתכונות מסמך באמצעות התפריט "File Properties".

<img src="/words/python-net/work-with-document-properties/work-with-document-properties-1.png" alt="/words/python-net/work-with-document-properties/work-with-document-properties-1.png" style="width:400px"/>

## הוסף או להסיר מסמכים

אתה לא יכול להוסיף או להסיר תכונות מסמך בנוי באמצעות Aspose.Words. אתה יכול רק לשנות או לעדכן את הערכים שלהם.

כדי להוסיף תכונות מסמך מותאמות אישית Aspose.Words, שימוש [add](https://reference.aspose.com/words/python-net/aspose.words.properties/customdocumentproperties/add/) שיטה, להעביר את שם הנכס החדש ואת הערך של הסוג המתאים. השיטה מחזירה את החדש שנוצר [DocumentProperty](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/) אובייקט.

כדי להסיר תכונות מותאמות אישית, השתמש [remove](https://reference.aspose.com/words/python-net/aspose.words.properties/documentpropertycollection/remove/) שיטה, להעביר את שם הנכס כדי להסיר, או [remove_at](https://reference.aspose.com/words/python-net/aspose.words.properties/documentpropertycollection/remove_at/) שיטה להסיר את הנכס על ידי אינדקס. ניתן גם להסיר את כל התכונות באמצעות [clear](https://reference.aspose.com/words/python-net/aspose.words.properties/documentpropertycollection/clear/) שיטה.

הדוגמה הבאה בודקת האם קיים נכס מותאם אישית עם שם נתון במסמך ומוסיף כמה תכונות מסמך מותאמות אישית יותר:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-AddCustomDocumentProperties.py" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ התבנית של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

הדוגמה הבאה של הקוד מראה כיצד להסיר נכס מסמך מותאם אישית:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-CustomRemove.py" >}}

## עדכון מובנה-In Document Properties

Aspose.Words לא לעדכן באופן אוטומטי את תכונות המסמך, כמו Microsoft Word עושה עם כמה תכונות, אבל מספק שיטה לעדכן כמה תכונות מסמכים בנוי סטטיסטי. התקשר [update_word_count](https://reference.aspose.com/words/python-net/aspose.words/document/update_word_count/) שיטה לחישוב מחדש ולעדכן את התכונות הבאות:

* [characters](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/characters/)
* [characters_with_spaces](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/characters_with_spaces/)
* [words](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/words/)
* [paragraphs](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/paragraphs/)
* [lines](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/lines/)

## יצירת נכס חדש מקושר לתוכן

Aspose.Words מספק [add_link_to_content](https://reference.aspose.com/words/python-net/aspose.words.properties/customdocumentproperties/add_link_to_content/) שיטה ליצירת נכס מסמך מותאם אישית חדש הקשור לתוכן. נכס זה מחזיר את אובייקט הנדל"ן שנוצר לאחרונה או אפס אם **קישור_source** זה לא חוקי.

הדוגמה הבאה של הקוד מראה כיצד להגדיר קישור לרכוש מותאם אישית:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-ConfiguringLinkToContent.py" >}}

## קבל מסמך משתנה

אתה יכול לקבל אוסף של משתנים באמצעות [variables](https://reference.aspose.com/words/python-net/aspose.words/document/variables/) רכוש. שמות וערכים שונים הם מיתרים.

הדוגמה הבאה של הקוד מראה כיצד להוסיף ולגישה משתנים:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-GetVariables.py" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ התבנית של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

## להסיר מידע אישי מ- Document

אם ברצונך לשתף מסמך Word עם אנשים אחרים, ייתכן שתרצה להסיר מידע אישי כגון שם המחבר והחברה. לעשות שימוש זה [remove_personal_information](https://reference.aspose.com/words/python-net/aspose.words/document/remove_personal_information/) רכוש להציב את הדגל מצביע על כך Microsoft Word יסיר את כל פרטי המשתמש מהערות, תיקונים, ותכונות מסמך על שמירת המסמך.

דוגמה לקוד הבא מראה כיצד להסיר מידע אישי:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-RemovePersonalInformation.py" >}}

{{% alert color="primary" %}}

קביעת אפשרות זו אינה למעשה מסירת מידע אישי תוך עיבוד מסמך Aspose.Words משפיע רק על Microsoft Word התנהגות.

{{% /alert %}}
