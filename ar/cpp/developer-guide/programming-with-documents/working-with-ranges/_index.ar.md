---
title: العمل مع نطاقات في C++
second_title: Aspose.Words ل C++
articleTitle: العمل مع النطاقات
linktitle: العمل مع النطاقات
description: "مقدمة لميزة النطاق في Aspose.Words ل C++."
type: docs
weight: 130
url: /ar/cpp/working-with-ranges/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

في Aspose.Words، النطاق هو "نافذة مسطحة"في نموذج يشبه الشجرة من المستند.

{{% /alert %}}

إذا كنت قد عملت مع أتمتة Microsoft Word، فمن المحتمل أنك تعلم أن إحدى الأدوات الرئيسية لفحص محتوى المستند وتعديله هي الكائن **Range**. **Range** يشبه "نافذة" في محتوى المستند وتنسيقه.

يحتوي Aspose.Words أيضا على فئة [Range](https://reference.aspose.com/words/cpp/aspose.words/range/) وهي مصممة لتبدو وتتصرف بشكل مشابه لـ **Range** في Microsoft Word. على الرغم من أن **Range** لا يمكن أن يغطي جزءا تعسفيا من المستند ولا يحتوي على **Start** و **End**، يمكنك الوصول إلى النطاق الذي تغطيه أي عقدة مستند بما في ذلك [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) نفسها. بمعنى آخر، كل عقدة لها نطاقها الخاص. يسمح لك الكائن **Range** بالوصول إلى النص والإشارات المرجعية وحقول النموذج داخل النطاق وتعديلها.

## استرجاع نص عادي

استخدم خاصية [Text](https://reference.aspose.com/words/cpp/aspose.words/range/get_text/) لاسترداد نص عادي غير منسق للنطاق.

يوضح مثال الكود التالي كيفية الحصول على نص عادي غير منسق لنطاق:

{{< gist aspose-words-gists "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Ranges-RangesGetText-RangesGetText.cpp" >}}

{{% alert color="primary" %}}

يمكنك تنزيل نموذج ملف هذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## حذف النص

يسمح النطاق بحذف جميع أحرف النطاق عن طريق الاتصال [Delete](https://reference.aspose.com/words/cpp/aspose.words/range/delete/).

يوضح مثال الكود التالي كيفية حذف جميع أحرف النطاق:

{{< gist aspose-words-gists "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Ranges-RangesDeleteText-RangesDeleteText.cpp" >}}

{{% alert color="primary" %}}

يمكنك تنزيل نموذج ملف هذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}
