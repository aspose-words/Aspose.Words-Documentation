---
title: שינויים בתעודה
second_title: Aspose.Words עבור Python via .NET
articleTitle: שינויים בתעודה
linktitle: שינויים בתעודה
description: "מעקב שינויים בתוכן ובפורמט שנעשה על ידך או על ידי אחרים באמצעות Python. גישה שינויים בודדים במסמך וליישם תכונות שונות עבורם."
type: docs
weight: 270
url: /he/python-net/track-changes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

הפונקציונליות של שינוי המסלול, הידוע גם כסקירה, מאפשר לך לעקוב אחר שינויים בתוכן ובפורמט שנעשה על ידיך או משתמשים אחרים. מסלול זה משתנה עם Aspose.Words תמיכה בשינויים במסלול Microsoft Word. עם פונקציונליות זו, אתה יכול לגשת שינויים בודדים במסמך שלך וליישם תכונות שונות עבורם.

כאשר אתה מאפשר את המסלול שינויים תכונה, כל הרכיבים המוכנסים, נמחקים ומשתנים של המסמך יודגש באופן ויזואלי עם מידע על ידי מי, מתי, ומה השתנה. אובייקטים הנושאים את המידע על מה שמשתנה נקראים "שינויים עוקבים". לדוגמה, נניח שאתה רוצה לסקור מסמך ולבצע שינויים חשובים - זה עשוי להיות אומר שאתה צריך לבצע תיקונים. כמו כן, ייתכן שתצטרך להוסיף הערות כדי לדון בכמה מהשינויים. שם מגיעים שינויים במסמכים.

מאמר זה מסביר כיצד לנהל ולעקוב אחר שינויים שנוצרו על ידי מבקרים רבים באותו מסמך, כמו גם את המאפיינים למעקב אחר שינויים.

{{% alert color="primary" %}}

שימו לב לתכונה ההערה ב Aspose.Words, וכן Microsoft Word, יכול להיות קשור לשינויים במעקב. עם זאת, זכור כי הערות הן עצמאיות לחלוטין של מעקב שינויים.

{{% /alert %}}

## מה זה Revision

לפני צלילה לתוך תיקונים, בואו להסביר את המשמעות של תיקונים. A A A A [Revision](https://reference.aspose.com/words/python-net/aspose.words/revision/) הוא שינוי המתרחש בצומת אחד של מסמך בעוד קבוצה של תיקונים, מיוצגת על ידי הקבוצה. [RevisionGroup](https://reference.aspose.com/words/python-net/aspose.words/revisiongroup/) שיעור, הוא קבוצה של שינויים זמניים המתרחשים בצומתים רבים של מסמך. בעיקרון, תיקון הוא כלי למעקב אחר שינויים.

ה-Revisions משמשים בתכונת השינויים של המעקב ובתכונה השוואת המסמכים, שם מופיעים תיקונים כתוצאה מהשוואה. לכן, תיקונים בתוך השינויים המשתנים מופיעים על ידי מי ומה השתנה.

{{% alert color="primary" %}}

שימו לב Microsoft Word לא מאפשר לך להציג שינויים בודדים, זה רק מאפשר לך להציג שינויים זמניים כישות אחת. אבל Aspose.Words פותר את ההגבלה הזו עם [RevisionGroup](https://reference.aspose.com/words/python-net/aspose.words/revisiongroup/) מעמד.

{{% /alert %}}

Aspose.Words תומך סוגים שונים של תיקונים, כמו גם Microsoft Word, המונחים: pution, Deletion שינוי, סגנון שינוי, והזיז. כל סוגי התיקון מיוצגים עם [RevisionType](https://reference.aspose.com/words/python-net/aspose.words/revisiontype/) אזהרה.

{{% alert color="primary" %}}

הערה כי תיקונים יש תוצאה דומה Microsoft Word אבל Aspose.Words אינו מזהה פורמט במהלך שינויים במעקב.

{{% /alert %}}

## להתחיל ולעצור שינויים

ביצוע מסמך בדרך כלל אינו נחשב כתיקון עד שתתחיל לעקוב אחריו. Aspose.Words מאפשר לך לעקוב באופן אוטומטי את כל השינויים במסמך שלך עם צעדים פשוטים. אתה יכול בקלות להתחיל את תהליך מעקב שינויים על ידי שימוש [start_track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/start_track_revisions/) שיטה. אם אתה צריך לעצור את תהליך מעקב שינויים כך שכל עורכים עתידיים אינם נחשבים לשיפוץ, תצטרך להשתמש [stop_track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/stop_track_revisions/) שיטה.

{{% alert color="primary" %}}

תגית: The [start_track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/start_track_revisions/) השיטה אינה משנה את מעמדו של [track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/track_revisions/) רכוש ואינו משתמש בערך שלו לצורך מעקב מחדש. בנוסף, אם צומת הועבר ממקום אחד לאחר בתוך המסמך המעוקב, ולאחר מכן ייווצרו תיקונים נעים, כולל מעבר - מטווח וטווח.

{{% /alert %}}

בסוף תהליך המעקב שינויים במסמך שלך, תהיה לך את היכולת אפילו לקבל את כל השינויים או לדחות אותם כדי להחזיר את המסמך לצורתו המקורית. זה יכול להיעשות על ידי שימוש [accept_all_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/accept_all_revisions/) או [reject_all](https://reference.aspose.com/words/python-net/aspose.words/revisioncollection/reject_all/) שיטה. בנוסף, אתה יכול לקבל או לדחות כל תיקון בנפרד על ידי שימוש [accept](https://reference.aspose.com/words/python-net/aspose.words/revision/accept/) או [reject](https://reference.aspose.com/words/python-net/aspose.words/revision/reject/) שיטה.

כל השינויים יש לעקוב אחר הרצה אחת מהרגע שאתה מתחיל את התהליך לרגע שבו אתה מפסיק אותו. הקשר בין הרצאות שונות מיוצג כתסריט הבא: השלמת תהליך המעקב, ולאחר מכן לעשות שינויים מסוימים, ולהתחיל לעקוב אחר שינויים שוב. עם התרחיש הזה, כל השינויים שלא קיבלת או לדחות יוצגו שוב.

{{% alert color="primary" %}}

תגית: The [accept_all_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/accept_all_revisions/) השיטה דומה ל"השגת כל השינויים" Microsoft Word.

{{% /alert %}}

דוגמה לקוד הבא מראה כיצד לעבוד עם שינויים:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_revisions-AcceptAllRevisions.py" >}}

הדוגמה הבאה של הקוד מראה כיצד שינויים נוצרים כאשר צומת מועבר בתוך מסמך עוקב:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_revisions-MoveNodeInTrackedDocument.py" >}}

## ניהול וחנות שינויים כ-Revisions

עם התכונה הקודמת של שינויים מעקב, אתה יכול להבין אילו שינויים נעשו במסמך שלך ומי עשה שינויים אלה. בזמן עם [track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/track_revisions/) תכונה, אתה מכריח שינויים במסמך שלך להיות מאוחסן כמו תיקונים.

Aspose.Words מאפשר לך לבדוק אם מסמך יש תיקון או לא על ידי שימוש [has_revision](https://reference.aspose.com/words/python-net/aspose.words/document/has_revisions/) רכוש. אם אתה לא צריך לעקוב באופן אוטומטי את השינויים במסמך שלך דרך התחל_ track_revisions ו להפסיק_ track_revisions שיטות, אז אתה יכול להשתמש [track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/track_revisions/) נכס לבדוק אם השינויים מתבצעים בעת ביצוע מסמך Microsoft Word ואוחסן כמו תיקונים.

The The The [track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/track_revisions/) תכונה עושה תיקונים במקום אמיתי DOM שינויים. אבל השינויים עצמם הם נפרדים. לדוגמה, אם תמחק סעיף כלשהו, Aspose.Words לעשות את זה כתיקון, לסמן אותו כמחיקה, במקום למחוק אותו.

בנוסף, Aspose.Words מאפשר לך לבדוק אם אובייקט מוכנס, נמחק או שינוי פורמט באמצעות תבנית. [is_delete_revision](https://reference.aspose.com/words/python-net/aspose.words/inline/is_delete_revision/), [is_format_revision](https://reference.aspose.com/words/python-net/aspose.words/inline/is_format_revision/), [is_insert_revision](https://reference.aspose.com/words/python-net/aspose.words/inline/is_insert_revision/), [is_move_from_revision](https://reference.aspose.com/words/python-net/aspose.words/inline/is_move_from_revision/), ו [is_move_to_revision](https://reference.aspose.com/words/python-net/aspose.words/inline/is_move_to_revision/) תכונות.

{{% alert color="primary" %}}

שימו לב שאין קשר בין השינויים עצמם לבין עצמם [track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/track_revisions/) רכוש. בנוסף, אתה יכול לקבל/reject שינויים ללא קשר לתכונת השינויים.

{{% /alert %}}

הדוגמה הבאה של הקוד מראה כיצד ליישם תכונות שונות עם תיקונים:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_revisions-ShapeRevision.py" >}}
