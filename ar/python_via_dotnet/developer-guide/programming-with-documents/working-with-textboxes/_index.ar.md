---
title: العمل مع TextBoxes في Python
second_title: Aspose.Words لـ Python via .NET
articleTitle: العمل مع مربعات النص
linktitle: العمل مع مربعات النص
description: "العمل مع مربعات النص في مستند باستخدام Python."
type: docs
weight: 250
url: /ar/python-net/working-with-textboxes/
timestamp: 2024-01-27-14-07-04
---

في Aspose.Words، يتم استخدام فئة [TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/) لتحديد كيفية عرض النص داخل الشكل. وهو يوفر خاصية عامة تسمى [parent](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/parent/) للحصول على الشكل الأصلي لمربع النص للسماح للعميل بالعثور على [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) المرتبط من [TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/) المرتبط.

## إنشاء رابط

توفر فئة [TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/) طريقة [is_valid_link_target](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/is_valid_link_target/) للتحقق مما إذا كان من الممكن ربط [TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/) بمربع النص الهدف.

يوضح مثال التعليمات البرمجية التالي كيفية التحقق من إمكانية ربط `TextBox` بمربع النص الهدف:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_textboxes-CreateALink.py" >}}

## التحقق من تسلسل مربع النص

هناك عدة طرق لعرض النص في شكل ما. يمكن أن يكون [text_box](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/text_box/) هو رأس التسلسل أو وسطه أو ذيله.

يوضح مثال التعليمات البرمجية التالي كيفية التحقق مما إذا كان **TextBox** هو رأس أو ذيل أو منتصف التسلسل:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_textboxes-CheckSequence.py" >}}

## كسر الارتباط

باستخدام طريقة [text_box](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/text_box/)، يمكنك قطع الرابط إلى **TextBox** التالي.

يوضح مثال التعليمات البرمجية التالي كيفية قطع رابط لـ **TextBox**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_textboxes-BreakALink.py" >}}
