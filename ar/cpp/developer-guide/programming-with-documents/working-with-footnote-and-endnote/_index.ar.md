---
title: العمل مع الحاشية السفلية والحاشية الختامية في C++
second_title: Aspose.Words ل C++
articleTitle: العمل مع الحاشية السفلية والحاشية الختامية
linktitle: العمل مع الحاشية السفلية والحاشية الختامية
description: "كيفية التعامل مع الحواشي السفلية والتعليقات الختامية باستخدام C++."
type: docs
weight: 160
url: /ar/cpp/working-with-footnote-and-endnote/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words يوفر أيضا بعض الفئات والأساليب والخصائص للعمل مع الحواشي السفلية والتعليقات الختامية.

## إدراج تعليق ختامي وتعيين خيارات الترقيم

إذا كنت تريد إدراج حاشية سفلية أو حاشية ختامية في مستند ورد، فيرجى استخدام طريقة [InsertFootnote](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfootnote/). تدرج هذه الطريقة حاشية سفلية أو حاشية ختامية في المستند.

[EndnoteOptions](https://reference.aspose.com/words/cpp/aspose.words.notes/endnoteoptions/) و [FootnoteOptions](https://reference.aspose.com/words/cpp/aspose.words.notes/footnoteoptions/) تمثل الفئات خيارات الترقيم للحاشية السفلية والحاشية الختامية.

يوضح مثال الكود التالي كيفية إدراج تعليق ختامي في المستند وتعيين خيارات الترقيم الخاصة به:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithFootnote-SetEndnoteOptions.cpp" >}}

## تعيين عدد أعمدة تخطيط الحاشية السفلية

يمكنك تعيين عدد أعمدة تخطيط الحاشية السفلية باستخدام خاصية [Columns](https://reference.aspose.com/words/cpp/aspose.words.notes/footnoteoptions/get_columns/). إذا كانت قيمة هذه الخاصية 0، يتم تنسيق منطقة الحواشي السفلية بعدد من الأعمدة بناء على عدد الأعمدة في الصفحة المعروضة.

يوضح مثال التعليمات البرمجية التالية كيفية تعيين عدد الأعمدة لتخطيط الحاشية السفلية:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithFootnote-SetFootNoteColumns.cpp" >}}

## تعيين موضع الحاشية السفلية و EndNote

يمكن أن يكون موضع الحاشية السفلية في أسفل كل صفحة أو أسفل النص في كل صفحة. يمكن أن يكون موضع التعليق الختامي في نهاية القسم أو في نهاية المستند.

يوضح مثال الكود التالي كيفية تعيين موضع الحاشية السفلية والحاشية الختامية:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithFootnote-SetFootnoteAndEndNotePosition.cpp" >}}
