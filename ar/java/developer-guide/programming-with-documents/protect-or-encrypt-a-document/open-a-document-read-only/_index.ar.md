---
title: افتح مستندا للقراءة فقط في Java
second_title: Aspose.Words ل Java
articleTitle: افتح مستندا للقراءة فقط
linktitle: افتح مستندا للقراءة فقط
description: "اجعل المستند للقراءة فقط بحيث يمكن نسخ المحتوى أو قراءته، ولكن لا يمكن تعديله باستخدام Java."
type: docs
weight: 10
url: /ar/java/open-a-document-read-only/
timestamp: 2024-01-27-14-07-04
---

في بعض الأحيان، قد يكون لديك مستند يحتاج إلى مراجعة، لكنك لا تريد أن يقوم المراجعون بتعديل المحتوى الخاص بك بشكل عشوائي. Aspose.Words يسمح لك بإجراء إذن المستند للقراءة فقط بحيث يمكن نسخ المحتوى أو قراءته، ولكن لا يمكن تعديله. سيؤدي هذا إلى منع إزالة المحتوى أو إضافته إلى المستند الخاص بك.

{{% alert color="primary" %}}

لا يمنع تطبيق خيار القراءة فقط على المستند الخاص بك أي شخص من إنشاء نسخة جديدة منه وحفظه باسم آخر.

{{% /alert %}}

تشرح هذه المقالة كيفية جعل المستند للقراءة فقط.

## جعل وثيقة للقراءة فقط

Aspose.Words يحتوي على الفئة العامة [WriteProtection](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/) التي تحدد إعدادات الحماية ضد الكتابة للمستند. لا تقم بإنشاء مثيلات من هذه الفئة مباشرة.

تظهر الحماية ضد الكتابة ما إذا كان المؤلف قد أوصى بفتح مستند للقراءة فقط و/أو طلب كلمة مرور لتعديل المستند.

Aspose.Words يسمح لك لجعل وثيقة للقراءة فقط لتقييد التحرير باستخدام الخاصية [ReadOnlyRecommended](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#getReadOnlyRecommended) وطريقة [SetPassword](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#setPassword-java.lang.String).

{{% alert color="primary" %}}

في Microsoft Word، يمكنك إنشاء مستند للقراءة فقط بطريقة مماثلة باستخدام كليهما:

* "افتح دائما للقراءة فقط" (ملف Info معلومات Protect حماية المستند)
* "كلمة المرور للتعديل" (حفظ باسم Tools أدوات Options خيارات عامة Password كلمة المرور)

{{% /alert %}}

{{% alert color="primary" %}}

يمكن للمستخدمين أيضا تقييد تحرير المستندات عن طريق تحديد [ProtectionType](https://reference.aspose.com/words/java/com.aspose.words/protectiontype/) كـ **ReadOnly**، ولكن هذه ميزة أخرى توفر إمكانات حماية أكثر تقدما. توجد مثل هذه الوظيفة في Microsoft Word، على التوالي، يتم تنفيذها في Aspose.Words.

**ProtectionType**

{{% /alert %}}

الخاصية **ReadOnlyRecommended** مؤمنة بكلمة مرور، لذلك إذا لم تقم بتعيين كلمة مرور قبل تطبيق الخاصية **ReadOnlyRecommended**، فيمكن للمستخدمين الآخرين ببساطة فتح المستند كما لو كان غير محمي. يمكنك الوصول إلى إعدادات حماية المستند وتعيين كلمة مرور حماية الكتابة عبر طريقة **SetPassword**.

{{% alert color="primary" %}}

لاحظ أن كلمة المرور التي يتم تعيينها هي مجرد خاصية في مستند يمكن إزالتها إذا تم الوصول إلى خصائص المستند. وفقا لذلك، فإن كلمة المرور هذه ليست ضمانا لأمن المستند.

{{% /alert %}}

إذا كنت بحاجة إلى التحقق مما إذا كان المستند يحتوي على كلمة مرور حماية ضد الكتابة تمنعه من التحرير، فيمكنك استخدام خاصية [IsWriteProtected](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#isWriteProtected).

يوضح مثال الكود التالي كيفية جعل المستند للقراءة فقط:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-ReadOnlyProtection.java" >}}

## إزالة قيود القراءة فقط

إذا كنت لا تريد أن يفتح المستخدم المستند الخاص بك للقراءة فقط، فيمكنك ببساطة تعيين الخاصية **ReadOnlyRecommened** إلى *false* أو تحديد **ProtectionType** باسم **NoProtection**.

يوضح مثال التعليمات البرمجية التالية كيفية إزالة الوصول للقراءة فقط للمستند:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-RemoveReadOnlyRestriction.java" >}}
