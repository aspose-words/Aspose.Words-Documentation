---
title: العمل مع العلامة المائية في Python
second_title: Aspose.Words لـ Python via .NET
articleTitle: العمل مع العلامة المائية
linktitle: العمل مع العلامة المائية
description: "قم بإنشاء العلامات المائية وإدارتها في مستند باستخدام Python."
type: docs
weight: 340
url: /ar/python-net/working-with-watermark/
timestamp: 2024-01-27-14-07-04
---

يناقش هذا الموضوع كيفية العمل برمجيًا مع العلامة المائية باستخدام Aspose.Words. العلامة المائية هي صورة خلفية يتم عرضها خلف النص في المستند. يمكن أن تحتوي العلامة المائية على نص أو صورة ممثلة بفئة [Watermark](https://reference.aspose.com/words/python-net/aspose.words/watermark/).

{{% alert color="primary" %}}

**حاول عبر الإنترنت**

يمكنك تجربة هذه الوظيفة مع [علامة مائية مستندية مجانية على الإنترنت](https://products.aspose.app/words/watermark) الخاص بنا.

{{% /alert %}}

## كيفية إضافة علامة مائية إلى مستند

في Microsoft Word، يمكن بسهولة إدراج علامة مائية في مستند باستخدام أمر إدراج علامة مائية. يوفر Aspose.Words فئة [Watermark](https://reference.aspose.com/words/python-net/aspose.words/watermark/) لإضافة أو إزالة العلامة المائية في المستندات. يوفر Aspose.Words تعداد [WatermarkType](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/) الذي يحدد ثلاثة أنواع محتملة من العلامات المائية ([TEXT](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/#text)، و[IMAGE](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/#image)، و[NONE](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/#none)) للعمل معها

### إضافة علامة مائية نصية

يوضح مثال التعليمات البرمجية التالي كيفية إدراج علامة مائية نصية في مستند عن طريق تعريف [TextWatermarkOptions](https://reference.aspose.com/words/python-net/aspose.words/textwatermarkoptions/) باستخدام طريقة [set_text](https://reference.aspose.com/words/python-net/aspose.words/watermark/set_text/).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-AddTextWatermarkWithSpecificOptions.py" >}}

### إضافة علامة مائية للصورة

يوضح مثال التعليمات البرمجية التالي كيفية إدراج علامة مائية مصورة في مستند عن طريق تعريف [ImageWatermarkOptions](https://reference.aspose.com/words/python-net/aspose.words/imagewatermarkoptions/) باستخدام طريقة [set_image](https://reference.aspose.com/words/python-net/aspose.words/watermark/set_image/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-AddImageWatermarkWithSpecificOptions.py" >}}

يمكن أيضًا إدراج العلامة المائية باستخدام فئة الشكل أيضًا. من السهل جدًا إدراج أي شكل أو صورة في الرأس أو التذييل وبالتالي إنشاء علامة مائية من أي نوع يمكن تخيله.

يقوم مثال التعليمات البرمجية التالي بإدراج علامة مائية في مستند Word:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-AddWatermark.py" >}}

{{% alert color="primary" %}}

يمكنك تنزيل ملف القالب الخاص بهذا المثال من [هنا](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx)

{{% /alert %}}


## إزالة العلامة المائية من المستند

توفر فئة [Watermark](https://reference.aspose.com/words/python-net/aspose.words/watermark/) طريقة الإزالة لإزالة العلامة المائية من المستند.

يوضح مثال التعليمات البرمجية التالي كيفية إزالة علامة مائية من المستندات:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-RemoveWatermarkFromDocument.py" >}}

إذا تمت إضافة العلامات المائية باستخدام كائن فئة [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)، فلإزالة العلامة المائية من المستند، يتعين عليك تعيين اسم شكل العلامة المائية فقط أثناء الإدراج ثم إزالة شكل العلامة المائية باسم معين.

يوضح لك مثال التعليمات البرمجية التالي كيفية تعيين اسم شكل العلامة المائية وإزالته من المستند:

{{< highlight python >}}
# Set name to be able to remove it afterwards
watermark.name = "WaterMark"
{{< /highlight >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-RemoveWatermark.py" >}}

## إضافة علامة مائية في خلية الجدول

في بعض الأحيان تحتاج إلى إدراج علامة مائية/صورة في خلية الجدول وعرضها خارج الجدول، ويمكنك استخدام خاصية [is_layout_in_cell](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/is_layout_in_cell/). تحصل هذه الخاصية على علامة أو تقوم بتعيينها للإشارة إلى ما إذا كان الشكل معروضًا داخل الجدول أو خارجه. لاحظ أن هذه الخاصية تعمل فقط عند تحسين المستند لـ Microsoft Word 2010 باستخدام طريقة [optimize_for](https://reference.aspose.com/words/python-net/aspose.words.settings/compatibilityoptions/optimize_for/).

يوضح مثال التعليمات البرمجية التالي كيفية استخدام هذه الخاصية:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-LayoutInCell.py" >}}
