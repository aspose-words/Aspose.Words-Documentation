---
title: تشخیص فرمت فایل
second_title: Aspose.Words برای Java
articleTitle: تشخیص فرمت فایل و بررسی سازگاری فرمت
linktitle: تشخیص فرمت فایل و بررسی سازگاری فرمت
description: "قبل از باز کردن آن اطلاعات مربوط به فرمت سند را دریافت کنید تا از استثنا جلوگیری کنید اگر مطمئن نیستید که محتوای واقعی فایل از Java استفاده می کند."
type: docs
weight: 20
url: /fa/java/detect-file-format-and-check-format-compatibility/
timestamp: 2024-10-21-11-17-44
---

گاهی لازم است قبل از باز کردن فرمت یک سند مشخص شود زیرا پسوند فایل تضمین نمی کند که محتوای فایل مناسب باشد. به عنوان مثال، شناخته شده است که Crystal Reports اغلب اسناد را در فرمت RTF خروجی می کند، اما به آنها می دهد .پسوند doc.

Aspose.Words امکان دریافت اطلاعات در مورد نوع فایل را فراهم می کند تا از استثنا جلوگیری شود اگر مطمئن نیستید که محتوای واقعی فایل چیست.

## تشخیص فرمت فایل بدون استثنا

وقتی با چندین سند در فرمت های مختلف فایل سروکار دارید، ممکن است لازم باشد فایل هایی را که می توانند توسط Aspose.Words پردازش شوند از فایل هایی که نمی توانند جدا کنید. همچنین ممکن است بخواهید بدانید که چرا برخی از اسناد قابل پردازش نیستند.

اگر شما سعی کنید یک فایل را در یک شیء [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) بارگذاری کنید و Aspose.Words نمی تواند فرمت فایل را تشخیص دهد یا فرمت پشتیبانی نمی شود، Aspose.Words یک استثنا را ایجاد می کند. شما می توانید این استثناها را بگیرید و آنها را تجزیه و تحلیل کنید، اما Aspose.Words همچنین روش [DetectFileFormat](https://reference.aspose.com/words/java/com.aspose.words/fileformatutil/#detectFileFormat-java.lang.String) را فراهم می کند که به ما اجازه می دهد تا به سرعت فرمت فایل را بدون بارگذاری یک سند با استثناهای احتمالی تعیین کنیم. این روش یک شی [FileFormatInfo](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/) را باز می گرداند که حاوی اطلاعات شناسایی شده در مورد نوع فایل است.

{{% alert color="primary" %}}

DetectFileFormat فقط فرمت فایل را چک می کند اما فرمت فایل را تایید نمی کند. هیچ تضمینی وجود ندارد که فایل با موفقیت باز شود، حتی اگر **DetectFileFormat** بازگردد که یکی از فرمت های پشتیبانی شده است. این به این دلیل است که روش **DetectFileFormat** فقط داده های جزئی فرمت فایل را می خواند، برای بررسی فرمت فایل کافی است، اما برای اعتبارسنجی کامل کافی نیست.

{{% /alert %}}

## بررسی سازگاری فرمت فایل ها

ما می توانیم سازگاری فرمت تمام فایل ها را در پوشه انتخاب شده بررسی کنیم و آنها را بر اساس فرمت به زیر پوشه های مربوطه مرتب کنیم.

از آنجا که ما با محتویات یک پوشه سروکار داریم، اولین کاری که باید انجام دهیم این است که مجموعه ای از تمام فایل های این پوشه را با استفاده از روش **GetFiles** کلاس `Directory` (از فضای نام `System.IO`) بدست آوریم.

مثال کد زیر نشان می دهد که چگونه یک لیست از تمام فایل ها را در پوشه دریافت کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CheckFormatCompatibility-GetListOfFilesInFolder.java" >}}

وقتی همه فایل ها جمع آوری می شوند، بقیه کار با روش **DetectFileFormat** انجام می شود که فرمت فایل را بررسی می کند.

مثال کد زیر نشان می دهد که چگونه بر روی لیست جمع آوری شده فایل ها تکرار کنید، فرمت هر فایل را بررسی کنید و هر فایل را به پوشه مناسب منتقل کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CheckFormatCompatibility-CheckFormatCompatibility.java" >}}

فایل ها با استفاده از روش `Move` کلاس `File` از همان فضای نام `System.IO` به زیر پوشه های مناسب منتقل می شوند.

فایل های زیر در مثال بالا استفاده می شوند. نام فایل در سمت چپ و توضیحات آن در سمت راست است:

| گروه فایل ها | سند ورودی | نوع |
| :- | :- | :- |
| فرمت های فایل پشتیبانی شده | Test File (Doc).doc | Microsoft Word 95/6.0 یا Microsoft Word 97 – 2003 سند. |
|  | Test File (Dot).dot | Microsoft Word 95/6.0 یا Microsoft Word 97 – 2003 قالب. |
|  | Test File (Docx).docx | دفتر باز XML WordprocessingML سند بدون ماکروها. |
|  | Test File (Docm).docm | دفتر باز XML WordprocessingML سند با ماکروها. |
|  | Test File (Dotx).dotx | دفتر باز XML WordprocessingML قالب. |
|  | Test File (Dotm).dotm | Office open XML WordprocessingML قالب با ماکروها. |
|  | Test File (XML).xml | FlatOPC OOXML سند. |
|  | Test File (RTF).rtf | سند فرمت متن غنی. |
|  | Test File (WordML).xml | Microsoft Word 2003 WordprocessingML سند. |
|  | Test File (HTML).html | HTML سند. |
|  | Test File (MHTML).mhtml | MHTML (آرشیو وب) سند. |
|  | Test File (Odt).odt | OpenDocument متن (OpenOffice نویسنده). |
|  | Test File (Ott).ott | OpenDocument قالب سند. |
|  | Test File (DocPreWord60).doc | Microsoft Word 2.0 سند. |
| اسناد رمزگذاری شده | Test File (Enc).doc | رمزگذاری شدهMicrosoft Word 95/6.0 یا Microsoft Word 97 – 2003 سند. |
|  | Test File (Enc).docx | رمزگذاری دفتر باز XML WordprocessingML سند. |
| فرمت فایل های غیر پشتیبانی شده | Test File (JPG).jpg | JPEG فایل تصویر. |

