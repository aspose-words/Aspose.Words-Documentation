---
title: تحديد الخيارات المتاحة Java
second_title: Aspose.Words for Java
articleTitle: تحديد خيارات القروض
linktitle: تحديد خيارات القروض
description: "وضع خصائص متقدمة عند تحميل وثيقة باستخدام Java للحصول على مراقبة أكثر دقة للعملية."
type: docs
weight: 10
url: /ar/java/specify-load-options/
timestamp: 2024-01-27-14-07-04
---

عند تحميل وثيقة، يمكنك وضع بعض الممتلكات المتقدمة. Aspose.Words يزودك بـ [LoadOptions](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/) الدرجة التي تسمح بمراقبة أكثر دقة لعملية التحميل بعض أشكال التحميل لها طبقة مناظرة تحتوي على خيارات تحميل لشكل الحمولة هذا، على سبيل المثال، هناك [PdfLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfloadoptions/) من أجل تحميلها على شكل قوات الدفاع الشعبي أو [TxtLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/) لتحميل (تي إكس تي) تقدم هذه المادة أمثلة على العمل مع خيارات **LoadOptions** الصف

## المجموعة Microsoft Word ترجمة

نسخ مختلفة من Microsoft Word ويمكن أن يعرض الطلب الوثائق بطريقة مختلفة. فعلى سبيل المثال، توجد مشكلة معروفة جيداً في وثائق OOXML مثل DOCX أو DOTX produced using WPS Office. وفي مثل هذه الحالات، قد تكون عناصر علامات الوثائق الأساسية في عداد المفقودين أو قد تفسر بطريقة مختلفة مما يسبب Microsoft Word 2019 لعرض مثل هذه الوثيقة بشكل مختلف مقارنة بـ Microsoft Word 2010.

بالخطأ Aspose.Words فتح الوثائق باستخدام Microsoft Word 2019 قاعدة إذا كنت بحاجة لجعل تحميل الوثائق تظهر كما سيحدث في واحد من السابق Microsoft Word نسخ الطلبات، ينبغي أن تحددوا صراحة الصيغة المنشودة باستخدام [MswVersion](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getMswVersion) ممتلكات **LoadOptions** الصف

The following code example shows how to set the Microsoft Word نسخة مع خيارات التحميل:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-SetMSWordVersion.java" >}}

## تحديد الأفضليات اللغوية لتغيير الظهور

تفاصيل عرض وثيقة في Microsoft Word لا يعتمد فقط على نسخة الطلب وعلى **MswVersion** القيمة العقارية، ولكن أيضاً في أطر اللغات. Microsoft Word يمكن أن تظهر الوثائق بشكل مختلف تبعاً لـ "أفضليات اللغة المكتبية" وباستخدام هذا الهاتف يمكن للمستعمل أن يختار، على سبيل المثال، اللغة الأولية، لغات الإثبات، لغات العرض، وما إلى ذلك. Aspose.Words يوفر [LanguagePreferences](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getLanguagePreferences) -ممتلكات معادلة لهجة إذا Aspose.Words يختلف الناتج عن Microsoft Word الناتج، يحدد القيمة المناسبة **EditingLanguage** - يمكن أن يؤدي ذلك إلى تحسين وثيقة الناتج.

المثال الرمزي التالي يُظهر كيفية وضع اليابانيين **EditingLanguage**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-AddJapaneseAsEditinglanguages.java" >}}

## الاستخدام WarningCallback to Control Problems بينما تحمل وثيقة

وقد تفسد بعض الوثائق، أو تتضمن قيودا غير صحيحة، أو تكون لها سمات لا تدعمها حاليا Aspose.Words. إذا كنت تريد أن تعرف عن المشاكل التي حدثت أثناء تحميل وثيقة، Aspose.Words يوفر [IWarningCallback](https://reference.aspose.com/words/java/com.aspose.words/iwarningcallback/) واجهة

ويبين المثال الرمزي التالي تنفيذ **IWarningCallback** واجهة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-DocumentLoadingWarningCallback.java" >}}

للحصول على معلومات عن جميع المشاكل طوال فترة الحمل، استخدام [WarningCallback](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getWarningCallback) ملكية

The following code example shows how to use this property:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-LoadOptionsWarningCallback.java" >}}

## استخدام الموارد نداء لمكافحة تحميل الموارد الخارجية

ويمكن أن تتضمن الوثيقة وصلات خارجية بالصور الموجودة في مكان ما على قرص محلي أو شبكة أو شبكة محلية. Aspose.Words وتحمّل هذه الصور تلقائياً في وثيقة ما، ولكن هناك حالات يتعين فيها السيطرة على هذه العملية. على سبيل المثال، أن نقرر ما إذا كنا حقا بحاجة إلى تحميل صورة معينة أو ربما تخطيها. The [ResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getResourceLoadingCallback) خيار التحميل يسمح لك بالتحكم في هذا

ويبين المثال الرمزي التالي تنفيذ [IResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/iresourceloadingcallback/) واجهة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-HtmlLinkedResourceLoadingCallback.java" >}}

The following code example shows how to use the **ResourceLoadingCallback** الممتلكات:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-LoadOptionsResourceLoadingCallback.java" >}}

## إستخدم (تيمبندر) لتجنب إستثناء الذاكرة

Aspose.Words تؤيد الوثائق الكبيرة جدا التي تحتوي على آلاف الصفحات المليئة بالمحتوى الغني. وقد يتطلب وضع هذه الوثائق الكثير من إجراءات إدارة السجلات والمحفوظات. في عملية التحميل Aspose.Words ويحتاج الأمر إلى مزيد من الذاكرة لإقامة هياكل مؤقتة تستخدم في صياغة وثيقة.

إذا كان لديك مشكلة مع استثناء خارج الذاكرة بينما تحميل وثيقة، محاولة استخدام [TempFolder](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getTempFolder) ملكية في هذه الحالة Aspose.Words وسوف تخزن بعض البيانات في الملفات المؤقتة بدلا من الذاكرة، وهذا يمكن أن يساعد على تجنب هذا الاستثناء.

ويبين المثال الرمزي التالي كيفية وضعه **TempFolder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-SetTempFolder.java" >}}

## جهز الترميز بشكل واضح

ومعظم أشكال الوثائق الحديثة تخزن محتواها في أونيكود ولا تتطلب مناولة خاصة. ومن جهة أخرى، لا تزال هناك العديد من الوثائق التي تستخدم بعض التزيينات السابقة للتوحيد، وأحياناً إما تفوت المعلومات أو لا تدعم حتى المعلومات المزينة حسب الطبيعة. Aspose.Words يحاول أن يكتشف تلقائياً التشفير المناسب عن طريق التقصير لكن في حالة نادرة قد تحتاج إلى استخدام تشفير مختلف عن الذي اكتشفه خوارزمياتنا In this case, use the [Encoding](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getEncoding) ملكية للحصول على أو وضع الزينة.

The following code example shows how to set the encoding to override the automatically chosen encoding:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-LoadOptionsEncoding.java" >}}

## وثائق مشفرة

يمكنك تحميل وثائق الكلمات مشفرة بكلمة سر للقيام بذلك، استخدام تحميل خاص للتشييد، الذي يقبل [LoadOptions](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/) هدف هذا الجسم يحتوي على [Password](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getPassword) الممتلكات التي تحدد خط كلمة السر

ويبين المثال الرمزي التالي كيفية تحميل وثيقة مشفرة بكلمة سر:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenEncryptedDocument.java" >}}

إذا كنت لا تعرف مسبقا ما إذا كان الملف مشفرة، يمكنك استخدام [FileFormatUtil](https://reference.aspose.com/words/java/com.aspose.words/fileformatutil/) الدرجة التي توفر أساليب مفيدة للعمل في شكل ملفات، مثل الكشف عن شكل الملفات أو تحويل تمديدات الملفات إلى/من قوائم الاستمارة. للكشف عما إذا كانت الوثيقة مشفرة وتتطلب كلمة سر لفتحها، واستخدام [IsEncrypted](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#isEncrypted) ملكية

ويبين المثال الرمزي التالي كيفية التحقق من الوثائق المفتوحة إما أنها مشفرة أو لا:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-VerifyODTdocument.java" >}}
