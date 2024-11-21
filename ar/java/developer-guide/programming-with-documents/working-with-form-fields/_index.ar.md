---
title: العمل مع (فورم فيلد) Java
second_title: Aspose.Words for Java
articleTitle: العمل مع حقول الاستمارة
linktitle: العمل مع حقول الاستمارة
description: "Understanding Form Fields feature, working with Form Fields using Java."
type: docs
weight: 380
url: /ar/java/working-with-form-fields/
timestamp: 2024-01-27-14-07-04
---

A document that contains fill-in blanks (fields) is known as a form. على سبيل المثال، يمكنك إنشاء استمارة تسجيل في Microsoft Word التي تستخدم قوائم الهبوط التي يمكن للمستعملين أن يختاروا منها القيود. The `Form` الميدان هو موقع يخزن فيه نوع معين من البيانات، مثل الاسم أو العنوان. حقول الاستمارة Microsoft Word وتشمل مدخلات النص، والجمعيات، وصناديق التحقق.

يمكنك استخدام حقول الاستمارة في مشروعك إلى "التواصل" مع مستخدميك. على سبيل المثال، تخلقين وثيقة محمية محتواها لكن فقط شكل الحقول قابل للتجزئة ويمكن للمستعملين أن يدخلوا البيانات في مجالات الشكل وأن يقدموا الوثيقة. تطبيقك الذي يستخدم Aspose.Words يمكن استرجاع البيانات من حقول الشكل ومعالجتها

وضع الحقول في الوثيقة عن طريق الشفرة أمر سهل. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) لديها طرق خاصة لإدراجها، واحدة لكل شكل ميداني. ويقبل كل من هذه الأساليب بارامتر خيط يمثل اسم ميدان الشكل. الاسم يمكن أن يكون خيط فارغ. إذا حددتم اسماً لميدان الاستمارة، فإن علامة كتابية تُنشأ تلقائياً بنفس الاسم.

## Insert Form Fields

حقول الاستمارة هي حالة معينة من حقول الكلمات التي تسمح "التفاعل" مع المستخدم. حقول الاستمارة Microsoft Word بما في ذلك صندوق النسيج و صندوق الدمج و صندوق الشيكات

**DocumentBuilder** يوفّر طرائق خاصة لإدراج كل نوع من أنواع مجالات الاستمارة في الوثيقة: [insertTextInput](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-boolean-int), [insertCheckBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-boolean-int) أو [insertComboBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-int).

ويبيّن المثال الرمزي التالي كيف يُدرَج حقل نموذجي في وثيقة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertFormFields-InsertFormFields.java" >}}

### يدرج النص

استخدام **يدرج ما يلي: النص** طريقة لإدراج نص في الوثيقة.

ويبيّن المثال الرمزي التالي كيفية إدراج شكل مدخلات نصية في وثيقة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTextInputFormField-DocumentBuilderInsertTextInputFormField.java" >}}

### ضع صندوق الشيكات

اتصل **يدرج الرمز** لإدراج صندوق شيك في الوثيقة.

ويبيّن المثال الرمزي التالي كيف يُدرَج حقل نموذجي في وثيقة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertCheckBoxFormField-DocumentBuilderInsertCheckBoxFormField.java" >}}

### ضع صندوق كومبو

اتصل **يدرج ما يلي:ComboBox** لإدراج صندوق في الوثيقة.

ويبيّن المثال الرمزي التالي كيفية إدخال شكل كومبو بوكس في وثيقة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertComboBoxFormField-DocumentBuilderInsertComboBoxFormField.java" >}}

## حقول الاستمارة

A collection of form fields is represented by the [FormFieldCollection](https://reference.aspose.com/words/java/com.aspose.words/formfieldcollection/) الطبقة التي يمكن استرجاعها باستخدام [Range.getFormFields](https://reference.aspose.com/words/java/com.aspose.words/range/#getFormFields) ملكية وهذا يعني أنه يمكنك الحصول على حقول الاستمارة الواردة في أي وثيقة تتضمن الوثيقة نفسها.

ويبين المثال الرمزي التالي كيفية الحصول على مجموعة من مجالات الشكل:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.java" >}}

{{% alert color="primary" %}}

يمكنك تحميل ملف العينة من الأمثلة التالية [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Form%20fields.docx).

{{% /alert %}}

يمكنك الحصول على حقل شكلي معين بمؤشره أو إسمه

ويبين المثال الرمزي التالي كيفية الوصول إلى الحقول:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsGetByName-FormFieldsGetByName.java" >}}

The **FormField** الخواص تسمح لك بالعمل بإسم ميداني، نوع، ونتيجة

ويبين المثال الرمزي التالي كيفية العمل بإسم ميداني من نوع إلى آخر، ونتيجة لذلك:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.java" >}}
