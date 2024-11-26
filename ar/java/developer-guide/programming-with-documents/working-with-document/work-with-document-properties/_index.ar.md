---
title: العمل مع خصائص المستند في Java
second_title: Aspose.Words ل Java
articleTitle: العمل مع خصائص المستند
linktitle: العمل مع خصائص المستند
description: "Aspose.Words إلى عن على Java يسمح بتخزين بعض المعلومات المفيدة حول المستند الخاص بك، مثل API ورقم الإصدار أو التاريخ المصرح به، في خصائص المستند المضمنة أو المخصصة."
type: docs
weight: 10
url: /ar/java/work-with-document-properties/
timestamp: 2024-01-31-14-23-37
---

تسمح خصائص المستند بتخزين بعض المعلومات المفيدة حول المستند. يمكن تقسيم هذه الخصائص إلى مجموعتين:

* نظام أو مدمج يحتوي على قيم مثل عنوان المستند واسم المؤلف وإحصائيات المستند وغيرها.
* المعرفة من قبل المستخدم أو العرف، كما قدمت أزواج اسم القيمة حيث يمكن للمستخدم تحديد كل من الاسم والقيمة.

من المفيد معرفة أن المعلومات حول API ورقم الإصدار مكتوبة مباشرة إلى مستندات الإخراج. على سبيل المثال، عند تحويل مستند إلى PDF، يملأ Aspose.Words حقل "التطبيق" بـ "Aspose.Words"، وحقل "PDF المنتج" بـ "Aspose.Words لـ Java YY.م. ن "، حيث *YY.M.N* هي نسخة Aspose.Words المستخدمة للتحويل. لمزيد من التفاصيل، انظر [اسم المولد أو المنتج المضمن في مستندات الإخراج](/words/java/generator-or-producer-name-included-in-output-documents/).

{{% alert color="primary" %}}

لاحظ أنك **cannot direct** Aspose.Words لتغيير أو إزالة هذه المعلومات من مستندات الإخراج.

{{% /alert %}}

## الوصول إلى خصائص المستند

للوصول إلى خصائص المستند في Aspose.Words استخدم:

* [BuiltInDocumentProperties](https://reference.aspose.com/words/java/com.aspose.words/document/#getBuiltInDocumentProperties) للحصول على خصائص مدمجة.

* [CustomDocumentProperties](https://reference.aspose.com/words/java/com.aspose.words/document/#getCustomDocumentProperties) للحصول على خصائص مخصصة.

**BuiltInDocumentProperties**

**BuiltInDocumentProperties**

تتيح لك فئة [DocumentProperty](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/) الحصول على اسم وقيمة ونوع خاصية المستند. [القيمة]https://reference.aspose.com/words/java/com.aspose.words/documentproperty#Value) إرجاع كائن، ولكن هناك مجموعة من الأساليب التي تسمح لك للحصول على قيمة الخاصية تحويلها إلى نوع معين. بعد التعرف على نوع الخاصية، يمكنك استخدام إحدى طرق **DocumentProperty.ToXXX**، مثل **DocumentProperty.**[ToString](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#toString) و **DocumentProperty.**[ToInt](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#toInt)، للحصول على قيمة النوع المناسب.

يوضح مثال التعليمات البرمجية التالية كيفية تعداد كافة الخصائص المضمنة والمخصصة في مستند:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-EnumerateProperties.java" >}}

{{% alert color="primary" %}}

يمكنك تنزيل ملف القالب لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

في Microsoft Word، يمكنك الوصول إلى خصائص المستند باستخدام قائمة "ملف Properties خصائص".

<img src="/words/java/work-with-document-properties/work-with-document-properties-1.png" alt="work-with-document-properties-aspose-words-java.png" style="width:400px"/>

## إضافة أو إزالة خصائص المستند

لا يمكنك إضافة أو إزالة خصائص المستند المضمنة باستخدام Aspose.Words. يمكنك فقط تغيير أو تحديث قيمها.

لإضافة خصائص وثيقة مخصصة مع Aspose.Words، استخدم طريقة [Add](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#add-java.lang.String-boolean)، وتمرير اسم الخاصية الجديدة وقيمة النوع المناسب. تقوم الطريقة بإرجاع الكائن **DocumentProperty** الذي تم إنشاؤه حديثا.

لإزالة الخصائص المخصصة، استخدم طريقة [Remove](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#remove-java.lang.String)، مرورا باسم الخاصية المراد إزالتها، أو طريقة [RemoveAt](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#removeAt-int) لإزالة الخاصية حسب الفهرس. يمكنك أيضا إزالة جميع الخصائص باستخدام طريقة [Clear](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#clear).

يتحقق مثال الكود التالي مما إذا كانت خاصية مخصصة باسم معين موجودة في مستند ويضيف بعض خصائص المستند المخصصة الأخرى:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-CustomAdd.java" >}}

{{% alert color="primary" %}}

يمكنك تنزيل ملف القالب لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالية كيفية إزالة خاصية مستند مخصص:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-CustomRemove.java" >}}

## تحديث خصائص المستند المضمنة

لا يقوم Aspose.Words بتحديث خصائص المستند تلقائيا، كما يفعل Microsoft Word مع بعض الخصائص، ولكنه يوفر طريقة لتحديث بعض خصائص المستند المضمنة الإحصائية. استدعاء طريقة [UpdateWordCount](https://reference.aspose.com/words/java/com.aspose.words/document/#updateWordCount) لإعادة حساب وتحديث الخصائص التالية:

* [Characters](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Characters)
* [CharactersWithSpaces](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#CharactersWithSpaces)
* [Words](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Words)
* [Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Paragraphs)
* [Lines](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Lines)

## إنشاء خاصية مخصصة جديدة مرتبطة بالمحتوى

Aspose.Words يوفر طريقة [AddLinkToContent](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#addLinkToContent-java.lang.String-java.lang.String) لإنشاء خاصية مستند مخصص جديدة مرتبطة بالمحتوى. تقوم هذه الخاصية بإرجاع كائن الخاصية الذي تم إنشاؤه حديثا أو لاغية إذا كان [LinkSource](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#isLinkToContent) غير صالح.

يوضح مثال التعليمات البرمجية التالية كيفية تكوين ارتباط إلى خاصية مخصصة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-ConfiguringLinkToContent.java" >}}

## احصل على متغيرات المستند

يمكنك الحصول على مجموعة من متغيرات المستند باستخدام خاصية [Variables](https://reference.aspose.com/words/java/com.aspose.words/document/#getVariables). أسماء المتغيرات والقيم هي سلاسل.

يوضح مثال الكود التالي كيفية تعداد متغيرات المستند:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-GetDocumentVariables-GetDocumentVariables.java" >}}

{{% alert color="primary" %}}

يمكنك تنزيل ملف القالب لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

## إزالة المعلومات الشخصية من المستند

إذا كنت ترغب في مشاركة مستند ورد مع أشخاص آخرين، فقد ترغب في إزالة المعلومات الشخصية مثل اسم المؤلف والشركة. للقيام بذلك، استخدم خاصية [RemovePersonalInformation](https://reference.aspose.com/words/java/com.aspose.words/document/#getRemovePersonalInformation) لتعيين العلامة التي تشير إلى أن Microsoft Word ستزيل جميع معلومات المستخدم من التعليقات والمراجعات وخصائص المستند عند حفظ المستند.

{{% alert color="primary" %}}

لا يؤدي تعيين هذا الخيار فعليا إلى إزالة المعلومات الشخصية أثناء معالجة مستند في Aspose.Words ويؤثر فقط على سلوك Microsoft Word.

{{% /alert %}}
