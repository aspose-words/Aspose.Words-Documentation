---
title: تقسيم مستند في Java
second_title: Aspose.Words ل Java
articleTitle: تقسيم مستند
linktitle: تقسيم مستند
description: "Aspose.Words إلى عن على Java يوفر لك طريقة فعالة لتقسيم مستند واحد إلى مستندات متعددة حسب العناوين أو الأقسام، بالإضافة إلى الصفحات أو نطاقات الصفحات."
type: docs
weight: 90
url: /ar/java/split-a-document/
timestamp: 2024-01-27-14-07-04
---

*Splitting* أو *split a document* هي عملية تقسيم مستند كبير إلى عدد أكبر من الملفات الأصغر. هناك أسباب مختلفة لتقسيم الملف. على سبيل المثال، تحتاج فقط إلى بعض الصفحات من مستند معين وليس المستند بأكمله. أو لأسباب تتعلق بالخصوصية، فأنت تريد مشاركة بعض أجزاء المستند فقط مع أجزاء أخرى. باستخدام ميزة التقسيم، يمكنك الحصول على الأجزاء المطلوبة فقط من المستند والقيام بالإجراءات اللازمة معها، على سبيل المثال، للترميز أو الحفظ أو الإرسال.

Aspose.Words يوفر لك طريقة فعالة لتقسيم مستند واحد إلى مستندات متعددة حسب العناوين أو الأقسام. يمكنك أيضا تقسيم مستند حسب الصفحات أو حسب نطاقات الصفحات. سيتم وصف كلا خياري التقسيم في هذه المقالة.

لتقسيم مستند إلى ملفات أصغر باستخدام Aspose.Words، تحتاج إلى اتباع الخطوات التالية:

1. قم بتحميل المستند بأي تنسيق مدعوم.
1. تقسيم المستند.
1. احفظ مستندات الإخراج.

بعد تقسيم مستند، ستتمكن من فتح جميع مستندات الإخراج التي ستبدأ بالصفحات والنصوص المطلوبة وما إلى ذلك.

{{% alert color="primary" %}}

**جرب عبر الإنترنت**

يمكنك تجربة هذه الوظيفة من خلال [مقسم مستندات مجاني عبر الإنترنت](https://products.aspose.app/words/splitter).

{{% /alert %}}

## تقسيم مستند باستخدام معايير مختلفة {#split-a-document-using-different-criteria}

Aspose.Words يسمح لك بتقسيم EPUB أو HTML المستندات إلى فصول وفقا لمعايير مختلفة. في هذه العملية، يتم الاحتفاظ بنمط وتخطيط المستند المصدر لمستندات الإخراج.

يمكنك تحديد المعايير باستخدام [DocumentSplitCriteria](https://reference.aspose.com/words/java/com.aspose.words/documentsplitcriteria/) التعداد. لذا يمكنك تقسيم المستند إلى فصول باستخدام أحد المعايير التالية أو دمج أكثر من معيار معا:

- العنوان الفقرة,
- استراحة القسم,
- كسر العمود,
- فاصل الصفحات.

عند حفظ الإخراج إلى HTML، Aspose.Words احفظ كل فصل على حدة كملف HTML منفصل. نتيجة لذلك، سيتم تقسيم المستند إلى ملفات HTML متعددة. عند حفظ الإخراج إلى EPUB، Aspose.Words احفظ النتيجة في ملف EPUB واحد بغض النظر عن القيمة `DocumentSplitCriteria` التي استخدمتها. لذلك، فإن استخدام DocumentSplitCriteria للمستندات EPUB يؤثر فقط على مظهر محتواها في تطبيقات القارئ: سيتم تقسيم المحتوى إلى فصول ولن يظهر المستند بعد الآن بشكل مستمر.

{{% alert color="primary" %}}

لا يمكنك تقسيم مستند باستخدام الخاصية [DocumentSplitCriteria](https://reference.aspose.com/words/java/com.aspose.words/documentsplitcriteria/) عند الحفظ إلى تنسيق MHTML.

{{% /alert %}}

في هذا القسم، نعتبر فقط بعض معايير الانقسام المحتملة.

### تقسيم مستند حسب العناوين {#split-a-document-by-headings}

لتقسيم مستند إلى فصول حسب العناوين، استخدم قيمة **HeadingParagraph** لخاصية **DocumentSplitCriteria**.

إذا كنت بحاجة إلى تقسيم مستند إلى مستوى معين من فقرات العناوين، مثل العناوين 1 و 2 و 3، فاستخدم أيضا خاصية [DocumentSplitHeadingLevel](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getDocumentSplitHeadingLevel). سيتم تقسيم الإخراج على فقرات منسقة بمستوى العنوان المحدد.

يوضح مثال التعليمات البرمجية التالية كيفية تقسيم مستند إلى أجزاء أصغر حسب العنوان:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-SplitDocumentByHeadingsHTML.java" >}}

يرجى ملاحظة أنه بالنسبة لهذه المعايير، فإن Aspose.Words يدعم فقط الحفظ إلى HTML تنسيق عند التقسيم.

عند الحفظ إلى EPUB، لا يتم تقسيم المستند إلى عدة ملفات، وسيكون هناك ملف إخراج واحد فقط.

### تقسيم مستند حسب الأقسام {#split-a-document-by-sections}

يمكنك Aspose.Words أيضا من استخدام فواصل الأقسام لتقسيم المستندات وحفظها في HTML. لهذا الغرض، استخدم **SectionBreak** كـ **DocumentSplitCriteria**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-SplitDocumentBySectionsHTML.java" >}}

هناك طريقة أخرى لتقسيم المستند المصدر إلى مستندات إخراج متعددة، ويمكنك اختيار أي تنسيق إخراج مدعوم بـ Aspose.Words.

يوضح مثال الكود التالي كيفية تقسيم مستند إلى أجزاء أصغر حسب فواصل الأقسام (بدون استخدام خاصية `DocumentSplitCriteria`):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentBySections.java" >}}

## تقسيم الصفحات {#splitting-by-pages}

يمكنك أيضا تقسيم صفحة المستند حسب الصفحة أو نطاقات الصفحات أو البدء بأرقام الصفحات المحددة. في مثل هذه الحالة، يمكن لطريقة [ExtractPages](https://reference.aspose.com/words/java/com.aspose.words/document/#extractPages-int-int) القيام بالمهمة.

يصف هذا القسم عدة حالات استخدام لقسمة المستندات على مقسم إلى صفحات باستخدام فئة [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) وطريقة **ExtractPages**.

{{% alert color="primary" %}}

يمكنك استخدام أي [تنسيق الإخراج بدعم من Aspose.Words](/words/java/supported-document-formats/).

{{% /alert %}}

{{% alert color="primary" %}}

نظرا للعديد من الفروق الدقيقة التي تظهر أثناء تقليل عدد الصفحات، فإن المطابقة الكاملة مع تخطيط Microsoft Word مهمة معقدة للغاية. لذلك، بناء على تعقيد المستند، قد تكون هناك اختلافات طفيفة في تخطيط المستند الناتج عن المستند الأصلي.

{{% /alert %}}

### تقسيم صفحة المستند حسب الصفحة {#split-a-document-page-by-page}

Aspose.Words تمكنك من تقسيم صفحة وثيقة متعددة الصفحات حسب الصفحة.

يوضح مثال التعليمات البرمجية التالية كيفية تقسيم مستند وحفظ كل صفحة كمستند منفصل:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentPageByPage.java" >}}

### تقسيم مستند حسب نطاقات الصفحات {#split-a-document-by-page-ranges}

Aspose.Words يسمح بتقسيم مستند متعدد الصفحات حسب نطاقات الصفحات. يمكنك تقسيم ملف واحد إلى ملفات متعددة بنطاقات صفحات مختلفة أو ما عليك سوى تحديد نطاق واحد وحفظ هذا الجزء فقط من المستند المصدر. لاحظ أنه يمكنك اختيار نطاق الصفحات وفقا لرقم الصفحة الأقصى والأدنى للمستند.

يوضح مثال التعليمات البرمجية التالي كيفية تقسيم مستند إلى أجزاء أصغر حسب نطاق الصفحات مع فهارس بداية ونهاية محددة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentByPageRange.java" >}}

## خيار رد الاتصال لحفظ مستند {#callback-option-for-saving-a-document}

يمكنك استخدام الخاصية [DocumentPartSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getDocumentPartSavingCallback) للتحكم في كيفية حفظ Aspose.Words لأجزاء المستند عند تصدير هذا المستند إلى تنسيق HTML. تتيح لك هذه الخاصية إعادة تسمية ملفات الإخراج أو حتى إعادة توجيهها إلى تدفقات مخصصة.

يرجى ملاحظة أن رد الاتصال هذا ليس مفيدا عند الحفظ إلى EPUB لأنه يجب حفظ جميع أجزاء الإخراج في حاوية واحدة – ال .ملف النشر الإلكتروني. لذلك، لا يتم دعم إعادة توجيه الدفق، وتأثير إعادة التسمية غير مرئي حيث تتم إعادة تسمية الملفات داخل الحاوية.

## دمج المستند المقسم مع مستند آخر {#merge-the-split-document-with-another-file}

Aspose.Words تمكنك من دمج مستند تقسيم الإخراج مع مستند آخر لتشكيل مستند جديد. يمكن أن يسمى هذا دمج المستندات.

يوضح مثال الكود التالي كيفية دمج مستند مقسم مع مستند آخر:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-MergeDocuments.java" >}}
