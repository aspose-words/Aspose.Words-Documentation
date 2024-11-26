---
title: استبدال الحقول بالنص Java
second_title: Aspose.Words ل Java
articleTitle: استبدال الحقول بنص ثابت
linktitle: استبدال الحقول بنص ثابت
description: "تعرف على كيفية استبدال الحقول بنص في Java. استبدل الحقول ببيانات ثابتة باستخدام Java API."
type: docs
weight: 37
url: /ar/java/replace-fields/
timestamp: 2024-01-27-14-07-04
---

غالبا ما يكون استبدال الحقول مطلوبا عندما ترغب في حفظ المستند كنسخة ثابتة. على سبيل المثال، عند الإرسال كمرفق في رسالة بريد إلكتروني. سيسمح تحويل الحقول مثل `DATE` أو `TIME` إلى نص ثابت للمستند بعرض نفس تاريخ إرساله. أيضا، في بعض الحالات، قد تحتاج إلى إزالة الحقول الشرطية `IF` من المستند واستبدالها بأحدث نتيجة نصية بدلا من ذلك. على سبيل المثال، تحويل نتيجة الحقل `IF` إلى نص ثابت بحيث لن يغير قيمته ديناميكيا عند تحديث الحقول في المستند.

يوضح الرسم البياني أدناه كيفية تخزين حقل `IF` في مستند:

* النص محاط بعقد الحقل الخاصة - [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/) و [FieldEnd](https://reference.aspose.com/words/java/com.aspose.words/fieldend/)
* تفصل العقدة [FieldSeparator](https://reference.aspose.com/words/java/com.aspose.words/fieldseparator/) النص داخل الحقل إلى رمز الحقل والنتيجة الميدانية
* يحدد رمز الحقل السلوك العام للحقل، بينما تحتفظ نتيجة الحقل بأحدث نتيجة عند تحديث هذا الحقل باستخدام Microsoft Word أو Aspose.Words
* نتيجة الحقل هي ما يتم تخزينه في الحقل وعرضه في المستند عند عرضه

![update-remove-a-field-aspose-words](/words/java/replace-fields/updating-and-removing-a-field-1.png)

يمكن أيضا رؤية الهيكل أدناه في شكل هرمي باستخدام المشروع التجريبي **"DocumentExplorer"**، الذي يأتي مع **Aspose.Words** المثبت.

![update-remove-a-field-aspose-words-2](/words/java/replace-fields/updating-and-removing-a-field-2.png)

## الحقول التي لا يمكن استبدالها بالنص

استبدال حقل مع نص ثابت لا يعمل بشكل صحيح لبعض الحقول في رأس أو تذييل الصفحة.

على سبيل المثال، ستؤدي محاولة تحويل الحقل `PAGE` في رأس أو تذييل إلى نص ثابت إلى عرض نفس القيمة في جميع الصفحات. وذلك لأن الرؤوس والتذييلات تتكرر عبر صفحات متعددة، وعندما تظل كحقول، يتم التعامل معها بشكل خاص بحيث تعرض النتيجة الصحيحة لكل صفحة.

ومع ذلك، في الرأس، يترجم الحقل `PAGE` جيدا إلى تشغيل ثابت للنص. سيتم تقييم تشغيل النص هذا كما لو كان الصفحة الأخيرة في القسم، مما سيؤدي إلى عرض أي حقل `PAGE` في الرأس للصفحة الأخيرة على جميع الصفحات.

يوضح مثال الكود التالي كيفية استبدال الحقل بأحدث نتيجة له:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UnlinkFields-UnlinkFields.java" >}}

## تحويل أنواع حقول معينة في أجزاء وثيقة محددة

نظرا لأن طريقة **ConvertFieldsToStaticText** تقبل معلمتين - خصائص [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) والتعداد [FieldType](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/)، فمن الممكن تمرير أي عقدة مركبة إلى هذه الطريقة. يسمح هذا بتحويل الحقول إلى نص ثابت فقط في أجزاء محددة من المستند.

على سبيل المثال، يمكنك تمرير كائن [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) وتحويل حقول من النوع المحدد من المستند بأكمله إلى نص ثابت، أو يمكنك تمرير كائن [Body](https://reference.aspose.com/words/java/com.aspose.words/body/) من قسم وتحويل الحقول الموجودة في هذا النص فقط.

{{% alert color="primary" %}}

عند تمرير عقدة على مستوى الكتلة مثل [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/)، يجب أن تدرك أنه في بعض الحالات، يمكن أن تمتد الحقول عبر فقرات متعددة. إذا حدث هذا فمن المستحسن تمرير الوالد من المركب بدلا من ذلك لتجنب هذا.

{{% /alert %}}

يحدد التعداد [FieldType](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) الذي تم تمريره إلى طريقة **ConvertFieldsToStaticText** نوع الحقول التي يجب تحويلها إلى نص ثابت. سيبقى أي نوع حقل آخر موجود في المستند دون تغيير.

يوضح مثال الكود التالي كيفية تحديد حقول من نوع معين - *targetFieldType* في عقدة معينة - *compositeNode* ثم تحويلها إلى نص ثابت:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldHelper-FieldsHelper.java" >}}

يوضح مثال التعليمات البرمجية التالية كيفية تحويل كافة الحقول `IF` في مستند إلى نص ثابت:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInDocument-ConvertFieldsInDocument.java" >}}

يوضح مثال التعليمات البرمجية التالية كيفية تحويل كافة الحقول `PAGE` في نص مستند إلى نص ثابت:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInBody-ConvertFieldsInBody.java" >}}

يوضح مثال التعليمات البرمجية التالية كيفية تحويل كافة الحقول `IF` في الفقرة الأخيرة إلى نص ثابت:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInParagraph-ConvertFieldsInParagraph.java" >}}
