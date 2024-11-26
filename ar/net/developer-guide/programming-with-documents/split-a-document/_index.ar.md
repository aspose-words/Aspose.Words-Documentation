---
title: تقسيم مستند في C#
second_title: Aspose.Words لـ .NET
articleTitle: تقسيم مستند
linktitle: تقسيم مستند
description: "تقسيم مستند إلى عدة ملفات باستخدام C#. استخدم ميزة التقسيم لتقسيم المستند بشكل فعال حسب العناوين أو الأقسام، وكذلك حسب الصفحات أو حسب نطاقات الصفحات."
type: docs
weight: 90
url: /ar/net/split-a-document/
timestamp: 2024-01-27-14-07-04
---

*Splitting* أو *تقسيم مستند* هو عملية تقسيم مستند كبير إلى عدد أكبر من الملفات الأصغر. هناك أسباب مختلفة لتقسيم الملف. على سبيل المثال، تحتاج فقط إلى بعض الصفحات من مستند معين وليس المستند بأكمله. أو لأسباب تتعلق بالخصوصية، قد ترغب في مشاركة بعض أجزاء المستند فقط مع الآخرين. باستخدام ميزة التقسيم، يمكنك الحصول فقط على الأجزاء المطلوبة من المستند وتنفيذ الإجراءات اللازمة بها، على سبيل المثال، الترميز أو الحفظ أو الإرسال.

يوفر لك Aspose.Words طريقة فعالة لتقسيم مستند واحد إلى مستندات متعددة حسب العناوين أو الأقسام. يمكنك أيضًا تقسيم المستند حسب الصفحات أو حسب نطاقات الصفحات. سيتم وصف كلا خياري التقسيم في هذه المقالة.

لتقسيم مستند إلى ملفات أصغر باستخدام Aspose.Words، عليك اتباع الخطوات التالية:

1. قم بتحميل المستند بأي تنسيق مدعوم.
1. قم بتقسيم المستند.
1. احفظ المستندات الناتجة.

بعد تقسيم المستند، ستتمكن من فتح جميع المستندات الناتجة التي ستبدأ بالصفحات والنصوص المطلوبة وما إلى ذلك.

{{% alert color="primary" %}}

**حاول عبر الإنترنت**

يمكنك تجربة هذه الوظيفة مع [أداة تقسيم المستندات المجانية عبر الإنترنت](https://products.aspose.app/words/splitter) الخاص بنا.

{{% /alert %}}

## تقسيم مستند باستخدام معايير مختلفة {#split-a-document-using-different-criteria}

يتيح لك Aspose.Words تقسيم مستندات EPUB أو HTML إلى فصول وفقًا لمعايير مختلفة. في هذه العملية، يتم الحفاظ على نمط وتخطيط المستند المصدر للمستندات الناتجة.

يمكنك تحديد المعايير باستخدام تعداد [DocumentSplitCriteria](https://reference.aspose.com/words/ar/net/aspose.words.saving/documentsplitcriteria/). لذا يمكنك تقسيم المستند إلى فصول باستخدام أحد المعايير التالية أو دمج أكثر من معيار معًا:

- فقرة العنوان،
- فاصل المقطع،
- فاصل الأعمدة،
- فاصل صفحة.

عند حفظ الإخراج إلى HTML، يقوم Aspose.Words بحفظ كل فصل على حدة كملف HTML منفصل. ونتيجة لذلك، سيتم تقسيم المستند إلى ملفات HTML متعددة. عند حفظ الإخراج إلى EPUB، يحفظ Aspose.Words النتيجة في ملف EPUB واحد بغض النظر عن قيمة `DocumentSplitCriteria` التي استخدمتها. لذا، فإن استخدام DocumentSplitCriteria لمستندات EPUB يؤثر فقط على مظهر محتواها في تطبيقات القارئ: سيتم تقسيم المحتوى إلى فصول ولن يظهر المستند بعد ذلك بشكل مستمر.

{{% alert color="primary" %}}

لا يمكنك تقسيم مستند باستخدام خاصية [DocumentSplitCriteria](https://reference.aspose.com/words/ar/net/aspose.words.saving/htmlsaveoptions/documentsplitcriteria/) عند الحفظ بتنسيق MHTML.

{{% /alert %}}

في هذا القسم، سننظر فقط في بعض معايير التقسيم المحتملة.

### تقسيم المستند حسب العناوين {#split-a-document-by-headings}

لتقسيم مستند إلى فصول حسب العناوين، استخدم قيمة **HeadingParagraph** لخاصية **DocumentSplitCriteria**.

إذا كنت بحاجة إلى تقسيم مستند حسب مستوى معين من فقرات العناوين، مثل العناوين 1 و2 و3، فاستخدم أيضًا خاصية [DocumentSplitHeadingLevel](https://reference.aspose.com/words/ar/net/aspose.words.saving/htmlsaveoptions/documentsplitheadinglevel/). سيتم تقسيم المخرجات على فقرات منسقة بمستوى العنوان المحدد.

يوضح مثال التعليمات البرمجية التالي كيفية تقسيم مستند إلى أجزاء أصغر حسب العنوان:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToHtml-SplitDocumentByHeadingsHtml.cs" >}}

يرجى ملاحظة أنه بالنسبة لهذه المعايير، يدعم Aspose.Words فقط الحفظ بتنسيق HTML عند التقسيم.

عند الحفظ في EPUB، لا يتم تقسيم المستند إلى عدة ملفات، وسيكون هناك ملف إخراج واحد فقط.

### تقسيم المستند حسب الأقسام {#split-a-document-by-sections}

يمكّنك Aspose.Words أيضًا من استخدام فواصل الأقسام لتقسيم المستندات وحفظها بتنسيق HTML. لهذا الغرض، استخدم **SectionBreak** باعتباره **DocumentSplitCriteria**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToHtml-SplitDocumentBySectionsHtml.cs" >}}

هناك طريقة أخرى لتقسيم المستند المصدر إلى مستندات إخراج متعددة، ويمكنك اختيار أي تنسيق إخراج يدعمه Aspose.Words.

يوضح مثال التعليمات البرمجية التالي كيفية تقسيم مستند إلى أجزاء أصغر عن طريق فواصل المقاطع (دون استخدام خاصية `DocumentSplitCriteria`):

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-SplitDocument-SplitDocumentBySections.cs" >}}

## تقسيم حسب الصفحات {#splitting-by-pages}

يمكنك أيضًا تقسيم صفحة مستند بصفحة، أو حسب نطاقات الصفحات، أو البدء بأرقام الصفحات المحددة. في مثل هذه الحالة، يمكن لطريقة [ExtractPages](https://reference.aspose.com/words/ar/net/aspose.words/document/extractpages/) القيام بهذه المهمة.

يصف هذا القسم العديد من حالات الاستخدام لتقسيم المستندات عن طريق الترحيل إلى صفحات باستخدام فئة [Document](https://reference.aspose.com/words/ar/net/aspose.words/document/) وطريقة **ExtractPages**.

{{% alert color="primary" %}}

يمكنك استخدام أي [تنسيقات المستندات المدعومة](/words/ar/net/supported-document-formats/).

{{% /alert %}}

{{% alert color="primary" %}}

نظرًا للعديد من الفروق الدقيقة التي تظهر أثناء تقليل عدد الصفحات، فإن المطابقة الكاملة مع تخطيط Microsoft Word تعد مهمة معقدة للغاية. لذلك، اعتمادًا على مدى تعقيد المستند، قد تكون هناك اختلافات طفيفة في تخطيط المستند الناتج عن المستند الأصلي.

{{% /alert %}}

### تقسيم صفحة المستند حسب صفحة {#split-a-document-page-by-page}

يمكّنك Aspose.Words من تقسيم صفحة مستند متعدد الصفحات إلى صفحة.

يوضح مثال التعليمات البرمجية التالي كيفية تقسيم مستند وحفظ كل صفحة كمستند منفصل:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-Split document-SplitDocumentPageByPage.cs" >}}

### تقسيم المستند حسب نطاقات الصفحات {#split-a-document-by-page-ranges}

يسمح Aspose.Words بتقسيم مستند متعدد الصفحات حسب نطاقات الصفحات. يمكنك تقسيم ملف واحد إلى ملفات متعددة بنطاقات صفحات مختلفة أو ما عليك سوى تحديد نطاق واحد وحفظ هذا الجزء فقط من المستند المصدر. لاحظ أنه يمكنك اختيار نطاق الصفحات وفقًا للحد الأقصى والحد الأدنى لعدد صفحات المستند.

يوضح مثال التعليمات البرمجية التالي كيفية تقسيم مستند إلى أجزاء أصغر حسب نطاق الصفحات مع فهارس بداية ونهاية محددة:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-Split document-SplitDocumentByPageRange.cs" >}}

## خيار رد الاتصال لحفظ مستند {#callback-option-for-saving-a-document}

يمكنك استخدام خاصية [DocumentPartSavingCallback](https://reference.aspose.com/words/ar/net/aspose.words.saving/htmlsaveoptions/documentpartsavingcallback/) للتحكم في كيفية حفظ Aspose.Words لأجزاء المستند عند تصدير هذا المستند إلى تنسيق HTML. تسمح لك هذه الخاصية بإعادة تسمية ملفات الإخراج أو حتى إعادة توجيهها إلى تدفقات مخصصة.

يرجى ملاحظة أن رد الاتصال هذا ليس مفيدًا عند الحفظ في EPUB لأنه يجب حفظ جميع أجزاء المخرجات في حاوية واحدة - ملف .epub. لذلك، إعادة توجيه الدفق غير مدعومة، وتأثير إعادة التسمية غير مرئي حيث تتم إعادة تسمية الملفات داخل الحاوية.

## دمج المستند المقسم مع مستند {#merge-the-split-document-with-another-file} آخر

يمكّنك Aspose.Words من دمج مستند الإخراج المقسم مع مستند آخر لتكوين مستند جديد. يمكن أن يسمى هذا دمج المستندات.

يوضح مثال التعليمات البرمجية التالي كيفية دمج مستند منقسم مع مستند آخر:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-SplitDocument-MergeSplitDocuments.cs" >}}
