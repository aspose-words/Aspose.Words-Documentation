---
title: تنظيف مستند في C#
second_title: Aspose.Words لـ .NET
articleTitle: تنظيف مستند
linktitle: تنظيف مستند
description: "قم بإزالة المعلومات غير المستخدمة أو المكررة لتقليل حجم المخرجات ووقت المعالجة باستخدام C#. قم بإزالة الأنماط غير المستخدمة أو الأنماط المضمنة غير المستخدمة أو الأنماط المكررة أو القوائم غير المستخدمة."
type: docs
weight: 30
url: /ar/net/clean-up-a-document/
---

في بعض الأحيان قد تحتاج إلى إزالة المعلومات غير المستخدمة أو المكررة لتقليل حجم مستند الإخراج ووقت المعالجة.

على الرغم من أنه يمكنك العثور على البيانات غير المستخدمة وإزالتها، مثل الأنماط أو القوائم، أو المعلومات المكررة يدويًا، إلا أنه سيكون أكثر ملاءمة للقيام بذلك باستخدام الميزات والإمكانيات التي يوفرها Aspose.Words.

تتيح لك فئة [CleanupOptions](https://reference.aspose.com/words/ar/net/aspose.words/cleanupoptions/) تحديد خيارات لتنظيف المستندات. لإزالة الأنماط المكررة أو الأنماط أو القوائم غير المستخدمة من المستند، يمكنك استخدام طريقة [Cleanup](https://reference.aspose.com/words/ar/net/aspose.words/document/cleanup/).

## إزالة المعلومات غير المستخدمة من مستند

يمكنك استخدام خصائص [UnusedStyles](https://reference.aspose.com/words/ar/net/aspose.words/cleanupoptions/unusedstyles/) و[UnusedBuiltinStyles](https://reference.aspose.com/words/ar/net/aspose.words/cleanupoptions/unusedbuiltinstyles/) للكشف عن الأنماط التي تم وضع علامة "غير مستخدمة" عليها وإزالتها.

يمكنك استخدام خاصية [UnusedLists](https://reference.aspose.com/words/ar/net/aspose.words/cleanupoptions/unusedlists/) للكشف عن القوائم وتعريفات القوائم التي تم وضع علامة "غير مستخدمة" عليها وإزالتها.

يوضح مثال التعليمات البرمجية التالي كيفية إزالة الأنماط غير المستخدمة فقط من المستند:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Working with document options and settings-CleanupUnusedStylesandLists.cs" >}}

## إزالة المعلومات المكررة من مستند

يمكنك أيضًا استخدام خاصية [DuplicateStyle](https://reference.aspose.com/words/ar/net/aspose.words/cleanupoptions/duplicatestyle/) لاستبدال جميع الأنماط المكررة بالنمط الأصلي وإزالة التكرارات من المستند.

يوضح مثال التعليمات البرمجية التالي كيفية إزالة الأنماط المكررة من مستند:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Working with document options and settings-CleanupDuplicateStyle.cs" >}}
