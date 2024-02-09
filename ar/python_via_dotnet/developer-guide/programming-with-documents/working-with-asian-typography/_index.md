---
title: الطباعة الآسيوية في Python
second_title: Aspose.Words لـ Python
articleTitle: العمل مع الطباعة الآسيوية
linktitle: العمل مع الطباعة الآسيوية
description: "العمل مع الطباعة الآسيوية باستخدام Python. ضبط المسافة بين النص الآسيوي واللاتيني في Python."
type: docs
weight: 240
url: /ar/python-net/working-with-asian-typography/
---

الطباعة الآسيوية عبارة عن مجموعة من الخيارات للفقرات النصية في المستندات المكتوبة باللغات الآسيوية.

يدعم Aspose.Words الطباعة الآسيوية باستخدام فئة [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/) وبعض خصائصها.

## ضبط المسافة تلقائيًا بين النص أو الأرقام الآسيوية واللاتينية

إذا كنت تقوم بتصميم قالب باستخدام نص شرق آسيوي ونص لاتيني وتريد تحسين مظهر قالب النموذج الخاص بك عن طريق التحكم في المسافات بين كلا النوعين من النص، فيمكنك تكوين قالب النموذج الخاص بك لضبط المسافات بين هذين النوعين من النص تلقائياً. لتحقيق ذلك، يمكنك استخدام خصائص [AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/add_space_between_far_east_and_alpha/) و[AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/add_space_between_far_east_and_digit/) لفئة `ParagraphFormat`.

يوضح مثال التعليمات البرمجية التالي كيفية استخدام خصائص **AddSpaceBetweenFarEastAndAlpha** و**AddSpaceBetweenFarEastAndDigit**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-SpaceBetweenAsianAndLatinText.py" >}}

## ضبط خيارات فاصل الأسطر

تحتوي علامة التبويب الطباعة الآسيوية في مربع حوار خصائص الفقرة في Microsoft Word على مجموعة فواصل الأسطر. يمكن تعيين خيارات هذه المجموعة باستخدام خصائص [FarEastLineBreakControl](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/far_east_line_break_control/) و[WordWrap](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/word_wrap/) و[HangingPunctuation](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/hanging_punctuation/) لفئة **ParagraphFormat**.

يوضح مثال التعليمات البرمجية التالي كيفية استخدام هذه الخصائص:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-AsianTypographyLineBreakGroup.py" >}}
