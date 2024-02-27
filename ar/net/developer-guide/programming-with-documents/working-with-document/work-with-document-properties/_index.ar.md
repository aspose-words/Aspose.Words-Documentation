---
title: العمل مع خصائص المستند في C#
second_title: Aspose.Words لـ .NET
articleTitle: العمل مع خصائص الوثيقة
linktitle: العمل مع خصائص الوثيقة
description: "يسمح Aspose.Words for .NET بتخزين بعض المعلومات المفيدة حول مستندك، مثل API ورقم الإصدار أو Date المعتمد، في خصائص المستند المضمنة أو المخصصة باستخدام C#."
type: docs
weight: 10
url: /ar/net/work-with-document-properties/
---

تسمح خصائص المستند بتخزين بعض المعلومات المفيدة حول مستندك. ويمكن تقسيم هذه الخصائص إلى مجموعتين:

* النظام أو المدمج الذي يحتوي على قيم مثل عنوان المستند واسم المؤلف وإحصائيات المستند وغيرها.
* معرف من قبل المستخدم أو مخصص، يتم توفيره كأزواج اسم وقيمة حيث يمكن للمستخدم تحديد كل من الاسم والقيمة.

من المفيد معرفة أن المعلومات المتعلقة بـ API ورقم الإصدار تتم كتابتها مباشرة لإخراج المستندات. على سبيل المثال، عند تحويل مستند إلى PDF، يقوم Aspose.Words بملء حقل "Application" بـ "Aspose.Words"، وحقل "PDF Producer" بـ "Aspose.Words for .NET YY.MN"، حيث يكون *YY.M.N* هو إصدار Aspose.Words المستخدم للتحويل. لمزيد من التفاصيل، راجع [اسم المولد أو المنتج مدرج في مستندات الإخراج](/words/ar/net/generator-or-producer-name-included-in-output-documents/).

{{% alert color="primary" %}}

لاحظ أنه يتعين عليك **لا يمكن توجيه** Aspose.Words تغيير هذه المعلومات أو إزالتها من مستندات الإخراج.

{{% /alert %}}

## الوصول إلى خصائص المستند

للوصول إلى خصائص المستند في Aspose.Words، استخدم:

* [BuiltInDocumentProperties](https://reference.aspose.com/words/net/aspose.words/document/builtindocumentproperties/) للحصول على الخصائص المضمنة.

* [CustomDocumentProperties](https://reference.aspose.com/words/net/aspose.words/document/customdocumentproperties/) للحصول على الخصائص المخصصة.

**BuiltInDocumentProperties** و**CustomDocumentProperties** عبارة عن مجموعات من كائنات [DocumentProperty](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/). يمكن الحصول على هذه الكائنات من خلال خاصية المفهرس بالاسم أو بالفهرس.

يوفر **BuiltInDocumentProperties** أيضًا إمكانية الوصول إلى خصائص المستند من خلال مجموعة من الخصائص المدخلة التي تُرجع قيمًا من النوع المناسب. يمكّنك **CustomDocumentProperties** من إضافة أو إزالة خصائص المستند من المستند.

تتيح لك فئة [DocumentProperty](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/) الحصول على اسم وقيمة ونوع خاصية المستند. تقوم [Value](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/value/) بإرجاع كائن، ولكن هناك مجموعة من الأساليب التي تسمح لك بتحويل قيمة الخاصية إلى نوع معين. بعد أن تتعرف على نوع الخاصية، يمكنك استخدام إحدى طرق **DocumentProperty.ToXXX**، مثل **DocumentProperty.**[ToString](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/tostring/) و**DocumentProperty.**[ToInt](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/toint/)، للحصول على قيمة النوع المناسب.

يوضح مثال التعليمات البرمجية التالي كيفية تعداد كافة الخصائص المضمنة والمخصصة في مستند:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-EnumerateProperties.cs" >}}

{{% alert color="primary" %}}

يمكنك تنزيل ملف القالب الخاص بهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

في Microsoft Word، يمكنك الوصول إلى خصائص المستند باستخدام القائمة "ملف → خصائص".

<img src="/words/net/work-with-document-properties/work-with-document-properties-1.png" alt="العمل مع خصائص المستند 1.png" style="width:400px"/>

## إضافة أو إزالة خصائص المستند

لا يمكنك إضافة أو إزالة خصائص المستند المضمنة باستخدام Aspose.Words. يمكنك فقط تغيير أو تحديث قيمها.

لإضافة خصائص مستند مخصصة باستخدام Aspose.Words، استخدم طريقة [Add](https://reference.aspose.com/words/net/aspose.words.properties/customdocumentproperties/add/#add/)، وقم بتمرير اسم الخاصية الجديد وقيمة النوع المناسب. تقوم الطريقة بإرجاع كائن **DocumentProperty** المنشأ حديثًا.

لإزالة الخصائص المخصصة، استخدم طريقة [Remove](https://reference.aspose.com/words/net/aspose.words.properties/documentpropertycollection/remove/)، وقم بتمرير اسم الخاصية المراد إزالتها، أو طريقة [RemoveAt](https://reference.aspose.com/words/net/aspose.words.properties/documentpropertycollection/remove/at) لإزالة الخاصية عن طريق الفهرس. يمكنك أيضًا إزالة كافة الخصائص باستخدام طريقة [Clear](https://reference.aspose.com/words/net/aspose.words.properties/documentpropertycollection/clear/).

يتحقق مثال التعليمات البرمجية التالي من وجود خاصية مخصصة تحمل اسمًا محددًا في المستند ويضيف المزيد من خصائص المستند المخصصة:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-CustomAdd.cs" >}}

{{% alert color="primary" %}}

يمكنك تنزيل ملف القالب الخاص بهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالي كيفية إزالة خاصية مستند مخصص:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-CustomRemove.cs" >}}

## تحديث خصائص المستند المضمنة

لا يقوم Aspose.Words بتحديث خصائص المستند تلقائيًا، كما يفعل Microsoft Word مع بعض الخصائص، ولكنه يوفر طريقة لتحديث بعض خصائص المستند الإحصائية المضمنة. قم باستدعاء أسلوب [UpdateWordCount](https://reference.aspose.com/words/net/aspose.words/document/updatewordcount/#updatewordcount/) لإعادة حساب الخصائص التالية وتحديثها:

* [Characters](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/characters/)
* [CharactersWithSpaces](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/characterswithspaces/)
* [Words](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/words/)
* [Paragraphs](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/paragraphs/)
* [Lines](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/lines/)

## قم بإنشاء خاصية مخصصة جديدة مرتبطة بالمحتوى

يوفر Aspose.Words طريقة [AddLinkToContent](https://reference.aspose.com/words/net/aspose.words.properties/customdocumentproperties/addlinktocontent/) لإنشاء خاصية مستند مخصصة جديدة مرتبطة بالمحتوى. تقوم هذه الخاصية بإرجاع كائن الخاصية الذي تم إنشاؤه حديثًا أو إرجاعه فارغًا إذا كان [LinkSource](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/linksource/) غير صالح.

يوضح مثال التعليمات البرمجية التالي كيفية تكوين ارتباط إلى خاصية مخصصة:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-ConfiguringLinkToContent.cs" >}}

## الحصول على متغيرات الوثيقة

يمكنك الحصول على مجموعة من متغيرات المستند باستخدام خاصية [Variables](https://reference.aspose.com/words/net/aspose.words/document/variables/). أسماء وقيم المتغيرات هي سلاسل.

يوضح مثال التعليمات البرمجية التالي كيفية تعداد متغيرات المستند:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-GetVariables-GetVariables.cs" >}}

{{% alert color="primary" %}}

يمكنك تنزيل ملف القالب الخاص بهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

## إزالة المعلومات الشخصية من المستند

إذا كنت ترغب في مشاركة مستند Word مع أشخاص آخرين، فقد ترغب في إزالة المعلومات الشخصية مثل اسم المؤلف والشركة. للقيام بذلك، استخدم خاصية [RemovePersonalInformation](https://reference.aspose.com/words/net/aspose.words/document/removepersonalinformation/) لتعيين علامة تشير إلى أن Microsoft Word سيقوم بإزالة جميع معلومات المستخدم من التعليقات والمراجعات وخصائص المستند عند حفظ المستند.

يوضح مثال التعليمات البرمجية التالي كيفية إزالة المعلومات الشخصية:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-RemovePersonalInformation.cs" >}}

{{% alert color="primary" %}}

لا يؤدي تعيين هذا الخيار فعليًا إلى إزالة المعلومات الشخصية أثناء معالجة مستند في Aspose.Words ويؤثر فقط على سلوك Microsoft Word.

{{% /alert %}}
