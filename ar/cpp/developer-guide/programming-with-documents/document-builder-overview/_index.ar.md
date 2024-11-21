---
title: نظرة عامة على منشئ المستندات في C++
second_title: Aspose.Words ل C++
articleTitle: نظرة عامة على منشئ المستندات
linktitle: نظرة عامة على منشئ المستندات
type: docs
description: "DocumentBuilder يسمح لك بإنشاء مستندات ديناميكية من البداية أو إضافة عناصر جديدة إلى العناصر الموجودة باستخدام C++. DocumentBuilder يوفر طرقا لإدراج النص ومربعات الاختيار والجداول والصور وعناصر المحتوى الأخرى في C++."
weight: 30
url: /ar/cpp/document-builder-overview/
timestamp: 2024-01-27-14-07-04
---

[DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) هي فئة قوية ترتبط بـ [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) وتمكنك من إنشاء مستندات ديناميكية من البداية أو إضافة عناصر جديدة إلى عنصر موجود.

**DocumentBuilder**

## منشئ المستندات أو Aspose.Words DOM

**DocumentBuilder**

العمليات الممكنة مع **DocumentBuilder** ممكنة أيضا عند استخدام فئات Aspose.Words DOM مباشرة. ومع ذلك، فإن استخدام فئات Aspose.Words DOM بشكل مباشر يتطلب عادة أسطر من التعليمات البرمجية أكثر من استخدام **DocumentBuilder**.

## التنقل في المستندات

يعتمد التنقل في المستند على مفهوم المؤشر الافتراضي، والذي يمكنك من خلاله الانتقال إلى موقع آخر في المستند باستخدام طرق **DocumentBuilder.MoveToXXX** مختلفة مثل [MoveToDocumentStart](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetodocumentstart/) و [MoveToField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetofield/). يشير هذا المؤشر الظاهري إلى مكان إدراج النص عند استدعاء الطرق [Write](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/write/), [Writeln](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/writeln/), [InsertBreak](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertbreak/), وغيرها.

يوضح مثال الكود التالي كيفية الانتقال إلى إشارة مرجعية:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmarkEnd.cpp" >}}

## بناء الوثائق وتعديلها

Aspose.Words API يوفر العديد من الفئات المسؤولة عن تنسيق العناصر المختلفة للمستند. تقوم كل فئة بتغليف خصائص التنسيق المتعلقة بعنصر مستند معين، مثل النص والفقرة والقسم وغيرها. على سبيل المثال، تمثل فئة [Font](https://reference.aspose.com/words/cpp/aspose.words/font/) خصائص تنسيق الأحرف، وتمثل فئة [ParagraphFormat](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/) خصائص تنسيق الفقرة، وهكذا. يتم إرجاع كائنات هذه الفئات بواسطة خصائص **DocumentBuilder** المقابلة، والتي لها نفس أسماء الفئات. لذلك، يمكنك الوصول إليها وتعيين التنسيق المطلوب أثناء إنشاء المستند.

يمكنك أيضا إدراج نص وخانة اختيار وكائن أولي وصور وإشارات مرجعية وحقول نماذج وعناصر مستندات أخرى في موضع المؤشر باستخدام طريقة `Write` أو أي من طرق **DocumentBuilder.InsertXXX**، مثل [InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/) و [InsertHtml](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/inserthtml/) وطرق مماثلة.

دعونا نرى كيفية إنشاء مستند بسيط باستخدام **DocumentBuilder**.

### إنشاء مستند باستخدام DocumentBuilder

للبدء، تحتاج إلى إنشاء **DocumentBuilder** وربطه بكائن **Document**. يمكنك إنشاء مثيل جديد من **DocumentBuilder** عن طريق استدعاء المنشئ الخاص به وتمريره إلى كائن **Document** للتعلق بالباني.

لإدراج نص، مرر سلسلة النص التي تحتاج إلى إدراجها في المستند إلى طريقة **Write**.

يوضح مثال الكود التالي كيفية إنشاء مستند بسيط باستخدام أداة إنشاء المستندات.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Quick-Start-HelloWorld-HelloWorld.cpp" >}}

### حدد تنسيق المستند

تحدد الخاصية [Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/) تنسيق النص. يحتوي هذا الكائن على سمات خط مختلفة (اسم الخط وحجم الخط واللون وما إلى ذلك). يتم تمثيل بعض سمات الخط المهمة أيضا بخصائص **DocumentBuilder** للسماح لك بالوصول إليها مباشرة. هذه هي الخصائص المنطقية [Font.Bold](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_bold/) و [Font.Italic](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_italic/) و [Font.Underline](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_underline/).

يوضح مثال الكود التالي كيفية إدراج نص منسق باستخدام **DocumentBuilder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cpp" >}}

{{% alert color="primary" %}}

- [Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/) يحدد تنسيق الحرف الذي سيتم تطبيقه على كل النص المدرج من الموضع الحالي في المستند فصاعدا.
- [ParagraphFormat](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/) يحدد تنسيق الفقرة الحالية وجميع الفقرات المراد إدراجها.
- [PageSetup](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/) يحدد خصائص الصفحة والقسم للقسم الحالي والقسم بأكمله الذي سيتم إدراجه.
- [CellFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_cellformat/) و [RowFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_rowformat/) حدد خصائص التنسيق التي سيتم تطبيقها على خلايا الجدول والصفوف من الموضع الحالي في المستند فصاعدا.

في هذه الحالة، تعني كلمة "تيار" الموضع أو الفقرة أو القسم أو الخلية أو الصف الذي يوجد فيه المؤشر.

{{% /alert %}}

{{% alert color="primary" %}}

لاحظ أنه يتم تحديث الخصائص **Font** و **ParagraphFormat** و **PageSetup** كلما انتقلت إلى موقع مختلف في المستند لتعكس خصائص التنسيق لهذا الموقع.

{{% /alert %}}
