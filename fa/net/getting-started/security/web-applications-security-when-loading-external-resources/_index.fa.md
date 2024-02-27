---
title: امنیت برنامه وب هنگام بارگیری منابع
second_title: Aspose.Words برای .NET
articleTitle: امنیت برنامه های کاربردی وب هنگام بارگیری منابع خارجی
linktitle: امنیت برنامه های کاربردی وب هنگام بارگیری منابع خارجی
type: docs
description: "بارگیری منابع راه دور، که می تواند دلیلی برای خطرات امنیتی باشد. نگاهی به مسائل امنیتی رایج و راه حل های آنها با استفاده از C# بیندازید."
weight: 100
url: /fa/net/web-applications-security-when-loading-external-resources/
---

به طور پیش فرض، Aspose.Words برای .NET می تواند منابع راه دور مانند تصاویر، سبک های CSS یا اسناد HTML خارجی را هنگام وارد کردن اسناد یا درج تصاویر با استفاده از DocumentBuilder بارگیری کند. این رفتار به شما امکان می دهد اسناد خود را با جزئیات کامل پردازش کنید، اما اگر کتابخانه بخشی از یک برنامه وب باشد، می تواند دلیلی بر برخی خطرات امنیتی باشد.

در این مقاله، نگاهی به مسائل امنیتی رایجی که می‌تواند هنگام بارگیری منابع خارجی ایجاد شود، می‌اندازیم و توصیه‌هایی برای جلوگیری از چنین مشکلاتی ارائه می‌کنیم.

{{% alert color="primary" %}}

Aspose.Words به عنوان نرم افزار آنتی ویروس عمل نمی کند. بنابراین، اطلاعاتی در مورد وجود اجزای مخرب در سند ارائه نمی دهد. برای اطمینان از امنیت داده های خود، اسناد به دست آمده از یک منبع خارجی را خودتان بررسی کنید. به نوبه خود، Aspose.Words توصیه هایی در مورد نحوه برخورد با مشکلاتی که ممکن است هنگام بارگیری منابع خارجی ایجاد شود، ارائه می دهد.

{{% /alert %}}

## مسائل امنیتی

تعدادی از مشکلات امنیتی معمولی هنگام بارگیری منابع خارجی وجود دارد.

### افشای اعتبار از طریق تصاویر مرتبط

در میزبان های مبتنی بر Windows، اسناد حاوی ارجاع به منابعی که از مسیرهای UNC مانند *'\\example.com\a\b*' استفاده می کنند به طور پیش فرض پردازش می شوند. در یک محیط دامنه، این باعث می شود که هاست اعتبار دامنه خود را با فرمت هش شده به سرور مشخص شده ارسال کند.

اگر مهاجم بتواند یک کاربر یا سرور را متقاعد کند که سندی را با چنین پیوند منبعی که به میزبانی که کنترل می‌کند را پردازش کند، مهاجم اعتبار کاربری یا حساب کاربری سرویس را در قالب هش NTLM دریافت می‌کند. سپس می‌توان از چنین داده‌هایی در یک حمله کلاسیک پاس در هش استفاده کرد و به مهاجم اجازه می‌دهد به عنوان کاربر قربانی یا حساب سرویس به هر منبعی دسترسی پیدا کند.

اگر حساب مورد نظر از یک رمز عبور ضعیف یا قابل حدس زدن استفاده کند، مهاجم علاوه بر این می‌تواند یک حمله شکستن رمز عبور برای بازیابی رمز عبور حساب برای استفاده مخرب بیشتر انجام دهد.

### افشای تصویر محلی از طریق تصاویر پیوندی

مشابه مورد قبلی، پردازش یک سند با ارجاع به یک فایل تصویر محلی منجر به قرار گرفتن آن فایل در سند نهایی می شود. این می تواند منجر به افشای اطلاعات حساس شود.

### خود داری از خدمات

مهاجم می‌تواند سندی را آپلود کند که یا به تصاویر بسیار بزرگ ارجاع می‌دهد یا حاوی تصاویر بسیار بزرگ است - به اصطلاح "بمب‌های رفع فشار". هنگام پردازش این تصاویر، کتابخانه مقدار زیادی از حافظه و زمان CPU را مصرف می کند.

### جعل درخواست Server-Side از طریق محتوای پیوندی

مهاجم می تواند مجموعه ای از اسناد حاوی پیوندهای تعبیه شده به ترکیبات رایج آدرس IP داخلی و پورت ایجاد کند، سپس آنها را با استفاده از کتابخانه Aspose.Words برای پردازش اسناد به یک سرویس وب ارسال کند.

بر اساس مدت زمانی که سرویس برای پردازش سند استفاده می‌کند، مهاجم می‌تواند تشخیص دهد که آیا ترکیب IP/Port معین توسط فایروال فیلتر شده است یا خیر:

- زمان پردازش طولانی تر نشان می دهد که بسته TCP SYN ارسال شده توسط سرور توسط یک فایروال رها شده است
- زمان پردازش سریع نشان می دهد که یک اتصال موفق انجام شده است

## راه حل مسائل امنیتی

برای حل مشکلات توضیح داده شده در بالا و بهبود امنیت برنامه های کاربردی وب، می توانید بارگیری منابع خارجی را با استفاده از [IResourceLoadingCallback](https://reference.aspose.com/words/net/aspose.words.loading/iresourceloadingcallback/) کنترل یا غیرفعال کنید.

مثال کد زیر نحوه غیرفعال کردن بارگذاری تصاویر خارجی را نشان می دهد:

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

مثال کد زیر نحوه غیرفعال کردن منابع راه دور را نشان می دهد:

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

این مقاله بر اساس شرکت مشاوره Independent Security Evaluators [گزارش](/words/net/web-applications-security-when-loading-external-resources/ise-aspose-report.pdf) است.

{{% /alert %}}
