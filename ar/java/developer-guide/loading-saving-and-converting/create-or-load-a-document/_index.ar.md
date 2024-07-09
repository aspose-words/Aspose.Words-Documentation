---
title: إنشاء أو وضع وثيقة Java
second_title: Aspose.Words for Java
articleTitle: (أ)
linktitle: (أ)
type: docs
weight: 10
url: /ar/java/create-or-load-a-document/
description: "Aspose.Words يُمكّنُك أَنْ تَخْلقَ a مستند فارغ أَو تحميله مِنْ a ملف أَو تيار باستخدام Java."
---

تقريباً أي مهمة تريد أن تؤديها Aspose.Words يتضمن تحميل وثيقة. The `Document` الطبقة تمثل وثيقة محملة بالذاكرة الوثيقة لديها العديد من البنايات المزدحمة التي تسمح لك بصنع وثيقة فارغة أو تحميلها من ملف أو تيار. ويمكن تحميل الوثيقة في أي شكل من أشكال الحمولة تدعمه Aspose.Words. وللاطلاع على قائمة جميع أشكال الحمولة المدعومة، انظر [LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) العد

## إنشاء وثيقة جديدة {#create-a-new-document}

سنتصل [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) بنّاء بدون معايير لخلق وثيقة فارغة جديدة إذا كنت تريد أن تولد وثيقة برنامجية، أبسط طريقة هي استخدام [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder) درجة لإضافة محتويات الوثائق

ويبيّن المثال الرمزي التالي كيفية وضع وثيقة باستخدام مبني الوثائق:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CreateDocument-CreateDocument.java" >}}

{{% alert color="primary" %}}

ملاحظة القيم الافتراضية:

- تحتوي الوثيقة الفارغة على جزء واحد مع بارامترات غير مقصودة، فقرة واحدة فارغة، وبعض أساليب الوثائق. وفي الواقع، فإن هذه الوثيقة هي نفسها نتيجة إنشاء " وثيقة جديدة " في Microsoft Word.
- حجم ورقة الوثيقة [PaperSize](https://reference.aspose.com/words/java/com.aspose.words/papersize/).**Letter**.

{{% /alert %}}

## عنوان الوثيقة

تحميل وثيقة قائمة في أي من الوثائق [LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) صيغ أو نقل اسم الملف أو التدفق إلى أحد مبنيي الوثائق ويحدد شكل الوثيقة المحملة تلقائياً بتمديدها.

### لويد من ملف {#load-from-a-file}

مرر اسم ملف كخط لمبنى الوثائق لفتح وثيقة قائمة من ملف.

The following code example shows how to open a document from a file:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenFromFile.java" >}}

يمكنك تحميل ملف النموذج من هذا المثال [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

### لويد من سترام {#load-from-a-stream}

وبغية فتح وثيقة من مجرى ما، لا يمكن إلا أن تجتاز مسارا يحتوي على الوثيقة في مبنى الوثائق.

The following code example shows how to open a document from a stream:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenFromStream.java" >}}

{{% alert color="primary" %}}

يمكنك تحميل ملف النموذج من هذا المثال [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}
