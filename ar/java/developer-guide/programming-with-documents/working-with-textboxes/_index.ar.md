---
title: العمل مع ربط TextBoxes في Java
second_title: Aspose.Words ل Java
articleTitle: العمل مع ربط TextBoxes
linktitle: العمل مع ربط TextBoxes
description: "مقدمة إلى ميزة مربعات النص المرتبطة في Aspose.Words لـ Java."
type: docs
weight: 250
url: /ar/java/working-with-linked-textboxes/
timestamp: 2024-01-27-14-07-04
---

في Aspose.Words، يتم استخدام فئة [TextBox](https://reference.aspose.com/words/java/com.aspose.words/textbox/) لتحديد كيفية عرض النص داخل الشكل. يوفر خاصية عامة تسمى الوالد للحصول على الشكل الأصلي لمربع النص للسماح للعميل بالعثور على مرتبط [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) من مرتبط **TextBox**.

## إنشاء ارتباط

توفر فئة **TextBox** طريقة [IsValidLinkTarget](https://reference.aspose.com/words/java/com.aspose.words/textbox/#isValidLinkTarget-com.aspose.words.TextBox) للتحقق مما إذا كان يمكن ربط **TextBox** بالهدف **Textbox**.

يوضح مثال الكود التالي كيفية التحقق مما إذا كان يمكن ربط `TextBox` بمربع النص الهدف:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-CreateALink.java" >}}


## تحقق TextBox تسلسل

هناك عدة طرق لعرض النص في شكل. ال [TextBox](https://reference.aspose.com/words/java/com.aspose.words/shape/#getTextBox) يمكن أن يكون رأس أو وسط أو ذيل تسلسل.

يوضح مثال الكود التالي كيفية التحقق مما إذا كان **TextBox** هو رأس أو ذيل أو منتصف التسلسل:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-CheckSequence.java" >}}

## كسر الارتباط

باستخدام طريقة [BreakForwardLink](https://reference.aspose.com/words/java/com.aspose.words/textbox/#breakForwardLink) يمكنك كسر الرابط إلى **TextBox** التالي.

يوضح مثال الكود التالي كيفية كسر ارتباط لـ **TextBox**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-BreakALink.java" >}}
