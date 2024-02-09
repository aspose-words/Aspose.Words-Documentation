---
title: العمل مع الأعمدة والصفوف
second_title: Aspose.Words لـ Python via .NET
articleTitle: العمل مع الأعمدة والصفوف
linktitle: العمل مع الأعمدة والصفوف
description: "العمل مع أجزاء من الجدول – الصفوف والأعمدة والخلايا باستخدام Python. حدد صف الرأس Python."
type: docs
weight: 30
url: /ar/python-net/working-with-columns-and-rows/
---

لمزيد من التحكم في كيفية عمل الجداول، تعرف على كيفية التعامل مع الأعمدة والصفوف.

## العثور على فهرس عناصر الجدول

تتم إدارة الأعمدة والصفوف والخلايا عن طريق الوصول إلى عقدة المستند المحددة من خلال فهرسها. يتضمن العثور على فهرس أي عقدة جمع كل العقد الفرعية لنوع العنصر من العقدة الأصلية، ثم استخدام طريقة [IndexOf](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/index_of/) للعثور على فهرس العقدة المطلوبة في المجموعة.

### العثور على فهرس جدول في مستند

في بعض الأحيان قد تحتاج إلى إجراء تغييرات على جدول معين في المستند. للقيام بذلك، يمكنك الرجوع إلى الجدول حسب فهرسه.

يوضح مثال التعليمات البرمجية التالي كيفية استرداد فهرس جدول في مستند:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "retrieve-table-index.py" >}}

### العثور على فهرس الصف في الجدول

وبالمثل، قد تحتاج إلى إجراء تغييرات على صف معين في جدول محدد. للقيام بذلك، يمكنك أيضًا الإشارة إلى صف حسب فهرسه.

يوضح مثال التعليمات البرمجية التالي كيفية استرداد فهرس صف في جدول:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "retrieve-row-index.py" >}}

### العثور على فهرس خلية في صف واحد

أخيرًا، قد تحتاج إلى إجراء تغييرات على خلية معينة، ويمكنك القيام بذلك عن طريق فهرس الخلايا أيضًا.

يوضح مثال التعليمات البرمجية التالي كيفية استرداد فهرس خلية في صف واحد:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "retrieve-cell-index.py" >}}

## العمل مع الأعمدة

في Aspose.Words Document Object Model (DOM)، تتكون عقدة [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) من عقد [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) ثم عقد [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/). وبالتالي، في نموذج كائن `Document` الخاص بـ Aspose.Words، كما هو الحال في مستندات Word، لا يوجد مفهوم للعمود.

حسب التصميم، تكون صفوف الجدول في Microsoft Word وAspose.Words مستقلة تمامًا، ويتم تضمين الخصائص والعمليات الأساسية فقط في صفوف وخلايا الجدول. وهذا يمنح الجداول القدرة على الحصول على بعض السمات المثيرة للاهتمام:

- يمكن أن يحتوي كل صف في الجدول على عدد مختلف تمامًا من الخلايا
- عموديًا، يمكن أن يكون لخلايا كل صف عرض مختلف
- من الممكن ضم الجداول بتنسيقات صفوف مختلفة وعدد الخلايا

أي عمليات يتم إجراؤها على الأعمدة هي في الواقع "اختصارات" تنفذ العملية عن طريق تغيير خلايا الصفوف بشكل جماعي بطريقة تبدو وكأنها مطبقة على الأعمدة. أي أنه يمكنك تنفيذ العمليات على الأعمدة ببساطة عن طريق التكرار على نفس فهرس خلايا صف الجدول.

يبسط مثال التعليمات البرمجية التالي مثل هذه العمليات عن طريق إثبات فئة الواجهة التي تجمع الخلايا التي تشكل "عمودًا" في الجدول:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "column-class.py" >}}

يوضح مثال التعليمات البرمجية التالي كيفية إدراج عمود فارغ في جدول:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "insert-blank-column.py" >}}

يوضح مثال التعليمات البرمجية التالي كيفية إزالة عمود من جدول في مستند:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "remove-column.py" >}}

## تحديد الصفوف كصفوف رأس

يمكنك اختيار تكرار الصف الأول في الجدول كصف الرأس فقط في الصفحة الأولى أو في كل صفحة إذا تم تقسيم الجدول إلى عدة صفحات. في Aspose.Words، يمكنك تكرار صف الرأس في كل صفحة باستخدام خاصية [HeadingFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/heading_format/).

يمكنك أيضًا وضع علامة على صفوف رؤوس متعددة إذا كانت هذه الصفوف موجودة واحدة تلو الأخرى في بداية الجدول. للقيام بذلك، تحتاج إلى تطبيق خصائص **HeadingFormat** على هذه الصفوف.

{{% alert color="primary" %}}

لاحظ أن صفوف الرؤوس لا تعمل في الجداول المتداخلة. أي أنه إذا كان لديك جدول داخل جدول آخر، فلن يكون لهذا الإعداد أي تأثير. إنه أحد قيود Microsoft Word التي لا تسمح بذلك، وليس Aspose.Words.

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالي كيفية إنشاء جدول يتضمن صفوف الرؤوس التي تتكرر في الصفحات اللاحقة:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "repeat-rows-on-subsequent-pages.py" >}}

## منع الجداول والصفوف من الانفصال عبر الصفحات

هناك أوقات لا ينبغي فيها تقسيم محتويات الجدول عبر الصفحات. على سبيل المثال، إذا كان العنوان أعلى الجدول، فيجب دائمًا الاحتفاظ بالعنوان والجدول معًا في نفس الصفحة للحفاظ على المظهر المناسب.

هناك طريقتان منفصلتان مفيدتان لتحقيق هذه الوظيفة:

- `Allow row break across pages`، والذي يتم تطبيقه على صفوف الجدول
- `Keep with next`، والذي يتم تطبيقه على الفقرات في خلايا الجدول

بشكل افتراضي، يتم تعطيل الخصائص المذكورة أعلاه.

### منع الصف من الاختراق عبر الصفحات

يتضمن ذلك تقييد المحتوى الموجود داخل خلايا الصف من الانقسام عبر الصفحة. في Microsoft Word، يمكن العثور على هذا ضمن خصائص الجدول كخيار "السماح للصف بالتقاطع عبر الصفحات". في Aspose.Words، تم العثور على هذا ضمن كائن [RowFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/) الخاص بـ [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) كخاصية [RowFormat.AllowBreakAcrossPages](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/allow_break_across_pages/).

يوضح مثال التعليمات البرمجية التالي كيفية تعطيل تقسيم الصفوف عبر الصفحات لكل صف في الجدول:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "row-format-disable-break-across-pages.py" >}}

{{% alert color="primary" %}}

يمكنك تنزيل الملف النموذجي لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Table%20spanning%20two%20pages.docx).

{{% /alert %}}

### حافظ على الجدول من الكسر عبر الصفحات

لمنع تقسيم الجدول عبر الصفحات، نحتاج إلى تحديد أننا نريد أن يظل المحتوى الموجود داخل الجدول معًا.

للقيام بذلك، يستخدم Aspose.Words طريقة تسمح للمستخدمين بتحديد جدول وتمكين معلمة [KeepWithNext](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/keep_with_next/) إلى true لكل فقرة داخل خلايا الجدول. الاستثناء هو الفقرة الأخيرة في الجدول، والتي يجب تعيينها على false.

يوضح مثال التعليمات البرمجية التالي كيفية تعيين جدول ليبقى معًا في نفس الصفحة:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "keep-table-together.py" >}}

{{% alert color="primary" %}}

يمكنك تنزيل الملف النموذجي لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Table%20spanning%20two%20pages.docx).

{{% /alert %}}