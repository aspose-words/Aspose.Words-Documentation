---
title: العمل مع TextBoxes في C#
second_title: Aspose.Words لـ .NET
articleTitle: العمل مع مربعات النص
linktitle: العمل مع مربعات النص
description: "مقدمة لميزة مربعات النص المرتبطة في Aspose.Words لـ .NET."
type: docs
weight: 250
url: /ar/net/working-with-textboxes/
timestamp: 2024-01-27-14-07-04
---

في Aspose.Words، يتم استخدام فئة [TextBox](https://reference.aspose.com/words/ar/net/aspose.words.drawing/textbox/) لتحديد كيفية عرض النص داخل الشكل. يعرض خاصية عامة تسمى **Parent** للحصول على الشكل الأصلي لمربع النص بحيث يمكن للعميل العثور على [Shape](https://reference.aspose.com/words/ar/net/aspose.words.drawing/shape/) المرتبط من **TextBox** المرتبط.

## إنشاء رابط

توفر فئة **TextBox** طريقة [IsValidLinkTarget](https://reference.aspose.com/words/ar/net/aspose.words.drawing/textbox/isvalidlinktarget/) للتحقق مما إذا كان من الممكن ربط **TextBox** بـ **Textbox** الهدف.

يوضح مثال التعليمات البرمجية التالي كيفية التحقق من إمكانية ربط `TextBox` بمربع النص الهدف:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CreateALink.cs" >}}

## التحقق من تسلسل مربع النص

هناك عدة طرق لعرض النص في شكل ما. يمكن أن يكون [TextBox](https://reference.aspose.com/words/ar/net/aspose.words.drawing/shape/textbox/) هو رأس التسلسل أو وسطه أو ذيله.

يوضح مثال التعليمات البرمجية التالي كيفية التحقق مما إذا كان **TextBox** هو رأس أو ذيل أو منتصف التسلسل:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CheckSequence.cs" >}}

## كسر الارتباط

باستخدام طريقة [BreakForwardLink](https://reference.aspose.com/words/ar/net/aspose.words.drawing/textbox/breakforwardlink/)، يمكنك قطع الرابط إلى **TextBox** التالي.

يوضح مثال التعليمات البرمجية التالي كيفية قطع رابط لـ **TextBox**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-BreakALink.cs" >}}
