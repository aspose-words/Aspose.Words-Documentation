---
title: الطباعة الآسيوية في Java
second_title: Aspose.Words ل Java
articleTitle: العمل مع الطباعة الآسيوية
linktitle: العمل مع الطباعة الآسيوية
description: "العمل مع الطباعة الآسيوية باستخدام Java. ضبط المسافة بين النص الآسيوي واللاتيني في Java."
type: docs
weight: 240
url: /ar/java/working-with-asian-typography/
timestamp: 2024-01-27-14-07-04
---

الطباعة الآسيوية هي مجموعة من الخيارات للفقرات النصية في المستندات المكتوبة باللغات الآسيوية.

Aspose.Words يدعم الطباعة الآسيوية باستخدام فئة [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) وبعض خصائصها.

## ضبط المسافة تلقائيا بين النص أو الأرقام الآسيوية واللاتينية

إذا كنت تقوم بتصميم قالب مع كل من نص شرق آسيا واللاتينية وترغب في تحسين مظهر قالب النموذج الخاص بك عن طريق التحكم في المسافات بين كلا النوعين من النص، يمكنك تكوين قالب النموذج الخاص بك لضبط المسافات بين هذين النوعين من النص تلقائيا. لتحقيق ذلك، يمكنك استخدام خصائص [AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getAddSpaceBetweenFarEastAndAlpha) و [AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getAddSpaceBetweenFarEastAndDigit) لفئة `ParagraphFormat`.

يوضح مثال الكود التالي كيفية استخدام خصائص **AddSpaceBetweenFarEastAndAlpha** و **AddSpaceBetweenFarEastAndDigit**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderSetSpaceBetweenAsianAndLatinText.java" >}}

## تعيين خيارات فاصل الأسطر

علامة التبويب الطباعة الآسيوية من مربع الحوار خصائص الفقرة في Microsoft Word لديها مجموعة فاصل الأسطر. يمكن تعيين خيارات هذه المجموعة باستخدام [FarEastLineBreakControl](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getFarEastLineBreakControl), [WordWrap](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getWordWrap), [HangingPunctuation](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getHangingPunctuation) خصائص فئة **ParagraphFormat**.

يوضح مثال التعليمات البرمجية التالية كيفية استخدام هذه الخصائص:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-SetAsianTypographyLinebreakGroupProp.java" >}}

## تغيير تباعد الفقرات الآسيوية والمسافات البادئة

يوضح مثال الكود التالي كيفية تغيير تباعد الفقرات الآسيوية والمسافات البادئة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ChangeAsianParagraphSpacingandIndents.java" >}}
