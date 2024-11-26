---
title: تنظيف مستند في Python
second_title: Aspose.Words لـ Python via .NET
articleTitle: تنظيف مستند
linktitle: تنظيف مستند
description: "قم بإزالة المعلومات غير المستخدمة أو المكررة لتقليل حجم المخرجات ووقت المعالجة باستخدام Python. قم بإزالة الأنماط غير المستخدمة أو الأنماط المضمنة غير المستخدمة أو الأنماط المكررة أو القوائم غير المستخدمة."
type: docs
weight: 30
url: /ar/python-net/clean-up-a-document/
timestamp: 2024-01-27-14-07-04
---

في بعض الأحيان قد تحتاج إلى إزالة المعلومات غير المستخدمة أو المكررة لتقليل حجم مستند الإخراج ووقت المعالجة.

على الرغم من أنه يمكنك العثور على البيانات غير المستخدمة وإزالتها، مثل الأنماط أو القوائم، أو المعلومات المكررة يدويًا، إلا أنه سيكون أكثر ملاءمة للقيام بذلك باستخدام الميزات والإمكانيات التي يوفرها Aspose.Words.

تتيح لك فئة [CleanupOptions](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/) تحديد خيارات لتنظيف المستندات. لإزالة الأنماط المكررة أو الأنماط أو القوائم غير المستخدمة من المستند، يمكنك استخدام طريقة [cleanup](https://reference.aspose.com/words/python-net/aspose.words/document/cleanup/).

## إزالة المعلومات غير المستخدمة من مستند

يمكنك استخدام خصائص [unused_styles](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/unused_styles/) و[unused_builtin_styles](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/unused_builtin_styles/) للكشف عن الأنماط التي تم وضع علامة "غير مستخدمة" عليها وإزالتها.

يمكنك استخدام خاصية [unused_lists](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/unused_lists/) للكشف عن القوائم وتعريفات القوائم التي تم وضع علامة "غير مستخدمة" عليها وإزالتها.

يوضح مثال التعليمات البرمجية التالي كيفية إزالة الأنماط غير المستخدمة فقط من المستند:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-CleanupUnusedStylesandLists.py" >}}

## إزالة المعلومات المكررة من مستند

يمكنك أيضًا استخدام خاصية [duplicate_style](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/duplicate_style/) لاستبدال جميع الأنماط المكررة بالنمط الأصلي وإزالة التكرارات من المستند.

يوضح مثال التعليمات البرمجية التالي كيفية إزالة الأنماط المكررة من مستند:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-CleanupDuplicateStyle.py" >}}
