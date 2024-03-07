---
title: قم بإزالة الحقول باستخدام Python
second_title: Aspose.Words لـ Python via .NET
articleTitle: إزالة الحقول
linktitle: إزالة الحقول
description: "تعرف على كيفية إزالة الحقول في Python. قم بإزالة الحقول برمجياً باستخدام Python via .NET API."
type: docs
weight: 35
url: /ar/python-net/remove-fields/
---

في بعض الأحيان يكون من الضروري إزالة حقل من المستند. قد يحدث هذا عندما يتم استبداله بنوع حقل مختلف أو عندما لا تكون هناك حاجة إلى الحقل في المستند. على سبيل المثال، حقل `TOC` عند الحفظ إلى HTML.

لإزالة حقل تم إدراجه في مستند باستخدام [DocumentBuilder.insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/)، استخدم كائن [Field](https://reference.aspose.com/words/python-net/aspose.words.fields/field/) الذي تم إرجاعه، والذي يوفر طريقة [remove](https://reference.aspose.com/words/python-net/aspose.words.fields/field/remove/#default) ملائمة لإزالة الحقل من المستند بسهولة.

يوضح مثال التعليمات البرمجية التالي كيفية إزالة حقل من المستند:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-RemoveField.py" >}}

{{% alert color="primary" %}}

يمكنك تنزيل الملف النموذجي لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Various%20fields.docx).

{{% /alert %}}