---
title: حدد موقع خطوط TrueType في C#
second_title: Aspose.Words لـ .NET
articleTitle: تحديد موقع خطوط تروتايب
linktitle: تحديد موقع خطوط تروتايب
description: "حدد مصادر خطوط TrueType المتنوعة: مجلد النظام، أو مصادر المستخدم، أو تحميل الخطوط من التدفق، أو نظام الملفات، أو الذاكرة باستخدام C#."
type: docs
weight: 30
url: /ar/net/specifying-truetype-fonts-location/
timestamp: 2024-10-24-11-44-28
---

يصف هذا الموضوع السلوك الافتراضي لـ Aspose.Words عندما يبحث عن خطوط TrueType، بما في ذلك الاختلافات الخاصة بنظام التشغيل، ويوضح كيفية تحديد مصادر خطوط المستخدم.

يتم استخدام فئة [FontSourceBase](https://reference.aspose.com/words/ar/net/aspose.words.fonts/fontsourcebase/) لتحديد مصادر الخطوط المختلفة. هناك العديد من تطبيقات فئة **FontSourceBase**:

- [SystemFontSource](https://reference.aspose.com/words/ar/net/aspose.words.fonts/systemfontsource)
- [FolderFontSource](https://reference.aspose.com/words/ar/net/aspose.words.fonts/folderfontsource)
- [StreamFontSource](https://reference.aspose.com/words/ar/net/aspose.words.fonts/streamfontsource)
- [FileFontSource](https://reference.aspose.com/words/ar/net/aspose.words.fonts/filefontsource)
- [MemoryFontSource](https://reference.aspose.com/words/ar/net/aspose.words.fonts/memoryfontsource)

تفاصيل التنفيذ لبعض الفئات موضحة أدناه.

## تحميل الخطوط من نظام {#loading-fonts-from-system}

هناك فئة [SystemFontSource](https://reference.aspose.com/words/ar/net/aspose.words.fonts/systemfontsource/) خاصة يتم استخدامها دائمًا بشكل افتراضي. وهو يمثل جميع خطوط TrueType المثبتة على النظام. لذلك، من الممكن إنشاء قائمة مصادر باستخدام **SystemFontSource** وأي مصادر أخرى مطلوبة:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFolders-SetFontsFolders.cs" >}}

يتم تعريف مثيل واحد لفئة **SystemFontSource** افتراضيًا في [FontSettings](https://reference.aspose.com/words/ar/net/aspose.words.fonts/fontsettings/). في أنظمة التشغيل المختلفة، قد توجد الخطوط في أماكن مختلفة. ومع ذلك، فإن استخدام مثيل **FontSettings** لكل مستند ليس هو الحل الأمثل. في معظم الحالات، يجب أن يكون استخدام [DefaultInstance](https://reference.aspose.com/words/ar/net/aspose.words.fonts/fontsettings/defaultinstance/) كافيًا.

تكون المثيلات لكل مستند مطلوبة فقط إذا كان مطلوبًا استخدام مصادر خطوط مختلفة لمستندات مختلفة، وهي حالة نادرة. يؤدي استخدام العديد من مثيلات **FontSettings** إلى تقليل الأداء لأنها لا تشارك ذاكرة التخزين المؤقت.

### حيث يبحث Aspose.Words عن خطوط TrueType على Windows

في معظم الحالات، لا يواجه مستخدمو Windows مشكلات كبيرة مع الخطوط المفقودة أو التخطيطات غير الصحيحة. عادةً، يمر Aspose.Words خلال المستند، وعندما يواجه رابط الخط، فإنه يجلب بيانات الخط من مجلد النظام بنجاح.

في Windows، يأخذ Aspose.Words أولاً جميع الخطوط المتوفرة من المجلد _%windir%\Fonts. سيعمل هذا الإعداد معك في معظم الأوقات. يمكنك فقط تحديد مجلدات الخطوط الخاصة بك إذا كنت بحاجة إلى ذلك. يبحث Aspose.Words لـ .NET أيضًا عن الخطوط الإضافية المسجلة في مفتاح التسجيل HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts. بالإضافة إلى ذلك، يتيح Windows 10 تثبيت الخطوط للمستخدم الحالي. يتم وضع الخطوط في المجلد %userprofile%\AppData\Local\Microsoft\Windows\Fonts ويتم تحديدها أيضًا في سجل HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts، حيث سيبحث Aspose.Words عن هذه الخطوط.

إذا كان المستند يحتوي على خطوط مضمنة، فيمكن لـ Aspose.Words قراءة بيانات الخط ذات الصلة من المستند واستخدامها لإنشاء تخطيط المستند. قد تحتوي المستندات أيضًا على روابط لخطوط غير موجودة في مجلدات النظام، وفي هذه الحالة تعمل السيناريوهات التالية:

- يمكن للمستخدمين إعداد مصادر خطوط جديدة من خلال فئة **FontSettings**
- يمكن أن يحاول Aspose.Words استبدال الخط المفقود بخط مماثل

{{% alert color="primary" %}}

لن يعمل عادةً عرض Aspose.Words على الخادم مع تطبيق ASP.NET الذي تم تكوينه للتشغيل ضمن مستوى الثقة المتوسطة، لأنه يحظر الوصول إلى السجل ويحد من الوصول إلى نظام الملفات.

{{% /alert %}}

### الخطوط على الأنظمة غير التابعة لـ Windows

سيبحث Aspose.Words عن الخطوط في مجلدات خطوط النظام. يمكن رؤية قائمة بهذه المجلدات بواسطة طريقة [GetSystemFontFolders](https://reference.aspose.com/words/ar/net/aspose.words.fonts/systemfontsource/getsystemfontfolders/). إذا لم يتم العثور على خطوط مدعومة، فسيستخدم Aspose.Words الخط الافتراضي المدمج Fanwood.ttf.

نظرًا لاختلاف مقاييس الخط في نظام Windows ونظام التشغيل غير Windows، فإن Aspose.Words يبذل قصارى جهده للعثور على خط مشابه وإنشاء تخطيط مشابه للخط الأصلي. علي أية حال هي ليست دائما "ممكنة. في هذه الحالات، يجب استخدام فئة **FontSettings** لإضافة خطوط مخصصة أو قواعد استبدال.

#### حيث يبحث Aspose.Words عن خطوط TrueType على Linux

قد تقوم توزيعات Linux المختلفة بتخزين الخطوط في مجلدات مختلفة. يبحث Aspose.Words عن الخطوط في عدة مواقع. افتراضيًا، يبحث Aspose.Words عن الخطوط في جميع المواقع التالية: `/usr/share/fonts` `/usr/local/share/fonts` `/usr/X11R6/lib/X11/fonts` سيعمل هذا السلوك الافتراضي مع معظم توزيعات Linux، ولكن ليس من المضمون أن تعمل طوال الوقت، وفي هذه الحالة قد تحتاج إلى تحديد موقع خطوط نوع true بشكل صريح. للقيام بذلك، تحتاج إلى معرفة مكان تثبيت خطوط TrueType على توزيع Linux الخاص بك.

#### حيث يبحث Aspose.Words عن خطوط TrueType على نظام التشغيل Mac OS X

يبحث Aspose.Words عن الخطوط في المجلد /Library/Fonts، وهو الموقع القياسي لخطوط TrueType على نظام التشغيل Mac OS X. على الرغم من أن هذا الإعداد سيعمل معك في معظم الأوقات، فقد تحتاج إلى تحديد مجلدات الخطوط الخاصة بك في حالة أنت بحاجه إلى.

## تحميل الخطوط من مجلد {#loading-fonts-from-folder}

إذا كان المستند الذي تتم معالجته يحتوي على روابط لخطوط غير موجودة في النظام، أو إذا كنت لا تريد إضافتها إلى مجلد النظام، أو إذا كنت تفتقر إلى الأذونات، فإن الحل الأفضل هو إضافة مجلد بخطوطك الخاصة باستخدام طريقة [SetFontsSources](https://reference.aspose.com/words/ar/net/aspose.words.fonts/fontsettings/setfontssources/). سيسمح هذا باستبدال مصدر النظام بمصدر مستخدم. لن يقوم Aspose.Words بعد الآن بالبحث عن الخطوط في السجل أو مجلد Windows\Font وبدلاً من ذلك سيبحث فقط عن الخطوط الموجودة داخل المجلد (المجلدات) المحدد. ستقوم طريقة [GetFontSources](https://reference.aspose.com/words/ar/net/aspose.words.fonts/fontsettings/getfontssources/) بإرجاع القيم المقابلة.

### حدد مجلد خط واحد أو عدة مجلدات

تُعد أساليب [SetFontsFolder](https://reference.aspose.com/words/ar/net/aspose.words.fonts/fontsettings/setfontsfolder/) و[SetFontsFolders](https://reference.aspose.com/words/ar/net/aspose.words.fonts/fontsettings/setfontsfolder/s) اختصارات لأسلوب **SetFontSources** مع مثيل واحد أو أكثر من مثيلات [FolderFontSource](https://reference.aspose.com/words/ar/net/aspose.words.fonts/folderfontsource/). تُستخدم هذه الطرق للإشارة إلى المكان الذي يجب أن يبحث فيه Aspose.Words عن الخطوط. إذا كان المجلد غير موجود أو لا يمكن الوصول إليه، فسيتجاهل Aspose.Words هذا المجلد فقط. إذا تم تجاهل كافة المجلدات، بما في ذلك مصادر استبدال الخط، فسيستخدم Aspose.Words خط Fanwood كخط افتراضي.

يوضح المثال التالي كيفية تعيين المجلد أو المصدر، الذي سيستخدمه Aspose.Words لاحقًا للبحث عن خطوط TrueType أثناء عرض الخطوط أو تضمينها:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetTrueTypeFontsFolder-SetTrueTypeFontsFolder.cs" >}}

يمكنك تنزيل ملف القالب الخاص بهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

تتحكم معلمة منطقية إضافية فيما إذا كان سيتم فحص الخطوط بشكل متكرر عبر جميع المجلدات، وبالتالي فحص جميع المجلدات الفرعية لمجلد محدد. يوضح المثال التالي كيفية تعيين Aspose.Words للبحث في مجلدات متعددة عن خطوط TrueType عند عرض الخطوط أو تضمينها:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersMultipleFolders-SetFontsFoldersMultipleFolders.cs" >}}

{{% alert color="primary" %}}

يمكنك تنزيل ملف القالب الخاص بهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

لاحظ الأولويات. إذا كانت هناك خطوط بنفس اسم العائلة والنمط في مصادر خطوط مختلفة، فسيقوم Aspose.Words بتحديد الخط من المصدر ذي الأولوية الأعلى. راجع وصف حقل "الأولوية" أدناه.

إذا كنت لا ترغب في استخدام خطوط النظام على الإطلاق، فإن Aspose.Words يسمح لك بتجاهلها واستخدام الخطوط الخاصة بك فقط:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersDefaultInstance-SetFontsFoldersDefaultInstance.cs" >}}

### الملكية ذات الأولوية

يتم استخدام الخاصية [Priority](https://reference.aspose.com/words/ar/net/aspose.words.fonts/fontsourcebase/priority/) عندما تكون هناك خطوط لها نفس اسم العائلة والنمط في مصادر خطوط مختلفة. في هذه الحالة، يقوم Aspose.Words بتحديد الخط من المصدر ذي القيمة ذات الأولوية الأعلى. على سبيل المثال، يوجد إصدار قديم من الخط في مجلد النظام وقام العميل بإضافة إصدار جديد من نفس الخط في مجلد مخصص.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersWithPriority-SetFontsFoldersWithPriority.cs" >}}

## تحميل الخطوط من Stream {#loading-fonts-from-stream}

يوفر Aspose.Words فئة [StreamFontSource](https://reference.aspose.com/words/ar/net/aspose.words.fonts/streamfontsource/)، والتي تسمح بتحميل الخطوط من الدفق. لاستخدام مصدر خط الدفق، يحتاج المستخدم إلى إنشاء فئة مشتقة من **StreamFontSource** وتوفير تطبيق لأسلوب [OpenFontDataStream](https://reference.aspose.com/words/ar/net/aspose.words.fonts/streamfontsource/openfontdatastream/). يمكن استدعاء طريقة **OpenFontDataStream** عدة مرات. لأول مرة، سيتم استدعاؤه عندما يقوم Aspose.Words بمسح مصادر الخطوط المتوفرة للحصول على قائمة بالخطوط المتاحة. قد يتم استدعاؤه لاحقًا إذا تم استخدام الخط في المستند لتحليل بيانات الخط وتضمين بيانات الخط في بعض تنسيقات الإخراج. قد يكون **StreamFontSource** مفيدًا لأنه يسمح بتحميل بيانات الخط فقط عندما تكون مطلوبة، وليس تخزينها في الذاكرة طوال عمر [إعدادات الخط](https://fontsettings/).

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-ResourceSteamFontSourceExample-ResourceSteamFontSourceExample.cs" >}}

يعد **StreamFontSource** بديلاً لـ [MemoryFontSource](https://reference.aspose.com/words/ar/net/aspose.words.fonts/memoryfontsource/) نظرًا لأنه من الممكن دائمًا تحميل دفق إلى الذاكرة وتمريره إلى **MemoryFontSource**. الفرق هو أن **MemoryFontSource** يتم تخزينه في الذاكرة طوال الوقت، ويتم تحميل **StreamFontSource** عند الطلب والتخلص منه على الفور. ولكن قد يتم تحميله عدة مرات، كما هو موضح أعلاه. في بعض الحالات، يفضل استخدام **MemoryFontSource**، وفي حالات أخرى، **StreamFontSource**.

## حفظ وتحميل ذاكرة التخزين المؤقت للبحث عن الخط

عند البحث عن خط لأول مرة، يقوم Aspose.Words بالتكرار على مصادر الخطوط المحددة من قبل المستخدم ويشكل ذاكرة تخزين مؤقت للبحث عن الخطوط بناءً على البيانات من هذه المصادر. وبالتالي، ستقوم ذاكرة التخزين المؤقت بجمع معلومات حول الخطوط المتاحة: عائلة الخطوط والنمط واسم الخط الكامل وغيرها. في المكالمات اللاحقة، يبحث Aspose.Words عن معلومات حول الخط المطلوب حسب اسمه في ذاكرة التخزين المؤقت للبحث عن الخط، وبعد ذلك يقوم بتحليل الملفات المحددة لاستخدام الخط.

يستغرق إجراء تحليل جميع ملفات الخطوط المتوفرة لتهيئة ذاكرة التخزين المؤقت وقتًا طويلاً. يسمح لك Aspose.Words بحفظ وتحميل ذاكرة التخزين المؤقت باستخدام طريقة [SaveSearchCache](https://reference.aspose.com/words/ar/net/aspose.words.fonts/fontsettings/savesearchcache/) لحل مشكلة الأداء. أي أنه يمكن للمستخدم تحميل ذاكرة تخزين مؤقت محفوظة مسبقًا من ملف وتخطي خطوة تحليل جميع ملفات الخطوط المتوفرة.

{{% alert color="primary" %}}

استخدم نفس طريقة **SaveSearchCache** لتحديث ذاكرة التخزين المؤقت.

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالي كيفية تحضير مصادر الخطوط وإنشاء ذاكرة تخزين مؤقت للبحث عن الخطوط مسبقًا:

{{< highlight csharp >}}
// Prepare font sources and generate font search cache beforehand.
FileFontSource fileSource = new FileFontSource(filePath, fileSourcePriority, fileSourceKey);
MemoryFontSource memorySource = new MemoryFontSource(fontData, memorySourcePriority, memorySourceKey);
StreamFontSource streamSource = new SteamFontSourceMemoryImpl(streamSourcePriority, streamSourceKey);

FontSettings settings = new FontSettings();

settings.SetFontsSources(new FontSourceBase[] { fileSource, memorySource, streamSource });
settings.SaveSearchCache(cacheOutputStream);
{{< /highlight >}}

يوضح مثال التعليمات البرمجية التالي كيفية تعيين مصادر الخطوط وتحميل ذاكرة التخزين المؤقت للبحث قبل معالجة المستندات:

{{< highlight csharp >}}
// Set font sources and load search cache before processing documents. Note that sources should be the same as when saving font search cache.
FileFontSource fileSource = new FileFontSource(filePath, fileSourcePriority, fileSourceKey);
MemoryFontSource memorySource = new MemoryFontSource(fontData, memorySourcePriority, memorySourceKey);
StreamFontSource streamSource = new SteamFontSourceMemoryImpl(streamSourcePriority, streamSourceKey);

FontSettings settings = new FontSettings();

settings.SetFontsSources(new FontSourceBase[] { fileSource, memorySource, streamSource }, cacheInputStream);
{{< /highlight >}}

{{% alert color="primary" %}}

تعد ذاكرة التخزين المؤقت للبحث عن الخطوط رائعة لتكامل Aspose.Words في AWS Lambda نظرًا لعدد من القيود. على سبيل المثال، على حجم الحاوية الرئيسية، ونتيجة لذلك، على عدد الخطوط.

تعد ذاكرة التخزين المؤقت مناسبة أيضًا للسيناريوهات الأخرى عند تحميل الخطوط عبر الشبكة. أو للسيناريوهات التي لا توجد فيها طريقة لتخزين مثيل `FontSettings` بذاكرة تخزين مؤقت محملة.

{{% /alert %}}

## احصل على قائمة الخطوط المتاحة {#get-a-list-of-available-fonts}

إذا كنت ترغب في الحصول على قائمة الخطوط المتاحة، والتي، على سبيل المثال، يمكن استخدامها لعرض مستند PDF، فيمكنك استخدام طريقة [GetAvailableFonts](https://reference.aspose.com/words/ar/net/aspose.words.fonts/fontsourcebase/getavailablefonts/)، كما هو موضح في مثال التعليمات البرمجية التالي. تحدد فئة [PhysicalFontInfo](https://reference.aspose.com/words/ar/net/aspose.words.fonts/physicalfontinfo/) معلومات حول الخط الفعلي المتوفر لمحرك خطوط Aspose.Words:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithFontSources-GetListOfAvailableFonts.cs" >}}
