---
title: تبدیل یک سند به HTML، MHTML یا EPUB
second_title: Aspose.Words برای Java
articleTitle: تبدیل یک سند به HTML، MHTML یا EPUB
linktitle: تبدیل یک سند به HTML، MHTML یا EPUB
description: "استفاده از Aspose.Words برای Java تبدیل اسناد از Word یا هر فرمت پشتیبانی شده دیگر به HTML، MHTML یا EPUB."
type: docs
weight: 20
url: /fa/java/convert-a-document-to-html-mhtml-or-epub/
---

اسناد در فرمت های HTML و MHTML Flow-layout نیز بسیار محبوب هستند و می توانند در هر پلتفرم وب مورد استفاده قرار گیرند. به همین دلیل، تبدیل اسناد به HTML و MHTML یکی از ویژگی های مهم HTML است. Aspose.Words...

EPUB (به اختصار برای " انتشارات الکترونیکی") یک فرمت مبتنی بر HTML است که معمولا برای توزیع کتاب الکترونیکی استفاده می شود. این فرمت به طور کامل در Aspose.Words برای صادرات کتاب های الکترونیکی که با اکثر دستگاه های خواندن سازگار هستند.

## تبدیل یک سند

برای تبدیل ساده به HTML، MHTML یا EPUB، یکی از [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-int) استفاده از اضافه بار روش شما می توانید سند را به یک فایل یا جریان ذخیره کنید و به صراحت سند خروجی را تنظیم کنید یا آن را از پسوند نام فایل تعریف کنید.

مثال زیر نشان می دهد که چگونه DOCX را به HTML تبدیل کنیم و یک فرمت ذخیره سازی را مشخص کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocxToHtml.java" >}}

برای تبدیل یک سند به MHTML یا EPUB، استفاده کنید `SaveFormat.MHTML` یا `SaveFormat.EPUB` به ترتیب.

## تبدیل یک سند با اطلاعات Round-trip

فرمت HTML پشتیبانی بسیاری از Microsoft Word ویژگی ها و اگر ما نیاز به بازگرداندن یک مدل سند نزدیک به نسخه اصلی تا حد ممکن داریم، باید برخی از اطلاعات اضافی را در فایل HTML ذخیره کنیم. این اطلاعات همچنین "اطلاعات سفر" نامیده می شود. برای این منظور، Aspose.Words فراهم می کند توانایی صادرات اطلاعات دور سفر در هنگام صرفه جویی در HTML، MHTML یا EPUB با استفاده از [ExportRoundtripInformation](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportRoundtripInformation) مالکیت صرفه جویی در اطلاعات دور سفر اجازه می دهد تا بازگرداندن خواص سند مانند زبانه ها، نظرات، هدرها و عابران در طول اسناد بارگیری فرمت های ذکر شده به یک فایل لیست شده به عقب به یک **Document** جسم

ارزش پیش فرض است **true** برای HTML و **false** برای MHTML و EPUB:

- وقتی **true**, اطلاعات دور سفر به عنوان - Aw - * خواص CSS از عناصر HTML مربوطه صادر می شود
- وقتی **false**, هیچ اطلاعات دور سفر برای خروجی در فایل های تولید شده وجود ندارد

مثال کد زیر نشان می دهد که چگونه به صادرات اطلاعات دور سفر در هنگام تبدیل یک سند از DOCX به HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocumentToHtmlWithRoundtrip.java" >}}

{{% alert color="primary" %}}

شما می توانید فایل قالب این مثال را دانلود کنید. [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx

{{% /alert %}}

## گزینه های Save را هنگام تبدیل به HTML مشخص کنید

Aspose.Words اجازه می دهد یک سند Word را به HTML با استفاده از گزینه های ذخیره سازی پیش فرض یا سفارشی تبدیل کنید. چند نمونه از گزینه های ذخیره سازی سفارشی در زیر شرح داده شده است.

### یک پوشه برای صرفه جویی در منابع

استفاده از Aspose.Words ما می توانیم یک پوشه فیزیکی را مشخص کنیم که در آن تمام منابع، مانند تصاویر، فونت ها و CSS های خارجی، زمانی که یک سند به HTML تبدیل می شود، ذخیره می شوند. به طور پیش فرض، این یک رشته خالی است.

آشنایی با [ResourceFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getResourceFolder) ملک ساده ترین راه برای تنظیم پوشه است که در آن تمام منابع باید نوشته شوند. ما می توانیم از خواص فردی مانند [FontsFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getFontsFolder) که فونت ها را به پوشه مشخص و [ImagesFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getImagesFolder) که تصاویر را به یک پوشه مشخص ذخیره می کند. هنگامی که یک مسیر نسبی مشخص شود، **FontsFolder** و **ImagesFolder** به پوشه اشاره کنید که در آن مجلس کد قرار دارد. **ResourceFolder** و [CssStyleSheetFileName](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getCssStyleSheetFileName) به پوشه خروجی که در آن سند HTML قرار دارد اشاره کنید.

در این مثال، **ResourceFolder** مسیر نسبی را مشخص می کند. این مسیر به پوشه خروجی اشاره می کند که در آن سند HTML ذخیره می شود. ارزش ارزش **ResourceFolderAlias** برای ایجاد URL برای تمام منابع استفاده می شود.

مثال کد زیر نشان می دهد که چگونه با این خواص کار کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ExportResourcesUsingHtmlSaveOptions.java" >}}

استفاده از [ResourceFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getResourceFolderAlias) مالکیت، ما همچنین می توانیم نام پوشه ای را که برای ساخت URIs از تمام منابع نوشته شده در یک سند HTML استفاده می شود، مشخص کنیم. این ساده ترین راه برای مشخص کردن چگونگی تولید URI برای تمام فایل های منبع است. همان اطلاعات را می توان برای تصاویر و فونت ها به طور جداگانه از طریق [ImagesFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getImagesFolderAlias) و [FontsFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getFontsFolderAlias) به ترتیب خواص

با این حال، هیچ مالکیت فردی برای CSS وجود ندارد. رفتار **FontsFolder**, **FontsFolderAlias**, **ImagesFolder**, **ImagesFolderAlias** و **CssStyleSheetFileName** خواص تغییر نمی کند. توجه داشته باشید که **CssStyleSheetFileName** اموال هر دو برای مشخص کردن نام پوشه و نام فایل استفاده می شود.

- **ResourceFolder** اولویت کمتری نسبت به پوشه های مشخص شده از طریق **FontsFolder**, **ImagesFolder**, و **CssStyleSheetFileName**... اگر پوشه مشخص شده در **ResourceFolder** وجود ندارد، به طور خودکار ایجاد خواهد شد.
- **ResourceFolderAlias** اولویت پایین تری نسبت به **FontsFolderAlias** و **ImagesFolderAlias**... اگر **ResourceFolderAlias** خالی است، ارزش **ResourceFolder** اموال برای ایجاد URI منابع استفاده می شود. اگر **ResourceFolderAlias** قرار است "dot"، منبع URI تنها شامل نام فایل بدون مشخص کردن یک مسیر باشد.

### صادرات Base64 Encode Fonts

Aspose.Words توانایی تعیین اینکه آیا منابع فونت باید در HTML در رمزگذاری Base64 جاسازی شوند را فراهم می کند. برای انجام این کار، استفاده از [ExportFontsAsBase64](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportFontsAsBase64) اموال - این یک گسترش از [ExportFontResources](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportFontResources) مالکیت به طور پیش فرض، ارزش آن است. **false**, فونت ها در فایل های جداگانه نوشته شده اند. اما اگر این گزینه تنظیم شود **true**, فونت ها در CSS سند در رمزگذاری Base64 جاسازی خواهند شد. The The The The The The **صادرات به عنوانBase64** مالکیت فقط بر فرمت HTML تأثیر می گذارد و بر EPUB و MHTML تأثیر نمی گذارد.

مثال کد زیر نشان می دهد که چگونه فونت های رمزگذاری شده Base64 را به HTML صادر کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ExportFontsAsBase64.java" >}}

## گزینه های Save را هنگام تبدیل به EPUB مشخص کنید

Aspose.Words اجازه می دهد تا یک سند Word را به فرمت EPUB با استفاده از گزینه های ذخیره سازی پیش فرض یا سفارشی تبدیل کنید. شما می توانید تعدادی از گزینه ها را با گذشت یک مثال مشخص کنید. [HtmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/) سوگند به [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-com.aspose.words.SaveOptions) روش

مثال کد زیر نشان می دهد که چگونه یک سند Word را به EPUB تبدیل کنیم و برخی از گزینه های ذخیره سازی سفارشی را مشخص کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocumentToEPUB.java" >}}

{{% alert color="primary" %}}

شما می توانید فایل قالب این مثال را دانلود کنید. [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/com/aspose/words/examples/loading_saving/ExportResourcesUsingHtmlSaveOptions/Document.EpubConversion.doc)...

{{% /alert %}}

## همچنین ببینید

- [دانلود بازی Harvest Punch Punch Punch Punch Punch Punch Punch](/words/java/custom-styles-used-for-proper-aspose-words-html-roundtrip/)
