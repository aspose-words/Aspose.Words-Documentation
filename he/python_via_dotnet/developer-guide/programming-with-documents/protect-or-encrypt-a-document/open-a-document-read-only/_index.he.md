---
title: פתח מסמך לקריאה בלבד Python
second_title: Aspose.Words עבור Python via .NET
articleTitle: פתח מסמך לקריאה בלבד
linktitle: פתח מסמך לקריאה בלבד
description: "להפוך את המסמך לקריאה בלבד כך שניתן להעתיק את התוכן או לקרוא, אך לא לשנות באמצעות שימוש Python."
type: docs
weight: 10
url: /he/python-net/open-a-document-read-only/
---

לפעמים, ייתכן שיש לך מסמך שזקוק לסקירה, אבל אתה לא רוצה שמבקרים ישתנו באופן אקראי את התוכן שלך. Aspose.Words מאפשר לך להפוך את הרשאת המסמך לקריאה בלבד כך שניתן להעתיק את התוכן או לקרוא, אך לא לשנות. זה ימנע תוכן להסיר או להוסיף למסמכים שלך.

{{% alert color="primary" %}}

יישום האפשרות לקריאה בלבד במסמך שלך אינו מונע ממישהו ליצור עותק חדש של זה והצלתו עם שם אחר.

{{% /alert %}}

מאמר זה מסביר כיצד להפוך מסמך לקריאה בלבד.

## עשה מסמך לקריאה בלבד

Aspose.Words יש לו מעמד ציבורי [WriteProtection](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/) מפרט זה כותב הגדרות הגנה עבור מסמך. אתה לא יוצר מקרים של השיעור הזה ישירות.

הגנה בכתב מראה אם המחבר המליץ לפתוח מסמך כקריאה בלבד ו/או לדרוש סיסמה לשנות את המסמך.

Aspose.Words מאפשר לך להפוך מסמך לקריאה בלבד כדי להגביל את העריכה על ידי שימוש [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/) רכוש ו [set_password](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/set_password/) שיטה.

{{% alert color="primary" %}}

In In In Microsoft Word, ניתן ליצור מסמך לקריאה בלבד באופן דומה באמצעות שניהם:

* "Always Open Read-Only" (File)
* "Password to Change" (Save as) Tools

{{% /alert %}}

{{% alert color="primary" %}}

משתמשים יכולים גם להגביל את עריכת המסמכים על ידי בחירת [ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/) כמו [READ_ONLY](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#read_only), אבל זו תכונה נוספת המספקת יכולות הגנה מתקדמות יותר. יש תפקיד כזה Microsoft Word, בהתאמה, הוא מיושם Aspose.Words.

[ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/) יתואר בפירוט באחד המאמרים הבאים: "חוק הגבלת עריכה".

{{% /alert %}}

The The The [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/) הנכס הוא מאובטח סיסמה, אז אם אתה לא להגדיר סיסמה לפני יישום [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/) רכוש, אז משתמשים אחרים יכולים פשוט לפתוח את המסמך כאילו הוא לא מוגן. אתה ניגש להגדרות הגנת המסמך ולהגדיר סיסמה הגנה באמצעות הסיסמה [set_password](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/set_password/) שיטה.

{{% alert color="primary" %}}

שים לב שהסיסמה נקבעת היא רק נכס במסמך שניתן להסיר אם תכונות המסמך נגישות. בהתאם לכך, סיסמה כזו אינה ערובה לאבטחת המסמך.

{{% /alert %}}

אם אתה צריך לבדוק אם מסמך יש סיסמה הגנה בכתב המגבילה אותו מעריכה, אתה יכול להשתמש [is_write_protected](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/is_write_protected/) רכוש.

דוגמה לקוד הבא מראה כיצד להפוך מסמך לקריאה בלבד:

{{< highlight python >}}
import aspose.words as aw

doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.write("Open document as read-only")

# Enter a password that's up to 15 characters long.
doc.write_protection.set_password("MyPassword")

# Make the document as read-only.
doc.write_protection.read_only_recommended = True

# Apply write protection as read-only.
doc.protect(aw.ProtectionType.READ_ONLY)
doc.save(docs_base.artifacts_dir + "DocumentProtection.ReadOnlyProtection.docx")
{{< /highlight >}}

## המונחים: only Restriction

אם אתה לא רוצה משתמש לפתוח את המסמך שלך כקריאה בלבד, אתה יכול פשוט להגדיר את [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/) רכוש `False` או לבחור [ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/document/protection_type/) כמו [NO_PROTECTION](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#no_protection).

לדוגמה הקוד הבא מראה כיצד להסיר גישה לקריאה בלבד עבור מסמך:

{{< highlight python >}}
import aspose.words as aw

doc = aw.Document()
            
# Enter a password that's up to 15 characters long.
doc.write_protection.set_password("MyPassword")

# Remove the read-only option.
doc.write_protection.read_only_recommended = False

# Apply write protection without any protection.
doc.protect(aw.ProtectionType.NO_PROTECTION)
doc.save(docs_base.artifacts_dir + "DocumentProtection.RemoveReadOnlyRestriction.docx")
{{< /highlight >}}
