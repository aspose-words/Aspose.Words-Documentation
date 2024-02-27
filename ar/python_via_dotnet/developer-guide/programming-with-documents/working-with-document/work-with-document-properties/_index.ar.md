---
title: العمل مع خصائص الوثيقة
second_title: Aspose.Words لـ Python via .NET
articleTitle: العمل مع خصائص الوثيقة
linktitle: العمل مع خصائص الوثيقة
description: "يسمح Aspose.Words for Python بتخزين بعض المعلومات المفيدة حول مستندك، مثل API ورقم الإصدار أو Date المعتمد، في خصائص المستند المضمنة أو المخصصة."
type: docs
weight: 10
url: /ar/python-net/work-with-document-properties/
---

تسمح خصائص المستند بتخزين بعض المعلومات المفيدة حول مستندك. ويمكن تقسيم هذه الخصائص إلى مجموعتين:

* النظام أو المدمج الذي يحتوي على قيم مثل عنوان المستند واسم المؤلف وإحصائيات المستند وغيرها.
* معرف من قبل المستخدم أو مخصص، يتم توفيره كأزواج اسم وقيمة حيث يمكن للمستخدم تحديد كل من الاسم والقيمة.

من المفيد معرفة أن المعلومات المتعلقة بـ API ورقم الإصدار تتم كتابتها مباشرة لإخراج المستندات. على سبيل المثال، عند تحويل مستند إلى PDF، يقوم Aspose.Words بملء حقل "Application" بـ "Aspose.Words"، وحقل "PDF Producer" بـ "Aspose.Words for .NET YY.MN"، حيث يكون *YY.M.N* هو إصدار Aspose.Words المستخدم للتحويل. لمزيد من التفاصيل، راجع [اسم المولد أو المنتج مدرج في مستندات الإخراج](/words/ar/python-net/generator-or-producer-name-included-in-output-documents/).

{{% alert color="primary" %}}

لاحظ أنه يتعين عليك **لا يمكن توجيه** Aspose.Words تغيير هذه المعلومات أو إزالتها من مستندات الإخراج.

{{% /alert %}}

## الوصول إلى خصائص المستند

للوصول إلى خصائص المستند في Aspose.Words، استخدم:

* [built_in_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/built_in_document_properties/) للحصول على الخصائص المضمنة.

* [custom_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/custom_document_properties/) للحصول على الخصائص المخصصة.

[built_in_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/built_in_document_properties/) و[custom_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/custom_document_properties/) عبارة عن مجموعات من كائنات [DocumentProperty](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/). يمكن الحصول على هذه الكائنات من خلال خاصية المفهرس بالاسم أو بالفهرس.

يوفر [built_in_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/built_in_document_properties/) أيضًا إمكانية الوصول إلى خصائص المستند من خلال مجموعة من الخصائص المدخلة التي تُرجع قيمًا من النوع المناسب. يمكّنك [custom_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/custom_document_properties/) من إضافة أو إزالة خصائص المستند من المستند.

تتيح لك فئة [DocumentProperty](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/) الحصول على اسم وقيمة ونوع خاصية المستند. تقوم [value](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/value/) بإرجاع كائن، ولكن هناك مجموعة من الأساليب التي تسمح لك بتحويل قيمة الخاصية إلى نوع معين. بعد أن تتعرف على نوع الخاصية، يمكنك استخدام إحدى طرق **DocumentProperty.to_XXX**، مثل **DocumentProperty.\_\_str\_\_** و[DocumentProperty.to_int](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/to_int/)، للحصول على قيمة النوع المناسب.

يوضح مثال التعليمات البرمجية التالي كيفية تعداد كافة الخصائص المضمنة والمخصصة في مستند:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-EnumerateProperties.py" >}}

{{% alert color="primary" %}}

يمكنك تنزيل ملف القالب الخاص بهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

في Microsoft Word، يمكنك الوصول إلى خصائص المستند باستخدام القائمة "ملف → خصائص".

<img src="/words/python-net/work-with-document-properties/work-with-document-properties-1.png" alt="العمل مع خصائص المستند 1.png" style="width:400px"/>

## إضافة أو إزالة خصائص المستند

لا يمكنك إضافة أو إزالة خصائص المستند المضمنة باستخدام Aspose.Words. يمكنك فقط تغيير أو تحديث قيمها.

لإضافة خصائص مستند مخصصة باستخدام Aspose.Words، استخدم طريقة [add](https://reference.aspose.com/words/python-net/aspose.words.properties/customdocumentproperties/add/)، وقم بتمرير اسم الخاصية الجديد وقيمة النوع المناسب. تقوم الطريقة بإرجاع كائن [DocumentProperty](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/) المنشأ حديثًا.

لإزالة الخصائص المخصصة، استخدم طريقة [remove](https://reference.aspose.com/words/python-net/aspose.words.properties/documentpropertycollection/remove/)، وقم بتمرير اسم الخاصية المراد إزالتها، أو طريقة [remove_at](https://reference.aspose.com/words/python-net/aspose.words.properties/documentpropertycollection/remove_at/) لإزالة الخاصية عن طريق الفهرس. يمكنك أيضًا إزالة كافة الخصائص باستخدام طريقة [clear](https://reference.aspose.com/words/python-net/aspose.words.properties/documentpropertycollection/clear/).

يتحقق مثال التعليمات البرمجية التالي من وجود خاصية مخصصة تحمل اسمًا محددًا في المستند ويضيف المزيد من خصائص المستند المخصصة:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-AddCustomDocumentProperties.py" >}}

{{% alert color="primary" %}}

يمكنك تنزيل ملف القالب الخاص بهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالي كيفية إزالة خاصية مستند مخصص:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-CustomRemove.py" >}}

## تحديث خصائص المستند المضمنة

لا يقوم Aspose.Words بتحديث خصائص المستند تلقائيًا، كما يفعل Microsoft Word مع بعض الخصائص، ولكنه يوفر طريقة لتحديث بعض خصائص المستند الإحصائية المضمنة. قم باستدعاء أسلوب [update_word_count](https://reference.aspose.com/words/python-net/aspose.words/document/update_word_count/) لإعادة حساب الخصائص التالية وتحديثها:

* [characters](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/characters/)
* [characters_with_spaces](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/characters_with_spaces/)
* [words](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/words/)
* [paragraphs](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/paragraphs/)
* [lines](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/lines/)

## قم بإنشاء خاصية مخصصة جديدة مرتبطة بالمحتوى

يوفر Aspose.Words طريقة [add_link_to_content](https://reference.aspose.com/words/python-net/aspose.words.properties/customdocumentproperties/add_link_to_content/) لإنشاء خاصية مستند مخصصة جديدة مرتبطة بالمحتوى. تقوم هذه الخاصية بإرجاع كائن الخاصية الذي تم إنشاؤه حديثًا أو إرجاعه فارغًا إذا كان **link_source** غير صالح.

يوضح مثال التعليمات البرمجية التالي كيفية تكوين ارتباط إلى خاصية مخصصة:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-ConfiguringLinkToContent.py" >}}

## الحصول على متغيرات الوثيقة

يمكنك الحصول على مجموعة من متغيرات المستند باستخدام خاصية [variables](https://reference.aspose.com/words/python-net/aspose.words/document/variables/). أسماء وقيم المتغيرات هي سلاسل.

يوضح مثال التعليمات البرمجية التالي كيفية إضافة متغيرات المستند والوصول إليها:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-GetVariables.py" >}}

{{% alert color="primary" %}}

يمكنك تنزيل ملف القالب الخاص بهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

## إزالة المعلومات الشخصية من المستند

إذا كنت ترغب في مشاركة مستند Word مع أشخاص آخرين، فقد ترغب في إزالة المعلومات الشخصية مثل اسم المؤلف والشركة. للقيام بذلك، استخدم خاصية [remove_personal_information](https://reference.aspose.com/words/python-net/aspose.words/document/remove_personal_information/) لتعيين علامة تشير إلى أن Microsoft Word سيقوم بإزالة جميع معلومات المستخدم من التعليقات والمراجعات وخصائص المستند عند حفظ المستند.

يوضح مثال التعليمات البرمجية التالي كيفية إزالة المعلومات الشخصية:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-RemovePersonalInformation.py" >}}

{{% alert color="primary" %}}

لا يؤدي تعيين هذا الخيار فعليًا إلى إزالة المعلومات الشخصية أثناء معالجة مستند في Aspose.Words ويؤثر فقط على سلوك Microsoft Word.

{{% /alert %}}