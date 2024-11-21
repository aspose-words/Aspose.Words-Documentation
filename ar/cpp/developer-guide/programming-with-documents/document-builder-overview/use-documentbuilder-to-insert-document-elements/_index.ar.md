---
title: استخدم `DocumentBuilder` لإدراج عناصر المستند
second_title: Aspose.Words ل C++
articleTitle: استخدم `DocumentBuilder` لإدراج عناصر المستند
linktitle: استخدم `DocumentBuilder` لإدراج عناصر المستند
type: docs
description: "أدخل عناصر المستند باستخدام منشئ المستندات في C++."
weight: 80
url: /ar/cpp/use-documentbuilder-to-insert-document-elements/
timestamp: 2024-01-27-14-07-04
---

يتم استخدام `DocumentBuilder` لتعديل المستندات. تشرح هذه المقالة وتصف كيفية تنفيذ عدد من المهام:

## إدراج سلسلة من النص

ما عليك سوى تمرير سلسلة النص التي تحتاج إلى إدراجها في المستند إلى طريقة `DocumentBuilder.Write`. يتم تحديد تنسيق النص بواسطة خاصية `Font`. يحتوي هذا الكائن على سمات خط مختلفة (اسم الخط وحجم الخط واللون وما إلى ذلك). يتم تمثيل بعض سمات الخط المهمة أيضا بخصائص DocumentBuilder للسماح لك بالوصول إليها مباشرة. هذه خصائص منطقية `Font.Bold` و `Font.Italic` و `Font.Underline`.

لاحظ أن تنسيق الأحرف الذي قمت بتعيينه سيتم تطبيقه على كل النص المدرج من الموضع الحالي في المستند فصاعدا.

أدناه المثال إدراج نص منسق باستخدام DocumentBuilder.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-WriteAndFont-WriteAndFont.cpp" >}}

## إدراج فقرة

 `DocumentBuilder.Writeln` يدرج سلسلة من النص في المستند أيضا ولكن بالإضافة إلى ذلك، فإنه يضيف فاصل فقرة. يتم تحديد تنسيق الخط الحالي أيضا بواسطة خاصية `DocumentBuilder.Font` ويتم تحديد تنسيق الفقرة الحالي بواسطة خاصية `DocumentBuilder.ParagraphFormat`. يوضح المثال أدناه كيفية إدراج فقرة في المستند.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cpp" >}}

## إدراج جدول

الخوارزمية الأساسية لإنشاء جدول باستخدام DocumentBuilder بسيطة:

1. ابدأ الجدول باستخدام `DocumentBuilder.StartTable`.
1. أدخل خلية باستخدام `DocumentBuilder.InsertCell`. هذا يبدأ تلقائيا صف جديد. إذا لزم الأمر، استخدم الخاصية `DocumentBuilder.CellFormat` لتحديد تنسيق الخلية.
1. أدخل محتويات الخلية باستخدام طرق `DocumentBuilder`.
1. كرر الخطوتين 2 و 3 حتى يكتمل الصف.
1. اتصل `DocumentBuilder.EndRow` لإنهاء الصف الحالي. إذا لزم الأمر، استخدم خاصية `DocumentBuilder.RowFormat` لتحديد تنسيق الصف.
1. كرر الخطوات 2 - 5 حتى يكتمل الجدول.
1. اتصل `DocumentBuilder.EndTable` لإنهاء بناء الجدول. يتم وصف طرق إنشاء الجدول DocumentBuilder المناسبة أدناه.

### بدء جدول

استدعاء `DocumentBuilder.StartTable` هو الخطوة الأولى في بناء جدول. يمكن أن يطلق عليه أيضا داخل خلية، وفي هذه الحالة يبدأ جدول متداخل. الطريقة التالية للاتصال هي `DocumentBuilder.InsertCell`.

### إدخال خلية

بعد استدعاء `DocumentBuilder->InsertCell`، يتم إنشاء خلية جديدة وسيتم إضافة أي محتوى تضيفه باستخدام طرق أخرى من فئة `DocumentBuilder` إلى الخلية الحالية. لبدء خلية جديدة في نفس الصف، اتصل `DocumentBuilder->InsertCell` مرة أخرى. استخدم الخاصية `DocumentBuilder.CellFormat` لتحديد تنسيق الخلية. يقوم بإرجاع كائن `CellFormat` يمثل كل التنسيق لخلية جدول.

### إنهاء صف

اتصل `DocumentBuilder.EndRow` لإنهاء الصف الحالي. إذا اتصلت `DocumentBuilder->InsertCell` بعد ذلك مباشرة، فسيستمر الجدول في صف جديد.

استخدم الخاصية `DocumentBuilder.RowFormat` لتحديد تنسيق الصف. يقوم بإرجاع كائن `RowFormat` يمثل كل التنسيق لصف جدول.

### إنهاء الجدول

اتصل `DocumentBuilder.EndTable` لإنهاء الجدول الحالي. يجب استدعاء هذه الطريقة مرة واحدة فقط بعد استدعاء `DocumentBuilder->EndRow`. عند الاتصال ،`DocumentBuilder.EndTable` يحرك المؤشر خارج الخلية الحالية إلى موضع بعد الجدول مباشرة. يوضح المثال التالي كيفية إنشاء جدول منسق يحتوي على 2 صفوف و 2 أعمدة.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderBuildTable-DocumentBuilderBuildTable.cpp" >}}

## إدخال استراحة

إذا كنت تريد بدء سطر أو فقرة أو عمود أو قسم أو صفحة جديدة بشكل صريح، فاتصل `DocumentBuilder.InsertBreak`. مرر إلى هذه الطريقة نوع الفاصل الذي تحتاج إلى إدراجه والذي يمثله `BreakType` تعداد. يوضح المثال أدناه كيفية إدراج فواصل الصفحات في مستند.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertBreak-DocumentBuilderInsertBreak.cpp" >}}

## إدراج صورة

DocumentBuilder يوفر العديد من الأحمال الزائدة لطريقة `DocumentBuilder->InsertImage` التي تسمح لك بإدراج صورة مضمنة أو عائمة. إذا كانت الصورة ملف تعريف EMF أو WMF، فسيتم إدراجها في المستند بتنسيق ملف التعريف. سيتم تخزين جميع الصور الأخرى بتنسيق PNG. يمكن لطريقة `DocumentBuilder->InsertImage` استخدام الصور من مصادر مختلفة:

- من ملف أو `URL` عن طريق تمرير معلمة سلسلة `DocumentBuilder->InsertImage`.
- من تيار عن طريق تمرير `Stream` المعلمة `DocumentBuilder->InsertImage`.
- من كائن صورة عن طريق تمرير معلمة صورة `DocumentBuilder->InsertImage`.
- من صفيف بايت عن طريق تمرير معلمة صفيف بايت `DocumentBuilder.InsertImage`.لكل من طرق `DocumentBuilder->InsertImage`، هناك المزيد من الأحمال الزائدة التي تسمح لك بإدراج صورة بالخيارات التالية:
- مضمنة أو عائمة في موضع معين، على سبيل المثال، `DocumentBuilder->InsertImage`.
- مقياس النسبة المئوية أو الحجم المخصص، على سبيل المثال، `DocumentBuilder.InsertImage`. علاوة على ذلك، تقوم طريقة `DocumentBuilder->InsertImage` بإرجاع كائن `Shape` تم إنشاؤه وإدراجه للتو حتى تتمكن من تعديل خصائص الشكل بشكل أكبر.

### إدراج صورة مضمنة

قم بتمرير سلسلة واحدة تمثل ملفا يحتوي على الصورة إلى `DocumentBuilder->InsertImage` لإدراج الصورة في المستند كرسومات مضمنة. يوضح المثال أدناه كيفية إدراج صورة مضمنة في موضع المؤشر في مستند.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertInlineImage.cpp" >}}

### إدراج صورة عائمة (موضوعة تماما)

يقوم هذا المثال بإدراج صورة عائمة من ملف أو `URL` في موضع وحجم محددين.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertFloatingImage.cpp" >}}

## إدراج إشارة مرجعية

لإدراج إشارة مرجعية في المستند، يجب عليك القيام بما يلي:

1. استدعاء `DocumentBuilder->StartBookmark` تمريرها الاسم المطلوب من الإشارة المرجعية.
1. أدخل نص الإشارة المرجعية باستخدام طرق DocumentBuilder.
1. اتصل `DocumentBuilder.EndBookmark` بتمريرها بنفس الاسم الذي استخدمته مع **DocumentBuilder->StartBookmark**.
1. يمكن أن تتداخل الإشارات المرجعية وتمتد إلى أي نطاق. لإنشاء إشارة مرجعية صالحة، تحتاج إلى الاتصال بكل من `DocumentBuilder->StartBookmark` و `DocumentBuilder->EndBookmark` بنفس اسم الإشارة المرجعية.

{{% alert color="primary" %}}

سيتم تجاهل الإشارات المرجعية أو الإشارات المرجعية ذات الأسماء المكررة عند حفظ المستند.

{{% /alert %}}

يوضح المثال أدناه كيفية إدراج إشارة مرجعية في مستند باستخدام أداة إنشاء المستندات.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertBookmark-DocumentBuilderInsertBookmark.cpp" >}}

## إدخال حقل `Form`

حقول النموذج هي حالة معينة من حقول الكلمات التي تسمح "بالتفاعل" مع المستخدم. تتضمن حقول النموذج في Microsoft Word مربع نص ومربع تحرير وسرد ومربع اختيار.DocumentBuilder يوفر طرقا خاصة لإدراج كل نوع من حقول النموذج في المستند: `DocumentBuilder.InsertTextInput` و `DocumentBuilder->InsertCheckBox` و `DocumentBuilder.InsertComboBox`. لاحظ أنه إذا قمت بتحديد اسم لحقل النموذج، فسيتم إنشاء إشارة مرجعية تلقائيا بنفس الاسم.

### إدخال إدخال نص

 `DocumentBuilder.InsertTextInput` لإدراج مربع نص في المستند. يوضح المثال أدناه كيفية إدراج حقل نموذج إدخال نص في مستند.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertTextInputFormField.cpp" >}}

### إدراج خانة الاختيار

اتصل `DocumentBuilder.InsertCheckBox` لإدراج مربع اختيار في المستند. يوضح المثال أدناه كيفية إدراج حقل نموذج مربع الاختيار في مستند.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertCheckBoxFormField.cpp" >}}

### إدراج مربع التحرير والسرد

اتصل `DocumentBuilder.InsertComboBox` لإدراج مربع التحرير والسرد في المستند. يوضح المثال أدناه كيفية إدراج حقل نموذج مربع التحرير والسرد في مستند.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertComboBoxFormField.cpp" >}}

## إدراج اللغة على المستوى الميداني

يمكن للعملاء تحديد اللغة على المستوى الميداني الآن ويمكنهم تحقيق تحكم أفضل. يمكن ربط معرفات اللغة مع كل حقل داخل DocumentBuilder. توضح الأمثلة أدناه كيفية الاستفادة من هذا الخيار.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.cpp" >}}

## إدراج ارتباط تشعبي

استخدم `DocumentBuilder.InsertHyperlink` لإدراج ارتباط تشعبي في المستند. تقبل هذه الطريقة ثلاث معلمات: نص الرابط المراد عرضه في المستند، ووجهة الارتباط (URL أو اسم إشارة مرجعية داخل المستند)، ومعلمة منطقية يجب أن تكون صحيحة إذا كان `URL` هو اسم إشارة مرجعية داخل المستند.DocumentBuilder.InsertHyperlink يدعو داخليا `DocumentBuilder.InsertField`.تضيف الطريقة دائما الفواصل العليا في بداية ونهاية URL. لاحظ أنك تحتاج إلى تحديد تنسيق الخط لنص عرض الارتباط التشعبي بشكل صريح باستخدام الخاصية `Font`. المثال أدناه إدراج ارتباط تشعبي في مستند باستخدام DocumentBuilder.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHyperlink.cpp" >}}

## إدراج كائن أولي

إذا كنت تريد استدعاء كائن أولي `DocumentBuilder.InsertOleObject`. مرر إلى هذه الطريقة `ProgId` صراحة مع معلمات أخرى. يوضح المثال أدناه كيفية إدراج كائن أولي في مستند.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertOleObject.cpp" >}}

## تعيين اسم الملف والامتداد عند إدراج كائن أولي

حزمة OLE هي طريقة قديمة و" غير موثقة " لتخزين الكائن المضمن إذا كان معالج OLE غير معروف. كانت الإصدارات المبكرة Windows مثل Windows 3.1 و 95 و 98 تحتوي على حزم.تطبيق إكس التي يمكن استخدامها لتضمين أي نوع من البيانات في المستند. الآن، يتم استبعاد هذا التطبيق من Windows ولكن MS كلمة وغيرها من التطبيقات لا تزال تستخدم لتضمين البيانات إذا OLE معالج مفقود أو غير معروف. OlePackage فئة يسمح للوصول إلى OLE خصائص الحزمة. يوضح المثال أدناه كيفية تعيين اسم الملف والملحق واسم العرض لحزمة OLE.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.cpp" >}}

## إدراج HTML

يمكنك بسهولة إدراج سلسلة HTML تحتوي على جزء HTML أو مستند HTML كامل في مستند الكلمة. مجرد تمرير هذه السلسلة إلى طريقة `DocumentBuilder->InsertHtml`. أحد التطبيقات المفيدة للطريقة هو تخزين سلسلة HTML في قاعدة بيانات وإدراجها في المستند أثناء mail merge لإضافة المحتوى المنسق بدلا من بنائه باستخدام طرق مختلفة لمنشئ المستندات. يوضح المثال أدناه الإدخالات HTML في مستند باستخدام DocumentBuilder.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHtml.cpp" >}}

## أدخل قاعدة أفقية في المستند

كنlow code يوضح المثال كيفية إدراج شكل القاعدة الأفقي في مستند باستخدام طريقة `DocumentBuilder->InsertHorizontalRule`.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.cpp" >}}
