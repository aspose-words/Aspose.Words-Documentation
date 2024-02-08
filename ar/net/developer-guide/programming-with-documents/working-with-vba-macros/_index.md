---
title: العمل مع وحدات ماكرو VBA في C#
second_title: Aspose.Words لـ .NET
articleTitle: العمل مع وحدات ماكرو VBA
linktitle: العمل مع وحدات ماكرو VBA
description: "العمل مع مشاريع مستند VBA باستخدام C#."
type: docs
weight: 410
url: /ar/net/working-with-vba-macros/
---

Visual Basic for Applications (VBA) for Microsoft Word هي لغة برمجة بسيطة ولكنها قوية يمكن استخدامها لتوسيع الوظائف. يوفر Aspose.Words API ثلاث فئات للوصول إلى التعليمات البرمجية المصدر لمشروع VBA:

- توفر فئة [VBAProject](https://reference.aspose.com/words/net/aspose.words.vba/vbaproject/) إمكانية الوصول إلى معلومات مشروع VBA
- تقوم فئة [VBAModuleCollection](https://reference.aspose.com/words/net/aspose.words.vba/vbamodulecollection/) بإرجاع مجموعة وحدات مشروع VBA
- توفر فئة [VbaModule](https://reference.aspose.com/words/net/aspose.words.vba/vbamodule/) إمكانية الوصول إلى وحدة مشروع VBA
- يحدد تعداد [VbaModuleType](https://reference.aspose.com/words/net/aspose.words.vba/vbamoduletype/) أنواع النموذج في مشروع VBA. يمكن أن تكون الوحدة وحدة إجرائية، أو وحدة مستند، أو وحدة فئة، أو وحدة مصمم

## إنشاء مشروع VBA

يوفر Aspose.Words API خاصية [VbaProject](https://reference.aspose.com/words/net/aspose.words/document/vbaproject/) للحصول على VbaProject أو تعيينه في المستند.

يوضح مثال التعليمات البرمجية التالي كيفية إنشاء مشروع VBA ووحدة VBA مع الخصائص الأساسية، على سبيل المثال الاسم والنوع:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-CreateVbaProject.cs" >}}

## قراءة وحدات الماكرو

يوفر Aspose.Words أيضًا للمستخدمين القدرة على قراءة وحدات ماكرو VBA.

يوضح مثال التعليمات البرمجية التالي كيفية قراءة وحدات ماكرو VBA من المستند:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-ReadVbaMacros.cs" >}}

## كتابة أو تعديل وحدات الماكرو

باستخدام Aspose.Words، يمكن للمستخدمين تعديل وحدات ماكرو VBA.

يوضح مثال التعليمات البرمجية التالي كيفية تعديل وحدات ماكرو VBA باستخدام خاصية [SourceCode](https://reference.aspose.com/words/net/aspose.words.vba/vbamodule/sourcecode/):

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-ModifyVbaMacros.cs" >}}

## استنساخ مشروع VBA

باستخدام Aspose.Words، من الممكن أيضًا استنساخ مشاريع VBA.

يوضح مثال التعليمات البرمجية التالي كيفية استنساخ مشروع VBA باستخدام خاصية [Clone](https://reference.aspose.com/words/net/aspose.words.vba/vbaproject/clone/) التي تقوم بإنشاء نسخة من المشروع الحالي:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaProject.cs" >}}

## استنساخ وحدة VBA

يمكنك أيضًا استنساخ وحدات VBA إذا لزم الأمر.

يوضح مثال التعليمات البرمجية التالي كيفية استنساخ وحدة VBA باستخدام خاصية [Clone](https://reference.aspose.com/words/net/aspose.words.vba/vbamodule/clone/) التي تقوم بإنشاء نسخة من المشروع الحالي:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaModule.cs" >}}

## العمل مع مراجع مشروع VBA

يوفر Aspose.Words API فئة [VbaReferenceCollection](https://reference.aspose.com/words/net/aspose.words.vba/vbareferencecollection/) للعمل مع مراجع مشروع VBA التي تمثل مجموعة من مراجع مشروع VBA.

يوضح مثال التعليمات البرمجية التالي كيفية إزالة بعض المراجع من مجموعة المراجع من مشروع VBA:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaReferenceCollection-RemoveReferenceFromCollectionOfReferences.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaReferenceCollection-GetLibIdAndReferencePath.cs" >}}