---
title: ניווט עם Cursor Java
second_title: Aspose.Words עבור Java
articleTitle: ניווט עם Cursor
linktitle: ניווט עם Cursor
description: "לנווט בין נקודות שונות בתוך מסמך, כגון פסקה, סימן ספר, או דמות ספציפית באמצעות שימוש Java."
type: docs
weight: 5
url: /he/java/navigation-with-cursor/
---

בעת עבודה עם מסמך, גם אם הוא קצר או ארוך, תצטרך לנווט דרך המסמך שלך. ניווט עם קידוד וירטואלי מייצג את היכולת לנווט בין נקודות שונות במסמך.

בתוך מסמך קצר, נע סביב במסמך הוא פשוט כפי שאתה יכול להעביר את נקודת ההכנסה גם על ידי שימוש במפתחי החצים של המקלדת או על ידי לחיצה על העכבר כדי לאתר את נקודת ההכנסה בכל מקום שתרצה. אבל ברגע שיש לך מסמך גדול שיש לו דפים רבים, הטכניקות הבסיסיות האלה לא מספיקות.

מאמר זה מסביר כיצד לנוע סביב במסמך לנווט עם cursor וירטואלית לחלקים שונים ממנו.

## המונחים: Current Cursor Position

לפני תחילת התהליך של ניווט דרך המסמך שלך, תצטרך לקבל את הצומת שנבחר כרגע. אתה יכול לקבל את המיקום המדויק של cursor בצומת נבחר על ידי שימוש [CurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentNode) רכוש. בנוסף, במקום לקבל את הצומת הנוכחי, אתה יכול לקבל את הסעיף שנבחר כרגע או את החלק שנבחר על ידי שימוש בסעיף שנבחר כיום על ידי שימוש [CurrentParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentParagraph) ו [CurrentSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentSection) תכונות.

כל פעולות כניסה שאתה מבצע באמצעות [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) יוכנס לפני [CurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#CurrentNode). כאשר הסעיף הנוכחי ריק או הcursor ממוקם ממש לפני סוף הסעיף, הסעיף. **CurrentNode** מחזירים אפס

## שיטות ניווט במסמך

כאשר אתה עורך טקסט, חשוב לדעת כיצד לנווט את המסמך שלך והיכן בדיוק לעבור בו. Aspose.Words מאפשר לך לנוע סביב במסמך לנווט לחלקים השונים שלה וחלקים - זה דומה לפונקציונליות של הפנינה הניווט ב Microsoft Word ללכת לדף או לכותרת במסמך Word מבלי לגלול.

השיטה העיקרית היא להיות מסוגל להעביר את מיקום cursor לצומת מסוים במסמך שלך, אתה יכול להשיג את זה על ידי שימוש [MoveTo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveTo-com.aspose.words.Node) שיטה.

דוגמה לקוד הבא מראה כיצד להעביר את **DocumentBuilder** נקודות שונות במסמך:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToNode-DocumentBuilderMoveToNode.java" >}}

חוץ מהבסיס **MoveTo** שיטה, יש יותר ספציפי.

### ניווט להתחלה או לסוף מסמך

אתה יכול ללכת להתחלה או לסוף המסמך שלך באמצעות [MoveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart) ו [MoveToDocumentEnd](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentEnd) שיטות.

הדוגמה הבאה של הקוד מראה כיצד להעביר את מיקום הcursor להתחלה או לסוף המסמך:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToDocumentStartEnd-DocumentBuilderMoveToDocumentStartEnd.java" >}}

### ניווט עם סימניות

אתה יכול לסמן מקום שאתה רוצה למצוא אותו שוב בקלות. אתה יכול להוסיף כמה סימני ספר לתוך המסמך שלך כפי שאתה רוצה, ולאחר מכן לנווט דרכם על ידי זיהוי סימני הספר עם שמות ייחודיים. אתה יכול לעבור לסימן על ידי שימוש [MoveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String-boolean-boolean) שיטה.

דוגמאות הקוד הבאות מראות כיצד להעביר מיקום cursor לסימן ספר:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmark-DocumentBuilderMoveToBookmark.java" >}}

### ניווט לתאי שולחן

אתה יכול לעבור לתא שולחן באמצעות [MoveToCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToCell-int-int-int-int) שיטה. שיטה זו תאפשר לך לנווט את הcursor לתוך כל תא בטבלה מסוימת. בנוסף, באפשרותך לציין אינדקס כדי להעביר את הcursor לכל עמדה או אופי מוגדר בתא בתוך התא בתוך התא. **MoveToCell** שיטה.

הדוגמה הבאה של הקוד מראה כיצד להעביר מיקום cursor לתא שולחן מוגדר:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToTableCell-DocumentBuilderMoveToTableCell.java" >}}

### לנווט לשדה

אתה יכול לעבור לשדה מסוים במסמך שלך על ידי שימוש [MoveToField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToField-com.aspose.words.Field-boolean) שיטה. בנוסף, אתה יכול לעבור לשדה מיזוג מסוים על ידי שימוש [MoveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField-java.lang.String) שיטה.

הדוגמה הקודית הבאה מראה כיצד להעביר את בונה המסמך לשדה ספציפי:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToMergeField-DocumentBuilderMoveToMergeField.java" >}}

### עקבו אחרי Header or Footer

אתה יכול לעבור לתחילת ראש או רגל על ידי שימוש [MoveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int) שיטה

הדוגמה הבאה של הקוד מראה כיצד להעביר את בונה המסמך cursor אל מנהל מסמך או רגל:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderHeadersAndFooters-DocumentBuilderHeaderAndFooters.java" >}}

### ניווט לסעיף או לפסקה

אתה יכול לעבור לסעיף מסוים או לפסקה על ידי שימוש [MoveToParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToParagraph-int-int) או [MoveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int) שיטות. בנוסף, באפשרותך לציין אינדקס כדי להעביר את הcursor לכל עמדה או דמות מוגדרת בפסקה בתוך הסעיף בתוך הסעיף. **MoveToParagraph** שיטה.

הדוגמה הבאה של הקוד מראה כיצד לעבור לסעיף מסוים ופסקה מסוימת במסמך:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToSectionParagraph-DocumentBuilderMoveToSectionParagraph.java" >}}
