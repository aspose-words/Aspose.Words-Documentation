---
title: إنشاء أو تحميل مستند في C#
second_title: Aspose.Words لـ .NET
articleTitle: إنشاء أو تحميل مستند
linktitle: إنشاء أو تحميل مستند
type: docs
url: /ar/net/create-or-load-a-document/
description: "قم بإنشاء مستند فارغ أو تحميله من ملف أو دفق باستخدام C#."
keywords: "create a document c#, load a document c#, create a blank document c#, load a document from file c#, load a document from stream c#, create a document Aspose .NET, load a document Aspose .NET, load formats supported by Aspose.Words .NET"
weight: 10
---

تقريبًا أي مهمة تريد تنفيذها باستخدام Aspose.Words تتضمن تحميل مستند. تمثل فئة `Document` مستندًا تم تحميله في الذاكرة. يحتوي المستند على العديد من المُنشئات المحملة بشكل زائد مما يسمح لك بإنشاء مستند فارغ أو تحميله من ملف أو دفق. يمكن تحميل المستند بأي تنسيق تحميل يدعمه Aspose.Words. للحصول على قائمة بجميع تنسيقات التحميل المدعومة، راجع تعداد [LoadFormat](https://reference.aspose.com/words/net/aspose.words/loadformat/).

## قم بإنشاء مستند جديد {#create-a-new-document}

سوف نقوم باستدعاء مُنشئ [Document](https://reference.aspose.com/words/net/aspose.words/document/document/) بدون معلمات لإنشاء مستند فارغ جديد. إذا كنت تريد إنشاء مستند برمجيًا، فإن أبسط طريقة هي استخدام فئة [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) لإضافة محتويات المستند.

يوضح مثال التعليمات البرمجية التالي كيفية إنشاء مستند باستخدام منشئ المستندات:

{{< gist "aspose-words-gists" "16b9cfe5420b6e033f90a45263eef020" "create-docx.cs" >}}

{{% alert color="primary" %}}

لاحظ القيم الافتراضية:

- تحتوي الوثيقة الفارغة على قسم واحد مع المعلمات الافتراضية، وفقرة واحدة فارغة، وبعض أنماط الوثيقة. في الواقع، هذه الوثيقة هي نفس نتيجة إنشاء "المستند الجديد" في Microsoft Word.
- حجم ورق الوثيقة هو [PaperSize](https://reference.aspose.com/words/net/aspose.words/papersize/).**Letter**.

{{% /alert %}}

## قم بتحميل مستند {#load-a-document}

لتحميل مستند موجود بأي من تنسيقات [LoadFormat](https://reference.aspose.com/words/net/aspose.words/loadformat/)، قم بتمرير اسم الملف أو الدفق إلى أحد منشئي المستند. يتم تحديد تنسيق المستند الذي تم تحميله تلقائيًا من خلال امتداده.

### التحميل من ملف {#load-from-a-file}

قم بتمرير اسم ملف كسلسلة إلى مُنشئ المستند لفتح مستند موجود من ملف.

يوضح مثال التعليمات البرمجية التالي كيفية فتح مستند من ملف:

{{< gist "aspose-words-gists" "5bd617e9ea10953cbdd084bcf3810c02" "load-docx.cs" >}}

يمكنك تنزيل ملف القالب الخاص بهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

### التحميل من دفق {#load-from-a-stream}

لفتح مستند من دفق، ما عليك سوى تمرير كائن دفق يحتوي على المستند إلى مُنشئ المستند.

يوضح مثال التعليمات البرمجية التالي كيفية فتح مستند من دفق:

{{< gist "aspose-words-gists" "5bd617e9ea10953cbdd084bcf3810c02" "load-docx-stream.cs" >}}

{{% alert color="primary" %}}

يمكنك تنزيل ملف القالب الخاص بهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}
