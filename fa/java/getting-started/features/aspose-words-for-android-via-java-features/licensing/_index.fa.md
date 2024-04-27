---
title: مجوز
second_title: Aspose.Words برای Java
articleTitle: مجوز
linktitle: مجوز
description: "مجوز Aspose.Words برای Android از طریق Java..."
type: docs
weight: 60
url: /fa/java/licensing-android/
---

گاهی برای مطالعه بهتر سیستم، می خواهید به سرعت به کد وارد شوید. برای آسان تر کردن این، Aspose.Words برنامه های مختلفی برای خرید یا ارائه یک محاکمه آزاد و مجوز موقت 30 روزه برای ارزیابی فراهم می کند.

{{% alert color="primary" %}}

توجه داشته باشید که تعدادی از سیاست ها و شیوه های عمومی وجود دارد که شما را در مورد چگونگی ارزیابی، مجوز مناسب و خرید محصولات ما راهنمایی می کند. شما می توانید آنها را در [دانلود زیرنویس فارسی فیلم خارجی](https://purchase.aspose.com/policies/) بخش

{{% /alert %}}

## محاکمه آزاد یا مجوز موقت

Aspose.Words نرم افزار فوق العاده ای است که توسعه دهندگان می توانند قبل از خرید امتحان کنند. شما می توانید به راحتی دانلود/install Aspose.Words برای Java و Aspose.Words برای Android از طریق Java [از صفحه دانلود](https://releases.aspose.com/words/androidjava/) برای ارزیابی

نسخه ارزیابی همان نسخه خریداری شده است - نسخه آزمایشی به سادگی مجاز می شود زمانی که شما چند خط کد برای درخواست مجوز اضافه کنید.

{{% alert color="primary" %}}

اطلاعات بیشتر در مورد محاکمه آزاد یا مجوز موقت برای Aspose.Words برای Android از طریق Java در [مجوز و اشتراک](/words/fa/java/licensing/)...

{{% /alert %}}

## مجوز خرید

پس از خرید، شما باید فایل مجوز را اعمال کنید یا فایل مجوز را به عنوان یک منبع جاسازی شده درج کنید. این بخش گزینه هایی از چگونگی انجام این کار را شرح می دهد و همچنین در مورد برخی از سوالات رایج اظهار نظر می کند.

{{% alert color="primary" %}}

مجوز یک فایل XML متن ساده است که شامل جزئیاتی مانند نام محصول، تعداد توسعه دهندگان دارای مجوز، تاریخ انقضاء اشتراک و غیره است.

فایل به صورت دیجیتال امضا شده است، بنابراین فایل را تغییر ندهید. حتی اضافه کردن یک خط اضافی به فایل نیز آن را بی اعتبار خواهد کرد.

{{% /alert %}}

{{% alert color="primary" %}}

شما باید مجوز را تنظیم کنید:

* فقط یک بار در هر دامنه کاربردی
* قبل از استفاده از هر چیز دیگر Aspose.Words کلاس های کلاس

{{% /alert %}}

{{% alert color="primary" %}}

شما می توانید اطلاعات قیمت گذاری در مورد [قیمت گذاری اطلاعات](https://purchase.aspose.com/pricing/words/family/) صفحه

{{% /alert %}}

### محافظت از مجوز خرید شما

پس از خرید مجوز، باید اطلاعات را در صفحه بخوانید. [محافظت از مجوز خرید شما](https://purchase.aspose.com/orders/protecting-your-license-file) برای محافظت از فایل مجوز خود لطفا توجه داشته باشید که این صفحه تنها در صورتی در دسترس است که مجوز پرداخت داشته باشید.

### درخواست گزینه ها

مجوز را می توان از مکان های مختلف اعمال کرد:

* راه فرار
* یک منبع جاسازی شده
* به عنوان مجوز فوت شده - یک مکانیسم مجوز جدید

#### بارگذاری فایل مجوز

In In In Aspose.Words برای Android از طریق Java, مجوز می تواند [مجوز و اشتراک](/words/fa/java/licensing/), یا از یک جریان پر شده است:

1. فایل مجوز را در هر مکان قرار دهید **/ mnt/sdcard/**...
1. یک جریان ایجاد کنید که فایل را ارجاع می دهد.
1. Pass the Flow (شامل فایل مجوز) `SetLicense` روش

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

درخواست مجوز از یک منبع جاسازی شده برای دسترسی به مجوز به عنوان یک منبع با نام Android فایل بسته:

1. اضافه کردن فایل مجوز به عنوان یک منبع به درخواست شما **Res/raw** پوشه
   فایل مجوز باید در **Res/raw** پوشه
1. دسترسی / بارگیری مجوز از منبع با نمونه کد زیر.

**Java**

{{< highlight java >}}
License license = new License();
InputStream inputStream = getResources().openRawResource(R.raw.license);
license.setLicense(inputStream);
{{< /highlight >}}

#### درخواست مجوز

Aspose.Words به توسعه دهندگان اجازه می دهد تا کلید متر را اعمال کنند. این یک مکانیسم مجوز جدید است. مکانیسم مجوز جدید همراه با روش مجوز موجود استفاده می شود. کسانی که می خواهند بر اساس استفاده از API ویژگی ها می توانند از مجوز متر استفاده کنند.

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

### تغییر نام فایل مجوز

نام فایل مجوز نباید "Aspose.Words...Android...Java.lic شما می توانید آن را به هر چیزی که دوست دارید تغییر دهید و از آن نام استفاده کنید. `License.SetLicense`...

### استثناء - نمی تواند نام فایل مجوز را پیدا کند

هنگامی که شما یک مجوز خریداری شده را دانلود می کنید، فایل مجوز نامیده می شود **Aspose.Words...Android...Java.lic** به طور پیش فرض فایل مجوز از طریق مرورگر شما بارگیری می شود و برخی از مرورگرهای فایل مجوز را به عنوان XML تشخیص می دهند و پسوند .xml را به نام اضافه می کنند. فایل دانلود شده تبدیل می شود **Aspose.Words...Android...Java.lic.XML**...

وقتی Microsoft Windows پیکربندی شده برای پنهان کردن افزونه های انواع فایل های شناخته شده (به طور دقیق این به طور پیش فرض در اکثر موارد است. Windows نصب، فایل مجوز به عنوان **Aspose.Words...Android...Java.lic** در Windows اکسپلورر به نظر می رسد نام فایل مورد انتظار. اگر تماس بگیرید `License.SetLicense` و پاس "Aspose.Words...Android...Javaبله، شما می بینید و استثنا می کنید زیرا چنین فایلی وجود ندارد

برای حل مشکل، فایل را تغییر دهید تا پسوند نامرئی .xml را حذف کنید. ما توصیه می کنیم که گزینه "Lock Extensions" را غیرفعال کنید. Microsoft Windows...

## استفاده از چندین Aspose Products

اگر از چندین محصول آسیم در یک برنامه استفاده می کنید، به عنوان مثال Aspose.Words و `Aspose.Cells`, در اینجا چند راهنمایی مفید وجود دارد.

- مجوز برای هر محصول aspose را به طور جداگانه تنظیم کنید.
  حتی اگر شما یک فایل مجوز واحد برای تمام اجزای، به عنوان مثال "Apose. مجموعAndroid...Javaشما هنوز هم باید تماس بگیرید `License.SetLicense` به طور جداگانه برای هر محصول Aspose.
- استفاده از نام کلاس مجوز کامل
  هر یک محصول Aspose دارای یک محصول است `License` کلاس در فضای نام آن برای مثال، Aspose.Words com.aspose.word مجوز و `Aspose.Cells` سلول های کام کلاس مجوز استفاده از نام کلاس کامل به شما اجازه می دهد تا از هر گونه سردرگمی در مورد کدام مجوز برای محصول استفاده کنید.
