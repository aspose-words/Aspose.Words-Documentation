---
title: کار با امضای دیجیتال
second_title: Aspose.Words برای Python via .NET
articleTitle: کار با امضای دیجیتال
linktitle: کار با امضای دیجیتال
description: "اسناد را به صورت دیجیتالی امضا کنید و امضاهای دیجیتال موجود را با استفاده از Python شناسایی، شمارش، تأیید و حذف کنید."
type: docs
weight: 40
url: /fa/python-net/working-with-digital-signatures/
---

یک امضای دیجیتال برای احراز هویت یک سند استفاده می شود تا مشخص شود که فرستنده سند همان کسی است که آنها می گویند و محتوای سند دستکاری نشده است.

Aspose.Words از اسناد دارای امضای دیجیتال پشتیبانی می کند و دسترسی به آنها را فراهم می کند و به شما امکان می دهد امضاهای دیجیتال را روی یک سند شناسایی و تأیید کنید و یک سند PDF تولید شده را با گواهی ارائه شده امضا کنید. در حال حاضر امضای دیجیتال در اسناد DOC، OOXML و ODT پشتیبانی می‌شود. امضای اسناد تولید شده در قالب PDF پشتیبانی می شود.

{{% alert color="primary" %}}

**آنلاین امتحان کنید**

می توانید این عملکرد را با [امضای آنلاین رایگان](https://products.aspose.app/words/signature) ما امتحان کنید.

{{% /alert %}}

## امضاهای دیجیتال در باز کردن و ذخیره کردن حفظ نمی شوند

نکته مهمی که باید به آن توجه داشت این است که سندی که با استفاده از Aspose.Words بارگیری و سپس ذخیره شده است، هر گونه امضای دیجیتال امضا شده روی سند را از دست می دهد. این به دلیل طراحی است که امضای دیجیتال تضمین می کند که محتوا تغییر نکرده است و علاوه بر این، هویت افرادی که سند را امضا کرده اند را تأیید می کند. اگر امضاهای اصلی به سند حاصل منتقل شود، این اصول باطل می شود.

به همین دلیل، اگر اسناد آپلود شده در سرور را پردازش کنید، ممکن است به این معنی باشد که ممکن است سندی را که به این روش در سرور خود آپلود شده است بدون اینکه بدانید خراب کنید. بنابراین بهتر است امضای دیجیتالی روی یک سند را بررسی کنید و در صورت یافتن آن اقدام مناسب را انجام دهید، به عنوان مثال می توان یک هشدار برای مشتری ارسال کرد و به آنها اطلاع داد که سندی که ارسال می کند حاوی امضای دیجیتال است که در صورت وجود آن از بین می رود. فرآوری شده. فایل قالب این نمونه را می توانید از [اینجا](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Digitally%20signed.docx) دانلود کنید.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-DetectDocumentSignatures.py" >}}

کد بالا از روش [FileFormatUtil.detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) برای تشخیص اینکه آیا یک سند دارای امضای دیجیتال است بدون اینکه ابتدا سند را بارگیری کند، استفاده می کند. این یک روش کارآمد و ایمن برای بررسی یک سند برای امضا قبل از پردازش آنها است. هنگامی که اجرا شد، متد یک شی [FileFormatInfo](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/) را برمی گرداند که ویژگی [FileFormatInfo.has_digital_signature](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/has_digital_signature/) را ارائه می دهد. اگر سند دارای یک یا چند امضای دیجیتال باشد، این ویژگی true را برمی‌گرداند. توجه به این نکته مهم است که این روش امضاها را تأیید نمی کند، فقط تعیین می کند که آیا امضا وجود دارد یا خیر. اعتبار سنجی امضای دیجیتال در بخش بعدی پوشش داده شده است.

{{% alert color="primary" %}}

همچنین می توانید با بررسی ویژگی `Count` مجموعه [Document.digital_signatures](https://reference.aspose.com/words/python-net/aspose.words/document/digital_signatures/) بررسی کنید که آیا سندی پس از بارگیری دارای امضای دیجیتال است یا خیر.

{{% /alert %}}

## امضاهای دیجیتال در ماکروها (پروژه های VBA)

امضاهای دیجیتال در ماکروها قابل دسترسی یا امضا نیستند. این به این دلیل است که Aspose.Words مستقیماً با ماکروها در یک سند سروکار ندارد. با این حال، امضای دیجیتال در ماکروها هنگام صادرات سند به هر قالب کلمه ای حفظ می شود. این امضاها را می توان در کد VBA حفظ کرد زیرا محتوای باینری ماکروها تغییر نمی کند حتی اگر خود سند اصلاح شود.

### دسترسی و تأیید امضاهای دیجیتال

یک سند می تواند چندین امضای دیجیتال داشته باشد. همه این امضاها از طریق مجموعه [Document.digital_signatures](https://reference.aspose.com/words/python-net/aspose.words/document/digital_signatures/) قابل دسترسی هستند. هر شیء برگشتی یک [DigitalSignature](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/) است که نشان دهنده یک امضای دیجیتال منفرد متعلق به سند است. این به اعضایی امکان می دهد که اعتبار امضا را بررسی کنید.

مهمترین ویژگی برای بررسی با امضای دیجیتال، اعتبار هر امضا در سند است. تمام امضاهای موجود در سند را می توان با فراخوانی ویژگی [DigitalSignatureCollection.is_valid](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignaturecollection/is_valid/) یکباره تأیید کرد. اگر همه امضاهای موجود در سند معتبر باشند یا اگر سند فاقد امضا باشند، true را برمی‌گرداند و اگر حداقل یک امضای دیجیتال معتبر نباشد، false را برمی‌گرداند.

هر امضا نیز می تواند به صورت جداگانه با تماس با [DigitalSignature.is_valid](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/is_valid/) تأیید شود. یک امضا می تواند به دلایل متعددی معتبر نباشد، به عنوان مثال سند از زمان امضا تغییر کرده است یا گواهی منقضی شده است. علاوه بر این، می توان به جزئیات اضافی امضا نیز دسترسی داشت. نمونه کد زیر نحوه تأیید اعتبار هر امضا در یک سند و نمایش اطلاعات اولیه در مورد امضا را نشان می دهد. فایل قالب این نمونه را می توانید از [اینجا](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Digitally%20signed.docx) دانلود کنید.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-AccessAndVerifySignature.py" >}}

## امضای اسناد Word

کلاس [DigitalSignatureUtil](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignatureutil/) روش هایی را برای امضای سند ارائه می دهد. روش [DigitalSignatureUtil.sign](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignatureutil/sign/) سند منبع را با استفاده از [CertificateHolder](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/certificateholder/) داده شده با امضای دیجیتال امضا می کند و سند امضا شده را در جریان مقصد می نویسد

مثال زیر نحوه امضای سند ساده را نشان می دهد

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SingDocument.py" >}}

مثال زیر نحوه امضای سند رمزگذاری شده را نشان می دهد

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SigningEncryptedDocument.py" >}}

### امضای سند Word با خط امضا

می توانید سند مبدأ را با استفاده از [CertificateHolder](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/certificateholder/) و [SignOptions](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/signoptions/) داده شده با امضای دیجیتال امضا کنید و سند امضا شده را در فایل مقصد بنویسید. با استفاده از کلاس [SignOptions](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/signoptions/) می توانید گزینه هایی را برای امضای سند مشخص کنید. مثال زیر نحوه ایجاد خط امضای جدید و سند امضا را نشان می دهد

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-CreatingAndSigningNewSignatureLine.py" >}}

مثال زیر نحوه اصلاح خط امضای موجود و سند امضا را نشان می دهد

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SigningExistingSignatureLine.py" >}}

### امضای سند Word با استفاده از شناسه ارائه دهنده امضا

مثال زیر نحوه امضای سند Word را با استفاده از شناسه ارائه دهنده امضا نشان می دهد. ارائه دهنده خدمات رمزنگاری (CSP) یک ماژول نرم افزار مستقل است که در واقع الگوریتم های رمزنگاری را برای احراز هویت، رمزگذاری و رمزگذاری انجام می دهد. MS Office مقدار {00000000-0000-0000-0000-000000000000} را برای ارائه دهنده امضای پیش فرض خود محفوظ می دارد.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SetSignatureProviderID.py" >}}

### با استفاده از شناسه ارائه دهنده، سند Word امضای خط جدید ایجاد کنید

مثال زیر نحوه ایجاد خط امضا و امضای سند Word را با استفاده از شناسه ارائه دهنده امضا نشان می دهد.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-CreateNewSignatureLineAndSetProviderID.py" >}}

## ارزش امضای دیجیتال را بازیابی کنید

Aspose.Words همچنین توانایی بازیابی مقدار امضای دیجیتال را از یک سند امضا شده دیجیتالی به عنوان یک آرایه بایت با استفاده از ویژگی [SignatureValue](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/signature_value/) فراهم می کند.

مثال کد زیر نشان می دهد که چگونه می توان مقدار امضای دیجیتال را به عنوان یک آرایه بایت از یک سند بدست آورد:

{{< highlight csharp >}}
doc = aw.Document(MY_DIR + "Digitally signed.docx")

for digital_signature in doc.digital_signatures:
    signature_value = base64.b64encode(digital_signature.signature_value)
    print(f"Base64 signature value is: {signature_value}")
{{< /highlight >}}