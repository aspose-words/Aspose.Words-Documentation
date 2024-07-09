---
title: مدیریت Windows Metafiles در Java
second_title: Aspose.Words برای Java
articleTitle: مدیریت Windows Metafiles
linktitle: مدیریت Windows Metafiles
description: "Aspose.Words برای Java اجرای خود Windows Metafile Player برای بازی فرمت Metafile بر روی تمام سیستم عامل ها و پشتیبانی از مدیریت ویژگی های متافایل اساسی و می تواند بازگشت به یک نوع مختلف از پخش کننده metafile."
type: docs
weight: 30
url: /fa/java/handling-windows-metafiles/
---

Windows فرمت Metafile یک فرمت فایل تصویری است که می تواند شامل هر دو گرافیک بردار و raster باشد. این فرمت برای ذخیره داده های گرافیکی در حافظه یا فایل های On-disk استفاده می شود. metafile لیستی از تماس های عملکردی را در لیست ذخیره می کند Windows رابط دستگاه گرافیک (GDI) که باید برای نمایش تصویر بر روی صفحه نمایش اجرا شود. سیستم این دستورات را در متن نمایش تفسیر و اجرا می کند.

گذشته، Windows Metafile تنها فرمت تصویر بردار بود که توسط Microsoft Word... Microsoft Word در حال حاضر همچنین از فرمت SVG پشتیبانی می کند، اما فرمت metafile هنوز هم در اسناد Word استفاده می شود. همچنین، Metafile می تواند یک فرمت جایگزین برای برخی از برنامه های دیگر، مانند Microsoft Visio اساسا، هدف اصلی Metafile اطمینان از تبادل اطلاعات گرافیکی بین اطلاعات گرافیکی بین Windows برنامه ها

3 نسخه وجود دارد Windows Metafile:

- WMF - فروشگاه ها به 16 بیتی GDI زنگ می زنند.
- EMF – فروشگاه ها به Win32/GDI زنگ می زنند.
- فروشگاه های EMF+ Metafile به GDI+ زنگ می زنند. EMF+ Metafile نیز ممکن است دوگانه باشد و همان گرافیک را با هر دو بخش EMF و EMF+ توصیف کند.

موضوع موجود با Windows Metafile این است که توسط اکثر فرمت های غیرWord پشتیبانی نمی شود که معمولا اسناد ذخیره می شوند. بنابراین، لازم است که فرمت Metafile را به دیگر فرمت های raster یا Vector تبدیل کنید. آسان برای تبدیل Windows Metafile to a raster image .NET با عبور از آن به GDI+، اما در پلتفرم های دیگر امکان پذیر نیست، زیرا حتی GDI+ قابلیت استخراج گرافیک بردار از Metafile را فراهم نمی کند. برای حل این مسائل، Aspose.Words اجرای خود Windows Metafile Player، که قادر به بازی فرمت Metafile هر دو بردار و گرافیک raster در همه سیستم عامل ها است.

## کنترل کردن Aspose.Words Metafile Player

The The The The The The [MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/) کلاس شما را قادر می سازد تا بازیکن metafile را کنترل کنید. به عنوان مثال، شما می توانید تعیین کنید که چگونه تصاویر متافایل باید با استفاده از تصاویر متافایل ارائه شوند. [RenderingMode](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingmode/) اموال، که معنی خاصی در هنگام تبدیل به نقشه های کوچک دارد (همچنین ببینید). [MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getMetafileRenderingOptions) مالکیت)

## حمایت از عملیات Raster

عملیات Raster یک ویژگی پیچیده metafile است که در حال حاضر پشتیبانی محدودی دارد. عملیات Raster در فرمت های متافایل WMF و EMF در دسترس است. فرمت EMF+ metafile به طور مستقیم از عملیات raster استفاده نمی کند اما می تواند شامل قطعات EMF، WMF یا EMF metafiles باشد.

عملیات دودویی و نوسترال وجود دارد:

- عملیات دو قطبی برای دستور های طراحی خودکار مانند خطوط نقاشی و منحنی اعمال می شود. هنگام ترسیم یک خط، رنگ قلم با رنگ bitmap مقصد (رنگ پیکسل مربوطه بر روی سطح دستگاه) با استفاده از عملیات منطقی مشخص با مقادیر رنگی هگزا ترکیب می شود. مثال تصویر زیر نشان می دهد که اثر تمام 16 عملیات دودویی به 20 میله مختلف رنگ اعمال شده است. میله های رنگی عمودی ابتدا کشیده می شوند، میله های افقی پس از هر عملیات دودویی ریفستر استفاده می شود. برای موارد ساده، R2_BLACK سیاه، R2رنگ را فراموش نکنید، R2_NOP پس زمینه را تغییر نمی دهد و R2_WHITE سفید می کند.

<img src="/words/java/handling-windows-metafiles/handling-windows-metafiles-1.png" alt="handling-windows-metafiles-aspose-words-java-1" style="width:650px"/>

- عملیات تراریستر در هنگام ترسیم تصاویر نقشه ای اعمال می شود. آنها رنگ های پیکسل های تصویر bitmap مربوطه، برس و bitmap مقصد را با استفاده از عملیات کمی منطقی با مقادیر رنگی مشخص ترکیب می کنند. یکی از رایج ترین اهداف استفاده از عملیات های نوستری، شبیه سازی شفافیت است. تصویر ارائه شده در مثال زیر نشان می دهد که چگونه شفافیت آیکون می تواند شبیه سازی شود. دو نوع bitmap وجود دارد: b/w Mask bitmap و bitmap رنگی. در ابتدا، طرح ماسک با عملیات SRCAND raster کشیده می شود. این منطقه نماد مبهم را به سیاه و سفید تغییر می دهد و منطقه شفاف را بدون تغییر رها می کند. سپس نقشه دوم با عملیات SRCINVERT raster کشیده می شود. پیکسل های رنگی را در منطقه سیاه نشان می دهد و منطقه شفاف را بدون تغییر رها می کند.

<img src="/words/java/handling-windows-metafiles/handling-windows-metafiles-2.png" alt="handling-windows-metafiles-aspose-words-java-2" style="width:650px"/>

عملیات راستر را نمی توان به طور مستقیم به گرافیک بردار تبدیل کرد. Aspose.Words شبیه سازی عملیات راستری با تخریب بخشی سطح دستگاه تحت تاثیر عملیات raster. برای این منظور، [EmulateRasterOperations](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/#getEmulateRasterOperations) اموال استفاده می شود.

{{% alert color="primary" %}}

در حالی که عملیات دودویی در حال حاضر پشتیبانی نمی شود و تعداد محدودی از عملیات های نوسترال توسط پشتیبانی می شود Aspose.Words, این می تواند موارد اولیه تبدیل به گرافیک بردار را به طور مستقیم، به عنوان مثال، R2_BLACK, R2_WHITE, R2_NOP... همچنین، تخریب سطح دستگاه به طور قابل توجهی بر عملکرد تاثیر می گذارد، به ویژه هنگامی که تعداد قابل توجهی از رکورد های عملیاتی ریفستر درگیر هستند.

{{% /alert %}}

مثال زیر نشان می دهد که چگونه Aspose.Words یک metafile را به یک bitmap ارائه می دهد زمانی که امکان پذیر نیست به درستی برخی از سوابق متافایل را برای گرافیک بردار ارائه دهید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HandleDocumentWarnings-HandleDocumentWarnings.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderMetafileToBitmap-RenderMetafileToBitmap.java" >}}
