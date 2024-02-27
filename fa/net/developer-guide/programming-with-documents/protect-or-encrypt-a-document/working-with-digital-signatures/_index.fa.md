---
title: کار با امضای دیجیتال در C#
second_title: Aspose.Words برای .NET
articleTitle: کار با امضای دیجیتال
linktitle: کار با امضای دیجیتال
description: "اسناد را به صورت دیجیتالی امضا کنید و امضاهای دیجیتال موجود را با استفاده از C# شناسایی، شمارش، تأیید و حذف کنید."
type: docs
weight: 40
url: /fa/net/working-with-digital-signatures/
---

امضای دیجیتال یک پیاده‌سازی تکنولوژیکی از امضای الکترونیکی برای امضای اسناد و احراز هویت امضاکننده برای تضمین عدم تغییر سند از زمان امضای آن است. هر امضای دیجیتال به دلیل پیروی از پروتکل PKI برای تولید کلیدهای عمومی و خصوصی برای هر امضاکننده منحصر به فرد است. امضای دیجیتالی یک سند به معنای ایجاد یک امضا با استفاده از کلید خصوصی امضاکننده است که در آن از یک الگوریتم ریاضی برای رمزگذاری هش تولید شده استفاده می‌شود.

Aspose.Words به شما امکان می دهد امضاهای دیجیتال موجود را شناسایی، شمارش یا تأیید کنید، و همچنین یک امضای جدید به سند خود اضافه کنید تا هرگونه دستکاری در آن را پیدا کنید. همچنین می توانید تمام امضاهای دیجیتال را از یک سند حذف کنید. از کلاس [DigitalSignatureUtil](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/) برای کار با امضای دیجیتال استفاده کنید.

این مقاله نحوه انجام همه موارد فوق را برای تأیید صحت و یکپارچگی یک سند دیجیتال توضیح می دهد.

{{% alert color="primary" %}}

توجه داشته باشید که فقط هنگام اجرای نسخه .NET Framework 2.0 و بالاتر می توانید به امضای دیجیتال سند خود دسترسی داشته باشید.

{{% /alert %}}

{{% alert color="primary" %}}

**آنلاین امتحان کنید**

می توانید این عملکرد را با [امضای آنلاین رایگان](https://products.aspose.app/words/signature) ما امتحان کنید.

{{% /alert %}}

## فرمت های پشتیبانی شده

Aspose.Words به شما امکان می دهد با امضای دیجیتال در اسناد DOC، OOXML و ODT کار کنید و سند تولید شده را در قالب PDF یا XPS امضا کنید.

## محدودیت های امضای دیجیتال

جدول زیر تعدادی محدودیت را که ممکن است هنگام کار با امضای دیجیتال از طریق Aspose.Words و همچنین برخی از گزینه های جایگزین با آنها مواجه شوید، توضیح می دهد.

|  محدودیت |  گزینه جایگزین |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  از بین رفتن امضای دیجیتال روی یک سند پس از بارگیری و ذخیره آن. بنابراین، پردازش یک سند در یک سرور ممکن است باعث از بین رفتن همه امضاهای دیجیتال بدون اطلاع قبلی شود |  بررسی کنید که آیا سندی دارای امضای دیجیتال است و در صورت یافتن آن اقدام مناسب را انجام دهید. به عنوان مثال، یک هشدار برای مشتریان ارسال کنید و به آنها اطلاع دهید که سندی که بارگذاری می کنند حاوی امضای دیجیتال است که در صورت پردازش از بین می رود |
|  Aspose.Words از کار با ماکروها در یک سند پشتیبانی می کند. اما Aspose.Words هنوز از امضای دیجیتال در ماکروها پشتیبانی نمی کند |  سند را به هر فرمت Word برگردانید و از Microsoft Word برای اضافه کردن امضای دیجیتال به ماکروها استفاده کنید |

## امضاهای دیجیتال را شناسایی، شمارش و تأیید کنید

Aspose.Words به شما امکان می دهد امضای دیجیتال را در یک سند با استفاده از روش [DetectFileFormat](https://reference.aspose.com/words/net/aspose.words/fileformatutil/detectfileformat/#detectfileformat/) و ویژگی [HasDigitalSignature](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/hasdigitalsignature/) شناسایی کنید. شایان ذکر است که چنین چکی فقط واقعیت امضا را تشخیص می دهد، اما اعتبار آن را تشخیص نمی دهد.

یک سند را می توان بیش از یک بار امضا کرد و این می تواند توسط کاربران مختلف انجام شود. برای بررسی اعتبار امضای دیجیتال، باید آنها را با استفاده از روش [LoadSignatures](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/loadsignatures/#loadsignatures/) از سند بارگیری کنید و از ویژگی [IsValid](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignaturecollection/isvalid/) استفاده کنید. همچنین Aspose.Words به شما امکان می دهد مجموعه ای از تمام امضاهای دیجیتال را در یک سند با استفاده از ویژگی [Count](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignaturecollection/count/) بشمارید.

همه اینها یک روش کارآمد و ایمن برای بررسی امضاها قبل از پردازش یک سند است.

مثال کد زیر نحوه تشخیص وجود امضای دیجیتال و تأیید آنها را نشان می دهد:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "detect-document-signatures.cs" >}}

## یک {#create-a-digital-signature} با امضای دیجیتال ایجاد کنید

برای ایجاد یک امضای دیجیتال، باید یک گواهی امضا را بارگیری کنید که هویت را تأیید می کند. هنگامی که یک سند امضا شده دیجیتالی ارسال می کنید، گواهی و کلید عمومی خود را نیز ارسال می کنید.

Aspose.Words به شما امکان می دهد گواهی X.509 ایجاد کنید، گواهی دیجیتالی که از استاندارد بین المللی پذیرفته شده X.509 PKI برای تأیید اینکه یک کلید عمومی متعلق به امضاکننده موجود در گواهی است استفاده می کند. برای این کار از متد [Create](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/certificateholder/create/) در کلاس [CertificateHolder](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/certificateholder/) استفاده کنید.

بخش‌های بعدی نحوه اضافه کردن امضای دیجیتال، خط امضا و نحوه امضای یک سند PDF تولید شده را توضیح می‌دهد.

### یک سند را امضا کنید

Aspose.Words به شما امکان می دهد یک سند DOC، DOCX، XPS یا ODT را به صورت دیجیتالی با استفاده از روش [Sign](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/sign/#sign/) و ویژگی های [SignOptions](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/signoptions/) امضا کنید.

مثال کد زیر نحوه امضای اسناد با استفاده از دارنده گواهی و گزینه های امضا را نشان می دهد:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "sign-document.cs" >}}

### یک خط امضا اضافه کنید

خط امضا یک نمایش تصویری از امضای دیجیتال در یک سند است. Aspose.Words به شما امکان می دهد با استفاده از روش [DocumentBuilder.InsertSignatureLine](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertsignatureline/) یک خط امضا را وارد کنید. همچنین می توانید پارامترهای این نمایش را با استفاده از کلاس [SignatureLineOptions](https://reference.aspose.com/words/net/aspose.words/signaturelineoptions/) تنظیم کنید.

به عنوان مثال، تصویر زیر نشان می دهد که چگونه می توان امضاهای معتبر و نامعتبر را نمایش داد.

<img src="/words/net/working-with-digital-signatures/valid.png" alt="طراحی" style="width:300px"/>

<img src="/words/net/working-with-digital-signatures/invalid.png" alt="طراحی" style="width:300px"/>

همچنین، اگر سندی حاوی خط امضا باشد و امضای دیجیتالی نداشته باشد، قابلیتی وجود دارد که از کاربر بخواهد امضای خود را اضافه کند.

مثال کد زیر نحوه امضای یک سند با گواهی شخصی و یک خط امضای خاص را نشان می دهد:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "create-new-signature-line-and-set-provider-id.cs" >}}

### یک سند PDF تولید شده {#sign-a-generated-pdf-document} را امضا کنید

Aspose.Words به شما اجازه می دهد تا با استفاده از ویژگی های [PdfDigitalSignatureDetails](https://reference.aspose.com/words/net/aspose.words.saving/pdfdigitalsignaturedetails/) تمام جزئیات یک سند PDF را امضا کرده و دریافت کنید.

مثال کد زیر نحوه امضای PDF تولید شده را نشان می دهد:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "digitally-signed-pdf-using-certificate-holder.cs" >}}

## ارزش امضای دیجیتال را بازیابی کنید

Aspose.Words همچنین توانایی بازیابی مقدار امضای دیجیتال را از یک سند امضا شده دیجیتالی به عنوان یک آرایه بایت با استفاده از ویژگی [SignatureValue](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignature/signaturevalue/) فراهم می کند.

مثال کد زیر نشان می دهد که چگونه می توان مقدار امضای دیجیتال را به عنوان یک آرایه بایت از یک سند بدست آورد:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "signature-value.cs" >}}

## امضای دیجیتال را حذف کنید

Aspose.Words به شما اجازه می دهد تا با استفاده از روش [RemoveAllSignatures](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/removeallsignatures/#removeallsignatures/) تمام امضاهای دیجیتال را از یک سند امضا شده حذف کنید.

مثال کد زیر نحوه بارگیری و حذف امضای دیجیتال از یک سند را نشان می دهد:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "remove-signatures.cs" >}}

{{% alert color="primary" %}}

توجه داشته باشید که نمی توانید تنها یک امضای دیجیتال را در سند خود حذف کنید.

{{% /alert %}}
