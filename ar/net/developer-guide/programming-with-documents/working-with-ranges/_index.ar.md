---
title: العمل مع النطاقات في C#
second_title: Aspose.Words لـ .NET
articleTitle: العمل مع النطاقات
linktitle: العمل مع النطاقات
description: "مقدمة إلى ميزة النطاق في Aspose.Words لـ .NET."
type: docs
weight: 130
url: /ar/net/working-with-ranges/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

في Aspose.Words، النطاق هو "نافذة مسطحة" في نموذج المستند الذي يشبه الشجرة.

{{% /alert %}}

إذا كنت قد عملت مع Microsoft Word Automation، فمن المحتمل أنك تعلم أن إحدى الأدوات الرئيسية لفحص محتوى المستند وتعديله هي كائن **Range**. يشبه **Range** "نافذة" في محتوى المستند وتنسيقه.

يحتوي Aspose.Words أيضًا على فئة [Range](https://reference.aspose.com/words/ar/net/aspose.words/range/) وهو مصمم ليبدو ويتصرف بشكل مشابه لـ **Range** في Microsoft Word. على الرغم من أن **Range** لا يمكنه تغطية جزء عشوائي من المستند ولا يحتوي على **Start** و**End**، إلا أنه يمكنك الوصول إلى النطاق الذي تغطيه أي عقدة مستند بما في ذلك ملف [Document](https://reference.aspose.com/words/ar/net/aspose.words/document/) نفسه. بمعنى آخر، كل عقدة لها نطاقها الخاص. يتيح لك كائن **Range** الوصول إلى النص والإشارات المرجعية وحقول النماذج وتعديلها ضمن النطاق.

## استرداد نص عادي

استخدم خاصية [Text](https://reference.aspose.com/words/ar/net/aspose.words/range/text/) لاسترداد نص عادي غير منسق للنطاق.

يوضح مثال التعليمات البرمجية التالي كيفية الحصول على نص عادي غير منسق لنطاق:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Ranges-RangesGetText-RangesGetText.cs" >}}

{{% alert color="primary" %}}

يمكنك تنزيل الملف النموذجي لهذا المثال من [Aspose.Words GitHub](ttps://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

## حذف النص

يسمح النطاق بحذف جميع أحرف النطاق عن طريق استدعاء [Delete](https://reference.aspose.com/words/ar/net/aspose.words/range/delete/).

يوضح مثال التعليمات البرمجية التالي كيفية حذف كافة أحرف النطاق:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Ranges-RangesDeleteText-RangesDeleteText.cs" >}}

{{% alert color="primary" %}}

يمكنك تنزيل الملف النموذجي لهذا المثال من [Aspose.Words GitHub](ttps://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}
