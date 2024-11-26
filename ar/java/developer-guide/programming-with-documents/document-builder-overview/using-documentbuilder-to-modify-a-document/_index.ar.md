---
title: استخدام DocumentBuilder لتعديل مستند
second_title: Aspose.Words ل Java
articleTitle: استخدام DocumentBuilder لتعديل مستند
linktitle: استخدام DocumentBuilder لتعديل مستند
type: docs
description: "استخدم منشئ المستندات لتعديل مستند بسهولة في Java."
weight: 20
url: /ar/java/using-documentbuilder-to-modify-a-document/
timestamp: 2024-10-21-11-17-44
---

## تحديد التنسيق

### تنسيق الخط

يتم تمثيل تنسيق الخط الحالي بواسطة `Font` كائن تم إرجاعه بواسطة `DocumentBuilder.Font` خاصية. تحتوي فئة `Font` على مجموعة متنوعة من خصائص الخط الممكنة في Microsoft Word.

| ![font-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-1.png) |
| :- |
يوضح مثال التعليمات البرمجية التالية كيفية تعيين تنسيق الخط.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetFontFormatting-DocumentBuilderSetFontFormatting.java" >}}


### تنسيق الخلية

يتم استخدام تنسيق الخلية أثناء بناء الجدول. يتم تمثيله بواسطة `CellFormat` كائن تم إرجاعه بواسطة `DocumentBuilder.CellFormat` خاصية. CellFormat بتغليف مختلف خصائص خلية الجدول مثل العرض أو المحاذاة الرأسية.

| ![cell-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-2.png) |
| :- |
يوضح مثال التعليمات البرمجية التالية كيفية إنشاء جدول يحتوي على خلية منسقة واحدة.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetTableCellFormatting-DocumentBuilderSetTableCellFormatting.java" >}}

### تنسيق الصف

يتم تحديد تنسيق الصف الحالي بواسطة كائن `RowFormat` يتم إرجاعه بواسطة خاصية `DocumentBuilder.RowFormat`. الكائن بتغليف معلومات حول كافة تنسيق صف الجدول.

| ![row-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-3.png) |
| :- |
يوضح مثال كنlow code كيفية إنشاء جدول يحتوي على خلية واحدة وتطبيق تنسيق الصف.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetTableRowFormatting-DocumentBuilderSetTableRowFormatting.java" >}}

### تنسيق القائمة

Aspose.Words يسمح بإنشاء القوائم بسهولة من خلال تطبيق تنسيق القائمة. DocumentBuilder يوفر خاصية `DocumentBuilder.ListFormat` التي ترجع كائن `ListFormat`. يحتوي هذا الكائن على عدة طرق لبدء وإنهاء قائمة وزيادة / تقليل المسافة البادئة.

| ![list-fformatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-4.png) |
| :- |
هناك نوعان عامان من القوائم في Microsoft Word: نقطية ومرقمة.

- لبدء قائمة نقطية، اتصل [ListFormat.applyBulletDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyBulletDefault).
- لبدء قائمة مرقمة، اتصل [ListFormat.applyNumberDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyNumberDefault).

تتم إضافة التعداد النقطي أو الرقم والتنسيق إلى الفقرة الحالية وجميع الفقرات الأخرى التي تم إنشاؤها باستخدام **DocumentBuilder** حتى [ListFormat.removeNumbers](https://reference.aspose.com/words/java/com.aspose.words/listformat/#removeNumbers) يتم استدعاؤه لإيقاف تنسيق القائمة النقطية.

في مستندات ورد، قد تتكون القوائم من تسعة مستويات. يحدد تنسيق القائمة لكل مستوى الرمز النقطي أو الرقم المستخدم، والمسافة البادئة اليسرى، والمسافة بين الرمز النقطي والنص وما إلى ذلك.

- لزيادة مستوى قائمة الفقرة الحالية بمستوى واحد، اتصل [ListFormat.listIndent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listIndent).
- لتقليل مستوى قائمة الفقرة الحالية بمستوى واحد، اتصل [ListFormat.listOutdent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listOutdent).

تقوم الطرق بتغيير مستوى القائمة وتطبيق خصائص التنسيق للمستوى الجديد.

{{% alert color="primary" %}}

يمكنك أيضا استخدام خاصية [ListFormat.listLevelNumber](https://reference.aspose.com/words/java/com.aspose.words/listformat/#setListLevelNumber-int) للحصول على مستوى القائمة للفقرة أو تعيينه. يتم ترقيم مستويات القائمة من 0 إلى 8.

{{% /alert %}}

يوضح مثال الكود التالي كيفية إنشاء قائمة متعددة المستويات.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetMultilevelListFormatting-DocumentBuilderSetMultilevelListFormatting.java" >}}

### إعداد الصفحة وتنسيق القسم

يتم تغليف خصائص إعداد الصفحة والقسم في الكائن `PageSetup` الذي يتم إرجاعه بواسطة الخاصية `DocumentBuilder.PageSetup`. يحتوي الكائن على جميع سمات إعداد الصفحة للقسم (الهامش الأيسر والهامش السفلي وحجم الورق وما إلى ذلك) كخصائص.

| ![section-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-5.png) |
| :- |
يوضح مثال الكود التالي كيفية تعيين خصائص مثل حجم الصفحة واتجاهها للقسم الحالي.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetPageSetupAndSectionFormatting-DocumentBuilderSetPageSetupAndSectionFormatting.java" >}}

### تطبيق نمط

بعض كائنات التنسيق مثل الخط أو ParagraphFormat أنماط الدعم. يتم تمثيل نمط واحد مدمج أو معرف من قبل المستخدم بواسطة كائن `Style` يحتوي على خصائص النمط المقابلة مثل الاسم والنمط الأساسي والخط وتنسيق الفقرة للنمط وما إلى ذلك.

علاوة على ذلك، يوفر كائن **Style** خاصية [Style.getStyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/style/#getStyleIdentifier) التي ترجع معرف نمط مستقل عن اللغة يمثله قيمة تعداد **Style.StyleIdentifier**. النقطة المهمة هي أن أسماء الأنماط المضمنة في Microsoft Word مترجمة للغات مختلفة. باستخدام معرف النمط، يمكنك العثور على النمط الصحيح بغض النظر عن لغة المستند. تتوافق قيم التعداد مع Microsoft Word الأنماط المضمنة مثل عادي، Heading 1، Heading 2 إلخ. يتم تعيين كافة الأنماط المعرفة من قبل المستخدم **StyleIdentifier.User value**.

| ![apply-style-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-6.png) |
| :- |
يوضح مثال التعليمات البرمجية التالية كيفية تطبيق نمط فقرة.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyParagraphStyle.java" >}}

### الحدود والتظليل

يتم تمثيل الحدود بواسطة BorderCollection. هذه مجموعة من كائنات الحدود التي يتم الوصول إليها بواسطة الفهرس أو حسب نوع الحدود. يتم تمثيل نوع الحدود بواسطة `BorderType` تعداد. بعض قيم التعداد قابلة للتطبيق على عدة أو عنصر مستند واحد فقط. على سبيل المثال، `BorderType.Bottom` ينطبق على فقرة أو خلية جدول بينما `BorderType.DiagonalDown` يحدد الحد القطري في خلية جدول فقط.

تحتوي كل من مجموعة الحدود وكل حد منفصل على سمات متشابهة مثل اللون ونمط الخط وعرض الخط والمسافة من النص والظل الاختياري. يتم تمثيلهم بخصائص تحمل نفس الاسم. يمكنك تحقيق أنواع حدود مختلفة من خلال الجمع بين قيم الخصائص. بالإضافة إلى ذلك، يسمح لك كل من **BorderCollection** و **Border** بإعادة تعيين هذه القيم إلى الوضع الافتراضي عن طريق استدعاء طريقة [Border.clearFormatting](https://reference.aspose.com/words/java/com.aspose.words/border/#clearFormatting). لاحظ أنه عند إعادة تعيين خصائص الحدود إلى القيم الافتراضية، يكون الحد غير مرئي.

| ![set-borders-shading-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-7.png) |
| :- |
تحتوي فئة [Shading](https://reference.aspose.com/words/java/com.aspose.words/shading/) على سمات تظليل لعناصر المستند. يمكنك تعيين نسيج التظليل المطلوب والألوان التي يتم تطبيقها على الخلفية ومقدمة العنصر.

يتم تعيين نسيج التظليل مع [TextureIndex](https://www.aspose.com/api/java/words/com.aspose.words/constants/TextureIndex) قيمة التعداد التي تسمح بتطبيق أنماط مختلفة على **Shading** كائن. على سبيل المثال، لتعيين لون خلفية لعنصر مستند، استخدم [TextureIndex.TextureSolid](https://www.aspose.com/api/java/words/com.aspose.words/constants/TextureIndex) قيمة وتعيين لون التظليل الأمامي حسب الاقتضاء.

| ![borders-and-shading-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-8.png) |
| :- |
يوضح المثال أدناه كيفية تطبيق الحدود والتظليل على فقرة.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyBordersAndShadingToParagraph.java" >}}

### التقط إلى الشبكة

Aspose.Words يوفر خاصيتين `ParagraphFormat.SnapToGrid` و `Font.SnapToGrid` للحصول على خاصية الفقرة وتعيينها إلى الشبكة.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-SetSnapToGrid.java" >}}

### تحريك المؤشر

### الكشف عن موضع المؤشر الحالي

يمكنك الحصول على مكان وضع مؤشر المنشئ حاليا في أي وقت. تقوم الخاصية [DocumentBuilder.getCurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentNode) بإرجاع العقدة المحددة حاليا في أداة البناء هذه. العقدة هي طفل مباشر من فقرة. سيتم إدراج أي عمليات إدراج تقوم بها باستخدام `DocumentBuilder` قبل `DocumentBuilder.CurrentNode`. عندما تكون الفقرة الحالية فارغة أو يتم وضع المؤشر قبل نهاية الفقرة مباشرة، `DocumentBuilder.CurrentNode` ترجع فارغة.

أيضا، يمكنك استخدام الخاصية [DocumentBuilder.getCurrentParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentParagraph)، والتي تحصل على الفقرة المحددة حاليا في هذا **DocumentBuilder**. يوضح مثال كنlow code كيفية الوصول إلى العقدة الحالية في منشئ المستندات.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderCursorPosition-DocumentBuilderCursorPosition.java" >}}

### الانتقال إلى أي عقدة (الفقرات وأطفالهم)

إذا كانت لديك عقدة كائن مستند، وهي فقرة أو تابعة مباشرة لفقرة، فيمكنك توجيه مؤشر المنشئ إلى هذه العقدة. استخدم طريقة [DocumentBuilder.moveTo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveTo-com.aspose.words.Node) لتنفيذ ذلك.
يوضح مثال التعليمات البرمجية التالية كيفية نقل موضع المؤشر إلى عقدة محددة.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToNode-DocumentBuilderMoveToNode.java" >}}

### الانتقال إلى المستند بداية / نهاية

إذا كنت بحاجة إلى الانتقال إلى بداية المستند، فاتصل [DocumentBuilder.moveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart). إذا كنت بحاجة إلى الانتقال إلى نهاية المستند، فاتصل [DocumentBuilder.moveToDocumentEnd](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentEnd).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToDocumentStartEnd-DocumentBuilderMoveToDocumentStartEnd.java" >}}

### الانتقال إلى قسم

إذا كنت تعمل مع مستند يحتوي على أقسام متعددة، فيمكنك الانتقال إلى القسم المطلوب باستخدام [DocumentBuilder.moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int). تنقل هذه الطريقة المؤشر إلى بداية قسم محدد وتقبل فهرس القسم المطلوب. عندما يكون فهرس القسم أكبر من أو يساوي 0، فإنه يحدد فهرسا من بداية المستند مع كون 0 هو القسم الأول. عندما يكون فهرس القسم أقل من 0، فإنه يحدد فهرسا من نهاية المستند مع -1 كونه القسم الأخير. يوضح مثال كنlow code كيفية نقل موضع المؤشر إلى القسم المحدد. يمكنك تنزيل ملف القالب لهذا المثال من [هنا](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToSection-DocumentBuilderMoveToSection.java" >}}

### الانتقال إلى رأس / تذييل الصفحة

عندما تحتاج إلى وضع بعض البيانات في رأس أو تذييل، يجب عليك الانتقال إلى هناك أولا باستخدام [DocumentBuilder.moveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int).تقبل الطريقة قيمة تعداد HeaderFooterType تحدد نوع الرأس أو التذييل إلى حيث يجب نقل المؤشر.

إذا كنت ترغب في إنشاء رؤوس وتذييلات مختلفة للصفحة الأولى، فستحتاج إلى تعيين الخاصية [PageSetup.getDifferentFirstPageHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getDifferentFirstPageHeaderFooter) إلى **true**. إذا كنت ترغب في إنشاء رؤوس وتذييلات مختلفة للصفحات الزوجية والفردية، فأنت بحاجة إلى تعيين [PageSetup.getOddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOddAndEvenPagesHeaderFooter) إلى **true**.

إذا كنت بحاجة إلى العودة إلى القصة الرئيسية، فاستخدم[DocumentBuilder.moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int) للخروج من الرأس أو التذييل. المثال أدناه يخلق الرؤوس والتذييلات في مستند باستخدام DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderHeadersAndFooters-DocumentBuilderHeaderAndFooters.java" >}}

### الانتقال إلى فقرة

استخدم[DocumentBuilder.moveToParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToParagraph-int-int) لتحريك المؤشر إلى الفقرة المطلوبة في القسم الحالي. يجب عليك تمرير معلمتين إلى هذه الطريقة: paragraphIndex (فهرس الفقرة للانتقال إليها) و characterIndex (فهرس الحرف داخل الفقرة).

يتم تنفيذ التنقل داخل القصة الحالية للقسم الحالي. بمعنى، إذا قمت بنقل المؤشر إلى الرأس الأساسي للقسم الأول، فإن paragraphIndex يحدد فهرس الفقرة داخل هذا الرأس من هذا القسم.

عندما يكون paragraphIndex أكبر من أو يساوي 0، فإنه يحدد فهرسا من بداية القسم بحيث يكون 0 هو الفقرة الأولى. عندما يكون paragraphIndex أقل من 0، فإنه يحدد فهرسا من نهاية القسم مع -1 هو الفقرة الأخيرة. لا يمكن حاليا تحديد فهرس الأحرف إلا على أنه 0 للانتقال إلى بداية الفقرة أو -1 للانتقال إلى نهاية الفقرة. يوضح مثال التعليمات البرمجية التالية كيفية نقل موضع المؤشر إلى الفقرة المحددة. يمكنك تنزيل ملف القالب لهذا المثال من [هنا](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToParagraph-DocumentBuilderMoveToParagraph.java" >}}

### الانتقال إلى خلية الجدول

استخدم [DocumentBuilder.moveToCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToCell-int-int-int-int) إذا كنت بحاجة إلى تحريك المؤشر إلى خلية جدول في القسم الحالي. تقبل هذه الطريقة أربع معلمات:

- tableIndex - فهرس الجدول للانتقال إلى.
- rowIndex - فهرس الصف في الجدول.
- columnIndex - فهرس العمود في الجدول.
- characterIndex - فهرس الحرف داخل الخلية.

يتم تنفيذ التنقل داخل القصة الحالية للقسم الحالي.

بالنسبة لمعلمات الفهرس، عندما يكون الفهرس أكبر من أو يساوي 0، فإنه يحدد فهرسا من البداية مع كون 0 هو العنصر الأول. عندما يكون الفهرس أقل من 0، فإنه يحدد فهرسا من النهاية مع -1 كونه العنصر الأخير.

لاحظ أيضا أن characterIndex حاليا يمكن تحديد 0 فقط للانتقال إلى بداية الخلية أو -1 للانتقال إلى نهاية الخلية. يوضح مثال الكود التالي كيفية نقل موضع المؤشر إلى خلية الجدول المحددة. يمكنك تنزيل ملف القالب لهذا المثال من [هنا](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToTableCell-DocumentBuilderMoveToTableCell.java" >}}

### الانتقال إلى إشارة مرجعية

تستخدم الإشارات المرجعية بشكل متكرر لتمييز أماكن معينة في المستند حيث سيتم إدراج عناصر جديدة. للانتقال إلى إشارة مرجعية، استخدم [DocumentBuilder.moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String). هذه الطريقة لها حمولتان زائدتان. أبسط واحد لا يقبل سوى اسم الإشارة المرجعية حيث سيتم نقل المؤشر. يوضح مثال الكود التالي كيفية نقل موضع المؤشر إلى إشارة مرجعية.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmark-DocumentBuilderMoveToBookmark.java" >}}

يقوم هذا التحميل الزائد بتحريك المؤشر إلى موضع بعد بدء الإشارة المرجعية بالاسم المحدد مباشرة. تحميل زائد آخر [DocumentBuilder.moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String-boolean-boolean) يحرك المؤشر إلى إشارة مرجعية بدقة أكبر. يقبل معلمتين منطقيتين إضافيتين:

- isStart يحدد ما إذا كان سيتم تحريك المؤشر إلى بداية الإشارة المرجعية أو نهايتها.
- isAfter يحدد ما إذا كان لتحريك المؤشر ليكون بعد بداية المرجعية أو نهاية الموقف، أو لتحريك المؤشر ليكون قبل بداية المرجعية أو نهاية الموقف.

يوضح مثال الكود التالي كيفية نقل موضع المؤشر إلى ما بعد نهاية الإشارة المرجعية مباشرة.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmarkEnd-DocumentBuilderMoveToBookmarkEnd.java" >}}

لا يحل إدراج نص جديد بهذه الطريقة محل النص الحالي للإشارة المرجعية. لاحظ أنه يتم تعيين بعض الإشارات المرجعية في المستند إلى حقول النموذج. الانتقال إلى مثل هذه الإشارة المرجعية وإدراج النص هناك إدراج النص في رمز حقل النموذج. على الرغم من أن هذا لن يبطل حقل النموذج، إلا أن النص المدرج لن يكون مرئيا لأنه يصبح جزءا من رمز الحقل.

### الانتقال إلى حقل `Merge`

في بعض الأحيان قد تحتاج إلى إجراء "يدوي" Mail Merge باستخدام `DocumentBuilder` أو ملء حقل دمج بطريقة خاصة داخل معالج أحداث Mail Merge. هذا هو الوقت [DocumentBuilder.moveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField-java.lang.String) يمكن أن تكون مفيدة. تقبل الطريقة اسم حقل الدمج. يقوم بتحريك المؤشر إلى موضع يتجاوز حقل الدمج المحدد ويزيل حقل الدمج. يوضح مثال الكود التالي كيفية تحريك المؤشر إلى موضع يتجاوز حقل الدمج المحدد.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToMergeField-DocumentBuilderMoveToMergeField.java" >}}

## كيفية التحويل بين وحدات القياس

معظم خصائص الكائن المقدمة في Aspose.Words API التي تمثل بعض القياسات (العرض/الارتفاع والهوامش والمسافات المختلفة) تقبل القيم بالنقاط (1 بوصة تساوي 72 نقطة). في بعض الأحيان هذا ليس مناسبا لذلك هناك فئة `ConvertUtil` التي توفر وظائف المساعد لتحويل بين وحدات القياس المختلفة. يسمح بتحويل البوصات إلى نقاط، والنقاط إلى البوصات، والبكسل إلى النقاط، والنقاط إلى البكسل. عندما يتم تحويل وحدات البكسل إلى نقاط والعكس صحيح، يمكن إجراؤها بدقة 96 نقطة في البوصة (نقطة في البوصة) أو بدقة نقطة في البوصة المحددة.

**ConvertUtil**

يوضح مثال التعليمات البرمجية التالية كيفية تحديد خصائص الصفحة بالبوصة.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ConvertBetweenMeasurementUnits-ConvertBetweenMeasurementUnits.java" >}}
