---
title: تحويل كلمة إلى إكسيل في C++
second_title: Aspose.Words ل C++
articleTitle: تحويل مستند إلى إكسيل
linktitle: تحويل مستند إلى إكسيل
description: "تحويل PDF إلى إكسيل، XML إلى إكسيل، DOCX إلى إكسيل C++. احفظ مستندا بتنسيقات مختلفة إلى XLSX باستخدام C++."
type: docs
weight: 15
url: /ar/cpp/convert-a-document-to-excel/
---

يعد تحويل المستندات من تنسيق إلى آخر الميزة الرئيسية لـ Aspose.Words. يمكنك تحويل المستندات بأي تنسيق [load format](https://reference.aspose.com/words/cpp/aspose.words/loadformat/) متاح أيضا إلى XLSX.

## تحويل مستند إلى XLSX

تحويل مستند إلى XLSX عملية معقدة إلى حد ما. لحفظ المستند بتنسيق XLSX باستخدام Aspose.Words، استخدم فئة **XlsxSaveOptions** والعنصر `Xlsx` الجديد في تعداد [SaveFormat](https://reference.aspose.com/words/cpp/aspose.words/saveformat/). كما ذكر أعلاه، يمكنك حفظ المستند بأي تنسيق تحميل مدعوم من Aspose.Words إلى XLSX.

يوضح مثال الكود التالي كيفية حفظ PDF إلى XLSX:

{{< highlight cpp >}}
auto doc = MakeObject<Document>(MyDir + u"Pdf Document.pdf");
doc->Save(ArtifactsDir + u"BaseConversions.PdfToXlsx.xlsx");
{{< /highlight >}}

## البحث والاستبدال عند الحفظ إلى XLSX

باستخدام Aspose.Words أيضا، يمكنك العثور على سلسلة معينة أو تعبير عادي في المستند واستبداله بالسلسلة المطابقة التي تحتاجها. ثم يمكنك أيضا حفظ النتيجة إلى تنسيق XLSX.

يوضح مثال الكود التالي كيفية إجراء عملية البحث والاستبدال وحفظ النتيجة إلى XLSX:

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

## حدد مستوى الضغط عند الحفظ إلى XLSX

يمكنك أيضا تحديد مستوى الضغط عند الحفظ باستخدام خاصية **CompressionLevel**.

يوضح مثال التعليمات البرمجية التالية كيفية تحديد مستوى الضغط عند الحفظ إلى تنسيق XLSX:

{{< highlight cpp >}}
auto doc = MakeObject<Document>(MyDir + u"Document.docx");
auto saveOptions = MakeObject<XlsxSaveOptions>();
saveOptions->set_CompressionLevel(CompressionLevel::Maximum);

doc->Save(ArtifactsDir + u"BaseConversions.CompressXlsx.xlsx", saveOptions);
{{< /highlight >}}

## أنظر أيضا

- قسم الوثائق [حماية أو تشفير مستند](/words/cpp/protect-or-encrypt-a-document/) لمزيد من المعلومات حول حماية وتشفير وثيقة
- المادة [البحث والاستبدال](/words/cpp/find-and-replace/) لمزيد من المعلومات حول العثور على المحتوى الذي تريده واستبداله
