---
title: تنظيف مستند في C++
second_title: Aspose.Words ل C++
articleTitle: تنظيف وثيقة
linktitle: تنظيف وثيقة
description: "قم بإزالة المعلومات غير المستخدمة أو المكررة لتقليل حجم الإخراج ووقت المعالجة باستخدام C++. قم بإزالة الأنماط غير المستخدمة أو الأنماط المضمنة غير المستخدمة أو الأنماط المكررة أو القوائم غير المستخدمة."
type: docs
weight: 30
url: /ar/cpp/clean-up-a-document/
timestamp: 2024-01-27-14-07-04
---

في بعض الأحيان قد تحتاج إلى إزالة المعلومات غير المستخدمة أو المكررة لتقليل حجم مستند الإخراج ووقت المعالجة.

بينما يمكنك العثور على البيانات غير المستخدمة وإزالتها، مثل الأنماط أو القوائم، أو تكرار المعلومات يدويا، سيكون من الأنسب القيام بذلك باستخدام الميزات والإمكانيات التي توفرها Aspose.Words.

تتيح لك فئة [CleanupOptions](https://reference.aspose.com/words/cpp/class/aspose.words.cleanup_options) تحديد خيارات لتنظيف المستندات. لإزالة الأنماط المكررة أو الأنماط أو القوائم غير المستخدمة فقط من المستند، يمكنك استخدام طريقة [Cleanup](https://reference.aspose.com/words/cpp/aspose.words/document/cleanup/).

## إزالة المعلومات غير المستخدمة من مستند

يمكنك استخدام خصائص [UnusedStyles](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_unusedstyles/) و [UnusedBuiltinStyles](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_unusedbuiltinstyles/) لاكتشاف وإزالة الأنماط التي تم تمييزها على أنها"غير مستخدمة".

يمكنك استخدام خاصية [UnusedLists](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_unusedlists/) لاكتشاف وإزالة القوائم وتعريفات القوائم التي تم تمييزها على أنها"غير مستخدمة".

يوضح مثال التعليمات البرمجية التالية كيفية إزالة الأنماط غير المستخدمة فقط من مستند:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Working with document options and settings-CleanupUnusedStylesandLists.h" >}}

## إزالة المعلومات المكررة من مستند

يمكنك أيضا استخدام الخاصية [DuplicateStyle](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_duplicatestyle/) لاستبدال جميع الأنماط المكررة بالنمط الأصلي وإزالة التكرارات من المستند.

يوضح مثال التعليمات البرمجية التالية كيفية إزالة الأنماط المكررة من مستند:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Working with document options and settings-CleanupDuplicateStyle.h" >}}
