---
title: چه خبر ؟
second_title: Aspose.Words برای C++
articleTitle: چه چیز جدیدی در Aspose.Words برای C++
linktitle: چه چیز جدیدی در Aspose.Words برای C++
type: docs
description: "Aspose.Words برای C++ روزانه گسترش می یابد و افزایش می یابد. در این صفحه می توانید با بزرگ ترین و جالب ترین ویژگی های این محصول آشنا شوید."
weight: 2
url: /fa/cpp/what-s-new-in-aspose-words-for-cpp/
---

این صفحه جالب ترین ویژگی های جدید Aspose.Words را که در نسخه های اخیر معرفی شده است، توصیف می کند.

## Aspose.Words برای C++ 24.9

Aspose.Words 24.9 درج group shape و درج StructuredDocumentTag از طریق DocumentBuilder را معرفی می کند، رندر نمودار شعاعی را با فارغ التحصیلی افزایش می دهد، امضاهای دیجیتال را با XAdES-EPES پشتیبانی، Markdown underline recognition را اضافه می کند و دسترسی به جدا کننده های حاشیه/حاشیه را فراهم می کند.

### رندر و چاپ

#### فارغ التحصیلی در نمودارهای شعاعی

ارائه فارغ التحصیلی در نمودارهای شعاعی اجرا شده است.

### تبدیل، بارگیری و ذخیره اسناد

#### قالب بندی زیرنویس هنگام بارگذاری فایل های Markdown

گزینه تشخیص قالب بندی زیرنویس هنگام بارگذاری Markdown اسناد با اضافه کردن یک ملک عمومی جدید [ImportUnderlineFormatting]() گنجانده شده است.

### امضای دیجیتال

#### ثبت اسناد با XAdES-EPES

امکان امضای اسناد با XAdES-EPES سطحXML-DSig امضا با اضافه کردن یک ملک عمومی جدید [XmlDsigLevel]() و یک فهرست عمومی جدید [XmlDsigLevel]() معرفی شده است.

### سایر

* یک روش عمومی جدید [InsertGroupShape]() به group shapes اضافه شده است.
* یک روش عمومی جدید [InsertStructuredDocumentTag]() برای قرار دادن **StructuredDocumentTags** در یک سند اضافه شده است.
* دسترسی عمومی به جداکننده های زیرنویس/پایان نامه با اضافه کردن چند کلاس و ملک عمومی فراهم شده است.

{{% alert color="primary" %}}

اطلاعات بیشتر در مورد [Aspose.Words برای C++ 24.9 یادداشت های انتشار](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-9-release-notes/).

{{% /alert %}}

## Aspose.Words برای C++ 24.5, 24.6, 24.7

Aspose.Words 24.5 گزینه های مونتاژ را گسترش می دهد، قابلیت های رندر را بهبود می بخشد و برخی از گزینه های دیگر را گسترش می دهد.

Aspose.Words 24.6 گزینه های رندر را بهبود می بخشد، قابلیت جستجو و مقایسه را بهبود می بخشد و چندین ویژگی دیگر را گسترش می دهد.

Aspose.Words 24.7 نحوه کار شما با ActiveX را تغییر می دهد، قابلیت های رندر را گسترش می دهد و همچنین به فرمت های Markdown و XLSX صادر می کند.

### فرمت های پشتیبانی شده

با شروع از نسخه 24.7، صادرات به PDF/UA-2 برای اطمینان از دسترسی کاربران معلول پشتیبانی می شود.

### رندر و چاپ

#### تغییرات در نمودارها، اشکال و DrawingML <sup>24.5</sup>

- Drawingml effects rendering for SVG graphics، گسترش قابلیت های قبلی محدود به تصاویر، اجرا شده است.
- پشتیبانی از ایجاد نمودارهای ترکیبی و تنظیم ویژگی هایی مانند عرض شکاف، همپوشانی و مقیاس حباب در گروه های سری با اضافه کردن کلاس های **ChartSeriesGroup** و **ChartSeriesGroupCollection** و ویژگی **SeriesGroups** معرفی شده است.
- قابلیت دستکاری اثر SoftEdge شکل ها با اضافه کردن کلاس **SoftEdgeFormat** اجرا شده است.
- قابلیت تغییر مقادیر تنظیم شکل ها با اضافه کردن کلاس های عمومی **AdjustmentCollection** و **Adjustment** و ویژگی **Adjustments** اجرا شده است.

#### تغییرات در نمودارها، اشکال و نقاشی <sup>24.6</sup>

- قابلیت های نمودار سازی افزایش یافته است. اکنون می توانید انواع مختلفی از نمودارها را ایجاد کنید، از جمله*Treemaps*, *Sunbursts*, *Histograms*, *Pareto* نمودارها ،*Box & Whisker* نمودارها، *Waterfalls* و *Funnels*. این به شما امکان می دهد داده های خود را به روشی متنوع تر و آموزنده تر تجسم کنید.
- کنترل رنگ برای قالب بندی سایه بهبود یافته است. با دسترسی به رنگ های سایه می توانید کنترل دقیق تری بر ظاهر اسناد خود بدست آورید.
- افزایش عملکرد برای رندر پس زمینه بهبود یافته است. به لطف فناوری کاشی کاری بومی می توانید به طور قابل توجهی رندر پس زمینه های حاوی عناصر کوچک را تسریع کنید.
- گرادیان های واقع گرایانه برای اشکال اضافه شده است. حالا می توانید شکل های DML را با گرادیان های غیر خطی ایجاد کنید، که سبک بصری Microsoft Word را برای یک نگاه صاف تر تقلید می کند.

#### نمودار سفارشی سازی برچسب داده ها <sup>24.7</sup>

امکان سفارشی سازی برچسب های داده نمودار مانند **Orientation** و **Rotation** اضافه شده است.

#### طراحی شماره سفارشی برای سطوح لیست <sup>24.7</sup>

یک تنظیم کننده برای اموال عمومی [CustomNumberStyleFormat](https://reference.aspose.com/words/cpp/aspose.words.lists/listlevel/get_customnumberstyleformat/) اضافه شده است. حالا می توانید یک سبک شماره سفارشی برای سطوح لیست تعریف کنید.

#### تغییرات در کار با ActiveX <sup>24.7</sup>

- خواص اشیاء ActiveX اکنون می تواند اصلاح شود، به شما کنترل بیشتری بر رفتار آنها می دهد.
- قابلیت تغییر مقدار دکمه رادیویی ActiveX control برای فعال کردن تعامل پویا اضافه شده است.
- قابلیت تغییر یک جعبه چک ActiveX به" checked "یا" unchecked " اضافه شده است.

### بارگذاری و ذخیره اسناد

#### صادرات لینک به فرمت Markdown <sup>24.7</sup>

امکان کنترل صادرات لینک ها در فرمت Markdown از طریق پیاده سازی ویژگی [LinkExportMode](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_linkexportmode/) اضافه شده است.

### جستجو و مقایسه

#### گزینه های مقایسه پیشرفته <sup>24.6</sup>

توانایی ساده سازی جریان های کاری تجزیه و تحلیل داده ها با بهبود عملکرد مقایسه اضافه شده است. این شامل یک گزینه جدید **IgnoreStoreItemId** و یک رابط طراحی مجدد برای مقایسه های پیشرفته است.

### سایر

- تابع حذف صفحات خالی از یک سند با اضافه کردن روش [RemoveBlankPages](https://reference.aspose.com/words/cpp/aspose.words/document/removeblankpages/) اجرا شده است. <sup>24.5</sup>
- امکان بررسی وجود ماکروهای VBA بدون بارگذاری یک سند با اضافه کردن ویژگی **HasMacros** ارائه شده است. <sup>24.5</sup>
- یک ویژگی جدید **DateTimeUtc** اضافه شده است-این یک مهر زمانی دقیق تر برای نظرات، بهبود سازماندهی و ردیابی را فراهم می کند. <sup>24.6</sup>
- فرمت datetime اکنون به طور خودکار برای صادرات بدون درز به فرمت XLSX شناسایی می شود. <sup>24.7</sup>
- مالکیت عمومی [IsProtected](https://reference.aspose.com/words/cpp/aspose.words.vba/vbaproject/get_isprotected/) که به شما اجازه می دهد تا بررسی کنید که آیا یک پروژه VBA محافظت شده است، اضافه شده است. <sup>24.7</sup>

{{% alert color="primary" %}}

اطلاعات بیشتر در مورد [Aspose.Words برای C++ 24.5 یادداشت های انتشار](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-5-release-notes/).

اطلاعات بیشتر در مورد [Aspose.Words برای C++ 24.6 یادداشت های انتشار](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-6-release-notes/).

اطلاعات بیشتر در مورد [Aspose.Words برای C++ 24.7 یادداشت های انتشار](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-7-release-notes/).

{{% /alert %}}

## Aspose.Words برای C++ 24.1, 24.2, 24.3, 24.4

Aspose.Words 24.1 تجربه مدیریت رنگ های سکته مغزی را بهبود می بخشد، اشیاء OLE را بهبود می بخشد، و همچنین منابع کتابنامه جدید عمومی API را معرفی می کند.

Aspose.Words 24.2 نمودارهای گسترده API و مدیریت سبک. این نسخه از Aspose.Words همچنین قابلیت مشخص کردن SvgSaveOptions در طول رندر، بارگذاری کنترل انعطاف پذیرتر Markdown فایل ها و کار با متن مرجع برای حاشیه ها و حاشیه ها را معرفی کرد.

Aspose.Words 24.3 شبیه سازی عملیات رستر باینری برای WMF متافیل ها را معرفی می کند و همچنین به گسترش نمودارها API ادامه می دهد.

Aspose.Words 24.4 برخی از گزینه های رندر را بهبود می بخشد و همچنین کار با امضای دیجیتال را بهبود می بخشد.

### رندر و چاپ

#### کنترل رنگ سکته مغزی <sup>24.1</sup>

کلاس [Stroke](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/) با مجموعه ای از املاک عمومی جدید مربوط به مدیریت رنگ های سکته مغزی گسترش یافته است: [ForeThemeColor](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_forethemecolor/) و [BackThemeColor](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_backthemecolor/)، [ForeTintAndShade](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_foretintandshade/) و [BackTintAndShade](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_backtintandshade/).

#### نمودار DrawingML API پسوند <sup>24.2 / 24.3 / 24.4</sup>

**DrawingML Charts API** همچنان گسترش می یابد.

#### فونت های اعلام شده در قوانین @font-face را جاسازی کنید <sup>24.4</sup>

اضافه کردن قابلیت جاسازی فونت های اعلام شده در قوانین @font-face در تعاریف فونت سند حاصل با اضافه کردن یک ویژگی جدید [SupportFontFaceRules](https://reference.aspose.com/words/cpp/aspose.words.loading/htmlloadoptions/get_supportfontfacerules/) معرفی شده است.

#### با قالب بندی Glow و Reflection کار کنید <sup>24.4</sup>

توانایی کار با قالب بندی glow و reflection برای یک شیء نقاشی اجرا شده است.

### بارگذاری و ذخیره اسناد

#### در هنگام رندر SvgSaveOptions را مشخص کنید <sup>24.2</sup>

قابلیت مشخص کردن [SvgSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/svgsaveoptions/) در طول رندر با استفاده از [ShapeRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/shaperenderer/) اضافه شده است.[Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/) و [OfficeMathRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/officemathrenderer/).[Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/) روش ها.

#### حفظ خطوط خالی هنگام بارگذاری Markdown فایل ها <sup>24.2</sup>

امکان حفظ خطوط خالی در هنگام بارگذاری فایل های Markdown اضافه شده است.

### سایر

- قابلیت تغییر متن کنترل `TextBox` OLE با اضافه کردن یک ویژگی جدید **Text** به کلاس جدید **TextBoxControl** معرفی شده است. <sup>24.1</sup>
- منابع کتابشناسی عمومی API از طریق اضافه کردن یک فضای نام جدید [Aspose.Words.Bibliography](https://reference.aspose.com/words/cpp/aspose.words.bibliography/) با کلاس ها و شمارش های جدید و از طریق اضافه کردن یک ویژگی جدید [Bibliography](https://reference.aspose.com/words/cpp/aspose.words/document/get_bibliography/) به کلاس [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) اجرا شد. <sup>24.1</sup>
- املاک عمومی جدید [Priority](https://reference.aspose.com/words/cpp/aspose.words/style/get_priority/)، [UnhideWhenUsed](https://reference.aspose.com/words/cpp/aspose.words/style/get_unhidewhenused/) و [SemiHidden](https://reference.aspose.com/words/cpp/aspose.words/style/get_semihidden/) برای مدیریت سبک پیشرفته به کلاس [Style](https://reference.aspose.com/words/cpp/aspose.words/style/) اضافه شده است. <sup>24.2</sup>
- قابلیت بازیابی متن علامت مرجع واقعی برای حاشیه ها و حاشیه ها با ویژگی [ActualReferenceMark](https://reference.aspose.com/words/cpp/aspose.words.notes/footnote/get_actualreferencemark/) و روش [UpdateActualReferenceMarks](https://reference.aspose.com/words/cpp/aspose.words/document/updateactualreferencemarks/) افزایش یافته است. <sup>24.2</sup>
- شبیه سازی عملیات رستر باینری برای متافیل های WMF اجرا شده است. <sup>24.3</sup>
- قابلیت تعریف گزینه های امضا برای اسناد در **SaveOptions** با اضافه کردن یک کلاس **DigitalSignatureDetails** جدید با اعضای جدید عمومی و همچنین اضافه کردن ویژگی های جدید به کلاس های [OoxmlSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/ooxmlsaveoptions/)، [DocSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/docsaveoptions/) و [OdtSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/odtsaveoptions/) فعال شده است. <sup>24.4</sup>

{{% alert color="primary" %}}

اطلاعات بیشتر در مورد [Aspose.Words برای C++ 24.1 یادداشت های انتشار](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-1-release-notes/).

اطلاعات بیشتر در مورد [Aspose.Words برای C++ 24.2 یادداشت های انتشار](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-2-release-notes/).

اطلاعات بیشتر در مورد [Aspose.Words برای C++ 24.3 یادداشت های انتشار](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-3-release-notes/).

اطلاعات بیشتر در مورد [Aspose.Words برای C++ 24.4 یادداشت های انتشار](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-4-release-notes/).

{{% /alert %}}

## Aspose.Words برای C++ 23.9, 23.10, 23.11, 23.12

Aspose.Words 23.9 گزینه های رندر، شبیه سازی رندر metafile و markdown گزینه های ذخیره را گسترش می دهد.

Aspose.Words 23.10 رندر را بهبود می بخشد، گزینه های بارگذاری و ذخیره اسناد را گسترش می دهد و به کاربران اجازه می دهد تا اسناد را به روش های جدید ادغام کنند.

Aspose.Words 23.11 کار را با اصلاحات، XLSX فرمت و فونت در افسانه نمودار با گزینه های اضافی بهبود می بخشد.

Aspose.Words 23.12 ویژگی ها و شمارش های جدید برای کار با اسناد PDF و OOXML و همچنین پشتیبانی از تصاویر WebP را معرفی می کند.

### رندر و چاپ

#### سفارشی کردن عناوین محورها در نمودارهای DrawingML <sup>23.9</sup>

قابلیت سفارشی کردن عناوین محور در نمودارهای DrawingML با اجرای یک ویژگی جدید کلاس عمومی **ChartAxisTitle** و [Title](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartaxis/get_title/) معرفی شده است.

#### تعیین موقعیت عمودی فونت ها در یک پاراگراف <sup>23.9</sup>

اکنون امکان تعریف موقعیت عمودی فونت ها در یک پاراگراف با استفاده از ویژگی جدید عمومی [BaselineAlignment](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_baselinealignment/) و شمارش جدید [BaselineAlignment](https://reference.aspose.com/words/cpp/aspose.words/baselinealignment/) وجود دارد.

#### کنترل رنگ پیش زمینه <sup>23.10</sup>

امکان بازیابی رنگ پیش زمینه بدون تغییر دهنده به کلاس های [Fill](https://reference.aspose.com/words/cpp/aspose.words.drawing/fill/) و [Stroke](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/) از طریق ویژگی **BaseForeColor** اضافه شده است.

#### گسترش عملکرد نمودارها <sup>23.10</sup>

عملکرد کلاس های [ChartDataPointCollection](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartdatapointcollection/)، [ChartSeries](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartseries/) و [ChartFormat](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartformat/) با روش ها و خواص جدید گسترش یافته است.

#### به طور خودکار یک تصویر را در یک شکل تنظیم و قرار دهید <sup>23.10</sup>

یک راه ساده برای تنظیم و قرار دادن خودکار یک تصویر در یک شکل خاص از طریق روش جدید [FitImageToShape](https://reference.aspose.com/words/cpp/aspose.words.drawing/imagedata/fitimagetoshape/) ارائه شده است.

#### قالب بندی فونت پیش فرض برای ورودی های افسانه نمودار DrawingML <sup>23.11</sup>

قابلیت مشخص کردن قالب بندی فونت پیش فرض برای ورودی های افسانه ای نمودارهای DrawingML از طریق ویژگی [Font](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartlegend/get_font/) اضافه شده است. این ویژگی ظاهر ساده تر و سازگار تری را برای عناصر نمودار تسهیل می کند و زیبایی کلی سند را بهبود می بخشد.

#### مشخص کردن طرح صفحه هنگام باز کردن PDF در Reader <sup>23.12</sup>

امکان مشخص کردن طرح صفحه مورد استفاده در هنگام باز کردن یک سند در یک خواننده PDF از طریق معرفی یک ویژگی جدید **PageLayout** به کلاس [PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/) و معرفی یک شمارش جدید **PdfPageLayout** اضافه شده است.

### بارگذاری و ذخیره اسناد

#### مشخص کردن نام پوشه برای ساخت تصویر URIs در Markdown <sup>23.9</sup>

کلاس [MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/) با شامل کردن ویژگی [ImagesFolderAlias](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_imagesfolderalias/) گسترش یافته است که اجازه می دهد نام پوشه مورد استفاده برای ساخت تصویر URIs نوشته شده در سند Markdown را مشخص کند.

#### کاهش PDF اندازه خروجی <sup>23.10</sup>

بهینه‌سازی‌های مختلف رندر PDF برای کاهش اندازه خروجی هنگام استفاده از تنظیمات [OptimizeOutput](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_optimizeoutput/) پیاده‌سازی شده‌اند.

#### تشخیص هایپر لینک ها هنگام بارگذاری TXT اسناد <sup>23.10</sup>

ویژگی تشخیص لینک های بالا هنگام بارگذاری TXT اسناد با اضافه کردن یک ویژگی جدید [DetectHyperlinks](https://reference.aspose.com/words/cpp/aspose.words.loading/txtloadoptions/get_detecthyperlinks/) اجرا شده است.

### سایر

- شبیه سازی رندر Metafile برای تعیین اندازه rasterization به طور خاص برای WMF عرض قلم و EMF عرض قلم آرایشی اجرا شده است. برای رسیدن به این هدف، ملک **ScaleWmfFontsToMetafileSize** با ملک [EmulateRenderingToSizeOnPage](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emulaterenderingtosizeonpage/) جایگزین شد و ملک [EmulateRenderingToSizeOnPageResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emulaterenderingtosizeonpageresolution/) اضافه شد. <sup>23.9</sup>
* یک روش ساده برای قرار دادن یک سند در یک سند دیگر در موقعیت فعلی نشانگر با استفاده از روش [InsertDocumentInline](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertdocumentinline/) معرفی شده است. <sup>23.10</sup>
* امکان دسترسی و تغییر ویژگی های سبک از طریق معرفی ویژگی جدید [Locked](https://reference.aspose.com/words/cpp/aspose.words/style/get_locked/) اضافه شده است. <sup>23.10</sup>
* یک پارامتر نوع عمومی به روش های کلاس [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/) اضافه شده است. <sup>23.10</sup>
* راهی برای کنترل زمانی که یک تجدید نظر خاص باید پذیرفته شود/رد شود یا نه با استفاده از روش های [Accept](https://reference.aspose.com/words/cpp/aspose.words/revisioncollection/accept/) و [Reject](https://reference.aspose.com/words/cpp/aspose.words/revisioncollection/reject/) اجرا شده است. این پیشرفت به کاربران کنترل دقیق تری بر روند تجدید نظر می دهد. <sup>23.11</sup>
* توانایی نوشتن تمام بخش های یک سند بر روی همان ورق کار XLSX از طریق نوع جدید [XlsxSectionMode](https://reference.aspose.com/words/cpp/aspose.words.saving/xlsxsectionmode/) شمارش و ویژگی جدید [SectionMode](https://reference.aspose.com/words/cpp/aspose.words.saving/xlsxsaveoptions/get_sectionmode/) ارائه شده است. <sup>23.11</sup>
* راهی برای کنترل نحوه استفاده از افزونه های فرمت ZIP64 برای اسناد OOXML از طریق ویژگی جدید Zip64Mode کلاس `OoxmlSaveOptions` و شمارش جدید Zip64Mode اجرا شده است. <sup>23.12</sup>
* پشتیبانی از WebP تصویر معرفی شده است. لطفا توجه داشته باشید که این ویژگی فقط برای .NetStandart و .NET6 + نسخه. <sup>23.12</sup>

{{% alert color="primary" %}}

اطلاعات بیشتر در مورد [Aspose.Words برای C++ 23.9 یادداشت های انتشار](/words/cpp/aspose-words-for-cpp-23-9-release-notes/).
اطلاعات بیشتر در مورد [Aspose.Words برای C++ 23.10 یادداشت های انتشار](https://releases.aspose.com/words/cpp/release-notes/2023/aspose-words-for-cpp-23-10-release-notes/).
اطلاعات بیشتر در مورد [Aspose.Words برای C++ 23.11 یادداشت های انتشار](https://releases.aspose.com/words/cpp/release-notes/2023/aspose-words-for-cpp-23-11-release-notes/).
اطلاعات بیشتر در مورد [Aspose.Words برای C++ 23.12 یادداشت های انتشار](https://releases.aspose.com/words/cpp/release-notes/2023/aspose-words-for-cpp-23-12-release-notes/).

{{% /alert %}}

## بایگانی برچسب برای:

{{% alert color="primary" %}}

این صفحه حاوی آخرین اخبار انتشار در 2 سال گذشته است. برای جزئیات بیشتر در مورد نسخه های قبلی، نگاه کنید[ یادداشت های انتشار](/words/cpp/release-notes/) صفحات در بخش های مربوطه

{{% /alert %}}