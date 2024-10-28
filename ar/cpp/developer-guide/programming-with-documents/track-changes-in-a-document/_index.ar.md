---
title: تتبع التغييرات في مستند في C++
second_title: Aspose.Words ل C++
articleTitle: تتبع التغييرات في المستند
linktitle: تتبع التغييرات في المستند
description: "تتبع التغييرات على المحتوى والتنسيق الذي أجريته أنت أو الآخرون باستخدام C++. الوصول إلى المراجعات الفردية في مستند وتطبيق خصائص مختلفة عليها."
type: docs
weight: 270
url: /ar/cpp/track-changes-in-a-document/
---

تتيح لك وظيفة تتبع التغييرات، والمعروفة أيضا باسم المراجعة، تتبع التغييرات في المحتوى والتنسيق التي أجريتها أنت أو المستخدمون الآخرون. هذه الميزة تتبع التغييرات مع Aspose.Words يدعم تتبع التغييرات في Microsoft Word. باستخدام هذه الوظيفة، يمكنك الوصول إلى المراجعات الفردية في المستند وتطبيق خصائص مختلفة عليها.

عند تمكين ميزة تتبع التغييرات، سيتم تمييز جميع عناصر المستند المدرجة والمحذوفة والمعدلة بصريا بمعلومات حول من ومتى وما تم تغييره. تسمى الكائنات التي تحمل المعلومات حول ما تم تغييره "تتبع التغييرات". على سبيل المثال، افترض أنك تريد مراجعة مستند وإجراء تغييرات مهمة – قد يعني هذا أنك بحاجة إلى إجراء مراجعات. أيضا، قد تحتاج إلى إدراج تعليقات لمناقشة بعض التغييرات. هذا هو المكان الذي يأتي فيه تتبع التغييرات في المستندات.

تشرح هذه المقالة كيفية إدارة وتتبع التغييرات التي أنشأها العديد من المراجعين على نفس المستند، بالإضافة إلى خصائص تتبع التغييرات.

{{% alert color="primary" %}}

لاحظ أن ميزة التعليق في Aspose.Words، وكذلك في Microsoft Word، يمكن أن ترتبط بتغييرات التتبع. ومع ذلك، تذكر أن التعليقات مستقلة تماما عن تتبع التغييرات.

{{% /alert %}}

## ما هي المراجعة

قبل الغوص في المراجعات، دعنا نشرح معنى المراجعات. [revision](https://reference.aspose.com/words/cpp/aspose.words/revision/) هو تغيير يحدث في عقدة واحدة من المستند بينما مجموعة المراجعة، ممثلة في فئة [RevisionGroup](https://reference.aspose.com/words/cpp/aspose.words/revisiongroup/)، هي مجموعة من المراجعات المتسلسلة التي تحدث في العديد من عقد المستند. في الأساس، المراجعة هي أداة لتتبع التغييرات.

تستخدم المراجعات في ميزة تتبع التغييرات وضمن ميزة مقارنة المستندات، حيث تظهر المراجعات كنتيجة للمقارنة. لذلك، تظهر المراجعات داخل ميزة تتبع التغييرات من قبل من وما تم تغييره.

{{% alert color="primary" %}}

لاحظ أن Microsoft Word لا يسمح لك بعرض المراجعات الفردية، بل يسمح لك فقط بعرض المراجعات المتسلسلة ككيان واحد. ولكن Aspose.Words يحل هذا القيد مع فئة **RevisionGroup**.

{{% /alert %}}

Aspose.Words يدعم أنواع المراجعة المختلفة، وكذلك في Microsoft Word، مثل الإدراج والحذف و FormatChange و StyleDefinitionChange والتحرك. يتم تمثيل جميع أنواع المراجعة مع [RevisionType](https://reference.aspose.com/words/cpp/aspose.words/revisiontype/) تعداد.

{{% alert color="primary" %}}

لاحظ أن المراجعات لها نتيجة مشابهة لـ Microsoft Word ولكن Aspose.Words لا يكتشف التنسيق أثناء تتبع التغييرات.

{{% /alert %}}

## بدء وإيقاف تتبع التغييرات

عادة لا يتم احتساب تحرير المستند كمراجعة حتى تبدأ في تتبعه. Aspose.Words يسمح لك بتتبع جميع التغييرات في المستند تلقائيا بخطوات بسيطة. يمكنك بسهولة بدء عملية تتبع التغييرات باستخدام طريقة [StartTrackRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/starttrackrevisions/). إذا كنت بحاجة إلى إيقاف عملية تتبع التغييرات بحيث لا تعتبر أي تعديلات مستقبلية مراجعات، فستحتاج إلى استخدام طريقة [StopTrackRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/stoptrackrevisions/).

{{% alert color="primary" %}}

لاحظ أن طريقة `StartTrackingRevisions` لا تغير حالة الخاصية [TrackRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/set_trackrevisions/) ولا تستخدم قيمتها بهدف تتبع المراجعة. بالإضافة إلى ذلك، إذا تم نقل عقدة من موقع إلى آخر داخل المستند المتعقب، فسيتم إنشاء تنقيحات النقل، بما في ذلك الانتقال من النطاق والانتقال إليه.

{{% /alert %}}

في نهاية عملية تتبع التغييرات في المستند، سيكون لديك القدرة على قبول جميع المراجعات أو رفضها لإعادة المستند إلى شكله الأصلي. يمكن تحقيق ذلك إما باستخدام طريقة [AcceptAllRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/acceptallrevisions/) أو [RejectAll](https://reference.aspose.com/words/cpp/aspose.words/revisioncollection/rejectall/). بالإضافة إلى ذلك، يمكنك قبول أو رفض كل مراجعة على حدة باستخدام طريقة [Accept](https://reference.aspose.com/words/cpp/aspose.words/revision/accept/) أو [Reject](https://reference.aspose.com/words/cpp/aspose.words/revision/reject/).

سيتم تتبع جميع التغييرات لتكرار واحد من اللحظة التي تبدأ فيها العملية إلى اللحظة التي توقفها فيها. يتم تمثيل الاتصال بين التكرارات المختلفة على النحو التالي: إكمال عملية التتبع، ثم إجراء بعض التغييرات، وبدء تتبع التغييرات مرة أخرى. باستخدام هذا السيناريو، سيتم عرض جميع التغييرات التي لم تقبلها أو ترفضها مرة أخرى.

{{% alert color="primary" %}}

لاحظ أن طريقة `AcceptAllRevisions` مشابهة لـ" قبول جميع التغييرات " في Microsoft Word.

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالية كيفية العمل مع تتبع التغييرات:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRevisions-AcceptAllRevisions.cpp" >}}

يوضح مثال التعليمات البرمجية التالي كيفية إنشاء المراجعات عند نقل عقدة داخل مستند متعقب:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRevisions-MoveNodeInTrackedDocument.cpp" >}}

## إدارة وتخزين التغييرات كما التنقيحات

باستخدام ميزة تغييرات التتبع السابقة، يمكنك فهم التغييرات التي تم إجراؤها في المستند ومن أجرى هذه التغييرات. أثناء استخدام ميزة [TrackRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/get_trackrevisions/)، فإنك تفرض تخزين أي تغييرات داخل المستند كمراجعات.

Aspose.Words يسمح لك بالتحقق مما إذا كان المستند يحتوي على مراجعة أم لا باستخدام خاصية [HasRevision](https://reference.aspose.com/words/cpp/aspose.words/document/get_hasrevisions/). إذا لم تكن بحاجة إلى تتبع التغييرات في المستند تلقائيا من خلال الطريقتين StartTrackRevisions و StopTrackRevisions، فيمكنك استخدام خاصية `TrackRevisions` للتحقق مما إذا كان يتم تتبع التغييرات أثناء تحرير مستند في Microsoft Word وتخزينها كمراجعات.

تقوم ميزة `TrackRevisions` بإجراء مراجعات بدلا من التغييرات الحقيقية DOM. لكن المراجعات نفسها منفصلة. على سبيل المثال، إذا قمت بحذف أي فقرة، Aspose.Words اجعلها مراجعة، مع وضع علامة عليها كحذف، بدلا من حذفها.

بالإضافة إلى ذلك، Aspose.Words يسمح لك بالتحقق مما إذا تم إدراج كائن أو حذفه أو تغيير التنسيق باستخدام [IsDeleteRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_isdeleterevision/), [IsFormatRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_isformatrevision/), [IsInsertRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_isinsertrevision/), [IsMoveFromRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_isformatrevision/), و [IsMoveToRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_ismovetorevision/) خصائص.

{{% alert color="primary" %}}

لاحظ أنه لا يوجد اتصال بين المراجعات نفسها وخاصية `TrackRevisions`. بالإضافة إلى ذلك، يمكنك قبول/رفض المراجعات بغض النظر عن ميزة تتبع التغييرات.

{{% /alert %}}

يوضح مثال الكود التالي كيفية تطبيق خصائص مختلفة مع المراجعات:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRevisions-ShapeRevision.cpp" >}}
