---
title: ניווט עם סמן ב C++
second_title: Aspose.Words עבור C++
articleTitle: ניווט עם הסמן
linktitle: ניווט עם הסמן
description: "נווט בין צמתים שונים בתוך מסמך, כגון פסקה, סימניה או תו ספציפי באמצעות C++."
type: docs
weight: 10
url: /he/cpp/navigation-with-cursor/
timestamp: 2024-01-27-14-07-04
---

תוך כדי עבודה עם מסמך, גם אם הוא קצר או ארוך, יהיה עליך לנווט במסמך שלך. ניווט עם סמן וירטואלי מייצג את היכולת לנווט בין צמתים שונים במסמך.

בתוך מסמך קצר, התנועה במסמך היא פשוטה מכיוון שאתה יכול להזיז את נקודת ההכנסה גם באמצעות מקשי החצים של המקלדת או על ידי לחיצה על העכבר כדי לאתר את נקודת ההכנסה בכל מקום שתרצה. אבל ברגע שיש לך מסמך גדול שיש בו דפים רבים, הטכניקות הבסיסיות הללו לא יספיקו.

מאמר זה מסביר כיצד לנוע במסמך ולנווט עם סמן וירטואלי לחלקים שונים שלו.

## זיהוי הנוכחי סמן עמדה

לפני שתתחיל בתהליך הניווט במסמך שלך, יהיה עליך לקבל את הצומת שנבחר כעת. אתה יכול לקבל את המיקום המדויק של הסמן בצומת שנבחר באמצעות המאפיין [CurrentNode](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_currentnode/). בנוסף, במקום לקבל את הצומת הנוכחי, אתה יכול לקבל את הפסקה שנבחרה כעת או את הקטע שנבחר כעת באמצעות המאפיינים [CurrentParagraph](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_currentparagraph/) ו [CurrentSection](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_currentsection/).

כל פעולות הוספה שתבצע באמצעות [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) יוכנסו לפני [CurrentNode](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_currentnode/). כאשר הפסקה הנוכחית ריקה או שהסמן ממוקם ממש לפני סוף הפסקה, **CurrentNode** מחזיר אפס.

## שיטות ניווט במסמך

כאשר אתה עורך טקסט, חשוב לדעת כיצד לנווט במסמך שלך ולאן בדיוק לנוע בו. Aspose.Words מאפשר לך לנוע במסמך ולנווט לחלקים ולחלקים השונים שלו-זה דומה לפונקציונליות של חלונית הניווט ב Microsoft Word כדי לעבור לדף או כותרת במסמך Word מבלי לגלול.

השיטה העיקרית היא להיות מסוגל להעביר את מיקום הסמן לצומת ספציפי במסמך שלך, אתה יכול להשיג זאת באמצעות שיטת [MoveTo](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/moveto/).

דוגמת הקוד הבאה מראה כיצד להעביר את **DocumentBuilder** לצמתים שונים במסמך:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToNode.cpp" >}}

אבל מלבד השיטה הבסיסית **MoveTo**, יש יותר ספציפיים.

### נווט אל התחלה או סוף של מסמך

אתה יכול ללכת להתחלה או לסוף המסמך שלך באמצעות שיטות [MoveToDocumentStart](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetodocumentstart/) ו [MoveToDocumentEnd](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetodocumentend/).

דוגמת הקוד הבאה מראה כיצד להעביר את מיקום הסמן לתחילת או לסוף של מסמך:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToDocumentStartEnd.cpp" >}}

### נווט עם סימניות

אתה יכול לסמן מקום שאתה רוצה למצוא ולעבור אליו שוב בקלות. אתה יכול להכניס כמה סימניות למסמך שלך ואז לנווט בהן על ידי זיהוי הסימניות עם שמות ייחודיים. ניתן לעבור לסימנייה באמצעות שיטת [MoveToBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetobookmark/).

דוגמאות הקוד הבאות מראות כיצד להעביר מיקום סמן לסימניה:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmark.cpp" >}}

### נווט אל תאי טבלה

ניתן לעבור לתא טבלה באמצעות שיטת [MoveToCell](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetocell/). שיטה זו תאפשר לך לנווט את הסמן לכל תא בטבלה ספציפית. בנוסף, ניתן לציין אינדקס כדי להזיז את הסמן לכל מיקום או תו שצוין בתא בתוך השיטה **MoveToCell**.

דוגמת הקוד הבאה מראה כיצד להעביר מיקום סמן לתא טבלה שצוין:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToTableCell.cpp" >}}

### נווט אל שדה

ניתן לעבור לשדה מסוים במסמך באמצעות השיטה [MoveToField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetofield/). בנוסף, ניתן לעבור לשדה מיזוג ספציפי באמצעות שיטת [MoveToMergeField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetomergefield/).

דוגמת הקוד הבאה מראה כיצד להעביר את סמן בונה המסמכים לשדה ספציפי:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToMergeField.cpp" >}}

### נווט אל כותרת עליונה או תחתונה

ניתן לעבור לתחילת כותרת עליונה או תחתונה באמצעות שיטת [MoveToHeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetoheaderfooter/).

דוגמת הקוד הבאה מראה כיצד להעביר את סמן בונה המסמכים לכותרת עליונה או תחתונה של מסמך:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderHeadersAndFooters.cpp" >}}

### נווט אל קטע או פסקה

ניתן לעבור לקטע או פסקה ספציפיים באמצעות השיטות [MoveToParagraph](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetoparagraph/) או [MoveToSection](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetosection/). בנוסף, ניתן לציין אינדקס כדי להזיז את הסמן לכל מיקום או תו שצוין בפסקה בשיטה **MoveToParagraph**.

דוגמת הקוד הבאה מראה כיצד לעבור לקטע ספציפי ולפסקה ספציפית במסמך:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToSectionParagraph.cpp" >}}
