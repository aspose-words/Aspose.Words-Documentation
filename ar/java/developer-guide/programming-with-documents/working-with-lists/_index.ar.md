---
title: العمل مع القوائم في Java
second_title: Aspose.Words ل Java
articleTitle: العمل مع القوائم
linktitle: العمل مع القوائم
description: "مقدمة في ميزة تنسيق الترقيم في Aspose.Words لـ Java."
type: docs
weight: 200
url: /ar/java/working-with-lists/
timestamp: 2024-01-27-14-07-04
---

قائمة في مستند Microsoft Word هي مجموعة من خصائص تنسيق القائمة. يمكن استخدام القوائم في مستنداتك لتنسيق النص وترتيبه والتأكيد عليه. تعد القوائم طريقة رائعة لتنظيم البيانات في المستندات، كما أنها تسهل على القراء فهم النقاط الرئيسية.

يمكن أن تحتوي كل قائمة على ما يصل إلى 9 مستويات وخصائص التنسيق، مثل نمط الرقم وقيمة البدء والمسافة البادئة وموضع علامة التبويب وغيرها يتم تعريفها بشكل منفصل لكل مستوى.

توضح هذه المقالة العمل برمجيا مع القوائم باستخدام Aspose.Words.

## إنشاء قوائم عن طريق تطبيق تنسيق القائمة

Aspose.Words يسمح بإنشاء القوائم بسهولة من خلال تطبيق تنسيق القائمة. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) يوفر خاصية [ListFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getListFormat) التي ترجع كائن **ListFormat**. يحتوي هذا الكائن على عدة طرق لبدء وإنهاء قائمة وزيادة / تقليل المسافة البادئة. هناك نوعان عامان من القوائم في Microsoft Word: نقطية ومرقمة:

- لبدء قائمة نقطية، اتصل [ListFormat.ApplyBulletDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyBulletDefault)
- لبدء قائمة مرقمة، اتصل [ListFormat.ApplyNumberDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyNumberDefault)

تتم إضافة التعداد النقطي أو الرقم والتنسيق إلى الفقرة الحالية وجميع الفقرات الأخرى التي تم إنشاؤها باستخدام **DocumentBuilder** حتى [RemoveNumbers](https://reference.aspose.com/words/java/com.aspose.words/listformat/#removeNumbers) يتم استدعاؤه لإيقاف تنسيق القائمة النقطية.

في مستندات ورد، قد تتكون القوائم من تسعة مستويات. يحدد تنسيق القائمة لكل مستوى الرمز النقطي أو الرقم المستخدم، والمسافة البادئة اليسرى، والمسافة بين الرمز النقطي والنص وما إلى ذلك. تقوم الطرق التالية بتغيير مستوى القائمة وتطبيق خصائص تنسيق المستوى الجديد:

- لزيادة مستوى قائمة الفقرة الحالية بمستوى واحد، اتصل [ListFormat.ListIndent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listIndent)
- لتقليل مستوى قائمة الفقرة الحالية بمستوى واحد، اتصل [ListFormat.ListOutdent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listOutdent)

تقوم الطرق بتغيير مستوى القائمة وتطبيق خصائص التنسيق للمستوى الجديد.

{{% alert color="primary" %}}

يمكنك أيضا استخدام خاصية [ListLevelNumber](https://reference.aspose.com/words/java/com.aspose.words/listformat/#getListLevelNumber) للحصول على مستوى القائمة للفقرة أو تعيينه. يتم ترقيم مستويات القائمة من 0 إلى 8.

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالية كيفية إنشاء قائمة متعددة المستويات:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetMultilevelListFormatting-DocumentBuilderSetMultilevelListFormatting.java" >}}

## حدد التنسيق لمستوى القائمة

يتم إنشاء الكائنات على مستوى القائمة تلقائيا عند إنشاء قائمة. استخدم خصائص وطرق فئة [ListLevel](https://reference.aspose.com/words/java/com.aspose.words/listlevel/) للتحكم في تنسيق المستويات الفردية للقائمة.

## قائمة إعادة التشغيل لكل قسم

يمكنك إعادة تشغيل قائمة لكل قسم باستخدام خاصية [IsRestartAtEachSection](https://reference.aspose.com/words/java/com.aspose.words/list/#isRestartAtEachSection). لاحظ أن هذا الخيار مدعوم فقط بتنسيقات المستندات RTF و DOC و DOCX. سيتم كتابة هذا الخيار إلى DOCX فقط إذا كان OoxmlCompliance أعلى ثم إسما 376.

يوضح مثال الكود التالي كيفية إنشاء قائمة وإعادة تشغيلها لكل قسم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Lists-WorkingWithList-SetRestartAtEachSection.java" >}}

