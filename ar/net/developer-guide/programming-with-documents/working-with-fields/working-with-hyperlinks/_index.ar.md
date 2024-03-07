---
title: العمل مع الارتباطات التشعبية في C#
second_title: Aspose.Words لـ .NET
articleTitle: إضافة أو تعديل الارتباطات التشعبية
linktitle: إضافة أو تعديل الارتباطات التشعبية
description: "كيفية إضافة ارتباط تشعبي إلى مستندك في C# باستخدام Aspose.Words لـ .NET."
type: docs
weight: 50
url: /ar/net/working-with-hyperlinks/
---

الارتباط التشعبي في مستندات Microsoft Word هو حقل `HYPERLINK`. في Aspose.Words، يتم تنفيذ الارتباطات التشعبية من خلال فئة [FieldHyperlink](https://reference.aspose.com/words/ar/net/aspose.words.fields/fieldhyperlink/).

## قم بإدراج ارتباط تشعبي

استخدم طريقة [InsertHyperlink](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/inserthyperlink/) لإدراج ارتباط تشعبي في المستند. تقبل هذه الطريقة ثلاث معلمات:

1. نص الرابط الذي سيتم عرضه في الوثيقة
2. وجهة الارتباط (عنوان URL أو اسم الإشارة المرجعية داخل المستند)
3. المعلمة المنطقية التي يجب أن تكون true إذا كان `URL` هو اسم إشارة مرجعية داخل المستند

تضيف طريقة **InsertHyperlink** دائمًا الفواصل العليا في بداية عنوان URL ونهايته

{{% alert color="primary" %}}

لاحظ أنك تحتاج إلى تحديد تنسيق الخط لنص عرض الارتباط التشعبي بشكل صريح باستخدام خاصية `Font`.

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالي كيفية إدراج ارتباط تشعبي في مستند باستخدام [DocumentBuilder](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHyperlink.cs" >}}

## استبدال الارتباطات التشعبية أو تعديلها

الارتباط التشعبي في مستندات Microsoft Word هو حقل. الحقل في مستند Word، كما قلنا سابقًا، عبارة عن بنية معقدة تتكون من عقد متعددة تتضمن بداية الحقل ورمز الحقل وفاصل الحقل ونتيجة الحقل ونهاية الحقل. يمكن أن تكون الحقول متداخلة وتحتوي على محتوى غني وتمتد على فقرات أو أقسام متعددة في المستند.

لاستبدال الارتباطات التشعبية أو تعديلها، يلزم العثور على الارتباطات التشعبية في المستند واستبدال النص أو عناوين URL الخاصة بها أو كليهما.

يوضح مثال التعليمات البرمجية التالي كيفية العثور على كافة الارتباطات التشعبية في مستند Word وتغيير `URL` واسم العرض الخاص بها:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.cs" >}}
