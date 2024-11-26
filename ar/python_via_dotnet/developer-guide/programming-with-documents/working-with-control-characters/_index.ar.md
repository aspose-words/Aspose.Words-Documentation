---
title: العمل مع أحرف التحكم
second_title: Aspose.Words لـ Python via .NET
articleTitle: العمل مع أحرف التحكم
linktitle: العمل مع أحرف التحكم
description: "مقدمة للعمل مع أحرف التحكم في Aspose.Words لـ Python."
type: docs
weight: 400
url: /ar/python-net/working-with-control-characters/
timestamp: 2024-01-27-14-07-04
---

قد تحتوي مستندات Microsoft Word على أحرف مختلفة لها معنى خاص. عادةً ما يتم استخدامها لأغراض التنسيق ولا يتم رسمها في الوضع العادي. يمكنك جعلها مرئية إذا قمت بالنقر فوق الزر إظهار/إخفاء علامات التنسيق الموجود على شريط الأدوات القياسي.

في بعض الأحيان قد تحتاج إلى إضافة أو إزالة أحرف من/إلى النص. على سبيل المثال، عند الحصول على نص برمجيًا من المستند، يحتفظ Aspose.Words بمعظم أحرف التحكم، لذلك إذا كنت بحاجة إلى العمل مع هذا النص، فمن المحتمل أن تقوم بإزالة الأحرف أو استبدالها.

تعد فئة [ControlChar](https://reference.aspose.com/words/python-net/aspose.words/controlchar/) مستودعًا للثوابت التي تمثل أحرف التحكم التي غالبًا ما تتم مواجهتها في المستندات. يوفر إصداري char وstring لنفس الثوابت. على سبيل المثال، السلسلة [ControlChar.LINE_BREAK](https://reference.aspose.com/words/python-net/aspose.words/controlchar/#line_break) وchar [ControlChar.LINE_BREAK_CHAR](https://reference.aspose.com/words/python-net/aspose.words/controlchar/#line_break_char) لها نفس القيمة.

يوضح مثال التعليمات البرمجية التالي كيفية استخدام أحرف التحكم:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-UseControlCharacters.py" >}}
