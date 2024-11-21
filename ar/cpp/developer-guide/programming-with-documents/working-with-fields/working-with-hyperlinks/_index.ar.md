---
title: العمل مع الارتباطات التشعبية في C++
second_title: Aspose.Words ل C++
articleTitle: إضافة أو تعديل الارتباطات التشعبية
linktitle: إضافة أو تعديل الارتباطات التشعبية
description: "كيفية إضافة ارتباط تشعبي إلى المستند باستخدام Aspose.Words ل C++."
type: docs
weight: 180
url: /ar/cpp/working-with-hyperlinks/
timestamp: 2024-01-27-14-07-04
---

الارتباط التشعبي في المستندات Microsoft Word هو حقل `HYPERLINK`. في Aspose.Words، يتم تنفيذ الارتباطات التشعبية من خلال فئة [FieldHyperlink](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldhyperlink/).

## إدراج ارتباط تشعبي

استخدم طريقة [InsertHyperlink](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/inserthyperlink/) لإدراج ارتباط تشعبي في المستند. تقبل هذه الطريقة ثلاث معلمات:

1. نص الرابط المراد عرضه في المستند
2. وجهة الارتباط (URL أو اسم إشارة مرجعية داخل المستند)
3. المعلمة المنطقية التي يجب أن تكون صحيحة إذا كان `URL` هو اسم إشارة مرجعية داخل المستند

تضيف طريقة **InsertHyperlink** دائما الفواصل العليا في بداية ونهاية URL.

{{% alert color="primary" %}}

لاحظ أنك تحتاج إلى تحديد تنسيق الخط لنص عرض الارتباط التشعبي بشكل صريح باستخدام خاصية `Font`.

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالية كيفية إدراج ارتباط تشعبي في مستند باستخدام [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHyperlink.cpp" >}}

## استبدال أو تعديل الارتباطات التشعبية

الارتباط التشعبي في Microsoft Word المستندات هو حقل. الحقل في مستند ورد هو بنية معقدة تتكون من عقد متعددة تتضمن بداية الحقل ورمز الحقل وفاصل الحقل والنتيجة الميدانية ونهاية الحقل. يمكن أن تتداخل الحقول وتحتوي على محتوى غني وتمتد إلى عدة فقرات أو أقسام في مستند.

تنفذ فئة `FieldHyperlink` حقل `HYPERLINK`.

يوضح مثال الكود التالي كيفية العثور على جميع الارتباطات التشعبية في مستند ورد وتغيير `URL` واسم العرض:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.cpp" >}}
