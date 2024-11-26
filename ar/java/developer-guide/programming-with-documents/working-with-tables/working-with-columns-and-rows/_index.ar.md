---
title: العمل مع الأعمدة والصفوف في Java
second_title: Aspose.Words ل Java
articleTitle: العمل مع الأعمدة والصفوف
linktitle: العمل مع الأعمدة والصفوف
description: "العمل مع أجزاء من جدول-الصفوف والأعمدة والخلايا باستخدام Java. حدد صف الرأس Java."
type: docs
weight: 30
url: /ar/java/working-with-columns-and-rows/
timestamp: 2024-01-27-14-07-04
---

لمزيد من التحكم في كيفية عمل الجداول، تعرف على كيفية معالجة الأعمدة والصفوف.

## ابحث عن فهرس عنصر الجدول

تتم إدارة الأعمدة والصفوف والخلايا عن طريق الوصول إلى عقدة المستند المحددة بواسطة فهرسها. يتضمن العثور على فهرس أي عقدة جمع جميع العقد الفرعية لنوع العنصر من العقدة الأم، ثم استخدام طريقة [IndexOf](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#indexOf-com.aspose.words.Node) للعثور على فهرس العقدة المطلوبة في المجموعة.

### ابحث عن فهرس جدول في مستند

في بعض الأحيان قد تحتاج إلى إجراء تغييرات على جدول معين في مستند. للقيام بذلك، يمكنك الرجوع إلى جدول حسب فهرسه.

يوضح مثال التعليمات البرمجية التالية كيفية استرداد فهرس جدول في مستند:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-table-index.java" >}}

### العثور على فهرس صف في جدول

وبالمثل، قد تحتاج إلى إجراء تغييرات على صف معين في جدول محدد. للقيام بذلك، يمكنك أيضا الرجوع إلى صف حسب الفهرس الخاص به.

يوضح مثال التعليمات البرمجية التالية كيفية استرداد فهرس صف في جدول:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-row-index.java" >}}

### العثور على فهرس خلية في صف واحد

أخيرا، قد تحتاج إلى إجراء تغييرات على خلية معينة، ويمكنك القيام بذلك عن طريق فهرس الخلية أيضا.

يوضح مثال التعليمات البرمجية التالية كيفية استرداد فهرس خلية في صف واحد:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-cell-index.java" >}}

## العمل مع الأعمدة

في نموذج كائن المستند Aspose.Words (DOM)، تتكون العقدة [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) من [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) العقد ثم [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) العقد. وهكذا، في `Document` نموذج الكائن Aspose.Words، كما هو الحال في مستندات ورد، لا يوجد مفهوم للعمود.

حسب التصميم، تكون صفوف الجدول في Microsoft Word و Aspose.Words مستقلة تماما، ويتم تضمين الخصائص والعمليات الأساسية فقط في صفوف وخلايا الجدول. هذا يعطي الجداول القدرة على الحصول على بعض السمات المثيرة للاهتمام:

- يمكن أن يحتوي كل صف جدول على عدد مختلف تماما من الخلايا
- عموديا، يمكن أن يكون لخلايا كل صف عروض مختلفة
- من الممكن الانضمام إلى الجداول بتنسيقات صف مختلفة وعدد الخلايا

![work-with-columns-aspose-words-java](/words/java/working-with-columns-and-rows/working-with-columns-and-rows-1.png)

أي عمليات يتم إجراؤها على الأعمدة هي في الواقع "اختصارات" تؤدي العملية عن طريق تغيير خلايا الصف بشكل جماعي بطريقة تبدو وكأنها يتم تطبيقها على الأعمدة. بمعنى، يمكنك إجراء عمليات على الأعمدة ببساطة عن طريق التكرار على نفس فهرس خلية صف الجدول.

يبسط مثال التعليمات البرمجية التالي مثل هذه العمليات من خلال إثبات فئة واجهة تجمع الخلايا التي تشكل "عمود" من جدول:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "column-class.java" >}}

يوضح مثال التعليمات البرمجية التالية كيفية إدراج عمود فارغ في جدول:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "insert-blank-column.java" >}}

يوضح مثال التعليمات البرمجية التالية كيفية إزالة عمود من جدول في مستند:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "remove-column.java" >}}

## حدد الصفوف كصفوف رأس

يمكنك اختيار تكرار الصف الأول في الجدول كصف رأس فقط في الصفحة الأولى أو في كل صفحة إذا تم تقسيم الجدول إلى عدة. في Aspose.Words، يمكنك تكرار صف الرأس في كل صفحة باستخدام خاصية [HeadingFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getHeadingFormat).

يمكنك أيضا وضع علامة على صفوف رأس متعددة إذا كانت هذه الصفوف موجودة واحدة تلو الأخرى في بداية الجدول. للقيام بذلك، تحتاج إلى تطبيق خصائص **HeadingFormat** على هذه الصفوف.

{{% alert color="primary" %}}

لاحظ أن صفوف الرأس لا تعمل في الجداول المتداخلة. بمعنى، إذا كان لديك جدول داخل جدول آخر، فلن يكون لهذا الإعداد أي تأثير. إنه قيد Microsoft Word لا يسمح بذلك، وليس Aspose.Words.

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالية كيفية إنشاء جدول يتضمن صفوف رأس تتكرر في الصفحات اللاحقة:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "repeat-rows-on-subsequent-pages.java" >}}

## الحفاظ على الجداول والصفوف من كسر عبر صفحات {#keep-tables-and-rows-from-breaking-across-pages}

هناك أوقات لا ينبغي فيها تقسيم محتويات الجدول عبر الصفحات. على سبيل المثال، إذا كان العنوان أعلى جدول، فيجب دائما الاحتفاظ بالعنوان والجدول معا في نفس الصفحة للحفاظ على المظهر المناسب.

هناك نوعان من التقنيات المنفصلة المفيدة لتحقيق هذه الوظيفة:

- `Allow row break across pages`، والتي يتم تطبيقها على صفوف الجدول
- `Keep with next`، والتي يتم تطبيقها على الفقرات في خلايا الجدول

بشكل افتراضي، يتم تعطيل الخصائص المذكورة أعلاه.

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-1.png" alt="keep-tables-and-rows-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

### الحفاظ على صف من كسر عبر صفحات {#keep-a-row-from-breaking-across-pages}

يتضمن ذلك تقييد المحتوى داخل خلايا الصف من الانقسام عبر الصفحة. في Microsoft Word، يمكن العثور على هذا ضمن خصائص الجدول كخيار"السماح للصف بكسر الصفحات". في Aspose.Words تم العثور على هذا تحت [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/) كائن من [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) كخاصية [RowFormat.AllowBreakAcrossPages](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getAllowBreakAcrossPages).

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-2.png" alt="keep-rows-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

يوضح مثال التعليمات البرمجية التالية كيفية تعطيل كسر الصفوف عبر الصفحات لكل صف في جدول:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "row-format-disable-break-across-pages.java" >}}

### الحفاظ على جدول من كسر عبر صفحات {#keep-a-table-from-breaking-across-pages}

لمنع الجدول من الانقسام عبر الصفحات، نحتاج إلى تحديد أننا نريد أن يظل المحتوى الموجود داخل الجدول معا.

للقيام بذلك، يستخدم Aspose.Words طريقة تسمح للمستخدمين بتحديد جدول وتمكين المعلمة [KeepWithNext](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getKeepWithNext) إلى صحيح لكل فقرة داخل خلايا الجدول. الاستثناء هو الفقرة الأخيرة في الجدول، والتي يجب تعيينها على خطأ.

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-3.png" alt="keep-tables-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

يوضح مثال الكود التالي كيفية تعيين جدول للبقاء معا في نفس الصفحة:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "keep-table-together.java" >}}
