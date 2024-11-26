---
title: العمل مع خصائص المستند في C++
second_title: Aspose.Words ل C++
articleTitle: العمل مع خصائص المستند
linktitle: العمل مع خصائص المستند
description: "Aspose.Words ل C++ يسمح بتخزين بعض المعلومات المفيدة حول المستند، مثل API ورقم الإصدار أو التاريخ المصرح به، في خصائص المستند المضمنة أو المخصصة."
type: docs
weight: 10
url: /ar/cpp/work-with-document-properties/
timestamp: 2024-01-31-14-23-37
---

تسمح خصائص المستند بتخزين بعض المعلومات المفيدة حول المستند. يمكن تقسيم هذه الخصائص إلى مجموعتين:

* نظام أو مدمج يحتوي على قيم مثل عنوان المستند واسم المؤلف وإحصائيات المستند وغيرها.
* المعرفة من قبل المستخدم أو العرف، كما قدمت أزواج اسم القيمة حيث يمكن للمستخدم تحديد كل من الاسم والقيمة.

من المفيد معرفة أن المعلومات حول API ورقم الإصدار مكتوبة مباشرة إلى مستندات الإخراج. على سبيل المثال، عند تحويل مستند إلى PDF، يملأ Aspose.Words حقل "التطبيق" بـ "Aspose.Words "، وحقل " PDF المنتج "بـ"Aspose.Words ل C++ YY.م. ن "، حيث *YY.M.N* هي نسخة Aspose.Words المستخدمة للتحويل. لمزيد من التفاصيل، انظر [اسم المولد أو المنتج المضمن في مستندات الإخراج](/words/cpp/generator-or-producer-name-included-in-output-documents/).

{{% alert color="primary" %}}

لاحظ أنك **cannot direct** Aspose.Words لتغيير أو إزالة هذه المعلومات من مستندات الإخراج.

{{% /alert %}}

## الوصول إلى خصائص المستند

للوصول إلى خصائص المستند في Aspose.Words استخدم:

* [BuiltInDocumentProperties](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/) للحصول على خصائص مدمجة.

* [CustomDocumentProperties](https://reference.aspose.com/words/cpp/aspose.words.properties/customdocumentproperties/) للحصول على خصائص مخصصة.

**BuiltInDocumentProperties**

**BuiltInDocumentProperties**

تتيح لك فئة [DocumentProperty](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/) الحصول على اسم وقيمة ونوع خاصية المستند. [Value](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/get_value/) بإرجاع كائن، ولكن هناك مجموعة من الأساليب مما يسمح لك للحصول على قيمة الخاصية تحويلها إلى نوع معين. بعد التعرف على نوع الخاصية، يمكنك استخدام إحدى طرق **DocumentProperty.ToXXX**، مثل **DocumentProperty.**[ToString](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/tostring/) و **DocumentProperty.**[ToInt](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/toint/)، للحصول على قيمة النوع المناسب.

يوضح مثال التعليمات البرمجية التالية كيفية تعداد كافة الخصائص المضمنة والمخصصة في مستند:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-EnumerateProperties.cpp" >}}

{{% alert color="primary" %}}

يمكنك تنزيل ملف القالب لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

في Microsoft Word، يمكنك الوصول إلى خصائص المستند باستخدام قائمة "ملف Properties خصائص".

<img src="work-with-document-properties-1.png" alt="work-with-document-properties-aspose-words-cpp_1.png" style="width:400px"/>

## إضافة أو إزالة خصائص المستند

لا يمكنك إضافة أو إزالة خصائص المستند المضمنة باستخدام Aspose.Words. يمكنك فقط تغيير أو تحديث قيمها.

لإضافة خصائص وثيقة مخصصة مع Aspose.Words، استخدم طريقة [Add](https://reference.aspose.com/words/cpp/aspose.words.properties/customdocumentproperties/add/)، وتمرير اسم الخاصية الجديدة وقيمة النوع المناسب. تقوم الطريقة بإرجاع الكائن **DocumentProperty** الذي تم إنشاؤه حديثا.

لإزالة الخصائص المخصصة، استخدم طريقة [Remove](https://reference.aspose.com/words/cpp/aspose.words.properties/documentpropertycollection/remove/)، مرورا باسم الخاصية المراد إزالتها، أو طريقة [RemoveAt](https://reference.aspose.com/words/cpp/aspose.words.properties/documentpropertycollection/removeat/) لإزالة الخاصية حسب الفهرس. يمكنك أيضا إزالة جميع الخصائص باستخدام طريقة [Clear](https://reference.aspose.com/words/cpp/aspose.words.properties/documentpropertycollection/clear/).

يتحقق مثال الكود التالي مما إذا كانت خاصية مخصصة باسم معين موجودة في مستند ويضيف بعض خصائص المستند المخصصة الأخرى:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-CustomAdd.cpp" >}}

{{% alert color="primary" %}}

يمكنك تنزيل ملف القالب لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالية كيفية إزالة خاصية مستند مخصص:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-CustomRemove.cpp" >}}

## تحديث خصائص المستند المضمنة

لا يقوم Aspose.Words بتحديث خصائص المستند تلقائيا، كما يفعل Microsoft Word مع بعض الخصائص، ولكنه يوفر طريقة لتحديث بعض خصائص المستند المضمنة الإحصائية. استدعاء طريقة [UpdateWordCount](https://reference.aspose.com/words/cpp/aspose.words/document/updatewordcount/) لإعادة حساب وتحديث الخصائص التالية:

* [Characters](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_characters/)
* [CharactersWithSpaces](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_characterswithspaces/)
* [Words](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_words/)
* [Paragraphs](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_paragraphs/)
* [Lines](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_lines/)

## إنشاء خاصية مخصصة جديدة مرتبطة بالمحتوى

Aspose.Words يوفر طريقة [AddLinkToContent](https://reference.aspose.com/words/cpp/aspose.words.properties/customdocumentproperties/addlinktocontent/) لإنشاء خاصية مستند مخصص جديدة مرتبطة بالمحتوى. تقوم هذه الخاصية بإرجاع كائن الخاصية الذي تم إنشاؤه حديثا أو لاغية إذا كان [LinkSource](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/get_linksource/) غير صالح.

يوضح مثال التعليمات البرمجية التالية كيفية تكوين ارتباط إلى خاصية مخصصة:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-ConfiguringLinkToContent.cpp" >}}

## احصل على متغيرات المستند

يمكنك الحصول على مجموعة من متغيرات المستند باستخدام خاصية [Variables](https://reference.aspose.com/words/cpp/aspose.words/document/get_variables/). أسماء المتغيرات والقيم هي سلاسل.

يوضح مثال الكود التالي كيفية تعداد متغيرات المستند:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-GetVariables-GetVariables.cpp" >}}

{{% alert color="primary" %}}

يمكنك تنزيل ملف القالب لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## إزالة المعلومات الشخصية من المستند

إذا كنت ترغب في مشاركة مستند ورد مع أشخاص آخرين، فقد ترغب في إزالة المعلومات الشخصية مثل اسم المؤلف والشركة. للقيام بذلك، استخدم خاصية [RemovePersonalInformation](https://reference.aspose.com/words/cpp/aspose.words/document/get_removepersonalinformation/) لتعيين العلامة التي تشير إلى أن Microsoft Word ستزيل جميع معلومات المستخدم من التعليقات والمراجعات وخصائص المستند عند حفظ المستند.

يوضح مثال الكود التالي كيفية إزالة المعلومات الشخصية:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-RemovePersonalInformation.cpp" >}}

{{% alert color="primary" %}}

لا يؤدي تعيين هذا الخيار فعليا إلى إزالة المعلومات الشخصية أثناء معالجة مستند في Aspose.Words ويؤثر فقط على سلوك Microsoft Word.

{{% /alert %}}
