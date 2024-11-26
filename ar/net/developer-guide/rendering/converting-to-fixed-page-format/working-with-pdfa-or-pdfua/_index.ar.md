---
title: العمل مع PDF/A أو PDF/UA
second_title: Aspose.Words لـ .NET
articleTitle: العمل مع PDF/A أو PDF/UA
linktitle: العمل مع PDF/A أو PDF/UA
description: "قم بالتحويل إلى PDF/A-1، وPDF/A-2، وPDF/A-4، وPDF/UA باستخدام C#. توجد بعض المشكلات عند التحويل إلى مستندات PDF/A، ويقوم Aspose.Words for .NET بحلها."
type: docs
weight: 28
url: /ar/net/working-with-pdfa-or-pdfua/
timestamp: 2024-07-10-14-38-57
---

يفرض تنسيق PDF/A وPDF/UA العديد من المتطلبات المتعلقة بمحتوى المستند والتي لا يمكن تلبيتها أثناء التحويل التلقائي من مستند بتنسيق Word إلى PDF. يجب التحقق من هذه المتطلبات وتصحيحها إما في مستند Word قبل التحويل أو في مستند PDF بعد التحويل من أجل إنتاج مستند متوافق تمامًا مع PDF/A وPDF/UA.

المتطلبات الأساسية تتعلق ببنية أو خطوط مستند PDF/A وPDF/UA، والتي سنأخذها في الاعتبار في الأقسام التالية.

{{% alert color="primary" %}}

يرجى ملاحظة أن إخراج PDF/UA-1 سيكون أيضًا متوافقًا مع WCAG 2.0 والقسم 508.

{{% /alert %}}

## متطلبات هيكل الوثيقة

المتطلبات الحالية هي لتنسيقات PDF/A-1a، وPDF/A-2a، وPDF/A-4، وPDF/UA-1.

هناك بعض الفروق الدقيقة في كيفية عمل Aspose.Words عند التحويل إلى معايير تنسيق PDF المختلفة. يجب أن تؤخذ بعين الاعتبار إذا كنت ترغب في الحصول على النتيجة المتوقعة.

{{% alert color="primary" %}}

لاحظ أنه لا توجد متطلبات بنية منطقية لـ PDF/A-4. ولهذا السبب، فإننا لا نأخذ في الاعتبار إصدار PDF/A-4 في قسم "متطلبات بنية المستند" هذا.

{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>تخبرنا المواصفات بما يلي (قم بالتوسيع لرؤية التفاصيل):</summary>
    <p></p>
    <p>من غير المستحسن للكتاب توليد معلومات هيكلية أو دلالية باستخدام العمليات الآلية دون التحقق المناسب.</p>
    <p>ISO 19005-2، 6.7.1</p>
</details>
{{% /alert %}}

تصف الأقسام الفرعية أدناه الفروق الدقيقة في كيفية عمل Aspose.Words عند التحويل إلى معايير تنسيق PDF المختلفة وخيارات الحلول الخاصة بها.

### نوع الهيكل

|  مستويات الامتثال القياسية لـ PDF داخل Aspose.Words |  وجود الشرط |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  قوات الدفاع الشعبي/UA-1 |   {{< emoticons/tick >}}   |

مستند PDF عبارة عن سلسلة من الكتل مثل العناوين والفقرات والجداول وغيرها. تشكل هذه الكتل بنية مستندية - قوية أو ضعيفة.

كل من الهياكل القوية والضعيفة صالحة لـ PDF/A. تتميز مستندات Microsoft Word ببنية ضعيفة حسب التصميم، ويقوم Aspose.Words بإنشاء PDF ببنية ضعيفة على التوالي، كما يقوم أيضًا بإنشاء عناوين وفقًا لمستويات الخطوط العريضة للفقرات في المستند المصدر.

بالنسبة لمستند PDF/UA-1 ذي البنية الضعيفة، يلزم بالإضافة إلى ذلك أن تكون أرقام العناوين مرتبة دون فجوات.

{{% alert color="secondary" %}}
<details>
    <summary>تخبرنا المواصفات بما يلي (قم بالتوسيع لرؤية التفاصيل):</summary>
    <p></p>
    <p>قد يتبع الهيكل على مستوى الكتلة أحد النموذجين الرئيسيين:</p>
    </ol>
      <li>منظم بقوة. تتداخل عناصر التجميع في العديد من المستويات حسب الضرورة لتعكس تنظيم المادة في مقالات وأقسام وأقسام فرعية وما إلى ذلك. في كل مستوى، يجب أن تتكون العناصر الفرعية لعنصر التجميع من عنوان (H)، وفقرة واحدة أو أكثر (P) للمحتوى على هذا المستوى، وربما عنصر تجميع إضافي واحد أو أكثر للأقسام الفرعية المتداخلة.</li>
      <li>ضعيفة البنية. الوثيقة مسطحة نسبيًا، ربما تحتوي على مستوى واحد أو مستويين فقط من عناصر التجميع، مع جميع العناوين والفقرات وغيرها من BLSE كأبناء مباشرين لها. وفي هذه الحالة، لا ينعكس تنظيم المادة في البنية المنطقية؛ ومع ذلك، يمكن التعبير عنها باستخدام عناوين ذات مستويات محددة (H1 – H6).</li>
    </ol>
    <p></p>
    <p>ISO-32000-1، 14.8.4.3.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>بالنسبة لمستندات PDF/UA-1، تحتوي المواصفات على إضافة تتعلق بمستويات العناوين (قم بالتوسيع لرؤية التفاصيل):</summary>
    <p></p>
    <p>إذا كانت دلالات المستند تتطلب تسلسلًا تنازليًا للعناوين، فيجب أن يتم هذا التسلسل بترتيب رقمي صارم ويجب ألا يتخطى مستوى العناوين المتداخل. H1 H2 H3 مسموح به، بينما H1 H3 غير مسموح به.</p>
    <p>ISO-14289-1، 7.4.2</p>
</details>
{{% /alert %}}

لضمان الإخراج الصحيح، يتعين على المستخدمين التأكد من تنظيم محتوى المستند المصدر بشكل صحيح وتحديد مستويات المخطط التفصيلي للفقرات بشكل صحيح. بخلاف ذلك، يجب على المستخدم التحقق من بنية مستند PDF الناتج وإصلاحه.

{{% alert color="secondary" %}}
<details>
    <summary>في هذه المجموعة، يمكنك رؤية أمثلة: كيفية تعيين مستويات المخطط التفصيلي في Microsoft Word أو التحقق من بنية مستند PDF الناتج وإصلاحه (قم بالتوسيع لرؤية التفاصيل).</summary>
    <p></p>
    <p>في Microsoft Word، يمكن استخدام أنماط "العنوان X" الافتراضية لتعيين مستوى المخطط التفصيلي:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/m-w-heading1-2.png" alt="العنوان 1-2" style="width:800px"/>
    <p>بالإضافة إلى ذلك، يمكن التحقق من مستوى المخطط التفصيلي أو تغييره في نافذة "الفقرة":</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/m-w-outline-level.png" alt="MWOutlineLevel" style="width:800px"/>
    <p>في Acrobat، يمكن التحقق من بنية المستند أو تغييرها في جزء "العلامات":</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/acrobat-tags-pane.png" alt="AcrobatTagsPane" style="width:800px"/>
</details>
{{% /alert %}}

### وضع علامة على المحتوى باعتباره قطعة أثرية

|  مستويات الامتثال القياسية لـ PDF داخل Aspose.Words |  وجود الشرط |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  قوات الدفاع الشعبي/UA-1 |   {{< emoticons/tick >}}   |

في الوقت الحالي، يقوم Aspose.Words بوضع علامة على رؤوس الصفحات وتذييلاتها، وفواصل الملاحظات، وخلايا رأس الجدول المتكررة، والصور المزخرفة على أنها قطع أثرية. لاحظ أنه قد يتم تحديث هذه القائمة في المستقبل.

{{% alert color="secondary" %}}
<details>
    <summary>تخبرنا المواصفات بما يلي (قم بالتوسيع لرؤية التفاصيل):</summary>
    <p></p>
    <p>يمكن تقسيم الكائنات الرسومية الموجودة في المستند إلى فئتين:</p>
    </ol>
      <li>يشتمل المحتوى الحقيقي للمستند على كائنات تمثل مادة قدمها في الأصل مؤلف المستند.</li>
      <li>القطع الأثرية هي كائنات رسومية لا تشكل جزءًا من المحتوى الأصلي للمؤلف، بل يتم إنشاؤها بواسطة الكاتب المطابق في سياق ترقيم الصفحات، أو التخطيط، أو غيرها من العمليات الميكانيكية البحتة.</li>
    </ol>
    <p></p>
    <p>ISO-32000-1، 14.8.2.2.1</p>
</details>
{{% /alert %}}

إذا كان المستند يحتوي على أي محتوى آخر يجب وضع علامة عليه على أنه قطعة أثرية، أو إذا كان أي من المحتوى المصنوع محتوى حقيقيًا، فيجب على العملاء إصلاح ذلك في ملف PDF الناتج.

{{% alert color="secondary" %}}
<details>
    <summary>في هذه المجموعة، يمكنك رؤية أمثلة: كيفية وضع علامة على الأشكال على أنها مزخرفة في Microsoft Word أو وضع علامة على الشكل على أنه قطعة أثرية في مستند PDF الناتج (قم بالتوسيع لرؤية التفاصيل).</summary>
    <p></p>
    <p>على سبيل المثال، يمكن وضع علامة على الأشكال على أنها مزخرفة في Microsoft Word، بحيث سيتم تصديرها إلى PDF كقطعة أثرية:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/m-w-decorative-shape.png" alt="MWDecoratedShape" style="width:800px"/>
    <p>يمكنك وضع علامة على الشكل باعتباره قطعة أثرية في ملف PDF الناتج:</p>
   <img src="/words/net/working-with-pdfa-or-pdfua/acrobat-mark-as-artifact-delete-empty-tag.png" alt="PDFDeleteEmptyTag" style="width:800px"/>
    <p>يمكنك أيضًا تبديل النص في الرأس من العنصر إلى المحتوى الحقيقي في ملف PDF الناتج:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/acrobat-switch-text-in-header.png" alt="AcrobatSwitchTextInHeader" style="width:800px"/>
</details>
{{% /alert %}}

### مواصفات اللغة الطبيعية

|  مستويات الامتثال القياسية لـ PDF داخل Aspose.Words |  وجود الشرط |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  قوات الدفاع الشعبي/UA-1 |   {{< emoticons/tick >}}   |

يتم تحديد لغة النص في مستندات Microsoft Word. يقوم Aspose.Words بتصدير اللغة المحددة إلى ملف PDF الناتج مع سمة *Lang* المرفقة بتسلسل محتوى محدد أو علامة Span - ويتم التحكم فيها بواسطة خاصية [ExportLanguageToSpanTag](https://reference.aspose.com/words/ar/net/aspose.words.saving/pdfsaveoptions/exportlanguagetospantag/). بشكل عام، لا توجد مشكلات لغوية عندما يقوم المستخدم بإدخال النص عبر Microsoft Word. ولكن هناك احتمال أن تكون اللغة غير دقيقة إذا تم إنشاء النص تلقائيًا.

{{% alert color="secondary" %}}
<details>
    <summary>تخبرنا المواصفات بما يلي (قم بالتوسيع لرؤية التفاصيل):</summary>
    <p></p>
    <p>يجب تحديد اللغة الطبيعية الافتراضية لكل النص الموجود في الملف بواسطة إدخال Lang في قاموس كتالوج المستند.</p>
    <p>يجب الإشارة إلى كل المحتوى النصي داخل الملف الذي يختلف عن اللغة الافتراضية باستخدام خاصية `Lang` المرفقة بتسلسل محتوى محدد، أو عن طريق إدخال Lang في قاموس عناصر البنية ...</p>
    <p>ISO-19005-2، 6.7.4</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>بالإضافة إلى ذلك بالنسبة لـ PDF/UA-1، تخبرنا المواصفات بما يلي (قم بالتوسيع لرؤية التفاصيل):</summary>
    <p></p>
    <p>يجب الإعلان عن اللغة الطبيعية... يجب الإعلان عن التغييرات في اللغة الطبيعية.</p>
    <p>ISO-14289-1، 7.2</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>في هذه الكتلة، يمكنك رؤية أمثلة: كيفية التأكد من تحديد اللغة بشكل صحيح (قم بالتوسيع لرؤية التفاصيل).</summary>
    <p></p>
    <p>يجب على المستخدمين التأكد من تحديد اللغة بشكل صحيح في مستند Word المصدر:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/m-w-language.png" alt="لغة ميغاواط" style="width:800px"/>
    <p>أو مستند PDF الناتج:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/acrobat-check-change-language.png" alt="AcrobatCheckChangeLanguage" style="width:800px"/>
</details>
{{% /alert %}}

### التسمية التوضيحية الشكل

|  مستويات الامتثال القياسية لـ PDF داخل Aspose.Words |  وجود الشرط |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-2a |                           |
|  قوات الدفاع الشعبي/UA-1 |   {{< emoticons/tick >}}   |

تسمح مستندات Microsoft Word للمستخدمين بإضافة تسمية توضيحية للأشكال.

{{% alert color="secondary" %}}
<details>
    <summary>تخبرنا المواصفات بما يلي (قم بالتوسيع لرؤية التفاصيل):</summary>
    <p></p>
    <p>يجب أن يتم وضع علامة توضيحية على التسمية التوضيحية المصاحبة للشخصية بعلامة توضيحية.</p>
    <p>ISO-14289-1، 7.3</p>
</details>
{{% /alert %}}

حاليًا، لا يستطيع Aspose.Words تصدير التسميات التوضيحية باستخدام علامة التسمية التوضيحية، لذلك يجب وضع علامة عليها في ملف PDF الناتج.

{{% alert color="secondary" %}}
<details>
    <summary>في هذه الكتلة، يمكنك رؤية أمثلة: كيفية إدراج التسمية التوضيحية (قم بالتوسيع لرؤية التفاصيل).</summary>
    <p></p>
    <p>في Microsoft Word، يمكن إدراج التسمية التوضيحية من خلال قائمة السياق:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/figure-caption-mw.png" alt="الشكل-التسمية التوضيحية-ميغاواط" style="width:800px"/>
    <p>في Acrobat، يمكن إضافة التسمية التوضيحية أو تغييرها عبر مربع حوار خصائص `Object`:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/figure-caption-acrobat.png" alt="الشكل-التسمية التوضيحية-أكروبات" style="width:800px"/>
</details>
{{% /alert %}}

### الأوصاف البديلة

|  مستويات الامتثال القياسية لـ PDF داخل Aspose.Words |  وجود الشرط |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  قوات الدفاع الشعبي/UA-1 |   {{< emoticons/tick >}}   |

تتيح مستندات Microsoft Word للمستخدمين إضافة نص بديل إلى الصور والأشكال والجداول. يقوم Aspose.Words بتصدير مثل هذا النص البديل إلى ملف PDF الناتج.

{{% alert color="secondary" %}}
<details>
    <summary>تخبرنا المواصفات بما يلي (قم بالتوسيع لرؤية التفاصيل):</summary>
    <p></p>
    <p>جميع عناصر البنية التي لا يحتوي محتواها على نظير نصي طبيعي محدد مسبقًا، مثل الصور والصيغ وما إلى ذلك، يجب أن توفر وصفًا نصيًا بديلاً باستخدام إدخال Alt في قاموس عناصر البنية...</p>
    <p>ملحوظة: توفر الأوصاف البديلة أوصافًا نصية تساعد في التفسير الصحيح للمحتوى غير النصي المبهم.</p>
    <p>ISO-19005-2، 6.7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>في هذه الكتلة، يمكنك رؤية الأمثلة: كيفية التأكد من أن جميع العناصر تحتوي على نص بديل (قم بالتوسيع لرؤية التفاصيل).</summary>
    <p></p>
    <p>يجب على المستخدمين التأكد من أن جميع العناصر تحتوي على نص بديل في مستند Word المصدر:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/m-w-table-alt-text.png" alt="MWTableAltText" style="width:800px"/>
    <p></p>
    <img src="/words/net/working-with-pdfa-or-pdfua/m-w-shape-alt-text.png" alt="MWShapeAltText" style="width:800px"/>
    <p>أو مستند PDF الناتج:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/acrobat-table-alt-text.png" alt="AcrobatTableAltText" style="width:800px"/>
    <p></p>
    <img src="/words/net/working-with-pdfa-or-pdfua/acrobat-shape-alt-text.png" alt="AcrobatShapeAltText" style="width:800px"/>
</details>
{{% /alert %}}

### الأوصاف البديلة للارتباطات التشعبية

|  مستويات الامتثال القياسية لـ PDF داخل Aspose.Words |  وجود الشرط |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-2a |                           |
|  قوات الدفاع الشعبي/UA-1 |   {{< emoticons/tick >}}   |

بالإضافة إلى النقطة السابقة، تسمح مستندات Microsoft Word أيضًا للمستخدمين بإضافة نص بديل إلى الارتباطات التشعبية. يقوم Aspose.Words بتصدير مثل هذا النص البديل إلى ملف PDF الناتج.

لسوء الحظ، ليس كل تطبيق يسمح لك بإعداد وصف بديل. على سبيل المثال، لا يتيح Adobe Acrobat حاليًا إعداد مثل هذا الوصف للارتباطات التشعبية. ولكن في Microsoft Word، يمكنك القيام بذلك على النحو التالي:

<img src="/words/net/working-with-pdfa-or-pdfua/alternate-descriptions-hyperlinks-mw.png" alt="الأوصاف بديل-الارتباطات التشعبية-mw" style="width:800px"/>

في بعض الأحيان تكون هناك مشكلة تتمثل في عدم إمكانية تعيين نص بديل للارتباطات التشعبية التي تم إنشاؤها تلقائيًا في جدول المحتويات (TOC) من خلال Microsoft Word GUI. يمكن لـ Aspose.Words تحديث هذه الحقول وإنشاء الروابط من تلقاء نفسها.

اتبع مثال الكود لتحديث حقول `TOC` باستخدام Aspose.Words Document Object Model (DOM):

{{< highlight csharp >}}
Document doc = new Document(fileName);

	var tocHyperLinks = doc.Range.Fields
		.Where(f => f.Type == FieldType.FieldHyperlink)
		.Cast<FieldHyperlink>()
		.Where(f => f.HRef.StartsWith("#_Toc"));
	
	foreach (FieldHyperlink link in tocHyperLinks)
		link.ScreenTip = link.DisplayResult;
	
	PdfSaveOptions opt = new PdfSaveOptions()
	{
		Compliance = PdfCompliance.PdfUa1,
		DisplayDocTitle = true,
		ExportDocumentStructure = true,
	};
	opt.OutlineOptions.HeadingsOutlineLevels = 3;
	opt.OutlineOptions.CreateMissingOutlineLevels = true;
	
	var outFile = Path.ChangeExtension(fileName, "_aw.pdf");
	doc.Save(outFile, opt);
{{< /highlight >}}

### رؤوس الجدول

|  مستويات الامتثال القياسية لـ PDF داخل Aspose.Words |  وجود الشرط |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-2a |                           |
|  قوات الدفاع الشعبي/UA-1 |   {{< emoticons/tick >}}   |

يجب أن تحتوي الجداول الموجودة في مستندات PDF/UA-1 على رؤوس - عمود أو صف أو كليهما. يتطلب PDF/A فقط ترميز جدول قياسي، وليس له أي قيود إضافية. لاحظ أن Aspose.Words يقوم بإنشاء ترميز الجدول القياسي تلقائيًا.

{{% alert color="secondary" %}}
<details>
    <summary>تخبرنا المواصفات بما يلي (قم بالتوسيع لرؤية التفاصيل):</summary>
    <p></p>
    <p>يجب أن تتضمن الجداول رؤوسًا... يمكن أن تحتوي الجداول على رؤوس أعمدة أو رؤوس صفوف أو كليهما.</p>
    <p>ISO-14289-1، 7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>في هذه الكتلة، يمكنك رؤية أمثلة: كيفية تعيين رأس الجدول (قم بالتوسيع لرؤية التفاصيل).</summary>
    <p></p>
    <p>يمكن إعداد رأس الجدول إما في مستند Microsoft Word المصدر:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/table-headers-mw.png" alt="رؤوس الجدول ميغاواط" style="width:800px"/>
    <p>أو ملف PDF الناتج:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/table-headers-acrobat-header-cell.png" alt="رؤوس الجدول-أكروبات-رأس الخلية" style="width:800px"/>
    <p></p>
    <img src="/words/net/working-with-pdfa-or-pdfua/table-headers-acrobat-scope1.png" alt="رؤوس الجدول - نطاق أكروبات 1" style="width:800px"/>
    <p></p>
    <img src="/words/net/working-with-pdfa-or-pdfua/table-headers-acrobat-scope2.png" alt="رؤوس الجدول - نطاق أكروبات 2" style="width:800px"/>
</details>
{{% /alert %}}

### نص بديل

|  مستويات الامتثال القياسية لـ PDF داخل Aspose.Words |  وجود الشرط |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  قوات الدفاع الشعبي/UA-1 |                           |

{{% alert color="secondary" %}}
<details>
    <summary>تخبرنا المواصفات بما يلي (قم بالتوسيع لرؤية التفاصيل):</summary>
    <p></p>
    <p>المواصفات تخبرنا بما يلي:</p>
    <p>جميع عناصر البنية النصية التي يتم تمثيلها بطريقة غير قياسية، على سبيل المثال، الأحرف المخصصة أو الرسومات المضمنة، يجب أن توفر نصًا بديلاً باستخدام إدخال `ActualText` في قاموس عناصر البنية...</p>
    <p>ISO-19005-2، 6.7.7</p>
</details>
{{% /alert %}}

لا يسمح مستند Microsoft Word للمستخدمين بتعيين نص بديل. لذلك يجب التحقق من ذلك وإصلاحه في ملف PDF الناتج:

<img src="/words/net/working-with-pdfa-or-pdfua/acrobat-replacement-text.png" alt="AcrobatReplacementText" style="width:800px"/>

### الاختصارات والمختصرات التوسعات

|  مستويات الامتثال القياسية لـ PDF داخل Aspose.Words |  وجود الشرط |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  قوات الدفاع الشعبي/UA-1 |                           |

{{% alert color="secondary" %}}
<details>
    <summary>تخبرنا المواصفات بما يلي (قم بالتوسيع لرؤية التفاصيل):</summary>
    <p></p>
    <p>يجب وضع جميع حالات الاختصارات والمختصرات في المحتوى النصي في تسلسل محتوى مميز مع علامة Span التي توفر خاصيتها E توسيعًا نصيًا للاختصار أو الاختصار...</p>
<p>ISO-19005-2، 6.7.8</p>
</details>
{{% /alert %}}

لا يسمح مستند Microsoft Word للمستخدمين بتعيين الاختصارات وتوسعات المختصرات. لذلك يجب التحقق من ذلك وإصلاحه في ملف PDF الناتج:

<img src="/words/net/working-with-pdfa-or-pdfua/acrobat-split-add-expansion-text.png" alt="AcrobatSplitAddExpansionText" style="width:800px"/>

## عنوان الوثيقة

|  مستويات الامتثال القياسية لـ PDF داخل Aspose.Words |  وجود الشرط |
|  --------------------------------------------------  |  ------------------------------------------------------------  |
|  PDF/A-1a |                                                                |
|  PDF/A-2a |                                                                |
|  PDF/A-4 |                                                                |
|  قوات الدفاع الشعبي/UA-1 |  {{< emoticons/tick >}}<br /> يجب أن يكون للمستند بتنسيق PDF/UA-1 عنوان |

{{% alert color="secondary" %}}
<details>
    <summary>تخبرنا المواصفات بما يلي (قم بالتوسيع لرؤية التفاصيل):</summary>
    <p></p>
    <p>المواصفات تخبرنا بما يلي:</p>
    <p>يجب أن يحتوي تدفق البيانات التعريفية في قاموس كتالوج الوثيقة على إدخال dc:title، حيث dc هي البادئة الموصى بها لمخطط بيانات تعريف Dublin Core...</p>
    <p>ISO-14289-1، 7.1</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>في هذه الكتلة، يمكنك رؤية أمثلة: كيفية تعيين عنوان المستند (قم بالتوسيع لرؤية التفاصيل).</summary>
    <p></p>
    <p>يمكن إعداد عنوان المستند إما في مستند Microsoft Word المصدر:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/document-title-mw.png" alt="وثيقة عنوان ميغاواط" style="width:800px"/>
    <p>أو ملف PDF الناتج:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/document-title-acrobat.png" alt="وثيقة عنوان أكروبات" style="width:800px"/>
</details>
{{% /alert %}}

## متطلبات الخط

|  مستويات الامتثال القياسية لـ PDF داخل Aspose.Words |  وجود الشرط |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-1b |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2u |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  قوات الدفاع الشعبي/UA-1 |   {{< emoticons/tick >}}   |

يوجد أيضًا عدد من الفروق الدقيقة في العمل مع الخطوط عند التحويل إلى تنسيقات PDF/A-1 أو PDF/A-2 أو PDF/A-4 أو PDF/UA-1 باستخدام Aspose.Words. يجب أن تؤخذ في الاعتبار إذا كنت تريد تجنب المشاكل المحتملة في مستند الإخراج.

تصف الأقسام أدناه هذه الفروق الدقيقة والخيارات لحلها.

### المتطلبات القانونية للخط

|  مستويات الامتثال القياسية لـ PDF داخل Aspose.Words |  وجود الشرط |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-1b |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2u |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  قوات الدفاع الشعبي/UA-1 |   {{< emoticons/tick >}}   |

لا يتحقق Aspose.Words من القيود القانونية للخطوط المستخدمة – فالأمر متروك للمستخدمين. بمعنى آخر، لا ينبغي للمستخدم توفير خطوط غير مناسبة لتحويل PDF باستخدام Aspose.Words.

{{% alert color="secondary" %}}
<details>
    <summary>تخبرنا المواصفات بما يلي (قم بالتوسيع لرؤية التفاصيل):</summary>
    <p></p>
    <p>يجب استخدام برامج الخطوط التي يمكن تضمينها قانونيًا في ملف للعرض العالمي غير المحدود فقط.</p>
    <p>ISO-19005-2، 6.2.11.4.1؛ ISO-14289-1، 7.21.4.1 (نفس علامات الاقتباس تمامًا في مواصفتين)</p>
</details>
{{% /alert %}}

### نوتديف Glyph

|  مستويات الامتثال القياسية لـ PDF داخل Aspose.Words |  وجود الشرط |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-1b |                           |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2u |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  قوات الدفاع الشعبي/UA-1 |   {{< emoticons/tick >}}   |

يحظر استخدام `.notdef` glyph. سيظهر `.notdef` glyph إذا كان المستند يحتوي على أحرف غير موجودة في الخط المحدد والتي لا يمكن حلها أيضًا عبر آلية Font Fallback.

{{% alert color="secondary" %}}
<details>
    <summary>تخبرنا المواصفات بما يلي (قم بالتوسيع لرؤية التفاصيل):</summary>
    <p></p>
    <p>يجب ألا تحتوي الوثيقة المطابقة على إشارة إلى .notdef glyph من أي نص يظهر عوامل التشغيل، بغض النظر عن وضع عرض النص، في أي تدفق محتوى.</p>
    <p>ISO-19005-2، 6.2.11.8؛ ISO-14289-1، 7.21.8 (نفس علامات الاقتباس تمامًا في مواصفتين)</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>في هذه الكتلة، يمكنك رؤية أمثلة: كيفية إزالة هذه الأحرف أو استبدالها (قم بالتوسيع لرؤية التفاصيل).</summary>
    <p></p>
    <p>يجب على المستخدمين إزالة هذه الأحرف أو استبدالها في مستند Word المصدر:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/m-w-notdef-glyph.png" alt="MWNotdefGlyph" style="width:800px"/>
    <p>أو مستند PDF الناتج باستخدام أداة "Edit PDF":</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/acrobat-remove-notdef-glyph-edit-pdf-tool.png" alt="AcrobatRemoveNotdefGlyph-EditPdfTool" style="width:800px"/>
</details>
{{% /alert %}}

### منطقة الاستخدام الخاص (PUA)

|  مستويات الامتثال القياسية لـ PDF داخل Aspose.Words |  وجود الشرط |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-1b |                           |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2u |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  قوات الدفاع الشعبي/UA-1 |                           |

تظهر أحرف منطقة الاستخدام الخاص (PUA) في الغالب لخطوط Windows الرمزية مثل "Symbol" و"Wingdings" و"Webdings" وغيرها. لا توفر تنسيقات Microsoft Word خيارًا لتخزين النص الفعلي للأحرف.

{{% alert color="secondary" %}}
<details>
    <summary>تخبرنا المواصفات بما يلي (قم بالتوسيع لرؤية التفاصيل):</summary>
    <p></p>
    <p>بالنسبة لمطابقة المستوى أ فقط، ولأي حرف ... تم تعيينه إلى رمز أو أكواد في منطقة الاستخدام الخاص Unicode (PUA)، يجب أن يكون إدخال النص الفعلي ... موجودًا لهذا الحرف أو سلسلة من الأحرف منها الشخصية هي جزء.</p>
    <p>ISO-19005-2، 6.2.11.7.3</p>
</details>
{{% /alert %}}

"Segoe UI Icon" هو خط Windows Unicode والذي يمكن استخدامه كبديل للخطوط الرمزية.

{{% alert color="secondary" %}}
<details>
    <summary>في هذه الكتلة، يمكنك رؤية أمثلة: ما يجب على المستخدم فعله لحل مشكلة الخطوط الرمزية (قم بالتوسيع لرؤية التفاصيل).</summary>
    <p></p>
    <p>استبدل الخط الرمزي بخط Unicode في مستند Word المصدر:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/m-w-insert-symbol.png" alt="MWinsertSymbol" style="width:800px"/>
    <p>أو قم بإضافة إدخال ActualText إلى الأحرف الإشكالية في مستند PDF الناتج:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/acrobat-span-tag-actual-text.png" alt="AcrobatSpanTagActualText" style="width:800px"/>
</details>
{{% /alert %}}
