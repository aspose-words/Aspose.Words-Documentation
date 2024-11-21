---
title: الخيارات والمظهر مستند Word
second_title: Aspose.Words لـ .NET
articleTitle: العمل مع الخيارات ومظهر مستندات Word
linktitle: العمل مع الخيارات ومظهر مستندات Word
description: "التحكم في مظهر مستندات Word مع مراعاة الفرق بين إصدارات Microsoft Word المختلفة باستخدام C#."
type: docs
weight: 40
url: /ar/net/work-with-word-document-options-and-appearance/
timestamp: 2024-01-27-14-07-04
---

في بعض الأحيان قد تحتاج إلى تغيير مظهر المستند، على سبيل المثال، تعيين تفضيلات اللغة أو عدد الأسطر في كل صفحة. يوفر Aspose.Words القدرة على التحكم في كيفية عرض المستند، بالإضافة إلى بعض الخيارات الإضافية. توضح هذه المقالة مثل هذه الاحتمالات.

## ضبط خيارات عرض المستند

يمكنك التحكم في كيفية عرض المستند في Microsoft Word باستخدام فئة [ViewOptions](https://reference.aspose.com/words/ar/net/aspose.words.settings/viewoptions/). على سبيل المثال، يمكنك تعيين قيمة تكبير/تصغير المستند باستخدام خاصية [ZoomPercent](https://reference.aspose.com/words/ar/net/aspose.words.settings/viewoptions/zoompercent/)، أو وضع العرض باستخدام خاصية [ViewType](https://reference.aspose.com/words/ar/net/aspose.words.settings/viewoptions/viewtype/).

يوضح مثال الكود التالي كيفية التأكد من عرض المستند بنسبة 50% عند فتحه في Microsoft Word:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-SetViewOption-SetViewOption.cs" >}}

{{% alert color="primary" %}}

يمكنك تنزيل ملف القالب لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

{{% alert color="primary" %}}

لا يكتب Microsoft Word 2013 أي عامل تكبير للمستند ولم يعد يقوم بتعيين التكبير الافتراضي من القيمة المكتوبة في المستند، بدلاً من ذلك، يبدو أنه يستخدم عامل التكبير/التصغير لآخر مستند مفتوح.

{{% /alert %}}

## ضبط خيارات عرض الصفحة

إذا كنت تريد تعيين عدد الأحرف لكل سطر، فاستخدم خاصية [CharactersPerLine](https://reference.aspose.com/words/ar/net/aspose.words/pagesetup/charactersperline/). يمكنك أيضًا تعيين عدد الأسطر لكل صفحة لمستند Word - استخدم خاصية [LinesPerPage](https://reference.aspose.com/words/ar/net/aspose.words/pagesetup/linesperpage/) للحصول على أو تعيين عدد الأسطر لكل صفحة في شبكة المستند.

{{% alert color="primary" %}}

في Microsoft Word، يمكنك تعيين نفس المعلمات باستخدام علامة التبويب "Document Grid" في مربع الحوار "Page Setup" فقط عند تثبيت دعم اللغة الآسيوية.

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالي كيفية تعيين عدد الأحرف لكل سطر وعدد الأسطر لكل صفحة لمستند Microsoft Word:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentPageSetup-DocumentPageSetup.cs" >}}

## ضبط تفضيلات اللغة

يعتمد عرض مستند في Microsoft Word على اللغات التي تم تعيينها كإعدادات افتراضية لهذا المستند. إذا لم يتم تعيين أي لغات في الإعدادات الافتراضية، فإن Microsoft Word يأخذ المعلومات من مربع الحوار "Set Office Language Preferences"، والذي، على سبيل المثال، يمكن العثور عليه ضمن "File → Options → Language" في Microsoft Word 2019.

باستخدام Aspose.Words، يمكنك أيضًا إعداد تفضيلات اللغة باستخدام فئة [LanguagePreferences](https://reference.aspose.com/words/ar/net/aspose.words.loading/languagepreferences/). لاحظ أيضًا أنه من أجل العرض الصحيح للمستند الخاص بك، من الضروري تعيين إصدار Microsoft Word الذي يجب أن تتطابق معه عملية تحميل المستند - ويمكن القيام بذلك باستخدام خاصية [MswVersion](https://reference.aspose.com/words/ar/net/aspose.words.loading/loadoptions/mswversion/).

{{% alert color="primary" %}}

إذا لم يبدو مستند Aspose.Words الذي تم إنشاؤه كما هو متوقع، فتحقق من قيم **LanguagePreferences** و**MswVersion** واضبطهما إذا لزم الأمر لتتوافق مع إعدادات إصدار Microsoft Word الخاص بك.

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالي كيفية إضافة اللغة اليابانية إلى لغات التحرير:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-Setuplanguagepreferences-AddJapaneseAsEditinglanguages.cs" >}}

يوضح مثال التعليمات البرمجية التالي كيفية تعيين اللغة الروسية كلغة التحرير الافتراضية:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-Setuplanguagepreferences-SetRussianAsDefaultEditingLanguage.cs" >}}

## تحسين مستند لإصدار Word معين

تسمح طريقة [OptimizeFor](https://reference.aspose.com/words/ar/net/aspose.words.settings/compatibilityoptions/optimizefor/) بتحسين محتوى المستند، بالإضافة إلى سلوك Aspose.Words الافتراضي لإصدار معين من Microsoft Word. يمكنك استخدام هذه الطريقة لمنع Microsoft Word من عرض شريط "وضع التوافق" عند تحميل المستند. لاحظ أنك قد تحتاج أيضًا إلى تعيين خاصية `Compliance` على Iso29500_2008_Transitional أو أعلى.

يوضح مثال التعليمات البرمجية التالي كيفية تحسين محتوى المستند لـ Microsoft Word 2016:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-SetCompatibilityOptions-OptimizeFor.cs" >}}
