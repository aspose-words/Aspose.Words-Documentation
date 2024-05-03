---
title: الملاحة مع كورسور في Java
second_title: Aspose.Words for Java
articleTitle: الملاحة مع كورسور
linktitle: الملاحة مع كورسور
description: "المناورة بين مختلف المعاهد في وثيقة، مثل فقرة أو علامة كتاب أو طابع محدد باستخدام Java."
type: docs
weight: 5
url: /ar/java/navigation-with-cursor/
---

بينما تعمل مع وثيقة، حتى لو كانت قصيرة أو طويلة، سوف تحتاج إلى نقل من خلال وثيقتك. وتمثل الملاحة التي تحمل ستاراً افتراضياً القدرة على الملاحة بين مختلف المعالم في وثيقة ما.

في وثيقة قصيرة، الانتقال في وثيقة بسيطة كما يمكنك نقل نقطة الإدخال حتى باستخدام مفاتيح السهم لوحة المفاتيح أو بتصفيق الفأر لتحديد نقطة الإدخال أينما أردت. ولكن بمجرد أن يكون لديك وثيقة كبيرة لديها العديد من الصفحات، هذه التقنيات الأساسية لن تكون كافية.

وتشرح هذه المادة كيفية الانتقال في وثيقة ما، وتبحر بسيارات افتراضية إلى أجزاء مختلفة منها.

## Detecting Current Cursor Position

قبل أن تبدأ عملية الملاحة من خلال وثيقتك، سوف تحتاج إلى الحصول على العقد الذي يتم اختياره حاليا. يمكنك الحصول على موقع السور بالضبط في عقد مختار باستخدام [CurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentNode) ملكية إضافة إلى ذلك، بدلا من الحصول على العقد الحالي، يمكنك الحصول على الفقرة المختارة حاليا أو القسم المختار حاليا باستخدام [CurrentParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentParagraph) و [CurrentSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentSection) الممتلكات.

أي عمليات تقوم بها باستخدام [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) سيدرج قبل [CurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#CurrentNode). عندما تكون الفقرة الحالية فارغة، أو يكون الكير في موضعه قبل نهاية الفقرة مباشرة، **CurrentNode** العودة لاغية

## أساليب الملاحة في وثيقة

عندما تقومين بتحرير النص، من المهم معرفة كيفية نقل وثيقتك وأين يجب أن ننتقل إليها بالضبط. Aspose.Words يسمح لك بالتحرك في وثيقة ويبحر إلى أقسامه وأجزاءه المختلفة - هذا يشبه وظيفة باني الملاحة في Microsoft Word للذهاب إلى صفحة أو متوجهة في وثيقة كلمة دون تجويف.

الطريقة الرئيسية هي أن تكون قادرة على نقل موقف السور إلى عقد محدد في وثيقتك، يمكنك تحقيق ذلك باستخدام [MoveTo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveTo-com.aspose.words.Node) طريقة

The following code example shows how to move the **DocumentBuilder** في الوثيقة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToNode-DocumentBuilderMoveToNode.java" >}}

لكن إلى جانب الأساسي **MoveTo** هناك طريقة أكثر تحديداً

### الملاحة لبدء أو نهاية وثيقة

يمكنك الذهاب إلى البداية أو نهاية وثيقة استخدام [MoveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart) و [MoveToDocumentEnd](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentEnd) طرق

ويبيّن المثال الرمزي التالي كيفية نقل موقف الشعار إلى بداية الوثيقة أو نهايتها:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToDocumentStartEnd-DocumentBuilderMoveToDocumentStartEnd.java" >}}

### الملاحة مع العلامات الكتابية

يمكنك تحديد مكان تريد أن تجده وتنتقل إليه بسهولة يمكنك إدخال أكبر عدد من العلامات الكتابية في وثيقتك كما تشاء، ثم تبحر عبرها من خلال تحديد علامات الكتاب بأسماء فريدة. يمكنك الانتقال إلى علامة الكتاب باستخدام [MoveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String-boolean-boolean) طريقة

وتبيّن الأمثلة الرمزية التالية كيفية نقل موقف الشعار إلى علامة كتاب:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmark-DocumentBuilderMoveToBookmark.java" >}}

### Navigate to Table Cells

يمكنك الانتقال إلى خلية طاولة باستخدام [MoveToCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToCell-int-int-int-int) طريقة هذه الطريقة ستمكّنك من نقل فضولك إلى أي خلية في طاولة محددة بالإضافة إلى ذلك، يمكنك تحديد رقم قياسي لنقل الضمادات إلى أي موقع أو طابع محدد في زنزانة داخل الخلية **MoveToCell** طريقة

ويبيّن المثال الرمزي التالي كيفية نقل مركز الضمائر إلى خلية طاولة محددة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToTableCell-DocumentBuilderMoveToTableCell.java" >}}

### الملاحة في الميدان

يمكنك الانتقال إلى حقل محدد في وثيقتك باستخدام [MoveToField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToField-com.aspose.words.Field-boolean) طريقة إضافة إلى ذلك، يمكنك الانتقال إلى حقل مدمج محدد باستخدام [MoveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField-java.lang.String) طريقة

ويبيّن المثال الرمزي التالي كيفية نقل الشعار المبني للوثائق إلى ميدان محدد:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToMergeField-DocumentBuilderMoveToMergeField.java" >}}

### نافيغيت إلى رئيس أو فوتور

يمكنك الانتقال إلى بداية رأس أو قدم باستخدام [MoveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int) طريقة

ويبيّن المثال الرمزي التالي كيفية نقل مزوّر بناء الوثائق إلى رئيس الوثيقة أو قدميها:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderHeadersAndFooters-DocumentBuilderHeaderAndFooters.java" >}}

### الملاحة إلى قسم أو فقرة

يمكنك الانتقال إلى قسم معين أو فقرة محددة باستخدام [MoveToParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToParagraph-int-int) أو [MoveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int) طرق وبالإضافة إلى ذلك، يمكنك تحديد مؤشر لنقل الشعار إلى أي موقف أو طابع محدد في فقرة في الفقرة **MoveToParagraph** طريقة

ويبين المثال الرمزي التالي كيفية الانتقال إلى قسم محدد والفقرة المحددة في الوثيقة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToSectionParagraph-DocumentBuilderMoveToSectionParagraph.java" >}}
