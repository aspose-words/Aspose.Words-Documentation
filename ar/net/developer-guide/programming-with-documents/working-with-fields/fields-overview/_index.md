---
title: نظرة عامة على الحقول في C#
second_title: Aspose.Words لـ .NET
articleTitle: نظرة عامة على الحقول
linktitle: نظرة عامة على الحقول
description: "تتميز الحقول بالتفاصيل ورموز الحقول والنتائج الميدانية الموضحة في Aspose.Words لـ .NET."
type: docs
weight: 10
url: /ar/net/fields-overview/
---

Aspose.Words هي مكتبة فئة مصممة لمعالجة مستندات Microsoft Word من جانب الخادم وتدعم الحقول بالطرق التالية:

- يتم الاحتفاظ بجميع الحقول الموجودة في المستند أثناء الفتح/الحفظ والتحويلات
- إمكانية تحديث نتائج معظم المجالات

سنتعرف في هذه المقالة على المزيد حول بنية الحقل والحقول المدعومة في Aspose.Words وتفاصيل العمل بهذه الحقول.

## الهيكل الميداني

يتكون الحقل من:

- يتم استخدام بداية الحقل والعقد الفاصلة لتشمل المحتوى الذي يشكل رمز الحقل (عادة كنص عادي).
- يشمل فاصل الحقل ونهاية الحقل نتيجة الحقل. يمكن أن يتكون هذا من أنواع مختلفة من المحتوى تتراوح من النصوص إلى الفقرات إلى الجداول.
- قد لا تحتوي بعض الحقول على فاصل مما يعني أن المحتوى بأكمله يشكل رمز الحقل.
- يحدد رمز الحقل سلوك الحقل ويتكون من معرف الحقل وغالبًا ما تكون معلمات أخرى مثل اسم الحقل والمفاتيح.
- تحتوي النتيجة الميدانية على أحدث تقييم للمجال. يتم تخزين هذه القيمة في النتيجة الميدانية وهي ما يتم عرضه للمستخدم. قد لا تحتوي بعض الحقول على أي نتيجة ميدانية وبالتالي لن يتم عرض أي شيء في المستند. وبالمثل، قد لا يتم تحديث بعض الحقول بعد، وبالتالي لن يكون لها أيضًا نتيجة ميدانية.

![fields-aspose-words](/words/net/fields-overview/fields-overview-1.png)

يتم تخزين المحتوى الذي يشكل رمز الحقل كعقد [Run](https://reference.aspose.com/words/net/aspose.words/run/) بين [FieldStart](https://reference.aspose.com/words/net/aspose.words.fields/fieldstart/) و[FieldSeparator](https://reference.aspose.com/words/net/aspose.words.fields/fieldseparator/). يتم تخزين نتيجة الحقل بين عقدتي **FieldSeparator** و[FieldEnd](https://reference.aspose.com/words/net/aspose.words.fields/fieldend/) ويمكن أن تتكون من أنواع مختلفة من المحتوى. عادةً ما تحتوي نتيجة الحقل على نص مكون من عقد **Run** فقط، ومع ذلك فمن الممكن أن تكون عقدة **FieldEnd** موجودة في فقرة مختلفة تمامًا، وبالتالي تجعل نتيجة الحقل تتكون من عقد [المستويات المنطقية للعقد في المستند](/words/ar/net/logical-levels-of-nodes-in-a-document/) مثل **Table** و**Paragraph** أيضًا.

فيما يلي عرض لكيفية تخزين الحقل في Aspose.Words باستخدام مثال "*DocumentExplorer"* الذي يمكن العثور عليه في [جيثب](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples/DocumentExplorer).

![document-explorer-aspose-words](/words/net/fields-overview/fields-overview-2.png)

## الحقول في Aspose.Words Document Object Model (DOM)

عندما يتم تحميل مستند في Aspose.Words، يتم تحميل حقول المستند في [Aspose.Words Document Object Model (DOM)](/words/ar/net/aspose-words-document-object-model/) كمجموعة من المكونات المنفصلة (العقد). يتم تحميل حقل واحد كمجموعة من عقد **FieldStart** و**FieldSeparator** و**FieldEnd** بالإضافة إلى المحتوى الموجود بين هذه العقد. إذا لم يكن للحقل نتيجة حقل، فلن تكون هناك عقدة **FieldSeparator**. يتم دائمًا العثور على كل هذه العقد مضمنة (مثل أبناء [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/) أو [SmartTag](https://reference.aspose.com/words/net/aspose.words.markup/smarttag/).

في Aspose.Words، كل عقدة من عقد **FieldXXX** مشتقة من [FieldChar](https://reference.aspose.com/words/net/aspose.words.fields/fieldchar/). توفر هذه الفئة خاصية للتحقق من نوع الحقل الذي تمثله العقدة المحددة من خلال خاصية [FieldType](https://reference.aspose.com/words/net/aspose.words.fields/fieldtype/). على سبيل المثال، يمثل **FieldType.FieldMergeField** حقل دمج في المستند.

{{% alert color="primary" %}}

هناك بعض الحقول المحددة الموجودة في مستند Word والتي لم يتم استيرادها إلى Aspose.Words كمجموعة من عقد **FieldXXX**. على سبيل المثال، يتم استيراد حقل `LINK` وحقل `INCLUDEPICTURE` إلى Aspose.Words ككائن [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/). يوفر هذا الكائن خصائص للعمل مع بيانات الصورة المخزنة عادةً في هذه الحقول. لاستيراد حقل `INCLUDEPICTURE` كعقد **FieldXXX**، يجب تحديد خيار [PreserveIncludePictureField](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/preserveincludepicturefield/) كملف **true**.

يتم أيضًا استيراد حقول النموذج إلى Aspose.Words كفئة خاصة بها. تمثل فئة [FormField](https://reference.aspose.com/words/net/aspose.words.fields/formfield/) حقل نموذج في مستند Word وتوفر طرقًا إضافية خاصة بحقل النموذج.

{{% /alert %}}

## الحقول المدعومة

يتم دعم حساب الحقول التالية في الإصدار الحالي من Aspose.Words:

- = (الصيغة)
- `ADDRESSBLOCK`
- `ASK`
- `AUTHOR`
- `AUTONUM`
- `AUTONUMLGL`
- `AUTONUMOUT`
- `AUTOTEXT`
- `BARCODE`
- `COMMENTS`
- `COMPARE`
- `CREATEDATE`
- `DATABASE`
- `DATE`
- `DISPLAYBARCODE`
- `DOCPROPERTY`
- `DOCVARIABLE`
- `EDITTIME`
- `EQ`
- `FILENAME`
- `FILESIZE`
- `FILLIN`
- `FORMCHECKBOX`
- `FORMDROPDOWN`
- `FORMTEXT`
- `GLOSSARY`
- `GOTOBUTTON`
- `GREETINGLINE`
- `HYPERLINK`
- `IF`
- `IMPORT`
- `INCLUDE`
- `INCLUDEPICTURE`
- `INCLUDETEXT`
- `INDEX`
- `INFO`
- `KEYWORDS`
- `LASTSAVEDBY`
- `LISTNUM`
- `MACROBUTTON`
- `MERGEBARCODE`
- `MERGEFIELD`
- `MERGEREC`
- `MERGESEQ`
- `NEXT`
- `NEXTIF`
- `NOTEREF`
- `NUMCHARS`
- `NUMPAGES`
- `NUMWORDS`
- `PAGE`
- `PAGEREF`
- `PRINTDATE`
- `QUOTE`
- `REF`
- `REVNUM`
- `SAVEDATE`
- `SECTION`
- `SECTIONPAGES`
- `SEQ`
- `SET`
- `SHAPE`
- `SKIPIF`
- `STYLEREF`
- `SUBJECT`
- `SYMBOL`
- `TEMPLATE`
- `TIME`
- `TITLE`
- `TOA`
- `TOC`
- `USERADDRESS`
- `USERINITIALS`
- `USERNAME`

## التحليل الميداني المتطور

يتبع Aspose.Words الطريقة التي يعالج بها Microsoft Word الحقول ونتيجة لذلك فإنه يتعامل بشكل صحيح مع:

- الحقول المتداخلة:
  `IF { =OR({ COMPARE { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- يمكن أن تكون حجة الحقل نتيجة لحقل متداخل
- يمكن أن تكون الحقول متداخلة داخل رمز الحقل وكذلك في نتيجة الحقل
- مسافات/بدون مسافات، علامات الاقتباس/بدون علامات الاقتباس، أحرف الهروب في الحقول وما إلى ذلك:
  `MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- الحقول التي تمتد عبر فقرات متعددة

### حقول الصيغة

يوفر Aspose.Words تطبيقًا جديًا للغاية لمحرك الصيغة ويدعم ما يلي:

- العوامل الحسابية والمنطقية:
  `=(54+4*(6-77)-(5))+(-6-5)/4/5`
- المهام:
  `=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- إشارات إلى الإشارات المرجعية:
  `=IF(C>4, 5,ABS(A)*.76) +3.85`
- مفاتيح تنسيق الأرقام:
  `=00000000 \\\# "$#,##0.00;($#,##0.00)"`

يتم دعم الوظائف التالية في التعبيرات: `ABS`، `AND`، `AVERAGE`، `COUNT`، `DEFINED`، `FALSE`، `IF`، `INT`، `MAX`، `MIN`، `MOD`، `NOT`، `OR`، `PRODUCT`، `ROUND`، `SIGN`، `SUM`، TRUE.

### حقول `IF` و`COMPARE`

فقط بعض تعبيرات `IF` التي يمكن لـ Aspose.Words حسابها بسهولة يجب أن تعطيك فكرة عن مدى قوة هذه الميزة:

- `IF 3 > 5.7^4+MAX(4,3) True False`
- `IF "abcd" > "abc" True False`
- `IF "?ab*" = "1abdsg" True False`
- `IF 4 = "2*2" True False`
- `COMPARE 3+5/34 < 4.6/3/2`

### حقول `DATE` و`TIME`

يدعم Aspose.Words جميع مفاتيح تنسيق التاريخ والوقت المتوفرة في Microsoft Word، بعض الأمثلة هي:

- `DATE @ "d-MMM-yy"`
- `DATE @ "d/MM/yyyy h:mm am/pm`

### حقول Mail Merge

لا يفرض Aspose.Words أي حد على مدى تعقيد حقول mail merge في مستنداتك ويدعم حقول `IF` وحقول الصيغة المتداخلة ويمكنه أيضًا حساب اسم حقل الدمج باستخدام صيغة.

بعض الأمثلة على حقول mail merge التي يدعمها Aspose.Words:

- مفاتيح حقل Mail merge:
  `MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- حقول الدمج المتداخلة في الصيغة:
  `IF { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } True False`
- حساب اسم حقل الدمج في وقت التشغيل:
  `MERGEFIELD { `IF` { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } FirstName"LastName" }`
- الانتقال المشروط إلى السجل التالي في مصدر البيانات:
  `NEXTIF { `MERGEFIELD` Value1 } <= { =IF(-2.45 >= 6*{ `MERGEFIELD` Value2 }, 2, -.45) }`

### مفاتيح التنسيق

يمكن أن يحتوي الحقل الموجود في المستند على مفاتيح تنسيق تحدد كيفية تنسيق القيمة الناتجة. يدعم Aspose.Words مفاتيح التنسيق التالية:

- \\\@ – تنسيق التاريخ والوقت
- \\\# – تنسيق الأرقام
- \\\* قبعات
- \\\* فيرست كاب
- \\\* أدنى
- \\\* العلوي
- \\\* CHARFORMAT - تنسيق النتيجة وفقًا للحرف الأول من رمز الحقل
- \\\* MERGEFORMAT - تنسيق النتيجة وفقًا لكيفية تنسيق النتيجة القديمة

### Date وتنسيق الأرقام في الحقول

عندما يحسب Aspose.Words نتيجة حقل، فإنه غالبًا ما يحتاج إلى تحليل سلسلة إلى قيمة رقم أو تاريخ وأيضًا تنسيقها مرة أخرى إلى سلسلة. بشكل افتراضي، يستخدم Aspose.Words ثقافة مؤشر الترابط الحالية لإجراء التحليل والتنسيق عند حساب قيم الحقل أثناء تحديث الحقل و mail merge. هناك أيضًا خيارات متوفرة في شكل فئة [FieldOptions](https://reference.aspose.com/words/net/aspose.words.fields/fieldoptions/) والتي تسمح بمزيد من التحكم في الثقافة المستخدمة أثناء التحديث الميداني.

- افتراضيًا، يتم تعيين خاصية [FieldUpdateCultureSource](https://reference.aspose.com/words/net/aspose.words.fields/fieldoptions/fieldupdateculturesource/) على [CurrentThread](https://reference.aspose.com/words/net/aspose.words.fields/fieldupdateculturesource/) والتي تقوم بتنسيق الحقول باستخدام ثقافة مؤشر الترابط الحالية
- يمكن ضبط هذه الخاصية على [FieldCode](https://reference.aspose.com/words/net/aspose.words.fields/fieldupdateculturesource/) بحيث يتم استخدام اللغة المحددة من رمز الحقل الخاص بالحقل للتنسيق بدلاً من ذلك

### التنسيق باستخدام ثقافة الموضوع الحالي

للتحكم في الثقافة المستخدمة أثناء حساب الحقل، ما عليك سوى تعيين خاصية **Thread.CurrentThread.CurrentCulture** على ثقافة من اختيارك قبل استدعاء حساب الحقل.

يوضح مثال التعليمات البرمجية التالي كيفية تغيير الثقافة المستخدمة في حقول التنسيق أثناء التحديث:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-ChangeLocale-ChangeLocale.cs" >}}

يتيح استخدام الثقافة الحالية لتنسيق الحقول للنظام إمكانية التحكم بسهولة وبشكل متسق في كيفية تنسيق جميع الحقول في المستند أثناء التحديث الميداني.

### التنسيق باستخدام الثقافة في المستند

من ناحية أخرى، يقوم Microsoft Word بتنسيق كل حقل فردي بناءً على لغة النص الموجود في الحقل (على وجه التحديد، الامتدادات من رمز الحقل). في بعض الأحيان أثناء تحديث الحقل، قد يكون هذا هو السلوك المرغوب، على سبيل المثال، إذا كان لديك مستندات معممة تحتوي على محتوى يتكون من العديد من اللغات المختلفة وترغب في أن يحترم كل حقل اللغة المستخدمة من النص. يدعم Aspose.Words أيضًا هذه الوظيفة.

توفر فئة [Document](https://reference.aspose.com/words/net/aspose.words/document/) خاصية [FieldOptions](https://reference.aspose.com/words/net/aspose.words/document/fieldoptions/) التي تحتوي على أعضاء يمكن استخدامها للتحكم في كيفية تحديث الحقول داخل المستند.

يوضح مثال التعليمات البرمجية التالي كيفية تحديد المكان الذي يتم فيه اختيار الثقافة المستخدمة لتنسيق التاريخ أثناء التحديث الميداني وmail merge:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-ChangeFieldUpdateCultureSource-ChangeFieldUpdateCultureSource.cs" >}}
