---
title: إدراج وإلحاق المستندات في C#
second_title: Aspose.Words لـ .NET
articleTitle: إدراج وإلحاق المستندات
linktitle: إدراج وإلحاق المستندات
description: "دمج المستندات في مستند واحد: قم بإدراج مستند أو إلحاقه بمستند جديد أو موجود باستخدام البحث والاستبدال، أو حقل الدمج، أو الإشارة المرجعية، أو ببساطة في نهاية المستند في C#."
type: docs
weight: 80
url: /ar/net/insert-and-append-documents/
---

في بعض الأحيان يكون من الضروري دمج عدة مستندات في وثيقة واحدة. يمكنك القيام بذلك يدويًا أو يمكنك استخدام ميزة إدراج أو إلحاق Aspose.Words.

تتيح لك عملية الإدراج إدراج محتوى المستندات التي تم إنشاؤها مسبقًا في مستند جديد أو موجود.

وفي المقابل، تسمح لك ميزة الإلحاق بإضافة مستند فقط في نهاية مستند آخر.

تشرح هذه المقالة كيفية إدراج مستند أو إلحاقه بمستند آخر بطرق مختلفة، كما توضح الخصائص الشائعة التي يمكنك تطبيقها أثناء إدراج المستندات أو إلحاقها.

## أدخل مستند {#insert-a-document}

كما ذكرنا أعلاه، يتم تمثيل المستند في Aspose.Words كشجرة من العقد، وعملية إدراج مستند إلى آخر هي نسخ العقد من شجرة المستند الأولى إلى الشجرة الثانية.

يمكنك إدراج المستندات في مجموعة متنوعة من المواقع بطرق مختلفة. على سبيل المثال، يمكنك إدراج مستند من خلال عملية استبدال، أو حقل دمج أثناء عملية دمج، أو عبر إشارة مرجعية.

يمكنك أيضًا استخدام طريقة [InsertDocument](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertdocument/#insertdocument/) أو [InsertDocumentInline](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertdocumentinline/)، التي تشبه إدراج مستند في Microsoft Word، لإدراج مستند كامل في موضع المؤشر الحالي دون أي استيراد سابق.

يوضح مثال التعليمات البرمجية التالي كيفية إدراج مستند باستخدام طريقة **InsertDocument**:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-with-builder.cs" >}}

يوضح مثال التعليمات البرمجية التالي كيفية إدراج مستند باستخدام طريقة **InsertDocumentInline**:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-inline-with-builder.cs" >}}

تصف الأقسام الفرعية التالية الخيارات التي يمكنك من خلالها إدراج مستند في مستند آخر.

### قم بإدراج مستند أثناء عملية البحث والاستبدال {#insert-a-document-during-find-and-replace-operation}

يمكنك إدراج المستندات أثناء إجراء عمليات البحث والاستبدال. على سبيل المثال، يمكن أن يحتوي المستند على فقرات تحتوي على النص [مقدمة] و[استنتاج]. لكن في الوثيقة النهائية، تحتاج إلى استبدال تلك الفقرات بالمحتوى الذي تم الحصول عليه من مستند خارجي آخر. لتحقيق ذلك، ستحتاج إلى إنشاء معالج لحدث الاستبدال.

يوضح مثال التعليمات البرمجية التالي كيفية إنشاء معالج لحدث الاستبدال لاستخدامه لاحقًا في عملية الإدراج:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-replace-handler.cs" >}}

يوضح مثال التعليمات البرمجية التالي كيفية إدراج محتوى مستند في مستند آخر أثناء عملية البحث والاستبدال:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-replace.cs" >}}

### أدخل مستندًا أثناء عملية Mail Merge {#insert-a-document-during-mail-merge-operation}

يمكنك إدراج مستند في حقل دمج أثناء عملية mail merge. على سبيل المثال، يمكن أن يحتوي قالب mail merge على حقل دمج مثل [الملخص]. ولكن في المستند النهائي، تحتاج إلى إدراج المحتوى الذي تم الحصول عليه من مستند خارجي آخر في حقل الدمج هذا. لتحقيق ذلك، سوف تحتاج إلى إنشاء معالج لحدث الدمج.

يوضح مثال التعليمات البرمجية التالي كيفية إنشاء معالج لحدث الدمج لاستخدامه لاحقًا في عملية الإدراج:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-mail-merge-handler.cs" >}}

يوضح مثال التعليمات البرمجية التالي كيفية إدراج مستند في حقل الدمج باستخدام المعالج الذي تم إنشاؤه:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-mail-merge.cs" >}}

### أدخل مستندًا في الإشارة المرجعية {#insert-a-document-at-bookmark}

يمكنك استيراد ملف نصي إلى مستند وإدراجه مباشرة بعد الإشارة المرجعية التي حددتها في المستند. للقيام بذلك، قم بإنشاء فقرة ذات إشارة مرجعية حيث تريد إدراج المستند.

يوضح مثال الترميز التالي كيفية إدراج محتويات مستند ما في إشارة مرجعية في مستند آخر:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-bookmark.cs" >}}

{{% alert color="primary" %}}

لاحظ أن الإشارة المرجعية يجب ألا تحتوي على فقرات أو نصوص متعددة تريد ظهورها في مستندك النهائي الناتج.

{{% /alert %}}

## إلحاق مستند {#append-a-document}

قد تكون لديك حالة استخدام حيث تحتاج إلى تضمين صفحات إضافية من مستند إلى نهاية مستند موجود. للقيام بذلك، تحتاج فقط إلى استدعاء الأسلوب [AppendDocument](https://reference.aspose.com/words/net/aspose.words/document/appenddocument/) لإضافة مستند إلى نهاية مستند آخر.

{{% alert color="primary" %}}

لاحظ أن [AppendChild](https://reference.aspose.com/words/net/aspose.words/compositenode/appendchild/) هي طريقة على مستوى العقدة داخل المستند. على سبيل المثال، يمكنك إنشاء فقرة وتعيين خصائص التنسيق ثم إلحاقها كطفل فرعي بالنص باستخدام طريقة **AppendChild**.

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالي كيفية إلحاق مستند بنهاية مستند آخر:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "keep-source-formatting.cs" >}}

## استيراد العقد وإدراجها يدويًا في {#import-and-insert-nodes-manually}

يسمح لك Aspose.Words بإدراج المستندات وإلحاقها تلقائيًا دون أي متطلبات استيراد سابقة. ومع ذلك، إذا كنت بحاجة إلى إدراج عقدة معينة في مستندك أو إلحاقها، مثل قسم أو فقرة، فستحتاج أولاً إلى استيراد هذه العقدة يدويًا.

عندما تحتاج إلى إدراج قسم أو فقرة أو إلحاقها بقسم أو فقرة أخرى، فإنك تحتاج بشكل أساسي إلى استيراد العقد الخاصة بشجرة عقدة المستند الأولى إلى الشجرة الثانية باستخدام طريقة [ImportNode](https://reference.aspose.com/words/net/aspose.words/nodeimporter/importnode/). بعد استيراد العقد الخاصة بك، تحتاج إلى استخدام طريقة [InsertAfter](https://reference.aspose.com/words/net/aspose.words/compositenode/insertafter/) / [InsertBefore](https://reference.aspose.com/words/net/aspose.words/compositenode/insertbefore/) لإدراج عقدة جديدة بعد/قبل العقدة المرجعية. يتيح لك ذلك تخصيص عملية الإدراج عن طريق استيراد العقد من مستند وإدراجها في مواضع معينة.

يمكنك أيضًا استخدام طريقة [AppendChild](https://reference.aspose.com/words/net/aspose.words/compositenode/appendchild/) لإضافة عقدة محددة جديدة إلى نهاية قائمة العقد التابعة، على سبيل المثال، إذا كنت تريد إلحاق محتوى على مستوى الفقرة بدلاً من مستوى القسم.

يوضح مثال التعليمات البرمجية التالي كيفية استيراد العقد يدويًا وإدراجها بعد عقدة معينة باستخدام طريقة **InsertAfter**:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-as-nodes.cs" >}}

{{% alert color="primary" %}}

يؤدي الاستيراد إلى إنشاء عقدة جديدة تكون نسخة من العقدة الأصلية ومناسبة للإدراج في المستند الوجهة.

{{% /alert %}}

يتم استيراد المحتوى إلى المستند الوجهة قسمًا تلو الآخر، مما يعني أنه يتم الاحتفاظ بالإعدادات، مثل إعداد الصفحة والرؤوس أو التذييلات، أثناء الاستيراد. من المفيد أيضًا ملاحظة أنه يمكنك تحديد إعدادات التنسيق عند إدراج مستند أو إلحاقه لتحديد كيفية ضم مستندين معًا.

## الخصائص العامة لإدراج المستندات وإلحاقها {#common-properties-for-insert-and-append-documents}

تقبل كل من طريقتي [InsertDocument](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertdocument/) و[AppendDocument](https://reference.aspose.com/words/net/aspose.words/document/appenddocument/) [ImportFormatMode](https://reference.aspose.com/words/net/aspose.words/importformatmode/) و[ImportFormatOptions](https://reference.aspose.com/words/net/aspose.words/importformatoptions/) كمعلمات إدخال. يتيح لك **ImportFormatMode** التحكم في كيفية دمج تنسيق المستند عند استيراد محتوى من مستند إلى آخر عن طريق تحديد أوضاع تنسيق مختلفة مثل [UseDestinationStyles](https://reference.aspose.com/words/net/aspose.words/importformatmode/) و[KeepSourceFormatting](https://reference.aspose.com/words/net/aspose.words/importformatmode/) و[KeepDifferentStyles](https://reference.aspose.com/words/net/aspose.words/importformatmode/). يتيح لك **ImportFormatOptions** تحديد خيارات استيراد مختلفة مثل [IgnoreHeaderFooter](https://reference.aspose.com/words/net/aspose.words/importformatoptions/ignoreheaderfooter/)، و[IgnoreTextBoxes](https://reference.aspose.com/words/net/aspose.words/importformatoptions/ignoretextboxes/)، و[KeepSourceNumbering](https://reference.aspose.com/words/net/aspose.words/importformatoptions/keepsourcenumbering/)، و[MergePastedLists](https://reference.aspose.com/words/net/aspose.words/importformatoptions/mergepastedlists/)، و[SmartStyleBehavior](https://reference.aspose.com/words/net/aspose.words/importformatoptions/smartstylebehavior/).

يتيح لك Aspose.Words ضبط تصور المستند الناتج عند إضافة مستندين معًا في عملية إدراج أو إلحاق باستخدام خصائص [Section](https://reference.aspose.com/words/net/aspose.words/section/) و[PageSetup](https://reference.aspose.com/words/net/aspose.words/documentbuilder/pagesetup/). تحتوي الخاصية **PageSetup** على جميع سمات القسم مثل [SectionStart](https://reference.aspose.com/words/net/aspose.words/pagesetup/sectionstart/) و[RestartPageNumbering](https://reference.aspose.com/words/net/aspose.words/pagesetup/restartpagenumbering/) و[PageStartingNumber](https://reference.aspose.com/words/net/aspose.words/pagesetup/pagestartingnumber/) و[Orientation](https://reference.aspose.com/words/net/aspose.words/pagesetup/orientation/) وغيرها. حالة الاستخدام الأكثر شيوعًا هي تعيين خاصية **SectionStart** لتحديد ما إذا كان المحتوى المضاف سيظهر على نفس الصفحة أو سيتم تقسيمه إلى محتوى جديد.

{{% alert color="primary" %}}

لاحظ أن خصائص **Section** و**PageSetup** لا تتحكم في كيفية إدراج/إلحاق مستندين معًا. إنها تسمح لك فقط بتغيير مظهر وثيقة النتيجة الخاصة بك.

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالي كيفية إلحاق مستند بآخر مع منع تقسيم المحتوى عبر صفحتين:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "different-page-setup.cs" >}}
