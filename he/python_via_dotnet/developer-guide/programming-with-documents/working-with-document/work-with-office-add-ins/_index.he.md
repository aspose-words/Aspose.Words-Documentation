---
title: עבודה עם Office Add-ins Python
second_title: Aspose.Words עבור Python via .NET
articleTitle: עבודה עם Office Add-ins
linktitle: עבודה עם Office Add-ins
description: "Aspose.Words עבור Python via .NET מספק שיעורים שונים לעבודה עם Office Add-ins. אתה יכול להוסיף משימות Pane באמצעות הרחבה לאינטרנט ולהתאים אישית את המחבת ואת התכונות הרחבה."
type: docs
weight: 50
url: /he/python-net/work-with-office-add-ins/
timestamp: 2024-01-27-14-07-04
---

לפעמים אתה יכול לתת גישה לבקרות ממשק המפעיל קוד כדי לשנות מסמכים. Aspose.Words API מספק [webextensions](https://reference.aspose.com/words/python-net/aspose.words.webextensions/) מודול, אשר נותן שיעורים שונים כדי להתאים אישית אלמנטים ותכונות להאריך את אוצר המילים XML לייצג את Office Add-ins.

WebExtensions Namespace ניתן לחלק באופן תנאי:

* • אובייקטים לעבודה עם מחבת המשימה
* • אובייקטים לעבודה עם הרחבות אינטרנט

## ביצוע משימות Panes

מחבתות המשימה הן משטחי ממשק המוצגים בצד הימני של החלון בחלון. Microsoft Word. לוח המשימות מאפשר למשתמשים לגשת לפקדי ממשק שיכולים להפעיל קוד כדי לשנות מסמכים.

לדוגמה, באמצעות Aspose.Words API, באפשרותך להוסיף ערכת משימה להוסיף-in ולהתאים אישית את המראה שלה.

## שימוש באינטרנט הרחבות

הרחבות אינטרנט הן כלים להרחבת היכולות של יישומי Office ואינטראקציה עם תוכן מסמך Office. הרחבות אינטרנט מספקות פונקציונליות נוספת ללקוחות Office לשיפור חוויית המשתמש.

Aspose.Words מספק את היכולת להוסיף הרחבות אינטרנט של סוג המשימה Pane באמצעות [WebExtension](https://reference.aspose.com/words/python-net/aspose.words.webextensions/webextension/) ו [TaskPane](https://reference.aspose.com/words/python-net/aspose.words.webextensions/taskpane/) שיעורים, וגם מאפשר לך להתאים אישית את pane ואת תכונות הרחבה.

הדוגמה הבאה של הקוד מראה כיצד ליצור פנמות משימה ולהוסיף מחבתות אינטרנט עם תכונות בסיסיות:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_web_extension-UsingWebExtensionTaskPanes.py" >}}

כדי לראות רשימה של pane להוסיף-ins, השתמש [web_extension_task_panes](https://reference.aspose.com/words/python-net/aspose.words/document/web_extension_task_panes/) רכוש.

הדוגמה הבאה של הקוד מראה כיצד לקבל רשימה כזו של תוספות:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_web_extension-GetListOfAddins.py" >}}
