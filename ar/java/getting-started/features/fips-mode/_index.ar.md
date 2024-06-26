---
title: FIPS Mode
second_title: Aspose.Words for Java
articleTitle: FIPS Mode
linktitle: FIPS Mode
description: "Aspose.Words for Java (ج) استخدام العديد من الترميزات وخوارزميات الحشيش عند تجهيز وثائق الامتثال لمعايير نظام الإبلاغ المالي."
type: docs
weight: 80
url: /ar/java/fips-mode/
---

Aspose.Words ويستخدم العديد من الخوارزميات الترميزية والحشيشية عند تجهيز الوثائق، وتصف هذه المادة كيفية ارتباطها بمعايير نظام الإبلاغ المالي.

وتعد المعايير الاتحادية لتجهيز المعلومات مجموعة من المعايير المنشورة علناً التي وضعتها الحكومة الاتحادية للولايات المتحدة لوضع متطلبات لمختلف الأغراض، مثل ضمان أمن الحواسيب وإمكانية التشغيل المتبادل.

## بونسي كاستل إلى الإنقاذ

Aspose.Words for Java و Aspose.Words for Android استخدام قلعة بونسي FIPS JAR للتشفير والفك التشفير ووثائق التوقيع. The JAR وقد صُممت ونفذت لتلبية الاحتياجات من الخدمات المالية 140-2، من المستوى 1.

FIPS 140-2 is a U.S. government computer security standard used to approval cryptographic modules. ويحدّد هذا المعيار الاحتياجات الأمنية التي ستُلبى بواسطة وحدة قياسية ويوفر مستويات عالية من الأمن ترمي إلى تغطية طائفة واسعة من التطبيقات والبيئات المحتملة. للمزيد من التفاصيل عن FIPS 140-2، انظر [NIST publication](https://www.nist.gov/publications/security-requirements-cryptographic-modules-includes-change-notices-1232002?pub_id=902003).

Aspose.Words for .NET (يستخدم النسخة العامة لـ(بونسي كاسل بدون دعم لـ (إف بي إس

## FIPS Mode Activation

ابتداء من النسخة 18-10 Aspose.Words ويسمح بالعمل في واسطتين، هما: General and FIPS.

بالخطأ Aspose.Words يعمل في الطريقة العامة، لذلك لا توجد قيود على استخدام الخوارزميات والمفاتيح في هذه الحالة.

يمكنك التبديل Aspose.Words من الطريقة العامة إلى نمط نظام الإبلاغ المالي باستخدام الطريقة التالية:

**Java**

{{< highlight csharp >}}
SecuritySettings.startFipsMode();
{{< /highlight >}}

لأسباب أمنية لا يمكنك تغيير طريقة العودة إلى الجنرال في وقت الهروب

وإذ تلاحظ أيضا أن: Aspose.Words لا يُمكنُ أَنْ يَعترفَ تلقائياً ما إذا نظامَكَ التشغيليَ في نمطِ FIPS، لذا أنت يَجِبُ أَنْ تَتغيّرَ Aspose.Words إلى نمط FIPS صراحة

استخدام الطريقة التالية للتأكد Aspose.Words for Java هو في حالة FIPS:

**Java**

{{< highlight csharp >}}
SecuritySettings.isInFipsMode();
{{< /highlight >}}

عندما يتم تشغيل نمط FIPS، افترض الكلمات ستمنعك من استخدام بعض خوارزميات التشفير والمفاتيح مع طول غير معتمد.

على سبيل المثال، عندما تحاول فتح وثيقة مشفرة من مادة الـ دي.دي.تي في حين أن طريقة الـ إف بي إس نشطة، يمكنك أن ترى الاستثناء التالي:

{{% alert color="primary" %}}

غير الموافق عليه الاستثناء: محاولة لفتح ملف ODT الذي يستخدم خوارزمية Blowfish. هذه الخوارزمية ليست في قائمة الخوارزميات المعتمدة من قبل القوات المسلحة.

{{% /alert %}}

ويحدث ذلك لأن خوارزمية بلو فيش ليست مدرجة في قائمة الخوارزميات المعتمدة لدى الاتحاد.

ويمكن أن يحدث الاستثناء المماثل إذا استخدمت مفاتيح الطول غير المناسب:

غير الموافق عليه الاستثناء: لا يمكنك استخدام مفتاح مع حجم 1024 لوكالة الأمن القومي في وضعية FIPS.

لمزيد من التفاصيل عن قائمة الخوارزميات المعتمدة، انظر [بونسي دليل استخدام القلعة](https://downloads.bouncycastle.org/fips-java/docs/BC-FJA-UserGuide-1.0.1.pdf), " خوارزميات ".


