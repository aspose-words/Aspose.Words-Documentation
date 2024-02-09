---
title: تبدیل PDF به سایر فرمت های سند در C#
second_title: Aspose.Words برای .NET
articleTitle: تبدیل PDF به سایر فرمت های سند
linktitle: تبدیل PDF به سایر فرمت های سند
type: docs
description: "PDF را به فرمت های Word مانند DOCX، DOC، فرمت های تصویری مانند JPG یا PNG یا هر فرمت دیگری که توسط Aspose.Words پشتیبانی می شود با استفاده از C# تبدیل کنید."
keywords: convert pdf to other formats c#
weight: 45
url: /fa/net/convert-pdf-to-other-document-formats/
---

Aspose.Words می تواند حتی فرمت پیچیده ای مانند PDF را بارگیری کند. این فرصت‌های جدیدی را باز می‌کند: امکان تبدیل PDF به Word یا فرمت‌های دیگر که کاربران را در حل بسیاری از مشکلات کاربردی بسیار جلوتر می‌آورد، وجود دارد.

## پیش نیازها

* ارجاع به بسته Aspose.Words ***یا*** به Aspose.Words.Pdf2Word.dll اضافه شد.
* حداقل .NET Framework 4.6.1 یا .NET Standard 2.0. اهدافی مانند .NET Core 2.x یا 3.0، .NET 5 و Xamarin نیز از طریق سازگاری با .NET Standard پشتیبانی می شوند.

## تبدیل PDF به فرمت های مختلف {#convert-pdf-to-other-formats}

محبوب ترین تبدیل از PDF تبدیل به فرمت های Microsoft Word مانند DOCX، DOC و همچنین فرمت های تصویر مانند JPG یا PNG است. با این گفته، تبدیل یک سند از یک فرمت به فرمت دیگر به روشی آشنا انجام می شود.

مثال کد زیر نحوه تبدیل یک سند از PDF به DOCX را نشان می دهد:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Base conversions-PdfToDocx.cs" >}}

## هنگام وارد کردن PDF {#specify-load-options-when-importing-pdf} گزینه های بارگذاری را مشخص کنید

Aspose.Words کلاس [PdfLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/) را در اختیار شما قرار می دهد که امکان کنترل دقیق تری بر نحوه بارگذاری اسناد PDF را فراهم می کند.

اکثر ویژگی ها ویژگی هایی را که از قبل در کلاس `LoadOptions` وجود دارد به ارث می برند یا اضافه بار می کنند. علاوه بر آنها، تعدادی ویژگی برای فرمت PDF مشخص شده است. به عنوان مثال، می‌توانید از ویژگی‌های [PageCount](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/pagecount/) و [PageIndex](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/pageindex/) برای تعریف محدوده صفحه‌ای که باید از یک سند PDF بارگذاری شود، و از ویژگی‌های [SkipPdfImages](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/skippdfimages/) برای کنترل اینکه آیا تصاویر هنگام بارگیری PDF باید نادیده گرفته شوند یا خیر، استفاده کنید. یکی دیگر از پارامترهای پشتیبانی شده [Password](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/password/) است که باید برای [اسناد محافظت شده با رمز عبور](/words/net/protect-documents-and-parts-of-documents/) ارائه شود.

## محتوای PDF پشتیبانی شده {#supported-pdf-content}

افزونه PDF2Word در حال حاضر از انواع داده های زیر پشتیبانی می کند:

* پاراگراف متن
* تصاویر
* جداول
* لیست ها
* سرصفحه ها و پاورقی ها
* پانویسها و منابع
* شماره صفحات
* متن از راست به چپ (با برخی محدودیت ها)
* PDF های قابل جستجو (تصاویر جلویی به نفع متن پس زمینه حذف خواهند شد)

## ویژگی های آینده {#planned-features}

برخی از ویژگی ها هنوز در مراحل اولیه توسعه هستند یا در نقشه راه توسعه گنجانده شده اند:

* فهرست مطالب
* OCR برای PDF های قابل جستجو و غیر قابل جستجو
* گزارش پیشرفت
* متن چند ستونی
* فرمول های ریاضی
* فیلدهای خودکار بیشتر (علاوه بر `PAGE` و NUMPAGES)

## استثناهای بارگذاری PDF

در طول تبدیل سند PDF، یکی از استثناهای زیر ممکن است رخ دهد:

|  استثنا |  شرح |
|  --------------------------------  |  ------------------------------------------------------------  |
|  `FileLoadException`               |  فایل PDF به دلایلی قابل پردازش نیست.<br /> {{% alert color="primary" %}}شما می توانید با استفاده از [پشتیبانی فنی](/words/fa/net/technical-support/).{{% /alert %}} مشکل را برای بررسی دقیق به تیم توسعه گزارش دهید |
|  `DrmProtectedFileException`       |  یک فایل PDF توسط Adobe DRM محافظت می شود و نمی تواند توسط Pdf2Word رمزگشایی شود |
|  `PasswordProtectedFileException`  |  رمز عبور صحیح باید برای PDF محافظت شده با رمز عبور ارائه شود |

## همچنین ببینید

* [ارجاع Nuget به Aspose.Words](https://www.nuget.org/packages/Aspose.Words/)

