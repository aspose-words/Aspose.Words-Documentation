---
title: פתח מסמך לקריאה בלבד Java
second_title: Aspose.Words עבור Java
articleTitle: פתח מסמך לקריאה בלבד
linktitle: פתח מסמך לקריאה בלבד
description: "להפוך את המסמך לקריאה בלבד כך שניתן להעתיק את התוכן או לקרוא, אך לא לשנות באמצעות שימוש Java."
type: docs
weight: 10
url: /he/java/open-a-document-read-only/
timestamp: 2024-01-27-14-07-04
---

לפעמים, ייתכן שיש לך מסמך שזקוק לסקירה, אבל אתה לא רוצה שמבקרים ישתנו באופן אקראי את התוכן שלך. Aspose.Words מאפשר לך להפוך את הרשאת המסמך לקריאה בלבד כך שניתן להעתיק את התוכן או לקרוא, אך לא לשנות. זה ימנע תוכן להסיר או להוסיף למסמכים שלך.

{{% alert color="primary" %}}

יישום האפשרות לקריאה בלבד במסמך שלך אינו מונע ממישהו ליצור עותק חדש של זה והצלתו עם שם אחר.

{{% /alert %}}

מאמר זה מסביר כיצד להפוך מסמך לקריאה בלבד.

## עשה מסמך לקריאה בלבד

Aspose.Words יש לו מעמד ציבורי [WriteProtection](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/) מפרט זה כותב הגדרות הגנה עבור מסמך. אתה לא יוצר מקרים של השיעור הזה ישירות.

הגנה בכתב מראה אם המחבר המליץ לפתוח מסמך כקריאה בלבד ו/או לדרוש סיסמה לשנות את המסמך.

Aspose.Words מאפשר לך להפוך מסמך לקריאה בלבד כדי להגביל את העריכה על ידי שימוש [ReadOnlyRecommended](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#getReadOnlyRecommended) רכוש ו [SetPassword](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#setPassword-java.lang.String) שיטה.

{{% alert color="primary" %}}

In In In Microsoft Word, ניתן ליצור מסמך לקריאה בלבד באופן דומה באמצעות שניהם:

* "Always Open Read-Only" (File)
* "Password to Change" (Save as) Tools

{{% /alert %}}

{{% alert color="primary" %}}

משתמשים יכולים גם להגביל את עריכת המסמכים על ידי בחירת [ProtectionType](https://reference.aspose.com/words/java/com.aspose.words/protectiontype/) כמו **ReadOnly**, אבל זו תכונה נוספת המספקת יכולות הגנה מתקדמות יותר. יש תפקיד כזה Microsoft Word, בהתאמה, הוא מיושם Aspose.Words.

**ProtectionType** יתואר בפירוט באחד המאמרים הבאים: "חוק הגבלת עריכה".

{{% /alert %}}

The The The **ReadOnlyRecommended** הנכס הוא מאובטח סיסמה, אז אם אתה לא להגדיר סיסמה לפני יישום **ReadOnlyRecommended** רכוש, אז משתמשים אחרים יכולים פשוט לפתוח את המסמך כאילו הוא לא מוגן. באפשרותך לגשת להגדרות הגנת המסמכים ולהגדיר סיסמה הגנה בכתב באמצעות הסיסמה **SetPassword** שיטה.

{{% alert color="primary" %}}

שים לב שהסיסמה נקבעת היא רק נכס במסמך שניתן להסיר אם תכונות המסמך נגישות. בהתאם לכך, סיסמה כזו אינה ערובה לאבטחת המסמך.

{{% /alert %}}

אם אתה צריך לבדוק אם מסמך יש סיסמה הגנה בכתב המגבילה אותו מעריכה, אתה יכול להשתמש [IsWriteProtected](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#isWriteProtected) רכוש.

דוגמה לקוד הבא מראה כיצד להפוך מסמך לקריאה בלבד:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-ReadOnlyProtection.java" >}}

## המונחים: only Restriction

אם אתה לא רוצה משתמש לפתוח את המסמך שלך כקריאה בלבד, אתה יכול פשוט להגדיר את **ReadOnlyRecommened** רכוש *false* או לבחור **ProtectionType** כמו **NoProtection**.

הדוגמה הבאה של הקוד מראה כיצד להסיר גישה לקריאה בלבד עבור מסמך:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-RemoveReadOnlyRestriction.java" >}}
