---
title: العمل مع ووترمارك في Java
second_title: Aspose.Words for Java
articleTitle: العمل مع ووترمارك
linktitle: العمل مع ووترمارك
type: docs
description: "التلاعب بالعلامات المائية باستخدام Java."
weight: 70
url: /ar/java/working-with-watermark/
---

يناقش هذا الموضوع كيفية العمل على نحو برنامجي باستخدام علامة الماء Aspose.Words. A watermark is a background image that displays behind the text in a document. يمكن لعلامة الماء أن تحتوي على نص أو صورة يمثلها [Watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) الصف

{{% alert color="primary" %}}

**حاول على الإنترنت**

يمكنك أن تجرب هذه الوظيفة معنا [رمز مائي مجاني على الإنترنت](https://products.aspose.app/words/watermark).

{{% /alert %}}

## إضافة علامة ووتر إلى وثيقة

In Microsoft Word, ويمكن بسهولة إدراج علامة مائية في وثيقة تستخدم قيادة " Insert Watermark ". Aspose.Words يوفر [watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) درجة لإضافة أو إزالة العلامة المائية في الوثائق. Aspose.Words يوفر [العلامة المائية النوع](https://reference.aspose.com/words/java/com.aspose.words/watermarktype/)يعدد ثلاثة أنواع ممكنة من العلامات المائية (التركات، والصور، ولا شيء) للعمل معها

### الرمز

ويبين المثال الرمزي التالي كيفية إدراج علامة مائية نصية في وثيقة ما عن طريق تحديد [TextWatermarkOptions](https://reference.aspose.com/words/java/com.aspose.words/textwatermarkoptions/) استخدام [SetText](https://reference.aspose.com/words/java/com.aspose.words/watermark/#setText-java.lang.String) الطريقة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.java" >}}

### علامة الماء

ويبين المثال الرمزي التالي كيفية إدراج علامة مائية للصورة في الوثيقة عن طريق تحديد [ImageWatermarkOptions](https://reference.aspose.com/words/java/com.aspose.words/imagewatermarkoptions/) استخدام [SetImage](https://reference.aspose.com/words/java/com.aspose.words/watermark/#setImage-java.awt.image.BufferedImage) الطريقة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.java" >}}

ويمكن أيضا إدراج العلامة المائية باستخدام طبقة الشكل أيضا. ومن السهل جدا إدراج أي شكل أو صورة في رأس أو قدم، وبالتالي خلق علامة مائية من أي نوع يمكن تصوره.

The following code example inserts a watermark into a Word document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-AddWatermarkToADocument-AddWatermarkToADocument.java" >}}

{{% alert color="primary" %}}

يمكنك تحميل ملف العينة من هذا المثال [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}


## Remove Watermark from a Document

The [Watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) الطبقة تقدم `Remove` طريقة لإزالة العلامة المائية من وثيقة.

وتبين الأمثلة الرمزية التالية كيفية إزالة العلامة المائية من الوثائق:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-RemoveWatermarkFromDocument.java" >}}

لإزالة العلامة المائية من وثيقة يجب أن تضع فقط اسم علامة الماء أثناء إدخالها ثم تزيل شكل العلامة المائية بإسم معين

The following code example show you how to set the name of the watermark shape and remove it from the document:

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark.Name("WaterMark");
{{< /highlight >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-RemoveWatermark-RemoveWatermark.java" >}}

## إضافة علامة ماء إلى خلية الجدول

في بعض الأحيان عليك أن تضيف علامة ماء إلى زنزانة الطاولة و تعرضها خارج الطاولة [IsLayoutInCell](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#isLayoutInCell-boolean) ملكية وتحصل هذه الممتلكات على علم يبين ما إذا كان شكلها قد ظهر داخل طاولة أو خارجها. ملاحظة أن هذه الملكية لا تعمل إلا عندما تتقن الوثيقة Microsoft Word 2010 باستخدام [OptimizeFor](https://reference.aspose.com/words/java/com.aspose.words/compatibilityoptions/#optimizeFor-int) طريقة

The following code example shows how to use this property:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.java" >}}
