---
title: کار با Content Control SDT
second_title: Aspose.Words برای Python via .NET
articleTitle: کار با Content Control SDT
linktitle: کار با Content Control SDT
description: "با استفاده از پایتون می توانید معنایی تعریف شده توسط مشتری و همچنین رفتار و ظاهر آن را در یک سند جاسازی کنید."
type: docs
weight: 390
url: /fa/python-net/working-with-content-control-sdt/
timestamp: 2024-01-31-14-23-37
---

در Microsoft Word، می‌توانید با شروع با یک الگو و اضافه کردن کنترل‌های محتوا، از جمله چک باکس، جعبه متن، انتخابگر تاریخ و لیست‌های کشویی، فرم ایجاد کنید. در Aspose.Words، یک تگ سند ساختاریافته یا کنترل محتوا از هر سند بارگیری شده در Aspose.Words به عنوان یک گره [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) وارد می شود. تگ‌های سند ساختاریافته (SDT یا کنترل محتوا) امکان تعبیه معنایی تعریف شده توسط مشتری و همچنین رفتار و ظاهر آن را در یک سند می‌دهد. [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) می تواند در یک سند در مکان های زیر رخ دهد:

- سطح بلوک - در میان پاراگراف ها و جداول، به عنوان فرزند یک گره [Body](https://reference.aspose.com/words/python-net/aspose.words/body/)، [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/)، [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/)، [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/) یا [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)
- سطح ردیف - در میان ردیف‌های یک جدول، به عنوان فرزند یک گره [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/)
- سطح سلول - در میان سلول های یک ردیف جدول، به عنوان فرزند یک گره [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/)
- سطح درون خطی - در میان محتوای درون خطی داخل، به عنوان فرزند یک [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/)
- تو در داخل یک [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) دیگر

## درج کنترل های محتوا در یک سند

در این نسخه از Aspose.Words، انواع SDT یا کنترل محتوا را می توان ایجاد کرد:

- Checkbox
- DropDownList
- ComboBox
- Date
- BuildingBlockGallery
- Group
- `Picture`
- RichText
- PlainText

مثال کد زیر نحوه ایجاد کنترل محتوا از نوع چک باکس را نشان می دهد.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-CheckBoxTypeContentControl.py" >}}

مثال کد زیر نحوه ایجاد کنترل محتوا از نوع جعبه متن غنی را نشان می دهد.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-RichTextBoxContentControl.py" >}}

مثال کد زیر نحوه ایجاد کنترل محتوای جعبه ترکیبی نوع را نشان می دهد.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-ComboBoxContentControl.py" >}}

## نحوه به روز رسانی کنترل های محتوا

این بخش نحوه به روز رسانی مقادیر SDT یا کنترل محتوا را به صورت برنامه ای توضیح می دهد

مثال کد زیر نحوه تنظیم وضعیت فعلی چک باکس را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-SetCurrentStateOfCheckBox.py" >}}

مثال کد زیر نحوه تغییر کنترل های محتوا از نوع جعبه متن ساده، لیست کشویی و تصویر را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-ModifyContentControls.py" >}}

{{% alert color="primary" %}}

فایل نمونه این نمونه ها را می توانید از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Structured%20document%20tags.docx) دانلود کنید.

{{% /alert %}}

## اتصال کنترل محتوا به قطعات XML سفارشی

می‌توانید کنترل‌های محتوا را با داده‌های XML (*بخش XML سفارشی*) در اسناد Word متصل کنید.

مثال کد زیر نحوه اتصال کنترل محتوا به قطعات XML سفارشی را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-BindSDTtoCustomXmlPart.py" >}}

## XMLMapping محدوده تگ سند ساختاریافته

می‌توانید نگاشت این محدوده تگ سند ساختاریافته به داده‌های XML را در بخش XML سفارشی سند فعلی با استفاده از ویژگی [StructuredDocumentTagRangeStart.xml_mapping](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttagrangestart/xml_mapping/) دریافت کنید. با این حال، روش [set_mapping](https://reference.aspose.com/words/python-net/aspose.words.markup/xmlmapping/set_mapping/) می تواند برای نگاشت محدوده تگ سند ساختاریافته به داده های XML استفاده شود.

مثال کد زیر نحوه تنظیم نگاشت XML را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-StructuredDocumentTagRangeStartXmlMapping.py" >}}

## محتویات یک کنترل محتوا را پاک کنید

می توانید محتویات یک کنترل محتوا را با نمایش مکان نگهدار پاک کنید. روش [StructuredDocumentTag.clear](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/clear/) محتویات این تگ سند ساختاریافته را پاک می کند و در صورت تعریف یک مکان نگهدار نمایش می دهد. با این حال، پاک کردن محتوای یک کنترل محتوا در صورتی که دارای بازبینی باشد، امکان پذیر نیست. اگر یک کنترل محتوا فاقد مکان‌نما باشد، پنج فاصله مانند MS Word درج می‌شود (به جز بخش‌های تکراری، موارد تکراری بخش، گروه‌ها، چک باکس‌ها، نقل‌قول‌ها). اگر یک کنترل محتوا به XML سفارشی نگاشت شود، گره XML ارجاع شده پاک می شود.

مثال کد زیر نحوه پاک کردن محتوای کنترل محتوا را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-ClearContentsControl.py" >}}

## تغییر رنگ پس زمینه و حاشیه کنترل محتوا

ویژگی [StructuredDocumentTag.color](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/color/) به شما امکان می دهد رنگ کنترل محتوا را دریافت یا تنظیم کنید. رنگ در دو موقعیت بر کنترل محتوا تأثیر می گذارد:

1. MS Word پس‌زمینه کنترل محتوا را هنگامی که ماوس روی کنترل محتوا حرکت می‌کند، برجسته می‌کند. این به شناسایی کنترل محتوا کمک می کند. رنگ هایلایت کمی "نرم تر" از *color* است. برای مثال، زمانی که *color* قرمز است، MS Word پس‌زمینه را با رنگ صورتی برجسته می‌کند.
2. وقتی با کنترل محتوا تعامل دارید (ویرایش، انتخاب و غیره)، مرز کنترل محتوا با *color* رنگ می شود.

مثال کد زیر نحوه تغییر رنگ کنترل محتوا را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-SetContentControlColor.py" >}}

## نحوه تنظیم سبک برای قالب بندی متن تایپ شده در کنترل محتوا

اگر می خواهید سبک کنترل محتوا را تنظیم کنید، می توانید از ویژگی های [StructuredDocumentTag.style](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/style/) یا [StructuredDocumentTag.style_name](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/style_name/) استفاده کنید. هنگامی که متن را در کنترل محتوا در سند خروجی تایپ می کنید، متن تایپ شده دارای سبک "نقل قول" خواهد بود.

{{% alert color="primary" %}}

توجه داشته باشید که فقط سبک های Linked و Character را می توان برای کنترل محتوا اعمال کرد. یک استثنا ("نمی توان این سبک را در SDT اعمال کرد") زمانی ایجاد می شود که سبکی وجود دارد اما پیوند داده نشده است یا سبک کاراکتری اعمال می شود.

{{% /alert %}}

مثال کد زیر نحوه تنظیم سبک کنترل محتوا را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-SetContentControlStyle.py" >}}

## کار با Repeating Section Content Control

کنترل محتوای بخش تکرار شونده امکان تکرار محتوای موجود در آن را فراهم می کند. با استفاده از Aspose.Words می‌توان گره‌های تگ سند ساختاریافته از بخش تکرارکننده و انواع آیتم‌های بخش تکرارشونده ایجاد کرد و برای این منظور، نوع شمارش [SdtType](https://reference.aspose.com/words/python-net/aspose.words.markup/sdttype/) ویژگی [REPEATING_SECTION_ITEM](https://reference.aspose.com/words/python-net/aspose.words.markup/sdttype/#repeating_section_item) را ارائه می‌کند.

مثال کد زیر نحوه اتصال یک کنترل محتوای بخش تکرار شونده را به جدول نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-CreatingTableRepeatingSectionMappedToCustomXmlPart.py" >}}
