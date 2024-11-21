---
title: نظف وثيقة Java
second_title: Aspose.Words for Java
articleTitle: نظف وثيقة
linktitle: نظف وثيقة
description: "إزالة المعلومات غير المستخدمة أو المزدوجة لخفض حجم النواتج والوقت اللازم لتجهيزها. إزالة الأساليب غير المستخدمة، والأساليب غير المستخدمة، والأساليب المزدوجة، أو القوائم غير المستخدمة Java."
type: docs
weight: 30
url: /ar/java/clean-up-a-document/
timestamp: 2024-01-27-14-07-04
---

وفي بعض الأحيان قد تحتاج إلى إزالة معلومات غير مستخدمة أو مكررة لخفض حجم وثيقة النواتج والوقت اللازم لتجهيزها.

في حين يمكنك العثور على البيانات غير المستخدمة وإزالتها، مثل الأساليب أو القوائم، أو تكرار المعلومات يدويا، سيكون من الأنسب كثيرا القيام بذلك باستخدام المعالم والقدرات التي توفرها Aspose.Words.

The [CleanupOptions](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/) الفصل يسمح لك بتحديد خيارات لتنظيف الوثائق لإزالة أساليب مزدوجة أو مجرد أساليب غير مستخدمة أو قوائم من الوثيقة، يمكنك استخدام [Cleanup](https://reference.aspose.com/words/java/com.aspose.words/document/#cleanup) طريقة

## نقل المعلومات غير المستخدمة من وثيقة

يمكنك استخدام [UnusedStyles](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedStyles) و [UnusedBuiltinStyles](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedBuiltinStyles) خصائص لكشف و إزالة النمط التي تُعتبر "غير مستعملة"

يمكنك استخدام [UnusedLists](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedLists) ملكية لكشف وحذف القوائم وقائمة التعاريف التي تُعرف بأنها غير مستخدمة

The following code example shows how to remove only unused fashions from a document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CleansUnusedStylesandLists.java" >}}

## نقل المعلومات المزدوجة من الوثيقة

يمكنك أيضا استخدام [DuplicateStyle](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getDuplicateStyle) الممتلكات لاستبدال جميع الأساليب المكررة بالأسلوب الأصلي وسحب نسختين من وثيقة.

ويبين المثال الرمزي التالي كيفية إزالة الأساليب المزدوجة من الوثيقة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CleanupDuplicateStyle.java" >}}
