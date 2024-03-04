---
title: تقييد تحرير المستندات في C#
second_title: Aspose.Words لـ .NET
articleTitle: تقييد تحرير المستندات
linktitle: تقييد تحرير المستندات
description: "تقييد تحرير مستند عن طريق تحديد نوع التقييد باستخدام C#. يمكنك أيضًا إزالة الحماية وإنشاء مناطق غير مقيدة قابلة للتحرير."
type: docs
weight: 30
url: /ar/net/restrict-document-editing/
---

في بعض الأحيان قد تحتاج إلى تقييد القدرة على تحرير مستند والسماح بإجراءات معينة فقط معه. قد يكون هذا مفيدًا لمنع الأشخاص الآخرين من تحرير المعلومات الحساسة والسرية في المستند الخاص بك.

يسمح لك Aspose.Words بتقييد تحرير مستند عن طريق تحديد نوع التقييد. بالإضافة إلى ذلك، يمكّنك Aspose.Words أيضًا من تحديد إعدادات الحماية ضد الكتابة للمستند.

تشرح هذه المقالة كيفية استخدام Aspose.Words لتحديد نوع التقييد، وكيفية إضافة الحماية أو إزالتها، وكيفية إنشاء مناطق غير مقيدة قابلة للتحرير.

## حدد نوع تقييد التحرير

يسمح لك Aspose.Words بالتحكم في طريقة تقييد المحتوى باستخدام معلمة تعداد [ProtectionType](https://reference.aspose.com/words/ar/net/aspose.words/protectiontype/). سيمكنك هذا من تحديد نوع الحماية الدقيق مثل ما يلي:

* السماح بالتعليقات فقط
* السماح فقط بحقول النموذج
* السماح فقط بالمراجعات
* يقرأ فقط
* لا حماية

جميع الأنواع محمية بكلمة مرور، وإذا لم يتم إدخال كلمة المرور هذه بشكل صحيح، فلن يتمكن المستخدم من تغيير محتوى المستند بشكل قانوني. وبالتالي، إذا تم إرجاع مستندك إليك دون الحاجة إلى تقديم كلمة المرور اللازمة، فهذه علامة على وجود خطأ ما.

إذا لم تقم بتعيين كلمة مرور عند اختيار نوع الأمان، فيمكن للمستخدمين الآخرين ببساطة تجاهل حماية المستند الخاص بك.

{{% alert color="primary" %}}

لاحظ أن كلمة المرور التي يتم تعيينها هي مجرد خاصية في مستند يمكن إزالتها إذا تم الوصول إلى خصائص المستند. وبناءً على ذلك، فإن كلمة المرور هذه ليست ضمانًا لأمن المستند. تُظهر طريقة [Unprotect](https://reference.aspose.com/words/ar/net/aspose.words/document/unprotect/#unprotect/) ذلك تمامًا.

{{% /alert %}}

## إضافة حماية المستندات

تعد إضافة الحماية إلى مستندك عملية بسيطة، حيث أن كل ما عليك فعله هو تطبيق إحدى طرق الحماية المفصلة في هذا القسم.

يسمح لك Aspose.Words بحماية مستنداتك من التغييرات باستخدام طريقة [Protect](https://reference.aspose.com/words/ar/net/aspose.words/document/protect/#protect/). هذه الطريقة ليست ميزة أمان ولا تقوم بتشفير مستند.

{{% alert color="primary" %}}

في Microsoft Word، يمكنك تقييد التحرير بطريقة مماثلة باستخدام كليهما:

* تقييد التحرير (ملف → معلومات → حماية المستند)
* ميزة بديلة - "تقييد التحرير" (مراجعة → حماية → تقييد التحرير)

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالي كيفية إضافة الحماية بكلمة مرور إلى مستندك:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-PasswordProtection.cs" >}}

يوضح مثال التعليمات البرمجية التالي كيفية تقييد التحرير في مستند بحيث يكون التحرير في حقول النموذج فقط ممكنًا:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-AllowOnlyFormFieldsProtect.cs" >}}

## قم بإزالة حماية المستندات

يتيح لك Aspose.Words إزالة الحماية من المستند من خلال تعديل بسيط ومباشر للمستند. يمكنك إما إزالة حماية المستند دون معرفة كلمة المرور الفعلية أو توفير كلمة المرور الصحيحة لفتح المستند باستخدام طريقة [Unprotect](https://reference.aspose.com/words/ar/net/aspose.words/document/unprotect/#unprotect/). كلتا الطريقتين الإزالة ليس لهما فرق.

يوضح مثال التعليمات البرمجية التالي كيفية إزالة الحماية من المستند الخاص بك:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveDocumentProtection.cs" >}}

## حدد مناطق غير مقيدة قابلة للتحرير

يمكنك تقييد تحرير المستند الخاص بك وفي نفس الوقت السماح بإجراء تغييرات على أجزاء محددة منه. لذلك، سيتمكن أي شخص يفتح مستندك من الوصول إلى هذه الأجزاء غير المقيدة وإجراء تغييرات على المحتوى.

يسمح لك Aspose.Words بوضع علامة على الأجزاء التي يمكن تغييرها في مستندك باستخدام طريقتي [StartEditableRange](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/starteditablerange/) و[EndEditableRange](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/endeditablerange/#endeditablerange/).

يوضح مثال التعليمات البرمجية التالي كيفية وضع علامة على المستند بأكمله للقراءة فقط وتحديد المناطق القابلة للتحرير فيه:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedEditableRegions.cs" >}}

يمكنك أيضًا اختيار قيود مختلفة لتحرير المستندات لأقسام مختلفة.

يوضح مثال التعليمات البرمجية التالي كيفية إضافة قيد للمستند بأكمله، ثم إزالة القيد لأحد الأقسام:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedSection.cs" >}}
