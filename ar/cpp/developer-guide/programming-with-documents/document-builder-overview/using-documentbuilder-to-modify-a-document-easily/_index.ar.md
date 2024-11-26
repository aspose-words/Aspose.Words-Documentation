---
title: استخدام DocumentBuilder لتعديل مستند بسهولة
second_title: Aspose.Words ل C++
articleTitle: استخدام DocumentBuilder لتعديل مستند بسهولة
linktitle: استخدام DocumentBuilder لتعديل مستند بسهولة
type: docs
description: "استخدم منشئ المستندات لتعديل مستند بسهولة في C++."
weight: 190
url: /ar/cpp/using-documentbuilder-to-modify-a-document-easily/
timestamp: 2024-01-27-14-07-04
---

## تحديد التنسيق

### تنسيق الخط

يتم تمثيل تنسيق الخط الحالي بواسطة `Font` كائن تم إرجاعه بواسطة `DocumentBuilder.Font` خاصية. تحتوي فئة `Font` على مجموعة متنوعة من خصائص الخط الممكنة في Microsoft Word. يوضح المثال أدناه كيفية تعيين تنسيق الخط.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetFontFormatting.cpp" >}}

### تنسيق الفقرة

يتم تمثيل تنسيق الفقرة الحالي بواسطة كائن `ParagraphFormat` يتم إرجاعه بواسطة خاصية `DocumentBuilder.ParagraphFormat`. هذا الكائن بتغليف مختلف خصائص تنسيق الفقرة المتاحة في Microsoft Word. يمكنك بسهولة إعادة تعيين تنسيق الفقرة إلى الافتراضي إلى النمط العادي، محاذاة اليسار، لا المسافة البادئة، لا تباعد، لا حدود ولا تظليل عن طريق الاتصال `ParagraphFormat.ClearFormatting`. يوضح المثال أدناه كيفية تعيين تنسيق الفقرة.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetParagraphFormatting.cpp" >}}

### العمل مع الطباعة الآسيوية

#### ضبط المسافة تلقائيا بين النص الآسيوي واللاتيني والأرقام

إذا كنت تقوم بتصميم قالب مع كل من نص شرق آسيا واللاتينية، وتريد تحسين مظهر قالب النموذج عن طريق التحكم في المسافات بين كلا النوعين من النص، يمكنك تكوين قالب النموذج الخاص بك لضبط المسافات بين هذين النوعين من النص تلقائيا. يمكنك استخدام AddSpaceBetweenFarEastAndAlpha و AddSpaceBetweenFarEastAndDigit خصائص ParagraphFormat فئة لتحقيق ذلك.

يوضح مثال الكود التالي كيفية استخدام خصائص `ParagraphFormat.AddSpaceBetweenFarEastAndAlpha` و `ParagraphFormat.AddSpaceBetweenFarEastAndDigit`.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cpp" >}}

#### تغيير تباعد الفقرات الآسيوية والمسافات البادئة

يوضح مثال التعليمات البرمجية التالية كيفية تغيير تباعد الفقرات الآسيوية والمسافات البادئة.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cpp" >}}

#### تعيين خيارات فاصل الأسطر

علامة التبويب الطباعة الآسيوية من `Paragraph` الحوار خصائص في MS كلمة لديها مجموعة فاصل الأسطر. يمكن تعيين خيارات هذه المجموعة باستخدام FarEastLineBreakControl, WordWrap, HangingPunctuation خصائص ParagraphFormat فئة. كنlow code يوضح المثال كيفية استخدام هذه الخصائص.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetAsianTypographyLinebreakGroupProp.cpp" >}}

### تنسيق الخلية

يتم استخدام تنسيق الخلية أثناء بناء جدول. يتم تمثيله بواسطة `CellFormat` كائن تم إرجاعه بواسطة `DocumentBuilder.CellFormat` خاصية. CellFormat بتغليف مختلف خصائص خلية الجدول مثل العرض أو المحاذاة الرأسية. يوضح المثال أدناه كيفية إنشاء جدول يحتوي على خلية منسقة واحدة.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetTableCellFormatting.cpp" >}}

### تنسيق الصف

يتم تحديد تنسيق الصف الحالي بواسطة كائن `RowFormat` يتم إرجاعه بواسطة خاصية `DocumentBuilder.RowFormat`. الكائن بتغليف معلومات حول كافة تنسيق صف الجدول. يوضح المثال أدناه كيفية إنشاء جدول يحتوي على خلية واحدة وتطبيق تنسيق الصف.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetTableRowFormatting.cpp" >}}

### تنسيق القائمة

Aspose.Words يسمح بإنشاء القوائم بسهولة من خلال تطبيق تنسيق القائمة. DocumentBuilder يوفر خاصية `DocumentBuilder.ListFormat` التي ترجع كائن `ListFormat`. يحتوي هذا الكائن على عدة طرق لبدء وإنهاء قائمة وزيادة / تقليل المسافة البادئة. هناك نوعان عامان من القوائم في Microsoft Word: نقطية ومرقمة.

- لبدء قائمة نقطية، اتصل `ListFormat.ApplyBulletDefault`.
- لبدء قائمة مرقمة، اتصل `ListFormat.ApplyNumberDefault`.

تتم إضافة التعداد النقطي أو الرقم والتنسيق إلى الفقرة الحالية وجميع الفقرات الأخرى التي تم إنشاؤها باستخدام **DocumentBuilder** حتى `ListFormat.RemoveNumbers` يتم استدعاؤه لإيقاف تنسيق القائمة النقطية. في مستندات ورد، قد تتكون القوائم من تسعة مستويات. يحدد تنسيق القائمة لكل مستوى الرمز النقطي أو الرقم المستخدم، والمسافة البادئة اليسرى، والمسافة بين الرمز النقطي والنص وما إلى ذلك.

- لزيادة مستوى قائمة الفقرة الحالية بمستوى واحد، اتصل `ListFormat.ListIndent`.
- لتقليل مستوى قائمة الفقرة الحالية بمستوى واحد، اتصل `ListFormat.ListOutdent`.

تقوم الطرق بتغيير مستوى القائمة وتطبيق خصائص التنسيق للمستوى الجديد.

{{% alert color="primary" %}}

يمكنك أيضا استخدام خاصية `ListFormat.ListLevelNumber` للحصول على مستوى القائمة للفقرة أو تعيينه. مستويات القائمة مرقمة 0 إلى 8.

{{% /alert %}}

يوضح المثال أدناه كيفية إنشاء قائمة متعددة المستويات.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetMultilevelListFormatting.cpp" >}}

### إعداد الصفحة وتنسيق القسم

يتم تغليف خصائص إعداد الصفحة والقسم في الكائن `PageSetup` الذي يتم إرجاعه بواسطة الخاصية `DocumentBuilder.PageSetup`. يحتوي الكائن على جميع سمات إعداد الصفحة للقسم (الهامش الأيسر والهامش السفلي وحجم الورق وما إلى ذلك) كخصائص. يوضح المثال أدناه كيفية تعيين خصائص مثل حجم الصفحة واتجاهها للقسم الحالي.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetPageSetupAndSectionFormatting.cpp" >}}

### تطبيق نمط

بعض كائنات التنسيق مثل الخط أو ParagraphFormat أنماط الدعم. يتم تمثيل نمط واحد مدمج أو معرف من قبل المستخدم بواسطة كائن `Style` يحتوي على خصائص النمط المقابلة مثل الاسم والنمط الأساسي والخط وتنسيق الفقرة للنمط وما إلى ذلك.

علاوة على ذلك، يوفر كائن **Style** خاصية `Style.StyleIdentifier` التي ترجع معرف نمط مستقل عن اللغة يمثله قيمة تعداد **Style.StyleIdentifier**. النقطة المهمة هي أن أسماء الأنماط المضمنة في Microsoft Word مترجمة للغات مختلفة. باستخدام معرف النمط، يمكنك العثور على النمط الصحيح بغض النظر عن لغة المستند. تتوافق قيم التعداد مع Microsoft Word الأنماط المضمنة مثل عادي، العنوان 1، العنوان 2 إلخ. يتم تعيين كافة الأنماط المعرفة من قبل المستخدم **StyleIdentifier.User value**. يوضح المثال أدناه كيفية تطبيق نمط الفقرة.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyParagraphStyle.cpp" >}}

### الحدود والتظليل

يتم تمثيل الحدود بواسطة BorderCollection. هذه مجموعة من كائنات الحدود التي يتم الوصول إليها بواسطة الفهرس أو حسب نوع الحدود. يتم تمثيل نوع الحدود بواسطة `BorderType` تعداد. بعض قيم التعداد قابلة للتطبيق على عدة أو عنصر مستند واحد فقط. على سبيل المثال، `BorderType.Bottom` ينطبق على فقرة أو خلية جدول بينما `BorderType.DiagonalDown` يحدد الحد القطري في خلية جدول فقط.

تحتوي كل من مجموعة الحدود وكل حد منفصل على سمات متشابهة مثل اللون ونمط الخط وعرض الخط والمسافة من النص والظل الاختياري. يتم تمثيلهم بخصائص تحمل نفس الاسم. يمكنك تحقيق أنواع مختلفة من الحدود من خلال الجمع بين قيم الخصائص. بالإضافة إلى ذلك، يسمح لك كل من **BorderCollection** و **Border** بإعادة تعيين هذه القيم إلى الوضع الافتراضي عن طريق استدعاء طريقة `Border.ClearFormatting`. لاحظ أنه عند إعادة تعيين خصائص الحدود إلى القيم الافتراضية، يكون الحد غير مرئي. تحتوي فئة `Shading` على سمات تظليل لعناصر المستند. يمكنك تعيين نسيج التظليل المطلوب والألوان التي يتم تطبيقها على الخلفية ومقدمة العنصر.

يتم تعيين نسيج التظليل بقيمة تعداد `TextureIndex` تسمح بتطبيق أنماط مختلفة على الكائن **Shading**. على سبيل المثال، لتعيين لون خلفية لعنصر مستند، استخدم القيمة `TextureIndex.TextureSolid` وقم بتعيين لون تظليل المقدمة حسب الاقتضاء. يوضح المثال أدناه كيفية تطبيق الحدود والتظليل على فقرة.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyBordersAndShadingToParagraph.cpp" >}}

### التقط إلى الشبكة

Aspose.Words يوفر خاصيتين `ParagraphFormat.SnapToGrid` و `Font.SnapToGrid` للحصول على خاصية الفقرة وتعيينها إلى الشبكة.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetSnapToGrid.cpp" >}}

## تحريك المؤشر

### الكشف عن موضع المؤشر الحالي

يمكنك الحصول على مكان وضع مؤشر المنشئ حاليا في أي وقت. تقوم الخاصية `DocumentBuilder.CurrentNode` بإرجاع العقدة المحددة حاليا في أداة البناء هذه. العقدة هي طفل مباشر من فقرة. سيتم إدراج أي عمليات إدراج تقوم بها باستخدام `DocumentBuilder` قبل `DocumentBuilder.CurrentNode`. عندما تكون الفقرة الحالية فارغة أو يتم وضع المؤشر قبل نهاية الفقرة مباشرة، `DocumentBuilder.CurrentNode` ترجع فارغة.

أيضا، يمكنك استخدام الخاصية `DocumentBuilder.CurrentParagraph`، والتي تحصل على الفقرة المحددة حاليا في هذا **DocumentBuilder**. يوضح المثال أدناه كيفية الوصول إلى العقدة الحالية في منشئ المستندات. يمكنك تحميل ملف قالب من هذا المثال من هنا.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderCursorPosition.cpp" >}}

### الانتقال إلى أي عقدة (الفقرات وأطفالهم)

إذا كانت لديك عقدة كائن مستند، وهي فقرة أو تابعة مباشرة لفقرة، فيمكنك توجيه مؤشر المنشئ إلى هذه العقدة. استخدم طريقة `DocumentBuilder.MoveTo` لتنفيذ ذلك. يوضح المثال أدناه كيفية نقل موضع المؤشر إلى عقدة محددة. يمكنك تحميل ملف قالب من هذا المثال من هنا.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToNode.cpp" >}}

### الانتقال إلى المستند بداية / نهاية

إذا كنت بحاجة إلى الانتقال إلى بداية المستند، فاتصل `DocumentBuilder.MoveToDocumentStart`. إذا كنت بحاجة إلى الانتقال إلى نهاية المستند، فاتصل `DocumentBuilder.MoveToDocumentEnd`. يوضح المثال أدناه كيفية نقل موضع المؤشر إلى بداية المستند أو نهايته. يمكنك تحميل ملف قالب من هذا المثال من هنا.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToDocumentStartEnd.cpp" >}}

### الانتقال إلى قسم

إذا كنت تعمل مع مستند يحتوي على أقسام متعددة، فيمكنك الانتقال إلى القسم المطلوب باستخدام `DocumentBuilder.MoveToSection`. تنقل هذه الطريقة المؤشر إلى بداية قسم محدد وتقبل فهرس القسم المطلوب. عندما يكون فهرس القسم أكبر من أو يساوي 0، فإنه يحدد فهرسا من بداية المستند بحيث يكون 0 هو القسم الأول. عندما يكون فهرس القسم أقل من 0، فإنه يحدد فهرسا من نهاية المستند مع -1 كونه القسم الأخير. يوضح المثال أدناه كيفية نقل موضع المؤشر إلى القسم المحدد. يمكنك تحميل ملف قالب من هذا المثال من هنا.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToSection.cpp" >}}

### الانتقال إلى رأس / تذييل الصفحة

عندما تحتاج إلى وضع بعض البيانات في رأس أو تذييل، يجب عليك الانتقال إلى هناك أولا باستخدام `DocumentBuilder.MoveToHeaderFooter`. تقبل الطريقة قيمة تعداد HeaderFooterType تحدد نوع الرأس أو التذييل إلى حيث يجب نقل المؤشر. إذا كنت ترغب في إنشاء رؤوس وتذييلات مختلفة للصفحة الأولى، فستحتاج إلى تعيين الخاصية `PageSetup.DifferentFirstPageHeaderFooter` إلى **true**. إذا كنت ترغب في إنشاء رؤوس وتذييلات مختلفة للصفحات الزوجية والفردية، فأنت بحاجة إلى تعيين `PageSetup.OddAndEvenPagesHeaderFooter` إلى **true**.

إذا كنت بحاجة إلى العودة إلى القصة الرئيسية، فاستخدم **DocumentBuilder.MoveToSection** للخروج من الرأس أو التذييل. المثال أدناه يخلق الرؤوس والتذييلات في مستند باستخدام DocumentBuilder.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderHeadersAndFooters.cpp" >}}

### الانتقال إلى فقرة

استخدم `DocumentBuilder.MoveToParagraph` لتحريك المؤشر إلى الفقرة المطلوبة في القسم الحالي. يجب عليك تمرير معلمتين إلى هذه الطريقة: paragraphIndex (فهرس الفقرة للانتقال إليها) و characterIndex (فهرس الحرف داخل الفقرة).

يتم تنفيذ التنقل داخل القصة الحالية للقسم الحالي. بمعنى، إذا قمت بنقل المؤشر إلى الرأس الأساسي للقسم الأول، فإن paragraphIndex يحدد فهرس الفقرة داخل هذا الرأس من هذا القسم.

عندما يكون paragraphIndex أكبر من أو يساوي 0، فإنه يحدد فهرسا من بداية القسم بحيث يكون 0 هو الفقرة الأولى. عندما يكون paragraphIndex أقل من 0، فإنه يحدد فهرسا من نهاية القسم بحيث يكون -1 هو الفقرة الأخيرة.

لا يمكن حاليا تحديد فهرس الأحرف إلا على أنه 0 للانتقال إلى بداية الفقرة أو -1 للانتقال إلى نهاية الفقرة. يوضح المثال أدناه كيفية نقل موضع المؤشر إلى الفقرة المحددة. يمكنك تحميل ملف قالب من هذا المثال من هنا.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToParagraph.cpp" >}}

### الانتقال إلى خلية الجدول

استخدم `DocumentBuilder.MoveToCell` إذا كنت بحاجة إلى تحريك المؤشر إلى خلية جدول في القسم الحالي. تقبل هذه الطريقة أربع معلمات:

- tableIndex - فهرس الجدول للانتقال إلى.
- rowIndex - فهرس الصف في الجدول.
- columnIndex - فهرس العمود في الجدول.
- characterIndex - فهرس الحرف داخل الخلية.

يتم تنفيذ التنقل داخل القصة الحالية للقسم الحالي. بالنسبة لمعلمات الفهرس، عندما يكون الفهرس أكبر من أو يساوي 0، فإنه يحدد فهرسا من البداية بحيث يكون 0 هو العنصر الأول. عندما يكون الفهرس أقل من 0، فإنه يحدد فهرسا من النهاية مع -1 كونه العنصر الأخير.

أيضا، لاحظ أن characterIndex حاليا يمكن تحديد فقط 0 للانتقال إلى بداية الخلية أو -1 للانتقال إلى نهاية الخلية. يوضح المثال أدناه كيفية نقل موضع المؤشر إلى خلية الجدول المحددة. يمكنك تحميل ملف قالب من هذا المثال من هنا.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToTableCell.cpp" >}}

### الانتقال إلى إشارة مرجعية

تستخدم الإشارات المرجعية بشكل متكرر لتمييز أماكن معينة في المستند حيث سيتم إدراج عناصر جديدة. للانتقال إلى إشارة مرجعية، استخدم `DocumentBuilder.MoveToBookmark`. هذه الطريقة لها حمولتان زائدتان. أبسط واحد لا يقبل سوى اسم الإشارة المرجعية حيث سيتم نقل المؤشر. يوضح المثال أدناه كيفية نقل موضع المؤشر إلى إشارة مرجعية. يمكنك تحميل ملف قالب من هذا المثال من هنا.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmark.cpp" >}}

يقوم هذا التحميل الزائد بتحريك المؤشر إلى موضع بعد بدء الإشارة المرجعية بالاسم المحدد مباشرة. تحميل زائد آخر `DocumentBuilder.MoveToBookmark` يحرك المؤشر إلى إشارة مرجعية بدقة أكبر. يقبل معلمتين منطقيتين إضافيتين:

- isStart يحدد ما إذا كان سيتم تحريك المؤشر إلى بداية الإشارة المرجعية أو نهايتها.
- isAfter يحدد ما إذا كان لتحريك المؤشر ليكون بعد بداية المرجعية أو نهاية الموقف، أو لتحريك المؤشر ليكون قبل بداية المرجعية أو نهاية الموقف.

يوضح المثال أدناه كيفية تحريك موضع المؤشر إلى ما بعد نهاية الإشارة المرجعية مباشرة.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmarkEnd.cpp" >}}

المقارنة لكلتا الطريقتين ليست حساسة لحالة الأحرف.

لا يحل إدراج نص جديد بهذه الطريقة محل النص الحالي للإشارة المرجعية. لاحظ أنه يتم تعيين بعض الإشارات المرجعية في المستند إلى حقول النموذج. الانتقال إلى مثل هذه الإشارة المرجعية وإدراج النص هناك إدراج النص في رمز حقل النموذج. على الرغم من أن هذا لن يبطل حقل النموذج، إلا أن النص المدرج لن يكون مرئيا لأنه يصبح جزءا من رمز الحقل.

## كيفية التحويل بين وحدات القياس

معظم خصائص الكائن المقدمة في Aspose.Words API التي تمثل بعض القياس (العرض/الارتفاع والهوامش والمسافات المختلفة) تقبل القيم بالنقاط (1 بوصة تساوي 72 نقطة). في بعض الأحيان هذا ليس مناسبا لذلك هناك فئة `ConvertUtil` التي توفر وظائف المساعد لتحويل بين وحدات القياس المختلفة. يسمح بتحويل البوصات إلى نقاط، والنقاط إلى البوصات، والبكسل إلى النقاط، والنقاط إلى البكسل. عندما يتم تحويل وحدات البكسل إلى نقاط والعكس صحيح، يمكن إجراؤها بدقة 96 نقطة في البوصة (نقطة في البوصة) أو بدقة نقطة في البوصة المحددة.
**ConvertUtil**

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-ConvertUtil-UtilityClasses-ConvertBetweenMeasurementUnits.cpp" >}}
