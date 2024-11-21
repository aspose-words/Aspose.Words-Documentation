---
title: کار با Content Control SDT در Java
second_title: Aspose.Words برای Java
articleTitle: کار با Content Control SDT
linktitle: کار با Content Control SDT
type: docs
description: "مدیریت محتوای پیشرفته سند، چگونه برای ایجاد و دستکاری کنترل محتوا (Structured Document tags) با استفاده از برچسب ها Java..."
weight: 390
url: /fa/java/working-with-content-control-sdt/
timestamp: 2024-01-31-14-23-37
---

In In In Microsoft Word, شما می توانید یک فرم را با شروع یک قالب ایجاد کنید و کنترل محتوا، از جمله چک باکس ها، جعبه های متنی، انتخاب کنندگان تاریخ و لیست های کشویی را اضافه کنید. In In In <span notrans="<span notrans=" Aspose.Words"=""></span>"> یک Tag سند ساختاری یا کنترل محتوا از هر سند بارگذاری شده در هر سند Aspose.Words به عنوان یک گره StructuredDocumentTag وارد می شود. برچسب های سند ساختاری (SDT یا کنترل محتوا) اجازه می دهد تا معانی تعریف شده مشتری و همچنین رفتار و ظاهر آن را در یک سند جاسازی کند.

ساختار Tag می تواند در یک سند در مکان های زیر رخ دهد:

- سطح بلوک - در میان پاراگراف ها و جداول، به عنوان یک کودک از بدن، سرسرپ، نظر، یادداشت یا یک گره شکل.
- سطح رو - در میان ردیف ها در یک جدول، به عنوان یک کودک از یک گره جدول.
- سطح سلول - در میان سلول ها در ردیف جدول، به عنوان یک کودک از یک گره Row.
- سطح آنلاین - در میان محتوای خط در داخل، به عنوان یک کودک از یک پاراگراف.
- در داخل یک ساختار دیگر قرار گرفته است.

## اضافه کردن کنترل محتوا به یک سند

در این نسخه Aspose.Words, انواع زیر SDT یا کنترل محتوا را می توان ایجاد کرد:

- Checkbox
- DropDownList
- ComboBox
- Date
- BuildingBlockGallery
- Group
- `Picture`
- RichText
- PlainText

مثال کد زیر نشان می دهد که چگونه کنترل محتوای چک باکس نوع را ایجاد کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CheckBoxTypeContentControl-CheckBoxTypeContentControl.java" >}}

مثال کد زیر نشان می دهد که چگونه کنترل محتوای جعبه متن غنی را ایجاد کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-RichTextBoxContentControl-RichTextBoxContentControl.java" >}}

مثال کد زیر نشان می دهد که چگونه کنترل محتوا را در جعبه نوع شانه ایجاد کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ComboBoxContentControl-ComboBoxContentControl.java" >}}

## چگونه به روز رسانی کنترل محتوا

این بخش توضیح می دهد که چگونه ارزش های SDT یا برنامه کنترل محتوا را به صورت موضوعی به روز کنید.

مثال کد زیر نشان می دهد که چگونه حالت فعلی چک باکس را تنظیم کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SetCurrentStateOfCheckBox-SetCurrentStateOfCheckBox.java" >}}

مثال کد زیر نشان می دهد که چگونه کنترل محتوای جعبه متن ساده، لیست کشویی و تصویر را تغییر دهید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ModifyContentControls-ModifyContentControls.java" >}}

{{% alert color="primary" %}}

شما می توانید فایل نمونه از این نمونه ها را دانلود کنید. [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Structured%20document%20tags.docx)...

{{% /alert %}}

## کنترل محتوا برای قطعات XML سفارشی

شما می توانید کنترل محتوا را با داده های XML (* بخش XML سفارشی*) در اسناد Word متصل کنید

مثال کد زیر نشان می دهد که چگونه کنترل محتوا را به قطعات XML سفارشی متصل کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-BindingContentControlwithXML-BindingContentControlwithXML.java" >}}

## محتوای واضح کنترل محتوا

شما می توانید محتویات یک کنترل محتوا را با نمایش یک سهامدار روشن کنید. **ساختار ()** روش محتوای این برچسب سند ساختار یافته را روشن می کند و یک سهامدار را در صورت تعریف آن نمایش می دهد. با این حال، ممکن نیست که محتوای یک کنترل محتوا را روشن کنید، اگر تجدید نظر کند. اگر یک کنترل محتوا هیچ مالکی نداشته باشد، پنج فضا مانند MS Word وارد می شوند (به جز تکرار بخش ها، تکرار موارد بخش، گروه ها، چک باکس ها، ارجاعات). اگر یک کنترل محتوا به XML سفارشی نقشه برداری شود، گره XML ارجاع شده پاک می شود.

مثال کد زیر نشان می دهد که چگونه محتوای کنترل محتوا را روشن کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ClearContentsControl-ClearContentsControl.java" >}}

## تغییر زمینه کنترل محتوا و رنگ های مرزی

The The The The The The `StructuredDocumentTag.Color` مالکیت به شما اجازه می دهد تا رنگ کنترل محتوا را دریافت یا تنظیم کنید. رنگ بر کنترل محتوا در دو موقعیت تاثیر می گذارد:

1. MS Word زمینه کنترل محتوا را برجسته می کند زمانی که موش بر کنترل محتوا حرکت می کند. این به شناسایی کنترل محتوا کمک می کند. رنگ برجسته کردن کمی "نرم تر" نسبت به "نرم تر" است. *Color*... به عنوان مثال، MS Word پس زمینه را با رنگ صورتی برجسته می کند، زمانی که *Color* قرمز است.
2. هنگامی که شما ارتباط برقرار می کنید (تمرین، انتخاب و غیره) با کنترل محتوا، مرز کنترل محتوا با رنگ است. *Color*...

مثال کد زیر نشان می دهد که چگونه رنگ کنترل محتوا را تغییر دهید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-SetContentControlColor.java" >}}

## چگونه برای تنظیم سبک به فرمت Text Typed به کنترل محتوا

اگر می خواهید سبک کنترل محتوا را تنظیم کنید، می توانید از آن استفاده کنید. `StructuredDocumentTag.Style` یا `StructuredDocumentTag.StyleName` خواص هنگامی که متن را به کنترل محتوا در سند خروجی تایپ می کنید، متن تایپ شده دارای سبک "Quote" خواهد بود.

{{% alert color="primary" %}}

توجه داشته باشید که تنها سبک های لینک شده و شخصیتی را می توان برای کنترل محتوا استفاده کرد. یک InvalidOperation Exception ("نمی تواند این سبک را به SDT اعمال کند") هنگامی که یک سبک وجود دارد پرتاب می شود، اما به سبک لینک شده یا شخصیت اعمال نمی شود.

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه سبک کنترل محتوا را تنظیم کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-setContentControlStyle.java" >}}

## کار با تکرار کنترل محتوا

کنترل محتوای تکراری اجازه می دهد تا محتوای موجود در آن را تکرار کند. استفاده از Aspose.Words, گره های برچسب سند ساختاری بخش تکرار و تکرار انواع آیتم های بخش می تواند ایجاد شود و برای این منظور، [SdtType enumeration](https://reference.aspose.com/words/java/com.aspose.words/sdttype/) REPEAING_SECTION_ITEM عضو

مثال کد زیر نشان می دهد که چگونه کنترل محتوای بخش تکراری را به یک جدول متصل کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-CreatingTableRepeatingSectionMappedToCustomXmlPart.java" >}}

