---
title: امنیت برنامه های وب هنگام بارگذاری منابع
second_title: Aspose.Words برای Java
articleTitle: امنیت برنامه های وب هنگام بارگذاری منابع خارجی
linktitle: امنیت برنامه های وب هنگام بارگذاری منابع خارجی
type: docs
description: "منابع از راه دور را بارگذاری کنید، که می تواند دلیل خطرات امنیتی باشد. نگاهی به مسائل امنیتی رایج و راه حل های آنها در Java بیندازید."
weight: 120
url: /fa/java/web-applications-security-when-loading-external-resources/
timestamp: 2024-01-27-14-07-04
---

به طور پیش فرض، Aspose.Words برای Java می تواند منابع از راه دور مانند تصاویر، CSS سبک ها یا اسناد خارجی HTML را هنگام وارد کردن اسناد یا قرار دادن تصاویر با استفاده از DocumentBuilder بارگذاری کند. این رفتار به شما اجازه می دهد تا اسناد خود را به طور کامل پردازش کنید اما می تواند دلیل برخی از خطرات امنیتی باشد اگر کتابخانه بخشی از یک برنامه وب باشد.

در این مقاله، ما نگاهی به مسائل امنیتی رایج می اندازیم که می تواند هنگام بارگیری منابع خارجی ایجاد شود و توصیه هایی در مورد چگونگی جلوگیری از چنین مشکلاتی ارائه می دهیم.

{{% alert color="primary" %}}

Aspose.Words به عنوان نرم افزار آنتی ویروس عمل نمی کند. بنابراین، اطلاعاتی در مورد وجود اجزای مخرب در سند ارائه نمی دهد. برای اطمینان از امنیت داده های خود، اسناد به دست آمده از یک منبع خارجی را خودتان بررسی کنید. به نوبه خود، Aspose.Words توصیه هایی در مورد چگونگی مقابله با مشکلاتی که ممکن است هنگام بارگیری منابع خارجی ایجاد شود، ارائه می دهد.

{{% /alert %}}

## مسائل امنیتی

تعدادی از مشکلات امنیتی معمولی هنگام بارگذاری منابع خارجی وجود دارد.

### افشای اعتبار از طریق تصاویر مرتبط

در میزبان های مبتنی بر Windows، اسناد حاوی مرجع به منابع که از مسیرهای UNC مانند *'\\example.com\a\b*' استفاده می کنند، به طور پیش فرض پردازش می شوند. در یک محیط دامنه، این باعث می شود که میزبان اعتبارنامه های دامنه خود را در قالب هش به سرور مشخص شده ارسال کند.

اگر یک مهاجم قادر به متقاعد کردن یک کاربر یا سرور برای پردازش یک سند با چنین لینک منبع به یک میزبان که کنترل می کند، مهاجم اعتبارنامه های حساب کاربر یا سرویس را در فرمت NTLM هش دریافت خواهد کرد. چنین داده هایی می توانند در یک حمله کلاسیک عبور از هش استفاده شوند، به مهاجم اجازه می دهد تا به هر منبع به عنوان کاربر قربانی یا حساب سرویس دسترسی پیدا کند.

اگر حساب مورد نظر از یک رمز عبور ضعیف یا قابل حدس استفاده کند، مهاجم می تواند علاوه بر این یک حمله شکستن رمز عبور را برای بازیابی رمز عبور حساب برای استفاده مخرب بیشتر انجام دهد.

### افشای تصاویر محلی از طریق تصاویر مرتبط

مشابه مورد قبلی، پردازش یک سند با اشاره به یک فایل تصویر محلی منجر به این خواهد شد که این فایل در سند نهایی گنجانده شود. این می تواند منجر به افشای اطلاعات حساس شود.

### انکار خدمات

یک مهاجم می تواند سندی را آپلود کند که به تصاویر بسیار بزرگ اشاره داشته باشد یا شامل آن باشد – به اصطلاح "بمب های فشرده سازی". هنگام پردازش این تصاویر، کتابخانه مقدار زیادی حافظه و CPU زمان مصرف خواهد کرد.

### درخواست جعل سمت سرور از طریق محتوای مرتبط

یک مهاجم می تواند یک سری از اسناد حاوی لینک های جاسازی شده به ترکیب های رایج آدرس و پورت داخلی IP ایجاد کند، سپس آنها را با استفاده از کتابخانه Aspose.Words برای پردازش اسناد به یک سرویس وب ارسال کند.

بر اساس مدت زمانی که سرویس برای پردازش سند استفاده می کند، مهاجم می تواند تعیین کند که آیا یک ترکیب IP/پورت داده شده توسط یک فایروال فیلتر شده است:

- زمان پردازش طولانی تر نشان می دهد که بسته TCP SYN ارسال شده توسط سرور توسط یک فایروال رها شده است
- زمان پردازش سریع نشان می دهد که یک اتصال موفق ساخته شده است

## راه حل های مسائل امنیتی

برای حل مشکلات توضیح داده شده در بالا و بهبود امنیت برنامه های وب، می توانید بارگذاری منابع خارجی را با استفاده از [IResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/iresourceloadingcallback/) کنترل یا غیرفعال کنید.

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

این مقاله بر اساس شرکت مشاوره، ارزیابی کنندگان امنیتی مستقل است [گزارش](/words/java/web-applications-security-when-loading-external-resources/ise-aspose-report.pdf).

{{% /alert %}}

