---
title: Web App אבטחה בעת טעינת משאבים
second_title: Aspose.Words עבור Java
articleTitle: דרישות אינטרנט אבטחה בעת טעינת משאבים חיצוניים
linktitle: דרישות אינטרנט אבטחה בעת טעינת משאבים חיצוניים
type: docs
description: "לטעון משאבים מרחוק, זה יכול להיות סיבה של סיכונים ביטחוניים. הסתכלו על בעיות אבטחה נפוצות ועל הפתרונות שלהם Java."
weight: 120
url: /he/java/web-applications-security-when-loading-external-resources/
---

כברירת מחדל, Aspose.Words עבור Java ניתן לטעון משאבים מרוחקים כגון תמונות, סגנונות CSS, או מסמכי HTML חיצוניים בעת ייבוא מסמכים או הוספת תמונות באמצעות מסמך בונה. התנהגות זו מאפשרת לך לעבד את המסמכים שלך בפירוט מלא אבל יכול להיות סיבה של כמה סיכונים אבטחה אם הספריה היא חלק יישום אינטרנט.

במאמר זה, אנו בודקים סוגיות אבטחה נפוצות שיכולות להתעורר כאשר הן טוענות משאבים חיצוניים ומספקות המלצות כיצד להימנע מבעיות כאלה.

{{% alert color="primary" %}}

Aspose.Words לא מתפקד כמו תוכנת אנטי וירוס. לכן, זה לא מספק מידע על נוכחות של רכיבים זדוניים במסמך. כדי להבטיח את אבטחת המידע שלך, בדוק מסמכים המתקבלים ממקור חיצוני בעצמך. בתורו, Aspose.Words מספק המלצות על איך להתמודד עם בעיות שעלולות להתעורר בעת טעינת משאבים חיצוניים.

{{% /alert %}}

## בעיות אבטחה

ישנם מספר בעיות אבטחה טיפוסיות בעת טעינת משאבים חיצוניים.

### גילוי נאות תמונות מקושרות

On On Windows- מארחים מבוססים, מסמכים המכילים הפניות למשאבים המשתמשים בנתיבים של האו"ם כגון * "example.com\a\b*" יעובדו כברירת מחדל. בסביבה דומיין, זה יגרום למארח לשלוח את אישורי התחום שלו בפורמט מעוגל לשרת שצוין.

אם תוקף יכול לשכנע משתמש או שרת לעבד מסמך עם קישור משאבים כזה מצביע על מארח שהם שולטים, התוקף יקבל את אישור המשתמש או השירות בפורמט NTLM hash. לאחר מכן ניתן להשתמש בנתונים אלה בהתקפה קלאסית של מעבר-האש, מה שמאפשר לתוקפים לקבל גישה לכל משאב כמשתמש הקורבן או חשבון שירות.

אם החשבון המדובר משתמש בסיסמה חלשה או סבירה, התוקף יכול גם לבצע פיגוע פצח סיסמה כדי לשחזר את הסיסמה של החשבון לשימוש זדוני נוסף.

### גילוי תמונות מקומי תמונות מקושרות

בדומה למקרה הקודם, עיבוד מסמך עם התייחסות לקובץ תמונה מקומי יביא לקובץ זה הכלול במסמך הסופי. זה יכול להוביל לגילוי מידע רגיש.

### הכחשת השירות

תוקף יכול להעלות מסמך שהתייחס אליו או כלל תמונות גדולות מאוד - מה שנקרא "הפצצות מדכאות". בעת עיבוד התמונות האלה, הספרייה תצרכו כמויות עצומות של זיכרון וזמן CPU.

### Serverהמונחים: Forgery Via Linked content

תוקף יכול ליצור סדרה של מסמכים המכילים קישורים משובצים לשילובים משותפים של כתובת IP פנימית ונמל, ולאחר מכן להגיש אותם לשירות אינטרנט באמצעות שירות אינטרנט. Aspose.Words ספרייה לעיבוד המסמכים

בהתבסס על משך הזמן השימוש בשירות כדי לעבד את המסמך, התוקף יכול לקבוע אם שילוב IP/פורט נתון מסונן על ידי חומת אש:

- זמן עיבוד ארוך יותר מציין כי חבילת TCP SYN שנשלחה על ידי השרת הוטלה על ידי חומת אש
- זמן עיבוד מהיר מצביע על קשר מוצלח

## פתרונות לבעיות אבטחה

כדי לפתור את הבעיות המתוארות לעיל ולשפר את האבטחה של יישומי אינטרנט, אתה יכול לשלוט או להשבית טעינה של משאבים חיצוניים באמצעות שימוש [IResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/iresourceloadingcallback/).

דוגמה לקוד הבא מראה כיצד להשבית תמונות חיצוניות טעינה:

**Java**
{{< highlight csharp >}}
public void loadDocument(String documentFilename) throws Exception
{
	LoadOptions disableExternalImagesOptions = new LoadOptions();
	disableExternalImagesOptions.setResourceLoadingCallback(new DisableExternalImagesHandler());

	Document doc = new Document(documentFilename, disableExternalImagesOptions);
}

public static class DisableExternalImagesHandler implements IResourceLoadingCallback
{
	public /*ResourceLoadingAction*/int resourceLoading(ResourceLoadingArgs args)
	{
		// Skip external images loading.
		return (args.getResourceType() == ResourceType.IMAGE)
			? ResourceLoadingAction.SKIP
			: ResourceLoadingAction.DEFAULT;
	}
}
{{< /highlight >}}

דוגמה לקוד הבא מראה כיצד להשבית משאבים מרוחקים:

**Java**
{{< highlight csharp >}}
public void loadDocument2(String documentFilename) throws Exception
{
	LoadOptions disableRemoteResourcesOptions = new LoadOptions();
	disableRemoteResourcesOptions.setResourceLoadingCallback(new DisableRemoteResourcesHandler());
	
	Document doc = new Document(documentFilename, disableRemoteResourcesOptions);
}	

private static class DisableRemoteResourcesHandler implements IResourceLoadingCallback
{
	public /*ResourceLoadingAction*/int resourceLoading(ResourceLoadingArgs args) throws Exception
	{
		return isLocalResource(args.getOriginalUri())
			? ResourceLoadingAction.DEFAULT
			: ResourceLoadingAction.SKIP;
	}

	// Simplified code.
	private static boolean isLocalResource(String fileName) throws Exception
	{
		String protocol = null;
	
		URI uri = new URI(fileName);
		if (uri.isAbsolute())
		{
			protocol = uri.getScheme();
		}
		else
		{
			URL url = new URL(fileName);
			protocol = url.getProtocol();
		}
	
		return "file".equalsIgnoreCase(protocol);
	}
}
{{< /highlight >}}

{{% alert color="primary" %}}

מאמר זה מבוסס על חברת הייעוץ עצמאי אבטחת מידע [דיווח](/words/java/web-applications-security-when-loading-external-resources/ise-aspose-report.pdf).

{{% /alert %}}

