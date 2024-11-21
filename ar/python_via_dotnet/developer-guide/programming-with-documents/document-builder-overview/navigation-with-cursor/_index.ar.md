---
title: التنقل باستخدام المؤشر في Python
second_title: Aspose.Words لـ Python via .NET
articleTitle: التنقل مع المؤشر
linktitle: التنقل مع المؤشر
description: "التنقل بين العقد المختلفة داخل مستند مثل فقرة أو إشارة مرجعية أو حرف معين باستخدام Python."
type: docs
weight: 10
url: /ar/python-net/navigation-with-cursor/
timestamp: 2024-01-27-14-07-04
---

أثناء العمل على مستند، حتى لو كان قصيرًا أو طويلًا، ستحتاج إلى التنقل عبر المستند. يمثل التنقل باستخدام المؤشر الافتراضي القدرة على التنقل بين العقد المختلفة في المستند.

داخل مستند قصير، يعد التنقل في المستند أمرًا بسيطًا حيث يمكنك تحريك نقطة الإدراج حتى باستخدام مفاتيح الأسهم في لوحة المفاتيح أو عن طريق النقر بالماوس لتحديد موقع نقطة الإدراج أينما تريد. ولكن بمجرد أن يكون لديك مستند كبير يحتوي على العديد من الصفحات، فإن هذه التقنيات الأساسية لن تكون كافية.

تشرح هذه المقالة كيفية التنقل في المستند والتنقل باستخدام مؤشر افتراضي إلى أجزاء مختلفة منه.

## الكشف عن موضع المؤشر الحالي

قبل البدء في عملية التنقل عبر المستند، ستحتاج إلى الحصول على العقدة المحددة حاليًا. يمكنك الحصول على الموضع الدقيق للمؤشر عند العقدة المحددة باستخدام خاصية [current_node](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_node/). بالإضافة إلى ذلك، بدلاً من الحصول على العقدة الحالية، يمكنك الحصول على الفقرة المحددة حاليًا أو القسم المحدد حاليًا باستخدام خصائص [current_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_paragraph/) و[current_section](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_section/).

سيتم إدراج أي عمليات إدراج تقوم بها باستخدام [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) قبل [current_node](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_node/). عندما تكون الفقرة الحالية فارغة أو يتم وضع المؤشر قبل نهاية الفقرة مباشرة، فإن [current_node](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_node/) لا يُرجع أي شيء.

## طرق التنقل في المستند

عندما تقوم بتحرير النص، من المهم معرفة كيفية التنقل في المستند والمكان الذي يجب أن تتحرك فيه بالضبط. يسمح لك Aspose.Words بالتنقل في المستند والانتقال إلى أقسامه وأجزاءه المختلفة - وهذا يشبه وظيفة جزء التنقل في Microsoft Word للانتقال إلى صفحة أو عنوان في مستند Word دون التمرير.

الطريقة الرئيسية هي أن تكون قادرًا على نقل موضع المؤشر إلى عقدة معينة في المستند الخاص بك، ويمكنك تحقيق ذلك باستخدام طريقة [move_to](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to/).

يوضح مثال التعليمات البرمجية التالي كيفية نقل [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) إلى عقد مختلفة في المستند:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToNode.py" >}}

ولكن إلى جانب طريقة [move_to](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to/) الأساسية، هناك طرق أكثر تحديدًا.

### انتقل إلى بداية أو نهاية المستند

يمكنك الانتقال إلى بداية المستند أو نهايته باستخدام طريقتي [move_to_document_start](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_document_start/) و[move_to_document_end](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_document_end/).

يوضح مثال التعليمات البرمجية التالي كيفية نقل موضع المؤشر إلى بداية المستند أو نهايته:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToDocumentStartEnd.py" >}}

### التنقل باستخدام الإشارات المرجعية

يمكنك وضع علامة على المكان الذي تريد البحث عنه والانتقال إليه مرة أخرى بسهولة. يمكنك إدراج أي عدد تريده من الإشارات المرجعية في مستندك، ثم التنقل عبرها عن طريق تحديد الإشارات المرجعية بأسماء فريدة. يمكنك الانتقال إلى إشارة مرجعية باستخدام طريقة [move_to_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_bookmark/).

توضح أمثلة التعليمات البرمجية التالية كيفية نقل موضع المؤشر إلى إشارة مرجعية:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToBookmark.py" >}}

### انتقل إلى خلايا الجدول

يمكنك الانتقال إلى خلية جدول باستخدام طريقة [move_to_cell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_cell/). ستمكنك هذه الطريقة من التنقل بمؤشر الماوس إلى أي خلية في جدول معين. بالإضافة إلى ذلك، يمكنك تحديد فهرس لتحريك المؤشر إلى أي موضع أو حرف محدد في خلية ضمن طريقة [move_to_cell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_cell/).

يوضح مثال التعليمات البرمجية التالي كيفية نقل موضع المؤشر إلى خلية جدول محددة:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToTableCell.py" >}}

### انتقل إلى الحقل

يمكنك الانتقال إلى حقل معين في مستندك باستخدام طريقة [move_to_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_field/). بالإضافة إلى ذلك، يمكنك الانتقال إلى حقل دمج محدد باستخدام أسلوب [move_to_merge_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_merge_field/).

يوضح مثال التعليمات البرمجية التالي كيفية نقل مؤشر منشئ المستندات إلى حقل معين:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToMergeField.py" >}}

### انتقل إلى رأس أو تذييل الصفحة

يمكنك الانتقال إلى بداية الرأس أو التذييل باستخدام طريقة [move_to_header_footer](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_header_footer/)

يوضح مثال التعليمات البرمجية التالي كيفية نقل مؤشر منشئ المستندات إلى رأس المستند أو تذييله:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToHeadersFooters.py" >}}

### انتقل إلى قسم أو فقرة

يمكنك الانتقال إلى قسم أو فقرة معينة باستخدام أساليب [move_to_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_paragraph/) أو [move_to_section](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_section/). بالإضافة إلى ذلك، يمكنك تحديد فهرس لتحريك المؤشر إلى أي موضع أو حرف محدد في فقرة ضمن طريقة [move_to_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_paragraph/).

يوضح مثال التعليمات البرمجية التالي كيفية الانتقال إلى قسم معين وفقرة معينة في المستند:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToSection.py" >}}
