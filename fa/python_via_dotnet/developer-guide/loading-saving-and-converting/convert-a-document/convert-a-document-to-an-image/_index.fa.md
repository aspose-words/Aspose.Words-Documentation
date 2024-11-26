---
title: تبدیل یک سند به تصویر
second_title: Aspose.Words برای Python via .NET
articleTitle: تبدیل یک سند به تصویر
linktitle: تبدیل یک سند به تصویر
type: docs
description: "یک سند را به فرمت تصویر (JPG، PNG و غیره) تبدیل کنید. یک پیش نمایش سند ایجاد کنید یا یک اسکن سند برای ارسال فاکتور با استفاده از Python ایجاد کنید."
weight: 43
url: /fa/python-net/convert-a-document-to-an-image/
timestamp: 2024-01-27-14-07-04
---

گاهی اوقات لازم است به جای اسناد در فرمت های دیگر، مانند DOCX یا PDF، یک تصویر دریافت کنید. به عنوان مثال، شما باید یک پیش نمایش از هر صفحه سند را به وب سایت یا برنامه خود اضافه کنید یا یک "اسکن" از یک سند برای ارسال فاکتور ایجاد کنید. این زمانی است که ممکن است نیاز داشته باشید یک سند در هر [فرمت بار پشتیبانی شده](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) را به یک تصویر و دوباره در هر [فرمت ذخیره پشتیبانی شده](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) تبدیل کنید.

## تبدیل به فرمت تصویر {#convert-to-image-format}

مانند تمام نمونه‌های تبدیل که قبلاً توضیح داده شد، باید یک سند جدید ایجاد کنید یا یک سند موجود را با هر فرمت پشتیبانی شده بارگیری کنید، تغییرات لازم را اعمال کنید و آن را در هر فرمت تصویر موجود ذخیره کنید، به عنوان مثال، JPEG، PNG، یا BMP.

مثال کد زیر نحوه تبدیل PDF به JPEG را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-PdfToJpeg.py" >}}

## هنگام تبدیل به تصویر {#specify-save-options-when-converting-to-an-image} گزینه های ذخیره را مشخص کنید

Aspose.Words کلاس [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) را در اختیار شما قرار می دهد که کنترل بیشتری بر نحوه ذخیره اسناد در فرمت های تصویری مختلف می دهد. برخی از ویژگی‌های این کلاس ویژگی‌های کلاس‌های پایه مانند [FixedPageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/) یا [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/) را به ارث می‌برند یا اضافه بار می‌کنند، اما گزینه‌های مخصوص ذخیره تصاویر نیز وجود دارد.

با استفاده از ویژگی [page_set](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/page_set/) می توان صفحاتی را که باید به فرمت تصویر تبدیل شوند را مشخص کرد. به عنوان مثال، اگر فقط برای صفحه اول یا برای یک صفحه مشخص به پیش نمایش نیاز دارید، می توان آن را اعمال کرد.

همچنین می توان کیفیت تصویر خروجی و فرمت پیکسل را با استفاده از ویژگی های زیر - [horizontal_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/horizontal_resolution/)، [vertical_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/vertical_resolution/)، [scale](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/scale/)، [pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/)، و همچنین تنظیم تنظیمات رنگ تصویر، با استفاده از ویژگی های زیر - [image_brightness](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_brightness/)، [image_color_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_color_mode/)، [image_contrast](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_contrast/)، [paper_color](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/paper_color/) کنترل کرد.

همچنین ویژگی هایی وجود دارد که برای فرمت خاصی اعمال می شود، به عنوان مثال، [jpeg_quality](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/jpeg_quality/) یا [tiff_compression](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_compression/).

مثال کد زیر نحوه ایجاد یک پیش نمایش از اولین صفحه سند را با اعمال برخی تنظیمات اضافی نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-GetJpegPageRange.py" >}}
