---
title: تبدیل یک سند به یک تصویر در Java
second_title: Aspose.Words برای Java
articleTitle: تبدیل یک سند به یک تصویر
linktitle: تبدیل یک سند به یک تصویر
type: docs
description: "تبدیل یک سند به فرمت تصویر (JPG، PNG و غیره) ایجاد یک پیش نمایش سند یا ایجاد یک اسکن سند برای ارسال یک فاکتور با استفاده از Java..."
weight: 35
url: /fa/java/convert-a-document-to-an-image/
timestamp: 2024-01-27-14-07-04
---

گاهی اوقات لازم است که به جای اسناد در فرمت های دیگر مانند DOCX یا PDF یک تصویر را دریافت کنید. به عنوان مثال، شما باید یک پیش نمایش از هر صفحه سند را به وب سایت یا برنامه خود اضافه کنید یا یک "scan" از یک سند برای ارسال یک فاکتور ایجاد کنید. این زمانی است که شما ممکن است نیاز به تبدیل یک سند در هر نقطه [فرمت Load Format](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) به تصویر، دوباره، در هر [دانلود موسیقی متن بازی The Punch دانلود بازی PunchSave Format](https://reference.aspose.com/words/java/com.aspose.words/saveformat/)...

## تبدیل به فرمت تصویر

همانطور که با تمام نمونه های تبدیل در حال حاضر توضیح داده شده است، شما باید یک سند جدید ایجاد کنید یا یک موجود را در هر فرمت پشتیبانی بارگذاری کنید، تغییرات لازم را ایجاد کنید و آن را در هر فرمت تصویر موجود ذخیره کنید، به عنوان مثال، JPEG، PNG یا BMP.

مثال کد زیر نشان می دهد که چگونه DOCX را به JPEG تبدیل کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToImage-ConvertDocxToJpeg.java" >}}

## گزینه های Save را هنگام تبدیل به یک تصویر مشخص کنید

Aspose.Words شما را با [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) کلاس، که کنترل بیشتری بر چگونگی ذخیره اسناد در فرمت های مختلف تصویر می دهد. برخی از خواص این کلاس به ارث بردن یا اضافه بار از کلاس های پایه مانند [FixedPageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/) یا [SaveOptions](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/), همچنین گزینه های خاصی برای صرفه جویی در تصاویر وجود دارد.

ممکن است صفحات را با استفاده از فرمت تصویر تبدیل کنید. [PageSet](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPageSet) مالکیت به عنوان مثال، می تواند اعمال شود اگر شما فقط برای اولین یا برای یک صفحه مشخص نیاز به پیش نمایش دارید.

همچنین امکان کنترل کیفیت تصویر خروجی و فرمت پیکسل با استفاده از خواص زیر وجود دارد. [HorizontalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getHorizontalResolution), [VerticalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getVerticalResolution), [Resolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), [Scale](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getScale), [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat), و همچنین تنظیم تنظیمات رنگ تصویر، با استفاده از خواص زیر - [ImageBrightness](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageBrightness), [ImageColorMode](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageColorMode), [ImageContrast](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageContrast), [PaperColor](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPaperColor)...

همچنین خواصی وجود دارد که به فرمت خاصی اعمال می شود، به عنوان مثال، [JpegQuality](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getJpegQuality) یا [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression)...

مثال کد زیر نشان می دهد که چگونه یک پیش نمایش از صفحه اول سند را با استفاده از برخی تنظیمات اضافی ایجاد کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToImage-ConvertDocumentToImage.java" >}}
