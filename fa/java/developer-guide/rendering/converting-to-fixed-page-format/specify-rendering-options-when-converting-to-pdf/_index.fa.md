---
title: گزینه های سفارشی سازی هنگام تبدیل به PDF
second_title: Aspose.Words برای Java
articleTitle: گزینه های سفارشی سازی هنگام تبدیل به PDF
linktitle: گزینه های سفارشی سازی هنگام تبدیل به PDF
description: "تبدیل یک سند به PDF با گزینه های پیشرفته. استفاده از PdfSaveاختیاری برای تغییر نتیجه صرفه جویی در یک سند به فرمت PDF با استفاده از فرمت PDF Java..."
type: docs
weight: 20
url: /fa/java/specify-rendering-options-when-converting-to-pdf/
timestamp: 2024-10-21-11-17-44
---

فرمت PDF یک فرمت ثابت صفحه است که در میان کاربران بسیار محبوب است و به طور گسترده توسط برنامه های مختلف پشتیبانی می شود، زیرا یک سند PDF در هر دستگاه یکسان به نظر می رسد. به همین دلیل، تبدیل به PDF یک ویژگی مهم است. Aspose.Words...

PDF یک فرمت پیچیده است. چندین مرحله از محاسبات در فرایند تبدیل یک سند به PDF، از جمله محاسبه طرح مورد نیاز است. از آنجا که این مراحل شامل محاسبات پیچیده هستند، آنها وقت گیر هستند. همچنین فرمت PDF به تنهایی پیچیده است. این یک ساختار فایل خاص، مدل گرافیک و جاسازی فونت دارد. علاوه بر این، دارای برخی از قابلیت های خروجی پیچیده مانند برچسب های ساختار سند، رمزگذاری، امضاهای دیجیتال و فرم های قابل ویرایش است.

Aspose.Words موتور طرح سازی راه را تقلید می کند Microsoft Wordموتور طراحی صفحه کار می کند. پس، Aspose.Words اسناد خروجی PDF را تا جایی که می توانید در آن ببینید، نزدیک می کند. Microsoft Word... گاهی اوقات لازم است گزینه های اضافی را مشخص کنید که می تواند بر نتیجه صرفه جویی در یک سند در فرمت PDF تأثیر بگذارد. این گزینه ها را می توان با استفاده از [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) کلاس، حاوی خواص است که تعیین می کند که چگونه خروجی PDF نمایش داده خواهد شد.

برخی از نمونه های استفاده از **PdfSaveOptions** در زیر ارائه شده است.

{{% alert color="primary" %}}

در حال حاضر، شما می توانید به PDF 1.7، PDF 2.0، PDF / A-1a، PDF / A-1b، PDF / A-2a، PDF / A-2u و فرمت های PDF/UA-1 ذخیره کنید. استفاده از [PdfCompliance](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/) تکرار برای تنظیم سطح انطباق استانداردهای PDF توجه داشته باشید که با فرمت PDF / A، اندازه فایل خروجی بزرگتر از اندازه فایل فایل PDF منظم است.

[PdfCompliance.PdfA1a](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/#PDF-17) و [PdfCompliance.PdfA1b](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/#PDF-17) به عنوان منسوخ شده است.

برای اطلاعات بیشتر در مورد PDF / A، مقاله بعدی را ببینید، "ویژگی های یادگیری تبدیل به PDF / A".

{{% /alert %}}

## ایجاد یک PDF مستند با فرم های پر شدنی

همچنین امکان صادرات فرم های پر هزینه از یک Microsoft Word سند PDF خروجی، که به جای یک متن ساده، فرم های پر کننده دارد. استفاده از [PreserveFormFields](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getPreserveFormFields) اموال برای ذخیره یک سند به عنوان PDF با فرم های پر شده.

توجه داشته باشید که در مقابل <span notrans="<span notrans=" Microsoft Word"=""></span>"> فرمت PDF دارای تعداد محدودی از گزینه ها برای فرم های قابل ویرایش، مانند textbox، Box و Checkbox است. Microsoft Word انواع بیشتری از فرم ها، به عنوان مثال، انتخاب کننده تاریخ تقویم. به طور کلی، ممکن نیست به طور کامل تقلید شود Microsoft Word رفتار در PDF بنابراین، در برخی موارد پیچیده، خروجی PDF ممکن است با آنچه که در آن می بینید متفاوت باشد. Microsoft Word...

مثال کد زیر نشان می دهد که چگونه یک سند را به عنوان PDF با اشکال پر شده با فشرده سازی و کیفیت خاص Jpeg ذخیره کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-PdfImageCompression.java" >}}

## صادرات ساختار سند و خواص سفارشی

The The The The The The [ExportDocumentStructure](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getExportDocumentStructure) ملک شما را قادر می سازد تا ساختار سند را به خروجی PDF صادر کنید.

امکانات ساختار منطقی PDF یک مکانیسم برای ترکیب اطلاعات، در مورد ساختار محتوای سند، در یک فایل PDF ارائه می دهد. Aspose.Words حفظ اطلاعات در مورد ساختار از یک Microsoft Word سند، مانند پاراگراف ها، لیست ها، جداول، یادداشت های پا / پایان، و غیره.

مثال زیر نشان می دهد که چگونه یک سند را به فرمت PDF ذخیره کنید، ساختار سند را حفظ کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-ExportDocumentStructure.java" >}}

Aspose.Words همچنین به شما اجازه می دهد تا ویژگی های سفارشی سند را به PDF صادر کنید که توسط مثال زیر نشان داده شده است:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-CustomPropertiesExport.java" >}}

## فهرست های صادرات از Bookmarks و Headings در PDF خروجی

اگر می خواهید نشانه ها را به عنوان طرح های موجود در PDF خروجی صادر کنید، می توانید از آن استفاده کنید. [DefaultBookmarksOutlineLevel](https://reference.aspose.com/words/java/com.aspose.words/outlineoptions/#getDefaultBookmarksOutlineLevel) مالکیت این ملک سطح پیش فرض را در طرح سند مشخص می کند که در آن، در آن Microsoft Word نشانه ها نمایش داده می شوند. اگر این سند حاوی نشانه هایی در هدر / فوتر سند باشد، می توانید آن را تنظیم کنید. [HeaderFooterBookmarksExportMode](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getHeaderFooterBookmarksExportMode) مالکیت [First](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#FIRST) یا [All](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#ALL) برای مشخص کردن چگونگی صادرات آنها در PDF خروجی. نشانه ها در هدرها / پاها زمانی صادر نمی شوند که ارزش **HeaderFooterBookmarksExportMode** است. [None](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#NONE)...

مثال کد زیر نشان می دهد که چگونه نشانه های صادرات را از هدر / فوت اول یک بخش نشان می دهد:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-ExportHeaderFooterBookmarks.java" >}}

PDF خروجی این مثال در زیر نشان داده شده است:

![rendering-options-when-converting-to-pdf-aspose-words-java-1](/words/java/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-1.png)

وقتی **HeaderFooterBookmarksExportMode** تنظیم شده است [First](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#FIRST) و این سند حتی دارای هدرهای عجیب و غریب / پارز یا یک سرصفحه اول / فوتر مختلف است، نشانه ها برای اولین هدرهای منحصر به فرد / پا در یک بخش صادر می شوند.

شما همچنین می توانید عنوان ها را در PDF خروجی، با استفاده از [HeadingsOutlineLevels](https://reference.aspose.com/words/java/com.aspose.words/outlineoptions/#getHeadingsOutlineLevels) مالکیت این ملک مشخص می کند که چه مقدار از سرفصل ها در طرح سند گنجانده شده اند.

مثال کد زیر نشان می دهد که چگونه سرفصل های صادرات را با سه سطح:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-SaveToPdfWithOutline.java" >}}

PDF خروجی این مثال در زیر نشان داده شده است:

![rendering-options-when-converting-to-pdf-aspose-words-java-2](/words/java/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-2.png)

{{% alert color="primary" %}}

یک نشانه یا ناوبری عنوان ممکن است ظاهر متفاوتی در بینندگان مختلف PDF داشته باشد. علاوه بر این، در برخی از برنامه ها، نشانه ها و ناوبری عنوان در UI در دسترس نیستند.

{{% /alert %}}

## کاهش تصاویر برای کاهش اندازه سند

Aspose.Words فراهم می کند توانایی برای کاهش تصاویرample به منظور کاهش اندازه PDF خروجی، استفاده از [DownsampleOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getDownsampleOptions) مالکیت Downsampling به طور پیش فرض در [DownsampleImages](https://reference.aspose.com/words/java/com.aspose.words/downsampleoptions/#getDownsampleImages) مالکیت

توجه داشته باشید که ممکن است یک راه حل خاص در [Resolution](https://reference.aspose.com/words/java/com.aspose.words/downsampleoptions/#getResolution) مالکیت، یا آستانه حل در [ResolutionThreshold](https://reference.aspose.com/words/java/com.aspose.words/downsampleoptions/#getResolutionThreshold) مالکیت در مورد دوم، اگر رزولوشن تصویر کمتر از مقدار آستانه باشد، آنگاه کاهش نمی یابد.

مثال کد زیر نشان می دهد که چگونه رزولوشن تصاویر را در یک سند PDF خروجی تغییر دهید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-DownsamplingImages.java" >}}

رزولوشن با توجه به اندازه تصویر واقعی در صفحه محاسبه می شود.

## استفاده از فونت در Adobe PDF Format

Aspose.Words همچنین شما را قادر می سازد تا کنترل کنید که چگونه فونت ها در اسناد پی دی اف جاسازی شده اند. فونت ها باید در هر سند Adobe PDF جاسازی شوند تا اطمینان حاصل شود که این سند می تواند به درستی در هر دستگاه ارائه شود (نگاه کنید به جزئیات بیشتر در مورد رندر فونت در بخش [دانلود موسیقی متن بازی بازی Punch True](/words/fa/java/using-truetype-fonts/)) به طور پیش فرض، Aspose.Words یک زیرمجموعه از فونت های مورد استفاده در سند را در PDF تولید شده جاسازی می کند. در این مورد، تنها glyphs (ویژگی ها) مورد استفاده در سند به PDF ذخیره می شوند.

### هنگام استفاده از فونت های کامل و چه زمانی برای Subset

یک راه برای مشخص کردن یک گزینه برای Aspose.Words برای جاسازی فونت های کامل جزئیات بیشتر، همراه با برخی از مزایا و معایب هر تنظیمات در جدول زیر شرح داده می شود.

| ویژگی های Embed Fonts Mode |  مزایای | عدم موفقیت |
|  :-  |  :-  |  :-  |
|  `Full`  | هنگامی که می خواهید PDF حاصل شده را بعدا با اضافه کردن یا اصلاح متن ویرایش کنید. تمام فونت ها شامل، از این رو همه glyphوجود دارد. | از آنجا که برخی از فونت ها بزرگ هستند (چند مگابایت)، جاسازی آنها بدون زیرمجموعه می تواند منجر به فایل های بزرگ خروجی شود. |
|  `Subset`  | تنظیمات مفید است اگر می خواهید اندازه فایل خروجی را کوچکتر نگه دارید. | <p>کاربر نمی تواند متن را با استفاده از فونت زیرمجموعه در سند PDF خروجی به طور کامل اضافه یا ویرایش کند. چون همه چیز نیست glyphفونت موجود است.</p>

<p>اگر چندین PDF با فونت های زیرمجموعه ذخیره شده و گرد هم جمع شوند، آنگاه سند PDF ترکیبی ممکن است فونت حاوی بسیاری از زیرمجموعه های غیر ضروری باشد.</p>
 |

### استفاده از فونت های کامل در PDF

The The The The The The [EmbedFullFonts](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getEmbedFullFonts) اموال شما را قادر می سازد تا مشخص کنید که چگونه Aspose.Words فونت ها را به یک سند PDF خروجی جاسازی می کند.

- برای جاسازی فونت های کامل در سند PDF خروجی، تنظیم شده **EmbedFullFonts** برای true
- برای زیرمجموعه فونت ها هنگام صرفه جویی در PDF، تنظیم شده **EmbedFullFonts** برای false

مثال زیر نشان می دهد که چگونه فونت های کامل را در سند PDF خروجی جاسازی کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-EmbeddAllFonts.java" >}}

مثال زیر نشان می دهد که چگونه تنظیم کنیم Aspose.Words به زیرمجموعه فونت در PDF خروجی:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-EmbeddSubsetFonts.java" >}}

{{% alert color="primary" %}}

شما می توانید فایل قالب را برای این مثال ها دانلود کنید. [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx)...

{{% /alert %}}

## چگونگی کنترل فونت های اصلی و Windows فونت های استاندارد

فونت های اصلی و Windows فونت های استاندارد مجموعه ای از فونت های استاندارد هستند که معمولا در دستگاه هدف حضور دارند یا توسط خواننده سند ارائه می شوند، بنابراین نیازی به جاسازی در PDF خروجی نیست. با جاسازی این فونت ها، می توانید اندازه اسناد PDF رندر شده را کاهش دهید و در عین حال قابلیت حمل را حفظ کنید.

Aspose.Words گزینه هایی را برای انتخاب اینکه چگونه فونت ها به PDF صادر می شوند، فراهم می کند. شما می توانید انتخاب کنید که فونت های اصلی و استاندارد را در PDF خروجی جاسازی کنید یا آنها را جاسازی کنید و از فونت های استاندارد PDF یا فونت های سیستم در دستگاه هدف به جای آن استفاده کنید. استفاده از هر دو گزینه به طور معمول منجر به کاهش قابل توجهی اندازه فایل برای اسناد PDF تولید شده توسط فایل های PDF می شود. Aspose.Words...

- از آنجایی که این گزینه ها به طور متقابل منحصر به فرد هستند، شما باید تنها یک بار انتخاب کنید.
- هنگام صرفه جویی در انطباق PDF / A-1، تمام فونت های مورد استفاده باید با سند PDF جاسازی شوند. هنگامی که با این رعایت می شود، [UseCoreFonts](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getUseCoreFonts) اموال باید تنظیم شود false و [FontEmbeddingMode](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getFontEmbeddingMode) اموال باید تنظیم شود [EmbedAll](https://reference.aspose.com/words/java/com.aspose.words/pdffontembeddingmode#EMBED_ALL)[.](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usecorefonts/)

### استفاده از Core Fonts

گزینه جاسازی فونت های Core را می توان با استفاده از استفاده از فعال یا غیرفعال کرد. [UseCoreFonts](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getUseCoreFonts) مالکیت هنگامی که قرار است true, محبوب ترین فونت های "نوع واقعی" (Base 14 فونت) در سند PDF خروجی جاسازی نمی شوند:

- `Arial`
- `Times New Roman`
- `Courier New`
- `Symbol`

این فونت ها با فونت های نوع 1 مربوطه جایگزین می شوند که توسط یک خواننده ارائه می شود زمانی که PDF باز می شود.

مثال زیر نشان می دهد که چگونه تنظیم کنیم Aspose.Words برای جلوگیری از جاسازی فونت های اصلی و اجازه دهید خواننده آنها را با PDF جایگزین کند فونت های نوع 1:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-AvoidEmbeddingCoreFonts.java" >}}

{{% alert color="primary" %}}

شما می توانید فایل قالب را برای این مثال دانلود کنید. [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx)...

{{% /alert %}}

از آنجا که بینندگان PDF فونت های اصلی را در هر پلت فرم پشتیبانی ارائه می دهند، این گزینه همچنین زمانی مفید است که قابلیت حمل و نقل بیشتر مورد نیاز است. با این حال، فونت های اصلی ممکن است متفاوت از فونت های سیستم باشند.

{{% alert color="primary" %}}

این تنظیمات فقط برای ANSI کار می کند.Windowsمتن رمزگذاری 1252) نوشتن یک متن غیرANSI به PDF همیشه به فونت های مربوطه نیاز دارد که جاسازی شوند.

{{% /alert %}}

### برگرفته از System Fonts

این گزینه را می توان با استفاده از [FontEmbeddingMode](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getFontEmbeddingMode) مالکیت هنگامی که این ملک قرار است [EmbedNonstandard](https://reference.aspose.com/words/java/com.aspose.words/pdffontembeddingmode/#EMBED-NONSTANDARD), "معماری" و "Times New Roman" true فونت های نوع در یک سند PDF جاسازی نمی شوند. در این مورد، بیننده مشتری به فونت هایی که بر سیستم عامل مشتری نصب می شوند، متکی است. هنگامی که **FontEmbeddingMode** اموال برای [EmbedNone](https://reference.aspose.com/words/java/com.aspose.words/pdffontembeddingmode/#EMBED-NONE), Aspose.Words هیچ فونتی را جاسازی نکنید.

مثال زیر نشان می دهد که چگونه تنظیم کنیم Aspose.Words برای حذف فونت های Arial و Times New Roman به یک سند PDF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-SetFontEmbeddingMode.java" >}}

این حالت زمانی مفید است که شما می خواهید اسناد خود را در همان پلت فرم مشاهده کنید، حفظ ظاهر دقیق فونت ها در PDF خروجی.

{{% alert color="primary" %}}

این تنظیمات فقط برای ANSI کار می کند.Windowsمتن رمزگذاری 1252) نوشتن یک متن غیرANSI به PDF نیاز به فونت مربوطه برای جاسازی دارد.

{{% /alert %}}
