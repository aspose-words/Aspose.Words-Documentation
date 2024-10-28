---
title: كيفية إضافة Group Shape إلى مستند ورد
second_title: Aspose.Words ل C++
articleTitle: العمل مع Group Shapes في مستندات ورد
linktitle: العمل مع Group Shapes في مستندات ورد
description: "تجميع وفك تجميع الأشكال باستخدام C++."
type: docs
weight: 290
url: /ar/cpp/how-to-add-group-shape-into-a-word-document/
---

في بعض الأحيان تحتاج إلى إضافة group shape إلى مستند ورد. يتكون هذا group shape من أشكال متعددة.

في Microsoft Word، يمكنك إضافة group shape بسرعة باستخدام أمر/زر المجموعة. يمكن نقل شكل فردي في مجموعة بشكل منفصل.

في Aspose.Words من السهل جدا إضافة group shape باستخدام فئة [GroupShape](https://reference.aspose.com/words/cpp/aspose.words.drawing/groupshape/). يتم إنشاء الشكل بشكل منفصل باستخدام فئة [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) ثم يضاف إلى الكائن **GroupShape** باستخدام طريقة [AppendChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/appendchild/).

يوضح مثال الكود التالي كيفية إضافة group shape إلى مستند ورد:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-AddGroupShapeToDocument-AddGroupShapeToDocument.cpp" >}}

{{% alert color="primary" %}}

فيما يلي بعض أنواع `Shape` المدعومة في Aspose.Words. للحصول على قائمة كاملة، يرجى زيارة [ShapeType](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapetype/):

- مستطيل
- RoundRectangle
- RoundRectangle
- القطع الناقص
- الماس
- المثلث
- RightTriangle
- متوازي الاضلاع
- شبه منحرف
- مسدس
- المثمن

{{% /alert %}}