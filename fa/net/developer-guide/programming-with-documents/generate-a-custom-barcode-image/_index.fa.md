---
title: چگونه بار کد ایجاد کنیم
second_title: Aspose.Words برای .NET
articleTitle: یک تصویر بارکد سفارشی تولید کنید
linktitle: یک تصویر بارکد سفارشی تولید کنید
description: "یک مثال از تولید شکل بارکد با استفاده از C#."
type: docs
weight: 350
url: /fa/net/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
---

بارکد یک نمایش بصری داده‌ها به صورت خطوط موازی یا الگوها است. بارکدها در صنایع مختلفی مانند خرده فروشی، لجستیک، بهداشت و درمان، بانکداری و بسیاری دیگر استفاده می‌شوند.

Microsoft Word به کاربران اجازه می دهد تا بارکد را مستقیماً در اسناد با استفاده از فیلدها قرار دهند. کاربران می توانند یک نوع خاص از بارکد مانند یک کد QR یا یک بارکد خطی را با استفاده از فیلد [BARCODE](https://learn.microsoft.com/en-us/openspecs/office_standards/ms-oi29500/cbc893c0-9683-416d-84c6-407a92451c19) وارد کنند.

در این مقاله، ما به نحوه پیاده‌سازی فیلد بارکد در Aspose.Words و چگونگی کمک Aspose.Words به کاربران برای کار با اسناد وردی که قبلاً بارکد به آنها اضافه شده نگاه خواهیم کرد.

## انواع بارکد که Aspose.Words پشتیبانی می‌کند

Aspose.Words از انواع مختلفی از بارکد پشتیبانی می کند. نوع بارکد به عنوان یک مقدار رشته ای در خاصیت [BarcodeType](https://reference.aspose.com/words/net/aspose.words.fields/barcodeparameters/barcodetype/) ارسال می شود.

{{% alert color="primary" %}}

از آنجا که کار با بارکد‌ها در عملکرد Aspose.Words محدود است، کاربر می‌تواند از هر کتابخانه‌ای مانند Aspose.Barcode استفاده کند یا خودش رندرینگ را بنویسد تا با بارکد‌ها کار کند. شما می‌توانید بیشتر درباره انواع بارکد‌ها [supported by Aspose.BarCode](https://docs.aspose.com/barcode/net/barcode-types/) یاد بگیرید.

{{% /alert %}}

هنگام ذخیره کردن در قالب‌های ورد که از بارکد پشتیبانی می‌کنند، شما می‌توانید هر نوع بارکدی را که [supported by Microsoft Word](https://support.microsoft.com/en-us/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3) است استفاده کنید. اگر یک نوع نادرست از بارکد وارد شده باشد، ورد خطایی را نشان خواهد داد.

وقتی به دیگر فرمت‌ها مانند PDF ذخیره می‌کنید، Aspose.Words رندر کردن بارکد را به کد کاربر تفویض می‌کند، بنابراین کاربر فقط محدود به انواع بارکد پیاده‌سازی یا کتابخانه‌ای است که استفاده می‌کند.

## یک بارکد را در یک سند قرار دهید یا یک سند با یک بارکد اضافه شده بارگذاری کنید

Aspose.Words فراهم می کند توانایی:

۱. به‌صورت برنامه‌ای یک بارکد را در یک سند با استفاده از کدهای [DisplayBarcode](https://support.microsoft.com/en-au/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3) و [MergeBarcode](https://support.microsoft.com/en-au/office/field-codes-mergebarcode-812fc43f-cb53-4782-8f9f-290ed08d34f3) وارد کنید
۲- یا یک سند ورد با بارکدهای موجود در آن برای کار بیشتر

Aspose.Words دارای یک واسط برای تولید بارکدهای سفارشی است که استفاده از "[Aspose.Words](https://products.aspose.com/words/net/)" و "[Aspose.BarCode](https://products.aspose.com/barcode/net/)" را در کنار هم آسان می کند تا تصاویر بارکد را در اسناد خروجی ایجاد کند. به عنوان مثال، شما می توانید یک سند DOC، OOXML یا RTF ایجاد کنید و با استفاده از "Aspose.Words" فیلد DISPLAYBARCODE را به آن اضافه کنید. یا شما می توانید یک سند DOC، OOXML یا RTF را بارگذاری کنید که در آن فیلد DISPLAYBARCODE قبلاً وجود دارد و پیاده سازی سفارشی خود را برای تولید کننده بارکد ارائه دهید.

یک فیلد tipical DISPLAYBARCODE دارای ساختاری زیر است:

`{ DISPLAYBARCODE "SomeData" QR \h 720 }`

در زیر یک مثال از تولیدکننده کد با استفاده از Aspose.Words و Aspose.Barcode API نشان داده شده است. این مثال نحوه قرار دادن تصاویر بارکد در موقعیت "DISPLAYBARCODE" را در سند ورد نشان می دهد:

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "barcode-generator.cs" >}}

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "custom-barcode-generator.cs" >}}

شما همچنین می‌توانید سند را با بارگذاری یا وارد کردن جدید کدهای بار، در قالب‌های صفحه ثابت مانند PDF، XPS و غیره ذخیره کنید. مثال کد زیر نشان می‌دهد که چگونه یک سند ورد را به قالب PDF ذخیره کنید:

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "docx-to-pdf.cs" >}}

{{% alert color="primary" %}}

برای اطلاعات بیشتر در مورد تبدیل اسناد از یک قالب به قالب دیگر، بخش مستندسازی [Convert a Document](/words/net/convert-a-document/) را بخوانید.

{{% /alert %}}

{{% alert color="primary" %}}

شما همچنین می‌توانید از رابط [IBarcodeGenerator](https://reference.aspose.com/words/net/aspose.words.fields/ibarcodegenerator/) برای تبدیل بارکدهای موجود در سندهای ورد به تصاویر استفاده کنید. تصاویر حاصل می‌توانند از سند استخراج شوند - مقاله کار با تصاویر را بخوانید تا اطلاعات بیشتری کسب کنید.

{{% /alert %}}

## گزینه های بارکد را مشخص کنید

هنگام کار با بارکد‌ها، می‌توانید برخی ویژگی‌های اضافی را تنظیم کنید. Aspose.Words به شما کلاس [BarcodeParameters](https://reference.aspose.com/words/net/aspose.words.fields/barcodeparameters/) - کلاس پارامترهای بارکد را برای ارسال به BarcodeGenerator ارائه می‌دهد.

Aspose.Words پشتیبانی از تصاویر با رزولوشن 96 ppi را برای تصاویری که با [IBarcodeGenerator](https://reference.aspose.com/words/net/aspose.words.fields/ibarcodegenerator/) ایجاد شده اند، فراهم می کند و اندازه حداقل یک تصویر بارکد را محدود می کند. برای حل این مشکل، توسعه دهندگان می توانند به صورت دستی تصاویر بارکد با رزنولوی هدف را در یک سند ورد قرار داده و آن ها را در قالب مورد نیاز ذخیره کنند. برای جزئیات بیشتر و مثال هایی درباره چگونگی کار با بارکدها، مقاله [Create Custom Barcodes with IBarcodeGenerator](https://docs.aspose.com/barcode/net/how-to-create-custom-barcodes-with-ibarcodegenerator/) را بخوانید.