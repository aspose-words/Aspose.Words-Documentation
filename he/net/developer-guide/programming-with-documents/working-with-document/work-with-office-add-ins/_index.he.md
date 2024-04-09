---
title: עבודה עם Office Add-ins C#
second_title: Aspose.Words עבור .NET
articleTitle: עבודה עם Office Add-ins
linktitle: עבודה עם Office Add-ins
description: "Aspose.Words עבור .NET מספק שיעורים שונים לעבודה עם Office Add-ins באמצעות C#. אתה יכול להוסיף משימות Pane באמצעות הרחבה לאינטרנט ולהתאים אישית את המחבת ואת התכונות הרחבה."
type: docs
weight: 50
url: /he/net/work-with-office-add-ins/
---

לפעמים אתה יכול לתת גישה לבקרות ממשק המפעיל קוד כדי לשנות מסמכים. Aspose.Words API מספק `WebExtensions` שם מרחב, אשר נותן שיעורים שונים כדי להתאים אישית אלמנטים ותכונות להאריך את אוצר המילים XML לייצג את Office Add-ins.

WebExtensions Namespace ניתן לחלק באופן תנאי:

* • אובייקטים לעבודה עם מחבת המשימה
* • אובייקטים לעבודה עם הרחבות אינטרנט

## ביצוע משימות Panes

מחבתות המשימה הן משטחי ממשק המוצגים בצד הימני של החלון בחלון. Microsoft Word. לוח המשימות מאפשר למשתמשים לגשת לפקדי ממשק שיכולים להפעיל קוד כדי לשנות מסמכים.

לדוגמה, באמצעות Aspose.Words API, באפשרותך להוסיף ערכת משימה להוסיף-in ולהתאים אישית את המראה שלה.

## שימוש באינטרנט הרחבות

הרחבות אינטרנט הן כלים להרחבת היכולות של יישומי Office ואינטראקציה עם תוכן מסמך Office. הרחבות אינטרנט מספקות פונקציונליות נוספת ללקוחות Office לשיפור חוויית המשתמש.

Aspose.Words מספק את היכולת להוסיף הרחבות אינטרנט של סוג המשימה Pane באמצעות [WebExtension](https://reference.aspose.com/words/net/aspose.words.webextensions/webextension/) ו [TaskPane](https://reference.aspose.com/words/net/aspose.words.webextensions/taskpane/) שיעורים, וגם מאפשר לך להתאים אישית את pane ואת תכונות הרחבה.

הדוגמה הבאה של הקוד מראה כיצד ליצור פנמות משימה ולהוסיף מחבתות אינטרנט עם תכונות בסיסיות:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-WebExtensions-WorkingWithWebExtension-UsingWebExtensionTaskPanes.cs" >}}

כדי לראות רשימה של pane להוסיף-ins, השתמש [WebExtensionTaskPanes](https://reference.aspose.com/words/net/aspose.words/document/webextensiontaskpanes/) רכוש.

הדוגמה הבאה של הקוד מראה כיצד לקבל רשימה כזו של תוספות:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Working with WebExtension-GetListOfAddins.cs" >}}
