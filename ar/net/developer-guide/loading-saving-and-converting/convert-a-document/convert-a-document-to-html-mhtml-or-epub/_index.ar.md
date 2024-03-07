---
title: تحويل مستند إلى HTML أو MHTML أو EPUB في C#
second_title: Aspose.Words لـ .NET
articleTitle: تحويل مستند إلى HTML أو MHTML أو EPUB
linktitle: تحويل مستند إلى HTML أو MHTML أو EPUB
description: "قم بتحويل مستند من أي تنسيق تقريبًا إلى HTML أو MHTML، بالإضافة إلى تنسيق EPUB باستخدام C#. يمكنك أيضًا تحديد خيارات الحفظ لإدارة مستند الإخراج."
type: docs
weight: 20
url: /ar/net/convert-a-document-to-html-mhtml-or-epub/
---

تحظى المستندات بتنسيقات تخطيط التدفق HTML وMHTML أيضًا بشعبية كبيرة ويمكن استخدامها على أي منصة ويب. لهذا السبب، يعد تحويل المستندات إلى HTML وMHTML ميزة مهمة في Aspose.Words.

EPUB (اختصار لـ "Electronic Publication") هو تنسيق يعتمد على HTML يُستخدم بشكل شائع لتوزيع الكتب الإلكترونية. هذا التنسيق مدعوم بالكامل في Aspose.Words لتصدير الكتب الإلكترونية المتوافقة مع معظم أجهزة القراءة.

## تحويل مستند

للتحويل البسيط إلى HTML أو MHTML أو EPUB، يتم استخدام أحد التحميلات الزائدة لأسلوب [Save](https://reference.aspose.com/words/ar/net/aspose.words/document/save/#save/). يمكنك حفظ المستند في ملف أو دفق وتعيين تنسيق حفظ مستند الإخراج بشكل صريح أو تعريفه من ملحق اسم الملف.

يوضح المثال التالي كيفية تحويل DOCX إلى HTML مع تحديد تنسيق الحفظ:

**.NET**

{{< highlight csharp >}}

// Load the document from disk.
Document doc = new Document(dataDir + "Test File.docx");

// Save the document into HTML.
doc.Save(dataDir + "Document", SaveFormat.Html);
{{< /highlight >}}

لتحويل مستند إلى MHTML أو EPUB، استخدم `SaveFormat.Mhtml` أو `SaveFormat.Epub` على التوالي.

## تحويل مستند يحتوي على معلومات ذهابًا وإيابًا

لا يدعم تنسيق HTML العديد من ميزات Microsoft Word، وإذا أردنا استعادة نموذج مستند أقرب إلى النموذج الأصلي قدر الإمكان، فسنحتاج إلى حفظ بعض المعلومات الإضافية داخل ملف HTML. وتسمى هذه المعلومات أيضًا "معلومات الرحلة ذهابًا وإيابًا". ولهذا الغرض، يوفر Aspose.Words إمكانية تصدير معلومات ذهابًا وإيابًا عند الحفظ في HTML أو MHTML أو EPUB باستخدام خاصية [ExportRoundtripInformation](https://reference.aspose.com/words/ar/net/aspose.words.saving/htmlsaveoptions/exportroundtripinformation/). يتيح حفظ معلومات الرحلة ذهابًا وإيابًا استعادة خصائص المستند مثل علامات التبويب والتعليقات والرؤوس والتذييلات أثناء تحميل مستندات التنسيقات المدرجة مرة أخرى في كائن **Document**.

القيمة الافتراضية هي **true** لـ HTML و**false** لـ MHTML وEPUB:

- عند **true**، يتم تصدير معلومات الرحلة ذهابًا وإيابًا كـ - aw - * خصائص CSS لعناصر HTML المقابلة
- عند استخدام **false**، لا توجد معلومات ذهابًا وإيابًا ليتم إخراجها إلى الملفات المنتجة

يوضح مثال التعليمات البرمجية التالي كيفية تصدير معلومات ذهابًا وإيابًا عند تحويل مستند من DOCX إلى HTML:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToHtmlWithRoundtrip-ConvertDocumentToHtmlWithRoundtrip.cs" >}}

{{% alert color="primary" %}}

يمكنك تنزيل ملف القالب الخاص بهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## حدد خيارات الحفظ عند التحويل إلى HTML

يسمح Aspose.Words بتحويل مستند Word إلى HTML باستخدام خيارات الحفظ الافتراضية أو المخصصة. فيما يلي بعض الأمثلة على خيارات الحفظ المخصصة.

### حدد مجلدًا لحفظ الموارد

باستخدام Aspose.Words، يمكننا تحديد مجلد فعلي حيث يتم حفظ جميع الموارد، مثل الصور والخطوط وCSS الخارجية، عند تحويل المستند إلى HTML. بشكل افتراضي، هذه سلسلة فارغة.

يعد تحديد خاصية [ResourceFolder](https://reference.aspose.com/words/ar/net/aspose.words.saving/htmlsaveoptions/resourcefolder/) هو أبسط طريقة لتعيين المجلد الذي يجب كتابة جميع الموارد فيه. يمكننا استخدام خصائص فردية، مثل [FontsFolder](https://reference.aspose.com/words/ar/net/aspose.words.saving/htmlsaveoptions/fontsfolder/) الذي يحفظ الخطوط في المجلد المحدد و[ImagesFolder](https://reference.aspose.com/words/ar/net/aspose.words.saving/htmlsaveoptions/imagesfolder/) الذي يحفظ الصور في مجلد محدد. عند تحديد مسار نسبي، يشير **FontsFolder** و**ImagesFolder** إلى المجلد الذي يوجد به تجميع التعليمات البرمجية، ويشير **ResourceFolder** و[CssStyleSheetFileName](https://reference.aspose.com/words/ar/net/aspose.words.saving/htmlsaveoptions/cssstylesheetfilename/) إلى مجلد الإخراج حيث يوجد مستند HTML.

في هذا المثال، يحدد **ResourceFolder** المسار النسبي. يشير هذا المسار إلى مجلد الإخراج حيث يتم حفظ مستند HTML. يتم استخدام قيمة خاصية **ResourceFolderAlias** لإنشاء عناوين URL لجميع الموارد.

يوضح مثال التعليمات البرمجية التالي كيفية العمل مع هذه الخصائص:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ExportResourcesUsingHtmlSaveOptions-ExportResourcesUsingHtmlSaveOptions.cs" >}}

باستخدام خاصية [ResourceFolderAlias](https://reference.aspose.com/words/ar/net/aspose.words.saving/htmlsaveoptions/resourcefolderalias/)، يمكننا أيضًا تحديد اسم المجلد المستخدم لإنشاء عناوين URI لجميع الموارد المكتوبة في مستند HTML. هذه هي أبسط طريقة لتحديد كيفية إنشاء معرفات URI لجميع ملفات الموارد. يمكن تحديد نفس المعلومات للصور والخطوط بشكل منفصل عبر خصائص [ImagesFolderAlias](https://reference.aspose.com/words/ar/net/aspose.words.saving/htmlsaveoptions/imagesfolderalias/) و[FontsFolderAlias](https://reference.aspose.com/words/ar/net/aspose.words.saving/htmlsaveoptions/fontsfolderalias/)، على التوالي.

ومع ذلك، لا توجد خاصية فردية لـ CSS. لم يتم تغيير سلوك خصائص **FontsFolder** و**FontsFolderAlias** و**ImagesFolder** و**ImagesFolderAlias** و**CssStyleSheetFileName**. لاحظ أن خاصية **CssStyleSheetFileName** تُستخدم لتحديد اسم المجلد واسم الملف.

- يتمتع **ResourceFolder** بأولوية أقل من المجلدات المحددة عبر **FontsFolder** و**ImagesFolder** و**CssStyleSheetFileName**. إذا كان المجلد المحدد في **ResourceFolder** غير موجود، فسيتم إنشاؤه تلقائيًا.
- يتمتع **ResourceFolderAlias** بأولوية أقل من **FontsFolderAlias** و**ImagesFolderAlias**. إذا كان **ResourceFolderAlias** فارغًا، فسيتم استخدام قيمة خاصية **ResourceFolder** لإنشاء معرفات URI للمورد. إذا تم تعيين **ResourceFolderAlias** على "." (نقطة)، ستحتوي معرفات الموارد المنتظمة (URI) للمورد فقط على أسماء الملفات دون تحديد مسار.

### تصدير موارد خطوط الترميز Base64

يوفر Aspose.Words القدرة على تحديد ما إذا كان يجب تضمين موارد الخطوط في HTML في ترميزات Base64. ولتنفيذ ذلك، استخدم خاصية [ExportFontsAsBase64](https://reference.aspose.com/words/ar/net/aspose.words.saving/htmlsaveoptions/exportfontsasbase64/) - وهي امتداد لخاصية [ExportFontResources](https://reference.aspose.com/words/ar/net/aspose.words.saving/htmlsaveoptions/exportfontresources/). بشكل افتراضي، قيمته هي **false**، ويتم كتابة الخطوط في ملفات منفصلة. ولكن إذا تم تعيين هذا الخيار على **true**، فسيتم تضمين الخطوط في ملف CSS الخاص بالمستند بتشفير Base64. تؤثر خاصية **تصدير الخطوط AsBase64** على تنسيق HTML فقط ولا تؤثر على EPUB وMHTML.

يوضح مثال التعليمات البرمجية التالي كيفية تصدير الخطوط المشفرة بـ Base64 إلى HTML:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ExportFontsAsBase64-ExportFontsAsBase64.cs" >}}

## حدد خيارات الحفظ عند التحويل إلى EPUB

يسمح Aspose.Words بتحويل مستند Word إلى تنسيق EPUB باستخدام خيارات الحفظ الافتراضية أو المخصصة. يمكنك تحديد عدد من الخيارات عن طريق تمرير مثيل [HtmlSaveOptions](https://reference.aspose.com/words/ar/net/aspose.words.saving/htmlsaveoptions/) إلى أسلوب [Save](https://reference.aspose.com/words/ar/net/aspose.words/document/save/#save/).

يوضح مثال التعليمات البرمجية التالي كيفية تحويل مستند Word إلى EPUB مع تحديد بعض خيارات الحفظ المخصصة:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToEPUB-ConvertDocumentToEPUB.cs" >}}

{{% alert color="primary" %}}

يمكنك تنزيل ملف القالب الخاص بهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## أنظر أيضا

- [كيفية تصدير معلومات ذهابًا وإيابًا عند الحفظ في HTML](/words/net/custom-styles-used-for-proper-aspose-words-html-aspose-words-roundtrip/)
