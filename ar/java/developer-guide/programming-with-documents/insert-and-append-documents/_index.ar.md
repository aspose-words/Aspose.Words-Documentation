---
title: Insert and Append Documents in Java
second_title: Aspose.Words for Java
articleTitle: الوثائق المرفوعة والمقدمة
linktitle: الوثائق المرفوعة والمقدمة
description: "وثائق التجميع في وثيقة واحدة: إدراج أو تذييل وثيقة في وثيقة جديدة أو قائمة باستخدام الاكتشاف والاستعاضة عنها، أو الدمج في الميدان، أو علامة الكتاب، أو ببساطة في نهاية الوثيقة Java."
type: docs
weight: 80
url: /ar/java/insert-and-append-documents/
timestamp: 2024-01-27-14-07-04
---

وفي بعض الأحيان يلزم الجمع بين عدة وثائق في وثيقة واحدة. يمكنك أن تفعل هذا يدويا أو يمكنك استخدام Aspose.Words تدرج أو تذييل خاصية.

عملية الإدخال تسمح لك بإضافة محتوى الوثائق التي سبق إنشاؤها إلى وثيقة جديدة أو قائمة.

وبالمقابل، فإن سمة التذييل تسمح لك بإضافة وثيقة فقط في نهاية وثيقة أخرى.

وتشرح هذه المادة كيفية إدراج أو تذييل وثيقة إلى وثيقة أخرى بطرق مختلفة، وتصف الممتلكات المشتركة التي يمكن أن تطبقها أثناء إدراج أو تذييل الوثائق.

## تدرج الوثيقة

كما ذُكر أعلاه، في Aspose.Words وتُمثَّل الوثيقة كشجرة من الأنهار، وتُعدُّ عملية إدراج وثيقة في وثيقة أخرى نسخاً من شجرة الوثائق الأولى إلى الثانية.

يمكنك إدخال الوثائق في مختلف المواقع بطرق مختلفة على سبيل المثال، يمكنك إدخال وثيقة من خلال عملية بديلة، حقل مدمج خلال عملية دمج، أو عن طريق علامة كتاب.

يمكنك أيضا استخدام [InsertDocument](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocument-com.aspose.words.Document-int) أو [InsertDocumentInline](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocumentInline-com.aspose.words.Document-int-com.aspose.words.ImportFormatOptions) طريقة مماثلة لإدراج وثيقة في Microsoft Word, إدراج وثيقة كاملة في موقف الضمائر الحالي دون أي استيراد سابق.

ويبين المثال الرمزي التالي كيفية إدراج وثيقة باستخدام **InsertDocument** الطريقة:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-with-builder.java" >}}

ويبين المثال الرمزي التالي كيفية إدراج وثيقة باستخدام **InsertDocumentInline** الطريقة:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-inline-with-builder.java" >}}

وتصف الأقسام الفرعية التالية الخيارات التي يمكن خلالها إدراج وثيقة واحدة في وثيقة أخرى.

### تدرج الوثيقة أثناء البحث والاستبدال {#insert-a-document-during-find-and-replace-operation}

يمكنك إدخال الوثائق أثناء القيام بالعثور واستبدال العمليات فعلى سبيل المثال، يمكن أن تتضمن الوثيقة فقرات مع النص [الإجراء] و[التعليق]. ولكن في الوثيقة الختامية، تحتاج إلى الاستعاضة عن هذه الفقرات بالمحتوى الذي يتم الحصول عليه من وثيقة خارجية أخرى. لتحقيق ذلك، سوف تحتاج إلى إنشاء معالج للحدث البديل.

ويبين المثال الرمزي التالي كيفية إنشاء معالج للحدث البديل لاستخدامه في وقت لاحق في عملية الإدراج:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-replace-handler.java" >}}

ويبيّن المثال الرمزي التالي كيف تُدرَج محتويات إحدى الوثائق في وثيقة أخرى خلال عملية البحث والاستبدال:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-replace.java" >}}

### تدرج الوثيقة خلال الفترة Mail Merge العملية {#insert-a-document-during-mail-merge-operation}

يمكنك أن تضيف وثيقة إلى حقل مدمج خلال mail merge العملية على سبيل المثال(أ) mail merge ويمكن أن يحتوي النموذج على حقل مدمج مثل [الموجز]. ولكن في الوثيقة الختامية، يجب أن تُدرَج المحتويات التي تم الحصول عليها من وثيقة خارجية أخرى في هذا المجال المدمج. لتحقيق ذلك، سوف تحتاج إلى إنشاء معالج لحدث الدمج.

ويبين المثال الرمزي التالي كيفية إنشاء معالج للحدث المختلط ليستخدمه في وقت لاحق في عملية الإدراج:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-mail-merge-handler.java" >}}

ويبيّن المثال الرمزي التالي كيفية إدراج وثيقة في مجال الاندماج باستخدام المعالج المُنشأ:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-mail-merge.java" >}}

### Insert a Document at Bookmark

ويمكنك أن تستورد ملفاً نصياً في وثيقة وتدرجه مباشرة بعد علامة كتاب عرّفتها في الوثيقة. وللقيام بذلك، وضع فقرة مكتوبة حيث تريد إدراج الوثيقة.

ويبيّن مثال الترميز التالي كيفية إدراج محتويات وثيقة إلى علامة كتاب في وثيقة أخرى:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-bookmark.java" >}}

{{% alert color="primary" %}}

Note that the bookmark should not attach multiple paragraphs or text that you want them to appear in your final resulting document.

{{% /alert %}}

## تذييل الوثيقة

قد يكون لديك حالة استخدام حيث تحتاج إلى إدراج صفحات إضافية من وثيقة إلى نهاية وثيقة قائمة. لفعل هذا، عليك أن تتصل [AppendDocument](https://reference.aspose.com/words/java/com.aspose.words/document/#appendDocument-com.aspose.words.Document-int) طريقة لإضافة وثيقة إلى نهاية وثيقة أخرى.

{{% alert color="primary" %}}

ملاحظة [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/document/#appendChild-com.aspose.words.Node) هو طريقة لمستوى العقد في وثيقة ما. على سبيل المثال، يمكنك أن تخلق فقرة، وترسم شكل الممتلكات، ومن ثم تذييلها كطفل على الجسم باستخدام **AppendChild** طريقة

{{% /alert %}}

ويبين المثال الرمزي التالي كيفية تذييل وثيقة إلى نهاية وثيقة أخرى:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "keep-source-formatting.java" >}}

## رموز الواردات والإضافات {#import-and-insert-nodes-manually}

Aspose.Words يُمكِنُك أَنْ تُدخلَ وتُرفقَ الوثائقَ تلقائياً بدون أيّ متطلبات استيراد سابقة. على أي حال، إذا كنت بحاجة إلى إدخال أو تذييل رمز محدد من وثيقتكم، مثل قسم أو فقرة، ثم أولا تحتاج إلى استيراد هذا العقد يدويا.

عندما تحتاج إلى إدخال أو تذييل جزء أو فقرة إلى أخرى، تحتاج أساسا إلى استيراد عقدة من شجرة العقد الأولى في الوثيقة الثانية باستخدام [ImportNode](https://reference.aspose.com/words/java/com.aspose.words/document/#importNode-com.aspose.words.Node-boolean) طريقة بعد إستيراد عقدك يجب أن تستخدم [InsertAfter](https://reference.aspose.com/words/java/com.aspose.words/document/#insertBefore-com.aspose.words.Node-com.aspose.words.Node) طريقة إدخال عقد جديد بعد/قبل العقد المرجعي. وهذا يسمح لكم بتكييف عملية الإدراج باستيراد رموز من وثيقة وإدخالها في مواقع معينة.

يمكنك أيضا استخدام [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/document/#appendChild-com.aspose.words.Node) طريقة لإضافة عقد جديد محدد إلى نهاية قائمة أسماء الأطفال، على سبيل المثال، إذا كنت ترغب في تذييل المحتوى على مستوى الفقرة بدلا من مستوى الأقسام.

The following code example shows how to manually import nodes and insert them after a specific node using the **InsertAfter** الطريقة:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-as-nodes.java" >}}

{{% alert color="primary" %}}

The import creates a new node that is a copy of the original node and suitable for insertion into the destination document.

{{% /alert %}}

ويتم استيراد المحتوى إلى قسم وثائق المقصد حسب الفرع، مما يعني أن البيئات، مثل تجهيز الصفحات والرعاة أو الأقدام، تُحفظ أثناء الاستيراد. ومن المفيد أيضا الإشارة إلى أنه يمكن أن تُحدِّد الأطر الشكلية عندما تُدرَج وثيقة أو تذييلها لتحديد كيفية الجمع بين وثيقتين.

## Properties for Insert and Append Documents {#common-properties-for-insert-and-append-documents}

كلاهما [InsertDocument](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocument-com.aspose.words.Document-int) و [AppendDocument](https://reference.aspose.com/words/java/com.aspose.words/document/#appendDocument-com.aspose.words.Document-int) الأساليب المقبولة [ImportFormatMode](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/) و [ImportFormatOptions](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/) كمقياس للمدخلات The **ImportFormatMode** يُمكِنُك أَنْ تُراقبَ كَمْ يُدمجُ شكلَ الوثائقَ عندما تُستوردُ محتوى مِنْ وثيقةِ إلى أخرى باختيار الأشكالِ المختلفةِ مثل [UseDestinationStyles](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#USE-DESTINATION-STYLES), [KeepSourceFormatting](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#KEEP-SOURCE-FORMATTING), و [KeepDifferentStyles](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#KEEP-DIFFERENT-STYLES). The **ImportFormatOptions** يسمح لك باختيار خيارات استيراد مختلفة مثل [IgnoreHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getIgnoreHeaderFooter), [IgnoreTextBoxes](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getIgnoreTextBoxes), [KeepSourceNumbering](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getKeepSourceNumbering), [MergePastedLists](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getMergePastedLists), و [SmartStyleBehavior](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getSmartStyleBehavior).

Aspose.Words يُمكِنُك أَنْ تُكيّفَ صورة a وثيقة تُنتجُ عندما وثيقتان مُضافتان معاً في a تَدْفعُ أَو تذييل بإستخدام [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) و [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) الممتلكات. The **PageSetup** تتضمن الممتلكات جميع خصائص قسم مثل [SectionStart](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getSectionStart), [RestartPageNumbering](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getRestartPageNumbering), [PageStartingNumber](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getPageStartingNumber), [Orientation](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOrientation), والآخرون أكثر حالات الاستخدام شيوعاً هي تحديد **SectionStart** الممتلكات التي يتعين عليها تحديد ما إذا كان المحتوى الإضافي سيظهر في الصفحة نفسها أو يقسم إلى مادة جديدة.

{{% alert color="primary" %}}

ملاحظة: **Section** و **PageSetup** ولا تتحكم الممتلكات في كيفية إدراج وثيقتين أو تطبيقهما معا. هم فقط يسمحون لك لتغيير مظهر وثيقة النتائج الخاصة بك.

{{% /alert %}}

ويبيّن المثال الرمزي التالي كيفية تذييل وثيقة إلى أخرى مع الحفاظ على المحتوى من التقسيم عبر صفحتين:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "different-page-setup.java" >}}
