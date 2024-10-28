---
title: العمل مع النص في جدول
second_title: Aspose.Words ل C++
articleTitle: العمل مع النص في جدول
linktitle: العمل مع النص في جدول
description: "استبدال النص في جدول في C++. استخراج نص عادي من الجدول أو الخلية باستخدام C++."
type: docs
weight: 60
url: /ar/cpp/work-with-text-in-a-table/
---

كما هو مذكور في المقالات السابقة، يحتوي الجدول عادة على نص عادي، على الرغم من أنه يمكن وضع محتوى آخر مثل الصور أو حتى الجداول الأخرى في خلايا الجدول.

تتم إضافة نص أو محتوى آخر إلى الجدول باستخدام الطرق المناسبة لفئة [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) ويتم وصفها في مقالة **"Create a Table"**. في هذه المقالة، سنتحدث عن كيفية العمل مع النص في جدول موجود بالفعل.

## استبدال النص في جدول

الجدول، مثل أي عقدة أخرى في Aspose.Words، لديه حق الوصول إلى الكائن [Range](https://reference.aspose.com/words/cpp/aspose.words/range/). باستخدام كائن نطاق الجدول، يمكنك استبدال النص في جدول.

القدرة على استخدام أحرف خاصة عند الاستبدال مدعومة حاليا، لذلك من الممكن استبدال النص الحالي بنص متعدد الفقرات. للقيام بذلك، تحتاج إلى استخدام الأحرف الأولية الخاصة الموضحة في طريقة [Replace](https://reference.aspose.com/words/cpp/aspose.words/range/replace/) المقابلة.

{{% alert color="primary" %}}

عادة، يجب أن يتم استبدال النص على مستوى الخلية (لكل خلية) أو على مستوى الفقرة.

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالية كيفية استبدال كافة مثيلات سلسلة من النص في خلايا جدول بأكمله:

{{< gist "aspose-words-gists" "0c6e4ebd55874aa8634f1d74d5ef492f" "replace-text.h" >}}

## استخراج نص عادي من الجدول أو الخلية

باستخدام الكائن **Range**، يمكنك أيضا استدعاء الأساليب على نطاق الجدول بأكمله واستخراج الجدول كنص عادي. للقيام بذلك، استخدم خاصية [Text](https://reference.aspose.com/words/cpp/aspose.words/range/get_text/).

يوضح مثال التعليمات البرمجية التالية كيفية طباعة نطاق النص لجدول:

{{< gist "aspose-words-gists" "0c6e4ebd55874aa8634f1d74d5ef492f" "extract-text.h" >}}

يتم استخدام نفس التقنية لاستخراج المحتوى من خلايا الجدول الفردية فقط.

يوضح مثال التعليمات البرمجية التالية كيفية طباعة نطاق نص من عناصر الصف والجدول:

{{< gist "aspose-words-gists" "0c6e4ebd55874aa8634f1d74d5ef492f" "print-text-range-row-and-table.h" >}}

## العمل مع نص جدول بديل

تحتوي الجداول Microsoft Word على `table title` و `table description` التي توفر تمثيلا نصيا بديلا للمعلومات الواردة في الجدول.

في Aspose.Words، يمكنك أيضا إضافة عنوان الجدول والوصف باستخدام خصائص [Title](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_title/) و [Description](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_description/). هذه الخصائص ذات مغزى لوثائق DOCX المطابقة لـ ISO / IEC 29500. عند الحفظ بتنسيقات أقدم من ISO / IEC 29500، يتم تجاهل هذه الخصائص.

يوضح مثال التعليمات البرمجية التالية كيفية تعيين خصائص العنوان والوصف لجدول:

{{< gist "aspose-words-gists" "0c6e4ebd55874aa8634f1d74d5ef492f" "table-title-and-description.h" >}}