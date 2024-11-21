---
title: تحويل المستند إلى HTML
second_title: Aspose.Words لـ Python via .NET
articleTitle: تحويل مستند إلى HTML أو MHTML أو EPUB
linktitle: تحويل مستند إلى HTML أو MHTML أو EPUB
description: "قم بتحويل مستند من أي تنسيق تقريبًا إلى HTML أو MHTML، بالإضافة إلى تنسيق EPUB باستخدام Python. يمكنك أيضًا تحديد خيارات الحفظ لإدارة مستند الإخراج."
type: docs
weight: 20
url: /ar/python-net/convert-a-document-to-html-mhtml-or-epub/
timestamp: 2024-01-27-14-07-04
---

تحظى المستندات بتنسيقات تخطيط التدفق HTML وMHTML أيضًا بشعبية كبيرة ويمكن استخدامها على أي منصة ويب. لهذا السبب، يعد تحويل المستندات إلى HTML وMHTML ميزة مهمة في Aspose.Words.

EPUB (اختصار لـ "Electronic Publication") هو تنسيق يعتمد على HTML يُستخدم بشكل شائع لتوزيع الكتب الإلكترونية. هذا التنسيق مدعوم بالكامل في Aspose.Words لتصدير الكتب الإلكترونية المتوافقة مع معظم أجهزة القراءة.

## تحويل مستند

للتحويل البسيط إلى HTML أو MHTML أو EPUB، يتم استخدام أحد التحميلات الزائدة لأسلوب [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/). يمكنك حفظ المستند في ملف أو دفق وتعيين تنسيق حفظ مستند الإخراج بشكل صريح أو تعريفه من ملحق اسم الملف.

يوضح المثال التالي كيفية تحويل DOCX إلى HTML مع تحديد تنسيق الحفظ:

{{< highlight python >}}
# Load the document from disk.
doc = aw.Document(dataDir + "Test File.docx")

# Save the document into HTML.
doc.save(dataDir + "Document", aw.SaveFormat.HTML)
{{< /highlight >}}

لتحويل مستند إلى MHTML أو EPUB، استخدم [SaveFormat.MHTML](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#mhtml) أو [SaveFormat.EPUB](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#epub) على التوالي.

## تحويل مستند يحتوي على معلومات ذهابًا وإيابًا

لا يدعم تنسيق HTML العديد من ميزات Microsoft Word، وإذا أردنا استعادة نموذج مستند أقرب إلى النموذج الأصلي قدر الإمكان، فسنحتاج إلى حفظ بعض المعلومات الإضافية داخل ملف HTML. وتسمى هذه المعلومات أيضًا "معلومات الرحلة ذهابًا وإيابًا". ولهذا الغرض، يوفر Aspose.Words إمكانية تصدير معلومات ذهابًا وإيابًا عند الحفظ في HTML أو MHTML أو EPUB باستخدام خاصية **Export_roundtrip_information**. يتيح حفظ معلومات الرحلة ذهابًا وإيابًا استعادة خصائص المستند مثل علامات التبويب والتعليقات والرؤوس والتذييلات أثناء تحميل مستندات التنسيقات المدرجة مرة أخرى في كائن [Document](https://reference.aspose.com/words/python-net/aspose.words/document/).

القيمة الافتراضية هي *True* لـ HTML و*False* لـ MHTML وEPUB:

- عند *True*، يتم تصدير معلومات الرحلة ذهابًا وإيابًا كـ - aw - * خصائص CSS لعناصر HTML المقابلة
- عند استخدام *False*، لا توجد معلومات ذهابًا وإيابًا ليتم إخراجها إلى الملفات المنتجة

يوضح مثال التعليمات البرمجية التالي كيفية تصدير معلومات ذهابًا وإيابًا عند تحويل مستند من DOCX إلى HTML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportRoundtripInformation.py" >}}

{{% alert color="primary" %}}

يمكنك تنزيل ملف القالب الخاص بهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## حدد خيارات الحفظ عند التحويل إلى HTML

يسمح Aspose.Words بتحويل مستند Word إلى HTML باستخدام خيارات الحفظ الافتراضية أو المخصصة. فيما يلي بعض الأمثلة على خيارات الحفظ المخصصة.

### حدد مجلدًا لحفظ الموارد

باستخدام Aspose.Words، يمكننا تحديد مجلد فعلي حيث يتم حفظ جميع الموارد، مثل الصور والخطوط وCSS الخارجية، عند تحويل المستند إلى HTML. بشكل افتراضي، هذه سلسلة فارغة.

يعد تحديد خاصية [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) هو أبسط طريقة لتعيين المجلد الذي يجب كتابة جميع الموارد فيه. يمكننا استخدام خصائص فردية، مثل [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/) الذي يحفظ الخطوط في المجلد المحدد و[images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/) الذي يحفظ الصور في مجلد محدد. عند تحديد مسار نسبي، يشير [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/) و[images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/) إلى المجلد الذي يوجد به تجميع التعليمات البرمجية، ويشير [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) و[css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/) إلى مجلد الإخراج حيث يوجد مستند HTML.

في هذا المثال، يحدد [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) المسار النسبي. يشير هذا المسار إلى مجلد الإخراج حيث يتم حفظ مستند HTML. يتم استخدام قيمة خاصية [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) لإنشاء عناوين URL لجميع الموارد.

يوضح مثال التعليمات البرمجية التالي كيفية العمل مع هذه الخصائص:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportResources.py" >}}

باستخدام خاصية [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/)، يمكننا أيضًا تحديد اسم المجلد المستخدم لإنشاء عناوين URI لجميع الموارد المكتوبة في مستند HTML. هذه هي أبسط طريقة لتحديد كيفية إنشاء معرفات URI لجميع ملفات الموارد. يمكن تحديد نفس المعلومات للصور والخطوط بشكل منفصل عبر خصائص [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder_alias/) و[fonts_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder_alias/)، على التوالي.

ومع ذلك، لا توجد خاصية فردية لـ CSS. لم يتم تغيير سلوك خصائص [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/) و[fonts_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder_alias/) و[images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/) و[images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder_alias/) و[css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/). لاحظ أن خاصية [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/) تُستخدم لتحديد اسم المجلد واسم الملف.

- يتمتع [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) بأولوية أقل من المجلدات المحددة عبر [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/) و[images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/) و[css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/). إذا كان المجلد المحدد في [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) غير موجود، فسيتم إنشاؤه تلقائيًا.
- يتمتع [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) بأولوية أقل من [fonts_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder_alias/) و[images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder_alias/). إذا كان [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) فارغًا، فسيتم استخدام قيمة خاصية [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) لإنشاء معرفات URI للمورد. إذا تم تعيين [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) على "." (نقطة)، ستحتوي معرفات الموارد المنتظمة (URI) للمورد فقط على أسماء الملفات دون تحديد مسار.

### تصدير موارد خطوط الترميز Base64

يوفر Aspose.Words القدرة على تحديد ما إذا كان يجب تضمين موارد الخطوط في HTML في ترميزات Base64. ولتنفيذ ذلك، استخدم خاصية [export_fonts_as_base64](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/export_fonts_as_base64/) - وهي امتداد لخاصية [export_font_resources](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/export_font_resources/). بشكل افتراضي، قيمته هي *False*، ويتم كتابة الخطوط في ملفات منفصلة. ولكن إذا تم تعيين هذا الخيار على *True*، فسيتم تضمين الخطوط في ملف CSS الخاص بالمستند بتشفير Base64. تؤثر خاصية [export_fonts_as_base64](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/export_fonts_as_base64/) على تنسيق HTML فقط ولا تؤثر على EPUB وMHTML.

يوضح مثال التعليمات البرمجية التالي كيفية تصدير الخطوط المشفرة بـ Base64 إلى HTML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportFontsAsBase64.py" >}}

## حدد خيارات الحفظ عند التحويل إلى EPUB

يسمح Aspose.Words بتحويل مستند Word إلى تنسيق EPUB باستخدام خيارات الحفظ الافتراضية أو المخصصة. يمكنك تحديد عدد من الخيارات عن طريق تمرير مثيل [HtmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/) إلى أسلوب [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/).

يوضح مثال التعليمات البرمجية التالي كيفية تحويل مستند Word إلى EPUB مع تحديد بعض خيارات الحفظ المخصصة:

{{< highlight python >}}
# Load the document from disk.
doc = aw.Document(docs_base.my_dir + "Rendering.docx")

# Create a new instance of HtmlSaveOptions. This object allows us to set options that control
# How the output document is saved.
saveOptions = aw.saving.HtmlSaveOptions()

# Specify the desired encoding.
saveOptions.encoding = "utf-8"

# Specify at what elements to split the internal HTML at. This creates a new HTML within the EPUB 
# which allows you to limit the size of each HTML part. This is useful for readers which cannot read 
# HTML files greater than a certain size e.g 300kb.
saveOptions.document_split_criteria = aw.saving.DocumentSplitCriteria.HEADING_PARAGRAPH

# Specify that we want to export document properties.
saveOptions.export_document_properties = True

# Specify that we want to save in EPUB format.
saveOptions.save_format = aw.SaveFormat.EPUB

# Export the document as an EPUB file.
doc.save(docs_base.artifacts_dir + "Document.EpubConversion_out.epub", saveOptions)
{{< /highlight >}}

{{% alert color="primary" %}}

يمكنك تنزيل ملف القالب الخاص بهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

