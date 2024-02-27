---
title: حدد خيارات الحفظ في C#
second_title: Aspose.Words لـ .NET
articleTitle: حدد خيارات الحفظ
linktitle: حدد خيارات الحفظ
description: "التحكم بشكل أكثر دقة في عملية الحفظ باستخدام C#."
type: docs
weight: 10
url: /ar/net/specify-save-options/
---

عند حفظ مستند، يمكنك تعيين بعض الخصائص المتقدمة. يوفر لك Aspose.Words فئة [SaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/)، والتي تتيح تحكمًا أكثر دقة في عملية الحفظ. توجد عمليات تحميل زائدة لأسلوب **Save** تقبل كائن **SaveOptions** - يجب أن يكون كائنًا من فئة مشتقة من فئة **SaveOptions**. يحتوي كل تنسيق حفظ على فئة مقابلة تحتوي على خيارات الحفظ لتنسيق الحفظ هذا، على سبيل المثال، يوجد [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) للحفظ بتنسيق PDF، أو [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/) للحفظ بتنسيق Markdown، أو [ImageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/) للحفظ في صورة. توفر هذه المقالة أمثلة على العمل مع بعض فئات الخيارات المشتقة من **SaveOptions**.

يوضح مثال التعليمات البرمجية التالي كيفية تعيين خيارات الحفظ قبل حفظ المستند إلى HTML:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-SpecifySaveOption-SpecifySaveOption.cs" >}}

{{% alert color="primary" %}}

يمكنك تنزيل ملف القالب الخاص بهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

توضح المقالة بعض الخصائص التي يمكنك التحكم فيها عند حفظ مستند.

## تشفير مستند بكلمة مرور

استخدم خاصية **Password** للحصول على كلمة مرور أو تعيينها لمستند مشفر. استخدم خاصية **Password** للفئة المقابلة للعمل مع تنسيق المستند المحدد.

على سبيل المثال، عند حفظ مستند بتنسيق DOC أو DOT، استخدم خاصية [Password](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/password/) لفئة [DocSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/).

يوضح مثال التعليمات البرمجية التالي كيفية تعيين كلمة مرور لتشفير مستند باستخدام طريقة التشفير RC4:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithDoc-EncryptDocumentWithPassword.cs" >}}

عند حفظ مستند بتنسيق Odt، استخدم خاصية [Password](https://reference.aspose.com/words/net/aspose.words.saving/odtsaveoptions/password/) لفئة [OdtSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/odtsaveoptions/).

يوضح مثال التعليمات البرمجية التالي كيفية تحميل OpenDocument المشفر بكلمة مرور وحفظه:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-Load_Options-LoadAndSaveEncryptedODT.cs" >}}

لا تدعم كافة التنسيقات التشفير واستخدام خاصية **Password**.

## إظهار إشعارات التقدم في حفظ المستندات

يوفر Aspose.Words القدرة على استخدام خاصية [ProgressCallback](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/progresscallback/) للحصول على إشعارات حول التقدم المحرز في حفظ المستند.

وهو متوفر الآن عند الحفظ بتنسيقات DOCX أو FlatOpc أو DOCM أو DOTM أو DOTX أو HTML أو MHTML أو EPUB أو XamlFlow أو XamlFlowPack أو TXT.

## قم بتحديث وقت إنشاء المستند

يوفر Aspose.Words القدرة على استخدام خاصية [CreatedTime](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/createdtime/) للحصول على تاريخ إنشاء المستند أو تعيينه بالتوقيت العالمي المنسق (UTC). يمكنك أيضًا تحديث هذه القيمة قبل الحفظ باستخدام خيار [UpdateCreatedTimeProperty](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/updatecreatedtimeproperty/).

يوضح مثال التعليمات البرمجية التالي كيفية تحديث وقت إنشاء المستند:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-Working with PdfSaveOptions-UpdateIfLastPrinted.cs" >}}

## تحديث آخر خاصية محفوظة

يوفر Aspose.Words القدرة على استخدام خاصية [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/updatelastsavedtimeproperty/) للحصول على قيمة أو تعيينها لتحديد ما إذا كان سيتم تحديث خاصية [LastSavedTime](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/lastsavedtime/) قبل الحفظ.

يوضح مثال التعليمات البرمجية التالي كيفية تعيين هذه الخاصية وحفظ المستند:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithOoxml-UpdateLastSavedTimeProperty.cs" >}}

## التحكم في الموارد الخارجية عند حفظ مستند بتنسيق HTML أو SVG

لتحويل HTML أو SVG إلى PDF، ما عليك سوى استدعاء طريقة [Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save/) وتحديد اسم ملف بامتداد ".PDF". إذا كنت تريد تحميل الصور وCSS وما إلى ذلك من مصادر خارجية، فيمكنك استخدام [IResourceSavingCallback](https://reference.aspose.com/words/net/aspose.words.saving/iresourcesavingcallback/).

يوضح مثال التعليمات البرمجية التالي كيفية تحويل HTML إلى PDF وتحميل الصور من مصادر خارجية:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ImageLoadingWithCredentialsHandler-ImageLoadingWithCredentialsHandler.cs" >}}

## احفظ الصورة بالأبيض والأسود بتنسيق بت واحد لكل بكسل

للتحكم في خيارات حفظ الصورة، يتم استخدام فئة **ImageSaveOptions**. على سبيل المثال، يمكنك استخدام خاصية [PixelFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/pixelformat/) لتعيين تنسيق البكسل للصور التي تم إنشاؤها. يرجى ملاحظة أن تنسيق البكسل للصورة الناتجة قد يختلف عن القيمة المحددة بسبب عمل GDI+.

يوضح مثال التعليمات البرمجية التالي كيفية حفظ صورة بالأبيض والأسود بتنسيق بت واحد لكل بكسل:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-ImageColorFilters-SaveImageToOnebitPerPixel.cs" >}}
