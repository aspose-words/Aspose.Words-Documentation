---
title: خيارات ومظهر مستندات ورد
second_title: Aspose.Words ل C++
articleTitle: العمل مع خيارات ومظهر وثائق كلمة
linktitle: العمل مع خيارات ومظهر وثائق كلمة
description: "السيطرة على ظهور وثائق وورد مع الأخذ بعين الاعتبار الفرق بين مختلف Microsoft Word الإصدارات."
type: docs
weight: 40
url: /ar/cpp/work-with-word-document-options-and-appearance/
timestamp: 2024-01-27-14-07-04
---

قد تحتاج أحيانا إلى تغيير مظهر المستند، على سبيل المثال، تعيين تفضيلات اللغة أو عدد الأسطر في كل صفحة.Aspose.Words يوفر القدرة على التحكم في كيفية عرض المستند، بالإضافة إلى بعض الخيارات الإضافية. توضح هذه المقالة هذه الاحتمالات.

## تعيين خيارات عرض المستند

يمكنك التحكم في كيفية عرض مستند في Microsoft Word باستخدام فئة [ViewOptions](https://reference.aspose.com/words/cpp/aspose.words.settings/viewoptions/). على سبيل المثال، يمكنك تعيين قيمة تكبير المستند باستخدام خاصية [ZoomPercent](https://reference.aspose.com/words/cpp/aspose.words.settings/viewoptions/get_zoompercent/)، أو وضع العرض باستخدام خاصية [ViewType](https://reference.aspose.com/words/cpp/aspose.words.settings/viewoptions/get_viewtype/).

يوضح مثال الكود التالي كيفية التأكد من عرض مستند بنسبة 50 ٪ عند فتحه في Microsoft Word:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-SetViewOption-SetViewOption.cpp" >}}

{{% alert color="primary" %}}

يمكنك تنزيل ملف القالب لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word 2013 لا يكتب أي عامل تكبير إلى مستند ولم يعد يحدد التكبير الافتراضي من القيمة المكتوبة إلى المستند، بدلا من ذلك، يبدو أنه يستخدم عامل التكبير لآخر مستند مفتوح.

{{% /alert %}}

## تعيين خيارات عرض الصفحة

إذا كنت تريد تعيين عدد الأحرف في كل سطر، فاستخدم الخاصية [CharactersPerLine](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_charactersperline/). يمكنك أيضا تعيين عدد الأسطر لكل صفحة لمستند ورد-استخدم خاصية [LinesPerPage](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_linesperpage/) للحصول على أو تعيين عدد الأسطر لكل صفحة في شبكة المستند.

{{% alert color="primary" %}}

في Microsoft Word، يمكنك تعيين نفس المعلمات باستخدام علامة التبويب" شبكة المستندات "في مربع الحوار" إعداد الصفحة " فقط عند تثبيت دعم اللغة الآسيوية.

{{% /alert %}}

يوضح مثال الكود التالي كيفية تعيين عدد الأحرف في كل سطر وعدد الأسطر في كل صفحة لمستند Microsoft Word:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentPageSetup-DocumentPageSetup.cpp" >}}

## تعيين تفضيلات اللغة

يعتمد عرض مستند في Microsoft Word على اللغات التي تم تعيينها كإعدادات افتراضية لهذا المستند. إذا لم يتم تعيين أي لغات في الإعدادات الافتراضية، Microsoft Word يأخذ معلومات من مربع الحوار" تعيين تفضيلات لغة المكتب "، والذي، على سبيل المثال، يمكن العثور عليه ضمن" ملف Options خيارات Language لغة " في Microsoft Word 2019.

باستخدام Aspose.Words، يمكنك أيضا إعداد تفضيلات اللغة باستخدام فئة [LanguagePreferences](https://reference.aspose.com/words/cpp/aspose.words.loading/languagepreferences/). لاحظ أيضا أنه من أجل العرض الصحيح للمستند الخاص بك، من الضروري تعيين الإصدار Microsoft Word الذي يجب أن تتطابق معه عملية تحميل المستند – يمكن القيام بذلك باستخدام خاصية [MswVersion](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_mswversion/).

{{% alert color="primary" %}}

إذا كان المستند الذي تم إنشاؤه Aspose.Words لا يبدو كما هو متوقع، فتحقق من قيمتي **LanguagePreferences** و **MswVersion** واضبطهما إذا لزم الأمر لمطابقة إعدادات الإصدار Microsoft Word.

{{% /alert %}}

يوضح مثال الكود التالي كيفية إضافة اللغة اليابانية إلى لغات التحرير:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-Setuplanguagepreferences-AddJapaneseAsEditinglanguages.cpp" >}}

يوضح مثال الكود التالي كيفية تعيين اللغة الروسية كلغة تحرير افتراضية:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-Setuplanguagepreferences-SetRussianAsDefaultEditingLanguage.cpp" >}}

## تحسين مستند لإصدار كلمة معينة

تسمح طريقة [OptimizeFor](https://reference.aspose.com/words/cpp/aspose.words.settings/compatibilityoptions/optimizefor/) بتحسين محتوى المستند، بالإضافة إلى السلوك الافتراضي Aspose.Words لإصدار معين من Microsoft Word. يمكنك استخدام هذه الطريقة لمنع Microsoft Word من عرض شريط "وضع التوافق" عند تحميل المستند. لاحظ أنك قد تحتاج أيضا إلى تعيين الخاصية `Compliance` إلى إيزو 29500_2008_ ترانزيتيونال أو أعلى.

يوضح مثال الكود التالي كيفية تحسين محتوى المستند لـ Microsoft Word 2016:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-SetCompatibilityOptions-OptimizeFor.cpp" >}}
