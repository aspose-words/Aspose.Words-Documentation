---
title: Customize Field Properties
second_title: Aspose.Words עבור Java
articleTitle: Customize Field Properties
linktitle: Customize Field Properties
description: "למד כיצד להתאים אישית תכונות שדה Java. Rename משלב שדות או להשיג תוצאות עבור שדות ללא שיתוק Java."
type: docs
weight: 27
url: /he/java/customize-field-properties/
---

Aspose.Words מספק את היכולת לאינטראקציה עם תכונות שדה שונות. במאמר זה, נבחן כמה דוגמאות כדי להבין את העיקרון הבסיסי של עבודה עם תכונות שדה. אתה יכול לראות את הרשימה המלאה של נכסים עבור כל סוג שדה בכיתה המקבילה.

## עדכון רכוש

לפעמים משתמשים צריכים לשנות את הערך של נכס שדה. לדוגמה, עדכון [AuthorName](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/#getAuthorName) רכוש `AUTHOR` שדה או שינוי [FieldName](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/#getFieldName) רכוש `MERGEFIELD` שדה.

הדוגמה הבאה של הקוד מראה כיצד להגדיר מחדש שדות מתמזגים במסמך Word:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-RenameMergeFields-RenameMergeFields.java" >}}

## תוצאות

Aspose.Words מספק נכס כדי להשיג את התוצאה של השדה עבור שדות שאין להם צומת שדה. אנו קוראים לזה "תוצאה של פחד" או תוצאות תצוגה; MS Word מציג אותו במסמך על ידי חישוב ערך השדה על זבוב, אבל אין ערך כזה במודל המסמך.

הדוגמה הבאה מציגה את השימוש [DisplayResult](https://reference.aspose.com/words/java/com.aspose.words/field/#getDisplayResult) רכוש:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldDisplayResult-FieldDisplayResult.java" >}}
