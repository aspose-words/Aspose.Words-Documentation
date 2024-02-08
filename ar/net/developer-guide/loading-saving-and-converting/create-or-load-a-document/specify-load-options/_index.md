---
title: حدد خيارات التحميل في C#
second_title: Aspose.Words لـ .NET
articleTitle: تحديد خيارات التحميل
linktitle: تحديد خيارات التحميل
description: "التحكم بشكل أكثر دقة في عملية التحميل باستخدام C#."
type: docs
weight: 10
url: /ar/net/specify-load-options/
---

عند تحميل مستند، يمكنك تعيين بعض الخصائص المتقدمة. يوفر لك Aspose.Words فئة [LoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/)، والتي تسمح بتحكم أكثر دقة في عملية التحميل. تحتوي بعض تنسيقات التحميل على فئة مقابلة تحتوي على خيارات التحميل لتنسيق التحميل هذا، على سبيل المثال، يوجد [PdfLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/) للتحميل إلى تنسيق PDF أو [TxtLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/) للتحميل إلى TXT. توفر هذه المقالة أمثلة على العمل مع خيارات فئة **LoadOptions**.

## قم بتعيين إصدار Microsoft Word لتغيير المظهر

يمكن للإصدارات المختلفة من تطبيق Microsoft Word عرض المستندات بشكل مختلف. على سبيل المثال، هناك مشكلة معروفة في مستندات OOXML مثل DOCX أو DOTX التي يتم إنتاجها باستخدام WPS Office. في مثل هذه الحالة، قد تكون عناصر ترميز المستند الأساسية مفقودة أو قد يتم تفسيرها بشكل مختلف مما يتسبب في عرض Microsoft Word 2019 لمثل هذا المستند بشكل مختلف مقارنةً بـ Microsoft Word 2010.

افتراضيًا، يفتح Aspose.Words المستندات باستخدام قواعد Microsoft Word 2019. إذا كنت بحاجة إلى إظهار تحميل المستند كما يحدث في أحد إصدارات تطبيق Microsoft Word السابقة، فيجب عليك تحديد الإصدار المطلوب بشكل صريح باستخدام خاصية [MswVersion](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/mswversion/) لفئة **LoadOptions**.

يوضح مثال التعليمات البرمجية التالي كيفية تعيين إصدار Microsoft Word مع خيارات التحميل:

{{< gist "aspose-words-gists" "62b066455ff6af0e8727e3fddae47aee" "load-docx-with-msword-version.cs" >}}

## اضبط تفضيلات اللغة لتغيير المظهر

لا تعتمد تفاصيل عرض مستند في Microsoft Word على إصدار التطبيق وقيمة خاصية **MswVersion** فحسب، بل تعتمد أيضًا على إعدادات اللغة. قد يعرض Microsoft Word المستندات بشكل مختلف اعتمادًا على إعدادات الحوار "تفضيلات لغة المكتب"، والتي يمكن العثور عليها في "ملف → خيارات → اللغة". باستخدام مربع الحوار هذا، يمكن للمستخدم تحديد، على سبيل المثال، اللغة الأساسية ولغات التدقيق ولغات العرض وما إلى ذلك. يوفر Aspose.Words خاصية [LanguagePreferences](https://reference.aspose.com/words/net/aspose.words.loading/languagepreferences/) كمكافئة لمربع الحوار هذا. إذا كان مخرج Aspose.Words يختلف عن مخرج Microsoft Word، فقم بتعيين القيمة المناسبة لـ **EditingLanguage** - يمكن أن يؤدي ذلك إلى تحسين مستند الإخراج.

يوضح مثال التعليمات البرمجية التالي كيفية تعيين اللغة اليابانية كـ **EditingLanguage**:

{{< gist "aspose-words-gists" "5d49772a182a61eac0dcb9c13c98bc6e" "load-docx-with-japanese-as-editing-language.cs" >}}

## استخدم WarningCallback للتحكم في المشكلات أثناء تحميل المستند

قد تكون بعض المستندات تالفة، أو تحتوي على إدخالات غير صالحة، أو تحتوي على ميزات لا يدعمها Aspose.Words حاليًا. إذا كنت تريد التعرف على المشكلات التي حدثت أثناء تحميل مستند، فإن Aspose.Words يوفر واجهة [IWarningCallback](https://reference.aspose.com/words/net/aspose.words/iwarningcallback/).

يوضح مثال الكود التالي تنفيذ واجهة **IWarningCallback**:

{{< gist "aspose-words-gists" "98a2dc9a7968c829a68373fa824822c9" "document-loading-warning-callback.cs" >}}

للحصول على معلومات حول جميع المشاكل طوال وقت التحميل، استخدم خاصية [WarningCallback](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/warningcallback/).

يوضح مثال التعليمات البرمجية التالي كيفية استخدام هذه الخاصية:

{{< gist "aspose-words-gists" "98a2dc9a7968c829a68373fa824822c9" "load-docx-with-warning-callback.cs" >}}

## استخدم ResourceLoadingCallback للتحكم في تحميل الموارد الخارجية

قد يحتوي المستند على روابط خارجية لصور موجودة في مكان ما على القرص المحلي أو الشبكة أو الإنترنت. يقوم Aspose.Words تلقائيًا بتحميل هذه الصور في المستند، ولكن هناك حالات تحتاج فيها هذه العملية إلى التحكم. على سبيل المثال، لنقرر ما إذا كنا نحتاج حقًا إلى تحميل صورة معينة أو ربما تخطيها. يتيح لك خيار تحميل [ResourceLoadingCallback](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/resourceloadingcallback/) التحكم في هذا.

يوضح مثال الكود التالي تنفيذ واجهة [IResourceLoadingCallback](https://reference.aspose.com/words/net/aspose.words.loading/iresourceloadingcallback/):

{{< gist "aspose-words-gists" "513c134d5e8e8126c385324f2d001a9b" "html-linked-resource-loading-callback.cs" >}}

يوضح مثال التعليمات البرمجية التالي كيفية استخدام خاصية **ResourceLoadingCallback**:

{{< gist "aspose-words-gists" "513c134d5e8e8126c385324f2d001a9b" "load-html-with-resource-loading-callback.cs" >}}

## استخدم TempFolder لتجنب استثناء الذاكرة

يدعم Aspose.Words المستندات الكبيرة جدًا التي تحتوي على آلاف الصفحات المليئة بالمحتوى الغني. قد يتطلب تحميل مثل هذه المستندات قدرًا كبيرًا من ذاكرة الوصول العشوائي. في عملية التحميل، يحتاج Aspose.Words إلى المزيد من الذاكرة للاحتفاظ بالهياكل المؤقتة المستخدمة لتحليل المستند.

إذا كانت لديك مشكلة في استثناء نفاد الذاكرة أثناء تحميل مستند، فحاول استخدام خاصية [TempFolder](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/tempfolder/). في هذه الحالة، سيقوم Aspose.Words بتخزين بعض البيانات في ملفات مؤقتة بدلاً من الذاكرة، وهذا يمكن أن يساعد في تجنب مثل هذا الاستثناء.

يوضح مثال التعليمات البرمجية التالي كيفية تعيين **TempFolder**:

{{< gist "aspose-words-gists" "80fb635124a6afc0e75b9f17d1eab40c" "load-docx-using-temp-folder.cs" >}}

## اضبط الترميز بشكل صريح

تقوم معظم تنسيقات المستندات الحديثة بتخزين محتواها بتنسيق Unicode ولا تتطلب معالجة خاصة. من ناحية أخرى، لا يزال هناك العديد من المستندات التي تستخدم بعض ترميز ما قبل Unicode وفي بعض الأحيان إما تفوت معلومات الترميز أو لا تدعم حتى معلومات الترميز بطبيعتها. يحاول Aspose.Words اكتشاف الترميز المناسب تلقائيًا بشكل افتراضي، ولكن في حالة نادرة قد تحتاج إلى استخدام ترميز مختلف عن الذي اكتشفته خوارزمية التعرف على الترميز لدينا. في هذه الحالة، استخدم خاصية [Encoding](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/encoding/) للحصول على الترميز أو تعيينه.

يوضح مثال التعليمات البرمجية التالي كيفية تعيين الترميز لتجاوز الترميز المختار تلقائيًا:

{{< gist "aspose-words-gists" "507181f2c99ba13012c441f1c436d9a7" "load-txt-using-encoding.cs" >}}

## تحميل المستندات المشفرة

يمكنك تحميل مستندات Word مشفرة بكلمة مرور. للقيام بذلك، استخدم التحميل الزائد للمنشئ الخاص الذي يقبل كائن [LoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/). يحتوي هذا الكائن على خاصية [Password](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/password/)، التي تحدد سلسلة كلمة المرور.

يوضح مثال التعليمات البرمجية التالي كيفية تحميل مستند مشفر بكلمة مرور:

{{< gist "aspose-words-gists" "5b929b4208996737657de94443bc2852" "load-encrypted-docx.cs" >}}

إذا كنت لا تعرف مقدمًا ما إذا كان الملف مشفرًا، فيمكنك استخدام فئة [FileFormatUtil](https://reference.aspose.com/words/net/aspose.words/fileformatutil/)، التي توفر طرقًا مفيدة للعمل مع تنسيقات الملفات، مثل اكتشاف تنسيق الملف أو تحويل امتدادات الملفات إلى/من تعدادات تنسيقات الملفات. لاكتشاف ما إذا كان المستند مشفرًا ويتطلب كلمة مرور لفتحه، استخدم خاصية [IsEncrypted](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/isencrypted/).

يوضح مثال التعليمات البرمجية التالي كيفية التحقق من OpenDocument سواء كان مشفرًا أم لا:

{{< gist "aspose-words-gists" "935e41f0f59c7d8bd8a082ccc14f6b84" "verify-odt-is-encrypted.cs" >}}
