---
title: أدخل الحقول في C++
second_title: Aspose.Words ل C++
articleTitle: أدخل الحقول
linktitle: أدخل الحقول
description: "طرق مختلفة لإدراج الحقول في المستند باستخدام C++."
type: docs
weight: 20
url: /ar/cpp/inserting-fields/
timestamp: 2024-01-27-14-07-04
---

هناك عدة طرق مختلفة لإدراج الحقول في مستند:

- باستخدام [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/)
- باستخدام [FieldBuilder](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldbuilder/)
- باستخدام [Aspose.Words نموذج كائن المستند (DOM)](/words/cpp/aspose-words-document-object-model/)

في هذه المقالة، سنلقي نظرة على كل طريقة بمزيد من التفصيل ونحلل كيفية إدراج حقول معينة باستخدام هذه الخيارات.

## إدراج الحقول في مستند باستخدام DocumentBuilder

في Aspose.Words يتم استخدام طريقة [InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/) لإدراج حقول جديدة في مستند. تقبل المعلمة الأولى رمز الحقل الكامل للحقل المراد إدراجه. المعلمة الثانية اختيارية وتسمح بتعيين نتيجة الحقل للحقل يدويا. إذا لم يتم توفير هذا، فسيتم تحديث الحقل تلقائيا. يمكنك تمرير فارغة أو فارغة إلى هذه المعلمة لإدراج حقل بقيمة حقل فارغ. إذا لم تكن متأكدا من بناء جملة رمز الحقل المحدد، فقم بإنشاء الحقل في Microsoft Word أولا وقم بالتبديل لرؤية رمز الحقل الخاص به.

{{% alert color="primary" %}}

إذا كان رمز الحقل الخاص بك يحتوي على معلمة تحتوي على مسافة، فيجب أن يكون محاطا بعلامات الكلام. وإلا فإن الحقل في كل من Microsoft Word و Aspose.Words قد لا يعمل كما هو متوقع حيث يتم التعامل مع المعلمة من قبل كليهما على أنها مقطوعة

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالية كيفية إدراج حقل دمج في مستند باستخدام **DocumentBuilder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Fields-InsertField.h" >}}

يتم استخدام نفس الأسلوب لإدراج الحقول المتداخلة داخل الحقول الأخرى.

يوضح مثال التعليمات البرمجية التالية كيفية إدراج الحقول المتداخلة داخل حقل آخر باستخدام **DocumentBuilder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertNestedFields-InsertNestedFields.cpp" >}}

### تحديد اللغة على المستوى الميداني

معرف اللغة هو اختصار رقمي دولي قياسي للغة في بلد أو منطقة جغرافية. باستخدام Aspose.Words، يمكنك تحديد اللغة على مستوى الحقل باستخدام خاصية [LocaleId](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_localeid/)، التي تحصل على لغة الحقل ID أو تضبطها.

يوضح مثال التعليمات البرمجية التالية كيفية استخدام هذا الخيار:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.cpp" >}}

### أدخل حقل غير مكتوب / فارغ

إذا كنت تريد إدراج حقول غير مكتوبة / فارغة ({}) تماما مثل Microsoft Word يسمح، يمكنك استخدام طريقة [InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield) مع المعلمة [FieldType.FieldNone](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldtype/). لإدراج حقل في مستند ورد، يمكنك الضغط على" كترل + F9 " تركيبة المفاتيح.

يوضح مثال التعليمات البرمجية التالية كيفية إدراج حقل فارغ في المستند:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertFieldNone-InsertFieldNone.cpp" >}}

## إدراج الحقول في مستند باستخدام FieldBuilder

الطريقة البديلة لإدراج الحقول في Aspose.Words هي فئة [FieldBuilder](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldbuilder/). يوفر واجهة بطلاقة لتحديد مفاتيح الحقول وقيم الوسيطة كنص أو عقد أو حتى حقول متداخلة.

يوضح مثال التعليمات البرمجية التالية كيفية إدراج حقل في مستند باستخدام **FieldBuilder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertFieldUsingFieldBuilder-InsertFieldUsingFieldBuilder.cpp" >}}

## إدراج الحقول باستخدام DOM

يمكنك أيضا إدراج أنواع مختلفة من الحقول باستخدام [Aspose.Words نموذج كائن المستند (DOM)](/words/cpp/aspose-words-document-object-model/). في هذا القسم، سنلقي نظرة على بعض الأمثلة.

### إدراج حقل دمج في مستند باستخدام DOM

يمكن تمثيل الحقل `MERGEFIELD` في مستند ورد بفئة [FieldMergeField](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/). يمكنك استخدام فئة **FieldMergeField** لتنفيذ العمليات التالية:

- حدد اسم حقل الدمج
- حدد تنسيق حقل الدمج
- حدد النص الموجود بين فاصل الحقل ونهاية الحقل لحقل الدمج
- حدد النص المراد إدراجه بعد حقل الدمج إذا لم يكن الحقل فارغا
- حدد النص المراد إدراجه قبل حقل الدمج إذا لم يكن الحقل فارغا

{{% alert color="primary" %}}

لمزيد من التفاصيل، راجع فئة [FieldMergeField](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/) API.

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالية كيفية إضافة الحقل `MERGE` باستخدام DOM إلى فقرة في مستند:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertMergeFieldUsingDOM-InsertMergeFieldUsingDOM.cpp" >}}

{{% alert color="primary" %}}

يمكنك تنزيل نموذج ملف هذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### إدراج Mail Merge حقل كتلة العنوان في مستند باستخدام DOM

يتم استخدام الحقل `ADDRESSBLOCK` لإدراج كتلة عنوان mail merge في مستند ورد. `ADDRESSBLOCK` الحقل في وثيقة كلمة يمكن أن يمثله فئة [FieldAddressBlock](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldaddressblock/). يمكنك استخدام فئة **FieldAddressBlock** لتنفيذ العمليات التالية:

- حدد ما إذا كنت تريد تضمين اسم البلد / المنطقة في الحقل
- حدد ما إذا كنت تريد تنسيق العنوان وفقا لبلد / منطقة المستلم على النحو المحدد في POST * CODE (الاتحاد البريدي العالمي 2006)
- حدد اسم البلد/المنطقة المستبعدة
- حدد تنسيق الاسم والعنوان
- حدد اللغة ID المستخدمة لتنسيق العنوان

{{% alert color="primary" %}}

لمزيد من التفاصيل، راجع فئة [FieldAddressBlock](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldaddressblock/) API.

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالية كيفية إضافة الحقل Mail Merge `ADDRESSBLOCK` باستخدام DOM إلى فقرة في مستند:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertMailMergeAddressBlockFieldUsingDOM-InsertMailMergeAddressBlockFieldUsingDOM.cpp" >}}

{{% alert color="primary" %}}

يمكنك تنزيل نموذج ملف هذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### إدراج حقل متقدم في مستند بدون استخدام DocumentBuilder

يتم استخدام الحقل `ADVANCE` لتعويض النص اللاحق داخل سطر إلى اليسار أو اليمين أو لأعلى أو لأسفل. يمكن تمثيل الحقل `ADVANCE` في مستند ورد بفئة [FieldAdvance](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldadvance/). يمكنك استخدام فئة FieldAdvance لإجراء العمليات التالية:

- حدد عدد النقاط التي يجب من خلالها نقل النص الذي يلي الحقل عموديا من الحافة العلوية للصفحة
- حدد عدد النقاط التي يجب من خلالها نقل النص الذي يلي الحقل أفقيا من الحافة اليسرى للعمود أو الإطار أو مربع النص
- حدد عدد النقاط التي يجب من خلالها تحريك النص الذي يلي الحقل إلى اليسار أو اليمين أو لأعلى أو لأسفل

{{% alert color="primary" %}}

لمزيد من التفاصيل، راجع فئة [FieldAdvance](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldadvance/) API.

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالية كيفية إضافة الحقل `ADVANCE` باستخدام DOM إلى فقرة في مستند:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertAdvanceFieldWithoutDocumentBuilder-InsertAdvanceFieldWithoutDocumentBuilder.cpp" >}}

{{% alert color="primary" %}}

يمكنك تنزيل نموذج ملف هذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### إدراج حقل `ASK` في مستند بدون استخدام DocumentBuilder

يتم استخدام الحقل `ASK` لمطالبة المستخدم بالنص لتعيين إشارة مرجعية في مستند ورد. `ASK` الحقل في وثيقة كلمة يمكن أن يمثله فئة [FieldAsk](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldask/). يمكنك استخدام فئة **FieldAsk** لتنفيذ العمليات التالية:

- حدد اسم الإشارة المرجعية
- حدد استجابة المستخدم الافتراضية (القيمة الأولية الواردة في نافذة المطالبة)
- حدد ما إذا كان يجب تلقي استجابة المستخدم مرة واحدة لكل عملية mail merge
- حدد نص المطالبة (عنوان نافذة المطالبة)

{{% alert color="primary" %}}

لمزيد من التفاصيل، راجع فئة [FieldAsk](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldask) API.

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالية كيفية إضافة الحقل `ASK` باستخدام DOM إلى فقرة في مستند:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertASKFieldWithoutDocumentBuilder-InsertASKFieldWithoutDocumentBuilder.cpp" >}}

{{% alert color="primary" %}}

يمكنك تنزيل نموذج ملف هذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### إدراج حقل `AUTHOR` في مستند بدون استخدام DocumentBuilder

يتم استخدام الحقل `AUTHOR` لتحديد اسم مؤلف المستند من خصائص `Document`. يمكن تمثيل الحقل `AUTHOR` في مستند ورد بفئة [FieldAuthor](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldauthor/). يمكنك استخدام فئة **FieldAuthor** لتنفيذ العمليات التالية:

- حدد اسم مؤلف المستند

{{% alert color="primary" %}}

لمزيد من التفاصيل، راجع فئة [FieldAuthor](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldauthor/) API.

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالية كيفية إضافة الحقل `AUTHOR` باستخدام DOM إلى فقرة في مستند:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertAuthorField-InsertAuthorField.cpp" >}}

{{% alert color="primary" %}}

يمكنك تنزيل نموذج ملف هذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### إدراج حقل `INCLUDETEXT` في مستند بدون استخدام DocumentBuilder

يدرج الحقل `INCLUDETEXT` النص والرسومات الموجودة في المستند المسمى في رمز الحقل. يمكنك إدراج المستند بأكمله أو جزء من المستند المشار إليه بواسطة إشارة مرجعية. يتم تمثيل هذا الحقل في مستند ورد بواسطة INCLUDETEXT. يمكنك استخدام فئة [FieldIncludeText](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldincludetext/) لتنفيذ العمليات التالية:

- حدد اسم الإشارة المرجعية للمستند المضمن
- حدد موقع المستند

{{% alert color="primary" %}}

لمزيد من التفاصيل، راجع فئة [FieldIncludeText](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldincludetext/) API.

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالية كيفية إضافة الحقل `INCLUDETEXT` باستخدام DOM إلى فقرة في مستند:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Fields-InsertFieldIncludeTextWithoutDocumentBuilder.h" >}}

### إدراج حقل `TOA` في مستند بدون استخدام DocumentBuilder

ال `TOA` (*Table of Authorities*) يبني الحقل ويدرج جدول السلطات. يجمع الحقل `TOA` الإدخالات المميزة بحقول `TA` (*Table of Authorities Entry*). Microsoft كلمة مكتب إدراج الحقل `TOA` عند النقر فوق *Insert Table of Authorities* في المجموعة **Table of Authorities** على علامة التبويب **References**. عند عرض الحقل `TOA` في المستند الخاص بك، يبدو بناء الجملة كما يلي:

{ `TOA` [Switches ] }

{{% alert color="primary" %}}

لمزيد من التفاصيل، راجع فئة [FieldToa](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldtoa/) API.

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالية كيفية إضافة الحقل `TOA` باستخدام DOM إلى فقرة في مستند:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertTOAFieldWithoutDocumentBuilder-InsertTOAFieldWithoutDocumentBuilder.cpp" >}}/
