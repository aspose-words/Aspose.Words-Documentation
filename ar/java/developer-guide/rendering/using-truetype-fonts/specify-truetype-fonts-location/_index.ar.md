---
title: التحديد الحقيقي الموقع Java
second_title: Aspose.Words for Java
articleTitle: التحديد الحقيقي الموقع
linktitle: التحديد الحقيقي الموقع
description: "تحديد مختلف True المصادر الفوتوغرافية من النوع: مجلدات النظام، مصادر المستخدمين، حمولات من المجرى، نظام الملفات، أو الذاكرة باستخدام Java."
type: docs
weight: 30
url: /ar/java/specify-truetype-fonts-location/
timestamp: 2024-10-24-11-44-28
---

هذا الموضوع يصف السلوك الافتراضي Aspose.Words وعندما تبحث عن فونتات " ترايب "، بما في ذلك اختلافات محددة في نظام التشغيل، وتبيّن كيفية تحديد المصادر الفوتوغرافية للمستعملين.

The [FontSourceBase](https://reference.aspose.com/words/java/com.aspose.words/fontsourcebase/) ويُستخدم الفصل لتحديد مصادر مختلفة. هناك عدة تنفيذات **FontSourceBase** الفصل:

- [SystemFontSource](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/)
- [FolderFontSource](https://reference.aspose.com/words/java/com.aspose.words/folderfontsource/)
- [StreamFontSource](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/)
- [FileFontSource](https://reference.aspose.com/words/java/com.aspose.words/filefontsource/)
- [MemoryFontSource](https://reference.aspose.com/words/java/com.aspose.words/memoryfontsource/)

وترد أدناه تفاصيل تنفيذ بعض الفصول.

## Load Fonts from System {#loading-fonts-from-system}

هناك خاص [SystemFontSource](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/) الطبقة التي تستخدم دائما عن طريق التقصير. إنها تمثل جميع ملصقات (ترو تايب) على النظام لذلك، من الممكن وضع قائمة مرجعية مع **SystemFontSource** وأي مصادر أخرى مطلوبة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetFontsFolder.java" >}}

حالة واحدة **SystemFontSource** يُعرّف الفصل حسب التخلف [FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/). وفي مختلف نظم التشغيل، يمكن تحديد مواقع الفواكه في أماكن مختلفة. مع ذلك، باستخدام **FontSettings** والمثال على كل وثيقة ليس حلاً أمثل. في غالبية الحالات، باستخدام [DefaultInstance](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/#getDefaultInstance) يجب أن يكون كافيا.

ولا توجد حاجة إلى حالات ما بين الوثائق إلا إذا طُلب منها استخدام مصادر مختلفة لوثائق مختلفة، وهي حالة نادرة. استخدام عدة **FontSettings** وتخفض الحالات الأداء لأنها لا تتقاسم المخبأ.

### أين Aspose.Words يبدو أن (ترايب فونت) على Windows

في معظم الحالات Windows ولا يواجه المستعملون مشاكل كبيرة مع المخطّطات المفقودة أو المخططات غير الصحيحة. عادة Aspose.Words ويمر بوثيقة، وعندما يصادف حلقة وصل، يجلب بنجاح البيانات الفوتوغرافية من ملف النظام.

على Windows Aspose.Words أولاً يأخذ كل العناوين المتاحة من%windir%\Fonts ملف هذا المكان سينجح بالنسبة لك معظم الوقت أنت تحدد ملفاتك فقط إذا أردت ذلك Aspose.Words ويبحث أيضا عن أرقام إضافية مسجلة في HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts مفتاح التسجيل وبالإضافة إلى ذلك، Windows (10) تمكّن من تركيب اللوحات للمستعمل الحالي. الصمامات توضع في %userprofile%\AppData\Local\Microsoft\Windows\Fonts folder and also specified in the HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts السجل، حيثما Aspose.Words سوف تبحث عن هذه العواطف.

إذا كانت الوثيقة تحتوي على ملصقات Aspose.Words ويمكن قراءة البيانات المكتوبة ذات الصلة من الوثيقة واستخدامها لوضع مخطط الوثيقة. ويمكن أن تتضمن الوثائق أيضاً وصلات باللافتات التي لا توجد في مجلدات النظام، وفي هذه الحالة تأتي السيناريوهات التالية إلى العمل:

- يمكن للمستعملين إنشاء مصادر جديدة من خلال **FontSettings** الصف
- Aspose.Words يُمْكِنُ أَنْ يُحاولَ إستبدال الخطّ المفقودة مَع واحد مماثل

### مساهمون في غيرWindows النظم

Aspose.Words سيبحثون عن الملصقات في مجلدات النظام قائمة بهذه الملفات قد يراها [GetSystemFontFolders](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/#getSystemFontFolders) طريقة إذا لم يعثر على أيّ مؤيدين Aspose.Words سيستخدم "فانوود" المزيف

منذ القياسات النافعة Windows وغيرWindows OS مختلف، Aspose.Words هل كل شيء ممكن للعثور على خط مماثل وبناء مخطط مشابه للأصلي. غير أن هذا ليس ممكنا دائما. In these cases, the **FontSettings** وينبغي أن يُستخدم هذا الفصل لإضافة رسوم أو قواعد للاستبدال.

#### أين Aspose.Words يبدو أن (ترايب فونت) على Linux

مختلفة Linux والتوزيع قد يخزن اللوحات في ملفات مختلفة. Aspose.Words يبحث عن ملصقات في عدة مواقع بالخطأ Aspose.Words يتطلع إلى العواطف في جميع المواقع التالية: `/usr/share/fonts`/usr/local/share/fonts* `/usr/X11R6/lib/X11/fonts`* هذا السلوك الافتراضي سيعمل لصالح معظم الناس Linux التوزيعات، ولكن ليس مضموناً للعمل طوال الوقت، في هذه الحالة قد تحتاج إلى تحديد موقع true من النوع الذي يكتب بشكل صريح لتفعل هذا، عليك أن تعرف أين تُركّب (ترو تايب) على Linux التوزيع

#### أين Aspose.Words يبدو أن (ترو تايب فونت) على (ماك أوكس)

Aspose.Words يبحث عن ملصقات في مطوّر (Library/Fonts)، وهو الموقع الموحّد لفنادق ( TrueType) على ( Mac OS X). في حين أن هذا الإطار سينجح بالنسبة لك معظم الوقت، قد تحتاج إلى تحديد ملفاتك الخاصة في الحالة التي تحتاج إليها.

#### (تريب) Android

على Android, تدفق العمل مغطى في صف الوجوه
وهناك خمسة أنواع من أنواع الأوجه، يمثل كل نوع من أنواع الأوجه مجموعة من الأسر المشابهة:

- DEFAULT
- DEFAULT BOLD
- مونسباكس
- SANSERIF
- SERIF

For instance, according to Android’ [فونتات](https://androidxref.com/9.0.0_r3/xref/frameworks/base/data/fonts/fonts.xml) " الوقت " ملك " الأسرة " السائلة "، بحيث يُستخدم نوتو سريف - ريادي(و) عندما يُطلب " الوقت ":

**Fonts.xml**

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

وللبحث عن مؤشرات مماثلة، تُستخدم الاستراتيجيات التي سبق وصفها

بالإضافة إليهم Aspose.Words لها قائمتها الخاصة بالاستبدال Android منصة

دعنا نقول أن الوثيقة تحتوي على لوحة PMingLiU-ExtB، أولا، Aspose.Words يبحث عن الضباب المطلوب داخل مصادر النظام

القائمة الافتراضية Android مجلدات الخط هي:

- النظام/النظام
- النظام/النظام
- البيانات/الفوائد

The Aspose.Words (ب) النظر في المصادر المحددة للمستعملين التي وضعت بالأسلوب:

**Java**

{{< highlight csharp >}}
fontSettings.setFontsFolder("/home/user/MyFonts", true);
{{< /highlight >}}

وفي حالة تحديد بديل صريح، Aspose.Words يستبدل الخط المفقود باقتراح المستخدم:

**Java**

{{< highlight csharp >}}
fontSettings.getSubstitutionSettings().getTableSubstitution().setSubstitutes("PMingLiU-ExtB", "Liberation Serif");
{{< /highlight >}}

إذا لم ينجح أي من القواعد Aspose.Words تحقق من طاولة الاستبدال الداخلية إذا كانت الطاوله تحتوي على معلومات عن نوبة جيدة ثم يُستبدل الخط في حالتنا Aspose.Words سيختار `Typeface.SERIF`. ولكن إذا كان الجدول لا يعرف شيئا عن الخط المطلوب عندئذ Aspose.Words يلتقط لوحة مستندة على قواعد (إم إس وورد) الخاصة أو أقرب مسافة في (بانوس)

#### (تريب) .NET Core و Xamarin

For .NET Core و Xamarin تنطبق نفس القاعدة على Aspose.Words for Java نسخة. وفي حالة التقصير، تتاح جميع أرقام النظام التي يُستخدم فيها الطلب.
ويمكن الاطلاع على قائمة الملفات التي سيجري فيها البحث عن طريق تسمية الطريقة:

**Java**

{{< highlight csharp >}}
SystemFontSource().getAvailableFonts()
{{< /highlight >}}

## لود فولدر {#loading-fonts-from-folder}

إذا كانت الوثيقة التي يتم تجهيزها تحتوي على وصلات لللافتات التي ليست على النظام، أو لا تريد أن تضيفها إلى ملف النظام، `SetFontsSources` طريقة وسيتيح ذلك الاستعاضة عن مصدر النظام بمصدر مستعمل. Aspose.Words لن يبحث بعد الآن عن أرقام في السجل أو Windows\Font folder and instead only scan for fonts within the specified folder(s). The `GetFontSources` الطريقة ستعيد القيم المقابلة

### يُرجى تحديد واحد أو متعدد المجندين

The [SetFontsFolder](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/#setFontsFolder-java.lang.String-boolean) وطرق (سيفونتس فولدرز) هي طريق مختصر **SetFontSources** طريقة واحدة أو عدة [FolderFontSource](https://reference.aspose.com/words/java/com.aspose.words/folderfontsource/) حالات وتستخدم هذه الأساليب للإشارة إلى أين Aspose.Words يجب أن نبحث عن ملصقات إذا لم يكن هناك ملف أو لم يكن متاحاً، Aspose.Words فقط يتجاهل هذا الملف إذا تم تجاهل جميع الملفات، بما في ذلك المصادر من أجل استبدالها Aspose.Words سيستخدم "فانوود" كخطأ

ويبين المثال التالي كيفية وضع الملف أو المصدر، الذي Aspose.Words وسيستخدم فيما بعد للبحث عن فونتات " تروتيب " أثناء إصدارها أو دمجها:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetTrueTypeFontsFolder.java" >}}

{{% alert color="primary" %}}

يمكنك تحميل ملف النموذج من هذا المثال [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

وتحكم بارامتر بوليان إضافي في ما إذا كانت الطلاءات مسحوبة من خلال جميع الملفات، مما يفحص جميع ملفات الأطفال في ملف محدد. ويبين المثال التالي كيفية تحديد Aspose.Words (لإلقاء نظرة على العديد من الملفات لـ (تراي تايب فونتات عندما تصدر أو تُدمج

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetMultipleFontsFolder.java" >}}

يمكنك تحميل ملف النموذج من هذا المثال [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% alert color="primary" %}}

ملاحظة الأولويات. إذا كان هناك ملصقات بنفس اسم العائلة وأسلوبها في مصادر مختلفة Aspose.Words سوف تختار الخط من المصدر مع أولوية أعلى. انظر وصف حقل "الخصوصية" أدناه.

{{% /alert %}}

إذا كنت لا ترغب في استخدام أرقام النظام على الإطلاق، Aspose.Words يُمكِنُك أَنْ تَتجاهلَهم و تَستعملَ مُلَكَ الخاصَ فقط:

**Java**

{{< highlight csharp >}}
FontSettings.getDefaultInstance().setFontsFolder("C:\\MyFonts\\", true);
{{< /highlight >}}


### الأولوية

The [Priority](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/priority/) وتُستخدم الممتلكات عندما تكون هناك ملامح تحمل نفس اسم الأسرة وأسلوبها في مصادر مختلفة. في هذه الحالة Aspose.Words يَختارُ العنوانَ مِنْ المصدرِ بالقيمةِ العاليةِ الأولويةِ. فعلى سبيل المثال، هناك نسخة قديمة من ملف النظام، وأضاف الزبون نسخة جديدة من نفس اللوحة في ملف العرف.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetFontsFolderWithPriority.java" >}}

## Load Fonts from Stream {#loading-fonts-from-stream}

Aspose.Words يوفر [StreamFontSource](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/) الفصل الذي يسمح بتحميل النوافذ من المجرى لاستعمال مصدر التدفق يحتاج المستعمل لخلق فصل مستمد من **StreamFontSource** وإتاحة تنفيذ [OpenFontDataStream](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/#openFontDataStream) طريقة The **OpenFontDataStream** يمكن تسمية الطريقة عدة مرات لأول مرة، سيطلق عليه عندما Aspose.Words يمسح المصادر الضبابية المزودة للحصول على قائمة من النوافذ المتاحة. ويمكن في وقت لاحق أن يُسمَى إذا استخدم هذا الخط في الوثيقة لمسح البيانات الفوتوغرافية وإدراج البيانات الفونتية في بعض أشكال النواتج. **StreamFontSource** قد يكون مفيداً لأنه لا يسمح بتحميل البيانات الوهمية إلا عندما يكون مطلوباً وليس تخزينها في ذاكرة `FontSettings` الحياة

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SpecifyTrueTypeFontsLocation-loadingFontsStream.java" >}}

**StreamFontSource** هو بديل [MemoryFontSource](https://reference.aspose.com/words/java/com.aspose.words/memoryfontsource/) بما أنه من الممكن دائماً تحميل مجرى للذاكرة و تمريره **MemoryFontSource**. الفرق هو **MemoryFontSource** يتم تخزينها في الذاكرة طوال الوقت **StreamFontSource** يتم تحميله على الطلب والتخلّص منه في الحال. ولكن يمكن تحميلها عدة مرات، على النحو المبين أعلاه. في بعض الحالات **MemoryFontSource** هو أفضل، وفي غيره، **StreamFontSource**.

## انقذوا و احملوا شارب

عندما تبحث عن ملصق لأول مرة Aspose.Words يُكرّر على المصادر الفوتوغرافية التي يحددها المستعمل، ويشكّل مخبأ بحث مطلّب يستند إلى بيانات من هذه المصادر. ومن ثم، فإن المخبأ سيجمع المعلومات عن العناوين المتاحة: الأسرة الضبابية، والأسلوب، والاسم الكامل، وغيرها. بناء على المكالمات اللاحقة Aspose.Words ويبحث عن معلومات عن العناوين المنشودة بإسمه في مخبأ البحث الفوني، الذي يطابق بعد ذلك الملفات المحددة لاستخدام الخط.

إن إجراء فرز جميع الملفات الفوتوغرافية المتاحة لاستهلال المخبأ يستغرق وقتا طويلا. Aspose.Words يُمكِنُك أَنْ تُوفّرَ وتُحمّلُ المخبأَ باستخدام **FontSettings.SaveSearchCache** طريقة لحل مسألة الأداء هذا هو، يمكن للمستعمل أن يحمّل مخبأ منقذ من قبل من ملف وتجاوز خطوة فرز جميع الملفات المتاحة.

{{% alert color="primary" %}}

استخدم نفس الشيء **SaveSearchCache** طريقة لتحديث المخبأ

{{% /alert %}}

{{% alert color="primary" %}}

والمخبأ مناسب أيضاً لسيناريوهات أخرى عندما يتم تحميل اللوحات على الشبكة. أو للسيناريوهات عندما لا توجد طريقة لتخزين `FontSettings` كمثال مع مخبأ

{{% /alert %}}


## الحصول على قائمة الفواكه المتاحة {#get-a-list-of-available-fonts}

إذا كنت ترغب في الحصول على قائمة الفونتات المتاحة، والتي، على سبيل المثال، يمكن استخدامها لإصدار وثيقة PDF، يمكنك استخدام [GetAvailableFonts](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/#getAvailableFonts) الطريقة، كما هو مبين في المثال الرمزي التالي. The [PhysicalFontInfo](https://reference.aspose.com/words/java/com.aspose.words/physicalfontinfo/) تُحدّدُ الدرجةُ معلوماتَ حول الخطّ الماديِ المتاح Aspose.Words محرك فونت:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-GetAllAvailableFonts.java" >}}
