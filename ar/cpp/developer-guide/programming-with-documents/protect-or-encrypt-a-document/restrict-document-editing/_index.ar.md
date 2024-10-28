---
title: تقييد تحرير المستند في C++
second_title: Aspose.Words ل C++
articleTitle: تقييد تحرير المستندات
linktitle: تقييد تحرير المستندات
description: "تقييد تحرير مستند عن طريق تعيين نوع تقييد باستخدام C++. يمكنك أيضا إزالة الحماية وإنشاء مناطق غير مقيدة قابلة للتحرير."
type: docs
weight: 30
url: /ar/cpp/restrict-document-editing/
---

في بعض الأحيان قد تحتاج إلى الحد من القدرة على تحرير مستند والسماح فقط بإجراءات معينة به. يمكن أن يكون هذا مفيدا لمنع الأشخاص الآخرين من تحرير المعلومات الحساسة والسرية في المستند.

Aspose.Words يسمح لك بتقييد تحرير مستند عن طريق تعيين نوع تقييد. بالإضافة إلى ذلك، يمكنك Aspose.Words أيضا من تحديد إعدادات الحماية ضد الكتابة للمستند.

تشرح هذه المقالة كيفية استخدام Aspose.Words لتحديد نوع تقييد، وكيفية إضافة أو إزالة الحماية، وكيفية إنشاء مناطق غير مقيدة قابلة للتحرير.

## حدد نوع تقييد التحرير

Aspose.Words يسمح لك بالتحكم في الطريقة التي تقيد بها المحتوى باستخدام معلمة التعداد [ProtectionType](https://reference.aspose.com/words/cpp/aspose.words/protectiontype/). سيمكنك هذا من تحديد نوع محدد من الحماية مثل ما يلي:

* AllowOnlyComments
* AllowOnlyFormFields
* AllowOnlyRevisions
* ReadOnly
* NoProtection

جميع الأنواع مؤمنة بكلمة مرور، وإذا لم يتم إدخال كلمة المرور هذه بشكل صحيح، فلن يتمكن المستخدم من تغيير محتوى المستند بشكل قانوني. وبالتالي، إذا تم إرجاع المستند إليك دون الحاجة إلى توفير كلمة المرور اللازمة، فهذه علامة على وجود خطأ ما.

إذا لم تقم بتعيين كلمة مرور عند اختيار نوع الأمان، فيمكن للمستخدمين الآخرين ببساطة تجاهل حماية المستند الخاص بك.

{{% alert color="primary" %}}

لاحظ أن كلمة المرور التي يتم تعيينها هي مجرد خاصية في مستند يمكن إزالتها إذا تم الوصول إلى خصائص المستند. وفقا لذلك، فإن كلمة المرور هذه ليست ضمانا لأمن المستند. تظهر طريقة [Unprotect](https://reference.aspose.com/words/cpp/aspose.words/document/unprotect/) ذلك بالضبط.

{{% /alert %}}

## إضافة حماية المستندات

تعد إضافة الحماية إلى المستند عملية بسيطة، حيث أن كل ما عليك فعله هو تطبيق إحدى طرق الحماية المفصلة في هذا القسم.

Aspose.Words يسمح لك بحماية مستنداتك من التغييرات باستخدام طريقة [Protect](https://reference.aspose.com/words/cpp/aspose.words/document/protect/). هذه الطريقة ليست ميزة أمان ولا تقوم بتشفير مستند.

{{% alert color="primary" %}}

في Microsoft Word، يمكنك تقييد التحرير بطريقة مماثلة باستخدام كليهما:

* تقييد التحرير (ملف-معلومات-حماية المستند)
* ميزة بديلة – "تقييد التحرير" (مراجعة-حماية-تقييد التحرير)

{{% /alert %}}

يوضح مثال الكود التالي كيفية إضافة حماية بكلمة مرور إلى المستند:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-PasswordProtection.h" >}}

يوضح مثال التعليمات البرمجية التالي كيفية تقييد التحرير في مستند بحيث يكون التحرير في حقول النموذج فقط ممكنا:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-AllowOnlyFormFieldsProtect.h" >}}

## إزالة حماية المستند

Aspose.Words يسمح لك لإزالة الحماية من وثيقة مع تعديل وثيقة بسيطة ومباشرة. يمكنك إما إزالة حماية المستند دون معرفة كلمة المرور الفعلية أو توفير كلمة المرور الصحيحة لإلغاء قفل المستند باستخدام طريقة [Unprotect](https://reference.aspose.com/words/cpp/aspose.words/document/unprotect/). كلا طرق الإزالة ليس لها فرق.

يوضح مثال التعليمات البرمجية التالية كيفية إزالة الحماية من المستند:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveDocumentProtection.h" >}}

## تحديد المناطق غير المقيدة للتحرير

يمكنك تقييد تحرير المستند الخاص بك وفي نفس الوقت السماح بإجراء تغييرات على أجزاء محددة منه. لذلك، سيتمكن أي شخص يفتح المستند الخاص بك من الوصول إلى هذه الأجزاء غير المقيدة وإجراء تغييرات على المحتوى.

Aspose.Words يسمح لك بتمييز الأجزاء التي يمكن تغييرها في المستند باستخدام طرق [StartEditableRange](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/starteditablerange/) و [EndEditableRange](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endeditablerange/).

يوضح مثال التعليمات البرمجية التالية كيفية وضع علامة على المستند بأكمله للقراءة فقط وتحديد مناطق قابلة للتحرير فيه:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedEditableRegions.h" >}}

يمكنك أيضا اختيار قيود مختلفة لتحرير المستندات لأقسام مختلفة.

يوضح مثال التعليمات البرمجية التالية كيفية إضافة تقييد للمستند بأكمله ثم قم بإزالة التقييد لأحد الأقسام:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedSection.h" >}}
