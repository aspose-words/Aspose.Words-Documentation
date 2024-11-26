---
title: حفظ مستند في Java
second_title: Aspose.Words ل Java
articleTitle: حفظ مستند
linktitle: حفظ مستند
type: docs
description: "احفظ مستندا بأي تنسيق مدعوم باستخدام Java."
weight: 20
url: /ar/java/save-a-document/
timestamp: 2024-01-27-14-07-04
---

تتضمن معظم المهام التي تحتاج إلى تنفيذها باستخدام Aspose.Words حفظ مستند. لحفظ مستند Aspose.Words يوفر طريقة [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save(java.lang.String)) لفئة [Document](https://reference.aspose.com/words/java/com.aspose.words/document/). يمكن حفظ المستند بأي تنسيق حفظ يدعمه Aspose.Words. للحصول على قائمة بجميع تنسيقات الحفظ المدعومة، راجع [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) تعداد.

## حفظ في ملف {#save-a-document-to-a-file}

ببساطة استخدام طريقة [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String) مع اسم الملف. Aspose.Words سيحدد تنسيق الحفظ من امتداد الملف الذي تحدده.

يوضح مثال التعليمات البرمجية التالية كيفية تحميل مستند وحفظه في ملف:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSave-LoadAndSave.java" >}}

{{% alert color="primary" %}}

يمكنك تنزيل ملف القالب لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## حفظ في دفق {#save-a-document-to-a-stream}

قم بتمرير كائن دفق إلى طريقة [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions). من الضروري تحديد تنسيق الحفظ بشكل صريح عند الحفظ في دفق.

يوضح مثال التعليمات البرمجية التالية كيفية تحميل مستند وحفظه في دفق:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveToStream-LoadAndSaveToStream.java" >}}

يمكنك تنزيل ملف القالب لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

## حفظ إلى PCL {#save-a-document-to-pcl}

Aspose.Words يدعم حفظ مستند في PCL (لغة أمر الطابعة). Aspose.Words يمكن حفظ المستندات في PCL 6 (PCL 6 محسن أو PCL XL) تنسيق. يمكن استخدام فئة `PclSaveOptions` لتحديد خيارات إضافية عند حفظ مستند في تنسيق PCL.

يوضح مثال الكود التالي كيفية حفظ مستند إلى PCL باستخدام خيارات الحفظ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToPCL-ConvertDocumentToPCL.java" >}}
