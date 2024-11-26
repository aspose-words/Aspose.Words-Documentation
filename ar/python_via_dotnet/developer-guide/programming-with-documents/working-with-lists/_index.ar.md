---
title: العمل مع القوائم في Python
second_title: Aspose.Words لـ Python via .NET
articleTitle: العمل مع القوائم
linktitle: العمل مع القوائم
description: "إنشاء القوائم وتحديد التنسيق وإعادة تشغيلها في مستند باستخدام Python."
type: docs
weight: 200
url: /ar/python-net/working-with-lists/
timestamp: 2024-01-27-14-07-04
---

القائمة في مستند Microsoft Word هي مجموعة من خصائص تنسيق القائمة. يمكن استخدام القوائم في مستنداتك لتنسيق النص وترتيبه وإبرازه. تعد القوائم طريقة رائعة لتنظيم البيانات في المستندات، وتسهل على القراء فهم النقاط الأساسية

يمكن أن تحتوي كل قائمة على ما يصل إلى 9 مستويات ويتم تحديد خصائص التنسيق، مثل نمط الأرقام وقيمة البداية والمسافة البادئة وموضع علامة التبويب وما إلى ذلك بشكل منفصل لكل مستوى.

في Aspose.Words، يتم تمثيل العمل مع القوائم بواسطة وحدة [Lists](https://reference.aspose.com/words/python-net/aspose.words.lists/). ومع ذلك، ينتمي كائن [List](https://reference.aspose.com/words/python-net/aspose.words.lists/list/) دائمًا إلى مجموعة [ListCollection](https://reference.aspose.com/words/python-net/aspose.words.lists/listcollection/).

يصف هذا الموضوع كيفية العمل برمجيًا مع القوائم باستخدام Aspose.Words

## إنشاء قوائم عن طريق تطبيق تنسيق القائمة

يتيح Aspose.Words إنشاء القوائم بسهولة من خلال تطبيق تنسيق القائمة. يوفر [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) خاصية [DocumentBuilder.list_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/list_format/) التي تقوم بإرجاع كائن [ListFormat](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/). يحتوي هذا الكائن على عدة طرق لبدء القائمة وإنهائها ولزيادة/تقليل المسافة البادئة. هناك نوعان عامان من القوائم في Microsoft Word: نقطية ومرقمة.

- لبدء قائمة ذات تعداد نقطي، اتصل بـ [ListFormat.apply_bullet_default](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_bullet_default/).
- لبدء قائمة مرقمة، اتصل بـ [ListFormat.apply_number_default](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_number_default/).

تتم إضافة الرمز النقطي أو الرقم والتنسيق إلى الفقرة الحالية وجميع الفقرات الأخرى التي تم إنشاؤها باستخدام [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) حتى يتم استدعاء [ListFormat.remove_numbers](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/remove_numbers/) لإيقاف تنسيق القائمة ذات التعداد النقطي.

في مستندات Word، قد تتكون القوائم من تسعة مستويات كحد أقصى. يحدد تنسيق القائمة لكل مستوى التعداد النقطي أو الرقم المستخدم، والمسافة البادئة اليسرى، والمسافة بين التعداد النقطي والنص وما إلى ذلك. تعمل الطرق التالية على تغيير مستوى القائمة وتطبيق خصائص تنسيق المستوى الجديد:

- لزيادة مستوى القائمة للفقرة الحالية بمستوى واحد، اتصل بـ [ListFormat.list_indent](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/list_indent/)
- لتقليل مستوى القائمة للفقرة الحالية بمقدار مستوى واحد، اتصل بـ [ListFormat.list_outdent](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/list_outdent/)

تقوم الأساليب بتغيير مستوى القائمة وتطبيق خصائص التنسيق للمستوى الجديد.

{{% alert color="primary" %}}

يمكنك أيضًا استخدام خاصية [ListFormat.list_level_number](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/list_level_number/) للحصول على مستوى القائمة للفقرة أو تعيينه. يتم ترقيم مستويات القائمة من 0 إلى 8.

{{% /alert %}}

يوضح المثال أدناه كيفية إنشاء قائمة متعددة المستويات.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-MultilevelListFormatting.py" >}}

## تحديد التنسيق لمستوى القائمة

يتم إنشاء الكائنات على مستوى القائمة تلقائيًا عند إنشاء القائمة. استخدم خصائص وأساليب فئة [ListLevel](https://reference.aspose.com/words/python-net/aspose.words.lists/listlevel/) للتحكم في تنسيق المستويات الفردية للقائمة.

## إعادة تشغيل القائمة لكل قسم

يمكنك إعادة تشغيل قائمة لكل قسم باستخدام خاصية [خاصية is_restart_at_each_section](https://reference.aspose.com/words/python-net/aspose.words.lists/list/is_restart_at_each_section/). لاحظ أن هذا الخيار مدعوم فقط بتنسيقات المستندات RTF وDOC وDOCX. ستتم كتابة هذا الخيار في DOCX فقط إذا كان OoxmlCompliance أعلى من Ecma376.

يوضح مثال التعليمات البرمجية التالي كيفية إنشاء قائمة وإعادة تشغيلها لكل قسم:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_list-RestartListAtEachSection.py" >}}
