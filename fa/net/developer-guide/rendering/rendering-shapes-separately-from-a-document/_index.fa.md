---
title: رندر کردن اشکال جدا از سند
second_title: Aspose.Words برای .NET
articleTitle: رندر کردن اشکال جدا از یک سند
linktitle: رندر کردن اشکال جدا از یک سند
description: "هنگام پردازش یک سند، اشیاء گرافیکی مختلف مانند تصاویر، جعبه متن حاوی پاراگراف ها یا شکل های فلش را استخراج کنید و با استفاده از C# آنها را به یک مکان خارجی صادر کنید."
type: docs
weight: 40
url: /fa/net/rendering-shapes-separately-from-a-document/
timestamp: 2024-07-10-14-38-57
---

هنگام پردازش اسناد، یک کار رایج استخراج تمام تصاویر موجود در سند و صادر کردن آنها به یک مکان خارجی است. این کار با Aspose.Words API که از قبل قابلیت استخراج و ذخیره داده های تصویر را فراهم می کند، ساده می شود. با این حال، گاهی اوقات ممکن است بخواهید به طور مشابه انواع دیگری از محتوای گرافیکی را استخراج کنید که با نوع دیگری از شی ترسیمی نشان داده می شود، به عنوان مثال، یک جعبه متن حاوی پاراگراف ها، شکل های فلش و یک تصویر کوچک. هیچ راه ساده ای برای رندر کردن این شی وجود ندارد زیرا ترکیبی از عناصر محتوای فردی است. همچنین ممکن است با موردی مواجه شوید که محتویات با هم در شیئی که شبیه یک تصویر واحد است، گروه بندی شده باشند.

Aspose.Words عملکردی را برای استخراج این نوع محتوا فراهم می کند به همان روشی که می توانید یک تصویر ساده را از یک شکل به عنوان محتوای رندر شده استخراج کنید. این مقاله نحوه استفاده از این قابلیت را برای ارائه اشکال مستقل از سند شرح می دهد.

## انواع شکل در Aspose.Words

تمام محتوای یک لایه ترسیم سند توسط گره [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) یا [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/) در ماژول شی سند Aspose.Words (DOM) نشان داده می شود. چنین محتویاتی می توانند جعبه های متن، تصاویر، AutoShapes، اشیاء OLE و غیره باشند. برخی از فیلدها نیز به عنوان شکل وارد می شوند، به عنوان مثال، فیلد `INCLUDEPICTURE`.

یک تصویر ساده توسط یک گره **Shape** از [ShapeType.Image](https://reference.aspose.com/words/net/aspose.words.drawing/shapetype/) نشان داده می شود. این گره شکل هیچ گره فرزندی ندارد اما داده های تصویر موجود در این گره شکل با ویژگی [Shape.ImageData](https://reference.aspose.com/words/net/aspose.words.drawing/shape/imagedata/) قابل دسترسی است. از سوی دیگر، یک شکل می تواند از گره های فرزند زیادی نیز ساخته شود. به عنوان مثال، یک شکل جعبه متن، که با ویژگی [ShapeType.TextBox](https://reference.aspose.com/words/net/aspose.words.drawing/shapetype/) نشان داده می شود، می تواند از گره های زیادی مانند [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/) و [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/) تشکیل شود. اکثر اشکال می توانند شامل گره های سطح بلوک **Paragraph** و **Table** باشند. این گره ها همان گره هایی هستند که در بدنه اصلی ظاهر می شوند. شکل‌ها همیشه بخشی از پاراگراف هستند، یا مستقیماً درون خط قرار می‌گیرند یا به **پاراگراف،** متصل می‌شوند، اما در هر نقطه‌ای از صفحه سند "شناور" هستند.

![rendering-shapes-separately-from-a-document_1](/words/net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-1.png)

یک سند همچنین می تواند شامل اشکالی باشد که با هم گروه بندی شده اند. Grouping را می توان در Microsoft Word با انتخاب چندین شی و کلیک روی "Group" در منوی کلیک راست فعال کرد.

![rendering-shapes-separately-from-a-document_2](/words/net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-2.png)

در Aspose.Words، این گروه از اشکال با گره [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/) نشان داده می شوند. اینها را نیز می توان به همان روش فراخوانی کرد تا کل گروه را به تصویر تبدیل کند.

![rendering-shapes-separately-from-a-document_3](/words/net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-3.png)

فرمت DOCX می تواند شامل انواع خاصی از تصاویر، مانند نمودارها یا نمودارها باشد. این اشکال همچنین از طریق گره **Shape** در Aspose.Words نشان داده می شوند، که همچنین روش مشابهی را برای ارائه آنها به عنوان تصویر ارائه می دهد. با طراحی، یک شکل نمی تواند شکل دیگری را در کودکی داشته باشد، مگر اینکه آن شکل یک تصویر (**ShapeType.Image**) باشد. به عنوان مثال، Microsoft Word به شما اجازه نمی دهد که یک جعبه متن را در جعبه متن دیگری وارد کنید.

انواع شکلی که در بالا توضیح داده شد، روش خاصی را برای ارائه اشکال از طریق کلاس [ShapeRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/shaperenderer/) ارائه می دهند. نمونه ای از کلاس **ShapeRenderer** برای **Shape** یا **GroupShape** از طریق متد **GetShapeRenderer** یا با ارسال **Shape** به سازنده کلاس **ShapeRenderer** بازیابی می شود. این کلاس دسترسی به اعضا را فراهم می کند که امکان رندر کردن یک شکل را به موارد زیر فراهم می کند:

- فایل روی دیسک با استفاده از روش [Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/) overload
- با استفاده از روش [Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/) اضافه بار پخش جریانی کنید
- شیء گرافیکی .NET با استفاده از روش های [RenderToSize](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertosize/) و [RenderToScale](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertoscale/)

{{% alert color="primary" %}}

هنگام ارائه یک **Shape**، باید بخشی از سلسله مراتب سند باشد. اگر **Shape** بخشی از درخت سند نباشد، پس از فراخوانی متدهای **ShapeRenderer**، خروجی رندر شده خالی خواهد بود.

{{% /alert %}}

## ارائه به فایل یا جریان

روش [Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/) اضافه بارهایی را فراهم می کند که یک شکل را مستقیماً به یک فایل یا جریان ارائه می دهد. هر دو اضافه بار نمونه ای از کلاس [ImageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/) را می پذیرند که امکان تعریف گزینه هایی برای رندر شکل را می دهد. این روش همانند روش [Document.Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save) عمل می کند. حتی اگر این پارامتر مورد نیاز است، می‌توانید یک مقدار تهی ارسال کنید و مشخص کنید که هیچ گزینه سفارشی وجود ندارد.

شکل را می توان در هر قالب تصویری که در شمارش [SaveFormat](https://reference.aspose.com/words/net/aspose.words/saveformat/) مشخص شده است صادر کرد. به عنوان مثال، تصویر را می توان به عنوان یک تصویر شطرنجی، مانند JPEG با مشخص کردن شمارش [SaveFormat.Jpeg](https://reference.aspose.com/words/net/aspose.words/saveformat/)، یا به عنوان یک تصویر برداری، مانند EMF با تعیین [SaveFormat.Emf](https://reference.aspose.com/words/net/aspose.words/saveformat/) ارائه کرد.

مثال کد زیر ارائه یک شکل به تصویر EMF جدا از سند و ذخیره در دیسک را نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeToDisk.cs" >}}

مثال کد زیر رندر کردن یک شکل به یک تصویر JPEG را جدا از سند و ذخیره در یک جریان را نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeToStream.cs" >}}

کلاس **ImageSaveOptions** به شما اجازه می دهد تا گزینه های مختلفی را تعیین کنید که نحوه رندر شدن تصویر را کنترل می کنند. عملکردی که در بالا توضیح داده شد می تواند به همان شیوه برای گره های **GroupShape** و **Shape** اعمال شود.

## ارائه به یک شی گرافیکی .NET

رندر مستقیم به یک شیء **Graphics** به شما امکان می دهد تنظیمات و وضعیت خود را برای شیء **Graphics** تعریف کنید. یک سناریوی رایج شامل رندر کردن یک شکل به طور مستقیم به یک شی **Graphics** است که از یک فرم Windows یا یک Bitmap بازیابی شده است. هنگامی که گره **Shape** رندر می شود، تنظیمات بر ظاهر شکل تأثیر می گذارد. به عنوان مثال، می توانید با استفاده از روش های **RotateTransform** یا **ScaleTransform** برای شی **Graphics**، شکل را بچرخانید یا مقیاس دهید.

مثال زیر نشان می دهد که چگونه می توان یک شکل را به یک شی .**NET Graphics** جدا از سند ارائه کرد و چرخش را روی تصویر رندر شده اعمال کرد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeToGraphics.cs" >}}

به طور مشابه، به روش [RenderToSize](https://reference.aspose.com/words/net/aspose.words/document/rendertosize/)، روش [RenderToSize](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertosize/) به ارث رسیده از [NodeRendererBase](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/) برای ایجاد تصاویر کوچک از محتوای سند مفید است. اندازه شکل از طریق سازنده مشخص می شود. متد **RenderToSize** شی **Graphics**، مختصات X و Y موقعیت تصویر و اندازه تصویر (عرض و ارتفاع) که روی شی **Graphics** کشیده می شود را می پذیرد.

**Shape** را می توان با استفاده از روش [ShapeRenderer.RenderToScale](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertoscale/) که از کلاس [NodeRendererBase](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/) به ارث رسیده است، در مقیاس خاصی رندر کرد. این شبیه به روش [Document.RenderToScale](https://reference.aspose.com/words/net/aspose.words/document/rendertoscale/) است که همان پارامترهای اصلی را می پذیرد. تفاوت این دو روش در این است که با روش **ShapeRenderer.RenderToScale** به جای اندازه تحت اللفظی، یک مقدار شناور را انتخاب می کنید که شکل را در حین رندر کردن آن مقیاس می کند. اگر مقدار شناور برابر با 1.0 باشد باعث می شود شکل در 100٪ اندازه اصلی خود ارائه شود. مقدار شناور 0.5 اندازه تصویر را به نصف کاهش می دهد.

## ارائه یک تصویر شکل

کلاس [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) اشیایی را در لایه ترسیم نشان می دهد، مانند AutoShape، جعبه متن، فرم آزاد، شی OLE، کنترل ActiveX یا یک عکس. با استفاده از کلاس **Shape**، می توانید اشکال را در یک سند Microsoft Word ایجاد یا تغییر دهید. ویژگی مهم یک شکل [ShapeType](https://reference.aspose.com/words/net/aspose.words.drawing/shape/base/properties/shapetype) آن است. اشکال از انواع مختلف می توانند قابلیت های متفاوتی در یک سند Word داشته باشند. برای مثال، فقط شکل‌های تصویر و OLE می‌توانند تصاویر درون خود داشته باشند، در حالی که بیشتر شکل‌ها فقط می‌توانند متن داشته باشند.

مثال زیر نشان می دهد که چگونه می توان یک تصویر Shape را به یک تصویر JPEG جدا از سند ارائه کرد و آن را در دیسک ذخیره کرد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeImage.cs" >}}

## بازیابی یک اندازه شکل

کلاس [ShapeRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/shaperenderer/) همچنین عملکردی برای بازیابی اندازه شکل در پیکسل از طریق روش [GetSizeInPixels](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/getsizeinpixels/) ارائه می دهد. این روش دو پارامتر شناور (Single) - مقیاس و DPI را می پذیرد که در محاسبه اندازه شکل هنگام ارائه شکل استفاده می شود. متد شی [Size](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/getsizeinpixels/) را برمی گرداند که شامل عرض و ارتفاع اندازه محاسبه شده است. این زمانی مفید است که لازم است از قبل اندازه شکل رندر شده را بدانید، به عنوان مثال هنگام ایجاد یک بیت مپ جدید از خروجی رندر شده.

مثال زیر نحوه ایجاد یک شیء Bitmap و Graphics جدید با عرض و ارتفاع شکل مورد نظر را نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-FindShapeSizes.cs" >}}

هنگام استفاده از روش‌های **RenderToSize** یا **RenderToScale**، اندازه تصویر رندر شده نیز در شی [SizeF](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertoscale/) برگردانده می‌شود. این را می توان به یک متغیر اختصاص داد و در صورت لزوم از آن استفاده کرد.

ویژگی **SizeInPoints** اندازه Shape اندازه‌گیری شده در نقاط را برمی‌گرداند (به [ShapeRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/shaperenderer/) مراجعه کنید. نتیجه یک شی `SizeF` حاوی عرض و ارتفاع است.
