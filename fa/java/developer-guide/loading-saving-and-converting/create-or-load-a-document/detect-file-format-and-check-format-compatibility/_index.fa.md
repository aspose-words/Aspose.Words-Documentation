---
title: دانلود فیلم Detect File Format
second_title: Aspose.Words برای Java
articleTitle: گزینه Detect File Format و Check Format Compatibility
linktitle: گزینه Detect File Format و Check Format Compatibility
description: "دریافت اطلاعات در مورد فرمت سند قبل از باز کردن آن برای جلوگیری از یک استثناء اگر مطمئن نیستید که محتوای واقعی فایل از چه چیزی استفاده می کند Java..."
type: docs
weight: 20
url: /fa/java/detect-file-format-and-check-format-compatibility/
timestamp: 2024-10-21-11-17-44
---

گاهی اوقات لازم است که فرمت یک سند را قبل از باز کردن تعیین کنید زیرا پسوند فایل تضمین نمی کند که محتوای فایل مناسب است. به عنوان مثال، شناخته شده است که گزارش کریستال اغلب اسناد را در فرمت RTF تولید می کند، اما به آنها پسوند .doc می دهد.

Aspose.Words فراهم می کند توانایی به دست آوردن اطلاعات در مورد نوع فایل به منظور جلوگیری از یک استثناء اگر شما مطمئن نیستید که محتوای واقعی فایل چیست.

## ویرایش فایل بدون استثناء

هنگامی که شما با چندین سند در فرمت های مختلف فایل سروکار دارید، ممکن است لازم باشد فایل هایی را که می توانند توسط آنها پردازش شوند جدا کنید. Aspose.Words از کسانی که نمی توانند همچنین ممکن است بخواهید بدانید که چرا برخی از اسناد قابل پردازش نیستند.

اگر سعی می کنید یک فایل را به یک فایل بارگذاری کنید [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) جسم و جسم Aspose.Words نمی تواند فرمت فایل را تشخیص دهد یا فرمت پشتیبانی نمی شود. Aspose.Words یک استثنا پرتاب خواهد کرد. شما می توانید این استثناها را بیابید و آنها را تجزیه و تحلیل کنید، اما Aspose.Words همچنین فراهم می کند [DetectFileFormat](https://reference.aspose.com/words/java/com.aspose.words/fileformatutil/#detectFileFormat-java.lang.String) روش که به ما اجازه می دهد تا به سرعت فرمت فایل را بدون بارگیری یک سند با استثنائات احتمالی تعیین کنیم. این روش بازگشت به یک [FileFormatInfo](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/) شی که حاوی اطلاعات شناسایی شده در مورد نوع فایل است.

{{% alert color="primary" %}}

فایل Detect فرمت فقط فرمت فایل را چک می کند اما فرمت فایل را تایید نمی کند. هیچ تضمینی وجود ندارد که فایل با موفقیت باز شود، حتی اگر **DetectFileFormat** این یکی از فرمت های پشتیبانی شده است. این به خاطر **DetectFileFormat** روش فقط داده های فرمت فایل جزئی را می خواند، کافی برای چک کردن فرمت فایل، اما نه به اندازه کافی برای اعتبار کامل.

{{% /alert %}}

## Check Files Format Compatibility

ما می توانیم سازگاری فرمت تمام فایل ها را در پوشه انتخاب شده بررسی کنیم و آنها را با فرمت به زیر پوشه های مربوطه مرتب کنیم.

از آنجایی که ما با محتوا در یک پوشه سروکار داریم، اولین کاری که باید انجام دهیم این است که مجموعه ای از تمام فایل های موجود در این پوشه را با استفاده از پوشه دریافت کنیم. **GetFiles** روش روش `Directory` کلاس (از `System.IO` نام فضا

مثال کد زیر نشان می دهد که چگونه یک لیست از تمام فایل های پوشه را دریافت کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CheckFormatCompatibility-GetListOfFilesInFolder.java" >}}

هنگامی که تمام فایل ها جمع آوری می شوند، بقیه کارها توسط بقیه کارها انجام می شود. **DetectFileFormat** روش، که فرمت فایل را بررسی می کند.

مثال کد زیر نشان می دهد که چگونه بر روی لیست جمع آوری شده فایل ها، بررسی فرمت هر فایل، و حرکت هر فایل به پوشه مناسب:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CheckFormatCompatibility-CheckFormatCompatibility.java" >}}

فایل ها به زیر پوشه های مناسب با استفاده از `Move` روش روش `File` کلاس، از همان `System.IO` نام فضا

فایل های زیر در مثال بالا استفاده می شوند. نام فایل در سمت چپ است و شرح آن در سمت راست است:

| Group فایل ها | سند ورودی | نوع |
|  :-  |  :-  |  :-  |
| پشتیبانی از فرمت های فایل | تست فایل (دکتر) | Microsoft Word 95/6.0 یا Microsoft Word 97 - 2003 سند |
|  | تست فایل (Dot) | Microsoft Word 95/6.0 یا Microsoft Word 97 - 2003 قالب |
|  | تست فایل (Docx) | Open XML Word Processing اسناد ML بدون ماکرو |
|  | تست فایل (Docm)docm | Open XML Word Processing ML با ماکروها |
|  | تست فایل (Dotx) | Open XML Word Processing قالب ML |
|  | تست فایل (Dotm) | Open XML Word Processing قالب ML با ماکروها |
|  | تست فایل (XML) XML | BedOPC OOXML Document |
|  | تست فایل (RTF) | Rich text Format document |
|  | تست فایل (WordML) | Microsoft Word ۲۰۰۳ Word Processing اسناد ML |
|  | تست File (HTML) | سند HTML |
|  | تست فایل (MHTML) | MHTML (Web Archive) سند |
|  | تست فایل (Odt) | OpenDocument Text (OpenOffice Writer) |
|  | تست فایل (Ott) | OpenDocument Document |
|  | تست فایل (DocpreWord60) | Microsoft Word 2 سند |
| اسناد رمزگذاری شده | تست فایل (Enc) | رمزگذاری شده Microsoft Word 95/6.0 یا Microsoft Word 97 - 2003 سند |
|  | تست فایل (Enc) | رمزگذاری شده Office Open XML Word Processing اسناد ML |
| فرمت های فایل پشتیبانی نشده | تست فایل (JPG) jpg | فایل تصویر JPEG |

