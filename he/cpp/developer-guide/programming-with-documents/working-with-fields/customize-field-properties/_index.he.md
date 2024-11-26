---
title: התאמה אישית של מאפייני שדה ב C++
second_title: Aspose.Words עבור C++
articleTitle: התאמה אישית של מאפייני שדה
linktitle: התאמה אישית של מאפייני שדה
description: "למד כיצד להתאים אישית מאפייני שדה ב C++. שינוי שם מיזוג שדות או להשיג תוצאות עבור שדות ללא צומת מפריד ב C++."
type: docs
weight: 27
url: /he/cpp/customize-field-properties/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words מספק את היכולת לתקשר באופן פרוגרמטי עם מאפייני שדה שונים. במאמר זה נבחן כמה דוגמאות כדי שתבינו את העיקרון הבסיסי של עבודה עם מאפייני שדה. אתה יכול לראות את הרשימה המלאה של מאפיינים עבור כל סוג שדה בכיתה המתאימה ב [Fields namespace](https://reference.aspose.com/words/cpp/namespace/aspose.words.fields).

## עדכון נכס שדה

לפעמים משתמשים צריכים לשנות את הערך של נכס שדה. לדוגמה, עדכן את המאפיין [AuthorName](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldauthor/get_authorname/) של השדה `AUTHOR` או שנה את המאפיין [FieldName](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/get_fieldname/) של השדה `MERGEFIELD`.

דוגמת הקוד הבאה מראה כיצד לשנות את שם שדות המיזוג במסמך Word:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-RenameMergeFields-RenameMergeFields.cpp" >}}

## תוצאת תצוגת שדה

Aspose.Words מספק מאפיין להשגת תוצאת השדה עבור שדות שאין להם צומת מפריד שדה. אנו קוראים לזה "תוצאה מזויפת" או תוצאת תצוגה; Microsoft Word מציג אותו במסמך על ידי חישוב ערך השדה תוך כדי תנועה, אך אין ערך כזה במודל המסמך.

דוגמת הקוד הבאה מראה את השימוש במאפיין [DisplayResult](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_displayresult/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldDisplayResults-FieldDisplayResults.cpp" >}}
