---
title: کار با تصاویر Java
second_title: Aspose.Words برای Java
articleTitle: کار با تصاویر
linktitle: کار با تصاویر
type: docs
description: "شکل تصویر در جزئیات و ویژگی های پیشرفته ارائه شده توسط Aspose.Words برای Java..."
weight: 300
url: /fa/java/working-with-images/
---

Aspose.Words به کاربران اجازه می دهد تا با تصاویر به شیوه ای بسیار انعطاف پذیر کار کنند. در این مقاله می توانید تنها برخی از امکانات کار با تصاویر را بررسی کنید.

## چگونه تصاویر را از یک سند استخراج کنیم {#how-to-extract-images-from-a-document}

تمام تصاویر در داخل ذخیره می شوند **Shape** گره ها در یک سند برای استخراج تمام تصاویر یا تصاویری که دارای یک نوع خاص از سند هستند، این مراحل را دنبال کنید:

- استفاده از [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/shape/#getChildNodes) روش انتخاب تمام گره های Shape
- از طریق مجموعه های گره نتیجه.
- چک کنید [hasImage](https://reference.aspose.com/words/java/com.aspose.words/shape/#hasImage) مالکیت
- – استخراج اطلاعات تصویر با استفاده از [ImageData](https://reference.aspose.com/words/java/com.aspose.words/shape/#getImageData) مالکیت
- – ذخیره اطلاعات تصویر به یک فایل

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-ExtractImagesToFiles-ExtractImagesToFiles.java" >}}

## چگونه برای قرار دادن بارکد در هر صفحه سند {#how-to-insert-barcode-on-each-documen-page}

این مثال به شما این امکان را می دهد که بارکد های مشابه یا متفاوت را در تمام صفحات یا صفحات خاص یک سند Word اضافه کنید. هیچ راه مستقیمی برای اضافه کردن بارکد در تمام صفحات یک سند وجود ندارد، اما می توانید از آن استفاده کنید. [moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int), [moveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int) و [insertImage](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder#insertImage(byte[])روش های حرکت به هر بخش یا هدر / پا و قرار دادن تصاویر بارکد به عنوان شما می توانید در کد زیر ببینید

مثال کد زیر نشان می دهد که چگونه یک تصویر بارکد را در هر صفحه از یک سند وارد کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-InsertBarcodeImage-InsertBarcodeImage.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-InsertBarcodeImage-InsertBarcodeIntoFooter.java" >}}

## نسبت تصویر را قفل کنید {#lock-aspect-ratio-of-image}

نسبت ابعاد یک شکل هندسی نسبت اندازه های آن در ابعاد مختلف است. شما می توانید نسبت ابعاد یک تصویر را با استفاده از قفل کنید [AspectRatioLocked](https://reference.aspose.com/words/java/com.aspose.words/shape/#getAspectRatioLocked)... ارزش پیش فرض نسبت ابعاد شکل بستگی به [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/)... این است که true برای `ShapeType.Image` و false برای انواع دیگر

مثال کد زیر نشان می دهد که چگونه با نسبت ابعاد کار کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetImageAspectRatioLocked-DocumentBuilderSetImageAspectRatioLocked.java" >}}

## چگونه به پیدا کردن Bounds واقعی از شکل در امتیاز {#how-to-get-actual-bounds-of-shape-in-points}

اگر شما می خواهید جعبه اتصال واقعی شکل که در صفحه ارائه شده است، شما می توانید با استفاده از این کار را با استفاده از [BoundsInPoints](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getBoundsInPoints) مالکیت

مثال کد زیر نشان می دهد که چگونه از این ملک استفاده کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.java" >}}

## تصاویر Crop

نمونه برداری یک تصویر معمولا به حذف قسمت های بیرونی ناخواسته یک تصویر برای کمک به بهبود چارچوب اشاره دارد. همچنین برای حذف برخی از بخش های یک تصویر برای افزایش تمرکز بر یک منطقه خاص استفاده می شود.

مثال کد زیر نشان می دهد که چگونه با استفاده از این کار را انجام دهید Aspose.Words API:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-CropImages-CropImageCall.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-CropImages-CropImage.java" >}}

## تصاویر پس انداز به عنوان WMF

Aspose.Words قابلیت هایی برای صرفه جویی در تمام تصاویر موجود در یک سند برای [WMF](https://docs.fileformat.com/image/wmf/)فرمت در هنگام تبدیل DOCX به RTF

مثال کد زیر نشان می دهد که چگونه تصاویر را به عنوان WMF با گزینه های ذخیره RTF ذخیره کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.java" >}}
