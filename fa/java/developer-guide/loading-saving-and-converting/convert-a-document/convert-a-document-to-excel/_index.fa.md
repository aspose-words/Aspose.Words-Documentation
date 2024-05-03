---
title: تبدیل کلمه به اکسل در Java
second_title: Aspose.Words برای Java
articleTitle: تبدیل یک سند به اکسل
linktitle: تبدیل یک سند به اکسل
description: "تبدیل PDF به اکسل، XML به اکسل، DOCX به اکسل Java... ذخیره یک سند در فرمت های مختلف به XLSX با استفاده از Java..."
type: docs
weight: 15
url: /fa/java/convert-a-document-to-excel/
---

تبدیل اسناد از یک فرمت به فرمت دیگر، ویژگی پرچم دار است Aspose.Words... شما می توانید اسناد را در هر موجود تبدیل کنید [Load Format](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) همچنین فرمت XLSX

## تبدیل یک سند به XLSX

تبدیل یک سند به XLSX یک فرآیند نسبتا پیچیده است. برای ذخیره سند خود را به فرمت XLSX با استفاده از <span notrans="<span notrans=" Aspose.Words"=""></span>"> استفاده از [XlsxSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/) کلاس و کلاس جدید `Xlsx` عنصر در [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) تکرار همانطور که در بالا ذکر شد، شما می توانید سند را در هر فرمت بار پشتیبانی شده توسط Aspose.Words به XLSX

مثال کد زیر نشان می دهد که چگونه PDF را به XLSX ذخیره کنیم:

{{< highlight java >}}
Document doc = new Document(getMyDir() + "Pdf Document.pdf");
doc.save(getArtifactsDir() + "BaseConversions.PdfToXlsx.xlsx");
{{< /highlight >}}

{{% alert color="primary" %}}

گاهی اوقات لازم است گزینه های اضافی را مشخص کنید که می تواند بر نتیجه صرفه جویی در یک سند به عنوان XLSX تاثیر بگذارد. این گزینه ها را می توان با استفاده از [XlsxSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/) کلاس، حاوی خواص است که تعیین می کند که چگونه خروجی XLSX نمایش داده خواهد شد.

{{% /alert %}}

## پیدا کردن و جایگزینی در هنگام صرفه جویی در XLSX

همچنین استفاده از Aspose.Words, شما می توانید یک رشته خاص یا بیان منظم را در سند خود پیدا کنید و آن را با مطابقتی که نیاز دارید جایگزین کنید. همچنین می توانید نتیجه را به فرمت XLSX ذخیره کنید.

مثال کد زیر نشان می دهد که چگونه عملیات را پیدا و جایگزین کنیم و نتیجه را به XLSX ذخیره کنیم:

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

## سطح فشرده سازی هنگام صرفه جویی در XLSX

شما همچنین می توانید سطح فشرده سازی را هنگام صرفه جویی در استفاده از [CompressionLevel](https://reference.aspose.com/words/java/com.aspose.words/compressionlevel/) مالکیت

مثال کد زیر نشان می دهد که چگونه سطح فشرده سازی را هنگام صرفه جویی در فرمت XLSX مشخص کنیم:

{{< highlight java >}}
Document doc = new Document(getMyDir() + "Document.docx");
XlsxSaveOptions saveOptions = new XlsxSaveOptions();
saveOptions.setCompressionLevel(CompressionLevel.MAXIMUM);

doc.save(getArtifactsDir() + "BaseConversions.CompressXlsx.xlsx", saveOptions);
{{< /highlight >}}

## همچنین ببینید

- بخش مستندات [محافظت یا رمزگذاری یک سند](/words/fa/java/protect-or-encrypt-a-document/) اطلاعات بیشتر در مورد محافظت و رمزگذاری یک سند
- مقاله [پیدا کردن و جایگزینی](/words/fa/java/find-and-replace/) برای اطلاعات بیشتر در مورد پیدا کردن و جایگزینی محتوا که می خواهید
