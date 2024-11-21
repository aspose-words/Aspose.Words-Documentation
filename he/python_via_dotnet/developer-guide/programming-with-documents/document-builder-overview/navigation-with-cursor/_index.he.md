---
title: ניווט עם Cursor Python
second_title: Aspose.Words עבור Python via .NET
articleTitle: ניווט עם Cursor
linktitle: ניווט עם Cursor
description: "לנווט בין נקודות שונות בתוך מסמך כגון פסקה, סימן ספר, או דמות מסוימת באמצעות שימוש Python."
type: docs
weight: 10
url: /he/python-net/navigation-with-cursor/
timestamp: 2024-01-27-14-07-04
---

בעת עבודה עם מסמך, גם אם הוא קצר או ארוך, תצטרך לנווט דרך המסמך שלך. ניווט עם קידוד וירטואלי מייצג את היכולת לנווט בין נקודות שונות במסמך.

בתוך מסמך קצר, נע סביב במסמך הוא פשוט כפי שאתה יכול להעביר את נקודת ההכנסה גם על ידי שימוש במפתחי החצים של המקלדת או על ידי לחיצה על העכבר כדי לאתר את נקודת הפתיחה בכל מקום שתרצה. אבל ברגע שיש לך מסמך גדול שיש לו דפים רבים, הטכניקות הבסיסיות האלה לא מספיקות.

מאמר זה מסביר כיצד לנוע סביב במסמך לנווט עם cursor וירטואלי לחלקים שונים ממנו.

## המונחים: Current Cursor

לפני שתתחיל בתהליך של ניווט דרך המסמך שלך, תצטרך לקבל את הצומת שנבחר כרגע. אתה יכול לקבל את המיקום המדויק של cursor בצומת נבחר על ידי שימוש [current_node](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_node/) רכוש. בנוסף, במקום לקבל את הצומת הנוכחי, אתה יכול לקבל את הסעיף שנבחר כרגע או את החלק שנבחר על ידי שימוש בסעיף שנבחר כיום על ידי שימוש [current_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_paragraph/) ו [current_section](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_section/) תכונות.

כל פעולות כניסה שאתה מבצע באמצעות [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) יוכנס לפני [current_node](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_node/). כאשר הסעיף הנוכחי ריק או הcursor ממוקם ממש לפני סוף הסעיף, הסעיף. [current_node](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_node/) לא חוזר אף אחד.

## שיטות ניווט במסמך

כאשר אתה עורך טקסט, חשוב לדעת כיצד לנווט את המסמך שלך והיכן בדיוק לעבור בו. Aspose.Words מאפשר לך לנוע סביב במסמך לנווט לחלקים השונים שלה וחלקים - זה דומה לפונקציונליות של הפנינה הניווט ב Microsoft Word ללכת לדף או לכותרת במסמך Word מבלי לגלול.

השיטה העיקרית היא להיות מסוגל להעביר את מיקום cursor לצומת מסוים במסמך שלך, אתה יכול להשיג את זה על ידי שימוש [move_to](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to/) שיטה.

דוגמה לקוד הבא מראה כיצד להעביר את [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) נקודות שונות במסמך:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToNode.py" >}}

חוץ מהבסיס [move_to](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to/) שיטה, יש יותר ספציפיים.

### ניווט להתחלה או לסוף מסמך

אתה יכול ללכת להתחלה או לסוף המסמך שלך באמצעות [move_to_document_start](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_document_start/) ו [move_to_document_end](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_document_end/) שיטות.

הדוגמה הבאה של הקוד מראה כיצד להעביר את מיקום הcursor להתחלה או לסוף המסמך:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToDocumentStartEnd.py" >}}

### ניווט עם סימניות

אתה יכול לסמן מקום שאתה רוצה למצוא אותו שוב בקלות. אתה יכול להוסיף כמה סימניות רבות לתוך המסמך שלך כפי שאתה רוצה, ולאחר מכן לנווט דרכם באמצעות זיהוי סימני הספר עם שמות ייחודיים. אתה יכול לעבור לסימן על ידי שימוש [move_to_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_bookmark/) שיטה.

דוגמאות הקוד הבאות מראות כיצד להעביר מיקום cursor לסימן ספר:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToBookmark.py" >}}

### ניווט לתאי שולחן

אתה יכול לעבור לתא שולחן באמצעות [move_to_cell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_cell/) שיטה. שיטה זו תאפשר לך לנווט את הcursor לתוך כל תא בטבלה מסוימת. בנוסף, אתה יכול לציין אינדקס כדי להעביר את הcursor לכל עמדה או אופי שצוין בתא בתוך התא בתוך התא. [move_to_cell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_cell/) שיטה.

דוגמה הקוד הבא מראה כיצד להעביר מיקום cursor לתא שולחן מוגדר:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToTableCell.py" >}}

### לנווט לשדה

אתה יכול לעבור לשדה מסוים במסמך שלך על ידי שימוש [move_to_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_field/) שיטה. בנוסף, אתה יכול לעבור לשדה מיזוג מסוים על ידי שימוש [move_to_merge_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_merge_field/) שיטה.

הדוגמה הקודית הבאה מראה כיצד להעביר את בונה המסמך לשדה ספציפי:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToMergeField.py" >}}

### לנווט אל ראש או רגל

אתה יכול לעבור לתחילת ראש או רגל על ידי שימוש [move_to_header_footer](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_header_footer/) שיטה

הדוגמה הבאה של הקוד מראה כיצד להעביר את בונה המסמך cursor אל מנהל מסמך או רגל:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToHeadersFooters.py" >}}

### ניווט לסעיף או לפסקה

אתה יכול לעבור לסעיף מסוים או לפסקה על ידי שימוש [move_to_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_paragraph/) או [move_to_section](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_section/) שיטות. בנוסף, באפשרותך לציין אינדקס כדי להעביר את הcursor לכל עמדה או דמות מוגדרת בפסקה בתוך הסעיף בתוך הסעיף. [move_to_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_paragraph/) שיטה.

הדוגמה הבאה של הקוד מראה כיצד לעבור לסעיף מסוים ופסקה מסוימת במסמך:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToSection.py" >}}
