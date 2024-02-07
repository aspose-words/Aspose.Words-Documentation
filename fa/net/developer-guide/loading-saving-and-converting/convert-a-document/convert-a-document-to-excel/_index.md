---
title: تبدیل Word به Excel در C#
second_title: Aspose.Words برای .NET
articleTitle: تبدیل یک سند به اکسل
linktitle: تبدیل یک سند به اکسل
description: "تبدیل PDF به Excel، XML به Excel، DOCX به Excel C#. با استفاده از C# یک سند را با فرمت های مختلف در XLSX ذخیره کنید."
type: docs
weight: 15
url: /fa/net/convert-a-document-to-excel/
---

تبدیل اسناد از یک فرمت به فرمت دیگر از ویژگی های شاخص Aspose.Words است. می توانید اسناد را در هر [فرمت بارگذاری](https://reference.aspose.com/words/net/aspose.words/loadformat/) موجود نیز به فرمت XLSX تبدیل کنید.

## یک سند را به XLSX تبدیل کنید

تبدیل یک سند به XLSX یک فرآیند نسبتاً پیچیده است. برای ذخیره سند خود در قالب XLSX با استفاده از Aspose.Words، از کلاس [XlsxSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/) و عنصر `Xlsx` جدید در شمارش [SaveFormat](https://reference.aspose.com/words/net/aspose.words/saveformat/) استفاده کنید. همانطور که در بالا ذکر شد، می توانید سند را در هر فرمت بارگیری که توسط Aspose.Words پشتیبانی می شود در XLSX ذخیره کنید.

مثال کد زیر نحوه ذخیره PDF در XLSX را نشان می دهد:

{{< highlight csharp >}}
Document doc = new Document(MyDir + "Pdf Document.pdf");
doc.Save(ArtifactsDir + "BaseConversions.PdfToXlsx.xlsx")
{{< /highlight >}}

{{% alert color="primary" %}}

گاهی اوقات لازم است گزینه های اضافی را مشخص کنید که می تواند بر نتیجه ذخیره یک سند به عنوان XLSX تأثیر بگذارد. این گزینه ها را می توان با استفاده از کلاس [XlsxSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/) مشخص کرد که حاوی ویژگی هایی است که نحوه نمایش خروجی XLSX را تعیین می کند.

{{% /alert %}}

## هنگام ذخیره در XLSX پیدا کنید و جایگزین کنید

همچنین با استفاده از Aspose.Words، می‌توانید یک رشته یا عبارت معمولی را در سند خود پیدا کنید و آن را با عبارت مورد نیاز خود جایگزین کنید. سپس می توانید نتیجه را در قالب XLSX نیز ذخیره کنید.

مثال کد زیر نحوه انجام عملیات Find و جایگزینی و ذخیره نتیجه در XLSX را نشان می دهد:

{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

builder.Writeln("Ruby bought a ruby necklace.");

// We can use a "FindReplaceOptions" object to modify the find-and-replace process.
FindReplaceOptions options = new FindReplaceOptions();
// Set the "MatchCase" flag to "true" to apply case sensitivity while finding strings to replace.
// Set the "MatchCase" flag to "false" to ignore character case while searching for text to replace.
options.MatchCase = true;

doc.Range.Replace("Ruby", "Jade", options);
doc.Save(ArtifactsDir + "BaseConversions.FindReplaceXlsx.xlsx");
{{< /highlight >}}

## هنگام ذخیره در XLSX، سطح فشرده سازی را مشخص کنید

همچنین می توانید سطح فشرده سازی را هنگام ذخیره با استفاده از ویژگی [CompressionLevel](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/compressionlevel/) مشخص کنید.

مثال کد زیر نحوه تعیین سطح فشرده سازی هنگام ذخیره در فرمت XLSX را نشان می دهد:

{{< highlight csharp >}}
Document doc = new Document(MyDir + "Document.docx");

XlsxSaveOptions saveOptions = new XlsxSaveOptions();
saveOptions.CompressionLevel = CompressionLevel.Maximum;

doc.Save(ArtifactsDir + "BaseConversions.CompressXlsx.xlsx", saveOptions);
{{< /highlight >}}

## همچنین ببینید

- بخش Documentation [از یک سند محافظت یا رمزگذاری کنید](/words/fa/net/protect-or-encrypt-a-document/) برای اطلاعات بیشتر در مورد محافظت و رمزگذاری یک سند
- مقاله [پیدا کنید و جایگزین کنید](/words/fa/net/find-and-replace/) برای اطلاعات بیشتر در مورد یافتن و جایگزینی محتوای مورد نظر شما
