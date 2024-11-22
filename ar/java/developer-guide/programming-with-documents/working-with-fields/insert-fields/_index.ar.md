---
title: Insert Fields in Java
second_title: Aspose.Words for Java
articleTitle: حقول الإرسال
linktitle: حقول الإرسال
description: "طرق مختلفة لإدراج الحقول في وثيقتكم باستخدام Java."
type: docs
weight: 20
url: /ar/java/insert-fields/
timestamp: 2024-01-27-14-07-04
---

وهناك عدة طرق مختلفة لإدراج الحقول في وثيقة:

- استخدام [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)
- استخدام [FieldBuilder](https://reference.aspose.com/words/java/com.aspose.words/fieldbuilder/)
- استخدام [Aspose.Words Document Object Model (DOM)](/words/ar/java/aspose-words-document-object-model/)

وفي هذه المادة، سننظر في كل طريق بمزيد من التفصيل، ونحلل كيفية إدخال بعض الميادين باستخدام هذه الخيارات.

## Inserting Fields into a Document using DocumentBuilder

In Aspose.Words the [InsertField](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder#insertField(int,boolean)() تستخدم طريقة لإدراج حقول جديدة في وثيقة. ويقبل البارامترات الأولى الرمز الميداني الكامل للميدان الذي سيدرج. أما البارامتر الثاني فهو اختياري ويسمح بتحديد النتيجة الميدانية للميدان يدويا. وإذا لم يتم توفير ذلك، يجري تحديث الميدان تلقائيا. يمكنك أن تمرر باطلة أو فارغة إلى هذا البارامترات لتدخل حقل ذو قيمة ميدانية فارغة إن لم تكن واثقاً بشأن (سينتاكس) المُحدد، فخلق الحقل Microsoft Word أولاً وبدلاً لرؤية رمزها الميداني

{{% alert color="primary" %}}

إذا كان شفرة الحقل لديك بارامتر يحتوي على مساحة... ... ثم يجب أن تكون مغلقة في علامات الخطاب. و إلا في الميدان Microsoft Word و Aspose.Words قد لا يعمل كما هو متوقع حيث أن البارامترات تعالج من قبل كل منهما على أنه يجري تهكمها.

{{% /alert %}}

ويبين المثال الرمزي التالي كيفية إدراج حقل مدمج في وثيقة باستخدام **DocumentBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-InsertField.java" >}}

وتُستخدم هذه التقنية نفسها لإدراج حقول محفورة في ميادين أخرى.

ويدل المثال الرمزي التالي على كيفية إدراج الحقول المحجوبة في ميدان آخر باستخدام **DocumentBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertNestedFields-InsertNestedFields.java" >}}

### تحديد الرتبة المحلية على المستوى الميداني

A language identifier is a standard international numeric abbreviation for the language in a country or geographical region. مع Aspose.Words, يمكنك تحديد المحلي على المستوى الميداني باستخدام [LocaleId](https://reference.aspose.com/words/java/com.aspose.words/field/#getLocaleId) الملكية التي تحصل أو تحدد هوية الميدان المحلية

ويبين المثال الرمزي التالي كيفية استخدام هذا الخيار:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.java" >}}

### Insert Untyped/Empty Field

إذا كنت ترغب في إدخال حقول غير نمطية/ فارغة{}تماما مثل Microsoft Word يسمح، يمكنك استخدام [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) طريقة مع [FieldType.FieldNone](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) البارامترات ولإدراج حقل في وثيقة كلمة، يمكنك أن تضغط على مجموعة مفاتيح " Ctrl + F9 ".

ويبين المثال الرمزي التالي كيفية إدراج حقل فارغ في الوثيقة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertFieldNone-InsertFieldNone.java" >}}

### Insert `COMPARE` الميدان

The `COMPARE` المجال يقارن قيمتين ويعيد القيمة العددية 1 إذا كانت المقارنة true أو صفر إذا كانت المقارنة false.

ويبين المثال الرمزي التالي كيفية إضافة `COMPARE` الحقول التي تستخدم الوثيقة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldCompare.java" >}}

### Insert `IF` الميدان

The `IF` ويمكن استخدام الحقل لتقييم الحجج بصورة مشروطة.

ويبين المثال الرمزي التالي كيفية إضافة `IF` الحقول التي تستخدم الوثيقة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldIf.java" >}}

## Inserting Fields into a Document using FieldBuilder

الطريقة البديلة لإدراج الحقول في Aspose.Words هو [FieldBuilder](https://reference.aspose.com/words/java/com.aspose.words/fieldbuilder/) صف وهي توفر واجهة مؤثرة لتحديد التبديلات الميدانية وقيم الحجج بوصفها نصوصاً أو مواصفاً أو حتى حقول محفورة.

ويبين المثال الرمزي التالي كيفية إدراج حقل في وثيقة باستخدام **FieldBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-FieldBuilder.java" >}}

## Inserting Fields using DOM

يمكنك أيضا إدخال مختلف أنواع الحقول باستخدام [Aspose.Words Document Object Model (DOM)](/words/ar/java/aspose-words-document-object-model/). وفي هذا الفرع، سننظر في بضعة أمثلة.

### Inserting Merge حقل في وثيقة باستخدام DOM

`MERGEFIELD` الميدان في الوثيقة الوردية يمكن أن يمثلها [FieldMergeField](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/) الصف يمكنك استخدام **FieldMergeField** درجة أداء العمليات التالية:

- تحديد اسم الحقل المدمج
- تحديد شكل المجال المدمج
- تحديد النص الذي يوجد بين الفصل الميداني والنهاية الميدانية للميدان المدمج
- تحديد النص الذي سيدرج بعد دمج الحقل إذا لم يكن الميدان فارغا
- تحديد النص الذي سيدرج قبل الميدان المدمج إذا لم يكن الميدان فارغا

{{% alert color="primary" %}}

لمزيد من التفاصيل، انظر [FieldMergeField](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/) الصف API.

{{% /alert %}}

ويبين المثال الرمزي التالي كيفية إضافة `MERGE` استخدام الحقل DOM فقرة في وثيقة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertMergeFieldUsingDOM-InsertMergeFieldUsingDOM.java" >}}

### Inserting Mail Merge `ADDRESSBLOCK` الحقل في وثيقة باستخدام DOM

The `ADDRESSBLOCK` يُستخدم الحقل لإدخال Mail Merge عنوان في وثيقة كلمة. `ADDRESSBLOCK` الميدان في الوثيقة الوردية يمكن أن يمثلها [FieldAddressBlock](https://reference.aspose.com/words/java/com.aspose.words/fieldaddressblock/) الصف يمكنك استخدام **FieldAddressBlock** درجة أداء العمليات التالية:

- تحديد ما إذا كان ينبغي إدراج اسم البلد/الإقليم في الميدان
- تحديد ما إذا كان ينبغي وضع العنوان حسب البلد/إقليم المتلقي على النحو المحدد في POST*CODE (الاتحاد البريدي العالمي 2006)
- تحديد اسم البلد/الإقليم المستبعد
- تحديد الاسم وشكل العنوان
- تحديد الهوية اللغوية المستخدمة في صياغة العنوان

{{% alert color="primary" %}}

لمزيد من التفاصيل، انظر [FieldAddressBlock](https://reference.aspose.com/words/java/com.aspose.words/fieldaddressblock/) الصف API.

{{% /alert %}}

ويبين المثال الرمزي التالي كيفية إضافة Mail Merge `ADDRESSBLOCK` الاستخدام الميداني DOM فقرة في وثيقة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertMailMergeAddressBlockFieldUsingDOM-InsertMailMergeAddressBlockFieldUsingDOM.java" >}}

### Inserting `ADVANCE` الميدان في وثيقة دون استخدام الوثيقة

The `ADVANCE` ويُستخدم الحقل لتعويض النص اللاحق ضمن خط إلى اليسار أو اليمين أو الصعود أو الهبوط. `ADVANCE` الميدان في الوثيقة الوردية يمكن أن يمثلها [FieldAdvance](https://reference.aspose.com/words/java/com.aspose.words/fieldadvance/) الصف يمكنك استخدام **FieldAdvance** درجة الأداء:

- تحديد عدد النقاط التي ينبغي بواسطتها نقل النص التالي للميدان عمودياً من أعلى الصفحة
- تحديد عدد النقاط التي ينبغي بواسطتها نقل النص التالي للميدان أفقيا من الطرف الأيسر من العمود أو الإطار أو الإطار النصي
- تحديد عدد النقاط التي ينبغي بواسطتها نقل النص التالي للميدان إلى اليسار أو اليمين أو إلى الأعلى أو إلى أسفل

{{% alert color="primary" %}}

لمزيد من التفاصيل، انظر [FieldAdvance](https://reference.aspose.com/words/java/com.aspose.words/fieldadvance/) الصف API.

{{% /alert %}}

ويبين المثال الرمزي التالي كيفية إضافة `ADVANCE` الاستخدام الميداني DOM فقرة في وثيقة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldAdvance.java" >}}

### Inserting `ASK` الميدان في وثيقة دون استخدام الوثيقة

The `ASK` ويُستخدم المجال لحفز المستعمل على النص على تخصيص علامة كتاب في وثيقة وورد. `ASK` الميدان في الوثيقة الوردية يمكن أن يمثلها [FieldAsk](https://reference.aspose.com/words/java/com.aspose.words/fieldask/) الصف يمكنك استخدام **FieldAsk** درجة الأداء:

- تحديد اسم علامة الكتاب
- تحديد استجابة المستخدمين غير الافتراضيين (القيمة الأولية الواردة في النافذة السريعة)
- تحديد ما إذا كان ينبغي تلقي رد المستعملين مرة واحدة لكل فرد Mail Merge العملية
- تحديد النص الفوري (عنوان النافذة السريعة)

{{% alert color="primary" %}}

لمزيد من التفاصيل، انظر [FieldAsk](https://reference.aspose.com/words/java/com.aspose.words/fieldask/) الصف API.

{{% /alert %}}

ويبين المثال الرمزي التالي كيفية إضافة `ASK` الاستخدام الميداني DOM فقرة في وثيقة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldAsk.java" >}}

### Inserting `AUTHOR` الميدان في وثيقة دون استخدام الوثيقة

The `AUTHOR` الحقل مستعمل لتحديد اسم مؤلف الوثائق من `Document` الممتلكات. `AUTHOR` الميدان في الوثيقة الوردية يمكن أن يمثلها [FieldAuthor](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/) الصف يمكنك استخدام **FieldAuthor** درجة الأداء:

- تحديد اسم المؤلف

{{% alert color="primary" %}}

لمزيد من التفاصيل، انظر [FieldAuthor](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/) الصف API.

{{% /alert %}}

ويبين المثال الرمزي التالي كيفية إضافة `AUTHOR` الاستخدام الميداني DOM فقرة في وثيقة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertAuthorField-InsertAuthorField.java" >}}

### Inserting `INCLUDETEXT` الميدان في وثيقة دون استخدام الوثيقة

The `INCLUDETEXT` يُدرج في الميدان النص والرسوم البيانية الواردة في الوثيقة المذكورة في القانون الميداني. ويمكنكم أن تدرجوا الوثيقة بأكملها أو جزء من الوثيقة المشار إليها بعلامة كتابية. ويمثل هذا المجال في الوثيقة الوردية INCLUDETEXT. يمكنك استخدام [FieldIncludeText](https://reference.aspose.com/words/java/com.aspose.words/fieldincludetext/) درجة الأداء:

-حدد اسم الكتاب المتضمن
- تحديد موقع الوثيقة

{{% alert color="primary" %}}

لمزيد من التفاصيل، انظر [FieldIncludeText](https://reference.aspose.com/words/java/com.aspose.words/fieldincludetext/) الصف API.

{{% /alert %}}

ويبين المثال الرمزي التالي كيفية إضافة `INCLUDETEXT` استخدام الحقل DOM فقرة في وثيقة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldIncludeText.java" >}}

### Inserting `TOA` الميدان في وثيقة دون استخدام الوثيقة

The `TOA` (*Table of Authorities*) field builds and inserts a table of authorities. The `TOA` الحقل يجمع القيود التي تميزت بها `TA` (*Table of Authorities Entry*) fields. Microsoft تُدرج كلمة المكتب `TOA` الحقل الذي تضغط فيه* **Table of Authorities** المجموعة المعنية **References** تاب. عندما ترى `TOA` الحقل في وثيقتك، النسيج يبدو مثل هذا:

{ `TOA` [Switches ] }

{{% alert color="primary" %}}

لمزيد من التفاصيل، انظر [FieldToa](https://reference.aspose.com/words/java/com.aspose.words/fieldtoa/) الصف API.

{{% /alert %}}

ويبين المثال الرمزي التالي كيفية إضافة `TOA` استخدام الحقل DOM إلى فقرة في وثيقة.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertTOAField-InsertTOAField.java" >}}
