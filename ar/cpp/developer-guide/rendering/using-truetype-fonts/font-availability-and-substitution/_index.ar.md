---
title: MFont التوفر والاستبدال في C++
second_title: Aspose.Words ل C++
articleTitle: توافر الخط والاستبدال
linktitle: توافر الخط والاستبدال
description: "عندما يتعذر العثور على خط الاستبدال الدقيق، Aspose.Words يجب استبداله بخط مشابه بدلا من ذلك. توضح هذه المقالة عملية العثور على الخط الأنسب."
type: docs
weight: 12
url: /ar/cpp/font-availability-and-substitution/
timestamp: 2024-09-24-14-35-44
---

يمكن تنسيق نص في مستند بخطوط مختلفة، مثل أريال، تايمز نيو رومان، فيردانا، وغيرها. عند عرض Aspose.Words مستندا، فإنه يحاول تحديد الخطوط المحددة في المستند.

ومع ذلك، هناك حالات لا يمكن فيها العثور على الخط الدقيق و Aspose.Words يجب استبداله بخط مشابه بدلا من ذلك. Aspose.Words يحدد الخط وفقا للعملية التالية:

1. Aspose.Words يحاول العثور على خط بين مصادر الخط المتاحة مع اسم الخط المحدد.
1. Aspose.Words يحاول العثور على الخط المطلوب بين الخطوط المضمنة في المستند الأصلي. يمكن أن تحتوي بعض تنسيقات المستندات مثل DOCX على خطوط مضمنة.
1. إذا كان Aspose.Words غير قادر على تحديد موقع الخط المطلوب مع تطابق الاسم الدقيق، والخاصية [AltName](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontinfo/get_altname/) المحددة لهذا الخط، فسيجد Aspose.Words الخط المحدد بـ **AltName** من فئة [FontInfo](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_info)، والتي تحدد معلومات الخط.
1. إذا كان Aspose.Words غير قادر على تحديد موقع الخط المحدد، ولم يتم تعريف **AltName** أيضا، فسيتم تطبيق قواعد استبدال الخط واحدا تلو الآخر، كما هو موضح أدناه (عند العثور على الاستبدال المناسب، تتوقف عملية استبدال الخط ولا يتم تنفيذ الخطوة التالية):
   1. Aspose.Words سيحاول تطبيق OS إعدادات الخط، إذا كانت متوفرة، باستخدام الأداة المساعدة `FontConfig`. يجب استخدام هذه الميزة غيرWindows مع FontConfig متوافق OS. تقريبا أي يونكس على أساس OS لديها بالفعل مكتبة `FontConfig` التي تم تصميمها لتوفير تكوين الخط على مستوى النظام، والتخصيص، والوصول إلى التطبيقات. خلاف ذلك، يمكن للمستخدم تثبيت هذه المكتبة بسهولة.<br>
      Aspose.Words يعرف كيفية الاستعلام عن البيانات وتفسير FontConfig النتائج لأغراضها الخاصة. بشكل افتراضي، يتم تعطيل الأداة المساعدة `FontConfig`. يمكنك تمكينه على النحو التالي:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_FontConfigSubstitution()->set_Enabled(true);
      {{< /highlight >}}
   1. الخطوة التالية هي آلية بسيطة ولكنها قوية بشكل لا يصدق تسمى [TableSubstitutionRule](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.table_substitution_rule). بشكل افتراضي، تكون هذه الميزة نشطة ومتاحة لأي OS. Aspose.Words يستخدم XML الجداول التي تحدد قواعد الاستبدال الأساسية لمختلف OS. وفقا لقاعدة استبدال الجدول، سيتم استخدام قائمة أسماء الخطوط البديلة.<br>
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
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->Load(u"Table.xml");
      {{< /highlight >}}
      يمكنك أن تأخذ كأساس الجدول الموجود من جرة أو حفظه برمجيا بالطريقة التالية:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->Save(u"MyTable.xml");
      {{< /highlight >}}
      على الرغم من مرونة هذه الآلية، إلا أن هناك بعض الحالات التي يكون من الأفضل فيها تعطيلها، كما هو موضح أدناه:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->set_Enabled(false);
      {{< /highlight >}}
   1. سيتم تطبيق قاعدة **FontInfo** الاستبدال إذا لم تتمكن قاعدة استبدال الجدول من العثور على الخط. يتم تمكين هذه الآلية افتراضيا. Aspose.Words يجد الخط الأنسب وفقا لمعلومات الخط الواردة في مستند معين. يمكن الحصول على هذه المعلومات من فئة **FontInfo** كما هو موضح أدناه:<br>
**C++**
      {{< highlight cpp >}}
      System::SharedPtr<FontInfoCollection> fontInfos = doc->get_FontInfos();
      {{< /highlight >}}
      لا يمكن للمستخدمين التدخل في سير عمل هذه الميزة ما لم يقرروا تعطيلها في حالة حدوث نتائج غير مرضية:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_FontInfoSubstitution()->set_Enabled(false);
      {{< /highlight >}}
      إذا لم يكن **FontInfo** متاحا للخط المفقود، فستتوقف العملية.
   1. **DefaultFont** سيتم تطبيق قاعدة الاستبدال في حالة فشل الاستبدال `FontInfo` أيضا. يتم تمكين هذه القاعدة أيضا بشكل افتراضي. وفقا لهذه القاعدة، سيحاول Aspose.Words استخدام الخط الافتراضي المحدد في الخاصية [DefaultFontName](https://reference.aspose.com/words/cpp/aspose.words.fonts/defaultfontsubstitutionrule/get_defaultfontname/). إذا لم يختار المستخدم الخط الافتراضي الخاص به، فسيتم استخدام" تايمز نيو رومان " كخط افتراضي. يمكن تعطيل هذه القاعدة كما هو موضح أدناه:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_DefaultFontSubstitution()->set_Enabled(false);
      {{< /highlight >}}
      للتحقق من الخط الافتراضي الحالي، استخدم:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_DefaultFontSubstitution()->get_DefaultFontName();
      {{< /highlight >}}
      لإعداد خيار الاستبدال الخاص بك، قم بتطبيق:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_DefaultFontSubstitution()->set_DefaultFontName(u"Arial");
      {{< /highlight >}}
1. إذا كان Aspose.Words غير قادر على إجراء استبدال الخط، فإنه يحاول الحصول على أول خط متاح من مصادر الخطوط المتاحة.
1. أخيرا، إذا تعذر على Aspose.Words العثور على أي خطوط بين مصادر الخطوط المتاحة، فإنه يعرض المستند باستخدام خط فانوود المجاني المضمن في تجميع Aspose.Words.

{{% alert color="primary" %}}

إذا كان **FontInfo** متاحا، فسيقوم *FontInfo substitution rule* دائما بحل الخط وتجاوز قاعدة الخط الافتراضية. إذا كنت تريد استخدام قاعدة الخط الافتراضية، فيجب عليك تعطيل *FontInfo substitution rule*. لاحظ أن *FontConfig substitution rule* سيحل الخط في معظم الحالات، وبالتالي يتجاوز جميع القواعد الأخرى.

{{% /alert %}}


