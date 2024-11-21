---
title: افتح مستندًا للقراءة فقط في Python
second_title: Aspose.Words لـ Python via .NET
articleTitle: افتح مستندًا للقراءة فقط
linktitle: افتح مستندًا للقراءة فقط
description: "اجعل مستندك للقراءة فقط بحيث يمكن نسخ المحتوى أو قراءته، ولكن لا يمكن تعديله باستخدام Python."
type: docs
weight: 10
url: /ar/python-net/open-a-document-read-only/
timestamp: 2024-01-27-14-07-04
---

في بعض الأحيان، قد يكون لديك مستند يحتاج إلى مراجعة، ولكنك لا تريد أن يقوم المراجعون بتعديل المحتوى الخاص بك بشكل عشوائي. يسمح لك Aspose.Words بجعل إذن المستند الخاص بك للقراءة فقط بحيث يمكن نسخ المحتوى أو قراءته، ولكن لا يمكن تعديله. سيؤدي هذا إلى منع إزالة المحتوى أو إضافته إلى مستندك.

{{% alert color="primary" %}}

إن تطبيق خيار القراءة فقط على المستند الخاص بك لا يمنع أي شخص من إنشاء نسخة جديدة منه وحفظه باسم آخر.

{{% /alert %}}

يشرح هذا المقال كيفية جعل مستند للقراءة فقط.

## جعل المستند للقراءة فقط

يحتوي Aspose.Words على الفئة العامة [WriteProtection](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/) التي تحدد إعدادات الحماية ضد الكتابة للمستند. لا تقم بإنشاء مثيلات هذه الفئة مباشرة.

تُظهر الحماية ضد الكتابة ما إذا كان المؤلف قد أوصى بفتح مستند للقراءة فقط و/أو طلب كلمة مرور لتعديل المستند.

يسمح لك Aspose.Words بجعل المستند للقراءة فقط لتقييد التحرير باستخدام خاصية [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/) وطريقة [set_password](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/set_password/).

{{% alert color="primary" %}}

في Microsoft Word، يمكنك إنشاء مستند للقراءة فقط بطريقة مماثلة باستخدام كليهما:

* "افتح دائمًا للقراءة فقط" (ملف → معلومات → حماية المستند)
* "كلمة المرور المراد تعديلها" (حفظ باسم → أدوات → خيارات عامة → كلمة المرور)

{{% /alert %}}

{{% alert color="primary" %}}

يمكن للمستخدمين أيضًا تقييد تحرير المستندات عن طريق تحديد [ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/) كـ [READ_ONLY](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#read_only)، ولكن هذه ميزة أخرى توفر إمكانات حماية أكثر تقدمًا. توجد مثل هذه الوظيفة في Microsoft Word، على التوالي، يتم تنفيذها في Aspose.Words.

سيتم وصف [ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/) بالتفصيل في إحدى المقالات التالية - "تقييد تحرير المستند".

{{% /alert %}}

خاصية [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/) مؤمنة بكلمة مرور، لذلك إذا لم تقم بتعيين كلمة مرور قبل تطبيق خاصية [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/)، فيمكن للمستخدمين الآخرين ببساطة فتح المستند كما لو كان غير محمي. يمكنك الوصول إلى إعدادات حماية المستندات وتعيين كلمة مرور للحماية من الكتابة عبر طريقة [set_password](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/set_password/).

{{% alert color="primary" %}}

لاحظ أن كلمة المرور التي يتم تعيينها هي مجرد خاصية في مستند يمكن إزالتها إذا تم الوصول إلى خصائص المستند. وبناءً على ذلك، فإن كلمة المرور هذه ليست ضمانًا لأمن المستند.

{{% /alert %}}

إذا كنت بحاجة إلى التحقق مما إذا كان المستند يحتوي على كلمة مرور للحماية من الكتابة تمنعه من التحرير، فيمكنك استخدام خاصية [is_write_protected](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/is_write_protected/).

يوضح مثال التعليمات البرمجية التالي كيفية جعل المستند للقراءة فقط:

{{< highlight python >}}
import aspose.words as aw

doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.write("Open document as read-only")

# Enter a password that's up to 15 characters long.
doc.write_protection.set_password("MyPassword")

# Make the document as read-only.
doc.write_protection.read_only_recommended = True

# Apply write protection as read-only.
doc.protect(aw.ProtectionType.READ_ONLY)
doc.save(docs_base.artifacts_dir + "DocumentProtection.ReadOnlyProtection.docx")
{{< /highlight >}}

## إزالة قيود القراءة فقط

إذا كنت لا تريد أن يفتح المستخدم مستندك للقراءة فقط، فيمكنك ببساطة تعيين خاصية [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/) إلى `False` أو تحديد [ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/document/protection_type/) كـ [NO_PROTECTION](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#no_protection).

يوضح مثال التعليمات البرمجية التالي كيفية إزالة حق الوصول للقراءة فقط لمستند:

{{< highlight python >}}
import aspose.words as aw

doc = aw.Document()
            
# Enter a password that's up to 15 characters long.
doc.write_protection.set_password("MyPassword")

# Remove the read-only option.
doc.write_protection.read_only_recommended = False

# Apply write protection without any protection.
doc.protect(aw.ProtectionType.NO_PROTECTION)
doc.save(docs_base.artifacts_dir + "DocumentProtection.RemoveReadOnlyRestriction.docx")
{{< /highlight >}}
