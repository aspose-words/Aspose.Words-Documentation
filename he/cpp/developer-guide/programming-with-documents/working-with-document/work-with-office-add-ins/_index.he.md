---
title: עבודה עם תוספות משרדיות ב C++
second_title: Aspose.Words עבור C++
articleTitle: עבודה עם תוספות משרדיות
linktitle: עבודה עם תוספות משרדיות
description: "Aspose.Words עבור C++ מספק שיעורים שונים לעבודה עם תוספות משרדיות. ניתן להוסיף חלונית משימות באמצעות סיומת אינטרנט ולהתאים אישית את מאפייני החלונית והתוסף."
type: docs
weight: 50
url: /he/cpp/work-with-office-add-ins/
timestamp: 2024-01-27-14-07-04
---

לפעמים ייתכן שתרצה לתת גישה לבקרות ממשק המפעילות קוד לשינוי מסמכים. Aspose.Words API מספק את מרחב השמות `WebExtensions`, המעניק כיתות שונות להתאמה אישית של אלמנטים ותכונות המרחיבות את אוצר המילים XML לייצוג תוספות משרדיות.

WebExtensions ניתן לחלק את מרחב השמות באופן מותנה ל:

* אובייקטים לעבודה עם חלונית המשימות
* אובייקטים לעבודה עם הרחבות אינטרנט

## שימוש בחלוניות משימות

חלוניות המשימות הן משטחי ממשק המוצגים בצד ימין של החלון ב Microsoft Word. חלונית המשימות מאפשרת למשתמשים לגשת לפקדי ממשק שיכולים להריץ קוד לשינוי מסמכים.

לדוגמה, באמצעות Aspose.Words API, אתה יכול להוסיף חלונית משימות הרחבה ולהתאים אישית את המראה שלה.

## שימוש בתוספי אינטרנט

הרחבות אינטרנט הן כלים המרחיבים את היכולות של יישומים משרדיים ומתקשרים עם תוכן מסמכים משרדיים. הרחבות אינטרנט מספקות פונקציונליות נוספת ללקוחות המשרד לשיפור חוויית המשתמש.

Aspose.Words מספק את היכולת להוסיף הרחבות אינטרנט מסוג חלונית המשימות באמצעות הכיתות [WebExtension](https://reference.aspose.com/words/cpp/aspose.words.webextensions/webextension/) ו [TaskPane](https://reference.aspose.com/words/cpp/aspose.words.webextensions/taskpane/), וגם מאפשר לך להתאים אישית את מאפייני החלונית והתוסף.

דוגמת הקוד הבאה מראה כיצד ליצור חלוניות משימות ולהוסיף לחלוניות משימות להרחבת אינטרנט עם מאפיינים בסיסיים:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithWebExtension-UsingWebExtensionTaskPanes.cpp" >}}

כדי לראות רשימה של תוספות לחלונית המשימות, השתמש במאפיין [WebExtensionTaskPanes](https://reference.aspose.com/words/cpp/aspose.words/document/get_webextensiontaskpanes/).

דוגמת הקוד הבאה מראה כיצד להשיג רשימה כזו של תוספות:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithWebExtension-GetListOfAddins.cpp" >}}
