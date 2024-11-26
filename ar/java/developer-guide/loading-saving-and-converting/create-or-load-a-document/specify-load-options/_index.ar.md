---
title: حدد خيارات التحميل في Java
second_title: Aspose.Words ل Java
articleTitle: حدد خيارات التحميل
linktitle: حدد خيارات التحميل
description: "قم بتعيين الخصائص المتقدمة عند تحميل مستند باستخدام Java للحصول على تحكم أكثر دقة في العملية."
type: docs
weight: 10
url: /ar/java/specify-load-options/
timestamp: 2024-01-27-14-07-04
---

عند تحميل مستند، يمكنك تعيين بعض الخصائص المتقدمة. Aspose.Words يوفر لك فئة [LoadOptions](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/)، والتي تتيح تحكما أكثر دقة في عملية التحميل. تحتوي بعض تنسيقات التحميل على فئة مقابلة تحتوي على خيارات التحميل لتنسيق التحميل هذا، على سبيل المثال، يوجد [PdfLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfloadoptions/) للتحميل إلى PDF تنسيق أو [TxtLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/) للتحميل إلى TXT. تقدم هذه المقالة أمثلة للعمل مع خيارات فئة **LoadOptions**.

## تعيين Microsoft Word نسخة لتغيير المظهر

إصدارات مختلفة من تطبيق Microsoft Word يمكن عرض المستندات بشكل مختلف. على سبيل المثال، هناك مشكلة معروفة مع OOXML وثائق مثل DOCX أو DOTX أنتجت باستخدام WPS مكتب. في مثل هذه الحالات، قد تكون عناصر ترميز المستند الأساسية مفقودة أو قد يتم تفسيرها بشكل مختلف مما يتسبب في Microsoft Word 2019 لإظهار مثل هذا المستند بشكل مختلف مقارنة بـ Microsoft Word 2010.

افتراضيا Aspose.Words يفتح المستندات باستخدام Microsoft Word 2019 قواعد. إذا كنت بحاجة إلى جعل تحميل المستند يظهر كما سيحدث في أحد إصدارات التطبيق Microsoft Word السابقة، فيجب عليك تحديد الإصدار المطلوب صراحة باستخدام خاصية [MswVersion](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getMswVersion) لفئة **LoadOptions**.

يوضح مثال التعليمات البرمجية التالية كيفية تعيين الإصدار Microsoft Word مع خيارات التحميل:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-SetMSWordVersion.java" >}}

## تعيين تفضيلات اللغة لتغيير المظهر

لا تعتمد تفاصيل عرض مستند في Microsoft Word على إصدار التطبيق وقيمة الخاصية **MswVersion** فحسب، بل تعتمد أيضا على إعدادات اللغة. Microsoft Word قد تظهر المستندات بشكل مختلف اعتمادا على إعدادات مربع الحوار" تفضيلات لغة المكتب "، والتي يمكن العثور عليها في"ملف Options خيارات Language لغة". باستخدام مربع الحوار هذا، يمكن للمستخدم تحديد، على سبيل المثال، اللغة الأساسية ولغات التدقيق ولغات العرض وما إلى ذلك. Aspose.Words يوفر خاصية [LanguagePreferences](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getLanguagePreferences) كمكافئ لمربع الحوار هذا. إذا كان الإخراج Aspose.Words يختلف عن الإخراج Microsoft Word، فقم بتعيين القيمة المناسبة لـ **EditingLanguage** - يمكن أن يؤدي ذلك إلى تحسين مستند الإخراج.

يوضح مثال الكود التالي كيفية تعيين اليابانية على أنها **EditingLanguage**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-AddJapaneseAsEditinglanguages.java" >}}

## استخدم WarningCallback للتحكم في المشكلات أثناء تحميل مستند

قد تكون بعض المستندات تالفة أو تحتوي على إدخالات غير صالحة أو تحتوي على ميزات غير مدعومة حاليا بواسطة Aspose.Words. إذا كنت تريد معرفة المشكلات التي حدثت أثناء تحميل مستند، Aspose.Words يوفر [IWarningCallback](https://reference.aspose.com/words/java/com.aspose.words/iwarningcallback/) واجهة.

يوضح مثال التعليمات البرمجية التالية تنفيذ واجهة **IWarningCallback**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-DocumentLoadingWarningCallback.java" >}}

للحصول على معلومات حول جميع المشاكل طوال وقت التحميل، استخدم خاصية [WarningCallback](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getWarningCallback).

يوضح مثال التعليمات البرمجية التالية كيفية استخدام هذه الخاصية:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-LoadOptionsWarningCallback.java" >}}

## استخدم ResourceLoadingCallback للتحكم في تحميل الموارد الخارجية

قد يحتوي المستند على روابط خارجية لصور موجودة في مكان ما على قرص محلي أو شبكة أو إنترنت. Aspose.Words يقوم تلقائيا بتحميل هذه الصور في مستند، ولكن هناك حالات تحتاج فيها هذه العملية إلى التحكم. على سبيل المثال، لتحديد ما إذا كنا نحتاج حقا إلى تحميل صورة معينة أو ربما تخطيها. يسمح لك خيار التحميل [ResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getResourceLoadingCallback) بالتحكم في ذلك.

يوضح مثال التعليمات البرمجية التالية تنفيذ واجهة [IResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/iresourceloadingcallback/):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-HtmlLinkedResourceLoadingCallback.java" >}}

يوضح مثال التعليمات البرمجية التالية كيفية استخدام الخاصية **ResourceLoadingCallback**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-LoadOptionsResourceLoadingCallback.java" >}}

## استخدم TempFolder لتجنب استثناء الذاكرة

Aspose.Words يدعم المستندات الكبيرة للغاية التي تحتوي على آلاف الصفحات المليئة بالمحتوى الغني. قد يتطلب تحميل هذه المستندات الكثير RAM. في عملية التحميل، Aspose.Words يحتاج المزيد من الذاكرة لعقد الهياكل المؤقتة المستخدمة لتحليل وثيقة.

إذا كانت لديك مشكلة في استثناء نفاد الذاكرة أثناء تحميل مستند، فحاول استخدام الخاصية [TempFolder](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getTempFolder). في هذه الحالة، سيقوم Aspose.Words بتخزين بعض البيانات في ملفات مؤقتة بدلا من الذاكرة، وهذا يمكن أن يساعد في تجنب مثل هذا الاستثناء.

يوضح مثال الكود التالي كيفية تعيين **TempFolder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-SetTempFolder.java" >}}

## تعيين الترميز صراحة

تخزن معظم تنسيقات المستندات الحديثة محتواها في يونيكود ولا تتطلب معالجة خاصة. من ناحية أخرى، لا يزال هناك العديد من المستندات التي تستخدم بعض ترميز ما قبل يونيكود وأحيانا إما تفوت معلومات الترميز أو لا تدعم حتى معلومات الترميز بطبيعتها. Aspose.Words يحاول اكتشاف الترميز المناسب تلقائيا بشكل افتراضي، ولكن في حالة نادرة قد تحتاج إلى استخدام ترميز مختلف عن الترميز الذي تم اكتشافه بواسطة خوارزمية التعرف على الترميز الخاصة بنا. في هذه الحالة، استخدم الخاصية [Encoding](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getEncoding) للحصول على الترميز أو تعيينه.

يوضح مثال التعليمات البرمجية التالية كيفية تعيين الترميز لتجاوز الترميز الذي تم اختياره تلقائيا:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-LoadOptionsEncoding.java" >}}

## تحميل المستندات المشفرة

يمكنك تحميل مستندات كلمة مشفرة بكلمة مرور. للقيام بذلك، استخدم الزائد منشئ خاص، الذي يقبل كائن [LoadOptions](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/). يحتوي هذا الكائن على خاصية [Password](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getPassword)، والتي تحدد سلسلة كلمة المرور.

يوضح مثال الكود التالي كيفية تحميل مستند مشفر بكلمة مرور:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenEncryptedDocument.java" >}}

إذا كنت لا تعرف مسبقا ما إذا كان الملف مشفرا، فيمكنك استخدام فئة [FileFormatUtil](https://reference.aspose.com/words/java/com.aspose.words/fileformatutil/)، والتي توفر طرقا مفيدة للعمل مع تنسيقات الملفات، مثل اكتشاف تنسيق الملف أو تحويل امتدادات الملفات إلى/من تعدادات تنسيق الملف. لاكتشاف ما إذا كان المستند مشفرا ويتطلب كلمة مرور لفتحه، استخدم خاصية [IsEncrypted](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#isEncrypted).

يوضح مثال الكود التالي كيفية التحقق من OpenDocument إما أنه مشفر أم لا:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-VerifyODTdocument.java" >}}
