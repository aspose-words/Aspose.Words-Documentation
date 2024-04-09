---
title: דרישות מערכת
second_title: Aspose.Words עבור Python via .NET
articleTitle: דרישות מערכת
linktitle: דרישות מערכת
description: "לפני שתתחיל לעבוד עם Aspose.Words עבור Python via .NET, ודא כי אתה פוגש את מערכת ההפעלה, פלטפורמה ואת דרישות הסביבה כך הפעילויות במכשירים שלך הם כראוי."
type: docs
weight: 50
url: /he/python-net/system-requirements/
---

Aspose.Words עבור Python via .NET אין צורך במוצר צד שלישי כגון Microsoft Word להיות מותקן. Aspose.Words עצמו הוא מנוע ליצירת, שינוי, המרת ועריכת מסמכים בפורמטים שונים, כולל Microsoft Word פורמטי מסמך

## מערכות הפעלה

Aspose.Words עבור Python via .NET תומך במערכת הפעלה של 64 סיביות או 32 סיביות שבה Python 3.5 או מאוחר יותר מותקנים.

<table>
    <tr>
        <td style="font-weight: bold; width:400px">מערכת הפעלה</td>
        <td style="font-weight: bold; width:400px">גרסאות</td>
    </tr>
    <tr>
        <td>Microsoft Windows</td>
        <td><ul></ul></td>
            <li>Windows 2003 2003 2003 Server (x64, x86)</li>
            <li>Windows 2008 Server (x64, x86)</li>
            <li>Windows 2012 2012 2012 Server (x64, x86)</li>
            <li>Windows 2012 2012 2012 R2 Server (x64, x86)</li>
            <li>Windows 2016 2016 Server (x64, x86)</li>
            <li>Windows 2019 2019 Server (x64, x86)</li>
            <li>Windows XP (x64, x86)</li>
            <li>Windows Vista (x64, x86)</li>
            <li>Windows 7 (x64, x86)</li>
            <li>Windows 8, 8.1 (x64, x86)</li>
            <li>Windows 10 (x64, x86)</li>
        
    </tr>
    <tr>
        <td>macOS</td>
        <td><ul></ul></td>
            <li>macOS-x86_64: 10.14 ואילך</li>
            <li>macOS-arm64: 11.0 ואילך</li>
        
    </tr>
    <tr>
        <td>Linux</td>
        <td><ul></ul></td>
            <li>Ubuntu</li>
            <li>OpenSUSE</li>
            <li>CentOS</li>
            <li>ואחרים</li>
        
    </tr>
</table>

## דרישות מערכת עבור Target Linux macOS Platforms

- GCC-6 ספריות (או מאוחר יותר).

- תלות .NET Core Runtime. התקנת .NET Core Runtime עצמו `NOT` נדרש.

- For Python 3.5-3.7: `pymalloc` בנייה Python צריך. The The The `--with-pymalloc` Python אפשרות בנייה זמינה כברירת מחדל. בדרך כלל, `pymalloc` בנייה Python מסומן עם `m` suffix בקובץ.

- - `libpython` משותף Python ספרייה The The The `--enable-shared` Python אפשרויות בנייה מוגבלות כברירת מחדל, חלקם Python הפצה לא מכילה `libpython` ספרייה משותפת עבור כמה פלטפורמות linux, `libpython` ניתן להתקין ספרייה משותפת באמצעות מנהל החבילה, למשל: `sudo apt-get install libpython3.7`. הבעיה הנפוצה היא `libpython` הספרייה מותקנת במיקום אחר מאשר מיקום המערכת הסטנדרטית לספריות משותפות. ניתן לתקן את הבעיה באמצעות Python בניית אפשרויות לקביעת נתיבי ספריה חלופיים בעת איסוף Pythonאו קבוע על ידי יצירת קישור סמלי `libpython` קובץ הספרייה במיקום סטנדרטי של המערכת לספריות משותפות. בדרך כלל, `libpython` שם קובץ ספרייה משותף `libpythonX.Ym.so.1.0` עבור Python 3.5-3.7 או `libpythonX.Y.so.1.0` עבור Python 3.8 ואילך (לדוגמה: libpython3.7m.so.1.0, libpython3.9.so.1.0)
