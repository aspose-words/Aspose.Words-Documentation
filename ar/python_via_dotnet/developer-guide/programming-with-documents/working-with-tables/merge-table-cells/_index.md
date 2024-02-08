---
title: دمج خلايا الجدول
second_title: Aspose.Words لـ Python via .NET
articleTitle: دمج خلايا الجدول
linktitle: دمج خلايا الجدول
description: "كيفية دمج خلايا الجدول في Python. تحقق من دمج الخلايا في الجدول باستخدام Python."
type: docs
weight: 40
url: /ar/python-net/working-with-merged-cells/
---

في بعض الأحيان، تتطلب صفوف معينة في الجدول عنوانًا أو كتلًا كبيرة من النص تشغل العرض الكامل للجدول. للحصول على تصميم مناسب للجدول، يمكن للمستخدم دمج عدة خلايا في جدول واحد. يدعم Aspose.Words الخلايا المدمجة عند العمل مع جميع تنسيقات الإدخال، بما في ذلك استيراد محتوى HTML.

## كيفية دمج خلايا الجدول

في Aspose.Words، يتم تمثيل الخلايا المدمجة بالخصائص التالية لفئة [CellFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/):

- [HorizontalMerge](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/horizontal_merge/) الذي يصف ما إذا كانت الخلية جزءًا من دمج أفقي للخلايا
- [VerticalMerge](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/vertical_merge/) الذي يصف ما إذا كانت الخلية جزءًا من دمج عمودي للخلايا

تحدد قيم هذه الخصائص سلوك دمج الخلايا:

- الخلية الأولى في سلسلة من الخلايا المدمجة سوف تحتوي على [CellMerge.First](https://reference.aspose.com/words/python-net/aspose.words.tables/cellmerge/#first)
- أي خلايا مدمجة لاحقًا ستحتوي على [CellMerge.Previous](https://reference.aspose.com/words/python-net/aspose.words.tables/cellmerge/#previous)
- الخلية التي لم يتم دمجها سيكون لها [CellMerge.None](https://reference.aspose.com/words/python-net/aspose.words.tables/cellmerge/#none)

{{% alert color="primary" %}}

في بعض الأحيان، عند تحميل خلايا المستند الموجودة في جدول، ستظهر مدمجة. ومع ذلك، يمكن أن تكون في الواقع خلية واحدة طويلة - في بعض الأحيان يقوم Microsoft Word بتصدير الخلايا المدمجة بهذه الطريقة. يمكن أن يكون هذا مربكًا عند محاولة العمل مع الخلايا الفردية، ولكن لا يبدو أن هناك أي نمط محدد فيما يتعلق بوقت حدوث ذلك.

{{% /alert %}}

## تحقق مما إذا تم دمج الخلية

للتحقق مما إذا كانت الخلية جزءًا من سلسلة من الخلايا المدمجة، فإننا ببساطة نتحقق من خصائص **HorizontalMerge** و**VerticalMerge**.

يوضح مثال التعليمات البرمجية التالي كيفية طباعة نوع دمج الخلايا الأفقي والرأسي:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "check-cells-merged.py" >}}

{{% alert color="primary" %}}

يمكنك تنزيل الملف النموذجي لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx).

{{% /alert %}}

## دمج خلايا الجدول عند استخدام DocumentBuilder

لدمج الخلايا في جدول تم إنشاؤه باستخدام [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/)، تحتاج إلى تعيين نوع الدمج المناسب لكل خلية حيث يتوقع الدمج - أولاً **CellMerge.First** ثم **CellMerge.Previous**.

يجب عليك أيضًا أن تتذكر مسح إعداد الدمج لتلك الخلايا التي لا يلزم فيها الدمج - يمكن القيام بذلك عن طريق تعيين أول خلية غير مدمجة على **CellMerge.None**. إذا لم يتم ذلك، سيتم دمج كافة الخلايا في الجدول.

يوضح مثال التعليمات البرمجية التالي كيفية إنشاء جدول يحتوي على صفين حيث يتم دمج الخلايا الموجودة في الصف الأول أفقيًا:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "horizontal-merge.py" >}}

يوضح مثال التعليمات البرمجية التالي كيفية إنشاء جدول مكون من عمودين حيث يتم دمج الخلايا الموجودة في العمود الأول عموديًا:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "vertical-merge.py" >}}

## دمج خلايا الجدول في حالات أخرى

في المواقف الأخرى التي لا يتم فيها استخدام **DocumentBuilder**، كما هو الحال في جدول موجود، قد لا يكون دمج الخلايا بالطريقة السابقة سهلاً. بدلاً من ذلك، يمكننا تغليف العمليات الأساسية المتعلقة بتطبيق خصائص الدمج على الخلايا بطريقة تجعل المهمة أسهل بكثير. تشبه هذه الطريقة طريقة الدمج التلقائي، والتي يتم استدعاؤها لدمج نطاق من الخلايا في جدول.

سيقوم الكود أدناه بدمج خلايا الجدول في النطاق المحدد، بدءًا من الخلية المحددة وانتهاءً بالخلية النهائية. في هذه الحالة، يمكن أن يمتد النطاق لعدة صفوف أو أعمدة:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "merge-cells.py" >}}

يوضح مثال التعليمات البرمجية التالي كيفية دمج نطاق من الخلايا بين خليتين محددتين:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "merge-cell-range.py" >}}

{{% alert color="primary" %}}

يمكنك تنزيل الملف النموذجي لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx).

{{% /alert %}}

اعتمادًا على إصدار إطار العمل الذي تستخدمه، قد ترغب في تحسين هذه الطريقة عن طريق تحويلها إلى طريقة ملحقة. في هذه الحالة، يمكنك استدعاء هذه الطريقة مباشرة على خلية لدمج نطاق من الخلايا، مثل `cell1.Merge(cell2)`.

## تحويل إلى خلايا مدمجة أفقيا

في بعض الأحيان لا يكون من الممكن اكتشاف الخلايا التي تم دمجها لأن بعض الإصدارات الأحدث من Microsoft Word لم تعد تستخدم علامات الدمج عند دمج الخلايا أفقيًا. ولكن بالنسبة للحالات التي يتم فيها دمج الخلايا في خلية أفقيًا حسب عرضها باستخدام إشارات الدمج، توفر Aspose.Words طريقة `ConvertToHorizontallyMergedCells` لتحويل الخلايا. تقوم هذه الطريقة ببساطة بتحويل الجدول وإضافة خلايا جديدة حسب الحاجة.

يوضح مثال التعليمات البرمجية التالي الطريقة المذكورة أعلاه قيد التشغيل:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "convert-to-horizontally-merged-cells.py" >}}
