---
title: تتبع التغييرات في مستند
second_title: Aspose.Words لـ Python via .NET
articleTitle: تتبع التغييرات في مستند
linktitle: تتبع التغييرات في مستند
description: "تتبع التغييرات على المحتوى والتنسيق التي أجريتها أنت أو الآخرون باستخدام Python. الوصول إلى المراجعات الفردية في المستند وتطبيق خصائص مختلفة عليها."
type: docs
weight: 270
url: /ar/python-net/track-changes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

تسمح لك وظيفة تعقب التغييرات، المعروفة أيضًا باسم المراجعة، بتتبع التغييرات التي تطرأ على المحتوى والتنسيق التي تجريها أنت أو مستخدمون آخرون. تدعم ميزة تتبع التغييرات هذه مع Aspose.Words تتبع التغييرات في Microsoft Word. باستخدام هذه الوظيفة، يمكنك الوصول إلى المراجعات الفردية في مستندك وتطبيق خصائص مختلفة عليها.

عندما تقوم بتمكين ميزة تعقب التغييرات، سيتم تمييز جميع العناصر المدرجة والمحذوفة والمعدلة في المستند بشكل مرئي مع معلومات حول من قام بالتغيير ومتى وما الذي تم تغييره. تسمى الكائنات التي تحمل معلومات حول ما تم تغييره "تتبع التغييرات". على سبيل المثال، افترض أنك تريد مراجعة مستند وإجراء تغييرات مهمة - قد يعني هذا أنك بحاجة إلى إجراء مراجعات. وقد تحتاج أيضًا إلى إدراج تعليقات لمناقشة بعض التغييرات. هذا هو المكان الذي يأتي فيه تتبع التغييرات في المستندات.

تشرح هذه المقالة كيفية إدارة وتعقب التغييرات التي أنشأها العديد من المراجعين على نفس المستند، بالإضافة إلى خصائص تعقب التغييرات.

{{% alert color="primary" %}}

لاحظ أن ميزة التعليق في Aspose.Words، وكذلك في Microsoft Word، يمكن أن ترتبط بتتبع التغييرات. ومع ذلك، تذكر أن التعليقات مستقلة تمامًا عن تتبع التغييرات.

{{% /alert %}}

## ما هي المراجعة

قبل الغوص في المراجعات، دعونا نشرح معنى المراجعات. [Revision](https://reference.aspose.com/words/python-net/aspose.words/revision/) هو التغيير الذي يحدث في عقدة واحدة من المستند بينما مجموعة المراجعة، التي تمثلها فئة [RevisionGroup](https://reference.aspose.com/words/python-net/aspose.words/revisiongroup/)، هي مجموعة من المراجعات المتسلسلة التي تحدث في العديد من العقد في المستند. في الأساس، المراجعة هي أداة لتتبع التغييرات.

يتم استخدام المراجعات في ميزة تعقب التغييرات وضمن ميزة مقارنة المستندات، حيث تظهر المراجعات نتيجة للمقارنة. لذلك، تُظهر المراجعات الموجودة ضمن ميزة تعقب التغييرات من قام بالتغيير وما الذي تم تغييره.

{{% alert color="primary" %}}

لاحظ أن Microsoft Word لا يسمح لك بعرض المراجعات الفردية، بل يسمح لك فقط بعرض المراجعات المتسلسلة ككيان واحد. لكن Aspose.Words يحل هذا القيد باستخدام فئة [RevisionGroup](https://reference.aspose.com/words/python-net/aspose.words/revisiongroup/).

{{% /alert %}}

يدعم Aspose.Words أنواعًا مختلفة من المراجعة، وكذلك في Microsoft Word، مثل Insertion وDeletion وFormatChange وStyleDefinitionChange وMoving. يتم تمثيل جميع أنواع المراجعة بتعداد [RevisionType](https://reference.aspose.com/words/python-net/aspose.words/revisiontype/).

{{% alert color="primary" %}}

لاحظ أن المراجعات لها نتيجة مشابهة لـ Microsoft Word لكن Aspose.Words لا يكتشف التنسيق أثناء تتبع التغييرات.

{{% /alert %}}

## بدء وإيقاف تتبع التغييرات

عادةً لا يتم احتساب تحرير المستند كمراجعة حتى تبدأ في تتبعه. يسمح لك Aspose.Words بتتبع جميع التغييرات في مستندك تلقائيًا بخطوات بسيطة. يمكنك بسهولة بدء عملية تتبع التغييرات باستخدام طريقة [start_track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/start_track_revisions/). إذا كنت بحاجة إلى إيقاف عملية تتبع التغييرات حتى لا تعتبر أي تعديلات مستقبلية مراجعات، فستحتاج إلى استخدام طريقة [stop_track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/stop_track_revisions/).

{{% alert color="primary" %}}

لاحظ أن طريقة [start_track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/start_track_revisions/) لا تغير حالة خاصية [track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/track_revisions/) ولا تستخدم قيمتها بهدف تتبع المراجعة. بالإضافة إلى ذلك، إذا تم نقل عقدة من موقع إلى آخر داخل المستند المتعقب، فسيتم إنشاء مراجعات النقل، بما في ذلك الانتقال من النطاق والانتقال إليه.

{{% /alert %}}

في نهاية عملية تتبع التغييرات في مستندك، سيكون لديك القدرة على قبول جميع المراجعات أو رفضها لإعادة المستند إلى شكله الأصلي. يمكن تحقيق ذلك إما باستخدام طريقة [accept_all_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/accept_all_revisions/) أو [reject_all](https://reference.aspose.com/words/python-net/aspose.words/revisioncollection/reject_all/). بالإضافة إلى ذلك، يمكنك قبول أو رفض كل مراجعة على حدة باستخدام أسلوب [accept](https://reference.aspose.com/words/python-net/aspose.words/revision/accept/) أو [reject](https://reference.aspose.com/words/python-net/aspose.words/revision/reject/).

سيتم تتبع جميع التغييرات لتكرار واحد من لحظة بدء العملية حتى لحظة إيقافها. يتم تمثيل الاتصال بين التكرارات المختلفة بالسيناريو التالي: إكمال عملية التتبع، ثم إجراء بعض التغييرات، والبدء في تتبع التغييرات مرة أخرى. في هذا السيناريو، سيتم عرض كافة التغييرات التي لم تقبلها أو ترفضها مرة أخرى.

{{% alert color="primary" %}}

لاحظ أن طريقة [accept_all_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/accept_all_revisions/) تشبه طريقة "قبول جميع التغييرات" في Microsoft Word.

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالي كيفية العمل مع تعقب التغييرات:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_revisions-AcceptAllRevisions.py" >}}

يوضح مثال التعليمات البرمجية التالي كيفية إنشاء المراجعات عند نقل عقدة داخل مستند متعقب:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_revisions-MoveNodeInTrackedDocument.py" >}}

## إدارة التغييرات وتخزينها كمراجعات

باستخدام ميزة تعقب التغييرات السابقة، يمكنك فهم التغييرات التي تم إجراؤها في المستند الخاص بك ومن قام بهذه التغييرات. أثناء استخدام ميزة [track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/track_revisions/)، يمكنك فرض تخزين أي تغييرات داخل المستند كمراجعات.

يسمح لك Aspose.Words بالتحقق مما إذا كان المستند يحتوي على مراجعة أم لا باستخدام خاصية [has_revision](https://reference.aspose.com/words/python-net/aspose.words/document/has_revisions/). إذا لم تكن بحاجة إلى تعقب التغييرات في مستندك تلقائيًا من خلال طريقتي start_track_revisions وstop_track_revisions، فيمكنك استخدام خاصية [track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/track_revisions/) للتحقق مما إذا كان قد تم تعقب التغييرات أثناء تحرير مستند في Microsoft Word وتخزينها كمراجعات.

تقوم ميزة [track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/track_revisions/) بإجراء المراجعات بدلاً من تغييرات DOM الحقيقية. لكن المراجعات نفسها منفصلة. على سبيل المثال، إذا قمت بحذف أي فقرة، فإن Aspose.Words يجعلها كمراجعة، مع وضع علامة عليها كمحذوف، بدلاً من حذفها.

بالإضافة إلى ذلك، يسمح لك Aspose.Words بالتحقق مما إذا كان قد تم إدراج كائن أو حذفه أو تغيير تنسيقه باستخدام خصائص [is_delete_revision](https://reference.aspose.com/words/python-net/aspose.words/inline/is_delete_revision/) و[is_format_revision](https://reference.aspose.com/words/python-net/aspose.words/inline/is_format_revision/) و[is_insert_revision](https://reference.aspose.com/words/python-net/aspose.words/inline/is_insert_revision/) و[is_move_from_revision](https://reference.aspose.com/words/python-net/aspose.words/inline/is_move_from_revision/) و[is_move_to_revision](https://reference.aspose.com/words/python-net/aspose.words/inline/is_move_to_revision/).

{{% alert color="primary" %}}

لاحظ أنه لا يوجد أي اتصال بين المراجعات نفسها وخاصية [track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/track_revisions/). بالإضافة إلى ذلك، يمكنك قبول/رفض المراجعات بغض النظر عن ميزة تتبع التغييرات.

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالي كيفية تطبيق خصائص مختلفة مع المراجعات:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_revisions-ShapeRevision.py" >}}
