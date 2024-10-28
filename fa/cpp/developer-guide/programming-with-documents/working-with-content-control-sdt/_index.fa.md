---
title: کار با کنترل محتوا SDT
second_title: Aspose.Words برای C++
articleTitle: کار با کنترل محتوا SDT
linktitle: کار با کنترل محتوا SDT
type: docs
description: "مدیریت محتوای اسناد پیشرفته، نحوه ایجاد و دستکاری کنترل محتوا (تگ های اسناد ساختاری) با استفاده از C++."
weight: 390
url: /fa/cpp/structured-document-tags-or-content-control/
---

در Microsoft Word، می توانید با شروع یک قالب و اضافه کردن کنترل محتوا، از جمله جعبه های چک، جعبه های متن، انتخاب کننده های تاریخ و لیست های کشویی، یک فرم ایجاد کنید. در Aspose.Words، یک برچسب سند ساختار یافته یا کنترل محتوا از هر سند بارگذاری شده در Aspose.Words به عنوان یک گره StructuredDocumentTag وارد می شود. برچسب های سند ساختاری (SDT یا کنترل محتوا) اجازه می دهد تا معناشناسی تعریف شده توسط مشتری و همچنین رفتار و ظاهر آن را در یک سند جاسازی کند. StructuredDocumentTag می تواند در یک سند در مکان های زیر رخ دهد:

- سطح بلوک در میان پاراگراف ها و جداول، به عنوان یک کودک از یک بدن، HeaderFooter، نظر، یادداشت زیر یا یک گره شکل
- سطح ردیف-در میان ردیف ها در یک جدول، به عنوان یک کودک از یک گره جدول
- سطح سلول-در میان سلول ها در یک ردیف جدول، به عنوان یک کودک از یک گره ردیف
- سطح خطی-در میان محتوای خطی در داخل، به عنوان یک کودک از یک پاراگراف
- داخل يه خونه ديگه StructuredDocumentTag

## چگونه سبک را برای قالب بندی متن تایپ شده در کنترل محتوا تنظیم کنیم

اگر می خواهید سبک کنترل محتوا را تنظیم کنید، می توانید از ویژگی های `StructuredDocumentTag.Style` یا `StructuredDocumentTag.StyleName` استفاده کنید. وقتی متن را در کنترل محتوا در سند خروجی تایپ می کنید، متن تایپ شده دارای سبک "Quote"خواهد بود.

{{% alert color="primary" %}}

توجه داشته باشید که فقط سبک های مرتبط و کاراکتر می توانند برای کنترل محتوا اعمال شوند. یک InvalidOperationException ("نمی تواند این سبک را به SDT اعمال کند") زمانی پرتاب می شود که یک سبک وجود داشته باشد اما مرتبط نباشد یا سبک شخصیت اعمال شود.

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه سبک کنترل محتوا را تنظیم کنیم:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-SetContentControlStyle.cpp" >}}

## کار با کنترل محتوای بخش تکراری

بخش repeating content control امکان تکرار محتوای موجود در آن را فراهم می کند. با استفاده از Aspose.Words، گره های برچسب سند ساختار یافته بخش تکرار و انواع آیتم بخش تکرار می توانند ایجاد شوند و برای این منظور، SdtType نوع شمارش **RepeatingSectionItem** خاصیت را فراهم می کند.

مثال کد زیر نشان می دهد که چگونه یک بخش تکرار کنترل محتوا را به یک جدول متصل کنیم:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-CreatingTableRepeatingSectionMappedToCustomXmlPart.cpp" >}}
