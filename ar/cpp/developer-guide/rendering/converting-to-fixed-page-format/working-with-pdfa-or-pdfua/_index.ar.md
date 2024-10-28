---
title: العمل مع PDF/A أو PDF/UA
second_title: Aspose.Words ل C++
articleTitle: العمل مع PDF/A أو PDF/UA
linktitle: العمل مع PDF/A أو PDF/UA
description: "تحويل إلى PDF/A-1, PDF/A-2, PDF/A-4 و PDF/UA باستخدام C++. هناك بعض المشاكل عند التحويل إلى PDF/A المستندات، و Aspose.Words ل C++ يحل لهم."
type: docs
weight: 38
url: /ar/cpp/working-with-pdfa-or-pdfua/
---

يفرض تنسيق PDF/A و PDF/UA العديد من المتطلبات المتعلقة بمحتوى المستند والتي لا يمكن الوفاء بها أثناء التحويل التلقائي من مستند بتنسيق ورد إلى PDF. يجب التحقق من هذه المتطلبات وتصحيحها إما في مستند ورد قبل التحويل أو في مستند PDF بعد التحويل من أجل إنتاج مستند متوافق PDF/A و PDF/UA بالكامل.

المتطلبات الأساسية هي لهيكل أو خطوط وثيقة PDF/A و PDF/UA، والتي سننظر فيها في الأقسام التالية.

{{% alert color="primary" %}}

يرجى ملاحظة أن PDF/UA-1 الناتج سيكون أيضا WCAG 2.0 والقسم 508 متوافقة.

{{% /alert %}}

## متطلبات هيكل الوثيقة

المتطلبات الحالية هي ل PDF/A-1a, PDF/A-2a, PDF/A-4, و PDF/UA-1 التنسيقات.

هناك بعض الفروق الدقيقة في كيفية عمل Aspose.Words عند التحويل إلى معايير تنسيق PDF مختلفة. يجب أن تؤخذ بعين الاعتبار إذا كنت ترغب في الحصول على النتيجة المتوقعة.

{{% alert color="primary" %}}

لاحظ أنه لا توجد متطلبات بنية منطقية لـ PDF/A-4. لهذا السبب، لا نعتبر الإصدار PDF/A-4 في قسم "متطلبات بنية المستند" هذا.

{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>المواصفات تخبرنا بما يلي (توسيع لرؤية التفاصيل):</summary>
    <p></p>
    <p>من غير المستحسن للكتاب توليد معلومات هيكلية أو دلالية باستخدام العمليات الآلية دون التحقق المناسب.</p>
    <p>ISO 19005-2, 6.7.1</p>
</details>
{{% /alert %}}

تصف الأقسام الفرعية أدناه الفروق الدقيقة في كيفية عمل Aspose.Words عند التحويل إلى معايير وخيارات تنسيق PDF مختلفة لحلها.

### نوع الهيكل

| PDF مستويات الامتثال القياسية داخل Aspose.Words | وجود الشرط |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

المستند PDF عبارة عن سلسلة من الكتل مثل العناوين والفقرات والجداول وغيرها. تشكل هذه الكتل بنية وثيقة-قوية أو ضعيفة.

كل من الهياكل القوية والضعيفة صالحة لـ PDF/A. تحتوي المستندات Microsoft Word على بنية ضعيفة حسب التصميم، و Aspose.Words ينشئ PDF مع البنية الضعيفة على التوالي وينشئ أيضا عناوين وفقا لمستويات المخطط التفصيلي للفقرات في المستند المصدر.

بالنسبة لمستند PDF/UA-1 بهيكل ضعيف، يلزم أيضا أن يتم ترتيب أرقام العناوين بدون ثغرات.

{{% alert color="secondary" %}}
<details>
    <summary>المواصفات تخبرنا بما يلي (توسيع لرؤية التفاصيل):</summary>
    <p></p>
    <p>قد يتبع الهيكل على مستوى الكتلة أحد نموذجين رئيسيين:</p>
    </ol>
      <li>منظم بقوة. تتداخل عناصر التجميع مع العديد من المستويات حسب الضرورة لتعكس تنظيم المادة في مقالات وأقسام وأقسام فرعية وما إلى ذلك. في كل مستوى، يجب أن تتكون العناصر الفرعية لعنصر التجميع من عنوان (ح)، وفقرة واحدة أو أكثر (ع) للمحتوى على هذا المستوى، وربما عنصر تجميع إضافي واحد أو أكثر للأقسام الفرعية المتداخلة.</li>
      <li>منظم ضعيف. الوثيقة مسطحة نسبيا، وربما تحتوي على مستوى واحد أو مستويين فقط من عناصر التجميع، مع جميع العناوين والفقرات وغيرها BLSEs كأطفالهم المباشرين. في هذه الحالة، لا ينعكس تنظيم المادة في الهيكل المنطقي ؛ ومع ذلك، يمكن التعبير عنها باستخدام عناوين ذات مستويات محددة(H1–H6).</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.4.3.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>بالنسبة للمستندات PDF/UA-1، تحتوي المواصفات على إضافة تتعلق بمستويات العناوين (توسيع للاطلاع على التفاصيل):</summary>
    <p></p>
    <p>إذا كانت دلالات المستند تتطلب تسلسلا تنازليا للرؤوس، فيجب أن يستمر هذا التسلسل بترتيب رقمي صارم ويجب ألا يتخطى مستوى العنوان المتداخل. H1 H2 H3 جائز، بينما H1 H3 ليس كذلك.</p>
    <p>ISO-14289-1, 7.4.2</p>
</details>
{{% /alert %}}

لضمان الإخراج الصحيح، يجب على المستخدمين التأكد من أن محتوى المستند المصدر منظم بشكل صحيح وأن مستويات المخطط التفصيلي محددة بشكل صحيح للفقرات. خلاف ذلك، يجب على المستخدم التحقق من هيكل الناتج PDF المستند وإصلاحه.

{{% alert color="secondary" %}}
<details>
    <summary>في هذه الكتلة، يمكنك الاطلاع على أمثلة: كيفية تعيين مستويات المخطط التفصيلي في Microsoft Word أو التحقق من بنية مستند الإخراج PDF وإصلاحها (توسيع لرؤية التفاصيل).</summary>
    <p></p>
    <p>في Microsoft Word يمكن استخدام أنماط "العنوان س" الافتراضية لتعيين مستوى المخطط التفصيلي:</p>
    <img src="m-w-heading1-2.png" alt="MWHeading1-2" style="width:800px"/>
    <p>بالإضافة إلى ذلك، يمكن التحقق من مستوى المخطط التفصيلي أو تغييره في نافذة " الفقرة:</p>
    <img src="m-w-outline-level.png" alt="MWOutlineLevel" style="width:800px"/>
    <p>في أكروبات، يمكن التحقق من بنية المستند أو تغييرها في جزء " العلامات:</p>
    <img src="acrobat-tags-pane.png" alt="AcrobatTagsPane" style="width:800px"/>
</details>
{{% /alert %}}

### وضع علامة على المحتوى باعتباره قطعة أثرية

| PDF مستويات الامتثال القياسية داخل Aspose.Words | وجود الشرط |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

في الوقت الحالي، يمثل Aspose.Words رؤوس الصفحات وتذييلاتها وفواصل الملاحظات وخلايا رأس الجدول المتكررة والصور الزخرفية كتحف. لاحظ أنه قد يتم تحديث هذه القائمة في المستقبل.

{{% alert color="secondary" %}}
<details>
    <summary>المواصفات تخبرنا بما يلي (توسيع لرؤية التفاصيل):</summary>
    <p></p>
    <p>يمكن تقسيم كائنات الرسومات في المستند إلى فئتين:</p>
    </ol>
      <li>يشتمل المحتوى الحقيقي للمستند على كائنات تمثل مادة قدمها مؤلف المستند في الأصل.</li>
      <li>القطع الأثرية هي كائنات رسومية ليست جزءا من المحتوى الأصلي للمؤلف ولكن يتم إنشاؤها بواسطة الكاتب المطابق في سياق ترقيم الصفحات أو التخطيط أو غيرها من العمليات الميكانيكية الصارمة.</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.2.2.1</p>
</details>
{{% /alert %}}

إذا كان المستند يحتوي على أي محتوى آخر يجب وضع علامة عليه كقطعة أثرية، أو إذا كان أي من المحتوى المصنوع يدويا محتوى حقيقيا، فيجب على العملاء إصلاح ذلك في الإخراج PDF.

{{% alert color="secondary" %}}
<details>
    <summary>في هذه الكتلة، يمكنك الاطلاع على أمثلة: كيفية وضع علامة على الأشكال كزخرفة في Microsoft Word أو وضع علامة على الشكل كقطعة أثرية في مستند الإخراج PDF (قم بالتوسع لرؤية التفاصيل).</summary>
    <p></p>
    <p>على سبيل المثال، يمكن تمييز الأشكال على أنها زخرفية في Microsoft Word، لذلك سيتم تصديرها إلى PDF كقطعة أثرية:</p>
    <img src="m-w-decorative-shape.png" alt="MWDecorativeShape" style="width:800px"/>
    <p>يمكنك وضع علامة على الشكل كقطعة أثرية في الإخراج PDF:</p>
   <img src="acrobat-mark-as-artifact-delete-empty-tag.png" alt="PdfDeleteEmptyTag" style="width:800px"/>
    <p>أيضا، يمكنك تبديل النص في رأس من الأداة إلى المحتوى الحقيقي في الإخراج PDF:</p>
    <img src="acrobat-switch-text-in-header.png" alt="AcrobatSwitchTextInHeader" style="width:800px"/>
</details>
{{% /alert %}}

### مواصفات اللغة الطبيعية

| PDF مستويات الامتثال القياسية داخل Aspose.Words | وجود الشرط |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

يتم تحديد لغة النص في Microsoft Word الوثائق. Aspose.Words تصدر اللغة المحددة إلى إخراج PDF مع السمة *Lang* المرفقة بتسلسل محتوى محدد أو علامة امتداد-يتم التحكم فيها بواسطة خاصية [ExportLanguageToSpanTag](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_exportlanguagetospantag/). بشكل عام، لا توجد مشكلات في اللغة عند إدخال النص بواسطة المستخدم عبر Microsoft Word. ولكن هناك احتمال أن تكون اللغة غير دقيقة إذا تم إنشاء النص تلقائيا.

{{% alert color="secondary" %}}
<details>
    <summary>المواصفات تخبرنا بما يلي (توسيع لرؤية التفاصيل):</summary>
    <p></p>
    <p>يجب تحديد اللغة الطبيعية الافتراضية لجميع النصوص في الملف بواسطة إدخال لانج في قاموس كتالوج المستند.</p>
    <p>يجب الإشارة إلى كل المحتوى النصي داخل ملف يختلف عن اللغة الافتراضية باستخدام `Lang` خاصية مرفقة بتسلسل محتوى محدد، أو عن طريق إدخال لانج في قاموس عنصر البنية ...</p>
    <p>ISO-19005-2, 6.7.4</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>بالإضافة إلى PDF/UA-1، تخبرنا المواصفات بما يلي (توسيع لرؤية التفاصيل):</summary>
    <p></p>
    <p>تعلن اللغة الطبيعية-تعلن التغييرات في اللغة الطبيعية.</p>
    <p>ISO-14289-1, 7.2</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>في هذه الكتلة، يمكنك الاطلاع على أمثلة: كيفية التأكد من تحديد اللغة بشكل صحيح (توسيع لرؤية التفاصيل).</summary>
    <p></p>
    <p>يجب على المستخدمين التأكد من تحديد اللغة بشكل صحيح في مستند الكلمة المصدر:</p>
    <img src="m-w-language.png" alt="MWLanguage" style="width:800px"/>
    <p>أو الإخراج PDF وثيقة:</p>
    <img src="acrobat-check-change-language.png" alt="AcrobatCheckChangeLanguage" style="width:800px"/>
</details>
{{% /alert %}}

### شرح الشكل

| PDF مستويات الامتثال القياسية داخل Aspose.Words | وجود الشرط |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/UA-1 | {{< emoticons/tick >}} |

Microsoft Word وثائق تسمح للمستخدمين بإضافة شرح الشكل.

{{% alert color="secondary" %}}
<details>
    <summary>المواصفات تخبرنا بما يلي (توسيع لرؤية التفاصيل):</summary>
    <p></p>
    <p>يجب وضع علامة على التسمية التوضيحية المصاحبة للرقم بعلامة التسمية التوضيحية.</p>
    <p>ISO-14289-1, 7.3</p>
</details>
{{% /alert %}}

حاليا Aspose.Words لا يمكن تصدير التسميات التوضيحية بعلامة التسمية التوضيحية، لذلك يجب وضع علامة عليها في الإخراج PDF.

{{% alert color="secondary" %}}
<details>
    <summary>في هذه الكتلة، يمكنك الاطلاع على أمثلة: كيفية إدراج التسمية التوضيحية (توسيع لرؤية التفاصيل).</summary>
    <p></p>
    <p>في Microsoft Word، يمكن إدراج التسمية التوضيحية من خلال قائمة السياق:</p>
    <img src="figure-caption-mw.png" alt="figure-caption-mw" style="width:800px"/>
    <p>في أكروبات، يمكن إضافة التسمية التوضيحية أو تغييرها عبر مربع حوار `Object` خصائص:</p>
    <img src="figure-caption-acrobat.png" alt="figure-caption-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

### أوصاف بديلة

| PDF مستويات الامتثال القياسية داخل Aspose.Words | وجود الشرط |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Microsoft Word تسمح المستندات للمستخدمين بإضافة نص بديل إلى الصور والأشكال والجداول. Aspose.Words يصدر مثل هذا النص البديل إلى الناتج PDF.

{{% alert color="secondary" %}}
<details>
    <summary>المواصفات تخبرنا بما يلي (توسيع لرؤية التفاصيل):</summary>
    <p></p>
    <p>جميع عناصر البنية التي لا يحتوي محتواها على نظير نصي طبيعي محدد مسبقا، مثل الصور والصيغ وما إلى ذلك.، يجب توفير وصف نصي بديل باستخدام إدخال ألت في قاموس عنصر الهيكل...</p>
    <p>NOTE توفر الأوصاف البديلة أوصافا نصية تساعد في التفسير الصحيح للمحتوى غير النصي غير الشفاف.</p>
    <p>ISO-19005-2, 6.7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>في هذه المجموعة، يمكنك الاطلاع على أمثلة: كيفية التأكد من أن جميع العناصر تحتوي على نص بديل (توسيع لرؤية التفاصيل).</summary>
    <p></p>
    <p>يجب على المستخدمين التأكد من أن جميع العناصر لها نص بديل في مستند الكلمة المصدر:</p>
    <img src="m-w-table-alt-text.png" alt="MWTableAltText" style="width:800px"/>
    <p></p>
    <img src="m-w-shape-alt-text.png" alt="MWShapeAltText" style="width:800px"/>
    <p>أو الإخراج PDF وثيقة:</p>
    <img src="acrobat-table-alt-text.png" alt="AcrobatTableAltText" style="width:800px"/>
    <p></p>
    <img src="acrobat-shape-alt-text.png" alt="AcrobatShapeAltText" style="width:800px"/>
</details>
{{% /alert %}}

### أوصاف بديلة للارتباطات التشعبية

| PDF مستويات الامتثال القياسية داخل Aspose.Words | وجود الشرط |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/UA-1 | {{< emoticons/tick >}} |

بالإضافة إلى النقطة السابقة، تتيح المستندات Microsoft Word للمستخدمين أيضا إضافة نص بديل إلى الارتباطات التشعبية. Aspose.Words يصدر مثل هذا النص البديل إلى الناتج PDF.

لسوء الحظ، لا يسمح لك كل تطبيق بإعداد وصف بديل. على سبيل المثال، لا يمكن Adobe Acrobat حاليا إعداد مثل هذا الوصف للارتباطات التشعبية. ولكن في Microsoft Word، يمكنك القيام بذلك على النحو التالي:

<img src="alternate-descriptions-hyperlinks-mw.png" alt="alternate-descriptions-hyperlinks-mw" style="width:800px"/>

في بعض الأحيان تكون هناك مشكلة في أنه لا يمكن تعيين نص بديل للارتباطات التشعبية التي تم إنشاؤها تلقائيا في جدول المحتويات (TOC) من خلال Microsoft Word GUI. Aspose.Words يمكن تحديث هذه الحقول وإنشاء الروابط من تلقاء نفسها.

اتبع مثال الكود لتحديث `TOC` الحقول باستخدام Aspose.Words نموذج كائن المستند (DOM):

{{< highlight cpp >}}
auto doc = MakeObject<Document>(filename);
auto tocHyperLinks = doc->get_Range()->get_Fields()->
    LINQ_Where([](SharedPtr<Field> f) {return f->get_Type() == FieldType::FieldHyperlink; })->            
    LINQ_Where([](SharedPtr<FieldHyperlink> f) { return f->get_DisplayResult().StartsWith(u"#_Toc"); });

for (const auto& link : tocHyperLinks)
    link->set_ScreenTip(link->get_DisplayResult());

auto opt = MakeObject<PdfSaveOptions>();
opt->set_Compliance(PdfCompliance::PdfUa1);
opt->set_DisplayDocTitle(true);
opt->set_ExportDocumentStructure(true);
opt->get_OutlineOptions()->set_HeadingsOutlineLevels(3);
opt->get_OutlineOptions()->set_CreateMissingOutlineLevels(true);

auto outFile = filename.substr(0, filename.find_last_of('.')) + "_aw.pdf";
doc->Save(outFile, opt);
{{< /highlight >}}

### رؤوس الجدول

| PDF مستويات الامتثال القياسية داخل Aspose.Words | وجود الشرط |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/UA-1 | {{< emoticons/tick >}} |

يجب أن تحتوي الجداول في المستندات PDF/UA-1 على رؤوس-عمود أو صف أو كليهما. PDF/A يتطلب فقط ترميز الجدول القياسي، والذي لا يحتوي على قيود إضافية. لاحظ أن Aspose.Words يولد ترميز الجدول القياسي تلقائيا.

{{% alert color="secondary" %}}
<details>
    <summary>المواصفات تخبرنا بما يلي (توسيع لرؤية التفاصيل):</summary>
    <p></p>
    <p>يجب أن تتضمن الجداول رؤوس-يمكن أن تحتوي الجداول على رؤوس أعمدة أو رؤوس صف أو كليهما.</p>
    <p>ISO-14289-1, 7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>في هذه الكتلة، يمكنك الاطلاع على أمثلة: كيفية تعيين رأس الجدول (توسيع لرؤية التفاصيل).</summary>
    <p></p>
    <p>يمكن إعداد رأس الجدول إما المصدر Microsoft Word وثيقة:</p>
    <img src="table-headers-mw.png" alt="table-headers-mw" style="width:800px"/>
    <p>أو الإخراج PDF:</p>
    <img src="table-headers-acrobat-header-cell.png" alt="table-headers-acrobat-header-cell" style="width:800px"/>
    <p></p>
    <img src="table-headers-acrobat-scope1.png" alt="table-headers-acrobat-scope1" style="width:800px"/>
    <p></p>
    <img src="table-headers-acrobat-scope2.png" alt="table-headers-acrobat-scope2" style="width:800px"/>
</details>
{{% /alert %}}

### نص بديل

| PDF مستويات الامتثال القياسية داخل Aspose.Words | وجود الشرط |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 |  |

{{% alert color="secondary" %}}
<details>
    <summary>المواصفات تخبرنا بما يلي (توسيع لرؤية التفاصيل):</summary>
    <p></p>
    <p>تخبرنا المواصفات بما يلي:</p>
    <p>يجب أن توفر جميع عناصر البنية النصية التي يتم تمثيلها بطريقة غير قياسية، على سبيل المثال، الأحرف المخصصة أو الرسومات المضمنة، نصا بديلا باستخدام الإدخال `ActualText` في قاموس عنصر البنية...</p>
    <p>ISO-19005-2, 6.7.7</p>
</details>
{{% /alert %}}

Microsoft Word لا يسمح المستند للمستخدمين بتعيين نص بديل. لذلك يجب التحقق من هذا وتثبيته في الإخراج PDF:

<img src="acrobat-replacement-text.png" alt="AcrobatReplacementText" style="width:800px"/>

### الاختصارات والاختصارات التوسعات

| PDF مستويات الامتثال القياسية داخل Aspose.Words | وجود الشرط |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 |  |

{{% alert color="secondary" %}}
<details>
    <summary>المواصفات تخبرنا بما يلي (توسيع لرؤية التفاصيل):</summary>
    <p></p>
    <p>يجب وضع جميع مثيلات الاختصارات والمختصرات في المحتوى النصي في تسلسل محتوى محدد بعلامة امتداد توفر خاصية البريد الخاصة بها توسعا نصيا للاختصار أو الاختصار...</p>
<p>ISO-19005-2, 6.7.8</p>
</details>
{{% /alert %}}

Microsoft Word وثيقة لا تسمح للمستخدمين لتعيين الاختصارات والاختصارات التوسعات. لذلك يجب التحقق من هذا وتثبيته في الإخراج PDF:

<img src="acrobat-split-add-expansion-text.png" alt="AcrobatSplitAddExpansionText" style="width:800px"/>

## عنوان الوثيقة

| PDF مستويات الامتثال القياسية داخل Aspose.Words | وجود الشرط |
| -------------------------------------------------- | ------------------------------------------------------------ |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/A-4 |  |
| PDF/UA-1 | {{< emoticons/tick >}}<br />يجب أن يكون للوثيقة في PDF/UA-1 عنوان. |

{{% alert color="secondary" %}}
<details>
    <summary>المواصفات تخبرنا بما يلي (توسيع لرؤية التفاصيل):</summary>
    <p></p>
    <p>تخبرنا المواصفات بما يلي:</p>
    <p>يجب أن يحتوي دفق البيانات الوصفية في قاموس كتالوج المستند على دس: إدخال العنوان، حيث دس هو البادئة الموصى بها لمخطط البيانات الوصفية الأساسية في دبلن…</p>
    <p>ISO-14289-1, 7.1</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>في هذه المجموعة، يمكنك الاطلاع على أمثلة: كيفية تعيين عنوان المستند (توسيع للاطلاع على التفاصيل).</summary>
    <p></p>
    <p>يمكن إعداد عنوان المستند إما المصدر Microsoft Word المستند:</p>
    <img src="document-title-mw.png" alt="document-title-mw" style="width:800px"/>
    <p>أو الإخراج PDF:</p>
    <img src="document-title-acrobat.png" alt="document-title-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

## متطلبات الخط

| PDF مستويات الامتثال القياسية داخل Aspose.Words | وجود الشرط |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-1b | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

هناك أيضا عدد من الفروق الدقيقة في العمل مع الخطوط عند التحويل إلى PDF/A-1, PDF/A-2, PDF/A-4 أو PDF/UA-1 التنسيقات باستخدام Aspose.Words. يجب أن تؤخذ في الاعتبار إذا كنت ترغب في تجنب المشاكل المحتملة مع مستند الإخراج.

تصف الأقسام أدناه هذه الفروق الدقيقة والخيارات لحلها.

### المتطلبات القانونية للخط

| PDF مستويات الامتثال القياسية داخل Aspose.Words | وجود الشرط |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-1b | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Aspose.Words لا يتحقق من القيود القانونية للخطوط المستخدمة-الأمر متروك للمستخدمين. بمعنى آخر، يجب على المستخدم عدم تقديم خطوط غير مناسبة للتحويل PDF باستخدام Aspose.Words.

{{% alert color="secondary" %}}
<details>
    <summary>المواصفات تخبرنا بما يلي (توسيع لرؤية التفاصيل):</summary>
    <p></p>
    <p>يجب استخدام برامج الخطوط التي يمكن تضمينها قانونا في ملف لتقديم غير محدود وعالمي فقط.</p>
    <p>ISO-19005-2, 6.2.11.4.1; ISO-14289-1, 7.21.4.1 (بالضبط نفس الاقتباسات في اثنين من المواصفات)</p>
</details>
{{% /alert %}}

### .ندف Glyph

| PDF مستويات الامتثال القياسية داخل Aspose.Words | وجود الشرط |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-1b |  |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

استخدام `.notdef` الصورة الرمزية محظور. سيظهر الحرف الرسومي `.notdef` إذا كان المستند يحتوي على أحرف غير موجودة في الخط المحدد والتي لا يمكن حلها أيضا عبر آلية احتياطي الخط.

{{% alert color="secondary" %}}
<details>
    <summary>المواصفات تخبرنا بما يلي (توسيع لرؤية التفاصيل):</summary>
    <p></p>
    <p>يجب ألا تحتوي الوثيقة المطابقة على إشارة إلى .نوتديف الصورة الرمزية من أي من النص تظهر المشغلين، بغض النظر عن وضع تقديم النص، في أي تيار المحتوى.</p>
    <p>ISO-19005-2, 6.2.11.8; ISO-14289-1, 7.21.8 (بالضبط نفس الاقتباسات في اثنين من المواصفات)</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>في هذه الكتلة، يمكنك الاطلاع على أمثلة: كيفية إزالة هذه الأحرف أو استبدالها (توسيع للاطلاع على التفاصيل).</summary>
    <p></p>
    <p>يجب على المستخدمين إزالة هذه الأحرف أو استبدالها في مستند الكلمة المصدر:</p>
    <img src="m-w-notdef-glyph.png" alt="MWNotdefGlyph" style="width:800px"/>
    <p>أو مستند الإخراج PDF باستخدام أداة " تحرير PDF:</p>
    <img src="acrobat-remove-notdef-glyph-edit-pdf-tool.png" alt="AcrobatRemoveNotdefGlyph-EditPdfTool" style="width:800px"/>
</details>
{{% /alert %}}

### منطقة الاستخدام الخاص (PUA)

| PDF مستويات الامتثال القياسية داخل Aspose.Words | وجود الشرط |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-1b |  |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 |  |

منطقة الاستخدام الخاص (PUA) تظهر الأحرف في الغالب لـ Windows الخطوط الرمزية مثل" الرمز "و" الأجنحة "و" الويب " وغيرها. Microsoft Word لا توفر التنسيقات خيارا لتخزين النص الفعلي للأحرف.

{{% alert color="secondary" %}}
<details>
    <summary>المواصفات تخبرنا بما يلي (توسيع لرؤية التفاصيل):</summary>
    <p></p>
    <p>لمستوى المطابقة فقط، لأي حرف ... التي تم تعيينها إلى رمز أو رموز في منطقة الاستخدام الخاص يونيكود (PUA)، إدخال ActualText... يجب أن تكون موجودة لهذه الشخصية أو سلسلة من الشخصيات التي تكون هذه الشخصية جزءا منها.</p>
    <p>ISO-19005-2, 6.2.11.7.3</p>
</details>
{{% /alert %}}

"سيجو UI رمز" هو Windows يونيكود الخط الذي يمكن استخدامه كبديل للخطوط الرمزية.

{{% alert color="secondary" %}}
<details>
    <summary>في هذه الكتلة، يمكنك رؤية أمثلة: ما الذي يجب على المستخدم فعله لحل المشكلة باستخدام الخطوط الرمزية (توسيع لمعرفة التفاصيل).</summary>
    <p></p>
    <p>استبدل الخط الرمزي بخط يونيكود في مستند الكلمة المصدر:</p>
    <img src="m-w-insert-symbol.png" alt="MWInsertSymbol" style="width:800px"/>
    <p>أو أضف إدخال ActualText إلى الأحرف الإشكالية في مستند الإخراج PDF:</p>
    <img src="acrobat-span-tag-actual-text.png" alt="AcrobatSpanTagActualText" style="width:800px"/>
</details>
{{% /alert %}}