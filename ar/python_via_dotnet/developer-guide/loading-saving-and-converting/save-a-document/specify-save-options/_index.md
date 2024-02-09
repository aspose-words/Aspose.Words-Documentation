---
title: حدد خيارات الحفظ في Python
second_title: Aspose.Words لـ Python via .NET
articleTitle: حدد خيارات الحفظ
linktitle: حدد خيارات الحفظ
description: "التحكم بشكل أكثر دقة في عملية الحفظ باستخدام Python."
type: docs
weight: 10
url: /ar/python-net/specify-save-options/
---

عند حفظ مستند، يمكنك تعيين بعض الخصائص المتقدمة. يوفر لك Aspose.Words فئة [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/)، والتي تتيح تحكمًا أكثر دقة في عملية الحفظ. توجد عمليات تحميل زائدة لأسلوب [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) تقبل كائن [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/) - يجب أن يكون كائنًا من فئة مشتقة من فئة [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/). يحتوي كل تنسيق حفظ على فئة مقابلة تحتوي على خيارات الحفظ لتنسيق الحفظ هذا، على سبيل المثال، يوجد [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) للحفظ بتنسيق PDF أو [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) للحفظ في صورة. توفر هذه المقالة أمثلة على العمل مع بعض فئات الخيارات المشتقة من [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/).

يوضح مثال التعليمات البرمجية التالي كيفية تعيين خيارات الحفظ قبل حفظ المستند إلى HTML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportRoundtripInformation.py" >}}

{{% alert color="primary" %}}

يمكنك تنزيل ملف القالب الخاص بهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

توضح المقالة بعض الخصائص التي يمكنك التحكم فيها عند حفظ مستند.

## تشفير مستند بكلمة مرور

استخدم خاصية **كلمة المرور** للحصول على كلمة مرور أو تعيينها لمستند مشفر. استخدم خاصية **كلمة المرور** للفئة المقابلة للعمل مع تنسيق المستند المحدد.

على سبيل المثال، عند حفظ مستند بتنسيق DOC أو DOT، استخدم خاصية [password](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/password/) لفئة [DocSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/).

يوضح مثال التعليمات البرمجية التالي كيفية تعيين كلمة مرور لتشفير مستند باستخدام طريقة التشفير RC4:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_doc_save_options-EncryptDocumentWithPassword.py" >}}

عند حفظ مستند بتنسيق [password](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/password/)، استخدم خاصية [password](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/password/) لفئة [OoxmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/).

يوضح مثال التعليمات البرمجية التالي كيفية تحميل Docx وحفظه مشفرًا بكلمة مرور:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_ooxml_save_options-EncryptDocxWithPassword.py" >}}

لا تدعم كافة التنسيقات التشفير واستخدام خاصية **كلمة المرور**.

## قم بتحديث وقت إنشاء المستند

يوفر Aspose.Words القدرة على استخدام خاصية [created_time](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/created_time/) للحصول على تاريخ إنشاء المستند أو تعيينه بالتوقيت العالمي المنسق (UTC). يمكنك أيضًا تحديث هذه القيمة قبل الحفظ باستخدام خيار [update_created_time_property](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/update_created_time_property/).

يوضح مثال التعليمات البرمجية التالي كيفية تحديث وقت إنشاء المستند:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-UpdateIfLastPrinted.py" >}}

## تحديث آخر خاصية محفوظة

يوفر Aspose.Words القدرة على استخدام خاصية [update_last_saved_time_property](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/update_last_saved_time_property/) للحصول على قيمة أو تعيينها لتحديد ما إذا كان سيتم تحديث خاصية [last_saved_time](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/last_saved_time/) قبل الحفظ.

يوضح مثال التعليمات البرمجية التالي كيفية تعيين هذه الخاصية وحفظ المستند:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_ooxml_save_options-UpdateLastSavedTimeProperty.py" >}}

## احفظ الصورة بالأبيض والأسود بتنسيق بت واحد لكل بكسل

للتحكم في خيارات حفظ الصورة، يتم استخدام فئة [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/). على سبيل المثال، يمكنك استخدام خاصية [pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/) لتعيين تنسيق البكسل للصور التي تم إنشاؤها. يرجى ملاحظة أن تنسيق البكسل للصورة الناتجة قد يختلف عن القيمة المحددة بسبب عمل Skia.

يوضح مثال التعليمات البرمجية التالي كيفية حفظ صورة بالأبيض والأسود بتنسيق بت واحد لكل بكسل:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-Format1BppIndexed.py" >}}
