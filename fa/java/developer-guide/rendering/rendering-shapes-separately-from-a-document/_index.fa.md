---
title: ارائه اشکال به صورت جداگانه از یک سند
second_title: Aspose.Words برای Java
articleTitle: ارائه اشکال به صورت جداگانه از یک سند
linktitle: ارائه اشکال به صورت جداگانه از یک سند
description: "اشیاء گرافیکی مختلف مانند تصاویر، جعبه متن حاوی پاراگراف ها یا اشکال تیر را هنگام پردازش یک سند استخراج کنید و آنها را با استفاده از Java به یک مکان خارجی صادر کنید."
type: docs
weight: 40
url: /fa/java/rendering-shapes-separately-from-a-document/
timestamp: 2024-01-27-14-07-04
---

هنگام پردازش اسناد، یک کار مشترک استخراج تمام تصاویر موجود در سند و صادرات آنها به یک مکان خارجی است. این کار با Aspose.Words API ساده می شود که در حال حاضر قابلیت استخراج و ذخیره داده های تصویر را فراهم می کند. با این حال، گاهی اوقات ممکن است بخواهید انواع دیگر محتوای گرافیکی را که توسط نوع دیگری از شیء نقاشی نشان داده شده است، به عنوان مثال، یک جعبه متن حاوی پاراگراف ها، اشکال تیر و یک تصویر کوچک استخراج کنید. هیچ راهی برای ارائه این شی وجود ندارد زیرا ترکیبی از عناصر محتوای فردی است. همچنین ممکن است با موردی مواجه شوید که محتویات آن در یک شی که شبیه یک تصویر است، گروه بندی شده باشد.

Aspose.Words قابلیت استخراج این نوع محتوا را فراهم می کند به همان روشی که می توانید یک تصویر ساده را از شکل به عنوان محتوای ارائه شده استخراج کنید. در این مقاله نحوه استفاده از این قابلیت برای ارائه اشکال مستقل از سند توضیح داده شده است.

## انواع شکل در Aspose.Words

تمام محتوای یک لایه نقاشی سند توسط گره [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) یا [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) در ماژول Aspose.Words Document Object (DOM) نشان داده شده است. چنین محتویاتی می تواند جعبه های متنی، تصاویر، اشیاء AutoShapes، OLE و غیره باشد. برخی از فیلد ها نیز به عنوان شکل وارد می شوند، به عنوان مثال، فیلد `INCLUDEPICTURE`.

یک تصویر ساده با یک گره **Shape** از [ShapeType.Image](https://reference.aspose.com/words/java/com.aspose.words/shapetype/#IMAGE) نشان داده می شود. این گره شکل هیچ گره فرزند ندارد اما داده های تصویر موجود در این گره شکل می تواند توسط ویژگی [Shape.ImageData](https://reference.aspose.com/words/java/com.aspose.words/shape/#getImageData) دسترسی پیدا کند. از طرف دیگر، یک شکل نیز می تواند از بسیاری از گره های کودک تشکیل شود. به عنوان مثال، یک شکل جعبه متن، که توسط ویژگی [ShapeType.TextBox](https://reference.aspose.com/words/java/com.aspose.words/shapetype/#TEXT-BOX) نشان داده می شود، می تواند از بسیاری از گره ها مانند [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) و [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) تشکیل شود. بیشتر اشکال می توانند شامل گره های سطح بلوک **Paragraph** و **Table** باشند. اینها همان گره هایی هستند که در بدن اصلی ظاهر می شوند. شکل ها همیشه بخشی از برخی پاراگراف ها هستند، یا به طور مستقیم در خط یا لنگر زده به **Paragraph,** اما "شناور" در هر نقطه از صفحه سند.

![rendering-shapes-separately-from-a-document-aspose-words-java-1](/words/java/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-1.png)

یک سند همچنین می تواند شامل شکل هایی باشد که با هم گروه بندی شده اند. گروه بندی را می توان در Microsoft Word با انتخاب چندین شی و کلیک بر روی "گروه" در منوی راست کلیک فعال کرد.

![rendering-shapes-separately-from-a-document-aspose-words-java-2](/words/java/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-2.png)

در Aspose.Words، این گروه از اشکال توسط گره [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) نشان داده می شوند. این ها همچنین می توانند به همان شیوه برای ارائه کل گروه به تصویر فراخوانده شوند.

![rendering-shapes-separately-from-a-document-aspose-words-java-3](/words/java/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-3.png)

فرمت DOCX می تواند شامل انواع خاصی از تصاویر مانند نمودارها یا نمودارها باشد. این اشکال همچنین از طریق گره **Shape** در Aspose.Words نشان داده می شوند که همچنین روش مشابهی برای ارائه آنها به عنوان تصاویر فراهم می کند. از نظر طراحی، یک شکل نمی تواند در کودکی شکل دیگری داشته باشد، مگر اینکه آن شکل یک تصویر باشد (**ShapeType.Image**). به عنوان مثال، Microsoft Word به شما اجازه نمی دهد یک جعبه متن را در داخل یک جعبه متن دیگر قرار دهید.

انواع شکل های شرح داده شده در بالا یک روش خاص برای ارائه شکل ها از طریق کلاس [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/) ارائه می دهند. نمونه ای از کلاس **ShapeRenderer** برای یک **Shape** یا **GroupShape** از طریق روش **GetShapeRenderer** یا با انتقال **Shape** به سازنده کلاس **ShapeRenderer** بازیابی می شود. این کلاس دسترسی به اعضای را فراهم می کند که اجازه می دهد یک شکل را به موارد زیر ارائه دهد:

- فایل روی دیسک با استفاده از روش [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.lang.String-com.aspose.words.ImageSaveOptions) overload
- جریان با استفاده از روش [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.io.OutputStream-com.aspose.words.ImageSaveOptions) اضافه بار
- شی گرافیکی با استفاده از روش های [RenderToSize](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToSize-java.awt.Graphics2D-float-float-float-float) و [RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float)

{{% alert color="primary" %}}

هنگام ارائه یک **Shape**، باید بخشی از سلسله مراتب سند باشد. اگر **Shape** بخشی از درخت سند نباشد، خروجی رندر شده پس از فراخوانی روش های **ShapeRenderer** خالی خواهد بود.

{{% /alert %}}

## رندر به فایل یا جریان

روش [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.lang.String-com.aspose.words.ImageSaveOptions) اضافه بار هایی را فراهم می کند که یک شکل را مستقیما به یک فایل یا جریان ارائه می دهد. هر دو overloads یک نمونه از کلاس [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) را قبول می کنند که اجازه می دهد گزینه های تعریف شده برای ارائه شکل را تعریف کند. این روش به همان روش [Document.Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) کار می کند. حتی اگر این پارامتر مورد نیاز باشد، می توانید یک مقدار null را منتقل کنید، مشخص کنید که هیچ گزینه سفارشی وجود ندارد.

شکل را می توان در هر فرمت تصویر مشخص شده در [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) صادر کرد. به عنوان مثال، تصویر را می توان به عنوان یک تصویر رستر، مانند JPEG با مشخص کردن [SaveFormat.Jpeg](https://reference.aspose.com/words/java/com.aspose.words/saveformat/#JPEG) شمارش، یا به عنوان یک تصویر بردار، مانند EMF با مشخص کردن [SaveFormat.Emf](https://reference.aspose.com/words/java/com.aspose.words/saveformat/#EMF) ارائه کرد.

مثال کد زیر نشان دهنده ارائه یک شکل به یک تصویر EMF به طور جداگانه از سند و ذخیره به دیسک است:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToDisk.java" >}}

مثال کد زیر نشان دهنده ارائه یک شکل به یک تصویر JPEG به طور جداگانه از سند و ذخیره به یک جریان است:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToStream.java" >}}

کلاس **ImageSaveOptions** به شما امکان می دهد گزینه های مختلفی را مشخص کنید که نحوه رندر تصویر را کنترل می کند. قابلیت های فوق را می توان به همان شیوه به گره های **GroupShape** و **Shape** اعمال کرد.

## رندر کردن به یک شی `Graphics`

رندر مستقیم به یک شیء **Graphics** به شما اجازه می دهد تنظیمات خود و حالت برای شیء **Graphics** را تعریف کنید. یک سناریوی رایج شامل ارائه یک شکل به طور مستقیم به یک شیء **Graphics** است که از یک فرم Windows یا یک نقشه بیت بازیابی شده است. هنگامی که گره **Shape** رندر می شود، تنظیمات بر ظاهر شکل تأثیر می گذارد. به عنوان مثال، شما می توانید شکل را با استفاده از روش های **RotateTransform** یا **ScaleTransform** برای شیء **Graphics** بچرخانید یا مقیاس بندی کنید.

مثال زیر نشان می دهد که چگونه یک شکل را به یک شیء **Graphics** جدا از سند ارائه دهید و چرخش را به تصویر ارائه شده اعمال کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToGraphics.java" >}}

به طور مشابه، به روش [RenderToSize](https://reference.aspose.com/words/java/com.aspose.words/document/#renderToSize-int-java.awt.Graphics2D-float-float-float-float)، روش [RenderToSize](https://reference.aspose.com/words/java/com.aspose.words/document/#renderToSize-int-java.awt.Graphics2D-float-float-float-float)به ارث رسیده از [NodeRendererBase](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/) برای ایجاد تصاویر کوچک محتوای سند مفید است. اندازه شکل از طریق سازنده مشخص می شود. روش **RenderToSize** شیء **Graphics**، مختصات X و Y موقعیت تصویر و اندازه تصویر (عرض و ارتفاع) را که بر روی شیء **Graphics** کشیده می شود، می پذیرد.

**Shape** را می توان با استفاده از روش [ShapeRenderer.RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float) که از کلاس [NodeRendererBase](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/) به ارث رسیده است به مقیاس خاصی ارائه داد. این شبیه به روش [Document.RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float) است که همان پارامترهای اصلی را قبول می کند. تفاوت این دو روش این است که با روش **ShapeRenderer.RenderToScale**، به جای یک اندازه واقعی، شما یک مقدار شناور را انتخاب می کنید که شکل را در طول رندر آن مقیاس بندی می کند. اگر مقدار شناور برابر با 1.0 باشد باعث می شود که شکل در 100 ٪ از اندازه اصلی آن ارائه شود. مقدار شناور 0.5 اندازه تصویر را به نصف کاهش می دهد.

## رندر کردن یک تصویر شکل

کلاس [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) اشیاء را در لایه نقاشی نشان می دهد، مانند یک AutoShape، جعبه متن، فرم آزاد، OLE شی، کنترل ActiveX، یا یک تصویر. با استفاده از کلاس **Shape**، می توانید شکل ها را در یک سند Microsoft Word ایجاد یا تغییر دهید. یک ویژگی مهم یک شکل [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/) آن است. اشکال انواع مختلف می توانند قابلیت های مختلفی در یک سند Word داشته باشند. به عنوان مثال، فقط تصاویر و اشکال OLE می توانند تصاویر را در داخل خود داشته باشند در حالی که بیشتر اشکال فقط می توانند متن داشته باشند.

مثال زیر نشان می دهد که چگونه یک تصویر شکل را به یک تصویر JPEG جدا از سند ارائه دهید و آن را به دیسک ذخیره کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeImage.java" >}}

## بازیابی اندازه شکل

کلاس [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/) همچنین قابلیت بازیابی اندازه شکل در پیکسل را از طریق روش [GetSizeInPixels](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getSizeInPixels-float-float) فراهم می کند. این روش دو پارامتر شناور (تک) – مقیاس و DPI را می پذیرد که در محاسبه اندازه شکل هنگام ارائه شکل استفاده می شود. این روش شی [Size](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getSizeInPixels-float-float) را باز می گرداند که شامل عرض و ارتفاع اندازه محاسبه شده است. این کار زمانی مفید است که لازم است اندازه شکل رندر شده را از قبل بدانید، به عنوان مثال هنگام ایجاد یک نقشه بیت جدید از خروجی رندر شده.

مثال زیر نشان می دهد که چگونه یک نقشه بیت جدید و شی گرافیکی با عرض و ارتفاع شکل ارائه شده ایجاد کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-FindShapeSizes.java" >}}

هنگام استفاده از روش های **RenderToSize** یا **RenderToScale**، اندازه تصویر رندر شده نیز در شی [SizeF](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#renderToScale-java.awt.Graphics2D-float-float-float) بازگردانده می شود. این را می توان به یک متغیر اختصاص داد و در صورت لزوم استفاده کرد.

ویژگی **SizeInPoints** اندازه شکل اندازه گیری شده در نقاط را باز می گرداند (به [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/) مراجعه کنید). نتیجه یک شیء `SizeF` است که شامل عرض و ارتفاع است.
