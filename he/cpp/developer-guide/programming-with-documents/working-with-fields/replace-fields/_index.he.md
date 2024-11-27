---
title: החלף שדות C++
second_title: Aspose.Words עבור C++
articleTitle: החלף שדות בטקסט סטטי
linktitle: החלף שדות בטקסט סטטי
description: "למד כיצד להחליף שדות בטקסט ב C++. החלף שדות בנתונים סטטיים באמצעות C++ API."
type: docs
weight: 37
url: /he/cpp/replace-fields/
timestamp: 2024-01-27-14-07-04
---

החלפת שדות נדרשת לעתים קרובות כאשר ברצונך לשמור את המסמך כעותק סטטי. לדוגמה, בעת שליחת כקובץ מצורף בדואר אלקטרוני. המרת שדות כגון `DATE` או `TIME` לטקסט סטטי תאפשר למסמך להציג את אותו תאריך שבו נשלח. כמו כן, במצבים מסוימים, ייתכן שיהיה עליך להסיר את השדות `IF` מותנה מהמסמך ולהחליף אותם בתוצאת הטקסט העדכנית ביותר במקום זאת. לדוגמה, המרת התוצאה של השדה `IF` לטקסט סטטי כך שהוא כבר לא ישנה את ערכו באופן דינמי כאשר שדות במסמך מתעדכנים.

התרשים שלהלן מראה כיצד השדה `IF` מאוחסן במסמך:

* הטקסט מוקף בצמתי השדה המיוחדים - [FieldStart](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_fieldstart/) ו [FieldEnd](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_fieldend/)
* הצומת [FieldSeparator](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_separator/) מפרידה את הטקסט בתוך השדה לקוד השדה ולתוצאת השדה
* קוד השדה מגדיר את ההתנהגות הכללית של השדה, בעוד שתוצאת השדה שומרת על התוצאה האחרונה כאשר שדה זה מתעדכן באמצעות Microsoft Word או Aspose.Words
* תוצאת השדה היא מה שמאוחסן בשדה ומוצג במסמך בעת הצפייה

![update-remove-a-field-aspose-words](updating-and-removing-a-field-1.png)

ניתן לראות את המבנה גם למטה בצורה היררכית באמצעות פרויקט הדמו *"DocumentExplorer"*.

![update-remove-a-field-aspose-words-2](updating-and-removing-a-field-2.png)

## שדות שלא ניתן להחליף בטקסט

החלפת שדה בטקסט סטטי אינה פועלת כראוי עבור שדות מסוימים בכותרת עליונה או תחתונה.

לדוגמה, ניסיון להמיר את השדה `PAGE` בכותרת עליונה או תחתונה לטקסט סטטי יביא לכך שאותו ערך יוצג בכל הדפים. הסיבה לכך היא שכותרות עליונות ותחתונות חוזרות על פני מספר עמודים, וכאשר הן נשארות כשדות, הן מטופלות במיוחד כך שהן מציגות את התוצאה הנכונה עבור כל עמוד.

עם זאת, בכותרת, השדה `PAGE` מתורגם היטב לריצת טקסט סטטית. הפעלת טקסט זו תוערך כאילו היה העמוד האחרון בקטע, מה שיגרום לכל שדה `PAGE` בכותרת להציג את העמוד האחרון על כל הדפים.

דוגמת הקוד הבאה מראה כיצד להחליף את השדה בתוצאה האחרונה שלו:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-UnlinkFields.cpp" >}}

## המרת סוגי שדות מסוימים בחלקי מסמכים ספציפיים

מאחר ושיטת **ConvertFieldsToStaticText** מקבלת שני פרמטרים – המאפיינים [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/) והספירה [FieldType](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldtype/), ניתן להעביר כל צומת מורכב לשיטה זו. זה מאפשר להמיר שדות לטקסט סטטי רק בחלקים ספציפיים של המסמך.

לדוגמה, אתה יכול להעביר אובייקט [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) ולהמיר שדות מהסוג שצוין מכל המסמך לטקסט סטטי, או שאתה יכול להעביר אובייקט [Body](https://reference.aspose.com/words/cpp/aspose.words/body/) של קטע ולהמיר רק את השדות שנמצאים בגוף זה.

{{% alert color="primary" %}}

כאשר עוברים צומת ברמת בלוק כגון [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/), שים לב שבמקרים מסוימים, שדות יכולים להתפרש על פני מספר פסקאות. אם זה קורה, מומלץ להעביר את ההורה של הרכב במקום זאת כדי להימנע מכך.

{{% /alert %}}

הספירה [FieldType](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldtype/) שהועברה לשיטת **ConvertFieldsToStaticText** מציינת איזה סוג שדות יש להמיר לטקסט סטטי. כל סוג שדה אחר שנמצא במסמך יישאר ללא שינוי.

דוגמת הקוד הבאה מראה כיצד לבחור שדות מסוג מסוים - *targetFieldType* בצומת ספציפי - *compositeNode* ולאחר מכן להמיר אותם לטקסט סטטי:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldsHelper-FieldsHelper.cpp" >}}

דוגמת הקוד הבאה מראה כיצד להמיר את כל השדות `IF` במסמך לטקסט סטטי:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-ConvertFieldsInDocument-ConvertFieldsInDocument.cpp" >}}

דוגמת הקוד הבאה מראה כיצד להמיר את כל השדות `PAGE` בגוף של מסמך לטקסט סטטי:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-ConvertFieldsInDocument-ConvertFieldsInDocument.cpp" >}}

דוגמת הקוד הבאה מראה כיצד להמיר את כל השדות `IF` בפסקה האחרונה לטקסט סטטי:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-ConvertFieldsInDocument-ConvertFieldsInDocument.cpp" >}}
