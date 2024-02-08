---
title: العمل مع وظائف Office الإضافية في C#
second_title: Aspose.Words لـ .NET
articleTitle: العمل مع وظائف Office الإضافية
linktitle: العمل مع وظائف Office الإضافية
description: "يوفر Aspose.Words for .NET فئات متنوعة للعمل مع وظائف Office الإضافية باستخدام C#. يمكنك إضافة جزء المهام عبر ملحق الويب وتخصيص خصائص الجزء والامتداد."
type: docs
weight: 50
url: /ar/net/work-with-office-add-ins/
---

في بعض الأحيان قد ترغب في منح حق الوصول إلى عناصر تحكم الواجهة التي تقوم بتشغيل التعليمات البرمجية لتعديل المستندات. يوفر Aspose.Words API مساحة اسم `WebExtensions`، التي تمنح فئات مختلفة لتخصيص العناصر والسمات لتوسيع مفردات XML لتمثيل وظائف Office الإضافية.

يمكن تقسيم مساحة الاسم WebExtensions بشكل مشروط إلى:

* كائنات للعمل مع جزء المهام
* كائنات للعمل مع ملحقات الويب

## استخدام أجزاء المهام

أجزاء المهام عبارة عن أسطح واجهة يتم عرضها على الجانب الأيمن من النافذة في Microsoft Word. يتيح جزء المهام للمستخدمين الوصول إلى عناصر تحكم الواجهة التي يمكنها تشغيل التعليمات البرمجية لتعديل المستندات.

على سبيل المثال، باستخدام Aspose.Words API، يمكنك إضافة وظيفة إضافية لجزء المهام وتخصيص مظهرها.

## استخدام ملحقات الويب

ملحقات الويب هي أدوات تعمل على توسيع إمكانيات تطبيقات Office والتفاعل مع محتوى مستند Office. توفر ملحقات الويب وظائف إضافية لعملاء Office لتحسين تجربة المستخدم.

يوفر Aspose.Words القدرة على إضافة ملحقات الويب من نوع جزء المهام باستخدام فئتي [WebExtension](https://reference.aspose.com/words/net/aspose.words.webextensions/webextension/) و[TaskPane](https://reference.aspose.com/words/net/aspose.words.webextensions/taskpane/)، كما يسمح لك بتخصيص الجزء وخصائص الامتداد.

يوضح مثال التعليمات البرمجية التالي كيفية إنشاء أجزاء المهام وإضافتها إلى أجزاء مهام ملحق الويب ذات الخصائص الأساسية:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-WebExtensions-WorkingWithWebExtension-UsingWebExtensionTaskPanes.cs" >}}

لرؤية قائمة الوظائف الإضافية لجزء المهام، استخدم خاصية [WebExtensionTaskPanes](https://reference.aspose.com/words/net/aspose.words/document/webextensiontaskpanes/).

يوضح مثال التعليمات البرمجية التالي كيفية الحصول على قائمة الوظائف الإضافية هذه:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Working with WebExtension-GetListOfAddins.cs" >}}
