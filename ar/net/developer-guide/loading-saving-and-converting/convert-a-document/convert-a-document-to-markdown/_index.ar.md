---
title: تحويل مستند إلى Markdown في C#
second_title: Aspose.Words لـ .NET
articleTitle: تحويل مستند إلى Markdown
linktitle: تحويل مستند إلى Markdown
type: docs
description: "قم بتحويل مستند بأي تنسيق تحميل مدعوم إلى Markdown والعكس باستخدام C#."
keywords: how to convert a document to markdown c#
weight: 40
url: /ar/net/convert-a-document-to-markdown/
---

يعد Markdown تنسيقًا شائعًا يستخدم لترميز النص وتحويله أيضًا إلى HTML أو PDF أو DOCX أو تنسيقات أخرى. يختار العديد من المطورين هذا التنسيق لكتابة الوثائق، وإعداد المقالات للنشر على المدونات، ووصف المشاريع، وما إلى ذلك.

يحظى Markdown بشعبية كبيرة لأنه من السهل العمل بهذا التنسيق، كما يمكن تحويله بكل بساطة إلى تنسيقات أخرى. لهذا السبب، يوفر Aspose.Words القدرة على تحويل مستند بتنسيق [أي تنسيق تحميل مدعوم](https://reference.aspose.com/words/ar/net/aspose.words/loadformat/) إلى Markdown والعكس - كما يدعم Aspose.Words أيضًا [حفظ التنسيقات](https://reference.aspose.com/words/ar/net/aspose.words/saveformat/) الأكثر شيوعًا.

يتم الآن تطوير وظيفة العمل باستخدام تنسيق Markdown بشكل نشط لتوفر لك المزيد من الفرص للعمل المريح والمريح مع المستندات.

## تحويل مستند

لتحويل مستند إلى Markdown، ما عليك سوى تحميل مستند بأي تنسيق مدعوم أو إنشاء مستند جديد برمجيًا. ثم تحتاج إلى حفظ المستند بتنسيق Markdown.

يوضح مثال التعليمات البرمجية التالي كيفية تحويل DOCX إلى Markdown:

**.NET**
{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToMarkdown-SaveAsMD.cs" >}}

يمكنك أيضًا تحديد المجلد الفعلي الذي تريد حفظ الصور فيه عند تصدير مستند إلى تنسيق Markdown. افتراضيًا، يحفظ Aspose.Words الصور في نفس المجلد حيث تم حفظ ملف المستند، ولكن يمكنك تجاوز هذا السلوك باستخدام خاصية [ImagesFolder](https://reference.aspose.com/words/ar/net/aspose.words.saving/markdownsaveoptions/imagesfolder/).

يعد تحديد مجلد عبر **ImagesFolder** مفيدًا أيضًا إذا قمت بحفظ مستند في دفق ولم يكن لدى Aspose.Words مجلد لحفظ الصور.

إذا لم يكن **ImagesFolder** المحدد موجودًا، فسيتم إنشاؤه تلقائيًا.

يوضح مثال التعليمات البرمجية التالي كيفية تحديد مجلد للصور عند حفظ مستند في دفق:

**.NET**
{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToMarkdown-SetImagesFolder.cs" >}}

## حدد خيارات الحفظ عند التحويل إلى Markdown

يوفر Aspose.Words القدرة على استخدام فئة [MarkdownSaveOptions](https://reference.aspose.com/words/ar/net/aspose.words.saving/markdownsaveoptions/) للعمل مع الخيارات المتقدمة عند حفظ مستند بتنسيق Markdown. تقوم معظم الخصائص بتوارث أو تحميل زائد للخصائص الموجودة بالفعل ضمن فئات [Aspose.Words.Saving](https://reference.aspose.com/words/ar/net/aspose.words.saving/) Namespace الأخرى. بالإضافة إلى ذلك، تم أيضًا إضافة عدد من الخصائص الخاصة بتنسيق Markdown. على سبيل المثال، خاصية [TableContentAlignment](https://reference.aspose.com/words/ar/net/aspose.words.saving/markdownsaveoptions/tablecontentalignment/) للتحكم في محاذاة المحتوى في الجداول، أو خاصية [ImageSavingCallback](https://reference.aspose.com/words/ar/net/aspose.words.saving/markdownsaveoptions/imagesavingcallback/) و[ImagesFolder](https://reference.aspose.com/words/ar/net/aspose.words.saving/markdownsaveoptions/imagesfolder/) للتحكم في كيفية حفظ الصور عند تحويل مستند إلى تنسيق Markdown.

## ميزات Markdown المدعومة

يدعم Aspose.Words حاليًا ميزات Markdown التالية، والتي تتبع في الغالب مواصفات `CommonMark` في Aspose.Words API ويتم تمثيلها كأنماط مناسبة أو تنسيق مباشر:

* العناوين عبارة عن فقرات تحتوي على عنوان 1 - عنوان 6 أنماط
* علامات الاقتباس هي فقرات تحتوي على كلمة "اقتباس" في اسم النمط
* IndentedCode هي فقرات تحتوي على "IndentedCode" في اسم النمط
* FencedCode عبارة عن فقرات تحتوي على "FencedCode" في اسم النمط
* يتم تشغيل InlineCode باستخدام "InlineCode" في اسم نمط `Font`
* القواعد الأفقية هي فقرات ذات شكل `HorizontalRule`
* التأكيد الجريء
* التركيز المائل
* تنسيق StrikeThrough
* القوائم مرقمة أو فقرات ذات تعداد نقطي
* يتم تمثيل الجداول بفئة `Table`
* يتم تمثيل الروابط كفئة `FieldHyperlink`

يوضح المثال التالي كيفية إنشاء مستند ببعض الأنماط وحفظه في Markdown:

**.NET**
{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToMarkdown-SupportedMarkdownFeatures.cs" >}}

يتم عرض نتيجة هذا المثال التعليمات البرمجية أدناه.

![markdown-example-aspose-words-net](/words/net/convert-a-document-to-markdown/markdown-example.png)

## نصائح مفيدة

هناك العديد من الفروق الدقيقة والحالات المثيرة للاهتمام، بعد أن تعلمت أنه يمكنك العمل مع ملفات Markdown بشكل أكثر مرونة وسهولة. على سبيل المثال، هناك القدرة على استخدام:

* SettextHeading الذي يسمح لك بإنشاء عناوين متعددة الأسطر في Markdown، في حين أن العناوين العادية في Markdown يمكن أن تكون من سطر واحد فقط. يعتمد SettextHeading على نمط "Heading N"، ويمكن أن يكون مستواه 1 أو 2 فقط. إذا كان N في "Heading N" أكبر من أو يساوي 2، فإن SettextHeading المقابل يعتمد على "Heading 2"، وإلا على "عنوان 1".
* علامات مختلفة للمستوى الأول من القوائم ذات التعداد النقطي ("-" أو "+" أو "*"، العلامة الافتراضية هي "-".) وأنواع مختلفة من الترقيم للقوائم المرتبة ("." أو ")"، العلامة الافتراضية هي ".").
