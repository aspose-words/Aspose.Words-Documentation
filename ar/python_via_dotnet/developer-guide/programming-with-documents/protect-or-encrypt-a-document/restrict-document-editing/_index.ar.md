---
title: تقييد تحرير المستندات في Python
second_title: Aspose.Words لـ Python via .NET
articleTitle: تقييد تحرير المستندات
linktitle: تقييد تحرير المستندات
description: "تقييد تحرير مستند عن طريق تحديد نوع التقييد باستخدام Python. يمكنك أيضًا إزالة الحماية وإنشاء مناطق غير مقيدة قابلة للتحرير."
type: docs
weight: 30
url: /ar/python-net/restrict-document-editing/
timestamp: 2024-01-27-14-07-04
---

في بعض الأحيان قد تحتاج إلى تقييد القدرة على تحرير مستند والسماح بإجراءات معينة فقط معه. قد يكون هذا مفيدًا لمنع الأشخاص الآخرين من تحرير المعلومات الحساسة والسرية في المستند الخاص بك.

يسمح لك Aspose.Words بتقييد تحرير مستند عن طريق تحديد نوع التقييد. بالإضافة إلى ذلك، يمكّنك Aspose.Words أيضًا من تحديد إعدادات الحماية ضد الكتابة للمستند.

تشرح هذه المقالة كيفية استخدام Aspose.Words لتحديد نوع التقييد، وكيفية إضافة الحماية أو إزالتها، وكيفية إنشاء مناطق غير مقيدة قابلة للتحرير.

## حدد نوع تقييد التحرير

يسمح لك Aspose.Words بالتحكم في طريقة تقييد المحتوى باستخدام معلمة تعداد [ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/). سيمكنك هذا من تحديد نوع الحماية الدقيق مثل ما يلي:

* [ALLOW_ONLY_COMMENTS](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#allow_only_comments)
* [ALLOW_ONLY_FORM_FIELDS](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#allow_only_form_fields)
* [ALLOW_ONLY_REVISIONS](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#allow_only_revisions)
* [READ_ONLY](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#read_only)
* [NO_PROTECTION](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#no_protection)

جميع الأنواع محمية بكلمة مرور، وإذا لم يتم إدخال كلمة المرور هذه بشكل صحيح، فلن يتمكن المستخدم من تغيير محتوى المستند بشكل قانوني. وبالتالي، إذا تم إرجاع المستند إليك دون الحاجة إلى تقديم كلمة المرور اللازمة، فهذه علامة على وجود خطأ ما.

إذا لم تقم بتعيين كلمة مرور عند اختيار نوع الأمان، فيمكن للمستخدمين الآخرين ببساطة تجاهل حماية المستند الخاص بك.

{{% alert color="primary" %}}

لاحظ أن كلمة المرور التي يتم تعيينها هي مجرد خاصية في مستند يمكن إزالتها إذا تم الوصول إلى خصائص المستند. وبناءً على ذلك، فإن كلمة المرور هذه ليست ضمانًا لأمن المستند. تُظهر طريقة [Document.unprotect](https://reference.aspose.com/words/python-net/aspose.words/document/unprotect/) ذلك تمامًا.

{{% /alert %}}

## إضافة حماية المستندات

تعد إضافة الحماية إلى مستندك عملية بسيطة، حيث أن كل ما عليك فعله هو تطبيق إحدى طرق الحماية المفصلة في هذا القسم.

يسمح لك Aspose.Words بحماية مستنداتك من التغييرات باستخدام طريقة [Document.protect](https://reference.aspose.com/words/python-net/aspose.words/document/protect/). هذه الطريقة ليست ميزة أمان ولا تقوم بتشفير مستند.

{{% alert color="primary" %}}

في Microsoft Word، يمكنك تقييد التحرير بطريقة مماثلة باستخدام كليهما:

* تقييد التحرير (ملف → معلومات → حماية المستند)
* ميزة بديلة - "تقييد التحرير" (مراجعة → حماية → تقييد التحرير)

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالي كيفية إضافة الحماية بكلمة مرور إلى مستندك:

{{< highlight python >}}
import aspose.words as aw

doc = aw.Document()

# Apply document protection.
doc.protect(aw.ProtectionType.NO_PROTECTION, "password")

doc.save(docs_base.artifacts_dir + "DocumentProtection.PasswordProtection.docx");
{{< /highlight >}}

يوضح مثال التعليمات البرمجية التالي كيفية تقييد التحرير في مستند بحيث يكون التحرير في حقول النموذج فقط ممكنًا:

{{< highlight python >}}
import aspose.words as aw

# Insert two sections with some text.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.writeln("Text added to a document.")

# A document protection only works when document protection is turned and only editing in form fields is allowed.
doc.protect(aw.ProtectionType.ALLOW_ONLY_FORM_FIELDS, "password")

# Save the protected document.
doc.save(docs_base.artifacts_dir + "DocumentProtection.AllowOnlyFormFieldsProtect.docx");
{{< /highlight >}}

## قم بإزالة حماية المستندات

يتيح لك Aspose.Words إزالة الحماية من المستند من خلال تعديل بسيط ومباشر للمستند. يمكنك إما إزالة حماية المستند دون معرفة كلمة المرور الفعلية أو توفير كلمة المرور الصحيحة لفتح المستند باستخدام طريقة [unprotect](https://reference.aspose.com/words/python-net/aspose.words/document/unprotect/). كلتا الطريقتين الإزالة ليس لهما فرق.

يوضح مثال التعليمات البرمجية التالي كيفية إزالة الحماية من المستند الخاص بك:

{{< highlight python >}}
import aspose.words as aw

doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.writeln("Text added to a document.")

# Documents can have protection removed either with no password, or with the correct password.
doc.unprotect()
doc.protect(aw.ProtectionType.READ_ONLY, "newPassword")
doc.unprotect("newPassword")

doc.save(docs_base.artifacts_dir + "DocumentProtection.RemoveDocumentProtection.docx");
{{< /highlight >}}

## حدد مناطق غير مقيدة قابلة للتحرير

يمكنك تقييد تحرير المستند الخاص بك وفي نفس الوقت السماح بإجراء تغييرات على أجزاء محددة منه. لذلك، سيتمكن أي شخص يفتح مستندك من الوصول إلى هذه الأجزاء غير المقيدة وإجراء تغييرات على المحتوى.

يسمح لك Aspose.Words بوضع علامة على الأجزاء التي يمكن تغييرها في مستندك باستخدام طريقتي [start_editable_range](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/start_editable_range/) و[end_editable_range](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_editable_range/).

يوضح مثال التعليمات البرمجية التالي كيفية وضع علامة على المستند بأكمله للقراءة فقط وتحديد المناطق القابلة للتحرير فيه:

{{< highlight python >}}
import aspose.words as aw

# Upload a document and make it as read-only.
doc = aw.Document(docs_base.my_dir + "Document.docx")
builder = aw.DocumentBuilder(doc)

doc.protect(aw.ProtectionType.READ_ONLY, "MyPassword")

builder.writeln("Hello world! Since we have set the document's protection level to read-only, we cannot edit this paragraph without the password.")

# Start an editable range.
edRangeStart = builder.start_editable_range()
# An EditableRange object is created for the EditableRangeStart that we just made.
editableRange = edRangeStart.editable_range

# Put something inside the editable range.
builder.writeln("Paragraph inside first editable range")

# An editable range is well-formed if it has a start and an end.
edRangeEnd = builder.end_editable_range()

builder.writeln("This paragraph is outside any editable ranges, and cannot be edited.");

doc.save(docs_base.artifacts_dir + "DocumentProtection.UnrestrictedEditableRegions.docx");
{{< /highlight >}}

يمكنك أيضًا اختيار قيود مختلفة لتحرير المستندات لأقسام مختلفة.

يوضح مثال التعليمات البرمجية التالي كيفية إضافة قيد للمستند بأكمله، ثم إزالة القيد لأحد الأقسام:

{{< highlight python >}}
import aspose.words as aw

# Insert two sections with some text.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.writeln("Section 1. Unprotected.")
builder.insert_break(aw.BreakType.SECTION_BREAK_CONTINUOUS)
builder.writeln("Section 2. Protected.")

# Section protection only works when document protection is turned and only editing in form fields is allowed.
doc.protect(aw.ProtectionType.ALLOW_ONLY_FORM_FIELDS, "password")

# By default, all sections are protected, but we can selectively turn protection off.
doc.sections[0].protected_for_forms = False
doc.save(docs_base.artifacts_dir + "DocumentProtection.UnrestrictedSection.docx");

doc = aw.Document(docs_base.artifacts_dir + "DocumentProtection.UnrestrictedSection.docx");
self.assertFalse(doc.sections[0].protected_for_forms)
self.assertTrue(doc.sections[1].protected_for_forms);
{{< /highlight >}}
