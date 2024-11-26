---
title: کار با کنترل محتوا SDT در Java
second_title: Aspose.Words برای Java
articleTitle: کار با کنترل محتوا SDT
linktitle: کار با کنترل محتوا SDT
type: docs
description: "مدیریت محتوای اسناد پیشرفته، نحوه ایجاد و دستکاری کنترل محتوا (تگ های اسناد ساختاری) با استفاده از Java."
weight: 390
url: /fa/java/working-with-content-control-sdt/
timestamp: 2024-01-31-14-23-37
---

در Microsoft Word، شما می توانید یک فرم را با شروع با یک قالب و اضافه کردن کنترل محتوا، از جمله checkboxes، جعبه های متن، انتخاب کننده های تاریخ و لیست های کشویی ایجاد کنید. در Aspose.Words، یک برچسب سند ساختار یافته یا کنترل محتوا از هر سند بارگذاری شده در Aspose.Words به عنوان یک گره StructuredDocumentTag وارد می شود. برچسب های سند ساختاری (SDT یا کنترل محتوا) اجازه می دهد تا معناشناسی تعریف شده توسط مشتری و همچنین رفتار و ظاهر آن را در یک سند جاسازی کند.

StructuredDocumentTag می تواند در یک سند در مکان های زیر رخ دهد:

- سطح بلوک در میان پاراگراف ها و جداول، به عنوان یک کودک از یک بدن، HeaderFooter، نظر، یادداشت زیر یا یک گره شکل.
- سطح ردیف-در میان ردیف ها در یک جدول، به عنوان یک کودک از یک گره جدول.
- سطح سلول-در میان سلول ها در یک ردیف جدول، به عنوان یک کودک از یک گره ردیف.
- سطح خطی-در میان محتوای خطی در داخل، به عنوان یک کودک از یک پاراگراف.
- در داخل یکی دیگر از StructuredDocumentTag.

## وارد کردن کنترل محتوا در یک سند

در این نسخه از Aspose.Words، انواع زیر از SDT یا کنترل محتوا می تواند ایجاد شود:

- Checkbox
- DropDownList
- ComboBox
- تاریخ
- BuildingBlockGallery
- گروه
- `Picture`
- RichText
- PlainText

مثال کد زیر نشان می دهد که چگونه کنترل محتوا نوع checkboxرا ایجاد کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CheckBoxTypeContentControl-CheckBoxTypeContentControl.java" >}}

مثال کد زیر نشان می دهد که چگونه کنترل محتوا از نوع rich text box را ایجاد کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-RichTextBoxContentControl-RichTextBoxContentControl.java" >}}

مثال کد زیر نشان می دهد که چگونه کنترل محتوا از نوع جعبه کامبو ایجاد کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ComboBoxContentControl-ComboBoxContentControl.java" >}}

## چگونه کنترل محتوا را به روز کنیم

این بخش توضیح می دهد که چگونه مقادیر SDT یا کنترل محتوا را به صورت برنامه ریزی شده به روز کنیم.

مثال کد زیر نشان می دهد که چگونه وضعیت فعلی checkboxرا تنظیم کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SetCurrentStateOfCheckBox-SetCurrentStateOfCheckBox.java" >}}

مثال کد زیر نشان می دهد که چگونه کنترل محتوای نوع جعبه متن ساده، لیست کشویی و تصویر را تغییر دهید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ModifyContentControls-ModifyContentControls.java" >}}

{{% alert color="primary" %}}

شما می توانید فایل نمونه این نمونه ها را از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Structured%20document%20tags.docx).

{{% /alert %}}

## اتصال کنترل محتوا به قطعات سفارشی XML

شما می توانید کنترل محتوا را با XML داده (*custom XML part*) در اسناد ورد متصل کنید.

مثال کد زیر نشان می دهد که چگونه کنترل محتوا را به قطعات سفارشی XML متصل کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-BindingContentControlwithXML-BindingContentControlwithXML.java" >}}

## محتوای واضح یک کنترل محتوا

شما می توانید محتویات یک کنترل محتوا را با نمایش یک جای نگهدارنده پاک کنید. روش **StructuredDocumentTag.clear()** محتویات این برچسب سند ساختاری را پاک می کند و در صورت تعریف یک جای نگهدارنده را نمایش می دهد. با این حال، پاک کردن محتویات یک کنترل محتوا در صورت تجدید نظر امکان پذیر نیست. اگر کنترل محتوا هیچ جای نگهدارنده ای نداشته باشد، پنج فضای مانند کلمه MS وارد می شود (به جز تکرار بخش ها، تکرار بخش ها، گروه ها، جعبه های چک، نقل قول ها). اگر یک کنترل محتوا به custom XML نقشه برداری شود، گره XML مرجع پاک می شود.

مثال کد زیر نشان می دهد که چگونه محتوای کنترل محتوا را پاک کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ClearContentsControl-ClearContentsControl.java" >}}

## تغییر کنترل محتوا پس زمینه و رنگ های مرزی

ویژگی `StructuredDocumentTag.Color` به شما اجازه می دهد رنگ کنترل محتوا را بدست آورید یا تنظیم کنید. رنگ بر کنترل محتوا در دو حالت تاثیر می گذارد:

1. MS Word پس زمینه کنترل محتوا را هنگام حرکت ماوس بر روی کنترل محتوا برجسته می کند. این به شناسایی کنترل محتوا کمک می کند. رنگ برجسته کردن کمی "نرم تر" از *Color* است. به عنوان مثال، MS کلمه پس زمینه را با رنگ صورتی برجسته می کند، زمانی که *Color* قرمز است.
2. وقتی با کنترل محتوا تعامل می کنید (تدوین، انتخاب و غیره)، مرز کنترل محتوا با *Color* رنگ می شود.

مثال کد زیر نشان می دهد که چگونه رنگ کنترل محتوا را تغییر دهید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-SetContentControlColor.java" >}}

## چگونه سبک را برای قالب بندی متن تایپ شده در کنترل محتوا تنظیم کنیم

اگر می خواهید سبک کنترل محتوا را تنظیم کنید، می توانید از ویژگی های `StructuredDocumentTag.Style` یا `StructuredDocumentTag.StyleName` استفاده کنید. هنگامی که متن را در کنترل محتوا در سند خروجی تایپ می کنید، متن تایپ شده دارای سبک "نقل قول"خواهد بود.

{{% alert color="primary" %}}

توجه داشته باشید که فقط سبک های مرتبط و کاراکتر می توانند برای کنترل محتوا اعمال شوند. یک InvalidOperationException ("نمی تواند این سبک را به SDT اعمال کند") زمانی پرتاب می شود که یک سبک وجود داشته باشد اما مرتبط نباشد یا سبک شخصیت اعمال شود.

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه سبک کنترل محتوا را تنظیم کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-setContentControlStyle.java" >}}

## کار با کنترل محتوای بخش تکراری

بخش repeating content control امکان تکرار محتوای موجود در آن را فراهم می کند. با استفاده از Aspose.Words، گره های برچسب سند ساختار یافته بخش تکرار و انواع آیتم بخش تکرار می توانند ایجاد شوند و برای این منظور، [SdtType نوع شمارش](https://reference.aspose.com/words/java/com.aspose.words/sdttype/) عضو REPEATING_SECTION_ITEM را فراهم می کند.

مثال کد زیر نشان می دهد که چگونه یک بخش تکرار کنترل محتوا را به یک جدول متصل کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-CreatingTableRepeatingSectionMappedToCustomXmlPart.java" >}}

