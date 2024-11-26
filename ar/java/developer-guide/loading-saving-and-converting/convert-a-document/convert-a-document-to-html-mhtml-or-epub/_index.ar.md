---
title: تحويل مستند إلى HTML أو MHTML أو EPUB
second_title: Aspose.Words ل Java
articleTitle: تحويل مستند إلى HTML أو MHTML أو EPUB
linktitle: تحويل مستند إلى HTML أو MHTML أو EPUB
description: "استخدم Aspose.Words لـ Java لتحويل المستندات من ورد أو أي تنسيقات أخرى مدعومة إلى HTML أو MHTML أو EPUB."
type: docs
weight: 20
url: /ar/java/convert-a-document-to-html-mhtml-or-epub/
timestamp: 2024-10-21-08-52-03
---

المستندات بتنسيقات تخطيط التدفق HTML و MHTML تحظى أيضا بشعبية كبيرة ويمكن استخدامها على أي منصة ويب. لهذا السبب، يعد تحويل المستندات إلى HTML و MHTML ميزة مهمة في Aspose.Words.

EPUB (اختصار لـ" النشر الإلكتروني") هو تنسيق قائم على HTML شائع الاستخدام لتوزيع الكتب الإلكترونية. هذا التنسيق مدعوم بالكامل في Aspose.Words لتصدير الكتب الإلكترونية المتوافقة مع معظم أجهزة القراءة.

## تحويل مستند

للتحويل البسيط إلى HTML أو MHTML أو EPUB، يتم استخدام أحد الأحمال الزائدة لطريقة [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-int). يمكنك حفظ المستند في ملف أو دفق وتعيين تنسيق حفظ مستند الإخراج بشكل صريح أو تعريفه من امتداد اسم الملف.

يوضح المثال التالي كيفية تحويل DOCX إلى HTML مع تحديد تنسيق حفظ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocxToHtml.java" >}}

لتحويل مستند إلى MHTML أو EPUB، استخدم `SaveFormat.MHTML` أو `SaveFormat.EPUB` على التوالي.

## تحويل مستند بمعلومات ذهابا وإيابا

لا يدعم تنسيق HTML العديد من ميزات Microsoft Word، وإذا احتجنا إلى استعادة نموذج مستند بالقرب من الأصل قدر الإمكان، فنحن بحاجة إلى حفظ بعض المعلومات الإضافية داخل ملف HTML. وتسمى هذه المعلومات أيضا "معلومات ذهابا وإيابا". لهذا الغرض، يوفر Aspose.Words القدرة على تصدير معلومات ذهابا وإيابا عند الحفظ إلى HTML أو MHTML أو EPUB باستخدام خاصية [ExportRoundtripInformation](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportRoundtripInformation). يسمح حفظ معلومات الرحلة ذهابا وإيابا باستعادة خصائص المستند مثل علامات التبويب والتعليقات والرؤوس والتذييلات أثناء تحميل مستندات التنسيقات المدرجة مرة أخرى في كائن **Document**.

القيمة الافتراضية هي **true** لـ HTML و **false** لـ MHTML و EPUB:

- عندما **true**، يتم تصدير المعلومات ذهابا وإيابا كما-فصيل عبد الواحد - * CSS خصائص HTML العناصر المقابلة
- عندما **false**، لا توجد معلومات ذهابا وإيابا ليتم إخراجها في الملفات المنتجة

يوضح مثال الكود التالي كيفية تصدير معلومات ذهابا وإيابا عند تحويل مستند من DOCX إلى HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocumentToHtmlWithRoundtrip.java" >}}

{{% alert color="primary" %}}

يمكنك تنزيل ملف القالب لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## حدد خيارات الحفظ عند التحويل إلى HTML

Aspose.Words يسمح بتحويل مستند ورد إلى HTML باستخدام خيارات الحفظ الافتراضية أو المخصصة. يتم وصف بعض الأمثلة على خيارات الحفظ المخصصة أدناه.

### حدد مجلدا لحفظ الموارد

باستخدام Aspose.Words يمكننا تحديد مجلد فعلي حيث يتم حفظ جميع الموارد، مثل الصور والخطوط والخارجية CSS، عند تحويل مستند إلى HTML. بشكل افتراضي، هذه سلسلة فارغة.

تحديد الخاصية [ResourceFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getResourceFolder) هو أبسط طريقة لتعيين المجلد حيث يجب كتابة جميع الموارد. يمكننا استخدام الخصائص الفردية، مثل [FontsFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getFontsFolder) الذي يحفظ الخطوط إلى المجلد المحدد و [ImagesFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getImagesFolder) الذي يحفظ الصور إلى مجلد محدد. عند تحديد مسار نسبي، **FontsFolder** و **ImagesFolder** الرجوع إلى المجلد حيث يوجد تجميع التعليمات البرمجية، **ResourceFolder** و [CssStyleSheetFileName](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getCssStyleSheetFileName) الرجوع إلى مجلد الإخراج حيث يوجد المستند HTML.

في هذا المثال، **ResourceFolder** يحدد المسار النسبي. يشير هذا المسار إلى مجلد الإخراج حيث يتم حفظ المستند HTML. يتم استخدام قيمة الخاصية **ResourceFolderAlias** لإنشاء URLs لجميع الموارد.

يوضح مثال التعليمات البرمجية التالية كيفية العمل مع هذه الخصائص:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ExportResourcesUsingHtmlSaveOptions.java" >}}

باستخدام خاصية [ResourceFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getResourceFolderAlias)، يمكننا أيضا تحديد اسم المجلد المستخدم لإنشاء URIs من جميع الموارد المكتوبة في مستند HTML. هذه هي أبسط طريقة لتحديد كيفية إنشاء URIs لجميع ملفات الموارد. يمكن تحديد نفس المعلومات للصور والخطوط بشكل منفصل عبر خصائص [ImagesFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getImagesFolderAlias) و [FontsFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getFontsFolderAlias)، على التوالي.

ومع ذلك، لا توجد خاصية فردية لـ CSS. سلوك **FontsFolder**, **FontsFolderAlias**, **ImagesFolder**, **ImagesFolderAlias** و **CssStyleSheetFileName** لا يتم تغيير الخصائص. لاحظ أنه يتم استخدام الخاصية **CssStyleSheetFileName** لتحديد اسم المجلد واسم الملف.

- **ResourceFolder** له أولوية أقل من المجلدات المحددة عبر **FontsFolder** و **ImagesFolder** و **CssStyleSheetFileName**. إذا كان المجلد المحدد في **ResourceFolder** غير موجود، فسيتم إنشاؤه تلقائيا.
- **ResourceFolderAlias** له أولوية أقل من **FontsFolderAlias** و **ImagesFolderAlias**. إذا كانت **ResourceFolderAlias** فارغة، فسيتم استخدام قيمة الخاصية **ResourceFolder** لإنشاء مورد URIs. إذا تم تعيين **ResourceFolderAlias** إلى "." (نقطة)، فسيحتوي المورد URIs على أسماء الملفات فقط دون تحديد مسار.

### موارد تصدير خطوط الترميز Base64

يوفر الخيار Aspose.Words إمكانية تحديد ما إذا كان يجب تضمين موارد الخطوط في HTML بترميزات Base64. للقيام بذلك، استخدم الخاصية [ExportFontsAsBase64](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportFontsAsBase64) - وهي امتداد للخاصية [ExportFontResources](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportFontResources). بشكل افتراضي، تكون قيمتها **false**، ويتم كتابة الخطوط في ملفات منفصلة. ولكن إذا تم تعيين هذا الخيار على **true**، فسيتم تضمين الخطوط في CSS المستند بترميز Base64. تؤثر الخاصية **ExportFontsAsBase64** فقط على تنسيق HTML ولا تؤثر على EPUB وMHTML.

يوضح مثال التعليمات البرمجية التالي كيفية تصدير الخطوط المشفرة بتنسيق Base64 إلى HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ExportFontsAsBase64.java" >}}

## حدد خيارات الحفظ عند التحويل إلى EPUB

Aspose.Words يسمح بتحويل مستند ورد إلى تنسيق EPUB باستخدام خيارات الحفظ الافتراضية أو المخصصة. يمكنك تحديد عدد من الخيارات عن طريق تمرير مثيل [HtmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/) إلى طريقة [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-com.aspose.words.SaveOptions).

يوضح مثال الكود التالي كيفية تحويل مستند ورد إلى EPUB مع تحديد بعض خيارات الحفظ المخصصة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocumentToEPUB.java" >}}

{{% alert color="primary" %}}

يمكنك تنزيل ملف القالب لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/com/aspose/words/examples/loading_saving/ExportResourcesUsingHtmlSaveOptions/Document.EpubConversion.doc).

{{% /alert %}}

## أنظر أيضا

- [كيفية تصدير معلومات ذهابا وإيابا عند الحفظ إلى HTML](/words/java/custom-styles-used-for-proper-aspose-words-html-roundtrip/)
