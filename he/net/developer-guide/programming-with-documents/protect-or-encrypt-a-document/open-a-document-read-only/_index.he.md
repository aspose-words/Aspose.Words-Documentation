---
title: פתח מסמך לקריאה בלבד C#
second_title: Aspose.Words עבור .NET
articleTitle: פתח מסמך לקריאה בלבד
linktitle: פתח מסמך לקריאה בלבד
description: "להפוך את המסמך לקריאה בלבד כך שניתן להעתיק את התוכן או לקרוא, אך לא לשנות באמצעות שימוש C#."
type: docs
weight: 10
url: /he/net/open-a-document-read-only/
---

לפעמים, ייתכן שיש לך מסמך שזקוק לסקירה, אבל אתה לא רוצה שמבקרים ישתנו באופן אקראי את התוכן שלך. Aspose.Words מאפשר לך להפוך את הרשאת המסמך לקריאה בלבד כך שניתן להעתיק את התוכן או לקרוא, אך לא לשנות. זה ימנע תוכן להסיר או להוסיף למסמכים שלך.

{{% alert color="primary" %}}

יישום האפשרות לקריאה בלבד במסמך שלך אינו מונע ממישהו ליצור עותק חדש של זה והצלתו עם שם אחר.

{{% /alert %}}

מאמר זה מסביר כיצד להפוך מסמך לקריאה בלבד.

## עשה מסמך לקריאה בלבד

Aspose.Words יש לו מעמד ציבורי [WriteProtection](https://reference.aspose.com/words/net/aspose.words.settings/writeprotection/) מפרט זה כותב הגדרות הגנה עבור מסמך. אתה לא יוצר מקרים של השיעור הזה ישירות.

הגנה בכתב מראה אם המחבר המליץ לפתוח מסמך כקריאה בלבד ו/או לדרוש סיסמה לשנות את המסמך.

Aspose.Words מאפשר לך להפוך מסמך לקריאה בלבד כדי להגביל את העריכה על ידי שימוש [ReadOnlyRecommended](https://reference.aspose.com/words/net/aspose.words.settings/writeprotection/readonlyrecommended/) רכוש ו [SetPassword](https://reference.aspose.com/words/net/aspose.words.settings/writeprotection/setpassword/) שיטה.

{{% alert color="primary" %}}

In In In Microsoft Word, ניתן ליצור מסמך לקריאה בלבד באופן דומה באמצעות שניהם:

* "Always Open Read-Only" (File)
* "Password to Change" (Save as) Tools

{{% /alert %}}

{{% alert color="primary" %}}

משתמשים יכולים גם להגביל את עריכת המסמכים על ידי בחירת [ProtectionType](https://reference.aspose.com/words/net/aspose.words/protectiontype/) כמו **ReadOnly**, אבל זו תכונה נוספת המספקת יכולות הגנה מתקדמות יותר. יש תפקיד כזה Microsoft Word, בהתאמה, הוא מיושם Aspose.Words.

**ProtectionType** יתואר בפירוט באחד המאמרים הבאים: "חוק הגבלת עריכה".

{{% /alert %}}

The The The **ReadOnlyRecommended** הנכס הוא מאובטח סיסמה, אז אם אתה לא להגדיר סיסמה לפני יישום **ReadOnlyRecommended** רכוש, אז משתמשים אחרים יכולים פשוט לפתוח את המסמך כאילו הוא לא מוגן. אתה ניגש להגדרות הגנת המסמך ולהגדיר סיסמה הגנה באמצעות הסיסמה **SetPassword** שיטה.

{{% alert color="primary" %}}

שים לב שהסיסמה נקבעת היא רק נכס במסמך שניתן להסיר אם תכונות המסמך נגישות. בהתאם לכך, סיסמה כזו אינה ערובה לאבטחת המסמך.

{{% /alert %}}

אם אתה צריך לבדוק אם מסמך יש סיסמה הגנה בכתב המגבילה אותו מעריכה, אתה יכול להשתמש [IsWriteProtected](https://reference.aspose.com/words/net/aspose.words.settings/writeprotection/iswriteprotected/) רכוש.

דוגמה לקוד הבא מראה כיצד להפוך מסמך לקריאה בלבד:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-ReadOnlyProtection.cs" >}}

## המונחים: only Restriction

אם אתה לא רוצה משתמש לפתוח את המסמך שלך כקריאה בלבד, אתה יכול פשוט להגדיר את **ReadOnlyRecommened** רכוש *false* או לבחור **ProtectionType** כמו **NoProtection**.

לדוגמה הקוד הבא מראה כיצד להסיר גישה לקריאה בלבד עבור מסמך:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveReadOnlyRestriction.cs" >}}
