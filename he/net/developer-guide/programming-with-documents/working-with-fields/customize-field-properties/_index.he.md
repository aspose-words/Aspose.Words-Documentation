---
title: להתאים את נכסי שדה ב C#
second_title: Aspose.Words עבור .NET
articleTitle: Customize Field Properties
linktitle: Customize Field Properties
description: "למד כיצד להתאים אישית תכונות שדה C#. Rename משלב שדות או להשיג תוצאות עבור שדות ללא שיתוק .NET."
type: docs
weight: 27
url: /he/net/customize-field-properties/
---

Aspose.Words מספק את היכולת לאינטראקציה עם תכונות שדה שונות. במאמר זה, נבחן כמה דוגמאות כדי להבין את העיקרון הבסיסי של עבודה עם תכונות שדה. אתה יכול לראות את הרשימה המלאה של נכסים עבור כל סוג שדה בכיתה המקבילה בכיתה [שדות שם](https://reference.aspose.com/words/net/aspose.words.fields/).

## עדכון רכוש

לפעמים משתמשים צריכים לשנות את הערך של נכס שדה. לדוגמה, עדכון [AuthorName](https://reference.aspose.com/words/net/aspose.words.fields/fieldauthor/authorname/) רכוש `AUTHOR` שדה או שינוי [FieldName](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/fieldname/) רכוש `MERGEFIELD` שדה.

הדוגמה הבאה של הקוד מראה כיצד להגדיר מחדש שדות מתמזגים במסמך Word:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-RenameMergeFields-RenameMergeFields.cs" >}}

## תוצאות

Aspose.Words מספק נכס כדי להשיג את התוצאה של השדה עבור שדות שאין להם צומת שדה. אנו קוראים לזה "תוצאה של פחד" או תוצאות תצוגה; MS Word מציג אותו במסמך על ידי חישוב ערך השדה על זבוב, אבל אין ערך כזה במודל המסמך.

הדוגמה הבאה מציגה את השימוש [DisplayResult](https://reference.aspose.com/words/net/aspose.words.fields/field/displayresult/) רכוש:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldDisplayResults-FieldDisplayResults.cs" >}}
