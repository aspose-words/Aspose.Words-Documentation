---
title: تبدیل ورد به اکسل در C++
second_title: Aspose.Words برای C++
articleTitle: تبدیل یک سند به اکسل
linktitle: تبدیل یک سند به اکسل
description: "تبدیل PDF به اکسل, XML به اکسل, DOCX به اکسل C++. یک سند را در فرمت های مختلف به XLSX با استفاده از C++ ذخیره کنید."
type: docs
weight: 15
url: /fa/cpp/convert-a-document-to-excel/
---

تبدیل اسناد از یک فرمت به فرمت دیگر ویژگی پرچمدار Aspose.Words است. شما می توانید اسناد را در هر فرمت موجود [load format](https://reference.aspose.com/words/cpp/aspose.words/loadformat/) نیز به XLSX تبدیل کنید.

## تبدیل یک سند به XLSX

تبدیل یک سند به XLSX یک فرآیند نسبتا پیچیده است. برای ذخیره سند خود به فرمت XLSX با استفاده از Aspose.Words، از کلاس **XlsxSaveOptions** و عنصر جدید `Xlsx` در شمارش [SaveFormat](https://reference.aspose.com/words/cpp/aspose.words/saveformat/) استفاده کنید. همانطور که در بالا ذکر شد، شما می توانید سند را در هر فرمت بارگذاری پشتیبانی شده توسط Aspose.Words به XLSX ذخیره کنید.

مثال کد زیر نشان می دهد که چگونه PDF را به XLSXذخیره کنید:

{{< highlight cpp >}}
auto doc = MakeObject<Document>(MyDir + u"Pdf Document.pdf");
doc->Save(ArtifactsDir + u"BaseConversions.PdfToXlsx.xlsx");
{{< /highlight >}}

## پیدا کردن و جایگزینی هنگام ذخیره به XLSX

همچنین با استفاده از Aspose.Words، می توانید یک رشته خاص یا عبارت منظم را در سند خود پیدا کنید و آن را با یکی از مطابقت هایی که نیاز دارید جایگزین کنید. سپس می توانید نتیجه را به فرمت XLSX ذخیره کنید.

مثال کد زیر نشان می دهد که چگونه عملیات find and replace را انجام دهیم و نتیجه را به XLSXذخیره کنیم:

{{< highlight cpp >}}
auto doc = MakeObject<Document>();
auto builder = MakeObject<DocumentBuilder>(doc);

builder->Writeln(u"Ruby bought a ruby necklace.");

// We can use a "FindReplaceOptions" object to modify the find-and-replace process.
auto options = MakeObject<FindReplaceOptions>();
// Set the "MatchCase" flag to "true" to apply case sensitivity while finding strings to replace.
// Set the "MatchCase" flag to "false" to ignore character case while searching for text to replace.
options->set_MatchCase(true);

doc->get_Range()->Replace(u"Ruby", u"Jade", options);
doc->Save(ArtifactsDir + u"BaseConversions.FindReplaceXlsx.xlsx");
{{< /highlight >}}

## سطح فشرده سازی را هنگام ذخیره به XLSXمشخص کنید

همچنین می توانید سطح فشرده سازی را هنگام ذخیره با استفاده از ویژگی **CompressionLevel** مشخص کنید.

مثال کد زیر نشان می دهد که چگونه سطح فشرده سازی را هنگام ذخیره به فرمت XLSX مشخص کنید:

{{< highlight cpp >}}
auto doc = MakeObject<Document>(MyDir + u"Document.docx");
auto saveOptions = MakeObject<XlsxSaveOptions>();
saveOptions->set_CompressionLevel(CompressionLevel::Maximum);

doc->Save(ArtifactsDir + u"BaseConversions.CompressXlsx.xlsx", saveOptions);
{{< /highlight >}}

## بایگانی برچسب برای:

- بخش مستندات [محافظت یا رمزگذاری یک سند](/words/cpp/protect-or-encrypt-a-document/) برای اطلاعات بیشتر در مورد حفاظت و رمزگذاری یک سند
- مقاله [پیدا کردن و جایگزین کردن](/words/cpp/find-and-replace/) برای اطلاعات بیشتر در مورد پیدا کردن و جایگزینی محتوای مورد نظر خود
