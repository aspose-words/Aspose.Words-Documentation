---
title: حدد خيارات التحميل في Python
second_title: Aspose.Words لـ Python via .NET
articleTitle: تحديد خيارات التحميل
linktitle: تحديد خيارات التحميل
description: "التحكم بشكل أكثر دقة في عملية التحميل باستخدام Python."
type: docs
weight: 10
url: /ar/python-net/specify-load-options/
---

عند تحميل مستند، يمكنك تعيين بعض الخصائص المتقدمة. يوفر لك Aspose.Words فئة [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/)، والتي تسمح بتحكم أكثر دقة في عملية التحميل. تحتوي بعض تنسيقات التحميل على فئة مقابلة تحتوي على خيارات التحميل لتنسيق التحميل هذا، على سبيل المثال، يوجد [PdfLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/) للتحميل إلى تنسيق PDF أو [TxtLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/) للتحميل إلى TXT. توفر هذه المقالة أمثلة على العمل مع خيارات فئة [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/).

## قم بتعيين إصدار Microsoft Word لتغيير المظهر

يمكن للإصدارات المختلفة من تطبيق Microsoft Word عرض المستندات بشكل مختلف. على سبيل المثال، هناك مشكلة معروفة في مستندات OOXML مثل DOCX أو DOTX التي يتم إنتاجها باستخدام WPS Office. في مثل هذه الحالة، قد تكون عناصر ترميز المستند الأساسية مفقودة أو قد يتم تفسيرها بشكل مختلف مما يتسبب في عرض Microsoft Word 2019 لمثل هذا المستند بشكل مختلف مقارنةً بـ Microsoft Word 2010.

افتراضيًا، يفتح Aspose.Words المستندات باستخدام قواعد Microsoft Word 2019. إذا كنت بحاجة إلى إظهار تحميل المستند كما يحدث في أحد إصدارات تطبيق Microsoft Word السابقة، فيجب عليك تحديد الإصدار المطلوب بشكل صريح باستخدام خاصية [msw_version](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/msw_version/) لفئة [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/).

يوضح مثال التعليمات البرمجية التالي كيفية تعيين إصدار Microsoft Word مع خيارات التحميل:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-SetMSWordVersion.py" >}}

## اضبط تفضيلات اللغة لتغيير المظهر

لا تعتمد تفاصيل عرض مستند في Microsoft Word على إصدار التطبيق وقيمة خاصية [msw_version](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/msw_version/) فحسب، بل تعتمد أيضًا على إعدادات اللغة. قد يعرض Microsoft Word المستندات بشكل مختلف اعتمادًا على إعدادات الحوار "تفضيلات لغة المكتب"، والتي يمكن العثور عليها في "ملف → خيارات → اللغة". باستخدام مربع الحوار هذا، يمكن للمستخدم تحديد، على سبيل المثال، اللغة الأساسية ولغات التدقيق ولغات العرض وما إلى ذلك. يوفر Aspose.Words خاصية [language_preferences](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/language_preferences/) كمكافئة لمربع الحوار هذا. إذا كان مخرج Aspose.Words يختلف عن مخرج Microsoft Word، فقم بتعيين القيمة المناسبة لـ [EditingLanguage](https://reference.aspose.com/words/python-net/aspose.words.loading/editinglanguage/) - يمكن أن يؤدي ذلك إلى تحسين مستند الإخراج.

يوضح مثال التعليمات البرمجية التالي كيفية تعيين اللغة اليابانية كـ [EditingLanguage](https://reference.aspose.com/words/python-net/aspose.words.loading/editinglanguage/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-AddJapaneseAsEditinglanguages.py" >}}

## استخدم TempFolder لتجنب استثناء الذاكرة

يدعم Aspose.Words المستندات الكبيرة جدًا التي تحتوي على آلاف الصفحات المليئة بالمحتوى الغني. قد يتطلب تحميل مثل هذه المستندات قدرًا كبيرًا من ذاكرة الوصول العشوائي. في عملية التحميل، يحتاج Aspose.Words إلى المزيد من الذاكرة للاحتفاظ بالهياكل المؤقتة المستخدمة لتحليل المستند.

إذا كانت لديك مشكلة في استثناء نفاد الذاكرة أثناء تحميل مستند، فحاول استخدام خاصية [temp_folder](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/temp_folder/). في هذه الحالة، سيقوم Aspose.Words بتخزين بعض البيانات في ملفات مؤقتة بدلاً من الذاكرة، وهذا يمكن أن يساعد في تجنب مثل هذا الاستثناء.

يوضح مثال التعليمات البرمجية التالي كيفية تعيين [temp_folder](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/temp_folder/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-UseTempFolder.py" >}}

## اضبط الترميز بشكل صريح

تقوم معظم تنسيقات المستندات الحديثة بتخزين محتواها بتنسيق Unicode ولا تتطلب معالجة خاصة. من ناحية أخرى، لا يزال هناك العديد من المستندات التي تستخدم بعض ترميز ما قبل Unicode وفي بعض الأحيان إما تفوت معلومات الترميز أو لا تدعم حتى معلومات الترميز بطبيعتها. يحاول Aspose.Words اكتشاف الترميز المناسب تلقائيًا بشكل افتراضي، ولكن في حالة نادرة قد تحتاج إلى استخدام ترميز مختلف عن الذي اكتشفته خوارزمية التعرف على الترميز لدينا. في هذه الحالة، استخدم خاصية [encoding](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/encoding/) للحصول على الترميز أو تعيينه.

يوضح مثال التعليمات البرمجية التالي كيفية تعيين الترميز لتجاوز الترميز المختار تلقائيًا:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-LoadWithEncoding.py" >}}

## تحميل المستندات المشفرة

يمكنك تحميل مستندات Word مشفرة بكلمة مرور. للقيام بذلك، استخدم التحميل الزائد للمنشئ الخاص الذي يقبل كائن [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/). يحتوي هذا الكائن على خاصية [password](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/password/)، التي تحدد سلسلة كلمة المرور.

يوضح مثال التعليمات البرمجية التالي كيفية تحميل مستند مشفر بكلمة مرور:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-OpenEncryptedDocument.py" >}}

إذا كنت لا تعرف مقدمًا ما إذا كان الملف مشفرًا، فيمكنك استخدام فئة [FileFormatUtil](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/)، التي توفر طرقًا مفيدة للعمل مع تنسيقات الملفات، مثل اكتشاف تنسيق الملف أو تحويل امتدادات الملفات إلى/من تعدادات تنسيقات الملفات. لاكتشاف ما إذا كان المستند مشفرًا ويتطلب كلمة مرور لفتحه، استخدم خاصية [is_encrypted](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/is_encrypted/).

يوضح مثال التعليمات البرمجية التالي كيفية التحقق من المستند سواء كان مشفرًا أم لا:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-VerifyEncryptedDocument.py" >}}
