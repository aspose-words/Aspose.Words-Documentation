---
title: تحديد خيارات الإنقاذ في Java
second_title: Aspose.Words for Java
articleTitle: تحديد خيارات الإنقاذ
linktitle: تحديد خيارات الإنقاذ
description: "وضع خصائص متقدمة عند توفير وثيقة باستخدام Java توفير رقابة أكثر دقة على العملية."
type: docs
weight: 20
url: /ar/java/specify-save-options/
timestamp: 2024-01-27-14-07-04
---

عندما تنقذ وثيقة، يمكنك وضع بعض الممتلكات المتقدمة. Aspose.Words يزودك بـ [SaveOptions](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/) الطبقة التي تسمح بمراقبة أكثر دقة لعملية الإنقاذ هناك تحميلات زائدة **Save** طريقة تقبل **SaveOptions** الجسم - ينبغي أن يكون هدفا لفئة مستمدة من **SaveOptions** صف لكل شكل من أشكال الادخار طبقة مناظرة تحتفظ بخيارات لشكل الادخار هذا، على سبيل المثال، هناك [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) للادخار في شكل PDF، [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) للادخار Markdown الشكل أو [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) لإنقاذ صورة تقدم هذه المادة أمثلة على العمل مع بعض فئات الخيارات المستمدة من **SaveOptions**.

The following code example shows how to set the save the document into HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifySaveOption-SpecifySaveOption.java" >}}


{{% alert color="primary" %}}

يمكنك تحميل ملف النموذج من هذا المثال [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

المقالة تصف بعض الممتلكات التي يمكنك التحكم بها عندما تنقذ وثيقة

## Encrypt a Document مع كلمة سر

استخدام **Password** ملكية للحصول على أو وضع كلمة سر لوثيقة مشفرة استخدام **Password** ممتلكات الفئة المقابلة للعمل في شكل وثيقة مختارة.

على سبيل المثال، عند توفير وثيقة إلى لجنة التنسيق الإدارية أو DOT الشكل، استخدام [Password](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/#Password) ممتلكات [DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/) الصف

The following code example shows how to set a password to encrypt a document using the RC4 encryption method:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithDocSaveOptions-EncryptDocumentWithPassword.java" >}}

عند توفير وثيقة إلى شكل الـ دي. [Password](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/#Password) ممتلكات [OdtSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/) الصف

The following code example shows how to load and save OpenDocument encrypted with a password:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-LoadAndSaveEncryptedODT.java" >}}

ليس جميع أشكال دعم التشفير واستخدام **Password** ملكية

## بيان الوثيقة

Aspose.Words توفير القدرة على استخدام [ProgressCallback](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getProgressCallback) الممتلكات للحصول على إخطارات عن التقدم المحرز في توفير الوثائق.

وهي متاحة الآن عند توفيرها لدو سيكس، فلاتوبك، دو سي. DOTM، DOTX, HTML, MHTML, EPUB, XamlFlow, XamlFlowPack, or TXT formats.

## Update the Document Creation Time

Aspose.Words توفر القدرة على استخدام [CreatedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getCreatedTime) ممتلكات للحصول على أو تحديد تاريخ إعداد الوثائق في مركز التجارة الدولية. يمكنك أيضا تحديث هذه القيمة قبل الادخار باستخدام [UpdateCreatedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateCreatedTimeProperty) الخيار

ويبين المثال الرمزي التالي كيفية تحديث وقت إعداد الوثائق:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-UpdateIfLastPrinted.java" >}}

## آخر الممتلكات المحتفظ بها

Aspose.Words توفر القدرة على استخدام [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateLastSavedTimeProperty) الممتلكات للحصول على قيمة أو تحديدها [LastSavedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getLastSavedTime) ويتم تحديث الممتلكات قبل الادخار.

ويبين المثال الرمزي التالي كيفية وضع هذه الممتلكات وإنقاذ الوثيقة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithOoXML-updateLastSavedTimeProperty.java" >}}

## انقذوا الصورة السوداء والبيض مع مفرد واحد

للسيطرة على خيارات إنقاذ الصور، **ImageSaveOptions** الفصل مستعمل على سبيل المثال، يمكنك استخدام [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat) ممتلكات لوضع شكل بيكسل للصور المولدة ويرجى الانتباه إلى أن الشكل القاطع لصورة النواتج قد يختلف عن القيمة المحددة بسبب عمل المبادرة العالمية المعززة.

The following code example shows how to save a black and white image with one bit per pixel format:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-ImageColorFilters-SaveImageToOnebitPerPixel.java" >}}
