---
title: گزینه های هنگام تبدیل به PDF
second_title: Aspose.Words برای .NET
articleTitle: هنگام تبدیل به PDF گزینه های رندر را مشخص کنید
linktitle: هنگام تبدیل به PDF گزینه های رندر را مشخص کنید
description: "با استفاده از C# یک سند را با گزینه های پیشرفته به PDF تبدیل کنید. فرم های DOCX را به PDF C# تبدیل کنید. از PdfSaveOptions برای تغییر نتیجه ذخیره یک سند به PDF استفاده کنید."
type: docs
weight: 20
url: /fa/net/specify-rendering-options-when-converting-to-pdf/
timestamp: 2024-10-21-11-17-44
---

فرمت PDF یک فرمت صفحه ثابت است که در بین کاربران بسیار محبوب است و به طور گسترده توسط برنامه های مختلف پشتیبانی می شود، زیرا یک سند PDF در هر دستگاهی یکسان به نظر می رسد. به همین دلیل، تبدیل به PDF یکی از ویژگی های مهم Aspose.Words است.

PDF یک فرمت پیچیده است. چندین مرحله از محاسبات در فرآیند تبدیل یک سند به PDF مورد نیاز است، از جمله محاسبه طرح. از آنجایی که این مراحل شامل محاسبات پیچیده هستند، زمان بر هستند. همچنین، فرمت PDF به خودی خود بسیار پیچیده است. دارای ساختار فایل، مدل گرافیکی و جاسازی فونت خاص است. علاوه بر این، برخی از عملکردهای خروجی پیچیده، مانند برچسب‌های ساختار سند، رمزگذاری، امضای دیجیتال و فرم‌های قابل ویرایش را دارد.

موتور طرح‌بندی Aspose.Words روشی را تقلید می‌کند که موتور صفحه‌آرایی Microsoft Word کار می‌کند. بنابراین، Aspose.Words باعث می‌شود اسناد خروجی PDF تا حد امکان به آنچه در Microsoft Word می‌بینید نزدیک‌تر به نظر برسند. گاهی اوقات لازم است گزینه های اضافی را مشخص کنید که می تواند بر نتیجه ذخیره یک سند در قالب PDF تأثیر بگذارد. این گزینه ها را می توان با استفاده از کلاس [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) مشخص کرد که حاوی ویژگی هایی است که نحوه نمایش خروجی PDF را تعیین می کند.

چند نمونه از استفاده از **PdfSaveOptions** در زیر ارائه شده است.

{{% alert color="primary" %}}

در حال حاضر، می‌توانید در قالب‌های PDF 1.7، PDF 2.0، PDF/A-1a، PDF/A-1b، PDF/A-2a، PDF/A-2u، و PDF/UA-1 ذخیره کنید. از شمارش [PdfCompliance](https://reference.aspose.com/words/net/aspose.words.saving/pdfcompliance/) برای تنظیم سطح انطباق با استانداردهای PDF استفاده کنید. توجه داشته باشید که با فرمت PDF/A، اندازه فایل خروجی بزرگتر از اندازه فایل PDF معمولی است.

[PdfCompliance.PdfA1a](https://reference.aspose.com/words/net/aspose.words.saving/pdfcompliance/) و [PdfCompliance.PdfA1b](https://reference.aspose.com/words/net/aspose.words.saving/pdfcompliance/) به عنوان منسوخ علامت گذاری شده اند.

برای اطلاعات بیشتر در مورد PDF/A، به مقاله بعدی "آموزش ویژگی های تبدیل به PDF/A" مراجعه کنید.

{{% /alert %}}

## ایجاد یک سند PDF با فرم های قابل پر کردن

همچنین می‌توان فرم‌های قابل پر کردن را از یک سند Microsoft Word به PDF خروجی صادر کرد، که به جای متن ساده، فرم‌های قابل پر کردن دارد. از ویژگی [PreserveFormFields](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/preserveformfields/) برای ذخیره یک سند به صورت PDF با فرم های قابل پر کردن استفاده کنید.

توجه داشته باشید که بر خلاف Microsoft Word، فرمت PDF دارای تعداد محدودی گزینه برای فرم های قابل ویرایش مانند جعبه متن، جعبه ترکیبی و چک باکس است. Microsoft Word انواع بیشتری از فرم ها دارد، به عنوان مثال، انتخابگر تاریخ تقویم. به طور کلی، تقلید کامل رفتار Microsoft Word در PDF امکان پذیر نیست. بنابراین، در برخی موارد پیچیده، خروجی PDF ممکن است با آنچه در Microsoft Word می بینید متفاوت باشد.

مثال کد زیر نحوه ذخیره یک سند به صورت PDF با فرم های قابل پر کردن با فشرده سازی و کیفیت Jpeg مشخص را نشان می دهد:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-Working with PdfSaveOptions-PdfImageCompression.cs" >}}

## صدور ساختار سند و ویژگی های سفارشی

ویژگی [https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/properties/exportdocumentstructure) به شما امکان می دهد ساختار سند را به خروجی PDF صادر کنید.

امکانات ساختار منطقی PDF مکانیزمی را برای ترکیب اطلاعات در مورد ساختار محتوای سند در یک فایل PDF فراهم می کند. Aspose.Words اطلاعات مربوط به ساختار را از یک سند Microsoft Word، مانند پاراگراف ها، فهرست ها، جداول، پاورقی ها/نت های پایانی و غیره حفظ می کند.

مثال زیر نحوه ذخیره یک سند در قالب PDF را با حفظ ساختار سند نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithPdfSaveOptions-ExportDocumentStructure.cs" >}}

Aspose.Words همچنین به شما امکان می‌دهد تا ویژگی‌های سفارشی سند را به PDF صادر کنید، که با مثال زیر نشان داده می‌شود:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithPdfSaveOptions-CustomPropertiesExport.cs" >}}

## صادرات رئوس مطالب از نشانک ها و سرفصل ها در خروجی PDF

اگر می‌خواهید نشانک‌ها را به‌عنوان خطوط کلی در PDF خروجی صادر کنید، می‌توانید از ویژگی [DefaultBookmarksOutlineLevel](https://reference.aspose.com/words/net/aspose.words.saving/outlineoptions/defaultbookmarksoutlinelevel/) استفاده کنید. این ویژگی سطح پیش فرض را در طرح کلی سند مشخص می کند که در آن نشانک های Microsoft Word نمایش داده می شوند. اگر سند حاوی نشانک‌هایی در سرصفحه/پانویس سند باشد، می‌توانید ویژگی [HeaderFooterBookmarksExportMode](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/headerfooterbookmarksexportmode/) را روی [First](https://reference.aspose.com/words/net/aspose.words.saving/headerfooterbookmarksexportmode/) یا [All](https://reference.aspose.com/words/net/aspose.words.saving/headerfooterbookmarksexportmode/) تنظیم کنید تا مشخص کنید چگونه در PDF خروجی صادر می‌شوند. وقتی مقدار **HeaderFooterBookmarksExportMode** [None](https://reference.aspose.com/words/net/aspose.words.saving/headerfooterbookmarksexportmode/) باشد، نشانک‌های سرصفحه/پانویس صادر نمی‌شوند.

مثال کد زیر نحوه صادر کردن نشانک‌ها را از اولین هدر/پانویس یک بخش نشان می‌دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithPdfSaveOptions-ExportHeaderFooterBookmarks.cs" >}}

PDF خروجی این مثال در زیر نشان داده شده است:

![specify-rendering-options-when-converting-to-pdf_1](/words/net/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-1.png)

هنگامی که **HeaderFooterBookmarksExportMode** روی [First](https://reference.aspose.com/words/net/aspose.words.saving/headerfooterbookmarksexportmode/) تنظیم می‌شود و سند دارای سرصفحه/پانویس زوج و فرد یا سرصفحه/پانویس صفحه اول متفاوت است، نشانک‌ها برای اولین سرصفحه/پانویس‌های منحصربه‌فرد در یک بخش صادر می‌شوند.

همچنین می‌توانید عناوین را در PDF خروجی با استفاده از ویژگی [HeadingsOutlineLevels](https://reference.aspose.com/words/net/aspose.words.saving/outlineoptions/headingsoutlinelevels/) صادر کنید. این ویژگی مشخص می کند که چند سطح از سرفصل ها در طرح کلی سند گنجانده شده است.

مثال کد زیر نحوه صادرات عناوین با سه سطح را نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithPdfSaveOptions-SaveToPdfWithOutline.cs" >}}

PDF خروجی این مثال در زیر نشان داده شده است:

![specify-rendering-options-when-converting-to-pdf_2](/words/net/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-2.png)

{{% alert color="primary" %}}

نشانک یا پیمایش عنوان ممکن است در نمایشگرهای PDF مختلف ظاهر متفاوتی داشته باشد. علاوه بر این، در برخی از برنامه‌ها، نشانک‌ها و پیمایش عنوان در رابط کاربری موجود نیستند.

{{% /alert %}}

## نمونه برداری از تصاویر برای کاهش اندازه سند

Aspose.Words با استفاده از ویژگی [DownsampleOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/downsampleoptions/)، توانایی پایین آوردن نمونه تصاویر را به منظور کاهش اندازه PDF خروجی فراهم می کند. Downsampling به طور پیش فرض در ویژگی [DownsampleImages](https://reference.aspose.com/words/net/aspose.words.saving/downsampleoptions/downsampleimages/) فعال است.

توجه داشته باشید که امکان تنظیم وضوح خاص در ویژگی [Resolution](https://reference.aspose.com/words/net/aspose.words.saving/downsampleoptions/resolution/) یا آستانه وضوح در ویژگی [ResolutionThreshold](https://reference.aspose.com/words/net/aspose.words.saving/downsampleoptions/resolution/threshold) وجود دارد. در حالت دوم، اگر وضوح تصویر کمتر از مقدار آستانه باشد، نمونه برداری کوچک اعمال نخواهد شد.

مثال کد زیر نحوه تغییر وضوح تصاویر در یک سند PDF خروجی را نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithPdfSaveOptions-DownsamplingImages.cs" >}}

رزولوشن با توجه به اندازه واقعی تصویر در صفحه محاسبه می شود.

## جاسازی فونت ها در فرمت Adobe PDF

Aspose.Words همچنین شما را قادر می سازد تا نحوه جاسازی فونت ها در اسناد PDF حاصل را کنترل کنید. فونت ها باید در هر سند Adobe PDF تعبیه شوند تا اطمینان حاصل شود که سند می تواند به درستی بر روی هر ماشینی ارائه شود (جزئیات بیشتر در مورد رندر فونت را در بخش [استفاده از فونت های TrueType](/words/fa/net/using-truetype-fonts/) ببینید). به‌طور پیش‌فرض، Aspose.Words زیرمجموعه‌ای از فونت‌های مورد استفاده در سند را در PDF ایجاد شده جاسازی می‌کند. در این حالت، فقط glyph ها (نویسه های) استفاده شده در سند در PDF ذخیره می شوند.

### چه زمانی از فونت های کامل و چه زمانی زیر مجموعه استفاده کنیم

راهی برای تعیین گزینه ای برای Aspose.Words برای جاسازی فونت های کامل وجود دارد. جزئیات بیشتر، همراه با برخی از مزایا و معایب هر یک از تنظیمات در جدول زیر شرح داده شده است.

| حالت فونت را جاسازی کنید |  مزایای | معایب |
|  :-  |  :-  |  :-  |
|  `Full`  | زمانی مفید است که می خواهید PDF حاصل را بعداً با افزودن یا تغییر متن ویرایش کنید. همه فونت ها گنجانده شده اند، از این رو همه glyph ها وجود دارند. | از آنجایی که برخی از فونت ها بزرگ هستند (چند مگابایت)، تعبیه آنها بدون تنظیمات فرعی می تواند منجر به فایل های خروجی بزرگ شود. |
|  `Subset`  | اگر می خواهید اندازه فایل خروجی را کوچکتر نگه دارید، زیرمجموعه مفید است. | <p>کاربر نمی تواند به طور کامل متن را با استفاده از فونت زیر مجموعه در سند PDF خروجی اضافه یا ویرایش کند. این به این دلیل است که همه glyph های فونت وجود ندارند.</p><p>اگر چندین فایل PDF با فونت های زیر مجموعه ذخیره شده و با هم مونتاژ شوند، ممکن است سند PDF ترکیبی فونتی داشته باشد که شامل بسیاری از زیر مجموعه های غیر ضروری باشد.</p> |

### تعبیه فونت های کامل در PDF

ویژگی [EmbedFullFonts](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/embedfullfonts/) شما را قادر می سازد تا مشخص کنید که Aspose.Words چگونه فونت ها را در یک سند PDF خروجی جاسازی می کند.

- برای جاسازی فونت های کامل در سند PDF خروجی، **EmbedFullFonts** را روی true تنظیم کنید
- برای زیر مجموعه فونت ها هنگام ذخیره در PDF، **EmbedFullFonts** را روی false تنظیم کنید

مثال زیر نحوه جاسازی فونت های کامل را در سند PDF خروجی نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-EmbeddedFontsInPDF-EmbeddAllFonts.cs" >}}

مثال زیر نحوه تنظیم Aspose.Words را بر روی فونت های زیر مجموعه در PDF خروجی نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-EmbeddedFontsInPDF-EmbeddSubsetFonts.cs" >}}

{{% alert color="primary" %}}

فایل قالب این نمونه ها را می توانید از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx) دانلود کنید.

{{% /alert %}}

## نحوه کنترل جاسازی فونت های اصلی و فونت های استاندارد Windows

فونت‌های اصلی و فونت‌های استاندارد Windows مجموعه‌های "استاندارد" فونت‌هایی هستند که معمولاً در دستگاه هدف وجود دارند یا توسط خواننده سند ارائه می‌شوند، بنابراین نیازی به تعبیه آن‌ها در PDF خروجی ندارند. با تعبیه نکردن این فونت ها، می توانید اندازه اسناد PDF رندر شده را کاهش دهید و در عین حال قابلیت حمل را حفظ کنید.

Aspose.Words گزینه هایی را برای انتخاب نحوه صادرات فونت ها به PDF فراهم می کند. می توانید انتخاب کنید که فونت های اصلی و استاندارد را در PDF خروجی جاسازی کنید یا از جاسازی آنها صرف نظر کنید و به جای آن از فونت های اصلی PDF اصلی یا فونت های سیستمی در دستگاه مورد نظر استفاده کنید. استفاده از یکی از این گزینه ها معمولاً منجر به کاهش قابل توجه اندازه فایل برای اسناد PDF تولید شده توسط Aspose.Words می شود.

- از آنجایی که این گزینه ها متقابلاً منحصر به فرد هستند، باید هر بار فقط یکی را انتخاب کنید.
- هنگام ذخیره با انطباق PDF/A-1، تمام فونت های استفاده شده باید در سند PDF جاسازی شوند. هنگام ذخیره با این انطباق، ویژگی [UseCoreFonts](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usecorefonts/) باید روی false و ویژگی [FontEmbeddingMode](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/fontembeddingmode/) باید روی [EmbedAll](https://reference.aspose.com/words/net/aspose.words.saving/pdffontembeddingmode/) تنظیم شود.

### جاسازی فونت های اصلی

گزینه جاسازی فونت های Core را می توان با استفاده از ویژگی [UseCoreFonts](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usecorefonts/) فعال یا غیرفعال کرد. هنگامی که آن را روی true تنظیم کنید، محبوب ترین فونت های "True Type" زیر (فونت پایه 14) در سند PDF خروجی جاسازی نمی شوند:

- `Arial`
- `Times New Roman`
- `Courier New`
- `Symbol`

این فونت‌ها با فونت‌های اصلی نوع 1 جایگزین می‌شوند که با باز شدن PDF توسط خواننده ارائه می‌شوند.

مثال ارائه شده در زیر نشان می دهد که چگونه Aspose.Words را برای جلوگیری از جاسازی فونت های اصلی تنظیم کنید و به خواننده اجازه دهید آنها را با فونت های PDF نوع 1 جایگزین کند:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-EmbeddingWindowsStandardFonts-AvoidEmbeddingCoreFonts.cs" >}}

{{% alert color="primary" %}}

می توانید فایل قالب این نمونه را از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx) دانلود کنید.

{{% /alert %}}

از آنجایی که نمایشگرهای PDF فونت‌های اصلی را بر روی هر پلتفرم پشتیبانی‌شده ارائه می‌کنند، این گزینه در مواقعی که به قابلیت حمل سند بیشتری نیاز است نیز مفید است. با این حال، فونت های اصلی ممکن است متفاوت از فونت های سیستمی به نظر برسند.

{{% alert color="primary" %}}

این تنظیم فقط برای متن کدگذاری ANSI (Windows-1252) کار می کند. نوشتن یک متن غیر ANSI در PDF همیشه نیاز به جاسازی فونت های مربوطه دارد.

{{% /alert %}}

### جاسازی فونت های سیستم

این گزینه را می توان با استفاده از ویژگی [FontEmbeddingMode](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/fontembeddingmode/) فعال یا غیرفعال کرد. وقتی این ویژگی روی [EmbedNonstandard](https://reference.aspose.com/words/net/aspose.words.saving/pdffontembeddingmode/) تنظیم می شود، فونت های نوع true "Arial" و "Times New Roman" در یک سند PDF جاسازی نمی شوند. در این حالت، بیننده سرویس گیرنده به فونت هایی که بر روی سیستم عامل مشتری نصب شده اند، متکی است. هنگامی که ویژگی **FontEmbeddingMode** روی [EmbedNone](https://reference.aspose.com/words/net/aspose.words.saving/pdffontembeddingmode/) تنظیم شده است، Aspose.Words هیچ فونتی را تعبیه نمی کند.

مثال زیر نشان می دهد که چگونه Aspose.Words را تنظیم کنید تا از جاسازی فونت های Arial و Times New Roman در یک سند PDF صرفنظر کند:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-EmbeddedFontsInPDF-SetFontEmbeddingMode.cs" >}}

این حالت زمانی که می‌خواهید اسناد خود را در همان پلتفرم مشاهده کنید و ظاهر دقیق فونت‌ها را در PDF خروجی حفظ کنید بسیار مفید است.

{{% alert color="primary" %}}

این تنظیم فقط برای متن کدگذاری ANSI (Windows-1252) کار می کند. برای نوشتن یک متن غیر ANSI در PDF، فونت مربوطه باید جاسازی شود.

{{% /alert %}}
