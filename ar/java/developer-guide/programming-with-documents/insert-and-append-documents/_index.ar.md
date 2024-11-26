---
title: إدراج وإلحاق المستندات في Java
second_title: Aspose.Words ل Java
articleTitle: إدراج المستندات وإلحاقها
linktitle: إدراج المستندات وإلحاقها
description: "دمج المستندات في مستند واحد: أدخل أو ألحق مستندا في مستند جديد أو موجود باستخدام البحث والاستبدال أو حقل الدمج أو الإشارة المرجعية أو ببساطة في نهاية المستند بـ Java."
type: docs
weight: 80
url: /ar/java/insert-and-append-documents/
timestamp: 2024-01-27-14-07-04
---

في بعض الأحيان يكون مطلوبا دمج عدة مستندات في مستند واحد. يمكنك القيام بذلك يدويا أو يمكنك استخدام Aspose.Words إدراج أو إلحاق الميزة.

تتيح لك عملية الإدراج إدراج محتوى المستندات التي تم إنشاؤها مسبقا في مستند جديد أو موجود.

في المقابل، تتيح لك ميزة الإلحاق إضافة مستند فقط في نهاية مستند آخر.

تشرح هذه المقالة كيفية إدراج مستند أو إلحاقه بمستند آخر بطرق مختلفة وتصف الخصائص الشائعة التي يمكنك تطبيقها أثناء إدراج المستندات أو إلحاقها.

## أدخل وثيقة

كما ذكر أعلاه، في Aspose.Words يتم تمثيل المستند كشجرة من العقد، وعملية إدراج مستند في آخر هي نسخ العقد من شجرة المستند الأولى إلى الثانية.

يمكنك إدراج المستندات في مجموعة متنوعة من المواقع بطرق مختلفة. على سبيل المثال، يمكنك إدراج مستند من خلال عملية استبدال أو حقل دمج أثناء عملية دمج أو عبر إشارة مرجعية.

يمكنك أيضا استخدام طريقة [InsertDocument](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocument-com.aspose.words.Document-int) أو [InsertDocumentInline](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocumentInline-com.aspose.words.Document-int-com.aspose.words.ImportFormatOptions)، والتي تشبه إدراج مستند في Microsoft Word، لإدراج مستند كامل في موضع المؤشر الحالي دون أي استيراد سابق.

يوضح مثال التعليمات البرمجية التالية كيفية إدراج مستند باستخدام طريقة **InsertDocument**:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-with-builder.java" >}}

يوضح مثال التعليمات البرمجية التالية كيفية إدراج مستند باستخدام طريقة **InsertDocumentInline**:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-inline-with-builder.java" >}}

تصف الأقسام الفرعية التالية الخيارات التي يمكنك خلالها إدراج مستند في مستند آخر.

### أدخل مستندا أثناء عملية البحث والاستبدال {#insert-a-document-during-find-and-replace-operation}

يمكنك إدراج المستندات أثناء إجراء عمليات البحث والاستبدال. على سبيل المثال، يمكن أن يحتوي المستند على فقرات بالنص [INTRODUCTION] و [CONCLUSION]. لكن في المستند النهائي، تحتاج إلى استبدال تلك الفقرات بالمحتوى الذي تم الحصول عليه من مستند خارجي آخر. لتحقيق ذلك، سوف تحتاج إلى إنشاء معالج للحدث استبدال.

يوضح مثال التعليمات البرمجية التالية كيفية إنشاء معالج للحدث استبدال لاستخدامه لاحقا في عملية الإدراج:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-replace-handler.java" >}}

يوضح مثال الكود التالي كيفية إدراج محتوى مستند إلى آخر أثناء عملية البحث والاستبدال:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-replace.java" >}}

### أدخل مستندا أثناء عملية Mail Merge {#insert-a-document-during-mail-merge-operation}

يمكنك إدراج مستند في حقل دمج أثناء عملية Mail Merge. على سبيل المثال، يمكن أن يحتوي قالب Mail Merge على حقل دمج مثل [ملخص]. ولكن في المستند النهائي، تحتاج إلى إدراج محتوى تم الحصول عليه من مستند خارجي آخر في حقل الدمج هذا. لتحقيق ذلك، سوف تحتاج إلى إنشاء معالج لحدث الدمج.

يوضح مثال التعليمات البرمجية التالية كيفية إنشاء معالج لحدث الدمج لاستخدامه لاحقا في عملية الإدراج:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-mail-merge-handler.java" >}}

يوضح مثال التعليمات البرمجية التالية كيفية إدراج مستند في حقل الدمج باستخدام المعالج الذي تم إنشاؤه:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-mail-merge.java" >}}

### أدخل مستندا في إشارة مرجعية

يمكنك استيراد ملف نصي إلى مستند وإدراجه مباشرة بعد الإشارة المرجعية التي حددتها في المستند. للقيام بذلك، قم بإنشاء فقرة مرجعية حيث تريد إدراج المستند.

يوضح مثال الترميز التالي كيفية إدراج محتويات مستند إلى إشارة مرجعية في مستند آخر:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-bookmark.java" >}}

{{% alert color="primary" %}}

لاحظ أن الإشارة المرجعية يجب ألا تحتوي على عدة فقرات أو نص تريده أن يظهر في المستند النهائي الناتج.

{{% /alert %}}

## إلحاق مستند

قد يكون لديك حالة استخدام حيث تحتاج إلى تضمين صفحات إضافية من مستند إلى نهاية مستند موجود. للقيام بذلك، تحتاج فقط إلى استدعاء طريقة [AppendDocument](https://reference.aspose.com/words/java/com.aspose.words/document/#appendDocument-com.aspose.words.Document-int) لإضافة مستند إلى نهاية مستند آخر.

{{% alert color="primary" %}}

لاحظ أن [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/document/#appendChild-com.aspose.words.Node) هي طريقة مستوى العقدة داخل مستند. على سبيل المثال، يمكنك إنشاء فقرة وتعيين خصائص التنسيق ثم إلحاقها كطفل بالجسم باستخدام طريقة **AppendChild**.

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالية كيفية إلحاق مستند إلى نهاية مستند آخر:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "keep-source-formatting.java" >}}

## استيراد وإدراج العقد يدويا {#import-and-insert-nodes-manually}

Aspose.Words يسمح لك بإدراج وإلحاق المستندات تلقائيا دون أي متطلبات استيراد سابقة. ومع ذلك، إذا كنت بحاجة إلى إدراج أو إلحاق عقدة معينة من المستند، مثل قسم أو فقرة، فأنت بحاجة أولا إلى استيراد هذه العقدة يدويا.

عندما تحتاج إلى إدراج أو إلحاق قسم أو فقرة إلى أخرى، تحتاج أساسا إلى استيراد العقد من شجرة عقدة الوثيقة الأولى في الثانية باستخدام طريقة [ImportNode](https://reference.aspose.com/words/java/com.aspose.words/document/#importNode-com.aspose.words.Node-boolean). بعد استيراد العقد الخاصة بك، تحتاج إلى استخدام طريقة [InsertAfter](https://reference.aspose.com/words/java/com.aspose.words/document/#insertBefore-com.aspose.words.Node-com.aspose.words.Node) لإدراج عقدة جديدة بعد/قبل العقدة المرجعية. يتيح لك ذلك تخصيص عملية الإدراج عن طريق استيراد العقد من مستند وإدخالها في مواضع معينة.

يمكنك أيضا استخدام طريقة [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/document/#appendChild-com.aspose.words.Node) لإضافة عقدة محددة جديدة إلى نهاية قائمة العقد الفرعية، على سبيل المثال، إذا كنت تريد إلحاق المحتوى على مستوى الفقرة بدلا من مستوى القسم.

يوضح مثال الكود التالي كيفية استيراد العقد يدويا وإدراجها بعد عقدة معينة باستخدام طريقة **InsertAfter**:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-as-nodes.java" >}}

{{% alert color="primary" %}}

يقوم الاستيراد بإنشاء عقدة جديدة هي نسخة من العقدة الأصلية ومناسبة للإدراج في المستند الوجهة.

{{% /alert %}}

يتم استيراد المحتوى إلى قسم المستند الوجهة حسب القسم، مما يعني أنه يتم الاحتفاظ بالإعدادات، مثل إعداد الصفحة والرؤوس أو التذييلات، أثناء الاستيراد. من المفيد أيضا ملاحظة أنه يمكنك تحديد إعدادات التنسيق عند إدراج مستند أو إلحاقه لتحديد كيفية ربط وثيقتين معا.

## الخصائص الشائعة لإدراج وإلحاق المستندات {#common-properties-for-insert-and-append-documents}

تقبل كل من الطريقتين [InsertDocument](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocument-com.aspose.words.Document-int) و [AppendDocument](https://reference.aspose.com/words/java/com.aspose.words/document/#appendDocument-com.aspose.words.Document-int) [ImportFormatMode](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/) و [ImportFormatOptions](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/) كمعلمات إدخال. يسمح لك **ImportFormatMode** بالتحكم في كيفية دمج تنسيق المستند عند استيراد محتوى من مستند إلى آخر عن طريق تحديد أوضاع تنسيق مختلفة مثل [UseDestinationStyles](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#USE-DESTINATION-STYLES) و [KeepSourceFormatting](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#KEEP-SOURCE-FORMATTING) و [KeepDifferentStyles](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#KEEP-DIFFERENT-STYLES). ال **ImportFormatOptions** يسمح لك بتحديد خيارات استيراد مختلفة مثل [IgnoreHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getIgnoreHeaderFooter), [IgnoreTextBoxes](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getIgnoreTextBoxes), [KeepSourceNumbering](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getKeepSourceNumbering), [MergePastedLists](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getMergePastedLists), و [SmartStyleBehavior](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getSmartStyleBehavior).

Aspose.Words يسمح لك بضبط التصور للمستند الناتج عند إضافة وثيقتين معا في عملية إدراج أو إلحاق باستخدام خصائص [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) و [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/). تحتوي الخاصية **PageSetup** على جميع سمات قسم مثل [SectionStart](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getSectionStart), [RestartPageNumbering](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getRestartPageNumbering), [PageStartingNumber](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getPageStartingNumber), [Orientation](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOrientation), وغيرها. حالة الاستخدام الأكثر شيوعا هي تعيين خاصية **SectionStart** لتحديد ما إذا كان المحتوى المضاف سيظهر على نفس الصفحة أو ينقسم إلى صفحة جديدة.

{{% alert color="primary" %}}

لاحظ أن الخصائص **Section** و **PageSetup** لا تتحكم في كيفية إدراج/إلحاق مستندين معا. إنها تسمح لك فقط بتغيير مظهر مستند النتائج الخاص بك.

{{% /alert %}}

يوضح مثال الكود التالي كيفية إلحاق مستند بآخر مع الحفاظ على المحتوى من الانقسام عبر صفحتين:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "different-page-setup.java" >}}
