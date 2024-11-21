---
title: بناء الوثائق لمحة عامة Java
second_title: Aspose.Words for Java
articleTitle: استعراض عام لبناء الوثائق
linktitle: استعراض عام لبناء الوثائق
type: docs
description: "وتسمح الوثيقة لكم ببناء وثائق دينامية من الصفر أو إضافة عناصر جديدة إلى العناصر القائمة. تُوفِّر الوثيقة طرائق لإدراج النص، وصناديق التفتيش، والجداول، والصور، وعناصر المحتوى الأخرى في النص Java."
weight: 30
url: /ar/java/document-builder-overview/
timestamp: 2024-01-27-14-07-04
---

[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) هو الطبقة القوية التي ترتبط مع [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) ويمكّنك من بناء وثائق دينامية من الصفر أو إضافة عناصر جديدة إلى واحدة قائمة.

**DocumentBuilder** (ب) توفر أساليب لإدراج النص، وصناديق التفتيش، والأشياء الأولية، والفقرات، والقوائم، والجداول، والصور، وعناصر المحتوى الأخرى. إنه يسمح لك بتحديد صور أو فقرات أو شكل أجزاء، والقيام بعمليات أخرى.

## بناء الوثائق أو Aspose.Words DOM

**DocumentBuilder** تكمل الفصول والأساليب المتاحة في Aspose.Words Document Object Model )أ(DOM() تبسيط مهام بناء الوثائق الأكثر شيوعا. هذا هو، يمكنك خلق وتعديل محتوى الوثائق من خلال Aspose.Words DOMالذي يتطلب فهماً جيداً لهيكل الأشجار، وإستعمال "الوثيقة" The `DocumentBuilder` هو "مسلسل" للمجمع **Document** الهيكل الذي يُمكِنُك أَنْ تُدخلَ بسرعة وسهولة المحتوىَ والشكلَ.

العمليات التي يمكن الاضطلاع بها **DocumentBuilder** ويمكن أيضاً استخدام فصول Aspose.Words DOM مباشرة غير أنه باستخدام Aspose.Words DOM عادة ما تتطلب الطبقات أكثر من مجرد استخدام **DocumentBuilder**.

## الوثيقة الملاحة

تستند الملاحة المستندية إلى مفهوم الشعار الافتراضي، الذي يمكن أن تنتقل معه إلى موقع آخر في الوثيقة باستخدام مختلف **DocumentBuilder.MoveToXXX** أساليب من قبيل [MoveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart) و [MoveToField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToField-com.aspose.words.Field-boolean). ويشير هذا الشعار الافتراضي إلى المكان الذي سيدرج فيه النص عند تسمية الأساليب [Write](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#write-java.lang.String), [Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln), [InsertBreak](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertBreak-int), والآخرون انظر المقالة التالية "التطهير مع كورسور" لتعلم المزيد عن الضمادات الافتراضية

ويوضح المثال الرمزي التالي كيف ينتقل إلى علامة كتاب:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmarkEnd-DocumentBuilderMoveToBookmarkEnd.java" >}}

## بناء الوثائق وتحديثها

Aspose.Words API يوفر عدة فصول مسؤولة عن تشكيل مختلف عناصر الوثيقة. ويلخص كل فصل من هذه الفصول خصائص شكلية تتصل بعنصر وثائقي محدد، مثل النص، الفقرة، الفرع، وغيرها. على سبيل المثال، [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) الصنف يمثّل خصائص شكل الشخصية [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) ويمثّل الفصل في شكل فقرات خصائص، وما إلى ذلك. تُعاد أهداف هذه الصفوف حسب المقابل **DocumentBuilder** الخواص، التي لها نفس الأسماء مثل الفصول. لذلك، يمكنك الوصول إليها ووضع الشكل المرغوب فيه أثناء إعداد الوثيقة.

يمكنك أيضاً أن تُدرج النص، صندوق الشيكات، الجسم الأوّل، الصور، العلامات الكتابية، الحقول، والعناصر الوثائقية الأخرى في موقع الشعار باستخدام `Write` طريقة أو أي من **DocumentBuilder.InsertXXX** الأساليب، مثل [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean), [InsertHtml](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHtml-java.lang.String), وطرق مماثلة

دعونا نرى كيف نصنع وثيقة بسيطة باستخدام **DocumentBuilder**.

### وضع وثيقة باستخدام الوثيقة

للبدء، تحتاج لخلق **DocumentBuilder** وربطه مع **Document** هدف تخلقين حالة جديدة **DocumentBuilder** عن طريق الاتصال بتشييده وإرساله إلى **Document** شيء لإرتباطه بالبني

إدخال نص، تمرر سلسلة النصوص التي تحتاج إلى إدراجها في الوثيقة **Write** طريقة

ويبين المثال الرمزي التالي كيفية وضع وثيقة بسيطة باستخدام مبني الوثائق.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-quickstart-HelloWorld-CreateNewDocument.java" >}}

### نشر الوثيقة

The [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) وتُعرّف الممتلكات شكل النصوص. ويحتوي هذا الجسم على خصائص مختلفة (الاسم العنيف، وحجم الفونت، واللون، وما إلى ذلك). Some important font attributes are also represented by **DocumentBuilder** العقارات للسماح لك بالدخول مباشرة هذه هي [Font.Bold](https://reference.aspose.com/words/java/com.aspose.words/font/#getBold), [Font.Italic](https://reference.aspose.com/words/java/com.aspose.words/font/#getItalic), و [Font.Underline](https://reference.aspose.com/words/java/com.aspose.words/font/#getUnderline) ممتلكات بوليان

ويبيّن المثال الرمزي التالي كيفية إدخال نص شكلي باستخدام **DocumentBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}

{{% alert color="primary" %}}

- [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) ويحدد الشكل الذي سيطبق على جميع النصوص الواردة من الموقع الحالي في الوثيقة فصاعدا.
- [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) ويحدد صيغة الفقرة للصيغة الحالية وجميع الفقرات التي ستدرج.
- [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) يحدد الصفحات وخصائص الأقسام للقسم الحالي والجزء بأكمله الذي سيدرج.
- [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) و [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) (ب) تحديد خصائص الشكل التي ستطبق على خلايا الجداول والعدود من الموقع الحالي في الوثيقة فصاعداً.

في هذه الحالة، "مباشرة" يعني الموقع، الفقرة، القسم، الخلية، أو الصف الذي يكون فيه الشعار.

{{% /alert %}}

{{% alert color="primary" %}}

ملاحظة: **Font**, **ParagraphFormat**, و **PageSetup** تُحدّثُ الممتلكاتُ متى تَتّصلُ إلى a موقع مختلف في الوثيقةِ لتَعْبرُ خواصَ الشكلِ هذا الموقعِ.

{{% /alert %}}
