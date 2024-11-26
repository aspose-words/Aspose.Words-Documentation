---
title: Mail Merge תבנית מ Mustache תחביר ב C#
second_title: Aspose.Words עבור .NET
articleTitle: Mail Merge תבנית מ Mustache תחביר
linktitle: Mail Merge תבנית מ Mustache תחביר
type: docs
description: "צור תבניות עם תחביר Mustache באמצעות C#. Mustache תחביר הוא האפשרות היחידה לשימוש עם תבניות שאינן מכילות שדות (HTML או TXT). עם Word תבניות, יש לך שתי אפשרויות: שדות או Mustache תחביר."
keywords: "mail merge template mustache syntax c#"
weight: 40
url: /he/net/mail-merge-template-from-mustache-syntax/
timestamp: 2024-07-11-08-07-06
---

Aspose.Words מאפשר לך ליצור תבניות עם mustache תחביר בנוסף לתבניות המוכרות. Mustache הוא גרסה חלופית של סינטקסי תבנית המורכבת משמות תגיות המוקפים על ידי אובייקט מודל המכיל את הנתונים עבור התבנית.

התחביר Mustache הוא האפשרות היחידה לשימוש עם תבניות שאינן מכילות שדות, כגון HTML ו TXT תבניות. עם Word תבניות, יש לך שתי אפשרויות להשתמש בשדות או Mustache תחביר.

הסינטקסה Mustache תומכת בתג *foreach*, שהיא חלופה לשימוש Mail Merge עם אזורים. אז היתרון הוא שאתה יכול להשתמש mustache תחביר אם מסיבה כלשהי אתה לא מסוגל או פשוט אתה לא רוצה להשתמש מיזוג שדות ומיזוג אזורים.

ניתן גם לשלב שדות Mail Merge עם כמה שדות נוספים באמצעות התג *foreach* כפי שמוצג בתמונה למטה.

<img src="mustache-syntax.png" alt="mustache_syntax" style="width:800px"/>

## צור תבנית Mustache

הנקודה החשובה הראשונה שיש להבהיר היא ש Mustache אינו מנוע תבניות. Mustache הוא גרסה סינטקסית נוספת הזמינה עבור כל תבנית ב [load format](https://reference.aspose.com/words/net/aspose.words/loadformat/) נתמכת על ידי Aspose.Words. לכן, אתה יכול ליצור תבנית כזו הן באופן תכנותי והן באמצעות ממשק, אתה רק צריך לכלול תחביר מסוים ולעמוד במפרט Mustache.

נניח שעליך לשלוח את אותו אימייל ל -50 נמענים כדי להתאים אישית את הברכה עם שמותיהם הפרטיים המתאימים. תוכל להחליף את שמו הפרטי של הנמען במציין מיקום כלשהו כדלקמן:

> Dear {{FirstName}}
>
> I hereby...

השאלה כאן: איך אתה יכול ליצור 50 מיילים מ 1 יחיד Mustache תבנית? כדי לענות על כך, עליך לבצע Mail Merge עם אזורים כדי למלא את הפלטה המתולתלת עבור מצייני מיקום בתבנית בנתונים בפועל וליצור מסמך פלט.

<img src="mustache-template.png" alt="mustache_template" style="width:650px"/>

{{% alert color="primary" %}}

כפי שאתה שם לב מהדוגמה לעיל, ב Mustache אתה צריך להשתמש בסוגריים מתולתלים עבור מצייני מיקום שנראים כמו mustache כשאתה מסובב את הפלטה המתולתלת 90 מעלות בכיוון השעון.

{{% /alert %}}

## עבודה עם תחביר Mustache

Mustache מיוצג כסדר ללא לוגיקה מכיוון שהוא חסר כל הצהרות זרימת בקרה ספציפיות כגון *for* לולאות ו *if* ו *else* תנאים. אבל אתה יכול להשתמש בסעיף תגיות עיבוד רשימות ולמבדות כדי להשיג הערכה ולולאה מותנית. אז כדי לכלול את תחביר Mustache בתוך פעולת Mail Merge, יהיה עליך להשתמש במאפיין [UseNonMergeFields](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/usenonmergefields/) ולהגדיר את ערכו ל *True*.

דוגמת הקוד הבאה מראה כיצד להחליף את התגים Mustache בנתונים ספציפיים:

{{< gist "aspose-words-gists" "544788f602e697802e313a641cedb9b8" "mustache-syntax-using-data-table.cs" >}}

אתה יכול להבחין בהבדל בין המסמך לפני ביצוע Mail Merge עם אזורים יחד עם החלת המאפיין **UseNonMergeFields**:

<img src="mustache-syntax-1.png" alt="mustache_syntax" style="width:400px"/>

{{% alert color="primary" %}}

קטע מתחיל בקילו ומסתיים בקו נטוי. כלומר, `{{#foreach list}}` מתחיל קטע" לפני כל אחד " בעוד `{{/foreach list}}` מסתיים אותו.

{{% /alert %}}

ולאחר החלת Mail Merge עם אזורים:

<img src="mustache-syntax-2.png" alt="mustache_syntax_result" style="width:300px"/>

## השתמש בשדות `IF` כדי ליצור Mail Merge אינטליגנטי

Aspose.Words מאפשר לך להשתמש בשדות Mail Merge ותגים Mustache עם ההצהרה `IF`. ניתן להשתמש בשדות `IF` בכל מסמך Mail Merge כדי לדכא רווחים ופסיקים לא רצויים אם שדה ריק.

נוסחת השדה `IF` מוצגת להלן:

**{ IF [Condition] [Display Result 1] [Display Result 2] }**

כאן, התנאי יכול להיות שדה מיזוג או תג Mustache.

לדוגמה, אתה יכול להשתמש בשדות `IF` אם אתה צריך להוסיף "שלו", "שלה", "הוא" או "היא" בהתאם למין כדלקמן:

**{ IF { MERGEFIELD Gender } = "MALE" "טקסט אמיתי" "טקסט כוזב"}**

**{ IF "{{ GENDER }}" = "MALE" "טקסט אמיתי" "טקסט כוזב"}**

דוגמת הקוד הבאה מראה כיצד לבצע פעולה Mail Merge עם תגיות Mustache ושדות `IF`:

{{< gist "aspose-words-gists" "544788f602e697802e313a641cedb9b8" "use-if-else-mustache.cs" >}}

ניתן להבחין בהבדל בין המסמך לפני החלת המאפיין **UseNonMergeFields**:

<img src="mustache-if-field-1.png" alt="mustache_if_field" style="width:800px"/>

ולאחר החלת המאפיין **UseNonMergeFields**:

<img src="mustache-if-field-2.png" alt="mustache-if-field-2.png" style="width:800px"/>
