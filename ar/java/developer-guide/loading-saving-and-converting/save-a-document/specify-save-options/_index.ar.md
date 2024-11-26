---
title: حدد خيارات الحفظ في Java
second_title: Aspose.Words ل Java
articleTitle: حدد خيارات الحفظ
linktitle: حدد خيارات الحفظ
description: "قم بتعيين الخصائص المتقدمة عند حفظ مستند باستخدام Java لتوفير تحكم أكثر دقة في العملية."
type: docs
weight: 20
url: /ar/java/specify-save-options/
timestamp: 2024-01-27-14-07-04
---

عند حفظ مستند، يمكنك تعيين بعض الخصائص المتقدمة. Aspose.Words يوفر لك فئة [SaveOptions](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/)، والتي تتيح تحكما أكثر دقة في عملية الحفظ. هناك حمولات زائدة لطريقة **Save** تقبل كائن **SaveOptions** - يجب أن يكون كائنا لفئة مشتقة من فئة **SaveOptions**. يحتوي كل تنسيق حفظ على فئة مقابلة تحتوي على خيارات حفظ لتنسيق الحفظ هذا، على سبيل المثال، يوجد [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) للحفظ إلى PDF تنسيق، [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) للحفظ إلى Markdown تنسيق، أو [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) للحفظ إلى صورة. تقدم هذه المقالة أمثلة للعمل مع بعض فئات الخيارات المشتقة من **SaveOptions**.

يوضح مثال الكود التالي كيفية تعيين خيارات الحفظ قبل حفظ المستند في HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifySaveOption-SpecifySaveOption.java" >}}


{{% alert color="primary" %}}

يمكنك تنزيل ملف القالب لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

توضح المقالة بعض الخصائص التي يمكنك التحكم فيها عند حفظ مستند.

## تشفير مستند بكلمة مرور

استخدم خاصية **Password** للحصول على كلمة مرور لمستند مشفر أو تعيينها. استخدم خاصية **Password** للفئة المقابلة للعمل مع تنسيق المستند المحدد.

على سبيل المثال، عند حفظ مستند بتنسيق DOC أو DOT، استخدم خاصية [Password](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/#Password) لفئة [DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/).

يوضح مثال التعليمات البرمجية التالية كيفية تعيين كلمة مرور لتشفير مستند باستخدام طريقة تشفير RC4:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithDocSaveOptions-EncryptDocumentWithPassword.java" >}}

عند حفظ مستند بتنسيق ODT، استخدم خاصية [Password](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/#Password) لفئة [OdtSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/).

يوضح مثال الكود التالي كيفية تحميل وحفظ OpenDocument مشفر بكلمة مرور:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-LoadAndSaveEncryptedODT.java" >}}

لا تدعم جميع التنسيقات التشفير واستخدام خاصية **Password**.

## إظهار إشعارات تقدم حفظ المستندات

Aspose.Words يوفر القدرة على استخدام خاصية [ProgressCallback](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getProgressCallback) للحصول على إشعارات حول تقدم حفظ المستندات.

وهي متاحة الآن عند الحفظ إلى DOCX, FlatOpc, DOCM, DOTM, DOTX, HTML, MHTML, EPUB, XamlFlow, XamlFlowPack, أو TXT التنسيقات.

## تحديث وقت إنشاء المستند

Aspose.Words يوفر القدرة على استخدام الخاصية [CreatedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getCreatedTime) للحصول على أو تعيين تاريخ إنشاء المستند في UTC. يمكنك أيضا تحديث هذه القيمة قبل الحفظ باستخدام [UpdateCreatedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateCreatedTimeProperty) اختيار.

يوضح مثال التعليمات البرمجية التالية كيفية تحديث وقت إنشاء المستند:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-UpdateIfLastPrinted.java" >}}

## تحديث آخر خاصية محفوظة

Aspose.Words يوفر القدرة على استخدام الخاصية [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateLastSavedTimeProperty) للحصول على أو تعيين قيمة تحديد ما إذا كان يتم تحديث الخاصية [LastSavedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getLastSavedTime) قبل الحفظ.

يوضح مثال التعليمات البرمجية التالية كيفية تعيين هذه الخاصية وحفظ المستند:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithOoXML-updateLastSavedTimeProperty.java" >}}

## حفظ الصورة بالأبيض والأسود بت واحد لكل تنسيق بكسل

للتحكم في خيارات حفظ الصورة، يتم استخدام فئة **ImageSaveOptions**. على سبيل المثال، يمكنك استخدام الخاصية [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat) لتعيين تنسيق البكسل للصور التي تم إنشاؤها. يرجى ملاحظة أن تنسيق البكسل لصورة الإخراج قد يختلف عن القيمة المحددة بسبب عمل GDI+.

يوضح مثال الكود التالي كيفية حفظ صورة بالأبيض والأسود بت واحد لكل تنسيق بكسل:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-ImageColorFilters-SaveImageToOnebitPerPixel.java" >}}
