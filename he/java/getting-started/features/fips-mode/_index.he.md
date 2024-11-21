---
title: מצב FIPS
second_title: Aspose.Words עבור Java
articleTitle: מצב FIPS
linktitle: מצב FIPS
description: "Aspose.Words עבור Java משתמשים במספר אלגוריתמים של הצפנה ושישה בעת עיבוד מסמכים כדי לציית לסטנדרטים של FIPS."
type: docs
weight: 80
url: /he/java/fips-mode/
timestamp: 2024-05-08-10-19-58
---

Aspose.Words משתמשים במספר אלגוריתמים של קריפטוגרפיה ושישה בעת עיבוד מסמכים ומאמר זה מתאר כיצד זה קשור לסטנדרטים של FIPS.

תקני עיבוד מידע פדרליים (FIPS) הם קבוצה של סטנדרטים שפורסמו בגלוי שפותחה על ידי הממשל הפדרלי בארה"ב כדי לקבוע דרישות למטרות שונות, כגון הבטחת אבטחת מחשב והתערבות.

## BouncyCastle להצלה

Aspose.Words עבור Java ו Aspose.Words עבור Android האותיות הקטנות של The Bouncy Castle FIPS JAR להצפנה, לפענוח ולחתום מסמכים. The The The JAR תוכנן ומיושם כדי לעמוד בדרישות ה-FIPS 140-2, רמה 1.

FIPS 140-2 הוא תקן אבטחת מחשבים של ממשלת ארה"ב המשמש לאישור מודולים קריפטוגרפיים. תקן זה מפרט את דרישות האבטחה כי יהיה מרוצה על ידי מודול קריפטוגרפי ומספק רמות גבוהות של אבטחה שנועד לכסות מגוון רחב של יישומים פוטנציאליים וסביבות. לפרטים נוספים ב-FIPS 140-2, ראה את [תגית: NIST](https://www.nist.gov/publications/security-requirements-cryptographic-modules-includes-change-notices-1232002?pub_id=902003).

Aspose.Words עבור .NET השתמש בגרסה הכללית של טירת בוני ללא תמיכה ב-FIPS.

## מצב FIPS Activation

החל מהגרסה 18.10 Aspose.Words מאפשר לעבוד בשני מצבים: כללי ו-FIPS.

כברירת מחדל Aspose.Words עובד במצב הכללי, כך שאין הגבלות על השימוש באלגוריתמים ובמפתחות במקרה זה.

אתה יכול לעבור Aspose.Words מהצורה הכללית למצב ה-FIPS באמצעות השיטה הבאה:

**Java**

{{< highlight csharp >}}
SecuritySettings.startFipsMode();
{{< /highlight >}}

מסיבות אבטחה אתה לא יכול לשנות את המצב בחזרה לגנרל בזמן ריצה.

שימו לב שגם Aspose.Words לא יכול לזהות באופן אוטומטי אם מערכת ההפעלה שלך במצב FIPS, לכן עליך לעבור Aspose.Words ל-FIPS באופן מפורש

השתמש בשיטה הבאה כדי לוודא Aspose.Words עבור Java במצב FIPS:

**Java**

{{< highlight csharp >}}
SecuritySettings.isInFipsMode();
{{< /highlight >}}

כאשר מצב ה-FIPS הוא, נניח שמילים ימנעו מכם להשתמש באלגוריתמים ובמפתחות של קריפטוגרפיה ללא אישור.

לדוגמה, בעת ניסיון לפתוח מסמך מוצפן ODT בעוד מצב ה-FIPS פעיל, אתה יכול לראות את החריג הבא:

{{% alert color="primary" %}}

מבצע אבטחה לא מאושר תגית: ניסיון לפתוח קובץ ODT המשתמש באלגוריתם Blowfish. אלגוריתם זה אינו ברשימת האלגוריתם המאושרת של FIPS.

{{% /alert %}}

זה קורה כי אלגוריתם הדגים של ה-FIPS אינו ברשימת האלגוריתמים המאושרים.

יוצא דופן דומה עשוי להתרחש אם מפתחות של אורך לא הולם משמשים:

מבצע אבטחה לא מאושר תגית: אתה לא יכול להשתמש מפתח עם גודל 1024 עבור RSA במצב FIPS.

לפרטים נוספים על רשימת האלגוריתמים המאושרת, ראה [המונחים: Castle User Guide](https://downloads.bouncycastle.org/fips-java/docs/BC-FJA-UserGuide-1.0.1.pdf), "Cipher Algorithms"


