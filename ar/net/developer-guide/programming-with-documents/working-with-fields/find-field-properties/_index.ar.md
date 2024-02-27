---
title: كيفية البحث عن خصائص الحقل في C#
second_title: Aspose.Words لـ .NET
articleTitle: البحث عن خصائص الحقل
linktitle: البحث عن خصائص الحقل
description: "كيفية العثور على بعض خصائص الحقل مثل رمز الحقل ونتيجة الحقل في C#."
type: docs
weight: 25
url: /ar/net/find-field-properties/
---

يقوم الحقل الذي يتم إدراجه باستخدام [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/).[InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/) بإرجاع كائن [Field](https://reference.aspose.com/words/net/aspose.words.fields/field/). هذه فئة واجهة توفر طرقًا مفيدة للعثور بسرعة على بعض خصائص الحقل.

يوضح مثال التعليمات البرمجية التالي كيفية العثور على رمز الحقل ونتيجة الحقل:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldCode.cs" >}}

لاحظ أنه إذا كنت تبحث فقط عن أسماء حقول الدمج في مستند ما، فيمكنك بدلاً من ذلك استخدام طريقة [GetFieldNames](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getfieldnames/) المضمنة.

يوضح مثال التعليمات البرمجية التالي كيفية الحصول على أسماء كافة حقول الدمج في مستند:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-GetFieldNames-GetFieldNames.cs" >}}