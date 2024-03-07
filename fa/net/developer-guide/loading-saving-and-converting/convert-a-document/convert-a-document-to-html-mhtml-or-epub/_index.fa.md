---
title: یک سند را در C# به HTML، MHTML یا EPUB تبدیل کنید
second_title: Aspose.Words برای .NET
articleTitle: یک سند را به HTML، MHTML یا EPUB تبدیل کنید
linktitle: یک سند را به HTML، MHTML یا EPUB تبدیل کنید
description: "یک سند را تقریباً از هر فرمتی به HTML یا MHTML و همچنین به فرمت EPUB با استفاده از C# تبدیل کنید. همچنین می توانید گزینه های ذخیره را برای مدیریت سند خروجی مشخص کنید."
type: docs
weight: 20
url: /fa/net/convert-a-document-to-html-mhtml-or-epub/
---

اسناد با فرمت‌های جریان طرح‌بندی HTML و MHTML نیز بسیار محبوب هستند و می‌توانند در هر پلتفرم وب مورد استفاده قرار گیرند. به همین دلیل، تبدیل اسناد به HTML و MHTML یکی از ویژگی های مهم Aspose.Words است.

EPUB (مخفف "انتشارات الکترونیک") یک قالب مبتنی بر HTML است که معمولاً برای توزیع الکترونیکی کتاب استفاده می شود. این فرمت به طور کامل در Aspose.Words برای صادرات کتاب های الکترونیکی که با اکثر دستگاه های مطالعه سازگار است پشتیبانی می شود.

## تبدیل یک سند

برای تبدیل ساده به HTML، MHTML یا EPUB، یکی از روش‌های [Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save/) اضافه بار استفاده می‌شود. می‌توانید سند را در یک فایل یا جریان ذخیره کنید و به صراحت فرمت ذخیره سند خروجی را تنظیم کنید یا آن را از پسوند نام فایل تعریف کنید.

مثال زیر نحوه تبدیل DOCX به HTML را با تعیین فرمت ذخیره نشان می دهد:

**.NET**

{{< highlight csharp >}}

// Load the document from disk.
Document doc = new Document(dataDir + "Test File.docx");

// Save the document into HTML.
doc.Save(dataDir + "Document", SaveFormat.Html);
{{< /highlight >}}

برای تبدیل یک سند به MHTML یا EPUB، به ترتیب از `SaveFormat.Mhtml` یا `SaveFormat.Epub` استفاده کنید.

## تبدیل یک سند با اطلاعات رفت و برگشت

فرمت HTML بسیاری از ویژگی‌های Microsoft Word را پشتیبانی نمی‌کند و اگر نیاز به بازیابی مدل سند تا حد امکان به نسخه اصلی داشته باشیم، باید اطلاعات اضافی را در فایل HTML ذخیره کنیم. به چنین اطلاعاتی "اطلاعات رفت و برگشت" نیز می گویند. برای این منظور، Aspose.Words امکان صادرات اطلاعات رفت و برگشت را هنگام ذخیره به HTML، MHTML یا EPUB با استفاده از ویژگی [ExportRoundtripInformation](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/exportroundtripinformation/) فراهم می کند. ذخیره اطلاعات رفت و برگشت اجازه می دهد تا ویژگی های سند مانند برگه ها، نظرات، سرصفحه ها و پاورقی ها را در حین بارگیری اسناد از فرمت های فهرست شده در یک شی **Document** بازیابی کنید.

مقدار پیش فرض **true** برای HTML و **false** برای MHTML و EPUB است:

- هنگام **true**، اطلاعات رفت و برگشت به صورت - aw - * ویژگی های CSS عناصر HTML مربوطه صادر می شود
- هنگام **false**، هیچ اطلاعات رفت و برگشتی برای خروجی در فایل های تولید شده وجود ندارد

مثال کد زیر نحوه صادرات اطلاعات رفت و برگشت را هنگام تبدیل یک سند از DOCX به HTML نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToHtmlWithRoundtrip-ConvertDocumentToHtmlWithRoundtrip.cs" >}}

{{% alert color="primary" %}}

فایل قالب این نمونه را می توانید از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx) دانلود کنید.

{{% /alert %}}

## هنگام تبدیل به HTML گزینه های ذخیره را مشخص کنید

Aspose.Words اجازه می دهد تا با استفاده از گزینه های ذخیره پیش فرض یا سفارشی، یک سند Word را به HTML تبدیل کنید. چند نمونه از گزینه های ذخیره سفارشی در زیر توضیح داده شده است.

### یک پوشه برای ذخیره منابع مشخص کنید

با استفاده از Aspose.Words می‌توانیم یک پوشه فیزیکی را مشخص کنیم که در آن همه منابع، مانند تصاویر، فونت‌ها و CSS خارجی، هنگام تبدیل سند به HTML ذخیره شوند. به طور پیش فرض، این یک رشته خالی است.

مشخص کردن ویژگی [ResourceFolder](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/resourcefolder/) ساده‌ترین راه برای تنظیم پوشه‌ای است که تمام منابع باید در آن نوشته شوند. ما می‌توانیم از ویژگی‌های جداگانه استفاده کنیم، مانند [FontsFolder](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/fontsfolder/) که فونت‌ها را در پوشه مشخص‌شده ذخیره می‌کند و [ImagesFolder](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/imagesfolder/) که تصاویر را در یک پوشه مشخص ذخیره می‌کند. هنگامی که یک مسیر نسبی مشخص می شود، **FontsFolder** و **ImagesFolder** به پوشه ای که مجموعه کد در آن قرار دارد، **ResourceFolder** و [CssStyleSheetFileName](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/cssstylesheetfilename/) به پوشه خروجی که سند HTML در آن قرار دارد اشاره می کنند.

در این مثال، **ResourceFolder** مسیر نسبی را مشخص می کند. این مسیر به پوشه خروجی اشاره دارد که سند HTML در آن ذخیره می شود. مقدار ویژگی **ResourceFolderAlias** برای ایجاد URL برای همه منابع استفاده می شود.

مثال کد زیر نحوه کار با این ویژگی ها را نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ExportResourcesUsingHtmlSaveOptions-ExportResourcesUsingHtmlSaveOptions.cs" >}}

با استفاده از ویژگی [ResourceFolderAlias](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/resourcefolderalias/)، می‌توانیم نام پوشه‌ای را که برای ساخت URI از همه منابع نوشته شده در یک سند HTML استفاده می‌شود، مشخص کنیم. این ساده ترین راه برای تعیین نحوه تولید URI برای همه فایل های منبع است. همین اطلاعات را می توان به ترتیب برای تصاویر و فونت ها به طور جداگانه از طریق ویژگی های [ImagesFolderAlias](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/imagesfolderalias/) و [FontsFolderAlias](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/fontsfolderalias/) مشخص کرد.

با این حال، هیچ ویژگی فردی برای CSS وجود ندارد. رفتار خصوصیات **FontsFolder**، **FontsFolderAlias**، **ImagesFolder**، **ImagesFolderAlias** و **CssStyleSheetFileName** تغییر نکرده است. توجه داشته باشید که ویژگی **CssStyleSheetFileName** هم برای تعیین نام پوشه و هم برای تعیین نام فایل استفاده می شود.

- **ResourceFolder** اولویت کمتری نسبت به پوشه های مشخص شده از طریق **FontsFolder**، **ImagesFolder** و **CssStyleSheetFileName** دارد. اگر پوشه مشخص شده در **ResourceFolder** وجود نداشته باشد، به طور خودکار ایجاد می شود.
- **ResourceFolderAlias** اولویت کمتری نسبت به **FontsFolderAlias** و **ImagesFolderAlias** دارد. اگر **ResourceFolderAlias** خالی باشد، از مقدار ویژگی **ResourceFolder** برای ایجاد URI های منبع استفاده می شود. اگر **ResourceFolderAlias** روی "." تنظیم شده باشد. (نقطه)، URI های منبع فقط حاوی نام فایل ها بدون تعیین مسیر هستند.

### Export Base64 Encoding Fonts Resources

Aspose.Words توانایی تعیین اینکه آیا منابع فونت باید در HTML در کدهای Base64 تعبیه شود یا خیر فراهم می کند. برای انجام این کار، از ویژگی [ExportFontsAsBase64](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/exportfontsasbase64/) استفاده کنید - این یک پسوند ویژگی [ExportFontResources](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/exportfontresources/) است. به طور پیش فرض، مقدار آن **false** است و فونت ها در فایل های جداگانه نوشته می شوند. اما اگر این گزینه روی **true** تنظیم شود، فونت ها در CSS سند در کدگذاری Base64 تعبیه می شوند. ویژگی **ExportFontsAsBase64** فقط بر فرمت HTML تأثیر می گذارد و بر EPUB و MHTML تأثیر نمی گذارد.

مثال کد زیر نحوه صادرات فونت‌های کدگذاری شده با Base64 را به HTML نشان می‌دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ExportFontsAsBase64-ExportFontsAsBase64.cs" >}}

## Save Options را هنگام تبدیل به EPUB مشخص کنید

Aspose.Words اجازه می دهد تا با استفاده از گزینه های ذخیره پیش فرض یا سفارشی، یک سند Word را به فرمت EPUB تبدیل کنید. با ارسال نمونه ای از [HtmlSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/) به متد [Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save/) می توانید تعدادی گزینه را مشخص کنید.

مثال کد زیر نحوه تبدیل یک سند Word به EPUB را با مشخص کردن برخی گزینه‌های ذخیره سفارشی نشان می‌دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToEPUB-ConvertDocumentToEPUB.cs" >}}

{{% alert color="primary" %}}

فایل قالب این نمونه را می توانید از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx) دانلود کنید.

{{% /alert %}}

## همچنین ببینید

- [نحوه صادرات اطلاعات رفت و برگشت هنگام ذخیره در HTML](/words/net/custom-styles-used-for-proper-aspose-words-html-aspose-words-roundtrip/)
