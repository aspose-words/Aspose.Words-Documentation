---
title: کار با تصاویر در Java
second_title: Aspose.Words برای Java
articleTitle: کار با تصاویر
linktitle: کار با تصاویر
type: docs
description: "شکل های تصویر در جزئیات و ویژگی های پیشرفته ارائه شده توسط Aspose.Words برای Java."
weight: 300
url: /fa/java/working-with-images/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words به کاربران اجازه می دهد تا با تصاویر به روشی بسیار انعطاف پذیر کار کنند. در این مقاله فقط می توانید برخی از امکانات کار با تصاویر را بررسی کنید.

## نحوه استخراج تصاویر از یک سند {#how-to-extract-images-from-a-document}

همه تصاویر در داخل گره های **Shape** در یک سند ذخیره می شوند. برای استخراج تمام تصاویر یا تصاویر با نوع خاصی از سند، این مراحل را دنبال کنید:

- از روش [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/shape/#getChildNodes) برای انتخاب تمام گره های شکل استفاده کنید.
- از طریق مجموعه گره های حاصل تکرار کنید.
- ویژگی boolean [hasImage](https://reference.aspose.com/words/java/com.aspose.words/shape/#hasImage) را بررسی کنید.
- استخراج اطلاعات تصویر با استفاده از خاصیت [ImageData](https://reference.aspose.com/words/java/com.aspose.words/shape/#getImageData).
- داده های تصویر را در یک فایل ذخیره کنید.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-ExtractImagesToFiles-ExtractImagesToFiles.java" >}}

## چگونه بارکد را در هر صفحه سند وارد کنیم {#how-to-insert-barcode-on-each-documen-page}

این مثال به شما اجازه می دهد بارکد های یکسان یا متفاوت را در تمام یا صفحات خاص یک سند ورد اضافه کنید. هیچ راهی برای اضافه کردن بارکد در تمام صفحات یک سند وجود ندارد اما شما می توانید از روش های [moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int)، [moveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int) و [insertImage](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder#insertImage(byte[])) برای حرکت به هر بخش یا سرصفحه/پای صفحه استفاده کنید و تصاویر بارکد را همانطور که در کد زیر می بینید وارد کنید.

مثال کد زیر نشان می دهد که چگونه یک تصویر بارکد را در هر صفحه از یک سند وارد کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-InsertBarcodeImage-InsertBarcodeImage.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-InsertBarcodeImage-InsertBarcodeIntoFooter.java" >}}

## نسبت ابعاد قفل تصویر {#lock-aspect-ratio-of-image}

نسبت ابعاد یک شکل هندسی نسبت اندازه های آن در ابعاد مختلف است. شما می توانید نسبت ابعاد یک تصویر را با استفاده از [AspectRatioLocked](https://reference.aspose.com/words/java/com.aspose.words/shape/#getAspectRatioLocked) قفل کنید. مقدار پیش فرض نسبت ابعاد شکل به [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/) بستگی دارد. این برای `ShapeType.Image` درست است و برای سایر انواع شکل غلط است.

مثال کد زیر نشان می دهد که چگونه با نسبت ابعاد کار کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetImageAspectRatioLocked-DocumentBuilderSetImageAspectRatioLocked.java" >}}

## چگونه مرزهای واقعی شکل را در نقاط بدست آوریم {#how-to-get-actual-bounds-of-shape-in-points}

اگر می خواهید جعبه محدود کننده واقعی شکل را همانطور که در صفحه ارائه شده است، می توانید با استفاده از ویژگی [BoundsInPoints](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getBoundsInPoints) به این هدف برسید.

مثال کد زیر نشان می دهد که چگونه از این ویژگی استفاده کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.java" >}}

## تصاویر محصول

برش یک تصویر معمولا به حذف قسمت های بیرونی ناخواسته یک تصویر برای کمک به بهبود قاب اشاره دارد. همچنین برای حذف برخی از بخش های یک تصویر برای افزایش تمرکز بر یک منطقه خاص استفاده می شود.

مثال کد زیر نشان می دهد که چگونه با استفاده از Aspose.Words APIبه این هدف برسیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-CropImages-CropImageCall.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-CropImages-CropImage.java" >}}

## ذخیره تصاویر به صورت WMF

Aspose.Words قابلیت ذخیره تمام تصاویر موجود در یک سند را برای [WMF](https://docs.fileformat.com/image/wmf/)فرمت در حالی که تبدیل DOCX به RTF.

مثال کد زیر نشان می دهد که چگونه تصاویر را به عنوان WMF با RTF گزینه های ذخیره ذخیره کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.java" >}}
