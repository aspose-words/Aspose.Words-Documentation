---
title: تنظيف مستند في Java
second_title: Aspose.Words ل Java
articleTitle: تنظيف وثيقة
linktitle: تنظيف وثيقة
description: "قم بإزالة المعلومات غير المستخدمة أو المكررة لتقليل حجم الإخراج ووقت المعالجة. قم بإزالة الأنماط غير المستخدمة أو الأنماط المضمنة غير المستخدمة أو الأنماط المكررة أو القوائم غير المستخدمة باستخدام Java."
type: docs
weight: 30
url: /ar/java/clean-up-a-document/
timestamp: 2024-01-27-14-07-04
---

في بعض الأحيان قد تحتاج إلى إزالة المعلومات غير المستخدمة أو المكررة لتقليل حجم مستند الإخراج ووقت المعالجة.

بينما يمكنك العثور على البيانات غير المستخدمة وإزالتها، مثل الأنماط أو القوائم، أو تكرار المعلومات يدويا، سيكون من الأنسب القيام بذلك باستخدام الميزات والإمكانيات التي توفرها Aspose.Words.

تتيح لك فئة [CleanupOptions](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/) تحديد خيارات لتنظيف المستندات. لإزالة الأنماط المكررة أو الأنماط أو القوائم غير المستخدمة فقط من المستند، يمكنك استخدام طريقة [Cleanup](https://reference.aspose.com/words/java/com.aspose.words/document/#cleanup).

## إزالة المعلومات غير المستخدمة من مستند

يمكنك استخدام خصائص [UnusedStyles](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedStyles) و [UnusedBuiltinStyles](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedBuiltinStyles) لاكتشاف وإزالة الأنماط التي تم تمييزها على أنها"غير مستخدمة".

يمكنك استخدام خاصية [UnusedLists](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedLists) لاكتشاف وإزالة القوائم وتعريفات القوائم التي تم تمييزها على أنها"غير مستخدمة".

يوضح مثال التعليمات البرمجية التالية كيفية إزالة الأنماط غير المستخدمة فقط من مستند:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CleansUnusedStylesandLists.java" >}}

## إزالة المعلومات المكررة من مستند

يمكنك أيضا استخدام الخاصية [DuplicateStyle](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getDuplicateStyle) لاستبدال جميع الأنماط المكررة بالنمط الأصلي وإزالة التكرارات من المستند.

يوضح مثال التعليمات البرمجية التالية كيفية إزالة الأنماط المكررة من مستند:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CleanupDuplicateStyle.java" >}}
