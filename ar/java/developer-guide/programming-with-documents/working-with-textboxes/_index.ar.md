---
title: العمل مع وصلة المنسوجات في Java
second_title: Aspose.Words for Java
articleTitle: Working with Linked TextBoxes
linktitle: Working with Linked TextBoxes
description: "التعريف بملامح صناديق النصوص ذات الصلة Aspose.Words for Java."
type: docs
weight: 250
url: /ar/java/working-with-linked-textboxes/
timestamp: 2024-01-27-14-07-04
---

In Aspose.Words, the [TextBox](https://reference.aspose.com/words/java/com.aspose.words/textbox/) ويستخدم الفصل لتحديد كيفية عرض النص في شكل ما. وهي توفر ملكية عامة تُدعى كأبوة لتشكل الأم في صندوق النص للسماح للزبون بإيجاد صلة [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) متصل **TextBox**.

## Create A Link

The **TextBox** الطبقة تقدم [IsValidLinkTarget](https://reference.aspose.com/words/java/com.aspose.words/textbox/#isValidLinkTarget-com.aspose.words.TextBox) طريقة التحقق مما إذا كان **TextBox** يمكن ربطه بالهدف **Textbox**.

يُظهر المثال الرمزي التالي كيفية التحقق إذا كان `TextBox` يمكن ربطه بصندوق النص المستهدف:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-CreateALink.java" >}}


## النص الإطار

هناك عدة طرق لعرض النص في شكل The [TextBox](https://reference.aspose.com/words/java/com.aspose.words/shape/#getTextBox) يمكن أن يكون الرئيس، الوسط، أو تسلسل.

ويبين المثال الرمزي التالي كيفية التحقق إذا كان **TextBox** هو رئيس، تايل، أو منتصف التسلسل:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-CheckSequence.java" >}}

## كسر لينك

استخدام [BreakForwardLink](https://reference.aspose.com/words/java/com.aspose.words/textbox/#breakForwardLink) الطريقة التي يمكنك كسر الصلة إلى التالي **TextBox**.

يبيّن المثال الرمزي التالي كيفية كسر الرابط **TextBox**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-BreakALink.java" >}}
