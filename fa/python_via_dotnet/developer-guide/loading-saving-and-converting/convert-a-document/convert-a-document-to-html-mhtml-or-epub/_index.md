---
title: تبدیل سند به HTML
second_title: Aspose.Words برای Python via .NET
articleTitle: یک سند را به HTML، MHTML یا EPUB تبدیل کنید
linktitle: یک سند را به HTML، MHTML یا EPUB تبدیل کنید
description: "یک سند را تقریباً از هر فرمتی به HTML یا MHTML و همچنین به فرمت EPUB با استفاده از Python تبدیل کنید. همچنین می توانید گزینه های ذخیره را برای مدیریت سند خروجی مشخص کنید."
type: docs
weight: 20
url: /fa/python-net/convert-a-document-to-html-mhtml-or-epub/
---

اسناد با فرمت‌های جریان طرح‌بندی HTML و MHTML نیز بسیار محبوب هستند و می‌توانند در هر پلتفرم وب مورد استفاده قرار گیرند. به همین دلیل، تبدیل اسناد به HTML و MHTML یکی از ویژگی های مهم Aspose.Words است.

EPUB (مخفف "انتشارات الکترونیک") یک قالب مبتنی بر HTML است که معمولاً برای توزیع الکترونیکی کتاب استفاده می شود. این فرمت به طور کامل در Aspose.Words برای صادرات کتاب های الکترونیکی که با اکثر دستگاه های مطالعه سازگار است پشتیبانی می شود.

## تبدیل یک سند

برای تبدیل ساده به HTML، MHTML یا EPUB، یکی از روش‌های [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) اضافه بار استفاده می‌شود. شما می توانید سند را در یک فایل یا جریان ذخیره کنید و به صراحت فرمت ذخیره سند خروجی را تنظیم کنید یا آن را از پسوند نام فایل تعریف کنید.

مثال زیر نحوه تبدیل DOCX به HTML را با تعیین فرمت ذخیره نشان می دهد:

{{< highlight python >}}
# Load the document from disk.
doc = aw.Document(dataDir + "Test File.docx")

# Save the document into HTML.
doc.save(dataDir + "Document", aw.SaveFormat.HTML)
{{< /highlight >}}

برای تبدیل یک سند به MHTML یا EPUB، به ترتیب از [SaveFormat.MHTML](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#mhtml) یا [SaveFormat.EPUB](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#epub) استفاده کنید.

## تبدیل یک سند با اطلاعات رفت و برگشت

فرمت HTML بسیاری از ویژگی‌های Microsoft Word را پشتیبانی نمی‌کند و اگر نیاز به بازیابی مدل سند تا حد امکان به نسخه اصلی داشته باشیم، باید اطلاعات اضافی را در فایل HTML ذخیره کنیم. به چنین اطلاعاتی "اطلاعات رفت و برگشت" نیز می گویند. برای این منظور، Aspose.Words امکان صادرات اطلاعات رفت و برگشت را هنگام ذخیره به HTML، MHTML یا EPUB با استفاده از ویژگی **export_roundtrip_information** فراهم می کند. ذخیره اطلاعات رفت و برگشت اجازه می دهد تا ویژگی های سند مانند برگه ها، نظرات، سرصفحه ها و پاورقی ها را در حین بارگیری اسناد از فرمت های فهرست شده در یک شی [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) بازیابی کنید.

مقدار پیش فرض *True* برای HTML و *False* برای MHTML و EPUB است:

- هنگام *True*، اطلاعات رفت و برگشت به صورت - aw - * ویژگی های CSS عناصر HTML مربوطه صادر می شود
- وقتی *False*، هیچ اطلاعات رفت و برگشتی برای خروجی در فایل های تولید شده وجود ندارد

مثال کد زیر نحوه صادرات اطلاعات رفت و برگشت را هنگام تبدیل یک سند از DOCX به HTML نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportRoundtripInformation.py" >}}

{{% alert color="primary" %}}

فایل قالب این نمونه را می توانید از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx) دانلود کنید.

{{% /alert %}}

## هنگام تبدیل به HTML گزینه های ذخیره را مشخص کنید

Aspose.Words اجازه می دهد تا با استفاده از گزینه های ذخیره پیش فرض یا سفارشی، یک سند Word را به HTML تبدیل کنید. چند نمونه از گزینه های ذخیره سفارشی در زیر توضیح داده شده است.

### یک پوشه برای ذخیره منابع مشخص کنید

با استفاده از Aspose.Words می‌توانیم یک پوشه فیزیکی را مشخص کنیم که در آن همه منابع، مانند تصاویر، فونت‌ها و CSS خارجی، هنگام تبدیل سند به HTML ذخیره شوند. به طور پیش فرض، این یک رشته خالی است.

مشخص کردن ویژگی [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) ساده‌ترین راه برای تنظیم پوشه‌ای است که تمام منابع باید در آن نوشته شوند. ما می‌توانیم از ویژگی‌های جداگانه استفاده کنیم، مانند [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/) که فونت‌ها را در پوشه مشخص‌شده ذخیره می‌کند و [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/) که تصاویر را در یک پوشه مشخص ذخیره می‌کند. هنگامی که یک مسیر نسبی مشخص می شود، [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/) و [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/) به پوشه ای که مجموعه کد در آن قرار دارد، [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) و [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/) به پوشه خروجی که سند HTML در آن قرار دارد اشاره دارد.

در این مثال، [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) مسیر نسبی را مشخص می کند. این مسیر به پوشه خروجی اشاره دارد که سند HTML در آن ذخیره می شود. مقدار ویژگی [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) برای ایجاد URL برای همه منابع استفاده می شود.

مثال کد زیر نحوه کار با این ویژگی ها را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportResources.py" >}}

با استفاده از ویژگی [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/)، می‌توانیم نام پوشه‌ای را که برای ساخت URI از همه منابع نوشته شده در یک سند HTML استفاده می‌شود، مشخص کنیم. این ساده ترین راه برای تعیین نحوه تولید URI برای همه فایل های منبع است. همین اطلاعات را می توان برای تصاویر و فونت ها به طور جداگانه از طریق ویژگی های [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder_alias/) و [fonts_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder_alias/) مشخص کرد.

با این حال، هیچ ویژگی فردی برای CSS وجود ندارد. رفتار خصوصیات [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/)، [fonts_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder_alias/)، [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/)، [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder_alias/) و [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/) تغییر نکرده است. توجه داشته باشید که ویژگی [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/) هم برای تعیین نام پوشه و هم برای تعیین نام فایل استفاده می شود.

- [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) نسبت به پوشه های مشخص شده از طریق [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/)، [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/) و [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/) اولویت کمتری دارد. اگر پوشه مشخص شده در [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) وجود نداشته باشد، به طور خودکار ایجاد می شود.
- [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) اولویت کمتری نسبت به [fonts_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder_alias/) و [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder_alias/) دارد. اگر [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) خالی باشد، از مقدار ویژگی [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) برای ایجاد URI های منبع استفاده می شود. اگر [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) روی "." تنظیم شده باشد. (نقطه)، URI های منبع فقط حاوی نام فایل ها بدون تعیین مسیر هستند.

### Export Base64 Encoding Fonts Resources

Aspose.Words توانایی تعیین اینکه آیا منابع فونت باید در HTML در کدهای Base64 تعبیه شود یا خیر فراهم می کند. برای انجام این کار، از ویژگی [export_fonts_as_base64](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/export_fonts_as_base64/) استفاده کنید - این یک پسوند ویژگی [export_font_resources](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/export_font_resources/) است. به طور پیش فرض، مقدار آن *False* است و فونت ها در فایل های جداگانه نوشته می شوند. اما اگر این گزینه روی *True* تنظیم شود، فونت ها در CSS سند در کدگذاری Base64 تعبیه می شوند. ویژگی [export_fonts_as_base64](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/export_fonts_as_base64/) فقط بر فرمت HTML تأثیر می گذارد و بر EPUB و MHTML تأثیر نمی گذارد.

مثال کد زیر نحوه صادرات فونت‌های کدگذاری شده با Base64 را به HTML نشان می‌دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportFontsAsBase64.py" >}}

## Save Options را هنگام تبدیل به EPUB مشخص کنید

Aspose.Words اجازه می دهد تا با استفاده از گزینه های ذخیره پیش فرض یا سفارشی، یک سند Word را به فرمت EPUB تبدیل کنید. با ارسال نمونه ای از [HtmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/) به متد [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) می توانید تعدادی گزینه را مشخص کنید.

مثال کد زیر نحوه تبدیل یک سند Word به EPUB را با مشخص کردن برخی گزینه‌های ذخیره سفارشی نشان می‌دهد:

{{< highlight python >}}
# Load the document from disk.
doc = aw.Document(docs_base.my_dir + "Rendering.docx")

# Create a new instance of HtmlSaveOptions. This object allows us to set options that control
# How the output document is saved.
saveOptions = aw.saving.HtmlSaveOptions()

# Specify the desired encoding.
saveOptions.encoding = "utf-8"

# Specify at what elements to split the internal HTML at. This creates a new HTML within the EPUB 
# which allows you to limit the size of each HTML part. This is useful for readers which cannot read 
# HTML files greater than a certain size e.g 300kb.
saveOptions.document_split_criteria = aw.saving.DocumentSplitCriteria.HEADING_PARAGRAPH

# Specify that we want to export document properties.
saveOptions.export_document_properties = True

# Specify that we want to save in EPUB format.
saveOptions.save_format = aw.SaveFormat.EPUB

# Export the document as an EPUB file.
doc.save(docs_base.artifacts_dir + "Document.EpubConversion_out.epub", saveOptions)
{{< /highlight >}}

{{% alert color="primary" %}}

فایل قالب این نمونه را می توانید از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx) دانلود کنید.

{{% /alert %}}

