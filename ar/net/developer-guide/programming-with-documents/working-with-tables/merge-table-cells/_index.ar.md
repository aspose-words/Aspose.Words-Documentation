---
title: دمج خلايا الجدول في C#
second_title: Aspose.Words لـ .NET
articleTitle: دمج خلايا الجدول
linktitle: دمج خلايا الجدول
description: "كيفية دمج خلايا الجدول في C#. تحقق من دمج الخلايا في الجدول باستخدام C#."
type: docs
weight: 40
url: /ar/net/working-with-merged-cells/
timestamp: 2024-01-27-14-07-04
---

في بعض الأحيان، تتطلب صفوف معينة في الجدول عنوانًا أو كتلًا كبيرة من النص تشغل العرض الكامل للجدول. للحصول على تصميم مناسب للجدول، يمكن للمستخدم دمج عدة خلايا في جدول واحد. يدعم Aspose.Words الخلايا المدمجة عند العمل مع جميع تنسيقات الإدخال، بما في ذلك استيراد محتوى HTML.

## كيفية دمج خلايا الجدول

في Aspose.Words، يتم تمثيل الخلايا المدمجة بالخصائص التالية لفئة [CellFormat](https://reference.aspose.com/words/ar/net/aspose.words.tables/cellformat/):

- [HorizontalMerge](https://reference.aspose.com/words/ar/net/aspose.words.tables/cellformat/horizontalmerge/) الذي يصف ما إذا كانت الخلية جزءًا من دمج أفقي للخلايا
- [VerticalMerge](https://reference.aspose.com/words/ar/net/aspose.words.tables/cellformat/verticalmerge/) الذي يصف ما إذا كانت الخلية جزءًا من دمج عمودي للخلايا

تحدد قيم هذه الخصائص سلوك دمج الخلايا:

- الخلية الأولى في سلسلة من الخلايا المدمجة سوف تحتوي على [CellMerge.First](https://reference.aspose.com/words/ar/net/aspose.words.tables/cellmerge/)
- أي خلايا مدمجة لاحقًا ستحتوي على [CellMerge.Previous](https://reference.aspose.com/words/ar/net/aspose.words.tables/cellmerge/)
- الخلية التي لم يتم دمجها سيكون لها [CellMerge.None](https://reference.aspose.com/words/ar/net/aspose.words.tables/cellmerge/)

{{% alert color="primary" %}}

في بعض الأحيان، عند تحميل خلايا المستند الموجودة في جدول، ستظهر مدمجة. ومع ذلك، يمكن أن تكون في الواقع خلية واحدة طويلة - في بعض الأحيان يقوم Microsoft Word بتصدير الخلايا المدمجة بهذه الطريقة. يمكن أن يكون هذا مربكًا عند محاولة العمل مع الخلايا الفردية، ولكن لا يبدو أن هناك أي نمط محدد فيما يتعلق بوقت حدوث ذلك.

{{% /alert %}}

## تحقق مما إذا تم دمج الخلية

للتحقق مما إذا كانت الخلية جزءًا من سلسلة من الخلايا المدمجة، فإننا ببساطة نتحقق من خصائص **HorizontalMerge** و**VerticalMerge**.

يوضح مثال التعليمات البرمجية التالي كيفية طباعة نوع دمج الخلايا الأفقي والرأسي:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "check-cells-merged.cs" >}}

{{% alert color="primary" %}}

يمكنك تنزيل الملف النموذجي لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx).

{{% /alert %}}

## دمج خلايا الجدول عند استخدام DocumentBuilder

لدمج الخلايا في جدول تم إنشاؤه باستخدام [DocumentBuilder](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/)، تحتاج إلى تعيين نوع الدمج المناسب لكل خلية حيث يتوقع الدمج - أولاً **CellMerge.First** ثم **CellMerge.Previous**.

يجب عليك أيضًا أن تتذكر مسح إعداد الدمج لتلك الخلايا التي لا يلزم فيها الدمج - يمكن القيام بذلك عن طريق تعيين أول خلية غير مدمجة على **CellMerge.None**. إذا لم يتم ذلك، سيتم دمج كافة الخلايا في الجدول.

يوضح مثال التعليمات البرمجية التالي كيفية إنشاء جدول يحتوي على صفين حيث يتم دمج الخلايا الموجودة في الصف الأول أفقيًا:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "horizontal-merge.cs" >}}

يوضح مثال التعليمات البرمجية التالي كيفية إنشاء جدول مكون من عمودين حيث يتم دمج الخلايا الموجودة في العمود الأول عموديًا:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "vertical-merge.cs" >}}

## دمج خلايا الجدول في حالات أخرى

في المواقف الأخرى التي لا يتم فيها استخدام **DocumentBuilder**، كما هو الحال في جدول موجود، قد لا يكون دمج الخلايا بالطريقة السابقة سهلاً. بدلاً من ذلك، يمكننا تغليف العمليات الأساسية المتعلقة بتطبيق خصائص الدمج على الخلايا بطريقة تجعل المهمة أسهل بكثير. تشبه هذه الطريقة طريقة الدمج التلقائي، والتي يتم استدعاؤها لدمج نطاق من الخلايا في جدول.

سيقوم الكود أدناه بدمج خلايا الجدول في النطاق المحدد، بدءًا من الخلية المحددة وانتهاءً بالخلية النهائية. في هذه الحالة، يمكن أن يمتد النطاق لعدة صفوف أو أعمدة:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "merge-cells.cs" >}}

يوضح مثال التعليمات البرمجية التالي كيفية دمج نطاق من الخلايا بين خليتين محددتين:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "merge-cell-range.cs" >}}

{{% alert color="primary" %}}

يمكنك تنزيل الملف النموذجي لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx).

{{% /alert %}}

اعتمادًا على إصدار .NET Framework الذي تستخدمه، قد ترغب في تحسين هذه الطريقة عن طريق تحويلها إلى طريقة ملحقة. في هذه الحالة، يمكنك استدعاء هذه الطريقة مباشرة على خلية لدمج نطاق من الخلايا، مثل `cell1.Merge(cell2)`.

## الخلايا المدمجة عموديًا وأفقيًا في جدول HTML

كما قلنا في المقالات السابقة، الجدول في Microsoft Word هو عبارة عن مجموعة من الصفوف المستقلة. يحتوي كل صف على مجموعة من الخلايا المستقلة عن خلايا الصفوف الأخرى. وبالتالي، في جدول Microsoft Word لا يوجد كائن مثل "العمود"، و"العمود الأول" هو شيء مثل "مجموعة الخلايا الأولى من كل صف في الجدول". يتيح ذلك للمستخدمين الحصول على جدول، على سبيل المثال، يتكون الصف الأول من خليتين - 2 سم و1 سم، والصف الثاني يتكون من خليتين مختلفتين - عرض 1 سم و2 سم. ويدعم Aspose.Words مفهوم الجداول هذا.

يحتوي الجدول في HTML على بنية مختلفة بشكل أساسي: كل صف يحتوي على نفس عدد الخلايا و(هذا مهم للمهمة) كل خلية لها عرض العمود المقابل، وهو نفسه بالنسبة لجميع الخلايا في عمود واحد. لذا، إذا قام **HorizontalMerge** و**VerticalMerge** بإرجاع قيمة غير صحيحة، فاستخدم مثال التعليمات البرمجية التالي:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "print-horizontal-and-vertical-merged.cs" >}}

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "horizontal-and-vertical-merge-helper-classes.cs" >}}

{{% alert color="primary" %}}

يمكنك تنزيل الملف النموذجي لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx).

{{% /alert %}}

## تحويل إلى خلايا مدمجة أفقيا

في بعض الأحيان لا يكون من الممكن اكتشاف الخلايا التي تم دمجها لأن بعض الإصدارات الأحدث من Microsoft Word لم تعد تستخدم علامات الدمج عند دمج الخلايا أفقيًا. ولكن بالنسبة للحالات التي يتم فيها دمج الخلايا في خلية أفقيًا حسب عرضها باستخدام إشارات الدمج، توفر Aspose.Words طريقة `ConvertToHorizontallyMergedCells` لتحويل الخلايا. تقوم هذه الطريقة ببساطة بتحويل الجدول وإضافة خلايا جديدة حسب الحاجة.

يوضح مثال التعليمات البرمجية التالي الطريقة المذكورة أعلاه قيد التشغيل:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "convert-to-horizontally-merged-cells.cs" >}}
