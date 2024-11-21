---
title: حفظ وثيقة في Java
second_title: Aspose.Words for Java
articleTitle: احفظ الوثيقة
linktitle: احفظ الوثيقة
type: docs
description: "توفير وثيقة في أي شكل من أشكال الدعم باستخدام Java."
weight: 20
url: /ar/java/save-a-document/
timestamp: 2024-01-27-14-07-04
---

معظم المهام التي تحتاجها Aspose.Words يتضمن توفير وثيقة. لإنقاذ الوثيقة Aspose.Words يوفر [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save(java.lang.String)طريقة [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) الصف ويمكن توفير الوثيقة بأي شكل من أشكال الادخار تدعمه Aspose.Words. وللاطلاع على قائمة جميع أشكال الادخار المدعومة، انظر [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) العد

## انقذوا (فايل) {#save-a-document-to-a-file}

استخدام بسيط [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String) طريقة بإسم ملف Aspose.Words سيحدد شكل الإنقاذ من تمديد الملف الذي تحدده

The following code example shows how to load and save a document to a file:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSave-LoadAndSave.java" >}}

{{% alert color="primary" %}}

يمكنك تحميل ملف النموذج من هذا المثال [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## إنقاذ لـ (ستارام) {#save-a-document-to-a-stream}

مررْ a تيار الجسم إلى [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) طريقة من الضروري تحديد شكل الإنقاذ بشكل صريح عندما ينقذ المجرى

ويبيّن المثال الرمزي التالي كيفية تحميل الوثائق وإنقاذها إلى مسار:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveToStream-LoadAndSaveToStream.java" >}}

يمكنك تحميل ملف النموذج من هذا المثال [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

## إنقاذ PCL {#save-a-document-to-pcl}

Aspose.Words:: دعم توفير وثيقة في مركز القيادة العامة. Aspose.Words يمكن أن تنقذ الوثائق في شكل PCL 6 (PCL 6 Enhanced or PCL XL) The `PclSaveOptions` ويمكن استخدام الصف لتحديد خيارات إضافية عند توفير وثيقة في شكل قانون العقوبات.

The following code example shows how to save a document to PCL using save options:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToPCL-ConvertDocumentToPCL.java" >}}
