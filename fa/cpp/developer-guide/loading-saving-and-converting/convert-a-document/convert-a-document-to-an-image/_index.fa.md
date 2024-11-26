---
title: تبدیل یک سند به یک تصویر در C++
second_title: Aspose.Words برای C++
articleTitle: تبدیل یک سند به یک تصویر
linktitle: تبدیل یک سند به یک تصویر
type: docs
description: "تبدیل یک سند به فرمت تصویر (JPG، PNG و غیره). یک پیش نمایش سند ایجاد کنید یا یک اسکن سند برای ارسال فاکتور ایجاد کنید."
weight: 43
url: /fa/cpp/convert-a-document-to-an-image/
timestamp: 2024-01-30-16-22-34
---

گاهی اوقات لازم است که یک تصویر به جای اسناد در فرمت های دیگر مانند DOCX یا PDF دریافت کنید. برای مثال، شما باید یک پیش نمایش از هر صفحه سند را به وب سایت یا برنامه خود اضافه کنید، یا یک "اسکن" از یک سند برای ارسال یک فاکتور ایجاد کنید. این زمانی است که شما ممکن است نیاز به تبدیل یک سند در هر [supported load format](https://reference.aspose.com/words/cpp/aspose.words/loadformat/) به یک تصویر، دوباره، در هر [supported save format](https://reference.aspose.com/words/cpp/aspose.words/saveformat/).

## تبدیل به فرمت تصویر

همانند تمام نمونه های تبدیل که قبلا توضیح داده شده است، شما باید یک سند جدید ایجاد کنید یا یک سند موجود را در هر فرمت پشتیبانی شده بارگذاری کنید، تغییرات لازم را انجام دهید و آن را در هر فرمت تصویر موجود ذخیره کنید، به عنوان مثال، JPEG، PNG یا BMP.

مثال کد زیر نشان می دهد که چگونه DOCX را به JPEGتبدیل کنیم:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-File Formats and Conversions-Base conversions-DocxToJpeg.h" >}}

## گزینه های ذخیره را هنگام تبدیل به یک تصویر مشخص کنید

Aspose.Words کلاس [ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/) را برای شما فراهم می کند که کنترل بیشتری بر نحوه ذخیره اسناد در فرمت های مختلف تصویر می دهد. برخی از ویژگی های این کلاس ویژگی های بارگذاری بیش از حد کلاس های پایه مانند [FixedPageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/) یا [SaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/) را به ارث می برند، اما گزینه های خاصی برای ذخیره تصاویر نیز وجود دارد.

امکان مشخص کردن صفحات برای تبدیل به فرمت تصویر با استفاده از ویژگی [PageSet](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pageset/) وجود دارد. به عنوان مثال، اگر فقط به پیش نمایش برای صفحه اول یا برای یک صفحه مشخص نیاز دارید، می توانید آن را اعمال کنید.

همچنین امکان کنترل کیفیت تصویر خروجی و فرمت پیکسل با استفاده از ویژگی های زیر وجود دارد– [HorizontalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_verticalresolution/), [Resolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_resolution/), [Scale](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_scale/), [PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pixelformat/), و همچنین تنظیمات رنگ تصویر را با استفاده از ویژگی های زیر تنظیم کنید– [ImageBrightness](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagebrightness/), [ImageColorMode](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagecolormode/), [ImageContrast](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagecontrast/), [PaperColor](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_papercolor/).

همچنین ویژگی هایی وجود دارد که برای یک فرمت خاص اعمال می شود، به عنوان مثال، [JpegQuality](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_jpegquality/) یا [TiffCompression](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_tiffcompression/).

مثال کد زیر نشان می دهد که چگونه یک پیش نمایش از صفحه سند اول با استفاده از برخی از تنظیمات اضافی ایجاد کنید:


{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertWordDocument-ConvertDocumentToImage.cpp" >}}
