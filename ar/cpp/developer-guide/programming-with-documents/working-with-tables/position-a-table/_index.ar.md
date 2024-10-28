---
title: موضع الجدول في C++
second_title: Aspose.Words ل C++
articleTitle: ضع طاولة
linktitle: ضع طاولة
description: "حدد موضع الجدول في C++. الحصول على محاذاة الجدول، والحصول على وتعيين موقف الجدول العائم باستخدام C++."
type: docs
weight: 50
url: /ar/cpp/position-a-table/
---

هناك جداول عائمة وجداول مضمنة:

* **Inline tables** يتم وضعها على نفس طبقة النص ويتم وضعها في تدفق النص الذي يحيط فقط الجدول أعلاه وأدناه. ستظهر الجداول المضمنة دائما بين الفقرات التي وضعتها فيها.
* يتم وضع **Floating tables** فوق النص، ويتم تحديد موضع الجدول بالنسبة للفقرة بواسطة مرساة الجدول. لهذا السبب، يتأثر موضع الجدول العائم في المستند بإعدادات تحديد المواقع الرأسية والأفقية.

تحتاج أحيانا إلى وضع جدول في مستند بطريقة معينة. للقيام بذلك، تحتاج إلى استخدام أدوات المحاذاة وتعيين المسافات البادئة بين الجدول والنص المحيط.

في هذه المقالة، سنناقش الخيارات التي يوفرها Aspose.Words لتحديد المواقع.

## حدد موضع الجدول المضمن

يمكنك تعيين موضع جدول مضمن باستخدام Aspose.Words API والخاصية [Alignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_alignment/). وبالتالي، يمكنك ضبط محاذاة الجدول بالنسبة إلى صفحة المستند.

يوضح مثال التعليمات البرمجية التالية كيفية تعيين موضع جدول مضمن:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "inline-table-position.h" >}}

## احصل على محاذاة الجدول العائم

إذا تم تعيين التفاف نص الجدول على **Around**، يمكنك الحصول على المحاذاة الأفقية والرأسية للجدول باستخدام خصائص [RelativeHorizontalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativehorizontalalignment/) و [RelativeVerticalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativeverticalalignment/).

باستخدام **other types of text wrapping**، يمكنك الحصول على محاذاة الجدول المضمنة باستخدام خاصية [Alignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_alignment/).

يوضح مثال التعليمات البرمجية التالية كيفية الحصول على محاذاة الجدول:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "get-table-position.h" >}}

## الحصول على موقف الجدول العائم

 يتم تحديد موضع الجدول العائم باستخدام الخصائص التالية:

* [HorizontalAnchor](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_horizontalanchor/) - كائن لحساب الوضع الأفقي لجدول عائم
* [VerticalAnchor](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_verticalanchor/) - كائن لحساب الموضع الرأسي لجدول عائم
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_absolutehorizontaldistance/) - موقف الجدول العائم الأفقي المطلق
* [AbsoluteVerticalDistance](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_absoluteverticaldistance/) - موقف الجدول العائم العمودي المطلق
* [AllowOverlap](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_allowoverlap/) - الخيار لتمكين / تعطيل التداخل مع الكائنات العائمة الأخرى
* [RelativeHorizontalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativehorizontalalignment/) - الجدول العائم المحاذاة الأفقية النسبية.
* [RelativeVerticalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativeverticalalignment/) - الجدول العائم المحاذاة العمودية النسبية.

يوضح مثال الكود التالي كيفية الحصول على موضع جدول عائم:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "get-floating-table-position.h" >}}

## تعيين موقف الجدول العائم

تماما مثل الحصول على، يمكنك تعيين موضع جدول عائم باستخدام نفس Aspose.Words API.

من المهم أن تعرف أن المحاذاة والمسافة الأفقية والرأسية هي خصائص مجتمعة ويمكن للمرء إعادة تعيين الآخر. على سبيل المثال، سيؤدي تعيين **RelativeHorizontalAlignment** إلى إعادة تعيين **AbsoluteHorizontalDistance** إلى قيمته الافتراضية والعكس صحيح. وينطبق الشيء نفسه على الترتيب الرأسي.

يوضح مثال التعليمات البرمجية التالية كيفية تعيين موضع جدول عائم:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "floating-table-position.h" >}}

## الحصول على المسافة بين الجدول والنص المحيط

Aspose.Words يوفر أيضا فرصة لمعرفة المسافات بين الجداول والنصوص المحيطة:

- [DistanceTop](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distancetop/) - قيمة المسافة من فوق
- [DistanceBottom](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distancebottom/) - قيمة مسافة الإدراك
- [DistanceRight](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distanceright/) - قيمة المسافة على اليمين
- [DistanceLeft](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distanceleft/) - قيمة المسافة على اليسار

يوضح مثال الكود التالي كيفية الحصول على المسافة بين الجدول والنص المحيط به:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "distance-between-table-surrounding-text.h" >}}
