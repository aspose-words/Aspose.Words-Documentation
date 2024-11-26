---
title: موضع الجدول في Python
second_title: Aspose.Words لـ Python
articleTitle: ضع الجدول
linktitle: ضع الجدول
description: "تحديد موضع الجدول في Python. احصل على محاذاة الجدول، واحصل على موضع الجدول العائم وقم بتعيينه باستخدام Python."
type: docs
weight: 50
url: /ar/python-net/position-a-table/
timestamp: 2024-01-27-14-07-04
---

هناك جداول عائمة وجداول مضمنة:

* يتم وضع **الجداول المضمنة** على نفس طبقة النص ويتم وضعها في تدفق النص الذي يحيط بالجدول الموجود أعلى وأسفل فقط. ستظهر الجداول المضمنة دائمًا بين الفقرات التي وضعتها فيها.
* يتم وضع **الجداول العائمة** في طبقات فوق النص، ويتم تحديد موضع الجدول بالنسبة للفقرة بواسطة مرساة الجدول. ولهذا السبب، يتأثر موضع الجدول العائم في المستند بإعدادات الموضع الرأسي والأفقي.

في بعض الأحيان تحتاج إلى وضع جدول في مستند بطريقة معينة. للقيام بذلك، تحتاج إلى استخدام أدوات المحاذاة وتعيين المسافات البادئة بين الجدول والنص المحيط.

في هذه المقالة، سنناقش الخيارات التي يوفرها Aspose.Words لتحديد المواقع.

## تحديد موضع الجدول المضمن

يمكنك ضبط موضع الجدول المضمّن باستخدام خاصية Aspose.Words API وخاصية [Alignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/alignment/). وبالتالي، يمكنك ضبط محاذاة الجدول بالنسبة لصفحة المستند.

يوضح مثال التعليمات البرمجية التالي كيفية تعيين موضع جدول مضمن:

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "inline-table-position.py" >}}

## الحصول على محاذاة الجدول العائم

إذا تم تعيين التفاف نص الجدول على **Around**، فيمكنك الحصول على المحاذاة الأفقية والرأسية للجدول باستخدام خصائص [RelativeHorizontalAlignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/relative_horizontal_alignment/) و[RelativeVerticalAlignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/relative_vertical_alignment/).

باستخدام **أنواع أخرى من التفاف النص**، يمكنك الحصول على محاذاة الجدول المضمنة باستخدام خاصية [Alignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/alignment/).

يوضح مثال التعليمات البرمجية التالي كيفية الحصول على محاذاة الجدول:

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "get-table-position.py" >}}

## الحصول على موضع الجدول العائم

 يتم تحديد موضع الجدول العائم باستخدام الخصائص التالية:

* [HorizontalAnchor](https://reference.aspose.com/words/python-net/aspose.words.tables/table/horizontal_anchor/) – كائن لحساب الموضع الأفقي للجدول العائم
* [VerticalAnchor](https://reference.aspose.com/words/python-net/aspose.words.tables/table/vertical_anchor/) – كائن لحساب الموضع الرأسي للجدول العائم
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/python-net/aspose.words.tables/table/absolute_horizontal_distance/) – موضع الجدول العائم الأفقي المطلق
* [AbsoluteVerticalDistance](https://reference.aspose.com/words/python-net/aspose.words.tables/table/absolute_vertical_distance/) – موضع الجدول العائم العمودي المطلق
* [AllowOverlap](https://reference.aspose.com/words/python-net/aspose.words.tables/table/allow_overlap/) – خيار لتمكين/تعطيل التداخل مع الكائنات العائمة الأخرى
* [RelativeHorizontalAlignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/relative_horizontal_alignment/) – المحاذاة الأفقية النسبية للجدول العائم.
* [RelativeVerticalAlignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/relative_vertical_alignment/) – المحاذاة العمودية النسبية للجدول العائم.

يوضح مثال التعليمات البرمجية التالي كيفية الحصول على موضع الجدول العائم:

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "get-floating-table-position.py" >}}

## ضبط موضع الجدول العائم

تمامًا مثل الحصول على، يمكنك ضبط موضع الجدول العائم باستخدام نفس Aspose.Words API.

من المهم أن تعرف أن المحاذاة والمسافة الأفقية والرأسية هي خصائص مدمجة ويمكن لأحدهما إعادة تعيين الآخر. على سبيل المثال، سيؤدي تعيين **RelativeHorizontalAlignment** إلى إعادة تعيين **AbsoluteHorizontalDistance** إلى قيمته الافتراضية والعكس صحيح. نفس الشيء هو true للترتيب الرأسي.

يوضح مثال التعليمات البرمجية التالي كيفية تعيين موضع الجدول العائم:

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "floating-table-position.py" >}}

## الحصول على المسافة بين الجدول والنص المحيط

يوفر Aspose.Words أيضًا فرصة لمعرفة المسافات بين الجداول والنصوص المحيطة بها:

- [DistanceTop](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_top/) – قيمة المسافة من الأعلى
- [DistanceBottom](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_bottom/) – قيمة مسافة الإدراك
- [DistanceRight](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_right/) - قيمة المسافة على اليمين
- [DistanceLeft](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_left/) – قيمة المسافة على اليسار

يوضح مثال التعليمات البرمجية التالي كيفية الحصول على المسافة بين الجدول والنص المحيط به:

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "distance-between-table-surrounding-text.py" >}}
