---
title: עבודה עם Footnote ו- Endnote C#
second_title: Aspose.Words עבור .NET
articleTitle: עבודה עם Footnote & Endnote
linktitle: עבודה עם Footnote & Endnote
description: "כיצד לתמרן הערות והערות באמצעות C#."
type: docs
weight: 160
url: /he/net/working-with-footnote-and-endnote/
---

Aspose.Words גם מספק כמה שיעורים, שיטות ונכסים לעבודה עם הערות שוליים והערות קצה.

## תגית: Set Numbering Options

אם ברצונך להוסיף הודעת שוליים או לציין את מסמך Word, השתמש בבקשה [InsertFootnote](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfootnote/) שיטה. שיטה זו מכניסה הודעת שוליים או הערה לתוך המסמך.

[EndnoteOptions](https://reference.aspose.com/words/net/aspose.words.notes/endnoteoptions/) ו [FootnoteOptions](https://reference.aspose.com/words/net/aspose.words.notes/footnoteoptions/) כיתות מייצגות אפשרויות מספר להערות שוליים והערות קצה.

הדוגמה הבאה של הקוד מראה כיצד להכניס את הסימון אל המסמך ולהגדיר את אפשרויות המספר שלו:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithFootnote-SetEndnoteOptions.cs" >}}

## מספר העמודים של Footnote Layout

באפשרותך להגדיר את מספר עמודות הפריסה של Footnote באמצעות [Columns](https://reference.aspose.com/words/net/aspose.words.notes/footnoteoptions/columns/) רכוש. אם לנכס זה יש את הערך של 0, אזור הערות הרגל מעוצב עם מספר עמודות בהתבסס על מספר העמודות בדף המוצג.

דוגמה הקוד הבא מראה כיצד להגדיר את מספר העמודות עבור פריסת הערות שוליים:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithFootnote-SetFootNoteColumns.cs" >}}

## הגדר את המיקום של Footnote ו- Endnote

מיקום הערת שוליים יכול להיות בתחתית כל דף או מתחת לטקסט בכל דף. נקודת הסיום יכולה להיות בסוף הפרק או בסוף המסמך.

הדוגמה הבאה של הקוד מראה כיצד להגדיר את המיקום של הערת שוליים והערה:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithFootnote-SetFootnoteOptions.cs" >}}
