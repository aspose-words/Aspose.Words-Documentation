---
title: العمل مع العلامة المائية في C#
second_title: Aspose.Words لـ .NET
articleTitle: العمل مع العلامة المائية
linktitle: العمل مع العلامة المائية
description: "توثيق معالجة العلامة المائية باستخدام C#."
type: docs
weight: 340
url: /ar/net/working-with-watermark/
timestamp: 2024-05-02-11-51-44
---

يناقش هذا الموضوع كيفية العمل برمجيًا مع العلامة المائية باستخدام Aspose.Words. العلامة المائية هي صورة خلفية يتم عرضها خلف النص في المستند. يمكن أن تحتوي العلامة المائية على نص أو صورة ممثلة بفئة [Watermark](https://reference.aspose.com/words/ar/net/aspose.words/watermark/).

{{% alert color="primary" %}}

**حاول عبر الإنترنت**

يمكنك تجربة هذه الوظيفة مع [علامة مائية مستندية مجانية على الإنترنت](https://products.aspose.app/words/watermark) الخاص بنا.

{{% /alert %}}

## إضافة علامة مائية إلى مستند

في Microsoft Word، يمكن بسهولة إدراج علامة مائية في مستند باستخدام أمر إدراج علامة مائية. يوفر Aspose.Words فئة [watermark](https://reference.aspose.com/words/ar/net/aspose.words/watermark/) لإضافة أو إزالة العلامة المائية في المستندات. يوفر Aspose.Words تعداد [نوع العلامة المائية](https://reference.aspose.com/words/ar/net/aspose.words/watermark/type/) الذي يحدد ثلاثة أنواع محتملة من العلامات المائية (نص وصورة ولا شيء) للعمل معها

### إضافة علامة مائية نصية

يوضح مثال التعليمات البرمجية التالي كيفية إدراج علامة مائية نصية في مستند عن طريق تعريف [TextWatermarkOptions](https://reference.aspose.com/words/ar/net/aspose.words/textwatermarkoptions/) باستخدام طريقة [SetText](https://reference.aspose.com/words/ar/net/aspose.words/watermark/settext/#settext):

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.cs" >}}

### إضافة علامة مائية للصورة

يوضح مثال التعليمات البرمجية التالي كيفية إدراج علامة مائية مصورة في مستند عن طريق تعريف [ImageWatermarkOptions](https://reference.aspose.com/words/ar/net/aspose.words/imagewatermarkoptions/) باستخدام طريقة [SetImage](https://reference.aspose.com/words/ar/net/aspose.words/watermark/setimage/#setimage):

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.cs" >}}

يمكن أيضًا إدراج العلامة المائية باستخدام فئة الشكل أيضًا. من السهل جدًا إدراج أي شكل أو صورة في الرأس أو التذييل وبالتالي إنشاء علامة مائية من أي نوع يمكن تخيله.

يقوم مثال التعليمات البرمجية التالي بإدراج علامة مائية في مستند Word:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Images-AddWatermark-AddWatermark.cs" >}}

{{% alert color="primary" %}}

يمكنك تنزيل الملف النموذجي لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}


## إزالة العلامة المائية من المستند

توفر فئة [Watermark](https://reference.aspose.com/words/ar/net/aspose.words/watermark/) طريقة الإزالة لإزالة العلامة المائية من المستند.

يوضح مثال التعليمات البرمجية التالي كيفية إزالة علامة مائية من المستندات:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkWithWatermark-RemoveWatermarkFromDocument.cs" >}}

إذا تمت إضافة العلامات المائية باستخدام كائن فئة [Shape](https://reference.aspose.com/words/ar/net/aspose.words.drawing/shape/)، فلإزالة العلامة المائية من المستند، يتعين عليك تعيين اسم شكل العلامة المائية فقط أثناء الإدراج ثم إزالة شكل العلامة المائية باسم معين.

يوضح لك مثال التعليمات البرمجية التالي كيفية تعيين اسم شكل العلامة المائية وإزالته من المستند:

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark.Name("WaterMark");
{{< /highlight >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-RemoveWatermark-RemoveWatermark.cs" >}}

## أضف علامة مائية إلى خلية الجدول

في بعض الأحيان تحتاج إلى إدراج علامة مائية/صورة في خلية الجدول وعرضها خارج الجدول، ويمكنك استخدام خاصية [IsLayoutInCell](https://reference.aspose.com/words/ar/net/aspose.words.drawing/shapebase/islayoutincell/). تحصل هذه الخاصية على علامة أو تقوم بتعيينها للإشارة إلى ما إذا كان الشكل معروضًا داخل الجدول أو خارجه. لاحظ أن هذه الخاصية تعمل فقط عند تحسين المستند لـ Microsoft Word 2010 باستخدام طريقة [OptimizeFor](https://reference.aspose.com/words/ar/net/aspose.words.settings/compatibilityoptions/optimizefor/).

يوضح مثال التعليمات البرمجية التالي كيفية استخدام هذه الخاصية:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cs" >}}
