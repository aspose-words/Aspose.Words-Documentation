---
title: مقدمة إلى الميدانين Java
second_title: Aspose.Words for Java
articleTitle: مقدمة إلى الميدان
linktitle: مقدمة إلى الميدان
description: "المجالات المميزة في التفاصيل، والمدونات الميدانية، والنتائج الميدانية الموضحة في Aspose.Words for Java."
type: docs
weight: 10
url: /ar/java/introduction-to-fields/
timestamp: 2024-09-25-11-08-55
---

Aspose.Words هي مكتبة صنف مصممة لتجهيز جانب الخادم Microsoft Word الوثائق ودعم الميادين بالطرق التالية:

- حفظ جميع الحقول في وثيقة ما أثناء فتحها/إنقاذها وتحويلها
- من الممكن استكمال نتائج معظم الميادين

وفي هذه المادة، سنتعلم المزيد عن الهيكل الميداني، والمجالات المدعومة في Aspose.Words, وتفاصيل العمل مع هذه الميادين.

## الهيكل الميداني

ويتألف الميدان من:

- The field start and separator nodes are used to encompass the content which make up the field code (normally as plain text).
- الفصل الميداني والنهاية الميدانية تشمل النتيجة الميدانية. ويمكن أن يتكون ذلك من أنواع مختلفة من المحتويات تتراوح بين سير النصوص والفقرات والجداول.
- بعض الحقول قد لا يكون لها انفصال مما يعني أن المحتوى كله يشكل الرمز الميداني.
- The field code defines the behavior of the field and is comprised of the field identifier and often other parameters such as field name and shiftes.
- وتتضمن النتيجة الميدانية آخر تقييم للميدان. وتخزن هذه القيمة في النتيجة الميدانية وهي ما يُعرض على المستخدم. وقد لا تكون لبعض الحقول أي نتيجة ميدانية، وبالتالي لن تظهر أي شيء في الوثيقة. وبالمثل، قد لا يتم تحديث بعض الميادين، وبالتالي لن يكون لها أي نتيجة ميدانية.

![fields-aspose-words-java](/words/java/introduction-to-fields/introduction-to-fields-1.png)

المحتوى الذي يتكون من الرمز الميداني مخزن كما [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) العقد بين [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/) و [FieldSeparator](https://reference.aspose.com/words/java/com.aspose.words/fieldseparator/). النتيجة الميدانية مخزنة بين **FieldSeparator** و [FieldEnd](https://reference.aspose.com/words/java/com.aspose.words/fieldend/) يُعَدُّ ويُمْكِنُ أَنْ يُكوّنَ مِنْ مختلف أنواع المحتوى. وعادة ما تتضمن النتيجة الميدانية نصا مجردا يتألف من عقدة " رواند "، بيد أنه من الممكن أن يكون عقد العقد الميداني في فقرة مختلفة تماما، مما يجعل النتيجة الميدانية تتألف من [المستويات المنطقية للنويدات في الوثيقة](/words/ar/java/logical-levels-of-nodes-in-a-document/) مثل **Table** و **Paragraph** أيضاً

هنا نظرة على كيفية تخزين الحقل في Aspose.Words عن طريق استخدام " مستكشف الوثائق "* [Github](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/java/com/aspose/words/examples/viewers_visualizers/document_explorer).

![document-explorer-aspose-words-java](/words/java/introduction-to-fields/introduction-to-fields-2.png)

## الحقول في Aspose.Words Document Object Model )أ(DOM)

عندما يتم تحميل الوثيقة Aspose.Words تُحمَّل في ميادين الوثيقة Aspose.Words Document Object Model كمجموعة من المكونات المنفصلة (المواضيع). حقل واحد محمول كمجموعة **FieldStart**, **FieldSeparator** و **FieldEnd** يَعْرفُ إلى جانب المضمونِ في بين هذه العقداتِ. إذا لم يكن للميدان نتيجة ميدانية فلن يكون هناك **FieldSeparator** موكب All of these nodes are always found inline (as children of [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) أو [SmartTag](https://reference.aspose.com/words/java/com.aspose.words/smarttag/).

In Aspose.Words كل من **FieldXXX** النوايا مستمدة من [FieldChar](https://reference.aspose.com/words/java/com.aspose.words/fieldchar/). توفر هذه الفئة ممتلكات للتحقق من نوع الحقل الذي يمثله العقد المحدد من خلال [FieldType](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) ملكية على سبيل المثال `FieldType.FieldMergeField` يمثل مجالاً كبيراً في الوثيقة

{{% alert color="primary" %}}

هناك بعض الميادين المحددة الموجودة في وثيقة كلمة لا تستورد إلى Aspose.Words كمجموعة **FieldXXX** المشنقة على سبيل المثال `LINK` الميدان `INCLUDEPICTURE` الميدان مستورد Aspose.Words as a [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) هدف ويوفر هذا الجسم الممتلكات اللازمة للعمل مع بيانات الصور المخزنة عادة في هذه الميادين. إلى الاستيراد `INCLUDEPICTURE` الميدان **FieldXXX** يَعْرفُ [PreserveIncludePictureField](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getPreserveIncludePictureField) يجب تحديد الخيار على النحو التالي: **true**.

كما تم استيراد حقول الاستمارة إلى Aspose.Words كصفهم الخاص The [FormField](https://reference.aspose.com/words/java/com.aspose.words/formfield/) وتمثل الصفة مجالاً نموذجياً في وثيقة كلمة وتوفر أساليب إضافية خاصة في مجال الشكل.

{{% /alert %}}

## الميدانان المدعومان

دعم حساب المجالات التالية في النسخة الحالية Aspose.Words:

- = (شكل)
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
- `TOC` (بما في ذلك TOT and TOF)
- `USERADDRESS`
- `USERINITIALS`
- `USERNAME`

## Sophisticated Field Parsing

Aspose.Words الطريق Microsoft Word وهي تعمل في الميدان، ونتيجة لذلك، على نحو صحيح:

- الحقول المستنيرة:
  `IF { =OR({ `COMPARE` { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- الحجة الميدانية يمكن أن تكون نتيجة حقل ملتهب
- يمكن استخلاص الحقول في إطار مدونة ميدانية وكذلك في النتيجة الميدانية
- مساحات/لا أماكن، اقتباسات/لا اقتباسات، وشخصيات الهروب في الحقول، وما إلى ذلك:
  `MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- الحقول التي تمتد عبر فقرات متعددة

### حقول النموذج

Aspose.Words يوفر تنفيذا خطيرا جدا لمحرك المعادلة ويدعم ما يلي:

- المشغلات الحسابية والمنطقية:
  `=(54+4*(6-77)-(5))+(-6-5)/4/5`
- المهام:
  `=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- إشارات إلى علامات الكتاب:
  `=IF(C>4, 5,ABS(A)*.76) +3.85`
- عدد مفاتيح تبديل الشكل:
  `=00000000 \\\# "$#,##0.00;($#,##0.00)"`

تُدعم المهام التالية في التعبير: `ABS`, `AND`, `AVERAGE`, `COUNT`, `DEFINED`, `FALSE`, `IF`, `INT`, `MAX`, `MIN`, `MOD`, `NOT`, `OR`, `PRODUCT`, `ROUND`, `SIGN`, `SUM`, TRUE.

### `IF` و `COMPARE` الحقول

فقط بعض من `IF` تعابير Aspose.Words يمكن بسهولة الحساب يجب أن تعطيك فكرة عن مدى قوة هذه المميزة

- `IF 3 > 5.7^4+MAX(4,3) True False`
- `IF "abcd" > "abc" True False`
- `IF "?ab*" = "1abdsg" True False`
- `IF 4 = "2*2" True False`
- `COMPARE 3+5/34 < 4.6/3/2`

### `DATE` و `TIME` الحقول

Aspose.Words دعم جميع المفاتيح المتاحة في شكل مواعيد Microsoft Word, وفيما يلي بعض الأمثلة:

- `DATE @ "d-MMM-yy"`
- `DATE @ "d/MM/yyyy h:mm am/pm`

### Mail Merge الحقول

Aspose.Words لا يفرض أي حد لتعقيد Mail Merge الحقول في وثائقك ودعمها `IF` بل يمكن أن يحسب اسم الميدان المدمج باستخدام صيغة.

بعض الأمثلة Mail Merge الحقول Aspose.Words الدعم:

- Mail merge التحولات الميدانية:
  `MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- حقول مدمجة في صيغة:
  `IF { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } True False`
- حساب اسم الحقل المدمج في وقت التشغيل:
  `MERGEFIELD { `IF` { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } FirstName"LastName" }`
- الانتقال المشروط إلى السجل التالي في مصدر البيانات:
  `NEXTIF { `MERGEFIELD` Value1 } <= { =IF(-2.45 >= 6*{ `MERGEFIELD` Value2 }, 2, -.45) }`

### الشكليات

ويمكن أن يكون للميدان في أي وثيقة مفاتيح للتشكيل تحدد كيفية تشكيل القيمة الناتجة. Aspose.Words يؤيد مفاتيح التحويل التالية:

- @ - التاريخ والوقت
- / / / / - عدد أشكال
- ♪ Caps
- الحلقة الأولى
- ♪ منخفض
- ♪ Upper
- The format result according to the first character of the field code
- / / / / / / * MERGEFORMAT - الشكل يَتْركُ وفقاً لطريقة صياغة النتيجة القديمة

### Date ورقم الطباعة في الميدان

عندما Aspose.Words وتحسب النتيجة الميدانية، وهي في كثير من الأحيان تحتاج إلى تجزئة الخيط إلى عدد من القيمة أو تاريخية، وإلى صيغته أيضاً إلى خيط. بالخطأ Aspose.Words:: استخدام ثقافة الخيط الحالية لتأدية الفرز والتشكيل عند حساب القيم الميدانية أثناء التحديث الميداني mail merge. وهناك أيضا خيارات مقدمة في شكل [FieldOptions](https://reference.aspose.com/words/java/com.aspose.words/fieldoptions/) الدرجة التي تسمح بمزيد من الرقابة على الثقافة المستخدمة أثناء تحديثها الميداني

* عن طريق التقصير [FieldUpdateCultureSource](https://reference.aspose.com/words/java/com.aspose.words/fieldoptions/#getFieldUpdateCultureSource) الممتلكات مقررة [CurrentThread](https://reference.aspose.com/words/java/com.aspose.words/fieldupdateculturesource/#CURRENT-THREAD) التي تشكل الحقول التي تستخدم الثقافة الحالية
* يمكن تحديد هذه الممتلكات [FieldCode](https://reference.aspose.com/words/java/com.aspose.words/fieldupdateculturesource/#FIELD-CODE) حتى تستخدم اللغة المأخوذة من الرمز الميداني للميدان لتشكيلها بدلا من ذلك

### Formatting using the Current Thread’s Culture

للسيطرة على الثقافة المستخدمة خلال الحساب الميداني، فقط حدد **CurrentCulture** ملكية لثقافة من اختيارك قبل التذرع بالحساب الميداني

ويبين المثال الرمزي التالي كيفية تغيير الثقافة المستخدمة في تشكيل الحقول أثناء تحديثها:

(استخدم المغلفة العامة لـ (تـيـد هـود سـيـتـر `Thread.CurrentThread`- الكرنتس

ويتيح استخدام الثقافة الحالية لتشكيل الحقول نظاماً للتحكم بسهولة وبصورة متسقة في كيفية تشكيل جميع الميادين في الوثيقة أثناء التحديث الميداني.

### صياغة استخدام الثقافة في الوثيقة

من ناحية أخرى Microsoft Word ويشكّل كل ميدان على حدة على أساس لغة النص الموجود في الميدان (خصوصاً، الجرعات من القانون الميداني). وفي بعض الأحيان أثناء التحديث الميداني، قد يكون هذا هو السلوك المرغوب فيه، مثلاً إذا كان لديك وثائق عالمية تحتوي على محتوى يتألف من لغات مختلفة كثيرة، وتود كل حقول أن تكرّم الموقع المستخدم من النص. Aspose.Words كما يدعم هذه الوظيفة.

The [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) الدرجة توفر [FieldOptions](https://reference.aspose.com/words/java/com.aspose.words/document/#getFieldOptions) الممتلكات التي تحتوي على أعضاء يمكن استخدامها لمراقبة كيفية تحديث الحقول في الوثيقة.

ويبيّن المثال الرمزي التالي كيفية تحديد المكان الذي استخدمت فيه الثقافة لتكوينها في تاريخ آخر المستجدات الميدانية Mail Merge يُختار من:

النفقات
