---
title: تنسيق الجدول في Python
second_title: Aspose.Words لـ Python via .NET
articleTitle: تطبيق التنسيق
linktitle: تطبيق التنسيق
description: "تنسيق الجدول بالتفصيل باستخدام Python. استخدم Python لتنسيق كل جزء من الجدول."
type: docs
weight: 70
url: /ar/python-net/applying-formatting/
---

يمكن تطبيق كل عنصر في الجدول بتنسيق مختلف. على سبيل المثال، سيتم تطبيق تنسيق الجدول على الجدول بأكمله، وتنسيق الصف على صفوف معينة فقط، وتنسيق الخلايا على خلايا معينة فقط.

يوفر Aspose.Words API غنيًا لاسترداد التنسيق وتطبيقه على الجدول. يمكنك استخدام العقد [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) و[RowFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/) و[CellFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/) لتعيين التنسيق.

في هذه المقالة، سنتحدث عن كيفية تطبيق التنسيق على عقد الجدول المختلفة وإعدادات تنسيق الجدول التي يدعمها Aspose.Words.

## تطبيق التنسيق على العقد المختلفة

في هذا القسم، سننظر في تطبيق التنسيق على عقد الجدول المختلفة.

### تنسيق مستوى الجدول

لتطبيق التنسيق على جدول، يمكنك استخدام الخصائص المتوفرة على عقدة **Table** المقابلة باستخدام فئات [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) و[PreferredWidth](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidth/) و[TableCollection](https://reference.aspose.com/words/python-net/aspose.words.tables/tablecollection/).

{{% alert color="primary" %}}

لاحظ أن الجدول يجب أن يحتوي على صف واحد على الأقل قبل أن يتم تطبيق خصائص الجدول. وهذا يعني أنه عند إنشاء جدول باستخدام [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/)، يجب إجراء هذا التنسيق بعد الاستدعاء الأول لـ [InsertCell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_cell/#default)، أو بعد إضافة الصف الأول إلى الجدول، أو عند إدراج العقد مباشرة في DOM.

{{% /alert %}}

تُظهر الصور أدناه تمثيلاً لميزات تنسيق **Table** في Microsoft Word وخصائصها المقابلة في Aspose.Words.

![formattin-features-table-level-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-1.png)




![formatting-table-options-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-2.png)

يوضح مثال التعليمات البرمجية التالي كيفية تطبيق حد مخطط تفصيلي على جدول:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "apply-outline-border.py" >}}

{{% alert color="primary" %}}

يمكنك تنزيل الملف النموذجي لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالي كيفية إنشاء جدول مع تمكين كافة الحدود (الشبكة):

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "build-table-with-borders.py" >}}

{{% alert color="primary" %}}

يمكنك تنزيل الملف النموذجي لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

### تنسيق مستوى الصف

يمكن التحكم في تنسيق **على مستوى الصف** باستخدام فئات [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) و[RowFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/row/row_format/) و[RowCollection](https://reference.aspose.com/words/python-net/aspose.words.tables/rowcollection/).

{{% alert color="primary" %}}

لاحظ أن **Row** يمكن أن يكون عقدة فرعية لـ **Table** فقط. وفي الوقت نفسه، يجب أن يكون هناك **Cell** واحد على الأقل في **Row** حتى يمكن تطبيق التنسيق عليه.

{{% /alert %}}

تُظهر الصور أدناه تمثيلاً لميزات تنسيق **Row** في Microsoft Word وخصائصها المقابلة في Aspose.Words.

![formatting-row-level-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-3.png)


يوضح مثال التعليمات البرمجية التالي كيفية تعديل تنسيق صف الجدول:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "modify-row-formatting.py" >}}

{{% alert color="primary" %}}

يمكنك تنزيل الملف النموذجي لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

### تنسيق مستوى الخلية

يتم التحكم في التنسيق على مستوى الخلية بواسطة فئات [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) و[CellFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/cell_format/) و[CellCollection](https://reference.aspose.com/words/python-net/aspose.words.tables/cellcollection/).

{{% alert color="primary" %}}

لاحظ أن **Cell** يمكن أن يكون عقدة فرعية لـ **Row** فقط. وفي الوقت نفسه، يجب أن يكون هناك [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) واحد على الأقل في **Cell** حتى يمكن تطبيق التنسيق عليه.

بالإضافة إلى **Paragraph**، يمكنك أيضًا إدراج ملف **Table** في ملف **Cell**.

{{% /alert %}}

تُظهر الصور أدناه تمثيلاً لميزات تنسيق **Cell** في Microsoft Word وخصائصها المقابلة في Aspose.Words.

![formatting-cell-level-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-4.png)




![auto-formatting-cell-level-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-5.png)


يوضح مثال التعليمات البرمجية التالي كيفية تعديل تنسيق خلية الجدول:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "modify-cell-formatting.py" >}}

{{% alert color="primary" %}}

يمكنك تنزيل الملف النموذجي لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالي كيفية تعيين مقدار المسافة (بالنقاط) لإضافتها إلى يسار/أعلى/يمين/أسفل محتويات الخلية:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "cell-padding.py" >}}

## تحديد ارتفاعات الصف

إن أبسط طريقة لتعيين ارتفاع الصف هي استخدام **DocumentBuilder**. باستخدام خصائص **RowFormat** المناسبة، يمكنك تعيين إعداد الارتفاع الافتراضي أو تطبيق ارتفاع مختلف لكل صف في الجدول.

في Aspose.Words، يتم التحكم في ارتفاع صف الجدول عن طريق:

- خاصية ارتفاع الصف – [Height](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/height/)
- خاصية قاعدة الارتفاع للصف المحدد - [HeightRule](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/height_rule/)

وفي الوقت نفسه، يمكن ضبط ارتفاع مختلف لكل صف - وهذا يسمح لك بالتحكم في إعدادات الجدول على نطاق واسع.

{{% alert color="primary" %}}

يمكن تعيين خيارات القاعدة لتحديد ارتفاع الكائن باستخدام تعداد [HeightRule](https://reference.aspose.com/words/python-net/aspose.words/heightrule/).

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالي كيفية إنشاء جدول يحتوي على خلية واحدة وتطبيق تنسيق الصف:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "apply-row-formatting.py" >}}

## تحديد عرض الجدول والخلية

يوفر الجدول الموجود في مستند Microsoft Word عدة طرق مختلفة لتغيير حجم الجدول والخلايا الفردية. تتيح هذه الخصائص تحكمًا كبيرًا في مظهر الجدول وسلوكه، بحيث يدعم Aspose.Words سلوك الجداول، كما هو الحال في Microsoft Word.

من المهم معرفة أن عناصر الجدول تقدم العديد من الخصائص المختلفة التي يمكن أن تؤثر على كيفية حساب عرض الجدول الإجمالي، وكذلك الخلايا الفردية:

- العرض المفضل على الطاولة
- العرض المفضل على الخلايا الفردية
- السماح بالاحتواء التلقائي على الطاولة

توضح هذه المقالة كيفية عمل خصائص حساب عرض الجدول المختلفة وكيفية التحكم الكامل في حساب عرض الجدول. هذا هو
من المفيد بشكل خاص معرفة مثل هذه الحالات التي لا يظهر فيها تخطيط الجدول كما هو متوقع.

{{% alert color="primary" %}}

في معظم الحالات، يوصى باستخدام الخلية المفضلة بدلاً من عرض الجدول. يتوافق عرض الخلية المفضل بشكل أكبر مع مواصفات تنسيق DOCX بالإضافة إلى نموذج Aspose.Words.

عرض الخلية هو في الواقع قيمة محسوبة لتنسيق DOCX. يمكن أن يعتمد عرض الخلية الفعلي على أشياء كثيرة. على سبيل المثال، يمكن أن يؤثر تغيير هوامش الصفحة أو عرض الجدول المفضل على عرض الخلية الفعلي.

عرض الخلية المفضل هو خاصية خلية مخزنة في المستند. لا يعتمد على أي شيء ولا يتغير عند تغيير الجدول أو خصائص الخلية الأخرى.

{{% /alert %}}

{{% alert color="primary" %}}

ترتبط جميع الخصائص والأساليب الموضحة في هذه المقالة بكيفية عمل الجداول في Microsoft Word. لذلك، في معظم الحالات، إذا كنت تقوم بإنشاء جدولك برمجيًا ولكنك تجد صعوبة في إنشاء الجدول المطلوب، فيمكنك بدلاً من ذلك محاولة إنشائه بشكل مرئي في Microsoft Word أولاً ثم ببساطة نسخ قيم التنسيق إلى تطبيقك.

{{% /alert %}}

### كيفية استخدام العرض المفضل

يتم تحديد العرض المطلوب للجدول أو الخلايا الفردية من خلال خاصية العرض المفضل، وهو الحجم الذي يسعى العنصر لملاءمته. أي أنه يمكن تحديد العرض المفضل للجدول بأكمله أو للخلايا الفردية. في بعض الحالات، قد لا يكون من الممكن ملاءمة هذا العرض تمامًا، ولكن العرض الفعلي سيكون قريبًا من هذه القيمة في معظم الحالات.

يتم تعيين نوع وقيمة العرض المفضل المناسب باستخدام طرق فئة [PreferredWidth](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidth/):

- طريقة [Auto](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidthtype/) لتحديد تلقائي أو "لا يوجد عرض مفضل"
- طريقة [FromPercent](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidthtype/) لتحديد النسبة المئوية للعرض
- طريقة [FromPoints](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidthtype/) لتحديد العرض بالنقاط

تُظهر الصور أدناه تمثيلاً *لميزات إعداد العرض المفضلة* في Microsoft Word والخصائص المقابلة لها في Aspose.Words.

![formatting-table-properties-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-8.png)

يمكن رؤية مثال لكيفية تطبيق هذه الخيارات على جدول حقيقي في المستند في الصورة أدناه.

![tables-applying-options-python](/words/python-net/applying-formatting/applying-formatting-9.png)

{{% alert color="primary" %}}

قبل أن تتمكن من استخدام العرض المفضل في الجدول، يجب عليك التأكد من أن الجدول يحتوي على صف واحد على الأقل. وذلك لأن تنسيق الجدول هذا في مستند Microsoft Word أو في مستند تم إنشاؤه في Aspose.Words يتم تخزينه في صفوف الجدول.

{{% /alert %}}

#### حدد الجدول المفضل أو عرض الخلية

في Aspose.Words، يتم تعيين عرض الجدول والخلية باستخدام خاصية [Table.PreferredWidth](https://reference.aspose.com/words/python-net/aspose.words.tables/table/preferred_width/) وخاصية [CellFormat.PreferredWidth](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/preferred_width/)، مع الخيارات المتاحة في تعداد [PreferredWidthType](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidthtype/):

- **Auto**، وهو ما يعادل عدم وجود مجموعة عرض مفضلة
- **Percent**، الذي يناسب العنصر بالنسبة للمساحة المتاحة في حجم النافذة أو الحاوية، ويعيد حساب القيمة عندما يتغير العرض المتاح
- **Points**، الذي يتوافق مع عنصر العرض المحدد بالنقاط

{{% alert color="primary" %}}

افتراضيًا، يمكن وصف الجدول بأنه ملائم بنسبة 100% من المساحة المتوفرة على الصفحة. في هذه الحالة، هذا يعني أن الجدول سيحاول شغل المساحة بين هامش الصفحة الأيمن والأيسر.

{{% /alert %}}

سيؤدي استخدام خاصية [Table.PreferredWidth](https://reference.aspose.com/words/python-net/aspose.words.tables/table/preferred_width/) إلى ضبط عرضه المفضل بالنسبة لحاويته: الصفحة أو عمود النص أو خلية الجدول الخارجي إذا كان جدولًا متداخلاً.

يوضح مثال التعليمات البرمجية التالي كيفية تعيين الجدول ليتناسب تلقائيًا مع 50% من عرض الصفحة:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "auto-fit-table-to-page-width.py" >}}

سيؤدي استخدام خاصية [CellFormat.PreferredWidth](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/preferred_width/) في خلية معينة إلى ضبط العرض المفضل لها.

يوضح مثال التعليمات البرمجية التالي كيفية تعيين إعدادات العرض المفضلة المختلفة:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "preferred-width-settings.py" >}}

#### العثور على نوع العرض المفضل والقيمة

يمكنك استخدام خصائص [Type](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidth/type/) و[Value](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidth/value/) للعثور على تفاصيل العرض المفضلة للجدول أو الخلية المطلوبة.

يوضح مثال التعليمات البرمجية التالي كيفية استرداد نوع العرض المفضل لخلية الجدول:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "retrieve-preferred-width-type.py" >}}

{{% alert color="primary" %}}

يمكنك تنزيل الملف النموذجي لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

### كيفية ضبط الاحتواء التلقائي

تسمح الخاصية [AllowAutoFit](https://reference.aspose.com/words/python-net/aspose.words.tables/table/allow_auto_fit/) للخلايا الموجودة في الجدول بالنمو والتقلص وفقًا لمعيار محدد. على سبيل المثال، يمكنك استخدام خيار **احتواء تلقائي للنافذة** لملاءمة الجدول مع عرض الصفحة، وخيار **الاحتواء التلقائي للمحتوى** للسماح لكل خلية بالنمو أو التقليص وفقًا لمحتواها.

{{% alert color="primary" %}}

بالإضافة إلى ذلك، يمكن استخدام خاصية **AllowAutoFit** جنبًا إلى جنب مع عرض الخلية المفضل لتنسيق الخلية التي تناسب محتواها تلقائيًا، ولكن لها أيضًا عرض أولي. إذا لزم الأمر، يمكن أن يتجاوز عرض الخلية هذا العرض.

{{% /alert %}}

افتراضيًا، يقوم Aspose.Words بإدراج جدول جديد باستخدام **احتواء تلقائي للنافذة**. سيتم تحديد حجم الجدول وفقًا لعرض الصفحة المتاح. لتغيير حجم جدول، يمكنك استدعاء الأسلوب [AutoFit](https://reference.aspose.com/words/python-net/aspose.words.tables/table/auto_fit/#autofitbehavior). تقبل هذه الطريقة تعداد [AutoFitBehavior](https://reference.aspose.com/words/python-net/aspose.words.tables/autofitbehavior/) الذي يحدد نوع الاحتواء التلقائي الذي سيتم تطبيقه على الجدول.

من المهم أن تعرف أن طريقة الاحتواء التلقائي هي في الواقع اختصار يطبق خصائص مختلفة على الجدول في نفس الوقت. هذه هي الخصائص التي تعطي الجدول بالفعل السلوك المرصود. سنناقش هذه الخصائص لكل خيار من خيارات الاحتواء التلقائي.

يوضح مثال التعليمات البرمجية التالي كيفية تعيين جدول لتقليص كل خلية أو تكبيرها وفقًا لمحتوياتها:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "allow-auto-fit.py" >}}

#### الاحتواء التلقائي للجدول في النافذة

عند تطبيق الاحتواء التلقائي لنافذة على جدول، يتم تنفيذ العمليات التالية فعليًا خلف الكواليس:

1. يتم تمكين خاصية **Table.AllowAutoFit** لتغيير حجم الأعمدة تلقائيًا لتناسب المحتوى المتاح، باستخدام قيمة **Table.PreferredWidth** بنسبة 100%
2. تتم إزالة **CellFormat.PreferredWidth** من جميع خلايا الجدول
      {{% alert color="primary" %}}
   لاحظ أن هذا يختلف قليلاً عن سلوك Microsoft Word، حيث يتم تعيين العرض المفضل لكل خلية على القيم المناسبة بناءً على حجمها ومحتواها الحاليين. لا يقوم Aspose.Words بتحديث العرض المفضل لذا يتم مسحه بدلاً من ذلك.
      {{% /alert %}}
3. تتم إعادة حساب عرض الأعمدة لمحتوى الجدول الحالي - والنتيجة النهائية هي جدول يشغل العرض المتاح بالكامل
4. يتغير عرض الأعمدة في الجدول تلقائيًا عندما يقوم المستخدم بتحرير النص

يوضح مثال التعليمات البرمجية التالي كيفية ملاءمة الجدول تلقائيًا لعرض الصفحة:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "auto-fit-table-to-page-width.py" >}}

{{% alert color="primary" %}}

يمكنك تنزيل الملف النموذجي لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

#### الاحتواء التلقائي للجدول مع المحتوى

عندما يتم ضبط محتوى الجدول تلقائيًا، يتم تنفيذ الخطوات التالية فعليًا خلف الكواليس:

1. يتم تمكين خاصية **Table.AllowAutoFit** لتغيير حجم كل خلية تلقائيًا وفقًا لمحتواها

2. تتم إزالة عرض الجدول المفضل من **Table.PreferredWidth**، ويتم إزالة **CellFormat.PreferredWidth** لكل خلية في الجدول
      {{% alert color="primary" %}}

   لاحظ أن خيار الاحتواء التلقائي هذا يزيل العرض المفضل من الخلايا، تمامًا كما هو الحال في Microsoft Word. إذا كنت تريد الاحتفاظ بأحجام الأعمدة وزيادة الأعمدة أو تقليلها لتناسب المحتوى، فيجب عليك تعيين خاصية **Table.AllowAutoFit** إلى **True** بمفردها بدلاً من استخدام اختصار الاحتواء التلقائي.{{% /alert %}}

3. تتم إعادة حساب عرض الأعمدة لمحتوى الجدول الحالي - والنتيجة النهائية هي جدول حيث يتم تغيير حجم عرض الأعمدة وعرض الجدول بأكمله تلقائيًا ليناسب المحتوى بشكل أفضل عندما يقوم المستخدم بتحرير النص

يوضح مثال التعليمات البرمجية التالي كيفية ملاءمة الجدول تلقائيًا لمحتواه:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "auto-fit-table-to-contents.py" >}}

{{% alert color="primary" %}}

يمكنك تنزيل الملف النموذجي لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

#### قم بتعطيل الاحتواء التلقائي في الجدول واستخدم عروض الأعمدة الثابتة

إذا تم تعطيل الاحتواء التلقائي للجدول وتم استخدام عرض الأعمدة الثابتة بدلاً من ذلك، فسيتم تنفيذ الخطوات التالية:

1. تم تعطيل خاصية **Table.AllowAutoFit** بحيث لا تنمو الأعمدة أو تتقلص إلى محتواها
2. تتم إزالة العرض المفضل للجدول بأكمله من **Table.PreferredWidth**، وتتم إزالة **CellFormat.PreferredWidth** من جميع خلايا الجدول
3. النتيجة النهائية هي جدول يتم تحديد عرض أعمدته بواسطة خاصية [CellFormat.Width](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/width/)، ولا يتم تغيير حجم أعمدته تلقائيًا عندما يقوم المستخدم بإدخال النص أو عند تغيير حجم الصفحة

{{% alert color="primary" %}}

لاحظ أنه إذا لم يتم تحديد عرض لـ **CellFormat.Width**، فسيتم استخدام القيمة الافتراضية البالغة بوصة واحدة (72 نقطة).

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالي كيفية تعطيل الاحتواء التلقائي وتمكين العرض الثابت للجدول المحدد:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "auto-fit-table-to-fixed-column-widths.py" >}}

{{% alert color="primary" %}}

يمكنك تنزيل الملف النموذجي لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

### ترتيب الأسبقية عند حساب عرض الخلية

يسمح Aspose.Words للمستخدمين بتحديد عرض الجدول أو الخلية من خلال كائنات متعددة، بما في ذلك [CellFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/) - خاصية [Width](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/width/q) الخاصة به غالبًا ما تكون متبقية من الإصدارات السابقة، ومع ذلك، فهي لا تزال مفيدة لتبسيط ضبط عرض الخلية.

من المهم معرفة أن خاصية **CellFormat.Width** تعمل بشكل مختلف اعتمادًا على خصائص العرض الأخرى الموجودة بالفعل في الجدول.

يستخدم Aspose.Words الترتيب التالي لحساب عرض الخلايا:

|  طلب |  ملكية |  وصف |
|  -----  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  1      |  يتم تحديد [AllowAutoFit](https://reference.aspose.com/words/python-net/aspose.words.tables/table/allow_auto_fit/) |  إذا تم تمكين **AutoFit**:<br>- قد يتجاوز الجدول العرض المفضل لاستيعاب المحتوى - وعادةً لا يتقلص إلى ما دون العرض المفضل<br>- يتم تجاهل أي تغيير في قيمة **CellFormat.Width** وستتناسب الخلية مع محتوياتها بدلاً من ذلك |
|  2      |  [PreferredWidthType](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidthtype/) بقيمة **Points** أو **Percent** |  تم تجاهل **CellFormat.Width** |
|  3      |  [PreferredWidthType](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidthtype/) بقيمة **Auto** |  يتم نسخ القيمة من **CellFormat.Width** وتصبح العرض المفضل للخلية (بالنقاط) |

{{% alert color="primary" %}}

لا يتم تحديث أية تغييرات يتم إجراؤها على خاصية العرض في العرض المفضل ويجب بدلاً من ذلك تطبيقها على العرض المفضل بدلاً من ذلك.

{{% /alert %}}

{{% alert color="primary" %}}

أثناء إنشاء تخطيط جدول ثابت، حدد عرض الخلية. لا يمكن حفظ خلية بدون عرض بتنسيق DOC. تسمح تنسيقات المستندات الأخرى غير DOC، مثل DOCX، من حيث المبدأ، بحفظ الخلايا بدون عرض في تخطيط جدول ثابت.

{{% /alert %}}

## السماح بالتباعد بين الخلايا

يمكنك الحصول على أو تعيين أي مسافة إضافية بين خلايا الجدول المشابهة لخيار "تباعد الخلايا" في Microsoft Word. ويمكن القيام بذلك باستخدام خاصية [AllowCellSpacing](https://reference.aspose.com/words/python-net/aspose.words.tables/table/allow_cell_spacing/).

يمكن رؤية مثال لكيفية تطبيق هذه الخيارات على جدول حقيقي في المستند في الصورة أدناه.

<img src="/words/python-net/applying-formatting/applying-formatting-10.png" alt="التنسيق - التباعد بين الخلايا - وضع الكلمات - بيثون" style="width:500px"/>

يوضح مثال التعليمات البرمجية التالي كيفية تعيين التباعد بين الخلايا:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "allow-cell-spacing.py" >}}

## تطبيق الحدود والتظليل

يمكن تطبيق الحدود والتظليل إما على الجدول بأكمله باستخدام [Table.SetBorder](https://reference.aspose.com/words/python-net/aspose.words.tables/table/set_border/) و[Table.SetBorders](https://reference.aspose.com/words/python-net/aspose.words.tables/table/set_borders/) و[Table.SetShading](https://reference.aspose.com/words/python-net/aspose.words.tables/table/set_shading/)، أو على خلايا محددة فقط باستخدام [CellFormat.Borders](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/borders/) و[CellFormat.Shading](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/shading/). بالإضافة إلى ذلك، يمكن تعيين حدود الصفوف باستخدام [RowFormat.Borders](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/borders/)، ولكن لا يمكن تطبيق التظليل بهذه الطريقة.

توضح الصور أدناه إعدادات الحدود والظل في Microsoft Word والخصائص المقابلة لها في Aspose.Words.

![formatting-border-line-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-6.png)

![formatting-cell-color-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-7.png)

يوضح مثال التعليمات البرمجية التالي كيفية تنسيق جدول وخلية بحدود وظلال مختلفة:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "format-table-and-cell-with-different-borders.py" >}}