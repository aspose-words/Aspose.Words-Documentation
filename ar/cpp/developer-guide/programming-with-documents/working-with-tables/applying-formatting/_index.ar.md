---
title: تنسيق الجدول في C++
second_title: Aspose.Words ل C++
articleTitle: تطبيق التنسيق
linktitle: تطبيق التنسيق
description: "تنسيق الجدول في التفاصيل باستخدام C++. باستخدام C++ لتنسيق كل جزء من الجدول."
type: docs
weight: 70
url: /ar/cpp/applying-formatting/
---

يمكن تطبيق كل عنصر من عناصر الجدول بتنسيق مختلف. على سبيل المثال، سيتم تطبيق تنسيق الجدول على الجدول بأكمله، وتنسيق الصف على صفوف معينة فقط، وتنسيق الخلية على خلايا معينة فقط.

Aspose.Words يوفر الغنية API لاسترداد وتطبيق التنسيق إلى جدول. يمكنك استخدام العقد [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/) و [RowFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/) و [CellFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/) لتعيين التنسيق.

في هذه المقالة، سنتحدث عن كيفية تطبيق التنسيق على عقد جدول مختلفة وما هي إعدادات تنسيق الجدول Aspose.Words التي تدعمها.

## تطبيق التنسيق على عقد مختلفة

في هذا القسم، سننظر في تطبيق التنسيق على عقد الجدول المختلفة.

### تنسيق مستوى الجدول

لتطبيق التنسيق على جدول، يمكنك استخدام الخصائص المتوفرة في العقدة **Table** المقابلة باستخدام الفئات [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/) و [PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/) و [TableCollection](https://reference.aspose.com/words/cpp/aspose.words.tables/tablecollection/).

{{% alert color="primary" %}}

لاحظ أنه يجب أن يحتوي الجدول على صف واحد على الأقل قبل تطبيق خصائص الجدول. هذا يعني أنه عند إنشاء جدول باستخدام [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/)، يجب إجراء هذا التنسيق بعد المكالمة الأولى إلى [InsertCell](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertcell/)، أو بعد إضافة الصف الأول إلى الجدول، أو عند إدراج العقد مباشرة في DOM.

{{% /alert %}}

تظهر الصور أدناه تمثيلا لميزات التنسيق **Table** في Microsoft Word وخصائصها المقابلة في Aspose.Words.

![formattin-features-table-level-aspose-words-cpp](applying-formatting-1.png)

![formatting-table-options-aspose-words-cpp](applying-formatting-2.png)

يوضح مثال التعليمات البرمجية التالية كيفية تطبيق حد مخطط تفصيلي على جدول:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "apply-outline-border.h" >}}

يوضح مثال الكود التالي كيفية إنشاء جدول مع تمكين جميع الحدود (الشبكة):

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "build-table-with-borders.h" >}}

### تنسيق مستوى الصف

**مستوى الصف**

{{% alert color="primary" %}}

لاحظ أن **Row** يمكن أن يكون فقط عقدة فرعية من **Table**. في الوقت نفسه، يجب أن يكون هناك واحد على الأقل **Cell** في **Row** بحيث يمكن تطبيق التنسيق عليه.

{{% /alert %}}

تظهر الصور أدناه تمثيلا لميزات التنسيق **Row** في Microsoft Word وخصائصها المقابلة في Aspose.Words.

![formatting-row-level-aspose-words-cpp](applying-formatting-3.png)

يوضح مثال التعليمات البرمجية التالية كيفية تعديل تنسيق صف الجدول:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "modify-row-formatting.h" >}}

### تنسيق مستوى الخلية

يتم التحكم في التنسيق على مستوى الخلية بواسطة فئات [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/) و [CellFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/) و [CellCollection](https://reference.aspose.com/words/cpp/aspose.words.tables/cellcollection/).

{{% alert color="primary" %}}

لاحظ أن **Cell** يمكن أن يكون فقط عقدة فرعية من **Row**. في الوقت نفسه، يجب أن يكون هناك [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/) واحد على الأقل في **Cell** بحيث يمكن تطبيق التنسيق عليه.

بالإضافة إلى **Paragraph**، يمكنك أيضا إدراج **Table** في **Cell**.

{{% /alert %}}

تظهر الصور أدناه تمثيلا لميزات التنسيق **Cell** في Microsoft Word وخصائصها المقابلة في Aspose.Words.

![formatting-cell-level-aspose-words-cpp](applying-formatting-4.png)

![auto-formatting-cell-level-aspose-words-cpp](applying-formatting-5.png)

يوضح مثال التعليمات البرمجية التالية كيفية تعديل تنسيق خلية جدول:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "modify-cell-formatting.h" >}}

يوضح مثال الكود التالي كيفية تعيين مقدار المساحة (بالنقاط) لإضافتها إلى يسار/أعلى/يمين / أسفل محتويات الخلية:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "cell-padding.h" >}}

## حدد ارتفاعات الصف

إن أبسط طريقة لتعيين ارتفاع الصف هي استخدام **DocumentBuilder**. باستخدام خصائص **RowFormat** المناسبة، يمكنك تعيين إعداد الارتفاع الافتراضي أو تطبيق ارتفاع مختلف لكل صف في الجدول.

في Aspose.Words، يتم التحكم في ارتفاع صف الجدول بواسطة:

- خاصية ارتفاع الصف - [Height](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_height/)
- خاصية قاعدة الارتفاع للصف المحدد - [HeightRule](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_heightrule/)

في الوقت نفسه، يمكن تعيين ارتفاع مختلف لكل صف – وهذا يسمح لك بالتحكم على نطاق واسع في إعدادات الجدول.

{{% alert color="primary" %}}

يمكن تعيين خيارات القاعدة لتحديد ارتفاع كائن باستخدام [HeightRule](https://reference.aspose.com/words/cpp/aspose.words/heightrule/) تعداد.

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالية كيفية إنشاء جدول يحتوي على خلية واحدة وتطبيق تنسيق الصف:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "apply-row-formatting.h" >}}

## تحديد الجدول وعرض الخلية

يوفر الجدول في مستند Microsoft Word عدة طرق مختلفة لتغيير حجم الجدول والخلايا الفردية. تسمح هذه الخصائص بتحكم كبير في مظهر وسلوك الجدول، بحيث يدعم Aspose.Words سلوك الجداول، كما في Microsoft Word.

من المهم معرفة أن عناصر الجدول تقدم العديد من الخصائص المختلفة التي يمكن أن تؤثر على كيفية حساب عرض الجدول الكلي، وكذلك الخلايا الفردية:

- العرض المفضل على الطاولة
- العرض المفضل على الخلايا الفردية
- السماح بالاحتواء التلقائي على الطاولة

توضح هذه المقالة كيفية عمل خصائص حساب عرض الجدول المختلفة وكيفية التحكم الكامل في حساب عرض الجدول. هذا هو
مفيدة بشكل خاص لمعرفة في مثل هذه الحالات حيث لا يظهر تخطيط الجدول كما هو متوقع.

{{% alert color="primary" %}}

في معظم الحالات، يوصى بالخلية المفضلة من عرض الجدول. يكون عرض الخلية المفضل أكثر انسجاما مع مواصفات تنسيق DOCX بالإضافة إلى نموذج Aspose.Words.

عرض الخلية هو في الواقع قيمة محسوبة لتنسيق DOCX. يمكن أن يعتمد عرض الخلية الفعلي على أشياء كثيرة. على سبيل المثال، يمكن أن يؤثر تغيير هوامش الصفحة أو عرض الجدول المفضل على عرض الخلية الفعلي.

عرض الخلية المفضل هو خاصية خلية يتم تخزينها في المستند. لا يعتمد على أي شيء ولا يتغير عند تغيير الجدول أو الخصائص الأخرى للخلية.

{{% /alert %}}

{{% alert color="primary" %}}

ترتبط جميع الخصائص والأساليب الموضحة في هذه المقالة بكيفية عمل الجداول في Microsoft Word. حتى في معظم الحالات، إذا كنت بناء الجدول الخاص بك برمجيا ولكن تجد صعوبة في إنشاء الجدول المطلوب، يمكنك بدلا من ذلك محاولة بصريا إنشائه في Microsoft Word أولا ثم ببساطة نسخ قيم التنسيق في التطبيق الخاص بك.

{{% /alert %}}

### كيفية استخدام العرض المفضل

يتم تعريف العرض المطلوب لجدول أو خلايا فردية من خلال خاصية العرض المفضلة، وهو الحجم الذي يسعى العنصر إلى ملاءمته. بمعنى، يمكن تحديد العرض المفضل للجدول بأكمله أو للخلايا الفردية. في بعض الحالات، قد لا يكون من الممكن ملاءمة هذا العرض تماما، ولكن العرض الفعلي سيكون قريبا من هذه القيمة في معظم الحالات.

يتم تعيين نوع العرض المفضل المناسب والقيمة باستخدام أساليب فئة [PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/):

- طريقة [Auto](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/auto/) لتحديد تلقائي أو "لا يوجد عرض مفضل"
- طريقة [FromPercent](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/frompercent/) لتحديد عرض النسبة المئوية
- طريقة [FromPoints](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/frompoints/) لتحديد العرض بالنقاط

تظهر الصور أدناه تمثيلا لـ *preferred width setting features* في Microsoft Word وخصائصها المقابلة في Aspose.Words.

![formatting-table-properties-aspose-words-cpp](applying-formatting-8.png)

يمكن رؤية مثال على كيفية تطبيق هذه الخيارات على جدول حقيقي في مستند في الصورة أدناه.

![todo:image_alt_text](applying-formatting-9.png)

{{% alert color="primary" %}}

قبل أن تتمكن من استخدام العرض المفضل في جدول، يجب عليك التأكد من أن الجدول يحتوي على صف واحد على الأقل. وذلك لأن تنسيق الجدول هذا في مستند Microsoft Word أو في مستند تم إنشاؤه في Aspose.Words يتم تخزينه في صفوف الجدول.

{{% /alert %}}

#### حدد الجدول المفضل أو عرض الخلية

في Aspose.Words، يتم تعيين عرض الجدول والخلية باستخدام خاصية [Table.PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_preferredwidth/) وخاصية [CellFormat.PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_preferredwidth/)، مع توفر الخيارات في تعداد [PreferredWidthType](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidthtype/):

- **Auto**، وهو ما يعادل عدم وجود مجموعة عرض مفضلة
- **Percent**، الذي يناسب العنصر بالنسبة للمساحة المتاحة في النافذة أو حجم الحاوية، ويعيد حساب القيمة عندما يتغير العرض المتاح
- **Points**، والذي يتوافق مع عنصر العرض المحدد بالنقاط

{{% alert color="primary" %}}

بشكل افتراضي، يمكن وصف الجدول بأنه يتم تركيبه على 100 ٪ من المساحة المتوفرة على الصفحة. في هذه الحالة، هذا يعني أن الجدول سيحاول شغل المسافة بين هوامش الصفحة اليمنى واليسرى.

{{% /alert %}}

سيؤدي استخدام الخاصية [Table.PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_preferredwidth/) إلى ضبط العرض المفضل بالنسبة للحاوية الخاصة به: الصفحة أو عمود النص أو خلية الجدول الخارجي إذا كان جدولا متداخلا.

يوضح مثال التعليمات البرمجية التالية كيفية تعيين الجدول إلى الملاءمة التلقائية إلى 50 ٪ من عرض الصفحة:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "auto-fit-to-page-width.h" >}}

سيؤدي استخدام خاصية [CellFormat.PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_preferredwidth/) في خلية معينة إلى ضبط عرضها المفضل.

يوضح مثال الكود التالي كيفية تعيين إعدادات العرض المفضلة المختلفة:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "preferred-width-settings.h" >}}

#### البحث عن نوع العرض المفضل والقيمة

يمكنك استخدام الخصائص [Type](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidthtype/) و [Value](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidthtype/) للعثور على تفاصيل العرض المفضلة للجدول أو الخلية المطلوبة.

يوضح مثال التعليمات البرمجية التالية كيفية استرداد نوع العرض المفضل لخلية جدول:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "retrieve-preferred-width-type.h" >}}

### كيفية ضبط الاحتواء التلقائي

تسمح خاصية [AllowAutoFit](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_allowautofit/) للخلايا الموجودة في الجدول بالنمو والانكماش وفقا لمعيار محدد. على سبيل المثال، يمكنك استخدام خيار **AutoFit to Window** لملاءمة الجدول مع عرض الصفحة، وخيار **AutoFit to Content** للسماح لكل خلية بالنمو أو الانكماش وفقا لمحتواها.

{{% alert color="primary" %}}

بالإضافة إلى ذلك، يمكن استخدام الخاصية **AllowAutoFit** بالاقتران مع عرض خلية مفضل لتنسيق خلية تناسب محتواها تلقائيا، ولكن لها أيضا عرض أولي. إذا لزم الأمر، يمكن أن ينمو عرض الخلية بعد هذا العرض.

{{% /alert %}}

افتراضيا، Aspose.Words إدراج جدول جديد باستخدام **AutoFit to Window**. سيتم تحديد حجم الجدول وفقا لعرض الصفحة المتاح. لتغيير حجم جدول، يمكنك استدعاء طريقة [AutoFit](https://reference.aspose.com/words/cpp/aspose.words.tables/table/autofit/). تقبل هذه الطريقة تعداد [AutoFitBehavior](https://reference.aspose.com/words/cpp/aspose.words.tables/autofitbehavior/) الذي يحدد نوع الاحتواء التلقائي المطبق على الجدول.

من المهم معرفة أن طريقة الاحتواء التلقائي هي في الواقع اختصار يطبق خصائص مختلفة على الجدول في نفس الوقت. هذه هي الخصائص التي تعطي الجدول في الواقع السلوك المرصود. سنناقش هذه الخصائص لكل خيار احتواء تلقائي.

يوضح مثال الكود التالي كيفية تعيين جدول لتقليص أو نمو كل خلية وفقا لمحتوياتها:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "allow-auto-fit.h" >}}

#### AutoFit الجدول إلى النافذة

عند تطبيق التهيئة التلقائية على نافذة على جدول، يتم تنفيذ العمليات التالية فعليا خلف الكواليس:

1. يتم تمكين الخاصية **Table.AllowAutoFit** لتغيير حجم الأعمدة تلقائيا لتناسب المحتوى المتاح، باستخدام قيمة **Table.PreferredWidth** 100%
2. تتم إزالة **CellFormat.PreferredWidth** من جميع خلايا الجدول
   {{% alert color="primary" %}}
   لاحظ أن هذا يختلف قليلا عن سلوك Microsoft Word، حيث يتم تعيين العرض المفضل لكل خلية على القيم المناسبة بناء على حجمها ومحتواها الحاليين. Aspose.Words لا يقوم بتحديث العرض المفضل حتى يتم مسحه بدلا من ذلك.
   {{% /alert %}}
3. يتم إعادة حساب عرض الأعمدة لمحتوى الجدول الحالي-والنتيجة النهائية هي جدول يشغل العرض المتاح بالكامل
4. يتغير عرض الأعمدة في الجدول تلقائيا حيث يقوم المستخدم بتحرير النص

يوضح مثال التعليمات البرمجية التالية كيفية احتواء جدول تلقائيا على عرض الصفحة:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "auto-fit-table-to-page-width.h" >}}

#### AutoFit الجدول إلى المحتوى

عندما يتم تجهيز الجدول تلقائيا بالمحتوى، يتم تنفيذ الخطوات التالية فعليا خلف الكواليس:

1. يتم تمكين الخاصية **Table.AllowAutoFit** لتغيير حجم كل خلية تلقائيا وفقا لمحتواها

2. تتم إزالة عرض الجدول المفضل من **Table.PreferredWidth**، تتم إزالة **CellFormat.PreferredWidth** لكل خلية جدول
   {{% alert color="primary" %}}

   لاحظ أن خيار الاحتواء التلقائي هذا يزيل العرض المفضل من الخلايا، تماما كما هو الحال في Microsoft Word. إذا كنت تريد الاحتفاظ بأحجام الأعمدة وزيادة الأعمدة أو تقليلها لتناسب المحتوى، فيجب عليك تعيين الخاصية **Table.AllowAutoFit** إلى **True** بمفردها بدلا من استخدام اختصار الاحتواء التلقائي.{{% /alert %}}

3. يتم إعادة حساب عرض الأعمدة لمحتوى الجدول الحالي-والنتيجة النهائية هي جدول حيث يتم تغيير حجم عرض الأعمدة وعرض الجدول بأكمله تلقائيا لتناسب المحتوى بشكل أفضل حيث يقوم المستخدم بتحرير النص

يوضح مثال الكود التالي كيفية ضبط جدول تلقائيا على محتواه:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "auto-fit-table-to-contents.h" >}}

#### تعطيل AutoFit في الجدول واستخدام عرض الأعمدة الثابتة

إذا كان الجدول يحتوي على تعطيل تلقائي ويتم استخدام عرض الأعمدة الثابتة بدلا من ذلك، يتم تنفيذ الخطوات التالية:

1. **Table.AllowAutoFit** تم تعطيل الخاصية بحيث لا تنمو الأعمدة أو تتقلص إلى محتواها
2. تتم إزالة العرض المفضل للجدول بأكمله من **Table.PreferredWidth**، تتم إزالة **CellFormat.PreferredWidth** من جميع خلايا الجدول
3. والنتيجة النهائية هي جدول يتم تحديد عرض عموده بواسطة الخاصية [CellFormat.Width](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_width/)، ولا يتم تغيير حجم أعمدته تلقائيا عندما يقوم المستخدم بإدخال نص أو عند تغيير حجم الصفحة

{{% alert color="primary" %}}

لاحظ أنه إذا لم يتم تحديد عرض لـ **CellFormat.Width**، فسيتم استخدام القيمة الافتراضية لبوصة واحدة (72 نقطة).

{{% /alert %}}

يوضح مثال الكود التالي كيفية تعطيل الاحتواء التلقائي وتمكين العرض الثابت للجدول المحدد:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "auto-fit-table-to-fixed-column-widths.h" >}}

### ترتيب الأسبقية عند حساب عرض الخلية

Aspose.Words يسمح للمستخدمين بتحديد عرض جدول أو خلية من خلال كائنات متعددة، بما في ذلك [CellFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/) – يتم ترك خاصية [Width](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_width/) الخاصة بها في الغالب من الإصدارات السابقة، ومع ذلك، فإنها لا تزال مفيدة لتبسيط إعداد عرض الخلية.

من المهم معرفة أن الخاصية **CellFormat.Width** تعمل بشكل مختلف اعتمادا على خصائص العرض الأخرى الموجودة بالفعل في الجدول.

Aspose.Words يستخدم الترتيب التالي لحساب عرض الخلية:

| النظام | الممتلكات | الوصف |
| :- | :- | :- |
|  | [AllowAutoFit](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_allowautofit/) يتم تحديد | إذا تم تمكين **AutoFit**:<br />- قد ينمو الجدول بعد العرض المفضل لاستيعاب المحتوى-عادة لا يتقلص أقل من العرض المفضل<br />- يتم تجاهل أي تغيير في قيمة **CellFormat.Width** وسوف تتناسب الخلية مع محتوياتها بدلا من ذلك |
|  | [PreferredWidthType](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/get_type/) بقيمة **Points** أو **Percent** | **CellFormat.Width** يتم تجاهلها |
|  | [PreferredWidthType](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/get_type/) بقيمة **Auto** | يتم نسخ القيمة من **CellFormat.Width** وتصبح العرض المفضل للخلية (بالنقاط) |

{{% alert color="primary" %}}

لا يتم تحديث أي تغييرات على خاصية العرض في العرض المفضل ويجب بدلا من ذلك تطبيقها على العرض المفضل بدلا من ذلك.

{{% /alert %}}

{{% alert color="primary" %}}

أثناء إنشاء تخطيط جدول ثابت، حدد عرض الخلية. لا يمكن حفظ خلية بدون عرض بتنسيق DOC. تسمح تنسيقات المستندات بخلاف DOC، مثل DOCX، من حيث المبدأ، بحفظ الخلايا بدون عرض في تخطيط جدول ثابت.

{{% /alert %}}

## السماح بالتباعد بين الخلايا

يمكنك الحصول على أو تعيين أي مساحة إضافية بين خلايا الجدول مماثلة لخيار "تباعد الخلايا" في Microsoft Word. يمكن القيام بذلك باستخدام خاصية [AllowCellSpacing](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_allowcellspacing/).

يمكن رؤية مثال على كيفية تطبيق هذه الخيارات على جدول حقيقي في مستند في الصورة أدناه.

<img src="applying-formatting-10.png" alt="formatting-spacing-between-cells-aspose-words-cpp" style="width:500px"/>

يوضح مثال التعليمات البرمجية التالية كيفية تعيين التباعد بين الخلايا:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "allow-cell-spacing.h" >}}

## تطبيق الحدود والتظليل

يمكن تطبيق الحدود والتظليل إما على الجدول بأكمله باستخدام [Table.SetBorder](https://reference.aspose.com/words/cpp/aspose.words.tables/table/setborder/) و [Table.SetBorders](https://reference.aspose.com/words/cpp/aspose.words.tables/table/setborders/) و [Table.SetShading](https://reference.aspose.com/words/cpp/aspose.words.tables/table/setshading/)، أو فقط على خلايا محددة باستخدام [CellFormat.Borders](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_borders/) و [CellFormat.Shading](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_shading/). بالإضافة إلى ذلك، يمكن تعيين حدود الصف باستخدام [RowFormat.Borders](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_borders/)، ولكن لا يمكن تطبيق التظليل بهذه الطريقة.

تظهر الصور أدناه إعدادات الحدود والظل في Microsoft Word وخصائصها المقابلة في Aspose.Words.

![formatting-border-line-aspose-words-cpp](applying-formatting-6.png)

![formatting-cell-color-aspose-words-cpp](applying-formatting-7.png)

يوضح مثال الكود التالي كيفية تنسيق جدول وخلية بحدود وظلال مختلفة:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "format-table-and-cell-with-different-borders.h" >}}