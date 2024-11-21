---
title: تحويل مستند إلى Markdown في C++
second_title: Aspose.Words ل C++
articleTitle: تحويل مستند إلى Markdown
linktitle: تحويل مستند إلى Markdown
type: docs
description: "تحويل مستند بأي تنسيق تحميل مدعوم إلى Markdown والعكس بالعكس باستخدام C++."
keywords: how to convert a document to markdown c++, Convert doc to MD C++, convert DOCX to Markdown C++
weight: 40
url: /ar/cpp/convert-a-document-to-markdown/
timestamp: 2024-10-21-08-52-03
---

Markdown هو تنسيق شائع يستخدم لترميز النص وتحويله إلى مزيد من HTML, PDF, DOCX, أو تنسيقات أخرى. يختار العديد من المطورين هذا التنسيق لكتابة الوثائق وإعداد المقالات للنشر على المدونات ووصف المشاريع وما إلى ذلك.

Markdown تحظى بشعبية كبيرة لأنه من السهل العمل مع هذا التنسيق، وكذلك يمكن تحويلها ببساطة إلى تنسيقات أخرى. لهذا السبب، Aspose.Words يوفر القدرة على تحويل مستند في [any supported load format](https://reference.aspose.com/words/cpp/aspose.words/) إلى Markdown والعكس بالعكس - Aspose.Words كما يدعم الأكثر شعبية [save formats](https://reference.aspose.com/words/cpp/aspose.words/saveformat/).

الآن يتم تطوير وظيفة العمل مع تنسيق Markdown بنشاط لتزويدك بمزيد من الفرص للعمل المريح والمريح مع المستندات.

## تحويل مستند

لتحويل مستند إلى Markdown، تحتاج فقط إلى تحميل مستند بأي تنسيق مدعوم أو إنشاء مستند جديد برمجيا. ثم تحتاج إلى حفظ المستند بتنسيق Markdown.

يوضح مثال الكود التالي كيفية تحويل DOCX إلى Markdown:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToMarkdown-SaveAsMD.cpp" >}}

يمكنك أيضا تحديد المجلد الفعلي الذي تريد حفظ الصور فيه عند تصدير مستند إلى تنسيق Markdown. بشكل افتراضي، يحفظ Aspose.Words الصور في نفس المجلد حيث يتم حفظ ملف المستند، ولكن يمكنك تجاوز هذا السلوك باستخدام الخاصية [ImagesFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_imagesfolder/).

يعد تحديد مجلد عبر **ImagesFolder** مفيدا أيضا إذا قمت بحفظ مستند في دفق و Aspose.Words لا يحتوي على مجلد لحفظ الصور.

إذا كان **ImagesFolder** المحدد غير موجود، فسيتم إنشاؤه تلقائيا.

يوضح مثال التعليمات البرمجية التالية كيفية تحديد مجلد للصور عند حفظ مستند إلى دفق:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToMarkdown-SetImagesFolder.cpp" >}}

## حدد خيارات الحفظ عند التحويل إلى Markdown

Aspose.Words يوفر القدرة على استخدام فئة [MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/) للعمل مع الخيارات المتقدمة عند حفظ مستند بتنسيق Markdown. معظم الخصائص هي وراثة أو التحميل الزائد الخصائص الموجودة بالفعل داخل [Aspose.Words.Saving](https://reference.aspose.com/words/cpp/aspose.words.saving/) فئات مساحة الاسم الأخرى. بالإضافة إلى ذلك، تمت إضافة عدد من الخصائص الخاصة بتنسيق Markdown. على سبيل المثال، الخاصية [TableContentAlignment](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_tablecontentalignment/) للتحكم في محاذاة المحتوى في الجداول، أو [ImageSavingCallback](https://reference.aspose.com/words/cpp/aspose.words.saving/iimagesavingcallback/) و [ImagesFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_imagesfolder/) للتحكم في كيفية حفظ الصور عند تحويل مستند إلى تنسيق Markdown.

## الميزات المدعومة Markdown

Aspose.Words يدعم حاليا ميزات Markdown التالية، والتي تتبع في الغالب مواصفات `CommonMark` في Aspose.Words API ويتم تمثيلها كأنماط مناسبة أو تنسيق مباشر:

* العناوين هي فقرات ذات عنوان 1 - العنوان 6 الأنماط
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

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToMarkdown-SupportedMarkdownFeatures.cpp" >}}

تظهر نتيجة مثال الكود هذا أدناه.

![markdown-example-aspose-words-cpp](markdown-example.png)

## نصائح مفيدة

هناك العديد من الفروق الدقيقة والحالات المثيرة للاهتمام، بعد أن تعلمت أنه يمكنك العمل مع Markdown ملفات أكثر مرونة وسهولة. على سبيل المثال، هناك القدرة على استخدام:

* SetextHeading يسمح لك بإنشاء عناوين متعددة الأسطر في Markdown، بينما يمكن أن تكون العناوين العادية في Markdown من سطر واحد فقط. SetextHeading يعتمد على نمط "العنوان ن"، ويمكن أن يكون مستواه 1 أو 2 فقط. إذا ن في "العنوان ن" أكبر من أو يساوي 2، فإن SetextHeading المقابل يعتمد على "العنوان 2"، وإلا على "العنوان 1".
* علامات مختلفة للمستوى الأول من القوائم النقطية ("-"، "+" أو "*"، العلامة الافتراضية هي "-".) وأنواع مختلفة من الترقيم للقوائم المرتبة ("." أو ")"، العلامة الافتراضية هي ".").
