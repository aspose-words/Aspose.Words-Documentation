---
title: العمل مع حقول النموذج في Java
second_title: Aspose.Words ل Java
articleTitle: العمل مع حقول النموذج
linktitle: العمل مع حقول النموذج
description: "ميزة فهم حقول النموذج، والعمل مع حقول النموذج باستخدام Java."
type: docs
weight: 380
url: /ar/java/working-with-form-fields/
timestamp: 2024-01-27-14-07-04
---

يعرف المستند الذي يحتوي على فراغات تعبئة (حقول) بالنموذج. على سبيل المثال، يمكنك إنشاء نموذج تسجيل في Microsoft Word يستخدم قوائم منسدلة يمكن للمستخدمين من خلالها تحديد الإدخالات. الحقل `Form` هو موقع يتم فيه تخزين نوع معين من البيانات، مثل الاسم أو العنوان. تتضمن حقول النموذج في Microsoft Word إدخال النص و combobox و checkbox.

يمكنك استخدام حقول النموذج في مشروعك "للتواصل"مع المستخدمين. على سبيل المثال، يمكنك إنشاء مستند يكون محتواه محميا، ولكن حقول النموذج فقط قابلة للتحرير. يمكن للمستخدمين إدخال البيانات في حقول النموذج وإرسال المستند. يمكن للتطبيق الذي يستخدم Aspose.Words استرداد البيانات من حقول النموذج ومعالجتها.

من السهل وضع حقول النموذج في المستند عبر الكود. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) لديها طرق خاصة لإدراجها، واحدة لكل نوع حقل نموذج. تقبل كل طريقة معلمة سلسلة تمثل اسم حقل النموذج. يمكن أن يكون الاسم سلسلة فارغة. ومع ذلك، إذا قمت بتحديد اسم لحقل النموذج، فسيتم إنشاء إشارة مرجعية تلقائيا بنفس الاسم.

## إدراج حقول النموذج

حقول النموذج هي حالة معينة من حقول الكلمات التي تسمح "بالتفاعل" مع المستخدم. تتضمن حقول النموذج في Microsoft Word مربع النص ومربع التحرير والسرد و checkbox.

**DocumentBuilder**

يوضح مثال التعليمات البرمجية التالية كيفية إدراج حقل نموذج combobox في مستند:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertFormFields-InsertFormFields.java" >}}

### أدخل إدخال نص

استخدم طريقة **insertTextInput** لإدراج مربع نص في المستند.

يوضح مثال التعليمات البرمجية التالية كيفية إدراج حقل نموذج إدخال نص في مستند:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTextInputFormField-DocumentBuilderInsertTextInputFormField.java" >}}

### أدخل خانة اختيار

اتصل **insertCheckBox** لإدراج checkbox في المستند.

يوضح مثال التعليمات البرمجية التالية كيفية إدراج حقل نموذج checkbox في مستند:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertCheckBoxFormField-DocumentBuilderInsertCheckBoxFormField.java" >}}

### أدخل مربع التحرير والسرد

اتصل **insertComboBox** لإدراج combobox في المستند.

يوضح مثال التعليمات البرمجية التالية كيفية إدراج حقل نموذج Combobox في مستند:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertComboBoxFormField-DocumentBuilderInsertComboBoxFormField.java" >}}

## الحصول على حقول النموذج

يتم تمثيل مجموعة من حقول النموذج بواسطة فئة [FormFieldCollection](https://reference.aspose.com/words/java/com.aspose.words/formfieldcollection/) التي يمكن استرجاعها باستخدام خاصية [Range.getFormFields](https://reference.aspose.com/words/java/com.aspose.words/range/#getFormFields). هذا يعني أنه يمكنك الحصول على حقول النموذج الواردة في أي عقدة وثيقة بما في ذلك المستند نفسه.

يوضح مثال التعليمات البرمجية التالية كيفية الحصول على مجموعة من حقول النموذج:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.java" >}}

{{% alert color="primary" %}}

يمكنك تحميل ملف عينة من الأمثلة التالية من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Form%20fields.docx).

{{% /alert %}}

يمكنك الحصول على حقل نموذج معين من خلال فهرسه أو اسمه.

يوضح مثال التعليمات البرمجية التالية كيفية الوصول إلى حقول النموذج:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsGetByName-FormFieldsGetByName.java" >}}

تتيح لك خصائص **FormField** العمل مع اسم حقل النموذج ونوعه والنتيجة.

يوضح مثال التعليمات البرمجية التالية كيفية العمل مع اسم حقل النموذج ونوعه والنتيجة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.java" >}}
