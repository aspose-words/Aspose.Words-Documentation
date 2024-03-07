---
title: كيفية إضافة شكل Group إلى ملف Word
second_title: Aspose.Words لـ Python via .NET
articleTitle: العمل مع شكل Group في مستندات Word
linktitle: العمل مع شكل Group في مستندات Word
description: "أضف group shape إلى مستند باستخدام Python."
type: docs
weight: 290
url: /ar/python-net/how-to-add-group-shape-into-a-word-document/
---

في بعض الأحيان تحتاج إلى إضافة group shape إلى مستند Word. يتكون group shape هذا من أشكال متعددة.

في Microsoft Word، يمكنك إضافة group shape بسرعة باستخدام أمر/زر Group. يمكن نقل شكل فردي في مجموعة بشكل منفصل.

في Aspose.Words، من السهل جدًا إضافة group shape باستخدام فئة [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/). يتم إنشاء الشكل بشكل منفصل باستخدام فئة [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) ثم تتم إضافته إلى كائن [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) باستخدام طريقة [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/).

يوضح مثال التعليمات البرمجية التالي كيفية إضافة group shape إلى مستند Word:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-AddGroupShape.py" >}}

{{% alert color="primary" %}}

فيما يلي بعض أنواع `Shape` المدعومة في Aspose.Words. للحصول على القائمة الكاملة، يرجى مراجعة تعداد [aspose.words.drawing.ShapeType](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/)

- [Rectangle](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#rectangle)
- [RoundRectangle](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#round_rectangle)
- [Ellipse](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#ellipse)
- [Diamond](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#diamond)
- [Triangle](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#triangle)
- [RightTriangle](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#right_triangle)
- [Parallelogram](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#parallelogram)
- [Trapezoid](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#trapezoid)
- [Hexagon](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#hexagon)
- [Octagon](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#octagon)

{{% /alert %}}
