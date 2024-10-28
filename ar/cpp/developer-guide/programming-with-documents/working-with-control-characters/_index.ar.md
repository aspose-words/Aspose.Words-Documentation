---
title: العمل مع شخصيات التحكم
second_title: Aspose.Words ل C++
articleTitle: العمل مع شخصيات التحكم
linktitle: العمل مع شخصيات التحكم
description: "مقدمة في العمل مع شخصيات التحكم في Aspose.Words ل C++."
type: docs
weight: 400
url: /ar/cpp/working-with-control-characters/
---

Microsoft Word قد تحتوي المستندات على أحرف مختلفة لها معنى خاص. عادة ما يتم استخدامها لأغراض التنسيق ولا يتم رسمها في الوضع العادي. يمكنك جعلها مرئية إذا قمت بالنقر فوق الزر إظهار / إخفاء علامات التنسيق الموجود على شريط الأدوات القياسي.

في بعض الأحيان قد تحتاج إلى إضافة أو إزالة الأحرف إلى/من النص. على سبيل المثال، عند الحصول على نص برمجيا من المستند، يحتفظ Aspose.Words بمعظم أحرف التحكم، لذلك إذا كنت بحاجة إلى العمل مع هذا النص، فمن المحتمل أن تقوم بإزالة الأحرف أو استبدالها.

فئة [ControlChar](https://reference.aspose.com/words/cpp/aspose.words/controlchar/) هي مستودع للثوابت التي تمثل أحرف التحكم التي تتم مواجهتها غالبا في المستندات. يوفر كلا من إصدارات شار وسلسلة من نفس الثوابت. على سبيل المثال، سلسلة [LineBreak](https://reference.aspose.com/words/cpp/aspose.words/controlchar/linebreak/) و شار **ControlChar.LineBreakChar** له نفس القيمة.

يوضح مثال التعليمات البرمجية التالية كيفية استخدام أحرف التحكم:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-ConvertUtil-UtilityClasses-UseControlCharacters.cpp" >}}