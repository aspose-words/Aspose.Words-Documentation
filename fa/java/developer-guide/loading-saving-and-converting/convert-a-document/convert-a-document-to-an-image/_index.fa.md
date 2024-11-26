---
title: تبدیل یک سند به یک تصویر در Java
second_title: Aspose.Words برای Java
articleTitle: تبدیل یک سند به یک تصویر
linktitle: تبدیل یک سند به یک تصویر
type: docs
description: "تبدیل یک سند به فرمت تصویر (JPG، PNG و غیره). ایجاد پیش نمایش سند یا ایجاد اسکن سند برای ارسال فاکتور با استفاده از Java."
weight: 35
url: /fa/java/convert-a-document-to-an-image/
timestamp: 2024-01-27-14-07-04
---

گاهی اوقات لازم است که یک تصویر به جای اسناد در فرمت های دیگر مانند DOCX یا PDF دریافت کنید. به عنوان مثال، برای ارسال فاکتور باید پیش نمایش هر صفحه سند را به وب سایت یا برنامه خود اضافه کنید یا "اسکن" سند ایجاد کنید. این زمانی است که شما ممکن است نیاز به تبدیل یک سند در هر [فرمت بار پشتیبانی شده](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) به یک تصویر، دوباره، در هر [پشتیبانی از فرمت ذخیره](https://reference.aspose.com/words/java/com.aspose.words/saveformat/).

## تبدیل به فرمت تصویر

همانند تمام نمونه های تبدیل که قبلا توضیح داده شده است، شما باید یک سند جدید ایجاد کنید یا یک سند موجود را در هر فرمت پشتیبانی شده بارگذاری کنید، تغییرات لازم را انجام دهید و آن را در هر فرمت تصویر موجود ذخیره کنید، به عنوان مثال، JPEG، PNG یا BMP.

مثال کد زیر نشان می دهد که چگونه DOCX را به JPEGتبدیل کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToImage-ConvertDocxToJpeg.java" >}}

## گزینه های ذخیره را هنگام تبدیل به یک تصویر مشخص کنید

Aspose.Words کلاس [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) را برای شما فراهم می کند که کنترل بیشتری بر نحوه ذخیره اسناد در فرمت های مختلف تصویر می دهد. برخی از ویژگی های این کلاس ویژگی های بارگذاری بیش از حد کلاس های پایه مانند [FixedPageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/) یا [SaveOptions](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/) را به ارث می برند، اما گزینه های خاصی برای ذخیره تصاویر نیز وجود دارد.

امکان مشخص کردن صفحات برای تبدیل به فرمت تصویر با استفاده از ویژگی [PageSet](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPageSet) وجود دارد. به عنوان مثال، اگر فقط به پیش نمایش برای صفحه اول یا برای یک صفحه مشخص نیاز دارید، می توانید آن را اعمال کنید.

همچنین امکان کنترل کیفیت تصویر خروجی و فرمت پیکسل با استفاده از ویژگی های زیر وجود دارد– [HorizontalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getHorizontalResolution), [VerticalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getVerticalResolution), [Resolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), [Scale](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getScale), [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat), و همچنین تنظیمات رنگ تصویر را با استفاده از ویژگی های زیر تنظیم کنید– [ImageBrightness](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageBrightness), [ImageColorMode](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageColorMode), [ImageContrast](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageContrast), [PaperColor](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPaperColor).

همچنین ویژگی هایی وجود دارد که برای یک فرمت خاص اعمال می شود، به عنوان مثال، [JpegQuality](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getJpegQuality) یا [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression).

مثال کد زیر نشان می دهد که چگونه یک پیش نمایش از صفحه سند اول با استفاده از برخی از تنظیمات اضافی ایجاد کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToImage-ConvertDocumentToImage.java" >}}
