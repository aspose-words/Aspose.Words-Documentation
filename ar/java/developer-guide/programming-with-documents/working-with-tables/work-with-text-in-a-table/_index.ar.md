---
title: العمل مع النص في جدول
second_title: Aspose.Words ل Java
articleTitle: العمل مع النص في جدول
linktitle: العمل مع النص في جدول
description: "استبدال النص في جدول في Java. استخراج نص عادي من الجدول أو الخلية باستخدام Java."
type: docs
weight: 60
url: /ar/java/extract-text-from-and-replace-text-in-a-table/
timestamp: 2024-01-27-14-07-04
---

كما هو مذكور في المقالات السابقة، يحتوي الجدول عادة على نص عادي، على الرغم من أنه يمكن وضع محتوى آخر مثل الصور أو حتى الجداول الأخرى في خلايا الجدول.

تتم إضافة نص أو محتوى آخر إلى الجدول باستخدام الطرق المناسبة لفئة [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) ويتم وصفها في مقالة **"Create a Table"**. في هذه المقالة، سنتحدث عن كيفية العمل مع النص في جدول موجود بالفعل.

## استبدال النص في جدول

الجدول، مثل أي عقدة أخرى في Aspose.Words، لديه حق الوصول إلى الكائن [Range](https://reference.aspose.com/words/java/com.aspose.words/range/). باستخدام كائن نطاق الجدول، يمكنك استبدال النص في جدول.

القدرة على استخدام أحرف خاصة عند الاستبدال مدعومة حاليا، لذلك من الممكن استبدال النص الحالي بنص متعدد الفقرات. للقيام بذلك، تحتاج إلى استخدام الأحرف الأولية الخاصة الموضحة في طريقة [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.lang.String-java.lang.String) المقابلة.

{{% alert color="primary" %}}

عادة، يجب أن يتم استبدال النص على مستوى الخلية (لكل خلية) أو على مستوى الفقرة.

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالية كيفية استبدال كافة مثيلات سلسلة من النص في خلايا جدول بأكمله:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "replace-text.java" >}}

## استخراج نص عادي من جدول

باستخدام الكائن **Range**، يمكنك أيضا استدعاء الأساليب على نطاق الجدول بأكمله واستخراج الجدول كنص عادي. للقيام بذلك، استخدم خاصية [Text](https://reference.aspose.com/words/java/com.aspose.words/range/#Text).

يوضح مثال التعليمات البرمجية التالية كيفية طباعة نطاق النص لجدول:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "extract-text.java" >}}

{{% alert color="primary" %}}

يتم استخدام نفس التقنية لاستخراج المحتوى من خلايا الجدول الفردية فقط.

يوضح مثال التعليمات البرمجية التالية كيفية طباعة نطاق نص من عناصر الصف والجدول:

{{% /alert %}}

يوضح مثال الكود التالي كيفية طباعة نطاق النص لعناصر الصف والجدول.

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "print-text-range-row-and-table.java" >}}

## العمل مع نص جدول بديل

Microsoft Word تحتوي الجداول على `table title` و `table description` التي توفر تمثيلا نصيا بديلا للمعلومات الواردة في الجدول.

في Aspose.Words، يمكنك أيضا إضافة عنوان الجدول والوصف باستخدام خصائص [Title](https://reference.aspose.com/words/java/com.aspose.words/table/#getTitle) و [Description](https://reference.aspose.com/words/java/com.aspose.words/table/#getDescription). هذه الخصائص ذات مغزى لـ DOCX المستندات المطابقة لـ ISO / IEC 29500. عند الحفظ بتنسيقات أقدم من ISO / IEC 29500، يتم تجاهل هذه الخصائص.

يوضح مثال التعليمات البرمجية التالية كيفية تعيين خصائص العنوان والوصف لجدول:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "table-title-and-description.java" >}}
