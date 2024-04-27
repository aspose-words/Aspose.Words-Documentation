---
title: أرسل كلمة إلى إكسل Java
second_title: Aspose.Words for Java
articleTitle: Convert a Document to Excel
linktitle: Convert a Document to Excel
description: "Convert PDF to Excel, XML to Excel, DOCX to Excel Java. Provide a document in various formats to XLSX using Java."
type: docs
weight: 15
url: /ar/java/convert-a-document-to-excel/
---

وإحالة الوثائق من شكل إلى آخر هي السمة الرئيسية في هذا الصدد Aspose.Words. يمكنك تحويل الوثائق في أي مكان متاح [الشكل](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) أيضاً إلى استمارة XLSX.

## Convert a Document to XLSX

تحويل وثيقة إلى XLSX عملية معقدة إلى حد ما. لتحتفظ بوثيقتك على شكل "إكس إل إس إكس" <span notrans="<span notrans=" Aspose.Words"=""></span>" استخدام [XlsxSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/) الصف الجديد `Xlsx` العنصر في [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) العد كما ذُكر أعلاه، يمكنكم أن تُنقذوا الوثيقة في أي شكل من أشكال الحمولة تدعمه Aspose.Words إلى XLSX.

The following code example shows how to save PDF to XLSX:

{{< highlight java >}}
Document doc = new Document(getMyDir() + "Pdf Document.pdf");
doc.save(getArtifactsDir() + "BaseConversions.PdfToXlsx.xlsx");
{{< /highlight >}}

{{% alert color="primary" %}}

وفي بعض الأحيان، من الضروري تحديد خيارات إضافية يمكن أن تؤثر على نتيجة توفير وثيقة ما كرمز XLSX. ويمكن تحديد هذه الخيارات باستخدام [XlsxSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/) درجة، تحتوي على خصائص تحدد كيفية عرض ناتج XLSX.

{{% /alert %}}

## البحث والاستبدال عندما ينقذون XLSX

أيضاً Aspose.Words, يمكنك العثور على خيط محدد أو تعبير منتظم في وثيقتك واستبداله مع واحد مطابق تحتاج. ثم يمكنك أيضاً أن تنقذ النتيجة إلى "إكس إل إس إكس"

The following code example shows how to perform find and replace operation and save result to XLSX:

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

## تحديد مستوى الضغط عند الانتقال إلى XLSX

يمكنك أيضا تحديد مستوى الضغط عند الادخار باستخدام [CompressionLevel](https://reference.aspose.com/words/java/com.aspose.words/compressionlevel/) ملكية

The following code example shows how to specify the compression level whenving to XLSX format:

{{< highlight java >}}
Document doc = new Document(getMyDir() + "Document.docx");
XlsxSaveOptions saveOptions = new XlsxSaveOptions();
saveOptions.setCompressionLevel(CompressionLevel.MAXIMUM);

doc.save(getArtifactsDir() + "BaseConversions.CompressXlsx.xlsx", saveOptions);
{{< /highlight >}}

## انظر أيضا

- قسم الوثائق [حماية أو اشتراع وثيقة](/words/ar/java/protect-or-encrypt-a-document/) للمزيد من المعلومات عن حماية وتشفير وثيقة
- المادة [البحث والاستبدال](/words/ar/java/find-and-replace/) للحصول على المزيد من المعلومات عن إيجاد واستبدال المحتوى الذي تريده
