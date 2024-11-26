---
title: سریال سازی و کار با یک سند در یک پایگاه داده
second_title: Aspose.Words برای Java
articleTitle: سریال سازی و کار با یک سند در یک پایگاه داده
linktitle: سریال سازی و کار با یک سند در یک پایگاه داده
description: "تبدیل یک سند به یک آرایه بایت برای کار با این سند در یک پایگاه داده. شما می توانید یک سند را به و از پایگاه داده با استفاده از Java ذخیره و بازیابی کنید."
type: docs
weight: 40
url: /fa/java/serialize-and-work-with-a-document-in-a-database/
timestamp: 2024-01-27-14-07-04
---

یکی از کارهایی که ممکن است هنگام کار با اسناد لازم باشد انجام دهید ذخیره و بازیابی اشیاء **Document** به و از یک پایگاه داده است. به عنوان مثال، اگر شما هر نوع سیستم مدیریت محتوا را پیاده سازی می کنید، این کار ضروری خواهد بود. تمام نسخه های قبلی اسناد باید در سیستم پایگاه داده ذخیره شوند. توانایی ذخیره اسناد در پایگاه داده نیز بسیار مفید است زمانی که برنامه شما یک سرویس مبتنی بر وب را ارائه می دهد.

Aspose.Words امکان تبدیل یک سند به یک آرایه بایت برای کار بعدی با این سند در یک پایگاه داده را فراهم می کند.

## تبدیل یک سند به آرایه بایت

برای ذخیره یک سند در یک پایگاه داده یا تهیه یک سند برای انتقال در سراسر وب، اغلب لازم است که سند را برای به دست آوردن یک آرایه بایت سریال کنید.

برای سریال کردن یک شی [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) در Aspose.Words:

1. با استفاده از روش [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-int) اضافه بار کلاس **Document** آن را به **MemoryStream** ذخیره کنید.
1. روش **ToArray** را فراخوانی کنید که یک آرایه از بایت ها را که سند را به شکل بایت نشان می دهد، باز می گرداند.

مراحل بالا را می توان معکوس کرد تا بایت ها را به یک شی **Document** بارگذاری کند.

{{% alert color="primary" %}}

فرمت ذخیره انتخاب شده مهم است تا اطمینان حاصل شود که بالاترین وفاداری در هنگام ذخیره و بارگذاری مجدد به شی **Document** حفظ می شود. به همین دلیل، پیشنهاد می شود از یک سری فرمت های فایل OOXML استفاده کنید.

{{% /alert %}}

مثال زیر نشان می دهد که چگونه یک شی **Document** را برای به دست آوردن یک آرایه بایت سریال سازی کنیم و سپس چگونه آرایه بایت را برای به دست آوردن یک شی **Document** دوباره سریال سازی کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToByte-ConvertDocumentToByte.java" >}}

{{% alert color="primary" %}}

شما می توانید فایل قالب این مثال را از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## ذخیره، خواندن و حذف یک سند در یک پایگاه داده

این بخش نشان می دهد که چگونه یک سند را در یک پایگاه داده ذخیره کنید و سپس آن را به یک شی `Document` برای کار با آن بارگذاری کنید. برای سادگی، نام فایل کلید مورد استفاده برای ذخیره و گرفتن اسناد از پایگاه داده است. پایگاه داده شامل دو ستون است. ستون اول "FileName " به عنوان یک رشته ذخیره می شود و برای شناسایی اسناد استفاده می شود. ستون دوم "FileContent " به عنوان یک شیء `BLOB` ذخیره می شود که شیء سند را در فرم بایت ذخیره می کند.

مثال کد زیر نشان می دهد که چگونه یک اتصال به یک پایگاه داده را تنظیم کنید و دستورات را اجرا کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-OpenDatabaseConnection.java" >}}

{{% alert color="primary" %}}

در این مثال، ما از پایگاه داده MySQL برای ذخیره یک سند Aspose.Words استفاده می کنیم.

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه یک سند را به پایگاه داده ذخیره کنید، سپس همان سند را دوباره بخوانید، و در نهایت رکورد حاوی سند را از پایگاه داده حذف کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-OpenRetrieveAndDelete.java" >}}

### یک سند را در یک پایگاه داده ذخیره کنید

برای ذخیره یک سند در یک پایگاه داده این سند را به آرایه ای از بایت ها تبدیل کنید، همانطور که در ابتدای این مقاله توضیح داده شده است. سپس، این آرایه بایت را در یک فیلد پایگاه داده ذخیره کنید.

مثال کد زیر نشان می دهد که چگونه یک سند را به پایگاه داده مشخص شده ذخیره کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-StoreToDatabase.java" >}}

CommandString را مشخص کنید که یک عبارت SQL است که تمام کار را انجام می دهد:

- برای ذخیره یک سند در پایگاه داده، دستور "INSERT INTO" و یک جدول مشخص شده همراه با مقادیر دو فیلد رکورد – FileName و FileContent استفاده می شود. برای جلوگیری از پارامترهای اضافی، نام فایل از خود شی **Document** گرفته شده است. مقدار فیلد `FileContent` از جریان حافظه، که شامل یک نمایش باینری از سند ذخیره شده است، بایت اختصاص داده می شود.
- خط کد باقی مانده دستور را اجرا می کند که سند Aspose.Words را در پایگاه داده ذخیره می کند.

### یک سند را از یک پایگاه داده بازیابی کنید

برای بازیابی یک سند از پایگاه داده، رکوردی را که حاوی داده های سند است به عنوان آرایه ای از بایت ها انتخاب کنید. سپس آرایه بایت را از رکورد به **MemoryStream** بارگذاری کنید و یک شی **Document** ایجاد کنید که سند را از **MemoryStream** بارگذاری کند.

مثال کد زیر نشان می دهد که چگونه یک سند را از پایگاه داده مشخص شده با استفاده از نام فایل به عنوان کلید برای گرفتن این سند بازیابی و بازگردانید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-ReadFromDatabase.java" >}}

{{% alert color="primary" %}}

دستور SQL "SELECT * FROM " برای گرفتن رکورد مناسب بر اساس نام فایل استفاده می شود.

{{% /alert %}}

### حذف یک سند از یک پایگاه داده

برای حذف یک سند از پایگاه داده، از دستور SQL مناسب بدون هیچ گونه دستکاری در شی **Document** استفاده کنید.

مثال کد زیر نشان می دهد که چگونه یک سند را از پایگاه داده حذف کنیم، با استفاده از نام فایل برای گرفتن رکورد:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-DeleteFromDatabase.java" >}}
