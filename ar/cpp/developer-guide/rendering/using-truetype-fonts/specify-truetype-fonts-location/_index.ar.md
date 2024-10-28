---
title: حدد TrueType موقع الخطوط في C++
second_title: Aspose.Words ل C++
articleTitle: حدد TrueType موقع الخطوط
linktitle: حدد TrueType موقع الخطوط
description: "حدد مصادر خطوط TrueType المختلفة: مجلد النظام أو مصادر المستخدم أو تحميل الخطوط من دفق أو نظام ملفات أو ذاكرة."
type: docs
weight: 30
url: /ar/cpp/specify-truetype-fonts-location/
---

يصف هذا الموضوع السلوك الافتراضي لـ Aspose.Words عندما يبحث عن TrueType الخطوط، بما في ذلك الاختلافات الخاصة بنظام التشغيل، ويوضح كيفية تحديد مصادر خطوط المستخدم.

يتم استخدام فئة [FontSourceBase](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsourcebase) لتحديد مصادر الخطوط المختلفة. هناك العديد من تطبيقات فئة **FontSourceBase**:

- [SystemFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/systemfontsource/)
- [FolderFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/folderfontsource/)
- [StreamFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/streamfontsource/)
- [FileFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/filefontsource/)
- [MemoryFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/memoryfontsource/)

يتم شرح تفاصيل التنفيذ لبعض الفئات أدناه.

## تحميل الخطوط من النظام {#loading-fonts-from-system}

هناك فئة [SystemFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/systemfontsource/) خاصة يتم استخدامها دائما بشكل افتراضي. وهو يمثل جميع TrueType الخطوط المثبتة على النظام. لذلك، من الممكن إنشاء قائمة مصدر باستخدام **SystemFontSource** وأي مصادر أخرى مطلوبة:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSources-SetFontsFolder.cpp" >}}

يتم تعريف مثيل واحد من فئة **SystemFontSource** افتراضيا في [FontSettings](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/). في أنظمة التشغيل المختلفة، قد توجد الخطوط في أماكن مختلفة. ومع ذلك، فإن استخدام مثيل **FontSettings** لكل مستند ليس حلا مثاليا. في معظم الحالات، يجب أن يكون استخدام [DefaultInstance](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/get_defaultinstance/) كافيا.

هناك حاجة إلى مثيلات لكل مستند فقط إذا كان مطلوبا استخدام مصادر خطوط مختلفة لمستندات مختلفة، وهي حالة نادرة. يؤدي استخدام عدة حالات **FontSettings** إلى تقليل الأداء لأنها لا تشارك ذاكرة التخزين المؤقت.

### أين Aspose.Words يبحث عن TrueType الخطوط على Windows

في معظم الحالات، لا يواجه المستخدمون Windows مشاكل كبيرة مع الخطوط المفقودة أو التخطيطات غير الصحيحة. عادة، Aspose.Words يمر عبر مستند، وعندما يواجه رابط الخط، فإنه يجلب بيانات الخط بنجاح من مجلد النظام.

في Windows، Aspose.Words يأخذ أولا جميع الخطوط المتاحة من المجلد _%windir%\Fonts. سيعمل هذا الإعداد من أجلك معظم الوقت. يمكنك فقط تحديد مجلدات الخطوط الخاصة بك إذا كنت بحاجة إلى ذلك. Aspose.Words يبحث أيضا عن خطوط إضافية مسجلة في مفتاح التسجيل HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts. وبالإضافة إلى ذلك، Windows 10 تمكن تركيب الخطوط للمستخدم الحالي. يتم وضع الخطوط في مجلد %userprofile%\AppData\Local\Microsoft\Windows\Fonts ويتم تحديدها أيضا في سجل HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts، حيث سيبحث Aspose.Words عن هذه الخطوط.

إذا كان المستند يحتوي على خطوط مضمنة، فيمكن Aspose.Words قراءة بيانات الخط ذات الصلة من المستند واستخدامها لإنشاء تخطيط المستند. قد تحتوي المستندات أيضا على روابط لخطوط غير موجودة في مجلدات النظام، وفي هذه الحالة تعمل السيناريوهات التالية:

- يمكن للمستخدمين إعداد مصادر خطوط جديدة من خلال فئة **FontSettings**
- Aspose.Words يمكن محاولة استبدال الخط غاب مع واحد مماثل

{{% alert color="primary" %}}

Aspose.Words لن يعمل العرض على الخادم عادة مع تطبيق ASP .NET تم تكوينه للتشغيل تحت مستوى الثقة المتوسط، لأنه يحظر الوصول إلى التسجيل ويحد من الوصول إلى نظام الملفات.

{{% /alert %}}

### الخطوط على الأنظمة غيرWindows

Aspose.Words سيبحث عن الخطوط في مجلدات خطوط النظام. يمكن رؤية قائمة بهذه المجلدات بواسطة طريقة [GetSystemFontFolders](https://reference.aspose.com/words/cpp/aspose.words.fonts/systemfontsource/getsystemfontfolders/). إذا لم يتم العثور على الخطوط المعتمدة، Aspose.Words سوف تستخدم المدمج في الخط الافتراضي فانوود.الصندوق.

منذ مقاييس الخط من Windows وغيرWindows OS مختلفة، Aspose.Words يفعل كل شيء ممكن للعثور على خط مماثل وبناء تخطيط مماثل للأصل. ومع ذلك، هذا ليس ممكنا دائما. في هذه الحالات، يجب استخدام فئة **FontSettings** لإضافة خطوط مخصصة أو قواعد الاستبدال.

#### أين Aspose.Words يبحث عن TrueType الخطوط على Linux

قد تخزن التوزيعات Linux المختلفة الخطوط في مجلدات مختلفة. Aspose.Words يبحث عن الخطوط في عدة مواقع. بشكل افتراضي، Aspose.Words يبحث عن الخطوط في جميع المواقع التالية: `/usr/share/fonts`, `/usr/local/share/fonts`, `/usr/X11R6/lib/X11/fonts`. سيعمل هذا السلوك الافتراضي لمعظم التوزيعات Linux، ولكن ليس مضمونا العمل طوال الوقت، وفي هذه الحالة قد تحتاج إلى تحديد موقع خطوط النوع الحقيقي بشكل صريح. للقيام بذلك،تحتاج إلى معرفة مكان تثبيت TrueType الخطوط على التوزيع Linux.

#### حيث Aspose.Words يبحث عن TrueType الخطوط على ماك OS س

Aspose.Words يبحث عن الخطوط في المجلد `/Library/Fonts`، وهو الموقع القياسي ل TrueType الخطوط على ماك OS س. في حين أن هذا الإعداد سوف تعمل بالنسبة لك أكثر من مرة، قد تحتاج إلى تحديد الخطوط الخاصة بك المجلدات في حالة عندما كنت في حاجة إليها.

#### TrueType الخطوط على Android

في Android، يتم تغليف سير عمل الخطوط في فئة المحرف.
هناك خمسة أنواع من المحارف، يمثل كل محرف مجموعة من عائلات الخطوط المتشابهة:

- DEFAULT
- DEFAULT_BOLD
- MONOSPACE
- SANS_SERIF
- SERIF

على سبيل المثال، وفقا لـ Android [الخطوط.شمل](https://androidxref.com/9.0.0_r3/xref/frameworks/base/data/fonts/fonts.xml) ملف التكوين، " تايمز "ينتمي إلى عائلة" الرقيق " حتى NotoSerif-العادية.سيتم استخدام الصناديق عند طلب " الأوقات:

**الخطوط.شمل**

{{< highlight html >}}
<family name="serif">
        <font weight="400" style="normal">NotoSerif-Regular.ttf</font>
        <font weight="700" style="normal">NotoSerif-Bold.ttf</font>
        <font weight="400" style="italic">NotoSerif-Italic.ttf</font>
        <font weight="700" style="italic">NotoSerif-BoldItalic.ttf</font>
</family>
<alias name="times" to="serif" />
<alias name="times new roman" to="serif" />
{{< /highlight >}}

للبحث عن خطوط مماثلة، يتم استخدام الاستراتيجيات الموضحة سابقا.

بالإضافة إلى ذلك، Aspose.Words لديها قائمة البدائل الخاصة بها لمنصة Android.

لنفترض أن المستند يحتوي على PMingLiيو-إكستب الخط، أولا وقبل كل شيء، Aspose.Words تبحث عن الخط المطلوب داخل مصادر النظام.

القائمة الافتراضية لمجلدات الخط Android هي:

- / النظام / الخطوط
- / النظام / الخط
- / البيانات / الخطوط

ال Aspose.Words يبحث من خلال المصادر المعرفة من قبل المستخدم والتي تم تعيينها باستخدام الطريقة:

**Java**

{{< highlight csharp >}}
fontSettings->SetFontsFolder(u"C:\\MyFonts\\", true);
{{< /highlight >}}

في حالة تحديد بديل صريح، يستبدل Aspose.Words الخط المفقود باقتراح المستخدم:

**Java**

{{< highlight csharp >}}
fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->SetSubstitutes(u"PMingLiU-ExtB", System::MakeArray<System::String>({ u"Liberation Serif" }));
{{< /highlight >}}

إذا لم تنجح أي من القواعد، Aspose.Words تحقق من جدول الاستبدال الداخلي. إذا كان الجدول يحتوي على معلومات حول ملاءمة جيدة، فسيتم استبدال الخط. في حالتنا Aspose.Words سوف حدد `Typeface.SERIF`. ولكن إذا كان الجدول لا يعرف أي شيء عن الخط المطلوب ثم Aspose.Words تلتقط الخط على أساس خاص MS قواعد كلمة أو أقرب مسافة في الفضاء بانوز.

#### TrueType الخطوط على .NET Core و Xamarin

بالنسبة إلى .NET Core و Xamarin، تنطبق نفس القاعدة على Aspose.Words ل Java الإصدار. بشكل افتراضي، تتوفر جميع خطوط النظام في النظام الأساسي الذي يتم تشغيل التطبيق عليه.
يمكن العثور على قائمة المجلدات التي سيتم إجراء البحث فيها عن طريق استدعاء الطريقة:

**Java**

{{< highlight csharp >}}
SystemFontSource()->GetAvailableFonts()
{{< /highlight >}}

## تحميل الخطوط من المجلد {#loading-fonts-from-folder}

إذا كان المستند الذي تتم معالجته يحتوي على روابط لخطوط غير موجودة على النظام، أو كنت لا تريد إضافتها إلى مجلد النظام، أو كنت تفتقر إلى الأذونات، فإن أفضل حل هو إضافة مجلد بخطوطك الخاصة باستخدام طريقة [SetFontsSources](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/setfontssources/). سيسمح ذلك باستبدال مصدر النظام بمصدر مستخدم. لن يبحث Aspose.Words بعد الآن عن الخطوط في مجلد التسجيل أو Windows\Font وبدلا من ذلك فقط ابحث عن الخطوط داخل المجلد(المجلدات) المحددة. ستعيد طريقة [GetFontSources](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/getfontssources/) القيم المقابلة.

### حدد مجلد خط واحد أو عدة مجلدات

الطرق [SetFontsFolder](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/setfontsfolder/) و [SetFontsFolders](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/setfontsfolders/) هي اختصارات لطريقة **SetFontSources** مع واحد أو عدة حالات [FolderFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/folderfontsource/). تستخدم هذه الطرق للإشارة إلى المكان Aspose.Words يجب أن تبحث عن الخطوط. إذا كان المجلد غير موجود أو لا يمكن الوصول إليه، Aspose.Words يتجاهل هذا المجلد فقط. إذا تم تجاهل جميع المجلدات، بما في ذلك مصادر استبدال الخط، Aspose.Words سيستخدم خط فانوود كافتراضي.

يوضح المثال التالي كيفية تعيين المجلد أو المصدر، والذي سيستخدمه Aspose.Words لاحقا للبحث عن TrueType الخطوط أثناء عرض الخطوط أو تضمينها:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SetTrueTypeFontsFolder-SetTrueTypeFontsFolder.cpp" >}}

يمكنك تنزيل ملف القالب لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

تتحكم معلمة منطقية إضافية في ما إذا كان يتم فحص الخطوط بشكل متكرر من خلال جميع المجلدات، وبالتالي مسح جميع المجلدات الفرعية لمجلد محدد. يوضح المثال التالي كيفية تعيين Aspose.Words للبحث في مجلدات متعددة للخطوط TrueType عند عرض الخطوط أو تضمينها:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SetFontsFoldersMultipleFolders-SetFontsFoldersMultipleFolders.cpp" >}}

{{% alert color="primary" %}}

يمكنك تنزيل ملف القالب لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

لاحظ الأولويات. إذا كانت هناك خطوط بنفس اسم العائلة والنمط في مصادر خطوط مختلفة، فسيقوم Aspose.Words بتحديد الخط من المصدر بأولوية أعلى. انظر وصف حقل "الأولوية" أدناه.

إذا كنت لا ترغب في استخدام خطوط النظام على الإطلاق، Aspose.Words يسمح لك بتجاهلها واستخدام الخطوط الخاصة بك فقط:

**C++**

{{< highlight cpp >}}
System::SharedPtr<FontSettings> fontSettings = System::MakeObject<FontSettings>()->get_DefaultInstance();
fontSettings->SetFontsFolder(u"C:\\MyFonts\\", true);
{{< /highlight >}}


### الملكية ذات الأولوية

يتم استخدام الخاصية [Priority](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsourcebase/get_priority/) عندما تكون هناك خطوط بنفس اسم العائلة والنمط في مصادر خطوط مختلفة. في هذه الحالة Aspose.Words يحدد الخط من المصدر بقيمة أولوية أعلى. على سبيل المثال، يوجد إصدار قديم من الخط في مجلد النظام وأضاف العميل إصدارا جديدا من نفس الخط في مجلد مخصص.

**C++**

{{< highlight cpp >}}
System::SharedPtr<FolderFontSource> folderFontSource = System::MakeObject<FolderFontSource>(u"C:\\MyFonts\\", true, 1);
{{< /highlight >}}

## تحميل الخطوط من تيار {#loading-fonts-from-stream}

Aspose.Words يوفر فئة [StreamFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/streamfontsource)، والتي تسمح بتحميل الخطوط من الدفق. لاستخدام مصدر خط الدفق، يحتاج المستخدم إلى إنشاء فئة مشتقة من **StreamFontSource** وتوفير تنفيذ لطريقة [OpenFontDataStream](https://reference.aspose.com/words/cpp/aspose.words.fonts/streamfontsource/openfontdatastream/). يمكن استدعاء طريقة **OpenFontDataStream** عدة مرات. لأول مرة، سيتم استدعاؤه عندما يقوم Aspose.Words بمسح مصادر الخطوط المتوفرة للحصول على قائمة بالخطوط المتاحة. في وقت لاحق قد يتم استدعاؤه إذا تم استخدام الخط في المستند لتحليل بيانات الخط ولتضمين بيانات الخط في بعض تنسيقات الإخراج. **StreamFontSource** قد يكون مفيدا لأنه يسمح بتحميل بيانات الخط فقط عندما يكون مطلوبا، وليس لتخزينه في الذاكرة لعمر [FontSettings](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/).

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-ResourceSteamFontSource-ResourceSteamFontSource.cpp" >}}

**StreamFontSource**

## حفظ وتحميل ذاكرة التخزين المؤقت للبحث عن الخط

عند البحث عن خط لأول مرة، Aspose.Words يتكرر على مصادر الخط المحددة من قبل المستخدم ويشكل ذاكرة تخزين مؤقت للبحث عن الخط استنادا إلى البيانات من هذه المصادر. وبالتالي، ستجمع ذاكرة التخزين المؤقت معلومات حول الخطوط المتاحة: عائلة الخطوط والنمط واسم الخط الكامل وغيرها. في المكالمات اللاحقة، يبحث Aspose.Words عن معلومات حول الخط المطلوب باسمه في ذاكرة التخزين المؤقت للبحث عن الخطوط، وبعد ذلك يوزع الملفات المحددة لاستخدام الخط.

يستغرق إجراء تحليل جميع ملفات الخطوط المتاحة لتهيئة ذاكرة التخزين المؤقت وقتا طويلا. Aspose.Words يسمح لك بحفظ وتحميل ذاكرة التخزين المؤقت باستخدام طريقة [SaveSearchCache](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/savesearchcache/) لحل مشكلة الأداء. بمعنى، يمكن للمستخدم تحميل ذاكرة تخزين مؤقت محفوظة مسبقا من ملف وتخطي خطوة تحليل جميع ملفات الخطوط المتاحة.

{{% alert color="primary" %}}

استخدم نفس طريقة **SaveSearchCache** لتحديث ذاكرة التخزين المؤقت.

{{% /alert %}}

{{% alert color="primary" %}}

ذاكرة التخزين المؤقت مناسبة أيضا للسيناريوهات الأخرى عند تحميل الخطوط عبر الشبكة. أو للسيناريوهات عندما لا تكون هناك طريقة لتخزين مثيل `FontSettings` مع ذاكرة تخزين مؤقت محملة.

{{% /alert %}}

## احصل على قائمة بالخطوط المتاحة {#get-a-list-of-available-fonts}

إذا كنت ترغب في الحصول على قائمة الخطوط المتاحة، والتي، على سبيل المثال، يمكن استخدامها لعرض مستند PDF، يمكنك استخدام طريقة [GetAvailableFonts](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsourcebase/getavailablefonts/)، كما هو موضح في مثال الكود التالي. تحدد فئة [PhysicalFontInfo](https://reference.aspose.com/words/cpp/aspose.words.fonts/physicalfontinfo) معلومات حول الخط الفعلي المتاح لمحرك الخط Aspose.Words:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSources-GetListOfAvailableFonts.cpp" >}}
