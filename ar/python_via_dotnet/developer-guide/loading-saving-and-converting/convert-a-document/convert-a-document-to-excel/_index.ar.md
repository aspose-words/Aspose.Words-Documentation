---
title: تحويل Word إلى Excel في Python
second_title: Aspose.Words لـ Python via .NET
articleTitle: تحويل مستند إلى Excel
linktitle: تحويل مستند إلى Excel
description: "تحويل PDF إلى Excel، XML إلى Excel، DOCX إلى Excel Python. احفظ مستندًا بتنسيقات مختلفة إلى XLSX باستخدام Python."
type: docs
weight: 15
url: /ar/python-net/convert-a-document-to-excel/
---

يعد تحويل المستندات من تنسيق إلى آخر الميزة الرئيسية لـ Aspose.Words. يمكنك تحويل المستندات بأي تنسيق [تنسيق التحميل](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) متاح أيضًا إلى تنسيق XLSX.

## تحويل مستند إلى XLSX

يعد تحويل مستند إلى XLSX عملية معقدة إلى حد ما. لحفظ مستندك بتنسيق XLSX باستخدام Aspose.Words، استخدم فئة [XlsxSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/) وعنصر `Xlsx` الجديد في تعداد [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/). كما ذكرنا سابقًا، يمكنك حفظ المستند بأي تنسيق تحميل يدعمه Aspose.Words إلى XLSX.

يوضح مثال التعليمات البرمجية التالي كيفية حفظ PDF إلى XLSX:

{{< highlight python >}}
doc = aw.Document(docs_base.my_dir + "Pdf Document.pdf")

doc.save(docs_base.artifacts_dir + "BaseConversions.PdfToXlsx.xlsx")
{{< /highlight >}}

{{% alert color="primary" %}}

في بعض الأحيان يكون من الضروري تحديد خيارات إضافية، والتي يمكن أن تؤثر على نتيجة حفظ مستند بتنسيق XLSX. يمكن تحديد هذه الخيارات باستخدام فئة [XlsxSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/)، التي تحتوي على خصائص تحدد كيفية عرض مخرجات XLSX.

{{% /alert %}}

## البحث والاستبدال عند الحفظ في XLSX

باستخدام Aspose.Words أيضًا، يمكنك العثور على سلسلة محددة أو تعبير عادي في مستندك واستبداله بالتعبير المطابق الذي تحتاجه. ثم يمكنك أيضًا حفظ النتيجة بتنسيق XLSX.

يوضح مثال التعليمات البرمجية التالي كيفية إجراء عملية البحث والاستبدال وحفظ النتيجة في XLSX:

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

## حدد مستوى الضغط عند الحفظ في XLSX

يمكنك أيضًا تحديد مستوى الضغط عند الحفظ باستخدام خاصية [CompressionLevel](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/compression_level/).

يوضح مثال التعليمات البرمجية التالي كيفية تحديد مستوى الضغط عند الحفظ بتنسيق XLSX:

{{< highlight python >}}
from aspose.words import Document
from aspose.words.saving import XlsxSaveOptions, CompressionLevel

doc = Document(MY_DIR + "Document.docx")

saveOptions = XlsxSaveOptions()
saveOptions.compression_level = CompressionLevel.MAXIMUM

doc.save(ARTIFACTS_DIR + "BaseConversions.CompressXlsx.xlsx", saveOptions)
{{< /highlight >}}

## أنظر أيضا

- قسم التوثيق [حماية أو تشفير مستند](/words/ar/python-net/protect-or-encrypt-a-document/) لمزيد من المعلومات حول حماية وتشفير المستند
- المقالة [البحث والاستبدال](/words/ar/python-net/find-and-replace/) لمزيد من المعلومات حول البحث عن المحتوى الذي تريده واستبداله
