---
title: العمل مع الأعمدة والصفوف في C#
second_title: Aspose.Words لـ .NET
articleTitle: العمل مع الأعمدة والصفوف
linktitle: العمل مع الأعمدة والصفوف
description: "العمل مع أجزاء من الجدول – الصفوف والأعمدة والخلايا باستخدام C#. حدد صف الرأس C#."
type: docs
weight: 30
url: /ar/net/working-with-columns-and-rows/
timestamp: 2024-01-27-14-07-04
---

لمزيد من التحكم في كيفية عمل الجداول، تعرف على كيفية التعامل مع الأعمدة والصفوف.

## ابحث عن فهرس عناصر الجدول {#find-the-index-of-table-elements}

تتم إدارة الأعمدة والصفوف والخلايا عن طريق الوصول إلى عقدة المستند المحددة من خلال فهرسها. يتضمن العثور على فهرس أي عقدة جمع كل العقد الفرعية لنوع العنصر من العقدة الأصلية، ثم استخدام طريقة [IndexOf](https://reference.aspose.com/words/ar/net/aspose.words/nodecollection/indexof/) للعثور على فهرس العقدة المطلوبة في المجموعة.

### ابحث عن فهرس الجدول في مستند {#find-the-index-of-table-in-a-document}

في بعض الأحيان قد تحتاج إلى إجراء تغييرات على جدول معين في المستند. للقيام بذلك، يمكنك الرجوع إلى الجدول حسب فهرسه.

يوضح مثال التعليمات البرمجية التالي كيفية استرداد فهرس جدول في مستند:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "retrieve-table-index.cs" >}}

### ابحث عن فهرس الصف في جدول {#find-the-index-of-a-row-in-a-table}

وبالمثل، قد تحتاج إلى إجراء تغييرات على صف معين في جدول محدد. للقيام بذلك، يمكنك أيضًا الإشارة إلى صف حسب فهرسه.

يوضح مثال التعليمات البرمجية التالي كيفية استرداد فهرس صف في جدول:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "retrieve-row-index.cs" >}}

### ابحث عن فهرس الخلية في صف {#find-the-index-of-a-cell-in-a-row}

أخيرًا، قد تحتاج إلى إجراء تغييرات على خلية معينة، ويمكنك القيام بذلك عن طريق فهرس الخلايا أيضًا.

يوضح مثال التعليمات البرمجية التالي كيفية استرداد فهرس خلية في صف واحد:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "retrieve-cell-index.cs" >}}

## العمل مع الأعمدة {#work-with-columns}

في Aspose.Words Document Object Model (DOM)، تتكون عقدة [Table](https://reference.aspose.com/words/ar/net/aspose.words.tables/table/) من عقد [Row](https://reference.aspose.com/words/ar/net/aspose.words.tables/row/) ثم عقد [Cell](https://reference.aspose.com/words/ar/net/aspose.words.tables/cell/). وبالتالي، في نموذج كائن `Document` الخاص بـ Aspose.Words، كما هو الحال في مستندات Word، لا يوجد مفهوم للعمود.

حسب التصميم، تكون صفوف الجدول في Microsoft Word وAspose.Words مستقلة تمامًا، ويتم تضمين الخصائص والعمليات الأساسية فقط في صفوف وخلايا الجدول. وهذا يمنح الجداول القدرة على الحصول على بعض السمات المثيرة للاهتمام:

- يمكن أن يحتوي كل صف في الجدول على عدد مختلف تمامًا من الخلايا
- عموديًا، يمكن أن يكون لخلايا كل صف عرض مختلف
- من الممكن ضم الجداول بتنسيقات صفوف مختلفة وعدد الخلايا

أي عمليات يتم إجراؤها على الأعمدة هي في الواقع "اختصارات" تنفذ العملية عن طريق تغيير خلايا الصفوف بشكل جماعي بطريقة تبدو وكأنها مطبقة على الأعمدة. أي أنه يمكنك تنفيذ العمليات على الأعمدة ببساطة عن طريق التكرار على نفس فهرس خلايا صف الجدول.

يبسط مثال التعليمات البرمجية التالي مثل هذه العمليات عن طريق إثبات فئة الواجهة التي تجمع الخلايا التي تشكل "عمودًا" في الجدول:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "column-class.cs" >}}

يوضح مثال التعليمات البرمجية التالي كيفية إدراج عمود فارغ في جدول:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "insert-blank-column.cs" >}}

يوضح مثال التعليمات البرمجية التالي كيفية إزالة عمود من جدول في مستند:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "remove-column.cs" >}}

## تحديد الصفوف كصفوف رأس

يمكنك اختيار تكرار الصف الأول في الجدول كصف الرأس فقط في الصفحة الأولى أو في كل صفحة إذا تم تقسيم الجدول إلى عدة صفحات. في Aspose.Words، يمكنك تكرار صف الرأس في كل صفحة باستخدام خاصية [HeadingFormat](https://reference.aspose.com/words/ar/net/aspose.words.tables/rowformat/headingformat/).

يمكنك أيضًا وضع علامة على صفوف رؤوس متعددة إذا كانت هذه الصفوف موجودة واحدة تلو الأخرى في بداية الجدول. للقيام بذلك، تحتاج إلى تطبيق خصائص **HeadingFormat** على هذه الصفوف.

{{% alert color="primary" %}}

لاحظ أن صفوف الرؤوس لا تعمل في الجداول المتداخلة. أي أنه إذا كان لديك جدول داخل جدول آخر، فلن يكون لهذا الإعداد أي تأثير. إنه أحد قيود Microsoft Word التي لا تسمح بذلك، وليس Aspose.Words.

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالي كيفية إنشاء جدول يتضمن صفوف الرؤوس التي تتكرر في الصفحات اللاحقة:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "repeat-rows-on-subsequent-pages.cs" >}}

## منع الجداول والصفوف من الاختراق عبر صفحات {#keep-tables-and-rows-from-breaking-across-pages}

هناك أوقات لا ينبغي فيها تقسيم محتويات الجدول عبر الصفحات. على سبيل المثال، إذا كان العنوان أعلى الجدول، فيجب دائمًا الاحتفاظ بالعنوان والجدول معًا في نفس الصفحة للحفاظ على المظهر المناسب.

هناك طريقتان منفصلتان مفيدتان لتحقيق هذه الوظيفة:

- `Allow row break across pages`، والذي يتم تطبيقه على صفوف الجدول
- `Keep with next`، والذي يتم تطبيقه على الفقرات في خلايا الجدول

بشكل افتراضي، يتم تعطيل الخصائص المذكورة أعلاه.

### منع الصف من الاختراق عبر صفحات {#keep-a-row-from-breaking-across-pages}

يتضمن ذلك تقييد المحتوى الموجود داخل خلايا الصف من الانقسام عبر الصفحة. في Microsoft Word، يمكن العثور على هذا ضمن خصائص الجدول كخيار "السماح للصف بالتقاطع بين الصفحات". في Aspose.Words، تم العثور على هذا ضمن كائن [RowFormat](https://reference.aspose.com/words/ar/net/aspose.words.tables/rowformat/) الخاص بـ [Row](https://reference.aspose.com/words/ar/net/aspose.words.tables/row/) كخاصية [RowFormat.AllowBreakAcrossPages](https://reference.aspose.com/words/ar/net/aspose.words.tables/row/format/properties/allowbreakacrosspages).

يوضح مثال التعليمات البرمجية التالي كيفية تعطيل تقسيم الصفوف عبر الصفحات لكل صف في الجدول:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "row-format-disable-break-across-pages.cs" >}}

{{% alert color="primary" %}}

يمكنك تنزيل الملف النموذجي لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20spanning%20two%20pages.docx).

{{% /alert %}}

### منع الجدول من الاختراق عبر صفحات {#keep-a-table-from-breaking-across-pages}

لمنع تقسيم الجدول عبر الصفحات، نحتاج إلى تحديد أننا نريد أن يظل المحتوى الموجود داخل الجدول معًا.

للقيام بذلك، يستخدم Aspose.Words طريقة تسمح للمستخدمين بتحديد جدول وتمكين معلمة [KeepWithNext](https://reference.aspose.com/words/ar/net/aspose.words/paragraphformat/keepwithnext/) إلى true لكل فقرة داخل خلايا الجدول. الاستثناء هو الفقرة الأخيرة في الجدول، والتي يجب تعيينها على false.

يوضح مثال التعليمات البرمجية التالي كيفية تعيين جدول ليبقى معًا في نفس الصفحة:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "keep-table-together.cs" >}}

{{% alert color="primary" %}}

يمكنك تنزيل الملف النموذجي لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20spanning%20two%20pages.docx).

{{% /alert %}}
