---
title: العمل مع القوائم في C++
second_title: Aspose.Words ل C++
articleTitle: العمل مع القوائم
linktitle: العمل مع القوائم
description: "مقدمة في ميزة تنسيق الترقيم في Aspose.Words ل C++."
type: docs
weight: 200
url: /ar/cpp/working-with-lists/
timestamp: 2024-01-30-16-22-34
---

قائمة في مستند Microsoft Word هي مجموعة من خصائص تنسيق القائمة. يمكن استخدام القوائم في مستنداتك لتنسيق النص وترتيبه والتأكيد عليه. تعد القوائم طريقة رائعة لتنظيم البيانات في المستندات، كما أنها تسهل على القراء فهم النقاط الرئيسية.

يمكن أن تحتوي كل قائمة على مستويات تصل إلى 9 وخصائص التنسيق، مثل نمط الرقم وقيمة البدء والمسافة البادئة وموضع علامة التبويب وما إلى ذلك يتم تعريفها بشكل منفصل لكل مستوى.

في Aspose.Words، يتم تمثيل العمل مع القوائم بمساحة الاسم [Lists](https://reference.aspose.com/words/cpp/aspose.words.lists/). ومع ذلك، فإن الكائن [List](https://reference.aspose.com/words/cpp/aspose.words.lists/list/) ينتمي دائما إلى مجموعة [ListCollection](https://reference.aspose.com/words/cpp/aspose.words.lists/listcollection/).

يصف هذا الموضوع كيفية العمل برمجيا مع القوائم باستخدام Aspose.Words.

## حدد التنسيق لمستوى القائمة

يتم إنشاء الكائنات على مستوى القائمة تلقائيا عند إنشاء قائمة. استخدم خصائص وطرق فئة [ListLevel](https://reference.aspose.com/words/cpp/aspose.words.lists/listlevel/) للتحكم في تنسيق المستويات الفردية للقائمة.

## قائمة إعادة التشغيل لكل قسم

يمكنك إعادة تشغيل قائمة لكل قسم باستخدام خاصية [IsRestartAtEachSection](https://reference.aspose.com/words/cpp/aspose.words.lists/list/get_isrestartateachsection/). لاحظ أن هذا الخيار مدعوم فقط بتنسيقات المستندات RTF و DOC و DOCX. سيتم كتابة هذا الخيار إلى DOCX فقط إذا كان OoxmlCompliance أعلى ثم إسما 376.

يوضح مثال الكود التالي كيفية إنشاء قائمة وإعادة تشغيلها لكل قسم:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-List-WorkingWithList-SetRestartAtEachSection.cpp" >}}
