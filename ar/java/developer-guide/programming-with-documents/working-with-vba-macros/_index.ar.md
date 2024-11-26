---
title: العمل مع VBA وحدات الماكرو في Java
second_title: Aspose.Words ل Java
articleTitle: العمل مع VBA وحدات الماكرو
linktitle: العمل مع VBA وحدات الماكرو
description: "العمل مع وثيقة VBA مشاريع باستخدام Java."
type: docs
weight: 410
url: /ar/java/working-with-vba-macros/
timestamp: 2024-01-27-14-07-04
---

Visual Basic للتطبيقات (VBA) ل Microsoft Word هي لغة برمجة بسيطة ولكنها قوية يمكن استخدامها لتوسيع الوظائف. Aspose.Words API يوفر ثلاث فئات للوصول إلى VBA شفرة مصدر المشروع:

- توفر فئة [VBAProject](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/) الوصول إلى معلومات المشروع VBA
- تقوم فئة [VBAModulesCollection](https://reference.aspose.com/words/java/com.aspose.words/vbamodulecollection/) بإرجاع مجموعة وحدات المشروع VBA
- توفر فئة [VbaModule](https://reference.aspose.com/words/java/com.aspose.words/vbamodule/) الوصول إلى وحدة المشروع VBA

## إنشاء مشروع VBA

Aspose.Words API يوفر خاصية [VbaProject](https://reference.aspose.com/words/java/com.aspose.words/document/#getVbaProject) للحصول على أو تعيين VbaProject في المستند.

يوضح مثال الكود التالي كيفية إنشاء مشروع VBA و VBA وحدة نمطية مع الخصائص الأساسية مثل الاسم والنوع:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CreateVbaProject.java" >}}

## قراءة وحدات الماكرو

Aspose.Words كما يوفر للمستخدمين القدرة على قراءة VBA وحدات الماكرو.

يوضح مثال التعليمات البرمجية التالية كيفية قراءة VBA وحدات الماكرو من المستند:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-ReadVbaMacros.java" >}}

## تعديل وحدات الماكرو

باستخدام Aspose.Words، يمكن للمستخدمين تعديل VBA وحدات الماكرو.

يوضح مثال التعليمات البرمجية التالية كيفية تعديل وحدات الماكرو VBA باستخدام الخاصية [SourceCode](https://reference.aspose.com/words/java/com.aspose.words/vbamodule/#getSourceCode):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-ModifyVbaMacros.java" >}}

## استنساخ VBA مشروع

مع Aspose.Words من الممكن أيضا استنساخ VBA المشاريع.

يوضح مثال التعليمات البرمجية التالية كيفية استنساخ المشروع VBA باستخدام الخاصية [Clone](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/#deepClone) الذي ينشئ نسخة من المشروع الحالي:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CloneVbaProject.java" >}}

## استنساخ VBA وحدة

يمكنك أيضا استنساخ VBA وحدات إذا لزم الأمر.

يوضح مثال التعليمات البرمجية التالية كيفية استنساخ وحدة VBA باستخدام الخاصية [Clone](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/#deepClone) الذي ينشئ نسخة من المشروع الحالي.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CloneVbaModule.java" >}}
