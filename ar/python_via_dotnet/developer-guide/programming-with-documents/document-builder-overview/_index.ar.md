---
title: نظرة عامة على منشئ المستندات في Python
second_title: Aspose.Words لـ Python via .NET
articleTitle: نظرة عامة على منشئ المستندات
linktitle: نظرة عامة على منشئ المستندات
type: docs
description: "يتيح لك DocumentBuilder إنشاء مستندات ديناميكية من البداية أو إضافة عناصر جديدة إلى المستندات الموجودة باستخدام Python. يوفر DocumentBuilder طرقًا لإدراج النص ومربعات الاختيار والجداول والصور وعناصر المحتوى الأخرى في Python."
weight: 30
url: /ar/python-net/document-builder-overview/
---

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) هي فئة قوية ترتبط بـ [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) وتمكنك من إنشاء مستندات ديناميكية من البداية أو إضافة عناصر جديدة إلى مستند موجود.

يوفر [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) طرقًا لإدراج النص ومربعات الاختيار وكائنات ole والفقرات والقوائم والجداول والصور وعناصر المحتوى الأخرى. يسمح لك بتحديد الخطوط وتنسيق الفقرة أو القسم وإجراء عمليات أخرى.

## منشئ المستندات أو Aspose.Words DOM

يكمل [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) الفئات والأساليب المتوفرة في Aspose.Words Document Object Model (DOM) لتبسيط مهام إنشاء المستندات الأكثر شيوعًا. أي أنه يمكنك إنشاء وتعديل محتوى المستندات من خلال Aspose.Words DOM، الأمر الذي يتطلب فهمًا جيدًا لبنية الشجرة، واستخدام DocumentBuilder. يعد `DocumentBuilder` "واجهة" لبنية **Document** المعقدة التي تسمح لك بإدراج المحتوى والتنسيق بسرعة وسهولة.

العمليات الممكنة باستخدام [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) ممكنة أيضًا عند استخدام فئات Aspose.Words DOM مباشرة. ومع ذلك، عادةً ما يتطلب استخدام فئات Aspose.Words DOM مباشرةً سطورًا من التعليمات البرمجية أكثر من استخدام [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/).

## التنقل في المستندات

يعتمد التنقل في المستند على مفهوم المؤشر الافتراضي، الذي يمكنك من خلاله الانتقال إلى موقع آخر في المستند باستخدام طرق **DocumentBuilder.move_to_XXX** المختلفة مثل [move_to_document_start](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_document_start/) و[move_to_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_field/). يشير هذا المؤشر الافتراضي إلى المكان الذي سيتم إدراج النص فيه عند استدعاء الطرق [write](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/write/) و[writeln](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/writeln/) و[insert_break](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_break/) وغيرها. راجع المقالة التالية "التنقل باستخدام المؤشر" لمعرفة المزيد حول المؤشر الافتراضي.

يوضح مثال التعليمات البرمجية التالي كيفية الانتقال إلى إشارة مرجعية:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToBookmarkEnd.py" >}}

## بناء الوثيقة وتعديلها

يوفر Aspose.Words API عدة فئات مسؤولة عن تنسيق العناصر المختلفة للمستند. تحتوي كل فئة على خصائص التنسيق المتعلقة بعنصر معين في المستند، مثل النص والفقرة والقسم وغيرها. على سبيل المثال، تمثل فئة [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) خصائص تنسيق الأحرف، وتمثل فئة [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/) خصائص تنسيق الفقرة، وهكذا. يتم إرجاع كائنات هذه الفئات بواسطة خصائص [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) المقابلة، والتي لها نفس أسماء الفئات. لذلك، يمكنك الوصول إليها وتعيين التنسيق المطلوب أثناء إنشاء المستند.

يمكنك أيضًا إدراج نص ومربع اختيار وكائن أولي وصور وإشارات مرجعية وحقول نموذج وعناصر مستند أخرى في موضع المؤشر باستخدام طريقة `Write` أو أي من طرق **DocumentBuilder.insert_XXX**، مثل [insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) و[insert_html](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_html/) والطرق المشابهة.

دعونا نرى كيفية إنشاء مستند بسيط باستخدام [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/).

### إنشاء مستند باستخدام DocumentBuilder

للبدء، تحتاج إلى إنشاء [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) وربطه بكائن [Document](https://reference.aspose.com/words/python-net/aspose.words/document/). يمكنك إنشاء مثيل جديد لـ [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) عن طريق استدعاء منشئه وتمريره إلى كائن [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) لإرفاقه بالمنشئ.

لإدراج نص، قم بتمرير سلسلة النص التي تحتاج إلى إدراجها في المستند إلى طريقة [write](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/write/).

يوضح مثال التعليمات البرمجية التالي كيفية إنشاء مستند بسيط باستخدام منشئ المستندات.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToDocumentStartEnd.py" >}}

### تحديد تنسيق المستند

تحدد الخاصية [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/) تنسيق النص. يحتوي هذا الكائن على سمات خط مختلفة (اسم الخط وحجم الخط واللون وما إلى ذلك). يتم أيضًا تمثيل بعض سمات الخط المهمة بواسطة خصائص [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) للسماح لك بالوصول إليها مباشرةً. هذه هي خصائص [Font.bold](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/bold/) و[Font.italic](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/italic/) و[Font.underline](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/underline/) المنطقية.

يوضح مثال التعليمات البرمجية التالي كيفية إدراج نص منسق باستخدام [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertParagraph.py" >}}

{{% alert color="primary" %}}

- يحدد [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/) تنسيق الأحرف الذي سيتم تطبيقه على كل النص المدرج من الموضع الحالي في المستند فصاعدًا.
- يحدد [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/) تنسيق الفقرة الحالية وجميع الفقرات التي سيتم إدراجها.
- يحدد [page_setup](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/page_setup/) خصائص الصفحة والقسم للقسم الحالي والقسم بأكمله الذي سيتم إدراجه.
- يحدد [cell_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/cell_format/) و[row_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/row_format/) خصائص التنسيق التي سيتم تطبيقها على خلايا وصفوف الجدول بدءًا من الموضع الحالي في المستند فصاعدًا.

في هذه الحالة، تعني كلمة "الحالي" الموضع أو الفقرة أو القسم أو الخلية أو الصف الذي يوجد به المؤشر.

{{% /alert %}}

{{% alert color="primary" %}}

لاحظ أنه يتم تحديث خصائص [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/) و[paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/) و[page_setup](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/page_setup/) عندما تنتقل إلى موقع مختلف في المستند لتعكس خصائص التنسيق لهذا الموقع.

{{% /alert %}}
