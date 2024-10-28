---
title: گزینه های رندر را هنگام تبدیل به PDFمشخص کنید
second_title: Aspose.Words برای C++
articleTitle: گزینه های رندر را هنگام تبدیل به PDFمشخص کنید
linktitle: گزینه های رندر را هنگام تبدیل به PDFمشخص کنید
description: "تبدیل یک سند به PDF با گزینه های پیشرفته با استفاده از C++. برای تغییر نتیجه ذخیره یک سند به فرمت PDF از PdfSaveOptions استفاده کنید."
type: docs
weight: 30
url: /fa/cpp/specify-rendering-options-when-converting-to-pdf/
---

فرمت PDF یک فرمت صفحه ثابت است که در میان کاربران بسیار محبوب است و به طور گسترده ای توسط برنامه های مختلف پشتیبانی می شود زیرا یک سند PDF در هر دستگاه یکسان به نظر می رسد. به همین دلیل، تبدیل به PDF یک ویژگی مهم Aspose.Words است.

PDF یک فرمت پیچیده است. چندین مرحله از محاسبات در فرآیند تبدیل یک سند به PDF، از جمله محاسبه طرح مورد نیاز است. از آنجا که این مراحل شامل محاسبات پیچیده هستند، وقت گیر هستند. همچنین، فرمت PDF به خودی خود بسیار پیچیده است. این یک ساختار فایل خاص، مدل گرافیکی و جاسازی فونت دارد. علاوه بر این، دارای برخی از قابلیت های خروجی پیچیده، مانند برچسب های ساختار سند، رمزگذاری، امضای دیجیتال و فرم های قابل ویرایش است.

موتور طرح بندی Aspose.Words از نحوه کار موتور طرح بندی صفحه Microsoft Word تقلید می کند. بنابراین، Aspose.Words باعث می شود PDF اسناد خروجی تا حد ممکن به آنچه در Microsoft Word می بینید نزدیک تر به نظر برسند. گاهی اوقات لازم است گزینه های اضافی را مشخص کنید، که می تواند بر نتیجه ذخیره یک سند در قالب PDF تأثیر بگذارد. این گزینه ها را می توان با استفاده از کلاس [PdfSaveOptions](https://reference.aspose.com/words/cpp/class/aspose.words.saving.pdf_save_options-members) مشخص کرد که شامل ویژگی هایی است که تعیین می کند چگونه خروجی PDF نمایش داده می شود.

برخی از نمونه های استفاده از **PdfSaveOptions** در زیر ارائه شده است.

{{% alert color="primary" %}}

در حال حاضر، شما می توانید به ذخیره PDF 1.7, PDF 2.0, PDF/A-1a ،PDF/A- 1b، PDF/A- 2a، PDF/A- 2u وPDF/UA- 1 formats. از شمارش [PdfCompliance](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfcompliance/) برای تنظیم سطح انطباق استانداردهای PDF استفاده کنید. توجه داشته باشید که با فرمت PDF/A، اندازه فایل خروجی بزرگتر از اندازه فایل معمولی PDF است.

[PdfCompliance.PdfA1a](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfcompliance/) و [PdfCompliance.PdfA1b](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfcompliance/) به عنوان منسوخ مشخص شده اند.

برای اطلاعات بیشتر در مورد PDF/A، مقاله بعدی را ببینید، "ویژگی های تبدیل به PDF/A را یاد بگیرید".

{{% /alert %}}

## ایجاد یک سند PDF با فرم های قابل پر کردن

همچنین امکان صادرات فرم های قابل پر کردن از یک سند Microsoft Word به خروجی PDF وجود دارد که به جای متن ساده فرم های قابل پر کردن دارد. از ویژگی [PreserveFormFields](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_preserveformfields/) برای ذخیره یک سند به عنوان PDF با فرم های قابل پر کردن استفاده کنید.

توجه داشته باشید که برخلاف Microsoft Word، فرمت PDF دارای تعداد محدودی گزینه برای فرم های قابل ویرایش مانند textbox، combobox و checkbox است. Microsoft Word انواع بیشتری از فرم ها دارد، به عنوان مثال، انتخاب کننده تاریخ تقویم. به طور کلی، تقلید کامل از رفتار Microsoft Word در PDF امکان پذیر نیست. بنابراین، در برخی موارد پیچیده، خروجی PDF ممکن است با آنچه در Microsoft Word می بینید متفاوت باشد.

مثال کد زیر نشان می دهد که چگونه یک سند را به عنوان PDF با فرم های قابل پر کردن با فشرده سازی jpeg مشخص شده و کیفیت ذخیره کنید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-File Formats and Conversions-Save Options-Working with PdfSaveOptions-PdfImageComppression.h" >}}

## ساختار سند صادرات و خواص سفارشی

ویژگی [ExportDocumentStructure](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/set_exportdocumentstructure/) شما را قادر می سازد تا ساختار سند را به خروجی PDF صادر کنید.

PDF امکانات ساختار منطقی مکانیزمی برای ترکیب اطلاعات مربوط به ساختار محتوای سند در یک فایل PDF فراهم می کند. Aspose.Words اطلاعات مربوط به ساختار را از یک سند Microsoft Word حفظ می کند، مانند پاراگراف ها، لیست ها، جداول، حاشیه ها/حاشیه ها و غیره.

مثال زیر نشان می دهد که چگونه یک سند را به فرمت PDF ذخیره کنیم و ساختار سند را حفظ کنیم:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-ExportDocumentStructure.cpp" >}}

Aspose.Words همچنین به شما اجازه می دهد تا ویژگی های سفارشی سند را به PDF صادر کنید که با مثال زیر نشان داده شده است:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-CustomPropertiesExport.cpp" >}}

## صادرات خطوط از نشانه ها و عناوین در خروجی PDF

اگر می خواهید نشانه ها را به عنوان خطوط خروجی PDF صادر کنید، می توانید از ویژگی [DefaultBookmarksOutlineLevel](https://reference.aspose.com/words/cpp/aspose.words.saving/outlineoptions/get_defaultbookmarksoutlinelevel/) استفاده کنید. این ویژگی سطح پیش فرض را در طرح سند مشخص می کند که در آن Microsoft Word نشانه ها نمایش داده می شوند. اگر سند حاوی نشانه های کتاب در سر و پای سند باشد، می توانید ویژگی [HeaderFooterBookmarksExportMode](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_headerfooterbookmarksexportmode/) را به [First](https://reference.aspose.com/words/cpp/aspose.words.saving/headerfooterbookmarksexportmode/) یا [All](https://reference.aspose.com/words/cpp/aspose.words.saving/headerfooterbookmarksexportmode/) تنظیم کنید تا مشخص کنید که چگونه آنها در خروجی PDF صادر می شوند. نشانه های کتاب در سر و پای صفحه زمانی صادر نمی شوند که مقدار **HeaderFooterBookmarksExportMode** [None](https://reference.aspose.com/words/cpp/aspose.words.saving/headerfooterbookmarksexportmode/) باشد.

مثال کد زیر نشان می دهد که چگونه نشانه ها را از اولین هدر/پای یک بخش صادر کنید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-ExportHeaderFooterBookmarks.cpp" >}}

خروجی PDF این مثال در زیر نشان داده شده است:

![specify-rendering-options-aspose-words-cpp-1](specify-rendering-options-when-converting-to-pdf-1.png)

هنگامی که **HeaderFooterBookmarksExportMode** برای اولین بار تنظیم می شود و سند دارای سرصفحه ها/پای صفحه های جفت و عجیب یا یک سرصفحه/پای صفحه اول متفاوت است، نشانه های کتاب برای اولین سرصفحه/پای صفحه های منحصر به فرد در یک بخش صادر می شود.

شما همچنین می توانید عناوین را در خروجی PDF با استفاده از ویژگی [HeadingsOutlineLevels](https://reference.aspose.com/words/cpp/aspose.words.saving/outlineoptions/get_headingsoutlinelevels/) صادر کنید. این ویژگی مشخص می کند که چه تعداد سطح از عناوین در طرح سند گنجانده شده است.

مثال کد زیر نشان می دهد که چگونه عنوان ها را با سه سطح صادر کنیم:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-SaveToPdfWithOutline.cpp" >}}

خروجی PDF این مثال در زیر نشان داده شده است:

![specify-rendering-options-aspose-words-cpp-2](specify-rendering-options-when-converting-to-pdf-2.png)

{{% alert color="primary" %}}

یک نشانه یا عنوان ناوبری ممکن است در بینندگان مختلف PDF ظاهر متفاوتی داشته باشد. علاوه بر این، در برخی از برنامه ها، نشانه ها و ناوبری عنوان در UI در دسترس نیستند.

{{% /alert %}}

## نمونه برداری از تصاویر برای کاهش اندازه سند

Aspose.Words توانایی نمونه برداری از تصاویر را برای کاهش اندازه خروجی PDF با استفاده از ویژگی [DownsampleOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_downsampleoptions/) فراهم می کند. Downsampling به طور پیش فرض در ویژگی [DownsampleImages](https://reference.aspose.com/words/cpp/aspose.words.saving/downsampleoptions/get_downsampleimages/) فعال است.

توجه داشته باشید که همچنین امکان تنظیم یک قطعنامه خاص در ملک [Resolution](https://reference.aspose.com/words/cpp/aspose.words.saving/downsampleoptions/get_resolution/) یا یک آستانه قطعنامه در ملک [ResolutionThreshold](https://reference.aspose.com/words/cpp/aspose.words.saving/downsampleoptions/get_resolutionthreshold/) وجود دارد. در حالت دوم، اگر وضوح تصویر کمتر از مقدار آستانه باشد، نمونه برداری پایین اعمال نمی شود.

مثال کد زیر نشان می دهد که چگونه وضوح تصاویر را در یک سند خروجی PDF تغییر دهید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-DownsamplingImages.cpp" >}}

رزولوشن با توجه به اندازه واقعی تصویر در صفحه محاسبه می شود.

## جاسازی فونت ها در فرمت Adobe PDF

Aspose.Words همچنین شما را قادر می سازد تا کنترل کنید که چگونه فونت ها در اسناد PDF حاصل شده جاسازی شده اند. فونت ها باید در هر سند Adobe PDF جاسازی شوند تا اطمینان حاصل شود که سند می تواند به درستی در هر ماشین ارائه شود (جزئیات بیشتر در مورد ارائه فونت را در بخش مشاهده کنید [استفاده از فونت های TrueType ](/words/cpp/using-truetype-fonts/)). به طور پیش فرض ،Aspose.Words زیر مجموعه ای از فونت های مورد استفاده در سند را در PDF تولید شده جاسازی می کند. در این مورد، فقط گلیف ها (کاراکترهای) استفاده شده در سند به PDF ذخیره می شوند.

### زمان استفاده از فونت های کامل و زمان زیر مجموعه

راهی برای مشخص کردن گزینه ای برای Aspose.Words برای جاسازی فونت های کامل وجود دارد. جزئیات بیشتر، همراه با برخی از مزایا و معایب هر تنظیم در جدول زیر شرح داده شده است.

| حالت جاسازی فونت ها | مزایا | معایب |
| :- | :- | :- |
| `Full` | مفید است وقتی می خواهید PDF حاصل را بعدا با اضافه کردن یا تغییر متن ویرایش کنید. همه فونت ها شامل می شوند، بنابراین همه گلیف ها وجود دارند. | از آنجا که برخی از فونت ها بزرگ هستند (چند مگابایت)، جاسازی آنها بدون زیر مجموعه می تواند منجر به فایل های خروجی بزرگ شود. |
| `Subset` | اگر می خواهید اندازه فایل خروجی را کوچکتر نگه دارید، زیر تنظیم مفید است. | <p>کاربر نمی تواند متن را با استفاده از فونت زیر تنظیم شده در سند خروجی PDF به طور کامل اضافه یا ویرایش کند. این به این دلیل است که همه گلیف های فونت وجود ندارد.</p><p>اگر چندین PDFs با فونت های زیر تنظیم شده ذخیره شوند و با هم جمع شوند، پس سند PDF ترکیب شده ممکن است دارای فونت حاوی بسیاری از زیر مجموعه های غیر ضروری باشد.</p> |

### جاسازی فونت های کامل در PDF

ویژگی [EmbedFullFonts](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_embedfullfonts/) شما را قادر می سازد تا مشخص کنید که چگونه Aspose.Words فونت ها را در یک سند خروجی PDF جاسازی می کند.

- برای جاسازی فونت های کامل در سند خروجی PDF، **EmbedFullFonts** را به true تنظیم کنید
- به فونت های زیر مجموعه هنگام ذخیره به PDF، **EmbedFullFonts** را به false تنظیم کنید

مثال زیر نشان می دهد که چگونه فونت های کامل را در سند خروجی PDF جاسازی کنید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-EmbeddedFontsInPDF-EmbeddAllFonts.cpp" >}}

مثال زیر نشان می دهد که چگونه Aspose.Words را به فونت های زیر مجموعه در خروجی PDFتنظیم کنید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-EmbeddedFontsInPDF-EmbeddSubsetFonts.cpp" >}}

{{% alert color="primary" %}}

شما می توانید فایل قالب این نمونه ها را از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## نحوه کنترل جاسازی فونت های هسته ای و فونت های استاندارد Windows

فونت های اصلی و فونت های استاندارد Windows مجموعه های "استاندارد" فونت ها هستند که معمولا در دستگاه هدف وجود دارند یا توسط خواننده سند ارائه می شوند، بنابراین نیازی به جاسازی آنها در خروجی PDF نیست. با جاسازی این فونت ها، می توانید اندازه اسناد ارائه شده PDF را کاهش دهید و در عین حال قابلیت حمل را حفظ کنید.

Aspose.Words گزینه هایی را برای انتخاب نحوه صادرات فونت ها به PDF فراهم می کند. شما می توانید یا برای جاسازی فونت های هسته ای و استاندارد در خروجی PDF یا برای حذف جاسازی آنها و استفاده از فونت های هسته ای استاندارد PDF یا فونت های سیستم در ماشین هدف به جای آن را انتخاب کنید. استفاده از هر یک از این گزینه ها به طور معمول منجر به کاهش قابل توجهی اندازه فایل برای PDF اسناد تولید شده توسط Aspose.Words می شود.

- از آنجا که این گزینه ها متقابل هستند، باید فقط یکی را در یک زمان انتخاب کنید.
- هنگام ذخیره با PDF/A-1 انطباق، تمام فونت های استفاده شده باید با سند PDF جاسازی شوند. هنگام ذخیره با این انطباق، ویژگی [UseCoreFonts](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_usecorefonts/) باید به false و ویژگی [FontEmbeddingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/set_fontembeddingmode/) باید به [EmbedAll](https://reference.aspose.com/words/cpp/aspose.words.saving/pdffontembeddingmode/)[.](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usecorefonts/)تنظیم شود

### جاسازی فونت های اصلی

گزینه جاسازی فونت های هسته ای را می توان با استفاده از ویژگی `UseCoreFonts` فعال یا غیرفعال کرد. هنگامی که به true تنظیم می شود، محبوب ترین فونت های "نوع واقعی" (فونت های پایه 14) در سند خروجی PDF جاسازی نشده اند:

`Arial`
`Times New Roman`
`Courier New`
`Symbol`

این فونت ها با فونت های مربوط به نوع اصلی 1 جایگزین می شوند که هنگام باز شدن PDF توسط خواننده ارائه می شود.

مثال ارائه شده در زیر نشان می دهد که چگونه Aspose.Words را برای جلوگیری از جاسازی فونت های اصلی تنظیم کنید و اجازه دهید خواننده آنها را با PDF فونت های 1 تایپ کند:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-EmbeddingWindowsStandardFonts-AvoidEmbeddingCoreFonts.cpp" >}}

{{% alert color="primary" %}}

شما می توانید فایل قالب برای این مثال را از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

از آنجا که PDF بینندگان فونت های اصلی را در هر پلتفرم پشتیبانی شده ارائه می دهند، این گزینه همچنین زمانی مفید است که قابلیت حمل اسناد بیشتری مورد نیاز است. با این حال، فونت های اصلی ممکن است با فونت های سیستم متفاوت باشند.

{{% alert color="primary" %}}

این تنظیمات فقط برای کدگذاری متن ANSI (Windows-1252) کار می کند. نوشتن یک متن غیر ANSI به PDF همیشه نیاز به فونت های مربوطه دارد.

{{% /alert %}}

### جاسازی فونت های سیستم

این گزینه را می توان با استفاده از ویژگی [FontEmbeddingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_fontembeddingmode/) فعال یا غیرفعال کرد. هنگامی که این ویژگی به [EmbedNonstandard](https://reference.aspose.com/words/cpp/aspose.words.saving/pdffontembeddingmode/) تنظیم می شود، فونت های نوع واقعی "Arial" و "Times New Roman" در یک سند PDF جاسازی نشده اند. در این حالت، نمایشگر مشتری به فونت هایی که روی سیستم عامل مشتری نصب شده اند متکی است. هنگامی که ویژگی **FontEmbeddingMode** به [EmbedNone](https://reference.aspose.com/words/cpp/aspose.words.saving/pdffontembeddingmode/) تنظیم شده است، Aspose.Words هیچ فونت را جاسازی نکنید.

مثال زیر نشان می دهد که چگونه Aspose.Words را برای حذف جاسازی فونت های Arial و Times New Roman در یک سند PDF تنظیم کنید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-EmbeddedFontsInPDF-SetFontEmbeddingMode.cpp" >}}

این حالت زمانی بسیار مفید است که بخواهید اسناد خود را در همان پلتفرم مشاهده کنید و ظاهر دقیق فونت ها را در خروجی PDF حفظ کنید.

{{% alert color="primary" %}}

این تنظیمات فقط برای کدگذاری متن ANSI (Windows-1252) کار می کند. نوشتن یک متن غیر ANSI به PDF نیاز به فونت مربوطه دارد.

{{% /alert %}}
