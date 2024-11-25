---
title: قارن المستندات في Java
second_title: Aspose.Words ل Java
articleTitle: قارن المستندات
linktitle: قارن المستندات
type: docs
description: "مقارنة وثيقتين في أي صيغ معتمدة ويظهر التغييرات المحتوى. يمكنك تطبيق خيارات متقدمة عند المقارنة باستخدام Java."
weight: 60
url: /ar/java/compare-documents/
timestamp: 2024-01-27-14-07-04
---

مقارنة المستندات هي عملية تحدد التغييرات بين وثيقتين وتحتوي على التغييرات كمراجعات. تقارن هذه العملية أي وثيقتين، بما في ذلك إصدارات مستند واحد محدد، ثم سيتم عرض التغييرات بين كلتا الوثيقتين كمراجعات في المستند الأول.

يتم تحقيق طريقة المقارنة من خلال مقارنة الكلمات على مستوى الحرف أو على مستوى الكلمة. إذا كانت الكلمة تحتوي على تغيير حرف واحد على الأقل، في النتيجة، سيتم عرض الفرق كتغيير للكلمة بأكملها، وليس حرفا. عملية المقارنة هذه هي مهمة معتادة في الصناعات القانونية والمالية.

بدلا من البحث يدويا عن الاختلافات بين المستندات أو بين الإصدارات المختلفة منها، يمكنك استخدام Aspose.Words لمقارنة المستندات والحصول على تغييرات المحتوى في التنسيق والرأس/التذييل والجداول والمزيد.

تشرح هذه المقالة كيفية مقارنة المستندات وكيفية تحديد خصائص المقارنة المتقدمة.

{{% alert color="primary" %}}

**جرب عبر الإنترنت**

يمكنك مقارنة وثيقتين عبر الإنترنت باستخدام [مقارنة المستندات عبر الإنترنت](https://products.aspose.app/words/comparison) أداة.

لاحظ أن طريقة المقارنة الموضحة أدناه تستخدم في هذه الأداة لضمان الحصول على نتائج متساوية. لذلك ستحصل على نفس النتائج حتى باستخدام أداة المقارنة عبر الإنترنت أو باستخدام طريقة المقارنة في Aspose.Words.

{{% /alert %}}

## القيود وتنسيقات الملفات المدعومة {#limitations-and-supported-file-formats}

تعد مقارنة المستندات ميزة معقدة للغاية. هناك أجزاء متنوعة من تركيبة المحتوى تحتاج إلى تحليل للتعرف على جميع الاختلافات. سبب هذا التعقيد هو أن Aspose.Words يهدف إلى الحصول على نفس نتائج المقارنة مثل خوارزمية المقارنة Microsoft Word.

القيد العام لوثيقتين تتم مقارنتهما هو أنه يجب ألا يكون لديهم مراجعات قبل استدعاء طريقة المقارنة لأن هذا القيد موجود في Microsoft Word.

{{% alert color="primary" %}}

لاحظ أنه يمكنك مقارنة أي وثيقتين داخل [تنسيقات الملفات المدعومة](/words/java/supported-document-formats/). في الأساس، يمكنك مقارنة كائنات المستند وحتى يمكنك إنشاء هذه الكائنات من البداية دون وجود أي تنسيق محدد.

{{% /alert %}}

## قارن وثيقتين {#compare-two-documents}

عند مقارنة المستندات، تظهر الاختلافات في المستند الأخير من السابق كتنقيحات على السابق. عند تعديل مستند، سيكون لكل تعديل مراجعة خاصة به بعد تشغيل طريقة المقارنة.

Aspose.Words يسمح لك بتحديد اختلافات المستندات باستخدام طريقة [Compare](https://reference.aspose.com/words/java/com.aspose.words/document/#compare-com.aspose.words.Document-java.lang.String-java.util.Date) - وهذا مشابه لميزة مقارنة المستندات Microsoft Word. يسمح لك بالتحقق من المستندات أو إصدارات المستندات للعثور على الاختلافات والتغييرات، بما في ذلك تعديلات التنسيق مثل تغييرات الخط وتغييرات التباعد وإضافة الكلمات والفقرات.

نتيجة للمقارنة، يمكن تحديد المستندات على أنها متساوية أو غير متساوية. يعني مصطلح المستندات "المتساوية" أن طريقة المقارنة غير قادرة على تمثيل التغييرات كتنقيحات. هذا يعني أن كل من نص المستند وتنسيق النص متماثلان. ولكن يمكن أن تكون هناك اختلافات أخرى بين المستندات. على سبيل المثال، يدعم Microsoft Word تنقيحات التنسيق للأنماط فقط، ولا يمكنك تمثيل إدراج/حذف النمط. لذلك يمكن أن تحتوي المستندات على مجموعة مختلفة من الأنماط، ولا تزال طريقة **Compare** لا تنتج أي مراجعات.

يوضح مثال الكود التالي كيفية التحقق مما إذا كانت وثيقتان متساويتان أم لا:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CompareTwoWordDocuments-wordDocumentsAreEqual.java" >}}

يوضح مثال الكود التالي كيفية تطبيق طريقة `Compare` ببساطة على وثيقتين:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CompareTwoWordDocuments-caseWhenDocumentHasRevisions.java" >}}

## حدد خيارات المقارنة المتقدمة {#specify-advanced-comparing-properties}

هناك العديد من الخصائص المختلفة لفئة [CompareOptions](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/) التي يمكنك تطبيقها عندما تريد مقارنة المستندات.

على سبيل المثال، Aspose.Words يسمح لك بتجاهل التغييرات التي تم إجراؤها أثناء عملية المقارنة لأنواع معينة من الكائنات داخل المستند الأصلي. يمكنك تحديد الخاصية المناسبة لنوع الكائن، مثل [IgnoreHeadersAndFooters](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getIgnoreHeadersAndFooters), [IgnoreFormatting](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getIgnoreFormatting), [IgnoreComments](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getIgnoreComments), وغيرها من خلال وضع لهم "صحيح".

بالإضافة إلى ذلك، يوفر Aspose.Words خاصية [Granularity](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getGranularity) التي يمكنك من خلالها تحديد ما إذا كنت تريد تتبع التغييرات حسب الحرف أو الكلمة.

خاصية مشتركة أخرى هي الاختيار في أي مستند لإظهار تغييرات المقارنة. على سبيل المثال، يحتوي" مربع حوار مقارنة المستندات "في Microsoft Word على خيار" إظهار التغييرات في " – وهذا يؤثر أيضا على نتائج المقارنة. Aspose.Words يوفر [Target](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getTarget) الخاصية التي تخدم هذا الغرض.

يوضح مثال التعليمات البرمجية التالية كيفية تعيين خصائص المقارنة المتقدمة:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CompareTwoWordDocuments-AdvancedComparingProperties.java" >}}
