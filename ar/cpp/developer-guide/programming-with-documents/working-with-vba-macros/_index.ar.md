---
title: العمل مع VBA وحدات الماكرو في C++
second_title: Aspose.Words ل C++
articleTitle: العمل مع VBA وحدات الماكرو
linktitle: العمل مع VBA وحدات الماكرو
description: "العمل مع مشاريع الوثيقة VBA باستخدام C++."
type: docs
weight: 410
url: /ar/cpp/working-with-vba-macros/
timestamp: 2024-01-30-16-22-34
---

Visual Basic للتطبيقات (VBA) ل Microsoft Word هي لغة برمجة بسيطة ولكنها قوية يمكن استخدامها لتوسيع الوظائف. Aspose.Words API يوفر ثلاث فئات للوصول إلى VBA شفرة مصدر المشروع:

- توفر فئة [VBAProject](https://reference.aspose.com/words/cpp/aspose.words.vba/vbaproject/) الوصول إلى معلومات المشروع VBA
- تقوم فئة [VBAModulesCollection](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodulecollection/) بإرجاع مجموعة وحدات المشروع VBA
- توفر فئة [VbaModule](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/) الوصول إلى وحدة المشروع VBA

## إنشاء مشروع VBA

Aspose.Words API يوفر `Document.VbaProject` خاصية للحصول على أو تعيين VbaProject في المستند.

يوضح مثال الكود التالي كيفية إنشاء مشروع VBA و VBA وحدة نمطية مع الخصائص الأساسية مثل الاسم والنوع:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-CreateVbaProject.cpp" >}}

## قراءة وحدات الماكرو

Aspose.Words كما يوفر للمستخدمين القدرة على قراءة VBA وحدات الماكرو.

يوضح مثال التعليمات البرمجية التالية كيفية قراءة VBA وحدات الماكرو من المستند:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-ReadVbaMacros.cpp" >}}

## كتابة أو تعديل وحدات الماكرو

باستخدام Aspose.Words، يمكن للمستخدمين تعديل VBA وحدات الماكرو.

يوضح مثال التعليمات البرمجية التالية كيفية تعديل وحدات الماكرو VBA باستخدام الخاصية [SourceCode](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/get_sourcecode/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-ModifyVbaMacros.cpp" >}}

## استنساخ VBA مشروع

مع Aspose.Words من الممكن أيضا استنساخ VBA المشاريع.

يوضح مثال التعليمات البرمجية التالية كيفية استنساخ المشروع VBA باستخدام الخاصية [Clone](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/clone/) الذي ينشئ نسخة من المشروع الحالي:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaProject.cpp" >}}

## استنساخ VBA وحدة

يمكنك أيضا استنساخ VBA وحدات إذا لزم الأمر.

يوضح مثال التعليمات البرمجية التالية كيفية استنساخ الوحدة النمطية VBA باستخدام الخاصية [Clone](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/clone/) التي تنشئ نسخة من المشروع الحالي:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaModule.cpp" >}}
