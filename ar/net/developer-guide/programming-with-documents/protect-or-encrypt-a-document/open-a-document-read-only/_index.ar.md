---
title: افتح مستندًا للقراءة فقط في C#
second_title: Aspose.Words لـ .NET
articleTitle: افتح مستندًا للقراءة فقط
linktitle: افتح مستندًا للقراءة فقط
description: "اجعل مستندك للقراءة فقط بحيث يمكن نسخ المحتوى أو قراءته، ولكن لا يمكن تعديله باستخدام C#."
type: docs
weight: 10
url: /ar/net/open-a-document-read-only/
timestamp: 2024-01-27-14-07-04
---

في بعض الأحيان، قد يكون لديك مستند يحتاج إلى مراجعة، ولكنك لا تريد أن يقوم المراجعون بتعديل المحتوى الخاص بك بشكل عشوائي. يسمح لك Aspose.Words بجعل إذن المستند الخاص بك للقراءة فقط بحيث يمكن نسخ المحتوى أو قراءته، ولكن لا يمكن تعديله. سيؤدي هذا إلى منع إزالة المحتوى أو إضافته إلى مستندك.

{{% alert color="primary" %}}

إن تطبيق خيار القراءة فقط على المستند الخاص بك لا يمنع أي شخص من إنشاء نسخة جديدة منه وحفظه باسم آخر.

{{% /alert %}}

يشرح هذا المقال كيفية جعل مستند للقراءة فقط.

## جعل المستند للقراءة فقط

يحتوي Aspose.Words على الفئة العامة [WriteProtection](https://reference.aspose.com/words/ar/net/aspose.words.settings/writeprotection/) التي تحدد إعدادات الحماية ضد الكتابة للمستند. لا تقم بإنشاء مثيلات هذه الفئة مباشرة.

تُظهر الحماية ضد الكتابة ما إذا كان المؤلف قد أوصى بفتح مستند للقراءة فقط و/أو طلب كلمة مرور لتعديل المستند.

يسمح لك Aspose.Words بجعل المستند للقراءة فقط لتقييد التحرير باستخدام خاصية [ReadOnlyRecommended](https://reference.aspose.com/words/ar/net/aspose.words.settings/writeprotection/readonlyrecommended/) وطريقة [SetPassword](https://reference.aspose.com/words/ar/net/aspose.words.settings/writeprotection/setpassword/).

{{% alert color="primary" %}}

في Microsoft Word، يمكنك إنشاء مستند للقراءة فقط بطريقة مماثلة باستخدام كليهما:

* "افتح دائمًا للقراءة فقط" (ملف → معلومات → حماية المستند)
* "كلمة المرور المراد تعديلها" (حفظ باسم → أدوات → خيارات عامة → كلمة المرور)

{{% /alert %}}

{{% alert color="primary" %}}

يمكن للمستخدمين أيضًا تقييد تحرير المستندات عن طريق تحديد [ProtectionType](https://reference.aspose.com/words/ar/net/aspose.words/protectiontype/) كـ **ReadOnly**، ولكن هذه ميزة أخرى توفر إمكانات حماية أكثر تقدمًا. توجد مثل هذه الوظيفة في Microsoft Word، على التوالي، يتم تنفيذها في Aspose.Words.

سيتم وصف **ProtectionType** بالتفصيل في إحدى المقالات التالية - "تقييد تحرير المستند".

{{% /alert %}}

خاصية **ReadOnlyRecommended** مؤمنة بكلمة مرور، لذلك إذا لم تقم بتعيين كلمة مرور قبل تطبيق خاصية **ReadOnlyRecommended**، فيمكن للمستخدمين الآخرين ببساطة فتح المستند كما لو كان غير محمي. يمكنك الوصول إلى إعدادات حماية المستندات وتعيين كلمة مرور للحماية من الكتابة عبر طريقة **SetPassword**.

{{% alert color="primary" %}}

لاحظ أن كلمة المرور التي يتم تعيينها هي مجرد خاصية في مستند يمكن إزالتها إذا تم الوصول إلى خصائص المستند. وبناءً على ذلك، فإن كلمة المرور هذه ليست ضمانًا لأمن المستند.

{{% /alert %}}

إذا كنت بحاجة إلى التحقق مما إذا كان المستند يحتوي على كلمة مرور للحماية من الكتابة تمنعه من التحرير، فيمكنك استخدام خاصية [IsWriteProtected](https://reference.aspose.com/words/ar/net/aspose.words.settings/writeprotection/iswriteprotected/).

يوضح مثال التعليمات البرمجية التالي كيفية جعل المستند للقراءة فقط:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-ReadOnlyProtection.cs" >}}

## إزالة قيود القراءة فقط

إذا كنت لا تريد أن يفتح المستخدم مستندك للقراءة فقط، فيمكنك ببساطة تعيين خاصية **ReadOnlyRecommened** إلى *false* أو تحديد **ProtectionType** كـ **NoProtection**.

يوضح مثال التعليمات البرمجية التالي كيفية إزالة حق الوصول للقراءة فقط لمستند:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveReadOnlyRestriction.cs" >}}
