---
title: Web App אבטחה בעת טעינת משאבים
second_title: Aspose.Words עבור .NET
articleTitle: דרישות אינטרנט אבטחה בעת טעינת משאבים חיצוניים
linktitle: דרישות אינטרנט אבטחה בעת טעינת משאבים חיצוניים
type: docs
description: "לטעון משאבים מרוחקים, זה יכול להיות סיבה של סיכונים ביטחוניים. הסתכלו על בעיות אבטחה נפוצות ועל הפתרונות שלהם C#."
weight: 100
url: /he/net/web-applications-security-when-loading-external-resources/
---

כברירת מחדל, Aspose.Words עבור .NET ניתן לטעון משאבים מרוחקים כגון תמונות, סגנונות CSS, או מסמכי HTML חיצוניים בעת ייבוא מסמכים או הוספת תמונות באמצעות מסמך בונה. התנהגות זו מאפשרת לך לעבד את המסמכים שלך בפירוט מלא אבל יכול להיות סיבה של כמה סיכונים אבטחה אם הספריה היא חלק יישום אינטרנט.

במאמר זה, אנו בודקים סוגיות אבטחה נפוצות שיכולות להתעורר כאשר הן מכסות משאבים חיצוניים ומספקות המלצות כיצד להימנע מבעיות כאלה.

{{% alert color="primary" %}}

Aspose.Words לא מתפקד כמו תוכנת אנטי וירוס. לכן, זה לא מספק מידע על נוכחות של רכיבים זדוניים במסמך. כדי להבטיח את אבטחת המידע שלך, בדוק מסמכים המתקבלים ממקור חיצוני בעצמך. בתורו, Aspose.Words מספק המלצות על איך להתמודד עם בעיות שעלולות להתעורר בעת טעינת משאבים חיצוניים.

{{% /alert %}}

## בעיות אבטחה

ישנם מספר בעיות אבטחה טיפוסיות בעת טעינת משאבים חיצוניים.

### גילוי נאות תמונות מקושרות

On On Windows- מארחים מבוססים, מסמכים המכילים אזכורים למשאבים המשתמשים בנתיבים של האו"ם כגון * "example.com\a\b*" יעובדו כברירת מחדל. בסביבה דומיין, זה יגרום למארח לשלוח את אישורי התחום שלו בפורמט מעוגל לשרת שצוין.

אם תוקף יכול לשכנע משתמש או שרת לעבד מסמך עם קישור משאבים כזה מצביע על מארח שהם שולטים, התוקף יקבל את אישור המשתמש או השירות בפורמט NTLM hash. לאחר מכן ניתן להשתמש בנתונים אלה בהתקפה קלאסית של מעבר-האש, המאפשר לתוקפים לקבל גישה לכל משאב כמשתמש הקורבן או חשבון שירות.

אם החשבון המדובר משתמש בסיסמה חלשה או לנחשית, התוקף יכול גם לבצע פיגוע פצח סיסמה כדי לשחזר את הסיסמה של החשבון לשימוש זדוני נוסף.

### גילוי תמונות מקומי תמונות מקושרות

בדומה למקרה הקודם, עיבוד מסמך עם התייחסות לקובץ תמונות מקומי יביא לקובץ זה הכלול במסמך הסופי. זה יכול להוביל לגילוי מידע רגיש.

### הכחשת השירות

תוקף יכול להעלות מסמך שהתייחס אליו או כלל תמונות גדולות מאוד - מה שנקרא "הפצצות מדכאות". בעת עיבוד התמונות האלה, הספרייה תצרכו כמויות עצומות של זיכרון וזמן CPU.

### Serverהמונחים: Forgery Via Linked content

תוקף יכול ליצור סדרה של מסמכים המכילים קישורים מוטבעים לשילובים משותפים של כתובת IP פנימית ונמל, ולאחר מכן להגיש אותם לשירות אינטרנט באמצעות שירות אינטרנט. Aspose.Words ספריה לעיבוד המסמכים

בהתבסס על משך הזמן שבו השירות משתמש כדי לעבד את המסמך, התוקף יכול לקבוע אם שילוב IP/פורט נתון מסונן על ידי חומת אש:

- זמן עיבוד ארוך יותר מציין כי חבילת TCP SYN שנשלחה על ידי השרת הוטלה על ידי חומת אש
- זמן עיבוד מהיר מעיד על קשר מוצלח

## פתרונות לבעיות אבטחה

כדי לפתור את הבעיות המתוארות לעיל ולשפר את האבטחה של יישומי אינטרנט, אתה יכול לשלוט או להשבית טעינה של משאבים חיצוניים באמצעות שימוש [IResourceLoadingCallback](https://reference.aspose.com/words/net/aspose.words.loading/iresourceloadingcallback/).

דוגמה לקוד הבא מראה כיצד להשבית תמונות חיצוניות:

**.NET**
{{< highlight csharp >}}

public class DisableExternalImagesHandler : IResourceLoadingCallback
{
    public ResourceLoadingAction ResourceLoading(ResourceLoadingArgs args)
    {
        // Skip external images loading.
        return (args.ResourceType == ResourceType.Image)
            ? ResourceLoadingAction.Skip
            : ResourceLoadingAction.Default;
    }
}
...
const string documentFilename = "input.docx";
var disableExternalImagesOptions = new LoadOptions
{
    ResourceLoadingCallback = new DisableExternalImagesHandler()
};
var doc = new Document(documentFilename, disableExternalImagesOptions);

{{< /highlight >}}

דוגמה לקוד הבא מראה כיצד להשבית משאבים מרוחקים:

**.NET**
{{< highlight csharp >}}

private class DisableRemoteResourcesHandler : IResourceLoadingCallback
{
    public ResourceLoadingAction ResourceLoading(ResourceLoadingArgs args)
    {
        return IsLocalResource(args.OriginalUri)
            ? ResourceLoadingAction.Default
            : ResourceLoadingAction.Skip;
    }

    private static bool IsLocalResource(string fileName)
    {
        DirectoryInfo dirInfo;
        try
        {
            var dirName = Path.GetDirectoryName(fileName);
            if (string.IsNullOrEmpty(dirName))
                return false;
            dirInfo = new DirectoryInfo(dirName);
        }
        catch
        {
            return false;
        }
    
        foreach (DriveInfo d in DriveInfo.GetDrives())
        {
            if (string.Compare(dirInfo.Root.FullName, d.Name, StringComparison.OrdinalIgnoreCase) == 0)
                return d.DriveType != DriveType.Network;
        }
    
        return false;
    }
}
...
var disableRemoteResourcesOptions = new LoadOptions
{
    ResourceLoadingCallback = new DisableRemoteResourcesHandler()
};
var doc = new Document(documentFilename, disableRemoteResourcesOptions);

{{< /highlight >}}

{{% alert color="primary" %}}

מאמר זה מבוסס על חברת ייעוץ עצמאי הערכת אבטחה [דיווח](/words/net/web-applications-security-when-loading-external-resources/ise-aspose-report.pdf).

{{% /alert %}}
