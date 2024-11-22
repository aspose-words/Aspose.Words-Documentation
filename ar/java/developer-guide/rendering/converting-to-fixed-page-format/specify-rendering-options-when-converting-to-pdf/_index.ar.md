---
title: تحديد خيارات تقديم الخدمات عند الانتقال إلى إدارة الدعم الميداني
second_title: Aspose.Words for Java
articleTitle: تحديد خيارات تقديم الخدمات عند الانتقال إلى إدارة الدعم الميداني
linktitle: تحديد خيارات تقديم الخدمات عند الانتقال إلى إدارة الدعم الميداني
description: "Convert a document to PDF with advanced options. Use PdfSaveOptions to change the result ofving a document to PDF format using Java."
type: docs
weight: 20
url: /ar/java/specify-rendering-options-when-converting-to-pdf/
timestamp: 2024-10-21-11-17-44
---

The PDF format is a fixed-page format that is very popular among users and widely supported by various applications because a PDF document looks the same on any tool. ولهذا السبب، يشكل التحول إلى قوات الدفاع الشعبي سمة هامة من سمات القوى الديمقراطية Aspose.Words.

PDF هو شكل معقد. وهناك حاجة إلى عدة مراحل من الحسابات في عملية تحويل وثيقة إلى إدارة الدعم الميداني، بما في ذلك حساب التصميم. وبما أن هذه المراحل تشمل حوسبات معقدة، فإنها تستغرق وقتا طويلا. Also, the PDF format is rather complex by itself. ولها هيكل محدد للملفات، ونموذج للرسوم البيانية، والتصنيف. وعلاوة على ذلك، فإنه يميز بعض الوظائف المعقدة للنواتج، مثل بطاقات هيكل الوثائق، والتشفير، والتوقيعات الرقمية، والأشكال القابلة للتجزئة.

Aspose.Words محرك التصميم يحد من الطريق Microsoft Wordيعمل محرك تخطيط الصفحات. لذا Aspose.Words يجعل وثائق إنتاج PDF تبدو أقرب ما يمكن مما تراه في Microsoft Word. ومن الضروري في بعض الأحيان تحديد خيارات إضافية يمكن أن تؤثر على نتيجة توفير وثيقة في شكل PDF. ويمكن تحديد هذه الخيارات باستخدام [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) درجة، تحتوي على الخواص التي تحدد كيفية عرض ناتج PDF.

بعض الأمثلة على استخدام **PdfSaveOptions** وترد أدناه.

{{% alert color="primary" %}}

وفي الوقت الراهن، يمكن أن تُوفّر إلى PDF 1.7, PDF 2.0, PDF/A-1a, PDF/A-1b, PDF/A-2a, PDF/A-2u, and PDF/UA-1 formats. استخدام [PdfCompliance](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/) يعدد لتحديد مستوى الامتثال لمعايير PDF. Note that with the PDF/A format, an output file size is larger than a regular PDF file size.

[PdfCompliance.PdfA1a](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/#PDF-17) و [PdfCompliance.PdfA1b](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/#PDF-17) تُعتبر بالية

للحصول على مزيد من المعلومات عن PDF/A، انظر المادة التالية، "تعلّم رسوم التحويل إلى PDF/A".

{{% /alert %}}

## Creating a PDF الوثيقة المتعلقة بأشكال التمويل

ومن الممكن أيضا تصدير استمارات يمكن ملؤها من Microsoft Word (أ) وثيقة في الناتج PDF، التي لها نماذج قابلة للملأ بدلاً من نص واضح. استخدام [PreserveFormFields](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getPreserveFormFields) (ب) الممتلكات التي تُوفّر مستنداً في شكل PDF بأشكال يمكن ملؤها.

Note that in contrast to Microsoft Word" The PDF format has a limited number of options for editable forms, such as textbox, combo box, and checkbox. Microsoft Word وله أشكال أكثر من ذلك، على سبيل المثال، مختار تاريخ التقويم. وعموماً، ليس من الممكن التقيُّد الكامل Microsoft Word السلوك في PDF. ولذلك، في بعض الحالات المعقدة، قد يختلف ناتج قوات الدفاع الشعبي عما تراه في Microsoft Word.

ويبيّن المثال الرمزي الوارد أدناه كيفية إنقاذ وثيقة من قبيل PDF بأشكال يمكن ملؤها بضغط ونوعية محددين من طراز Jpeg:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-PdfImageCompression.java" >}}

## Exporting Document Structure and Custom Properties

The [ExportDocumentStructure](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getExportDocumentStructure) الملكية تمكنك من تصدير هيكل الوثائق إلى إنتاج PDF.

وتوفر مرافق البنية المنطقية لقوات الدفاع الشعبي آلية لإدماج المعلومات، فيما يتعلق بهيكل محتوى الوثائق، في ملف من ملفات قوات الدفاع الشعبي. Aspose.Words يحفظ المعلومات عن الهيكل من Microsoft Word الوثيقة، مثل الفقرات، والقوائم، والجداول، والحواشي/المذكرات، وما إلى ذلك.

The following example demonstrates how to save a document to PDF format, maintaining the document structure:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-ExportDocumentStructure.java" >}}

Aspose.Words ويمكّنكم أيضاً من تصدير الممتلكات العرفية المستندية إلى PDF، وهو ما يتجلى في المثال التالي:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-CustomPropertiesExport.java" >}}

## Exporting Outlines from Bookmarks and Headings in Output PDF

إذا كنت ترغب في تصدير علامات الكتاب كمخططات في الناتج PDF، يمكنك استخدام [DefaultBookmarksOutlineLevel](https://reference.aspose.com/words/java/com.aspose.words/outlineoptions/#getDefaultBookmarksOutlineLevel) ملكية وتحدد هذه الممتلكات مستوى التقصير في مخطط الوثيقة، الذي Microsoft Word علامات الكتاب تظهر إذا كانت الوثيقة تحتوي على علامات كتابية في رأس/قدم الوثيقة، يمكنك وضع [HeaderFooterBookmarksExportMode](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getHeaderFooterBookmarksExportMode) الممتلكات إلى [First](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#FIRST) أو [All](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#ALL) من أجل تحديد كيفية تصديرها في الناتج PDF. لا تُصدَّر العلامات الدفترية في الرعاة/القدمين عندما تكون قيمة الدفتر **HeaderFooterBookmarksExportMode** هو [None](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#NONE).

ويبيّن المثال الرمزي الوارد أدناه كيفية تصدير العلامات الدفترية من أول رأس/قدم للقسم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-ExportHeaderFooterBookmarks.java" >}}

ويرد فيما يلي بيان للناتج PDF من هذا المثال:

![rendering-options-when-converting-to-pdf-aspose-words-java-1](/words/java/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-1.png)

عندما **HeaderFooterBookmarksExportMode** جاهز [First](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#FIRST) وتصدر هذه الوثيقة حتى وبغرابة رؤساء/أقدام أو رئيس/مقدمين مختلفين من الصفحات الأولى، علامات كتابية لأول رئيس/مقدمين فريدين في قسم ما.

يمكنك أيضا تصدير العناوين في الناتج PDF، باستخدام [HeadingsOutlineLevels](https://reference.aspose.com/words/java/com.aspose.words/outlineoptions/#getHeadingsOutlineLevels) ملكية وتحدد هذه الممتلكات عدد العناوين المدرجة في مخطط الوثيقة.

ويبين المثال الرمزي الوارد أدناه كيفية تصدير العناوين بثلاث مستويات:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-SaveToPdfWithOutline.java" >}}

ويرد أدناه بيان للناتج PDF من هذا المثال:

![rendering-options-when-converting-to-pdf-aspose-words-java-2](/words/java/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-2.png)

{{% alert color="primary" %}}

وقد يكون لعلامة كتاب أو ملاحية مظهر مختلف في مختلف مشاهدي PDF. وعلاوة على ذلك، لا توجد في بعض التطبيقات علامات كتابية وملاحة مرفوعة.

{{% /alert %}}

## الحد من حجم الوثائق

Aspose.Words:: توفير القدرة على خفض صور العينات من أجل خفض حجم الناتج PDF باستخدام [DownsampleOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getDownsampleOptions) ملكية أخذ العينات مُمكّن من التقصير في [DownsampleImages](https://reference.aspose.com/words/java/com.aspose.words/downsampleoptions/#getDownsampleImages) ملكية

Note that it is also possible to set a specific resolution in the [Resolution](https://reference.aspose.com/words/java/com.aspose.words/downsampleoptions/#getResolution) الممتلكات أو عتبة القرار في [ResolutionThreshold](https://reference.aspose.com/words/java/com.aspose.words/downsampleoptions/#getResolutionThreshold) ملكية وفي الحالة الثانية، إذا كان حل الصور أقل من القيمة العتبة، فإن تخفيض العينة لن ينطبق.

ويبين المثال الرمزي الوارد أدناه كيفية تغيير حل الصور في وثيقة من نواتج PDF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-DownsamplingImages.java" >}}

ويحسب القرار وفقا لحجم الصورة الحقيقية في الصفحة.

## Embedding Fonts in literature PDF Format

Aspose.Words ويمكّنكم أيضاً من التحكم في كيفية إدماج المثقفين في وثائق قوات الدفاع الشعبي الناتجة. Fonts need to be embedded into any literature PDF document to ensure that the document can be correctly rendered on any machine (see more details about font rendering in the section [استخدام ترو النوع](/words/ar/java/using-truetype-fonts/)) بالخطأ Aspose.Words يُدرج مجموعة فرعية من العناوين المستخدمة في الوثيقة في صندوق PDF المتولد. في هذه الحالة فقط glyphS (characters) used in the document are save to PDF.

### عندما تستخدم الفواكه الكاملة ومتى تختفي

هناك طريقة لتحديد خيار Aspose.Words لتضمين كل العناوين. ويرد في الجدول أدناه مزيد من التفاصيل، إلى جانب بعض مزايا ومساوئ كل إطار.

| Embed Fonts Mode |  المزايا | أوجه القصور |
|  :-  |  :-  |  :-  |
|  `Full`  | مفيد عندما تريد تحرير قوات الدفاع الشعبي الناتجة لاحقا بإضافة النص أو تعديله. جميع العواطف مشمولة، ومن ثم كل glyphحاضر | وبما أن بعض العناوين كبيرة (الميغابايت) فإن دمجها دون إخضاعها يمكن أن يؤدي إلى ملفات كبيرة من النواتج. |
|  `Subset`  | الغواصة مفيدة إذا كنت ترغب في إبقاء حجم ملف الناتج أصغر. | <p>The user cannot fully add or edit the text using the subsetted font in the output PDF document. هذا لأن ليس كل شيء glyphالشعار موجود</p>

<p>If multiple PDFs are save with subsetted fonts and assembled together, then the combined PDF document may have a font containing many unnecessary subsets.</p>
 |

### Embedding Full Fonts in PDF

The [EmbedFullFonts](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getEmbedFullFonts) الملكية تمكنك من تحديد كيف Aspose.Words يُدرج في وثيقة من نواتج PDF.

- To embed full fonts into the output PDF document, set **EmbedFullFonts** إلى true
- "إلى "الفواتير الفرعية عندما تنقذ قوات الدفاع الشعبي **EmbedFullFonts** إلى false

ويبيّن المثال التالي كيفية إدراج النقاط الكاملة في وثيقة الناتج PDF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-EmbeddAllFonts.java" >}}

ويبين المثال التالي كيفية تحديد Aspose.Words (أ) إلى أرقام فرعية في الناتج PDF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-EmbeddSubsetFonts.java" >}}

{{% alert color="primary" %}}

يمكنك تحميل ملف النموذج لهذه الأمثلة من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## How to Control Embedding Core Fonts and Windows النقاط القياسية

العناصر الأساسية Windows والعلامات القياسية هي مجموعات " المعيار " من النواة، التي تكون موجودة عادة على آلة الهدف أو مقدمة من قارئ الوثائق، ومن ثم لا يلزم إدراجها في الناتج PDF. من خلال عدم إدراج هذه اللوحات، يمكنك خفض حجم الوثائق الصادرة عن قوات الدفاع الشعبي و مع ذلك الحفاظ على قابلية النقل.

Aspose.Words (ب) يوفر خيارات لاختيار كيفية تصدير الفونتات إلى PDF. يمكنك أن تختار إما أن تدمج النواة الأساسية والتقليدية في الناتج PDF أو أن تتجنب اختراقها وتستخدم نسخاً أو نظاماً قياسياً من الـ PDF على آلة الهدف بدلاً من ذلك. ويسفر استخدام أي من هذين الخيارين عادة عن تخفيض كبير في حجم الملفات بالنسبة لوثائق قوة الدفاع الشعبي التي تولدها Aspose.Words.

- بما أن هذه الخيارات مستبعدة، يجب أن تختار واحد فقط في كل مرة.
- عند الادخار بامتثال PDF/A-1، يجب أن تكون جميع العناصر المستخدمة مدمجة في وثيقة PDF. عند الادخار بهذا الامتثال [UseCoreFonts](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getUseCoreFonts) يجب أن تُحدد الممتلكات false و [FontEmbeddingMode](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getFontEmbeddingMode) يجب أن تُحدد الممتلكات [EmbedAll](https://reference.aspose.com/words/java/com.aspose.words/pdffontembeddingmode#EMBED_ALL)[.](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usecorefonts/)

### Embedding Core Fonts

The option to embed Core fonts can be enabled or disabled by using the [UseCoreFonts](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getUseCoreFonts) ملكية عندما تكون جاهزة true, لم تُدرَج في وثيقة " النوع الحقيقي " التالية الأكثر شعبية:

- `Arial`
- `Times New Roman`
- `Courier New`
- `Symbol`

ويُستعاض عن هذه اللوحات بالأرقام الأساسية المقابلة للنوع 1 التي توفرها قارئة عندما تُفتح قوات الدفاع الشعبي.

ويبين المثال الوارد أدناه كيفية تحديد Aspose.Words تجنباً لضم النواة الأساسية والسماح للقارئ باستبدالها بـ PDF النوع 1

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-AvoidEmbeddingCoreFonts.java" >}}

{{% alert color="primary" %}}

يمكنك تحميل ملف النموذج لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

ولما كان المشاهدون من تحالف القوى الديمقراطية يقدمون أرقاماً أساسية عن أي منصة مدعومة، فإن هذا الخيار مفيد أيضاً عندما يكون من المطلوب نقل وثائق أكبر. على أي حال، قد تبدو الأرقام الأساسية مختلفة عن أرقام النظام.

{{% alert color="primary" %}}

يعمل هذا الإطار فقط لوكالة الاستخبارات الوطنيةWindows-1252) نص تشفير) وكتابة نص غير تابع للمؤسسة إلى قوات الدفاع الشعبي ستتطلب دائماً ضم العناصر المقابلة.

{{% /alert %}}

### نظام التأسيس

ويمكن تمكين هذا الخيار أو إعاقته باستخدامه [FontEmbeddingMode](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getFontEmbeddingMode) ملكية عندما تكون هذه الملكية جاهزة [EmbedNonstandard](https://reference.aspose.com/words/java/com.aspose.words/pdffontembeddingmode/#EMBED-NONSTANDARD), " Arial " و " Times New Roman " true ولا تُدرَج في وثيقة صادرة عن قوات الدفاع الشعبي. In this case, the client viewer relies on the fonts that are installed on the client operating system. عندما **FontEmbeddingMode** الممتلكات مقررة [EmbedNone](https://reference.aspose.com/words/java/com.aspose.words/pdffontembeddingmode/#EMBED-NONE), Aspose.Words لا تُضمّنْ أيّ فونتات.

ويبين المثال الوارد أدناه كيفية تحديد Aspose.Words لتخطي دمج (أريال) و(تايمز) في وثيقة PDF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-SetFontEmbeddingMode.java" >}}

هذه الطريقة هي الأكثر فائدة عندما ترغب في رؤية وثائقك على نفس المنهاج، مع الحفاظ على المظهر الدقيق للعناصر في الناتج PDF.

{{% alert color="primary" %}}

يعمل هذا الإطار فقط لوكالة الاستخبارات الوطنيةWindows-1252) نص تشفير) وكتابة نص غير متاح لمؤسسة الدفاع عن النفس يتطلب أن يُدرج الخط المقابل.

{{% /alert %}}
