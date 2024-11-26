---
title: العمل مع التحكم في المحتوى SDT
second_title: Aspose.Words ل C++
articleTitle: العمل مع التحكم في المحتوى SDT
linktitle: العمل مع التحكم في المحتوى SDT
type: docs
description: "إدارة محتوى المستندات المتقدمة، وكيفية إنشاء عناصر تحكم المحتوى ومعالجتها (علامات المستندات المنظمة) باستخدام C++."
weight: 390
url: /ar/cpp/structured-document-tags-or-content-control/
timestamp: 2024-01-27-14-07-04
---

في Microsoft Word، يمكنك إنشاء نموذج عن طريق البدء بقالب وإضافة عناصر تحكم المحتوى، بما في ذلك خانات الاختيار ومربعات النص وجامعي التاريخ والقوائم المنسدلة. في Aspose.Words، يتم استيراد علامة مستند منظم أو عنصر تحكم في المحتوى من أي مستند تم تحميله في Aspose.Words كعقدة StructuredDocumentTag. تسمح علامات المستندات المنظمة (SDT أو التحكم في المحتوى) بتضمين الدلالات المحددة من قبل العميل بالإضافة إلى سلوكها ومظهرها في مستند. StructuredDocumentTag يمكن أن يحدث في مستند في الأماكن التالية:

- مستوى الكتلة-بين الفقرات والجداول، كطفل لجسم، HeaderFooter، تعليق، حاشية سفلية أو عقدة شكل
- مستوى الصف-بين الصفوف في الجدول، كطفل لعقدة الجدول
- مستوى الخلية - بين الخلايا في صف جدول، كطفل لعقدة صف
- المستوى المضمن-بين المحتوى المضمن في الداخل، كطفل لفقرة
- متداخلة داخل آخر StructuredDocumentTag

## كيفية تعيين نمط لتنسيق النص المكتوب في عنصر تحكم المحتوى

إذا كنت تريد تعيين نمط التحكم في المحتوى، فيمكنك استخدام خصائص `StructuredDocumentTag.Style` أو `StructuredDocumentTag.StyleName`. عند كتابة النص في عنصر تحكم المحتوى في مستند الإخراج، سيكون للنص المكتوب نمط "اقتباس".

{{% alert color="primary" %}}

لاحظ أنه يمكن تطبيق أنماط الأحرف المرتبطة فقط على التحكم في المحتوى. يتم طرح InvalidOperationException ("لا يمكن تطبيق هذا النمط على SDT") عند تطبيق نمط موجود ولكنه غير مرتبط أو يتم تطبيق نمط الحرف.

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالية كيفية تعيين نمط التحكم في المحتوى:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-SetContentControlStyle.cpp" >}}

## العمل مع التحكم في محتوى القسم المتكرر

يسمح التحكم في محتوى قسم التكرار بتكرار المحتوى الموجود بداخله. باستخدام Aspose.Words، يمكن إنشاء عقد علامة المستند المهيكلة لقسم التكرار وأنواع عناصر القسم المتكرر ولهذا الغرض، يوفر نوع التعداد SdtType خاصية **RepeatingSectionItem**.

يوضح مثال التعليمات البرمجية التالية كيفية ربط عنصر تحكم محتوى مقطع مكرر بجدول:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-CreatingTableRepeatingSectionMappedToCustomXmlPart.cpp" >}}
