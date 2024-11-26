---
title: تحويل Word إلى Excel في C#
second_title: Aspose.Words لـ .NET
articleTitle: تحويل مستند إلى Excel
linktitle: تحويل مستند إلى Excel
description: "تحويل PDF إلى Excel، XML إلى Excel، DOCX إلى Excel C#. احفظ مستندًا بتنسيقات مختلفة إلى XLSX باستخدام C#."
type: docs
weight: 15
url: /ar/net/convert-a-document-to-excel/
timestamp: 2024-07-09-19-00-42
---

يعد تحويل المستندات من تنسيق إلى آخر الميزة الرئيسية لـ Aspose.Words. يمكنك تحويل المستندات بأي تنسيق [تنسيق التحميل](https://reference.aspose.com/words/ar/net/aspose.words/loadformat/) متاح أيضًا إلى تنسيق XLSX.

## تحويل مستند إلى XLSX

يعد تحويل مستند إلى XLSX عملية معقدة إلى حد ما. لحفظ مستندك بتنسيق XLSX باستخدام Aspose.Words، استخدم فئة [XlsxSaveOptions](https://reference.aspose.com/words/ar/net/aspose.words.saving/xlsxsaveoptions/) وعنصر `Xlsx` الجديد في تعداد [SaveFormat](https://reference.aspose.com/words/ar/net/aspose.words/saveformat/). كما ذكرنا أعلاه، يمكنك حفظ المستند بأي تنسيق تحميل يدعمه Aspose.Words إلى XLSX.

يوضح مثال التعليمات البرمجية التالي كيفية حفظ PDF إلى XLSX:

{{< highlight csharp >}}
Document doc = new Document(MyDir + "Pdf Document.pdf");
doc.Save(ArtifactsDir + "BaseConversions.PdfToXlsx.xlsx")
{{< /highlight >}}

{{% alert color="primary" %}}

في بعض الأحيان يكون من الضروري تحديد خيارات إضافية، والتي يمكن أن تؤثر على نتيجة حفظ مستند بتنسيق XLSX. يمكن تحديد هذه الخيارات باستخدام فئة [XlsxSaveOptions](https://reference.aspose.com/words/ar/net/aspose.words.saving/xlsxsaveoptions/)، التي تحتوي على خصائص تحدد كيفية عرض مخرجات XLSX.

{{% /alert %}}

## البحث والاستبدال عند الحفظ في XLSX

باستخدام Aspose.Words أيضًا، يمكنك العثور على سلسلة محددة أو تعبير عادي في مستندك واستبداله بالتعبير المطابق الذي تحتاجه. ثم يمكنك أيضًا حفظ النتيجة بتنسيق XLSX.

يوضح مثال التعليمات البرمجية التالي كيفية إجراء عملية البحث والاستبدال وحفظ النتيجة في XLSX:

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

## حدد مستوى الضغط عند الحفظ في XLSX

يمكنك أيضًا تحديد مستوى الضغط عند الحفظ باستخدام خاصية [CompressionLevel](https://reference.aspose.com/words/ar/net/aspose.words.saving/xlsxsaveoptions/compressionlevel/).

يوضح مثال التعليمات البرمجية التالي كيفية تحديد مستوى الضغط عند الحفظ بتنسيق XLSX:

{{< highlight csharp >}}
Document doc = new Document(MyDir + "Document.docx");

XlsxSaveOptions saveOptions = new XlsxSaveOptions();
saveOptions.CompressionLevel = CompressionLevel.Maximum;

doc.Save(ArtifactsDir + "BaseConversions.CompressXlsx.xlsx", saveOptions);
{{< /highlight >}}

## أنظر أيضا

- قسم التوثيق [حماية أو تشفير مستند](/words/ar/net/protect-or-encrypt-a-document/) لمزيد من المعلومات حول حماية وتشفير المستند
- المقالة [البحث والاستبدال](/words/ar/net/find-and-replace/) لمزيد من المعلومات حول البحث عن المحتوى الذي تريده واستبداله
