---
title: حدد خيارات الحفظ في C++
second_title: Aspose.Words ل C++
articleTitle: حدد خيارات الحفظ
linktitle: حدد خيارات الحفظ
description: "تحكم أكثر دقة في عملية الحفظ."
type: docs
weight: 10
url: /ar/cpp/specify-save-options/
---

عند حفظ مستند، يمكنك تعيين بعض الخصائص المتقدمة. Aspose.Words يوفر لك فئة [SaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/)، والتي تتيح تحكما أكثر دقة في عملية الحفظ. هناك حمولات زائدة من طريقة **Save** التي تقبل كائن **SaveOptions** - يجب أن يكون كائنا من فئة مشتقة من فئة **SaveOptions**. يحتوي كل تنسيق حفظ على فئة مقابلة تحتوي على خيارات حفظ لتنسيق الحفظ هذا، على سبيل المثال، يوجد [PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/) للحفظ إلى PDF تنسيق، [MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions) للحفظ إلى Markdown تنسيق، أو [ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/) للحفظ إلى صورة. تقدم هذه المقالة أمثلة للعمل مع بعض فئات الخيارات المشتقة من **SaveOptions**.

يوضح مثال الكود التالي كيفية تعيين خيارات الحفظ قبل حفظ المستند في HTML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-SpecifySaveOption-SpecifySaveOption.cpp" >}}

{{% alert color="primary" %}}

يمكنك تنزيل ملف القالب لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

توضح المقالة بعض الخصائص التي يمكنك التحكم فيها عند حفظ مستند.

## تشفير مستند بكلمة مرور

استخدم خاصية **Password** للحصول على كلمة مرور لمستند مشفر أو تعيينها. استخدم خاصية **Password** للفئة المقابلة للعمل مع تنسيق المستند المحدد.

على سبيل المثال، عند حفظ مستند بتنسيق DOC أو DOT، استخدم خاصية [Password](https://reference.aspose.com/words/cpp/aspose.words.saving/docsaveoptions/get_password/) لفئة [DocSaveOptions](https://reference.aspose.com/words/cpp/class/aspose.words.saving.doc_save_options).

يوضح مثال التعليمات البرمجية التالية كيفية تعيين كلمة مرور لتشفير مستند باستخدام طريقة تشفير RC4:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithDoc-EncryptDocumentWithPassword.cpp" >}}

عند حفظ مستند بتنسيق ODT، استخدم خاصية [Password](https://reference.aspose.com/words/cpp/aspose.words.saving/odtsaveoptions/get_password/) لفئة [OdtSaveOptions](https://reference.aspose.com/words/cpp/class/aspose.words.saving.odt_save_options).

يوضح مثال الكود التالي كيفية تحميل وحفظ OpenDocument مشفر بكلمة مرور:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-LoadAndSaveEncryptedODT.cpp" >}}

لا تدعم جميع التنسيقات التشفير واستخدام خاصية **Password**.

## إظهار إشعارات تقدم حفظ المستندات

Aspose.Words يوفر القدرة على استخدام خاصية [ProgressCallback](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_progresscallback/) للحصول على إشعارات حول تقدم حفظ المستندات.

وهي متاحة الآن عند الحفظ إلى DOCX, FlatOpc, DOCM, DOTM, DOTX, HTML, MHTML, EPUB, XamlFlow, XamlFlowPack, أو TXT التنسيقات.

## تحديث وقت إنشاء المستند

Aspose.Words يوفر القدرة على استخدام الخاصية [CreatedTime](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_createdtime/) للحصول على أو تعيين تاريخ إنشاء المستند في UTC. يمكنك أيضا تحديث هذه القيمة قبل الحفظ باستخدام [UpdateCreatedTimeProperty](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_updatecreatedtimeproperty/) اختيار.

يوضح مثال التعليمات البرمجية التالية كيفية تحديث وقت إنشاء المستند:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-UpdateIfLastPrinted.cpp" >}}

## تحديث آخر خاصية محفوظة

Aspose.Words يوفر القدرة على استخدام الخاصية [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/set_updatelastsavedtimeproperty/) للحصول على أو تعيين قيمة تحدد ما إذا كان يتم تحديث الخاصية [LastSavedTime](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_lastsavedtime/) قبل الحفظ.

يوضح مثال التعليمات البرمجية التالية كيفية تعيين هذه الخاصية وحفظ المستند:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithOoxml-UpdateLastSavedTimeProperty.cpp" >}}

## حفظ الصورة بالأبيض والأسود بت واحد لكل تنسيق بكسل

للتحكم في خيارات حفظ الصورة، يتم استخدام فئة **ImageSaveOptions**. على سبيل المثال، يمكنك استخدام الخاصية [PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_pixelformat/) لتعيين تنسيق البكسل للصور التي تم إنشاؤها. يرجى ملاحظة أن تنسيق البكسل لصورة الإخراج قد يختلف عن القيمة المحددة بسبب عمل GDI+.

يوضح مثال الكود التالي كيفية حفظ صورة بالأبيض والأسود بت واحد لكل تنسيق بكسل:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-ImageColorFilters-SaveImageToOnebitPerPixel.cpp" >}}
