---
title: تبدیل ورد به اکسل در Java
second_title: Aspose.Words برای Java
articleTitle: تبدیل یک سند به اکسل
linktitle: تبدیل یک سند به اکسل
description: "تبدیل PDF به اکسل, XML به اکسل, DOCX به اکسل Java. یک سند را در فرمت های مختلف به XLSX با استفاده از Java ذخیره کنید."
type: docs
weight: 15
url: /fa/java/convert-a-document-to-excel/
timestamp: 2024-01-31-14-23-37
---

تبدیل اسناد از یک فرمت به فرمت دیگر ویژگی پرچمدار Aspose.Words است. شما می توانید اسناد را در هر فرمت موجود [فرمت بار](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) نیز به XLSX تبدیل کنید.

## تبدیل یک سند به XLSX

تبدیل یک سند به XLSX یک فرآیند نسبتا پیچیده است. برای ذخیره سند خود به فرمت XLSX با استفاده از Aspose.Words، از کلاس [XlsxSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/) و عنصر جدید `Xlsx` در شمارش [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) استفاده کنید. همانطور که در بالا ذکر شد، شما می توانید سند را در هر فرمت بارگذاری پشتیبانی شده توسط Aspose.Words به XLSX ذخیره کنید.

مثال کد زیر نشان می دهد که چگونه PDF را به XLSXذخیره کنید:

{{< highlight java >}}
Document doc = new Document(getMyDir() + "Pdf Document.pdf");
doc.save(getArtifactsDir() + "BaseConversions.PdfToXlsx.xlsx");
{{< /highlight >}}

{{% alert color="primary" %}}

گاهی اوقات لازم است گزینه های اضافی را مشخص کنید که می تواند بر نتیجه ذخیره یک سند به عنوان XLSX تأثیر بگذارد. این گزینه ها را می توان با استفاده از کلاس [XlsxSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/) مشخص کرد که شامل ویژگی هایی است که تعیین می کند که چگونه خروجی XLSX نمایش داده می شود.

{{% /alert %}}

## پیدا کردن و جایگزینی هنگام ذخیره به XLSX

همچنین با استفاده از Aspose.Words، می توانید یک رشته خاص یا عبارت منظم را در سند خود پیدا کنید و آن را با یکی از مطابقت هایی که نیاز دارید جایگزین کنید. سپس می توانید نتیجه را به فرمت XLSX ذخیره کنید.

مثال کد زیر نشان می دهد که چگونه عملیات find and replace را انجام دهیم و نتیجه را به XLSXذخیره کنیم:

{{< highlight java >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

builder.writeln("Ruby bought a ruby necklace.");

// We can use a "FindReplaceOptions" object to modify the find-and-replace process.
FindReplaceOptions options = new FindReplaceOptions();
// Set the "MatchCase" flag to "true" to apply case sensitivity while finding strings to replace.
// Set the "MatchCase" flag to "false" to ignore character case while searching for text to replace.
options.setMatchCase(true);

doc.getRange().replace("Ruby", "Jade", options);
doc.save(getArtifactsDir() + "BaseConversions.FindReplaceXlsx.xlsx");
{{< /highlight >}}

## سطح فشرده سازی را هنگام ذخیره به XLSXمشخص کنید

همچنین می توانید سطح فشرده سازی را هنگام ذخیره با استفاده از ویژگی [CompressionLevel](https://reference.aspose.com/words/java/com.aspose.words/compressionlevel/) مشخص کنید.

مثال کد زیر نشان می دهد که چگونه سطح فشرده سازی را هنگام ذخیره به فرمت XLSX مشخص کنید:

{{< highlight java >}}
Document doc = new Document(getMyDir() + "Document.docx");
XlsxSaveOptions saveOptions = new XlsxSaveOptions();
saveOptions.setCompressionLevel(CompressionLevel.MAXIMUM);

doc.save(getArtifactsDir() + "BaseConversions.CompressXlsx.xlsx", saveOptions);
{{< /highlight >}}

## بایگانی برچسب برای:

- بخش مستندات [محافظت یا رمزگذاری یک سند](/words/java/protect-or-encrypt-a-document/) برای اطلاعات بیشتر در مورد حفاظت و رمزگذاری یک سند
- مقاله [پیدا کردن و جایگزین کردن](/words/java/find-and-replace/) برای اطلاعات بیشتر در مورد پیدا کردن و جایگزینی محتوای مورد نظر خود
