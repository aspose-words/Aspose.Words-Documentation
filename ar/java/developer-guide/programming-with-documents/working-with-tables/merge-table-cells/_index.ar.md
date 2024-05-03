---
title: خلايا طاولة صغيرة Java
second_title: Aspose.Words for Java
articleTitle: خلايا المائدة
linktitle: خلايا المائدة
description: "How to merge table cells in Java. تحقق إذا تم دمج الخلايا في الطاولة باستخدام Java."
type: docs
weight: 40
url: /ar/java/working-with-merged-cells/
---

وفي بعض الأحيان، تتطلب بعض الصفوف في طاولة ما عنواناً أو مجموعة كبيرة من النصوص التي تتناول العرض الكامل للجدول. ومن أجل التصميم السليم للطاولة، يمكن للمستعمل أن يدمج عدة خلايا طاولة في خلية واحدة. Aspose.Words:: دعم الخلايا المدمجة عند العمل بجميع أشكال المدخلات، بما في ذلك استيراد محتوى HTML.

## How to Merge Table Cells

In Aspose.Words, تم تمثيل الخلايا المدمجة بالممتلكات التالية [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) الفصل:

- [HorizontalMerge](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getHorizontalMerge) الذي يصف ما إذا كانت الخلية جزء من الدمج الأفقي للخلايا
- [VerticalMerge](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getVerticalMerge) الذي يصف ما إذا كانت الخلية جزء من الدمج الرأسي للخلايا

وقيم هذه الممتلكات تحدد سلوك الخلايا المدمج:

- الخلية الأولى في سلسلة من الخلايا المدمجة [CellMerge.First](https://reference.aspose.com/words/java/com.aspose.words/cellmerge/#FIRST)
- Any subsequently merged cells will have [CellMerge.Previous](https://reference.aspose.com/words/java/com.aspose.words/cellmerge/#PREVIOUS)
- خلية غير مدمجة سيكون [CellMerge.None](https://reference.aspose.com/words/java/com.aspose.words/cellmerge/#NONE)

![work-with-merged-cells-aspose-words-java](/words/java/working-with-merged-cells/working-with-merged-cells-1.png)

{{% alert color="primary" %}}

وفي بعض الأحيان، عندما يتم تحميل خلايا الوثائق الموجودة على طاولة ما، فإنها تبدو مدمجة. غير أنه يمكن أن يكون في الواقع زنزانة طويلة - وأحيانا Microsoft Word الصادرات من الخلايا المدمجة من هنا هذا يمكن أن يكون مربكاً عندما يحاول العمل مع خلايا فردية لكن لا يبدو أن هناك أي نمط معين

{{% /alert %}}

## تحققي إذا كانت الخلية مزورة

لتفقد إذا كانت الخلية جزء من سلسلة من الخلايا المدمجة، نحن ببساطة تحقق من **HorizontalMerge** و **VerticalMerge** الممتلكات.

ويبين المثال الرمزي التالي كيفية طباعة نوع الخلية الأفقية والرأسية:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "check-cells-merged.java" >}}

## Merge Table Cells when Using DocumentBuilder

لدمج الخلايا في طاولة مع [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/), يجب أن تضعي نوع الدمج المناسب لكل خلية حيث يتوقع الدمج **CellMerge.First** ثم **CellMerge.Previous**.

أيضاً، يجب أن تتذكّر أن توضّح الدمج في تلك الزنزانات حيث لا يُشترط أيّ دمج - هذا يمكن أن يتم عن طريق إنشاء أول خلية غير زجرية **CellMerge.None**. وإذا لم يتم ذلك، سيتم دمج جميع الخلايا في الجدول.

The following code example shows how to create a table with two rows where the cells in the first row are merged horizontally:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "horizontal-merge.java" >}}

The following code example shows how to create a two-column table where the cells in the first column are spiritually merged:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "vertical-merge.java" >}}

## خلايا المائدة في قضايا أخرى

في حالات أخرى **DocumentBuilder** ولا يُستخدم، كما هو الحال في الجدول الحالي، الخلايا المدمجة بالطريقة السابقة قد لا تكون سهلة. وبدلا من ذلك، يمكننا أن نغلف العمليات الأساسية التي تنطوي عليها تطبيق الخواص المدمجة على الخلايا بطريقة تجعل المهمة أسهل بكثير. وهذه الطريقة مماثلة لأسلوب التشغيل الآلي الكبير، الذي يُدعى إلى دمج مجموعة من الخلايا في جدول.

The code below will merge the table cells in the specified range, starting at the given cell and ending at the end cell. In this case, the range can span multiple rows or columns:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "merge-cells.java" >}}

The following code example shows how to merge a range of cells between two specified cells:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "merge-cell-range.java" >}}

## خلايا مرجانية وبصرية في جدول HTML

كما قلنا في المقالات السابقة، طاولة Microsoft Word هي مجموعة من الصفوف المستقلة. Each row has a set of cells that are independent of the cells of other rows. وهكذا، في Microsoft Word الجدول لا يوجد جسم مثل " العميد " و " العمود الأول " هو شيء مثل " مجموعة الخلايا الأولى لكل صف في الجدول ". ويسمح هذا للمستعملين بالحصول على جدول يتكون فيه، على سبيل المثال، الصف الأول من زنزانتين - 2 سم و 1 سم، ويتألف الصف الثاني من زنزانتين مختلفتين - 1 سم و 2 سم. و Aspose.Words يؤيد مفهوم الجداول هذا.

ويوجد في جدول في نظام HTML هيكل مختلف أساساً: لكل صف نفس عدد الزنزانات (وهو مهم للمهمة) ولكل خلية سوابق العمود المقابل، وهو ما ينطبق على جميع الخلايا في عمود واحد. إذا **HorizontalMerge** و **VerticalMerge** العودة إلى قيمة غير صحيحة، استخدام المثال الرمزي التالي:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "print-horizontal-and-vertical-merged.java" >}}

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "horizontal-and-vertical-merge-helper-classes.java" >}}

## منحرف إلى هوريزونتال خلايا مرنة

في بعض الأحيان لا يمكن اكتشاف أي خلايا يتم دمجها لأن بعض النسخ الأحدث Microsoft Word لم يعد يستعمل الأعلام عندما تدمج الخلايا أفقياً لكن في الحالات التي تدمج فيها الخلايا في زنزانة أفقياً من قبل أسلاكها باستخدام أعلام مروعة Aspose.Words يوفر `ConvertToHorizontallyMergedCells` طريقة لتحويل الخلايا وهذه الطريقة ببساطة تحول الجدول وتضيف خلايا جديدة حسب الحاجة.

ويبيّن المثال الرمزي التالي الطريقة المذكورة أعلاه المعمول بها:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "convert-to-horizontally-merged-cells.java" >}}
