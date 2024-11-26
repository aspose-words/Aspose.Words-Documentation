---
title: العمل مع العلامة المائية في Java
second_title: Aspose.Words ل Java
articleTitle: العمل مع العلامة المائية
linktitle: العمل مع العلامة المائية
type: docs
description: "وثيقة التلاعب العلامة المائية باستخدام Java."
weight: 70
url: /ar/java/working-with-watermark/
timestamp: 2024-01-27-14-07-04
---

يناقش هذا الموضوع كيفية العمل برمجيا باستخدام علامة مائية باستخدام Aspose.Words. العلامة المائية هي صورة خلفية تعرض خلف النص في المستند. يمكن أن تحتوي العلامة المائية على نص أو صورة ممثلة بفئة [Watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/).

{{% alert color="primary" %}}

**جرب عبر الإنترنت**

يمكنك تجربة هذه الوظيفة من خلال [علامة مائية مجانية للمستندات عبر الإنترنت](https://products.aspose.app/words/watermark).

{{% /alert %}}

## أضف علامة مائية إلى مستند

في Microsoft Word، يمكن بسهولة إدراج علامة مائية في مستند باستخدام أمر إدراج علامة مائية. Aspose.Words يوفر فئة [watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) لإضافة أو إزالة العلامة المائية في المستندات. Aspose.Words يوفر [WatermarkType](https://reference.aspose.com/words/java/com.aspose.words/watermarktype/)التعداد الذي يحدد ثلاثة أنواع ممكنة من العلامات المائية (نص وصورة ولا شيء) للعمل معها.

### إضافة نص العلامة المائية

يوضح مثال التعليمات البرمجية التالية كيفية إدراج علامة مائية نصية في مستند بتعريف [TextWatermarkOptions](https://reference.aspose.com/words/java/com.aspose.words/textwatermarkoptions/) باستخدام طريقة [SetText](https://reference.aspose.com/words/java/com.aspose.words/watermark/#setText-java.lang.String):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.java" >}}

### إضافة صورة مائية

يوضح مثال الكود التالي كيفية إدراج علامة مائية للصورة في مستند عن طريق تحديد [ImageWatermarkOptions](https://reference.aspose.com/words/java/com.aspose.words/imagewatermarkoptions/) باستخدام طريقة [SetImage](https://reference.aspose.com/words/java/com.aspose.words/watermark/#setImage-java.awt.image.BufferedImage):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.java" >}}

يمكن أيضا إدراج العلامة المائية باستخدام فئة الشكل أيضا. من السهل جدا إدراج أي شكل أو صورة في رأس أو تذييل وبالتالي إنشاء علامة مائية من أي نوع يمكن تخيله.

يقوم مثال الكود التالي بإدراج علامة مائية في مستند ورد:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-AddWatermarkToADocument-AddWatermarkToADocument.java" >}}

{{% alert color="primary" %}}

يمكنك تنزيل نموذج ملف هذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}


## إزالة العلامة المائية من مستند

توفر فئة [Watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) طريقة `Remove` لإزالة العلامة المائية من مستند.

توضح أمثلة التعليمات البرمجية التالية كيفية إزالة علامة مائية من المستندات:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-RemoveWatermarkFromDocument.java" >}}

لإزالة العلامة المائية من مستند، يجب عليك تعيين اسم شكل العلامة المائية فقط أثناء الإدراج ثم إزالة شكل العلامة المائية باسم معين.

يوضح لك مثال التعليمات البرمجية التالي كيفية تعيين اسم شكل العلامة المائية وإزالته من المستند:

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark.Name("WaterMark");
{{< /highlight >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-RemoveWatermark-RemoveWatermark.java" >}}

## أضف علامة مائية إلى خلية جدول

في بعض الأحيان تحتاج إلى إدراج علامة مائية/صورة في خلية الجدول وعرضها خارج الجدول، يمكنك استخدام خاصية [IsLayoutInCell](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#isLayoutInCell-boolean). تحصل هذه الخاصية أو تحدد علامة تشير إلى ما إذا كان الشكل معروضا داخل جدول أو خارجه. لاحظ أن هذه الخاصية تعمل فقط عند تحسين المستند لـ Microsoft Word 2010 باستخدام طريقة [OptimizeFor](https://reference.aspose.com/words/java/com.aspose.words/compatibilityoptions/#optimizeFor-int).

يوضح مثال التعليمات البرمجية التالية كيفية استخدام هذه الخاصية:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.java" >}}
