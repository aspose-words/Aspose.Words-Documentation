---
title: العمل مع وحدات ماكرو VBA في Python
second_title: Aspose.Words لـ Python via .NET
articleTitle: العمل مع وحدات ماكرو VBA
linktitle: العمل مع وحدات ماكرو VBA
description: "قم بإنشاء وحدات ماكرو VBA وقراءتها وكتابتها واستنساخها وإدارتها في مستند باستخدام Python."
type: docs
weight: 410
url: /ar/python-net/working-with-vba-macros/
timestamp: 2024-01-27-14-07-04
---

Visual Basic for Applications (VBA) for Microsoft Word هي لغة برمجة بسيطة ولكنها قوية يمكن استخدامها لتوسيع الوظائف. يوفر Aspose.Words API ثلاث فئات للوصول إلى التعليمات البرمجية المصدر لمشروع VBA:

- توفر فئة [VBAProject](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/) إمكانية الوصول إلى معلومات مشروع VBA
- تقوم فئة [VBAModuleCollection](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodulecollection/) بإرجاع مجموعة وحدات مشروع VBA
- توفر فئة [VbaModule](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/) إمكانية الوصول إلى وحدة مشروع VBA
- يحدد تعداد [VbaModuleType](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamoduletype/) أنواع النموذج في مشروع VBA. يمكن أن تكون الوحدة وحدة إجرائية، أو وحدة مستند، أو وحدة فئة، أو وحدة مصمم

## إنشاء مشروع VBA

يوفر Aspose.Words API خاصية [vba_project](https://reference.aspose.com/words/python-net/aspose.words/document/vba_project/) للحصول على [VbaProject](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/) أو تعيينه في المستند.

يوضح مثال التعليمات البرمجية التالي كيفية إنشاء مشروع VBA ووحدة VBA مع الخصائص الأساسية، على سبيل المثال [name](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/name/) و[type](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/type/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-CreateVbaProject.py" >}}

## قراءة وحدات الماكرو

يوفر Aspose.Words أيضًا للمستخدمين القدرة على قراءة وحدات ماكرو VBA.

يوضح مثال التعليمات البرمجية التالي كيفية قراءة وحدات ماكرو VBA من المستند:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-ReadVbaMacros.py" >}}

## كتابة أو تعديل وحدات الماكرو

باستخدام Aspose.Words، يمكن للمستخدمين تعديل وحدات ماكرو VBA.

يوضح مثال التعليمات البرمجية التالي كيفية تعديل وحدات ماكرو VBA باستخدام خاصية [source_code](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/source_code/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-ModifyVbaMacros.py" >}}

## استنساخ مشروع VBA

باستخدام Aspose.Words، من الممكن أيضًا استنساخ مشاريع VBA.

يوضح مثال التعليمات البرمجية التالي كيفية استنساخ مشروع VBA باستخدام خاصية [clone](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/clone/) التي تقوم بإنشاء نسخة من المشروع الحالي:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-CloneVbaProject.py" >}}

## استنساخ وحدة VBA

يمكنك أيضًا استنساخ وحدات VBA إذا لزم الأمر.

يوضح مثال التعليمات البرمجية التالي كيفية استنساخ وحدة VBA باستخدام خاصية [clone](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/clone/) التي تقوم بإنشاء نسخة من المشروع الحالي:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-CloneVbaModule.py" >}}

## العمل مع مراجع مشروع VBA

يوفر Aspose.Words API فئة [VbaReferenceCollection](https://reference.aspose.com/words/python-net/aspose.words.vba/vbareferencecollection/) للعمل مع مراجع مشروع VBA التي تمثل مجموعة من مراجع مشروع VBA.

يوضح مثال التعليمات البرمجية التالي كيفية إزالة بعض المراجع من مجموعة المراجع من مشروع VBA:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-RemoveReferenceFromCollectionOfReferences.py" >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-GetLibIdAndReferencePath.py" >}}
