---
title: עבודה עם Footnote ו- Endnote Java
second_title: Aspose.Words עבור Java
articleTitle: עבודה עם Footnote & Endnote
linktitle: עבודה עם Footnote & Endnote
description: "כיצד לתמרן הערות והערות כף הרגל באמצעות Java."
type: docs
weight: 160
url: /he/java/working-with-footnote-and-endnote/
---

Aspose.Words גם מספק כמה שיעורים, שיטות ונכסים לעבודה עם הערות שוליים והערות קצה.

## תגית: Set Numbering Options

אם אתה רוצה להוסיף הודעת שוליים או הערה במסמך Word, אנא השתמש [InsertFootnote](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertFootnote-int-java.lang.String) שיטה. שיטה זו מכניסה הודעת שוליים או הערה לתוך המסמך.

[EndnoteOptions](https://reference.aspose.com/words/java/com.aspose.words/endnoteoptions/) ו [FootnoteOptions](https://reference.aspose.com/words/java/com.aspose.words/footnoteoptions/) כיתות מייצגות אפשרויות מספר להערות שוליים והערות קצה.

הדוגמה הבאה של הקוד מראה כיצד להוסיף הערה במסמך ולהגדיר את אפשרויות מספר:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetEndnoteOptions.java" >}}

## מספר העמודים של Footnote Layout

באפשרותך להגדיר את מספר עמודות הפריסה של Footnote באמצעות [Columns](https://reference.aspose.com/words/java/com.aspose.words/footnoteoptions/#getColumns) רכוש. אם לנכס זה יש את הערך של 0, אזור הערות הרגל מעוצב עם מספר עמודות בהתבסס על מספר העמודות בדף המוצג.

דוגמה הקוד הבא מראה כיצד להגדיר את מספר העמודות עבור פריסת הערות שוליים:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetFootNoteColumns.java" >}}

## הגדר את המיקום של Footnote ו- Endnote

מיקום הערת שוליים יכול להיות בתחתית כל דף או מתחת לטקסט בכל דף. נקודת הסיום יכולה להיות בסוף הפרק או בסוף המסמך.

הדוגמה הבאה של הקוד מראה כיצד להגדיר את המיקום של הערת שוליים והערה:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetFootnoteAndEndNotePosition.java" >}}
