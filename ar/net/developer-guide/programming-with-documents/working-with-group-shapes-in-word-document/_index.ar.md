---
title: كيفية إضافة شكل Group إلى مستند Word
second_title: Aspose.Words لـ .NET
articleTitle: كيفية إضافة شكل Group إلى مستند Word
linktitle: العمل مع أشكال Group في مستندات Word
description: "Grouping وفك تجميع الأشكال باستخدام C#."
type: docs
weight: 290
url: /ar/net/how-to-add-group-shape-into-a-word-document/
---

في بعض الأحيان تحتاج إلى إضافة group shape إلى مستند Word. يتكون group shape هذا من أشكال متعددة.

في Microsoft Word، يمكنك إضافة group shape بسرعة باستخدام أمر/زر Group. يمكن نقل شكل فردي في مجموعة بشكل منفصل.

في Aspose.Words، من السهل جدًا إضافة group shape باستخدام فئة [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/). يتم إنشاء **Shape** بشكل منفصل باستخدام فئة [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) ثم تتم إضافته إلى كائن [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/) باستخدام طريقة [AppendChild](https://reference.aspose.com/words/net/aspose.words/compositenode/appendchild/).

يوضح مثال التعليمات البرمجية التالي كيفية إضافة group shape إلى مستند Word:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-AddGroupShapeToDocument-AddGroupShapeToDocument.cs" >}}

{{% alert color="primary" %}}

فيما يلي بعض أنواع `Shape` المدعومة في Aspose.Words:

- مستطيل
- مستطيل مستدير
- مستطيل مستدير
- الشكل البيضاوي
- الماس
- مثلث
- مثلث قائم
- متوازي الاضلاع
- شبه منحرف
- سداسي الزوايا
- المثمن

للحصول على القائمة الكاملة، يرجى مراجعة فئة [ShapeType](https://reference.aspose.com/words/net/aspose.words.drawing/shapetype).

{{% /alert %}}