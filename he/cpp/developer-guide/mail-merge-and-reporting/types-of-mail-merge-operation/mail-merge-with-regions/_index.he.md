---
title: Mail Merge עם אזורים ב C++
second_title: Aspose.Words עבור C++
articleTitle: Mail Merge עם אזורים
linktitle: Mail Merge עם אזורים
type: docs
description: "צור אזורים שונים בתבנית שלך כך שיהיו אזורים מיוחדים שתוכל פשוט למלא בנתונים שלך. השתמש ב Mail Merge עם אזורים אם ברצונך להוסיף טבלאות, שורות עם נתונים חוזרים כדי לגרום למסמכים שלך לגדול באופן דינמי."
keywords: "how to execute Mail Merge c++"
weight: 20
url: /he/cpp/mail-merge-with-regions/
timestamp: 2024-09-24-14-35-44
---

אתה יכול ליצור אזורים שונים בתבנית שלך כדי שיהיו לך אזורים מיוחדים שאתה יכול פשוט למלא בנתונים שלך. השתמש ב Mail Merge עם אזורים אם ברצונך להוסיף טבלאות, שורות עם נתונים חוזרים כדי לגרום למסמכים שלך לצמוח באופן דינמי על ידי ציון אזורים אלה בתבנית שלך.

ניתן ליצור אזורים מקוננים (ילד) וכן למזג אזורים. היתרון העיקרי של שימוש בסוג זה הוא להגדיל באופן דינמי חלקים בתוך מסמך. ראה פרטים נוספים במאמר הבא"מקונן Mail Merge עם אזורים".

{{% alert color="primary" %}}

מידע על אזור Mail Merge ניתן להשיג באמצעות הכיתה [MailMergeRegionInfo](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmergeregioninfo/).

{{% /alert %}}

## כיצד לבצע Mail Merge עם אזורים

אזור Mail Merge הוא חלק ספציפי בתוך מסמך שיש לו נקודת התחלה ונקודת סיום. שתי הנקודות מיוצגות כשדות Mail Merge שיש להם שמות ספציפיים *"TableStart:XXX"* ו *"TableEnd:XXX"*. כל התוכן הכלול באזור Mail Merge יחזור על עצמו באופן אוטומטי עבור כל רשומה במקור הנתונים.

Aspose.Words מאפשר לך לבצע Mail Merge עם אזורים באמצעות אחת מהשיטות [ExecuteWithRegions](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/executewithregions/) המקבלות [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) מקור נתונים מותאם אישית.

דוגמת הקוד הבאה מראה כיצד לבצע Mail Merge עם אזורים ממסד הנתונים של סקליט עם [SQLiteCpp](https://github.com/SRombauts/SQLiteCpp):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "nested-mail-merge.h" >}}

אתה יכול להבחין בהבדל בין המסמך לפני ביצוע Mail Merge עם אזורים:

<img src="execute-mail-merge-with-regions-1.png" alt="mail_merge_with_regions_template" style="width:850px"/>

ואחרי ביצוע Mail Merge עם אזורים:

<img src="execute-mail-merge-with-regions-2.png" alt="mail_merge_with_regions_execute" style="width:850px"/>

## מגבלות של Mail Merge עם אזורים

יש כמה נקודות חשובות שעליך לקחת בחשבון בעת ביצוע Mail Merge עם אזורים:

* נקודת ההתחלה *TableStart:Orders* ונקודת הסיום *TableEnd:Orders* שניהם צריכים להיות באותה שורה או תא. לדוגמה, אם אתה מפעיל אזור מיזוג בתא בטבלה, עליך לסיים את אזור המיזוג באותה שורה כמו התא הראשון.
  שם שדה המיזוג חייב להתאים לשם העמודה שלך DataTable. אלא אם כן תציין שדות ממופים, Mail Merge עם אזורים לא יצליח עבור כל שדה מיזוג שיש לו שם אחר מאשר שם העמודה.
* Aspose.Words עבור C++ תומך רק [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) ו [IMailMergeDataSourceRoot](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasourceroot/) מקורות נתונים מבוססים. בניגוד ל .NET ו Java, C++ אין פלטפורמה מקובלת API לעבודה עם מסדי נתונים (כמו ADODB, ODBC או JDBC). כדי לעבוד עם מקור נתונים ספציפי, עליך ליישם ממשק [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) או [IMailMergeDataSourceRoot](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasourceroot/).

אם אחד הכללים האלה נשבר, תקבל תוצאות בלתי צפויות או חריג עשוי להיות נזרק.

{{% alert color="primary" %}}

אם אינך משתמש ב Mail Merge אזורים, הוא יהיה דומה ל Microsoft Word mail merge, וכל תוכן המסמך יחזור על עצמו עבור כל רשומה במקור הנתונים.

{{% /alert %}}

