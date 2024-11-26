---
title: حفظ مستند في Python
second_title: Aspose.Words لـ Python via .NET
articleTitle: حفظ مستند
linktitle: حفظ مستند
type: docs
description: "احفظ مستندًا بأي تنسيق مدعوم باستخدام Python."
keywords: "save a document python, save a document to file python, save a document to stream python, save a document Aspose python, save formats supported by Aspose.Words python"
weight: 20
url: /ar/python-net/save-a-document/
timestamp: 2024-01-27-14-07-04
---

تتضمن معظم المهام التي تحتاج إلى تنفيذها باستخدام Aspose.Words حفظ مستند. لحفظ مستند، يوفر Aspose.Words طريقة [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) لفئة [Document](https://reference.aspose.com/words/python-net/aspose.words/document/). هناك حمولات زائدة تسمح بحفظ مستند في ملف أو دفق. يمكن حفظ المستند بأي تنسيق حفظ يدعمه Aspose.Words. للحصول على قائمة بجميع تنسيقات الحفظ المدعومة، راجع تعداد [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/).

## حفظ مستند إلى ملف {#save-a-document-to-a-file}

ما عليك سوى استخدام طريقة [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) مع اسم الملف. سيحدد Aspose.Words تنسيق الحفظ من امتداد الملف الذي تحدده.

يوضح مثال التعليمات البرمجية التالي كيفية تحميل مستند وحفظه في ملف:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-LoadAndSave.py" >}}

{{% alert color="primary" %}}

يمكنك تنزيل ملف القالب الخاص بهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

## احفظ مستندًا في Stream {#save-a-document-to-a-stream}

قم بتمرير كائن دفق إلى طريقة [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/). من الضروري تحديد تنسيق الحفظ بشكل صريح عند الحفظ في التدفق.

يوضح مثال التعليمات البرمجية التالي كيفية تحميل مستند وحفظه في الدفق:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-LoadAndSaveToStream.py" >}}

يمكنك تنزيل ملف القالب الخاص بهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

## احفظ مستندًا في PCL {#save-a-document-to-pcl}

يدعم Aspose.Words حفظ مستند في PCL (لغة أوامر الطابعة). يمكن لـ Aspose.Words حفظ المستندات بتنسيق PCL 6 (PCL 6 Enhanced أو PCL XL). يمكن استخدام فئة [PclSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pclsaveoptions/) لتحديد خيارات إضافية عند حفظ مستند بتنسيق PCL.

يوضح مثال التعليمات البرمجية التالي كيفية حفظ مستند في PCL باستخدام خيارات الحفظ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pcl_save_options-RasterizeTransformedElements.py" >}}

