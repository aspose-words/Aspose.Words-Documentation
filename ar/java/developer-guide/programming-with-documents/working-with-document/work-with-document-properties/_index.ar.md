---
title: العمل مع هيئات الوثائق Java
second_title: Aspose.Words for Java
articleTitle: العمل مع هيئات الوثائق
linktitle: العمل مع هيئات الوثائق
description: "Aspose.Words for Java يتيح تخزين بعض المعلومات المفيدة عن وثيقتك، مثل API العدد أو الصلاحية Date, In built-in or custom document properties."
type: docs
weight: 10
url: /ar/java/work-with-document-properties/
---

خصائص الوثائق تسمح بتخزين بعض المعلومات المفيدة عن وثيقتك ويمكن تقسيم هذه الممتلكات إلى مجموعتين:

* نظام أو مبني يتضمن قيما مثل عنوان الوثائق واسم المؤلف وإحصاءات الوثائق وغيرها.
* ♪ (ب) تعريف المستخدم أو العرف، شريطة أن يكون زوجاً لقيمة الاسم حيث يمكن للمستعمل أن يحدد الاسم والقيمة معاً.

من المفيد معرفة هذه المعلومات API ورقم الإصدار مكتوب مباشرة على وثائق النواتج. فعلى سبيل المثال، عند تحويل وثيقة إلى قوات الدفاع الشعبي، Aspose.Words يملأ حقل "التطبيق" مع "Aspose.Words"و حقل "منتج من قوات الدفاع الشعبيهAspose.Words for Java YY.M.N *YY.M.N* هو نسخة Aspose.Words مستعمل للتحول لمزيد من التفاصيل، انظر [اسم المولد أو المنتج المدرج في وثائق النواتج](/words/ar/java/generator-or-producer-name-included-in-output-documents/).

{{% alert color="primary" %}}

ملاحظة: **لا يمكن أن يكون** Aspose.Words تغيير أو إزالة هذه المعلومات من وثائق النواتج.

{{% /alert %}}

## Access Document Properties

الوصول إلى ممتلكات الوثائق Aspose.Words الاستخدام:

* ♪ [BuiltInDocumentProperties](https://reference.aspose.com/words/java/com.aspose.words/document/#getBuiltInDocumentProperties) للحصول على ممتلكات مبنية

* ♪ [CustomDocumentProperties](https://reference.aspose.com/words/java/com.aspose.words/document/#getCustomDocumentProperties) للحصول على الممتلكات العرفية

**BuiltInDocumentProperties** و **CustomDocumentProperties** هي مجموعات [DocumentProperty](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/) أشياء ويمكن الحصول على هذه الأشياء من خلال ممتلكات الفهرس بالاسم أو بالرقم القياسي.

**BuiltInDocumentProperties** وبالإضافة إلى ذلك، تتيح إمكانية الحصول على ممتلكات الوثائق من خلال مجموعة من الممتلكات المُدخلة التي تعيد القيم من النوع المناسب. **CustomDocumentProperties** يمكنك أن تضيف أو تزيل ممتلكات الوثائق من وثيقة

The [DocumentProperty](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/) الصف يسمح لك بالحصول على الاسم، القيمة، ونوع ملكية الوثائق. [Value]https://reference.aspose.com/words/java/com.aspose.words/documentproperty#Value) returns an object, but there is a set of methods allowing you to get the property value converted to a specific type. وبعد ذلك، لم يحدث أي تغيير {0} على سبيل المثال {1}[يتبع]](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#toString) و **DocumentProperty.**[ToInt](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#toInt), للحصول على قيمة النوع المناسب.

ويبيّن المثال الرمزي التالي كيف يُعدّد جميع الممتلكات المبنيّة والعادية في وثيقة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-EnumerateProperties.java" >}}

{{% alert color="primary" %}}

يمكنك تحميل ملف النموذج من هذا المثال [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

In Microsoft Word, ويمكنكم الوصول إلى ممتلكات الوثائق باستخدام قائمة " الملفات ".

<img src="/words/java/work-with-document-properties/work-with-document-properties-1.png" alt="work-with-document-properties-aspose-words-java.png" style="width:400px"/>

## Add or Remove Document Properties

لا يمكنك أن تضيف أو تزيل ممتلكات مستندية مبنية باستخدام Aspose.Words. يمكنك فقط تغيير أو تحديث قيمهم

إضافة خصائص الوثائق الجمركية Aspose.Words, استخدام [Add](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#add-java.lang.String-boolean) طريقة، إصدار اسم الملكية الجديد وقيمة النوع المناسب. The method returns the newly created **DocumentProperty** هدف

لإزالة الممتلكات الجمركية، استخدام [Remove](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#remove-java.lang.String) طريقة، تمرير اسم الملكية لإزالة، أو [RemoveAt](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#removeAt-int) طريقة لإزالة الممتلكات حسب الرقم القياسي. يمكنك أيضا إزالة جميع الممتلكات باستخدام [Clear](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#clear) طريقة

ويتحقق المثال الرمزي التالي مما إذا كانت هناك ممتلكات عرفية تحمل اسم معين في وثيقة ما، ويضيف عدداً قليلاً من خصائص الوثائق العرفية:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-CustomAdd.java" >}}

{{% alert color="primary" %}}

يمكنك تحميل ملف النموذج من هذا المثال [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

ويبيّن المثال الرمزي التالي كيفية إزالة الممتلكات المستندية الجمركية:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-CustomRemove.java" >}}

## Update Built-In Document Properties

Aspose.Words لا يستكمل تلقائياً خصائص الوثائق، كما هو الحال Microsoft Word مع بعض الممتلكات، ولكنها توفر طريقة لتحديث بعض الخصائص الإحصائية المستندية المدمجة. اتصل [UpdateWordCount](https://reference.aspose.com/words/java/com.aspose.words/document/#updateWordCount) طريقة إعادة حساب وتحديث الممتلكات التالية:

* [Characters](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Characters)
* [CharactersWithSpaces](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#CharactersWithSpaces)
* [Words](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Words)
* [Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Paragraphs)
* [Lines](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Lines)

## Create a New Custom Property Linked to Content

Aspose.Words يوفر [AddLinkToContent](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#addLinkToContent-java.lang.String-java.lang.String) طريقة لإنشاء مستندات عرفية جديدة ترتبط بالمحتوى. وتعيد هذه الممتلكات الممتلكات الممتلكات المنشأة حديثاً أو لاغية إذا كانت [LinkSource](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#isLinkToContent) غير صحيح

The following code example shows how to configure a link to a custom property:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-ConfiguringLinkToContent.java" >}}

## الحصول على الوثائق المتغيرة

يمكنك الحصول على مجموعة من متغيرات الوثائق باستخدام [Variables](https://reference.aspose.com/words/java/com.aspose.words/document/#getVariables) ملكية والأسماء والقيم المتغيرة هي الخيوط.

ويبين المثال الرمزي التالي كيفية تعداد متغيرات الوثائق:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-GetDocumentVariables-GetDocumentVariables.java" >}}

{{% alert color="primary" %}}

يمكنك تحميل ملف النموذج من هذا المثال [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

## نقل المعلومات الشخصية من الوثيقة

إذا كنت تريد أن تتقاسم وثيقة مع أشخاص آخرين، قد ترغب في إزالة المعلومات الشخصية مثل اسم المؤلف والشركة. لفعل هذا [RemovePersonalInformation](https://reference.aspose.com/words/java/com.aspose.words/document/#getRemovePersonalInformation) الممتلكات التي وضعت العلم Microsoft Word وسيزيل جميع معلومات المستخدمين من التعليقات والتنقيحات وممتلكات الوثائق عند توفير الوثيقة.

{{% alert color="primary" %}}

تحديد هذا الخيار لا يزيل فعلاً المعلومات الشخصية في الوقت الذي يجهز فيه وثيقة Aspose.Words ويؤثر فقط Microsoft Word سلوك

{{% /alert %}}
