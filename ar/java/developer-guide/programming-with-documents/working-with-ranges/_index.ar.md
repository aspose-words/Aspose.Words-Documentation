---
title: العمل مع راندجز Java
second_title: Aspose.Words for Java
articleTitle: العمل مع راندجز
linktitle: العمل مع راندجز
description: "مقدمة إلى سمة الرنج في Aspose.Words for Java."
type: docs
weight: 130
url: /ar/java/working-with-ranges/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

In Aspose.Words, a Range is a "flat window" into an otherwise tree-like model of the document.

{{% /alert %}}

إذا كنت تعمل مع Microsoft Word التلقّي، لعلّك تعرف أنّ أحد الأدوات الرئيسية لفحص وتعديل محتوى الوثائق هو `Range` هدف (رانج) مثل "الوصول" في محتوى الوثيقة وشكلها.

Aspose.Words أيضاً [Range](https://reference.aspose.com/words/java/com.aspose.words/range/) صنف و مصمم للنظر والتصرف على نحو مماثل **Range** في Microsoft Word. على الرغم من **Range** لا يمكن أن يغطي جزءاً تعسفياً من الوثيقة وليس لديه **Start** و **End**, يمكنك الوصول إلى النطاق الذي تغطيه أيّ رمز وثائق بما في ذلك [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) نفسه وبعبارة أخرى، لكل عقدة نطاق خاص بها. The **Range** الجسم يسمح لك بالوصول وتعديل النص، وعلامات الكتاب وتشكيل الحقول داخل النطاق.

## Retrieving Plain Text

استخدام [Text](https://reference.aspose.com/words/java/com.aspose.words/range/#getText) ممتلكات لاسترجاع النص البسيط غير الرسمي للنطاق

The following code example shows how to get a plain, unformatted text of a range:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Ranges-RangesGetText-RangesGetText.java" >}}

{{% alert color="primary" %}}

يمكنك تحميل ملف العينة من هذا المثال [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## يحذف النص

The `Range` يسمح الفصل بحذف جميع شخصيات النطاق عن طريق الاتصال [delete](https://reference.aspose.com/words/java/com.aspose.words/range/#delete).

The following code example shows how to delete all characters of a range:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Ranges-RangesDeleteText-RangesDeleteText.java" >}}

{{% alert color="primary" %}}

يمكنك تحميل ملف العينة من هذا المثال [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## 
