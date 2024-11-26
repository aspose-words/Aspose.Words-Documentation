---
title: العمل مع نطاقات في Java
second_title: Aspose.Words ل Java
articleTitle: العمل مع النطاقات
linktitle: العمل مع النطاقات
description: "مقدمة لميزة النطاق في Aspose.Words إلى عن على Java."
type: docs
weight: 130
url: /ar/java/working-with-ranges/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

في Aspose.Words، النطاق هو "نافذة مسطحة"في نموذج يشبه الشجرة من المستند.

{{% /alert %}}

إذا كنت قد عملت مع أتمتة Microsoft Word، فمن المحتمل أنك تعلم أن إحدى الأدوات الرئيسية لفحص محتوى المستند وتعديله هي الكائن `Range`.النطاق يشبه "نافذة" في محتوى المستند وتنسيقه.

يحتوي Aspose.Words أيضا على فئة [Range](https://reference.aspose.com/words/java/com.aspose.words/range/) وهي مصممة لتبدو وتتصرف بشكل مشابه لـ **Range** في Microsoft Word. على الرغم من أن **Range** لا يمكن أن يغطي جزءا تعسفيا من المستند ولا يحتوي على **Start** و **End**، يمكنك الوصول إلى النطاق الذي تغطيه أي عقدة مستند بما في ذلك [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) نفسها. بمعنى آخر، كل عقدة لها نطاقها الخاص. يسمح لك الكائن **Range** بالوصول إلى النص والإشارات المرجعية وحقول النموذج داخل النطاق وتعديلها.

## استرجاع نص عادي

استخدم الخاصية [Text](https://reference.aspose.com/words/java/com.aspose.words/range/#getText) لاسترداد النص العادي غير المنسق للنطاق.

يوضح مثال الكود التالي كيفية الحصول على نص عادي غير منسق لنطاق:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Ranges-RangesGetText-RangesGetText.java" >}}

{{% alert color="primary" %}}

يمكنك تنزيل نموذج ملف هذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## حذف النص

تسمح فئة `Range` بحذف جميع أحرف النطاق عن طريق الاتصال [delete](https://reference.aspose.com/words/java/com.aspose.words/range/#delete).

يوضح مثال الكود التالي كيفية حذف جميع أحرف النطاق:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Ranges-RangesDeleteText-RangesDeleteText.java" >}}

{{% alert color="primary" %}}

يمكنك تنزيل نموذج ملف هذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}


