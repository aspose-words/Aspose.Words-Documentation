---
title: کار با تصاویر در C#
second_title: Aspose.Words برای .NET
articleTitle: کار با تصاویر
linktitle: کار با تصاویر
description: "اشکال تصویر در جزئیات و ویژگی های پیشرفته ارائه شده توسط Aspose.Words برای .NET."
type: docs
weight: 300
url: /fa/net/working-with-images/
---

Aspose.Words به کاربران اجازه می دهد تا با تصاویر به روشی بسیار انعطاف پذیر کار کنند. در این مقاله می توانید تنها برخی از امکانات کار با تصاویر را بررسی کنید.

## نحوه درج یک تصویر {#insert-an-image}

[DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) چندین بار اضافه بار از روش [InsertImage](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertimage/) را ارائه می دهد که به شما امکان می دهد یک تصویر درون خطی یا شناور را وارد کنید. اگر تصویر یک متافیل EMF یا WMF باشد، در قالب متافایل در سند درج می شود. تمام تصاویر دیگر در فرمت PNG ذخیره خواهند شد. روش **InsertImage** می تواند از تصاویر منابع مختلف استفاده کند:

- از یک فایل یا `URL` با عبور یک پارامتر `String` [InsertImage](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertimage/)
- از یک جریان با عبور پارامتر `Stream` **InsertImage**
- از یک شی Image با ارسال پارامتر Image **InsertImage**
- از یک آرایه بایت با ارسال پارامتر آرایه بایت **InsertImage**

برای هر یک از روش های **InsertImage**، اضافه بارهای بیشتری وجود دارد که به شما امکان می دهد تصویری را با گزینه های زیر وارد کنید:
- درون خطی یا شناور در یک موقعیت خاص، به عنوان مثال، **InsertImage**
- مقیاس درصد یا اندازه سفارشی، به عنوان مثال، **InsertImage**. علاوه بر این، روش **InsertImage** یک شی [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) را که به تازگی ایجاد و درج شده است برمی گرداند تا بتوانید ویژگی های Shape را بیشتر تغییر دهید

### نحوه درج یک تصویر درون خطی {#insert-an-inline-image}

یک رشته که نشان دهنده فایلی است که حاوی تصویر است را به **InsertImage** ارسال کنید تا تصویر را به عنوان یک گرافیک درون خطی در سند وارد کنید

مثال کد زیر نحوه درج یک تصویر درون خطی در موقعیت مکان نما را در یک سند نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertInlineImage.cs" >}}

### نحوه درج یک تصویر شناور {#insert-a-floating-image}

مثال کد زیر نحوه درج یک تصویر شناور از یک فایل یا `URL` را در موقعیت و اندازه مشخص نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertFloatingImage.cs" >}}

## نحوه استخراج تصاویر از یک سند {#how-to-extract-images-from-a-document}

تمام تصاویر در داخل گره های **Shape** در یک [Document](https://reference.aspose.com/words/net/aspose.words/document/) ذخیره می شوند. برای استخراج تمام تصاویر یا تصاویر دارای نوع خاص از سند، مراحل زیر را دنبال کنید:

- از روش [GetChildNodes](https://reference.aspose.com/words/net/aspose.words/compositenode/getchildnodes/) برای انتخاب تمام گره های **Shape** استفاده کنید.
- تکرار از طریق مجموعه گره های حاصل.
- خاصیت بولی [HasImage](https://reference.aspose.com/words/net/aspose.words.drawing/shape/hasimage/) را بررسی کنید.
- استخراج داده های تصویر با استفاده از ویژگی [ImageData](https://reference.aspose.com/words/net/aspose.words.drawing/shape/imagedata/).
- داده های تصویر را در یک فایل ذخیره کنید.

مثال کد زیر نحوه استخراج تصاویر از یک سند و ذخیره آنها به عنوان فایل را نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-ExtractImagesToFiles-ExtractImagesToFiles.cs" >}}

{{% alert color="primary" %}}

فایل نمونه این نمونه را می توانید از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Images.docx) دانلود کنید.

{{% /alert %}}

## نحوه درج بارکد در هر صفحه سند {#how-to-insert-barcode-on-each-documen-page}

این مثال به شما نشان می دهد که بارکدهای یکسان یا متفاوت را در تمام یا صفحات خاص یک سند Word اضافه کنید. هیچ راه مستقیمی برای افزودن بارکد در تمام صفحات یک سند وجود ندارد، اما می‌توانید از روش‌های **MoveToSection**، **MoveToHeaderFooter** و **InsertImage** برای رفتن به هر بخش یا سرصفحه/پانویسی استفاده کنید و تصاویر بارکد را همانطور که در کد زیر مشاهده می‌کنید وارد کنید.

مثال کد زیر نحوه درج یک تصویر بارکد در هر صفحه از یک سند را نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-InsertBarcodeImage-InsertBarcodeImage.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-InsertBarcodeImage-InsertBarcodeIntoFooter.cs" >}}

## قفل نسبت ابعاد تصویر {#lock-aspect-ratio-of-image}

نسبت ابعاد یک شکل هندسی، نسبت اندازه های آن در ابعاد مختلف است. با استفاده از [AspectRatioLocked](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/aspectratiolocked/) می توانید نسبت تصویر را قفل کنید. مقدار پیش فرض نسبت ابعاد شکل به [ShapeType](https://reference.aspose.com/words/net/aspose.words.drawing/shapetype/) بستگی دارد. این *true* برای `ShapeType.Image` و *false* برای سایر انواع شکل است.

مثال کد زیر نحوه کار با نسبت ابعاد را نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.cs" >}}

## نحوه بدست آوردن مرزهای واقعی شکل در نقاط {#how-to-get-actual-bounds-of-shape-in-points}

اگر می‌خواهید کادر واقعی شکل را همانطور که در صفحه نمایش داده شده است، با استفاده از ویژگی [BoundsInPoints](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/boundsinpoints/) به دست آورید.

مثال کد زیر نحوه استفاده از این ویژگی را نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.cs" >}}

## برش تصاویر {#crop-images}

برش یک تصویر معمولاً به حذف قسمت های بیرونی ناخواسته تصویر برای کمک به بهبود کادربندی اشاره دارد. همچنین برای حذف برخی از بخش‌های تصویر برای افزایش فوکوس روی یک ناحیه خاص استفاده می‌شود.

مثال کد زیر نحوه دستیابی به این هدف را با استفاده از Aspose.Words API نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-CropImages-CropImageCall.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-CropImages-CropImage.cs" >}}

## تصاویر را به عنوان WMF {#save-images-as-wmf} ذخیره کنید

Aspose.Words عملکردی را برای ذخیره تمام تصاویر موجود در یک سند به فرمت [WMF](https://docs.fileformat.com/image/wmf/) در حین تبدیل DOCX به RTF فراهم می کند.

مثال کد زیر نحوه ذخیره تصاویر را به عنوان WMF با گزینه های ذخیره RTF نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.cs" >}}
