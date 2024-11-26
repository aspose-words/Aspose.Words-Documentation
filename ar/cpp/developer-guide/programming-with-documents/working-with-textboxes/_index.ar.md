---
title: العمل مع TextBoxes في C++
second_title: Aspose.Words ل C++
articleTitle: العمل مع TextBoxes
linktitle: العمل مع TextBoxes
description: "مقدمة إلى ميزة مربعات النص المرتبطة في Aspose.Words ل C++."
type: docs
weight: 250
url: /ar/cpp/working-with-textboxes/
timestamp: 2024-01-27-14-07-04
---

في Aspose.Words، يتم استخدام فئة [TextBox](https://reference.aspose.com/words/cpp/aspose.words.drawing/textbox/) لتحديد كيفية عرض النص داخل الشكل. يعرض خاصية عامة تسمى **Parent** للحصول على الشكل الأصلي لمربع النص بحيث يمكن للعميل العثور على [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) المرتبط من **TextBox** المرتبط.

## إنشاء ارتباط

توفر فئة **TextBox** طريقة [IsValidLinkTarget](https://reference.aspose.com/words/cpp/aspose.words.drawing/textbox/isvalidlinktarget/) للتحقق مما إذا كان يمكن ربط **TextBox** بالهدف **Textbox**.

يوضح مثال الكود التالي كيفية التحقق مما إذا كان يمكن ربط `TextBox` بمربع النص الهدف:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CreateALink.cpp" >}}


## تحقق TextBox تسلسل

هناك عدة طرق لعرض النص في شكل. ال [TextBox](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_textbox/) يمكن أن يكون رأس أو وسط أو ذيل تسلسل.

يوضح مثال الكود التالي كيفية التحقق مما إذا كان **TextBox** هو رأس أو ذيل أو منتصف التسلسل:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CheckSequence.cpp" >}}

## كسر الارتباط

باستخدام طريقة [BreakForwardLink](https://reference.aspose.com/words/cpp/aspose.words.drawing/textbox/breakforwardlink/) يمكنك كسر الرابط إلى **TextBox** التالي.

يوضح مثال الكود التالي كيفية كسر ارتباط لـ **TextBox**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-BreakALink.cpp" >}}
