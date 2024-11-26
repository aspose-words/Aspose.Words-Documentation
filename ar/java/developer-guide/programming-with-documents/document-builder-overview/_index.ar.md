---
title: نظرة عامة على منشئ المستندات في Java
second_title: Aspose.Words ل Java
articleTitle: نظرة عامة على منشئ المستندات
linktitle: نظرة عامة على منشئ المستندات
type: docs
description: "DocumentBuilder يسمح لك بإنشاء مستندات ديناميكية من البداية أو إضافة عناصر جديدة إلى العناصر الموجودة. DocumentBuilder يوفر طرق لإدراج النص ،checkbox وفاق، والجداول، والصور، وعناصر المحتوى الأخرى في Java."
weight: 30
url: /ar/java/document-builder-overview/
timestamp: 2024-01-27-14-07-04
---

[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) هي فئة قوية ترتبط بـ [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) وتمكنك من إنشاء مستندات ديناميكية من البداية أو إضافة عناصر جديدة إلى عنصر موجود.

**DocumentBuilder**

## منشئ المستندات أو Aspose.Words DOM

**DocumentBuilder**

العمليات الممكنة مع **DocumentBuilder** ممكنة أيضا عند استخدام فئات Aspose.Words DOM مباشرة. ومع ذلك، باستخدام Aspose.Words DOM عادة ما تتطلب الفئات مباشرة أسطر من التعليمات البرمجية أكثر من استخدام **DocumentBuilder**.

## التنقل في المستندات

يعتمد التنقل في المستند على مفهوم المؤشر الظاهري، والذي يمكنك من خلاله الانتقال إلى موقع آخر في المستند باستخدام طرق **DocumentBuilder.MoveToXXX** مختلفة مثل [MoveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart) و [MoveToField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToField-com.aspose.words.Field-boolean). يشير هذا المؤشر الظاهري إلى مكان إدراج النص عند استدعاء الطرق [Write](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#write-java.lang.String), [Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln), [InsertBreak](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertBreak-int), وغيرها. راجع المقالة التالية" التنقل باستخدام المؤشر " لمعرفة المزيد حول المؤشر الظاهري.

يوضح مثال الكود التالي كيفية الانتقال إلى إشارة مرجعية:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmarkEnd-DocumentBuilderMoveToBookmarkEnd.java" >}}

## بناء الوثائق وتعديلها

Aspose.Words API يوفر العديد من الفئات المسؤولة عن تنسيق العناصر المختلفة للمستند. تقوم كل فئة بتغليف خصائص التنسيق المتعلقة بعنصر مستند معين، مثل النص والفقرة والقسم وغيرها. على سبيل المثال، تمثل فئة [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) خصائص تنسيق الأحرف، وتمثل فئة [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) خصائص تنسيق الفقرة، وهكذا. يتم إرجاع كائنات هذه الفئات بواسطة خصائص **DocumentBuilder** المقابلة، والتي لها نفس أسماء الفئات. لذلك، يمكنك الوصول إليها وتعيين التنسيق المطلوب أثناء إنشاء المستند.

يمكنك أيضا إدراج نص، checkbox، كائن أولي، صور، إشارات مرجعية، حقول نموذج، وعناصر مستند أخرى في موضع المؤشر باستخدام طريقة `Write` أو أي من طرق **DocumentBuilder.InsertXXX**، مثل [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean)، [InsertHtml](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHtml-java.lang.String)، وطرق مماثلة.

دعونا نرى كيفية إنشاء مستند بسيط باستخدام **DocumentBuilder**.

### إنشاء مستند باستخدام DocumentBuilder

للبدء، تحتاج إلى إنشاء **DocumentBuilder** وربطه بكائن **Document**. يمكنك إنشاء مثيل جديد من **DocumentBuilder** عن طريق استدعاء المنشئ الخاص به وتمريره إلى كائن **Document** للتعلق بالباني.

لإدراج نص، مرر سلسلة النص التي تحتاج إلى إدراجها في المستند إلى طريقة **Write**.

يوضح مثال الكود التالي كيفية إنشاء مستند بسيط باستخدام أداة إنشاء المستندات.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-quickstart-HelloWorld-CreateNewDocument.java" >}}

### حدد تنسيق المستند

تحدد الخاصية [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) تنسيق النص. يحتوي هذا الكائن على سمات خط مختلفة (اسم الخط وحجم الخط واللون وما إلى ذلك). يتم تمثيل بعض سمات الخط المهمة أيضا بخصائص **DocumentBuilder** للسماح لك بالوصول إليها مباشرة. هذه هي الخصائص المنطقية [Font.Bold](https://reference.aspose.com/words/java/com.aspose.words/font/#getBold) و [Font.Italic](https://reference.aspose.com/words/java/com.aspose.words/font/#getItalic) و [Font.Underline](https://reference.aspose.com/words/java/com.aspose.words/font/#getUnderline).

يوضح مثال الكود التالي كيفية إدراج نص منسق باستخدام **DocumentBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}

{{% alert color="primary" %}}

- [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) يحدد تنسيق الحرف الذي سيتم تطبيقه على كل النص المدرج من الموضع الحالي في المستند فصاعدا.
- [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) يحدد تنسيق الفقرة الحالية وجميع الفقرات المراد إدراجها.
- [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) يحدد خصائص الصفحة والقسم للقسم الحالي والقسم بأكمله الذي سيتم إدراجه.
- [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) و [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) حدد خصائص التنسيق التي سيتم تطبيقها على خلايا الجدول والصفوف من الموضع الحالي في المستند فصاعدا.

في هذه الحالة، تعني كلمة "تيار" الموضع أو الفقرة أو القسم أو الخلية أو الصف الذي يوجد فيه المؤشر.

{{% /alert %}}

{{% alert color="primary" %}}

لاحظ أنه يتم تحديث الخصائص **Font** و **ParagraphFormat** و **PageSetup** كلما انتقلت إلى موقع مختلف في المستند لتعكس خصائص التنسيق لهذا الموقع.

{{% /alert %}}
