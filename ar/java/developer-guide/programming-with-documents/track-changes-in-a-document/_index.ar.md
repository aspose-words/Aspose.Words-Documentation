---
title: تتبع التغييرات في مستند في Java
second_title: Aspose.Words ل Java
articleTitle: تتبع التغييرات في المستند
linktitle: تتبع التغييرات في المستند
description: "تتبع التغييرات التي تطرأ على المحتوى والتنسيق الذي أجريته أنت أو غيرك. الوصول إلى المراجعات الفردية في مستند وتطبيق خصائص مختلفة عليها باستخدام Java."
type: docs
weight: 270
url: /ar/java/track-changes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

تتيح لك وظيفة تتبع التغييرات، والمعروفة أيضا باسم المراجعة، تتبع التغييرات في المحتوى والتنسيق التي أجريتها أنت أو المستخدمون الآخرون. هذه الميزة تتبع التغييرات مع Aspose.Words يدعم تتبع التغييرات في Microsoft Word. باستخدام هذه الوظيفة، يمكنك الوصول إلى المراجعات الفردية في المستند وتطبيق خصائص مختلفة عليها.

عند تمكين ميزة تتبع التغييرات، سيتم تمييز جميع عناصر المستند المدرجة والمحذوفة والمعدلة بصريا بمعلومات حول من ومتى وما تم تغييره. تسمى الكائنات التي تحمل معلومات حول ما تم تغييره "تتبع التغييرات". على سبيل المثال، افترض أنك تريد مراجعة مستند وإجراء تغييرات مهمة – قد يعني هذا أنك بحاجة إلى إجراء مراجعات. أيضا، قد تحتاج إلى إدراج تعليقات لمناقشة بعض التغييرات. هذا هو المكان الذي يأتي فيه تتبع التغييرات في المستندات.

تشرح هذه المقالة كيفية إدارة وتتبع التغييرات التي أنشأها العديد من المراجعين على نفس المستند، بالإضافة إلى خصائص تتبع التغييرات.

{{% alert color="primary" %}}

لاحظ أن ميزة التعليق في Aspose.Words، وكذلك في Microsoft Word، يمكن أن ترتبط بتغييرات التتبع. ومع ذلك، تذكر أن التعليقات مستقلة تماما عن تتبع التغييرات.

{{% /alert %}}

## ما هي المراجعة

قبل الغوص في المراجعات، دعنا نشرح معنى المراجعات. [revision](https://reference.aspose.com/words/java/com.aspose.words/revision/) هو تغيير يحدث في عقدة واحدة من المستند بينما مجموعة المراجعة، ممثلة في فئة [RevisionGroup](https://reference.aspose.com/words/java/com.aspose.words/revisiongroup/)، هي مجموعة من المراجعات المتسلسلة التي تحدث في العديد من عقد المستند. المراجعة هي أداة لتتبع التغييرات.

تستخدم المراجعات في ميزة تتبع التغييرات وضمن ميزة مقارنة المستندات، حيث تظهر المراجعات كنتيجة للمقارنة. لذلك، تظهر المراجعات داخل ميزة تتبع التغييرات من قبل من وما تم تغييره.

{{% alert color="primary" %}}

لاحظ أن Microsoft Word لا يسمح لك بعرض المراجعات الفردية، بل يسمح لك فقط بعرض المراجعات المتسلسلة ككيان واحد. ولكن Aspose.Words يحل هذا القيد مع فئة **RevisionGroup**.

{{% /alert %}}

Aspose.Words يدعم أنواع المراجعة المختلفة، وكذلك في Microsoft Word، مثل الإدراج والحذف و FormatChange و StyleDefinitionChange والتحرك. يتم تمثيل جميع أنواع المراجعة مع [RevisionType](https://reference.aspose.com/words/java/com.aspose.words/revisiontype/) تعداد.

{{% alert color="primary" %}}

لاحظ أن المراجعات لها نتيجة مشابهة لـ Microsoft Word ولكن Aspose.Words لا يكتشف التنسيق أثناء تتبع التغييرات.

{{% /alert %}}

## بدء وإيقاف تتبع التغييرات

عادة لا يتم احتساب تحرير المستند كمراجعة حتى تبدأ في تتبعه. Aspose.Words يسمح لك بتتبع جميع التغييرات في المستند تلقائيا بخطوات بسيطة. يمكنك بسهولة بدء عملية تتبع التغييرات باستخدام طريقة [StartTrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#startTrackRevisions-java.lang.String). إذا كنت بحاجة إلى إيقاف عملية تتبع التغييرات بحيث لا تعتبر أي تعديلات مستقبلية مراجعات، فستحتاج إلى استخدام طريقة [StopTrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#stopTrackRevisions).

{{% alert color="primary" %}}

لاحظ أن طريقة `StartTrackingRevisions` لا تغير حالة الخاصية [TrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#getTrackRevisions) ولا تستخدم قيمتها بهدف تتبع المراجعة. بالإضافة إلى ذلك، إذا تم نقل عقدة من موقع إلى آخر داخل المستند المتعقب، فسيتم إنشاء تنقيحات النقل، بما في ذلك الانتقال من النطاق والانتقال إليه.

{{% /alert %}}

في نهاية عملية تتبع التغييرات في المستند، سيكون لديك القدرة على قبول جميع المراجعات أو رفضها لإعادة المستند إلى شكله الأصلي. يمكن تحقيق ذلك إما باستخدام طريقة [AcceptAllRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#acceptAllRevisions) أو [RejectAll](https://reference.aspose.com/words/java/com.aspose.words/revisioncollection/#rejectAll). بالإضافة إلى ذلك، يمكنك قبول أو رفض كل مراجعة على حدة باستخدام طريقة [Accept](https://reference.aspose.com/words/java/com.aspose.words/revision/#accept) أو [Reject](https://reference.aspose.com/words/java/com.aspose.words/revision/#reject).

سيتم تتبع جميع التغييرات لتكرار واحد من اللحظة التي تبدأ فيها العملية إلى اللحظة التي توقفها فيها. يتم تمثيل الاتصال بين التكرارات المختلفة على النحو التالي: إكمال عملية التتبع، ثم إجراء بعض التغييرات، وبدء تتبع التغييرات مرة أخرى. باستخدام هذا السيناريو، سيتم عرض جميع التغييرات التي لم تقبلها أو ترفضها مرة أخرى.

{{% alert color="primary" %}}

لاحظ أن طريقة `AcceptAllRevisions` مشابهة لـ" قبول جميع التغييرات " في Microsoft Word.

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالية كيفية العمل مع تتبع التغييرات:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-WorkWithTrackChanges.java" >}}

يوضح مثال التعليمات البرمجية التالي كيفية إنشاء المراجعات عند نقل عقدة داخل مستند متعقب:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-GenerateRevisionsWhenMovingNode.java" >}}

## إدارة وتخزين التغييرات كما التنقيحات

باستخدام ميزة تغييرات التتبع السابقة، يمكنك فهم التغييرات التي تم إجراؤها في المستند ومن أجرى هذه التغييرات. أثناء استخدام ميزة [TrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#getTrackRevisions)، فإنك تفرض تخزين أي تغييرات داخل المستند كمراجعات.

Aspose.Words يسمح لك بالتحقق مما إذا كان المستند يحتوي على مراجعة أم لا باستخدام خاصية [HasRevision](https://reference.aspose.com/words/java/com.aspose.words/document/#hasRevisions). إذا لم تكن بحاجة إلى تتبع التغييرات في المستند تلقائيا من خلال الطريقتين StartTrackRevisions و StopTrackRevisions، فيمكنك استخدام الخاصية `TrackRevisions` للتحقق مما إذا كان يتم تتبع التغييرات أثناء تحرير مستند في Microsoft Word وتخزينها كمراجعات.

تقوم ميزة `TrackRevisions` بإجراء مراجعات بدلا من التغييرات الحقيقية DOM. لكن المراجعات نفسها منفصلة. على سبيل المثال، إذا قمت بحذف أي فقرة، Aspose.Words اجعلها مراجعة، مع وضع علامة عليها كحذف، بدلا من حذفها.

بالإضافة إلى ذلك، Aspose.Words يسمح لك بالتحقق مما إذا تم إدراج كائن أو حذفه أو تغيير التنسيق باستخدام [IsDeleteRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isDeleteRevision), [IsFormatRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isFormatRevision), [IsInsertRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isInsertRevision), [IsMoveFromRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isMoveFromRevision), و [IsMoveToRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isMoveToRevision) خصائص.

{{% alert color="primary" %}}

لاحظ أنه لا يوجد اتصال بين المراجعات نفسها وخاصية `TrackRevisions`. بالإضافة إلى ذلك، يمكنك قبول/رفض المراجعات بغض النظر عن ميزة تتبع التغييرات.

{{% /alert %}}

يوضح مثال الكود التالي كيفية تطبيق خصائص مختلفة مع المراجعات:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-ApplyDifferentPropertiesWithRevisions.java" >}}
