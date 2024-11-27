---
title: פתח מסמך לקריאה בלבד ב C++
second_title: Aspose.Words עבור C++
articleTitle: פתח מסמך לקריאה בלבד
linktitle: פתח מסמך לקריאה בלבד
description: "הפוך את המסמך לקריאה בלבד כדי שניתן יהיה להעתיק או לקרוא את התוכן, אך לא לשנות אותו."
type: docs
weight: 10
url: /he/cpp/open-a-document-read-only/
timestamp: 2024-01-27-14-07-04
---

לפעמים, ייתכן שיש לך מסמך שזקוק לביקורת, אך אינך רוצה שבודקים ישנו באופן אקראי את התוכן שלך. Aspose.Words מאפשר לך לבצע את הרשאת המסמך לקריאה בלבד, כך שניתן יהיה להעתיק או לקרוא את התוכן, אך לא לשנות אותו. פעולה זו תמנע הסרת תוכן או הוספה למסמך שלך.

{{% alert color="primary" %}}

החלת האפשרות לקריאה בלבד על המסמך שלך אינה מונעת ממישהו ליצור עותק חדש שלו ולשמור אותו בשם אחר.

{{% /alert %}}

מאמר זה מסביר כיצד ליצור מסמך לקריאה בלבד.

## צור מסמך לקריאה בלבד

Aspose.Words יש את המעמד הציבורי [WriteProtection](https://reference.aspose.com/words/cpp/aspose.words.settings/writeprotection/) המציין הגדרות הגנת כתיבה עבור מסמך. אינך יוצר מופעים של מחלקה זו ישירות.

הגנת כתיבה מראה אם המחבר המליץ לפתוח מסמך כקריאה בלבד ו / או לדרוש סיסמה לשינוי המסמך.

Aspose.Words מאפשר לך ליצור מסמך לקריאה בלבד כדי להגביל את העריכה באמצעות המאפיין [ReadOnlyRecommended](https://reference.aspose.com/words/cpp/aspose.words.settings/writeprotection/get_readonlyrecommended/) ושיטת [SetPassword](https://reference.aspose.com/words/cpp/aspose.words.settings/writeprotection/setpassword/).

{{% alert color="primary" %}}

ב Microsoft Word, אתה יכול ליצור מסמך לקריאה בלבד באופן דומה באמצעות שניהם:

* "תמיד פתוח לקריאה בלבד "(קובץ ל מידע ל להגן על מסמך)
* "סיסמה לשינוי" (שמור בשם כלים אפשרויות כלליות סיסמה)

{{% /alert %}}

{{% alert color="primary" %}}

משתמשים יכולים גם להגביל את עריכת המסמכים על ידי בחירה [ProtectionType](https://reference.aspose.com/words/cpp/aspose.words/protectiontype/) כ **ReadOnly**, אך זוהי תכונה נוספת המספקת יכולות הגנה מתקדמות יותר. יש פונקציה כזו ב Microsoft Word, בהתאמה, היא מיושמת ב Aspose.Words.

**ProtectionType**

{{% /alert %}}

המאפיין **ReadOnlyRecommended** מאובטח בסיסמה, כך שאם לא תגדיר סיסמה לפני החלת המאפיין **ReadOnlyRecommended**, משתמשים אחרים יכולים פשוט לפתוח את המסמך כאילו הוא לא מוגן. אתה ניגש להגדרות הגנת המסמכים ומגדיר סיסמת הגנת כתיבה באמצעות שיטת **SetPassword**.

{{% alert color="primary" %}}

שים לב שהסיסמה המוגדרת היא רק מאפיין במסמך שניתן להסיר אם ניתן לגשת למאפייני המסמך. לפיכך, סיסמה כזו אינה ערובה לאבטחת המסמך.

{{% /alert %}}

אם עליך לבדוק אם למסמך יש סיסמת הגנה מפני כתיבה המגבילה את עריכתו, תוכל להשתמש במאפיין [IsWriteProtected](https://reference.aspose.com/words/cpp/aspose.words.settings/writeprotection/get_iswriteprotected/).

דוגמת הקוד הבאה מראה כיצד ליצור מסמך לקריאה בלבד:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-ReadOnlyProtection.h" >}}

## הסר הגבלה לקריאה בלבד

אם אינך רוצה שמשתמש יפתח את המסמך כקריאה בלבד, תוכל פשוט להגדיר את המאפיין **ReadOnlyRecommened** ל *false* או לבחור **ProtectionType** כ **NoProtection**.

דוגמת הקוד הבאה מראה כיצד להסיר גישה לקריאה בלבד עבור מסמך:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveReadOnlyRestriction.h" >}}
