---
title: صدور مجوز
second_title: Aspose.Words برای Java
articleTitle: صدور مجوز
linktitle: صدور مجوز
description: "مجوز Aspose.Words برای Android از طریق Java."
type: docs
weight: 60
url: /fa/java/licensing-android/
timestamp: 2024-02-02-12-07-36
---

گاهی اوقات، برای مطالعه بهتر سیستم، می خواهید هرچه سریعتر وارد کد شوید. برای اینکه این کار آسان تر شود، Aspose.Words برنامه های مختلفی برای خرید ارائه می دهد یا یک آزمایش رایگان و یک مجوز موقت 30 روزه برای ارزیابی ارائه می دهد.

{{% alert color="primary" %}}

توجه داشته باشید که تعدادی از سیاست ها و شیوه های کلی وجود دارد که شما را در مورد چگونگی ارزیابی، مجوز مناسب و خرید محصولات ما راهنمایی می کند. شما می توانید آنها را در [سیاست های خرید FAQ](https://purchase.aspose.com/policies/) بخش.

{{% /alert %}}

## آزمایشی رایگان یا مجوز موقت

Aspose.Words نرم افزاری باورنکردنی است که توسعه دهندگان می توانند قبل از خرید آن را امتحان کنند. شما به راحتی می توانید دانلود / نصب Aspose.Words برای Java و Aspose.Words برای Android از طریق Java [از صفحه دانلود](https://releases.aspose.com/words/androidjava/) برای ارزیابی.

نسخه ارزیابی همان نسخه خریداری شده است-نسخه آزمایشی به سادگی زمانی که شما چند خط کد را برای اعمال مجوز اضافه می کنید، مجوز می گیرد.

{{% alert color="primary" %}}

اطلاعات بیشتر در مورد آزمایش رایگان یا مجوز موقت برای Aspose.Words برای Android از طریق Java در [صفحه صدور مجوز و اشتراک](/words/java/licensing/).

{{% /alert %}}

## مجوز خریداری شده

پس از خرید، باید فایل مجوز را اعمال کنید یا فایل مجوز را به عنوان یک منبع جاسازی شده وارد کنید. این بخش گزینه هایی از چگونگی انجام این کار را توصیف می کند و همچنین در مورد برخی از سوالات رایج اظهار نظر می کند.

{{% alert color="primary" %}}

مجوز یک فایل متن ساده XML است که شامل جزئیات مانند نام محصول، تعداد توسعه دهندگان مجاز، تاریخ انقضای اشتراک و غیره است.

فایل به صورت دیجیتالی امضا شده است، بنابراین فایل را تغییر ندهید. حتی اضافه کردن ناخواسته یک خط اضافی به فایل آن را باطل خواهد کرد.

{{% /alert %}}

{{% alert color="primary" %}}

شما باید مجوز را تنظیم کنید:

* فقط یک بار در هر دامنه برنامه
* قبل از استفاده از هر کلاس Aspose.Words دیگر

{{% /alert %}}

{{% alert color="primary" %}}

شما می توانید اطلاعات قیمت گذاری را در [اطلاعات قیمت گذاری](https://purchase.aspose.com/pricing/words/family/) صفحه.

{{% /alert %}}

### محافظت از مجوز خریداری شده شما

پس از خرید مجوز، باید اطلاعات موجود در صفحه را با دقت بخوانید [محافظت از مجوز خریداری شده شما](https://purchase.aspose.com/orders/protecting-your-license-file) برای محافظت از پرونده مجوز شما. لطفا توجه داشته باشید که این صفحه فقط در صورتی برای مشاهده در دسترس است که مجوز پرداخت شده داشته باشید.

### گزینه های استفاده از مجوز

مجوزها را می توان از مکان های مختلف اعمال کرد:

* مسیر صریح
* یک منبع جاسازی شده
* به عنوان یک مجوز اندازه گیری شده یک مکانیسم مجوز جدید

#### در حال بارگذاری فایل لایسنس

در Aspose.Words برای Android از طریق Java، مجوز می تواند [به عنوان یک منبع جاسازی شده است](/words/java/licensing/)، یا از یک جریان بارگذاری شده:

1. فایل مجوز را در هر مکان روی **/mnt/sdcard/** قرار دهید.
1. یک جریان ایجاد کنید که به فایل ارجاع دهد.
1. جریان (حاوی فایل مجوز) را به روش `SetLicense` منتقل کنید.

**Java**

{{< highlight java >}}
String dataDir = Environment.getExternalStorageDirectory().getPath() + "/";

// Create a stream object containing the license file
FileInputStream fstream = new FileInputStream(dataDir + "Aspose.Email.Android.Java.lic");

// Instantiate the `License` class
License license = new License();
//Set the license through the stream object
license.setLicense(fstream);
{{< /highlight >}}

استفاده از مجوز از یک منبع جاسازی شده. برای دسترسی به مجوز به عنوان یک منبع با نام از یک فایل بسته Android:

1. فایل مجوز را به عنوان یک منبع به پوشه **res/raw** برنامه خود اضافه کنید.
   فایل مجوز باید در پوشه **res/raw** قابل مشاهده باشد.
1. دسترسی / بارگذاری مجوز از منبع با نمونه کد زیر.

**Java**

{{< highlight java >}}
License license = new License();
InputStream inputStream = getResources().openRawResource(R.raw.license);
license.setLicense(inputStream);
{{< /highlight >}}

#### درخواست مجوز متر

Aspose.Words به توسعه دهندگان اجازه می دهد تا کلید اندازه گیری شده را اعمال کنند. این یک مکانیسم جدید مجوز است. مکانیسم جدید مجوز همراه با روش مجوز موجود استفاده خواهد شد. مشتریانی که می خواهند بر اساس استفاده از ویژگی های API صورتحساب شوند می توانند از مجوز اندازه گیری شده استفاده کنند.

**Java**

{{< highlight java >}}
Metered metered = new Metered();
try
{
	// Access the setMeteredKey property and pass public and private keys as parameters
    metered.setMeteredKey(publicKey, privateKey);
	Log.i("Metered License", "Ok. Metered License has been applied successfully.");
}
catch (Exception ex)
{
    ex.printStackTrace();
    Log.e("Metered License", "Setting metered key has failed: " + ex.getMessage());
}
{{< /highlight >}}

### تغییر نام فایل لایسنس

نام فایل مجوز نبایدAspose.Words باشد.Android.Java."لک" شما می توانید آن را به هر چیزی که دوست دارید تغییر نام دهید و هنگام فراخوانی `License.SetLicense` از آن نام استفاده کنید.

### استثنا-نمی تواند نام فایل مجوز را پیدا کند

وقتی لایسنس خریداری شده را دانلود می کنید، فایل لایسنس به طور پیش فرض **Aspose.Words.Android.Java.lic** نامگذاری می شود. فایل مجوز از طریق مرورگر شما دانلود می شود و برخی از مرورگرها فایل مجوز را به عنوان XML تشخیص می دهند و یک .پسوند xml به نام. فایل دانلود شده **Aspose.Words.Android.Java.lic.XML** می شود.

هنگامی که Microsoft Windows برای پنهان کردن پسوند انواع فایل های شناخته شده تنظیم می شود (متأسفانه این در اکثر نصب های Windows پیش فرض است)، فایل مجوز به عنوان **Aspose.Words.Android.Java.lic** در Windows Explorer ذکر شده است. به نظر می رسد نام فایل مورد انتظار است. اگه به `License.SetLicense` زنگ بزني و از 'Aspose.Words رد بشيAndroid.Java.lic، شما خواهید دید و استثنا چون چنین فایل وجود ندارد.

برای حل مشکل، نام فایل را تغییر دهید تا نامرئی را حذف کنید .پسوند xml. ما توصیه می کنیم که گزینه "hide extensions" را در Microsoft Windows غیرفعال کنید.

## استفاده از چندین محصول Aspose

اگر از چندین محصول Aspose در یک برنامه استفاده می کنید، به عنوان مثال Aspose.Words و `Aspose.Cells`، در اینجا چند نکته مفید وجود دارد.

- مجوز هر محصول Aspose را جداگانه تنظیم کنید.
  حتی اگر یک فایل مجوز برای همه اجزای داشته باشید، به عنوان مثالAspose.Total.Android.Java.lic '، شما هنوز هم باید روش `License.SetLicense` را به طور جداگانه برای هر محصول Aspose فراخوانی کنید.
- از نام کلاس مجوز کاملا واجد شرایط استفاده کنید.
  هر محصول Aspose دارای یک کلاس `License` در فضای نام خود است. به عنوان مثال، Aspose.Words دارای com است.اسپوزکلمات.مجوز و `Aspose.Cells` دارای com.اسپوزسلول هاکلاس مجوز. استفاده از نام کلاس کاملا واجد شرایط به شما اجازه می دهد تا از هر گونه سردرگمی در مورد اینکه کدام مجوز برای کدام محصول اعمال می شود، جلوگیری کنید.
