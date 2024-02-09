---
title: اشکال جدا از سند
second_title: Aspose.Words برای Python via .NET
articleTitle: رندر کردن اشکال جدا از یک سند
linktitle: رندر کردن اشکال جدا از یک سند
description: "هنگام پردازش یک سند، اشیاء گرافیکی مختلف مانند تصاویر، جعبه متن حاوی پاراگراف ها یا شکل های فلش را استخراج کنید و با استفاده از Python آنها را به یک مکان خارجی صادر کنید."
type: docs
weight: 40
url: /fa/python-net/rendering-shapes-separately-from-a-document/
---

هنگام پردازش اسناد، یک کار رایج استخراج تمام تصاویر موجود در سند و صادر کردن آنها به یک مکان خارجی است. این کار با Aspose.Words API که در حال حاضر قابلیت استخراج و ذخیره داده های تصویر را فراهم می کند، ساده می شود. با این حال، گاهی اوقات ممکن است بخواهید به طور مشابه انواع دیگری از محتوای گرافیکی را استخراج کنید که با نوع دیگری از شی ترسیمی نشان داده می شود، به عنوان مثال، یک جعبه متن حاوی پاراگراف ها، شکل های فلش و یک تصویر کوچک. هیچ راه ساده ای برای رندر کردن این شی وجود ندارد زیرا ترکیبی از عناصر محتوای فردی است. همچنین ممکن است با موردی مواجه شوید که محتویات با هم در شیئی که شبیه یک تصویر واحد است، گروه بندی شده باشند.

Aspose.Words عملکردی را برای استخراج این نوع محتوا فراهم می کند به همان روشی که می توانید یک تصویر ساده را از یک شکل به عنوان محتوای رندر شده استخراج کنید. این مقاله نحوه استفاده از این قابلیت را برای ارائه اشکال مستقل از سند شرح می دهد.

## انواع شکل در Aspose.Words

تمام محتوای یک لایه ترسیم سند توسط گره [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) یا [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) در ماژول شی سند Aspose.Words (DOM) نشان داده می شود. چنین محتویاتی می توانند جعبه های متن، تصاویر، AutoShapes، اشیاء OLE و غیره باشند. برخی از فیلدها نیز به عنوان شکل وارد می شوند، به عنوان مثال، فیلد `INCLUDEPICTURE`.

یک تصویر ساده توسط یک گره [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) از [ShapeType.IMAGE](https://reference.aspose.com/words/python-net/aspose.words.drawing/shadowtype/#image) نشان داده می شود. این گره شکل هیچ گره فرزندی ندارد اما داده های تصویر موجود در این گره شکل با ویژگی [Shape.image_data](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/image_data/) قابل دسترسی است. از طرف دیگر، یک شکل می تواند از گره های فرزند زیادی نیز ساخته شود. به عنوان مثال، یک شکل جعبه متن، که با ویژگی [ShapeType.TEXT_BOX](https://reference.aspose.com/words/python-net/aspose.words.drawing/shadowtype/#text_box) نشان داده می شود، می تواند از گره های زیادی مانند [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) و [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) تشکیل شود. اکثر اشکال می توانند شامل گره های سطح بلوک [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) و [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) باشند. این گره ها همان گره هایی هستند که در بدنه اصلی ظاهر می شوند. شکل‌ها همیشه بخشی از پاراگراف هستند، یا مستقیماً درون خط قرار می‌گیرند یا به [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) متصل می‌شوند، اما در هر نقطه‌ای از صفحه سند "شناور" هستند.

![rendering-shapes-separately-from-a-document_1](/words/python-net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-1.png)

یک سند همچنین می تواند شامل اشکالی باشد که با هم گروه بندی شده اند. Grouping را می توان در Microsoft Word با انتخاب چندین شی و کلیک روی "Group" در منوی کلیک راست فعال کرد.

![rendering-shapes-separately-from-a-document_2](/words/python-net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-2.png)

در Aspose.Words، این گروه از اشکال با گره [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) نشان داده می شوند. اینها را نیز می توان به همان روش فراخوانی کرد تا کل گروه را به تصویر تبدیل کند.

![rendering-shapes-separately-from-a-document_3](/words/python-net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-3.png)

فرمت DOCX می تواند شامل انواع خاصی از تصاویر، مانند نمودارها یا نمودارها باشد. این اشکال همچنین از طریق گره [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) در Aspose.Words نشان داده می شوند، که همچنین روش مشابهی را برای ارائه آنها به عنوان تصویر ارائه می دهد. با طراحی، یک شکل نمی تواند شکل دیگری را در کودکی داشته باشد، مگر اینکه آن شکل یک تصویر ([ShapeType.IMAGE](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#image)) باشد. به عنوان مثال، Microsoft Word به شما اجازه نمی دهد که یک جعبه متن را در جعبه متن دیگری وارد کنید.

انواع شکلی که در بالا توضیح داده شد، روش خاصی را برای ارائه اشکال از طریق کلاس [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) ارائه می دهند. یک نمونه از کلاس [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) برای یک [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) یا [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) از طریق روش [get_shape_renderer](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/get_shape_renderer/) یا با ارسال [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) به سازنده کلاس [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) بازیابی می شود. این کلاس دسترسی به اعضا را فراهم می کند که امکان رندر کردن یک شکل را به موارد زیر فراهم می کند:

- فایل روی دیسک
- استریم

{{% alert color="primary" %}}

هنگام ارائه یک [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)، باید بخشی از سلسله مراتب سند باشد. اگر [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) بخشی از درخت سند نباشد، پس از فراخوانی متدهای [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/)، خروجی رندر شده خالی خواهد بود.

{{% /alert %}}

## ارائه به فایل یا جریان

روش [save](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/save/) اضافه بارهایی را فراهم می کند که یک شکل را مستقیماً به یک فایل یا جریان ارائه می دهد. هر دو اضافه بار نمونه ای از کلاس [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) را می پذیرند که امکان تعریف گزینه هایی برای رندر شکل را می دهد. این روش مانند روش [Document.save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) عمل می کند. حتی اگر این پارامتر مورد نیاز است، می‌توانید یک مقدار تهی ارسال کنید و مشخص کنید که هیچ گزینه سفارشی وجود ندارد.

شکل را می توان در هر قالب تصویری که در شمارش [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) مشخص شده است صادر کرد. به عنوان مثال، تصویر را می توان به عنوان یک تصویر شطرنجی، مانند JPEG با مشخص کردن شمارش [SaveFormat.JPEG](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#jpeg)، یا به عنوان یک تصویر برداری، مانند EMF با تعیین [SaveFormat.EMF](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#emf) ارائه کرد.

مثال کد زیر ارائه یک شکل به تصویر EMF جدا از سند و ذخیره در دیسک را نشان می دهد:

{{< highlight python >}}
r = shape.get_shape_renderer()

# Define custom options which control how the image is rendered. Render the shape to the JPEG raster format.
imageOptions = aw.saving.ImageSaveOptions(aw.SaveFormat.EMF)
imageOptions.scale = 1.5
        
# Save the rendered image to disk.
r.save(docs_base.artifacts_dir + "TestFile.RenderToDisk_out.emf", imageOptions)
{{< /highlight >}}

مثال کد زیر رندر کردن یک شکل به یک تصویر JPEG را جدا از سند و ذخیره در یک جریان را نشان می دهد:

{{< highlight python >}}
r = shape.get_shape_renderer()

# Define custom options which control how the image is rendered. Render the shape to the vector format EMF.
imageOptions = aw.saving.ImageSaveOptions(aw.SaveFormat.JPEG)
        
# Output the image in gray scale
imageOptions.image_color_mode = aw.saving.ImageColorMode.GRAYSCALE

# Reduce the brightness a bit (default is 0.5f).
imageOptions.image_brightness = 0.45
        
stream =  io.FileIO(docs_base.artifacts_dir + "TestFile.RenderToStream_out.jpg", "w+b")

# Save the rendered image to the stream using different options.
r.save(stream, imageOptions)

# Close the stream
stream.close()
{{< /highlight >}}

کلاس [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) به شما امکان می دهد گزینه های مختلفی را تعیین کنید که نحوه رندر شدن تصویر را کنترل می کنند. عملکردی که در بالا توضیح داده شد می تواند به همان شیوه برای گره های [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) و [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) اعمال شود.

## ارائه یک تصویر شکل

کلاس [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) اشیایی را در لایه ترسیم نشان می دهد، مانند AutoShape، جعبه متن، فرم آزاد، شی OLE، کنترل ActiveX یا یک عکس. با استفاده از کلاس [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)، می توانید اشکال را در یک سند Microsoft Word ایجاد یا تغییر دهید. ویژگی مهم یک شکل [shape_type](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/shape_type/) آن است. اشکال از انواع مختلف می توانند قابلیت های متفاوتی در یک سند Word داشته باشند. برای مثال، فقط شکل‌های تصویر و OLE می‌توانند تصاویر درون خود داشته باشند، در حالی که بیشتر شکل‌ها فقط می‌توانند متن داشته باشند.

مثال زیر نشان می دهد که چگونه می توان یک تصویر Shape را به یک تصویر JPEG جدا از سند ارائه کرد و آن را در دیسک ذخیره کرد:

{{< highlight python >}}
# Save the rendered image to disk.
shape.get_shape_renderer().save(docs_base.artifacts_dir + "TestFile.RenderShapeImage.jpeg", None)
{{< /highlight >}}

## بازیابی یک اندازه شکل

کلاس [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) همچنین عملکردی برای بازیابی اندازه شکل در پیکسل از طریق روش [get_size_in_pixels](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/get_size_in_pixels/) ارائه می دهد. این روش دو پارامتر شناور (Single) - مقیاس و DPI را می پذیرد که در محاسبه اندازه شکل هنگام ارائه شکل استفاده می شود. متد شی **Size** را برمی گرداند که شامل عرض و ارتفاع اندازه محاسبه شده است. این زمانی مفید است که لازم است از قبل اندازه شکل رندر شده را بدانید. ویژگی [size_in_points](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/size_in_points/) اندازه Shape اندازه گیری شده بر حسب نقاط را برمی گرداند. نتیجه یک شی **SizeF** حاوی عرض و ارتفاع است. همچنین می توانید از ویژگی [bounds_in_points](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/bounds_in_points/) برای بدست آوردن مرزهای واقعی شکل استفاده کنید.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-GetActualShapeBoundsPoints.py" >}}


