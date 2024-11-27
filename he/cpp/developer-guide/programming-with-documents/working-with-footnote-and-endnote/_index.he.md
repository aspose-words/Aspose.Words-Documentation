---
title: עבודה עם הערת שוליים והערת סיום ב C++
second_title: Aspose.Words עבור C++
articleTitle: עבודה עם הערת שוליים והערת סיום
linktitle: עבודה עם הערת שוליים והערת סיום
description: "כיצד לתפעל הערות שוליים והערות סיום באמצעות C++."
type: docs
weight: 160
url: /he/cpp/working-with-footnote-and-endnote/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words מספק גם כמה שיעורים, שיטות ומאפיינים לעבודה עם הערות שוליים והערות סיום.

## הכנס הערת סיום והגדר אפשרויות מספור

אם ברצונך להוסיף הערת שוליים או הערת סיום במסמך Word, השתמש בשיטת [InsertFootnote](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfootnote/). שיטה זו מכניסה הערת שוליים או הערת סיום למסמך.

[EndnoteOptions](https://reference.aspose.com/words/cpp/aspose.words.notes/endnoteoptions/) ו [FootnoteOptions](https://reference.aspose.com/words/cpp/aspose.words.notes/footnoteoptions/) כיתות מייצגות אפשרויות מספור להערת שוליים והערת סיום.

דוגמת הקוד הבאה מראה כיצד להוסיף הערת סיום למסמך ולהגדיר את אפשרויות המספור שלו:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithFootnote-SetEndnoteOptions.cpp" >}}

## הגדר מספר עמודות פריסת הערת שוליים

ניתן להגדיר את מספר העמודות של פריסת הערת שוליים באמצעות המאפיין [Columns](https://reference.aspose.com/words/cpp/aspose.words.notes/footnoteoptions/get_columns/). אם למאפיין זה יש ערך של 0, אזור הערות השוליים מעוצב עם מספר עמודות בהתבסס על מספר העמודות בדף המוצג.

דוגמת הקוד הבאה מראה כיצד להגדיר את מספר העמודות עבור פריסת הערת שוליים:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithFootnote-SetFootNoteColumns.cpp" >}}

## הגדר את המיקום של הערת שוליים ו EndNote

מיקום הערת השוליים יכול להיות בתחתית כל עמוד או מתחת לטקסט בכל עמוד. מיקום הערת הסיום יכול להיות בסוף הקטע או בסוף המסמך.

דוגמת הקוד הבאה מראה כיצד להגדיר את המיקום של הערת שוליים והערת סיום:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithFootnote-SetFootnoteAndEndNotePosition.cpp" >}}
