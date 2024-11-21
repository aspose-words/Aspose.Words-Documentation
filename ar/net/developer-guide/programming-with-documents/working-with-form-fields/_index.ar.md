---
title: العمل مع حقول النموذج في C#
second_title: Aspose.Words لـ .NET
articleTitle: العمل مع حقول النموذج
linktitle: العمل مع حقول النموذج
description: "ميزة فهم حقول النموذج، والعمل مع حقول النموذج باستخدام C#."
type: docs
weight: 380
url: /ar/net/working-with-form-fields/
timestamp: 2024-01-27-14-07-04
---

يُعرف المستند الذي يحتوي على فراغات (حقول) مملوءة بالنموذج. على سبيل المثال، يمكنك إنشاء نموذج تسجيل في Microsoft Word يستخدم قوائم منسدلة يمكن للمستخدمين تحديد الإدخالات منها. حقل `Form` هو موقع يتم فيه تخزين نوع معين من البيانات، مثل الاسم أو العنوان. تتضمن حقول النموذج في Microsoft Word إدخال النص ومربع التحرير والسرد ومربع الاختيار.

يمكنك استخدام حقول النموذج في مشروعك "للتواصل" مع المستخدمين. على سبيل المثال، يمكنك إنشاء مستند يكون محتواه محميًا، ولكن حقول النموذج فقط هي القابلة للتحرير. يمكن للمستخدمين إدخال البيانات في حقول النموذج وإرسال المستند. يمكن لتطبيقك الذي يستخدم Aspose.Words استرداد البيانات من حقول النموذج ومعالجتها.

يعد وضع حقول النموذج في المستند عبر الكود أمرًا سهلاً. لدى [DocumentBuilder](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/) طرق خاصة لإدراجها، واحدة لكل نوع حقل نموذج. تقبل كل طريقة معلمة سلسلة تمثل اسم حقل النموذج. يمكن أن يكون الاسم سلسلة فارغة. ومع ذلك، إذا قمت بتحديد اسم لحقل النموذج، فسيتم إنشاء إشارة مرجعية تلقائيًا بنفس الاسم.

## إدراج حقول النموذج

تعد حقول النموذج حالة خاصة لحقول Word التي تسمح "بالتفاعل" مع المستخدم. تتضمن حقول النموذج في Microsoft Word مربع النص ومربع التحرير والسرد ومربع الاختيار.

يوفر **DocumentBuilder** طرقًا خاصة لإدراج كل نوع من حقول النموذج في المستند: [InsertTextInput](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/inserttextinput/) و[InsertCheckBox](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/insertcheckbox/) و[InsertComboBox](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/insertcombobox/). لاحظ أنه إذا قمت بتحديد اسم لحقل النموذج، فسيتم إنشاء إشارة مرجعية تلقائيًا بنفس الاسم.

يوضح مثال التعليمات البرمجية التالي كيفية إدراج حقل نموذج combobox في مستند:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-InsertFormFields-InsertFormFields.cs" >}}

### أدخل إدخال النص

استخدم طريقة **InsertTextInput** لإدراج مربع نص في المستند.

يوضح مثال التعليمات البرمجية التالي كيفية إدراج حقل نموذج إدخال نص في مستند:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertTextInputFormField.cs" >}}

### أدخل خانة الاختيار

اتصل بـ **InsertCheckBox** لإدراج مربع اختيار في المستند.

يوضح مثال التعليمات البرمجية التالي كيفية إدراج حقل نموذج خانة اختيار في مستند:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertCheckBoxFormField.cs" >}}

### قم بإدراج مربع تحرير وسرد

اتصل بـ **InsertComboBox** لإدراج مربع تحرير وسرد في المستند.

يوضح مثال التعليمات البرمجية التالي كيفية إدراج حقل نموذج Combobox في مستند:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertComboBoxFormField.cs" >}}

## الحصول على حقول النموذج

يتم تمثيل مجموعة من حقول النموذج بواسطة فئة [FormFieldCollection](https://reference.aspose.com/words/ar/net/aspose.words.fields/formfieldcollection/) التي يمكن استرجاعها باستخدام خاصية [FormFields](https://reference.aspose.com/words/ar/net/aspose.words/range/formfields/). وهذا يعني أنه يمكنك الحصول على حقول النموذج الموجودة في أي عقدة مستند بما في ذلك المستند نفسه.

{{% alert color="primary" %}}

يمكنك تنزيل ملف العينة للأمثلة التالية من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Form%20fields.docx).

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالي كيفية الحصول على مجموعة من حقول النموذج:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.cs" >}}

يمكنك الحصول على حقل نموذج معين من خلال فهرسه أو اسمه.

يوضح مثال التعليمات البرمجية التالي كيفية الوصول إلى حقول النموذج:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsGetByName-FormFieldsGetByName.cs" >}}

تتيح لك خصائص **FormField** العمل مع اسم حقل النموذج ونوعه والنتيجة.

يوضح مثال التعليمات البرمجية التالي كيفية العمل مع اسم حقل النموذج ونوعه والنتيجة:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.cs" >}}

## تنسيق حقول النموذج

تسمح الخاصية [Font](https://reference.aspose.com/words/ar/net/aspose.words/inline/font/) الخاصة بـ [FormField](https://reference.aspose.com/words/ar/net/aspose.words.fields/formfield/) بتطبيق تنسيق الخط على **FormField** ككل بما في ذلك قيمة الحقل.

يوضح مثال التعليمات البرمجية التالي كيفية تطبيق تنسيق الخط على **FormField**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsFontFormatting-FormFieldsFontFormatting.cs" >}}
