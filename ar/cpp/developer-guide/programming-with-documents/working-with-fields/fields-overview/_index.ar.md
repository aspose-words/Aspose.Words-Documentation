---
title: نظرة عامة على الحقول في C++
second_title: Aspose.Words ل C++
articleTitle: نظرة عامة على الحقول
linktitle: نظرة عامة على الحقول
description: "الحقول ميزة في التفاصيل، رموز الحقل والنتائج الميدانية وأوضح في Aspose.Words ل C++."
type: docs
weight: 10
url: /ar/cpp/fields-overview/
---

Aspose.Words هي مكتبة فئة مصممة لمعالجة المستندات Microsoft Word من جانب الخادم وتدعم الحقول بالطرق التالية:

- يتم الاحتفاظ بجميع الحقول في المستند أثناء الفتح / الحفظ والتحويلات
- من الممكن تحديث نتائج معظم الحقول

في هذه المقالة، سوف نتعلم المزيد عن بنية الحقل، والحقول المدعومة في Aspose.Words، وتفاصيل العمل مع هذه الحقول.

## هيكل الحقول

يتكون الحقل من:

- يتم استخدام عقد بدء الحقل والفاصل لتشمل المحتوى الذي يتكون منه رمز الحقل (عادة كنص عادي).
- فاصل الحقل ونهاية الحقل تشمل نتيجة الحقل. يمكن أن يتكون هذا من أنواع مختلفة من المحتوى تتراوح من تشغيل النص إلى الفقرات إلى الجداول.
- قد لا تحتوي بعض الحقول على فاصل مما يعني أن المحتوى بأكمله يشكل رمز الحقل.
- يحدد رمز الحقل سلوك الحقل ويتكون من معرف الحقل وغالبا ما تكون معلمات أخرى مثل أسماء الحقول والمفاتيح.
- تحتوي النتيجة الميدانية على أحدث تقييم للحقل. يتم تخزين هذه القيمة في نتيجة الحقل وهو ما يتم عرضه للمستخدم. قد لا تحتوي بعض الحقول على أي نتائج ميدانية وبالتالي لن تعرض أي شيء في المستند. وبالمثل، قد لا يتم تحديث بعض الحقول حتى الآن وبالتالي لن يكون لها أي نتيجة ميدانية.

![fields-overview-aspose-words-cpp-1](fields-overview-1.png)

يتم تخزين المحتوى الذي يتكون منه رمز الحقل كعقد [Run](https://reference.aspose.com/words/cpp/class/aspose.words.run) بين [FieldStart](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_start/) و [FieldSeparator](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_separator/). يتم تخزين النتيجة الميدانية بين العقدتين **FieldSeparator** و [FieldEnd](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_end/) ويمكن أن تتكون من أنواع مختلفة من المحتوى. عادة ما تحتوي نتيجة الحقل على نص مكون فقط من **Run** العقد، ومع ذلك فمن الممكن أن تكون العقدة **FieldEnd** موجودة في فقرة مختلفة تماما، وبالتالي جعل نتيجة الحقل تتكون من [العقد على مستوى الكتلة](/words/cpp/logical-levels-of-nodes-in-a-document/) مثل **Table** و **Paragraph** العقد كذلك.

فيما يلي عرض لكيفية تخزين حقل في Aspose.Words باستخدام مثال "*DocumentExplorer"*.

![fields-overview-aspose-words-cpp-2](fields-overview-2.png)

## الحقول في نموذج كائن المستند Aspose.Words (DOM)

عندما يتم تحميل مستند إلى Aspose.Words، يتم تحميل حقول المستند في [Aspose.Words نموذج كائن المستند](/words/cpp/aspose-words-document-object-model/) كمجموعة من المكونات المنفصلة (العقد). يتم تحميل حقل واحد كمجموعة من **FieldStart** و **FieldSeparator** و **FieldEnd** العقد جنبا إلى جنب مع المحتوى بين هذه العقد. إذا لم يكن للحقل نتيجة حقل، فلن تكون هناك عقدة **FieldSeparator**. يتم العثور دائما على كل هذه العقد مضمنة (كأبناء [Paragraph](https://reference.aspose.com/words/cpp/class/aspose.words.paragraph) أو [SmartTag](https://reference.aspose.com/words/cpp/class/aspose.words.markup.smart_tag/)).

في Aspose.Words كل عقد من **FieldXXX** مشتق من [FieldChar](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_char/). توفر هذه الفئة خاصية للتحقق من نوع الحقل الذي تمثله العقدة المحددة من خلال خاصية [FieldType](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldchar/get_fieldtype/). على سبيل المثال **FieldType.FieldMergeField** يمثل حقل دمج في المستند.

{{% alert color="primary" %}}

هناك بعض الحقول المعينة الموجودة في مستند ورد التي لم يتم استيرادها إلى Aspose.Words كمجموعة من **FieldXXX** العقد. على سبيل المثال، يتم استيراد الحقل `LINK` والحقل `INCLUDEPICTURE` إلى Aspose.Words ككائن `Shape`. يوفر هذا الكائن خصائص للعمل مع بيانات الصورة المخزنة عادة في هذه الحقول. لاستيراد حقل `INCLUDEPICTURE` كعقد **FieldXXX**، يجب تحديد الخيار [PreserveIncludePictureField](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_preserveincludepicturefield/) على أنه **true**.

يتم استيراد حقول النموذج أيضا إلى Aspose.Words كفئة خاصة بهم. تمثل فئة [FormField](https://reference.aspose.com/words/cpp/class/aspose.words.fields.form_field/) حقل نموذج في مستند ورد وتوفر طرقا إضافية خاصة بحقل نموذج.

{{% /alert %}}

## الحقول المدعومة

ويدعم حساب الحقول التالية في الإصدار الحالي من Aspose.Words:

- = (صيغة)
`ADDRESSBLOCK`
`ASK`
`AUTHOR`
`AUTONUM`
`AUTONUMLGL`
`AUTONUMOUT`
`AUTOTEXT`
`BARCODE`
`COMMENTS`
`COMPARE`
`CREATEDATE`
`DATABASE`
`DATE`
`DISPLAYBARCODE`
`DOCPROPERTY`
`DOCVARIABLE`
`EDITTIME`
`EQ`
`FILENAME`
`FILESIZE`
`FILLIN`
`FORMCHECKBOX`
`FORMDROPDOWN`
`FORMTEXT`
`GLOSSARY`
`GOTOBUTTON`
`GREETINGLINE`
`HYPERLINK`
`IF`
`IMPORT`
`INCLUDE`
`INCLUDEPICTURE`
`INCLUDETEXT`
`INDEX`
`INFO`
`KEYWORDS`
`LASTSAVEDBY`
`LISTNUM`
`MACROBUTTON`
`MERGEBARCODE`
`MERGEFIELD`
`MERGEREC`
`MERGESEQ`
`NEXT`
`NEXTIF`
`NOTEREF`
`NUMCHARS`
`NUMPAGES`
`NUMWORDS`
`PAGE`
`PAGEREF`
`PRINTDATE`
`QUOTE`
`REF`
`REVNUM`
`SAVEDATE`
`SECTION`
`SECTIONPAGES`
`SEQ`
`SET`
`SHAPE`
`SKIPIF`
`STYLEREF`
`SUBJECT`
`SYMBOL`
`TEMPLATE`
`TIME`
`TITLE`
`TOA`
`TOC`
`USERADDRESS`
`USERINITIALS`
`USERNAME`

## تحليل ميداني متطور

Aspose.Words يتبع الطريقة Microsoft Word يعالج الحقول ونتيجة لذلك يعالج بشكل صحيح:

- الحقول المتداخلة:
`IF { =OR({ COMPARE { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- يمكن أن تكون وسيطة الحقل نتيجة لحقل متداخل
- يمكن أن تتداخل الحقول داخل رمز الحقل وكذلك في نتيجة الحقل
- مسافات/لا مسافات، اقتباسات/لا اقتباسات، شخصيات الهروب في الحقول وما إلى ذلك.:
`MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- الحقول التي تمتد عبر فقرات متعددة

### حقول الصيغة

Aspose.Words يوفر تنفيذ خطير جدا من محرك الفورمولا ويدعم ما يلي:

- العوامل الحسابية والمنطقية:
`=(54+4*(6-77)-(5))+(-6-5)/4/5`
- المهام:
`=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- مراجع إلى الإشارات المرجعية:
`=IF(C>4, 5,ABS(A)*.76) +3.85`
- مفاتيح تنسيق الأرقام:
`=00000000 \\\# "$#,##0.00;($#,##0.00)"`

يتم دعم الوظائف التالية في التعبيرات: `ABS`, `AND`, `AVERAGE`, `COUNT`, `DEFINED`, `FALSE`, `IF`, `INT`, `MAX`, `MIN`, `MOD`, `NOT`, `OR`, `PRODUCT`, `ROUND`, `SIGN`, `SUM`, TRUE.

### `IF` and `COMPARE` Fields

فقط بعض التعبيرات `IF` التي يمكن أن يحسبها Aspose.Words بسهولة يجب أن تعطيك فكرة عن مدى قوة هذه الميزة:

`IF 3 > 5.7^4+MAX(4,3) True False`
`IF "abcd" > "abc" True False`
`IF "?ab*" = "1abdsg" True False`
`IF 4 = "2*2" True False`
`COMPARE 3+5/34 < 4.6/3/2`

### `DATE` and `TIME` Fields

Aspose.Words يدعم جميع مفاتيح تنسيق التاريخ والوقت المتاحة في Microsoft Word، بعض الأمثلة هي:

`DATE @ "d-MMM-yy"`
`DATE @ "d/MM/yyyy h:mm am/pm`

### Mail Merge الحقول

Aspose.Words لا يفرض أي حد على تعقيد mail merge الحقول في المستندات الخاصة بك ويدعم متداخلة `IF` وحقول الصيغة ويمكن حتى حساب اسم حقل الدمج باستخدام صيغة.

بعض الأمثلة على mail merge الحقول التي Aspose.Words يدعم:

- Mail merge مفاتيح الحقل:
`MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- حقول دمج متداخلة في صيغة:
  `IF { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } True False`
- احسب اسم حقل الدمج في وقت التشغيل:
  `MERGEFIELD { `IF` { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } FirstName"LastName" }`
- نقل مشروط إلى السجل التالي في مصدر البيانات:
  `NEXTIF { `MERGEFIELD` Value1 } <= { =IF(-2.45 >= 6*{ `MERGEFIELD` Value2 }, 2, -.45) }`

### مفاتيح التنسيق

يمكن أن يحتوي حقل في مستند على مفاتيح تنسيق تحدد كيفية تنسيق القيمة الناتجة. Aspose.Words يدعم مفاتيح التنسيق التالية:

- @ - تنسيق التاريخ والوقت
- \\\# - تنسيق الأرقام
- \\\\\\\\* قبعات
- \\\\\\\\* FirstCap
- \\\\\\\\* أقل
- \\\\\\\\* العلوي
- \\\\\\\\* CHARFORMAT - نتيجة التنسيق وفقا للحرف الأول من رمز الحقل
- \\\\\\\\* MERGEFORMAT - نتيجة التنسيق وفقا لكيفية تنسيق النتيجة القديمة

### تنسيق التاريخ والرقم في الحقول

عندما يحسب Aspose.Words نتيجة حقل، فإنه غالبا ما يحتاج إلى تحليل سلسلة إلى رقم أو قيمة تاريخ وأيضا لتهيئتها مرة أخرى إلى string.By افتراضي Aspose.Words يستخدم ثقافة مؤشر الترابط الحالية لإجراء التحليل والتنسيق عند حساب قيم الحقل أثناء تحديث الحقل و mail merge. هناك أيضا خيارات متوفرة في شكل فئة [FieldOptions](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_options/) والتي تتيح مزيدا من التحكم في الثقافة المستخدمة أثناء التحديث الميداني.

- بشكل افتراضي، يتم تعيين الخاصية [FieldUpdateCultureSource](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldoptions/get_fieldupdateculturesource/) على [CurrentThread](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldupdateculturesource/) التي تنسق الحقول باستخدام ثقافة مؤشر الترابط الحالية
- يمكن تعيين هذه الخاصية إلى [FieldCode](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldupdateculturesource/) بحيث يتم استخدام اللغة التي تم تعيينها من رمز الحقل للحقل للتنسيق بدلا من ذلك

### التنسيق باستخدام ثقافة مؤشر الترابط الحالي

للتحكم في الثقافة المستخدمة أثناء حساب الحقل، ما عليك سوى تعيين الخاصية **CurrentCulture** إلى ثقافة من اختيارك قبل استدعاء حساب الحقل.

يوضح مثال التعليمات البرمجية التالية كيفية تغيير الثقافة المستخدمة في حقول التنسيق أثناء التحديث:

EXAMPLE

يسمح استخدام الثقافة الحالية لتنسيق الحقول للنظام بالتحكم بسهولة وثبات في كيفية تنسيق جميع الحقول في المستند أثناء تحديث الحقل.

### التنسيق باستخدام الثقافة في المستند

من ناحية أخرى، يقوم Microsoft Word بتنسيقات كل حقل فردي استنادا إلى لغة النص الموجود في الحقل (على وجه التحديد، عمليات التشغيل من رمز الحقل). في بعض الأحيان أثناء تحديث الحقل، قد يكون هذا هو السلوك المطلوب، على سبيل المثال إذا كان لديك مستندات معولمة تحتوي على محتوى مكون من العديد من اللغات المختلفة وترغب في أن تحترم كل حقل اللغة المستخدمة من النص. Aspose.Words كما يدعم هذه الوظيفة.

توفر فئة [Document](https://reference.aspose.com/words/cpp/class/aspose.words.document) خاصية [FieldOptions](https://reference.aspose.com/words/cpp/aspose.words/document/get_fieldoptions/) تحتوي على أعضاء يمكن استخدامها للتحكم في كيفية تحديث الحقول داخل المستند.

يوضح مثال الكود التالي كيفية تحديد مكان الثقافة المستخدمة لتنسيق التاريخ أثناء تحديث الحقل و mail merge يتم اختياره من:

EXAMPLE