---
title: Manipulate and Substitute TrueType Fonts
second_title: Aspose.Words for Java
articleTitle: Manipulate and Substitute TrueType Fonts
linktitle: Manipulate and Substitute TrueType Fonts
description: "Aspose.Words for Java ويمكن أن تُدرج في الوثيقة التي تُنتج نسخاً صحيحة من طراز TrueType لضمان عرضها بدقة، أو البحث عن بديل مناسب، أو استخدام آلية صدع الفونت."
type: docs
weight: 10
url: /ar/java/manipulate-and-substitute-truetype-fonts/
---

Aspose.Words يتطلّب الحقيقة رسوم من النوع لمجموعة متنوعة من المهام، بما في ذلك إصدار الوثائق إلى صيغ ثابتة الصفحات، مثل PDF أو XPS. عندما Aspose.Words يُصدر وثيقة، ويحتاج إلى أن يُدخلها ويُدرجها في الوثيقة التي تُنتج عن ذلك، وهي ممارسة عادية أثناء إعداد الوثائق، بما في ذلك منظومات الدفاع الشعبي الشعبية الشعبية الشعبية أو PDF أو XPS أشكال. ويضمن ذلك أن تظهر الوثيقة نفسها لأي مشاهد. Moreover, the XPS وتقتضي المواصفات أن تُدرج دائماً في الوثيقة.

ضمان Aspose.Words ويجب استيفاء الشروط التالية:

1 Aspose.Words يجب أن يكون قادراً على العثور على ملفات (ترو تايب) على النظام
1 يجب أن يكون هناك ما يكفي من روايات التراب Aspose.Words, ويفضل أن تكون نفس الأسماء العائلية التي تستخدم في الوثيقة.

Note that the font in the document represents an entity, such as family name, fashion, size, color, that is different from the `TrueType` كيان (فيزيائي) Aspose.Words يُحلّ الشعار الوارد في الوثيقة إلى عنوان مادي في مرحلة ما من مراحل التجهيز. ويمكِّن ذلك من الاضطلاع بمهام معينة، معظمها مهمة حساب حجم النصوص أثناء عملية التشييد ودمج/تقديم صيغ ثابتة الصفحات. كما أن عدداً من المهام الأخرى الأقل شعبية، مثل حل العناوين والاستعاضة عنها، مع تحميل HTML أو دمج/تقديم بعض أشكال التدفق، هي مهام مُمكَّنة أيضاً.

## مسائل التلاعب والأداء

All available font manipulation mechanisms are contained in the [FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/) صف وهذه الفئة مسؤولة عن جلب العواطف ضمن مصادر محددة وكذلك عن عملية استبدال الفونت، على النحو المبين أدناه.

ويتم فرز الأصوات في عدة خطوات:

1 الحصول على معلومات عن النواة، حل من جميع النوافذ المتاحة.
1 يُطلقُ العناوينَ المُحَلَّمةَ للإتاحَة glyphs and metrics (horizontal and spiritual).
1 تُسجّلُ العناوينَ المُحَلَّمةَ للإحتِراقِ و التَغَطُّم.

عندما Aspose.Words وهو يلتقي بنسخة في الوثيقة لأول مرة، ويحاول الحصول على معلومات أساسية، مثل الاسم الكامل، واسم الأسرة، والنسخة، والأسلوب، من الملفات الفونتية الموجودة في كل مصدر. بعد إسترجاع كل العناوين Aspose.Words تستخدم هذه التفاصيل لإيجاد البيانات المطلوبة أو استبدال مناسب للخط المطلوب.

وبما أن الإجراء الوارد وصفه أعلاه يستغرق وقتاً طويلاً، فقد يؤثر سلباً على أداء الطلبات في بداية العملية الأولى. However, each instance of **FontSettings** ولها مخبأها الخاص الذي يمكن أن يقلل من وقت تجهيز الوثائق اللاحقة. على سبيل المثال، يمكنك مشاركة مثال على **FontSettings** صف بين وثائق مختلفة مما يسمح لك بتسريع تحميل الوثائق ويبين المثال التالي ما يلي:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSettings-FontSettingsWithLoadOptions.java" >}}

في الحالة **FontSettings** غير معرّف صراحة، Aspose.Words استخدام التخلف **FontSettings** على سبيل المثال ويتم تبادل هذه الحالة تلقائياً بين الوثائق، ويمكن استخلاصها على النحو التالي:

**Java**

{{< highlight csharp >}}
FontSettings fontSettings = FontSettings.getDefaultInstance();
{{< /highlight >}}

إذا كنت على يقين من أن جميع وثائق التجهيز تحتاج إلى نفس الإطارات الفونتية، ثم يوصى بإنشاء واستخدام الغموض **FontSettings** على سبيل المثال إفترضْ بأنّك يَحتاجُ أَنْ تَستعملَ نفس المصادرِ الوهميةِ لجميع وثائقِكَ. في هذه الحالة، يمكنك فقط تعديل الحالة الافتراضية كما يلي:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSettings-FontSettingsFontSource.java" >}}

{{% alert color="primary" %}}

العرف **FontSettings** لها أولوية أعلى من حالة التقصير.

{{% /alert %}}

## التوافر والاستعاضة

A text in a document can be formatted with various fonts, such as Arial, Times New Roman, Verdana, and others. عندما Aspose.Words وتصدر وثيقة، وتحاول اختيار العناصر المحددة في الوثيقة.

غير أن هناك حالات لا يمكن فيها العثور على الضباب الدقيق Aspose.Words يجب أن يستبدله لحرف مماثل بدلاً من ذلك Aspose.Words يختار الخط وفقا للعملية التالية:

1 Aspose.Words يحاول أن يعثر على مغزى بين المصادر الضبابية المتاحة واسمه مكتوب
1 Aspose.Words يحاول أن يجد العناوين المطلوبة بين اللوحات الواردة في الوثيقة الأصلية. ويمكن أن تتضمن بعض أشكال الوثائق، مثل الوثيقة DOCX، أرقاماً مدمجة.
1 إذا Aspose.Words غير قادر على تحديد موقع الخط المطلوب بمطابقة الاسم بالضبط [AltName](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/#getAltName) الممتلكات المحددة لهذا الخط، ثم Aspose.Words سيجد الخط معرّف **AltName** من [FontInfo](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/) الطبقة التي تحدد المعلومات
1 إذا Aspose.Words غير قادر على تحديد موقع الخط المحدد **AltName** ولا يُعرَّف أيضاً، ثم تُطبَّق قواعد الاستبدال الفوتوغرافية على أساس واحد، على النحو المبين أدناه (عندما يُعثر على الاستبدال المناسب، تتوقف عملية استبدال الفونت، ولا تنفذ الخطوة التالية):
   1 Aspose.Words سيحاول تطبيق الإطارات الفوتوغرافية، إذا كانت متاحة، باستخدام `FontConfig` فائدة هذا غيرWindows ويجب أن تستخدم السمة في برمجيات فونت كونفيغ قابلة للمقارنة. تقريباً أيّ برمجيات غير مُقرّبة لها بالفعل `FontConfig` المكتبة المصممة لتوفير التكوين على نطاق المنظومة، والتكييف، والوصول إلى التطبيقات. وإلا، يمكن للمستعمل أن يركب هذه المكتبة بسهولة.<br/>
      Aspose.Words يعرف كيفية الاستفسار عن البيانات وتفسير نتائج فونت كونفيغ لأغراضه الخاصة. بالخطأ `FontConfig` الكهرباء معطلة ويمكنكم تمكينها على النحو التالي:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getFontConfigSubstitution()().setEnabled(true);
      {{< /highlight >}}
   1. The next step is a simple, but inibly powerful mechanism called [TableSubstitutionRule](https://reference.aspose.com/words/java/com.aspose.words/tablesubstitutionrule/). وهذه الميزة ناشطة ومتاحة لأي نظام عام. Aspose.Words (ج) استخدام جداول XML التي تحدد قواعد الاستبدال الأساسية لمختلف قواعد البرمجيات الحرة. According to the Table substitution rule, the list of substitute font names will be used.<br/>
      **XML**<br/>
      {{< highlight html >}}
      <TableSubstitutionSettings xmlns="Aspose.Words"> 
	<SubstitutesTable> 
		<Item OriginalFont="Arabic Transparent" SubstituteFonts="Arial" /> 
		… 
	</SubstitutesTable> 
      </TableSubstitutionSettings>
      {{< /highlight >}}
      OriginalFont - a font to be replaced, SubstituteFonts - list of substitution variants, separated by a comma. ويُستخدم الخط الأول المتاح للاستبدال.<br/>
      والسمة الرئيسية لهذه القاعدة هي القدرة على تحميل جداول الاستعاضة الخاصة بك، كما هو مبين في المثال التالي:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().load("Table.xml");
      {{< /highlight >}}
      يمكنك أن تأخذ على أساس الجدول الحالي من الجرة أو أن تنقذه من الناحية البرنامجية على النحو التالي:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().save("MyTable.xml");
      {{< /highlight >}}
      وعلى الرغم من مرونة هذه الآلية، هناك بعض الحالات عندما يكون من الأفضل إلغاؤها، على النحو المبين أدناه:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().setEnabled(false);
      {{< /highlight >}}
   1. The **FontInfo** وستطبق قاعدة الاستعاضة إذا لم تتمكن قاعدة استبدال الجدول من العثور على الضباب. وهذه الآلية مكنت من التقصير. Aspose.Words ويجد أنسب عنوان وفقا للمعلومات الواردة في وثيقة معينة. ويمكن الحصول على هذه المعلومات من **FontInfo** الفئة على النحو المبين أدناه:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      FontInfoCollection fontInfos = doc.getFontInfos();
      {{< /highlight >}}
      ولا يمكن للمستعملين أن يتدخلوا في سير عمل هذه السمة ما لم يقرروا تعطيلها في حالة النتائج غير المرضية:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getFontInfoSubstitution().setEnabled(false);
      {{< /highlight >}}
      إذا **FontInfo** ليست متاحة للعنوان المفقود، ثم تتوقف العملية.
   1 **DefaultFont** تُطبق قاعدة الاستبدال في الحالة التي تُطبق فيها `FontInfo` كما فشل الإحلال. كما أن هذه القاعدة مكنت من التقصير. وفقاً لهذه القاعدة Aspose.Words سيحاول استخدام الخط الافتراضي المحدد في [DefaultFontName](https://reference.aspose.com/words/java/com.aspose.words/defaultfontsubstitutionrule/#getDefaultFontName) ملكية إذا لم يختر المُستَعمِل مُهمّته الافتراضيّة الخاصّة، ثمّ "تايمز نيو رومان" سَيُستَخَدّمُ كخطّاب. ويمكن إعاقة هذه القاعدة على النحو المبين أدناه:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().setEnabled(false);
      {{< /highlight >}}
      للتحقق من خط العرض الحالي، استخدام:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().getDefaultFontName();
      {{< /highlight >}}
      لتضعي خيارك البديل، تطبيقي:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().setDefaultFontName("Arial");
      {{< /highlight >}}
1 إذا Aspose.Words غير قادر على القيام بالاستبدال الوهمي، يحاول الحصول على أول منفذ متاح من المصادر الفونتية المتاحة.
1 أخيرا، إذا Aspose.Words لا يمكن العثور على أي دلائل من بين المصادر الضبابية المتاحة، فهي تصدر الوثيقة التي تستخدم لوحة فانوود المجانية التي تدمج في Aspose.Words التجمع.

{{% alert color="primary" %}}

إذا **FontInfo** وقاعدة " FontInfo substitution " (FontInfo substitution)* ستحل دائماً العناوين وتلغي القاعدة الافتراضية. إذا كنت ترغب في استخدام قاعدة النفوذ الافتراضي، يجب أن تبطل قاعدة [FontInfo الإحلال*. Note that the *FontConfig substitution rule* will resolve the font in most cases, and thus overrides all other rules.

{{% /alert %}}

## كيفية الاعتراف أن الصنبور تم استبداله

وفي بعض الأحيان، قد يكون من غير الواضح لماذا تغير تصميم الوثيقة، أو لماذا لا يبدو بعض النواة كما هو متوقع. In such cases, font substitution warnings messages implemented by the [IWarningCallback](https://reference.aspose.com/words/java/com.aspose.words/iwarningcallback/) الواجهة تأتي لإنقاذ. لديهم [FontSubstitution](https://reference.aspose.com/words/java/com.aspose.words/warningtype/#FONT-SUBSTITUTION) نوع التحذير وشكل الوصف القياسي<originalfont>لم يتم العثور عليه استخدام<substitutionfont>بدلاً من ذلك السبب: <reason>مع الأسباب التالية:</reason></substitutionfont></originalfont>

- "اسم بديل من الوثيقة" - للاستبدال [AltName](https://reference.aspose.com/words/java/com.aspose.words/Fontinfo#AltName)
- "استعاضة عن الوصية" - للاستعاضة عن ذلك بحكم الإدانة
- "الاستبدال الجدولي" - للاستعاضة عن القاعدة
- "إستعاضة عن المعلومات" - للاستبدال من قِبل قاعدة معلومات
- "إستعاضة خطية مميتة" - للاستعاضة عن القانون
- "الخط المتوفر الأول" - للاستبدال مع أول علامة متاحة

## Font FallBack Settings from XML

هناك آليتان مختلفتان تستخدمان Aspose.Words - استبدال الفونتات وسقوط الفونت. ويُستخدم استبدال الفونتات عندما لا يمكن العثور على اللوحة المحددة في الوثيقة بين المصادر الفوتوغرافية على النحو المبين في الفروع المذكورة أعلاه. The Font fallback mechanism is used when the font is resolved, but it does not contain a specific character. في هذه الحالة Aspose.Words يحاول أن يستخدم واحدة من أعواد السقوط من أجل الشخصية

هناك [BuildAutomatic](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/#buildAutomatic) الطريقة التي تبني تلقائياً بيئات التراجع عن طريق مسح النوافذ المتاحة بما أن هذه الطريقة قد تُنتج عائقاً غير مبدئياً، يمكنك التحكم في سلوك الإنهيار العنيف باستخدام خصائص [FontFallbackSettings](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/) الصف هذه الصفة تُحدّدُ بَعْضاتِ آليةِ التداعياتِ النافعةِ. يمكنك الحصول على حالة من **FontFallbackSettings** الدرجة التالية:

**Java**

{{< highlight csharp >}}
FontFallbackSettings settings = fontSettings.getFallbackSettings();
{{< /highlight >}}

وبالمثل*، تستخدم هذه الآلية جداول نموذجية من طراز XML للتشكيل. ويمكن تحميل وإنقاذ هذه الجداول من طراز XML بالطرق التالية:

**Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().load("MyNewFallbackTable.xml");
fontSettings.getFallbackSettings().save("Current_FallbackTable.xml");
{{< /highlight >}}

The Aspose.Words ويشمل الإفراج جدولين: *MsOfficeFallbackSetting.xml* و *NotoFallbackSetting.xml*.

The *MsOfficeFallbackSetting* يحدد الجدول استراتيجية للاستبدال لمجموعة من الشخصيات، مماثلة للاستراتيجية التي تستخدمها Microsoft Word. ومن ثم، تتطلب الاستراتيجية تركيب Microsoft نسخ مكتبية. *MsOfficeFallbackSetting* يمكن تنشيطها باستخدام الطريقة التالية:

**.Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().loadMsOfficeFallbackSettings();
{{< /highlight >}}

The *NotoFallbackSetting* يُنشأ الجدول خصيصاً لاستخدامه Google Noto فونتات (انظر المزيد عن) Google Noto (ب) يمكن التمكين من وضع العلامات في القسم التالي:

**Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().loadNotoFallbackSettings();
{{< /highlight >}}

The following code example demonstrates how to load font fallback settings from an XML file:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SetFontSettings-SetFontFallbackSettings.java" >}}

وفي المثال الرمزي المذكور أعلاه، يُستخدم ملف XML التالي:

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

## مجموعة فول باك المحددة سلفا Google Noto Fonts

Aspose.Words:: توفير الظروف المحددة مسبقاً للتداعيات Google Noto ملصقات هذه هي اللوحات المجانية المرخصة تحت رخصة القيادة المفتوحة التي يمكن تحميلها من Google Noto أصابع The **FontFallbackSettings** الدرجة توفر [LoadNotoFallbackSettings](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/#loadNotoFallbackSettings) طريقة إنه يحمّل بيئات التراجع المحددة مسبقاً، التي تستخدم Google Noto العناوين كما هو مبين في المثال الرمزي أدناه:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SetFontSettings-setPredefinedFontFallbackSettings.java" >}}

{{% alert color="primary" %}}

ولا تستخدم في البيئات المحددة مسبقا سوى صور نوتو ذات وزن منتظم.

{{% /alert %}}

## أين Aspose.Words يُشاهدُ الفوتوناتَ

Aspose.Words محاولة للعثور على (ترو تايب) في نظام الملف تلقائياً عادة، يمكنك الاعتماد على السلوك الافتراضي Aspose.Words لإيجاد `TrueType` و لكن أحياناً يجب أن تحدد ملفك الخاص الذي يحتوي على فونتات (ترو تايب) The [التحديد الحقيقي الموقع](/words/ar/java/specify-truetype-fonts-location/) يصف الموضوع كيف وأين Aspose.Words تبحث عن ملصقات، وكذلك كيفية تحديد مواقعك الخاصة.

## الاختلافات في تجهيز صيغ الفونت Aspose.Words و Microsoft Word

هناك بعض الاختلافات في تجهيز الأشكال الفوتوغرافية Aspose.Words و Microsoft Word على النحو المبين في الجدول أدناه:

| | Microsoft Word | Aspose.Words |
|  :-  |  :-  |  :-  |
| ملصقات (ترو تايب) و (أوبن تيب) مع مخططات (ترو تايب) | مدعم | مدعم |
| مخطّطات (أوب تيب) مع مخططات ما بعد سرب | مدعومة بمعظم السيناريوهات الشروع في صيغ ثابتة الصفحات مثل PDF و XPS غير مدعوم. ويُستعاض عن النص بصور ممزقة. | دعمت معظم السيناريوهات، بما في ذلك إدراج صيغ ثابتة الصفحات. |
| (أ) | ولا تُدعم سوى الحالات المذكورة. ولم تدعم الاختلافات المستمرة. | مُدعمة للقضية الوحيدة ولا تدعم الحالات التي تُعرف باسمها والاختلافات المستمرة. |
| الشكل 1 | الدعم المقدم Windows نسخ قبل عام 2013 ونسخ ماكاو. الدعم يسقط Windows نسخ من عام 2013. | غير مدعوم |

## انظر أيضا

- [Google Noto Fonts](https://fonts.google.com/noto) لتحميل الفواكه المجانية


