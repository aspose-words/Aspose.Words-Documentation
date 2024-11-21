---
title: التغييرات في الوثيقة Java
second_title: Aspose.Words for Java
articleTitle: التغييرات في الوثيقة
linktitle: التغييرات في الوثيقة
description: "تعقّبْ التغييراتَ إلى المحتوىِ وشكلِ تَجْعلُه أنت أَو الآخرون. الحصول على تنقيحات فردية في وثيقة ما وتطبيق مختلف الممتلكات عليها باستخدام Java."
type: docs
weight: 270
url: /ar/java/track-changes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

إن فعالية تغيرات المسار، المعروفة أيضاً باسم الاستعراض، تسمح لك بتتبع التغييرات التي أدخلتها على المحتوى والشكل من جانبك أو المستعملين الآخرين. تغير هذا المسار Aspose.Words دعم التغييرات في المسارات Microsoft Word. مع هذه الوظيفة، يمكنك الحصول على تنقيحات فردية في وثيقتك وتطبيق خصائص مختلفة لها.

وعندما تُمكِّنون من إدخال تغييرات على المسار، تُسلَّط الضوء بصريا على جميع العناصر المُدخلة والمحذفة والمُعدَّلة من الوثيقة بمعلومات عن الجهة التي تغيرت، ومتى، وما جرى تغييره. أما الأجسام التي تحمل معلومات عن التغيير فتسمى " تغيير المسار ". فعلى سبيل المثال، نفترض أنكم تريدون استعراض وثيقة وإجراء تغييرات هامة - وهذا قد يعني أن عليكم إجراء تنقيحات. كما قد تحتاج إلى إدراج تعليقات لمناقشة بعض التغييرات. وهنا يأتي تعقب التغييرات في الوثائق.

وتوضح هذه المادة كيفية إدارة وتتبع التغييرات التي أحدثها العديد من المستعرضين في الوثيقة نفسها، فضلا عن الممتلكات اللازمة لتتبع التغييرات.

{{% alert color="primary" %}}

Note that the comment feature in Aspose.Words, وكذلك في Microsoft Word, ويمكن ربطها بتغييرات التتبع. ومع ذلك، تذكر أن التعليقات مستقلة تماما عن تتبع التغييرات.

{{% /alert %}}

## ما هو تنقيح

وقبل الخوض في التنقيحات، لنشرح معنى التنقيحات. ألف [revision](https://reference.aspose.com/words/java/com.aspose.words/revision/) هو تغيير يحدث في شكل واحد من الوثائق في حين أنه يمثله فريق تنقيح [RevisionGroup](https://reference.aspose.com/words/java/com.aspose.words/revisiongroup/) والفئة هي مجموعة من التنقيحات التسلسلية التي تحدث في العديد من مراحل الوثيقة. التنقيح أداة لتتبع التغييرات.

وتُستخدم التنقيحات في سمة تغييرات التتبع وضمن سمة الوثائق المقارنة، حيث تظهر التنقيحات نتيجة للمقارنة. لذا، فإن التنقيحات التي تجري في إطار تغيرات التتبع تظهر من هو ومن الذي تغير.

{{% alert color="primary" %}}

ملاحظة Microsoft Word لا يسمح لك بالنظر إلى التنقيحات الفردية، أنه يسمح لك فقط أن ترى التنقيحات التسلسلية ككيان واحد. لكن Aspose.Words يحل هذا الحد مع **RevisionGroup** الصف

{{% /alert %}}

Aspose.Words دعم مختلف أنواع التنقيح، وكذلك في Microsoft Word, مثل الإلحاق، والحذف، والصيغة التغيير، التحديد تغيير، والتحرك. All revision types are represented with the [RevisionType](https://reference.aspose.com/words/java/com.aspose.words/revisiontype/) العد

{{% alert color="primary" %}}

ملاحظة أن التنقيحات قد أسفرت عن نتيجة مماثلة لما حدث Microsoft Word لكن Aspose.Words لا يكشف الشكل أثناء تغيرات التتبع.

{{% /alert %}}

## بدء ووقف التغييرات

تحرير وثيقة عادة لا يعد كمراجعة حتى تبدأ بتتبعها Aspose.Words يسمح لك بتتبع كل التغييرات في وثيقتك بشكل تلقائي بخطوات بسيطة يمكنك البدء بسهولة في عملية تتبع التغييرات باستخدام [StartTrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#startTrackRevisions-java.lang.String) طريقة إذا كنت بحاجة لوقف عملية تتبع التغييرات حتى لا تعتبر أي محررات مستقبلية تنقيحات، سوف تحتاج إلى استخدام [StopTrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#stopTrackRevisions) طريقة

{{% alert color="primary" %}}

ملاحظة: `StartTrackingRevisions` الطريقة لا تغير حالة [TrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#getTrackRevisions):: الممتلكات ولا تستخدم قيمتها لأغراض التعقب. وبالإضافة إلى ذلك، إذا نقل عقد من مكان إلى آخر داخل الوثيقة المتعقبة، ستُجرى تنقيحات للتحرك، بما في ذلك الانتقال من موقع إلى آخر.

{{% /alert %}}

وفي نهاية عملية تغيير التتبع في وثيقتكم، ستكون لديكم القدرة على قبول جميع التنقيحات أو رفضها لإعادة الوثيقة إلى شكلها الأصلي. ويمكن تحقيق ذلك إما باستخدام [AcceptAllRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#acceptAllRevisions) أو [RejectAll](https://reference.aspose.com/words/java/com.aspose.words/revisioncollection/#rejectAll) طريقة بالإضافة إلى ذلك، يمكنك أن تقبل أو ترفض كل تنقيح على حدة باستخدام [Accept](https://reference.aspose.com/words/java/com.aspose.words/revision/#accept) أو [Reject](https://reference.aspose.com/words/java/com.aspose.words/revision/#reject) طريقة

كل التغييرات سيتم تعقبها من لحظة بدء العملية إلى لحظة إيقافها والصلة بين التكرارات المختلفة مُمثَّلة في السيناريو التالي: استكمال عملية التتبع، ثم إجراء بعض التغييرات، وبدء تتبع التغييرات مرة أخرى. مع هذا السيناريو، كل التغييرات التي لم تقبلها أو ترفضها ستظهر مرة أخرى

{{% alert color="primary" %}}

ملاحظة: `AcceptAllRevisions` طريقة مماثلة ل " قبول جميع التغييرات " في Microsoft Word.

{{% /alert %}}

ويبين المثال الرمزي التالي كيفية العمل مع التغييرات في التتبع:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-WorkWithTrackChanges.java" >}}

ويبيّن المثال الرمزي التالي كيفية إجراء التنقيحات عند نقل عقد معين في وثيقة متتبعة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-GenerateRevisionsWhenMovingNode.java" >}}

## Manage and Store Changes as Revisions

ومع سمة التغييرات السابقة في التتبع، يمكنكم فهم التغييرات التي أدخلت في وثيقتكم والتي أدخلت تلك التغييرات. بينما مع [TrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#getTrackRevisions) خاصّة، تُجبرُ أيّ تغييرات في وثيقتِكَ لتُخزّن كتنقيحات.

Aspose.Words يُمكِنُك أَنْ تُدقّقَ إذا a وثيقة عِنْدَهُ a مراجعة أَو لا باستخدام [HasRevision](https://reference.aspose.com/words/java/com.aspose.words/document/#hasRevisions) ملكية إذا كنت لا تحتاج إلى تتبع تلقائيا التغييرات في وثيقتك من خلال عمليات مراجعة المسارات والتوقيف، ثم يمكنك استخدام `TrackRevisions` الممتلكات التي يتعين التحقق منها إذا تم تعقب التغييرات أثناء تحرير وثيقة Microsoft Word ومخزنة كتنقيحات

The `TrackRevisions` السمة تجعل التنقيحات بدلا من التنقيحات الحقيقية DOM تغييرات لكن التنقيحات نفسها منفصلة على سبيل المثال، إذا حذفت أي فقرة Aspose.Words اجعله كتنقيح، وسمه كحذف، بدلاً من حذفه.

وبالإضافة إلى ذلك، Aspose.Words يُمكِنُك أَنْ تَتأكّدَ إذا جسم أُدخلَ، حذف، أَو مُغَيّرَ شكلاً مستعملاً [IsDeleteRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isDeleteRevision), [IsFormatRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isFormatRevision), [IsInsertRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isInsertRevision), [IsMoveFromRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isMoveFromRevision), و [IsMoveToRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isMoveToRevision) الممتلكات.

{{% alert color="primary" %}}

ملاحظة عدم وجود صلة بين التنقيحات ذاتها والتنقيحات `TrackRevisions` ملكية وبالإضافة إلى ذلك، يمكنك أن تقبل/ترفض التنقيحات بغض النظر عن سمة تغيرات التتبع.

{{% /alert %}}

ويبين المثال الرمزي التالي كيفية تطبيق مختلف الممتلكات بتنقيحات:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-ApplyDifferentPropertiesWithRevisions.java" >}}
