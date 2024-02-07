---
title: تبدیل Word به Excel در Python
second_title: Aspose.Words برای Python via .NET
articleTitle: تبدیل یک سند به اکسل
linktitle: تبدیل یک سند به اکسل
description: "تبدیل PDF به Excel، XML به Excel، DOCX به Excel Python. با استفاده از Python یک سند را در قالب های مختلف در XLSX ذخیره کنید."
type: docs
weight: 15
url: /fa/python-net/convert-a-document-to-excel/
---

تبدیل اسناد از یک فرمت به فرمت دیگر از ویژگی های شاخص Aspose.Words است. می توانید اسناد را در هر [فرمت بارگذاری](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) موجود نیز به فرمت XLSX تبدیل کنید.

## یک سند را به XLSX تبدیل کنید

تبدیل یک سند به XLSX یک فرآیند نسبتاً پیچیده است. برای ذخیره سند خود در قالب XLSX با استفاده از Aspose.Words، از کلاس [XlsxSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/) و عنصر `Xlsx` جدید در شمارش [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) استفاده کنید. همانطور که در بالا ذکر شد، می توانید سند را در هر فرمت بارگیری که توسط Aspose.Words پشتیبانی می شود در XLSX ذخیره کنید.

مثال کد زیر نحوه ذخیره PDF در XLSX را نشان می دهد:

{{< highlight python >}}
doc = aw.Document(docs_base.my_dir + "Pdf Document.pdf")

doc.save(docs_base.artifacts_dir + "BaseConversions.PdfToXlsx.xlsx")
{{< /highlight >}}

{{% alert color="primary" %}}

گاهی اوقات لازم است گزینه های اضافی را مشخص کنید که می تواند بر نتیجه ذخیره یک سند به عنوان XLSX تأثیر بگذارد. این گزینه ها را می توان با استفاده از کلاس [XlsxSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/) مشخص کرد که حاوی ویژگی هایی است که نحوه نمایش خروجی XLSX را تعیین می کند.

{{% /alert %}}

## هنگام ذخیره در XLSX پیدا کنید و جایگزین کنید

همچنین با استفاده از Aspose.Words، می‌توانید یک رشته یا عبارت معمولی را در سند خود پیدا کنید و آن را با عبارت مورد نیاز خود جایگزین کنید. سپس می توانید نتیجه را در قالب XLSX نیز ذخیره کنید.

مثال کد زیر نحوه انجام عملیات Find و جایگزینی و ذخیره نتیجه در XLSX را نشان می دهد:

{{< highlight python >}}
from aspose.words import Document, DocumentBuilder
from aspose.words.replacing import FindReplaceOptions

doc =  Document()

builder = DocumentBuilder(doc)
builder.writeln("Ruby bought a ruby necklace.")

# We can use a "FindReplaceOptions" object to modify the find - and -replace process.
options = FindReplaceOptions()

# Set the "match_case" flag to "True" to apply case sensitivity while finding strings to replace.
# Set the "match_case" flag to "False" to ignore character case while searching for text to replace.
options.match_case = True

doc.range.replace("Ruby", "Jade", options)
doc.save(ARTIFACTS_DIR + "BaseConversions.FindReplaceXlsx.xlsx")
{{< /highlight >}}

## هنگام ذخیره در XLSX، سطح فشرده سازی را مشخص کنید

همچنین می توانید سطح فشرده سازی را هنگام ذخیره با استفاده از ویژگی [CompressionLevel](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/compression_level/) مشخص کنید.

مثال کد زیر نحوه تعیین سطح فشرده سازی هنگام ذخیره در فرمت XLSX را نشان می دهد:

{{< highlight python >}}
from aspose.words import Document
from aspose.words.saving import XlsxSaveOptions, CompressionLevel

doc = Document(MY_DIR + "Document.docx")

saveOptions = XlsxSaveOptions()
saveOptions.compression_level = CompressionLevel.MAXIMUM

doc.save(ARTIFACTS_DIR + "BaseConversions.CompressXlsx.xlsx", saveOptions)
{{< /highlight >}}

## همچنین ببینید

- بخش Documentation [از یک سند محافظت یا رمزگذاری کنید](/words/fa/python-net/protect-or-encrypt-a-document/) برای اطلاعات بیشتر در مورد محافظت و رمزگذاری یک سند
- مقاله [پیدا کنید و جایگزین کنید](/words/fa/python-net/find-and-replace/) برای اطلاعات بیشتر در مورد یافتن و جایگزینی محتوای مورد نظر شما
