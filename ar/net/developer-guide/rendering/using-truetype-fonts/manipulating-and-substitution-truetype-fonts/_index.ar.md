---
title: التعامل مع خطوط TrueType واستبدالها في C#
second_title: Aspose.Words لـ .NET
articleTitle: التعامل مع خطوط TrueType واستبدالها
linktitle: التعامل مع خطوط TrueType واستبدالها
description: "يمكن لـ Aspose.Words for .NET تضمين خطوط TrueType الصحيحة في المستند الناتج لضمان عرضه بدقة باستخدام C#. في حالة عدم توفر خط أو حرف معين، يبحث Aspose.Words عن بديل مناسب للخط أو يستخدم آلية الخط الاحتياطي."
type: docs
weight: 10
url: /ar/net/manipulating-and-substitution-truetype-fonts/
timestamp: 2024-10-21-11-17-44
---

يتطلب Aspose.Words خطوط TrueType لمجموعة متنوعة من المهام، بما في ذلك عرض المستندات إلى تنسيقات الصفحات الثابتة، على سبيل المثال، PDF أو XPS. عندما يعرض Aspose.Words مستندًا، فإنه يحتاج إلى إجراء التضمين وتضمين المجموعة الفرعية لخطوط TrueType في المستند الناتج، وهي ممارسة عادية أثناء إنشاء المستند، بما في ذلك تنسيقات PDF أو XPS الشائعة. وهذا يضمن أن المستند سيظهر بنفس الشكل لأي عارض. علاوة على ذلك، تتطلب مواصفات XPS تضمين الخطوط دائمًا في المستند.

للتأكد من أن Aspose.Words يقيس الأحرف بدقة ويدمج الخطوط ذات الصلة بنجاح، يجب استيفاء الشروط التالية:

1. يجب أن يكون Aspose.Words قادرًا على العثور على ملفات خطوط TrueType والوصول إليها على النظام.
1. يجب أن تكون هناك خطوط TrueType كافية متاحة لـ Aspose.Words، ويفضل أن تكون بنفس أسماء مجموعة الخطوط المستخدمة في المستند.

لاحظ أن الخط الموجود في المستند يمثل كيانًا، مثل اسم العائلة والنمط والحجم واللون، والذي يختلف عن كيان خط `TrueType` (الخط المادي). يقوم Aspose.Words بتحليل الخط الموجود في المستند إلى خط فعلي في مرحلة ما من المعالجة. يؤدي ذلك إلى تمكين مهام معينة، والأكثر شيوعًا هي مهمة حساب حجم النص أثناء إنشاء التخطيط والتضمين/الإعداد الفرعي لتنسيقات الصفحات الثابتة. يتم أيضًا تمكين عدد من المهام الأخرى الأقل شيوعًا، مثل تحليل الخطوط واستبدالها أثناء تحميل HTML أو التضمين/الإعداد الفرعي لبعض تنسيقات التدفق.

## التلاعب بالخط ومشكلات الأداء

جميع آليات معالجة الخطوط المتوفرة موجودة في فئة [FontSettings](https://reference.aspose.com/words/ar/net/aspose.words.fonts/fontsettings/). هذه الفئة مسؤولة عن جلب الخطوط ضمن مصادر الخطوط المحددة بالإضافة إلى عملية استبدال الخط، كما هو موضح أدناه.

يتم تحليل الخطوط في عدة خطوات:

1. الحصول على معلومات للخط، والحل من جميع الخطوط المتاحة.
1. تحليل الخطوط التي تم حلها للحصول على ملفات glyph والمقاييس المتاحة (الأفقية والرأسية).
1. تحليل الخطوط التي تم حلها للتضمين والإعدادات الفرعية.

عندما يواجه Aspose.Words خطًا في المستند لأول مرة، فإنه يحاول الحصول على معلومات الخط الأساسية، مثل الاسم الكامل للخط، واسم العائلة، والإصدار، والنمط، من ملفات الخطوط الموجودة في كل مصدر خط. بعد استرداد جميع الخطوط، يستخدم Aspose.Words هذه التفاصيل للعثور على بيانات الخط المطلوبة أو البديل المناسب للخط المطلوب.

نظرًا لأن الإجراء الموضح أعلاه يستغرق وقتًا طويلاً، فقد يؤثر سلبًا على أداء التطبيق عند تشغيله لأول مرة. ومع ذلك، فإن كل مثيل لـ **FontSettings** له ذاكرة تخزين مؤقت خاصة به، مما قد يقلل من وقت معالجة المستندات اللاحقة. على سبيل المثال، يمكنك مشاركة مثيل لفئة **FontSettings** بين مستندات مختلفة، مما يسمح لك بتسريع تحميل المستندات. يوضح المثال التالي هذا:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithFontSettings-FontSettingsWithLoadOption.cs" >}}

في حالة عدم تعريف **FontSettings** بشكل صريح، يستخدم Aspose.Words مثيل **FontSettings** الافتراضي. تتم أيضًا مشاركة هذا المثيل تلقائيًا بين المستندات، ويمكن استخراجه على النحو التالي:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithFontSettings-FontSettingsDefaultInstance.cs" >}}

إذا كنت متأكدًا من أن جميع مستندات المعالجة تتطلب نفس إعدادات الخط، فمن المستحسن إعداد مثيل **FontSettings** الافتراضي واستخدامه. لنفترض أنك بحاجة إلى استخدام نفس مصادر الخطوط لجميع مستنداتك. في هذه الحالة، يمكنك فقط تعديل المثيل الافتراضي كما يلي:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithFontSettings-FontSettingsFontSource.cs" >}}

{{% alert color="primary" %}}

يتمتع **FontSettings** المخصص بأولوية أعلى من المثيل الافتراضي.

{{% /alert %}}

## توفر الخط واستبداله

يمكن تنسيق النص الموجود في المستند باستخدام خطوط مختلفة، مثل Arial وTimes New Roman وVerdana وغيرها. عندما يعرض Aspose.Words مستندًا، فإنه يحاول تحديد الخطوط المحددة في المستند.

ومع ذلك، هناك حالات لا يمكن فيها العثور على الخط الدقيق ويجب على Aspose.Words استبداله بخط مماثل بدلاً من ذلك. يقوم Aspose.Words بتحديد الخط وفقًا للعملية التالية:
1. يحاول Aspose.Words العثور على خط من بين مصادر الخطوط المتاحة باسم الخط الدقيق.
1. يحاول Aspose.Words العثور على الخط المطلوب بين الخطوط المضمنة في المستند الأصلي. يمكن أن تحتوي بعض تنسيقات المستندات مثل DOCX على خطوط مضمنة.
1. إذا لم يتمكن Aspose.Words من تحديد موقع الخط المطلوب مع تطابق الاسم تمامًا، وخاصية [AltName](https://reference.aspose.com/words/ar/net/aspose.words.fonts/fontinfo/altname/) المحددة لهذا الخط، فسيبحث Aspose.Words عن الخط المحدد باستخدام **AltName** من فئة [FontInfo](https://reference.aspose.com/words/ar/net/aspose.words.fonts/fontinfo/)، والذي يحدد معلومات الخط.
1. إذا لم يتمكن Aspose.Words من تحديد موقع الخط المحدد، ولم يتم تعريف **AltName** أيضًا، فسيتم تطبيق قواعد استبدال الخط واحدة تلو الأخرى، كما هو موضح أدناه (عند العثور على البديل المناسب، تتوقف عملية استبدال الخط وتتوقف عملية استبدال الخط لم يتم تنفيذ الخطوة التالية):
   1. أولاً، يحاول Aspose.Words معالجة اسم الخط للحصول على الاستبدال، خاصة أنه يحاول إزالة اللواحق ذات الفواصل "-" و"".<br>
      إذا تم تطبيق قاعدة الاستبدال هذه، "لم يتم العثور على الخط '<OriginalFont>'. تم استخدام الخط '<SubstitutionFont>' بدلاً من ذلك. السبب: استبدال اسم الخط." يظهر تحذير.<br>
            {{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersSystemAndCustomFolder-GetSubstitutionWithoutSuffixes.cs" >}}
   1. بعد ذلك يحاول Aspose.Words تطبيق إعدادات خط نظام التشغيل، إذا كانت متوفرة، باستخدام الأداة المساعدة **FontConfig**. يجب استخدام هذه الميزة غير Windows مع نظام تشغيل متوافق مع FontConfig. يحتوي أي نظام تشغيل يستند إلى Unix تقريبًا على مكتبة `FontConfig` مصممة لتوفير تكوين الخطوط على مستوى النظام وتخصيصها والوصول إلى التطبيقات. بخلاف ذلك، يمكن للمستخدم تثبيت هذه المكتبة بسهولة.
      يعرف Aspose.Words كيفية الاستعلام عن البيانات وتفسير نتائج FontConfig لأغراضه الخاصة. بشكل افتراضي، يتم تعطيل الأداة المساعدة `FontConfig`. يمكنك تمكينه على النحو التالي:<br>
      **.NET**<br>
      {{< highlight csharp >}}
      fontSettings.SubstitutionSettings.FontConfigSubstitution.Enabled = true;
      {{< /highlight >}}
   1. تستخدم الخطوة التالية آلية بسيطة ولكنها قوية تسمى قاعدة استبدال **Table**. بشكل افتراضي، تكون هذه الميزة نشطة ومتوفرة لنظام التشغيل المحدد. سوف يقوم Aspose.Words باستبدال الخط بهذه القاعدة إذا لم يتم استبداله بقاعدة استبدال `FontConfig`.<br>
      يستخدم Aspose.Words جداول XML، والتي تحدد قواعد الاستبدال الأساسية لأنظمة تشغيل مختلفة. وفقًا لقاعدة استبدال الجدول، سيتم استخدام قائمة أسماء الخطوط البديلة.<br>
      **XML**<br>
      {{< highlight html >}}
      <TableSubstitutionSettings xmlns="Aspose.Words"> 
      	<SubstitutesTable> 
		<Item OriginalFont="Arabic Transparent" SubstituteFonts="Arial" /> 
		… 
	</SubstitutesTable> 
      </TableSubstitutionSettings>
      {{< /highlight >}}
      الميزة الرئيسية لهذه القاعدة هي القدرة على تحميل جداول الاستبدال الخاصة بك، كما هو موضح في المثال التالي:<br>
      **.NET**<br>
      {{< highlight csharp >}}
      fontSettings.SubstitutionSettings.TableSubstitution.Load("Table.xml");
      {{< /highlight >}}
      ورغم مرونة هذه الآلية، إلا أن هناك بعض الحالات التي يكون من الأفضل تعطيلها فيها، كما هو موضح أدناه:<br>
      **.NET**<br>
      {{< highlight csharp >}}
      fontSettings.SubstitutionSettings.TableSubstitution.Enabled = false;
      {{< /highlight >}}
   1. سيتم تطبيق قاعدة استبدال **FontInfo** إذا لم تتمكن قاعدة استبدال الجدول من العثور على الخط. يتم تمكين هذه الآلية بشكل افتراضي. يعثر Aspose.Words على الخط الأنسب وفقًا لمعلومات الخط الموجودة في مستند معين. يمكن الحصول على هذه المعلومات من فئة **FontInfo** كما هو موضح أدناه:<br>
      **.NET**<br>
      {{< highlight csharp >}}
      FontInfoCollection fontInfos = doc.FontInfos;
      {{< /highlight >}}
      لا يمكن للمستخدمين التدخل في سير عمل هذه الميزة، إلا إذا قرروا تعطيلها في حالة الحصول على نتائج غير مرضية:<br>
      **.NET**<br>
      {{< highlight csharp >}}
            fontSettings.SubstitutionSettings.FontInfoSubstitution.Enabled = false;
      {{< /highlight >}}
      إذا لم يكن **FontInfo** متاحًا للخط المفقود، فستتوقف العملية.<br>
   1. سيتم تطبيق قاعدة استبدال **DefaultFont** في حالة فشل استبدال `FontInfo` أيضًا. يتم تمكين هذه القاعدة أيضًا بشكل افتراضي. طبقاً لهذه القاعدة، سيحاول Aspose.Words استخدام الخط الافتراضي المحدد في خاصية [DefaultFontName](https://reference.aspose.com/words/ar/net/aspose.words.fonts/defaultfontsubstitutionrule/defaultfontname/). إذا لم يقم المستخدم باختيار الخط الافتراضي الخاص به، فسيتم استخدام "Times New Roman" كخط افتراضي. يمكن تعطيل هذه القاعدة كما هو موضح أدناه:<br>
      **.NET**<br>
      {{< highlight csharp >}}
      fontSettings.SubstitutionSettings.DefaultFontSubstitution.Enabled = false;
      {{< /highlight >}}
      للتحقق من الخط الافتراضي الحالي، استخدم:<br>
      **.NET**<br>
      {{< highlight csharp >}}
      fontSettings.SubstitutionSettings.DefaultFontSubstitution.DefaultFontName;
      {{< /highlight >}}
      لإعداد خيار الاستبدال الخاص بك، قم بتطبيق ما يلي:<br>
      **.NET**<br>
      {{< highlight csharp >}}
      fontSettings.SubstitutionSettings.DefaultFontSubstitution.DefaultFontName = "Arial";
      {{< /highlight >}}
1. إذا كان Aspose.Words غير قادر على إجراء استبدال الخط، فإنه يحاول الحصول على أول خط متاح من مصادر الخطوط المتاحة.
1. أخيرًا، إذا لم يتمكن Aspose.Words من العثور على أي خطوط بين مصادر الخطوط المتاحة، فإنه يعرض المستند باستخدام خط Fanwood المجاني المضمن في مجموعة Aspose.Words.<br>

إذا كان **FontInfo** متاحًا، فستقوم *قاعدة استبدال FontInfo* دائمًا بحل الخط وتجاوز قاعدة الخط الافتراضية. إذا كنت تريد استخدام قاعدة الخط الافتراضية، فيجب عليك تعطيل *قاعدة استبدال FontInfo*. لاحظ أن *قاعدة استبدال FontConfig* ستحل مشكلة الخط في معظم الحالات، وبالتالي تتجاوز كافة القواعد الأخرى.

## كيفية التعرف على أنه تم استبدال الخط

في بعض الأحيان، قد يكون من غير الواضح سبب تغير تخطيط المستند، أو سبب عدم ظهور بعض الخطوط كما هو متوقع. في مثل هذه الحالات، يتم إنقاذ رسائل التحذير لاستبدال الخط التي تنفذها واجهة [IWarningCallback](https://reference.aspose.com/words/ar/net/aspose.words/iwarningcallback/). لديهم نوع تحذير [FontSubstitution](https://reference.aspose.com/words/ar/net/aspose.words/warningtype/) وتنسيق نص الوصف القياسي، "الخط"<OriginalFont> لم يتم العثور عليه. استخدام '<SubstitutionFont> "الخط بدلا من ذلك. سبب:<Reason> "، وذلك للأسباب التالية:

- "الاسم البديل من المستند" - للاستبدال بواسطة [AltName](https://reference.aspose.com/words/ar/net/aspose.words.fonts/fontinfo/properties/altname)
- "استبدال الخط" - للاستبدال بقاعدة تكوين الخط
- "استبدال الجدول" - للاستبدال بقاعدة الجدول
- "استبدال معلومات الخط" - للاستبدال بقاعدة معلومات الخط
- "استبدال الخط الافتراضي" - للاستبدال بقاعدة الخط الافتراضية
- "أول خط متاح" - للاستبدال بالخط الأول المتاح

## إعدادات الخط الاحتياطي من XML

هناك آليتان مختلفتان مستخدمتان في Aspose.Words - استبدال الخط والخط الاحتياطي. يتم استخدام استبدال الخط عندما لا يمكن العثور على الخط المحدد في المستند بين مصادر الخطوط كما هو موضح في الأقسام أعلاه. يتم استخدام آلية الخط الاحتياطي عند حل الخط، لكنه لا يحتوي على حرف محدد. في هذه الحالة، يحاول Aspose.Words استخدام أحد الخطوط الاحتياطية للشخصية.

توجد طريقة [BuildAutomatic](https://reference.aspose.com/words/ar/net/aspose.words.fonts/fontfallbacksettings/buildautomatic/) تقوم تلقائيًا بإنشاء الإعدادات الاحتياطية عن طريق فحص الخطوط المتاحة. وبما أن هذه الطريقة قد تنتج إعدادًا احتياطيًا غير مثالي، فيمكنك التحكم في سلوك الخط الاحتياطي باستخدام خصائص فئة [FontFallbackSettings](https://reference.aspose.com/words/ar/net/aspose.words.fonts/fontfallbacksettings/). تحدد هذه الفئة إعدادات آلية الرجوع للخط. يمكنك الحصول على مثيل لفئة **FontFallbackSettings** كما يلي:

**.NET**

{{< highlight csharp >}}
FontFallbackSettings settings = fontSettings.FallbackSettings;
{{< /highlight >}}

على غرار *قاعدة استبدال الجدول*، تستخدم هذه الآلية جداول XML للتكوين. يمكن تحميل جداول XML هذه وحفظها بالطرق التالية:

**.NET**

{{< highlight csharp >}}
fontSettings.FallbackSettings.Load("MyNewFallbackTable.xml");
fontSettings.FallbackSettings.Save("Current_FallbackTable.xml");
{{< /highlight >}}

يتضمن إصدار Aspose.Words جدولين: *MsOfficeFallbackSetting.xml* و*NotoFallbackSetting.xml*.

يحدد جدول *MsOfficeFallbackSetting* استراتيجية بديلة لمجموعة من الأحرف، وهي مشابهة للاستراتيجية المستخدمة بواسطة Microsoft Word. وبالتالي، تتطلب الإستراتيجية تثبيت خطوط Microsoft Office. يمكن تفعيل *MsOfficeFallbackSetting* باستخدام الطريقة التالية:

**.NET**

{{< highlight csharp >}}
fontSettings.FallbackSettings.LoadMsOfficeFallbackSettings();
{{< /highlight >}}

تم إنشاء جدول *NotoFallbackSetting* خصيصًا للاستخدام مع خطوط Google Noto (راجع المزيد حول إعدادات خطوط Google Noto في القسم التالي) ويمكن تمكينه على النحو التالي:

**.NET**

{{< highlight csharp >}}
fontSettings.FallbackSettings.LoadNotoFallbackSettings();
{{< /highlight >}}

يوضح مثال التعليمات البرمجية التالي كيفية تحميل إعدادات الخط الاحتياطي من ملف XML:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontSettings-SetFontFallbackSettings.cs" >}}

في مثال التعليمات البرمجية أعلاه، يتم استخدام ملف XML التالي:

{{< highlight html >}}
<FontFallbackSettings xmlns="Aspose.Words">
    <FallbackTable>
        <!-- Fallback table consists of the rules. Each rule defines the fallback fonts which Aspose.Words should use for specified Unicode ranges and base fonts. Rules are checked one by one and the first applicable fallback font is used. If none of the rules are applicable then ".notdef" glyph (missing glyph) from the base font will be used. -->
        <!-- This rule defines that "Vijaya" fallback font should be used for "U+0B80..U+0BFF Tamil" Unicode block. -->
        <Rule Ranges="0B80-0BFF" FallbackFonts="Vijaya"/>
        <!-- This rule defines that "Segoe UI Emoji" and "Segoe UI Symbol" fallback fonts should be used for "U+1F300..U+1F5FF Miscellaneous Symbols and Pictographs", "U+1F600..U+1F64F Emoticons" Unicode blocks. If "Segoe UI Emoji" font does not contains the glyph for the requested Unicode code point then "Segoe UI Symbol" will be checked. -->
        <Rule Ranges="1F300-1F64F" FallbackFonts="Segoe UI Emoji, Segoe UI Symbol"/>
        <!-- This rule defines that "Arial" fallback font should be used for "U+2000..U+206F General Punctuation", "U+2070..U+209F Superscripts and Subscripts" Unicode blocks and specific "U+20B9 INDIAN RUPEE SIGN" code point. -->
        <Rule Ranges="2000-206F, 2070-209F, 20B9" FallbackFonts="Arial" />
        <!-- These rules defines that for "U+3040..U+309F Hiragana" Unicode block "MS Gothic" fallback font should be used if base font is "Times New Roman" and "MS Mincho" fallback font for all other base fonts. -->
        <Rule Ranges="3040-309F" FallbackFonts="MS Gothic" BaseFonts="Times New Roman"/>
        <Rule Ranges="3040-309F" FallbackFonts="MS Mincho"/>
        <!-- This rule defines that "Arial Unicode MS" fallback font should be used if applicable fallback font was not found by previous rules. -->
        <Rule FallbackFonts="Arial Unicode MS"/>
    </FallbackTable>
</FontFallbackSettings>
{{< /highlight >}}

## إعدادات الخط الاحتياطي المحددة مسبقًا لخطوط Google Noto

يوفر Aspose.Words إعدادات احتياطية للخط محددة مسبقًا لخطوط Google Noto. هذه خطوط مجانية مرخصة بموجب ترخيص SIL Open Font، ويمكن تنزيلها من Google Noto Fonts. توفر فئة **FontFallbackSettings** طريقة [LoadNotoFallbackSettings](https://reference.aspose.com/words/ar/net/aspose.words.fonts/fontfallbacksettings/loadnotofallbacksettings/). يقوم بتحميل الإعدادات الاحتياطية المحددة مسبقًا، والتي تستخدم خطوط Google Noto كما هو موضح في مثال التعليمات البرمجية أدناه:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontSettings-SetPredefinedFontFallbackSettings.cs" >}}

{{% alert color="primary" %}}

يتم استخدام خطوط Sans style Noto ذات الوزن العادي فقط في الإعدادات المحددة مسبقًا.

{{% /alert %}}

## حيث يبحث Aspose.Words عن الخطوط

يحاول Aspose.Words العثور على خطوط TrueType على نظام الملفات تلقائيًا. عادةً، يمكنك الاعتماد على السلوك الافتراضي لـ Aspose.Words للعثور على خطوط `TrueType`، ولكن في بعض الأحيان تحتاج إلى تحديد مجلداتك الخاصة التي تحتوي على خطوط TrueType. يصف موضوع [تحديد موقع خطوط تروتايب](/words/ar/net/specifying-truetype-fonts-location/) كيف وأين يبحث Aspose.Words عن الخطوط، بالإضافة إلى كيفية تحديد مواقع الخطوط الخاصة بك.

## الاختلافات في معالجة تنسيقات الخطوط في Aspose.Words وMicrosoft Word

توجد بعض الاختلافات في معالجة تنسيقات الخطوط في Aspose.Words وMicrosoft Word كما هو موضح في الجدول أدناه:

|  | Microsoft Word | Aspose.Words |
|  :-  |  :-  |  :-  |
| خطوط TrueType وخطوط OpenType مع مخططات TrueType | أيد. | أيد. |
| خطوط OpenType مع مخططات PostScript | مدعومة لمعظم السيناريوهات. التضمين في تنسيقات الصفحات الثابتة مثل PDF وXPS غير مدعوم. يتم استبدال النص بصور نقطية. | مدعوم لمعظم السيناريوهات، بما في ذلك التضمين في تنسيقات الصفحات الثابتة. |
| اختلافات الخط OpenType | يتم دعم المثيلات المسماة فقط. الاختلافات المستمرة غير مدعومة. | مدعوم للمثيل الافتراضي فقط. لا يتم دعم المثيلات المسماة والاختلافات المستمرة. |
| الخطوط من النوع 1 | مدعوم في إصدارات Windows قبل عام 2013 وفي إصدارات MacOS. تم إسقاط الدعم عن إصدارات Windows بدءًا من عام 2013. | غير معتمد. |

## أنظر أيضا

- [Google Noto الخطوط](https://fonts.google.com/noto) لتحميل الخطوط المجانية
