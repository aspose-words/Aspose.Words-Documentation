---
title: کار با امضای دیجیتال در C++
second_title: Aspose.Words برای C++
articleTitle: کار با امضای دیجیتال
linktitle: کار با امضای دیجیتال
description: "اسناد را به صورت دیجیتال امضا کنید و امضای دیجیتال موجود را شناسایی، شمارش، تأیید و حذف کنید."
type: docs
weight: 160
url: /fa/cpp/working-with-digital-signatures/
timestamp: 2024-01-27-14-07-04
---

امضای دیجیتال یک پیاده سازی تکنولوژیکی از امضای الکترونیکی برای امضای اسناد و تأیید هویت امضا کننده است تا تضمین کند که یک سند از زمان امضای آن اصلاح نشده است. هر امضای دیجیتال برای هر امضا کننده منحصر به فرد است زیرا از پروتکل PKI برای تولید کلیدهای عمومی و خصوصی پیروی می کند. امضای یک سند به صورت دیجیتال به معنای ایجاد یک امضا با استفاده از کلید خصوصی امضا کننده است که در آن یک الگوریتم ریاضی برای رمزگذاری هش تولید شده استفاده می شود.

Aspose.Words به شما اجازه می دهد تا امضای دیجیتال موجود را شناسایی، شمارش یا تأیید کنید و همچنین یک امضای جدید به سند خود اضافه کنید تا هرگونه دستکاری در آن را پیدا کنید. همچنین می توانید تمام امضاهای دیجیتال را از یک سند حذف کنید. از کلاس [DigitalSignatureUtil](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/) برای کار با امضای دیجیتال استفاده کنید.

این مقاله توضیح می دهد که چگونه همه موارد فوق را برای تأیید صحت و یکپارچگی یک سند دیجیتال انجام دهیم.

{{% alert color="primary" %}}

**سعی کنید آنلاین**

شما می توانید این قابلیت را با ما امتحان کنید [امضای آنلاین رایگان](https://products.aspose.app/words/signature).

{{% /alert %}}

## فرمت های پشتیبانی شده

Aspose.Words به شما اجازه می دهد تا با امضای دیجیتال در اسناد DOC، OOXML و ODT کار کنید و سند تولید شده را در فرمت PDF یا XPS امضا کنید.

## محدودیت های امضای دیجیتال

جدول زیر چند محدودیت را که ممکن است در هنگام کار با امضای دیجیتال از طریق Aspose.Words و همچنین برخی از گزینه های جایگزین با آن روبرو شوید، توصیف می کند.

| محدودیت | گزینه جایگزین |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| از دست دادن امضای دیجیتال در یک سند پس از بارگذاری و ذخیره آن. بنابراین، پردازش یک سند به یک سرور ممکن است باعث از دست دادن تمام امضای دیجیتال بدون اطلاع قبلی شود. | بررسی کنید که آیا یک سند دارای امضای دیجیتال است و در صورت وجود اقدام مناسب را انجام دهید. به عنوان مثال، به مشتریان هشدار دهید و به آنها اطلاع دهید که سندی که آپلود می کنند حاوی امضای دیجیتالی است که در صورت پردازش از دست می رود. |
| Aspose.Words از کار با ماکروها در یک سند پشتیبانی می کند. اما Aspose.Words هنوز از امضای دیجیتال در ماکروها پشتیبانی نمی کند. | سند را به هر فرمت ورد صادر کنید و از Microsoft Word برای اضافه کردن یک امضای دیجیتال به ماکروها استفاده کنید. |

## تشخیص، شمارش و تأیید امضای دیجیتال

Aspose.Words به شما اجازه می دهد تا امضای دیجیتال را در یک سند با استفاده از روش [DetectFileFormat](https://reference.aspose.com/words/cpp/aspose.words/fileformatutil/detectfileformat/) و ویژگی [HasDigitalSignature](https://reference.aspose.com/words/cpp/aspose.words/fileformatinfo/get_hasdigitalsignature/) تشخیص دهید. شایان ذکر است که چنین چک فقط واقعیت امضا را تشخیص می دهد، اما اعتبار آن را تشخیص نمی دهد.

یک سند را می توان بیش از یک بار امضا کرد و این کار را کاربران مختلف می توانند انجام دهند. برای بررسی اعتبار امضای دیجیتال، باید آنها را با استفاده از روش [LoadSignatures](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/loadsignatures/) از سند بارگیری کنید و از ویژگی [IsValid](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignaturecollection/get_isvalid/) استفاده کنید. همچنین Aspose.Words به شما اجازه می دهد تا مجموعه ای از تمام امضای دیجیتال را در یک سند با استفاده از ویژگی [Count](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignaturecollection/get_count/) بشمارید.

همه اینها یک راه کارآمد و ایمن برای بررسی یک سند برای امضا قبل از پردازش آن فراهم می کند.

مثال کد زیر نشان می دهد که چگونه وجود امضای دیجیتال را تشخیص داده و آنها را تأیید کنید:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "detect-document-signatures.h" >}}

## یک امضای دیجیتال ایجاد کنید {#create-a-digital-signature}

برای ایجاد یک امضای دیجیتال، شما باید یک گواهی امضا را که هویت را تأیید می کند، بارگذاری کنید. وقتی یک سند امضا شده دیجیتالی ارسال می کنید، گواهی و کلید عمومی خود را نیز ارسال می کنید.

Aspose.Words به شما اجازه می دهد تا گواهی X. 509 را ایجاد کنید، یک گواهی دیجیتال که از استاندارد x. 509 PKI بین المللی پذیرفته شده برای تأیید اینکه یک کلید عمومی متعلق به امضا کننده است که در داخل گواهی گنجانده شده است. برای انجام این کار، از روش [Create](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/certificateholder/create/) در کلاس [CertificateHolder](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/certificateholder) استفاده کنید.

بخش های بعدی توضیح می دهند که چگونه یک امضای دیجیتال، خط امضا و نحوه امضای یک سند PDF تولید شده را اضافه کنیم.

### یک سند را امضا کنید

Aspose.Words به شما اجازه می دهد تا با استفاده از روش [Sign](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/sign/) و ویژگی های [SignOptions](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/signoptions/) یک سند DOC، DOCX یا ODT را به صورت دیجیتال امضا کنید.

مثال کد زیر نشان می دهد که چگونه اسناد را با استفاده از یک صاحب گواهینامه و گزینه های امضا امضا کنید:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "sign-document.h" >}}

### یک خط امضا اضافه کنید

خط امضا یک نمایش بصری از یک امضای دیجیتال در یک سند است. Aspose.Words به شما اجازه می دهد تا یک خط امضا را با استفاده از روش [DocumentBuilder.InsertSignatureLine](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertsignatureline/) وارد کنید. همچنین می توانید پارامترهای این نمایش را با استفاده از کلاس [SignatureLineOptions](https://reference.aspose.com/words/cpp/aspose.words/signaturelineoptions/) تنظیم کنید.

به عنوان مثال، تصویر زیر نشان می دهد که چگونه امضاهای معتبر و نامعتبر می توانند نمایش داده شوند.

<img src="valid.png" alt="valid-signature" style="width:300px"/>

<img src="invalid.png" alt="invalid-signature" style="width:300px"/>

همچنین، اگر یک سند حاوی یک خط امضا و بدون امضای دیجیتال باشد، یک ویژگی وجود دارد که از کاربر می خواهد یک امضا اضافه کند.

مثال کد زیر نشان می دهد که چگونه یک سند با گواهی شخصی و یک خط امضای خاص را امضا کنید:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "create-new-signature-line-and-set-provider-id.h" >}}

### یک سند PDF تولید شده را امضا کنید {#sign-a-generated-pdf-document}

Aspose.Words به شما اجازه می دهد تا تمام جزئیات یک سند PDF را با استفاده از ویژگی های [PdfDigitalSignatureDetails](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfdigitalsignaturedetails/) امضا و دریافت کنید.

مثال کد زیر نشان می دهد که چگونه یک PDFتولید شده را امضا کنیم:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "digitally-signed-pdf-using-certificate-holder.h" >}}

## مقدار امضای دیجیتال را بازیابی کنید

Aspose.Words همچنین امکان بازیابی مقدار امضای دیجیتال از یک سند امضا شده دیجیتال را به عنوان یک آرایه بایت با استفاده از ویژگی [SignatureValue](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignature/get_signaturevalue/) فراهم می کند.

مثال کد زیر نشان می دهد که چگونه مقدار امضای دیجیتال را به عنوان یک آرایه بایت از یک سند بدست آوریم:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "signature-value.h" >}}

## حذف امضای دیجیتال

Aspose.Words به شما اجازه می دهد تا تمام امضاهای دیجیتال را از یک سند امضا شده با استفاده از روش [RemoveAllSignatures](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/removeallsignatures/) حذف کنید.

مثال کد زیر نشان می دهد که چگونه امضاهای دیجیتال را از یک سند بارگذاری و حذف کنید:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "remove-signatures.h" >}}

{{% alert color="primary" %}}

توجه داشته باشید که شما نمی توانید تنها یک امضای دیجیتال را در سند خود حذف کنید.

{{% /alert %}}
