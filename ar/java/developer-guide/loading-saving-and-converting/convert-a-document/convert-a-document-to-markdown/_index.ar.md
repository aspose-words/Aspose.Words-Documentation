---
title: تحويل مستند إلى Markdown في Java
second_title: Aspose.Words ل Java
articleTitle: تحويل مستند إلى Markdown
linktitle: تحويل مستند إلى Markdown
type: docs
description: "تحويل مستند بأي تنسيق تحميل مدعوم إلى Markdown والعكس بالعكس باستخدام Java."
keywords: how to convert a document to markdown Java, save as MD, DOCX to MD
weight: 33
url: /ar/java/convert-a-document-to-markdown/
timestamp: 2024-01-27-14-07-04
---

Markdown هو تنسيق شائع يستخدم لترميز النص ويتم تحويله إلى المزيد HTML, PDF, DOCX, أو تنسيقات أخرى. يختار العديد من المطورين هذا التنسيق لكتابة الوثائق وإعداد المقالات للنشر على المدونات ووصف المشاريع وما إلى ذلك.

Markdown تحظى بشعبية كبيرة لأنه من السهل العمل مع هذا التنسيق، وكذلك يمكن تحويلها ببساطة إلى تنسيقات أخرى. لهذا السبب، Aspose.Words يوفر القدرة على تحويل مستند في [أي تنسيق تحميل معتمد](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) إلى Markdown والعكس بالعكس - Aspose.Words كما يدعم الأكثر شعبية [حفظ التنسيقات](https://reference.aspose.com/words/java/com.aspose.words/saveformat/).

الآن يتم تطوير وظيفة العمل مع تنسيق Markdown بنشاط لتزويدك بمزيد من الفرص للعمل المريح والمريح مع المستندات.

## تحويل مستند إلى Markdown

لتحويل مستند إلى Markdown، تحتاج فقط إلى تحميل مستند بأي تنسيق مدعوم أو إنشاء مستند جديد برمجيا. ثم تحتاج إلى حفظ المستند بتنسيق Markdown.

يوضح مثال الكود التالي كيفية تحويل DOCX إلى Markdown:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SaveAsMD.java" >}}


## حدد خيارات الحفظ عند التحويل إلى Markdown

Aspose.Words يوفر القدرة على استخدام فئة [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) للعمل مع الخيارات المتقدمة عند حفظ مستند بتنسيق Markdown. بالإضافة إلى خصائص الوراثة أو التحميل الزائد الأخرى، تمت إضافة عدد من الخصائص الخاصة بتنسيق Markdown. على سبيل المثال، الخاصية [TableContentAlignment](https://reference.aspose.com/words/java/com.aspose.words/tablecontentalignment/) للتحكم في محاذاة المحتوى في الجداول، أو [ImageSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImageSavingCallback) و [ImagesFolder](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImagesFolder) للتحكم في كيفية حفظ الصور عند تحويل مستند إلى تنسيق Markdown.

## الميزات المدعومة Markdown

Aspose.Words يدعم حاليا ميزات Markdown التالية، والتي تتبع في الغالب مواصفات `CommonMark` في Aspose.Words API ويتم تمثيلها كأنماط مناسبة أو تنسيق مباشر:

* العناوين هي فقرات ذات أنماط Heading 1 - Heading 6
* الاقتباسات هي فقرات تحتوي على "اقتباس" في اسم النمط
* IndentedCode هي فقرات بها "IndentedCode " في اسم النمط
* FencedCode هي فقرات بها "FencedCode " في اسم النمط
* InlineCode يتم تشغيل مع "InlineCode " في اسم النمط `Font`
* القواعد الأفقية هي فقرات ذات شكل `HorizontalRule`
* التركيز الجريء
* التركيز المائل
* StrikeThrough تنسيق
* القوائم هي فقرات مرقمة أو نقطية
* يتم تمثيل الجداول مع فئة `Table`
* يتم تمثيل الروابط على أنها فئة `FieldHyperlink`

يوضح المثال التالي كيفية إنشاء مستند مع بعض الأنماط وحفظه إلى Markdown:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SupportedMarkdownFeatures.java" >}}

تظهر نتيجة مثال الكود هذا أدناه.

![markdown-example-aspose-words-java](/words/java/convert-a-document-to-markdown/markdown-example.png)

## نصائح مفيدة

هناك العديد من الفروق الدقيقة والحالات المثيرة للاهتمام، بعد أن تعلمت أنه يمكنك العمل مع Markdown ملفات أكثر مرونة وسهولة. على سبيل المثال، هناك القدرة على استخدام:

* SetextHeading يسمح لك بإنشاء عناوين متعددة الأسطر في Markdown، بينما يمكن أن تكون العناوين العادية في Markdown من سطر واحد فقط. SetextHeading يعتمد على نمط "العنوان ن"، ويمكن أن يكون مستواه 1 أو 2 فقط. إذا ن في "العنوان ن" أكبر من أو يساوي 2، فإن المقابل SetextHeading يعتمد على "Heading 2"، وإلا على "Heading 1".
* علامات مختلفة للمستوى الأول من القوائم النقطية ("-"، "+" أو "*"، العلامة الافتراضية هي "-".) وأنواع مختلفة من الترقيم للقوائم المرتبة ("." أو ")"، العلامة الافتراضية هي ".").
