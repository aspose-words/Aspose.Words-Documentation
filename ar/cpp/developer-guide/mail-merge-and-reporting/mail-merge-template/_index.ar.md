---
title: Mail Merge قالب في C++
second_title: Aspose.Words ل C++
articleTitle: Mail Merge قالب
linktitle: Mail Merge قالب
type: docs
description: "قم بإنشاء قالب Mail Merge لتعريف المحتوى الثابت في مستندات الإخراج، ثم قم بإنشاء دمج المستندات باستخدام حقول الدمج."
keywords: "create Mail Merge template с++"
weight: 10
url: /ar/cpp/mail-merge-template/
timestamp: 2024-01-31-14-23-37
---

من الشائع استخدام قالب دمج كمستند أساسي لعملية Mail Merge إما إذا كانت بسيطة Mail Merge أو Mail Merge مع مناطق. Mail merge مع المناطق هو أكثر قوة وشعبية من Mail Merge بسيطة. تعتبر Mail Merge البسيطة حالة معينة من Mail Merge مع المناطق التي تكون فيها المنطقة هي المستند بأكمله. يتم شرح كل شيء في المقالة التالية "أنواع Mail Merge العملية" بمزيد من التفصيل.

يضمن القالب تنسيق النص في المستند المدمج في الإخراج بشكل صحيح، وتضمن العملية Mail Merge إدخال النص من مصدر البيانات بشكل صحيح في قالب الدمج.

Aspose.Words يوفر القدرة على إنشاء قالب Mail Merge لتحديد المحتوى الثابت ثم إنشاء مستندات دمج باستخدام حقول الدمج. وبالتالي، سيحتوي قالب الدمج على النص الضروري، وهو نفسه في جميع مستندات الإخراج، وحقول الدمج لملء المحتوى المتغير. نتيجة لذلك، ستتم إضافة معلومات من مصدر البيانات المحدد إلى قالب الدمج من خلال هذه الحقول أثناء إنشاء المستند المدمج.

## ما هو قالب Mail Merge

قالب Mail Merge هو مستند مخصص يحتوي على البيانات الثابتة والحقول المدمجة حيث تريد أن يكون النص المتغير. يمكن أن يكون قالب الدمج بأي تنسيق يدعم الحقول، على سبيل المثال, DOC, DOCX, DOT, DOTX, RTF. بالإضافة إلى ذلك، يمكنك أيضا استخدام قالب mustache الموضح في المقالة "Mustache بناء جملة القالب" بمزيد من التفصيل.

يمكنك إنشاء قالب دمج ليكون نموذجا للمستندات الجديدة، ويجب أن يتضمن النص الرئيسي الذي يجب أن يكون هو نفسه لكل إصدار من المستند المدمج. ستمثل إضافة حقول الدمج داخل القالب بيانات التخصيص مثل الأسماء أو العناوين التي يتم جلبها من مصدر بيانات. ستؤدي عملية Mail Merge تلقائيا إلى إدراج بيانات التخصيص من مصدر البيانات إلى مستند قالب الدمج.

بالإضافة إلى ذلك، يمكنك إضافة منطقة Mail Merge في القالب الخاص بك عن طريق إدراج حقلين Mail Merge لتمييز بداية ونهاية منطقة البريد. توضح المقالة التالية" أنواع Mail Merge العملية " ذلك بمزيد من التفصيل.

## إنشاء قالب Mail Merge

يمكنك إنشاء قالب وإضافة حقول دمج محددة إليه، والتي سيتم استبدالها بالقيم من مصدر البيانات إما يدويا، على سبيل المثال، باستخدام Microsoft Word، أو برمجيا باستخدام Aspose.Words. في هذه المقالة، سنلقي نظرة على الطريقة البرمجية لإنشاء قالب.

استخدم فئة [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) لإنشاء قالب الدمج المطلوب باستخدام Aspose.Words. يمكنك تضمين نص وحقل دمج وفاصل أسطر في مثل هذا القالب باستخدام طرق [InsertTextInput](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/inserttextinput/) و [InsetField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/) و [InsertParagraph](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertparagraph/).

يوضح مثال الكود التالي كيفية إنشاء قالب mail merge:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeTemplate-CreateMailMergeTemplate.cpp" >}}

تظهر الصورة أدناه القالب الذي تم إنشاؤه:

<img src="mail-merge-template-1.png" alt="mail_merge_template-aspose-words-cpp" style="width:650px"/>

## تخصيص Mail Merge خصائص القالب

Aspose.Words يسمح لك بتخصيص القالب الخاص بك من خلال العديد من الخصائص. سيتم وصف تخصيص القالب أدناه من خلال مثال لتخصيص بعض خصائص الصور والنصوص.

### تخصيص خصائص الصورة

يمكنك تحديد خصائص الصورة باستخدام فئة [ImageFieldMergingArgs](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imagefieldmergingargs/).

يوضح مثال التعليمات البرمجية التالية كيفية تحديد اسم ملف الصورة وحجم الصورة:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeFormFields-ImageFieldMerging.cpp" >}}

### تخصيص خصائص النص

يمكنك استخدام الخاصية [Text](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/fieldmergingargs/get_text/) لإدراج نص في المستند لحقل الدمج الحالي. أيضا، يمكنك تغيير تنسيق النصوص والفقرات داخل القالب باستخدام [Font](https://reference.aspose.com/words/cpp/aspose.words/font/) و [ParagraphFormat](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/) الطبقات. يمكنك التعامل مع النص المراد إدراجه قبل أو بعد حقل الدمج باستخدام الخصائص [TextBefore](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/get_textbefore/) و [TextAfter](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/get_textafter/) المضمنة في فئة [FieldMergeField](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/).

يوضح مثال الكود التالي كيفية إدراج خانات الاختيار أو HTML أثناء عملية mail merge:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeFormFields-MailMergeFormFields.cpp" >}}

{{% alert color="primary" %}}

يمكنك تنزيل نموذج ملف هذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

يمكنك أيضا التحقق من تنفيذ فئة `HandleMergeField` من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## أنظر أيضا

* لمزيد من التفاصيل حول كيفية إنشاء قوالب في Microsoft Word يدويا، يرجى التحقق من [إنشاء قالب](https://support.microsoft.com/en-us/office/save-a-word-document-as-a-template-cb17846d-ecec-49d4-82ea-a6f5e3e8b9ae) المادة في وثائق Microsoft
