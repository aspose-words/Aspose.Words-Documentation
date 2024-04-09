---
title: להתאים את נכסי שדה ב Python
second_title: Aspose.Words עבור Python via .NET
articleTitle: Customize Field Properties
linktitle: Customize Field Properties
description: "למד כיצד להתאים אישית תכונות שדה Python. Rename משלב שדות או להשיג תוצאות עבור שדות ללא שיתוק Python via .NET."
type: docs
weight: 27
url: /he/python-net/customize-field-properties/
---

Aspose.Words מספק את היכולת לאינטראקציה עם תכונות שדה שונות. במאמר זה, נבחן כמה דוגמאות כדי להבין את העיקרון הבסיסי של עבודה עם תכונות שדה. אתה יכול לראות את הרשימה המלאה של נכסים עבור כל סוג שדה בכיתה המקבילה בכיתה [שדות](https://reference.aspose.com/words/python-net/aspose.words.fields/).

## עדכון רכוש

לפעמים משתמשים צריכים לשנות את הערך של נכס שדה. לדוגמה, עדכון [author_name](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldauthor/author_name/) רכוש `AUTHOR` שדה או שינוי [field_name](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldmergefield/field_name/) רכוש `MERGEFIELD` שדה.

הדוגמה הבאה של הקוד מראה כיצד להגדיר מחדש שדות מתמזגים במסמך Word:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-RenameMergeFields.py" >}}

## תוצאות

Aspose.Words מספק נכס כדי להשיג את התוצאה של השדה עבור שדות שאין להם צומת שדה. אנו קוראים לזה "תוצאה של פחד" או תוצאות תצוגה; MS Word מציג אותו במסמך על ידי חישוב ערך השדה על זבוב, אבל אין ערך כזה במודל המסמך.

הדוגמה הבאה מציגה את השימוש [display_result](https://reference.aspose.com/words/python-net/aspose.words.fields/field/display_result/) רכוש:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-FieldDisplayResults.py" >}}