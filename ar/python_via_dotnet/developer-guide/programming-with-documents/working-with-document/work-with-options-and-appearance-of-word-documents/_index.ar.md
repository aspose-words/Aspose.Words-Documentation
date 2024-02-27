---
title: الخيارات والمظهر مستند Word
second_title: Aspose.Words لـ Python
articleTitle: العمل مع الخيارات ومظهر مستندات Word
linktitle: العمل مع الخيارات ومظهر مستندات Word
description: "التحكم في مظهر مستندات Word مع مراعاة الفرق بين إصدارات Microsoft Word المختلفة باستخدام Python."
type: docs
weight: 40
url: /ar/python-net/work-with-word-document-options-and-appearance/
---

في بعض الأحيان قد تحتاج إلى تغيير مظهر المستند، على سبيل المثال، تعيين تفضيلات اللغة أو عدد الأسطر في كل صفحة. يوفر Aspose.Words القدرة على التحكم في كيفية عرض المستند، بالإضافة إلى بعض الخيارات الإضافية. توضح هذه المقالة مثل هذه الاحتمالات.

## ضبط خيارات عرض المستند

يمكنك التحكم في كيفية عرض المستند في Microsoft Word باستخدام فئة [ViewOptions](https://reference.aspose.com/words/python-net/aspose.words.settings/viewoptions/). على سبيل المثال، يمكنك تعيين قيمة تكبير/تصغير المستند باستخدام خاصية [zoom_percent](https://reference.aspose.com/words/python-net/aspose.words.settings/viewoptions/zoom_percent/)، أو وضع العرض باستخدام خاصية [view_type](https://reference.aspose.com/words/python-net/aspose.words.settings/viewoptions/view_type/).

يوضح مثال الكود التالي كيفية التأكد من عرض المستند بنسبة 50% عند فتحه في Microsoft Word:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-SetViewOption.py" >}}

{{% alert color="primary" %}}

يمكنك تنزيل ملف القالب لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

{{% alert color="primary" %}}

لا يكتب Microsoft Word 2013 أي عامل تكبير للمستند ولم يعد يقوم بتعيين التكبير الافتراضي من القيمة المكتوبة في المستند، بدلاً من ذلك، يبدو أنه يستخدم عامل التكبير/التصغير لآخر مستند مفتوح.

{{% /alert %}}

## ضبط خيارات عرض الصفحة

إذا كنت تريد تعيين عدد الأحرف لكل سطر، فاستخدم خاصية [characters_per_line](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/characters_per_line/). يمكنك أيضًا تعيين عدد الأسطر لكل صفحة لمستند Word - استخدم خاصية [lines_per_page](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/lines_per_page/) للحصول على أو تعيين عدد الأسطر لكل صفحة في شبكة المستند.

{{% alert color="primary" %}}

في Microsoft Word، يمكنك تعيين نفس المعلمات باستخدام علامة التبويب "Document Grid" في مربع الحوار "Page Setup" فقط عند تثبيت دعم اللغة الآسيوية.

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالي كيفية تعيين عدد الأحرف لكل سطر وعدد الأسطر لكل صفحة لمستند Microsoft Word:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-DocumentPageSetup.py" >}}

## ضبط تفضيلات اللغة

يعتمد عرض مستند في Microsoft Word على اللغات التي تم تعيينها كإعدادات افتراضية لهذا المستند. إذا لم يتم تعيين أي لغات في الإعدادات الافتراضية، فإن Microsoft Word يأخذ المعلومات من مربع الحوار "Set Office Language Preferences"، والذي، على سبيل المثال، يمكن العثور عليه ضمن "File → Options → Language" في Microsoft Word 2019.

باستخدام Aspose.Words، يمكنك أيضًا إعداد تفضيلات اللغة باستخدام فئة [LanguagePreferences](https://reference.aspose.com/words/python-net/aspose.words.loading/languagepreferences/). لاحظ أيضًا أنه من أجل العرض الصحيح للمستند الخاص بك، من الضروري تعيين إصدار Microsoft Word الذي يجب أن تتطابق معه عملية تحميل المستند - ويمكن القيام بذلك باستخدام خاصية [msw_version](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/msw_version/).

{{% alert color="primary" %}}

إذا لم يبدو مستند Aspose.Words الذي تم إنشاؤه كما هو متوقع، فتحقق من قيم [language_preferences](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/language_preferences/) و[msw_version](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/msw_version/) واضبطهما إذا لزم الأمر لتتوافق مع إعدادات إصدار Microsoft Word الخاص بك.

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالي كيفية إضافة اللغة اليابانية إلى لغات التحرير:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-AddJapaneseAsEditinglanguages.py" >}}

يوضح مثال التعليمات البرمجية التالي كيفية تعيين اللغة الروسية كلغة التحرير الافتراضية:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-SetRussianAsDefaultEditingLanguage.py" >}}

## تحسين مستند لإصدار Word معين

تسمح طريقة [optimize_for](https://reference.aspose.com/words/python-net/aspose.words.settings/compatibilityoptions/optimize_for/) بتحسين محتوى المستند، بالإضافة إلى سلوك Aspose.Words الافتراضي لإصدار معين من Microsoft Word. يمكنك استخدام هذه الطريقة لمنع Microsoft Word من عرض شريط "وضع التوافق" عند تحميل المستند. لاحظ أنك قد تحتاج أيضًا إلى تعيين خاصية [compliance](https://reference.aspose.com/words/python-net/aspose.words/document/compliance/) على [ISO29500_2008_TRANSITIONAL](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlcompliance/#iso29500_2008_transitional) أو أعلى.

يوضح مثال التعليمات البرمجية التالي كيفية تحسين محتوى المستند لـ Microsoft Word 2016:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-OptimizeForMsWord.py" >}}
