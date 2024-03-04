---
title: إدراج الحقول في C#
second_title: Aspose.Words لـ .NET
articleTitle: إدراج الحقول
linktitle: إدراج الحقول
description: "كيفية إدراج الحقول في مستند باستخدام C# – تعلم طرقًا مختلفة باستخدام أمثلة التعليمات البرمجية."
type: docs
weight: 20
url: /ar/net/inserting-fields/
---

هناك عدة طرق مختلفة لإدراج الحقول في المستند:

* باستخدام [DocumentBuilder](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/)
* باستخدام [FieldBuilder](https://reference.aspose.com/words/ar/net/aspose.words.fields/fieldbuilder/)
* باستخدام [Aspose.Words Document Object Model (DOM)](/words/ar/net/aspose-words-document-object-model/)

في هذه المقالة، سننظر في كل طريقة بمزيد من التفصيل ونحلل كيفية إدراج حقول معينة باستخدام هذه الخيارات.

## إدراج الحقول في مستند باستخدام DocumentBuilder

في Aspose.Words يتم استخدام طريقة [InsertField](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/insertfield/) لإدراج حقول جديدة في المستند. تقبل المعلمة الأولى رمز الحقل الكامل للحقل المراد إدراجه. المعلمة الثانية اختيارية وتسمح بتعيين نتيجة الحقل يدويًا. إذا لم يتم توفير ذلك، فسيتم تحديث الحقل تلقائيًا. يمكنك تمرير قيمة خالية أو فارغة إلى هذه المعلمة لإدراج حقل بقيمة حقل فارغة. إذا لم تكن متأكدًا من بناء جملة رمز الحقل المحدد، فقم بإنشاء الحقل في Microsoft Word أولاً ثم قم بالتبديل لرؤية رمز الحقل الخاص به.

{{% alert color="primary" %}}

إذا كان رمز الحقل الخاص بك يحتوي على معلمة تحتوي على مسافة، فيجب أن تكون محاطة بعلامات الكلام. وإلا فإن الحقل في كل من Microsoft Word وAspose.Words قد لا يعمل كما هو متوقع حيث يتم التعامل مع المعلمة من قبل كليهما على أنها مقطوعة.

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالي كيفية إدراج حقل دمج في مستند باستخدام **DocumentBuilder**:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertField-InsertField.cs" >}}

يتم استخدام نفس الأسلوب لإدراج الحقول المتداخلة داخل حقول أخرى.

يوضح مثال التعليمات البرمجية التالي كيفية إدراج الحقول المتداخلة داخل حقل آخر باستخدام **DocumentBuilder**:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertNestedFields-InsertNestedFields.cs" >}}

### حدد اللغة على مستوى الحقل

معرف اللغة هو اختصار رقمي دولي قياسي للغة في بلد ما أو منطقة جغرافية ما. باستخدام Aspose.Words، يمكنك تحديد الإعدادات المحلية على مستوى الحقل باستخدام خاصية [LocaleId](https://reference.aspose.com/words/ar/net/aspose.words.fields/field/localeid/)، التي تحصل على معرف الإعدادات المحلية للحقل أو تقوم بتعيينه.

يوضح مثال التعليمات البرمجية التالي كيفية استخدام هذا الخيار:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.cs" >}}

### قم بإدراج حقل غير مكتوب/فارغ

إذا كنت تريد إدراج حقول غير مكتوبة/فارغة ({}) تمامًا كما يسمح Microsoft Word، فيمكنك استخدام أسلوب [InsertField](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/insertfield/) مع المعلمة [FieldType.FieldNone](https://reference.aspose.com/words/ar/net/aspose.words.fields/fieldtype/). لإدراج حقل في مستند Word، يمكنك الضغط على مجموعة المفاتيح "Ctrl + F9".

يوضح مثال التعليمات البرمجية التالي كيفية إدراج حقل فارغ في المستند:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertFieldNone-InsertFieldNone.cs" >}}

## إدراج الحقول في مستند باستخدام FieldBuilder
الطريقة البديلة لإدراج الحقول في Aspose.Words هي فئة [FieldBuilder](https://reference.aspose.com/words/ar/net/aspose.words.fields/fieldbuilder/). يوفر واجهة سلسة لتحديد مفاتيح الحقول وقيم الوسيطات كنص أو عقد أو حتى حقول متداخلة.

يوضح مثال التعليمات البرمجية التالي كيفية إدراج حقل في مستند باستخدام **FieldBuilder**:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertFieldUsingFieldBuilder.cs" >}}

## إدراج الحقول باستخدام DOM

يمكنك أيضًا إدراج أنواع مختلفة من الحقول باستخدام [Aspose.Words Document Object Model (DOM)](/words/ar/net/aspose-words-document-object-model/). في هذا القسم، سننظر في بعض الأمثلة.

### إدراج حقل دمج في مستند باستخدام DOM

يمكن تمثيل حقل `MERGEFIELD` في مستند Word بواسطة فئة [FieldMergeField](https://reference.aspose.com/words/ar/net/aspose.words.fields/fieldmergefield/). يمكنك استخدام فئة **FieldMergeField** لتنفيذ العمليات التالية:

- تحديد اسم حقل الدمج
- تحديد تنسيق حقل الدمج
- حدد النص الموجود بين فاصل الحقل ونهاية حقل حقل الدمج
- تحديد النص المراد إدراجه بعد حقل الدمج إذا لم يكن الحقل فارغا
- حدد النص الذي سيتم إدراجه قبل حقل الدمج إذا لم يكن الحقل فارغًا

{{% alert color="primary" %}}

لمزيد من التفاصيل، راجع فئة [FieldMergeField](https://reference.aspose.com/words/ar/net/aspose.words.fields/fieldmergefield/) API.

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالي كيفية إضافة حقل `MERGE` باستخدام DOM إلى فقرة في مستند:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertMergeFieldUsingDOM-InsertMergeFieldUsingDOM.cs" >}}

### إدراج حقل Mail Merge `ADDRESSBLOCK` في مستند باستخدام DOM

يتم استخدام حقل `ADDRESSBLOCK` لإدراج كتلة عنوان mail merge في مستند Word. يمكن تمثيل حقل `ADDRESSBLOCK` في مستند Word بواسطة فئة [FieldAddressBlock](https://reference.aspose.com/words/ar/net/aspose.words.fields/fieldaddressblock/). يمكنك استخدام فئة **FieldAddressBlock** لإجراء العمليات التالية:

- حدد ما إذا كنت تريد تضمين اسم البلد/المنطقة في الحقل
- حدد ما إذا كان سيتم تنسيق العنوان وفقًا لبلد/منطقة المستلم كما هو محدد بواسطة POST*CODE (الاتحاد البريدي العالمي 2006)
- حدد اسم البلد/المنطقة المستبعدة
- تحديد تنسيق الاسم والعنوان
- حدد معرف اللغة المستخدم لتنسيق العنوان

{{% alert color="primary" %}}

لمزيد من التفاصيل، راجع فئة [FieldAddressBlock](https://reference.aspose.com/words/ar/net/aspose.words.fields/fieldaddressblock/) API.

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالي كيفية إضافة حقل Mail Merge `ADDRESSBLOCK` باستخدام DOM إلى فقرة في مستند:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertMailMergeAddressBlockFieldUsingDOM-InsertMailMergeAddressBlockFieldUsingDOM.cs" >}}

### إدراج حقل `ADVANCE` في مستند دون استخدام DocumentBuilder

يتم استخدام حقل `ADVANCE` لإزاحة النص اللاحق داخل سطر إلى اليسار أو اليمين أو لأعلى أو لأسفل. يمكن تمثيل حقل `ADVANCE` في مستند Word بواسطة فئة [FieldAdvance](https://reference.aspose.com/words/ar/net/aspose.words.fields/fieldadvance/). يمكنك استخدام فئة **FieldAdvance** لتنفيذ العمليات التالية:

- تحديد عدد النقاط التي يجب من خلالها نقل النص الذي يلي الحقل عموديًا من الحافة العلوية للصفحة
- تحديد عدد النقاط التي يجب من خلالها نقل النص الذي يلي الحقل أفقيًا من الحافة اليسرى للعمود أو الإطار أو مربع النص
- تحديد عدد النقاط التي يجب من خلالها نقل النص الذي يلي الحقل إلى اليسار أو اليمين أو لأعلى أو لأسفل

{{% alert color="primary" %}}

لمزيد من التفاصيل، راجع فئة [FieldAdvance](https://reference.aspose.com/words/ar/net/aspose.words.fields/fieldadvance/) API.

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالي كيفية إضافة حقل `ADVANCE` باستخدام DOM إلى فقرة في مستند:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertAdvanceFieldWithOutDocumentBuilder-InsertAdvanceFieldWithOutDocumentBuilder.cs" >}}

### إدراج حقل `ASK` في مستند دون استخدام DocumentBuilder

يتم استخدام حقل `ASK` لمطالبة المستخدم بتعيين نص لإشارة مرجعية في مستند Word. يمكن تمثيل حقل `ASK` في مستند Word بواسطة فئة [FieldAsk](https://reference.aspose.com/words/ar/net/aspose.words.fields/fieldask/). يمكنك استخدام فئة **FieldAsk** لتنفيذ العمليات التالية:

- حدد اسم الإشارة المرجعية
- تحديد استجابة المستخدم الافتراضية (القيمة الأولية الموجودة في نافذة المطالبة)
- حدد ما إذا كان يجب تلقي استجابة المستخدم مرة واحدة لكل عملية mail merge
- تحديد نص المطالبة (عنوان نافذة المطالبة)

{{% alert color="primary" %}}

لمزيد من التفاصيل، راجع فئة [FieldAsk](https://reference.aspose.com/words/ar/net/aspose.words.fields/fieldask/) API.

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالي كيفية إضافة حقل `ASK` باستخدام DOM إلى فقرة في مستند:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertASKFieldWithOutDocumentBuilder-InsertASKFieldWithOutDocumentBuilder.cs" >}}

### إدراج حقل `AUTHOR` في مستند دون استخدام DocumentBuilder

يتم استخدام حقل `AUTHOR` لتحديد اسم مؤلف المستند من خصائص `Document`. يمكن تمثيل حقل `AUTHOR` في مستند Word بواسطة فئة [FieldAuthor](https://reference.aspose.com/words/ar/net/aspose.words.fields/fieldauthor/). يمكنك استخدام فئة **FieldAuthor** لإجراء العمليات التالية:

- تحديد اسم مؤلف الوثيقة

{{% alert color="primary" %}}

لمزيد من التفاصيل، راجع فئة [FieldAuthor](https://reference.aspose.com/words/ar/net/aspose.words.fields/fieldauthor/) API.

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالي كيفية إضافة حقل `AUTHOR` باستخدام DOM إلى فقرة في مستند:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertAuthorField-InsertAuthorField.cs" >}}

### إدراج حقل `INCLUDETEXT` في مستند دون استخدام DocumentBuilder

يقوم حقل `INCLUDETEXT` بإدراج النص والرسومات الموجودة في المستند المسمى في رمز الحقل. يمكنك إدراج المستند بأكمله أو جزء من المستند المشار إليه بواسطة إشارة مرجعية. يتم تمثيل هذا الحقل في مستند Word بواسطة INCLUDETEXT. يمكنك استخدام فئة [FieldIncludeText](https://reference.aspose.com/words/ar/net/aspose.words.fields/fieldincludetext/) لتنفيذ العمليات التالية:

- حدد اسم الإشارة المرجعية للوثيقة المضمنة
- تحديد موقع الوثيقة

{{% alert color="primary" %}}

لمزيد من التفاصيل، راجع فئة [FieldIncludeText](https://reference.aspose.com/words/ar/net/aspose.words.fields/fieldincludetext/) API.

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالي كيفية إضافة حقل `INCLUDETEXT` باستخدام DOM إلى فقرة في مستند:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertIncludeFieldWithoutDocumentBuilder-InsertFieldIncludeTextWithoutDocumentBuilder.cs" >}}

### إدراج حقل `TOA` في مستند دون استخدام DocumentBuilder

يقوم الحقل `TOA` (*جدول المراجع المصدقة*) بإنشاء جدول المراجع المصدقة وإدراجه. يجمع حقل `TOA` الإدخالات المميزة بحقول `TA` (*إدخال جدول المراجع*). يقوم Microsoft Office Word بإدراج الحقل `TOA` عند النقر فوق *إدراج جدول المراجع* في مجموعة **جدول السلطات** ضمن علامة التبويب **References**. عندما تقوم بعرض حقل `TOA` في مستندك، تبدو الصيغة كما يلي:

{ `TOA` [Switches ] }

{{% alert color="primary" %}}

لمزيد من التفاصيل، راجع فئة [FieldToa](https://reference.aspose.com/words/ar/net/aspose.words.fields/fieldtoa/) API.

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالي كيفية إضافة حقل `TOA` باستخدام DOM إلى فقرة في مستند:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertTOAFieldWithoutDocumentBuilder-InsertTOAFieldWithoutDocumentBuilder.cs" >}}
