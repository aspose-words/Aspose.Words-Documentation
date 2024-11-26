---
title: אבטחת אפליקציות אינטרנט בעת טעינת משאבים
second_title: Aspose.Words עבור C++
articleTitle: אבטחת יישומי אינטרנט בעת טעינת משאבים חיצוניים
linktitle: אבטחת יישומי אינטרנט בעת טעינת משאבים חיצוניים
type: docs
description: "טען משאבים מרוחקים, זה יכול להיות סיבה של סיכוני אבטחה. תסתכל על בעיות אבטחה נפוצות והפתרונות שלהם ב C++."
weight: 50
url: /he/cpp/web-applications-security-when-loading-external-resources/
timestamp: 2024-01-30-16-22-34
---

כברירת מחדל, Aspose.Words עבור C++ יכול לטעון משאבים מרוחקים כגון תמונות, CSS סגנונות, או חיצוני HTML מסמכים בעת ייבוא מסמכים או הוספת תמונות באמצעות DocumentBuilder. התנהגות זו מאפשרת לך לעבד את המסמכים שלך בפירוט מלא אך יכולה להיות סיבה לסיכוני אבטחה מסוימים אם הספרייה היא חלק מיישום אינטרנט.

במאמר זה, אנו נסתכל על בעיות אבטחה נפוצות שעלולות להתעורר בעת טעינת משאבים חיצוניים ולספק המלצות כיצד להימנע מבעיות כאלה.

{{% alert color="primary" %}}

Aspose.Words אינו מתפקד כתוכנת אנטי-וירוס. לכן, הוא אינו מספק מידע על נוכחותם של רכיבים זדוניים במסמך. כדי להבטיח את אבטחת הנתונים שלך, בדוק בעצמך מסמכים המתקבלים ממקור חיצוני. בתורו, Aspose.Words מספק המלצות כיצד להתמודד עם בעיות שעלולות להתעורר בעת טעינת משאבים חיצוניים.

{{% /alert %}}

## בעיות אבטחה

ישנן מספר בעיות אבטחה אופייניות בעת טעינת משאבים חיצוניים.

### גילוי אישורים באמצעות תמונות מקושרות

במארחים מבוססי Windows, מסמכים המכילים הפניות למשאבים המשתמשים בנתיבים UNC כגון * '\ \example.com\a\b * ' יעובד כברירת מחדל. בסביבת דומיין, הדבר יגרום למארח לשלוח את אישורי הדומיין שלו בפורמט גיבוב לשרת שצוין.

אם תוקף מסוגל לשכנע משתמש או שרת לעבד מסמך עם קישור משאב כזה שמצביע על מארח שהם שולטים בו, התוקף יקבל את אישורי המשתמש או חשבון השירות בפורמט חשיש NTLM. נתונים כאלה יכולים לשמש מחדש בהתקפה קלאסית של מעבר-החשיש, המאפשרת לתוקף לקבל גישה לכל משאב כמשתמש הקורבן או חשבון השירות.

אם החשבון המדובר משתמש בסיסמה חלשה או ניתנת לניחוש, התוקף יכול בנוסף לבצע התקפת פיצוח סיסמאות כדי לשחזר את סיסמת החשבון לשימוש זדוני נוסף.

### גילוי תמונות מקומי באמצעות תמונות מקושרות

בדומה למקרה הקודם, עיבוד מסמך עם התייחסות לקובץ תמונה מקומי יגרום לקובץ זה להיות כלול במסמך הסופי. זה יכול להוביל לחשיפת מידע רגיש.

### מניעת שירות

תוקף יכול להעלות מסמך שהפנה או כלל תמונות גדולות מאוד - מה שנקרא "פצצות דקמפרסיה". בעת עיבוד תמונות אלה, הספרייה תצרוך כמויות אדירות של זיכרון ו CPU זְמַן.

### זיוף בקשה בצד השרת באמצעות תוכן מקושר

תוקף יכול ליצור סדרה של מסמכים המכילים קישורים מוטמעים לשילובים נפוצים של כתובת פנימית IP ויציאה, ואז לשלוח אותם לשירות אינטרנט באמצעות הספרייה Aspose.Words כדי לעבד את המסמכים.

בהתבסס על משך הזמן שהשירות משתמש בו לעיבוד המסמך, התוקף יכול לקבוע אם שילוב IP / יציאה נתון מסונן על ידי חומת אש:

- זמן עיבוד ארוך יותר מציין שהחבילה TCP SYN שנשלחה על ידי השרת הושמטה על ידי חומת אש
- זמן עיבוד מהיר מציין חיבור מוצלח נעשה

## פתרונות של בעיות אבטחה

כדי לפתור את הבעיות שתוארו לעיל ולשפר את האבטחה של יישומי אינטרנט, באפשרותך לשלוט או להשבית טעינה של משאבים חיצוניים באמצעות [IResourceLoadingCallback](https://reference.aspose.com/words/cpp/aspose.words.loading/iresourceloadingcallback/).

דוגמת הקוד הבאה מראה כיצד להשבית טעינת תמונות חיצוניות:

**C++**
{{< highlight cpp >}}
class DisableExternalImagesHandler : public IResourceLoadingCallback
{
public:
	ResourceLoadingAction ResourceLoading(System::SharedPtr<ResourceLoadingArgs> args) override
	{
		// Skip external images loading.
		return args->get_ResourceType() == ResourceType::Image
			? ResourceLoadingAction::Skip
			: ResourceLoadingAction::Default;
		}
};

void LoadDocument(const System::String& documentFilename)
{
	auto disableExternalImagesHandler = System::MakeObject<LoadOptions>();

disableExternalImagesHandler->set_ResourceLoadingCallback(System::MakeObject<DisableExternalImagesHandler>());

	auto doc = System::MakeObject<Document>(documentFilename, disableExternalImagesHandler);
}
{{< /highlight >}}

דוגמת הקוד הבאה מראה כיצד להשבית משאבים מרוחקים:

**C++**
{{< highlight cpp >}}
class DisableRemoteResourcesHandler : public IResourceLoadingCallback
{
	static bool IsLocalResource(const System::String& originalUri)
	{
		// CodePorting.CsToCpp.Native.API can handle only absolute uri
		auto uri = System::MakeObject<System::Uri>(originalUri);
		if (uri->get_IsAbsoluteUri())
		{
			return uri->get_Scheme().Equals(u"file", System::StringComparison::OrdinalIgnoreCase);
		}

		return false;
	}
public:
	ResourceLoadingAction ResourceLoading(System::SharedPtr<ResourceLoadingArgs> args) override
	{
		return IsLocalResource(args->get_OriginalUri())
			? ResourceLoadingAction::Default
			: ResourceLoadingAction::Skip;
	}
};

void LoadDocument(const System::String& documentFilename)
{
	auto disableRemoteResourcesHandler = System::MakeObject<LoadOptions>();

disableRemoteResourcesHandler->set_ResourceLoadingCallback(System::MakeObject<DisableRemoteResourcesHandler>());

	auto doc = System::MakeObject<Document>(documentFilename, disableRemoteResourcesHandler);
}
{{< /highlight >}}

{{% alert color="primary" %}}

מאמר זה מבוסס על מעריכי האבטחה העצמאיים של חברת הייעוץ [דוח](ise-aspose-report.pdf).

{{% /alert %}}
