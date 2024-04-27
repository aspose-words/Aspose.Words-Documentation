---
title: الجدول Java
second_title: Aspose.Words for Java
articleTitle: المنصب(أ)
linktitle: المنصب(أ)
description: "تحديد موقع الجدول Java. الحصول على مواءمة الطاولة، الحصول على وضع الطاولات العائمة باستخدام Java."
type: docs
weight: 50
url: /ar/java/position-a-table/
---

هناك طاولات عائمة وطاولات خطية:

* ♪ **الجداول التوضيحية** وتوضع على نفس طبقة النص وتوضع في تدفق للنص لا يحيط سوى الجدول أعلاه وما دونه. الجداول الداخلية دائماً ما تظهر بين الفقرات التي تضعها فيها
* ♪ **الجداول الزمنية** وتُدرج على النص، ويُحدَّد موقع الجدول المتعلق بالفقرة بمقر الجدول. وبسبب ذلك، يتأثر وضع الطاولة العائمة في الوثيقة بظروف تحديد المواقع الرأسية والأفقية.

أحياناً عليك وضع طاولة في وثيقة بطريقة معينة وللقيام بذلك، يجب أن تستخدموا أدوات التواؤم وتضعوا الحوادث بين الطاولة والنص المحيط

في هذه المادة، سنناقش الخيارات Aspose.Words ينص على تحديد المواقع.

## تحديد الموقع

يمكنك تحديد موقع طاولة داخلية باستخدام Aspose.Words API و [Alignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getAlignment) ملكية وهكذا، يمكنك أن تعدل مواءمة الجدول فيما يتعلق بصفحة الوثيقة.

ويبيّن المثال الرمزي التالي كيفية وضع جدول خطي:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "inline-table-position.java" >}}

## الحصول على جدول الطوابق

إذا تم وضع ملفوف للنص **Around**, يمكنك الحصول على مواءمتها الأفقية والرأسية باستخدام [RelativeHorizontalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeHorizontalAlignment) و [RelativeVerticalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeVerticalAlignment) الممتلكات.

مع **أنواع أخرى من النصوص**, يمكنك الحصول على مواءمه الجدول باستخدام **Alignment** ملكية

المثال الرمزي التالي يبين كيفية الحصول على مواءمتها

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "get-table-position.java" >}}

## الحصول على موقع الطاولات

 ويُحدَّد موقف طاولة عائمة باستخدام الخواص التالية:

* ♪ [HorizontalAnchor](https://reference.aspose.com/words/java/com.aspose.words/table/#getHorizontalAnchor) - غرض لحساب الموقع الأفقي لمائدة عائمة
* ♪ [VerticalAnchor](https://reference.aspose.com/words/java/com.aspose.words/table/#getVerticalAnchor) - غرض لحساب الموقع العمودي لمائدة عائمة
* ♪ [AbsoluteHorizontalDistance](https://reference.aspose.com/words/java/com.aspose.words/table/#getAbsoluteHorizontalDistance) - وضع المائدة الأفقية المطلقة العائمة
* ♪ [AbsoluteVerticalDistance](https://reference.aspose.com/words/java/com.aspose.words/table/#getAbsoluteVerticalDistance) - وضع طاولة عائمة عمودية مطلقة
* ♪ [AllowOverlap](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowOverlap) - خيار التمكين/التداخل مع الأجسام العائمة الأخرى
* ♪ [RelativeHorizontalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeHorizontalAlignment) - منضدة عائمة للمواءمة الأفقية النسبية.
* ♪ [RelativeVerticalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeVerticalAlignment) - منضدة عائمة للمواءمة العمودية النسبية.

The following code example shows how to get the position of a floating table:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "get-floating-table-position.java" >}}

## الجدول الزمني

تماما مثل الحصول، يمكنك تحديد موقع طاولة العائمة باستخدام نفس Aspose.Words API.

ومن المهم معرفة أن التواؤم والمسافات الأفقية والرأسية هي خصائص مشتركة، ويمكن للمرء أن يعيد تحديد الآخر. على سبيل المثال، وضع الإطار **RelativeHorizontalAlignment** سيعيدون صياغة **AbsoluteHorizontalDistance** إلى قيمتها الافتراضية والعكس صحيح نفس الشيء true للترتيب الرأسي

The following code example shows how to set the position of a floating table:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "floating-table-position.java" >}}

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "relative-horizontal-or-vertical-position.java" >}}

## الحصول على المسافة بين الجدول والنص المغلق

Aspose.Words وتتيح أيضا فرصة لمعرفة المسافات بين الجداول والنصوص المحيطة بها:

- [DistanceTop](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceTop) - قيمة المسافة من أعلاه
- [DistanceBottom](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceBottom) - قيمة البعد عن التصور
- [DistanceRight](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceRight) - قيمة المسافة على اليمين
- [DistanceLeft](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceLeft) - قيمة المسافة على اليسار

The following code example shows how to get the distance between a table and its surrounding text:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "distance-between-table-surrounding-text.java" >}}
