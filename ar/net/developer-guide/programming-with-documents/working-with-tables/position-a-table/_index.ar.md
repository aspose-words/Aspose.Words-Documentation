---
title: موضع الجدول في C#
second_title: Aspose.Words لـ .NET
articleTitle: ضع الجدول
linktitle: ضع الجدول
description: "تحديد موضع الجدول في C#. احصل على محاذاة الجدول، واحصل على موضع الجدول العائم وقم بتعيينه باستخدام C#."
type: docs
weight: 50
url: /ar/net/position-a-table/
---

هناك جداول عائمة وجداول مضمنة:

* يتم وضع **الجداول المضمنة** على نفس طبقة النص ويتم وضعها في تدفق النص الذي يحيط بالجدول الموجود أعلى وأسفل فقط. ستظهر الجداول المضمنة دائمًا بين الفقرات التي وضعتها فيها.
* يتم وضع **الجداول العائمة** في طبقات فوق النص، ويتم تحديد موضع الجدول بالنسبة للفقرة بواسطة مرساة الجدول. ولهذا السبب، يتأثر موضع الجدول العائم في المستند بإعدادات الموضع الرأسي والأفقي.

في بعض الأحيان تحتاج إلى وضع جدول في مستند بطريقة معينة. للقيام بذلك، تحتاج إلى استخدام أدوات المحاذاة وتعيين المسافات البادئة بين الجدول والنص المحيط.

في هذه المقالة، سنناقش الخيارات التي يوفرها Aspose.Words لتحديد المواقع.

## تحديد موضع الجدول المضمن

يمكنك ضبط موضع الجدول المضمّن باستخدام خاصية Aspose.Words API وخاصية [Alignment](https://reference.aspose.com/words/ar/net/aspose.words.tables/table/alignment/). وبالتالي، يمكنك ضبط محاذاة الجدول بالنسبة لصفحة المستند.

يوضح مثال التعليمات البرمجية التالي كيفية تعيين موضع جدول مضمن:

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "inline-table-position.cs" >}}

## الحصول على محاذاة الجدول العائم

إذا تم تعيين التفاف نص الجدول على **Around**، فيمكنك الحصول على المحاذاة الأفقية والعمودية للجدول باستخدام خصائص [RelativeHorizontalAlignment](https://reference.aspose.com/words/ar/net/aspose.words.tables/table/relativehorizontalalignment/) و[RelativeVerticalAlignment](https://reference.aspose.com/words/ar/net/aspose.words.tables/table/relativeverticalalignment/).

باستخدام **أنواع أخرى من التفاف النص**، يمكنك الحصول على محاذاة الجدول المضمنة باستخدام خاصية [Alignment](https://reference.aspose.com/words/ar/net/aspose.words.tables/table/alignment/).

يوضح مثال التعليمات البرمجية التالي كيفية الحصول على محاذاة الجدول:

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "get-table-position.cs" >}}

## الحصول على موضع الجدول العائم

 يتم تحديد موضع الجدول العائم باستخدام الخصائص التالية:

* [HorizontalAnchor](https://reference.aspose.com/words/ar/net/aspose.words.tables/table/horizontalanchor/) – كائن لحساب الموضع الأفقي للجدول العائم
* [VerticalAnchor](https://reference.aspose.com/words/ar/net/aspose.words.tables/table/verticalanchor/) – كائن لحساب الموضع الرأسي للجدول العائم
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/ar/net/aspose.words.tables/table/absolutehorizontaldistance/) – موضع الجدول العائم الأفقي المطلق
* [AbsoluteVerticalDistance](https://reference.aspose.com/words/ar/net/aspose.words.tables/table/absoluteverticaldistance/) – موضع الجدول العائم العمودي المطلق
* [AllowOverlap](https://reference.aspose.com/words/ar/net/aspose.words.tables/table/allowoverlap/) – خيار لتمكين/تعطيل التداخل مع الكائنات العائمة الأخرى
* [RelativeHorizontalAlignment](https://reference.aspose.com/words/ar/net/aspose.words.tables/table/relativehorizontalalignment/) – المحاذاة الأفقية النسبية للجدول العائم.
* [RelativeVerticalAlignment](https://reference.aspose.com/words/ar/net/aspose.words.tables/table/relativeverticalalignment/) – المحاذاة العمودية النسبية للجدول العائم.

يوضح مثال التعليمات البرمجية التالي كيفية الحصول على موضع الجدول العائم:

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "get-floating-table-position.cs" >}}

## ضبط موضع الجدول العائم

تمامًا مثل الحصول على، يمكنك ضبط موضع الجدول العائم باستخدام نفس Aspose.Words API.

من المهم أن تعرف أن المحاذاة والمسافة الأفقية والرأسية هي خصائص مدمجة ويمكن لأحدهما إعادة تعيين الآخر. على سبيل المثال، سيؤدي تعيين **RelativeHorizontalAlignment** إلى إعادة تعيين **AbsoluteHorizontalDistance** إلى قيمته الافتراضية والعكس صحيح. نفس الشيء هو true للترتيب الرأسي.

يوضح مثال التعليمات البرمجية التالي كيفية تعيين موضع الجدول العائم:

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "floating-table-position.cs" >}}

## الحصول على المسافة بين الجدول والنص المحيط

يوفر Aspose.Words أيضًا فرصة لمعرفة المسافات بين الجداول والنصوص المحيطة بها:

- [DistanceTop](https://reference.aspose.com/words/ar/net/aspose.words.tables/table/distancetop/) – قيمة المسافة من الأعلى
- [DistanceBottom](https://reference.aspose.com/words/ar/net/aspose.words.tables/table/distancebottom/) – قيمة مسافة الإدراك
- [DistanceRight](https://reference.aspose.com/words/ar/net/aspose.words.tables/table/distanceright/) - قيمة المسافة على اليمين
- [DistanceLeft](https://reference.aspose.com/words/ar/net/aspose.words.tables/table/distanceleft/) – قيمة المسافة على اليسار

يوضح مثال التعليمات البرمجية التالي كيفية الحصول على المسافة بين الجدول والنص المحيط به:

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "distance-between-table-surrounding-text.cs" >}}
