---
title: العمل مع الارتباطات التشعبية
second_title: Aspose.Words لـ Python via .NET
articleTitle: إضافة أو تعديل الارتباطات التشعبية
linktitle: إضافة أو تعديل الارتباطات التشعبية
description: "إضافة ارتباط تشعبي أو استبداله أو تعديله في مستند باستخدام Python."
type: docs
weight: 50
url: /ar/python-net/working-with-hyperlinks/
---

الارتباط التشعبي في مستندات Microsoft Word هو حقل `HYPERLINK`. في Aspose.Words، يتم تنفيذ الارتباطات التشعبية من خلال فئة [FieldHyperlink](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldhyperlink/).

## إدراج ارتباط تشعبي

استخدم طريقة [insert_hyperlink](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_hyperlink/) لإدراج ارتباط تشعبي في المستند. تقبل هذه الطريقة ثلاث معلمات:

1. نص الرابط الذي سيتم عرضه في الوثيقة
2. وجهة الارتباط (عنوان URL أو اسم الإشارة المرجعية داخل المستند)
3. المعلمة المنطقية التي يجب أن تكون true إذا كان `URL` هو اسم إشارة مرجعية داخل المستند

تضيف طريقة **InsertHyperlink** دائمًا الفواصل العليا في بداية عنوان URL ونهايته.

{{% alert color="primary" %}}

لاحظ أنك تحتاج إلى تحديد تنسيق الخط لنص عرض الارتباط التشعبي بشكل صريح باستخدام خاصية `Font`.

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالي كيفية إدراج ارتباط تشعبي في مستند باستخدام [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertHyperlink.py" >}}

## استبدال الارتباطات التشعبية أو تعديلها

الارتباط التشعبي في مستندات Microsoft Word هو حقل. الحقل في مستند Word عبارة عن بنية معقدة تتكون من عقد متعددة تتضمن بداية الحقل ورمز الحقل وفاصل الحقل ونتيجة الحقل ونهاية الحقل. يمكن أن تكون الحقول متداخلة وتحتوي على محتوى غني وتمتد على فقرات أو أقسام متعددة في المستند

لاستبدال الارتباطات التشعبية أو تعديلها، يلزم العثور على الارتباطات التشعبية في المستند واستبدال النص أو عناوين URL الخاصة بها أو كليهما.

يوضح مثال التعليمات البرمجية التالي كيفية العثور على كافة الارتباطات التشعبية في مستند Word وتغيير `URL` واسم العرض الخاص بها:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ReplaceHyperlinks.py" >}}
