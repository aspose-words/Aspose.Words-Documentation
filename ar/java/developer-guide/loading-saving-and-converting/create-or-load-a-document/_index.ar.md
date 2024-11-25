---
title: إنشاء أو تحميل مستند في Java
second_title: Aspose.Words ل Java
articleTitle: إنشاء مستند أو تحميله
linktitle: إنشاء مستند أو تحميله
type: docs
weight: 10
url: /ar/java/create-or-load-a-document/
description: "Aspose.Words تمكنك من إنشاء مستند فارغ أو تحميله من ملف أو دفق باستخدام Java."
timestamp: 2024-01-27-14-07-04
---

تتضمن أي مهمة تريد تنفيذها باستخدام Aspose.Words تقريبا تحميل مستند. تمثل فئة `Document` مستندا تم تحميله في الذاكرة. يحتوي المستند على العديد من المنشئات المحملة بشكل زائد مما يسمح لك بإنشاء مستند فارغ أو تحميله من ملف أو دفق. يمكن تحميل المستند بأي تنسيق تحميل مدعوم بـ Aspose.Words. للحصول على قائمة بجميع تنسيقات التحميل المدعومة، راجع [LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) تعداد.

## إنشاء مستند جديد {#create-a-new-document}

سوف نسمي المنشئ [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) بدون معلمات لإنشاء مستند فارغ جديد. إذا كنت تريد إنشاء مستند برمجيا، فإن أبسط طريقة هي استخدام فئة [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder) لإضافة محتويات المستند.

يوضح مثال التعليمات البرمجية التالية كيفية إنشاء مستند باستخدام منشئ المستند:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CreateDocument-CreateDocument.java" >}}

{{% alert color="primary" %}}

لاحظ القيم الافتراضية:

- يحتوي المستند الفارغ على قسم واحد به معلمات افتراضية، وفقرة فارغة واحدة، وبعض أنماط المستندات. في الواقع هذا المستند هو نفسه نتيجة إنشاء "مستند جديد" في Microsoft Word.
- حجم ورق المستند هو [PaperSize](https://reference.aspose.com/words/java/com.aspose.words/papersize/).**Letter**.

{{% /alert %}}

## تحميل مستند

لتحميل مستند موجود بأي من تنسيقات [LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/)، قم بتمرير اسم الملف أو الدفق إلى أحد منشئي المستندات. يتم تحديد تنسيق المستند الذي تم تحميله تلقائيا من خلال امتداده.

### تحميل من ملف {#load-from-a-file}

قم بتمرير اسم ملف كسلسلة إلى منشئ المستند لفتح مستند موجود من ملف.

يوضح مثال التعليمات البرمجية التالية كيفية فتح مستند من ملف:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenFromFile.java" >}}

يمكنك تنزيل ملف القالب لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

### تحميل من تيار {#load-from-a-stream}

لفتح مستند من دفق، ما عليك سوى تمرير كائن دفق يحتوي على المستند إلى منشئ المستند.

يوضح مثال التعليمات البرمجية التالية كيفية فتح مستند من دفق:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenFromStream.java" >}}

{{% alert color="primary" %}}

يمكنك تنزيل ملف القالب لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}
