---
title: إنشاء أو تحميل مستند في C++
second_title: Aspose.Words ل C++
articleTitle: إنشاء مستند أو تحميله
linktitle: إنشاء مستند أو تحميله
type: docs
description: "قم بإنشاء مستند فارغ أو لتحميله من ملف أو دفق باستخدام C++."
keywords: "create a document c++, load a document c++, create a blank document c++, load a document from file c++, load a document from stream c++, create a document Aspose C++, load a document Aspose C++, load formats supported by Aspose.Words C++"
weight: 10
url: /ar/cpp/create-or-load-a-document/
---

تتضمن أي مهمة تريد تنفيذها باستخدام Aspose.Words تقريبا تحميل مستند. تمثل فئة `Document` مستندا تم تحميله في الذاكرة. يحتوي المستند على العديد من المنشئات المحملة بشكل زائد مما يسمح لك بإنشاء مستند فارغ أو تحميله من ملف أو دفق. يمكن تحميل المستند بأي تنسيق تحميل يدعمه Aspose.Words. للحصول على قائمة بجميع تنسيقات التحميل المدعومة، راجع [LoadFormat](https://reference.aspose.com/words/cpp/aspose.words/loadformat/) تعداد.

## إنشاء مستند جديد {#create-a-new-document}

سوف نسمي المنشئ [Document](https://reference.aspose.com/words/cpp/class/aspose.words.document) بدون معلمات لإنشاء مستند فارغ جديد. إذا كنت تريد إنشاء مستند برمجيا، فإن أبسط طريقة هي استخدام فئة [DocumentBuilder](https://reference.aspose.com/words/cpp/class/aspose.words.document_builder) لإضافة محتويات المستند.

يوضح مثال التعليمات البرمجية التالية كيفية إنشاء مستند باستخدام منشئ المستند:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-CreateDocument-CreateDocument.cpp" >}}

{{% alert color="primary" %}}

لاحظ القيم الافتراضية:

- يحتوي المستند الفارغ على قسم واحد به معلمات افتراضية، وفقرة فارغة واحدة، وبعض أنماط المستندات. في الواقع هذا المستند هو نفسه نتيجة إنشاء "مستند جديد" في Microsoft Word.
- حجم ورق المستند هو [PaperSize](https://reference.aspose.com/words/cpp/aspose.words/papersize/).**Letter**.

{{% /alert %}}

## تحميل مستند

لتحميل مستند موجود بأي من تنسيقات `LoadFormat`، قم بتمرير اسم الملف أو الدفق إلى أحد منشئي المستندات. يتم تحديد تنسيق المستند الذي تم تحميله تلقائيا من خلال امتداده.

### تحميل من ملف {#load-from-a-file}

قم بتمرير اسم ملف كسلسلة إلى منشئ المستند لفتح مستند موجود من ملف.

يوضح مثال التعليمات البرمجية التالية كيفية فتح مستند من ملف:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToDisk-OpenDocument.cpp" >}}

يمكنك تنزيل ملف القالب لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

### تحميل من تيار {#load-from-a-stream}

لفتح مستند من دفق، ما عليك سوى تمرير كائن دفق يحتوي على المستند إلى منشئ المستند.

يوضح مثال التعليمات البرمجية التالية كيفية فتح مستند من دفق:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToStream-OpeningFromStream.cpp" >}}

{{% alert color="primary" %}}

يمكنك تنزيل ملف القالب لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}
