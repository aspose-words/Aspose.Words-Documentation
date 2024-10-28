---
title: التنقل مع المؤشر في C++
second_title: Aspose.Words ل C++
articleTitle: التنقل مع المؤشر
linktitle: التنقل مع المؤشر
description: "التنقل بين العقد المختلفة داخل مستند، مثل فقرة أو إشارة مرجعية أو حرف معين باستخدام C++."
type: docs
weight: 10
url: /ar/cpp/navigation-with-cursor/
---

أثناء العمل مع مستند، حتى لو كان قصيرا أو طويلا، ستحتاج إلى التنقل عبر المستند الخاص بك. يمثل التنقل باستخدام مؤشر افتراضي القدرة على التنقل بين العقد المختلفة في المستند.

ضمن وثيقة قصيرة، يتحرك في وثيقة بسيطة كما يمكنك نقل نقطة الإدراج حتى باستخدام مفاتيح الأسهم لوحة المفاتيح أو عن طريق النقر بالماوس لتحديد موقع نقطة الإدراج أينما تريد. ولكن بمجرد أن يكون لديك مستند كبير يحتوي على العديد من الصفحات، فإن هذه التقنيات الأساسية لن تكون كافية.

تشرح هذه المقالة كيفية التنقل في مستند والتنقل باستخدام مؤشر افتراضي إلى أجزاء مختلفة منه.

## الكشف عن موضع المؤشر الحالي

قبل البدء في عملية التنقل عبر المستند الخاص بك، ستحتاج إلى الحصول على العقدة المحددة حاليا. يمكنك الحصول على الموضع الدقيق للمؤشر في عقدة محددة باستخدام خاصية [CurrentNode](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_currentnode/). بالإضافة إلى ذلك، بدلا من الحصول على العقدة الحالية، يمكنك الحصول على الفقرة المحددة حاليا أو القسم المحدد حاليا باستخدام خصائص [CurrentParagraph](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_currentparagraph/) و [CurrentSection](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_currentsection/).

سيتم إدراج أي عمليات إدراج تقوم بها باستخدام [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) قبل [CurrentNode](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_currentnode/). عندما تكون الفقرة الحالية فارغة أو يتم وضع المؤشر قبل نهاية الفقرة مباشرة، فإن **CurrentNode** يعود نولبر.

## طرق التنقل في مستند

عندما تقوم بتحرير النص، من المهم معرفة كيفية التنقل في المستند الخاص بك وأين تتحرك فيه بالضبط. Aspose.Words يسمح لك بالتنقل في مستند والانتقال إلى أقسامه وأجزائه المختلفة – وهذا مشابه لوظيفة جزء التنقل في Microsoft Word للانتقال إلى صفحة أو عنوان في مستند ورد دون التمرير.

الطريقة الرئيسية هي أن تكون قادرا على تحريك موضع المؤشر إلى عقدة معينة في المستند الخاص بك، يمكنك تحقيق ذلك باستخدام طريقة [MoveTo](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/moveto/).

يوضح مثال التعليمات البرمجية التالية كيفية نقل **DocumentBuilder** إلى عقد مختلفة في مستند:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToNode.cpp" >}}

ولكن إلى جانب الطريقة الأساسية **MoveTo**، هناك طرق أكثر تحديدا.

### انتقل إلى بداية المستند أو نهايته

يمكنك الانتقال إلى بداية المستند أو نهايته باستخدام طريقتي [MoveToDocumentStart](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetodocumentstart/) و [MoveToDocumentEnd](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetodocumentend/).

يوضح مثال التعليمات البرمجية التالية كيفية نقل موضع المؤشر إلى بداية المستند أو نهايته:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToDocumentStartEnd.cpp" >}}

### التنقل باستخدام الإشارات المرجعية

يمكنك وضع علامة على المكان الذي تريد العثور عليه والانتقال إليه مرة أخرى بسهولة. يمكنك إدراج العديد من الإشارات المرجعية في المستند كما تريد، ثم التنقل خلالها عن طريق تحديد الإشارات المرجعية بأسماء فريدة. يمكنك الانتقال إلى إشارة مرجعية باستخدام طريقة [MoveToBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetobookmark/).

توضح أمثلة التعليمات البرمجية التالية كيفية نقل موضع المؤشر إلى إشارة مرجعية:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmark.cpp" >}}

### انتقل إلى خلايا الجدول

يمكنك الانتقال إلى خلية جدول باستخدام طريقة [MoveToCell](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetocell/). ستمكنك هذه الطريقة من التنقل في المؤشر إلى أي خلية في جدول معين. بالإضافة إلى ذلك، يمكنك تحديد فهرس لتحريك المؤشر إلى أي موضع أو حرف محدد في خلية ضمن طريقة **MoveToCell**.

يوضح مثال التعليمات البرمجية التالية كيفية نقل موضع المؤشر إلى خلية جدول محددة:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToTableCell.cpp" >}}

### انتقل إلى حقل

يمكنك الانتقال إلى حقل معين في المستند باستخدام طريقة [MoveToField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetofield/). بالإضافة إلى ذلك، يمكنك الانتقال إلى حقل دمج معين باستخدام طريقة [MoveToMergeField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetomergefield/).

يوضح مثال التعليمات البرمجية التالية كيفية نقل مؤشر منشئ المستند إلى حقل معين:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToMergeField.cpp" >}}

### انتقل إلى رأس أو تذييل الصفحة

يمكنك الانتقال إلى بداية رأس أو تذييل باستخدام طريقة [MoveToHeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetoheaderfooter/).

يوضح مثال التعليمات البرمجية التالية كيفية نقل مؤشر منشئ المستندات إلى رأس المستند أو تذييل الصفحة:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderHeadersAndFooters.cpp" >}}

### انتقل إلى قسم أو فقرة

يمكنك الانتقال إلى قسم أو فقرة معينة باستخدام طرق [MoveToParagraph](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetoparagraph/) أو [MoveToSection](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetosection/). بالإضافة إلى ذلك، يمكنك تحديد فهرس لتحريك المؤشر إلى أي موضع أو حرف محدد في فقرة ضمن طريقة **MoveToParagraph**.

يوضح مثال التعليمات البرمجية التالية كيفية الانتقال إلى قسم معين وفقرة معينة في مستند:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToSectionParagraph.cpp" >}}
