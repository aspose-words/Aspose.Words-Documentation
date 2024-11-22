---
title: إدراج وإلحاق المستندات في C++
second_title: Aspose.Words ل C++
articleTitle: إدراج المستندات وإلحاقها
linktitle: إدراج المستندات وإلحاقها
description: "دمج المستندات في مستند واحد: أدخل أو ألحق مستندا في مستند جديد أو موجود باستخدام البحث والاستبدال أو حقل الدمج أو الإشارة المرجعية أو ببساطة في نهاية المستند."
type: docs
weight: 80
url: /ar/cpp/insert-and-append-documents/
timestamp: 2024-01-27-14-07-04
---

في بعض الأحيان يكون مطلوبا دمج عدة مستندات في مستند واحد. يمكنك القيام بذلك يدويا أو يمكنك استخدام Aspose.Words إدراج أو إلحاق الميزة.

تتيح لك عملية الإدراج إدراج محتوى المستندات التي تم إنشاؤها مسبقا في مستند جديد أو موجود.

في المقابل، تتيح لك ميزة الإلحاق إضافة مستند فقط في نهاية مستند آخر.

تشرح هذه المقالة كيفية إدراج مستند أو إلحاقه بمستند آخر بطرق مختلفة وتصف الخصائص الشائعة التي يمكنك تطبيقها أثناء إدراج المستندات أو إلحاقها.

## أدخل وثيقة

كما ذكر أعلاه، في Aspose.Words يتم تمثيل المستند كشجرة من العقد، وعملية إدراج مستند في آخر هي نسخ العقد من شجرة المستند الأولى إلى الثانية.

يمكنك إدراج المستندات في مجموعة متنوعة من المواقع بطرق مختلفة. على سبيل المثال، يمكنك إدراج مستند من خلال عملية استبدال أو حقل دمج أثناء عملية دمج أو عبر إشارة مرجعية.

يمكنك أيضا استخدام طريقة [InsertDocument](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertdocument/)، والتي تشبه إدراج مستند في Microsoft Word، لإدراج مستند كامل في موضع المؤشر الحالي دون أي استيراد سابق.

يوضح مثال التعليمات البرمجية التالية كيفية إدراج مستند باستخدام طريقة `InsertDocument`:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-with-builder.h" >}}

تصف الأقسام الفرعية التالية الخيارات التي يمكنك خلالها إدراج مستند في مستند آخر.

### أدخل مستندا أثناء عملية البحث والاستبدال {#insert-a-document-during-find-and-replace-operation}

يمكنك إدراج المستندات أثناء إجراء عمليات البحث والاستبدال. على سبيل المثال، يمكن أن يحتوي المستند على فقرات بالنص [INTRODUCTION] و [CONCLUSION]. لكن في المستند النهائي، تحتاج إلى استبدال تلك الفقرات بالمحتوى الذي تم الحصول عليه من مستند خارجي آخر. لتحقيق ذلك، سوف تحتاج إلى إنشاء معالج للحدث استبدال.

يوضح مثال التعليمات البرمجية التالية كيفية إنشاء معالج للحدث استبدال لاستخدامه لاحقا في عملية الإدراج:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-replace-handler.h" >}}

يوضح مثال الكود التالي كيفية إدراج محتوى مستند إلى آخر أثناء عملية البحث والاستبدال:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-replace.h" >}}

### أدخل مستندا أثناء عملية Mail Merge {#insert-a-document-during-mail-merge-operation}

يمكنك إدراج مستند في حقل دمج أثناء عملية mail merge. على سبيل المثال، يمكن أن يحتوي قالب Mail Merge على حقل دمج مثل [ملخص]. ولكن في المستند النهائي، تحتاج إلى إدراج محتوى تم الحصول عليه من مستند خارجي آخر في حقل الدمج هذا. لتحقيق ذلك، سوف تحتاج إلى إنشاء معالج لحدث الدمج.

يوضح مثال التعليمات البرمجية التالية كيفية إنشاء معالج لحدث الدمج لاستخدامه لاحقا في عملية الإدراج:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-mail-merge-handler.h" >}}

يوضح مثال التعليمات البرمجية التالية كيفية إدراج مستند في حقل الدمج باستخدام المعالج الذي تم إنشاؤه:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-mail-merge.h" >}}

### أدخل مستندا في إشارة مرجعية

يمكنك استيراد ملف نصي إلى مستند وإدراجه مباشرة بعد الإشارة المرجعية التي حددتها في المستند. للقيام بذلك، قم بإنشاء فقرة مرجعية حيث تريد إدراج المستند.

يوضح مثال الترميز التالي كيفية إدراج محتويات مستند إلى إشارة مرجعية في مستند آخر:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-bookmark.h" >}}

{{% alert color="primary" %}}

لاحظ أن الإشارة المرجعية يجب ألا تحتوي على عدة فقرات أو نص تريده أن يظهر في المستند النهائي الناتج.

{{% /alert %}}

## إلحاق مستند

قد يكون لديك حالة استخدام حيث تحتاج إلى تضمين صفحات إضافية من مستند إلى نهاية مستند موجود. للقيام بذلك، تحتاج فقط إلى استدعاء طريقة [AppendDocument](https://reference.aspose.com/words/cpp/aspose.words/document/appenddocument/) لإضافة مستند إلى نهاية مستند آخر.

{{% alert color="primary" %}}

لاحظ أن [AppendChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/appendchild/) هي طريقة مستوى العقدة داخل مستند. على سبيل المثال، يمكنك إنشاء فقرة وتعيين خصائص التنسيق ثم إلحاقها كطفل بالجسم باستخدام طريقة **AppendChild**.

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالية كيفية إلحاق مستند إلى نهاية مستند آخر:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "keep-source-formatting.h" >}}

## استيراد وإدراج العقد يدويا {#import-and-insert-nodes-manually}

Aspose.Words يسمح لك بإدراج وإلحاق المستندات تلقائيا دون أي متطلبات استيراد سابقة. ومع ذلك، إذا كنت بحاجة إلى إدراج أو إلحاق عقدة معينة من المستند، مثل قسم أو فقرة، فأنت بحاجة أولا إلى استيراد هذه العقدة يدويا.

عندما تحتاج إلى إدراج أو إلحاق قسم أو فقرة إلى أخرى، تحتاج أساسا إلى استيراد العقد من شجرة عقدة الوثيقة الأولى في الثانية باستخدام طريقة [ImportNode](https://reference.aspose.com/words/cpp/aspose.words/nodeimporter/importnode/). بعد استيراد العقد الخاصة بك، تحتاج إلى استخدام طريقة [InsertAfter](https://reference.aspose.com/words/cpp/aspose.words/compositenode/insertafter/)/[InsertBefore](https://reference.aspose.com/words/cpp/aspose.words/compositenode/insertbefore/) لإدراج عقدة جديدة بعد/قبل العقدة المرجعية. يتيح لك ذلك تخصيص عملية الإدراج عن طريق استيراد العقد من مستند وإدخالها في مواضع معينة.

يمكنك أيضا استخدام طريقة [AppendChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/appendchild/) لإضافة عقدة محددة جديدة إلى نهاية قائمة العقد الفرعية، على سبيل المثال، إذا كنت تريد إلحاق المحتوى على مستوى الفقرة بدلا من مستوى القسم.

يوضح مثال الكود التالي كيفية استيراد العقد يدويا وإدراجها بعد عقدة معينة باستخدام طريقة **InsertAfter**:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-as-nodes.h" >}}

{{% alert color="primary" %}}

يقوم الاستيراد بإنشاء عقدة جديدة هي نسخة من العقدة الأصلية ومناسبة للإدراج في المستند الوجهة.

{{% /alert %}}

يتم استيراد المحتوى إلى قسم المستند الوجهة حسب القسم، مما يعني أنه يتم الاحتفاظ بالإعدادات، مثل إعداد الصفحة والرؤوس أو التذييلات، أثناء الاستيراد. من المفيد أيضا ملاحظة أنه يمكنك تحديد إعدادات التنسيق عند إدراج مستند أو إلحاقه لتحديد كيفية ربط وثيقتين معا.

## الخصائص الشائعة لإدراج وإلحاق المستندات {#common-properties-for-insert-and-append-documents}

كلاهما [InsertDocument](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertdocument/) و [AppendDocument](https://apireference.codeporting.com/native/cs2cpp/namespace/system#a6b77ccd8c49df28c153be0462cdfdf49) تقبل الطرق [ImportFormatMode](https://reference.aspose.com/words/cpp/aspose.words/importformatmode/) و [ImportFormatOptions](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/) كمعلمات إدخال. ال **ImportFormatMode** يسمح لك بالتحكم في كيفية دمج تنسيق المستند عند استيراد محتوى من مستند إلى آخر عن طريق تحديد أوضاع تنسيق مختلفة مثل [UseDestinationStyles](https://reference.aspose.com/words/cpp/aspose.words/importformatmode/) و [KeepSourceFormatting](https://reference.aspose.com/words/cpp/aspose.words/importformatmode/) و [KeepDifferentStyles](https://reference.aspose.com/words/cpp/aspose.words/importformatmode/). ال **ImportFormatOptions** يسمح لك بتحديد خيارات استيراد مختلفة مثل [IgnoreHeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_ignoreheaderfooter/), [IgnoreTextBoxes](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_ignoretextboxes/), [KeepSourceNumbering](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_keepsourcenumbering/), [MergePastedLists](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_mergepastedlists/), و [SmartStyleBehavior](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_smartstylebehavior/).

Aspose.Words يسمح لك بضبط التصور للمستند الناتج عند إضافة وثيقتين معا في عملية إدراج أو إلحاق باستخدام خصائص [Section](https://reference.aspose.com/words/cpp/aspose.words/section/) و [PageSetup](https://reference.aspose.com/words/cpp/aspose.words/pagesetup). تحتوي الخاصية **PageSetup** على جميع سمات قسم مثل [SectionStart](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_sectionstart/), [RestartPageNumbering](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_restartpagenumbering/), [PageStartingNumber](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_pagestartingnumber/), [Orientation](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_orientation/), وغيرها. حالة الاستخدام الأكثر شيوعا هي تعيين خاصية **SectionStart** لتحديد ما إذا كان المحتوى المضاف سيظهر على نفس الصفحة أو ينقسم إلى صفحة جديدة.

{{% alert color="primary" %}}

لاحظ أن الخصائص **Section** و **PageSetup** لا تتحكم في كيفية إدراج/إلحاق مستندين معا. إنها تسمح لك فقط بتغيير مظهر مستند النتائج الخاص بك.

{{% /alert %}}

يوضح مثال الكود التالي كيفية إلحاق مستند بآخر مع الحفاظ على المحتوى من الانقسام عبر صفحتين:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "different-page-setup.h" >}}
