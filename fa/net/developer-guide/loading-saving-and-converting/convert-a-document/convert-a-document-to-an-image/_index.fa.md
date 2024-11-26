---
title: تبدیل یک سند به تصویر در C#
second_title: Aspose.Words برای .NET
articleTitle: تبدیل یک سند به تصویر
linktitle: تبدیل یک سند به تصویر
type: docs
description: "یک سند را به فرمت تصویر (JPG، PNG و غیره) تبدیل کنید. یک پیش نمایش سند ایجاد کنید یا یک اسکن سند برای ارسال فاکتور با استفاده از C# ایجاد کنید."
weight: 43
url: /fa/net/convert-a-document-to-an-image/
timestamp: 2024-07-09-19-00-42
---

گاهی اوقات لازم است به جای اسناد در فرمت های دیگر، مانند DOCX یا PDF، یک تصویر دریافت کنید. به عنوان مثال، شما باید یک پیش نمایش از هر صفحه سند را به وب سایت یا برنامه خود اضافه کنید یا یک "اسکن" از یک سند برای ارسال فاکتور ایجاد کنید. این زمانی است که ممکن است نیاز داشته باشید یک سند در هر [فرمت بار پشتیبانی شده](https://reference.aspose.com/words/net/aspose.words/loadformat/) را به یک تصویر و دوباره در هر [فرمت ذخیره پشتیبانی شده](https://reference.aspose.com/words/net/aspose.words/saveformat/) تبدیل کنید.

## تبدیل به Image {#convert-to-image-format}

مانند تمام نمونه‌های تبدیل که قبلاً توضیح داده شد، باید یک سند جدید ایجاد کنید یا یک سند موجود را با هر فرمت پشتیبانی شده بارگیری کنید، تغییرات لازم را اعمال کنید و آن را در هر فرمت تصویر موجود ذخیره کنید، به عنوان مثال، JPEG، PNG، یا BMP.

مثال کد زیر نحوه تبدیل PDF به JPEG را نشان می دهد:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Base conversions-PdfToJpeg.cs" >}}

## هنگام تبدیل به Image {#specify-save-options-when-converting-to-an-image} گزینه های ذخیره را مشخص کنید

Aspose.Words کلاس [ImageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/) را در اختیار شما قرار می دهد که کنترل بیشتری بر نحوه ذخیره اسناد در فرمت های تصویری مختلف می دهد. برخی از ویژگی های این کلاس ویژگی های کلاس های پایه مانند [FixedPageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/) یا [SaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/) را به ارث می برند یا اضافه بار می کنند، اما گزینه های مخصوص ذخیره تصاویر نیز وجود دارد.

با استفاده از ویژگی [PageSet](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/pageset/) می توان صفحاتی را که باید به فرمت تصویر تبدیل شوند را مشخص کرد. به عنوان مثال، اگر فقط برای صفحه اول یا برای یک صفحه مشخص به پیش نمایش نیاز دارید، می توان آن را اعمال کرد.

همچنین می توان کیفیت تصویر خروجی و فرمت پیکسل را با استفاده از ویژگی های زیر - [HorizontalResolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/verticalresolution/), [Resolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/resolution/), [Scale](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/scale/), [PixelFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/pixelformat/) و همچنین تنظیمات رنگ تصویر را با استفاده از ویژگی های زیر - [ImageBrightness](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagebrightness/), [ImageColorMode](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagecolormode/), [ImageContrast](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagecontrast/), [PaperColor](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/papercolor/)- کنترل کرد.

همچنین ویژگی هایی وجود دارد که برای فرمت خاصی اعمال می شود، به عنوان مثال، [JpegQuality](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/jpegquality/) یا [TiffCompression](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/tiffcompression/).

مثال کد زیر نحوه ایجاد یک پیش نمایش از اولین صفحه سند را با اعمال برخی تنظیمات اضافی نشان می دهد:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-Working with ImageSaveOptions-GetJpegPageRange.cs" >}}
