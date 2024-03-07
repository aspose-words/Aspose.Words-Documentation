---
title: استبدال الحقول C#
second_title: Aspose.Words لـ .NET
articleTitle: استبدال الحقول بنص ثابت
linktitle: استبدال الحقول بنص ثابت
description: "تعرف على كيفية استبدال الحقول بالنص في C#. استبدل الحقول ببيانات ثابتة باستخدام .NET API."
type: docs
weight: 37
url: /ar/net/replace-fields/
---

غالبًا ما يكون استبدال الحقول مطلوبًا عندما ترغب في حفظ المستند كنسخة ثابتة. على سبيل المثال، عند الإرسال كمرفق في رسالة بريد إلكتروني. إن تحويل الحقول مثل `DATE` أو `TIME` إلى نص ثابت سيسمح للمستند بعرض نفس التاريخ الذي تم إرساله فيه. أيضًا، في بعض المواقف، قد تحتاج إلى إزالة حقول `IF` الشرطية من مستندك واستبدالها بأحدث نتيجة نصية بدلاً من ذلك. على سبيل المثال، تحويل نتيجة حقل `IF` إلى نص ثابت بحيث لا يغير قيمته ديناميكيًا بعد الآن عند تحديث الحقول الموجودة في المستند.

يوضح الرسم البياني أدناه كيفية تخزين حقل `IF` في مستند:

* النص محاط بالعقد الميدانية الخاصة – [FieldStart](https://reference.aspose.com/words/ar/net/aspose.words.fields/fieldstart/) و[FieldEnd](https://reference.aspose.com/words/ar/net/aspose.words.fields/fieldend)
* تقوم عقدة [FieldSeparator](https://reference.aspose.com/words/ar/net/aspose.words.fields/fieldseparator/) بفصل النص الموجود داخل الحقل إلى رمز الحقل ونتيجة الحقل
* يحدد رمز الحقل السلوك العام للحقل، بينما تحتفظ نتيجة الحقل بأحدث نتيجة عند تحديث هذا الحقل باستخدام Microsoft Word أو Aspose.Words
* نتيجة الحقل هي ما يتم تخزينه في الحقل وعرضه في المستند عند عرضه

![update-remove-a-field-aspose-words](/words/net/replace-fields/updating-and-removing-a-field-1.png)

يمكن أيضًا رؤية الهيكل أدناه في شكل هرمي باستخدام [المشروع التجريبي *"مستكشف المستندات"*](https://github.com/aspose-words/Aspose.Words-for-.NET)*.*

![update-remove-a-field-aspose-words-2](/words/net/replace-fields/updating-and-removing-a-field-2.png)

## الحقول التي لا يمكن استبدالها بالنص

لا يعمل استبدال حقل بنص ثابت بشكل صحيح بالنسبة لبعض الحقول في الرأس أو التذييل.

على سبيل المثال، ستؤدي محاولة تحويل حقل `PAGE` في الرأس أو التذييل إلى نص ثابت إلى عرض نفس القيمة على جميع الصفحات. وذلك لأن الرؤوس والتذييلات تتكرر عبر صفحات متعددة، وعندما تظل كحقول، تتم معالجتها بشكل خاص بحيث تعرض النتيجة الصحيحة لكل صفحة.

ومع ذلك، في الرأس، يُترجم حقل `PAGE` بشكل جيد إلى التشغيل الثابت للنص. سيتم تقييم هذا التشغيل للنص كما لو كانت الصفحة الأخيرة في القسم، مما سيؤدي إلى قيام أي حقل `PAGE` في الرأس بعرض الصفحة الأخيرة على جميع الصفحات.

يوضح مثال التعليمات البرمجية التالي كيفية استبدال الحقل بأحدث نتائجه:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-UnlinkFields.cs" >}}

## تحويل أنواع معينة من الحقول في أجزاء محددة من المستند

بما أن طريقة **ConvertFieldsToStaticText** تقبل معلمتين - خصائص [CompositeNode](https://reference.aspose.com/words/ar/net/aspose.words/compositenode/) وتعداد [FieldType](https://reference.aspose.com/words/ar/net/aspose.words.fields/fieldtype/)، فمن الممكن تمرير أي عقدة مركبة إلى هذه الطريقة. يسمح هذا بتحويل الحقول إلى نص ثابت فقط في أجزاء معينة من المستند.

على سبيل المثال، يمكنك تمرير كائن [Document](https://reference.aspose.com/words/ar/net/aspose.words/document/) وتحويل الحقول من النوع المحدد من المستند بأكمله إلى نص ثابت، أو يمكنك تمرير كائن [Body](https://reference.aspose.com/words/ar/net/aspose.words/body/) لقسم ما وتحويل الحقول الموجودة في ذلك النص فقط.

{{% alert color="primary" %}}

عند تمرير عقدة على مستوى الكتلة مثل [Paragraph](https://reference.aspose.com/words/ar/net/aspose.words/paragraph/)، انتبه إلى أنه في بعض الحالات، يمكن أن تمتد الحقول عبر فقرات متعددة. إذا حدث ذلك فمن المستحسن تمرير أصل المركب بدلاً من ذلك لتجنب ذلك.

{{% /alert %}}

يحدد تعداد [FieldType](https://reference.aspose.com/words/ar/net/aspose.words.fields/fieldtype/) الذي تم تمريره إلى طريقة **ConvertFieldsToStaticText** نوع الحقول التي يجب تحويلها إلى نص ثابت. سيبقى أي نوع حقل آخر موجود في المستند دون تغيير.

يوضح مثال التعليمات البرمجية التالي كيفية تحديد حقول من نوع معين - *targetFieldType* في عقدة معينة - *compositeNode* ثم تحويلها إلى نص ثابت:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldsHelper-FieldsHelper.cs" >}}

يوضح مثال التعليمات البرمجية التالي كيفية تحويل كافة حقول `IF` في مستند إلى نص ثابت:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-ConvertFieldsInDocument-ConvertFieldsInDocument.cs" >}}

{{% alert color="primary" %}}

يمكنك تنزيل الملف النموذجي لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Linked%20fields.docx).

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالي كيفية تحويل كافة حقول `PAGE` في النص الأساسي للمستند إلى نص ثابت:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-ConvertFieldsInBody-ConvertFieldsInBody.cs" >}}

يوضح مثال التعليمات البرمجية التالي كيفية تحويل كافة حقول `IF` في الفقرة الأخيرة إلى نص ثابت:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-ConvertFieldsInParagraph-ConvertFieldsInParagraph.cs" >}}
