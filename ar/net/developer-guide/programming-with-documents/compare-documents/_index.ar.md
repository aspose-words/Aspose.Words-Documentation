---
title: مقارنة المستندات في C#
second_title: Aspose.Words لـ .NET
articleTitle: مقارنة المستندات
linktitle: مقارنة المستندات
description: "قارن مستندين بأي تنسيقات مدعومة واعرض تغييرات المحتوى باستخدام C#. يمكنك تطبيق الخيارات المتقدمة عند المقارنة."
type: docs
weight: 60
url: /ar/net/compare-documents/
timestamp: 2024-01-27-14-07-04
---

مقارنة المستندات هي عملية تحدد التغييرات بين مستندين وتحتوي على التغييرات كمراجعات. تقوم هذه العملية بمقارنة أي مستندين، بما في ذلك إصدارات مستند واحد محدد، ثم سيتم عرض التغييرات بين المستندين كمراجعات في المستند الأول.

يتم تحقيق طريقة المقارنة من خلال مقارنة الكلمات على مستوى الحرف أو على مستوى الكلمة. إذا كانت الكلمة تحتوي على تغيير حرف واحد على الأقل، فسيتم عرض الفرق في النتيجة كتغيير للكلمة بأكملها، وليس حرفًا. تعتبر عملية المقارنة هذه مهمة معتادة في الصناعات القانونية والمالية.

بدلاً من البحث يدويًا عن الاختلافات بين المستندات أو بين الإصدارات المختلفة منها، يمكنك استخدام Aspose.Words لمقارنة المستندات والحصول على تغييرات المحتوى في التنسيق والرأس/التذييل والجداول والمزيد.

تشرح هذه المقالة كيفية مقارنة المستندات وكيفية تحديد خصائص المقارنة المتقدمة.

{{% alert color="primary" %}}

**حاول عبر الإنترنت**

يمكنك مقارنة مستندين عبر الإنترنت باستخدام أداة [مقارنة المستندات عبر الإنترنت](https://products.aspose.app/words/comparison).

لاحظ أنه يتم استخدام طريقة المقارنة الموضحة أدناه في هذه الأداة لضمان الحصول على نتائج متساوية. لذلك سوف تحصل على نفس النتائج حتى باستخدام أداة المقارنة عبر الإنترنت أو باستخدام طريقة المقارنة في Aspose.Words.

{{% /alert %}}

## القيود وتنسيقات الملفات المدعومة {#limitations-and-supported-file-formats}

تعد مقارنة المستندات ميزة معقدة للغاية. هناك أجزاء متنوعة من مجموعة المحتوى التي تحتاج إلى تحليل للتعرف على جميع الاختلافات. يرجع سبب هذا التعقيد إلى حقيقة أن Aspose.Words يهدف إلى الحصول على نفس نتائج المقارنة مثل خوارزمية مقارنة Microsoft Word.

القيد العام للمستندين اللذين تتم مقارنتهما هو أنه يجب ألا يكون لهما مراجعات قبل استدعاء طريقة المقارنة لأن هذا القيد موجود في Microsoft Word.

{{% alert color="primary" %}}

لاحظ أنه يمكنك مقارنة أي مستندين داخل [تنسيقات المستندات المدعومة](/words/ar/net/supported-document-formats/). في الأساس، يمكنك مقارنة كائنات الوثيقة ويمكنك أيضًا إنشاء تلك الكائنات من البداية دون الحاجة إلى أي تنسيق محدد.

{{% /alert %}}

## قارن بين وثيقتين {#compare-two-documents}

عند مقارنة المستندات، تظهر اختلافات المستند الأخير عن الأول كمراجعات للأول. عندما تقوم بتعديل مستند، سيكون لكل تعديل مراجعته الخاصة بعد تشغيل طريقة المقارنة.

يسمح لك Aspose.Words بتحديد الاختلافات في المستندات باستخدام طريقة [Compare](https://reference.aspose.com/words/ar/net/aspose.words/document/compare/#compare/) - وهذا يشبه ميزة مقارنة مستندات Microsoft Word. يتيح لك فحص المستندات أو إصدارات المستندات للعثور على الاختلافات والتغييرات، بما في ذلك تعديلات التنسيق مثل تغييرات الخط وتغييرات التباعد وإضافة الكلمات والفقرات.

ونتيجة للمقارنة، يمكن تحديد المستندات على أنها متساوية أو غير متساوية. يعني مصطلح المستندات "المتساوية" أن طريقة المقارنة غير قادرة على تمثيل التغييرات كمراجعات. وهذا يعني أن نص المستند وتنسيق النص متماثلان. ولكن يمكن أن تكون هناك اختلافات أخرى بين الوثائق. على سبيل المثال، يدعم Microsoft Word مراجعات التنسيق للأنماط فقط، ولا يمكنك تمثيل إدراج/حذف النمط. لذلك يمكن أن تحتوي المستندات على مجموعة مختلفة من الأنماط، ولا تزال طريقة **Compare** لا تنتج أي مراجعات.

يوضح مثال التعليمات البرمجية التالي كيفية التحقق مما إذا كان المستندان متساويان أم لا:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-CompareDocument-CompareForEqual.cs" >}}

يوضح مثال التعليمات البرمجية التالي كيفية تطبيق طريقة `Compare` على مستندين ببساطة:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-CompareDocument-ApplyCompareTwoDocuments.cs" >}}

## حدد خيارات المقارنة المتقدمة {#specify-advanced-comparing-properties}

هناك العديد من الخصائص المختلفة لفئة [CompareOptions](https://reference.aspose.com/words/ar/net/aspose.words.comparing/compareoptions/) والتي يمكنك تطبيقها عندما تريد مقارنة المستندات.

على سبيل المثال، يسمح لك Aspose.Words بتجاهل التغييرات التي تم إجراؤها أثناء عملية المقارنة لأنواع معينة من الكائنات داخل المستند الأصلي. يمكنك تحديد الخاصية المناسبة لنوع الكائن، مثل [IgnoreHeadersAndFooters](https://reference.aspose.com/words/ar/net/aspose.words.comparing/compareoptions/ignoreheadersandfooters/) و[IgnoreFormatting](https://reference.aspose.com/words/ar/net/aspose.words.comparing/compareoptions/ignoreformatting/) و[IgnoreComments](https://reference.aspose.com/words/ar/net/aspose.words.comparing/compareoptions/ignorecomments/) وغيرها عن طريق ضبطها على "true".

بالإضافة إلى ذلك، يوفر Aspose.Words خاصية [Granularity](https://reference.aspose.com/words/ar/net/aspose.words.comparing/compareoptions/granularity/) التي يمكنك من خلالها تحديد ما إذا كنت تريد تتبع التغييرات حسب الحرف أو الكلمة.

خاصية شائعة أخرى هي اختيار المستند الذي سيتم عرض تغييرات المقارنة فيه. على سبيل المثال، يحتوي "مربع حوار مقارنة المستندات" في Microsoft Word على خيار "إظهار التغييرات في" - وهذا يؤثر أيضًا على نتائج المقارنة. يوفر Aspose.Words خاصية [Target](https://reference.aspose.com/words/ar/net/aspose.words.comparing/compareoptions/target/) التي تخدم هذا الغرض.

يوضح مثال التعليمات البرمجية التالي كيفية تعيين خصائص المقارنة المتقدمة:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-CompareDocument-SetAdvancedComparingProperties.cs" >}}
