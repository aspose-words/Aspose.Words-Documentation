---
title: العمل مع القوائم في C#
second_title: Aspose.Words لـ .NET
articleTitle: العمل مع القوائم
linktitle: العمل مع القوائم
description: "مقدمة إلى ميزة تنسيق الترقيم في Aspose.Words لـ .NET."
type: docs
weight: 200
url: /ar/net/working-with-lists/
timestamp: 2024-01-27-14-07-04
---

القائمة في مستند Microsoft Word هي مجموعة من خصائص تنسيق الفقرة. يمكن استخدام القوائم في المستندات لتنظيم النص وترتيبه وتمييزه. تعد القوائم طريقة رائعة لتنظيم البيانات في المستندات بطريقة تسهل على القراء استيعاب النقاط الرئيسية وفهمها.

يمكن أن تحتوي كل قائمة على ما يصل إلى 9 مستويات، ويتم تحديد خصائص التنسيق مثل نمط الأرقام وقيمة البداية والمسافة البادئة وموضع علامة التبويب وغيرها بشكل منفصل لكل مستوى.

في Aspose.Words، يتم تمثيل العمل مع القوائم بمساحة الاسم [Lists](https://reference.aspose.com/words/ar/net/aspose.words.lists/). ومع ذلك، ينتمي كائن [List](https://reference.aspose.com/words/ar/net/aspose.words.lists/list/) دائمًا إلى [ListCollection](https://reference.aspose.com/words/ar/net/aspose.words.lists/listcollection/).

توضح هذه المقالة العمل برمجيًا مع القوائم باستخدام Aspose.Words.

## إنشاء قوائم عن طريق تطبيق تنسيق القائمة

يتيح Aspose.Words إنشاء القوائم بسهولة من خلال تطبيق تنسيق القائمة. يوفر [DocumentBuilder](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/) خاصية [ListFormat](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/listformat/) التي تقوم بإرجاع كائن **ListFormat**. يحتوي هذا الكائن على عدة طرق لبدء القائمة وإنهائها ولزيادة/تقليل المسافة البادئة. هناك نوعان عامان من القوائم في Microsoft Word: نقطية ومرقمة:

- لبدء قائمة ذات تعداد نقطي، اتصل بـ [ApplyBulletDefault](https://reference.aspose.com/words/ar/net/aspose.words.lists/listformat/applybulletdefault/)
- لبدء قائمة مرقمة، اتصل بـ [ApplyNumberDefault](https://reference.aspose.com/words/ar/net/aspose.words.lists/listformat/applynumberdefault/)

تتم إضافة الرمز النقطي أو الرقم والتنسيق إلى الفقرة الحالية وجميع الفقرات الأخرى التي تم إنشاؤها باستخدام **DocumentBuilder** حتى يتم استدعاء [RemoveNumbers](https://reference.aspose.com/words/ar/net/aspose.words.lists/listformat/removenumbers/) لإيقاف تنسيق القائمة ذات التعداد النقطي.

في مستندات Word، قد تتكون القوائم من تسعة مستويات كحد أقصى. يحدد تنسيق القائمة لكل مستوى التعداد النقطي أو الرقم المستخدم، والمسافة البادئة اليسرى، والمسافة بين التعداد النقطي والنص وما إلى ذلك. تعمل الطرق التالية على تغيير مستوى القائمة وتطبيق خصائص تنسيق المستوى الجديد:

- لزيادة مستوى القائمة للفقرة الحالية بمستوى واحد، اتصل بـ [ListIndent](https://reference.aspose.com/words/ar/net/aspose.words.lists/listformat/listindent/)
- لتقليل مستوى القائمة للفقرة الحالية بمقدار مستوى واحد، اتصل بـ [ListOutdent](https://reference.aspose.com/words/ar/net/aspose.words.lists/listformat/listoutdent/)

يمكنك أيضًا استخدام خاصية [ListLevelNumber](https://reference.aspose.com/words/ar/net/aspose.words.lists/listformat/listlevelnumber/) للحصول على مستوى القائمة للفقرة أو تعيينه.

{{% alert color="primary" %}}

يتم ترقيم مستويات القائمة من 0 إلى 8.

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالي كيفية إنشاء قائمة متعددة المستويات:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetMultilevelListFormatting.cs" >}}

## تحديد التنسيق لمستوى القائمة

يتم إنشاء الكائنات على مستوى القائمة تلقائيًا عند إنشاء القائمة. استخدم خصائص وأساليب فئة [ListLevel](https://reference.aspose.com/words/ar/net/aspose.words.lists/listlevel/) للتحكم في تنسيق المستويات الفردية للقائمة.

## إعادة تشغيل القائمة لكل قسم

يمكنك إعادة تشغيل قائمة لكل قسم باستخدام خاصية [IsRestartAtEachSection](https://reference.aspose.com/words/ar/net/aspose.words.lists/list/isrestartateachsection/). لاحظ أن هذا الخيار مدعوم فقط بتنسيقات المستندات RTF وDOC وDOCX. ستتم كتابة هذا الخيار في DOCX فقط إذا كان OoxmlCompliance أعلى من Ecma376.

يوضح مثال التعليمات البرمجية التالي كيفية إنشاء قائمة وإعادة تشغيلها لكل قسم:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-List-WorkingWithList-SetRestartAtEachSection.cs" >}}
