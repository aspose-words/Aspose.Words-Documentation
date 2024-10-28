---
title: تبدیل یک سند به HTML، MHTML یا EPUB
second_title: Aspose.Words برای C++
articleTitle: تبدیل یک سند به HTML، MHTML یا EPUB
linktitle: تبدیل یک سند به HTML، MHTML یا EPUB
description: "تبدیل یک سند از تقریبا هر فرمت به HTML یا MHTML و همچنین به EPUB فرمت با استفاده از C++. همچنین می توانید گزینه های ذخیره برای مدیریت سند خروجی را مشخص کنید."
type: docs
weight: 20
url: /fa/cpp/convert-a-document-to-html-mhtml-or-epub/
---

اسناد در فرمت های HTML و MHTML flow-layout نیز بسیار محبوب هستند و می توانند در هر پلتفرم وب استفاده شوند. به همین دلیل، تبدیل اسناد به HTML و MHTML یک ویژگی مهم Aspose.Words است.

EPUB (اختصار "نشر الکترونیکی") یک فرمت مبتنی بر HTML است که معمولا برای توزیع کتاب الکترونیکی استفاده می شود. این فرمت به طور کامل در Aspose.Words برای صادرات کتاب های الکترونیکی که با اکثر دستگاه های خواندن سازگار هستند پشتیبانی می شود.

## تبدیل یک سند

برای تبدیل ساده به HTML، MHTML، یا EPUB، یکی از روش های [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) اضافه بار استفاده می شود. شما می توانید سند را در یک فایل یا جریان ذخیره کنید و به صراحت فرمت ذخیره سند خروجی را تنظیم کنید یا آن را از پسوند نام فایل تعریف کنید.

مثال زیر نشان می دهد که چگونه DOCX را به HTML با مشخص کردن یک فرمت ذخیره تبدیل کنیم:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ConvertDocxToHtml.cpp" >}}

برای تبدیل یک سند به MHTML یا EPUB، به ترتیب از `SaveFormat.Mhtml` یا `SaveFormat.Epub` استفاده کنید.

## تبدیل سند با اطلاعات رفت و برگشت

فرمت HTML از بسیاری از ویژگی های Microsoft Word پشتیبانی نمی کند و اگر ما نیاز به بازگرداندن یک مدل سند به عنوان نزدیک به اصلی به عنوان ممکن است، ما نیاز به ذخیره برخی از اطلاعات اضافی در فایل HTML. چنین اطلاعاتی " اطلاعات رفت و برگشت "نیز نامیده می شود. برای این منظور، Aspose.Words توانایی صادرات اطلاعات سفر به دور را هنگام صرفه جویی در HTML، MHTML یا EPUB با استفاده از ویژگی [ExportRoundtripInformation](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_exportroundtripinformation/) فراهم می کند. ذخیره اطلاعات سفر به دور اجازه می دهد تا ویژگی های سند مانند برگه ها، نظرات، سرصفحه ها و پای صفحه ها را در طول بارگذاری اسناد فرمت های ذکر شده به یک شیء **Document** بازگرداند.

مقدار پیش فرض **true** برای HTML و **false** برای MHTML و EPUBاست:

- هنگامی که **true**، اطلاعات سفر به دور به عنوان-aw - * CSS خواص عناصر HTML مربوطه صادر می شود
- وقتی **false**، هیچ اطلاعات رفت و برگشت برای خروجی به فایل های تولید شده وجود ندارد

مثال کد زیر نشان می دهد که چگونه اطلاعات سفر به دور را هنگام تبدیل یک سند از DOCX به HTMLصادر کنید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ConvertDocumentToHtmlWithRoundtrip.cpp" >}}

{{% alert color="primary" %}}

شما می توانید فایل قالب این مثال را از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## گزینه های ذخیره را هنگام تبدیل به HTMLمشخص کنید

Aspose.Words اجازه تبدیل یک سند ورد به HTML با استفاده از گزینه های پیش فرض یا ذخیره سفارشی را می دهد. چند نمونه از گزینه های ذخیره سفارشی در زیر شرح داده شده است.

### یک پوشه برای ذخیره منابع مشخص کنید

با استفاده از Aspose.Words می توانیم یک پوشه فیزیکی را مشخص کنیم که در آن تمام منابع، مانند تصاویر، فونت ها و CSS خارجی، هنگامی که یک سند به HTML تبدیل می شود، ذخیره می شوند. به طور پیش فرض، این یک رشته خالی است.

مشخص کردن ویژگی [ResourceFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_resourcefolder/) ساده ترین راه برای تنظیم پوشه ای است که تمام منابع باید نوشته شوند. ما می توانیم از ویژگی های فردی استفاده کنیم، مانند [FontsFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_fontsfolder/) که فونت ها را به پوشه مشخص شده ذخیره می کند و [ImagesFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_imagesfolder/) که تصاویر را به یک پوشه مشخص شده ذخیره می کند. هنگامی که یک مسیر نسبی مشخص می شود، **FontsFolder** و **ImagesFolder** به پوشه ای که مجموعه کد در آن قرار دارد، **ResourceFolder** و [CssStyleSheetFileName](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_cssstylesheetfilename/) به پوشه خروجی که سند HTML در آن قرار دارد مراجعه کنید.

در این مثال، **ResourceFolder** مسیر نسبی را مشخص می کند. این مسیر به پوشه خروجی اشاره دارد که در آن سند HTML ذخیره می شود. ارزش ویژگی **ResourceFolderAlias** برای ایجاد URLs برای همه منابع استفاده می شود.

مثال کد زیر نشان می دهد که چگونه با این ویژگی ها کار کنید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ExportResourcesUsingHtmlSaveOptions.cpp" >}}

با استفاده از ویژگی [ResourceFolderAlias](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_resourcefolderalias/)، ما همچنین می توانیم نام پوشه مورد استفاده برای ساخت URIs از تمام منابع نوشته شده در یک سند HTML را مشخص کنیم. این ساده ترین راه برای مشخص کردن چگونگی تولید URIs برای تمام فایل های منابع است. همان اطلاعات را می توان برای تصاویر و فونت ها به طور جداگانه از طریق ویژگی های [ImagesFolderAlias](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_imagesfolderalias/) و [FontsFolderAlias](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_fontsfolderalias/) مشخص کرد.

با این حال، هیچ ویژگی فردی برای CSS وجود ندارد. رفتار از **FontsFolder**, **FontsFolderAlias**, **ImagesFolder**, **ImagesFolderAlias** و ویژگی های **CssStyleSheetFileName** تغییر نمی کنند. توجه داشته باشید که ویژگی **CssStyleSheetFileName** برای مشخص کردن نام پوشه و نام فایل استفاده می شود.

- **ResourceFolder** اولویت کمتری نسبت به پوشه های مشخص شده از طریق **FontsFolder**، **ImagesFolder** و **CssStyleSheetFileName** دارد. اگر پوشه مشخص شده در **ResourceFolder** وجود نداشته باشد، به طور خودکار ایجاد می شود.
- **ResourceFolderAlias** اولویت کمتری نسبت به **FontsFolderAlias** و **ImagesFolderAlias** دارد. اگر **ResourceFolderAlias** خالی باشد، ارزش ویژگی **ResourceFolder** برای ایجاد منبع URIs استفاده خواهد شد. اگر **ResourceFolderAlias** به "." (نقطه) تنظیم شود، منبع URIs فقط شامل نام فایل بدون مشخص کردن یک مسیر خواهد بود.

### صادرات Base64 منابع کدگذاری فونت

Aspose.Words توانایی مشخص کردن اینکه آیا منابع فونت باید در HTML در کدگذاری های Base64 جاسازی شوند را فراهم می کند. برای انجام این کار، از ویژگی [ExportFontsAsBase64](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_exportfontsasbase64/) استفاده کنید-این یک تمدید از ویژگی [ExportFontResources](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_exportfontresources/) است. به طور پیش فرض، مقدار آن **false** است و فونت ها در فایل های جداگانه نوشته می شوند. اما اگر این گزینه به **true** تنظیم شود، فونت ها در CSS سند در کدگذاری Base64 جاسازی می شوند. ویژگی **ExportFontsAsBase64** فقط بر فرمت HTML تاثیر می گذارد و بر EPUB و MHTML تاثیر نمی گذارد.

مثال کد زیر نشان می دهد که چگونه فونت های کدگذاری شده Base64 را به HTMLصادر کنیم:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ExportFontsAsBase64.cpp" >}}

## گزینه های ذخیره را هنگام تبدیل به EPUBمشخص کنید

Aspose.Words اجازه می دهد تا یک سند ورد را با استفاده از گزینه های پیش فرض یا ذخیره سفارشی به فرمت EPUB تبدیل کند. شما می توانید تعدادی از گزینه ها را با گذراندن یک نمونه از [HtmlSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/) به روش `Save` مشخص کنید.

مثال کد زیر نشان می دهد که چگونه یک سند ورد را به EPUB با مشخص کردن برخی از گزینه های ذخیره سفارشی تبدیل کنیم:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToEPUB-ConvertDocumentToEPUB.cpp" >}}

{{% alert color="primary" %}}

شما می توانید فایل قالب این مثال را از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}
