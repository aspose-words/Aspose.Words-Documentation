---
title: מתקן
second_title: Aspose.Words עבור .NET
articleTitle: מתקן
linktitle: מתקן
description: "התקן Aspose.Words עבור .NET באמצעות שימוש Visual Studio כלים כגון Manage NuGet Packages או Package Manager Console ומתקין MSI. השתמש Full Trust רשות C#."
type: docs
weight: 10
url: /he/net/installation/
---

ודא שהמכונה שלך פוגשת [דרישות מערכת](/words/he/net/system-requirements/) לפני שתתחיל.

מאמר זה מסביר כיצד להתקין Aspose.Words עבור .NET במחשב שלך.

## התקנת או עדכון Aspose.Words עבור .NET באמצעות שימוש Manage NuGet Packages {#install-or-update-aspose-words-for-net-using-nuget}

NuGet הדרך הקלה ביותר להוריד ולהתקין [Aspose.Words עבור .NET](https://www.nuget.org/packages/Aspose.Words/) API. לעשות את זה, לעקוב אחר השלבים האלה:

1.1 1. פתוח *Microsoft Visual Studio* ו*Manage NuGet Packages* מהתפריט כדי לפתוח את מנהל החבילה
2. חפש את "הנניח" או "נניח" כדי למצוא את ה-As נניח הרצוי API<br/>
      <img src="/words/net/installation/aspose-words-nuget.png" alt="aspose-words-nuget" style="width:800px"/>
3. בחר את As נניח הרצוי API לחץ על "Install"

נבחר API הורד והתייחס בפרויקט שלך.

ניתן גם לעדכן Aspose.Words עבור .NET לגרסה הרצויה באמצעות *Manage NuGet Packages*

## התקנת או עדכון Aspose.Words באמצעות שימוש Package Manager Console

ניתן גם להתקין או לעדכן Aspose.Words עבור .NET APIשימוש ב- *Package Manager Console* לעשות את זה, לעקוב אחר השלבים האלה:

1.1 1. פתוח *Microsoft Visual Studio* ו*Package Manager Console* מתוך התפריט לקונסולת מנהל החבילה הפתוחה<br/>
      <img src="/words/net/installation/aspose-words-nuget-update.png" alt="aspose-words-nuget-update" style="width:600px"/>
2. סוג הפקודה `Install-Package Aspose.Words` הקש Enter כדי להתקין את השחרור המלא האחרון ביישום שלך<br/>
   <img src="/words/net/installation/aspose-words-nuget-update-2.png" alt="aspose-words-nuget-update-2" style="width:600px"/><br/>
   {{% alert color="primary" %}}בנוסף, ניתן להוסיף `-prerelease` suffix לפקודה לציין כי השחרור האחרון, כולל תיקונים חמים, צריך גם להיות מותקן.{{% /alert %}}
3. לאחר שהורדת, תראה הודעות אישור<br/>
   <img src="/words/net/installation/aspose-words-nuget-istalled.png" alt="aspose-words-nuget-istalled" style="width:600px"/><br/>
   {{% alert color="primary" %}}אם אתה לא מכיר את [תגית: EULA](https://about.aspose.com/legal/eula/), מומלץ לקרוא את הרישיון המוזכר ב-URL.{{% /alert %}}
4. עכשיו אולי תמצא Aspose.Words הוספה בהצלחה והתייחסה ביישום עבורך<br/>
      <img src="/words/net/installation/aspose-words-nuget-references.png" alt="aspose-words-nuget-references" style="width:400px"/>

In *Package Manager Consoleאתה יכול גם להשתמש `Update-Package Aspose.Words` פקודה לבדוק עדכונים Aspose.Words לארוז ולהתקין אותם אם הם נוכחים. אפשר גם להוסיף `-prerelease` suffix כדי לעדכן את השחרור האחרון.

## התקן Aspose.Words עבור .NET באמצעות Installer

Aspose.Words עבור .NET ניתן להתקין על ידי הורדה ישירה של מתקין MSI מ [הורדה](https://releases.aspose.com/words/).

{{% alert color="primary" %}}

אתה חייב להיות מחובר כדי להוריד את ההתקנה. אם אתה עדיין לא רשום, אתה יכול להירשם בחינם.

{{% /alert %}}

להתקין Aspose.Words עבור .NET, עקבו אחרי השלבים הבאים:

1 הורד `Aspose.Words_`{LatestVersion}.msi from the [הורדה](https://releases.aspose.com/words/)
2. לחץ על הקובץ הורד, ובכך החל את מכשף ההתקנה, בצע את הוראות מכשף ההתקנה<br/>
      <img src="/words/net/installation/aspose-words-setup-1.png" alt="aspose-words-setup-1" style="width:500px"/>
3. כאשר הקוסם ההתקנה משלים את ההתקנה, הקבצים הדרושים יהיו זמינים בתיקיה בתוואי התיקיה המסופק<br/>
      <img src="/words/net/installation/aspose-words-setup-4.jpg" alt="aspose-words-setup-4" style="width:500px"/>
4. פתח את הפתרון/הפצה Visual Studio
5. לחץ נכון על הפרויקט שלך ב *Solution Explorer * ולהוסיף את ההתייחסות להגדרות מותקנות
6. Aspose.Words עבור .NET אסיפות מותקנות יופיעו בהרחבות תחת סעיף Assemblies - רק בחרו את רכיב DLL הנדרש<br/>
      <img src="/words/net/installation/aspose-words-setup-5.png" alt="aspose-words-setup-5" style="width:800px"/>
7. לחץ על OK

## שיקולים מתי לרוץ בשיתוף Server הסביבה

הכל נניח .NET רכיבים מומלץ לרוץ עם *Full Trust* אישור כי נניח .NET רכיב לפעמים צריך גישה להגדרות הרישום וקבצים הממוקמים במקומות אחרים מאשר הבמאי הווירטואלי, כגון גופן קריאה. בנוסף, `Aspose.NET` רכיבים מבוססים על ליבה .NET שיעורי מערכת, חלקם דורשים גם *Full Trust• רשות לרוץ במקרים מסוימים.

שירות אינטרנט ספקים מארחים יישומים מרובים מחברות שונות בעיקר לאכוף את רמת האבטחה *Medium Trust *. במקרה של .NET 2.0, רמת אבטחה כזו עלולה לכפות את המגבלות הבאות, אשר עלולות להשפיע על היכולת של Aspose.Words לבצע כראוי:

- - **RegistryPermission** לא זמין. משמעות הדבר היא כי אתה לא יכול לגשת למרשם, אשר נדרש כדי לקטוף גופנים מותקנים בעת ביצוע מסמכים.
- - **FileIOPermission** הוא מוגבל. משמעות הדבר היא שאתה יכול לגשת רק קבצים בהיררכיה הווירטואלית של היישום שלך. זה גם אומר כי גופנים לא ניתן לקרוא במהלך הייצוא.

מסיבות אלה המפורטות לעיל, מומלץ לרוץ Aspose.Words עם Full Trust הרשאות. ייתכן שחלק מתכונות הספרייה יעבדו בעת ביצוע משימות שונות עם אמון בינוני, וחלקם לא יעשו, למשל, ביצוע משימות שונות. זה יכול להיות קשור לשיחות עיבוד תמונות GDI+.
