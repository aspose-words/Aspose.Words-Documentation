---
title: Compare Documents in Java
second_title: Aspose.Words for Java
articleTitle: Compare Documents
linktitle: Compare Documents
type: docs
description: "Compare two documents in any supported formats and shows content changes. يمكنك تطبيق خيارات متطورة عند مقارنة استخدام Java."
weight: 60
url: /ar/java/compare-documents/
timestamp: 2024-01-27-14-07-04
---

ومقارنة الوثائق عملية تحدد التغييرات بين وثيقتين وتتضمن التغييرات كتنقيحات. وتقارن هذه العملية أي وثيقتين، بما في ذلك نسخ من وثيقة واحدة محددة، ثم تظهر التغييرات بين الوثيقتين على أنها تنقيحات في الوثيقة الأولى.

وتتحقق طريقة المقارنة بمقارنة الكلمات على مستوى الشخصية أو على مستوى الكلمات. وإذا تضمنت كلمة تغييراً واحداً على الأقل، ونتيجة لذلك، سيظهر الفرق كتغيير للكلمة بأكملها، وليس كشخصية. وعملية المقارنة هذه مهمة عادية في الصناعات القانونية والمالية.

بدلا من البحث اليدوي عن الاختلافات بين الوثائق أو بين نسخ مختلفة منها، يمكنك استخدام Aspose.Words من أجل مقارنة الوثائق وإدخال تغييرات على المحتوى في الشكل، والرأس/القدم، والجداول، والأكثر.

وتوضح هذه المادة كيفية مقارنة الوثائق وكيفية تحديد خصائص مقارنة متطورة.

{{% alert color="primary" %}}

**حاول على الإنترنت**

يمكنك مقارنة وثيقتين عبر الإنترنت باستخدام [مقارنة الوثائق على الإنترنت](https://products.aspose.app/words/comparison) أداة.

Note that the comparison method, described below, is used in this tool to ensure getting equal results. لذا ستحصل على نفس النتائج حتى باستخدام أداة المقارنة على الإنترنت أو باستخدام طريقة المقارنة في Aspose.Words.

{{% /alert %}}

## القيود وصيغ الملفات المدعومة {#limitations-and-supported-file-formats}

وتعد مقارنة الوثائق سمة معقدة للغاية. وهناك أجزاء مختلفة من مزيج المحتوى تحتاج إلى تحليل للاعتراف بجميع الاختلافات. سبب هذا التعقيد هو Aspose.Words تهدف إلى الحصول على نفس نتائج المقارنة مثل Microsoft Word خوارزمية المقارنة

والتقييد العام لوثيقتين يجري مقارنتهما هو أنه يجب ألا يكون لديهما تنقيحات قبل وصف طريقة المقارنة نظرا لوجود هذا التقييد Microsoft Word.

{{% alert color="primary" %}}

ملاحظة أنه يمكنك مقارنة أي وثيقتين داخل [الوثائق الداعمة](/words/ar/java/supported-document-formats/). في الأساس، يمكنك مقارنة أجسام الوثائق وحتى يمكنك خلق هذه الأشياء من الصفر دون وجود أي شكل محدد.

{{% /alert %}}

## Compare Two Documents {#compare-two-documents}

عندما تقارن الوثائق، تظهر اختلافات الوثيقة الأخيرة من الأول كتنقيحات للأول. عندما تُعدّلُ a وثيقة، كُلّ edit سَيكونُ عِنْدَهُ تنقيحُه الخاصُ بعد تشغيل طريقةِ المقارنةِ.

Aspose.Words يُمكِنُك أَنْ تُحدّدَ إختلافاتَ الوثائقِ باستخدام [Compare](https://reference.aspose.com/words/java/com.aspose.words/document/#compare-com.aspose.words.Document-java.lang.String-java.util.Date) الطريقة - وهذا مماثل للطريقة Microsoft Word وتقارن الوثيقة السمة. وهو يسمح لكم بفحص الوثائق أو النسخ الوثائقية لإيجاد خلافات وتغييرات، بما في ذلك إجراء تعديلات في شكلها مثل التغييرات الشكلية، والتغييرات في المباعدة، وإضافة الكلمات والفقرات.

ونتيجة للمقارنة، يمكن تحديد الوثائق على أنها متساوية أو غير متساوية. وتعني وثائق مصطلح " المساواة " أن طريقة المقارنة لا يمكن أن تمثل تغييرات كتنقيحات. وهذا يعني أن نص الوثائق وصيغة النصوص هما نفس النص. ولكن يمكن أن تكون هناك اختلافات أخرى بين الوثائق. على سبيل المثال، Microsoft Word يدعم فقط تنقيحات الشكل للأساليب، ولا يمكنك أن تمثل الإدراج/التنويع. لذا الوثائق يمكن أن يكون لها مجموعة مختلفة من الأساليب، **Compare** ولا تزال الطريقة لا تنتج أي تنقيحات.

ويبين المثال الرمزي التالي كيفية التحقق إذا كانت وثيقتان متساويتان أو لا:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CompareTwoWordDocuments-wordDocumentsAreEqual.java" >}}

The following code example shows how to simply apply the `Compare` طريقة لوثيقتين:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CompareTwoWordDocuments-caseWhenDocumentHasRevisions.java" >}}

## تحديد خيارات المقارنات المسبقة {#specify-advanced-comparing-properties}

هناك العديد من الممتلكات المختلفة [CompareOptions](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/) الصف الذي يمكنك تطبيقه عندما تريد مقارنة الوثائق

على سبيل المثال، Aspose.Words يسمح لك بتجاهل التغييرات التي أجريت خلال عملية مقارنة لأنواع معينة من الأشياء في الوثيقة الأصلية. يمكنك اختيار الممتلكات المناسبة من نوع الجسم، مثل [IgnoreHeadersAndFooters](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getIgnoreHeadersAndFooters), [IgnoreFormatting](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getIgnoreFormatting), [IgnoreComments](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getIgnoreComments), والآخرون بوضعهم علىtrue".

وبالإضافة إلى ذلك، Aspose.Words يوفر [Granularity](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getGranularity) الممتلكات التي يمكن أن تحدد بها ما إذا كان ينبغي تتبع التغييرات حسب الشخصية أو بالكلمة.

والملكية المشتركة الأخرى هي خيار تظهر فيه الوثيقة تغيرات في المقارنة. وعلى سبيل المثال، " صندوق الحوار الخاص بالوثائق الأساسية " في Microsoft Word وله الخيار " التغيرات العرضية في " - وهذا يؤثر أيضا على نتائج المقارنة. Aspose.Words يوفر [Target](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getTarget) ممتلكات تخدم هذا الغرض

ويبين المثال الرمزي التالي كيفية تحديد الخصائص المتطورة للمقارنة:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CompareTwoWordDocuments-AdvancedComparingProperties.java" >}}
