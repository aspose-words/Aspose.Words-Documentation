---
title: مقارنة المستندات في Python
second_title: Aspose.Words لـ Python via .NET
articleTitle: مقارنة المستندات
linktitle: مقارنة المستندات
description: "قارن مستندين بأي تنسيقات مدعومة واعرض تغييرات المحتوى باستخدام Python. يمكنك تطبيق الخيارات المتقدمة عند المقارنة."
type: docs
weight: 60
url: /ar/python-net/compare-documents/
---

مقارنة المستندات هي عملية تحدد التغييرات بين مستندين وتحتوي على التغييرات كمراجعات. تقوم هذه العملية بمقارنة أي مستندين، بما في ذلك إصدارات مستند واحد محدد، ثم سيتم عرض التغييرات بين كلا المستندين كمراجعات في المستند الأول.

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

لاحظ أنه يمكنك مقارنة أي مستندين داخل [تنسيقات المستندات المدعومة](/words/ar/python-net/supported-document-formats/). في الأساس، يمكنك مقارنة كائنات الوثيقة ويمكنك أيضًا إنشاء تلك الكائنات من البداية دون الحاجة إلى أي تنسيق محدد.

{{% /alert %}}

## قارن بين وثيقتين {#compare-two-documents}

عند مقارنة المستندات، تظهر اختلافات المستند الأخير عن الأول كمراجعات للأول. عندما تقوم بتعديل مستند، سيكون لكل تعديل مراجعته الخاصة بعد تشغيل طريقة المقارنة.

يسمح لك Aspose.Words بتحديد الاختلافات في المستندات باستخدام طريقة [compare](https://reference.aspose.com/words/python-net/aspose.words/document/compare/) - وهذا يشبه ميزة مقارنة مستندات Microsoft Word. يتيح لك فحص المستندات أو إصدارات المستندات للعثور على الاختلافات والتغييرات، بما في ذلك تعديلات التنسيق مثل تغييرات الخط وتغييرات التباعد وإضافة الكلمات والفقرات.

ونتيجة للمقارنة، يمكن تحديد المستندات على أنها متساوية أو غير متساوية. يعني مصطلح المستندات "المتساوية" أن طريقة المقارنة غير قادرة على تمثيل التغييرات كمراجعات. وهذا يعني أن نص المستند وتنسيق النص متماثلان. ولكن يمكن أن تكون هناك اختلافات أخرى بين الوثائق. على سبيل المثال، يدعم Microsoft Word مراجعات التنسيق للأنماط فقط، ولا يمكنك تمثيل إدراج/حذف النمط. لذلك يمكن أن تحتوي المستندات على مجموعة مختلفة من الأنماط، ولا تزال طريقة [compare](https://reference.aspose.com/words/python-net/aspose.words/document/compare/) لا تنتج أي مراجعات.

يوضح مثال التعليمات البرمجية التالي كيفية التحقق مما إذا كان المستندان متساويان أم لا:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-compare_documents-CompareForEqual.py" >}}

يوضح مثال التعليمات البرمجية التالي كيفية تطبيق طريقة `Compare` على مستندين ببساطة:

{{< highlight python >}}
# The source document doc1.
doc1 = aw.Document()
builder = aw.DocumentBuilder(doc1)
builder.writeln("This is the original document.")

# The target document doc2.
doc2 = aw.Document()
builder = aw.DocumentBuilder(doc2)
builder.writeln("This is the edited document.")

# If either document has a revision, an exception will be thrown.
if (doc1.revisions.count == 0 and doc2.revisions.count == 0) :
    doc1.compare(doc2, "authorName", datetime.today())

# If doc1 and doc2 are different, doc1 now has some revisions after the comparison, which can now be viewed and processed.
self.assertEqual(2, doc1.revisions.count)

for r in doc1.revisions :
    print(f"Revision type: {r.revision_type}, on a node of type \"{r.parent_node.node_type}\"")
    print(f"\tChanged text: \"{r.parent_node.get_text()}\"")

# All the revisions in doc1 are differences between doc1 and doc2, so accepting them on doc1 transforms doc1 into doc2.
doc1.revisions.accept_all()

# doc1, when saved, now resembles doc2.
doc1.save(docs_base.artifacts_dir + "Document.Compare.docx")
doc1 = aw.Document(docs_base.artifacts_dir + "Document.Compare.docx")
self.assertEqual(0, doc1.revisions.count)
self.assertEqual(doc2.get_text().strip(), doc1.get_text().strip())
{{< /highlight >}}

## تحديد خصائص المقارنة المتقدمة {#specify-advanced-comparing-properties}

هناك العديد من الخصائص المختلفة لفئة [CompareOptions](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/) والتي يمكنك تطبيقها عندما تريد مقارنة المستندات.

على سبيل المثال، يسمح لك Aspose.Words بتجاهل التغييرات التي تم إجراؤها أثناء عملية المقارنة لأنواع معينة من الكائنات داخل المستند الأصلي. يمكنك تحديد الخاصية المناسبة لنوع الكائن، مثل [ignore_headers_and_footers](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/ignore_headers_and_footers/) و[ignore_formatting](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/ignore_formatting/) و[ignore_comments](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/ignore_comments/) وغيرها عن طريق تعيينها إلى `True`.

بالإضافة إلى ذلك، يوفر Aspose.Words خاصية [granularity](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/granularity/) التي يمكنك من خلالها تحديد ما إذا كنت تريد تتبع التغييرات حسب الحرف أو الكلمة.

خاصية شائعة أخرى هي اختيار المستند الذي سيتم عرض تغييرات المقارنة فيه. على سبيل المثال، يحتوي "مربع حوار مقارنة المستندات" في Microsoft Word على خيار "إظهار التغييرات في" - وهذا يؤثر أيضًا على نتائج المقارنة. يوفر Aspose.Words خاصية [target](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/target/) التي تخدم هذا الغرض.

يوضح مثال التعليمات البرمجية التالي كيفية تعيين خصائص المقارنة المتقدمة:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-compare_documents-CompareOptions.py" >}}
