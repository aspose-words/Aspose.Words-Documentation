---
title: دست زدن به Windows Metafiles در C++
second_title: Aspose.Words برای C++
articleTitle: دست زدن به Windows Metafiles
linktitle: دست زدن به Windows Metafiles
description: "Aspose.Words برای C++ metafile player Windows خود را برای پخش فرمت Metafile در تمام سیستم عامل ها پیاده سازی می کند و از مدیریت ویژگی های اساسی metafile پشتیبانی می کند و می تواند به نوع دیگری از پخش کننده metafile پاسخ دهد."
type: docs
weight: 30
url: /fa/cpp/handling-windows-metafiles/
---

Windows فرمت Metafile یک فرمت فایل تصویری است که می تواند شامل گرافیک وکتور و رستر باشد. این فرمت برای ذخیره داده های گرافیکی در حافظه یا فایل های دیسک استفاده می شود. یک متافیل لیستی از فراخوان های تابع را در رابط دستگاه گرافیکی Windows (GDI) ذخیره می کند که باید برای نمایش تصویر روی صفحه اجرا شود. سیستم این دستورات را در زمینه نمایش تفسیر و اجرا می کند.

قبلا، Windows Metafile تنها فرمت تصویر بردار پشتیبانی شده توسط Microsoft Word بود. Microsoft Word اکنون از فرمت SVG نیز پشتیبانی می کند، اما فرمت متافیل هنوز هم معمولا در اسناد ورد استفاده می شود. همچنین، Metafile می تواند یک فرمت تبادل برای برخی از برنامه های دیگر، مانند Microsoft Visio باشد. اساسا، هدف اصلی Metafile تضمین تبادل اطلاعات گرافیکی بین برنامه های کاربردی Windows است.

نسخه های 3 از Windows Metafile وجود دارد:

- WMF – فروشگاه ها به 16 بیتی GDI زنگ می زنند.
- EMF – فروشگاه ها به Win32/GDI تماس می گیرند.
- EMF+ فروشگاه های متافیل تماس با GDI+. EMF+ Metafile همچنین ممکن است دوگانه باشد و همان گرافیک را با هر دو قسمت EMF و EMF+ توصیف کند.

مشکل موجود با Windows Metafile این است که توسط اکثر فرمت های غیر Word پشتیبانی نمی شود، که اسناد معمولا ذخیره می شوند. بنابراین، لازم است فرمت Metafile را به سایر فرمت های رستر یا وکتور تبدیل کنید. تبدیل Windows Metafile به تصویر رستر در .NET با انتقال آن به GDI+ آسان است، اما در سایر سیستم عامل ها امکان پذیر نیست زیرا حتی GDI+ قابلیت استخراج گرافیک وکتور از Metafile را فراهم نمی کند. برای حل این مسائل، Aspose.Words metafile player خود را پیاده سازی می کند، که قادر به پخش فرمت Metafile هر دو گرافیک وکتور و رستر در تمام سیستم عامل ها است.

## کنترل پخش کننده متافیل Aspose.Words

کلاس [MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/) شما را قادر می سازد تا پخش کننده متافیل را کنترل کنید. به عنوان مثال، شما می توانید تعیین کنید که چگونه تصاویر متافیل باید با استفاده از ویژگی [RenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_renderingmode/) ارائه شوند، که هنگام تبدیل به بیت مپ ها معنای خاصی دارد (همچنین ویژگی [MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/metafilerenderingoptions/) را ببینید).

ذخیره کردن به یک نقشه بیت در سیستم عامل های غیر از .NET متفاوت کار می کند. در حالی که .NET GDI+ رندر یک مرجع است که تقریبا به طور کامل حتی برای پیچیده ترین فرمت متافیل کار می کند، در سیستم عامل های دیگر ممکن است باعث مشکلات شود یا اصلا پشتیبانی نشود.

## پشتیبانی از عملیات رستر

عملیات رستر یک ویژگی پیچیده متافیل است که در حال حاضر پشتیبانی محدودی دارد. عملیات Raster در فرمت های WMF و EMF metafile در دسترس است. فرمت EMF+ metafile به طور مستقیم از عملیات رستر استفاده نمی کند اما می تواند شامل EMF قطعات، WMF یا EMF metafiles جاسازی شده باشد.

عملیات رستر باینری و سه گانه وجود دارد:

- عملیات رستر باینری به دستورات رسم قلم مانند رسم خطوط و منحنی ها اعمال می شود. هنگام ترسیم یک خط، رنگ قلم با رنگ نقشه بیت مقصد (رنگ پیکسل مربوطه در سطح دستگاه) با استفاده از عملیات منطقی بیتی مشخص شده با مقادیر رنگ هکس ترکیب می شود. مثال تصویر زیر اثر تمام 16 عملیات رستر باینری را که به 20 نوار رنگی مختلف اعمال شده است نشان می دهد. میله های رنگی عمودی کشیده می شوند، ابتدا میله های افقی پس از اعمال هر عملیات رستر باینری کشیده می شوند. برای موارد ساده ،R2_BLACK سیاه می کشد، R2_NOT رنگ را معکوس می کند، R2_NOP پس زمینه را تغییر نمی دهد، و R2_WHITE سفید می کشد.

<img src="handling-windows-metafiles-1.png" alt="handling-windows-metafiles-aspose-words-cpp-1" style="width:650px"/>

- عملیات رستر سه گانه هنگام ترسیم تصاویر نقشه بیت اعمال می شود. آنها رنگ های پیکسل های تصویر بیت مپ مربوطه، برس و بیت مپ مقصد را با استفاده از عملیات منطقی بیت با مقادیر رنگ هکس مشخص شده ترکیب می کنند. یکی از رایج ترین اهداف استفاده از عملیات رستر سه گانه، شبیه سازی شفافیت است. تصویر ارائه شده در مثال زیر نشان می دهد که چگونه شفافیت آیکون می تواند شبیه سازی شود. دو نوع bitmap وجود دارد: b / w mask bitmap و color bitmap. ابتدا نقشه بیت ماسک با عملیات رستر SRCAND ترسیم می شود. این منطقه نماد مبهم را به سیاه و سفید تغییر می دهد و منطقه شفاف را بدون تغییر می گذارد. سپس نقشه بیت دوم با عملیات رستر SRCINVERT کشیده می شود. این پیکسل های رنگی را در منطقه سیاه نشان می دهد و منطقه شفاف را بدون تغییر می گذارد.

<img src="handling-windows-metafiles-2.png" alt="handling-windows-metafiles-aspose-words-cpp-2" style="width:650px"/>

عملیات رستر را نمی توان به گرافیک بردار به طور مستقیم تبدیل شده است. Aspose.Words عملیات رستر را با رستر کردن بخشی از سطح دستگاه تحت تاثیر عملیات رستر تقلید می کند. برای این منظور از ویژگی [EmulateRasterOperations](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emulaterasteroperations/) استفاده می شود.

{{% alert color="primary" %}}

در حالی که عملیات رستر باینری در حال حاضر پشتیبانی نمی شود و تعداد محدودی از عملیات رستر سه گانه توسط Aspose.Words پشتیبانی می شود، می تواند موارد اساسی تبدیل به گرافیک بردار را به طور مستقیم مدیریت کند، به عنوان مثال, R2_BLACK, R2_WHITE, R2_NOP. همچنین، رستر کردن سطح دستگاه به طور قابل توجهی بر عملکرد تأثیر می گذارد، به ویژه هنگامی که تعداد قابل توجهی از سوابق عملیات رستر درگیر هستند.

{{% /alert %}}

مثال زیر نشان می دهد که چگونه Aspose.Words یک متافیل را به یک نقشه بیت رندر می کند در حالی که امکان رندر صحیح برخی از سوابق متافیل به گرافیک وکتور وجود ندارد:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Doc2Pdf-RenderMetafileToBitmap.cpp" >}}

## تنظیمات Metafile Fallback

Aspose.Words از تعدادی از ویژگی های متافیل که پیچیده ترین یا نادر هستند پشتیبانی نمی کند. کاربران می توانند رابط [IWarningCallBack](https://reference.aspose.com/words/cpp/aspose.words/iwarningcallback/) را پیاده سازی کرده و پیام های هشدار دهنده دریافت کنند. اگر Aspose.Words با ویژگی های پشتیبانی نشده در یک متافیل مواجه شود، یک پیام هشدار با [WarningSource](https://reference.aspose.com/words/cpp/aspose.words/warninginfo/get_source/) صادر می کند.**Metafile**. در این مورد Aspose.Words ممکن است به نوع دیگری از پخش کننده متافیل پاسخ دهد. پیام هشدار در مورد عقب نشینی نیز صادر می شود.

اول، Aspose.Words از پخش کننده متافیل بردار به راستر، که توسط ویژگی [RenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_renderingmode/) کنترل می شود، پشتیبان گیری می کند. اگر ویژگی fallback غیرفعال باشد ،Aspose.Words سعی می کند به جای ویژگی هایی که پشتیبانی نمی شوند، برخی از گرافیک های جایگزین را ارائه دهد.

Aspose.Words با استفاده از GDI+ در .NET با موفقیت metafile to raster را پخش می کند که این گزینه callback را ایمن می کند.

دوم، گزینه ای برای EMF+ دوگانه metafile برای پشتیبان گیری از بازی EMF+ قسمت به EMF قسمت وجود دارد. توسط [EmfPlusDualRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emfplusdualrenderingmode/) کنترل می شود. اگر برخی از مشکلات هنگام بازی قسمت EMF رخ دهد، پس از آن ممکن است به رستر نیز انجام شود.

در مورد عملیات رستر، اگر [EmulateRasterOperations](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emulaterasteroperations/) غیرفعال باشد، عملیات رستر به عنوان پشتیبانی نشده در نظر گرفته می شود، که اگر فعال باشد، باعث بازگشت به bitmap metafile player می شود. بنابراین، اگر شما یک متافیل با عملیات رستر دارید، اما نمی خواهید از شبیه سازی عملیات رستر استفاده کنید و با این حال می خواهید خروجی وکتور را با گرافیک جایگزینی دریافت کنید، سپس [MetafileRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_renderingmode/) را انتخاب کنید.**Vector**.
