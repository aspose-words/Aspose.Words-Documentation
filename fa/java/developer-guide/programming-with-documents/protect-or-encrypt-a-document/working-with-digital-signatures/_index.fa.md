---
title: کار با امضای دیجیتال در Java
second_title: Aspose.Words برای Java
articleTitle: کار با امضای دیجیتال
linktitle: کار با امضای دیجیتال
description: "ثبت نام دیجیتال و شناسایی، شمارش، تأیید و حذف امضاهای دیجیتال موجود با استفاده از Java..."
type: docs
weight: 30
url: /fa/java/working-with-digital-signatures/
timestamp: 2024-01-27-14-07-04
---

امضای دیجیتال یک پیاده سازی تکنولوژیکی از امضاهای الکترونیکی است تا اسناد را امضا کند و امضاکننده را تأیید کند تا تضمین کند که یک سند از زمان امضای آن اصلاح نشده است. هر امضای دیجیتال برای هر امضا کننده به دلیل پیگیری پروتکل PKI برای تولید کلیدهای عمومی و خصوصی منحصر به فرد است. ثبت یک سند دیجیتال به معنای ایجاد یک امضا با استفاده از کلید خصوصی امضا کننده است که در آن یک الگوریتم ریاضی برای رمزگذاری هش تولید شده استفاده می شود.

Aspose.Words اجازه می دهد تا شما را به شناسایی، شمارش یا تأیید امضاهای دیجیتال موجود، و همچنین اضافه کردن یک امضای جدید به سند خود را برای پیدا کردن هر گونه دستکاری در آن. شما همچنین می توانید تمام امضاهای دیجیتال را از یک سند حذف کنید. استفاده از [DigitalSignatureUtil](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/) کلاس برای کار با امضاهای دیجیتال

این مقاله توضیح می دهد که چگونه تمام موارد فوق را برای اعتبار و یکپارچگی یک سند دیجیتال انجام دهید.

{{% alert color="primary" %}}

توجه داشته باشید که شما می توانید به امضاهای دیجیتال سند خود تنها در هنگام اجرا دسترسی پیدا کنید. Java 6 نسخه و بالاتر

{{% /alert %}}

{{% alert color="primary" %}}

**سعی کنید آنلاین**

شما می توانید این قابلیت را با ما امتحان کنید [امضای آنلاین رایگان](https://products.aspose.app/words/signature)...

{{% /alert %}}

## پشتیبانی از Formats

Aspose.Words اجازه می دهد تا شما با امضای دیجیتال در DOC، OOXML و اسناد ODT کار کنید و سند تولید شده را در PDF یا PDF امضا کنید. XPS فرمت

## محدودیت های امضای دیجیتال

جدول زیر چند محدودیت را توصیف می کند که ممکن است هنگام کار با امضاهای دیجیتال از طریق آن با آن مواجه شوید. Aspose.Words, همچنین برخی از گزینه های جایگزین.

|  محدودیت |  گزینه جایگزین |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  از دست دادن امضاهای دیجیتال در یک سند پس از بارگذاری و صرفه جویی در آن. بنابراین پردازش یک سند به یک سرور ممکن است باعث از دست دادن تمام امضاهای دیجیتال بدون اطلاع شود |  بررسی کنید که آیا یک سند دارای امضاهای دیجیتال است و در صورت پیدا شدن، اقدام مناسبی را انجام دهید. به عنوان مثال، یک هشدار به مشتریان ارسال کنید تا آنها را مطلع کنید که سندی که آپلود می کنند شامل امضاهای دیجیتال است که اگر پردازش شود از دست می رود |
|  Aspose.Words پشتیبانی از کار با ماکروها در یک سند اما اما Aspose.Words هنوز از امضاهای دیجیتال در ماکروها پشتیبانی نمی کند |  صادرات سند به هر فرمت Word و استفاده Microsoft Word اضافه کردن یک امضای دیجیتال به ماکرو |

## Detect، شمارش و بررسی امضاهای دیجیتال

Aspose.Words اجازه می دهد تا امضای دیجیتال را در یک سند با استفاده از [DetectFileFormat](https://reference.aspose.com/words/java/com.aspose.words/fileformatutil/#detectFileFormat-java.io.InputStream) روش و [HasDigitalSignature](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#hasDigitalSignature) مالکیت شایان ذکر است که چنین چکی تنها واقعیت امضا را تشخیص می دهد، اما نه اعتبار آن.

یک سند را می توان بیش از یک بار امضا کرد و این را می توان توسط کاربران مختلف انجام داد. برای بررسی اعتبار امضاهای دیجیتال، باید آنها را از سند با استفاده از سند بارگیری کنید. [LoadSignatures](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#loadSignatures-java.io.InputStream) روش و استفاده از [IsValid](https://reference.aspose.com/words/java/com.aspose.words/digitalsignaturecollection/#isValid) مالکیت همچنین Aspose.Words به شما اجازه می دهد مجموعه ای از تمام امضاهای دیجیتال را در یک سند با استفاده از سند شمارش کنید. [Count](https://reference.aspose.com/words/java/com.aspose.words/digitalsignaturecollection/#getCount) مالکیت

همه این ها یک راه کارآمد و امن برای بررسی یک سند برای امضا قبل از پردازش آن فراهم می کند.

مثال کد زیر نشان می دهد که چگونه حضور امضاهای دیجیتال را تشخیص دهد و آنها را تأیید کند:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "detect-document-signatures.java" >}}

## ایجاد یک امضای دیجیتال {#create-a-digital-signature}

برای ایجاد یک امضای دیجیتال، شما نیاز به بارگذاری یک گواهی امضا دارید که هویت را تأیید می کند. هنگامی که یک سند دیجیتال امضا می کنید، گواهینامه و کلید عمومی خود را نیز ارسال می کنید.

Aspose.Words اجازه می دهد تا شما برای ایجاد گواهی X.509، یک گواهی دیجیتال است که از استاندارد پذیرفته شده بین المللی X.509 PKI استفاده می کند تا تأیید کند که یک کلید عمومی متعلق به امضا کننده در داخل گواهینامه است. برای انجام این کار، استفاده از [Create](https://reference.aspose.com/words/java/com.aspose.words/certificateholder/#create-byte---java.lang.String) روش درون [CertificateHolder](https://reference.aspose.com/words/java/com.aspose.words/certificateholder/) کلاس

بخش های بعدی توضیح می دهند که چگونه یک امضای دیجیتال، خط امضا و چگونگی امضای یک سند PDF تولید شده را اضافه کنید.

### ثبت یک سند

Aspose.Words اجازه می دهد تا شما یک سند DOC، DOCX یا ODT را به صورت دیجیتالی با استفاده از سند ODT ثبت کنید. [Sign](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#sign-java.io.InputStream-java.io.OutputStream-com.aspose.words.CertificateHolder) روش و [SignOptions](https://reference.aspose.com/words/java/com.aspose.words/signoptions/) خواص

مثال کد زیر نشان می دهد که چگونه اسناد را با استفاده از یک دارنده گواهی و گزینه های علامت گذاری امضا کنید:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "sign-document.java" >}}

### اضافه کردن خط امضا

یک خط امضای یک نمایش بصری از یک امضای دیجیتال در یک سند است. Aspose.Words اجازه دهید یک خط امضا را با استفاده از [DocumentBuilder.InsertSignatureLine](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertSignatureLine-com.aspose.words.SignatureLineOptions) روش شما همچنین می توانید پارامترهای این نمایندگی را با استفاده از [SignatureLineOptions](https://reference.aspose.com/words/java/com.aspose.words/signaturelineoptions/) کلاس

به عنوان مثال، تصویر زیر نشان می دهد که چگونه امضاهای معتبر و نامعتبر می توانند نمایش داده شوند.

<img src="/words/java/working-with-digital-signatures/valid.png" alt="valid-digital-signature" style="width:300px"/>

<img src="/words/java/working-with-digital-signatures/invalid.png" alt="invalid-digital-signature" style="width:300px"/>

همچنین، اگر یک سند حاوی یک خط امضا و بدون امضای دیجیتال باشد، یک ویژگی برای درخواست کاربر برای اضافه کردن یک امضا وجود دارد.

مثال کد زیر نشان می دهد که چگونه یک سند را با یک گواهینامه شخصی و یک خط امضای خاص امضا کنید:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "create-new-signature-line-and-set-provider-id.java" >}}

### یک سند PDF Generated PDF {#sign-a-generated-pdf-document}

Aspose.Words اجازه می دهد تا شما را به ثبت و دریافت تمام جزئیات از یک سند PDF با استفاده از [PdfDigitalSignatureDetails](https://reference.aspose.com/words/java/com.aspose.words/pdfdigitalsignaturedetails/) خواص

مثال کد زیر نشان می دهد که چگونه یک PDF تولید شده را امضا کنیم:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "digitally-signed-pdf-using-certificate-holder.java" >}}

تصویر زیر نشان می دهد که سند PDF تولید شده در آن باز شده است. Adobe Acrobat و امضای دیجیتال به عنوان حال و معتبر تایید شده است.

![create-digital-signed-pdf-aspose-words-java](/words/java/working-with-digital-signatures/signed-pdf-aspose-words-java.png)

## Retrieve Digital Signature Value

Aspose.Words همچنین توانایی بازیابی ارزش امضای دیجیتال را از یک سند دیجیتال امضا شده به عنوان یک آرایه بایت با استفاده از آن فراهم می کند. [SignatureValue](https://reference.aspose.com/words/java/com.aspose.words/digitalsignature/#getSignatureValue) مالکیت

مثال کد زیر نشان می دهد که چگونه ارزش امضای دیجیتال را به عنوان یک آرایه بایت از یک سند به دست آورد:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "signature-value.java" >}}

## حذف امضای دیجیتال

Aspose.Words اجازه می دهد تا تمام امضاهای دیجیتال را از یک سند امضا شده حذف کنید. [RemoveAllSignatures](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#removeAllSignatures-java.io.InputStream-java.io.OutputStream) روش

مثال کد زیر نشان می دهد که چگونه بارگذاری و حذف امضاهای دیجیتال از یک سند:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "remove-signatures.java" >}}

{{% alert color="primary" %}}

توجه داشته باشید که شما نمی توانید تنها یک امضای دیجیتال را در سند خود حذف کنید.

{{% /alert %}}
