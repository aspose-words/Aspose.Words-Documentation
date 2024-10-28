---
title: تحويل مستند إلى HTML أو MHTML أو EPUB
second_title: Aspose.Words ل C++
articleTitle: تحويل مستند إلى HTML أو MHTML أو EPUB
linktitle: تحويل مستند إلى HTML أو MHTML أو EPUB
description: "تحويل مستند من أي تنسيق تقريبا إلى HTML أو MHTML، وكذلك إلى EPUB تنسيق باستخدام C++. يمكنك أيضا تحديد خيارات الحفظ لإدارة مستند الإخراج."
type: docs
weight: 20
url: /ar/cpp/convert-a-document-to-html-mhtml-or-epub/
---

المستندات بتنسيقات تخطيط التدفق HTML و MHTML تحظى أيضا بشعبية كبيرة ويمكن استخدامها على أي منصة ويب. لهذا السبب، يعد تحويل المستندات إلى HTML و MHTML ميزة مهمة في Aspose.Words.

EPUB (اختصار لـ" النشر الإلكتروني") هو تنسيق قائم على HTML شائع الاستخدام لتوزيع الكتب الإلكترونية. هذا التنسيق مدعوم بالكامل في Aspose.Words لتصدير الكتب الإلكترونية المتوافقة مع معظم أجهزة القراءة.

## تحويل مستند

للتحويل البسيط إلى HTML أو MHTML أو EPUB، يتم استخدام أحد الأحمال الزائدة لطريقة [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/). يمكنك حفظ المستند في ملف أو دفق وتعيين تنسيق حفظ مستند الإخراج بشكل صريح أو تعريفه من امتداد اسم الملف.

يوضح المثال التالي كيفية تحويل DOCX إلى HTML مع تحديد تنسيق حفظ:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ConvertDocxToHtml.cpp" >}}

لتحويل مستند إلى MHTML أو EPUB، استخدم `SaveFormat.Mhtml` أو `SaveFormat.Epub` على التوالي.

## تحويل مستند بمعلومات ذهابا وإيابا

لا يدعم تنسيق HTML العديد من ميزات Microsoft Word، وإذا احتجنا إلى استعادة نموذج مستند بالقرب من الأصل قدر الإمكان، فنحن بحاجة إلى حفظ بعض المعلومات الإضافية داخل ملف HTML. وتسمى هذه المعلومات أيضا "معلومات ذهابا وإيابا". لهذا الغرض، يوفر Aspose.Words القدرة على تصدير معلومات ذهابا وإيابا عند الحفظ إلى HTML أو MHTML أو EPUB باستخدام خاصية [ExportRoundtripInformation](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_exportroundtripinformation/). يسمح حفظ معلومات الرحلة ذهابا وإيابا باستعادة خصائص المستند مثل علامات التبويب والتعليقات والرؤوس والتذييلات أثناء تحميل مستندات التنسيقات المدرجة مرة أخرى في كائن **Document**.

القيمة الافتراضية هي **true** لـ HTML و **false** لـ MHTML و EPUB:

- عندما **true**، يتم تصدير المعلومات ذهابا وإيابا كما-فصيل عبد الواحد - * CSS خصائص HTML العناصر المقابلة
- عندما **false**، لا توجد معلومات ذهابا وإيابا ليتم إخراجها في الملفات المنتجة

يوضح مثال الكود التالي كيفية تصدير معلومات ذهابا وإيابا عند تحويل مستند من DOCX إلى HTML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ConvertDocumentToHtmlWithRoundtrip.cpp" >}}

{{% alert color="primary" %}}

يمكنك تنزيل ملف القالب لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## حدد خيارات الحفظ عند التحويل إلى HTML

Aspose.Words يسمح بتحويل مستند ورد إلى HTML باستخدام خيارات الحفظ الافتراضية أو المخصصة. يتم وصف بعض الأمثلة على خيارات الحفظ المخصصة أدناه.

### حدد مجلدا لحفظ الموارد

باستخدام Aspose.Words يمكننا تحديد مجلد فعلي حيث يتم حفظ جميع الموارد، مثل الصور والخطوط والخارجية CSS، عند تحويل مستند إلى HTML. بشكل افتراضي، هذه سلسلة فارغة.

تحديد الخاصية [ResourceFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_resourcefolder/) هو أبسط طريقة لتعيين المجلد حيث يجب كتابة جميع الموارد. يمكننا استخدام الخصائص الفردية، مثل [FontsFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_fontsfolder/) الذي يحفظ الخطوط إلى المجلد المحدد و [ImagesFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_imagesfolder/) الذي يحفظ الصور إلى مجلد محدد. عند تحديد مسار نسبي، **FontsFolder** و **ImagesFolder** الرجوع إلى المجلد حيث يوجد تجميع التعليمات البرمجية، **ResourceFolder** و [CssStyleSheetFileName](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_cssstylesheetfilename/) الرجوع إلى مجلد الإخراج حيث يوجد المستند HTML.

في هذا المثال، **ResourceFolder** يحدد المسار النسبي. يشير هذا المسار إلى مجلد الإخراج حيث يتم حفظ المستند HTML. يتم استخدام قيمة الخاصية **ResourceFolderAlias** لإنشاء URLs لجميع الموارد.

يوضح مثال التعليمات البرمجية التالية كيفية العمل مع هذه الخصائص:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ExportResourcesUsingHtmlSaveOptions.cpp" >}}

باستخدام خاصية [ResourceFolderAlias](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_resourcefolderalias/)، يمكننا أيضا تحديد اسم المجلد المستخدم لإنشاء URIs من جميع الموارد المكتوبة في مستند HTML. هذه هي أبسط طريقة لتحديد كيفية إنشاء URIs لجميع ملفات الموارد. يمكن تحديد نفس المعلومات للصور والخطوط بشكل منفصل عبر خصائص [ImagesFolderAlias](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_imagesfolderalias/) و [FontsFolderAlias](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_fontsfolderalias/)، على التوالي.

ومع ذلك، لا توجد خاصية فردية لـ CSS. سلوك **FontsFolder**, **FontsFolderAlias**, **ImagesFolder**, **ImagesFolderAlias** و **CssStyleSheetFileName** لا يتم تغيير الخصائص. لاحظ أنه يتم استخدام الخاصية **CssStyleSheetFileName** لتحديد اسم المجلد واسم الملف.

- **ResourceFolder** له أولوية أقل من المجلدات المحددة عبر **FontsFolder** و **ImagesFolder** و **CssStyleSheetFileName**. إذا كان المجلد المحدد في **ResourceFolder** غير موجود، فسيتم إنشاؤه تلقائيا.
- **ResourceFolderAlias** له أولوية أقل من **FontsFolderAlias** و **ImagesFolderAlias**. إذا كانت **ResourceFolderAlias** فارغة، فسيتم استخدام قيمة الخاصية **ResourceFolder** لإنشاء مورد URIs. إذا تم تعيين **ResourceFolderAlias** إلى "." (نقطة)، فسيحتوي المورد URIs على أسماء الملفات فقط دون تحديد مسار.

### تصدير قاعدة 64 ترميز موارد الخطوط

Aspose.Words يوفر القدرة على تحديد ما إذا كان يجب تضمين موارد الخط في HTML في ترميزات القاعدة 64. لتنفيذ ذلك، استخدم خاصية [ExportFontsAsBase64](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_exportfontsasbase64/) – هذا امتداد لخاصية [ExportFontResources](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_exportfontresources/). بشكل افتراضي، تكون قيمته **false**، ويتم كتابة الخطوط في ملفات منفصلة. ولكن إذا تم تعيين هذا الخيار على **true**، فسيتم تضمين الخطوط في CSS للمستند في ترميز القاعدة 64. تؤثر الخاصية **ExportFontsAsBase64** فقط على تنسيق HTML ولا تؤثر على EPUB و MHTML.

يوضح مثال الكود التالي كيفية تصدير الخطوط المشفرة 64 إلى HTML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ExportFontsAsBase64.cpp" >}}

## حدد خيارات الحفظ عند التحويل إلى EPUB

Aspose.Words يسمح بتحويل مستند ورد إلى تنسيق EPUB باستخدام خيارات الحفظ الافتراضية أو المخصصة. يمكنك تحديد عدد من الخيارات عن طريق تمرير مثيل [HtmlSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/) إلى طريقة `Save`.

يوضح مثال الكود التالي كيفية تحويل مستند ورد إلى EPUB مع تحديد بعض خيارات الحفظ المخصصة:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToEPUB-ConvertDocumentToEPUB.cpp" >}}

{{% alert color="primary" %}}

يمكنك تنزيل ملف القالب لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}
