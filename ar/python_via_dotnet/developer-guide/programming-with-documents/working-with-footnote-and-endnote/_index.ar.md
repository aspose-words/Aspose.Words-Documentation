---
title: العمل مع الحواشي السفلية والتعليقات الختامية
second_title: Aspose.Words لـ Python via .NET
articleTitle: العمل مع الحواشي السفلية والتعليقات الختامية
linktitle: العمل مع الحواشي السفلية والتعليقات الختامية
description: "قم بإدراج الحواشي أو التعليقات الختامية في المستند وحدد خياراته باستخدام Python."
type: docs
weight: 160
url: /ar/python-net/working-with-footnote-and-endnote/
---

يوفر Aspose.Words أيضًا بعض الفئات والأساليب والخصائص للتعامل مع الحواشي السفلية والتعليقات الختامية.

## قم بإدراج تعليق ختامي وتعيين خيارات الترقيم

إذا كنت تريد إدراج حاشية سفلية أو تعليق ختامي في مستند Word، فيرجى استخدام طريقة [insert_footnote](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_footnote/). تقوم هذه الطريقة بإدراج حاشية سفلية أو تعليق ختامي في المستند.

تمثل فئتا [EndnoteOptions](https://reference.aspose.com/words/python-net/aspose.words.notes/endnoteoptions/) و[FootnoteOptions](https://reference.aspose.com/words/python-net/aspose.words.notes/footnoteoptions/) خيارات ترقيم للحواشي السفلية والتعليقات الختامية.

يوضح مثال التعليمات البرمجية التالي كيفية إدراج تعليق ختامي في المستند وتعيين خيارات الترقيم الخاصة به:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_footnote_and_endnote-SetEndnoteOptions.py" >}}

## تعيين عدد أعمدة تخطيط الحواشي السفلية

يمكنك ضبط عدد أعمدة تخطيط الحواشي السفلية باستخدام خاصية [columns](https://reference.aspose.com/words/python-net/aspose.words.notes/footnoteoptions/columns/). إذا كانت قيمة هذه الخاصية 0، فسيتم تنسيق منطقة الحواشي السفلية بعدد من الأعمدة بناءً على عدد الأعمدة في الصفحة المعروضة.

يوضح مثال التعليمات البرمجية التالي كيفية تعيين عدد الأعمدة لتخطيط الحاشية السفلية:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_footnote_and_endnote-SetFootNoteColumns.py" >}}

## قم بتعيين موضع الحاشية السفلية والملاحظة الختامية

يمكن أن يكون موضع الحاشية السفلية في أسفل كل صفحة أو أسفل النص الموجود في كل صفحة. يمكن أن يكون موضع التعليق الختامي في نهاية القسم أو في نهاية المستند.

يوضح مثال التعليمات البرمجية التالي كيفية تعيين موضع الحاشية السفلية والتعليق الختامي:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_footnote_and_endnote-SetFootnoteAndEndNotePosition.py" >}}
