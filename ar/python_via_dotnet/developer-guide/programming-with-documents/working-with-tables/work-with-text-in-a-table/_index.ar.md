---
title: العمل مع النص في الجدول
second_title: Aspose.Words لـ Python
articleTitle: العمل مع النص في الجدول
linktitle: العمل مع النص في الجدول
description: "استبدال النص في جدول في Python. استخراج نص عادي من الجدول أو الخلية باستخدام Python."
type: docs
weight: 60
url: /ar/python-net/work-with-text-in-a-table/
---

كما ذكرنا في المقالات السابقة، يحتوي الجدول عادةً على نص عادي، على الرغم من إمكانية وضع محتويات أخرى مثل الصور أو حتى الجداول الأخرى في خلايا الجدول.

تتم إضافة نص أو محتوى آخر إلى الجدول باستخدام الطرق المناسبة لفئة [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) ويتم وصفها في مقالة **"إنشاء جدول"**. في هذه المقالة، سنتحدث عن كيفية العمل مع النص في جدول موجود بالفعل.

## استبدال النص في جدول

الجدول، مثل أي عقدة أخرى في Aspose.Words، لديه حق الوصول إلى كائن [Range](https://reference.aspose.com/words/python-net/aspose.words/range/). باستخدام كائن نطاق الجدول، يمكنك استبدال النص في الجدول.

القدرة على استخدام أحرف خاصة عند الاستبدال مدعومة حاليًا، لذلك من الممكن استبدال النص الموجود بنص متعدد الفقرات. للقيام بذلك، تحتاج إلى استخدام الأحرف الخاصة الموضحة في طريقة [Replace](https://reference.aspose.com/words/python-net/aspose.words/range/replace/#str_str) المقابلة.

{{% alert color="primary" %}}

عادةً، يجب أن يتم استبدال النص على مستوى الخلية (لكل خلية) أو على مستوى الفقرة.

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالي كيفية استبدال كافة مثيلات سلسلة نصية في خلايا الجدول بأكمله:

{{< gist "aspose-words-gists" "a47401178cba165f62701f6c94e8a4ec" "replace-text.py" >}}

## استخراج نص عادي من الجدول أو الخلية

باستخدام كائن **Range**، يمكنك أيضًا استدعاء الأساليب الموجودة في نطاق الجدول بأكمله واستخراج الجدول كنص عادي. للقيام بذلك، استخدم خاصية [Text](https://reference.aspose.com/words/python-net/aspose.words/range/text/)

يوضح مثال التعليمات البرمجية التالي كيفية طباعة النطاق النصي للجدول:

{{< gist "aspose-words-gists" "a47401178cba165f62701f6c94e8a4ec" "extract-text.py" >}}

يتم استخدام نفس الأسلوب لاستخراج المحتوى من خلايا الجدول الفردية فقط.

يوضح مثال التعليمات البرمجية التالي كيفية طباعة نطاق نصي من عناصر الصف والجدول:

{{< gist "aspose-words-gists" "a47401178cba165f62701f6c94e8a4ec" "print-text-range-row-and-table.py" >}}

## العمل مع نص الجدول البديل

تحتوي جداول Microsoft Word على `table title` و`table description` التي توفر تمثيلاً نصيًا بديلاً للمعلومات الموجودة في الجدول.

في Aspose.Words، يمكنك أيضًا إضافة عنوان جدول ووصفه باستخدام خصائص [Title](https://reference.aspose.com/words/python-net/aspose.words.tables/table/title/) و[Description](https://reference.aspose.com/words/python-net/aspose.words.tables/table/description/). تعتبر هذه الخصائص ذات معنى بالنسبة لمستندات DOCX المتوافقة مع ISO/IEC 29500. عند الحفظ بتنسيقات أقدم من ISO/IEC 29500، يتم تجاهل هذه الخصائص.

يوضح مثال التعليمات البرمجية التالي كيفية تعيين خصائص العنوان والوصف للجدول:

{{< gist "aspose-words-gists" "a47401178cba165f62701f6c94e8a4ec" "table-title-and-description.py" >}}

