---
title: الجدول Java
second_title: Aspose.Words for Java
articleTitle: الجدول التطبيقي
linktitle: الجدول التطبيقي
description: "نسق الجدول بالتفاصيل استخدام Java لتشكيل كل جزء من الجدول"
type: docs
weight: 70
url: /ar/java/applying-formatting/
timestamp: 2024-01-27-14-07-04
---

ويمكن تطبيق كل عنصر من عناصر الجدول بصيغة مختلفة. For example, table formatting will be applied to the entire table, row formatting to only particular rows, cell formatting to only certain cells.

Aspose.Words يوفر ثريا API لاسترجاع وتطبيق الشكل على طاولة يمكنك استخدام [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/), و [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) عقد لرسم الشكل.

وفي هذه المادة، سنتحدث عن كيفية تطبيق الصيغ على مختلف جداول الجداول، وما هي أطر إعداد الجداول Aspose.Words الدعم

## Apply Formatting to Different Nodes

وفي هذا الفرع، سننظر في تطبيق الشكل على مختلف الجداول.

### الجدول المستوى

تطبيق الشكل على طاولة يمكنك استخدام الممتلكات المتاحة على المقابل **Table** العقد باستخدام [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/), و [TableCollection](https://reference.aspose.com/words/java/com.aspose.words/tablecollection/) الصفوف

{{% alert color="primary" %}}

Note that the table must have at least one row before the table properties can be applied. هذا يعني أنه عند بناء طاولة مع [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/), يجب القيام بهذا الشكل بعد النداء الأول [InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell())، أو بعد أن يضاف الصف الأول إلى الجدول، أو عندما تُدرج المعايدة مباشرة في DOM.

{{% /alert %}}

الصور الواردة أدناه تظهر تمثيلاً **Table** السمات الشكلية Microsoft Word وما يقابلها من ممتلكات Aspose.Words.

![apply-formatting-to-table-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-1.png)

![apply-formatting-to-table-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-2.png)

ويبين المثال الرمزي التالي كيفية تطبيق الخطوط العريضة للحدود على طاولة:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "apply-outline-border.java" >}}

ويبيّن المثال الرمزي التالي كيفية بناء طاولة مع تمكين جميع الحدود (الحزن):

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "build-table-with-borders.java" >}}

### مستوى سطحي

يمكن التحكم في الصيغ على مستوى سطح الأرض** باستخدام [Row](https://reference.aspose.com/words/java/com.aspose.words/row/), [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/), و [RowCollection](https://reference.aspose.com/words/java/com.aspose.words/rowcollection/) الصفوف

{{% alert color="primary" %}}

ملاحظة: أ **Row** لا يمكن أن يكون سوى طفل **Table**. وفي الوقت نفسه، يجب أن يكون هناك على الأقل واحد **Cell** في **Row** حتى يمكن تطبيق هذا الشكل عليه.

{{% /alert %}}

الصور الواردة أدناه تظهر تمثيلاً **Row** السمات الشكلية Microsoft Word وما يقابلها من ممتلكات Aspose.Words.

![apply-formatting-to-row-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-3.png)

The following code example shows how to modify the table row formatting:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "modify-row-formatting.java" >}}

### النموذج على مستوى الخلية

التكوين على مستوى الخلية يتحكم فيه [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/), [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/), و [CellCollection](https://reference.aspose.com/words/java/com.aspose.words/cellcollection/) الصفوف

{{% alert color="primary" %}}

ملاحظة: أ **Cell** لا يمكن أن يكون سوى طفل **Row**. وفي الوقت نفسه، يجب أن يكون هناك على الأقل واحد [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) في **Cell** حتى يمكن تطبيق هذا الشكل عليه.

بالإضافة إلى **Paragraph**, يمكنك أيضا إدخال **Table** في **Cell**.

{{% /alert %}}

الصور الواردة أدناه تظهر تمثيلاً **Cell** السمات الشكلية Microsoft Word وما يقابلها من ممتلكات Aspose.Words.

![apply-formatting-to-cell-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-4.png)

![apply-auto-formatting-to-row-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-5.png)

The following code example shows how to modify the formatting of a table cell:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "modify-cell-formatting.java" >}}

The following code example shows how to set the amount of space (in points) to add to the left/top/right/bottom of the contents of the cell:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "cell-padding.java" >}}

## تحديد مرتفعات Row

أبسط طريقة لتحديد طول الصف هي استخدام **DocumentBuilder**. استخدام المناسب **RowFormat** العقارات، يمكنك وضع خط الطول الافتراضي أو تطبيق ارتفاع مختلف لكل صف على الطاولة

In Aspose.Words, ويسيطر على طول الطاولات ما يلي:

-ممتلكات الطول [Height](https://reference.aspose.com/words/java/com.aspose.words/row/format#Height)
-ممتلكات قاعدة الطول للصف [HeightRule](https://reference.aspose.com/words/java/com.aspose.words/row/format#HeightRule)

وفي الوقت نفسه، يمكن تحديد ارتفاع مختلف لكل صف، وهذا يتيح لك التحكم على نطاق واسع في الجداول.

{{% alert color="primary" %}}

يمكن تحديد خيارات القواعد لتحديد طول الجسم باستخدام [HeightRule](https://reference.aspose.com/words/java/com.aspose.words/heightrule/) الحقول

{{% /alert %}}

The following code example shows how to create a table that contains a single cell and apply row formatting:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "apply-row-formatting.java" >}}

## يرجى تحديد الجدول والزوجات

طاولة في Microsoft Word وتوفر الوثيقة عدة طرق مختلفة لإلغاء الجدول والزنزانات الفردية. هذه الخواص تسمح بتحكم كبير في مظهر و سلوك الطاولة Aspose.Words دعم سلوك الطاولات، كما في Microsoft Word.

It is important to know that table elements present several different properties that can affect how the widths of the overall table, as well as individual cells, is calculated:

-الاستعراض المفضّل على الطاولة
- الاستعارة المفضّلة على الخلايا الفردية
- السماح بالتشغيل الآلي على الطاولة

وتفاصيل هذه المادة عن كيفية عمل مختلف خصائص حساب الجدول وطريقة السيطرة الكاملة على حساب الأسلاك هذا
ومن المفيد بصفة خاصة معرفة الحالات التي لا يظهر فيها مخطط الجدول كما هو متوقع.

{{% alert color="primary" %}}

In most cases, the preferred cell is recommended than the table width. The preferred cell width is more in line with the DOCX format specification as well as the Aspose.Words نموذج

في الواقع، إنّ الاستعارة الخلوية قيمة مُحتسبة لشكل (دي سي إكس). إستعراض الخلايا الفعلي يمكن أن يعتمد على العديد من الأشياء فعلى سبيل المثال، يمكن أن يؤثر تغيير هوامش الصفحات أو عرض الطاولة المفضل على عرض الخلايا الفعلي.

The preferred cell width is a cell property that is stored in the document. لا يعتمد على أي شيء ولا يتغير عندما تغير الطاولة أو غيرها من خصائص الخلية

{{% /alert %}}

{{% alert color="primary" %}}

تتصل جميع الممتلكات والأساليب المبينة في هذه المادة بكيفية عمل الجداول Microsoft Word. لذا في معظم الحالات، إذا كنت تقوم ببناء جدولك برنامجياً لكن تجد صعوبة في إنشاء الطاولة المرغوبة، Microsoft Word أولا وبعد ذلك ببساطة نسخ القيم الشكلية في تطبيقك.

{{% /alert %}}

### How to Use Preferred Width

وتُعرَّف المستعارة المرغوبة لطاولة أو خلايا فردية من خلال الممتلكات المستعارة المفضلة، وهي الحجم الذي يسعى عنصر إلى تحقيق صلاحيته. أي أن الباروكات المفضلة يمكن تحديدها على الطاولة بأكملها أو على كل خلايا. In some situations it may not be possible to fit this width exactly, but the actual width will be close to this value in most cases.

يُحدَّد النوع المفضَّل والقيمة المفضَّلين المناسبين باستخدام أساليب [PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/) الفصل:

- [Auto](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#AUTO) حقل لتحديد " الأسلاك غير المفضلة "
- [FromPercent](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#fromPercent-double) طريقة تحديد النسبة المئوية للمستعارة
- [FromPoints](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#fromPoints-double) طريقة تحديد استخدامات النقاط

وتظهر الصور الواردة أدناه تمثيلاً لـ " ملامح العرض المستعار "* Microsoft Word وما يقابلها من ممتلكات Aspose.Words.

![formatting-table-properties-aspose-words-java](/words/java/applying-formatting/applying-formatting-8.png)

ويمكن الاطلاع على مثال على كيفية تطبيق هذه الخيارات على جدول حقيقي في الوثيقة في الصورة أدناه.

![table-applied-options-java](/words/java/applying-formatting/applying-formatting-9.png)

{{% alert color="primary" %}}

قبل أن تستخدمي البارود المفضّل في طاولة يجب أن تتأكدي أن الطاولة تحتوي على صف واحد على الأقل وهذا هو السبب في أن هذه الجداول ترسم في شكل Microsoft Word أو في وثيقة أنشئت في Aspose.Words مخزنة في طابور الطاولة

{{% /alert %}}

#### يحدد الجدول المؤجل أو الأرملة

In Aspose.Words, طاولات وزوابق خلوية مجهزة باستخدام [Table.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/table/#getPreferredWidth) الممتلكات والممتلكات [CellFormat.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getPreferredWidth) الممتلكات، مع توافر الخيارات في [PreferredWidthType](https://reference.aspose.com/words/java/com.aspose.words/preferredwidthtype/) العد:

- **Auto**, وهو ما يعادل عدم وجود مجموعة فضفاضة
- **Percent**, التي تناسب العنصر المتعلق بالحيز المتاح في النوافذ أو حجم الحاويات، وتعيد حساب القيمة عندما تتغير الباروكات المتاحة
- **Points**, التي تتطابق مع عنصر من عناصر الاستعارة المحددة في النقاط

{{% alert color="primary" %}}

وفي حالة التقصير، يمكن وصف الجدول بأنه مجهز بنسبة 100 في المائة من المساحة المتاحة في الصفحة. وفي هذه الحالة، يعني هذا أن الجدول سيحاول أن يأخذ المساحة بين هامش الصفحات اليسرى واليمين.

{{% /alert %}}

استخدام [Table.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/table/#getPreferredWidth) وسوف تُعدِّل الممتلكات عرضها المفضَّل فيما يتعلق بحاويتها: صفحة، عمود نصي، أو خلية طاولة خارجية إذا كانت طاولة محجوزة.

The following code example shows how to set the table to auto-fit to 50% of the page width:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-page-width.java" >}}

استخدام [CellFormat.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getPreferredWidth) الممتلكات في زنزانة معينة سوف تعدل أسلوبها المفضل

The following code example shows how to set the different preferred width settings:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "preferred-width-settings.java" >}}

#### ابحثوا عن نوع الأرملة المفضّلة وقيمتها

يمكنك استخدام [Type](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#getType) و [Value](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#getValue) (ب) الممتلكات التي يمكن أن تُعثر على التفاصيل المفضلة للمنضدة أو الخلية المرغوبة.

ويبيّن المثال الرمزي التالي كيفية استرجاع نوع الاستعارة المفضل من خلية طاولة:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "retrieve-preferred-width-type.java" >}}

### How to Set Autofit

The [AllowAutoFit](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowAutoFit) فالملكية تتيح للزنزانات في طاولة النمو والتقلص وفقاً لمعيار مختار. على سبيل المثال، يمكنك استخدام **AutoFit to Window** خيار تأقلم الطاولة مع عرض الصفحة **AutoFit to Content** خيار السماح لكل خلية بأن تنمو أو تتقلص وفقاً لمحتواها.

{{% alert color="primary" %}}

Additionally, the **AllowAutoFit** ويمكن استخدام الممتلكات بالاقتران مع عرض خليوي مفضّل لتشكيل خلية تناسب محتواها تلقائياً، ولكن لها أيضاً استعارة أولية. إذا كان ذلك ضرورياً، فإنّ إستعراض الزنزانة يمكن أن ينمو من خلال هذا البارود.

{{% /alert %}}

بالخطأ Aspose.Words تدرج طاولة جديدة باستخدام **AutoFit to Window**. سيتم توزيع الجدول وفقاً لاستعراض الصفحات المتاح لإستعادة طاولة يمكنك الاتصال [AutoFit](https://reference.aspose.com/words/java/com.aspose.words/table/#autoFit-int) طريقة هذه الطريقة تقبل [AutoFitBehavior](https://reference.aspose.com/words/java/com.aspose.words/autofitbehavior/) يُعدّدُ الذي يُحدّدُ أيّ نوع من التلقّي يُطبّق على الجدول.

It is important to know that the autofit method is actually a shortcut that applies different properties to the table at the same time. هذه خصائص تعطي الطاولة السلوك الملاحظ سنناقش هذه الممتلكات لكل خيار آلي

ويبين المثال الرمزي التالي كيفية وضع جدول لتقلص أو نمو كل خلية وفقا لمحتوياتها:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "allow-auto-fit.java" >}}

سوف نستخدم الطاولة التالية لنطبق مختلف مواقع السيارات كعرض

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-1.png" alt="apply-different-autofit-settings-to-a-table-aspose-words-java" style="width:500px"/>

#### AutoFit Table to Window

وعندما يُطبَّق التلقّي على النافذة، تُنفَّذ العمليات التالية في الواقع خلف المشاهد:

1 The **Table.AllowAutoFit** تُمكَّن الممتلكات من إعادة إحياء الأعمدة آلياً لتناسب المحتوى المتاح، باستخدام **Table.PreferredWidth** قيمة 100 في المائة
2. **CellFormat.PreferredWidth** أزيلت من جميع خلايا المائدة
      {{% alert color="primary" %}}
   Note that this is slightly different from the Microsoft Word السلوك، حيث يُفضّلُ كلّ خلية إستعراض مُحدّد إلى القيمِ المناسبةِ استناداً إلى حجمِها الحالي ومضمونها. Aspose.Words لا يستكمل العرض المفضّل حتى يتم تبرئته
      {{% /alert %}}
3 ويعاد حساب المستعارات العمودية للمحتوى الحالي من الجدول - النتيجة النهائية هي جدول يحتل كامل الاستعارة المتاحة
4 يتغيّر عرض الأعمدة في الجدول تلقائياً نظراً لأن المستخدم يحرر النص

The following code example shows how to autofit a table to the page width:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-table-to-page-width.java" >}}

ويمكن الاطلاع على مثال على كيفية تطبيق هذه الخيارات على الجدول أعلاه في الصورة الواردة أدناه.

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-2.png" alt="autofit-table-aspose-words-java" style="width:500px"/>

#### AutoFit Table to Content

وعندما يوضع الجدول آلياً للمحتوى، تُتخذ الخطوات التالية فعلاً خلف المشاهد:

1 The **Table.AllowAutoFit** تُمكّن الممتلكات من إعادة إحياء كل خلية تلقائيا وفقا لمحتواها

2. مسحة الطاولة المفضلة تم إزالتها **Table.PreferredWidth**, **CellFormat.PreferredWidth** تُزال لكل خلية من الطاولات
      {{% alert color="primary" %}}

   ملاحظة أن هذا الخيار الآلي يزيل الشعر المستعار المفضل من الخلايا، كما هو الحال في Microsoft Word. إذا كنت تريد الاحتفاظ بحجم العمود وزيادة أو تخفيض الأعمدة لتناسب المحتوى، يجب أن تحدد **Table.AllowAutoFit** الممتلكات إلى **True** من تلقاء نفسها بدلاً من استخدام الطريق المختصر{{% /alert %}}

3 ويعاد حساب المستعارات العمودية لمحتوى الجدول الحالي - والنتيجة النهائية هي الجدول الذي يعاد فيه بصورة تلقائية تصنيف المستعارات العمودية واستعراض الجدول بأكمله بحيث يلائم المحتوى على أفضل وجه مع قيام المستخدم بتعديل النص

The following code example shows how to autofit a table to its content:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-table-to-contents.java" >}}

ويمكن الاطلاع على مثال على كيفية تطبيق هذه الخيارات على الجدول أعلاه في الصورة الواردة أدناه.

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-3.png" alt="resize-column-autofit-settings-aspose-words-java" style="width:500px"/>

#### Disable AutoFit in Table and Use Fixed Column Widths

وإذا كان الجدول معوقاً آلياً، وبدلاً من ذلك، تُتخذ الخطوات التالية:

1 **Table.AllowAutoFit** الممتلكات معوقة بحيث لا تنمو الأعمدة أو تتقلص إلى محتواها
2. تم سحب العرض المفضّل للطاولة بأكملها **Table.PreferredWidth**, **CellFormat.PreferredWidth** أزيلت من جميع خلايا المائدة
3 النتيجة النهائية هي الجدول الذي تحدد أسلاكه [CellFormat.Width](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getWidth) الممتلكات التي لا تعاد صياغتها تلقائيا عندما يدخل المستخدم نصها أو عندما يعاد ترقيم الصفحة

{{% alert color="primary" %}}

Note that if no width is specified for **CellFormat.Width**, وتستخدم القيمة الافتراضية لبوصة واحدة (72 نقطة).

{{% /alert %}}

ويبيّن المثال الرمزي التالي كيفية تعطيل أوتوماتيكيته وتمكينه من الحصول على عرض ثابت للجدول المحدد:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-table-to-fixed-column-widths.java" >}}

ويمكن الاطلاع على مثال على كيفية تطبيق هذه الخيارات على الجدول أعلاه في الصورة الواردة أدناه.

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-4.png" alt="disable-autofit-settings-to-a-table-aspose-words-java" style="width:500px"/>

### ترتيب الأسبقية عند حساب الخلية

Aspose.Words السماح للمستعملين بتعريف استخدام طاولة أو خلية عبر أجسام متعددة، بما في ذلك [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) - [Width](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getWidth) غير أن معظم الممتلكات تُترك من نسخ سابقة، إلا أنه لا يزال من المفيد تبسيط وضع الباروكات الخلوية.

من المهم معرفة أن **CellFormat.Width** وتختلف أعمال الملكية تبعاً لممتلكات المستعارات الأخرى الموجودة بالفعل في الجدول.

Aspose.Words يستعمل الترتيب التالي لحساب أسلاك الخلايا:

|  الأمر |  الممتلكات |  الوصف |
|  -----  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  1      |  [AllowAutoFit](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowAutoFit) تحدد |  إذا **AutoFit** مكنت من:<br/>- قد ينمو الجدول بعد العرض المفضّل لاستيعاب المحتوى - وهو عادة لا ينكمش تحت العرض المفضل<br/>- أي تغيير إلى **CellFormat.Width** يتم تجاهل القيمة وستلائم الخلية محتوياتها بدلا من ذلك |
|  2      |  [PreferredWidthType](https://reference.aspose.com/words/java/com.aspose.words/preferredwidthtype/) ذات قيمة **Points** أو **Percent** |  **CellFormat.Width** تم تجاهله |
|  3      |  [PreferredWidthType](https://reference.aspose.com/words/java/com.aspose.words/preferredwidthtype/) ذات قيمة **Auto** |  القيمة من **CellFormat.Width** يتم نسخه ويصبح البارود المفضل للخلية |

{{% alert color="primary" %}}

ولا تُحدَّث أي تغييرات في ممتلكات المستعارات في المستعارات المفضلة، بل يجب أن تُطبَّق بدلاً من ذلك على الأسلاك المفضلة.

{{% /alert %}}

{{% alert color="primary" %}}

وفي الوقت الذي يُنشئ فيه مخططاً محدداً للمائدة، يُحدّد عرض الخلايا. لا يمكن إنقاذ زنزانة بدون شعر مستعار في شكل دو سي وتسمح صيغ الوثائق الأخرى غير الوثيقة DOC، مثل DOCX، من حيث المبدأ، بإنقاذ الخلايا دون استخدام البارود في مخطط جدول ثابت.

{{% /alert %}}

## السماح بالمباعدة بين الخلايا

يمكنك الحصول على أو تحديد أي مساحة إضافية بين خلايا طاولة مشابهة لخيار "المباعدة" في Microsoft Word. يمكن القيام بذلك باستخدام [AllowCellSpacing](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowCellSpacing) ملكية

ويمكن الاطلاع على مثال على كيفية تطبيق هذه الخيارات على جدول حقيقي في الوثيقة في الصورة أدناه.

<img src="/words/java/applying-formatting/applying-formatting-10.png" alt="formatting-spacing-between-cells-aspose-words-java" style="width:500px"/>

The following code example shows how to set the spacing between cells:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "allow-cell-spacing.java" >}}

## الحدود التطبيقية والتشريد

يمكن تطبيق الحدود والظل على الطاولة بأكملها باستخدام [Table.SetBorder](https://reference.aspose.com/words/java/com.aspose.words/table/#setBorder-int-int-double-java.awt.Color-boolean), [Table.SetBorders](https://reference.aspose.com/words/java/com.aspose.words/table/#setBorders-int-double-java.awt.Color) و [Table.SetShading](https://reference.aspose.com/words/java/com.aspose.words/table/#setShading-int-java.awt.Color-java.awt.Color), أو فقط إلى خلايا محددة تستخدم [CellFormat.Borders](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getBorders) و [CellFormat.Shading](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getShading). وبالإضافة إلى ذلك، يمكن تحديد حدود الصف باستخدام [RowFormat.Borders](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getBorders), غير أنه لا يمكن تطبيق الظل بهذه الطريقة.

الصور الواردة أدناه تظهر الحدود والظل Microsoft Word وما يقابلها من ممتلكات Aspose.Words.

![apply-borders-shading-aspose-words-java-1](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-6.png)


![apply-borders-shading-aspose-words-java-2](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-7.png)


ويبين المثال الرمزي التالي كيفية تشكيل طاولة وخلية ذات حدود وظلالات مختلفة:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "format-table-and-cell-with-different-borders.java" >}}
