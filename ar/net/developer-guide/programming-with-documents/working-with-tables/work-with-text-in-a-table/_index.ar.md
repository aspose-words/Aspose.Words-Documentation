---
title: العمل مع النص في الجدول
second_title: Aspose.Words لـ .NET
articleTitle: العمل مع النص في الجدول
linktitle: العمل مع النص في الجدول
description: "استبدال النص في جدول في C#. استخراج نص عادي من الجدول أو الخلية باستخدام C#."
type: docs
weight: 60
url: /ar/net/work-with-text-in-a-table/
---

كما ذكرنا في المقالات السابقة، يحتوي الجدول عادةً على نص عادي، على الرغم من إمكانية وضع محتويات أخرى مثل الصور أو حتى الجداول الأخرى في خلايا الجدول.

تتم إضافة نص أو محتوى آخر إلى الجدول باستخدام الطرق المناسبة لفئة [DocumentBuilder](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/) ويتم وصفها في مقالة **"إنشاء جدول"**. في هذه المقالة، سنتحدث عن كيفية العمل مع النص في جدول موجود بالفعل.

## استبدال النص في جدول

الجدول، مثل أي عقدة أخرى في Aspose.Words، لديه حق الوصول إلى كائن [Range](https://reference.aspose.com/words/ar/net/aspose.words/range/). باستخدام كائن نطاق الجدول، يمكنك استبدال النص في الجدول.

القدرة على استخدام أحرف خاصة عند الاستبدال مدعومة حاليًا، لذلك من الممكن استبدال النص الموجود بنص متعدد الفقرات. للقيام بذلك، تحتاج إلى استخدام الأحرف الخاصة الموضحة في طريقة [Replace](https://reference.aspose.com/words/ar/net/aspose.words/range/replace/) المقابلة.

{{% alert color="primary" %}}

عادةً، يجب أن يتم استبدال النص على مستوى الخلية (لكل خلية) أو على مستوى الفقرة.

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالي كيفية استبدال كافة مثيلات سلسلة نصية في خلايا الجدول بأكمله:

{{< gist "aspose-words-gists" "458eb4fd5bd1de8b06fab4d1ef1acdc6" "replace-text.cs" >}}

## استخراج نص عادي من الجدول أو الخلية

باستخدام كائن **Range**، يمكنك أيضًا استدعاء الأساليب الموجودة في نطاق الجدول بأكمله واستخراج الجدول كنص عادي. للقيام بذلك، استخدم خاصية [Text](https://reference.aspose.com/words/ar/net/aspose.words/range/text/)

يوضح مثال التعليمات البرمجية التالي كيفية طباعة النطاق النصي للجدول:

{{< gist "aspose-words-gists" "458eb4fd5bd1de8b06fab4d1ef1acdc6" "extract-text.cs" >}}

يتم استخدام نفس الأسلوب لاستخراج المحتوى من خلايا الجدول الفردية فقط.

يوضح مثال التعليمات البرمجية التالي كيفية طباعة نطاق نصي من عناصر الصف والجدول:

{{< gist "aspose-words-gists" "458eb4fd5bd1de8b06fab4d1ef1acdc6" "print-text-range-row-and-table.cs" >}}

## العمل مع نص الجدول البديل

تحتوي جداول Microsoft Word على `table title` و`table description` التي توفر تمثيلاً نصيًا بديلاً للمعلومات الموجودة في الجدول.

في Aspose.Words، يمكنك أيضًا إضافة عنوان جدول ووصفه باستخدام خصائص [Title](https://reference.aspose.com/words/ar/net/aspose.words.tables/table/title/) و[Description](https://reference.aspose.com/words/ar/net/aspose.words.tables/table/description/). تعتبر هذه الخصائص ذات معنى بالنسبة لمستندات DOCX المتوافقة مع ISO/IEC 29500. عند الحفظ بتنسيقات أقدم من ISO/IEC 29500، يتم تجاهل هذه الخصائص.

يوضح مثال التعليمات البرمجية التالي كيفية تعيين خصائص العنوان والوصف للجدول:

{{< gist "aspose-words-gists" "458eb4fd5bd1de8b06fab4d1ef1acdc6" "table-title-and-description.cs" >}}