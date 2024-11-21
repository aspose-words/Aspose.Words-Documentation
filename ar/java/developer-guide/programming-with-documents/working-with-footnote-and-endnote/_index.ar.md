---
title: العمل مع الحاشية والتاريخ Java
second_title: Aspose.Words for Java
articleTitle: العمل مع الحاشية والخانة
linktitle: العمل مع الحاشية والخانة
description: "كيفية التلاعب بالحواشي والمذكرات الختامية باستخدام Java."
type: docs
weight: 160
url: /ar/java/working-with-footnote-and-endnote/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words كما توفر بعض الصفوف والأساليب والخصائص من أجل العمل في حواشي وحاشي نهاية.

## Insert Endnote and Set Numbering Options

إذا أردت إدراج حاشية أو حاشية نهائية في وثيقة كلمة، يرجى استخدام [InsertFootnote](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertFootnote-int-java.lang.String) طريقة وتدرج هذه الطريقة حاشية أو حاشية نهاية في الوثيقة.

[EndnoteOptions](https://reference.aspose.com/words/java/com.aspose.words/endnoteoptions/) و [FootnoteOptions](https://reference.aspose.com/words/java/com.aspose.words/footnoteoptions/) وتمثل الفصول خيارات الترقيم للحاشية والحاشية الختامية.

ويبين المثال الرمزي التالي كيفية إدراج الحاشية النهائية في الوثيقة وتحديد خيارات الترقيم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetEndnoteOptions.java" >}}

## عدد الكولومين

يمكنك تحديد عدد أعمدة تحديد الحاشية باستخدام [Columns](https://reference.aspose.com/words/java/com.aspose.words/footnoteoptions/#getColumns) ملكية وإذا كانت قيمة هذه الممتلكات تبلغ صفرا، فإن مساحة الحواشي مهيأة بعدد من الأعمدة استنادا إلى عدد الأعمدة في الصفحة المعروضة.

ويبيّن المثال الرمزي التالي كيفية تحديد عدد الأعمدة المتعلقة بوضع الحاشية:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetFootNoteColumns.java" >}}

## تحديد موقف الحاشية والنقطة النهائية

ويمكن أن يكون موقف الحاشية في قاع كل صفحة أو تحت النص في كل صفحة. ويمكن أن يكون الموقف النهائي في نهاية الفرع أو في نهاية الوثيقة.

ويبين المثال الرمزي التالي كيفية تحديد موقف الحاشية والحاشية:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetFootnoteAndEndNotePosition.java" >}}
