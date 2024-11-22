---
title: استخدام `DocumentBuilder` to Modify a Document
second_title: Aspose.Words for Java
articleTitle: استخدام `DocumentBuilder` to Modify a Document
linktitle: استخدام `DocumentBuilder` to Modify a Document
type: docs
description: "استخدام مبني الوثائق لتعديل الوثيقة بسهولة في Java."
weight: 20
url: /ar/java/using-documentbuilder-to-modify-a-document/
timestamp: 2024-10-21-11-17-44
---

## الكشف عن الشكل

### Font Formatting

الشكل البياني الحالي يمثله `Font` الجسم الذي أعاده `DocumentBuilder.Font` ملكية The `Font` الطبقة تحتوي على مجموعة واسعة من الخواص الفونتية Microsoft Word.

| ![font-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-1.png) |
|  :-  |
والمثال الرمزي التالي يبين كيفية وضع الشكل الخطي.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetFontFormatting-DocumentBuilderSetFontFormatting.java" >}}


### تركيب الخلايا

وتستخدم تركيب الخلايا أثناء بناء طاولة. ويمثله محام `CellFormat` الجسم الذي أعاده `DocumentBuilder.CellFormat` ملكية الخلايا تلخص مختلف خصائص الخلايا المنضدية مثل المستعارات أو التواؤم الرأسي.

| ![cell-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-2.png) |
|  :-  |
The following code example shows how to create a table that contains a single formatted cell.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetTableCellFormatting-DocumentBuilderSetTableCellFormatting.java" >}}

### Row Formatting

يُحدَّد شكل الصف الحالي من خلال `RowFormat` الجسم الذي يعيده `DocumentBuilder.RowFormat` ملكية الجسم يلخص المعلومات عن جميع صيغ الجدول

| ![row-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-3.png) |
|  :-  |
سيكونlow code وعلى سبيل المثال، يبيّن كيفية وضع جدول يحتوي على خلية واحدة ويطبق شكل الصف.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetTableRowFormatting-DocumentBuilderSetTableRowFormatting.java" >}}

### القائمة

Aspose.Words ويسمح بسهولة وضع القوائم عن طريق تطبيق صيغة القائمة. الوثائق تقدم `DocumentBuilder.ListFormat` الممتلكات التي تعود `ListFormat` هدف ولهذه الغاية عدة طرق لبدء ووضع حد للقائمة وزيادة/تخفيض الحوادث.

| ![list-fformatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-4.png) |
|  :-  |
هناك نوعان عامان من القوائم Microsoft Wordطلق ناري ومرقم

-للبدء بقائمة مُطلقة [ListFormat.applyBulletDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyBulletDefault).
-للبدأ بقائمة مرقمة [ListFormat.applyNumberDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyNumberDefault).

تضاف الرصاصة أو العدد والشكل إلى الفقرة الحالية وجميع الفقرات الأخرى المنشأة باستخدام **DocumentBuilder** حتى [ListFormat.removeNumbers](https://reference.aspose.com/words/java/com.aspose.words/listformat/#removeNumbers) يُدعى لإيقاف وضع قائمة مُطلقة.

وفي وثائق الكلمات، يمكن أن تتألف القوائم من ما يصل إلى تسعة مستويات. ويحدد شكل القائمة لكل مستوى ما يُستخدم من الرصاص أو الرقم، والثغرة اليسرى، والحيز بين الرصاصة والنص وما إلى ذلك.

- زيادة مستوى قائمة الفقرة الحالية بمستوى واحد، [ListFormat.listIndent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listIndent).
- خفض مستوى قائمة الفقرة الحالية بمستوى واحد، [ListFormat.listOutdent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listOutdent).

وتُغيّر الأساليب مستوى القائمة وتطبق خصائص الشكل في المستوى الجديد.

{{% alert color="primary" %}}

يمكنك أيضا استخدام [ListFormat.listLevelNumber](https://reference.aspose.com/words/java/com.aspose.words/listformat/#setListLevelNumber-int) ممتلكات للحصول على مستوى القائمة أو تحديده لهذه الفقرة. ويبلغ عدد مستويات القائمة صفر إلى 8.

{{% /alert %}}

ويبين المثال الرمزي التالي كيفية وضع قائمة متعددة المستويات.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetMultilevelListFormatting-DocumentBuilderSetMultilevelListFormatting.java" >}}

### تشكيل وقسم الصياغة

مجمّعة وممتلكات الأقسام `PageSetup` الجسم الذي يعيده `DocumentBuilder.PageSetup` ملكية ويشتمل الجسم على جميع صفات الصفحات المجهزة في قسم (الحافة الطفيفة، والهامش السفلي، والحجم الورقي، وما إلى ذلك) بوصفها خصائص.

| ![section-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-5.png) |
|  :-  |
ويبيّن المثال الرمزي التالي كيفية تحديد خصائص من قبيل حجم الصفحات وتوجيهها للقسم الحالي.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetPageSetupAndSectionFormatting-DocumentBuilderSetPageSetupAndSectionFormatting.java" >}}

### تطبيق نموذج

بعض الأشياء المشكله مثل أسلوب الدعم A single built-in or user-defined method is represented by a `Style` الجسم الذي يحتوي على خصائص النمط المناظرة مثل الاسم، وأسلوب القاعدة، ونسخة وصيغة الفقرة من الأسلوب، وهكذا.

(أ) **Style** الجسم ينص على [Style.getStyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/style/#getStyleIdentifier) الممتلكات التي تُعيد مُحدِّد للأسلوب المحلي المعتمد **Style.StyleIdentifier** قيمة العد المغزى هو أن اسماء الموضة في Microsoft Word تُحَوَّل لمختلف اللغات. وباستخدام جهاز تحديد هويّة، يمكنك إيجاد الأسلوب الصحيح بغض النظر عن لغة الوثيقة. قيم التعداد متطابقة مع Microsoft Word أساليب مبنية كالعادة، العنوان 1، العنوان 2 وما إلى ذلك تم تعيين جميع الأساليب المحددة للمستعملين **مُحدّد هوية. قيمة المستعملين**.

| ![apply-style-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-6.png) |
|  :-  |
ويبين المثال الرمزي التالي كيفية تطبيق أسلوب الفقرة.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyParagraphStyle.java" >}}

### الحدود والتقاسم

وتُمثل الحدود في مجلس الحدود. وهذه مجموعة من الأجسام الحدودية التي يتم الوصول إليها حسب الرقم القياسي أو حسب نوع الحدود. يُمثّل نوع الحدود `BorderType` العد وتنطبق بعض قيم التعداد على عدد من عناصر الوثيقة أو على عنصر واحد فقط. على سبيل المثال، `BorderType.Bottom` ينطبق على فقرة أو زنزانة طاولة في حين `BorderType.DiagonalDown` يحدد الحدود التشخيصية في خلية طاولة فقط

ولكل من مجموعة الحدود وكل حدود منفصلة خصائص مماثلة مثل اللون، وأسلوب الخط، واتباع خط، وبعد عن النص، والظل الاختياري. وهي ممثَّلة بممتلكات ذات الاسم. يمكنك تحقيق أنواع مختلفة من الحدود عن طريق الجمع بين قيم الملكية بالإضافة إلى ذلك، كلاهما **BorderCollection** و **Border** الأشياء تسمح لك بإعادة هذه القيم إلى التقصير عن طريق الاتصال [Border.clearFormatting](https://reference.aspose.com/words/java/com.aspose.words/border/#clearFormatting) طريقة ويلاحظ أنه عندما تعاد ملكية الحدود إلى القيم الافتراضية، فإن الحدود غير مرئية.

| ![set-borders-shading-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-7.png) |
|  :-  |
The [Shading](https://reference.aspose.com/words/java/com.aspose.words/shading/) ويتضمن الفصل سمات مظلة لعناصر الوثائق. يمكنك وضع النسيج المظلي المرغوب والألوان التي تُطبق على خلفية العنصر

النسيج المظل مع [النص](https://www.aspose.com/api/java/words/com.aspose.words/constants/TextureIndex) قيمة التعداد التي تسمح بتطبيق أنماط مختلفة على **Shading** هدف For example, to set a background color for a document element, use the [TextureIndex.TextureSolid](https://www.aspose.com/api/java/words/com.aspose.words/constants/TextureIndex) القيمة ووضع لون المظلة الأمامية حسب الاقتضاء

| ![borders-and-shading-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-8.png) |
|  :-  |
ويبين المثال الوارد أدناه كيفية تطبيق الحدود والظل على فقرة.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyBordersAndShadingToParagraph.java" >}}

### Snap to Grid

Aspose.Words توفير عقارين `ParagraphFormat.SnapToGrid` و `Font.SnapToGrid` للحصول على وضبط العقارات المفقودة للشبكة

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-SetSnapToGrid.java" >}}

### ننتقل إلى كورسور

### Detecting the Current Cursor Position

يمكنك الحصول على مكان معالج البناين في أي وقت The [DocumentBuilder.getCurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentNode) وتعيد الممتلكات العقد الذي يتم اختياره حاليا في هذا المبنى. العقد هو طفل مباشر للفقرة. أي عمليات تقوم بها `DocumentBuilder` يدرج قبل `DocumentBuilder.CurrentNode`. عندما تكون الفقرة الحالية فارغة أو يوضع الشعار قبل نهاية الفقرة مباشرة، `DocumentBuilder.CurrentNode` العودة لاغية

أيضا، يمكنك استخدام [DocumentBuilder.getCurrentParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentParagraph) الممتلكات، التي تحصل على الفقرة التي يجري اختيارها حاليا في هذا الصدد **DocumentBuilder**. سيكونlow code وعلى سبيل المثال، يبيّن كيفية الوصول إلى العقد الحالي في مبني الوثائق.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderCursorPosition-DocumentBuilderCursorPosition.java" >}}

### الانتقال إلى أي نود (براغرافات وأطفالها)

إذا كان لديك وثيقة العقد، وهذا هو فقرة أو طفل مباشر من فقرة، يمكنك أن تشير فضيحة البنّاء إلى هذا العقد. استخدام [DocumentBuilder.moveTo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveTo-com.aspose.words.Node) طريقة لفعل هذا
ويبيّن المثال الرمزي التالي كيفية نقل موقف الضمائر إلى عقد محدد.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToNode-DocumentBuilderMoveToNode.java" >}}

### الانتقال إلى الوثيقة

إذا كنت بحاجة إلى الانتقال إلى بداية الوثيقة، الاتصال [DocumentBuilder.moveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart). إذا كنت بحاجة إلى الانتقال إلى نهاية الوثيقة، الاتصال [DocumentBuilder.moveToDocumentEnd](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentEnd).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToDocumentStartEnd-DocumentBuilderMoveToDocumentStartEnd.java" >}}

### الانتقال إلى قسم

إذا كنت تعمل مع وثيقة تحتوي على أجزاء متعددة، يمكنك الانتقال إلى القسم المنشود باستخدام [DocumentBuilder.moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int). وتنتقل هذه الطريقة إلى بداية قسم محدد وتقبل الرقم القياسي للقسم المطلوب. وعندما يكون الرقم القياسي للفرع أكبر من الرقم القياسي أو يساوي صفرا، فإنه يحدد مؤشرا من بداية الوثيقة مع عدم كونه القسم الأول. وعندما يكون الرقم القياسي للقسم أقل من صفر، فإنه يحدد الرقم القياسي من نهاية الوثيقة مع - 1 باعتباره الجزء الأخير. سيكونlow code وعلى سبيل المثال، يبيّن كيفية نقل موقف الضمائر إلى القسم المحدد. يمكنك تحميل ملف النموذج من هذا المثال [هنا](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToSection-DocumentBuilderMoveToSection.java" >}}

### الانتقال إلى رئيس/مهر

عندما تحتاج إلى وضع بعض البيانات في رأس أو قدم، يجب أن تتحرك هناك أولا باستخدام [DocumentBuilder.moveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int). The method accepts a HeaderFooterType enumeration value that identifies the type of header or footer to where the cursor should be moved.

إذا كنت تريد أن تخلق الرأس والأقدام مختلفة للصفحة الأولى، عليك أن تضع [PageSetup.getDifferentFirstPageHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getDifferentFirstPageHeaderFooter) الممتلكات إلى **true**. إذا كنت تريد أن تخلق الرعاة والأقدام مختلفة للصفحات المتساوية والغريبة [PageSetup.getOddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOddAndEvenPagesHeaderFooter) إلى **true**.

إذا كنت بحاجة إلى العودة إلى القصة الرئيسية، استخدام[DocumentBuilder.moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int) للانتقال من الرأس أو القدم ويخلق المثال التالي رؤساء وأقدام في وثيقة تستخدم الوثيقة.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderHeadersAndFooters-DocumentBuilderHeaderAndFooters.java" >}}

### الانتقال إلى فقرة

الاستخدام[DocumentBuilder.moveToParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToParagraph-int-int) نقل الشعار إلى فقرة مرغوبة في الفرع الحالي. وينبغي أن تجتازوا بارامترتين لهذه الطريقة: الفقرة " إندكس " (مؤشر الفقرة للانتقال إلى) ورقم " إندكس " (مؤشر الطابع الوارد في الفقرة).

وتُجرى الملاحة داخل القصة الحالية للقسم الحالي. ذلك، إذا حرّكتَ الكاسرَ إلى الرئيسِ الرئيسيِ للقسمِ الأولِ، ثمّ الفقرةِ Index تُحدّدُ فهرسَ الفقرةِ داخل ذلك رئيسِ ذلك القسمِ.

وعندما تكون الفقرة " إندكس " أكبر من أو تساوي صفراً، فإنها تحدد مؤشراً من بداية الباب، مع كون الفقرة الأولى صفراً. وعندما تكون الفقرة " إندكس " أقل من صفر، فإنها تحدد رقما قياسيا من نهاية الفرع، مع - 1 باعتباره الفقرة الأخيرة. ولا يمكن حالياً تحديد الرقم القياسي للطابع إلا على أنه صفر للانتقال إلى بداية الفقرة أو - 1 للانتقال إلى نهاية الفقرة. ويبيّن المثال الرمزي التالي كيفية نقل موقف الضمائر إلى الفقرة المحددة. يمكنك تحميل ملف النموذج من هذا المثال [هنا](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToParagraph-DocumentBuilderMoveToParagraph.java" >}}

### الانتقال إلى خلية الجدول

الاستخدام [DocumentBuilder.moveToCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToCell-int-int-int-int) إذا كنت بحاجة لنقل الكاسر إلى خلية طاولة في القسم الحالي تقبل هذه الطريقة أربعة بارامترات:

-المائدة - فهرس الطاولة للانتقال
- فهرس الصف على الطاولة
- العمود - فهرس العمود في الجدول.
-الشخصية (إندكس) فهرس الشخصية داخل الزنزانة

وتجرى الملاحة داخل القصة الحالية للقسم الحالي.

وفيما يتعلق بارامترات الرقم القياسي، فإنه عندما يكون المؤشر أكبر من الرقم القياسي أو يساوي صفرا، يحدد الرقم القياسي من البداية مع كون صفر العنصر الأول. وعندما يكون الرقم القياسي أقل من صفر، يحدد الرقم القياسي من النهاية - 1 بوصفه العنصر الأخير.

Also, note that characterIndex currently can only specify 0 to move to the beginning of the cell or -1 to move to the end of the cell. The following code example shows how to move a cursor position to the specified table cell. يمكنك تحميل ملف النموذج من هذا المثال [هنا](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToTableCell-DocumentBuilderMoveToTableCell.java" >}}

### الانتقال إلى علامة الكتاب

وتُستخدم العلامات الكتابية في كثير من الأحيان لتحديد أماكن معينة في الوثيقة التي تُدرج فيها عناصر جديدة. للانتقال إلى علامة الكتاب، استخدام [DocumentBuilder.moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String). هذه الطريقة بها حمولة زائدة أبسط شخص لا يقبل شيء سوى اسم العلامة الكتابية المثال الرمزي التالي يُظهر كيف يُحرّكُ موقعاً كسوراً إلى علامة كتاب.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmark-DocumentBuilderMoveToBookmark.java" >}}

هذه الحمولة الزائدة تُنقل الشعار إلى موقع بعد بداية علامة الكتاب بالاسم المحدد تحميل إضافي آخر [DocumentBuilder.moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String-boolean-boolean) يُحرّكُ الشعار إلى a علامة كتاب بدقّة أكبر. وهي تقبل بارامترين إضافيين هما:

-هل (ستارت) يقرر ما إذا كان سينقل الستار إلى البداية أو إلى نهاية العلامة الكتابية
-هل يقرر (آفتر) ما إذا كان سينقل الـ (كلورس) إلى مكانه بعد أن تبدأ علامة الكتاب أو تنتهي، أو أن يحرك الـ (كاسور) ليكون قبل أن تبدأ علامة الكتاب أو تنتهي

المثال الرمزي التالي يُظهر كيف يُحرّكُ موقفاً مُسَاعِداً إلى بعد نهاية الكتاب

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmarkEnd-DocumentBuilderMoveToBookmarkEnd.java" >}}

ولا يحل نص جديد بهذه الطريقة محل النص الحالي للعلامة الكتابية. Note that some bookmarks in the document are assigned to form fields. والانتقال إلى هذه العلامة الكتابية وإدراج النص فيها يُدرج النص في شكل مدونة ميدانية. وعلى الرغم من أن هذا لن يبطل مجال الشكل، فإن النص المضاف لن يكون مرئيا لأنه يصبح جزءا من القانون الميداني.

### الانتقال إلى `Merge` الميدان

في بعض الأحيان قد تحتاج إلى أداء "معتاد" Mail Merge استخدام `DocumentBuilder` أو ملئ حقل الدمج بطريقة خاصة داخل Mail Merge معالج الحدث ذلك عندما [DocumentBuilder.moveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField-java.lang.String) قد يكون مفيداً الطريقة تقبل اسم الحقل المدمج ينتقل الستار إلى مكان ما بعد الحقل المدمج المحدد ويزيل الحقل المدمج ويوضح المثال الرمزي التالي كيفية نقل الضمائر إلى موقع يتجاوز مجال الدمج المحدد.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToMergeField-DocumentBuilderMoveToMergeField.java" >}}

## كيفية تجنب ما بين وحدات القياس

معظم ممتلكات الجسم المنصوص عليها في Aspose.Words API وهذا يمثل بعض القياسات (الرصاص/الطول، والهامش، والمسافات المختلفة) التي تقبل القيم في نقاط (بوصة واحدة تساوي 72 نقطة). أحياناً هذا ليس ملائماً لذا هناك `ConvertUtil` درجة توفر وظائف المساعدين للتحول بين مختلف وحدات القياس. ويسمح بتحويل بوصات إلى نقاط، ويشير إلى بوصات، وإلى بيكسلز إلى نقاط، ويشير إلى بيكسلز. وعندما تُحوَّل البيكسلزات إلى نقاط والعكس بالعكس، يمكن أن تُنفَّذ بـ 96 قراراً (في كل بوصة) أو بقرار صادر في الوثيقة المحددة.

**ConvertUtil** وهو مفيد جداً عند تحديد خصائص مختلفة للصفحات لأن الشطرنج مثلاً هي وحدات قياس أكثر اعتيادية من النقاط. ويبين المثال التالي كيفية وضع خصائص الصفحات في بوصات.

The following code example shows how to specify page properties inches.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ConvertBetweenMeasurementUnits-ConvertBetweenMeasurementUnits.java" >}}
