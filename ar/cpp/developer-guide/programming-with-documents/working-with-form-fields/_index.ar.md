---
title: العمل مع حقول النموذج في C++
second_title: Aspose.Words ل C++
articleTitle: العمل مع حقول النموذج
linktitle: العمل مع حقول النموذج
description: "ميزة فهم حقول النموذج، والعمل مع حقول النموذج باستخدام C++."
type: docs
weight: 380
url: /ar/cpp/working-with-form-fields/
---

يعرف المستند الذي يحتوي على فراغات تعبئة (حقول) بالنموذج. على سبيل المثال، يمكنك إنشاء نموذج تسجيل في Microsoft Word يستخدم قوائم منسدلة يمكن للمستخدمين من خلالها تحديد الإدخالات. حقل النموذج هو موقع يتم فيه تخزين نوع معين من البيانات، مثل الاسم أو العنوان. تتضمن حقول النموذج في Microsoft Word إدخال النص ومربع تحرير وسرد ومربع اختيار.

يمكنك استخدام حقول النموذج في مشروعك "للتواصل"مع المستخدمين. على سبيل المثال، يمكنك إنشاء مستند يكون محتواه محميا، ولكن حقول النموذج فقط قابلة للتحرير. يمكن للمستخدمين إدخال البيانات في حقول النموذج وإرسال المستند. يمكن للتطبيق الذي يستخدم Aspose.Words استرداد البيانات من حقول النموذج ومعالجتها.

من السهل وضع حقول النموذج في المستند عبر الكود. [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) لديها طرق خاصة لإدراجها، واحدة لكل نوع حقل نموذج. تقبل كل طريقة معلمة سلسلة تمثل اسم حقل النموذج. يمكن أن يكون الاسم سلسلة فارغة. ومع ذلك، إذا قمت بتحديد اسم لحقل النموذج، فسيتم إنشاء إشارة مرجعية تلقائيا بنفس الاسم.

## إدراج حقول النموذج

حقول النموذج هي حالة معينة من حقول الكلمات التي تسمح "بالتفاعل" مع المستخدم. تتضمن حقول النموذج في Microsoft Word مربع نص ومربع تحرير وسرد ومربع اختيار.

**DocumentBuilder**

يوضح مثال التعليمات البرمجية التالية كيفية إدراج حقل نموذج مربع تحرير وسرد في مستند:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertFormFields-InsertFormFields.cpp" >}}

## الحصول على حقول النموذج

يتم تمثيل مجموعة من حقول النموذج بواسطة فئة [FormFieldCollection](https://reference.aspose.com/words/cpp/aspose.words.fields/formfieldcollection/) التي يمكن استرجاعها باستخدام خاصية [FormFields](https://reference.aspose.com/words/cpp/aspose.words/range/get_formfields/). هذا يعني أنه يمكنك الحصول على حقول النموذج الواردة في أي عقدة وثيقة بما في ذلك المستند نفسه.

يوضح مثال التعليمات البرمجية التالية كيفية الحصول على مجموعة من حقول النموذج:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.cpp" >}}

يمكنك الحصول على حقل نموذج معين من خلال فهرسه أو اسمه.

يوضح مثال التعليمات البرمجية التالية كيفية الوصول إلى حقول النموذج:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormFieldsGetByName-FormFieldsGetByName.cpp" >}}

تتيح لك خصائص **FormField** العمل مع اسم حقل النموذج ونوعه والنتيجة.

يوضح مثال التعليمات البرمجية التالية كيفية العمل مع اسم حقل النموذج ونوعه والنتيجة:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.cpp" >}}
