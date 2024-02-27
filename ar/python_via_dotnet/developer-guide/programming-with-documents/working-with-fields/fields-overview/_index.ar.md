---
title: نظرة عامة على الحقول في Python
second_title: Aspose.Words لـ Python via .NET
articleTitle: نظرة عامة على الحقول
linktitle: نظرة عامة على الحقول
description: "يمكنك الوصول إلى تعديل الحقول باستخدام Python. يتم تحميل حقول المستند في Aspose.Words Document Object Model (DOM)."
type: docs
weight: 10
url: /ar/python-net/fields-overview/
---


عادةً ما يحتوي الحقل، عند إدراجه في Microsoft Word، على قيمة محدثة بالفعل. على سبيل المثال، إذا كان الحقل عبارة عن صيغة أو رقم صفحة، فسوف يحتوي على قيمة محسوبة صحيحة للإصدار المحدد من المستند. ولكن إذا كان لديك تطبيق يقوم بإنشاء أو تعديل مستند يحتوي على حقول (على سبيل المثال، يجمع مستندين أو يملأ بالبيانات) لكي يكون المستند مفيدًا، يجب تحديث جميع الحقول بشكل مثالي.

يتكون الحقل من:

![fields-aspose-words](/words/python-net/fields-overview/fields-overview-1.png)

- يتم استخدام بداية الحقل والعقد الفاصلة لتشمل المحتوى الذي يشكل رمز الحقل (عادة كنص عادي)
- يشمل فاصل الحقل ونهاية الحقل نتيجة الحقل. يمكن أن يتكون هذا من أنواع مختلفة من المحتوى تتراوح من النصوص إلى الفقرات إلى الجداول.
- قد لا تحتوي بعض الحقول على فاصل مما يعني أن المحتوى بأكمله يشكل رمز الحقل.
- يحدد رمز الحقل سلوك الحقل ويتكون من معرف الحقل وغالبًا ما تكون معلمات أخرى مثل اسم الحقل والمفاتيح.
- تحتوي النتيجة الميدانية على أحدث تقييم للمجال. يتم تخزين هذه القيمة في النتيجة الميدانية وهي ما يتم عرضه للمستخدم. قد لا تحتوي بعض الحقول على أي نتيجة ميدانية وبالتالي لن يتم عرض أي شيء في المستند. وبالمثل، قد لا يتم تحديث بعض الحقول بعد، وبالتالي لن يكون لها أيضًا نتيجة ميدانية.

فيما يلي عرض لكيفية تخزين الحقل في Aspose.Words باستخدام مثال "*DocumentExplorer"* الذي يمكن العثور عليه في [جيثب](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples/DocumentExplorer).

![document-explorer-aspose-words](/words/python-net/fields-overview/fields-overview-2.png)

Aspose.Words هي مكتبة فئة مصممة لمعالجة مستندات Microsoft Word من جانب الخادم وتدعم الحقول بالطرق التالية:

- يتم الاحتفاظ بجميع الحقول الموجودة في المستند أثناء الفتح/الحفظ والتحويلات.
- من الممكن تحديث نتائج بعض المجالات الأكثر شعبية.

## الحقول في Microsoft Word

الحقول في مستندات Microsoft Word معقدة. يوجد أكثر من 50 نوعًا من الحقول (يحتاج كل منها إلى إجراء حساب النتائج الخاص به)، والصيغ والتعبيرات، والإشارات المرجعية والمراجع، والوظائف والمفاتيح المتنوعة. يمكن أيضًا أن تكون الحقول متداخلة. عادةً، عند فتح مستند، تظهر نتيجة الحقل (قيمة الحقل) لجميع الحقول الموجودة في المستند. يمكنك تبديل عرض نتيجة الحقل أو رموز الحقول في Microsoft Word لجميع الحقول بالضغط على **البديل+F9**.

| كود الحقل | النتيجة الميدانية |
|  :-  |  :-  |
| ![field-code-result-aspose-words](/words/python-net/fields-overview/fields-overview-3.png) | ![todo:image_alt_text](/words/python-net/fields-overview/fields-overview-4.png) |

### إدراج الحقول في Microsoft Word

لإدراج حقل في Microsoft Word:

1. انقر على قائمة **Insert**.
1. انقر على القائمة المنسدلة **Quick Parts**
1. حدد **Field**
1. تظهر لك شاشة تسمح لك بإدخال تفاصيل الحقل. على الجانب الأيسر، يتم إعطاؤك قائمة بالحقول المحتملة، وعلى الجانب الأيمن توجد شاشة لتحرير خصائص الحقل بشكل مرئي.<br>
![field-edit-aspose-words](/words/python-net/fields-overview/fields-overview-5.png)
1. بالإضافة إلى ذلك، يمكنك الضغط على زر **Field Codes** الذي يسمح لك بكتابة رمز الحقل مباشرةً.<br>
![field-properties-aspose-words](/words/python-net/fields-overview/fields-overview-6.png)
1. يمكن أيضًا إدراج المفاتيح باستخدام زر **Options**<br>
![field-options-aspose-words](/words/python-net/fields-overview/fields-overview-7.png)
1. باستخدام أي من الطريقتين، املأ الحقول المطلوبة بالمعلومات المناسبة ثم اضغط على **Ok**.
1. يتم إدراج الحقل في المستند في موضع المؤشر الحالي.<br>
![insert-field-aspose-words](/words/python-net/fields-overview/fields-overview-8.png)

### تحديث الحقول في Microsoft Word

لتحديث حقل واحد في Microsoft Word:

1. انقل علامة الإقحام إلى الحقل الذي تريد تحديثه.
1. اضغط على **F9** لتحديث الحقل.

لتحديث جميع الحقول في Microsoft Word:

1. اضغط على **السيطرة + أ** لتحديد كل المحتوى الموجود في المستند.
1. اضغط على **F9** لتحديث جميع الحقول الموجودة ضمن التحديد.

### التبديل بين عرض رمز الحقل والنتيجة الميدانية

لتبديل رموز الحقول لحقل واحد في Microsoft Word:

1. حرك علامة الإقحام إلى الحقل المطلوب.
1. اضغط على **إزاحة+F9** لتبديل رمز الحقل لهذا الحقل فقط.

لتبديل رموز الحقول لجميع الحقول في Microsoft Word:

1. اضغط على **البديل+F9**

### تحويل الحقول إلى نص ثابت في Microsoft Word

لتحويل حقل ديناميكي إلى نص ثابت في Microsoft Word:

1. انقل علامة الإقحام إلى الحقل الذي تريد تحويله.
1. اضغط على **السيطرة + التحول + F9** لتحويل الحقول إلى نص ثابت.

### إزالة حقل في Microsoft Word

لإزالة حقل في Microsoft Word:

1. حدد المحتوى بأكمله الذي يتكون منه الحقل. إذا تم عرض رموز الحقول، فيجب تحديد قوسي الفتح والنهاية أيضًا.
1. اضغط على **Delete** لإزالة الحقل بأكمله.

## الحقول في Aspose.Words

عندما يتم تحميل مستند في Aspose.Words، يتم تحميل حقول المستند في Aspose.Words Document Object Model كمجموعة من المكونات المنفصلة (العقد). يتم تحميل حقل واحد كمجموعة من عقد [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) و[FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) و[FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) بالإضافة إلى المحتوى الموجود بين هذه العقد. إذا لم يكن للحقل نتيجة حقل، فلن تكون هناك عقدة [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/). يتم دائمًا العثور على كل هذه العقد مضمنة (مثل أبناء [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) أو [SmartTag](https://reference.aspose.com/words/python-net/aspose.words.markup/smarttag/).

يتم تخزين المحتوى الذي يشكل رمز الحقل كعقد [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) بين [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) و[FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/). يتم تخزين نتيجة الحقل بين عقدتي [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) و[FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) ويمكن أن تتكون من أنواع مختلفة من المحتوى. عادةً ما تحتوي نتيجة الحقل على نص مكون من عقد [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) فقط، ومع ذلك فمن الممكن أن تكون عقدة [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) موجودة في فقرة مختلفة تمامًا، وبالتالي تجعل نتيجة الحقل مكونة من عقد على مستوى الكتلة مثل عقد [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) و[Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) أيضًا.

في Aspose.Words، كل عقدة من عقد **FieldXXX** مشتقة من [FieldChar](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/). توفر هذه الفئة خاصية للتحقق من نوع الحقل الذي تمثله العقدة المحددة من خلال خاصية [FieldChar.field_type](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/field_type/). على سبيل المثال، يمثل [FieldType.FIELD_MERGE_FIELD](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtype/#field_merge_field) حقل دمج في المستند.

{{% alert color="primary" %}}

هناك بعض الحقول المحددة الموجودة في مستند Word والتي لم يتم استيرادها إلى Aspose.Words كمجموعة من عقد **FieldXXX**. على سبيل المثال، يتم استيراد حقل `LINK` وحقل `INCLUDEPICTURE` إلى Aspose.Words ككائن [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/). يوفر هذا الكائن خصائص للعمل مع بيانات الصورة المخزنة عادةً في هذه الحقول.

يتم أيضًا استيراد حقول النموذج إلى Aspose.Words كفئة خاصة بها. تمثل فئة [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) حقل نموذج في مستند Word وتوفر طرقًا إضافية خاصة بحقل النموذج.

{{% /alert %}}

### الحقول المدعومة أثناء التحديث

يتم دعم حساب الحقول التالية في الإصدار الحالي من Aspose.Words:

- = (حقل الصيغة)
- `ADDRESSBLOCK`
- `AUTHOR`
- `COMPARE`
- `CREATEDATE`
- `DATE`
- `DOCPROPERTY`
- `DOCVARIABLE`
- `GREETINGLINE`
- `IF`
- `INCLUDETEXT`
- `MERGEFIELD`
- `MERGEREC`
- `MERGESEQ`
- `NEXT`
- `NEXTIF`
- `NUMPAGES`
- `PAGE`
- `PAGEREF`
- `REF`
- `SECTION`
- `SECTIONPAGES`
- `SEQ`
- `SET`
- `STYLEREF`
- `TIME`
- `TITLE`
- `TOA`
- `TOC` (بما في ذلك TOT وTOF)
- ح

### تحليل متطور

يتبع Aspose.Words الطريقة التي يعالج بها Microsoft Word الحقول ونتيجة لذلك فإنه يتعامل بشكل صحيح مع:

- الحقول المتداخلة
  `: IF { =OR({ COMPARE { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- يمكن أن تكون حجة الحقل نتيجة لحقل متداخل.
- يمكن أن تكون الحقول متداخلة داخل رمز الحقل وكذلك في نتيجة الحقل.
- مسافات/بدون مسافات، علامات الاقتباس/بدون علامات الاقتباس، أحرف الهروب في الحقول وما إلى ذلك:
  `MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- الحقول التي تمتد عبر فقرات متعددة.

#### حقول الصيغة

يوفر Aspose.Words تطبيقًا جديًا للغاية لمحرك الصيغة ويدعم ما يلي:

- العوامل الحسابية والمنطقية:
  `=(54+4*(6-77)-(5))+(-6-5)/4/5`
- المهام:
  `=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- المراجع إلى الإشارات المرجعية:
  `=IF(C>4, 5,ABS(A)*.76) +3.85`
- مفاتيح تنسيق الأرقام:
  `=00000000 \\\# "$#,##0.00;($#,##0.00)"`

يتم دعم الوظائف التالية في التعبيرات: `ABS`، `AND`، `AVERAGE`، `COUNT`، `DEFINED`، `FALSE`، `IF`، `INT`، `MAX`، `MIN`، `MOD`، `NOT`، `OR`، `PRODUCT`، `ROUND`، `SIGN`، `SUM`، TRUE.

#### حقول `IF` و`COMPARE`

فقط بعض تعبيرات `IF` التي يمكن لـ Aspose.Words حسابها بسهولة يجب أن تعطيك فكرة عن مدى قوة هذه الميزة:

- `IF 3 > 5.7^4+MAX(4,3) True False`
- `IF "abcd" > "abc" True False`
- `IF "?ab*" = "1abdsg" True False`
- `IF 4 = "2*2" True False`
- `COMPARE 3+5/34 < 4.6/3/2`

#### حقول `DATE` و`TIME`

يدعم Aspose.Words جميع مفاتيح تنسيق التاريخ والوقت المتوفرة في Microsoft Word، بعض الأمثلة هي:

- `DATE @ "d-MMM-yy"`
- `DATE @ "d/MM/yyyy h:mm am/pm`

#### حقول Mail Merge

لا يفرض Aspose.Words أي حد على مدى تعقيد حقول mail merge في مستنداتك ويدعم `IF` المتداخلة وحقول الصيغة ويمكنه أيضًا حساب اسم حقل الدمج باستخدام صيغة.

بعض الأمثلة على حقول mail merge التي يدعمها Aspose.Words:

- مفاتيح حقل Mail merge:
  `MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- حقول الدمج المتداخلة في الصيغة:
  `IF { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } True False`
- احسب اسم حقل الدمج في وقت التشغيل:
  `MERGEFIELD { `IF` { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } FirstName"LastName" }`
- الانتقال الشرطي إلى السجل التالي في مصدر البيانات:
  `NEXTIF { `MERGEFIELD` Value1 } <= { =IF(-2.45 >= 6*{ `MERGEFIELD` Value2 }, 2, -.45) }`

#### مفاتيح التنسيق

يمكن أن يحتوي الحقل الموجود في المستند على مفاتيح تنسيق تحدد كيفية تنسيق القيمة الناتجة. يدعم Aspose.Words مفاتيح التنسيق التالية:

- @ - تنسيق التاريخ والوقت
- \\\# - تنسيق الأرقام
- \\\\\\\\* قبعات
- \\\\\\\\* فيرست كاب
- \\\\\\\\* أدنى
- \\\\\\\\* العلوي
- \\\\\\\\* CHARFORMAT - تنسيق النتيجة وفقًا للحرف الأول من رمز الحقل.
- \\\\\\\\* MERGEFORMAT - تنسيق النتيجة وفقًا لكيفية تنسيق النتيجة القديمة.

#### Date وتنسيق الأرقام في الحقول

عندما يحسب Aspose.Words نتيجة حقل، فإنه غالبًا ما يحتاج إلى تحليل سلسلة إلى قيمة رقم أو تاريخ وأيضًا تنسيقها مرة أخرى إلى سلسلة. بشكل افتراضي، يستخدم Aspose.Words ثقافة مؤشر الترابط الحالية لإجراء التحليل والتنسيق عند حساب قيم الحقل أثناء تحديث الحقل و mail merge. هناك أيضًا خيارات متوفرة في شكل فئة [FieldOptions](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldoptions/) والتي تسمح بمزيد من التحكم في الثقافة المستخدمة أثناء التحديث الميداني.

- افتراضيًا، يتم تعيين خاصية [FieldOptions.field_update_culture_source](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldoptions/field_update_culture_source/) على [FieldUpdateCultureSource.CURRENT_THREAD](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldupdateculturesource/#current_thread) والتي تقوم بتنسيق الحقول باستخدام ثقافة مؤشر الترابط الحالية.
- يمكن تعيين هذه الخاصية على [FieldUpdateCultureSource.FIELD_CODE](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldupdateculturesource/#field_code) بحيث يتم استخدام اللغة المحددة من رمز الحقل الخاص بالحقل للتنسيق بدلاً من ذلك.

#### التنسيق باستخدام ثقافة الموضوع الحالي

للتحكم في الثقافة المستخدمة أثناء حساب الحقل، ما عليك سوى استخدام طريقة **locale.setlocale** لتعيين الثقافة التي تختارها قبل استدعاء حساب الحقل.
يوضح المثال أدناه كيفية تغيير الثقافة المستخدمة في تنسيق الحقول أثناء التحديث.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ChangeLocale.py" >}}

يتيح استخدام الثقافة الحالية لتنسيق الحقول للنظام إمكانية التحكم بسهولة وبشكل متسق في كيفية تنسيق جميع الحقول في المستند أثناء التحديث الميداني.

#### التنسيق باستخدام الثقافة في المستند

من ناحية أخرى، يقوم Microsoft Word بتنسيق كل حقل فردي بناءً على لغة النص الموجود في الحقل (على وجه التحديد، الامتدادات من رمز الحقل). في بعض الأحيان أثناء تحديث الحقل، قد يكون هذا هو السلوك المرغوب، على سبيل المثال، إذا كان لديك مستندات معممة تحتوي على محتوى يتكون من العديد من اللغات المختلفة وترغب في أن يحترم كل حقل اللغة المستخدمة من النص. يدعم Aspose.Words أيضًا هذه الوظيفة.

توفر فئة [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) خاصية [field_options](https://reference.aspose.com/words/python-net/aspose.words/document/field_options/) التي تحتوي على أعضاء يمكن استخدامها للتحكم في كيفية تحديث الحقول داخل المستند. يوضح المثال أدناه كيفية تحديد المكان الذي يتم فيه اختيار الثقافة المستخدمة لتنسيق التاريخ أثناء التحديث الميداني وmail merge.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ChangeFieldUpdateCultureSource.py" >}}

## العثور على رمز الحقل والنتيجة الميدانية

الحقل الذي يتم إدراجه باستخدام [DocumentBuilder.insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) يُرجع كائن [Field](https://reference.aspose.com/words/python-net/aspose.words.fields/field/). هذه فئة الواجهة التي توفر طرقًا مفيدة للعثور بسرعة على مثل هذه الخصائص للحقل. لاحظ أنه إذا كنت تبحث فقط عن أسماء حقول الدمج في المستند، فيمكنك بدلاً من ذلك استخدام الطريقة المضمنة [MailMerge.get_field_names](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_field_names/). يوضح المثال أدناه كيفية الحصول على أسماء كافة حقول الدمج في مستند.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-GetFieldNames.py" >}}

## كيفية إعادة تسمية حقول الدمج

يوضح المثال أدناه كيفية إعادة تسمية حقول الدمج في مستند Word.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-RenameMergeFields.py" >}}
