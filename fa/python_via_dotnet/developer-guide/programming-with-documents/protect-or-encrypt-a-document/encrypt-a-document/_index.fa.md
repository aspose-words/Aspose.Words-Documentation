---
title: یک سند را در Python رمزگذاری کنید
second_title: Aspose.Words برای Python via .NET
articleTitle: رمزگذاری یک سند
linktitle: رمزگذاری یک سند
description: "سند خود را با استفاده از الگوریتم های رمزگذاری مناسب برای فرمت های سند خاص در Python رمزگذاری کنید."
type: docs
weight: 20
url: /fa/python-net/encrypt-a-document/
---

رمزگذاری فرآیندی است که متن قابل خواندن را به دنباله‌های بی‌معنی از بایت‌ها ترجمه می‌کند، بنابراین تنها توسط شخصی که کلید رمزگشایی یا کد مخفی را در اختیار دارد می‌تواند بخواند. این فرآیند نقش مهمی در امنیت محتوای شما دارد. این به رمزگذاری محتوا، تأیید منشأ یک سند، اثبات عدم تغییر محتوا پس از ارسال و اطمینان از ایمن بودن داده های سند کمک می کند.

این مقاله توضیح می دهد که چگونه Aspose.Words به شما امکان می دهد یک سند را رمزگذاری کنید و چگونه بررسی کنید که آیا یک سند دارای رمزگذاری است یا خیر.

## رمزگذاری با رمز عبور

برای رمزگذاری یک سند، از ویژگی **کلمه عبور** برای ارائه رمز عبوری که به عنوان کلید رمزگذاری عمل می کند، استفاده کنید. با این کار محتوای سند شما تغییر می کند و آن را غیرقابل خواندن می کند. سند رمزگذاری شده باید قبل از باز شدن این رمز عبور وارد شود.

{{% alert color="primary" %}}

می توانید ویژگی **کلمه عبور** مناسب برای فرمت مورد نیاز را پیدا کنید. هر فرمت ذخیره سند در ماژول [aspose.words.saving](https://reference.aspose.com/words/python-net/aspose.words.saving/) دارای یک کلاس مربوطه است که حاوی گزینه های ذخیره برای این قالب است. به عنوان مثال، ویژگی [password](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/password/) در کلاس [DocSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/) برای DOC، یا ویژگی [password](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/password/) در کلاس [OoxmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/) برای DOCX، DOCM، DOTX، DOTM و FlatOpc.

{{% /alert %}}

{{% alert color="primary" %}}

توجه داشته باشید که فقط فرمت های سند خاصی از رمزگذاری پشتیبانی می کنند. به عنوان مثال، RTF از رمزگذاری پشتیبانی نمی کند.

{{% /alert %}}

جدول زیر فرمت ها و الگوریتم های رمزگذاری پشتیبانی شده توسط Aspose.Words را فهرست می کند:

| قالب |  پشتیبانی از رمزگذاری هنگام بارگذاری |  پشتیبانی از رمزگذاری هنگام ذخیره |
|  ------------------------------------------------------------  |  -----------------------------------------------------------  |  --------------------------------------------  |
|  DOC، DOT |  رمزگذاری XOR40 بیتی RC4 EncryptionCryptoAPI رمزگذاری RC4 |  رمزگذاری RC4 (40 بیتی) |
|  DOCX، DOTX، DOCM، DOTM، FlatOPC، FlatOpcTemplate، FlatOpcMacroEnabled، FlatOpcTemplateMacroEnabled |  رمزگذاری استاندارد ECMA-376 رمزگذاری چابک ECMA-376 |  رمزگذاری استاندارد ECMA-376 (AES128 + SHA1) |
|  ODT، OTT |  رمزگذاری ODF (Blowfish/AES) |  رمزگذاری ODF (AES256 + SHA256) |
|  PDF |                                                          |  رمزگذاری RC4 (40/128 بیت) |

مثال کد زیر نحوه رمزگذاری یک سند با رمز عبور را نشان می دهد:

{{< highlight python >}}
import aspose.words as aw

# Create a document.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.write("Hello world!")

# DocSaveOptions only applies to Doc and Dot save formats.
options = aw.saving.DocSaveOptions(aw.SaveFormat.DOC);

// Set a password with which the document will be encrypted, and which will be required to open it.
options.password = "MyPassword"
doc.save(artifacts_dir + "DocSaveOptions.SaveAsDoc.doc", options)
{{< /highlight >}}

## بررسی کنید که آیا یک سند رمزگذاری شده است

در برخی موارد، ممکن است سندی غیرقابل خواندن داشته باشید و بخواهید مطمئن شوید که سند رمزگذاری شده است و خراب یا فشرده نشده است.

برای تشخیص رمزگذاری یک سند و نیاز به رمز عبور، می توانید از ویژگی [is_encrypted](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/is_encrypted/) کلاس [FileFormatInfo](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/) استفاده کنید. این ویژگی همچنین به شما این امکان را می دهد که قبل از بارگذاری یک سند، اقداماتی را انجام دهید، به عنوان مثال، به کاربر اطلاع دهید که رمز عبور را ارائه دهد.

مثال کد زیر نحوه تشخیص رمزگذاری سند را نشان می دهد:

{{< highlight python >}}
import aspose.words as aw

# Create a document.
doc = aw.Document()
saveOptions = aw.saving.OdtSaveOptions(aw.SaveFormat.ODT)
saveOptions.password = "MyPassword"

doc.Save(artifacts_dir + "File.DetectDocumentEncryption.odt", saveOptions)
            
# Create a `FileFormatInfo` object for this document.
info = aw.FileFormatUtil.detect_file_format(artifacts_dir + "File.DetectDocumentEncryption.odt")

# Verify the encryption status of our document.
self.assertTrue(info.is_encrypted)
{{< /highlight >}}

## یک سند را با یا بدون رمز عبور باز کنید

وقتی مطمئن شدیم که یک سند رمزگذاری شده است، می‌توانیم سعی کنیم این سند را بدون رمز عبور باز کنیم، که باید منجر به استثنا شود.

مثال کد زیر نشان می دهد که چگونه می توان یک سند رمزگذاری شده را بدون رمز عبور باز کرد:

{{< highlight python >}}
import aspose.words as aw

# Create a document.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.write("Hello world!")

# OoxmlSaveOptions only applies to Docx, Docm, Dotx, Dotm, or FlatOpc formats.
options = aw.saving.OoxmlSaveOptions(aw.SaveFormat.DOCX)

# Set a password with which the document will be encrypted, and which will be required to open it.
options.password = "MyPassword"
doc.Save(artifacts_dir + "OoxmlSaveOptions.SaveAsDocx.docx", options)

# We will not be able to open this document with Microsoft Word or
# Aspose.Words without providing the correct password.
# The following line will throw an exception.
doc = aw.Document(artifacts_dir + "OoxmlSaveOptions.Password.docx"))
{{< /highlight >}}

بعد از اینکه دیدیم یک سند رمزگذاری شده بدون رمز باز نمی شود، می توانیم با وارد کردن رمز عبور سعی کنیم آن را باز کنیم.

مثال کد زیر نشان می دهد که چگونه می توان یک سند رمزگذاری شده را با رمز عبور باز کرد:

{{< highlight python >}}
import aspose.words as aw

# Create a document.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.write("Hello world!")

# OoxmlSaveOptions only applies to Docx, Docm, Dotx, Dotm, or FlatOpc formats.
options = aw.saving.OoxmlSaveOptions(aw.SaveFormat.DOCX)

# Set a password with which the document will be encrypted, and which will be required to open it.
options.password = "MyPassword"
doc.Save(artifacts_dir + "OoxmlSaveOptions.SaveAsDocx.docx", options)

# Open the encrypted document by passing the correct password in a `LoadOptions` object.
doc = aw.Document(artifacts_dir + "OoxmlSaveOptions.Password.docx", aw.loading.LoadOptions("MyPassword"))

self.assertEqual("Hello world!", doc.get_text().strip())
{{< /highlight >}}
