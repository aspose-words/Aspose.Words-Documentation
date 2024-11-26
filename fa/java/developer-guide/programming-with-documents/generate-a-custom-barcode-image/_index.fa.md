---
title: BarCode را در Javaایجاد کنید
second_title: Aspose.Words برای Java
articleTitle: یک تصویر سفارشی BarCode ایجاد کنید
linktitle: یک تصویر سفارشی BarCode ایجاد کنید
description: "نمونه ای از تولید شکل بارکد با استفاده از Java."
type: docs
weight: 350
url: /fa/java/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
timestamp: 2024-09-05-11-07-10
---

بارکد یک نمایش بصری از داده ها به شکل خطوط موازی یا الگوها است. بارکد به طور گسترده ای در صنایع مختلف مانند خرده فروشی، تدارکات، مراقبت های بهداشتی، بانکداری و بسیاری دیگر استفاده می شود.

Microsoft Word به کاربران اجازه می دهد تا بارکد ها را مستقیما در اسناد با استفاده از فیلد ها جاسازی کنند. کاربران می توانند یک نوع بارکد خاص مانند یک کد QR یا یک بارکد خطی را با استفاده از [BARCODE](https://learn.microsoft.com/en-us/openspecs/office_standards/ms-oi29500/cbc893c0-9683-416d-84c6-407a92451c19) میدان.

در این مقاله، ما به چگونگی اجرای فیلد BARCODE در Aspose.Words و چگونگی Aspose.Words اجازه می دهد تا کاربران با اسناد ورد که بارکد به آن اضافه شده است کار کنند.

## انواع بارکد پشتیبانی شده توسط Aspose.Words

Aspose.Words از انواع مختلف بارکد پشتیبانی می کند. نوع بارکد به عنوان یک مقدار رشته در ویژگی [BarcodeType](https://reference.aspose.com/words/java/com.aspose.words/barcodeparameters/#getBarcodeType) منتقل می شود.

{{% alert color="primary" %}}

از آنجا که کار با بارکد در قابلیت Aspose.Words محدود است، کاربر می تواند از هر کتابخانه، از جمله Aspose استفاده کند.بارکد، یا رندر خود را برای کار با بارکد بنویسید. شما می توانید در مورد انواع بارکد ها بیشتر بدانید [پشتيباني "توست آسپوس"BarCode](https://docs.aspose.com/barcode/java/barcode-types/).

{{% /alert %}}

هنگام ذخیره کردن به فرمت های Word که از بارکد پشتیبانی می کنند، می توانید از هر نوع بارکد که [پشتیبانی شده توسط Microsoft Word](https://support.microsoft.com/en-us/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3). اگر یک نوع بارکد نادرست منتقل شده باشد، Word یک خطا را نمایش می دهد.

هنگام ذخیره به فرمت های دیگر، مانند PDF، Aspose.Words ارائه بارکد را به کد کاربر واگذار می کند، بنابراین کاربر به انواع بارکد پیاده سازی یا کتابخانه مورد استفاده خود محدود می شود.

## یک بارکد را در یک سند قرار دهید یا یک سند را با یک بارکد اضافه شده بارگذاری کنید

Aspose.Words توانایی:

1. به صورت برنامه ریزی شده یک بارکد را با استفاده از [DisplayBarcode](https://support.microsoft.com/en-au/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3) و [MergeBarcode](https://support.microsoft.com/en-au/office/field-codes-mergebarcode-812fc43f-cb53-4782-8f9f-290ed08d34f3) کد های فیلد
2. یا یک سند ورد را با بارکد هایی که قبلا در آن قرار داده شده است برای کار بیشتر بارگذاری کنید

Aspose.Words دارای رابط کاربری برای تولید بارکد های سفارشی است که استفاده از آن را آسان می کند [Aspose.Words](https://products.aspose.com/words/java/) و [اسپوزBarCode](https://products.aspose.com/barcode/java/) با هم برای ارائه تصاویر بارکد در اسناد خروجی. به عنوان مثال، شما می توانید یک سند DOC، OOXML یا RTF ایجاد کنید و با استفاده از Aspose.Words فیلد DISPLAYBARCODE را به آن اضافه کنید. یا می توانید یک سند DOC، OOXML یا RTF را با DISPLAYBARCODE فیلد موجود در آن بارگذاری کنید و پیاده سازی خود را از ژنراتور بارکد سفارشی ارائه دهید.

یک فیلد معمولی DISPLAYBARCODE دارای نحو زیر است:

`{ DISPLAYBARCODE "SomeData" QR \h 720 }`

در زیر یک ژنراتور کد نمونه با استفاده از Aspose.Words و Aspose است.BarCode APIs. این مثال نشان می دهد که چگونه تصاویر بارکد را در DISPLAYBARCODE موقعیت میدان در یک سند ورد قرار دهید:

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "barcode-generator.java" >}}

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "custom-barcode-generator.java" >}}

همچنین می توانید سند را با بارکد بارگذاری شده یا تازه وارد شده در فرمت های صفحه ثابت مانند PDF، XPS و غیره ذخیره کنید. مثال کد زیر نشان می دهد که چگونه یک سند ورد را به فرمت PDF ذخیره کنیم:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "docx-to-pdf.java" >}}

{{% alert color="primary" %}}

برای اطلاعات بیشتر در مورد تبدیل اسناد از یک فرمت به فرمت دیگر، به [تبدیل یک سند](/words/java/convert-a-document/) بخش اسناد.

{{% /alert %}}

{{% alert color="primary" %}}

همچنین می توانید از رابط [IBarcodeGenerator](https://reference.aspose.com/words/java/com.aspose.words/ibarcodegenerator/) برای تبدیل بارکد های جاسازی شده در اسناد Word به تصاویر استفاده کنید. تصاویر حاصل را می توان از سند استخراج کرد – برای جزئیات به مقاله کار با تصاویر مراجعه کنید.

{{% /alert %}}

## گزینه های بارکد را مشخص کنید

هنگام کار با بارکد، می توانید برخی از ویژگی های اضافی را تنظیم کنید. Aspose.Words کلاس کلاس [BarcodeParameters](https://reference.aspose.com/words/java/com.aspose.words/barcodeparameters/) را برای پارامترهای بارکد فراهم می کند تا به BarcodeGenerator منتقل شوند.

Aspose.Words از وضوح 96 ppi جاسازی شده برای تصاویر تولید شده با [IBarcodeGenerator](https://reference.aspose.com/words/java/com.aspose.words/ibarcodegenerator/) پشتیبانی می کند که حداقل اندازه یک تصویر بارکد را محدود می کند. برای رفع این مشکل، توسعه دهندگان می توانند تصاویر بارکد با وضوح هدف را به صورت دستی در یک سند Word قرار دهند و آنها را در قالب مورد نیاز ذخیره کنند. برای جزئیات بیشتر و نمونه هایی از کار با بارکد، به مقاله مراجعه کنید [خواندن بارکد از اسناد ورد](https://docs.aspose.com/barcode/java/read-barcode-from-word-document/).
