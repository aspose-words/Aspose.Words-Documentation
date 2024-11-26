---
title: دست زدن به Windows Metafiles در Java
second_title: Aspose.Words برای Java
articleTitle: دست زدن به Windows Metafiles
linktitle: دست زدن به Windows Metafiles
description: "Aspose.Words برای Java پخش کننده متافایل Windows خود را برای پخش فرمت Metafile در همه پلتفرم‌ها پیاده‌سازی می‌کند و از مدیریت ویژگی‌های اصلی متافایل پشتیبانی می‌کند و می‌تواند به نوع دیگری از پخش‌کننده متافایل بازگشتی انجام دهد."
type: docs
weight: 30
url: /fa/java/handling-windows-metafiles/
timestamp: 2024-01-27-14-07-04
---

Windows فرمت Metafile یک فرمت فایل تصویری است که می تواند شامل گرافیک وکتور و رستر باشد. این فرمت برای ذخیره داده های گرافیکی در حافظه یا فایل های دیسک استفاده می شود. یک متافیل لیستی از فراخوان های تابع را در رابط دستگاه گرافیکی Windows (GDI) ذخیره می کند که باید برای نمایش تصویر روی صفحه اجرا شود. سیستم این دستورات را در زمینه نمایش تفسیر و اجرا می کند.

قبلا، Windows Metafile تنها فرمت تصویر بردار پشتیبانی شده توسط Microsoft Word بود. Microsoft Word اکنون از فرمت SVG نیز پشتیبانی می کند، اما فرمت متافیل هنوز هم معمولا در اسناد ورد استفاده می شود. همچنین، Metafile می تواند یک فرمت تبادل برای برخی از برنامه های دیگر، مانند Microsoft Visio باشد. اساسا، هدف اصلی Metafile تضمین تبادل اطلاعات گرافیکی بین برنامه های کاربردی Windows است.

3 نسخه از Windows Metafile وجود دارد:

- WMF – فروشگاه ها به 16 بیتی GDI زنگ می زنند.
- EMF – فروشگاه ها به Win32/GDI تماس می گیرند.
- EMF+ فروشگاه های متافیل تماس با GDI+. EMF+ Metafile همچنین ممکن است دوگانه باشد و همان گرافیک را با هر دو قسمت EMF و EMF+ توصیف کند.

مشکل موجود با Windows Metafile این است که توسط اکثر قالب‌های غیر Word که اسناد معمولاً در آنها ذخیره می‌شوند، پشتیبانی نمی‌شود. بنابراین، تبدیل فرمت متافایل به فرمت های دیگر شطرنجی یا برداری الزامی است. تبدیل Windows Metafile به یک تصویر شطرنجی در .NET با انتقال آن به GDI+ آسان است، اما در پلتفرم های دیگر این امکان وجود ندارد زیرا حتی GDI+ نیز قابلیت استخراج وکتور را ارائه نمی دهد. گرافیک از متافایل. برای حل این مشکلات، Aspose.Words پخش کننده Metafile Windows خود را پیاده سازی می کند، که قادر است فرمت Metafile را هم گرافیک برداری و هم به صورت شطرنجی در همه پلتفرم ها پخش کند.

## کنترل پخش کننده متافیل Aspose.Words

کلاس [MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/) شما را قادر می سازد تا پخش کننده متافیل را کنترل کنید. به عنوان مثال، شما می توانید تعیین کنید که چگونه تصاویر متافیل باید با استفاده از ویژگی [RenderingMode](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingmode/) ارائه شوند، که هنگام تبدیل به بیت مپ ها معنای خاصی دارد (همچنین ویژگی [MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getMetafileRenderingOptions) را ببینید).

## پشتیبانی از عملیات رستر

عملیات رستر یک ویژگی پیچیده متافیل است که در حال حاضر پشتیبانی محدودی دارد. عملیات Raster در فرمت های WMF و EMF metafile در دسترس است. فرمت EMF+ metafile به طور مستقیم از عملیات رستر استفاده نمی کند اما می تواند شامل EMF قطعات، WMF یا EMF metafiles جاسازی شده باشد.

عملیات رستر باینری و سه گانه وجود دارد:

- عملیات رستر باینری به دستورات رسم قلم مانند رسم خطوط و منحنی ها اعمال می شود. هنگام ترسیم یک خط، رنگ قلم با رنگ نقشه بیت مقصد (رنگ پیکسل مربوطه در سطح دستگاه) با استفاده از عملیات منطقی بیتی مشخص شده با مقادیر رنگ هکس ترکیب می شود. مثال تصویر زیر اثر تمام 16 عملیات رستر باینری را که به 20 نوار رنگی مختلف اعمال شده است نشان می دهد. میله های رنگی عمودی کشیده می شوند، ابتدا میله های افقی پس از اعمال هر عملیات رستر باینری کشیده می شوند. برای موارد ساده ،R2_BLACK سیاه می کشد، R2_NOT رنگ را معکوس می کند، R2_NOP پس زمینه را تغییر نمی دهد، و R2_WHITE سفید می کشد.

<img src="/words/java/handling-windows-metafiles/handling-windows-metafiles-1.png" alt="handling-windows-metafiles-aspose-words-java-1" style="width:650px"/>

- عملیات رستر سه گانه هنگام ترسیم تصاویر نقشه بیت اعمال می شود. آنها رنگ های پیکسل های تصویر بیت مپ مربوطه، برس و بیت مپ مقصد را با استفاده از عملیات منطقی بیت با مقادیر رنگ هکس مشخص شده ترکیب می کنند. یکی از رایج ترین اهداف استفاده از عملیات رستر سه گانه، شبیه سازی شفافیت است. تصویر ارائه شده در مثال زیر نشان می دهد که چگونه شفافیت آیکون می تواند شبیه سازی شود. دو نوع bitmap وجود دارد: b / w mask bitmap و color bitmap. ابتدا نقشه بیت ماسک با عملیات رستر SRCAND ترسیم می شود. این منطقه نماد مبهم را به سیاه و سفید تغییر می دهد و منطقه شفاف را بدون تغییر می گذارد. سپس نقشه بیت دوم با عملیات رستر SRCINVERT کشیده می شود. این پیکسل های رنگی را در منطقه سیاه نشان می دهد و منطقه شفاف را بدون تغییر می گذارد.

<img src="/words/java/handling-windows-metafiles/handling-windows-metafiles-2.png" alt="handling-windows-metafiles-aspose-words-java-2" style="width:650px"/>

عملیات رستر را نمی توان به گرافیک بردار به طور مستقیم تبدیل شده است. Aspose.Words عملیات رستر را با رستر کردن بخشی از سطح دستگاه تحت تاثیر عملیات رستر تقلید می کند. برای این منظور از ویژگی [EmulateRasterOperations](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/#getEmulateRasterOperations) استفاده می شود.

{{% alert color="primary" %}}

در حالی که عملیات رستر باینری در حال حاضر پشتیبانی نمی شود و تعداد محدودی از عملیات رستر سه گانه توسط Aspose.Words پشتیبانی می شود، می تواند موارد اساسی تبدیل به گرافیک بردار را به طور مستقیم مدیریت کند، به عنوان مثال, R2_BLACK, R2_WHITE, R2_NOP. همچنین، رستر کردن سطح دستگاه به طور قابل توجهی بر عملکرد تأثیر می گذارد، به ویژه هنگامی که تعداد قابل توجهی از سوابق عملیات رستر درگیر هستند.

{{% /alert %}}

مثال زیر نشان می دهد که چگونه Aspose.Words یک متافیل را به یک نقشه بیت رندر می کند در حالی که امکان رندر صحیح برخی از سوابق متافیل به گرافیک وکتور وجود ندارد:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HandleDocumentWarnings-HandleDocumentWarnings.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderMetafileToBitmap-RenderMetafileToBitmap.java" >}}
