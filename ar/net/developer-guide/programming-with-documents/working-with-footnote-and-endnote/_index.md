---
title: العمل مع الحواشي السفلية والتعليقات الختامية في C#
second_title: Aspose.Words لـ .NET
articleTitle: العمل مع الحواشي السفلية والتعليقات الختامية
linktitle: العمل مع الحواشي السفلية والتعليقات الختامية
description: "كيفية التعامل مع الحواشي السفلية والتعليقات الختامية باستخدام C#."
type: docs
weight: 160
url: /ar/net/working-with-footnote-and-endnote/
---

يوفر Aspose.Words أيضًا بعض الفئات والأساليب والخصائص للتعامل مع الحواشي السفلية والتعليقات الختامية.

## قم بإدراج تعليق ختامي وتعيين خيارات الترقيم

إذا كنت تريد إدراج حاشية سفلية أو تعليق ختامي في مستند Word، فيرجى استخدام طريقة [InsertFootnote](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfootnote/). تقوم هذه الطريقة بإدراج حاشية سفلية أو تعليق ختامي في المستند.

تمثل فئتا [EndnoteOptions](https://reference.aspose.com/words/net/aspose.words.notes/endnoteoptions/) و[FootnoteOptions](https://reference.aspose.com/words/net/aspose.words.notes/footnoteoptions/) خيارات ترقيم للحواشي السفلية والتعليقات الختامية.

يوضح مثال التعليمات البرمجية التالي كيفية إدراج تعليق ختامي في المستند وتعيين خيارات الترقيم الخاصة به:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithFootnote-SetEndnoteOptions.cs" >}}

## تعيين عدد أعمدة تخطيط الحواشي السفلية

يمكنك ضبط عدد أعمدة تخطيط الحواشي السفلية باستخدام خاصية [Columns](https://reference.aspose.com/words/net/aspose.words.notes/footnoteoptions/columns/). إذا كانت قيمة هذه الخاصية 0، فسيتم تنسيق منطقة الحواشي السفلية بعدد من الأعمدة بناءً على عدد الأعمدة في الصفحة المعروضة.

يوضح مثال التعليمات البرمجية التالي كيفية تعيين عدد الأعمدة لتخطيط الحاشية السفلية:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithFootnote-SetFootNoteColumns.cs" >}}

## قم بتعيين موضع الحاشية السفلية والملاحظة الختامية

يمكن أن يكون موضع الحاشية السفلية في أسفل كل صفحة أو أسفل النص الموجود في كل صفحة. يمكن أن يكون موضع التعليق الختامي في نهاية القسم أو في نهاية المستند.

يوضح مثال التعليمات البرمجية التالي كيفية تعيين موضع الحاشية السفلية والتعليق الختامي:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithFootnote-SetFootnoteOptions.cs" >}}
