---
title: Web App Security هنگام بارگذاری منابع
second_title: Aspose.Words برای Java
articleTitle: امنیت برنامه های وب هنگام بارگذاری منابع خارجی
linktitle: امنیت برنامه های وب هنگام بارگذاری منابع خارجی
type: docs
description: "منابع از راه دور، که می تواند یک دلیل از خطرات امنیتی باشد. نگاهی به مسائل امنیتی مشترک و راه حل های آنها در Java..."
weight: 120
url: /fa/java/web-applications-security-when-loading-external-resources/
timestamp: 2024-01-27-14-07-04
---

به طور پیش فرض، Aspose.Words برای Java می تواند منابع از راه دور مانند تصاویر، سبک های CSS یا اسناد HTML خارجی را هنگام واردات اسناد و یا قرار دادن تصاویر با استفاده از DocumentBuilder بارگیری کند. این رفتار به شما اجازه می دهد تا اسناد خود را به طور کامل پردازش کنید اما می تواند دلیل برخی از خطرات امنیتی باشد اگر کتابخانه بخشی از یک برنامه وب باشد.

در این مقاله نگاهی به مسائل امنیتی رایج می اندازیم که می توانند هنگام بارگیری منابع خارجی ایجاد شوند و توصیه هایی در مورد چگونگی جلوگیری از چنین مشکلاتی ارائه دهند.

{{% alert color="primary" %}}

Aspose.Words به عنوان نرم افزار آنتی ویروس عمل نمی کند. بنابراین، اطلاعاتی در مورد حضور اجزای مخرب در سند ارائه نمی دهد. برای اطمینان از امنیت اطلاعات خود، اسناد به دست آمده از یک منبع خارجی را بررسی کنید. به نوبه خود، Aspose.Words توصیه هایی در مورد چگونگی مقابله با مشکلاتی که می تواند در هنگام بارگیری منابع خارجی ایجاد شود، ارائه می دهد.

{{% /alert %}}

## مسائل امنیتی

در هنگام بارگیری منابع خارجی چند مشکل امنیتی وجود دارد.

### Credential Disclosure از طریق تصاویر لینک شده

On On Windows- میزبان های مبتنی بر، اسناد حاوی ارجاعات به منابعی که از مسیرهای UNC مانند * '''''''''texample.com\a\b' استفاده می کنند، به طور پیش فرض پردازش خواهند شد. در یک محیط دامنه، این امر باعث می شود میزبان اعتبار دامنه خود را در یک فرمت حک شده به سرور مشخص ارسال کند.

اگر یک مهاجم قادر به متقاعد کردن یک کاربر یا سرور برای پردازش یک سند با چنین پیوند منابع اشاره به میزبان که آنها کنترل می کنند، مهاجم اعتبار حساب کاربری یا خدمات را در فرمت هش NTLM دریافت خواهد کرد. این داده ها را می توان در یک حمله عبور کلاسیک استفاده کرد که به مهاجم اجازه می دهد به هر منبع به عنوان کاربر قربانی یا حساب خدمات دسترسی پیدا کند.

اگر حساب کاربری در سوال از یک رمز عبور ضعیف یا قابل حدس زدن استفاده کند، مهاجم همچنین می تواند یک حمله شکستن رمز عبور برای بازیابی رمز عبور حساب برای استفاده بیشتر مخرب انجام دهد.

### تصویر محلی Disclosure از طریق تصاویر لینک شده

همانند پرونده قبلی، پردازش یک سند با یک مرجع به یک فایل تصویر محلی منجر به آن فایل موجود در سند نهایی خواهد شد. این می تواند منجر به افشای اطلاعات حساس شود.

### انکار خدمات

یک مهاجم می تواند یک سند را آپلود کند که یا تصاویر بسیار بزرگ را شامل می شود - به اصطلاح "بمب های فشرده". هنگام پردازش این تصاویر، کتابخانه مقدار زیادی حافظه و زمان CPU را مصرف می کند.

### Serverدرخواست برایgery Via Linked Content

یک مهاجم می تواند مجموعه ای از اسناد را ایجاد کند که شامل لینک های جاسازی شده به ترکیبات مشترک آدرس IP داخلی و پورت است، سپس آنها را به یک سرویس وب با استفاده از آن ارسال کند. Aspose.Words کتابخانه برای پردازش اسناد

بر اساس طول مدت زمانی که سرویس برای پردازش سند استفاده می شود، مهاجم می تواند تعیین کند که آیا ترکیب IP / پورت داده شده توسط یک فایروال فیلتر شده است:

- زمان پردازش طولانی تر نشان می دهد که بسته TCP SYN ارسال شده توسط سرور توسط یک فایروال کاهش یافته است
- زمان پردازش سریع نشان می دهد که یک ارتباط موفق ایجاد شده است

## راه حل های مسائل امنیتی

برای حل مشکلات شرح داده شده در بالا و بهبود امنیت برنامه های وب، شما می توانید با استفاده از منابع خارجی کنترل یا غیرفعال کنید. [IResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/iresourceloadingcallback/)...

مثال کد زیر نشان می دهد که چگونه بارگذاری تصاویر خارجی را غیرفعال کنیم:

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

مثال کد زیر نشان می دهد که چگونه منابع از راه دور را غیرفعال کنیم:

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

این مقاله بر اساس ارزیابی های شرکت مشاوره مستقل امنیت است [گزارش گزارش](/words/java/web-applications-security-when-loading-external-resources/ise-aspose-report.pdf)...

{{% /alert %}}

