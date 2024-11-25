---
title: استخدم `DocumentBuilder` لإدراج عناصر المستند
second_title: Aspose.Words ل Java
articleTitle: استخدم `DocumentBuilder` لإدراج عناصر المستند
linktitle: استخدم `DocumentBuilder` لإدراج عناصر المستند
type: docs
description: "أدخل عناصر المستند باستخدام منشئ المستندات في Java."
weight: 10
url: /ar/java/use-documentbuilder-to-insert-document-elements/
timestamp: 2024-01-27-14-07-04
---

يتم استخدام [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) لتعديل المستندات. تشرح هذه المقالة وتصف كيفية تنفيذ عدد من المهام.

## إدراج سلسلة من النص

ما عليك سوى تمرير سلسلة النص التي تحتاج إلى إدراجها في المستند إلى طريقة [DocumentBuilder.write](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#write(java.lang.String)). يتم تحديد تنسيق النص بواسطة خاصية `Font`. يحتوي هذا الكائن على سمات خط مختلفة (اسم الخط وحجم الخط واللون وما إلى ذلك). يتم تمثيل بعض سمات الخط المهمة أيضا بخصائص [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) للسماح لك بالوصول إليها مباشرة. هذه خصائص منطقية [Font.getBold](https://reference.aspose.com/words/java/com.aspose.words/font/#getBold) و [Font.getItalic](https://reference.aspose.com/words/java/com.aspose.words/font/#getItalic) و [Font.getUnderline](https://reference.aspose.com/words/java/com.aspose.words/font/#getUnderline).

{{% alert color="primary" %}}

لاحظ أن تنسيق الأحرف الذي قمت بتعيينه سيتم تطبيقه على كل النص المدرج من الموضع الحالي في المستند فصاعدا.

{{% /alert %}}

يقوم مثال الكود التالي بإدراج نص منسق باستخدام DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WriteAndFont-WriteAndFont.java" >}}

## إدراج فقرة

DocumentBuilder.وريتلن إدراج سلسلة من النص في الوثيقة كذلك ولكن بالإضافة إلى ذلك، فإنه يضيف فاصل فقرة. يتم تحديد تنسيق الخط الحالي أيضا بواسطة DocumentBuilder.getFont يتم تحديد الخاصية وتنسيق الفقرة الحالية بواسطة DocumentBuilder.getParagraphFormat خاصية.

يوضح مثال التعليمات البرمجية التالية كيفية إدراج فقرة في المستند.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}

## إدراج جدول

الخوارزمية الأساسية لإنشاء جدول باستخدام `DocumentBuilder` بسيطة:

1. ابدأ الجدول باستخدام [DocumentBuilder.startTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable).
1. أدخل خلية باستخدام [DocumentBuilder.insertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell). هذا يبدأ تلقائيا صف جديد. إذا لزم الأمر، استخدم الخاصية [DocumentBuilder.getCellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) لتحديد تنسيق الخلية.
1. أدخل محتويات الخلية باستخدام طرق `DocumentBuilder`.
1. كرر الخطوتين 2 و 3 حتى يكتمل الصف.
1. اتصل [DocumentBuilder.endRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) لإنهاء الصف الحالي. إذا لزم الأمر، استخدم خاصية [DocumentBuilder.RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) لتحديد تنسيق الصف.
1. كرر الخطوات من 2 إلى 5 حتى يكتمل الجدول.
1. اتصل [DocumentBuilder.endTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) لإنهاء بناء الجدول. يتم وصف طرق إنشاء الجدول DocumentBuilder المناسبة أدناه.

### بدء جدول

الاتصال DocumentBuilder.startTable هي الخطوة الأولى في بناء جدول. يمكن أن يطلق عليه أيضا داخل خلية، في هذه الحالة، يبدأ جدول متداخل. الطريقة التالية للاتصال هي DocumentBuilder.insertCell.

### إدخال خلية

بعد استدعاء DocumentBuilder.insertCell، يتم إنشاء خلية جديدة وسيتم إضافة أي محتوى تضيفه باستخدام طرق أخرى لفئة `DocumentBuilder` إلى الخلية الحالية. لبدء خلية جديدة في نفس الصف، اتصل DocumentBuilder.insertCell مرة أخرى. استخدم DocumentBuilder.getCellFormat خاصية لتحديد تنسيق الخلية. يقوم بإرجاع كائن [getCellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) يمثل كل التنسيق لخلية جدول.

### إنهاء صف

اتصل DocumentBuilder.endRow لإنهاء الصف الحالي. إذا اتصلت DocumentBuilder.insertCell مباشرة بعد ذلك، ثم يستمر الجدول في صف جديد. استخدم الخاصية `DocumentBuilder.RowFormat` لتحديد تنسيق الصف. يقوم بإرجاع كائن [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/) يمثل كل التنسيق لصف جدول.

### إنهاء الجدول

اتصل DocumentBuilder.endTable لإنهاء الجدول الحالي. يجب استدعاء هذه الطريقة مرة واحدة فقط بعد DocumentBuilder.endRow كان يسمى. عند الاتصال، DocumentBuilder.endTable ينقل المؤشر من الخلية الحالية إلى موضع بعد الجدول مباشرة. يوضح المثال التالي كيفية بناء جدول منسق يحتوي على 2 الصفوف والأعمدة 2.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderBuildTable-DocumentBuilderBuildTable.java" >}}

## إدخال استراحة

إذا كنت تريد بدء سطر أو فقرة أو عمود أو قسم أو صفحة جديدة بشكل صريح، فاتصل DocumentBuilder.insertBreak. مرر إلى هذه الطريقة نوع الفاصل الذي تحتاج إلى إدراجه والذي يمثله `BreakType` تعداد.
يوضح مثال التعليمات البرمجية التالية كيفية إدراج فواصل الصفحات في مستند.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertBreak-DocumentBuilderInsertBreak.java" >}}

## إدراج صورة

DocumentBuilder يوفر العديد من الأحمال الزائدة لطريقة [DocumentBuilder.insertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte) التي تسمح لك بإدراج صورة مضمنة أو عائمة. إذا كانت الصورة ملف تعريف EMF أو WMF، فسيتم إدراجها في المستند بتنسيق ملف التعريف. سيتم تخزين جميع الصور الأخرى بتنسيق PNG. ال DocumentBuilder.insertImage طريقة يمكن استخدام الصور من مصادر مختلفة:

- من ملف أو `URL` عن طريق تمرير معلمة سلسلة
- من دفق بتمرير معلمة `Stream`
- من كائن صورة عن طريق تمرير معلمة صورة
- من صفيف بايت عن طريق تمرير معلمة صفيف بايت
- وغيرها

لكل من DocumentBuilder.طرق insertImage، هناك المزيد من الأحمال الزائدة التي تسمح لك بإدراج صورة بالخيارات التالية:

- مضمنة أو عائمة في موضع معين
- مقياس النسبة المئوية أو الحجم المخصص

وعلاوة على ذلك، فإن DocumentBuilder.ترجع طريقة insertImage كائن [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) تم إنشاؤه وإدراجه للتو حتى تتمكن من تعديل خصائص الشكل بشكل أكبر.

### إدراج صورة مضمنة

مرر سلسلة واحدة تمثل ملفا يحتوي على الصورة إلى DocumentBuilder.insertImage لإدراج الصورة في المستند كرسومات مضمنة. يوضح مثال التعليمات البرمجية التالية كيفية إدراج صورة مضمنة في موضع المؤشر في مستند.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertInlineImage-DocumentBuilderInsertInlineImage.java" >}}

### إدراج صورة عائمة (موضوعة تماما)

يقوم هذا المثال بإدراج صورة عائمة من ملف أو `URL` في موضع وحجم محددين.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertFloatingImage-DocumentBuilderInsertFloatingImage.java" >}}

## إدراج إشارة مرجعية

لإدراج إشارة مرجعية في المستند، يجب عليك القيام بما يلي:

1. استدعاء [DocumentBuilder.startBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startBookmark-java.lang.String) تمريرها الاسم المطلوب من الإشارة المرجعية.
1. أدخل نص الإشارة المرجعية باستخدام طرق `DocumentBuilder`.
1. اتصل [DocumentBuilder.endBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endBookmark-java.lang.String) بتمريرها بنفس الاسم الذي استخدمته مع DocumentBuilder.startBookmark.

يمكن أن تتداخل الإشارات المرجعية وتمتد إلى أي نطاق. لإنشاء إشارة مرجعية صالحة، تحتاج إلى الاتصال بكليهما DocumentBuilder.startBookmark و DocumentBuilder.endBookmark مع نفس اسم المرجعية.

سيتم تجاهل الإشارات المرجعية أو الإشارات المرجعية ذات الأسماء المكررة عند حفظ المستند.

يوضح مثال التعليمات البرمجية التالية كيفية إدراج إشارة مرجعية في مستند باستخدام منشئ مستند.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertBookmark-DocumentBuilderInsertBookmark.java" >}}

## إدخال حقل

تتكون الحقول في Microsoft Word وثائق من رمز الحقل ونتيجة الحقل. رمز الحقل يشبه الصيغة والنتيجة الميدانية هي القيمة التي تنتجها الصيغة. قد يحتوي رمز الحقل أيضا على مفاتيح تبديل الحقول التي تعد إرشادات إضافية لتنفيذ إجراء معين. يمكنك التبديل بين عرض رموز الحقول والنتائج في المستند الخاص بك في Microsoft Word باستخدام اختصار لوحة المفاتيح بديل + F9. تظهر رموز الحقول بين الأقواس المتعرجة (`{ }`).استخدم [DocumentBuilder.insertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) لإنشاء حقول في المستند. تحتاج إلى تحديد نوع الحقل ورمز الحقل وقيمة الحقل. إذا لم تكن متأكدا من بناء جملة رمز الحقل المحدد، فقم بإنشاء الحقل في Microsoft Word أولا وقم بالتبديل لرؤية رمز الحقل الخاص به.
يقوم مثال التعليمات البرمجية التالي بإدراج حقل دمج في مستند باستخدام DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertField-DocumentBuilderInsertField.java" >}}

## إدخال حقل `Form`

حقول النموذج هي حالة معينة من حقول الكلمات التي تسمح "بالتفاعل" مع المستخدم. تتضمن حقول النموذج في Microsoft Word مربع نص و Combobox و checkbox.DocumentBuilder يوفر طرقا خاصة لإدراج كل نوع من حقول النموذج في المستند: [DocumentBuilder.insertTextInput](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTextInput-java.lang.String-int-java.lang.String-java.lang.String-int) و [DocumentBuilder.insertCheckBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-boolean-int) و [DocumentBuilder.insertComboBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertComboBox-java.lang.String-java.lang.String---int). لاحظ أنه إذا قمت بتحديد اسم لحقل النموذج، فسيتم إنشاء إشارة مرجعية تلقائيا بنفس الاسم.

### إدخال إدخال نص

DocumentBuilder.insertTextInput لإدراج مربع نص في المستند. يوضح مثال التعليمات البرمجية التالية كيفية إدراج حقل نموذج إدخال نص في مستند.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTextInputFormField-DocumentBuilderInsertTextInputFormField.java" >}}

### إدراج `CheckBox`

اتصل DocumentBuilder.insertCheckBox لإدراج checkbox في المستند. يوضح مثال التعليمات البرمجية التالية كيفية إدراج حقل نموذج checkbox في مستند.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertCheckBoxFormField-DocumentBuilderInsertCheckBoxFormField.java" >}}

### إدراج مربع التحرير والسرد

اتصل DocumentBuilder.insertComboBox لإدراج مربع التحرير والسرد في المستند. يوضح مثال التعليمات البرمجية التالية كيفية إدراج حقل نموذج مربع التحرير والسرد في مستند.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertComboBoxFormField-DocumentBuilderInsertComboBoxFormField.java" >}}

## إدراج اللغة على المستوى الميداني

يمكن للعملاء تحديد اللغة على المستوى الميداني الآن ويمكنهم تحقيق تحكم أفضل. يمكن ربط معرفات اللغة مع كل حقل داخل DocumentBuilder. توضح الأمثلة أدناه كيفية الاستفادة من هذا الخيار.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.java" >}}

## إدراج HTML

يمكنك بسهولة إدراج سلسلة HTML تحتوي على جزء HTML أو مستند HTML كامل في مستند الكلمة. مجرد تمرير هذه السلسلة إلى DocumentBuilder.طريقة insertHtml. أحد التطبيقات المفيدة للطريقة هو تخزين سلسلة HTML في قاعدة بيانات وإدراجها في المستند أثناء Mail Merge لإضافة المحتوى المنسق بدلا من بنائه باستخدام طرق مختلفة لمنشئ المستندات. يوضح مثال الكود التالي الإدخالات HTML في مستند باستخدام DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHtml-DocumentBuilderInsertHtml.java" >}}

## إدراج ارتباط تشعبي

استخدم DocumentBuilder.insertHyperlink لإدراج ارتباط تشعبي في المستند. تقبل هذه الطريقة ثلاث معلمات: نص الرابط المراد عرضه في المستند، ووجهة الارتباط (URL أو اسم إشارة مرجعية داخل المستند)، ومعلمة منطقية يجب أن تكون صحيحة إذا كان `URL` هو اسم إشارة مرجعية داخل المستند.DocumentBuilder.insertHyperlink يدعو داخليا DocumentBuilder.insertField. تضيف الطريقة دائما الفواصل العليا في بداية ونهاية URL. لاحظ أنك تحتاج إلى تحديد تنسيق الخط لنص عرض الارتباط التشعبي بشكل صريح باستخدام خاصية `Font`. يقوم مثال التعليمات البرمجية التالي بإدراج ارتباط تشعبي في مستند باستخدام DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHyperlink-DocumentBuilderInsertHyperlink.java" >}}

## إدراج جدول المحتويات

يمكنك إدراج حقل `TOC` (جدول المحتويات) في المستند في الموضع الحالي عن طريق استدعاء طريقة [DocumentBuilder.insertTableOfContents](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTableOfContents-java.lang.String). ال DocumentBuilder.طريقة insertTableOfContents ستدرج فقط حقل `TOC` في المستند. من أجل بناء جدول المحتويات وعرضها وفقا لأرقام الصفحات، يجب استدعاء كل من طريقة **Document.UpdateFields**بعد إدراج الحقل. يوضح مثال التعليمات البرمجية التالية كيفية إدراج حقل جدول محتويات في مستند.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTableOfContents-DocumentBuilderInsertTableOfContents.java" >}}

## إدراج Ole كائن

إذا كنت تريد Ole استدعاء الكائن [DocumentBuilder.insertOleObjectAsIcon](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObjectAsIcon-java.lang.String-boolean-java.lang.String-java.lang.String).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertOleObject-DocumentBuilderInsertOleObject.java" >}}

## تعيين اسم الملف والامتداد عند إدراج Ole كائن

حزمة OLE هي طريقة قديمة و" غير موثقة " لتخزين الكائنات المضمنة إذا كان معالج OLE غير معروف. في وقت مبكر Windows إصدارات مثل Windows 3.1, 95 و 98 كان Packager.exe التطبيق الذي يمكن استخدامه لتضمين أي نوع من البيانات في المستند. الآن، يتم استبعاد هذا التطبيق من Windows ولكن MS كلمة وغيرها من التطبيقات لا تزال تستخدم لتضمين البيانات إذا كان معالج OLE مفقود أو غير معروف. OlePackage الطبقة يسمح بالوصول OLE Package الخصائص.يوضح مثال الكود التالي كيفية تعيين اسم الملف والملحق واسم العرض لـ OLE Package.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.java" >}}

## الحصول على OLE كائن البيانات الخام

يوضح مثال التعليمات البرمجية التالية كيفية الحصول على OLE كائن البيانات الخام باستخدام طريقة `OleFormat.GetRawData` ().

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.java" >}}

## أدخل قاعدة أفقية في المستند

يوضح مثال التعليمات البرمجية التالية كيفية إدراج شكل القاعدة الأفقية في مستند باستخدام طريقة `DocumentBuilder.InsertHorizontalRule`.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.java" >}}

## العمل مع الأشكال

### إدراج الأشكال المضمنة والعائمة الحرة

يمكنك إدراج شكل مضمن بنوع وحجم محددين وشكل عائم حر مع الموضع والحجم ونوع التفاف النص المحدد في مستند باستخدام طريقة `DocumentBuilder.InsertShape`. تسمح طريقة `DocumentBuilder.InsertShape` بإدراج DML الشكل في نموذج المستند. يجب حفظ المستند بالتنسيق، الذي يدعم DML الأشكال، وإلا سيتم تحويل هذه العقد إلى VML الشكل، أثناء حفظ المستند. يوضح مثال التعليمات البرمجية التالية كيفية إدراج هذه الأنواع من الأشكال في المستند.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.java" >}}

### إنشاء قصاصة الزاوية المستطيل

يمكنك إنشاء مستطيل زاوية قصاصة باستخدام Aspose.Words. أنواع الأشكال هي SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded, و DiagonalCornersRounded. يتم إنشاء الشكل DML باستخدام طريقة `DocumentBuilder.InsertShape` مع أنواع الأشكال هذه. لا يمكن استخدام هذه الأنواع لإنشاء VML الأشكال. محاولة إنشاء شكل باستخدام المنشئ العام لفئة" الشكل "يثير الاستثناء" NotSupportedException". يوضح مثال التعليمات البرمجية التالية كيفية إدراج هذه الأنواع من الأشكال في المستند.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-AddCornersSnipped.java" >}}

### استيراد الأشكال مع الرياضيات XML كأشكال إلى DOM

يمكنك استخدام خاصية `LoadOptions.ConvertShapeToOfficeMath` لتحويل الأشكال باستخدام EquationXML إلى كائنات الرياضيات المكتبية. القيمة الافتراضية لهذه الخاصية يتوافق مع MS سلوك كلمة أي الأشكال مع المعادلة XML لا يتم تحويلها إلى كائنات الرياضيات المكتبية.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-ConvertShapeToOfficeMath.java" >}}
