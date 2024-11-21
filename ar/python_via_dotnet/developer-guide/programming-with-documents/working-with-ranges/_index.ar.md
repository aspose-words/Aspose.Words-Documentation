---
title: العمل مع النطاقات في Python
second_title: Aspose.Words لـ Python via .NET
articleTitle: العمل مع النطاقات
linktitle: العمل مع النطاقات
description: "العمل مع النطاقات في مستند باستخدام Python."
type: docs
weight: 130
url: /ar/python-net/working-with-ranges/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

في Aspose.Words، يعد [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) بمثابة "نافذة مسطحة" في نموذج المستند الذي يشبه الشجرة.

{{% /alert %}}

إذا كنت قد عملت مع Microsoft Word Automation، فمن المحتمل أنك تعلم أن إحدى الأدوات الرئيسية لفحص محتوى المستند وتعديله هي كائن [Range](https://reference.aspose.com/words/python-net/aspose.words/range/). يشبه [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) "نافذة" في محتوى المستند وتنسيقه. يحتوي Aspose.Words أيضًا على فئة [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) وهو مصمم ليبدو ويتصرف بشكل مشابه لـ **Range** في Microsoft Word. على الرغم من أن **Range** لا يمكنه تغطية جزء عشوائي من المستند ولا يحتوي على **Start** و**End**، إلا أنه يمكنك الوصول إلى النطاق الذي تغطيه أي عقدة مستند بما في ذلك ملف [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) نفسه. بمعنى آخر، كل عقدة لها نطاقها الخاص. يتيح لك كائن [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) الوصول إلى النص والإشارات المرجعية وحقول النماذج وتعديلها ضمن النطاق.

## استرداد نص عادي

استخدم خاصية [text](https://reference.aspose.com/words/python-net/aspose.words/range/text/) لاسترداد نص عادي غير منسق للنطاق.

يوضح مثال التعليمات البرمجية التالي كيفية الحصول على نص عادي غير منسق لنطاق:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_ranges-RangesGetText.py" >}}

{{% alert color="primary" %}}

يمكنك تنزيل الملف النموذجي لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

## حذف النص

يسمح النطاق بحذف جميع أحرف النطاق عن طريق استدعاء [delete](https://reference.aspose.com/words/python-net/aspose.words/range/delete/)

يوضح مثال التعليمات البرمجية التالي كيفية حذف كافة أحرف النطاق:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_ranges-RangesDeleteText.py" >}}

{{% alert color="primary" %}}

يمكنك تنزيل الملف النموذجي لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}
