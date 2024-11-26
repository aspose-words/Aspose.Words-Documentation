---
title: עבודה עם Footnote & Endnote
second_title: Aspose.Words עבור Python via .NET
articleTitle: עבודה עם Footnote & Endnote
linktitle: עבודה עם Footnote & Endnote
description: "הכנס photnotes או Endnotes לתוך מסמך וציין את האפשרויות שלה באמצעות שימוש Python."
type: docs
weight: 160
url: /he/python-net/working-with-footnote-and-endnote/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words גם מספק כמה שיעורים, שיטות ונכסים לעבודה עם הערות שוליים והערות קצה.

## תגית: Set Numbering Options

אם ברצונך להוסיף הערות שוליים או הערה במסמך Word, השתמש בבקשה [insert_footnote](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_footnote/) שיטה. שיטה זו מכניסה הודעת שוליים או הערה לתוך המסמך.

[EndnoteOptions](https://reference.aspose.com/words/python-net/aspose.words.notes/endnoteoptions/) ו [FootnoteOptions](https://reference.aspose.com/words/python-net/aspose.words.notes/footnoteoptions/) כיתות מייצגות אפשרויות מספר להערות שוליים והערות קצה.

הדוגמה הבאה של הקוד מראה כיצד להכניס את הסימון אל המסמך ולהגדיר את אפשרויות המספר שלו:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_footnote_and_endnote-SetEndnoteOptions.py" >}}

## מספר העמודים של Footnote Layout

באפשרותך להגדיר את מספר עמודות הפריסה של Footnote באמצעות [columns](https://reference.aspose.com/words/python-net/aspose.words.notes/footnoteoptions/columns/) רכוש. אם לנכס זה יש את הערך של 0, אזור הערות הרגל מעוצב עם מספר עמודות בהתבסס על מספר העמודות בדף המוצג.

דוגמה הקוד הבא מראה כיצד להגדיר את מספר העמודות עבור פריסת הערות שוליים:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_footnote_and_endnote-SetFootNoteColumns.py" >}}

## הגדר את המיקום של Footnote ו- Endnote

מיקום הערת שוליים יכול להיות בתחתית כל דף או מתחת לטקסט בכל דף. נקודת הסיום יכולה להיות בסוף הפרק או בסוף המסמך.

הדוגמה הבאה של הקוד מראה כיצד להגדיר את המיקום של הערת שוליים והערה:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_footnote_and_endnote-SetFootnoteAndEndNotePosition.py" >}}
