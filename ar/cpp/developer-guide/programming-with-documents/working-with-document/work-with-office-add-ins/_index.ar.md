---
title: العمل مع مكتب الوظائف الإضافية في C++
second_title: Aspose.Words ل C++
articleTitle: العمل مع مكتب الوظائف الإضافية
linktitle: العمل مع مكتب الوظائف الإضافية
description: "Aspose.Words ل C++ يوفر فئات مختلفة للعمل مع الوظائف الإضافية المكتبية. يمكنك إضافة جزء المهام عبر ملحق الويب وتخصيص خصائص الجزء والإرشاد."
type: docs
weight: 50
url: /ar/cpp/work-with-office-add-ins/
---

في بعض الأحيان قد ترغب في منح حق الوصول إلى عناصر التحكم في الواجهة التي تقوم بتشغيل التعليمات البرمجية لتعديل المستندات. Aspose.Words API يوفر `WebExtensions` مساحة الاسم، والتي تمنح فئات مختلفة لتخصيص العناصر والسمات التي توسع XML المفردات لتمثيل الوظائف الإضافية للمكتب.

WebExtensions يمكن تقسيم مساحة الاسم بشكل مشروط إلى:

* كائنات للعمل مع جزء المهام
* كائنات للعمل مع ملحقات الويب

## استخدام أجزاء المهام

أجزاء المهام هي أسطح واجهة يتم عرضها على الجانب الأيمن من النافذة في Microsoft Word. يسمح جزء المهام للمستخدمين بالوصول إلى عناصر التحكم في الواجهة التي يمكنها تشغيل التعليمات البرمجية لتعديل المستندات.

على سبيل المثال، باستخدام Aspose.Words API، يمكنك إضافة وظيفة إضافية لجزء المهام وتخصيص مظهره.

## استخدام ملحقات الويب

ملحقات الويب هي أدوات تعمل على توسيع إمكانيات تطبيقات المكتب والتفاعل مع محتوى مستند المكتب. توفر ملحقات الويب وظائف إضافية لعملاء المكتب لتحسين تجربة المستخدم.

Aspose.Words يوفر القدرة على إضافة ملحقات الويب من نوع جزء المهام باستخدام [WebExtension](https://reference.aspose.com/words/cpp/aspose.words.webextensions/webextension/) و [TaskPane](https://reference.aspose.com/words/cpp/aspose.words.webextensions/taskpane/) الطبقات، ويسمح لك أيضا لتخصيص خصائص جزء والإرشاد.

يوضح مثال التعليمات البرمجية التالية كيفية إنشاء أجزاء المهام والإضافة إلى أجزاء مهام امتداد الويب ذات الخصائص الأساسية:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithWebExtension-UsingWebExtensionTaskPanes.cpp" >}}

لرؤية قائمة الوظائف الإضافية لجزء المهام، استخدم الخاصية [WebExtensionTaskPanes](https://reference.aspose.com/words/cpp/aspose.words/document/get_webextensiontaskpanes/).

يوضح مثال الكود التالي كيفية الحصول على قائمة الوظائف الإضافية هذه:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithWebExtension-GetListOfAddins.cpp" >}}
