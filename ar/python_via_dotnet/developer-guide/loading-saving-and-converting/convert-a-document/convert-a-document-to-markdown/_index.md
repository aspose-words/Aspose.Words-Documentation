---
title: تحويل مستند إلى Markdown
second_title: Aspose.Words لـ Python via .NET
articleTitle: تحويل مستند إلى Markdown
linktitle: تحويل مستند إلى Markdown
type: docs
description: "قم بتحويل مستند بأي تنسيق تحميل مدعوم إلى Markdown والعكس باستخدام Python."
keywords: how to convert a document to markdown python
weight: 40
url: /ar/python-net/convert-a-document-to-markdown/
---

يعد Markdown تنسيقًا شائعًا يستخدم لترميز النص وتحويله أيضًا إلى HTML أو PDF أو DOCX أو تنسيقات أخرى. يختار العديد من المطورين هذا التنسيق لكتابة الوثائق، وإعداد المقالات للنشر على المدونات، ووصف المشاريع، وما إلى ذلك.

يحظى Markdown بشعبية كبيرة لأنه من السهل العمل بهذا التنسيق، كما يمكن تحويله بكل بساطة إلى تنسيقات أخرى. لهذا السبب، يوفر Aspose.Words القدرة على تحويل مستند بتنسيق [أي تنسيق تحميل مدعوم](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) إلى Markdown والعكس - كما يدعم Aspose.Words أيضًا [حفظ التنسيقات](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) الأكثر شيوعًا.

يتم الآن تطوير وظيفة العمل باستخدام تنسيق Markdown بشكل نشط لتوفر لك المزيد من الفرص للعمل المريح والمريح مع المستندات.

## تحويل مستند

لتحويل مستند إلى Markdown، ما عليك سوى تحميل مستند بأي تنسيق مدعوم أو إنشاء مستند جديد برمجيًا. ثم تحتاج إلى حفظ المستند بتنسيق Markdown.

يوضح مثال التعليمات البرمجية التالي كيفية تحويل DOCX إلى Markdown:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-SaveToMarkdownDocument.py" >}}

يمكنك أيضًا تحديد المجلد الفعلي الذي تريد حفظ الصور فيه عند تصدير مستند إلى تنسيق Markdown. افتراضيًا، يحفظ Aspose.Words الصور في نفس المجلد حيث تم حفظ ملف المستند، ولكن يمكنك تجاوز هذا السلوك باستخدام خاصية [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder/).

يعد تحديد مجلد عبر [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder/) مفيدًا أيضًا إذا قمت بحفظ مستند في دفق ولم يكن لدى Aspose.Words مجلد لحفظ الصور.

إذا لم يكن [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder/) المحدد موجودًا، فسيتم إنشاؤه تلقائيًا.

يوضح مثال التعليمات البرمجية التالي كيفية تحديد مجلد للصور عند حفظ مستند في دفق:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_markdown_save_options-SetImagesFolder.py" >}}

## حدد خيارات الحفظ عند التحويل إلى Markdown

يوفر Aspose.Words القدرة على استخدام فئة [MarkdownSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/) للعمل مع الخيارات المتقدمة عند حفظ مستند بتنسيق Markdown. تقوم معظم الخصائص بوراثة أو تحميل زائد للخصائص الموجودة بالفعل ضمن فئات [aspose.words.saving](https://reference.aspose.com/words/python-net/aspose.words.saving/) الأخرى. بالإضافة إلى ذلك، تم أيضًا إضافة عدد من الخصائص الخاصة بتنسيق Markdown. على سبيل المثال، خاصية [table_content_alignment](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/table_content_alignment/) للتحكم في محاذاة المحتوى في الجداول، أو خاصية [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder/) للتحكم في مكان حفظ الصور عند تحويل مستند إلى تنسيق Markdown.

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
* يتم تمثيل الجداول بفئة [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/)
* يتم تمثيل الروابط كفئة [FieldHyperlink](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldhyperlink/)

يوضح المثال التالي كيفية إنشاء مستند ببعض الأنماط وحفظه في Markdown:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-CreateMarkdownDocument.py" >}}

يتم عرض نتيجة هذا المثال التعليمات البرمجية أدناه.

![markdown-example-aspose-words-net](/words/python-net/convert-a-document-to-markdown/markdown-example.png)

## نصائح مفيدة

هناك العديد من الفروق الدقيقة والحالات المثيرة للاهتمام، بعد أن تعلمت أنه يمكنك العمل مع ملفات Markdown بشكل أكثر مرونة وسهولة. على سبيل المثال، هناك القدرة على استخدام:

* SettextHeading الذي يسمح لك بإنشاء عناوين متعددة الأسطر في Markdown، في حين أن العناوين العادية في Markdown يمكن أن تكون من سطر واحد فقط. يعتمد SettextHeading على نمط "Heading N"، ويمكن أن يكون مستواه 1 أو 2 فقط. إذا كان N في "Heading N" أكبر من أو يساوي 2، فإن SettextHeading المقابل يعتمد على "Heading 2"، وإلا على "عنوان 1".
* علامات مختلفة للمستوى الأول من القوائم ذات التعداد النقطي ("-"، "+" أو "*"، العلامة الافتراضية هي "-".) وأنواع مختلفة من الترقيم للقوائم المرتبة ("." أو ")"، العلامة الافتراضية هي ".").
