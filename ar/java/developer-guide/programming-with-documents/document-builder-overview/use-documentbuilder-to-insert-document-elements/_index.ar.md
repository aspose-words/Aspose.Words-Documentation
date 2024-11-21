---
title: الاستخدام `DocumentBuilder` إلى العناصر الواردة في الوثيقة
second_title: Aspose.Words for Java
articleTitle: الاستخدام `DocumentBuilder` إلى العناصر الواردة في الوثيقة
linktitle: الاستخدام `DocumentBuilder` إلى العناصر الواردة في الوثيقة
type: docs
description: "إدراج عناصر الوثائق باستخدام مبني الوثائق Java."
weight: 10
url: /ar/java/use-documentbuilder-to-insert-document-elements/
timestamp: 2024-01-27-14-07-04
---

The [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) يُستخدم لتعديل الوثائق. وتشرح هذه المادة وتصف كيفية أداء عدد من المهام.

## وضع مجموعة من النصوص

ببساطة تمرر سلسلة النصوص التي تحتاج إلى إدخالها في الوثيقة إلى [DocumentBuilder.write](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#write(java.lang.String)طريقة يُحدَّد إعداد النصوص بواسطة `Font` ملكية ويحتوي هذا الجسم على خصائص مختلفة (الاسم العنيف، وحجم الفونت، واللون، وما إلى ذلك). Some important font attributes are also represented by [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) العقارات للسماح لك بالدخول مباشرة هذه ممتلكات بوليان [Font.getBold](https://reference.aspose.com/words/java/com.aspose.words/font/#getBold), [Font.getItalic](https://reference.aspose.com/words/java/com.aspose.words/font/#getItalic), و [Font.getUnderline](https://reference.aspose.com/words/java/com.aspose.words/font/#getUnderline).

{{% alert color="primary" %}}

Note that the character formatting you seting will apply to all text inserted from the current position in the document onwards.

{{% /alert %}}

The following code example Inserts formatted text using DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WriteAndFont-WriteAndFont.java" >}}

## إدراج فقرة

وتدرج الوثيقة أيضاً سلسلة من النصوص في الوثيقة، ولكنها تضيف أيضاً استراحة فقرة. ويحدّد هيكل الوثائق الحالي أيضا. الحصول على وتُحدَّد الممتلكات الفوتوغرافية وصيغة الفقرة الحالية بممتلكات هيئة الأوراق المالية

ويبين المثال الرمزي التالي كيفية إدراج فقرة في الوثيقة.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}

## إدراج جدول

الخوارزمية الأساسية لخلق طاولة باستخدام `DocumentBuilder` بسيط:

1 شغل الطاولة باستخدام [DocumentBuilder.startTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable).
1 Insert a cell using [DocumentBuilder.insertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell). هذا يبدأ تلقائياً صف جديد عند الحاجة، استخدام [DocumentBuilder.getCellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) الممتلكات لتحديد شكل الخلايا.
1 محتويات الزنزانة باستخدام `DocumentBuilder` طرق
1 اكرر الخطين 2 و 3 حتى يكتمل الصف
1 اتصل [DocumentBuilder.endRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) لإنهاء الصف الحالي عند الحاجة، استخدام [DocumentBuilder.RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) الممتلكات لتحديد شكل الصف.
1 أكرر الخطوات 2-5 حتى تكتمل الطاولة
1 اتصل [DocumentBuilder.endTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) لإنهاء بناء الطاولة ويرد أدناه وصف لأساليب وضع جداول الوثائق المناسبة.

### بدء الجدول

استدعاء الوثائق الجدول هو الخطوة الأولى في بناء طاولة ويمكن أيضاً أن يُدعى داخل زنزانة، وفي هذه الحالة، يبدأ طاولة محروقة. الطريقة التالية للإتصال هي (وثب بويلدر)

### "إرسال خلية"

(بعد أن تتصل بـ(وثب بويلدر يدرج ما يلي: سيل، تم إنشاء خلية جديدة وأي محتوى تضيفه باستخدام أساليب أخرى `DocumentBuilder` سيضاف الفصل إلى الزنزانة الحالية لبدء زنزانة جديدة في نفس الصف، استدعاء الوثائق. يدرج ما يلي: سيل مرة أخرى. (استخدموا (الوثيقة (بويلدر Format property to specify cell formatting. إنه يعود [getCellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) الجسم الذي يمثل كل شكل لخلية طاولة

### ينتهي به المطاف

اتصل بالوثيقة انحنوا لإنهاء الصف الحالي (إذا اتصلت بـ(وثبويلدر يدرج ما يلي: الخلية بعد ذلك مباشرة، ثم يستمر الجدول على صف جديد. استخدام `DocumentBuilder.RowFormat` الممتلكات لتحديد شكل الصف. إنه يعود [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/) شيء يمثل كل شكل لصف طاولة

### نهاية الجدول

اتصل بالوثيقة طاولة لإنهاء الجدول الحالي This method should be called only once after DocumentBuilder. (إندرو) تم استدعائه (عندما اتصل (وثب بويلدر الجدول يُنقل الستار من الخلية الحالية إلى موقع بعد الطاولة مباشرة ويبيّن المثال التالي كيفية بناء جدول مهيأ يتضمن صفين وعمودين.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderBuildTable-DocumentBuilderBuildTable.java" >}}

## اكسر

إذا كنت تريد أن تبدأ صراحة خط جديد، الفقرة، العمود، الفرع، أو الصفحة، الاتصال الوثيقة. أدخل (بريك) مرر لهذه الطريقة نوع الكسر الذي تحتاجه لتضيفه `BreakType` العد
ويبين المثال الرمزي التالي كيفية إدخال الصفحات إلى وثيقة.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertBreak-DocumentBuilderInsertBreak.java" >}}

## ازرع صورة

تقدم الوثيقة عدة تحميلات زائدة [DocumentBuilder.insertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte) الطريقة التي تسمح لك بإضافة صورة خطية أو عائمة وإذا كانت الصورة هي مصفوفة من طراز EMF أو من طراز WMF، فإنها ستدرج في الوثيقة في شكل مصفوف. جميع الصور الأخرى سيتم تخزينها في شكل PNG. The DocumentBuilder.insert ويمكن أن تستخدم طريقة التصوير الصور من مصادر مختلفة:

-من ملف أو `URL` عن طريق تمرير بارامتر الخيط
- مِنْ مجرىِ عبر مرور `Stream` بارامتر
- مِنْ جسمِ ذخيرةِ بالمرور مُعْبرةِ ذرةِ
- من صفيحة طرفية عن طريق تمرير بارامتر صفيفة
- والآخرون

لكل من مكتب الوثائق يدرج ما يلي: طرق التصوير، هناك المزيد من الحمولات مما يسمح لك بإدخال صورة مع الخيارات التالية:

- خط أو عائم في موقع محدد
- النسبة المئوية للحجم أو العرف

Furthermore, the DocumentBuilder.insert طريقة التصوير تعود [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) الشيء الذي تم خلقه و إدخاله حتى تتمكن من تعديل خصائص الشيب

### Inserting an Inline Image

مرر سلسلة واحدة تمثل ملفاً يحتوي على صورة لـ(وثب بويلدر) يدرج ما يلي: تخيل أن تُدرج الصورة في الوثيقة كرسوم بيانية خطية. ويبين المثال الرمزي التالي كيفية إدخال صورة خطية في موقع الضمائر في وثيقة.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertInlineImage-DocumentBuilderInsertInlineImage.java" >}}

### Inserting a Floating (Absolutely Positioned) Image

This example inserts a floating image from a file or `URL` بموقع وحجم محددين.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertFloatingImage-DocumentBuilderInsertFloatingImage.java" >}}

## وضع علامة كتاب

ولإدراج علامة في الوثيقة، ينبغي أن تقوموا بما يلي:

1 اتصل [DocumentBuilder.startBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startBookmark-java.lang.String) نعطيه الاسم المنشود من علامة الكتاب
1 يدرج نص علامة الكتاب باستخدام `DocumentBuilder` طرق
1 اتصل [DocumentBuilder.endBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endBookmark-java.lang.String) تمريرها نفس الاسم الذي استخدمته مع (وثبويلدر)

ويمكن للعلامات الكتابية أن تتداخل وتمتد على أي نطاق. لخلق معلومة كتابية صحيحة يجب أن تدعوا كل من (وثبويلدر) و (وثبلوكمارك) و (أود بوكمارك)

وسوف يتم تجاهل العلامات الكتابية البشعة أو العلامات الدفترية ذات الأسماء المزدوجة عندما يتم حفظ الوثيقة.

ويبيّن المثال الرمزي التالي كيفية إدراج علامة كتاب في وثيقة تستخدم مبني وثائق.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertBookmark-DocumentBuilderInsertBookmark.java" >}}

## إدخال حقل

الحقول في Microsoft Word وتتألف الوثائق من مدونة ميدانية ونتيجة ميدانية. الرمز الميداني مثل صيغة والنتيجة الميدانية هي القيمة التي تنتجها الصيغة ويمكن أن تتضمن المدونة الميدانية أيضا مفاتيح تحويل ميدانية هي تعليمات إضافية للقيام بعمل محدد. يمكنك التحول بين عرض الرموز الميدانية والنتائج في وثيقتك Microsoft Word (أ) تُظهر الرموز الميدانية بين حمالات العجلات (ألت + واو-9) { } ) [DocumentBuilder.insertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) إنشاء ميادين في الوثيقة. عليك تحديد نوع ميداني، رمز ميداني وقيمة ميدانية إن لم تكن واثقاً بشأن (سينتاكس) المُحدد، فخلق الحقل Microsoft Word أولاً وبدلاً لرؤية رمزها الميداني
The following code example inserts a merge field into a document using DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertField-DocumentBuilderInsertField.java" >}}

## قذف `Form` الميدان

حقول الاستمارة هي حالة معينة من حقول الكلمات التي تسمح "التفاعل" مع المستخدم. حقول الاستمارة Microsoft Word تشمل صندوق النص، صندوق كومبو بوكس، وجهاز تحقق. وتوفِّر الوثيقة طرائق خاصة لإدراج كل نوع من مجالات الشكل في الوثيقة: [DocumentBuilder.insertTextInput](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTextInput-java.lang.String-int-java.lang.String-java.lang.String-int) .. [DocumentBuilder.insertCheckBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-boolean-int), و [DocumentBuilder.insertComboBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertComboBox-java.lang.String-java.lang.String---int). ملاحظة أنه إذا حددتم اسماً لميدان الاستمارة، فإن علامة كتابية تُنشأ تلقائياً بنفس الاسم.

### Inserting a Text Input

DocumentBuilder.insertTextInput to insert a textbox into the document. ويبيّن المثال الرمزي التالي كيفية إدراج شكل مدخلات نصية في وثيقة ما.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTextInputFormField-DocumentBuilderInsertTextInputFormField.java" >}}

### قذف `CheckBox`

اتصل بـ(وثب بويلدر) تأكّدْ بوكس لإدْراج a صندوق شيك إلى الوثيقةِ. ويبيّن المثال الرمزي التالي كيفية إدراج حقل نموذجي في وثيقة.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertCheckBoxFormField-DocumentBuilderInsertCheckBoxFormField.java" >}}

### اضافة صندوق كومبو

اتصل بـ(وثب بويلدر)ComboBox لإدراج صندوق مدمج في الوثيقة ويوضح المثال الرمزي التالي كيفية إدراج حقل في شكل صندوق كومبو في وثيقة.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertComboBoxFormField-DocumentBuilderInsertComboBoxFormField.java" >}}

## Inserting Locale at Field Level

يمكن أن يحدد الزبائن محلية على المستوى الميداني الآن ويمكنها تحقيق سيطرة أفضل. المحلية يمكن ربط الأقراص بكل حقل داخل مبنى الوثائق وتوضح الأمثلة الواردة أدناه كيفية الاستفادة من هذا الخيار.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.java" >}}

## Inserting HTML

يُمكنك بسهولة أن تُدرِج خِطّة "إتش تي إل" تحتوي على شظية "إتش تي إل" أو وثيقة "إتش تي إل" كاملة في الوثيقة فقط مرر هذه الخيطه إلى "الوثيقة" يدرج ما يلي: طريقة هتمل ومن بين التنفيذات المفيدة لهذه الطريقة تخزين سلسلة HTML في قاعدة بيانات وإدخالها في الوثيقة أثناءها mail merge للحصول على المحتوى الشكلي مضافاً بدلاً من بناءه باستخدام مختلف أساليب بناء الوثائق. The following code example shows inserts HTML into a document using DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHtml-DocumentBuilderInsertHtml.java" >}}

## "إرسال "هايبرلينك

Use DocumentBuilder.insertHyperlink to insert a hyperlink into the document. This method accepts three parameters: text of the link to be displayed in the document, link destination (URL or a name of a bookmark inside the document), and a boolean parameter that should be true إذا `URL` هو اسم علامة كتاب داخل الوثيقة. (وثب بويلدر) يُدعى (هايبرلينك) داخلياً (وثب بويلدر) The method always adds trophes at the beginning and end of the URL. ملاحظة أن عليك أن تحدد الشكل الخطي لنص عرض الوصلة الفائقة `Font` ملكية The following code example inserts a hyperlink into a document using DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHyperlink-DocumentBuilderInsertHyperlink.java" >}}

## إدراج جدول المحتويات

يمكنك إدخال `TOC` (جدول المحتويات) الحقل في الوثيقة في الموقع الحالي بدعوة [DocumentBuilder.insertTableOfContents](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTableOfContents-java.lang.String) طريقة The DocumentBuilder.insertTableOfContents method will only insert a `TOC` الحق في الوثيقة. من أجل بناء طاولة المحتويات وعرضها حسب عدد الصفحات **Document.UpdateFields**ويجب أن تُستدعى الطريقة بعد إدخال الحقل. ويبيّن المثال الرمزي التالي كيفية إدراج جدول للمجال في وثيقة ما.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTableOfContents-DocumentBuilderInsertTableOfContents.java" >}}

## الهدف الأول

إذا كنت تريد Ole Object call [DocumentBuilder.insertOleObjectAsIcon](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObjectAsIcon-java.lang.String-boolean-java.lang.String-java.lang.String).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertOleObject-DocumentBuilderInsertOleObject.java" >}}

## تحديد اسم الملف وتمديده عند إدراج موضوع أولي

حزمة الـ(أولي) هي إرث وطريقة "غير موثقة" لتخزين الأشياء المدمجة إذا كان (أولي) غير معروف مرحلة مبكرة Windows صيغ مثل Windows 3.1, 95 and 98 had Packager. تطبيق يمكن استخدامه لإدراج أي نوع من البيانات في الوثيقة. الآن، هذا الطلب مستبعد من Windows لكن (إم إس وورد) والتطبيقات الأخرى ما زالت تستخدمها لتصنيف البيانات إذا كان معالج (أولي) مفقوداً أو غير معروف الطبقة الراقية تسمح بالوصول إلى خواص التعبئة The following code example shows how to set the file name, extension and display name for OLE Package.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.java" >}}

## الحصول على الوصول إلى بيانات الجسم OLE

المثال الرمزي التالي يُظهر كيف يُصبحُ OLE بيانات أولية مستعملة `OleFormat.GetRawData`() الطريقة.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.java" >}}

## Insert Horizontal القاعدة في الوثيقة

ويبين المثال الرمزي التالي كيفية إدخال شكل القواعد الأفقية في وثيقة تستخدم `DocumentBuilder.InsertHorizontalRule` طريقة

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.java" >}}

## العمل مع شابيس

### Inserting Inline and Free-floating Shapes

يمكنك أن تدرج شكلاً خطياً مع نوع وحجم محددين وشكلاً مجانياً مع الموقع المحدد وحجم وغطاء النص في وثيقة تستخدم `DocumentBuilder.InsertShape` طريقة The `DocumentBuilder.InsertShape` ويسمح هذا الأسلوب بإدخال شكل DML في نموذج الوثيقة. The document must be save in the format, which support DML shapes, otherwise such nodes will be converted to VML shape, while documentving. ويبين المثال الرمزي التالي كيفية إدراج هذه الأنواع من الأشكال في الوثيقة.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.java" >}}

### Create Snip Corner Rectangle

يُمْكِنُ أَنْ تَجْعلَ a تنازل زاويةِ مِنْ خلال Aspose.Words. (الشكل هو (فردكورنر سنيبل (توبكورنر) مُخزّر، (دياغونال كورنر) مُخدّر، (توبكورنرسون) واحد مُقَرَّب، واحد مُنْزَعُ، مُجَرَّد، مُتَجَرَّدُ مُتَوَقَّدَ، وضَعَةَ دياغونالCorners. The DML shape is created using `DocumentBuilder.InsertShape` طريقة بهذه الأشكال ولا يمكن استخدام هذه الأنواع لخلق أشكال العنف ضد المرأة. محاولة لخلق شكل من خلال استخدام المبني العام لفئة "الشاب" يرفع استثناء "الإستعراض غير المُناسب" ويبين المثال الرمزي التالي كيفية إدراج هذه الأنواع من الأشكال في الوثيقة.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-AddCornersSnipped.java" >}}

### سلاسل استيراد مع ماث إكس إم إل في DOM

يمكنك استخدام `LoadOptions.ConvertShapeToOfficeMath` الممتلكات لتحويل الأشكال مع المعادل XML إلى أشياء الرياضيات المكتبية. وتقابل القيمة الافتراضية لهذه الممتلكات سلوكاً من نوع MS Word i.e. shapes with equation XML لا تُحوَّل إلى أغراض الرياضيات في المكتب.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-ConvertShapeToOfficeMath.java" >}}
