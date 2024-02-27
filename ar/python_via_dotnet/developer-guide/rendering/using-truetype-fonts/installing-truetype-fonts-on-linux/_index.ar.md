---
title: قم بتثبيت خطوط TrueType على Linux
second_title: Aspose.Words لـ Python via .NET
articleTitle: قم بتثبيت خطوط TrueType على Linux
linktitle: قم بتثبيت خطوط TrueType على Linux
description: "يسمح Aspose.Words for Python بعرض مستند تم إنشاؤه باستخدام Microsoft Word على جهاز Linux بأفضل دقة. لتحقيق ذلك، انسخ ملفات الخطوط من جهاز Windows أو قم بتثبيت حزمة خطوط `TrueType` على جهاز Linux الخاص بك."
type: docs
weight: 20
url: /ar/python-net/installing-truetype-fonts-on-linux/
---

في أغلب الأحيان، ستستخدم Aspose.Words لتحويل مستندات DOC أو DOCX إلى تنسيق PDF. إذا كنت بحاجة إلى القيام بذلك على جهاز Linux، فسيساعدك هذا الموضوع على معرفة كيفية التأكد من أن Aspose.Words يعرض مستنداتك بأفضل دقة.

في أغلب الأحيان، يتم إنشاء مستندات DOC وDOCX، التي تحتاج إلى تحويل، باستخدام Microsoft Word، على نظام تشغيل Windows أو Mac OS. ولذلك، فإن معظم الخطوط المستخدمة في مستندات DOC وDOCX هي "خطوط Windows" أو "خطوط Office"، وهي الخطوط المثبتة مع Microsoft Windows أو Microsoft Office. تتضمن هذه الخطوط Arial وCalibri وCambria وCentury Gothic وCourier New وGaramond وTahoma وVerdana وWingdings وغيرها الكثير.

المشكلة هي أن خطوط `TrueType` المذكورة أعلاه غير مثبتة بشكل افتراضي على توزيعات Linux. إذا أخذت مستند DOCX نموذجيًا منسقًا بخط Cambria وحاولت تحويله إلى تنسيق PDF على Linux، فسيستخدم Aspose.Words خطًا مختلفًا لأن Cambria غير متوفر. ونتيجة لذلك، سيبدو مستند PDF مختلفًا مقارنة بمستند DOCX الأصلي. للتأكد من أن المستندات المحولة بواسطة Aspose.Words تظهر في أقرب وقت ممكن من المستندات الأصلية، تحتاج إلى تثبيت "خطوط Windows" على نظام Linux الخاص بك.

هناك طريقتان رئيسيتان للحصول على خطوط TrueType على نظام Linux:

- انسخ ملفات .TTF و.TTC من جهاز Windows إلى جهاز Linux الخاص بك
- تثبيت حزمة خطوط `TrueType`، مثل *msttcorefonts*

## نسخ الخطوط من جهاز Windows

إحدى الطرق السهلة والسريعة للحصول على خطوط TrueType على نظام Linux هي نسخ ملفات .TTF و.TTC من دليل `C:\Windows\Fonts` على جهاز Windows إلى دليل ما على جهاز Linux الخاص بك. لا تحتاج إلى تثبيت هذه الخطوط أو تسجيلها على Linux بأي شكل من الأشكال؛ كل ما عليك فعله هو تحديد موقع الخطوط باستخدام فئة [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) في Aspose.Words.

{{% alert color="primary" %}}

تحقق مما إذا كان ترخيص الخط مطلوبًا، واقرأ اتفاقية ترخيص المستخدم النهائي (EULA) بعناية قبل تثبيت MS Fonts على أي نظام تشغيل Linux.

{{% /alert %}}

## قم بتثبيت حزمة خطوط `TrueType`

يوجد عدد من حزم Linux، التي تحتوي على خطوط Microsoft TrueType، والتي يمكنك تنزيلها وتثبيتها على جهاز Linux الخاص بك. قد تختلف الخطوات الدقيقة في توزيعات Linux المختلفة.

- في Ubuntu، استخدم Synaptic Package Manager للعثور على الحزمة *ttf-mscorefonts-installer* وتثبيتها.
- في openSUSE، استخدم Yast2 → Software Management للعثور على حزمة *fetchmsttfonts* وتثبيتها.
- استخدم خطوط Liberation المرخصة بموجب OFL، كبديل لخطوط Windows القياسية: Arial وTimes New Roman وCourier New.
- للحصول على حزم الخطوط المناسبة لتوزيعات Linux الأخرى، ابحث في الوثائق المتاحة على الإنترنت.

بعد تثبيت الحزمة، سيجد Aspose.Words هذه الخطوط في المجلدات الموجودة على نظامك ويستخدمها عند العمل مع المستندات.

## أنظر أيضا

- [خطوط التحرير](https://pagure.io/liberation-fonts) كبديل لخطوط Windows القياسية
