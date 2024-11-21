---
title: تحويل مستند في Python
second_title: Aspose.Words لـ Python via .NET
articleTitle: تحويل مستند
linktitle: تحويل مستند
type: docs
url: /ar/python-net/convert-a-document/
weight: 30
description: "قم بتحويل المستندات بسهولة من تنسيق إلى آخر باستخدام Python. يمكنك العمل مع جميع التنسيقات الأكثر شيوعًا مثل تنسيقات Microsoft Word مثل DOCX أو DOC، وتنسيقات OpenDocument مثل ODT أو OTT، وتنسيقات الويب مثل HTML أو XHTML، وتنسيقات النص مثل MarkDown أو TXT وغيرها."
keywords: "convert a document python, convert documents from one format to another python, convert to markdown python, convert pdf to docx python, convert docx to pdf python, convert doc to pdf python, convert a document Aspose for Python"
timestamp: 2024-01-27-14-07-04
---

تعد القدرة على تحويل المستندات بسهولة وموثوقية من تنسيق إلى آخر إحدى الميزات الرئيسية في Aspose.Words. مثل هذا التحويل ليس أكثر من مزيج من عمليات التحميل والحفظ.

تتضمن أي مهمة تريد تنفيذها باستخدام Aspose.Words تقريبًا تحميل مستند أو حفظه بتنسيق ما. كما ذكرنا في الأقسام السابقة، يحدد تعداد [LoadFormat](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) جميع تنسيقات *load* أو *import* التي يدعمها Aspose.Words، ويحدد تعداد [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) جميع تنسيقات *save* أو *export* التي يدعمها Aspose.Words. وبالتالي، يمكن لـ Aspose.Words تحويل مستند من أي تنسيق تحميل مدعوم إلى أي تنسيق حفظ مدعوم. كقاعدة عامة، يتطلب مثل هذا التحويل عدة مراحل من الحساب. ومع ذلك، من وجهة نظر المستخدم، يعد التحويل من تنسيق مستند إلى تنسيق آخر أمرًا بسيطًا للغاية في حد ذاته، ويمكن إنجازه بخطوتين فقط:

1. قم بتحميل المستند الخاص بك إلى كائن [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) باستخدام أحد منشئيه.
1. قم باستدعاء إحدى طرق [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) على كائن [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) وحدد تنسيق الإخراج المطلوب.

{{% alert color="primary" %}}

**حاول عبر الإنترنت**

يمكنك تجربة وظيفة التحويل باستخدام أداة [محول مجاني على الانترنت](https://products.aspose.app/words/conversion) الخاصة بنا.

{{% /alert %}}

يصف القسم الحالي التحويلات الشائعة، بالإضافة إلى أفكار للعمل مع بعض مجموعات التنسيقات عند التحميل والحفظ. باستخدام أمثلة هذا القسم، يمكنك أن تفهم أن عملية التحويل نفسها عالمية تماما، وليس هناك أي معنى لوصف جميع الخيارات الممكنة، حيث يوجد عدة مئات منها بسبب العدد الكبير من [تنسيقات المستندات المدعومة](/words/ar/python-net/supported-document-formats/).

{{% alert color="primary" %}}

يرجى ملاحظة أنه فيما يلي مجموعات التحويل الأكثر شيوعًا، وليست كل مجموعة مرتبطة بالصفحة المحددة. هذا هو الحال لأن مقالاتنا لا تحتوي على أمثلة لكل زوج من التحويلات - فجميع التحويلات تقريبًا متشابهة إلى حد كبير. تأكد من ذلك من خلال دراسة المقالات الموجودة في القسم الحالي.

{{% /alert %}}

<div class="row">
		<div class="col-md-4">
				<h2>تحويل الوورد إلى PDF</h2>
						<ul>
								<li><a href="/words/python-net/convert-a-document-to-pdf/#converting-doc-or-docx-to-pdf">تحويل DOC إلى PDF</a></li>
								<li><a href="/words/python-net/convert-a-document-to-pdf/#converting-doc-or-docx-to-pdf">تحويل DOCX إلى PDF</a></li>
								<li>و اخرين</li>
						</ul>
				<h2>تحويل الصورة إلى PDF</h2>
						<ul>
								<li><a href="/words/python-net/convert-a-document-to-pdf/#convert-an-image-to-pdf">تحويل JPG إلى PDF</a></li>
								<li><a href="/words/python-net/convert-a-document-to-pdf/#convert-an-image-to-pdf">تحويل TIFF إلى PDF</a></li>
								<li>و اخرين</li>
						</ul>
				<h2>تحويل صيغ الويب إلى PDF</h2>
						<ul>
								<li>تحويل Markdown إلى PDF</li>
								<li>تحويل HTML إلى PDF</li>
								<li>تحويل MHT (MHTML) إلى PDF</li>
								<li>و اخرين</li>
						</ul>
				<h2>تحويل التنسيقات الأخرى إلى PDF</h2>
						<ul>
								<li>تحويل RTF إلى PDF</li>
								<li>تحويل ODT إلى PDF</li>
								<li>تحويل TXT إلى PDF</li>
								<li>تحويل موبي إلى PDF</li>
								<li>و اخرين</li>
						</ul>
		</div>
		<div class="col-md-4">
				<h2>تحويل قوات الدفاع الشعبي إلى كلمة</h2>
						<ul>
								<li><a href="/words/ar/python-net/convert-pdf-to-other-document-formats/">تحويل PDF إلى تنسيقات المستندات الأخرى</a></li>
        <li>تحويل قوات الدفاع الشعبي إلى DOC</li>
								<li>و اخرين</li>
						</ul>
				<h2>تحويل قوات الدفاع الشعبي إلى صورة</h2>
						<ul>
								<li><a href="/words/ar/python-net/convert-a-document-to-an-image/">تحويل مستند إلى صورة</a></li>
        <li>تحويل قوات الدفاع الشعبي إلى SVG</li>
								<li>و اخرين</li>
						</ul>
				<h2>تحويل PDF إلى تنسيقات الويب</h2>
						<ul>
        <li>تحويل PDF إلى Markdown</li>
								<li>تحويل قوات الدفاع الشعبي إلى HTML</li>
								<li>تحويل قوات الدفاع الشعبي إلى EPUB</li>
								<li>و اخرين</li>
						</ul>
				<h2>تحويل PDF إلى صيغ أخرى</h2>
						<ul>
								<li>تحويل قوات الدفاع الشعبي إلى RTF</li>
								<li>تحويل PDF إلى XPS</li>
								<li>و اخرين</li>
						</ul>
		</div>
		<div class="col-md-4">
				<h2>تحويل مستند إلى صورة</h2>
						<ul>
								<li><a href="/words/ar/python-net/convert-a-document-to-an-image/">تحويل مستند إلى صورة</a></li>
								<li><a href="/words/ar/python-net/convert-a-document-to-an-image/">تحويل مستند إلى صورة</a></li>
								<li>و اخرين</li>
						</ul>
				<h2>تحويل مستند إلى Markdown</h2>
						<ul>
								<li><a href="/words/ar/python-net/convert-a-document-to-markdown/">تحويل مستند إلى Markdown</a></li>
								<li>تحويل HTML إلى Markdown</li>
								<li>و اخرين</li>
						</ul>
				<h2>تحويل مستند إلى HTML</h2>
						<ul>
								<li><a href="/words/python-net/convert-a-document-to-html-mhtml-or-epub/#convert-a-document">تحويل الوورد إلى HTML</a></li>
								<li>تحويل Markdown إلى HTML</li>
								<li>تحويل موبي إلى EPUB</li>
								<li>و اخرين</li>
						</ul>
		</div>
</div>
