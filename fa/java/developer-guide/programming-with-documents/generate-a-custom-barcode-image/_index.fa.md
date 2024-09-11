---
title: بارکد در Java ایجاد کنید
second_title: Aspose.Words برای Java
articleTitle: یک تصویر بارکد سفارشی تولید کنید
linktitle: یک تصویر بارکد سفارشی تولید کنید
description: "مثال از تولید شکل بارکد با استفاده از Java."
type: docs
weight: 350
url: /fa/java/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
---

بارکد نمایش بصری داده‌ها در قالب خطوط موازی یا الگوها است. بارکدها کاربرد وسیعی در صنایع مختلفی مانند خرده فروشی، لجستیک، بهداشت و درمان، بانکداری و بسیاری دیگر دارند.

Microsoft Word به کاربران اجازه می دهد تا بارکد ها را مستقیماً در اسناد با استفاده از فیلدها قرار دهند. کاربران می توانند یک نوع خاص از بارکد، مانند یک کد QR یا یک بارکد خطی، با استفاده از [BARCODE](https://learn.microsoft.com/en-us/openspecs/office_standards/ms-oi29500/cbc893c0-9683-416d-84c6-407a92451c19) فیلد وارد کنند.

در این مقاله، نحوه پیاده سازی فیلد بارکد در Aspose.Words و اینکه چگونه Aspose.Words به کاربران اجازه کار با مستندهای ورد که قبلا بارکد اضافه شده است را بررسی خواهیم کرد.

## نمونه های بارکد که توسط Aspose.Words پشتیبانی می شود

Aspose.Words از انواع مختلف بارکد پشتیبانی می کند. نوع بارکد به عنوان یک مقدار رشته ای در خاصیت [BarcodeType](https://reference.aspose.com/words/java/com.aspose.words/barcodeparameters/#getBarcodeType) منتقل می شود.

{{% alert color="primary" %}}

از آنجا که کار با بارکد در داخل عملکرد Aspose.Words محدود است، کاربر می تواند از هر کتابخانه ای، از جمله Aspose.Barcode، استفاده کند یا خود او را بنویسد تا با بارکدها کار کند. شما می توانید بیشتر درباره انواع بارکد ها [supported by Aspose.BarCode](https://docs.aspose.com/barcode/java/barcode-types/) بدانید.

{{% /alert %}}

هنگامی که به فرمت‌های وردی که از بارکد پشتیبانی می‌کنند ذخیره می‌کنید، می‌توانید هر نوع بارکد را که [supported by Microsoft Word](https://support.microsoft.com/en-us/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3) است استفاده کنید. اگر نوع اشتباهی از بارکد ارسال شده بود، ورد خطا را نشان خواهد داد.

هنگام ذخیره سازی به فرمت های دیگر، مانند پی دی اف، Aspose.Words تفویض رندر کردن بارکد را به کد کاربر می کند، بنابراین کاربر محدود به انواع بارکد پیاده سازی یا کتابخانه ای که استفاده می کند، است.

## یک بارکد را به یک سند وارد کنید یا یک سند با یک بارکد اضافه شده را بارگذاری کنید

Aspose.Words توانایی این است که:

۱. به صورت برنامه‌ای یک بارکد را در یک سند با استفاده از کدهای [DisplayBarcode](https://support.microsoft.com/en-au/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3) و [MergeBarcode](https://support.microsoft.com/en-au/office/field-codes-mergebarcode-812fc43f-cb53-4782-8f9f-290ed08d34f3) وارد کنید
۲. یا یک سند ورد با بارکدهای قبلاً در آن وارد شده برای کار بیشتر بارگذاری کنید

Aspose.Words دارای یک واسط برای تولید بارکدهای سفارشی است که استفاده از [Aspose.Words](https://products.aspose.com/words/java/) و [Aspose.BarCode](https://products.aspose.com/barcode/java/) را در کنار هم آسان می‌کند تا تصویر بارکد را در اسناد خروجی ایجاد کند. به عنوان مثال، شما می‌توانید یک سند DOC، OOXML یا RTF ایجاد کنید و فیلد DISPLAYBARCODE را به آن اضافه کنید که توسط Aspose.Words پشتیبانی می‌شود. یا می‌توانید یک سند DOC، OOXML یا RTF با فیلد نمایش بارکد موجود در آن بارگیری کنید و پیاده‌سازی سفارشی خود را برای تولید کننده بارکد ارائه دهید.

یک فیلد معمولی DISPLAYBARCODE دارای نحوهٔ زیر است:

`{ DISPLAYBARCODE "SomeData" QR \h 720 }`

در زیر یک نمونه کد ژنراتور که از برچسب‌های Aspose.Words و Aspose.BarCode API استفاده می‌کند، ارائه شده است. این مثال نشان می‌دهد که چگونه می‌توان تصاویر بارکد را در موقعیت DISPLAYBARCODE فیلد یک سند ورد قرار داد:

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "barcode-generator.java" >}}

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "custom-barcode-generator.java" >}}

شما همچنین می‌توانید سند را با بارگذاری یا درج نوارهای بارکد جدید در قالب‌های صفحه ثابت مانند PDF، XPS و غیره ذخیره کنید. مثال کد زیر نشان می‌دهد که چگونه یک سند ورد را به فرمت PDF ذخیره کنید:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "docx-to-pdf.java" >}}

{{% alert color="primary" %}}

برای اطلاعات بیشتر درباره تبدیل سندها از یک فرمت به فرمت دیگر، بخش مستندات را ببینید. [Convert a Document](/words/java/convert-a-document/)

{{% /alert %}}

{{% alert color="primary" %}}

شما همچنین می‌توانید از رابط کاربری [IBarcodeGenerator](https://reference.aspose.com/words/java/com.aspose.words/ibarcodegenerator/) برای تبدیل بارکدهای موجود در سند ورد به تصاویر استفاده کنید. تصاویر حاصل را می‌توان از سند استخراج کرد – مقاله "با تصاویر کار کردن" را بخوانید تا اطلاعات بیشتری کسب کنید.

{{% /alert %}}

## گزینه های بارکد را مشخص کنید

هنگامی که با بارکد کار می کنید، می توانید برخی از ویژگی های اضافی را تنظیم کنید. Aspose.Words به شما کلاس [BarcodeParameters](https://reference.aspose.com/words/java/com.aspose.words/barcodeparameters/) را - کلاس پارامترهای بارکد برای عبور دادن به BarcodeGenerator" ارائه می دهد.

Aspose.Words پشتیبانی از تصویر با رزولوشن 96 ppi را برای تصاویری که با [IBarcodeGenerator](https://reference.aspose.com/words/java/com.aspose.words/ibarcodegenerator/) ایجاد شده‌اند، پشتیبانی می‌کند، که اندازه حداقل یک تصویر بارکد را محدود می‌کند. برای حل این مشکل، توسعه دهندگان می‌توانند تصاویر بارکد با وضوح هدف را به صورت دستی در سند ورد وارد کنند و آنها را با فرمت مورد نیاز ذخیره کنند. برای جزئیات بیشتر و مثال‌هایی در مورد کار با بارکدها، مقاله [Read Barcodes from Word Documents](https://docs.aspose.com/barcode/java/read-barcode-from-word-document/) را بخوانید.
