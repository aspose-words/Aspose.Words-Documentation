---
title: يستعاض عن الحقول بالنص Java
second_title: Aspose.Words for Java
articleTitle: يستعاض عن الحقول بالنص الثابت
linktitle: يستعاض عن الحقول بالنص الثابت
description: "تعلم كيفية استبدال الحقول بالنص Java. يستعاض عن الحقول ببيانات ثابتة باستخدام Java API."
type: docs
weight: 37
url: /ar/java/replace-fields/
timestamp: 2024-01-27-14-07-04
---

فغالبا ما تكون هناك حاجة لرد الحقول عندما ترغب في حفظ وثيقتك كنسخة ثابتة. على سبيل المثال، عند إرسالها كملحق في رسالة إلكترونية. مجالات من قبيل `DATE` أو `TIME` وسيتيح النص الثابت لهذه الوثيقة أن تعرض نفس التاريخ الذي أرسلت فيه. أيضا، في بعض الحالات، قد تحتاج إلى إزالة المشروط `IF` الحقول من وثيقتكم والاستعاضة عنها بأحدث نتيجة النص بدلا من ذلك. على سبيل المثال، تحويل نتيجة `IF` من الميدان إلى النص الثابت حتى لا يعد يغير ديناميا من قيمته عندما تستكمل الميادين الواردة في الوثيقة.

الرسم البياني أدناه يوضح كيف `IF` ويخزن الميدان في وثيقة:

* يُحاط النص بالعقد الميدانية الخاصة - [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/) و [FieldEnd](https://reference.aspose.com/words/java/com.aspose.words/fieldend/)
* [FieldSeparator](https://reference.aspose.com/words/java/com.aspose.words/fieldseparator/) يفصل العقد النص في الميدان إلى الرمز الميداني والنتيجة الميدانية
* يحدد القانون الميداني السلوك العام للميدان، في حين أن النتيجة الميدانية تحافظ على آخر نتيجة عندما يتم تحديث هذا المجال باستخدام Microsoft Word أو Aspose.Words
* النتيجة الميدانية هي ما يخزن في الميدان ويظهر في الوثيقة عند النظر إليها

![update-remove-a-field-aspose-words](/words/java/replace-fields/updating-and-removing-a-field-1.png)

ويمكن أيضا النظر إلى الهيكل في شكل هرمي باستخدام المشروع المسرحي **“DocumentExplorer”**, الذي يركب مع **Aspose.Words** (سالر)

![update-remove-a-field-aspose-words-2](/words/java/replace-fields/updating-and-removing-a-field-2.png)

## المجالات التي لا يمكن استبدالها بالنص

ولا يعمل الرد على حقل ذي نص ثابت على نحو سليم بالنسبة لبعض الحقول في رأس أو قدم.

على سبيل المثال، محاولة تحويل `PAGE` وسيؤدي الحقل في رأس أو قدم إلى نص ثابت إلى عرض نفس القيمة على جميع الصفحات. ويرجع ذلك إلى أن الرعاة والأقدام يتكررون عبر صفحات متعددة، وعندما يظلون في الميدان، يتم التعامل معهم على وجه الخصوص حتى يظهروا النتيجة الصحيحة لكل صفحة.

على أية حال، في الرأس، `PAGE` الميدان يترجم بشكل جيد إلى حرف ثابت من النص. وسيقيَّم هذا النص كما لو كان آخر صفحة في القسم، مما سيسبب أي `PAGE` الحقل في الرأس لعرض آخر صفحة على جميع الصفحات

ويبين المثال الرمزي التالي كيفية استبدال الحقل بآخر نتيجة له:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UnlinkFields-UnlinkFields.java" >}}

## Convert Certain Field Types in Specific Document Parts

منذ **ConvertFieldsToStaticText** الطريقة تقبل بارامترين - [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) الخواص [FieldType](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) ومن الممكن، في جملة أمور، أن تجتاز هذه الطريقة أي شعار مركب. وهذا لا يسمح بتحويل الحقول إلى نص ثابت إلا في أجزاء محددة من الوثيقة.

على سبيل المثال، يمكنك تمرير [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) الجسم وتحويل الحقول من النوع المحدد من كامل الوثيقة إلى نص ثابت، أو يمكنك تمرير [Body](https://reference.aspose.com/words/java/com.aspose.words/body/) هدف من قسم وفقط تحويل الحقول التي وجدت في ذلك الجسم.

{{% alert color="primary" %}}

عندما يمرّ عقد على مستوى كتلة مثل [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), أن تكون على علم بأن الحقول يمكن أن تمتد في بعض الحالات عبر فقرات متعددة. وإذا حدث ذلك، يوصى بإعطاء والد المركبة بدلا من ذلك لتجنب ذلك.

{{% /alert %}}

The [FieldType](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) عُدّم إلى **ConvertFieldsToStaticText** وتحدد الطريقة نوع الحقول التي ينبغي تحويلها إلى نص ثابت. وأي نوع ميداني آخر يرد في الوثيقة سيظل دون تغيير.

ويبين المثال الرمزي التالي كيفية اختيار ميادين من نوع محدد - *targetFieldType* في عقد محدد *compositeNode* ثم تحويلها إلى نص ثابت:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldHelper-FieldsHelper.java" >}}

المثال الرمزي التالي يبين كيف يمكن تحويل كل `IF` الميادين الواردة في وثيقة لنص ثابت:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInDocument-ConvertFieldsInDocument.java" >}}

المثال الرمزي التالي يبين كيف يمكن تحويل كل `PAGE` حقول في مجموعة من وثائق النص الثابت:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInBody-ConvertFieldsInBody.java" >}}

المثال الرمزي التالي يبين كيف يمكن تحويل كل `IF` المجالات الواردة في الفقرة الأخيرة إلى النص الثابت:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInParagraph-ConvertFieldsInParagraph.java" >}}
