---
title: کار با تصاویر در Python
second_title: Aspose.Words برای Python via .NET
articleTitle: کار با تصاویر
linktitle: کار با تصاویر
description: "ایجاد و مدیریت تصاویر با فرمت های مختلف در یک سند با استفاده از Python."
type: docs
weight: 300
url: /fa/python-net/working-with-images/
---

Aspose.Words به کاربران اجازه می دهد تا با تصاویر به روشی بسیار انعطاف پذیر کار کنند. در این مقاله می توانید تنها برخی از امکانات کار با تصاویر را بررسی کنید.

## درج تصویر

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) چندین بار اضافه بار از روش [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) را ارائه می دهد که به شما امکان می دهد یک تصویر درون خطی یا شناور را وارد کنید. اگر تصویر یک متافیل EMF یا WMF باشد، در قالب متافایل در سند درج می شود. تمام تصاویر دیگر در فرمت PNG ذخیره خواهند شد. روش **insert_image** می تواند از تصاویر منابع مختلف استفاده کند:

- از یک فایل یا `URL` با ارسال پارامتر رشته
- از یک جریان با عبور یک پارامتر `Stream`
- از یک آرایه بایت با ارسال پارامتر آرایه بایت

برای هر یک از روش های **insert_image**، اضافه بارهای بیشتری وجود دارد که به شما امکان می دهد تصویری را با گزینه های زیر وارد کنید:
- درون خطی یا شناور در یک موقعیت خاص، به عنوان مثال، **insert_image**
- مقیاس درصد یا اندازه سفارشی. علاوه بر این، روش [DocumentBuilder.insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) یک شی [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) را که به تازگی ایجاد و درج شده است برمی گرداند تا بتوانید ویژگی های [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) را بیشتر تغییر دهید

### درج تصویر درون خطی

یک رشته که نشان دهنده فایلی است که حاوی تصویر است را به [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) ارسال کنید تا تصویر را به عنوان یک گرافیک درون خطی در سند وارد کنید.

مثال کد زیر نحوه درج یک تصویر درون خطی در موقعیت مکان نما را در یک سند نشان می دهد:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_image(docs_base.images_dir + "Logo.jpg")

doc.save(docs_base.artifacts_dir+"WorkingWithImages.document_builder_insert_inline_image.doc")
{{< /highlight >}}

### درج یک تصویر شناور (کاملاً در موقعیت)

مثال کد زیر نحوه درج یک تصویر شناور از یک فایل یا `URL` را در موقعیت و اندازه مشخص نشان می دهد:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_image(docs_base.images_dir + "Logo.jpg",
    aw.drawing.RelativeHorizontalPosition.MARGIN,
    100,
    aw.drawing.RelativeVerticalPosition.MARGIN,
    100,
    200,
    100,
    aw.drawing.WrapType.SQUARE)

doc.save(docs_base.artifacts_dir+"WorkingWithImages.document_builder_insert_floating_image.doc")
{{< /highlight >}}

## نحوه استخراج تصاویر از یک سند

همه تصاویر در داخل گره های [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) در یک [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) ذخیره می شوند. برای استخراج تمام تصاویر یا تصاویر دارای نوع خاص از سند، مراحل زیر را دنبال کنید:

- از روش [Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) برای انتخاب تمام گره های [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) استفاده کنید.
- تکرار از طریق مجموعه گره های حاصل.
- خاصیت بولی [Shape.has_image](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/has_image/) را بررسی کنید.
- استخراج داده های تصویر با استفاده از ویژگی [Shape.image_data](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/image_data/).
- داده های تصویر را در یک فایل ذخیره کنید.

مثال کد زیر نحوه استخراج تصاویر از یک سند و ذخیره آنها به عنوان فایل را نشان می دهد:

فایل قالب این نمونه را می توانید از [اینجا](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Images.docx) دانلود کنید.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-ExtractImagesToFiles.py" >}}

{{% alert color="primary" %}}

فایل نمونه این نمونه را می توانید از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Images.docx) دانلود کنید.

{{% /alert %}}

## نحوه درج بارکد در هر صفحه از یک سند

این مثال به شما نشان می دهد که بارکدهای یکسان یا متفاوت را در تمام یا صفحات خاص یک سند Word اضافه کنید. هیچ راه مستقیمی برای افزودن بارکد در تمام صفحات یک سند وجود ندارد، اما می‌توانید از روش‌های [move_to_section](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_section/)، [move_to_header_footer](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_header_footer/) و [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) برای رفتن به هر بخش یا سرصفحه/پانویسی استفاده کنید و تصاویر بارکد را همانطور که در کد زیر مشاهده می‌کنید وارد کنید.

مثال کد زیر یک تصویر بارکد را در هر صفحه از یک سند درج می کند.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_images-InsertBarcodeImage.py" >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_images-InsertBarcodeIntoFooter.py" >}}

## قفل نسبت تصویر

نسبت ابعاد یک شکل هندسی، نسبت اندازه های آن در ابعاد مختلف است. با استفاده از [aspect_ratio_locked](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/aspect_ratio_locked/) می توانید نسبت تصویر را قفل کنید. مقدار پیش فرض نسبت ابعاد شکل به [ShapeType](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/) بستگی دارد. این `True` برای [ShapeType.IMAGE](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#image) و `False` برای سایر انواع شکل است.

مثال کد زیر نحوه کار با نسبت ابعاد را نشان می دهد:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

shape = builder.insert_image(docs_base.images_dir + "Logo.jpg")
shape.aspect_ratio_locked = False

doc.save(docs_base.artifacts_dir+"WorkingWithImages.set_aspect_ratio_locked.doc")
{{< /highlight >}}

## چگونه مرزهای واقعی شکل را در نقاط بدست آوریم

اگر می‌خواهید کادر واقعی شکل را همانطور که در صفحه نمایش داده شده است، با استفاده از ویژگی [bounds_in_points](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/bounds_in_points/) به دست آورید.

مثال کد زیر نحوه استفاده از این ویژگی را نشان می دهد:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

shape = builder.insert_image(docs_base.images_dir + "Logo.jpg")
shape.aspect_ratio_locked = False

print("\nGets the actual bounds of the shape in points.")
rect = shape.get_shape_renderer().bounds_in_points
print(f"{rect.x}, {rect.y}, {rect.width}, {rect.height}")
{{< /highlight >}}

## برش تصاویر

برش یک تصویر معمولاً به حذف قسمت های بیرونی ناخواسته تصویر برای کمک به بهبود کادربندی اشاره دارد. همچنین برای حذف برخی از بخش‌های تصویر برای افزایش فوکوس روی یک ناحیه خاص استفاده می‌شود.

مثال کد زیر نحوه دستیابی به این هدف را با استفاده از Aspose.Words API نشان می دهد:

{{< highlight python >}}
# The path to the documents directory.
inputPath = docs_base.images_dir + "Logo.jpg"
outputPath = docs_base.artifacts_dir + "cropped_logo.jpg"

self.crop_image(inputPath,outputPath, 100, 90, 200, 200)
{{< /highlight >}}

{{< highlight python >}}
@staticmethod
def crop_image(inPath : str, outPath : str, left : int, top : int, width : int, height : int) :
    
    doc = aw.Document();
    builder = aw.DocumentBuilder(doc)
    
    croppedImage = builder.insert_image(inPath)
    
    src_width_points = croppedImage.width
    src_height_points = croppedImage.height
    
    croppedImage.width = aw.ConvertUtil.pixel_to_point(width)
    croppedImage.height = aw.ConvertUtil.pixel_to_point(height)
    
    widthRatio = croppedImage.width / src_width_points
    heightRatio = croppedImage.height / src_height_points
    
    if (widthRatio< 1) :
        croppedImage.image_data.crop_right = 1 - widthRatio
    
    if (heightRatio< 1) :
        croppedImage.image_data.crop_bottom = 1 - heightRatio
    
    leftToWidth = aw.ConvertUtil.pixel_to_point(left) / src_width_points
    topToHeight = aw.ConvertUtil.pixel_to_point(top) / src_height_points
    
    croppedImage.image_data.crop_left = leftToWidth
    croppedImage.image_data.crop_right = croppedImage.image_data.crop_right - leftToWidth
    
    croppedImage.image_data.crop_top = topToHeight
    croppedImage.image_data.crop_bottom = croppedImage.image_data.crop_bottom - topToHeight
    
    croppedImage.get_shape_renderer().save(outPath, aw.saving.ImageSaveOptions(aw.SaveFormat.JPEG))
{{< /highlight >}}

## ذخیره تصاویر به عنوان WMF

Aspose.Words عملکردی را برای ذخیره تمام تصاویر موجود در یک سند به فرمت [WMF](https://docs.fileformat.com/image/wmf/) در حین تبدیل DOCX به RTF فراهم می کند.

مثال کد زیر نحوه ذخیره تصاویر را به عنوان WMF با گزینه های ذخیره RTF نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_rtf_save_options-SavingImagesAsWmf.py" >}}
