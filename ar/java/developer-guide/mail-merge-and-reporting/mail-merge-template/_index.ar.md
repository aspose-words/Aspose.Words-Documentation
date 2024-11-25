---
title: Mail Merge قالب في Java
second_title: Aspose.Words ل Java
articleTitle: Mail Merge قالب
linktitle: Mail Merge قالب
type: docs
description: "قم بإنشاء قالب Mail Merge لتعريف المحتوى الثابت في مستندات الإخراج، ثم قم بإنشاء دمج المستندات باستخدام حقول الدمج في Java."
keywords: "create Mail Merge template Java, Mail Merge Java"
weight: 10
url: /ar/java/mail-merge-template/
timestamp: 2024-01-31-14-23-37
---

من الشائع استخدام قالب دمج كمستند أساسي لعملية Mail Merge إما إذا كانت بسيطة Mail Merge أو Mail Merge مع مناطق. Mail merge مع المناطق هو أكثر قوة وشعبية من بسيطة mail merge. تعتبر Mail Merge البسيطة حالة معينة من Mail Merge مع المناطق التي تكون فيها المنطقة هي المستند بأكمله. يتم شرح كل شيء في المقالة التالية "أنواع Mail Merge العملية" بمزيد من التفصيل.

يضمن القالب تنسيق النص في المستند المدمج في الإخراج بشكل صحيح، وتضمن العملية Mail Merge إدخال النص من مصدر البيانات بشكل صحيح في قالب الدمج.

Aspose.Words يوفر القدرة على إنشاء قالب Mail Merge لتحديد المحتوى الثابت ثم إنشاء مستندات دمج باستخدام حقول الدمج. وبالتالي، سيحتوي قالب الدمج على النص الضروري، وهو نفسه في جميع مستندات الإخراج، وحقول الدمج لملء المحتوى المتغير. نتيجة لذلك، ستتم إضافة معلومات من مصدر البيانات المحدد إلى قالب الدمج من خلال هذه الحقول أثناء إنشاء المستند المدمج.

## ما هو قالب Mail Merge

قالب Mail Merge هو مستند مخصص يحتوي على البيانات الثابتة والحقول المدمجة حيث تريد أن يكون النص المتغير. يمكن أن يكون قالب الدمج بأي تنسيق يدعم الحقول، على سبيل المثال, DOC, DOCX, DOT, DOTX, RTF. بالإضافة إلى ذلك، يمكنك أيضا استخدام قالب mustache الموضح في المقالة "Mustache بناء جملة القالب" بمزيد من التفصيل.

يمكنك إنشاء قالب دمج ليكون نموذجا للمستندات الجديدة، ويجب أن يتضمن النص الرئيسي الذي يجب أن يكون هو نفسه لكل إصدار من المستند المدمج. ستمثل إضافة حقول الدمج داخل القالب بيانات التخصيص مثل الأسماء أو العناوين التي يتم جلبها من مصدر بيانات. ستؤدي عملية Mail Merge تلقائيا إلى إدراج بيانات التخصيص من مصدر البيانات إلى مستند قالب الدمج.

بالإضافة إلى ذلك، يمكنك إضافة منطقة Mail Merge في القالب الخاص بك عن طريق إدراج حقلين Mail Merge لتمييز بداية ونهاية منطقة البريد. توضح المقالة التالية" أنواع Mail Merge العملية " ذلك بمزيد من التفصيل.

## إنشاء قالب Mail Merge

يمكنك إنشاء قالب وإضافة حقول دمج محددة إليه، والتي سيتم استبدالها بالقيم من مصدر البيانات إما يدويا، على سبيل المثال، باستخدام Microsoft Word، أو برمجيا باستخدام Aspose.Words. في هذه المقالة، سنلقي نظرة على الطريقة البرمجية لإنشاء قالب.

استخدم فئة [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) لإنشاء قالب الدمج المطلوب باستخدام Aspose.Words. يمكنك تضمين نص وحقل دمج وفاصل سطر في مثل هذا القالب باستخدام [InsertTextInput](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTextInput(java.lang.String,int,java.lang.String,java.lang.String,int)), [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField(int,boolean)), و [InsertParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertParagraph()) طرق.

يوضح مثال الكود التالي كيفية إنشاء قالب Mail Merge:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeTemplate-CreateMailMergeTemplate.java" >}}

تظهر الصورة أدناه القالب الذي تم إنشاؤه:

<img src="/words/java/mail-merge-template/mail-merge-template-1.png" alt="mail_merge_template_aspose_words_java" style="width:650px"/>

## تخصيص Mail Merge خصائص القالب

Aspose.Words يسمح لك بتخصيص القالب الخاص بك من خلال العديد من الخصائص. سيتم وصف تخصيص القالب أدناه من خلال مثال لتخصيص بعض خصائص الصور والنصوص.

### تخصيص خصائص الصورة

يمكنك تحديد خصائص الصورة باستخدام فئة [ImageFieldMergingArgs](https://reference.aspose.com/words/java/com.aspose.words/imagefieldmergingargs/). لاحظ أنه يمكنك إدراج صورة من قاعدة بيانات كما هو موضح في [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/c693ec7a8957051c206edc69612094a4169f6def/Examples/DocsExamples/Java/src/main/java/DocsExamples/Mail_Merge_And_Reporting/WorkingWithFields.java#L226).

يوضح مثال التعليمات البرمجية التالية كيفية تحديد اسم ملف الصورة وحجم الصورة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeFormFields-ImageFieldMerging.java" >}}

### تخصيص خصائص النص

يمكنك استخدام [النص]https://reference.aspose.com/words/java/com.aspose.words/Fieldmergingargs#Text) خاصية لإدراج نص في المستند لحقل الدمج الحالي. أيضا، يمكنك تغيير تنسيق النصوص والفقرات داخل القالب باستخدام [الخط](https://reference.aspose.com/words/java/com.aspose.words/font/) و [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) الطبقات. يمكنك التعامل مع النص المراد إدراجه قبل أو بعد حقل الدمج باستخدام الخصائص [TextBefore](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/#TextBefore) و [TextAfter](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/#TextAfter) المضمنة في فئة [FieldMergeField](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/).

يوضح مثال الكود التالي كيفية إدراج خانات الاختيار أو HTML أثناء عملية Mail Merge:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeFormFields-MailMergeFormFields.java" >}}

{{% alert color="primary" %}}

يمكنك تنزيل نموذج ملف هذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Mail%20merge%20destinations%20-%20Fax.docx).

يمكنك أيضا التحقق من تنفيذ فئة `HandleMergeField` من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Mail_Merge_And_Reporting/WorkingWithFields.java).

{{% /alert %}}

## أنظر أيضا

* لمزيد من التفاصيل حول كيفية إنشاء قوالب في Microsoft Word يدويا، يرجى التحقق من [إنشاء قالب](https://support.microsoft.com/en-us/office/save-a-word-document-as-a-template-cb17846d-ecec-49d4-82ea-a6f5e3e8b9ae) المادة في وثائق Microsoft
