---
title: إدراج الحقول في Python
second_title: Aspose.Words لـ Python via .NET
articleTitle: إدراج الحقول
linktitle: إدراج الحقول
description: "قم بإدراج الحقول في مستند في Python بطرق مختلفة: باستخدام `DocumentBuilder` أو DOM (Document Object Model)."
type: docs
weight: 20
url: /ar/python-net/inserting-fields/
---

هناك عدة طرق مختلفة لإدراج الحقول في المستند:

- باستخدام [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/)
- باستخدام [FieldBuilder](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldbuilder/)
- باستخدام [Aspose.Words Document Object Model (DOM)](/words/ar/python-net/aspose-words-document-object-model/)

في هذه المقالة، سننظر في كل طريقة بمزيد من التفصيل ونحلل كيفية إدراج حقول معينة باستخدام هذه الخيارات.

## إدراج الحقول في مستند باستخدام DocumentBuilder

في Aspose.Words يتم استخدام طريقة [insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) لإدراج حقول جديدة في المستند. تقبل المعلمة الأولى رمز الحقل الكامل للحقل المراد إدراجه. المعلمة الثانية اختيارية وتسمح بتعيين نتيجة الحقل يدويًا. إذا لم يتم توفير ذلك، فسيتم تحديث الحقل تلقائيًا. يمكنك تمرير قيمة خالية أو فارغة إلى هذه المعلمة لإدراج حقل بقيمة حقل فارغة. إذا لم تكن متأكدًا من بناء جملة رمز الحقل المحدد، فقم بإنشاء الحقل في Microsoft Word أولاً ثم قم بالتبديل لرؤية رمز الحقل الخاص به.

{{% alert color="primary" %}}

إذا كان رمز الحقل الخاص بك يحتوي على معلمة تحتوي على مسافة، فيجب أن تكون محاطة بعلامات الكلام. وإلا فإن الحقل في كل من Microsoft Word وAspose.Words قد لا يعمل كما هو متوقع حيث يتم التعامل مع المعلمة من قبل كليهما على أنها مقطوعة.

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالي كيفية إدراج حقل دمج في مستند باستخدام **DocumentBuilder**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertField.py" >}}

يوضح مثال التعليمات البرمجية التالي كيفية إدراج حقل دمج باللغة الألمانية في مستند باستخدام **DocumentBuilder**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-DocumentBuilderInsertField.py" >}}

يتم استخدام نفس الأسلوب لإدراج الحقول المتداخلة داخل حقول أخرى.

يوضح مثال التعليمات البرمجية التالي كيفية إدراج الحقول المتداخلة داخل حقل آخر باستخدام **DocumentBuilder**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertNestedFields.py" >}}

### حدد اللغة على مستوى الحقل

معرف اللغة هو اختصار رقمي دولي قياسي للغة في بلد ما أو منطقة جغرافية ما. باستخدام Aspose.Words، يمكنك تحديد اللغة على مستوى الحقل. تحصل خاصية [locale_id](https://reference.aspose.com/words/python-net/aspose.words.fields/field/locale_id/) على المعرف المحلي للحقل أو تقوم بتعيينه.

يوضح مثال التعليمات البرمجية التالي كيفية الاستفادة من هذا الخيار:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-SpecifylocaleAtFieldlevel.py" >}}

### قم بإدراج حقل غير مكتوب/فارغ

إذا كنت تريد إدراج حقول غير مكتوبة/فارغة ({}) تمامًا كما يسمح Microsoft Word، فيمكنك استخدام أسلوب [insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) مع المعلمة [FieldType.FIELD_NONE](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtype/#field_none). لإدراج حقل في مستند Word، يمكنك الضغط على مجموعة المفاتيح "Ctrl + F9".

يوضح مثال التعليمات البرمجية التالي كيفية إدراج حقل فارغ في المستند:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertFieldNone.py" >}}

## إدراج الحقول في مستند باستخدام FieldBuilder

الطريقة البديلة لإدراج الحقول في Aspose.Words هي فئة [FieldBuilder](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldbuilder/). يوفر واجهة سلسة لتحديد مفاتيح الحقول وقيم الوسيطات كنص أو عقد أو حتى حقول متداخلة.

يوضح مثال التعليمات البرمجية التالي كيفية إدراج حقل في مستند باستخدام **FieldBuilder**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertFieldUsingFieldBuilder.py" >}}

## إدراج الحقول باستخدام DOM

يمكنك أيضًا إدراج أنواع مختلفة من الحقول باستخدام [Aspose.Words Document Object Model (DOM)](/words/ar/python-net/aspose-words-document-object-model/). في هذا القسم، سننظر في بعض الأمثلة.

### إدراج حقل دمج في مستند باستخدام DOM

يمكن تمثيل حقل `MERGEFIELD` في مستند Word بواسطة فئة [FieldMergeField](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldmergefield/). يمكنك استخدام فئة [FieldMergeField](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldmergefield/) لإجراء العمليات التالية:

- تحديد اسم حقل الدمج
- تحديد تنسيق حقل الدمج
- حدد النص الموجود بين فاصل الحقل ونهاية حقل حقل الدمج
- تحديد النص المراد إدراجه بعد حقل الدمج إذا لم يكن الحقل فارغا
- حدد النص الذي سيتم إدراجه قبل حقل الدمج إذا لم يكن الحقل فارغًا

يوضح مثال التعليمات البرمجية التالي كيفية إضافة حقل `Merge` باستخدام DOM إلى فقرة في مستند:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertMergeFieldUsingDOM.py" >}}

### إدراج حقل Mail Merge `ADDRESSBLOCK` في مستند باستخدام DOM

يتم استخدام حقل `ADDRESSBLOCK` لإدراج كتلة عنوان mail merge في مستند Word. يمكن تمثيل حقل `ADDRESSBLOCK` في مستند Word بواسطة فئة [FieldAddressBlock](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldaddressblock/). يمكنك استخدام فئة [FieldAddressBlock](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldaddressblock/) لتنفيذ العمليات التالية:

- حدد ما إذا كنت تريد تضمين اسم البلد/المنطقة في الحقل
- حدد ما إذا كان سيتم تنسيق العنوان وفقًا لبلد/منطقة المستلم كما هو محدد بواسطة POST*CODE (الاتحاد البريدي العالمي 2006)
- حدد اسم البلد/المنطقة المستبعدة
- تحديد تنسيق الاسم والعنوان
- حدد معرف اللغة المستخدم لتنسيق العنوان

يوضح مثال التعليمات البرمجية التالي كيفية إضافة حقل Mail Merge `ADDRESSBLOCK` باستخدام DOM إلى فقرة في مستند:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertMailMergeAddressBlockFieldUsingDOM.py" >}}

### إدراج حقل `ADVANCE` في مستند دون استخدام DocumentBuilder

يتم استخدام حقل `ADVANCE` لإزاحة النص اللاحق داخل سطر إلى اليسار أو اليمين أو لأعلى أو لأسفل. يمكن تمثيل حقل `ADVANCE` في مستند Word بواسطة فئة [FieldAdvance](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldadvance/). يمكنك استخدام فئة [FieldAdvance](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldadvance/) لتنفيذ العمليات التالية:

- تحديد عدد النقاط التي يجب من خلالها نقل النص الذي يلي الحقل عموديًا من الحافة العلوية للصفحة
- تحديد عدد النقاط التي يجب من خلالها نقل النص الذي يلي الحقل أفقيًا من الحافة اليسرى للعمود أو الإطار أو مربع النص
- تحديد عدد النقاط التي يجب من خلالها نقل النص الذي يلي الحقل إلى اليسار أو اليمين أو لأعلى أو لأسفل

يوضح مثال التعليمات البرمجية التالي كيفية إضافة حقل `ADVANCE` باستخدام DOM إلى فقرة في مستند.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertAdvanceFieldWithOutDocumentBuilder.py" >}}

### إدراج حقل `ASK` في مستند دون استخدام DocumentBuilder

يتم استخدام حقل `ASK` لمطالبة المستخدم بتعيين نص لإشارة مرجعية في مستند Word. يمكن تمثيل حقل `ASK` في مستند Word بواسطة فئة [FieldAsk](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldask/). يمكنك استخدام فئة **FieldAsk** لتنفيذ العمليات التالية:

- حدد اسم الإشارة المرجعية
- تحديد استجابة المستخدم الافتراضية (القيمة الأولية الموجودة في نافذة المطالبة)
- حدد ما إذا كان يجب تلقي استجابة المستخدم مرة واحدة لكل عملية mail merge
- تحديد نص المطالبة (عنوان نافذة المطالبة)

يوضح مثال التعليمات البرمجية التالي كيفية إضافة حقل `ASK` باستخدام DOM إلى فقرة في مستند:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertASKFieldWithOutDocumentBuilder.py" >}}

### إدراج حقل `AUTHOR` في مستند دون استخدام DocumentBuilder

يتم استخدام حقل `AUTHOR` لتحديد اسم مؤلف المستند من خصائص `Document`. يمكن تمثيل حقل `AUTHOR` في مستند Word بواسطة فئة [FieldAuthor](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldauthor/). يمكنك استخدام فئة **FieldAuthor** لإجراء العمليات التالية:

- تحديد اسم مؤلف الوثيقة

يوضح مثال التعليمات البرمجية التالي كيفية إضافة حقل `AUTHOR` باستخدام DOM إلى فقرة في مستند:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertAuthorField.py" >}}

### إدراج حقل `INCLUDETEXT` في مستند دون استخدام DocumentBuilder

يقوم حقل `INCLUDETEXT` بإدراج النص والرسومات الموجودة في المستند المسمى في رمز الحقل. يمكنك إدراج المستند بأكمله أو جزء من المستند المشار إليه بواسطة إشارة مرجعية. يتم تمثيل هذا الحقل في مستند Word بواسطة INCLUDETEXT. يمكنك استخدام فئة [FieldIncludeText](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldincludetext/) لإجراء العمليات التالية:

- حدد اسم الإشارة المرجعية للوثيقة المضمنة
- تحديد موقع الوثيقة

يوضح مثال التعليمات البرمجية التالي كيفية إضافة حقل `INCLUDETEXT` باستخدام DOM إلى فقرة في مستند:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertFieldIncludeTextWithoutDocumentBuilder.py" >}}

### إدراج حقل `TOA` في مستند دون استخدام DocumentBuilder

يقوم الحقل `TOA` (*جدول المراجع المصدقة*) بإنشاء جدول المراجع المصدقة وإدراجه. يجمع حقل `TOA` الإدخالات المميزة بحقول `TA` (*إدخال جدول المراجع*). يقوم Microsoft Office Word بإدراج الحقل `TOA` عند النقر فوق *إدراج جدول المراجع* في مجموعة **جدول السلطات** ضمن علامة التبويب **References**. عندما تقوم بعرض حقل `TOA` في مستندك، تبدو الصيغة كما يلي:

{ `TOA` [Switches ] }

يمكنك استخدام فئة [FieldToa](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtoa/) لإجراء العمليات باستخدام حقل `TOA`.

يوضح مثال التعليمات البرمجية التالي كيفية إضافة حقل `TOA` باستخدام DOM إلى فقرة في مستند:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertTOAFieldWithoutDocumentBuilder.py" >}}
