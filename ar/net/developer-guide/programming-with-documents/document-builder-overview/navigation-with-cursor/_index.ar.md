---
title: التنقل باستخدام المؤشر في C#
second_title: Aspose.Words لـ .NET
articleTitle: التنقل مع المؤشر
linktitle: التنقل مع المؤشر
description: "التنقل بين العقد المختلفة داخل المستند، مثل فقرة أو إشارة مرجعية أو حرف معين باستخدام C#."
type: docs
weight: 10
url: /ar/net/navigation-with-cursor/
timestamp: 2024-01-27-14-07-04
---

أثناء العمل على مستند، حتى لو كان قصيرًا أو طويلًا، ستحتاج إلى التنقل عبر المستند. يمثل التنقل باستخدام المؤشر الافتراضي القدرة على التنقل بين العقد المختلفة في المستند.

داخل مستند قصير، يعد التنقل في المستند أمرًا بسيطًا حيث يمكنك تحريك نقطة الإدراج حتى باستخدام مفاتيح الأسهم في لوحة المفاتيح أو عن طريق النقر بالماوس لتحديد موقع نقطة الإدراج أينما تريد. ولكن بمجرد أن يكون لديك مستند كبير يحتوي على العديد من الصفحات، فإن هذه التقنيات الأساسية لن تكون كافية.

تشرح هذه المقالة كيفية التنقل في المستند والتنقل باستخدام مؤشر افتراضي إلى أجزاء مختلفة منه.

## الكشف عن موضع المؤشر الحالي

قبل البدء في عملية التنقل عبر المستند، ستحتاج إلى الحصول على العقدة المحددة حاليًا. يمكنك الحصول على الموضع الدقيق للمؤشر عند العقدة المحددة باستخدام خاصية [CurrentNode](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/currentnode/). بالإضافة إلى ذلك، بدلاً من الحصول على العقدة الحالية، يمكنك الحصول على الفقرة المحددة حاليًا أو القسم المحدد حاليًا باستخدام خصائص [CurrentParagraph](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/currentparagraph/) و[CurrentSection](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/currentsection/).

سيتم إدراج أي عمليات إدراج تقوم بها باستخدام [DocumentBuilder](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/) قبل [CurrentNode](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/currentnode/). عندما تكون الفقرة الحالية فارغة أو يتم وضع المؤشر قبل نهاية الفقرة مباشرةً، فإن **CurrentNode** يُرجع قيمة فارغة.

## طرق التنقل في المستند

عندما تقوم بتحرير النص، من المهم معرفة كيفية التنقل في المستند والمكان الذي يجب أن تتحرك فيه بالضبط. يسمح لك Aspose.Words بالتنقل في المستند والانتقال إلى أقسامه وأجزاءه المختلفة - وهذا يشبه وظيفة جزء التنقل في Microsoft Word للانتقال إلى صفحة أو عنوان في مستند Word دون التمرير.

الطريقة الرئيسية هي أن تكون قادرًا على نقل موضع المؤشر إلى عقدة معينة في المستند الخاص بك، ويمكنك تحقيق ذلك باستخدام طريقة [MoveTo](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/moveto/).

يوضح مثال التعليمات البرمجية التالي كيفية نقل **DocumentBuilder** إلى عقد مختلفة في المستند:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToNode.cs" >}}

ولكن إلى جانب طريقة **MoveTo** الأساسية، هناك طرق أكثر تحديدًا.

### انتقل إلى بداية أو نهاية المستند

يمكنك الانتقال إلى بداية المستند أو نهايته باستخدام طريقتي [MoveToDocumentStart](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/movetodocumentstart/) و[MoveToDocumentEnd](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/movetodocumentend/).

يوضح مثال التعليمات البرمجية التالي كيفية نقل موضع المؤشر إلى بداية المستند أو نهايته:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToDocumentStartEnd.cs" >}}

### التنقل باستخدام الإشارات المرجعية

يمكنك وضع علامة على المكان الذي تريد البحث عنه والانتقال إليه مرة أخرى بسهولة. يمكنك إدراج أي عدد تريده من الإشارات المرجعية في مستندك، ثم التنقل عبرها عن طريق تحديد الإشارات المرجعية بأسماء فريدة. يمكنك الانتقال إلى إشارة مرجعية باستخدام طريقة [MoveToBookmark](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/movetobookmark/#movetobookmark/).

توضح أمثلة التعليمات البرمجية التالية كيفية نقل موضع المؤشر إلى إشارة مرجعية:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToBookmark.cs" >}}

### انتقل إلى خلايا الجدول

يمكنك الانتقال إلى خلية جدول باستخدام طريقة [MoveToCell](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/movetocell/). ستمكنك هذه الطريقة من التنقل بمؤشر الماوس إلى أي خلية في جدول معين. بالإضافة إلى ذلك، يمكنك تحديد فهرس لتحريك المؤشر إلى أي موضع أو حرف محدد في خلية ضمن طريقة **MoveToCell**.

يوضح مثال التعليمات البرمجية التالي كيفية نقل موضع المؤشر إلى خلية جدول محددة:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToTableCell.cs" >}}

### انتقل إلى الحقل

يمكنك الانتقال إلى حقل معين في مستندك باستخدام طريقة [MoveToField](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/movetofield/). بالإضافة إلى ذلك، يمكنك الانتقال إلى حقل دمج محدد باستخدام أسلوب [MoveToMergeField](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/movetomergefield/#movetomergefield/).

يوضح مثال التعليمات البرمجية التالي كيفية نقل مؤشر منشئ المستندات إلى حقل معين:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToMergeField.cs" >}}

### انتقل إلى رأس أو تذييل الصفحة

يمكنك الانتقال إلى بداية الرأس أو التذييل باستخدام طريقة [MoveToHeaderFooter](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/movetoheaderfooter/)

يوضح مثال التعليمات البرمجية التالي كيفية نقل مؤشر منشئ المستندات إلى رأس المستند أو تذييله:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToHeadersFooters.cs" >}}

### انتقل إلى قسم أو فقرة

يمكنك الانتقال إلى قسم أو فقرة معينة باستخدام أساليب [MoveToParagraph](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/movetoparagraph/) أو [MoveToSection](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/movetosection/). بالإضافة إلى ذلك، يمكنك تحديد فهرس لتحريك المؤشر إلى أي موضع أو حرف محدد في فقرة ضمن أسلوب **MoveToParagraph**.

يوضح مثال التعليمات البرمجية التالي كيفية الانتقال إلى قسم معين وفقرة معينة في المستند:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToSection.cs" >}}
