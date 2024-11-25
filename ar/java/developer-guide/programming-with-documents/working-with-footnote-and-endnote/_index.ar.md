---
title: العمل مع الحاشية السفلية والحاشية الختامية في Java
second_title: Aspose.Words ل Java
articleTitle: العمل مع الحاشية السفلية والحاشية الختامية
linktitle: العمل مع الحاشية السفلية والحاشية الختامية
description: "كيفية التعامل مع الحواشي السفلية والتعليقات الختامية باستخدام Java."
type: docs
weight: 160
url: /ar/java/working-with-footnote-and-endnote/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words يوفر أيضا بعض الفئات والأساليب والخصائص للعمل مع الحواشي السفلية والتعليقات الختامية.

## إدراج تعليق ختامي وتعيين خيارات الترقيم

إذا كنت تريد إدراج حاشية سفلية أو حاشية ختامية في مستند ورد، فيرجى استخدام طريقة [InsertFootnote](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertFootnote-int-java.lang.String). تدرج هذه الطريقة حاشية سفلية أو حاشية ختامية في المستند.

[EndnoteOptions](https://reference.aspose.com/words/java/com.aspose.words/endnoteoptions/) و [FootnoteOptions](https://reference.aspose.com/words/java/com.aspose.words/footnoteoptions/) تمثل الفئات خيارات الترقيم للحاشية السفلية والحاشية الختامية.

يوضح مثال الكود التالي كيفية إدراج تعليق ختامي في المستند وتعيين خيارات الترقيم الخاصة به:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetEndnoteOptions.java" >}}

## تعيين عدد أعمدة تخطيط الحاشية السفلية

يمكنك تعيين عدد أعمدة تخطيط الحاشية السفلية باستخدام خاصية [Columns](https://reference.aspose.com/words/java/com.aspose.words/footnoteoptions/#getColumns). إذا كانت قيمة هذه الخاصية 0، يتم تنسيق منطقة الحواشي السفلية بعدد من الأعمدة بناء على عدد الأعمدة في الصفحة المعروضة.

يوضح مثال التعليمات البرمجية التالية كيفية تعيين عدد الأعمدة لتخطيط الحاشية السفلية:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetFootNoteColumns.java" >}}

## تعيين موضع الحاشية السفلية و EndNote

يمكن أن يكون موضع الحاشية السفلية في أسفل كل صفحة أو أسفل النص في كل صفحة. يمكن أن يكون موضع التعليق الختامي في نهاية القسم أو في نهاية المستند.

يوضح مثال الكود التالي كيفية تعيين موضع الحاشية السفلية والحاشية الختامية:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetFootnoteAndEndNotePosition.java" >}}
