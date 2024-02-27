---
title: تحديد موقع خطوط تروتايب
second_title: Aspose.Words لـ Python via .NET
articleTitle: تحديد موقع خطوط تروتايب
linktitle: تحديد موقع خطوط تروتايب
description: "حدد مصادر خطوط TrueType المتنوعة: مجلد النظام، أو مصادر المستخدم، أو تحميل الخطوط من التدفق، أو نظام الملفات، أو الذاكرة باستخدام Python."
type: docs
weight: 30
url: /ar/python-net/specifying-truetype-fonts-location/
---

يصف هذا الموضوع السلوك الافتراضي لـ Aspose.Words عندما يبحث عن خطوط TrueType، بما في ذلك الاختلافات الخاصة بنظام التشغيل، ويوضح كيفية تحديد مصادر خطوط المستخدم.

يتم استخدام فئة [FontSourceBase](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/) لتحديد مصادر الخطوط المختلفة. هناك عدة تطبيقات لفئة [FontSourceBase](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/):

- [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/)
- [FolderFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/folderfontsource/)
- [StreamFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/streamfontsource/)
- [FileFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/filefontsource/)
- [MemoryFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/memoryfontsource/)

تفاصيل التنفيذ لبعض الفئات موضحة أدناه.

## تحميل الخطوط من النظام

هناك فئة [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/) خاصة يتم استخدامها دائمًا بشكل افتراضي. وهو يمثل جميع خطوط TrueType المثبتة على النظام. لذلك، من الممكن إنشاء قائمة مصادر باستخدام [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/) وأي مصادر أخرى مطلوبة:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFolders.py" >}}

يتم تعريف مثيل واحد لفئة [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/) افتراضيًا في [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/). في أنظمة التشغيل المختلفة، قد توجد الخطوط في أماكن مختلفة. ومع ذلك، فإن استخدام مثيل [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) لكل مستند ليس هو الحل الأمثل. في معظم الحالات، يجب أن يكون استخدام [default_instance](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/default_instance/) كافيًا.

تكون المثيلات لكل مستند مطلوبة فقط إذا كان مطلوبًا استخدام مصادر خطوط مختلفة لمستندات مختلفة، وهي حالة نادرة. يؤدي استخدام العديد من مثيلات [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) إلى تقليل الأداء لأنها لا تشارك ذاكرة التخزين المؤقت.

### حيث يبحث Aspose.Words عن خطوط TrueType على Windows

في معظم الحالات، لا يواجه مستخدمو Windows مشكلات كبيرة مع الخطوط المفقودة أو التخطيطات غير الصحيحة. عادةً، يمر Aspose.Words خلال المستند، وعندما يواجه رابط الخط، فإنه يجلب بيانات الخط من مجلد النظام بنجاح.

في Windows، يأخذ Aspose.Words أولاً جميع الخطوط المتوفرة من المجلد _%windir%\Fonts. سيعمل هذا الإعداد معك في معظم الأوقات. يمكنك فقط تحديد مجلدات الخطوط الخاصة بك إذا كنت بحاجة إلى ذلك. يبحث Aspose.Words لـ .NET أيضًا عن الخطوط الإضافية المسجلة في مفتاح التسجيل *HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts*. بالإضافة إلى ذلك، يتيح Windows 10 تثبيت الخطوط للمستخدم الحالي. يتم وضع الخطوط في المجلد *%userprofile%\AppData\Local\Microsoft\Windows\Fonts* ويتم تحديدها أيضًا في السجل *HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts*، حيث سيبحث Aspose.Words عن هذه الخطوط.

إذا كان المستند يحتوي على خطوط مضمنة، فيمكن لـ Aspose.Words قراءة بيانات الخط ذات الصلة من المستند واستخدامها لإنشاء تخطيط المستند. قد تحتوي المستندات أيضًا على روابط لخطوط غير موجودة في مجلدات النظام، وفي هذه الحالة تعمل السيناريوهات التالية:

- يمكن للمستخدمين إعداد مصادر خطوط جديدة من خلال فئة [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/)
- يمكن أن يحاول Aspose.Words استبدال الخط المفقود بخط مماثل


### الخطوط على الأنظمة غير التابعة لـ Windows

سيبحث Aspose.Words عن الخطوط في مجلدات خطوط النظام. يمكن رؤية قائمة بهذه المجلدات بواسطة طريقة [SystemFontSource.get_system_font_folders](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/get_system_font_folders/). إذا لم يتم العثور على خطوط مدعومة، فسيستخدم Aspose.Words الخط الافتراضي المدمج Fanwood.ttf.

نظرًا لاختلاف مقاييس الخط في نظام Windows ونظام التشغيل غير Windows، فإن Aspose.Words يبذل كل ما في وسعه للعثور على خط مشابه وإنشاء تخطيط مشابه للخط الأصلي. علي أية حال هي ليست دائما "ممكنة. في هذه الحالات، يجب استخدام فئة [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) لإضافة خطوط مخصصة أو قواعد استبدال.

#### حيث يبحث Aspose.Words عن خطوط TrueType على Linux

قد تقوم توزيعات Linux المختلفة بتخزين الخطوط في مجلدات مختلفة. يبحث Aspose.Words عن الخطوط في عدة مواقع. افتراضيًا، يبحث Aspose.Words عن الخطوط في جميع المواقع التالية: */usr/share/fonts* */usr/local/share/fonts* */usr/X11R6/lib/X11/fonts*. سيعمل هذا السلوك الافتراضي مع معظم توزيعات Linux، ولكن ليس من المضمون أن يعمل طوال الوقت، وفي هذه الحالة قد تحتاج إلى تحديد موقع خطوط نوع true بشكل صريح. للقيام بذلك، تحتاج إلى معرفة مكان تثبيت خطوط TrueType على توزيع Linux الخاص بك.

#### حيث يبحث Aspose.Words عن خطوط TrueType على نظام التشغيل Mac OS X

يبحث Aspose.Words عن الخطوط في المجلد */Library/Fonts*، وهو الموقع القياسي لخطوط TrueType على نظام التشغيل Mac OS X. على الرغم من أن هذا الإعداد سيعمل معك في معظم الأوقات، فقد تحتاج إلى تحديد مجلدات الخطوط الخاصة بك في المجلد الحالة عندما تحتاج إلى ذلك.

## تحميل الخطوط من المجلد

إذا كان المستند الذي تتم معالجته يحتوي على روابط لخطوط غير موجودة في النظام، أو إذا كنت لا تريد إضافتها إلى مجلد النظام، أو إذا كنت تفتقر إلى الأذونات، فإن الحل الأفضل هو إضافة مجلد بخطوطك الخاصة باستخدام طريقة [FontSettings.set_fonts_sources](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_sources/). سيسمح هذا باستبدال مصدر النظام بمصدر مستخدم. لن يقوم Aspose.Words بعد الآن بالبحث عن الخطوط في السجل أو مجلد Windows\Font وبدلاً من ذلك سيبحث فقط عن الخطوط الموجودة داخل المجلد (المجلدات) المحدد. ستقوم طريقة [FontSettings.get_font_sources](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/get_fonts_sources/) بإرجاع القيم المقابلة.

### تحديد مجلد خط واحد أو عدة مجلدات

تُعد أساليب [FontSettings.set_fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_folder/) و[FontSettings.set_fonts_folders](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_folders/) اختصارات لأسلوب [FontSettings.set_font_sources](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_sources/) مع مثيل واحد أو أكثر من مثيلات [FolderFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/folderfontsource/). تُستخدم هذه الطرق للإشارة إلى المكان الذي يجب أن يبحث فيه Aspose.Words عن الخطوط. إذا كان المجلد غير موجود أو لا يمكن الوصول إليه، فسيتجاهل Aspose.Words هذا المجلد فقط. إذا تم تجاهل كافة المجلدات، بما في ذلك مصادر استبدال الخط، فسيستخدم Aspose.Words خط Fanwood كخط افتراضي.

يوضح المثال التالي كيفية تعيين المجلد أو المصدر، الذي سيستخدمه Aspose.Words لاحقًا للبحث عن خطوط TrueType أثناء عرض الخطوط أو تضمينها:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetTrueTypeFontsFolder.py" >}}

يمكنك تنزيل ملف القالب الخاص بهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

تتحكم معلمة منطقية إضافية فيما إذا كان سيتم فحص الخطوط بشكل متكرر عبر جميع المجلدات، وبالتالي فحص جميع المجلدات الفرعية لمجلد محدد. يوضح المثال التالي كيفية تعيين Aspose.Words للبحث في مجلدات متعددة عن خطوط TrueType عند عرض الخطوط أو تضمينها:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFoldersMultipleFolders.py" >}}

{{% alert color="primary" %}}

يمكنك تنزيل ملف القالب الخاص بهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

لاحظ الأولويات. إذا كانت هناك خطوط بنفس اسم العائلة والنمط في مصادر خطوط مختلفة، فسيقوم Aspose.Words بتحديد الخط من المصدر ذي الأولوية الأعلى. راجع وصف حقل "الأولوية" أدناه.

إذا كنت لا ترغب في استخدام خطوط النظام على الإطلاق، فإن Aspose.Words يسمح لك بتجاهلها واستخدام الخطوط الخاصة بك فقط:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFoldersDefaultInstance.py" >}}

### الملكية ذات الأولوية

يتم استخدام الخاصية **أولوية** عندما تكون هناك خطوط لها نفس اسم العائلة والنمط في مصادر خطوط مختلفة. في هذه الحالة، يقوم Aspose.Words بتحديد الخط من المصدر ذي القيمة ذات الأولوية الأعلى. على سبيل المثال، يوجد إصدار قديم من الخط في مجلد النظام وقام العميل بإضافة إصدار جديد من نفس الخط في مجلد مخصص.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFoldersWithPriority.py" >}}

## الحصول على قائمة الخطوط المتاحة

إذا كنت ترغب في الحصول على قائمة الخطوط المتاحة، والتي، على سبيل المثال، يمكن استخدامها لعرض مستند PDF، فيمكنك استخدام طريقة [get_available_fonts](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/get_available_fonts/)، كما هو موضح في مثال التعليمات البرمجية التالي. تحدد فئة [PhysicalFontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/physicalfontinfo/) معلومات حول الخط الفعلي المتوفر لمحرك خطوط Aspose.Words:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-GetListOfAvailableFonts.py" >}}
