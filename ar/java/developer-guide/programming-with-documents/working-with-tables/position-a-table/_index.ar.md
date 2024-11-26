---
title: موضع الجدول في Java
second_title: Aspose.Words ل Java
articleTitle: ضع طاولة
linktitle: ضع طاولة
description: "حدد موضع الجدول في Java. الحصول على محاذاة الجدول، والحصول على وتعيين موقف الجدول العائم باستخدام Java."
type: docs
weight: 50
url: /ar/java/position-a-table/
timestamp: 2024-01-27-14-07-04
---

هناك جداول عائمة وجداول مضمنة:

* **Inline tables** يتم وضعها على نفس طبقة النص ويتم وضعها في تدفق النص الذي يحيط فقط الجدول أعلاه وأدناه. ستظهر الجداول المضمنة دائما بين الفقرات التي وضعتها فيها.
* يتم وضع **Floating tables** فوق النص، ويتم تحديد موضع الجدول بالنسبة للفقرة بواسطة مرساة الجدول. لهذا السبب، يتأثر موضع الجدول العائم في المستند بإعدادات تحديد المواقع الرأسية والأفقية.

تحتاج أحيانا إلى وضع جدول في مستند بطريقة معينة. للقيام بذلك، تحتاج إلى استخدام أدوات المحاذاة وتعيين المسافات البادئة بين الجدول والنص المحيط.

في هذه المقالة، سنناقش الخيارات التي يوفرها Aspose.Words لتحديد المواقع.

## حدد موضع الجدول المضمن

يمكنك تعيين موضع جدول مضمن باستخدام Aspose.Words API والخاصية [Alignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getAlignment). وبالتالي، يمكنك ضبط محاذاة الجدول بالنسبة إلى صفحة المستند.

يوضح مثال التعليمات البرمجية التالية كيفية تعيين موضع جدول مضمن:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "inline-table-position.java" >}}

## احصل على محاذاة الجدول العائم

إذا تم تعيين التفاف نص الجدول على **Around**، يمكنك الحصول على المحاذاة الأفقية والرأسية للجدول باستخدام خصائص [RelativeHorizontalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeHorizontalAlignment) و [RelativeVerticalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeVerticalAlignment).

باستخدام **other types of text wrapping**، يمكنك الحصول على محاذاة الجدول المضمنة باستخدام خاصية **Alignment**.

يوضح مثال التعليمات البرمجية التالية كيفية الحصول على محاذاة الجدول:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "get-table-position.java" >}}

## الحصول على موقف الجدول العائم

 يتم تحديد موضع الجدول العائم باستخدام الخصائص التالية:

* [HorizontalAnchor](https://reference.aspose.com/words/java/com.aspose.words/table/#getHorizontalAnchor) - كائن لحساب الوضع الأفقي لجدول عائم
* [VerticalAnchor](https://reference.aspose.com/words/java/com.aspose.words/table/#getVerticalAnchor) - كائن لحساب الموضع الرأسي لجدول عائم
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/java/com.aspose.words/table/#getAbsoluteHorizontalDistance) - موقف الجدول العائم الأفقي المطلق
* [AbsoluteVerticalDistance](https://reference.aspose.com/words/java/com.aspose.words/table/#getAbsoluteVerticalDistance) - موقف الجدول العائم العمودي المطلق
* [AllowOverlap](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowOverlap) - الخيار لتمكين / تعطيل التداخل مع الكائنات العائمة الأخرى
* [RelativeHorizontalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeHorizontalAlignment) - الجدول العائم المحاذاة الأفقية النسبية.
* [RelativeVerticalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeVerticalAlignment) - الجدول العائم المحاذاة العمودية النسبية.

يوضح مثال الكود التالي كيفية الحصول على موضع جدول عائم:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "get-floating-table-position.java" >}}

## تعيين موقف الجدول العائم

تماما مثل الحصول على، يمكنك تعيين موضع جدول عائم باستخدام نفس Aspose.Words API.

من المهم أن تعرف أن المحاذاة والمسافة الأفقية والرأسية هي خصائص مجتمعة ويمكن للمرء إعادة تعيين الآخر. على سبيل المثال، سيؤدي تعيين **RelativeHorizontalAlignment** إلى إعادة تعيين **AbsoluteHorizontalDistance** إلى قيمته الافتراضية والعكس صحيح. وينطبق الشيء نفسه على الترتيب الرأسي.

يوضح مثال التعليمات البرمجية التالية كيفية تعيين موضع جدول عائم:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "floating-table-position.java" >}}

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "relative-horizontal-or-vertical-position.java" >}}

## الحصول على المسافة بين الجدول والنص المحيط

Aspose.Words يوفر أيضا فرصة لمعرفة المسافات بين الجداول والنصوص المحيطة:

- [DistanceTop](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceTop) - قيمة المسافة من فوق
- [DistanceBottom](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceBottom) - قيمة مسافة الإدراك
- [DistanceRight](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceRight) - قيمة المسافة على اليمين
- [DistanceLeft](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceLeft) - قيمة المسافة على اليسار

يوضح مثال الكود التالي كيفية الحصول على المسافة بين الجدول والنص المحيط به:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "distance-between-table-surrounding-text.java" >}}
