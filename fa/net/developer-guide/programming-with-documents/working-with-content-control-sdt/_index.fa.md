---
title: کار با Content Control SDT
second_title: Aspose.Words برای .NET
articleTitle: کار با Content Control SDT
linktitle: کار با Content Control SDT
description: "مدیریت محتوای سند پیشرفته، نحوه ایجاد و دستکاری کنترل های محتوا (برچسب های سند ساختاریافته) با استفاده از C#."
type: docs
weight: 390
url: /fa/net/working-with-content-control-sdt/
---

در Microsoft Word، می‌توانید با شروع با یک الگو و اضافه کردن کنترل‌های محتوا، از جمله چک باکس، جعبه متن، انتخابگر تاریخ و لیست‌های کشویی، فرم ایجاد کنید. در Aspose.Words، یک تگ سند ساختاریافته یا کنترل محتوا از هر سندی که در Aspose.Words بارگذاری شده است، به عنوان یک گره StructuredDocumentTag وارد می شود. تگ‌های سند ساختاریافته (SDT یا کنترل محتوا) امکان تعبیه معنایی تعریف شده توسط مشتری و همچنین رفتار و ظاهر آن را در یک سند می‌دهد.

StructuredDocumentTag می تواند در یک سند در مکان های زیر رخ دهد:

- سطح بلوک - در میان پاراگراف ها و جداول، به عنوان فرزند یک Body، HeaderFooter، Comment، Footnote یا یک گره Shape
- سطح ردیف - در میان ردیف‌های یک جدول، به عنوان فرزند یک گره جدول
- سطح سلول - در میان سلول های یک ردیف جدول، به عنوان فرزند یک گره ردیف
- سطح درون خطی - در میان محتوای درون خطی داخل، به عنوان فرزند یک پاراگراف
- تو در داخل StructuredDocumentTag دیگر

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

مثال کد زیر نحوه ایجاد کنترل محتوا از نوع چک باکس را نشان می دهد:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-CheckBoxTypeContentControl-CheckBoxTypeContentControl.cs" >}}

مثال کد زیر نحوه ایجاد کنترل محتوا از نوع جعبه متن غنی را نشان می دهد:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-RichTextBoxContentControl-RichTextBoxContentControl.cs" >}}

مثال کد زیر نحوه ایجاد کنترل محتوای جعبه ترکیبی نوع را نشان می دهد:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-ComboBoxContentControl-ComboBoxContentControl.cs" >}}

## نحوه به روز رسانی کنترل های محتوا

این بخش نحوه به روز رسانی مقادیر SDT یا کنترل محتوا را به صورت برنامه ای توضیح می دهد.

مثال کد زیر نحوه تنظیم وضعیت فعلی چک باکس را نشان می دهد:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-UpdateContentControls-SetCurrentStateOfCheckBox.cs" >}}

مثال کد زیر نحوه تغییر کنترل‌های محتوا از نوع جعبه متن ساده، لیست کشویی و تصویر را نشان می‌دهد:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-UpdateContentControls-ModifyContentControls.cs" >}}

## اتصال کنترل محتوا به قطعات XML سفارشی

می‌توانید کنترل‌های محتوا را با داده‌های XML (*بخش XML سفارشی*) در اسناد Word متصل کنید.

مثال کد زیر نحوه اتصال کنترل محتوا به قطعات XML سفارشی را نشان می دهد:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-BindSDTtoCustomXmlPart.cs" >}}

## XMLMapping محدوده تگ سند ساختاریافته

می‌توانید نگاشت این محدوده تگ سند ساختاریافته را به داده‌های XML در بخش XML سفارشی سند فعلی با استفاده از **ویژگی StructuredDocumentTagRangeStart.XmlMapping** دریافت کنید. با این حال، روش [SetMapping](https://reference.aspose.com/words/net/aspose.words.markup/xmlmapping/setmapping/) می تواند برای نگاشت محدوده تگ سند ساختاریافته به داده های XML استفاده شود.

مثال کد زیر نحوه تنظیم نگاشت XML را نشان می دهد:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-StructuredDocumentTagRangeStartXmlMapping.cs" >}}

## محتویات یک کنترل محتوا را پاک کنید

می توانید محتویات یک کنترل محتوا را با نمایش مکان نگهدار پاک کنید. روش **StructuredDocumentTag.Clear** محتویات این تگ سند ساختاریافته را پاک می کند و در صورت تعریف، یک مکان نگهدار نمایش می دهد. با این حال، پاک کردن محتوای یک کنترل محتوا در صورتی که دارای بازبینی باشد، امکان پذیر نیست. اگر یک کنترل محتوا فاقد مکان‌نما باشد، پنج فاصله مانند Microsoft Word درج می‌شود (به جز تکرار بخش‌ها، موارد تکراری بخش، گروه‌ها، چک باکس‌ها، نقل‌قول‌ها). اگر یک کنترل محتوا به XML سفارشی نگاشت شود، گره XML ارجاع شده پاک می شود.

مثال کد زیر نحوه پاک کردن محتوای کنترل محتوا را نشان می دهد:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-ClearContentsControl.cs" >}}

## تغییر رنگ پس زمینه و حاشیه کنترل محتوا

ویژگی `StructuredDocumentTag.Color` به شما امکان می دهد رنگ کنترل محتوا را دریافت یا تنظیم کنید. رنگ در دو موقعیت بر کنترل محتوا تأثیر می گذارد:

1. MS Word پس‌زمینه کنترل محتوا را هنگامی که ماوس روی کنترل محتوا حرکت می‌کند، برجسته می‌کند. این به شناسایی کنترل محتوا کمک می کند. رنگ هایلایت کمی "نرم تر" از *Color* است. برای مثال، زمانی که *Color* قرمز است، MS Word پس‌زمینه را با رنگ صورتی برجسته می‌کند.
2. وقتی با کنترل محتوا تعامل دارید (ویرایش، انتخاب و غیره)، مرز کنترل محتوا با *Color* رنگ می شود.

مثال کد زیر نحوه تغییر رنگ کنترل محتوا را نشان می دهد:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-SetContentControlColor.cs" >}}

## نحوه تنظیم سبک برای قالب بندی متن تایپ شده در کنترل محتوا

اگر می خواهید سبک کنترل محتوا را تنظیم کنید، می توانید از ویژگی های `StructuredDocumentTag.Style` یا `StructuredDocumentTag.StyleName` استفاده کنید. هنگامی که متن را در کنترل محتوا در سند خروجی تایپ می کنید، متن تایپ شده دارای سبک "نقل قول" خواهد بود.

{{% alert color="primary" %}}

توجه داشته باشید که فقط سبک های Linked و Character را می توان برای کنترل محتوا اعمال کرد. یک InvalidOperationException ("نمی توان این سبک را در SDT اعمال کرد") زمانی که سبکی وجود دارد که پیوند داده نشده است یا سبک کاراکتری اعمال می شود، پرتاب می شود.

{{% /alert %}}

مثال کد زیر نحوه تنظیم سبک کنترل محتوا را نشان می دهد:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-SetContentControlStyle.cs" >}}

## کار با Repeating Section Content Control

کنترل محتوای بخش تکرار شونده امکان تکرار محتوای موجود در آن را فراهم می کند. با استفاده از Aspose.Words می توان گره های تگ سند ساختاریافته از بخش تکرار کننده و انواع آیتم های بخش تکرار شونده ایجاد کرد و برای این منظور [نوع شمارش SdtType](https://reference.aspose.com/words/net/aspose.words.markup/sdttype/) ویژگی **RepeatingSectionItem** را ارائه می دهد.

مثال کد زیر نشان می دهد که چگونه یک کنترل محتوای بخش تکراری را به یک جدول متصل کنید.

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-CreatingTableRepeatingSectionMappedToCustomXmlPart.cs" >}}
