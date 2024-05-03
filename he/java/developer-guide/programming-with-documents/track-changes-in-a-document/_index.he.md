---
title: שינויים במסמך Java
second_title: Aspose.Words עבור Java
articleTitle: שינויים בתעודה
linktitle: שינויים בתעודה
description: "בצע שינויים בתוכן ובפורמט שנעשה על ידך או על ידי אחרים. גישה שינויים בודדים במסמך וליישם תכונות שונות אליהם באמצעות Java."
type: docs
weight: 270
url: /he/java/track-changes-in-a-document/
---

הפונקציונליות של שינוי המסלול, הידוע גם כסקירה, מאפשר לך לעקוב אחר שינויים בתוכן ובפורמט שנעשה על ידיך או משתמשים אחרים. מסלול זה משתנה עם Aspose.Words תמיכה בשינויים במסלול Microsoft Word. עם פונקציונליות זו, אתה יכול לגשת שינויים בודדים במסמך שלך וליישם תכונות שונות עבורם.

כאשר אתה מאפשר את המסלול שינויים תכונה, כל הרכיבים המוכנסים, נמחקים ומשתנים של המסמך יודגש באופן ויזואלי עם מידע על ידי מי, מתי, ומה השתנה. אובייקטים הנושאים מידע על מה ששונה נקראים "שינויים עוקבים". לדוגמה, נניח שאתה רוצה לסקור מסמך ולבצע שינויים חשובים - זה עשוי להיות אומר שאתה צריך לבצע תיקונים. כמו כן, ייתכן שתצטרך להוסיף הערות כדי לדון בכמה מהשינויים. שם מגיעים שינויים במסמכים.

מאמר זה מסביר כיצד לנהל ולעקוב אחר שינויים שנוצרו על ידי מבקרים רבים באותו מסמך, כמו גם את המאפיינים למעקב אחר שינויים.

{{% alert color="primary" %}}

שימו לב לתכונה ההערה ב Aspose.Words, וכן Microsoft Word, יכול להיות קשור לשינויים במעקב. עם זאת, זכור כי הערות הן עצמאיות לחלוטין של מעקב שינויים.

{{% /alert %}}

## מה זה Revision

לפני צלילה לתוך תיקונים, בואו להסביר את המשמעות של תיקונים. A A A [revision](https://reference.aspose.com/words/java/com.aspose.words/revision/) הוא שינוי המתרחש בצומת אחד של מסמך בעוד קבוצה של תיקונים, מיוצגת על ידי הקבוצה. [RevisionGroup](https://reference.aspose.com/words/java/com.aspose.words/revisiongroup/) שיעור, הוא קבוצה של שינויים זמניים שמתרחשים בצומתים רבים של מסמך. Revision היא כלי למעקב אחר שינויים.

הוראות משמשות בתכונת השינויים של המעקב ובתכונה השוואת המסמכים, שם מופיעים תיקונים כתוצאה מההשוואה. לכן, תיקונים בתוך השינויים של מעקב מופיעים על ידי מי ומה השתנה.

{{% alert color="primary" %}}

שימו לב Microsoft Word לא מאפשר לך להציג שינויים בודדים, זה רק מאפשר לך להציג שינויים זמניים כישות אחת. אבל Aspose.Words פותר את ההגבלה הזו עם **RevisionGroup** מעמד.

{{% /alert %}}

Aspose.Words תומך סוגים שונים של תיקונים, כמו גם Microsoft Word, כגון הכנס, Deletion, פורמט שינוי, סגנון שינוי, והזיז. כל סוגי התיקון מיוצגים עם [RevisionType](https://reference.aspose.com/words/java/com.aspose.words/revisiontype/) אזהרה.

{{% alert color="primary" %}}

הערה כי תיקונים יש תוצאה דומה Microsoft Word אבל Aspose.Words אינו מזהה פורמט במהלך שינויים במעקב.

{{% /alert %}}

## להתחיל ולעצור שינויים

ביצוע מסמך בדרך כלל אינו נחשב כתיקון עד שתתחיל לעקוב אחריו. Aspose.Words מאפשר לך לעקוב באופן אוטומטי את כל השינויים במסמך שלך עם צעדים פשוטים. אתה יכול בקלות להתחיל את תהליך מעקב שינויים על ידי שימוש [StartTrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#startTrackRevisions-java.lang.String) שיטה. אם אתה צריך לעצור את תהליך מעקב שינויים כך שכל עורכים עתידיים אינם נחשבים לשיפוץ, תצטרך להשתמש [StopTrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#stopTrackRevisions) שיטה.

{{% alert color="primary" %}}

שימו לב `StartTrackingRevisions` השיטה אינה משנה את מעמדו של [TrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#getTrackRevisions) רכוש ואינו משתמש בערך שלו לצורך מעקב מחדש. בנוסף, אם צומת הועבר ממקום אחד לאחר בתוך המסמך המעוקב, ולאחר מכן ייווצרו תיקונים נעים, כולל מעבר-מטווח וטווח-to.

{{% /alert %}}

בסוף תהליך מעקב שינויים במסמך שלך, תהיה לך את היכולת אפילו לקבל את כל השינויים או לדחות אותם כדי להחזיר את המסמך לצורתו המקורית. זה יכול להיעשות על ידי שימוש [AcceptAllRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#acceptAllRevisions) או [RejectAll](https://reference.aspose.com/words/java/com.aspose.words/revisioncollection/#rejectAll) שיטה. בנוסף, אתה יכול לקבל או לדחות כל תיקון בנפרד על ידי שימוש [Accept](https://reference.aspose.com/words/java/com.aspose.words/revision/#accept) או [Reject](https://reference.aspose.com/words/java/com.aspose.words/revision/#reject) שיטה.

כל השינויים יש לעקוב אחר הרצה אחת מהרגע שאתה מתחיל את התהליך לרגע שבו אתה מפסיק אותו. הקשר בין הרצאות שונות מיוצג כתסריט הבא: השלמת תהליך המעקב, ולאחר מכן לעשות שינויים מסוימים, ולהתחיל לעקוב אחר שינויים שוב. עם התרחיש הזה, כל השינויים שלא קיבלת או לדחות יוצגו שוב.

{{% alert color="primary" %}}

שימו לב `AcceptAllRevisions` השיטה דומה ל"השגת כל השינויים" Microsoft Word.

{{% /alert %}}

דוגמה לקוד הבא מראה כיצד לעבוד עם שינויים:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-WorkWithTrackChanges.java" >}}

הדוגמה הבאה של הקוד מראה כיצד שינויים נוצרים כאשר צומת מועבר בתוך מסמך עוקב:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-GenerateRevisionsWhenMovingNode.java" >}}

## ניהול וחנות שינויים כ-Revisions

עם התכונה הקודמת של שינויים מעקב, אתה יכול להבין אילו שינויים נעשו במסמך שלך ומי עשה שינויים אלה. בזמן עם [TrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#getTrackRevisions) תכונה, אתה מכריח שינויים במסמך שלך להיות מאוחסן כמו תיקונים.

Aspose.Words מאפשר לך לבדוק אם מסמך יש תיקון או לא על ידי שימוש [HasRevision](https://reference.aspose.com/words/java/com.aspose.words/document/#hasRevisions) רכוש. אם אתה לא צריך לעקוב באופן אוטומטי את השינויים במסמך שלך באמצעות שיטות StartTrackRevisions ו- StopTrackRevisions, אז אתה יכול להשתמש `TrackRevisions` נכס לבדוק אם השינויים מתבצעים בזמן ביצוע מסמך Microsoft Word ואוחסן כמו תיקונים.

The The The `TrackRevisions` תכונה עושה תיקונים במקום אמיתי DOM שינויים. אבל השינויים עצמם הם נפרדים. לדוגמה, אם תמחקו פסקה, Aspose.Words לעשות את זה כתיקון, לסמן אותו כמחיקה, במקום למחוק אותו.

בנוסף, Aspose.Words מאפשר לך לבדוק אם אובייקט מוכנס, נמחק או השתנה פורמט באמצעות תבנית. [IsDeleteRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isDeleteRevision), [IsFormatRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isFormatRevision), [IsInsertRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isInsertRevision), [IsMoveFromRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isMoveFromRevision), ו [IsMoveToRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isMoveToRevision) תכונות.

{{% alert color="primary" %}}

שים לב שאין קשר בין השינויים עצמם לבין עצמם `TrackRevisions` רכוש. בנוסף, אתה יכול לקבל/reject שינויים ללא קשר לתכונת השינויים.

{{% /alert %}}

הדוגמה הבאה של הקוד מראה כיצד ליישם תכונות שונות עם תיקונים:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-ApplyDifferentPropertiesWithRevisions.java" >}}
