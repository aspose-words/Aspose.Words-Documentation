---
title: العمل مع العلامة المائية في C++
second_title: Aspose.Words ل C++
articleTitle: العمل مع العلامة المائية
linktitle: العمل مع العلامة المائية
type: docs
description: "وثيقة التلاعب العلامة المائية باستخدام C++."
weight: 340
url: /ar/cpp/working-with-watermark/
---

يناقش هذا الموضوع كيفية العمل برمجيا باستخدام العلامة المائية Aspose.Words. العلامة المائية هي صورة خلفية تعرض خلف النص في المستند. يمكن أن تحتوي العلامة المائية على نص أو صورة ممثلة بفئة [Watermark](https://reference.aspose.com/words/cpp/aspose.words/watermark/).

## أضف علامة مائية إلى مستند

في Microsoft Word، يمكن بسهولة إدراج علامة مائية في مستند باستخدام أمر إدراج علامة مائية. Aspose.Words يوفر فئة [watermark](https://reference.aspose.com/words/cpp/aspose.words/watermark/) لإضافة أو إزالة العلامة المائية في المستندات. Aspose.Words يوفر [WatermarkType ](https://reference.aspose.com/words/cpp/aspose.words/)التعداد الذي يحدد ثلاثة أنواع ممكنة من العلامات المائية (نص وصورة ولا شيء) للعمل معها.

### إضافة نص العلامة المائية

يوضح مثال التعليمات البرمجية التالية كيفية إدراج علامة مائية نصية في مستند بتعريف [TextWatermarkOptions](https://reference.aspose.com/words/cpp/aspose.words/textwatermarkoptions/) باستخدام طريقة [SetText](https://reference.aspose.com/words/cpp/aspose.words/watermark/settext/).

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.cpp" >}}

### إضافة صورة مائية

يوضح مثال الكود التالي كيفية إدراج علامة مائية للصورة في مستند بتعريف [ImageWatermarkOptions](https://reference.aspose.com/words/cpp/aspose.words/imagewatermarkoptions/) باستخدام طريقة [SetImage](https://reference.aspose.com/words/cpp/aspose.words/watermark/setimage/).

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.cpp" >}}

يمكن أيضا إدراج العلامة المائية باستخدام فئة الشكل أيضا. من السهل جدا إدراج أي شكل أو صورة في رأس أو تذييل وبالتالي إنشاء علامة مائية من أي نوع يمكن تخيله. يقوم مثال الكود التالي بإدراج علامة مائية في مستند ورد.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Images-AddWatermark-AddWatermark.cpp" >}}

{{% alert color="primary" %}}

يمكنك تنزيل ملف القالب لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}


## إزالة العلامة المائية من مستند

توفر فئة [Watermark](https://reference.aspose.com/words/cpp/aspose.words/watermark/) طريقة الإزالة لإزالة العلامة المائية من مستند.

يوضح مثال الكود التالي كيفية إزالة علامة مائية من المستندات:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkWithWatermark-RemoveWatermarkFromDocument.cpp" >}}

إذا تمت إضافة العلامات المائية باستخدام كائن فئة [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/)، ثم لإزالة العلامة المائية من مستند، يجب عليك تعيين اسم شكل العلامة المائية فقط أثناء الإدراج ثم إزالة شكل العلامة المائية باسم معين.

يوضح لك مثال التعليمات البرمجية التالي كيفية تعيين اسم شكل العلامة المائية وإزالته من المستند:

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark->set_Name(u"WaterMark");
{{< /highlight >}}


{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Images-RemoveWatermark-RemoveWatermark.cpp" >}}

## إضافة علامة مائية في خلية الجدول

في بعض الأحيان تحتاج إلى إدراج علامة مائية/صورة في خلية الجدول وعرضها خارج الجدول، يمكنك استخدام خاصية [IsLayoutInCell](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_islayoutincell/). تحصل هذه الخاصية أو تحدد علامة تشير إلى ما إذا كان الشكل معروضا داخل جدول أو خارجه. لاحظ أن هذه الخاصية تعمل فقط عند تحسين المستند لـ Microsoft Word 2010 باستخدام طريقة [OptimizeFor](https://reference.aspose.com/words/cpp/aspose.words.settings/compatibilityoptions/optimizefor/).

يوضح مثال التعليمات البرمجية التالية كيفية استخدام هذه الخاصية:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cpp" >}}
