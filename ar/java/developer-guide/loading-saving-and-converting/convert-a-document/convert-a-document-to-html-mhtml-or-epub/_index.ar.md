---
title: Convert a Document to HTML, MHTML or EPUB
second_title: Aspose.Words for Java
articleTitle: Convert a Document to HTML, MHTML or EPUB
linktitle: Convert a Document to HTML, MHTML or EPUB
description: "الاستخدام Aspose.Words for Java (ب) تحويل الوثائق من ` وورد ` أو أي أشكال أخرى مدعومة إلى ` HTML `، أو MHTML، أو EPUB."
type: docs
weight: 20
url: /ar/java/convert-a-document-to-html-mhtml-or-epub/
---

كما أن الوثائق الواردة في صيغتي " HTML " و " MHTML " المتعلقة بالتدفقات شائعة جدا ويمكن استخدامها على أي منصة على شبكة الإنترنت. ولهذا السبب، يشكل تحويل الوثائق إلى نظام HTML و MHTML سمة هامة من سمات هذا النظام. Aspose.Words.

EPUB (short for "Electronic Publication" is an HTML-based format commonly used for electronic book distribution. هذا الشكل مدعم بالكامل Aspose.Words لتصدير الكتب الإلكترونية المتوافقة مع معظم أجهزة القراءة.

## Convert a Document

For simple conversion to HTML, MHTML, or EPUB, one of the [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-int) تستخدم الحمولات الزائدة على الطريقة. ويمكنكم أن تنقذوا الوثيقة إلى ملف أو تيار، وأن تحددوا بشكل صريح وثيقة الإنتاج، أو أن تحددوها من تمديد اسم الملف.

ويبيّن المثال التالي كيفية تحويل مادة الـ دي سيكس إلى HTML مع تحديد شكل الادخار:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocxToHtml.java" >}}

لتحويل وثيقة إلى MHTML أو EPUB، استخدام `SaveFormat.MHTML` أو `SaveFormat.EPUB` على التوالي.

## Convert a Document with Round-trip Information

The HTML format does not support many Microsoft Word سمات، وإذا كنا بحاجة إلى استعادة نموذج الوثيقة على مقربة من الأصل قدر الإمكان، فإننا بحاجة إلى توفير بعض المعلومات الإضافية في ملف HTML. هذه المعلومات تُدعى أيضاً "معلومات عن الطريق" لهذا الغرض Aspose.Words:: توفير القدرة على تصدير المعلومات المتعلقة بالرحلات المستديرة عند الادخار إلى HTML أو MHTML أو EPUB باستخدام [ExportRoundtripInformation](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportRoundtripInformation) ملكية ويتيح توفير المعلومات المتعلقة بالرحلات المستديرة استعادة ممتلكات الوثائق من قبيل الملصقات، والتعليقات، والرعاة، والأقدام خلال وثائق تحميل الأشكال المدرجة في القائمة إلى مرة أخرى **Document** هدف

القيمة الافتراضية هي **true** HTML and **false** عن MHTML و EPUB:

- **true**, تُصدَّر المعلومات المتعلقة بالرحلات المستديرة على أنها - خ م - * خواص برمجيات موحَّدة المصدر من العناصر المناظرة في نظام HTML
- **false**, لا توجد معلومات عن المرحلتين ذهابا وإيابا تُنتج في الملفات المنتجة

The following code example shows how to export round-trip information when converting a document from DOCX into HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocumentToHtmlWithRoundtrip.java" >}}

{{% alert color="primary" %}}

يمكنك تحميل ملف النموذج من هذا المثال [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/com/aspose/words/examples/loading_saving/ConvertDocumentToHtmlWithRoundtrip/Test%20File%20\(doc\)(دوك).

{{% /alert %}}

## تحديد خيارات الإنقاذ عند تحويلها إلى HTML

Aspose.Words ويسمح بتحويل وثيقة كلمة إلى HTML باستخدام خيارات التخلف أو العرف. ويرد أدناه وصف لقلة من الأمثلة على خيارات الادخار العرفي.

### تَكْشفُ a فولدر للمواردِ المنقذةِ

استخدام Aspose.Words ويمكننا أن نحدد ملفاً مادياً حيث يتم توفير جميع الموارد، مثل الصور، واللافتات، والبرمجيات الخارجية، عندما يتم تحويل الوثيقة إلى HTML. هذا خيط فارغ

تحديد [ResourceFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getResourceFolder) فالملكية هي أبسط طريقة لوضع الملف الذي ينبغي فيه كتابة جميع الموارد. يمكننا استخدام ممتلكات فردية مثل [FontsFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getFontsFolder) التي تُوفّر ملصقات للمجلد المحدد [ImagesFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getImagesFolder) الذي يحفظ الصور لملف محدد عندما يحدد مسار نسبي **FontsFolder** و **ImagesFolder** يشير إلى الملف الذي يوجد فيه التجمع الرمزي **ResourceFolder** و [CssStyleSheetFileName](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getCssStyleSheetFileName) يرجى الرجوع إلى ملف النواتج الذي توجد فيه وثيقة HTML.

في هذا المثال **ResourceFolder** يحدد الطريق النسبي This path refers to the output folder where the HTML document is save. قيمة **ResourceFolderAlias** وتُستخدم الممتلكات لإنشاء وحدات خفض الانبعاثات لجميع الموارد.

ويبين المثال الرمزي التالي كيفية العمل مع هذه الممتلكات:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ExportResourcesUsingHtmlSaveOptions.java" >}}

استخدام [ResourceFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getResourceFolderAlias) ويمكننا أيضاً أن نحدد اسم الملف المستخدم في بناء وحدات خفض الانبعاثات من جميع الموارد المحررة في وثيقة HTML. This is the simplest way to specify how URIs should be generated for all resource files. ويمكن تحديد نفس المعلومات للصور واللافتات بصورة منفصلة عن طريق [ImagesFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getImagesFolderAlias) و [FontsFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getFontsFolderAlias) الممتلكات، على التوالي.

However, there is no individual property for CSS. سلوك **FontsFolder**, **FontsFolderAlias**, **ImagesFolder**, **ImagesFolderAlias** و **CssStyleSheetFileName** الممتلكات لم تتغير ملاحظة: **CssStyleSheetFileName** وتُستخدم الممتلكات لتحديد اسم الملف واسم الملف.

- **ResourceFolder** له أولوية أقل من الملفات المحددة عن طريق **FontsFolder**, **ImagesFolder**, و **CssStyleSheetFileName**. إذا كان الملف محددا في **ResourceFolder** لا وجود لها، وسوف يتم إنشاؤها تلقائيا.
- **ResourceFolderAlias** لها أولوية أقل من **FontsFolderAlias** و **ImagesFolderAlias**. إذا **ResourceFolderAlias** فارغة، قيمة **ResourceFolder** وسوف تُستخدم الممتلكات في إنشاء مفاعلات للموارد. إذا **ResourceFolderAlias** مُحددة لـ (دوت)، مُراجعي الحسابات المُورديّة ستحتوي فقط على أسماء ملفّات دون تحديد مسار.

### قاعدة التصدير(64)

Aspose.Words وتوفر القدرة على تحديد ما إذا كان ينبغي إدماج الموارد المخصصة في نظام HTML في رموز القاعدة 64. لتأدية هذا، استخدم [ExportFontsAsBase64](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportFontsAsBase64) - هذا تمديد [ExportFontResources](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportFontResources) ملكية حسب التقصير، قيمتها **false**, وتُكتب اللوحات في ملفات منفصلة. ولكن إذا كان هذا الخيار جاهزاً **true**, ستُضمّن الفواكه في مُجمّع المُستندات في "قاعدة الـ64". The **ExportFontsAsBase64** فالممتلكات لا تؤثر إلا على شكل نظام HTML ولا تؤثر على EPUB و MHTML.

The following code example shows how to export Base64-encoded fonts to HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ExportFontsAsBase64.java" >}}

## تحديد خيارات الإنقاذ عند تحويلها إلى EPUB

Aspose.Words ويسمح بتحويل وثيقة وورد إلى صيغة EPUB باستخدام خيارات التخلف أو العرف. يمكنك تحديد عدد من الخيارات عن طريق إصدار حالة [HtmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/) إلى [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-com.aspose.words.SaveOptions) طريقة

ويبيّن المثال الرمزي التالي كيفية تحويل وثيقة ورود إلى EPUB مع تحديد بعض خيارات الحفظ المعتادة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocumentToEPUB.java" >}}

{{% alert color="primary" %}}

يمكنك تحميل ملف النموذج من هذا المثال [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/com/aspose/words/examples/loading_saving/ExportResourcesUsingHtmlSaveOptions/Document.EpubConversion.doc).

{{% /alert %}}

## انظر أيضا

- [How to export round-trip information whenving to HTML](/words/java/custom-styles-used-for-proper-aspose-words-html-roundtrip/)
