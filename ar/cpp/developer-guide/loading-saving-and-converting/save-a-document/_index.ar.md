---
title: حفظ مستند في C++
second_title: Aspose.Words ل C++
articleTitle: حفظ مستند
linktitle: حفظ مستند
type: docs
description: "احفظ مستندا بأي تنسيق مدعوم باستخدام C++."
keywords: "save a document c++, save a document to file c++, save a document to stream c++, save a document Aspose C++, save formats supported by Aspose.Words C++"
weight: 20
url: /ar/cpp/save-a-document/
---

تتضمن معظم المهام التي تحتاج إلى تنفيذها باستخدام Aspose.Words حفظ مستند. لحفظ مستند Aspose.Words يوفر طريقة [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) لفئة [Document](https://reference.aspose.com/words/cpp/aspose.words/document/). يمكن حفظ المستند بأي تنسيق حفظ يدعمه Aspose.Words. للحصول على قائمة بجميع تنسيقات الحفظ المدعومة، راجع [SaveFormat](https://reference.aspose.com/words/cpp/aspose.words/saveformat/) تعداد.

## حفظ في ملف {#save-a-document-to-a-file}

ببساطة استخدام طريقة [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) مع اسم الملف. Aspose.Words سيحدد تنسيق الحفظ من امتداد الملف الذي تحدده.

يوضح مثال التعليمات البرمجية التالية كيفية تحميل مستند وحفظه في ملف:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToDisk-LoadAndSave.cpp" >}}

{{% alert color="primary" %}}

يمكنك تنزيل ملف القالب لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## حفظ في دفق {#save-a-document-to-a-stream}

قم بتمرير كائن دفق إلى طريقة [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/). من الضروري تحديد تنسيق الحفظ بشكل صريح عند الحفظ في دفق.

يوضح مثال التعليمات البرمجية التالية كيفية تحميل مستند وحفظه في دفق:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToStream-LoadAndSaveToStream.cpp" >}}

يمكنك تنزيل ملف القالب لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).


## حفظ إلى PCL {#save-a-document-to-pcl}

Aspose.Words يدعم حفظ مستند في PCL (لغة أمر الطابعة). Aspose.Words يمكن حفظ المستندات في PCL 6 (PCL 6 تعزيز أو PCL XL) الشكل. يمكن استخدام فئة `PclSaveOptions` لتحديد خيارات إضافية عند حفظ مستند في تنسيق PCL.

يوضح مثال الكود التالي كيفية حفظ مستند إلى PCL باستخدام خيارات الحفظ:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToPCL-ConvertDocumentToPCL.cpp" >}}
