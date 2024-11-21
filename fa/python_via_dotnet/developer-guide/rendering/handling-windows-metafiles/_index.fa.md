---
title: مدیریت متافایل های Windows
second_title: Aspose.Words برای Python via .NET
articleTitle: مدیریت متافایل های Windows
linktitle: مدیریت متافایل های Windows
description: "Aspose.Words for Python via .NET پخش کننده Windows Metafile خود را برای پخش فرمت Metafile در همه پلتفرم ها اجرا می کند و از مدیریت ویژگی های متافایل اصلی پشتیبانی می کند و می تواند به نوع دیگری از پخش کننده متافایل بازگشتی انجام دهد."
type: docs
weight: 30
url: /fa/python-net/handling-windows-metafiles/
timestamp: 2024-01-27-14-07-04
---

فرمت متافایل Windows یک فرمت فایل تصویری است که می تواند هم گرافیک برداری و هم گرافیک شطرنجی داشته باشد. این فرمت برای ذخیره داده های گرافیکی در حافظه یا فایل های روی دیسک استفاده می شود. یک متافیل لیستی از فراخوانی های تابع را در رابط دستگاه گرافیکی Windows (GDI) ذخیره می کند که باید برای نمایش تصویر روی صفحه اجرا شود. سیستم این دستورات را در زمینه نمایش تفسیر و اجرا می کند.

قبلاً، Windows Metafile تنها فرمت تصویر برداری بود که توسط Microsoft Word پشتیبانی می شد. Microsoft Word اکنون از فرمت SVG نیز پشتیبانی می کند، اما فرمت متافایل هنوز معمولاً در اسناد Word استفاده می شود. همچنین، Metafile می تواند یک فرمت تبادلی برای برخی از برنامه های کاربردی دیگر، مانند Microsoft Visio باشد. اساساً هدف اصلی Metafile اطمینان از تبادل اطلاعات گرافیکی بین برنامه های Windows است.

3 نسخه از Windows Metafile وجود دارد:

- WMF - ذخیره می کند به GDI 16 بیتی.
- EMF - فروشگاه ها با Win32/GDI تماس می گیرند.
- فروشگاه های EMF+ Metafile با GDI+ تماس می گیرند. EMF+ Metafile نیز ممکن است دوتایی باشد و گرافیک یکسانی را با هر دو بخش EMF و EMF+ توصیف کند.

مشکل موجود با Windows Metafile این است که توسط اکثر فرمت های غیر Word که اسناد معمولاً در آنها ذخیره می شوند، پشتیبانی نمی شود. بنابراین، تبدیل فرمت متافایل به فرمت های دیگر شطرنجی یا برداری الزامی است. تبدیل Metafile Windows به تصویر شطرنجی در .NET با انتقال آن به GDI+ آسان است، اما در پلتفرم های دیگر این امکان وجود ندارد زیرا حتی GDI+ نیز قابلیت استخراج گرافیک برداری از Metafile را ارائه نمی دهد. برای حل این مشکلات، Aspose.Words پخش کننده Metafile Windows خود را پیاده سازی می کند، که قادر است فرمت Metafile را هم گرافیک های برداری و هم به صورت شطرنجی بر روی همه پلتفرم ها پخش کند.

## کنترل پخش کننده متافایل Aspose.Words

کلاس [MetafileRenderingOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/) شما را قادر می سازد تا پخش کننده متافایل را کنترل کنید. به عنوان مثال، شما می توانید تعیین کنید که چگونه تصاویر متافایل باید با استفاده از ویژگی [rendering_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/rendering_mode/) ارائه شوند، که در هنگام تبدیل به بیت مپ معنای خاصی دارد (همچنین به ویژگی [ImageSaveOptions.metafile_rendering_options](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/metafile_rendering_options/) مراجعه کنید).

ذخیره در یک بیت مپ در پلتفرم هایی غیر از .NET متفاوت عمل می کند. در حالی که رندر .NET GDI+ مرجعی است که حتی برای پیچیده ترین فرمت های متافایل تقریباً عالی عمل می کند، در پلتفرم های دیگر ممکن است مشکلاتی ایجاد کند یا اصلاً پشتیبانی نشود.

## پشتیبانی از عملیات شطرنجی

عملیات شطرنجی یک ویژگی متافایل پیچیده است که در حال حاضر پشتیبانی محدودی دارد. عملیات شطرنجی در فرمت های متافایل WMF و EMF موجود است. فرمت متافیل EMF+ مستقیماً از عملیات شطرنجی استفاده نمی کند، اما می تواند شامل قطعات EMF، متافایل های WMF یا EMF جاسازی شده باشد.

عملیات شطرنجی باینری و سه تایی وجود دارد:

- عملیات شطرنجی باینری برای دستورات ترسیم قلم مانند ترسیم خطوط و منحنی ها اعمال می شود. هنگام رسم یک خط، رنگ قلم با رنگ بیت مپ مقصد (رنگ پیکسل مربوطه روی سطح دستگاه) با استفاده از عملیات منطقی بیتی مشخص شده با مقادیر رنگ هگزا ترکیب می شود. مثال تصویر زیر اثر تمام 16 عملیات شطرنجی باینری اعمال شده بر روی 20 نوار رنگی مختلف را نشان می دهد. ابتدا نوارهای رنگی عمودی ترسیم می شوند و پس از اعمال هر عملیات شطرنجی باینری، نوارهای افقی ترسیم می شوند. برای موارد ساده، R2_BLACK سیاه می‌کشد، R2_NOT رنگ را معکوس می‌کند، R2_NOP پس‌زمینه را تغییر نمی‌دهد و R2_WHITE سفید می‌کشد.

<img src="/words/python-net/handling-windows-metafiles/handling-windows-metafiles-1.png" alt="handling-windows-metafiles-aspose-words-net-1" style="width:650px"/>

- عملیات شطرنجی سه تایی هنگام ترسیم تصاویر بیت مپ اعمال می شود. آنها رنگ های پیکسل های تصویر بیت مپ مربوطه، قلم مو، و بیت مپ مقصد را با استفاده از عملیات منطقی بیتی با مقادیر رنگ هگزا مشخص شده ترکیب می کنند. یکی از رایج ترین اهداف استفاده از عملیات شطرنجی سه تایی، شبیه سازی شفافیت است. تصویر ارائه شده در مثال زیر نشان می دهد که چگونه می توان شفافیت نماد را شبیه سازی کرد. دو نوع بیت مپ وجود دارد: بیت مپ ماسک b/w و بیت مپ رنگی. ابتدا نقشه بیت ماسک با عملیات شطرنجی SRCAND ترسیم می شود. منطقه آیکون مات را به سیاه و سفید تغییر می دهد و ناحیه شفاف را بدون تغییر می گذارد. سپس بیت مپ دوم با عملیات شطرنجی SRCINVERT ترسیم می شود. پیکسل های رنگی را در ناحیه سیاه نشان می دهد و ناحیه شفاف را بدون تغییر می گذارد.

<img src="/words/python-net/handling-windows-metafiles/handling-windows-metafiles-2.png" alt="handling-windows-metafiles-aspose-words-net-2" style="width:650px"/>

عملیات شطرنجی را نمی توان مستقیماً به گرافیک برداری تبدیل کرد. Aspose.Words عملیات شطرنجی را با شطرنجی بخشی از سطح دستگاه تحت تأثیر عملیات شطرنجی شبیه سازی می کند. برای این منظور از ویژگی [emulate_raster_operations](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emulate_raster_operations/) استفاده می شود.

{{% alert color="primary" %}}

در حالی که عملیات شطرنجی باینری در حال حاضر پشتیبانی نمی شود و تعداد محدودی از عملیات شطرنجی سه تایی توسط Aspose.Words پشتیبانی می شود، می تواند موارد اساسی تبدیل به گرافیک برداری را مستقیماً انجام دهد، به عنوان مثال، R2_BLACK، R2_WHITE، R2_NOP. همچنین، شطرنجی کردن سطح دستگاه به طور قابل توجهی بر عملکرد تأثیر می گذارد، به ویژه زمانی که تعداد قابل توجهی از رکوردهای عملیات شطرنجی درگیر باشد.

{{% /alert %}}

مثال نشان داده شده در زیر نشان می دهد که چگونه Aspose.Words یک متافیل را به یک بیت مپ ارائه می دهد، در صورتی که امکان رندر صحیح برخی از رکوردهای متافایل به گرافیک برداری وجود ندارد:

{{< highlight python >}}
# Load the document from disk.
doc = aw.Document(docs_base.my_dir +  "Rendering.docx")

metafileRenderingOptions = aw.saving.MetafileRenderingOptions()
metafileRenderingOptions.emulate_raster_operations = False
metafileRenderingOptions.rendering_mode = aw.saving.MetafileRenderingMode.VECTOR_WITH_FALLBACK

saveOptions = aw.saving.PdfSaveOptions()
saveOptions.metafile_rendering_options = metafileRenderingOptions

doc.save(docs_base.artifacts_dir +"PdfSaveOptions.HandleRasterWarnings.pdf", saveOptions)
{{< /highlight >}}

## تنظیمات بازگشتی متافیل

Aspose.Words تعدادی از ویژگی های متافایل را که پیچیده ترین یا نادر هستند پشتیبانی نمی کند. در این مورد Aspose.Words ممکن است به نوع دیگری از پخش کننده متافایل بازگشتی انجام دهد

در مرحله اول، Aspose.Words بازگشتی را از پخش کننده متافایل برداری به شطرنجی انجام می دهد که توسط ویژگی [rendering_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/rendering_mode/) کنترل می شود. اگر ویژگی بازگشتی غیرفعال باشد، Aspose.Words سعی می کند برخی از گرافیک های جایگزین را به جای ویژگی هایی که پشتیبانی نمی شوند ارائه کند.

Aspose.Words با استفاده از GDI+ در .NET، متافایل را به شطرنجی با موفقیت پخش می‌کند، که این گزینه بازگشت به تماس را ایمن می‌کند.

ثانیاً، گزینه ای برای متافایل EMF+ Dual برای بازگشت از پخش قسمت EMF+ به قسمت EMF وجود دارد. توسط [emf_plus_dual_rendering_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emf_plus_dual_rendering_mode/) کنترل می شود. اگر هنگام پخش قسمت EMF مشکلاتی رخ دهد، ممکن است بازگشت به شطرنجی نیز انجام شود.

در مورد عملیات شطرنجی، اگر [emulate_raster_operations](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emulate_raster_operations/) غیرفعال باشد، عملیات شطرنجی به‌عنوان پشتیبانی نشده در نظر گرفته می‌شود که در صورت فعال بودن، به پخش‌کننده متافایل بیت مپ بازگشتی را آغاز می‌کند. بنابراین، اگر یک متافیل با عملیات شطرنجی دارید، اما نمی‌خواهید از شبیه‌سازی عملیات شطرنجی استفاده کنید و در عین حال می‌خواهید خروجی برداری را با گرافیک جایگزین دریافت کنید، [MetafileRenderingMode.VECTOR](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingmode/#vector) را انتخاب کنید.
