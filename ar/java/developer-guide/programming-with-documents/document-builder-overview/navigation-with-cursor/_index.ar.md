---
title: التنقل مع المؤشر في Java
second_title: Aspose.Words ل Java
articleTitle: التنقل مع المؤشر
linktitle: التنقل مع المؤشر
description: "التنقل بين العقد المختلفة داخل مستند، مثل فقرة أو إشارة مرجعية أو حرف معين باستخدام Java."
type: docs
weight: 5
url: /ar/java/navigation-with-cursor/
timestamp: 2024-01-27-14-07-04
---

أثناء العمل مع مستند، حتى لو كان قصيرا أو طويلا، ستحتاج إلى التنقل عبر المستند الخاص بك. يمثل التنقل باستخدام مؤشر افتراضي القدرة على التنقل بين العقد المختلفة في المستند.

ضمن وثيقة قصيرة، يتحرك في وثيقة بسيطة كما يمكنك نقل نقطة الإدراج حتى باستخدام مفاتيح الأسهم لوحة المفاتيح أو عن طريق النقر بالماوس لتحديد موقع نقطة الإدراج أينما تريد. ولكن بمجرد أن يكون لديك مستند كبير يحتوي على العديد من الصفحات، فإن هذه التقنيات الأساسية لن تكون كافية.

تشرح هذه المقالة كيفية التنقل في مستند والتنقل باستخدام مؤشر افتراضي إلى أجزاء مختلفة منه.

## الكشف عن موضع المؤشر الحالي

قبل البدء في عملية التنقل عبر المستند الخاص بك، ستحتاج إلى الحصول على العقدة المحددة حاليا. يمكنك الحصول على الموضع الدقيق للمؤشر في عقدة محددة باستخدام خاصية [CurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentNode). بالإضافة إلى ذلك، بدلا من الحصول على العقدة الحالية، يمكنك الحصول على الفقرة المحددة حاليا أو القسم المحدد حاليا باستخدام خصائص [CurrentParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentParagraph) و [CurrentSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentSection).

سيتم إدراج أي عمليات إدراج تقوم بها باستخدام [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) قبل [CurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#CurrentNode). عندما تكون الفقرة الحالية فارغة أو يتم وضع المؤشر قبل نهاية الفقرة مباشرة، فإن **CurrentNode** ترجع فارغة.

## طرق التنقل في مستند

عندما تقوم بتحرير النص، من المهم معرفة كيفية التنقل في المستند الخاص بك وأين تتحرك فيه بالضبط. Aspose.Words يسمح لك بالتنقل في مستند والانتقال إلى أقسامه وأجزائه المختلفة – وهذا مشابه لوظيفة جزء التنقل في Microsoft Word للانتقال إلى صفحة أو عنوان في مستند ورد دون التمرير.

الطريقة الرئيسية هي أن تكون قادرا على تحريك موضع المؤشر إلى عقدة معينة في المستند الخاص بك، يمكنك تحقيق ذلك باستخدام طريقة [MoveTo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveTo-com.aspose.words.Node).

يوضح مثال التعليمات البرمجية التالية كيفية نقل **DocumentBuilder** إلى عقد مختلفة في مستند:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToNode-DocumentBuilderMoveToNode.java" >}}

ولكن إلى جانب الطريقة الأساسية **MoveTo**، هناك طرق أكثر تحديدا.

### انتقل إلى بداية المستند أو نهايته

يمكنك الانتقال إلى بداية المستند أو نهايته باستخدام طريقتي [MoveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart) و [MoveToDocumentEnd](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentEnd).

يوضح مثال التعليمات البرمجية التالية كيفية نقل موضع المؤشر إلى بداية المستند أو نهايته:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToDocumentStartEnd-DocumentBuilderMoveToDocumentStartEnd.java" >}}

### التنقل باستخدام الإشارات المرجعية

يمكنك وضع علامة على المكان الذي تريد العثور عليه والانتقال إليه مرة أخرى بسهولة. يمكنك إدراج العديد من الإشارات المرجعية في المستند كما تريد، ثم التنقل خلالها عن طريق تحديد الإشارات المرجعية بأسماء فريدة. يمكنك الانتقال إلى إشارة مرجعية باستخدام طريقة [MoveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String-boolean-boolean).

توضح أمثلة التعليمات البرمجية التالية كيفية نقل موضع المؤشر إلى إشارة مرجعية:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmark-DocumentBuilderMoveToBookmark.java" >}}

### انتقل إلى خلايا الجدول

يمكنك الانتقال إلى خلية جدول باستخدام طريقة [MoveToCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToCell-int-int-int-int). ستمكنك هذه الطريقة من التنقل في المؤشر إلى أي خلية في جدول معين. بالإضافة إلى ذلك، يمكنك تحديد فهرس لتحريك المؤشر إلى أي موضع أو حرف محدد في خلية ضمن طريقة **MoveToCell**.

يوضح مثال التعليمات البرمجية التالية كيفية نقل موضع المؤشر إلى خلية جدول محددة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToTableCell-DocumentBuilderMoveToTableCell.java" >}}

### انتقل إلى حقل

يمكنك الانتقال إلى حقل معين في المستند باستخدام طريقة [MoveToField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToField-com.aspose.words.Field-boolean). بالإضافة إلى ذلك، يمكنك الانتقال إلى حقل دمج معين باستخدام طريقة [MoveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField-java.lang.String).

يوضح مثال التعليمات البرمجية التالية كيفية نقل مؤشر منشئ المستند إلى حقل معين:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToMergeField-DocumentBuilderMoveToMergeField.java" >}}

### انتقل إلى رأس أو تذييل الصفحة

يمكنك الانتقال إلى بداية رأس أو تذييل باستخدام طريقة [MoveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int).

يوضح مثال التعليمات البرمجية التالية كيفية نقل مؤشر منشئ المستندات إلى رأس المستند أو تذييل الصفحة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderHeadersAndFooters-DocumentBuilderHeaderAndFooters.java" >}}

### انتقل إلى قسم أو فقرة

يمكنك الانتقال إلى قسم أو فقرة معينة باستخدام طرق [MoveToParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToParagraph-int-int) أو [MoveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int). بالإضافة إلى ذلك، يمكنك تحديد فهرس لتحريك المؤشر إلى أي موضع أو حرف محدد في فقرة ضمن طريقة **MoveToParagraph**.

يوضح مثال التعليمات البرمجية التالية كيفية الانتقال إلى قسم معين وفقرة معينة في مستند:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToSectionParagraph-DocumentBuilderMoveToSectionParagraph.java" >}}
