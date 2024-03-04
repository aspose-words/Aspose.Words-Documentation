---
title: نظرة عامة على منشئ المستندات في C#
second_title: Aspose.Words لـ .NET
articleTitle: نظرة عامة على منشئ المستندات
linktitle: نظرة عامة على منشئ المستندات
type: docs
description: "يتيح لك DocumentBuilder إنشاء مستندات ديناميكية من البداية أو إضافة عناصر جديدة إلى المستندات الموجودة باستخدام C#. يوفر DocumentBuilder طرقًا لإدراج النص ومربعات الاختيار والجداول والصور وعناصر المحتوى الأخرى في .NET."
weight: 30
url: /ar/net/document-builder-overview/
---

[DocumentBuilder](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/) هي فئة قوية ترتبط بـ [Document](https://reference.aspose.com/words/ar/net/aspose.words/document/) وتمكنك من إنشاء مستندات ديناميكية من البداية أو إضافة عناصر جديدة إلى مستند موجود.

يوفر **DocumentBuilder** طرقًا لإدراج النص ومربعات الاختيار وكائنات ole والفقرات والقوائم والجداول والصور وعناصر المحتوى الأخرى. يسمح لك بتحديد الخطوط وتنسيق الفقرة أو القسم وإجراء عمليات أخرى.

## منشئ المستندات أو Aspose.Words DOM

يكمل **DocumentBuilder** الفئات والأساليب المتوفرة في Aspose.Words Document Object Model (DOM) لتبسيط مهام إنشاء المستندات الأكثر شيوعًا. أي أنه يمكنك إنشاء وتعديل محتوى المستندات من خلال Aspose.Words DOM، الأمر الذي يتطلب فهمًا جيدًا لبنية الشجرة، واستخدام DocumentBuilder. يعد `DocumentBuilder` "واجهة" لبنية **Document** المعقدة التي تسمح لك بإدراج المحتوى والتنسيق بسرعة وسهولة.

العمليات الممكنة باستخدام **DocumentBuilder** ممكنة أيضًا عند استخدام فئات Aspose.Words DOM مباشرةً. ومع ذلك، عادةً ما يتطلب استخدام فئات Aspose.Words DOM مباشرةً سطورًا من التعليمات البرمجية أكثر من استخدام **DocumentBuilder**.

## التنقل في المستندات

يعتمد التنقل في المستند على مفهوم المؤشر الافتراضي، الذي يمكنك من خلاله الانتقال إلى موقع آخر في المستند باستخدام أساليب **DocumentBuilder.MoveToXXX** المختلفة مثل [MoveToDocumentStart](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/movetodocumentstart/) و[MoveToField](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/movetofield/). يشير هذا المؤشر الافتراضي إلى المكان الذي سيتم إدراج النص فيه عند استدعاء الطرق [Write](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/write/) و[Writeln](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/write/ln/index) و[InsertBreak](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/insertbreak/) وغيرها. راجع المقالة التالية "التنقل باستخدام المؤشر" لمعرفة المزيد حول المؤشر الافتراضي.

يوضح مثال التعليمات البرمجية التالي كيفية الانتقال إلى إشارة مرجعية:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmarkEnd.cs" >}}

## بناء الوثيقة وتعديلها

يوفر Aspose.Words API عدة فئات مسؤولة عن تنسيق العناصر المختلفة للمستند. تحتوي كل فئة على خصائص التنسيق المتعلقة بعنصر معين في المستند، مثل النص والفقرة والقسم وغيرها. على سبيل المثال، تمثل فئة [Font](https://reference.aspose.com/words/ar/net/aspose.words/font/) خصائص تنسيق الأحرف، وتمثل فئة [ParagraphFormat](https://reference.aspose.com/words/ar/net/aspose.words/paragraphformat/) خصائص تنسيق الفقرة، وهكذا. يتم إرجاع كائنات هذه الفئات بواسطة خصائص **DocumentBuilder** المقابلة، والتي لها نفس أسماء الفئات. لذلك، يمكنك الوصول إليها وتعيين التنسيق المطلوب أثناء إنشاء المستند.

يمكنك أيضًا إدراج نص ومربع اختيار وكائن أولي وصور وإشارات مرجعية وحقول نموذج وعناصر مستند أخرى في موضع المؤشر باستخدام طريقة `Write` أو أي من طرق **DocumentBuilder.InsertXXX**، مثل [InsertField](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/insertfield/#insertfield/) و[InsertHtml](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/inserthtml/#inserthtml/) والطرق المشابهة.

دعونا نرى كيفية إنشاء مستند بسيط باستخدام **DocumentBuilder**.

### إنشاء مستند باستخدام DocumentBuilder

للبدء، تحتاج إلى إنشاء **DocumentBuilder** وربطه بكائن **Document**. يمكنك إنشاء مثيل جديد لـ **DocumentBuilder** عن طريق استدعاء منشئه وتمريره إلى كائن **Document** لإرفاقه بالمنشئ.

لإدراج نص، قم بتمرير سلسلة النص التي تحتاج إلى إدراجها في المستند إلى طريقة **Write**.

يوضح مثال التعليمات البرمجية التالي كيفية إنشاء مستند بسيط باستخدام منشئ المستندات.

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Quick-Start-HelloWorld-HelloWorld.cs" >}}

### تحديد تنسيق المستند

تحدد الخاصية [Font](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/font/) تنسيق النص. يحتوي هذا الكائن على سمات خط مختلفة (اسم الخط وحجم الخط واللون وما إلى ذلك). يتم أيضًا تمثيل بعض سمات الخط المهمة بواسطة خصائص **DocumentBuilder** للسماح لك بالوصول إليها مباشرةً. هذه هي خصائص [Font.Bold](https://reference.aspose.com/words/ar/net/aspose.words/font/bold/) و[Font.Italic](https://reference.aspose.com/words/ar/net/aspose.words/font/italic/) و[Font.Underline](https://reference.aspose.com/words/ar/net/aspose.words/font/underline/) المنطقية.

يوضح مثال التعليمات البرمجية التالي كيفية إدراج نص منسق باستخدام **DocumentBuilder**:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cs" >}}

{{% alert color="primary" %}}

- يحدد [Font](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/font/) تنسيق الأحرف الذي سيتم تطبيقه على كل النص المدرج من الموضع الحالي في المستند فصاعدًا.
- يحدد [ParagraphFormat](https://reference.aspose.com/words/ar/net/aspose.words/paragraphformat/) تنسيق الفقرة الحالية وجميع الفقرات التي سيتم إدراجها.
- يحدد [PageSetup](https://reference.aspose.com/words/ar/net/aspose.words/pagesetup/) خصائص الصفحة والقسم للقسم الحالي والقسم بأكمله الذي سيتم إدراجه.
- يحدد [CellFormat](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/cellformat/) و[RowFormat](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/rowformat/) خصائص التنسيق التي سيتم تطبيقها على خلايا وصفوف الجدول بدءًا من الموضع الحالي في المستند فصاعدًا.

في هذه الحالة، تعني كلمة "الحالي" الموضع أو الفقرة أو القسم أو الخلية أو الصف الذي يوجد به المؤشر.

{{% /alert %}}

{{% alert color="primary" %}}

لاحظ أنه يتم تحديث خصائص **Font** و**ParagraphFormat** و**PageSetup** عندما تنتقل إلى موقع مختلف في المستند لتعكس خصائص التنسيق لهذا الموقع.

{{% /alert %}}
