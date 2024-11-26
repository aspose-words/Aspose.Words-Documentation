---
title: إنشاء أو تحميل مستند في Python
second_title: Aspose.Words لـ Python via .NET
articleTitle: إنشاء أو تحميل مستند
linktitle: إنشاء أو تحميل مستند
type: docs
url: /ar/python-net/create-or-load-a-document/
description: "قم بإنشاء مستند فارغ أو تحميله من ملف أو دفق باستخدام Python."
keywords: "create a document python, load a document python, create a blank document python, load a document from file python, load a document from stream python, create a document Aspose python, load a document Aspose python, load formats supported by Aspose.Words python"
weight: 10
timestamp: 2024-01-27-14-07-04
---

تقريبًا أي مهمة تريد تنفيذها باستخدام Aspose.Words تتضمن تحميل مستند. تمثل فئة [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) مستندًا تم تحميله في الذاكرة. يحتوي المستند على العديد من المُنشئات المحملة بشكل زائد مما يسمح لك بإنشاء مستند فارغ أو تحميله من ملف أو دفق. يمكن تحميل المستند بأي تنسيق تحميل يدعمه Aspose.Words. للحصول على قائمة بجميع تنسيقات التحميل المدعومة، راجع تعداد [LoadFormat](https://reference.aspose.com/words/python-net/aspose.words/loadformat/).

## إنشاء مستند جديد

سوف نقوم باستدعاء مُنشئ [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) بدون معلمات لإنشاء مستند فارغ جديد. إذا كنت تريد إنشاء مستند برمجيًا، فإن أبسط طريقة هي استخدام فئة [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) لإضافة محتويات المستند.

يوضح مثال التعليمات البرمجية التالي كيفية إنشاء مستند باستخدام منشئ المستندات:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
            
builder.write("Hello world!")

doc.save(docs_base.artifacts_dir + "out.docx")
{{< /highlight >}}

{{% alert color="primary" %}}

لاحظ القيم الافتراضية:

- تحتوي الوثيقة الفارغة على قسم واحد مع المعلمات الافتراضية، وفقرة واحدة فارغة، وبعض أنماط الوثيقة. في الواقع، هذه الوثيقة هي نفس نتيجة إنشاء "المستند الجديد" في Microsoft Word.
- حجم ورق الوثيقة هو [PaperSize.LETTER](https://reference.aspose.com/words/python-net/aspose.words/papersize/#letter).

{{% /alert %}}

## قم بتحميل مستند

لتحميل مستند موجود بأي من تنسيقات [LoadFormat](https://reference.aspose.com/words/python-net/aspose.words/loadformat/)، قم بتمرير اسم الملف أو الدفق إلى أحد منشئي [Document](https://reference.aspose.com/words/python-net/aspose.words/document/). يتم تحديد تنسيق المستند الذي تم تحميله تلقائيًا من خلال امتداده.

### تحميل من ملف

قم بتمرير اسم ملف كسلسلة إلى مُنشئ [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) لفتح مستند موجود من ملف.

يوضح مثال التعليمات البرمجية التالي كيفية فتح مستند من ملف:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-OpenDocument.py" >}}

يمكنك تنزيل ملف القالب الخاص بهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

### تحميل من دفق

لفتح مستند من دفق، ما عليك سوى تمرير كائن دفق يحتوي على المستند إلى مُنشئ [Document](https://reference.aspose.com/words/python-net/aspose.words/document/).

يوضح مثال التعليمات البرمجية التالي كيفية فتح مستند من دفق:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-OpeningFromStream.py" >}}

{{% alert color="primary" %}}

يمكنك تنزيل ملف القالب الخاص بهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}
