---
title: تحويل كلمة إلى إكسيل في Java
second_title: Aspose.Words ل Java
articleTitle: تحويل مستند إلى إكسيل
linktitle: تحويل مستند إلى إكسيل
description: "تحويل PDF إلى إكسيل، XML إلى إكسيل، DOCX إلى إكسيل Java. احفظ مستندا بتنسيقات مختلفة إلى XLSX باستخدام Java."
type: docs
weight: 15
url: /ar/java/convert-a-document-to-excel/
timestamp: 2024-01-31-14-23-37
---

يعد تحويل المستندات من تنسيق إلى آخر الميزة الرئيسية لـ Aspose.Words. يمكنك تحويل المستندات بأي تنسيق [تنسيق التحميل](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) متاح أيضا إلى XLSX.

## تحويل مستند إلى XLSX

تحويل مستند إلى XLSX عملية معقدة إلى حد ما. لحفظ المستند بتنسيق XLSX باستخدام Aspose.Words، استخدم فئة [XlsxSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/) والعنصر `Xlsx` الجديد في تعداد [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/). كما ذكر أعلاه، يمكنك حفظ المستند بأي تنسيق تحميل مدعوم من Aspose.Words إلى XLSX.

يوضح مثال الكود التالي كيفية حفظ PDF إلى XLSX:

{{< highlight java >}}
Document doc = new Document(getMyDir() + "Pdf Document.pdf");
doc.save(getArtifactsDir() + "BaseConversions.PdfToXlsx.xlsx");
{{< /highlight >}}

{{% alert color="primary" %}}

في بعض الأحيان يكون من الضروري تحديد خيارات إضافية، والتي يمكن أن تؤثر على نتيجة حفظ مستند ك XLSX. يمكن تحديد هذه الخيارات باستخدام فئة [XlsxSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/)، التي تحتوي على خصائص تحدد كيفية عرض إخراج XLSX.

{{% /alert %}}

## البحث والاستبدال عند الحفظ إلى XLSX

باستخدام Aspose.Words أيضا، يمكنك العثور على سلسلة معينة أو تعبير عادي في المستند واستبداله بالسلسلة المطابقة التي تحتاجها. ثم يمكنك أيضا حفظ النتيجة إلى تنسيق XLSX.

يوضح مثال الكود التالي كيفية إجراء عملية البحث والاستبدال وحفظ النتيجة إلى XLSX:

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

## حدد مستوى الضغط عند الحفظ إلى XLSX

يمكنك أيضا تحديد مستوى الضغط عند الحفظ باستخدام خاصية [CompressionLevel](https://reference.aspose.com/words/java/com.aspose.words/compressionlevel/).

يوضح مثال التعليمات البرمجية التالية كيفية تحديد مستوى الضغط عند الحفظ إلى تنسيق XLSX:

{{< highlight java >}}
Document doc = new Document(getMyDir() + "Document.docx");
XlsxSaveOptions saveOptions = new XlsxSaveOptions();
saveOptions.setCompressionLevel(CompressionLevel.MAXIMUM);

doc.save(getArtifactsDir() + "BaseConversions.CompressXlsx.xlsx", saveOptions);
{{< /highlight >}}

## أنظر أيضا

- قسم الوثائق [حماية أو تشفير مستند](/words/java/protect-or-encrypt-a-document/) لمزيد من المعلومات حول حماية وتشفير وثيقة
- المادة [البحث والاستبدال](/words/java/find-and-replace/) لمزيد من المعلومات حول العثور على المحتوى الذي تريده واستبداله
