---
title: العمل مع حقول النموذج في Python
second_title: Aspose.Words لـ Python via .NET
articleTitle: العمل مع حقول النموذج
linktitle: العمل مع حقول النموذج
description: "قم بإدراج حقل نموذج أو الحصول عليه أو تنسيقه في مستند باستخدام Python."
type: docs
weight: 380
url: /ar/python-net/working-with-form-fields/
---

يُعرف المستند الذي يحتوي على فراغات (حقول) مملوءة بالنموذج. على سبيل المثال، يمكنك إنشاء نموذج تسجيل في Microsoft Word يستخدم قوائم منسدلة يمكن للمستخدمين تحديد الإدخالات منها. حقل `Form` هو موقع يتم فيه تخزين نوع معين من البيانات، مثل الاسم أو العنوان. تتضمن حقول النموذج في Microsoft Word إدخال النص ومربع التحرير والسرد ومربع الاختيار.

يمكنك استخدام حقول النموذج في مشروعك "للتواصل" مع المستخدمين. على سبيل المثال، يمكنك إنشاء مستند يكون محتواه محميًا، ولكن حقول النموذج فقط هي القابلة للتحرير. يمكن للمستخدمين إدخال البيانات في حقول النموذج وإرسال المستند. يمكن لتطبيقك الذي يستخدم Aspose.Words استرداد البيانات من حقول النموذج ومعالجتها.

يعد وضع حقول النموذج في المستند عبر الكود أمرًا سهلاً. لدى [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) طرق خاصة لإدراجها، واحدة لكل نوع حقل نموذج. تقبل كل طريقة معلمة سلسلة تمثل اسم حقل النموذج. يمكن أن يكون الاسم سلسلة فارغة. ومع ذلك، إذا قمت بتحديد اسم لحقل النموذج، فسيتم إنشاء إشارة مرجعية تلقائيًا بنفس الاسم.

## إدراج حقول النموذج

تعد حقول النموذج حالة خاصة لحقول Word التي تسمح "بالتفاعل" مع المستخدم. تتضمن حقول النموذج في Microsoft Word مربع النص ومربع التحرير والسرد ومربع الاختيار.

يوفر [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) طرقًا خاصة لإدراج كل نوع من حقول النموذج في المستند: [insert_text_input](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_text_input/)، و[insert_check_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_check_box/)، و[insert_combo_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_combo_box/). لاحظ أنه إذا قمت بتحديد اسم لحقل النموذج، فسيتم إنشاء إشارة مرجعية تلقائيًا بنفس الاسم.

يوضح مثال التعليمات البرمجية التالي كيفية إدراج حقل نموذج combobox في مستند:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-InsertFormFields.py" >}}

### أدخل إدخال النص

استخدم طريقة [insert_text_input](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_text_input/) لإدراج مربع نص في المستند.

يوضح مثال التعليمات البرمجية التالي كيفية إدراج حقل نموذج إدخال نص في مستند:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", "Hello", 0)
        
doc.save(docs_base.artifacts_dir + "WorkingWithFormFields.document_builder_insert_text_input_form_field.docx")
{{< /highlight >}}

### أدخل خانة الاختيار

اتصل بـ [insert_check_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_check_box/) لإدراج مربع اختيار في المستند.

يوضح مثال التعليمات البرمجية التالي كيفية إدراج حقل نموذج خانة اختيار في مستند:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_check_box("CheckBox", True, True, 0)
        
doc.save(docs_base.artifacts_dir + "WorkingWithFormFields.document_builder_insert_check_box_form_field.docx")
{{< /highlight >}}

### قم بإدراج مربع تحرير وسرد

اتصل بـ [insert_combo_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_combo_box/) لإدراج Combobox في المستند.

يوضح مثال التعليمات البرمجية التالي كيفية إدراج حقل نموذج Combobox في مستند:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

items =  ["One", "Two", "Three"] 
builder.insert_combo_box("DropDown", items, 0)

doc.save(docs_base.artifacts_dir + "WorkingWithFormFields.document_builder_insert_combo_box_form_field.docx")
{{< /highlight >}}

## الحصول على حقول النموذج

يتم تمثيل مجموعة من حقول النموذج بواسطة فئة [FormFieldCollection](https://reference.aspose.com/words/python-net/aspose.words.fields/formfieldcollection/) التي يمكن استرجاعها باستخدام خاصية [form_fields](https://reference.aspose.com/words/python-net/aspose.words/range/form_fields/). وهذا يعني أنه يمكنك الحصول على حقول النموذج الموجودة في أي عقدة مستند بما في ذلك المستند نفسه.

{{% alert color="primary" %}}

يمكنك تنزيل ملف العينة للأمثلة التالية من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Form%20fields.docx).

{{% /alert %}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsGetFormFieldsCollection.py" >}}

يمكنك الحصول على حقل نموذج معين من خلال فهرسه أو اسمه.

يوضح مثال التعليمات البرمجية التالي كيفية الوصول إلى حقول النموذج:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsGetByName.py" >}}

تتيح لك خصائص [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) العمل مع اسم حقل النموذج ونوعه والنتيجة.

يوضح مثال التعليمات البرمجية التالي كيفية العمل مع اسم حقل النموذج ونوعه والنتيجة:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsWorkWithProperties.py" >}}

## تنسيق حقول النموذج

تسمح الخاصية [font](https://reference.aspose.com/words/python-net/aspose.words/inline/font/) الخاصة بـ [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) بتطبيق تنسيق الخط على [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) ككل بما في ذلك قيمة الحقل.

يوضح مثال التعليمات البرمجية التالي كيفية تطبيق تنسيق الخط على **FormField**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsFontFormatting.py" >}}
