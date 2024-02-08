---
title: إدراج وإلحاق المستندات
second_title: Aspose.Words لـ Python via .NET
articleTitle: إدراج وإلحاق المستندات
linktitle: إدراج وإلحاق المستندات
description: "دمج المستندات في مستند واحد: قم بإدراج مستند أو إلحاقه بمستند جديد أو موجود باستخدام البحث والاستبدال، أو حقل الدمج، أو الإشارة المرجعية، أو ببساطة في نهاية المستند في Python."
type: docs
weight: 80
url: /ar/python-net/insert-and-append-documents/
---

في بعض الأحيان يكون من الضروري دمج عدة مستندات في وثيقة واحدة. يمكنك القيام بذلك يدويًا أو يمكنك استخدام ميزة إدراج أو إلحاق Aspose.Words.

تتيح لك عملية الإدراج إدراج محتوى المستندات التي تم إنشاؤها مسبقًا في مستند جديد أو موجود.

وفي المقابل، تسمح لك ميزة الإلحاق بإضافة مستند فقط في نهاية مستند آخر.

تشرح هذه المقالة كيفية إدراج مستند أو إلحاقه بمستند آخر بطرق مختلفة، كما توضح الخصائص الشائعة التي يمكنك تطبيقها أثناء إدراج المستندات أو إلحاقها.

## قم بإدراج مستند

كما ذكرنا أعلاه، يتم تمثيل المستند في Aspose.Words كشجرة من العقد، وعملية إدراج مستند إلى آخر هي نسخ العقد من شجرة المستند الأولى إلى الشجرة الثانية.

يمكنك إدراج المستندات في مجموعة متنوعة من المواقع بطرق مختلفة. على سبيل المثال، يمكنك إدراج مستند من خلال عملية استبدال، أو حقل دمج أثناء عملية دمج، أو عبر إشارة مرجعية.

يمكنك أيضًا استخدام أسلوب [insert_document](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document/) أو [insert_document_inline](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document_inline/#document_importformatmode_importformatoptions)، الذي يشبه إدراج مستند في Microsoft Word، لإدراج مستند كامل في موضع المؤشر الحالي دون أي استيراد سابق.

يوضح مثال التعليمات البرمجية التالي كيفية إدراج مستند باستخدام طريقة **Insert_document**:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-with-builder.py" >}}

يوضح مثال التعليمات البرمجية التالي كيفية إدراج مستند باستخدام طريقة **Insert_document_inline**:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-inline-with-builder.py" >}}

تصف الأقسام الفرعية التالية الخيارات التي يمكنك من خلالها إدراج مستند في مستند آخر.

### أدخل مستندًا في الإشارة المرجعية

يمكنك استيراد ملف نصي إلى مستند وإدراجه مباشرة بعد الإشارة المرجعية التي حددتها في المستند. للقيام بذلك، قم بإنشاء فقرة ذات إشارة مرجعية حيث تريد إدراج المستند.

يوضح مثال الترميز التالي كيفية إدراج محتويات مستند ما في إشارة مرجعية في مستند آخر:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-at-bookmark.py" >}}

{{% alert color="primary" %}}

لاحظ أن الإشارة المرجعية يجب ألا تحتوي على فقرات أو نصوص متعددة تريد ظهورها في مستندك النهائي الناتج.

{{% /alert %}}

## إلحاق مستند

قد تكون لديك حالة استخدام حيث تحتاج إلى تضمين صفحات إضافية من مستند إلى نهاية مستند موجود. للقيام بذلك، تحتاج فقط إلى استدعاء الأسلوب [append_document](https://reference.aspose.com/words/python-net/aspose.words/document/append_document/) لإضافة مستند إلى نهاية مستند آخر.

{{% alert color="primary" %}}

لاحظ أن [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/) هي طريقة على مستوى العقدة داخل المستند. على سبيل المثال، يمكنك إنشاء فقرة وتعيين خصائص التنسيق ثم إلحاقها كطفل فرعي بالنص باستخدام طريقة [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/).

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالي كيفية إلحاق مستند بنهاية مستند آخر:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "keep-source-formatting.py" >}}

## استيراد العقد وإدراجها يدويًا

يسمح لك Aspose.Words بإدراج المستندات وإلحاقها تلقائيًا دون أي متطلبات استيراد سابقة. ومع ذلك، إذا كنت بحاجة إلى إدراج عقدة معينة في مستندك أو إلحاقها، مثل قسم أو فقرة، فستحتاج أولاً إلى استيراد هذه العقدة يدويًا.

عندما تحتاج إلى إدراج أو إلحاق قسم أو فقرة بأخرى، فإنك تحتاج بشكل أساسي إلى استيراد العقد الخاصة بشجرة عقدة المستند الأولى إلى الشجرة الثانية باستخدام طريقة [import_node](https://reference.aspose.com/words/python-net/aspose.words/documentbase/import_node/). بعد استيراد العقد الخاصة بك، تحتاج إلى استخدام طريقة [insert_after](https://reference.aspose.com/words/python-net/aspose.words/compositenode/insert_after/) / [insert_before](https://reference.aspose.com/words/python-net/aspose.words/compositenode/insert_before/) لإدراج عقدة جديدة بعد/قبل العقدة المرجعية. يتيح لك ذلك تخصيص عملية الإدراج عن طريق استيراد العقد من مستند وإدراجها في مواضع معينة.

يمكنك أيضًا استخدام طريقة [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/) لإضافة عقدة محددة جديدة إلى نهاية قائمة العقد التابعة، على سبيل المثال، إذا كنت تريد إلحاق محتوى على مستوى الفقرة بدلاً من مستوى القسم.

يوضح مثال التعليمات البرمجية التالي كيفية استيراد العقد يدويًا وإدراجها بعد عقدة معينة باستخدام طريقة [insert_after](https://reference.aspose.com/words/python-net/aspose.words/compositenode/insert_after/):

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-as-nodes.py" >}}

{{% alert color="primary" %}}

يؤدي الاستيراد إلى إنشاء عقدة جديدة تكون نسخة من العقدة الأصلية ومناسبة للإدراج في المستند الوجهة.

{{% /alert %}}

يتم استيراد المحتوى إلى المستند الوجهة قسمًا تلو الآخر، مما يعني أنه يتم الاحتفاظ بالإعدادات، مثل إعداد الصفحة والرؤوس أو التذييلات، أثناء الاستيراد. من المفيد أيضًا ملاحظة أنه يمكنك تحديد إعدادات التنسيق عند إدراج مستند أو إلحاقه لتحديد كيفية ضم مستندين معًا.

## الخصائص العامة لإدراج المستندات وإلحاقها

تقبل كل من طريقتي [insert_document](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document/) و[append_document](https://reference.aspose.com/words/python-net/aspose.words/document/append_document/) [ImportFormatMode](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/) و[ImportFormatOptions](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/) كمعلمات إدخال. يسمح لك [ImportFormatMode](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/) بالتحكم في كيفية دمج تنسيق المستند عند استيراد محتوى من مستند إلى آخر عن طريق تحديد أوضاع تنسيق مختلفة مثل [USE_DESTINATION_STYLES](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/#use_destination_styles) و[KEEP_SOURCE_FORMATTING](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/#keep_source_formatting) و[KEEP_DIFFERENT_STYLES](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/#keep_different_styles). يتيح لك [ImportFormatOptions](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/) تحديد خيارات استيراد مختلفة مثل [ignore_header_footer](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/ignore_header_footer/) و[ignore_text_boxes](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/ignore_text_boxes/) و[keep_source_numbering](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/keep_source_numbering/) و[merge_pasted_lists](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/merge_pasted_lists/) و[smart_style_behavior](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/smart_style_behavior/).

يتيح لك Aspose.Words ضبط تصور المستند الناتج عند إضافة مستندين معًا في عملية إدراج أو إلحاق باستخدام [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) و[PageSetup](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/). تحتوي الخاصية [page_setup](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/page_setup/) على جميع سمات القسم مثل [section_start](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/section_start/) و[restart_page_numbering](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/restart_page_numbering/) و[page_starting_number](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/page_starting_number/) و[orientation](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/orientation/) وغيرها. حالة الاستخدام الأكثر شيوعًا هي تعيين خاصية [section_start](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/section_start/) لتحديد ما إذا كان المحتوى المضاف سيظهر على نفس الصفحة أو سيتم تقسيمه إلى محتوى جديد.

{{% alert color="primary" %}}

لاحظ أن [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) و[PageSetup](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/) لا يتحكمان في كيفية إدراج/إلحاق مستندين معًا. إنها تسمح لك فقط بتغيير مظهر وثيقة النتيجة الخاصة بك.

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالي كيفية إلحاق مستند بآخر مع منع تقسيم المحتوى عبر صفحتين:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "different-page-setup.py" >}}
