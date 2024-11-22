---
title: ارسال Shapes جدا از یک سند
second_title: Aspose.Words برای Java
articleTitle: ارسال Shapes جدا از یک سند
linktitle: ارسال Shapes جدا از یک سند
description: "استخراج اشیاء گرافیکی مختلف، مانند تصاویر، جعبه متن حاوی پاراگراف ها یا شکل های فلش، هنگام پردازش یک سند، و صادرات آنها به یک مکان خارجی با استفاده از تصاویر، جعبه متن حاوی پاراگراف ها یا شکل های فلش، هنگام پردازش یک سند، و صادرات آنها به یک مکان خارجی با استفاده از آن Java..."
type: docs
weight: 40
url: /fa/java/rendering-shapes-separately-from-a-document/
timestamp: 2024-01-27-14-07-04
---

هنگام پردازش اسناد، یک کار مشترک استخراج تمام تصاویر موجود در سند و صادرات آنها به یک مکان خارجی است. این کار با کار ساده می شود. Aspose.Words API, که در حال حاضر قابلیت استخراج و صرفه جویی در داده های تصویر را فراهم می کند. با این حال، گاهی اوقات ممکن است بخواهید به طور مشابه انواع دیگری از محتوای گرافیکی را که توسط یک نوع مختلف از شی طراحی نشان داده می شود استخراج کنید، به عنوان مثال، یک جعبه متن حاوی پاراگراف ها، شکل های فلش و یک تصویر کوچک. هیچ راه ساده ای برای ارائه این شی وجود ندارد زیرا ترکیبی از عناصر محتوای فردی است. شما همچنین ممکن است با یک مورد مواجه شوید زمانی که محتویات با هم به شی که به نظر می رسد مانند یک تصویر واحد است.

Aspose.Words فراهم می کند قابلیت برای استخراج این نوع محتوا به همان طریق شما می توانید یک تصویر ساده از شکل به عنوان محتوای رندر شده استخراج کنید. این مقاله توضیح می دهد که چگونه از این قابلیت برای ایجاد شکل به طور مستقل از سند استفاده کنید.

## انواع شکل در Aspose.Words

تمام محتوا در یک لایه طراحی سند توسط [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) یا [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) گره در Aspose.Words ماژول Object Module (DOM) چنین محتویاتی می تواند جعبه های متنی، تصاویر، AutoShapes، اشیاء OLE و غیره باشد. برخی از زمینه ها نیز به عنوان شکل وارد می شوند، به عنوان مثال، `INCLUDEPICTURE` زمینه

یک تصویر ساده توسط یک تصویر نشان داده می شود **Shape** گره [ShapeType.Image](https://reference.aspose.com/words/java/com.aspose.words/shapetype/#IMAGE)... این گره شکل هیچ گره کودک ندارد، اما داده های تصویری موجود در این گره شکل را می توان با استفاده از گره شکل قابل دسترسی دانست. [Shape.ImageData](https://reference.aspose.com/words/java/com.aspose.words/shape/#getImageData) مالکیت از سوی دیگر، شکل می تواند از بسیاری از گره های کودک نیز تشکیل شود. به عنوان مثال، شکل جعبه متن، که توسط [ShapeType.TextBox](https://reference.aspose.com/words/java/com.aspose.words/shapetype/#TEXT-BOX) اموال می تواند از بسیاری از گره ها مانند [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) و [Table](https://reference.aspose.com/words/java/com.aspose.words/table/)... اکثر شکل ها می توانند شامل **Paragraph** و **Table** گره های سطح بلوک این ها همان گره هایی هستند که در بدن اصلی ظاهر می شوند. شکل ها همیشه بخشی از یک پاراگراف هستند، یا به طور مستقیم در خط یا لنگر به آن گنجانده شده اند. **پاراگراف،** اما "تورم" در هر نقطه از صفحه سند.

![rendering-shapes-separately-from-a-document-aspose-words-java-1](/words/java/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-1.png)

یک سند همچنین می تواند شامل شکل هایی باشد که با هم گروه بندی می شوند. Groupمی تواند در Microsoft Word با انتخاب اشیاء متعدد و کلیک بر روی "Groupدر منوی راست کلیک کنید.

![rendering-shapes-separately-from-a-document-aspose-words-java-2](/words/java/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-2.png)

In In In Aspose.Words, این گروه های شکل توسط گروه ها نشان داده می شوند. [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) گره این ها همچنین می توانند به همان روش برای ارائه کل گروه به تصویر مورد استفاده قرار گیرند.

![rendering-shapes-separately-from-a-document-aspose-words-java-3](/words/java/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-3.png)

فرمت DOCX می تواند شامل انواع خاصی از تصاویر مانند نمودارها یا نمودارها باشد. این شکل ها نیز از طریق **Shape** گره در Aspose.Words, همچنین یک روش مشابه برای ارائه آنها به عنوان تصاویر فراهم می کند. با طراحی، یک شکل نمی تواند یک شکل دیگر را به عنوان یک کودک داشته باشد، مگر اینکه این شکل یک تصویر باشد.**ShapeType.Image**) برای مثال، Microsoft Word اجازه نمی دهد که یک جعبه متن را داخل جعبه متن دیگری قرار دهید.

انواع شکل شرح داده شده در بالا یک روش خاص برای ارائه شکل از طریق [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/) کلاس نمونه ای از **ShapeRenderer** کلاس برای یک **Shape** یا **GroupShape** از طریق **GetShapeRenderer** روش یا عبور **Shape** به سازنده **ShapeRenderer** کلاس این کلاس دسترسی به اعضا را فراهم می کند که اجازه می دهد تا شکل را به موارد زیر ارائه دهد:

- فایل روی دیسک با استفاده از [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.lang.String-com.aspose.words.ImageSaveOptions) متد Overload
- جریان با استفاده از [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.io.OutputStream-com.aspose.words.ImageSaveOptions) متد Overload
- گرافیک شی با استفاده از [RenderToSize](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToSize-java.awt.Graphics2D-float-float-float-float) و [RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float) روش ها

{{% alert color="primary" %}}

هنگام ارائه **Shape**"> باید بخشی از سلسله مراتب سند باشد. اگر **Shape** بخشی از درخت سند نیست، سپس خروجی رندر شده پس از داخل شدن خالی خواهد شد **ShapeRenderer** روش ها

{{% /alert %}}

## ارسال به File یا Stream

The The The The The The [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.lang.String-com.aspose.words.ImageSaveOptions) روش اضافه بار را فراهم می کند که فرم را به طور مستقیم به یک فایل یا جریان ارائه می دهد. هر دو بار اضافی یک نمونه از [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) کلاس، که اجازه می دهد تا گزینه های تعریف شده برای ارائه شکل. این کار به همان شیوه انجام می شود. [Document.Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) روش حتی اگر این پارامتر مورد نیاز باشد، می توانید یک مقدار null را منتقل کنید و مشخص کنید که گزینه های سفارشی وجود ندارد.

شکل را می توان در هر قالب تصویر مشخص شده در فرمت [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) تکرار به عنوان مثال، تصویر را می توان به عنوان یک تصویر روستر، مانند JPEG با مشخص کردن تصویر نشان داد. [SaveFormat.Jpeg](https://reference.aspose.com/words/java/com.aspose.words/saveformat/#JPEG) تکرار یا به عنوان یک تصویر بردار، مانند EMF با مشخص کردن EMF [SaveFormat.Emf](https://reference.aspose.com/words/java/com.aspose.words/saveformat/#EMF)...

مثال کد زیر نشان می دهد که یک شکل به تصویر EMF به طور جداگانه از سند و پس انداز به دیسک ارائه می دهد:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToDisk.java" >}}

مثال کد زیر نشان می دهد که یک شکل به یک تصویر JPEG به طور جداگانه از سند و پس انداز به یک جریان می دهد:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToStream.java" >}}

The The The The The The **ImageSaveOptions** کلاس به شما اجازه می دهد تا گزینه های مختلفی را مشخص کنید که کنترل می کنند تصویر چگونه ارائه می شود. قابلیت های شرح داده شده در بالا را می توان به همان شیوه به کار برد. **GroupShape** و **Shape** گره ها

## ارائه به یک `Graphics` Object Object Object

ارسال مستقیم به یک **Graphics** جسم به شما اجازه می دهد تنظیمات خود و حالت را برای **Graphics** جسم یک سناریو مشترک شامل ارائه یک شکل به طور مستقیم به یک **Graphics** کشف یک شی Windows فرم یا Bitmap هنگامی که **Shape** گره رندر شده است، تنظیمات بر ظاهر شکل تأثیر می گذارد. به عنوان مثال، شما می توانید شکل را با استفاده از استفاده از **RotateTransform** یا **ScaleTransform** روش ها برای **Graphics** جسم

مثال زیر نشان می دهد که چگونه یک شکل را به یک شکل ارائه دهید **Graphics** به طور جداگانه از سند اعتراض کنید و چرخش را به تصویر ارائه شده اعمال کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToGraphics.java" >}}

به طور مشابه، [RenderToSize](https://reference.aspose.com/words/java/com.aspose.words/document/#renderToSize-int-java.awt.Graphics2D-float-float-float-float) روش، [RenderToSize](https://reference.aspose.com/words/java/com.aspose.words/document/#renderToSize-int-java.awt.Graphics2D-float-float-float-float)روش ارثی از [NodeRendererBase](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/) برای ایجاد تصاویر کوچک از محتوای سند مفید است. اندازه شکل از طریق سازنده مشخص شده است. The The The The The The **RenderToSize** روش پذیرش **Graphics** شی، مختصات X و Y موقعیت تصویر و اندازه تصویر ( عرض و ارتفاع) که بر روی آن کشیده می شود. **Graphics** جسم

The The The The The The **Shape** می تواند به یک مقیاس خاص با استفاده از [ShapeRenderer.RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float) روش ارثی از [NodeRendererBase](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/) کلاس این شبیه به [Document.RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float) روش هایی که همان پارامترهای اصلی را می پذیرند. تفاوت بین این دو روش این است که با **ShapeRenderer.RenderToScale** روش، به جای اندازه واقعی، شما یک مقدار شناور را انتخاب می کنید که در طول رندر آن شکل را اندازه گیری می کند. اگر ارزش شناور برابر با 1.0 باشد، باعث می شود که شکل در 100٪ از اندازه اصلی آن ارائه شود. مقدار شناور 0.5 اندازه تصویر را به نصف کاهش می دهد.

## ارائه تصویر Shape

The The The The The The [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) کلاس نشان دهنده اشیاء در لایه نقاشی، مانند AutoShape، جعبه متن، فرم آزاد، OLE Object، ActiveX Control یا یک تصویر است. استفاده از **Shape** کلاس، شما می توانید شکل ها را در یک شکل ایجاد یا اصلاح کنید. Microsoft Word سند ویژگی مهم یک شکل آن است. [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/)... شکل انواع مختلف می تواند قابلیت های مختلفی در یک سند Word داشته باشد. به عنوان مثال، فقط تصاویر و شکل های OLE می توانند تصاویر را در داخل خود داشته باشند در حالی که بیشتر اشکال تنها می توانند متن داشته باشند.

مثال زیر نشان می دهد که چگونه یک تصویر شکل را به یک تصویر JPEG به طور جداگانه از سند ارائه دهید و آن را به دیسک ذخیره کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeImage.java" >}}

## Retrieving a Shape Size

The The The The The The [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/) کلاس همچنین قابلیت هایی برای بازیابی اندازه شکل در پیکسل ها از طریق [GetSizeInPixels](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getSizeInPixels-float-float) روش این روش دو پارامتر شناور (Single) را می پذیرد - مقیاس و DPI که در محاسبه اندازه شکل زمانی که شکل ارائه می شود استفاده می شود. روش برگشت [Size](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getSizeInPixels-float-float) جسم، که شامل عرض و ارتفاع اندازه محاسبه شده است. این مفید است زمانی که لازم است اندازه شکل رندر شده را از قبل بدانید، به عنوان مثال هنگام ایجاد یک Bitmap جدید از خروجی رندر شده.

مثال زیر نشان می دهد که چگونه یک شی کوچک و گرافیکی جدید را با عرض و ارتفاع شکل ایجاد کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-FindShapeSizes.java" >}}

هنگام استفاده از **RenderToSize** یا **RenderToScale** روش ها، اندازه تصویر ارائه شده نیز در [SizeF](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#renderToScale-java.awt.Graphics2D-float-float-float) جسم این را می توان به یک متغیر اختصاص داد و در صورت لزوم استفاده کرد.

The The The The The The **SizeInPoints** اموال به اندازه شکل اندازه گیری شده در نقاط (نگاه کنید [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/)) نتیجه یک `SizeF` جسم حاوی عرض و ارتفاع است.
