---
title: دانلود و کار با یک سند در یک پایگاه داده
second_title: Aspose.Words برای Java
articleTitle: دانلود و کار با یک سند در یک پایگاه داده
linktitle: دانلود و کار با یک سند در یک پایگاه داده
description: "تبدیل یک سند به یک آرایه بایت برای کار با این سند در یک پایگاه داده. شما می توانید یک سند را به و از پایگاه داده با استفاده از Java..."
type: docs
weight: 40
url: /fa/java/serialize-and-work-with-a-document-in-a-database/
---

یکی از کارهایی که ممکن است هنگام کار با اسناد انجام دهید، ذخیره سازی و retrieving است. **Document** اشیاء و از یک پایگاه داده به عنوان مثال، اگر شما هر نوع سیستم مدیریت محتوا را پیاده سازی می کنید، لازم خواهد بود. تمام نسخه های قبلی اسناد باید در سیستم پایگاه داده ذخیره شوند. توانایی ذخیره اسناد در پایگاه داده نیز بسیار مفید است زمانی که درخواست شما یک سرویس مبتنی بر وب را فراهم می کند.

Aspose.Words فراهم می کند توانایی تبدیل یک سند به یک آرایه بایت برای کار بعدی با این سند در یک پایگاه داده.

## تبدیل یک سند به آرایه Byte

برای ذخیره یک سند در یک پایگاه داده یا آماده سازی یک سند برای انتقال در سراسر وب، اغلب لازم است که سند را برای به دست آوردن یک آرایه بایت تهیه کنید.

برای سریال [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) جسم در Aspose.Words:

1. آن را به یک **MemoryStream** استفاده از [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-int) روش اضافه بار **Document** کلاس
1. Call The Call **ToArray** روش، که آرایه ای از بایت ها را به نمایندگی از سند در فرم بایت باز می گرداند.

مراحل بالا می تواند معکوس شود تا بایت ها را به یک بایت برگرداند. **Document** جسم

{{% alert color="primary" %}}

فرمت پس انداز انتخاب شده مهم است برای اطمینان از بالاترین وفاداری در هنگام صرفه جویی و بارگیری به **Document** جسم به همین دلیل پیشنهاد می شود از یک سری فرمت فایل OOXML استفاده کنید.

{{% /alert %}}

مثال زیر نشان می دهد که چگونه یک سری بندی کنیم **Document** هدف برای به دست آوردن یک آرایه بایت، و سپس چگونه به unserialize آرایه بایت برای به دست آوردن یک **Document** دوباره اعتراض کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToByte-ConvertDocumentToByte.java" >}}

{{% alert color="primary" %}}

شما می توانید فایل قالب این مثال را دانلود کنید. [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc)...

{{% /alert %}}

## فروشگاه، خواندن و حذف یک سند در یک پایگاه داده

این بخش نشان می دهد که چگونه یک سند را در یک پایگاه داده ذخیره کنید و سپس آن را به یک پایگاه داده بارگیری کنید. `Document` هدف برای کار با آن برای سادگی، نام فایل کلید مورد استفاده برای ذخیره و جمع آوری اسناد از پایگاه داده است. پایگاه داده شامل دو ستون است. ستون اول " FileName" به عنوان یک رشته ذخیره می شود و برای شناسایی اسناد استفاده می شود. ستون دوم "محتوای فایل" به عنوان یک `BLOB` شی که شیء سند را در فرم بایت ذخیره می کند.

مثال کد زیر نشان می دهد که چگونه یک اتصال را به یک پایگاه داده تنظیم کنیم و دستورات را اجرا کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-OpenDatabaseConnection.java" >}}

{{% alert color="primary" %}}

در این مثال، از پایگاه داده MySQL برای ذخیره یک پایگاه داده استفاده می کنیم. Aspose.Words سند

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه یک سند را به پایگاه داده ذخیره کنید، سپس دوباره همان سند را بخوانید و در نهایت رکورد حاوی سند را از پایگاه داده حذف کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-OpenRetrieveAndDelete.java" >}}

### ذخیره یک سند به یک پایگاه داده

برای صرفه جویی در یک سند در یک پایگاه داده تبدیل این سند به آرایه ای از بایت ها، همانطور که در ابتدای این مقاله شرح داده شده است. سپس این آرایه را به یک پایگاه داده ذخیره کنید.

مثال کد زیر نشان می دهد که چگونه یک سند را به پایگاه داده مشخص ذخیره کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-StoreToDatabase.java" >}}

اسپکت را مشخص کنید، که یک بیان SQL است که تمام کار را انجام می دهد:

- برای صرفه جویی در یک سند در پایگاه داده، دستور "INSERT INTO" مورد استفاده قرار می گیرد و یک جدول مشخص شده همراه با ارزش دو زمینه رکورد - FileName و File Content. برای جلوگیری از پارامترهای اضافی، نام فایل از آن گرفته می شود. **Document** خود شی The The The The The The `FileContent` ارزش فیلد بایت از جریان حافظه اختصاص داده شده است که شامل نمایندگی باینری از سند ذخیره شده است.
- خط باقی مانده کد فرمان را اجرا می کند که Aspose.Words سند در پایگاه داده

### Retrieve a Document from a Database

برای بازیابی یک سند از پایگاه داده، رکوردی را انتخاب کنید که شامل داده های سند به عنوان یک آرایه از بایت است. سپس بر روی صفحه کلیک کنید. **MemoryStream** ایجاد یک **Document** چیزی که سند را از آن بارگذاری می کند **MemoryStream**...

مثال کد زیر نشان می دهد که چگونه یک سند را از پایگاه داده مشخص با استفاده از نام فایل به عنوان یک کلید برای تهیه این سند بازیابی و بازگرداندن کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-ReadFromDatabase.java" >}}

{{% alert color="primary" %}}

دستور SQL "SELECT" برای به دست آوردن رکورد مناسب بر اساس نام فایل استفاده می شود.

{{% /alert %}}

### حذف یک سند از یک پایگاه داده

برای حذف یک سند از پایگاه داده، از دستور SQL مناسب بدون هیچ گونه دستکاری در پایگاه داده استفاده کنید. **Document** جسم

مثال کد زیر نشان می دهد که چگونه یک سند را از پایگاه داده حذف کنیم، با استفاده از نام فایل برای گرفتن رکورد:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-DeleteFromDatabase.java" >}}
