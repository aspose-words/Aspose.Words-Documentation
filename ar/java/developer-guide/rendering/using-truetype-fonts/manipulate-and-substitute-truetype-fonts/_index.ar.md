---
title: التلاعب واستبدال TrueType الخطوط
second_title: Aspose.Words ل Java
articleTitle: التلاعب واستبدال TrueType الخطوط
linktitle: التلاعب واستبدال TrueType الخطوط
description: "Aspose.Words ل Java يمكن تضمين الصحيح TrueType الخطوط في الوثيقة الناتجة للتأكد من أنه يعرض بدقة، أو البحث عن بديل الخط المناسب، أو يستخدم آلية تراجع الخط."
type: docs
weight: 10
url: /ar/java/manipulate-and-substitute-truetype-fonts/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words يتطلب TrueType خطوط لمجموعة متنوعة من المهام، بما في ذلك تقديم المستندات إلى تنسيقات الصفحات الثابتة، على سبيل المثال، PDF أو XPS. عندما يعرض Aspose.Words مستندا، فإنه يحتاج إلى إجراء التضمين وتضمين مجموعة فرعية من TrueType الخطوط في المستند الناتج، وهي ممارسة عادية أثناء إنشاء المستند، بما في ذلك التنسيقات الشائعة PDF أو XPS. هذا يضمن أن المستند سيظهر كما هو لأي عارض. علاوة على ذلك، تتطلب المواصفات XPS تضمين الخطوط دائما في المستند.

لضمان Aspose.Words يقيس بدقة الأحرف وبنجاح يضمن الخطوط ذات الصلة، يجب استيفاء الشروط التالية:

1. Aspose.Words يجب أن تكون قادرة على إيجاد والوصول TrueType ملفات الخط على النظام.
1. يجب أن تكون هناك خطوط TrueType كافية متاحة لـ Aspose.Words، ويفضل أن يكون ذلك بنفس أسماء عائلة الخطوط مثل تلك المستخدمة في المستند.

لاحظ أن الخط في المستند يمثل كيانا، مثل اسم العائلة والنمط والحجم واللون، يختلف عن كيان `TrueType` الخط (الخط الفعلي). Aspose.Words يحل الخط في المستند إلى خط مادي في مرحلة ما من المعالجة. يتيح ذلك مهام معينة، والأكثر شيوعا مهمة حساب حجم النص أثناء إنشاء التخطيط والتضمين / الضبط الفرعي لتنسيقات الصفحات الثابتة. يتم أيضا تمكين عدد من المهام الأخرى الأقل شيوعا، مثل حل الخطوط والاستبدال أثناء التحميل HTML أو التضمين/الضبط الفرعي لبعض تنسيقات التدفق.

## معالجة الخط ومشكلات الأداء

وترد جميع آليات معالجة الخط المتاحة في فئة [FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/). هذه الفئة مسؤولة عن جلب الخطوط ضمن مصادر الخطوط المحددة وكذلك عن عملية استبدال الخط، كما هو موضح أدناه.

يتم تحليل الخطوط في عدة خطوات:

1. الحصول على معلومات للخط، حل من جميع الخطوط المتاحة.
1. تحليل الخطوط التي تم حلها للحصول على الحروف الرسومية والمقاييس المتاحة (الأفقية والرأسية).
1. تحليل الخطوط التي تم حلها للتضمين والترتيب الفرعي.

عندما يلتقي Aspose.Words بخط في المستند لأول مرة، فإنه يحاول الحصول على معلومات الخط الأساسية، مثل الاسم الكامل للخط واسم العائلة والإصدار والنمط من ملفات الخطوط الموجودة في كل مصدر خط. بعد استرداد جميع الخطوط، تستخدم Aspose.Words هذه التفاصيل للعثور على بيانات الخط المطلوبة أو بديل مناسب للخط المطلوب.

نظرا لأن الإجراء الموضح أعلاه يستغرق وقتا طويلا، فقد يؤثر سلبا على أداء التطبيق عند إطلاقه لأول مرة. ومع ذلك، فإن كل مثيل من **FontSettings** له ذاكرة تخزين مؤقت خاصة به، مما قد يقلل من وقت معالجة المستندات اللاحقة. على سبيل المثال، يمكنك مشاركة مثيل من فئة **FontSettings** بين مستندات مختلفة، مما يسمح لك بتسريع تحميل المستندات. يوضح المثال التالي هذا:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSettings-FontSettingsWithLoadOptions.java" >}}

في حالة عدم تعريف **FontSettings** بشكل صريح، يستخدم Aspose.Words المثيل الافتراضي **FontSettings**. يتم أيضا مشاركة هذا المثيل تلقائيا بين المستندات، ويمكن استخراجه على النحو التالي:

**Java**

{{< highlight csharp >}}
FontSettings fontSettings = FontSettings.getDefaultInstance();
{{< /highlight >}}

إذا كنت متأكدا من أن جميع مستندات المعالجة تتطلب نفس إعدادات الخط، فمن المستحسن إعداد المثيل الافتراضي **FontSettings** واستخدامه. لنفترض أنك بحاجة إلى استخدام نفس مصادر الخطوط لجميع مستنداتك. في هذه الحالة، يمكنك فقط تعديل المثيل الافتراضي على النحو التالي:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSettings-FontSettingsFontSource.java" >}}

{{% alert color="primary" %}}

يكون للعرف **FontSettings** أولوية أعلى من المثيل الافتراضي.

{{% /alert %}}

## توافر الخط والاستبدال

يمكن تنسيق نص في مستند بخطوط مختلفة، مثل أريال، تايمز نيو رومان، فيردانا، وغيرها. عند عرض Aspose.Words مستندا، فإنه يحاول تحديد الخطوط المحددة في المستند.

ومع ذلك، هناك حالات لا يمكن فيها العثور على الخط الدقيق و Aspose.Words يجب استبداله بخط مشابه بدلا من ذلك. Aspose.Words يحدد الخط وفقا للعملية التالية:

1. Aspose.Words يحاول العثور على خط بين مصادر الخط المتاحة مع اسم الخط المحدد.
1. Aspose.Words يحاول العثور على الخط المطلوب بين الخطوط المضمنة في المستند الأصلي. يمكن أن تحتوي بعض تنسيقات المستندات مثل DOCX على خطوط مضمنة.
1. إذا كان Aspose.Words غير قادر على تحديد موقع الخط المطلوب مع تطابق الاسم الدقيق، والخاصية [AltName](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/#getAltName) المحددة لهذا الخط، فسيجد Aspose.Words الخط المحدد بـ **AltName** من فئة [FontInfo](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/)، والتي تحدد معلومات الخط.
1. إذا كان Aspose.Words غير قادر على تحديد موقع الخط المحدد، ولم يتم تعريف **AltName** أيضا، فسيتم تطبيق قواعد استبدال الخط واحدا تلو الآخر، كما هو موضح أدناه (عند العثور على الاستبدال المناسب، تتوقف عملية استبدال الخط ولا يتم تنفيذ الخطوة التالية):
   1. Aspose.Words سيحاول تطبيق OS إعدادات الخط، إذا كانت متوفرة، باستخدام الأداة المساعدة `FontConfig`. يجب استخدام هذه الميزة غيرWindows مع FontConfig متوافق OS. تقريبا أي يونكس على أساس OS لديها بالفعل مكتبة `FontConfig` التي تم تصميمها لتوفير تكوين الخط على مستوى النظام، والتخصيص، والوصول إلى التطبيقات. خلاف ذلك، يمكن للمستخدم تثبيت هذه المكتبة بسهولة.<br>
      Aspose.Words يعرف كيفية الاستعلام عن البيانات وتفسير FontConfig النتائج لأغراضها الخاصة. بشكل افتراضي، يتم تعطيل الأداة المساعدة `FontConfig`. يمكنك تمكينه على النحو التالي:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getFontConfigSubstitution()().setEnabled(true);
      {{< /highlight >}}
   1. الخطوة التالية هي آلية بسيطة ولكنها قوية بشكل لا يصدق تسمى [TableSubstitutionRule](https://reference.aspose.com/words/java/com.aspose.words/tablesubstitutionrule/). بشكل افتراضي، تكون هذه الميزة نشطة ومتاحة لأي OS. Aspose.Words يستخدم XML الجداول التي تحدد قواعد الاستبدال الأساسية لمختلف OS. وفقا لقاعدة استبدال الجدول، سيتم استخدام قائمة أسماء الخطوط البديلة.<br>
**XML**
      {{< highlight html >}}
      <TableSubstitutionSettings xmlns="Aspose.Words"> 
	<SubstitutesTable> 
		<Item OriginalFont="Arabic Transparent" SubstituteFonts="Arial" /> 
		… 
	</SubstitutesTable> 
      </TableSubstitutionSettings>
      {{< /highlight >}}
      OriginalFont - خط يتم استبداله، SubstituteFonts - قائمة متغيرات الاستبدال، مفصولة بفاصلة. يتم استخدام أول خط متاح للاستبدال.<br>
      الميزة الرئيسية لهذه القاعدة هي القدرة على تحميل جداول الاستبدال الخاصة بك، كما هو موضح في المثال التالي:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().load("Table.xml");
      {{< /highlight >}}
      يمكنك أن تأخذ كأساس الجدول الموجود من جرة أو حفظه برمجيا بالطريقة التالية:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().save("MyTable.xml");
      {{< /highlight >}}
      على الرغم من مرونة هذه الآلية، إلا أن هناك بعض الحالات التي يكون من الأفضل فيها تعطيلها، كما هو موضح أدناه:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().setEnabled(false);
      {{< /highlight >}}
   1. سيتم تطبيق قاعدة الاستبدال **FontInfo** إذا لم تتمكن قاعدة استبدال الجدول من العثور على الخط. يتم تمكين هذه الآلية افتراضيا. Aspose.Words يجد الخط الأنسب وفقا لمعلومات الخط الواردة في مستند معين. يمكن الحصول على هذه المعلومات من فئة **FontInfo** كما هو موضح أدناه:<br>
**Java**
      {{< highlight csharp >}}
      FontInfoCollection fontInfos = doc.getFontInfos();
      {{< /highlight >}}
      لا يمكن للمستخدمين التدخل في سير عمل هذه الميزة ما لم يقرروا تعطيلها في حالة حدوث نتائج غير مرضية:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getFontInfoSubstitution().setEnabled(false);
      {{< /highlight >}}
      إذا لم يكن **FontInfo** متاحا للخط المفقود، فستتوقف العملية.
   1. **DefaultFont** سيتم تطبيق قاعدة الاستبدال في حالة فشل الاستبدال `FontInfo` أيضا. يتم تمكين هذه القاعدة أيضا بشكل افتراضي. وفقا لهذه القاعدة، سيحاول Aspose.Words استخدام الخط الافتراضي المحدد في الخاصية [DefaultFontName](https://reference.aspose.com/words/java/com.aspose.words/defaultfontsubstitutionrule/#getDefaultFontName). إذا لم يختار المستخدم الخط الافتراضي الخاص به، فسيتم استخدام" تايمز نيو رومان " كخط افتراضي. يمكن تعطيل هذه القاعدة كما هو موضح أدناه:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().setEnabled(false);
      {{< /highlight >}}
      للتحقق من الخط الافتراضي الحالي، استخدم:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().getDefaultFontName();
      {{< /highlight >}}
      لإعداد خيار الاستبدال الخاص بك، قم بتطبيق:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().setDefaultFontName("Arial");
      {{< /highlight >}}
1. إذا كان Aspose.Words غير قادر على إجراء استبدال الخط، فإنه يحاول الحصول على أول خط متاح من مصادر الخطوط المتاحة.
1. أخيرا، إذا تعذر على Aspose.Words العثور على أي خطوط بين مصادر الخطوط المتاحة، فإنه يعرض المستند باستخدام خط فانوود المجاني المضمن في تجميع Aspose.Words.

{{% alert color="primary" %}}

إذا كان **FontInfo** متاحا، فسيقوم *FontInfo substitution rule* دائما بحل الخط وتجاوز قاعدة الخط الافتراضية. إذا كنت تريد استخدام قاعدة الخط الافتراضية، فيجب عليك تعطيل *FontInfo substitution rule*. لاحظ أن *FontConfig substitution rule* سيحل الخط في معظم الحالات، وبالتالي يتجاوز جميع القواعد الأخرى.

{{% /alert %}}

## كيفية التعرف على أنه تم استبدال الخط

في بعض الأحيان، قد يكون من غير الواضح سبب تغيير تخطيط المستند، أو سبب عدم ظهور بعض الخطوط كما هو متوقع. في مثل هذه الحالات، تأتي رسائل تحذيرات استبدال الخط التي تنفذها واجهة [IWarningCallback](https://reference.aspose.com/words/java/com.aspose.words/iwarningcallback/) للإنقاذ. لديهم نوع التحذير [FontSubstitution](https://reference.aspose.com/words/java/com.aspose.words/warningtype/#FONT-SUBSTITUTION) وتنسيق نص الوصف القياسي، " لم يتم العثور على الخط '<OriginalFont>". باستخدام ' <SubstitutionFont>' الخط بدلا من ذلك. السبب: <Reason> "، مع الأسباب التالية:

- "اسم بديل من المستند – - للاستبدال بـ [AltName](https://reference.aspose.com/words/java/com.aspose.words/Fontinfo#AltName)
- "استبدال فونتكونفيغ" - للاستبدال بقاعدة تكوين الخط
- "استبدال الجدول – - للاستبدال بقاعدة الجدول
- "استبدال معلومات الخط – - للاستبدال بقاعدة معلومات الخط
- "استبدال الخط الافتراضي – - للاستبدال بحكم الخط الافتراضي
- "الخط الأول المتاح – - للاستبدال بالخط الأول المتاح

## إعدادات الخط FallBack من XML

هناك آليتان مختلفتان تستخدمان في Aspose.Words - استبدال الخط واحتياطي الخط. يتم استخدام استبدال الخط عندما يتعذر العثور على الخط المحدد في المستند بين مصادر الخط كما هو موضح في الأقسام أعلاه. يتم استخدام آلية احتياطي الخط عند حل الخط، ولكنها لا تحتوي على حرف معين. في هذه الحالة، Aspose.Words يحاول استخدام أحد الخطوط الاحتياطية للحرف.

هناك طريقة [BuildAutomatic](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/#buildAutomatic) تقوم تلقائيا بإنشاء الإعدادات الاحتياطية عن طريق مسح الخطوط المتاحة ضوئيا. نظرا لأن هذه الطريقة قد تنتج إعدادا احتياطيا غير مثالي، يمكنك التحكم في السلوك الاحتياطي للخط باستخدام خصائص فئة [FontFallbackSettings](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/). تحدد هذه الفئة إعدادات آلية تراجع الخط. يمكنك الحصول على مثيل من فئة **FontFallbackSettings** على النحو التالي:

**Java**

{{< highlight csharp >}}
FontFallbackSettings settings = fontSettings.getFallbackSettings();
{{< /highlight >}}

على غرار *Table substitution rule*، تستخدم هذه الآلية XML جداول للتكوين. يمكن تحميل هذه الجداول XML وحفظها بالطرق التالية:

**Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().load("MyNewFallbackTable.xml");
fontSettings.getFallbackSettings().save("Current_FallbackTable.xml");
{{< /highlight >}}

يتضمن الإصدار Aspose.Words جدولين: *MsOfficeFallbackSetting.xml* و *NotoFallbackSetting.xml*.

يحدد الجدول *MsOfficeFallbackSetting* استراتيجية استبدال لمجموعة من الأحرف، والتي تشبه الإستراتيجية المستخدمة بواسطة Microsoft Word. وبالتالي، تتطلب الاستراتيجية تثبيت Microsoft خطوط المكتب. *MsOfficeFallbackSetting* يمكن تفعيلها باستخدام الطريقة التالية:

**.Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().loadMsOfficeFallbackSettings();
{{< /highlight >}}

يتم إنشاء الجدول *NotoFallbackSetting* خصيصا للاستخدام مع Google Noto الخطوط (انظر المزيد حول Google Noto إعدادات الخط في القسم التالي) ويمكن تمكينه على النحو التالي:

**Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().loadNotoFallbackSettings();
{{< /highlight >}}

يوضح مثال التعليمات البرمجية التالية كيفية تحميل إعدادات الخط الاحتياطي من ملف XML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SetFontSettings-SetFontFallbackSettings.java" >}}

في مثال الكود أعلاه، يتم استخدام الملف XML التالي:

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

## الخط المحدد مسبقا FallBack إعدادات Google Noto الخطوط

Aspose.Words يوفر إعدادات احتياطية للخط محددة مسبقا لخطوط Google Noto. هذه خطوط مجانية مرخصة بموجب SIL رخصة فتح الخط، والتي يمكن تنزيلها من Google Noto الخطوط. توفر فئة **FontFallbackSettings** طريقة [LoadNotoFallbackSettings](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/#loadNotoFallbackSettings). يقوم بتحميل الإعدادات الاحتياطية المحددة مسبقا، والتي تستخدم Google Noto الخطوط كما هو موضح في مثال الكود أدناه:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SetFontSettings-setPredefinedFontFallbackSettings.java" >}}

{{% alert color="primary" %}}

وتستخدم فقط بلا نمط الخطوط نوتو مع الوزن العادي في إعدادات محددة مسبقا.

{{% /alert %}}

## حيث Aspose.Words يبحث عن الخطوط

Aspose.Words محاولات للعثور على TrueType الخطوط على نظام الملفات تلقائيا. عادة، يمكنك الاعتماد على السلوك الافتراضي Aspose.Words للعثور على `TrueType` الخطوط، ولكن في بعض الأحيان تحتاج إلى تحديد المجلدات الخاصة بك التي تحتوي على TrueType الخطوط. ال [حدد TrueType موقع الخطوط](/words/java/specify-truetype-fonts-location/) يصف الموضوع كيف وأين Aspose.Words يبحث عن الخطوط، وكذلك كيفية تحديد مواقع الخطوط الخاصة بك.

## الاختلافات في معالجة تنسيقات الخطوط في Aspose.Words و Microsoft Word

هناك بعض الاختلافات في معالجة تنسيقات الخطوط في Aspose.Words و Microsoft Word كما هو موضح في الجدول أدناه:

|  | Microsoft Word | Aspose.Words |
| :- | :- | :- |
| TrueType الخطوط و OpenType الخطوط مع TrueType الخطوط العريضة | معتمد. | معتمد. |
| OpenType الخطوط مع PostScript الخطوط العريضة | معتمدة لمعظم السيناريوهات. التضمين إلى تنسيقات الصفحات الثابتة مثل PDF و XPS غير مدعوم. يتم استبدال النص مع الصور النقطية. | دعم لمعظم السيناريوهات، بما في ذلك التضمين إلى تنسيقات الصفحات الثابتة. |
| OpenType اختلافات الخط | يتم دعم المثيلات المسماة فقط. الاختلافات المستمرة غير معتمدة. | معتمد للمثيل الافتراضي الوحيد. المثيلات المسماة والاختلافات المستمرة غير مدعومة. |
| اكتب 1 الخطوط | معتمدة على Windows الإصدارات قبل عام 2013 وعلى MacOS الإصدارات. يتم إسقاط الدعم على Windows الإصدارات بدءا من عام 2013. | غير معتمد. |

## أنظر أيضا

- [Google Noto الخطوط](https://fonts.google.com/noto) لتنزيل الخطوط المجانية


