---
title: Aspose.Words עבור .NET באמצעות COM Interop
second_title: Aspose.Words עבור .NET
articleTitle: כיצד להשתמש Aspose.Words עבור .NET באמצעות COM Interop
linktitle: כיצד להשתמש Aspose.Words עבור .NET באמצעות COM Interop
type: docs
description: "שימוש בשימוש Aspose.Words עבור .NET באמצעות COM Interop פנימה Python, PHP, VBScript, JScript ושפות תכנות אחרות."
weight: 130
url: /he/net/how-to-use-aspose-words-via-com-interop/
timestamp: 2024-09-25-11-08-55
---

המידע בנושא זה חל על תרחישים שבהם ברצונך להשתמש Aspose.Words עבור .NET באמצעות COM Interop בכל אחת משפות התכנות הבאות:

- ASP
- Delphi ([דוגמא](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/ReleasePreparation/Showcases/Aspose_Words_for_NET_via_COM_Delphi))
- JScript
- Perl
- PHP
- PowerBuilder
- Python
- VBScript
- Visual Basic

## לעבוד עם COM Interop

Aspose.Words עבור .NET מבצעים תחת שליטתו של .NET Framework זה נקרא קוד מנוהל. הקוד שנכתב בכל השפות לעיל יוצא מחוץ .NET Framework זה נקרא קוד לא מומן. אינטראקציה בין קוד לא מודע Aspose.Words מתרחשת באמצעות .NET מתקן הנקרא COM Interop.

Aspose.Words אובייקטים .NET אובייקטים, אך כאשר משתמשים בהם COM Interop, הם מופיעים כפי COM אובייקטים בשפת התכנות שלך לכן, עדיף לוודא שאתה יודע איך ליצור ולהשתמש COM אובייקטים בשפת התכנות שלך, לפני שתתחיל להשתמש Aspose.Words.

הנה הנושאים שבסופו של דבר תצטרך לשלוט:

- שימוש COM אובייקטים בשפת התכנות שלך ראה את תיעוד שפת התכנות שלך ואת הנושאים הספציפיים שפה נוסף בתיעוד זה.
- עבודה עם COM חפצים חשופים .NET COM Interop. ראה [Interopעקבו אחרי Unmanaged Code](https://learn.microsoft.com/en-us/dotnet/framework/interop/) ו [Exposing .NET Framework המונחים to COM](https://learn.microsoft.com/en-us/dotnet/framework/interop/exposing-dotnet-components-to-com) ב-MSDN
- - Aspose.Words מסמך מודל אובייקט ראה Aspose.Words [מדריך מפתח](/words/he/net/developer-guide/) ו [API Reference](https://reference.aspose.com/words/net/).

## רשום Aspose.Words עבור .NET עם COM Interop

אחרי [מתקן](/words/he/net/installation/), אתה צריך להירשם Aspose.Words עבור COM Interop באמצעות `regasm.exe` תועלת.

`regasm.exe` הוא כלי הכלול .NET Framework SDK. כל .NET Framework SDK כלים ממוקמים ב `%windir%\Microsoft .NET\Framework\<FrameworkVersion>\` במאי, למשל *C:Windows/Microsoft .NETFramework\v4.0.30319*

ל- tlb file run `C:\Windows\Microsoft.NET\Framework\v4.0.30319\RegAsm.exe <installdir>\lib\net40-client\Aspose.Words.dll /tlb /codebase` ס"מ, איפה `<installdir>` הוא הבמאי שבו התקנת Aspose.Words, בדרך כלל `%USERPROFILE%\.nuget\packages\aspose.words\`.

## לעבוד עם Aspose.Words באמצעות COM Interop

### ProgIDs

ProgID ראשי התיבות של "Programmatic המזה", זהו שם של `COM` שיעור שאתה צריך להשתמש כדי ליצור אובייקט.

כיום, Aspose.Words 4 מגדירה בפומבי COM אובייקטים. שלהם ProgIDs הם:

- עזרה
- מסמך
- מסמך בונה
- רישיון

The The The ProgIDs שם הספרייה ("Aspose.Words"ושם הכיתה.

### סוג הספריה

במהלך ההתקנה, Aspose.Wordstlb (COM ספריית סוג) מועתקת למחשב שלך:

- For .NET Framework 4 עד **<installdir>המונחים:lib\net40-client</installdir>**

אם שפת התכנות שלך (לדוגמה Visual Basic או Delphiמאפשר לך להתייחס `COM` ספריית סוג ולאחר מכן להוסיף התייחסות **Aspose.Wordst** ואתה תוכל לראות את כל Aspose.Words שיעורים, שיטות, תכונות ו enumerations בדפדפן האובייקט שלך.

### יצירת COM אובייקטים

יצירתו של .NET חפץ דומה ליצירתו של אדם רגיל COM אובייקט:

**VBScript**

```
דיאם עוזר
המונחים: CreateObjectAspose.Words.ComHelper)
 
```

לאחר שיצרת, תוכל לגשת לשיטות ולנכסים של האובייקט, כאילו היה זה `COM` אובייקט:

**VBScript**

```
דיאם
Set Doc = Helper ("OpenC:\my.doc")
 
```

כמה שיטות יש עומסים יתר והם יהיו חשופים על ידי COM Interop עם suffix המספרי הוסיף להם, למעט השיטה הראשונה שנותרה ללא שינוי. לדוגמה, `Document.Save` עומסים הופכים `Document.Save`, `Document.Save_2`, `Document.Save_3`, וכן הלאה.

לקבלת מידע נוסף, ראה במאמרים ספציפיים שפה עוד יותר בתיעוד זה.

### יצירת Wrapper האסיפה

אם אתה צריך להשתמש רבים של Aspose.Words שיעורים, שיטות ונכסים, לשקול יצירת אספה (באמצעות C# או .NET שפת תכנות - זה יעזור להימנע משימוש Aspose.Words ישירות מהקוד הלא-אמן.

גישה טובה היא לפתח .NET תגית: Aspose.Words ועושה את כל העבודה עם זה, ורק חושף את המערך המינימלי של שיעורים ושיטות לקוד לא ממומש. היישום שלך צריך לעבוד רק עם ספריית העטיפה שלך.

צמצום מספר השיעורים והשיטות שאתה צריך להשתמש בהם COM Interop יכול לפשט את הפרויקט, כי באמצעות .NET שיעורים באמצעות COM Interop לעתים קרובות דורש מיומנויות מתקדמות.
