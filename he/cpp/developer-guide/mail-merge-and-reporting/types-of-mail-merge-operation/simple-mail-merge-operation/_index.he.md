---
title: פשוט Mail Merge פעולה ב C++
second_title: Aspose.Words עבור C++
articleTitle: פשוט Mail Merge פעולה
linktitle: פשוט Mail Merge פעולה
type: docs
description: "Mail Merge פשוט משמש למילוי השדות Mail Merge בתוך התבנית שלך בנתונים הנדרשים ממקור הנתונים שלך – הוא דומה לקלאסי Mail Merge ב Microsoft Word. הוסף שדה מיזוג אחד או יותר בתבנית שלך ולאחר מכן בצע את הפעולה הפשוטה Mail Merge."
keywords: "how to execute Mail Merge c++"
weight: 10
url: /he/cpp/simple-mail-merge-operation/
timestamp: 2024-09-24-14-35-44
---

Mail Merge פשוט משמש למילוי השדות Mail Merge בתוך התבנית שלך בנתונים הנדרשים ממקור הנתונים שלך (ייצוג טבלה אחת). אז זה דומה לקלאסיקה Mail Merge ב Microsoft Word.

אתה יכול להוסיף שדה מיזוג אחד או יותר בתבנית שלך ואז לבצע את הפעולה הפשוטה Mail Merge. מומלץ להשתמש בו אם התבנית שלך אינה מכילה אזורי מיזוג.

המגבלה העיקרית בשימוש בסוג זה היא שכל תוכן המסמך יחזור על עצמו עבור כל רשומה במקור הנתונים.

## כיצד לבצע פעולה פשוטה Mail Merge

לאחר שהתבנית שלך מוכנה, תוכל להתחיל לבצע את הפעולה הפשוטה Mail Merge. Aspose.Words מאפשר לך לבצע פעולה פשוטה Mail Merge בשיטות שונות [Execute](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/execute/) המקבלות אובייקטי נתונים שונים כמקור הנתונים.

דוגמת הקוד הבאה מראה כיצד לבצע פעולה פשוטה Mail Merge באמצעות אחת מהשיטות [Execute](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/execute/):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "simple-mail-merge.h" >}}

אתה יכול להבחין בהבדל בין המסמך לפני ביצוע פשוט mail merge:

<img src="execute-simple-mail-merge-1.png" alt="simple_mail_merge_template-aspose-words-cpp" style="width:300px"/>

ואחרי ביצוע פשוט mail merge:

<img src="execute-simple-mail-merge-2.png" alt="execute_simple_mail_merge-aspose-words-cpp" style="width:300px"/>

## כיצד ליצור מסמכים ממוזגים מרובים

ב Aspose.Words, הפעולה הסטנדרטית Mail Merge ממלאת רק מסמך אחד בתוכן ממקור הנתונים שלך. לכן, יהיה עליך לבצע את פעולת Mail Merge פעמים רבות כדי ליצור כמה מסמכים ממוזגים כפלט.

דוגמת הקוד הבאה מראה כיצד ליצור כמה מסמכים ממוזגים במהלך פעולה Mail Merge עם [SQLiteCpp](https://github.com/SRombauts/SQLiteCpp):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "multiple-documents-mail-merge.h" >}}
