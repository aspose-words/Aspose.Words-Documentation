---
title: العمل مع PDF/A أو PDF/UA
second_title: Aspose.Words for Java
articleTitle: العمل مع PDF/A أو PDF/UA
linktitle: العمل مع PDF/A أو PDF/UA
description: "Convert to PDF/A-1, PDF/A-2, PDF/A-4 and PDF/UA using Java. There are a few problems when converting to PDF/A documents, and Aspose.Words for Java يحلها"
type: docs
weight: 28
url: /ar/java/working-with-pdfa-or-pdfua/
---

ويفرض شكل PDF/A و PDF/UA عدة متطلبات تتعلق بمحتوى الوثيقة التي لا يمكن الوفاء بها أثناء التحويل التلقائي من وثيقة في شكل وورد إلى PDF. وينبغي التحقق من هذه الاشتراطات وتصويبها إما في وثيقة كلمة قبل تحويلها أو في وثيقة من وثائق PDF بعد تحويلها من أجل إعداد وثيقة ممتثلة تماماً لـ PDF/A و PDF/UA.

والمتطلبات الأساسية هي هيكل أو أرقام وثيقة PDF/A و PDF/UA، التي سننظر فيها في الفروع التالية.

{{% alert color="primary" %}}

ويُرجى ملاحظة أن ناتج PDF/UA-1 سيكون أيضا متوافقا مع الهدف 2 من الأهداف الإنمائية للألفية والفرع 508.

{{% /alert %}}

## متطلبات هيكل الوثيقة

وتغطي الاحتياجات الحالية تكاليف PDF/A-1a، و PDF/A-2a، و PDF/A-4، و PDF/UA-1.

هناك بعض المعاني كيف Aspose.Words يعمل عند التحول إلى مختلف معايير شكل قوات الدفاع الشعبي. يجب أن تؤخذ في الاعتبار إذا كنت تريد الحصول على النتيجة المتوقعة.

{{% alert color="primary" %}}

Note that there are no logical structure requirements for PDF/A-4. ولهذا السبب، نحن لا ننظر في صيغة PDF/A-4 في هذا القسم " متطلبات هيكل الوثائق ".

{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>وتخبرنا المواصفات بما يلي (موسعة لمعرفة التفاصيل):</summary>
    <p></p>
    <p>ومن غير المستصوب أن يولد الكتاب معلومات هيكلية أو انسيابية باستخدام عمليات آلية دون التحقق المناسب.</p>
    <p>ISO 19005-2, 6.7.1</p>
</details>
{{% /alert %}}

وتصف الأقسام الفرعية الواردة أدناه تفاصيل كيفية Aspose.Words تعمل عند تحويلها إلى مختلف معايير وخيارات شكل قوات الدفاع الشعبي من أجل حلها.

### الشكل

|  مستويات الامتثال القياسية في إطار إدارة الدعم الميداني Aspose.Words |  وجود شرط |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

A PDF document is a sequence of blocks such as headings, paragraphs, tables, and others. وتشكل هذه القطع هيكلا للوثائق - قويا أو ضعيفا.

وكلا البنى القوية والضعيفة صالحة لقوات الدفاع الشعبي/التحالف. Microsoft Word وللوثائق هيكل ضعيف بالتصميم، Aspose.Words (ج) يُنشئ صندوق بناء السلام بهيكل ضعيف على التوالي، كما يولد عناوين وفقاً لمستويات الفقرات الواردة في الوثيقة المصدر.

وفيما يتعلق بوثيقة PDF/UA-1 ذات هيكل ضعيف، يلزم إضافة إلى ذلك أن يتم ترتيب أرقام العنوان دون ثغرات.

{{% alert color="secondary" %}}
<details>
    <summary>وتخبرنا المواصفات بما يلي (موسعة لمعرفة التفاصيل):</summary>
    <p></p>
    <p>ويمكن أن يتبع الهيكل على مستوى الكتل أحد نموذجين رئيسيين:</p>
    </ol>
      <li>مصممة بشكل قوي وتمتد عناصر التجميع إلى أكبر عدد من المستويات، حسب الاقتضاء، لكي تعكس تنظيم المواد في المواد والأقسام الفرعية وما إلى ذلك. At each level, the children of the grouping element should consist of a heading (H), one or more paragraphs (P) for content at that level, and maybe one or more additional grouping elements for nested subsections.</li>
      <li>منظمة بشكل ضعيف The document is relatively flat, having maybe only one or two levels of grouping elements, with all the headings, paragraphs, and other BLSEs as their immediate children. وفي هذه الحالة، لا ينعكس تنظيم المواد في الهيكل المنطقي؛ غير أنه يمكن التعبير عنه باستخدام العناوين ذات المستويات المحددة (H1-H6).</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.4.3.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>وفيما يتعلق بوثائق PDF/UA-1، تتضمن المواصفات إضافة تتصل بمستويات العناوين (يشملها الاطلاع على التفاصيل):</summary>
    <p></p>
    <p>وإذا تطلبت الوثائق المسموعة تسلسلاً تنازلياً من المرؤوسين، يمضي هذا التسلسل في ترتيب رقمي صارم ولا يجوز له أن يتخطى مستوى التداخل. H1 H2 H3 مسموح به، في حين أن H1 H3 ليس كذلك.</p>
    <p>ISO-14289-1, 7.4.2</p>
</details>
{{% /alert %}}

ولضمان النواتج الصحيحة، يتعين على المستعملين أن يكفلوا تنظيم محتوى وثائق المصدر تنظيماً سليماً وتحديد مستوياته بشكل صحيح بالنسبة للفقرات. وخلافا لذلك، ينبغي للمستعمل أن يتحقق من هيكل الناتج الوارد في وثيقة PDF ويصلحه.

{{% alert color="secondary" %}}
<details>
    <summary>في هذا الحي، يمكنك أن ترى أمثلة: كيفية تحديد مستويات المخطط في Microsoft Word (أ) التحقق من هيكل وثيقة الناتج PDF أو إصلاحه (يشمل الاطلاع على التفاصيل).</summary>
    <p></p>
    <p>In Microsoft Word يمكن استخدام أساليب "القلب العاشر" لتحديد مستوى المخطط</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-heading1-2.png" alt="MWHeading1-2" style="width:800px"/>
    <p>وبالإضافة إلى ذلك، يمكن فحص مستوى المخطط أو تغييره في نافذة " باراغرافيا ":</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-outline-level.png" alt="MWOutlineLevel" style="width:800px"/>
    <p>في "أكروبات" يمكن فحص أو تغيير هيكل الوثائق في مقلاة "تاغس"</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-tags-pane.png" alt="AcrobatTagsPane" style="width:800px"/>
</details>
{{% /alert %}}

### يُعلّمُ الوحدةَ كa أثري

|  مستويات الامتثال القياسية في إطار إدارة الدعم الميداني Aspose.Words |  وجود شرط |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

في الوقت الحالي Aspose.Words علامات على رعاة الصفوف والأقدام، مفرقعات ملاحظة، خلايا رأس الطاولة المتكررة، وصور الزينة كقطع أثرية. Note that this list may be updated in the future.

{{% alert color="secondary" %}}
<details>
    <summary>وتخبرنا المواصفات بما يلي (موسعة لمعرفة التفاصيل):</summary>
    <p></p>
    <p>ويمكن تقسيم المواد البيانية في الوثيقة إلى صفين:</p>
    </ol>
      <li>ويشمل المحتوى الحقيقي لوثيقة ما أشياء تمثل مواد كان مقدم الوثيقة قد عرضها أصلا.</li>
      <li>إن القطع الأثرية هي مواد بيانية ليست جزءاً من المحتوى الأصلي لصاحب البلاغ وإنما هي من صنع الكاتب الممتثل أثناء المهبة أو التصميم أو غير ذلك من العمليات الميكانيكية الصارمة.</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.2.2.1</p>
</details>
{{% /alert %}}

وإذا كانت الوثيقة تحتوي على أي محتوى آخر ينبغي أن يُعتبر مصنوعاً يدوياً، أو إذا كان أي من المحتوى المصنَّع مضموناً حقيقياً، ينبغي أن يصلح الزبائن ذلك في الناتج PDF.

{{% alert color="secondary" %}}
<details>
    <summary>في هذا الحي، يمكنك أن ترى أمثلة: Microsoft Word (أ) شكل أو علامة على شكل أثري في وثيقة الناتج PDF (يشمل الاطلاع على التفاصيل).</summary>
    <p></p>
    <p>فعلى سبيل المثال، يمكن اعتبار الأشكال مزخرفة في Microsoft Word, ولذلك سيتم تصديرها إلى قوات الدفاع الشعبي باعتبارها قطعة أثرية:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-decorative-shape.png" alt="MWDecorativeShape" style="width:800px"/>
    <p>يمكنك أن تعتبر شكلاً كقطعة أثرية في الناتج PDF:</p>
      <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-mark-as-artifact-delete-empty-tag.png" alt="PdfDeleteEmptyTag" style="width:800px"/>
    <p>أيضا، يمكنك تحويل النص في رأس من القطعة الأثرية إلى المحتوى الحقيقي في الناتج PDF:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-switch-text-in-header.png" alt="AcrobatSwitchTextInHeader" style="width:800px"/>
</details>
{{% /alert %}}

### مواصفات اللغة الطبيعية

|  مستويات الامتثال القياسية في إطار إدارة الدعم الميداني Aspose.Words |  وجود شرط |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

اللغة النصية محددة Microsoft Word وثائق Aspose.Words:: تصدير اللغة المحددة إلى ناتج PDF مع *Lang* عزوة ملحقة بتسلسل ملحوظ للمساهمات أو بعلامة Span tag - ويتحكم فيها [ExportLanguageToSpanTag](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getExportLanguageToSpanTag) ملكية وعموماً، لا توجد مسائل لغوية عند إدخال المستعمل للنص عبر Microsoft Word. ولكن هناك احتمال بأن تكون اللغة غير دقيقة إذا تولد النص تلقائيا.

{{% alert color="secondary" %}}
<details>
    <summary>وتخبرنا المواصفات بما يلي (موسعة لمعرفة التفاصيل):</summary>
    <p></p>
    <p>The default natural language for all text in a file should be specified by the Lang entry in the document’s Catalog dictionary.</p>
    <p>All textual content within a file which differs from the default language should be indicated by use of a `Lang` ممتلكات ملحقة بسلسلة مشبوهة، أو بدخول لانغ في قاموس عنصر الهيكل...</p>
    <p>ISO-19005-2, 6.7</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>وبالإضافة إلى ذلك، يُخبرنا المواصفات في حالة PDF/UA-1، بما يلي (يشمل الاطلاع على التفاصيل):</summary>
    <p></p>
    <p>تُعلن اللغة الطبيعية تُعلن التغييرات في اللغة الطبيعية.</p>
    <p>ISO-14289-1, 7.2</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>In this block, you can see examples: how to ensure that the language is specified correctly (expand to see details).</summary>
    <p></p>
    <p>ينبغي للمستعملين أن يكفلوا تحديد اللغة بشكل صحيح إما في وثيقة المصدر وورد:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-language.png" alt="MWLanguage" style="width:800px"/>
    <p>أو وثيقة الناتج PDF:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-check-change-language.png" alt="AcrobatCheckChangeLanguage" style="width:800px"/>
</details>
{{% /alert %}}

### الشكل

|  مستويات الامتثال القياسية في إطار إدارة الدعم الميداني Aspose.Words |  وجود شرط |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-2a |                           |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Microsoft Word وتسمح الوثائق للمستعملين بإضافة الرقم المختصر.

{{% alert color="secondary" %}}
<details>
    <summary>وتخبرنا المواصفات بما يلي (موسعة لمعرفة التفاصيل):</summary>
    <p></p>
    <p>يُعَطَّم كبسولة تُرافقُ رقماً بعلامة كابينة.</p>
    <p>ISO-14289-1, 7.3</p>
</details>
{{% /alert %}}

حاليا Aspose.Words ولا يمكن أن تُصدّر عبوات بعلامة " كابينت "، لذا يجب أن تُدرَج في الناتج PDF.

{{% alert color="secondary" %}}
<details>
    <summary>In this block, you can see examples: how to insert the caption (expand to see details).</summary>
    <p></p>
    <p>In Microsoft Word, ويمكن إدراج الخصم في قائمة السياق:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/figure-caption-mw.png" alt="figure-caption-mw" style="width:800px"/>
    <p>في (أكروبات) يمكن إضافة أو تغيير الإخفاء عبر `Object` رقم الهاتف:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/figure-caption-acrobat.png" alt="figure-caption-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

### الوصف البديل

|  مستويات الامتثال القياسية في إطار إدارة الدعم الميداني Aspose.Words |  وجود شرط |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Microsoft Word وتسمح الوثائق للمستعملين بإضافة نصوص بديلة إلى الصور والشكل والجداول. Aspose.Words ويصدر هذا النص البديل للناتج PDF.

{{% alert color="secondary" %}}
<details>
    <summary>وتخبرنا المواصفات بما يلي (موسعة لمعرفة التفاصيل):</summary>
    <p></p>
    <p>وينبغي أن تقدم جميع عناصر الهيكل التي لا يكون محتواها متماثلاً نصياً محدداً مسبقاً، مثل الصور والصيغ وما إلى ذلك، وصفاً نصياً بديلاً باستخدام " المدخل البديل " في قاموس عنصر الهيكل...</p>
    <p>ملاحظة وتقدم الوصفات البديلة وصفاً نصياً يساعد على التفسير السليم للمحتوى غير الجنسي غير المفتقر إلى نوع آخر.</p>
    <p>ISO-19005-2, 6.7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>وفي هذا المجال، يمكن أن ترون أمثلة على ذلك: كيفية ضمان أن يكون لجميع العناصر نصاً بديلاً (يشمل الاطلاع على التفاصيل).</summary>
    <p></p>
    <p>ينبغي للمستعملين أن يكفلوا أن يكون لجميع العناصر نصاً مناوباً إما في وثيقة المصدر وورد:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-table-alt-text.png" alt="MWTableAltText" style="width:800px"/>
    <p></p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-shape-alt-text.png" alt="MWShapeAltText" style="width:800px"/>
    <p>أو وثيقة الناتج PDF:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-table-alt-text.png" alt="AcrobatTableAltText" style="width:800px"/>
    <p></p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-shape-alt-text.png" alt="AcrobatShapeAltText" style="width:800px"/>
</details>
{{% /alert %}}

### ألف - الوصف البديل للهيبرلينكات

|  مستويات الامتثال القياسية في إطار إدارة الدعم الميداني Aspose.Words |  وجود شرط |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-2a |                           |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

بالإضافة إلى النقطة السابقة، Microsoft Word كما تتيح الوثائق للمستعملين إضافة نص بديل إلى وصلات إلكترونية. Aspose.Words ويصدر هذا النص البديل للناتج PDF.

لسوء الحظ ليس كل طلب يسمح لك بوضع وصف بديل على سبيل المثال، Adobe Acrobat ولا يمكن حالياً وضع مثل هذا الوصف للوصلات الفائقة. لكن Microsoft Word, ويمكنكم القيام بذلك على النحو التالي:

<img src="/words/java/working-with-pdfa-or-pdfua/alternate-descriptions-hyperlinks-mw.png" alt="alternate-descriptions-hyperlinks-mw" style="width:800px"/>

وفي بعض الأحيان، هناك مشكلة لا يمكن فيها وضع نص للوصلات الكهربائية الآلية في جدول المحتويات عن طريق Microsoft Word جوى Aspose.Words ويمكن أن تستكمل هذه المجالات وتولد الصلات بمفردها.

اتبع المثال الرمزي لتحديث `TOC` الحقول التي تستخدم Aspose.Words Document Object Model )أ(DOM-

{{< highlight java >}}
Document doc = new Document(fileName);
ArrayList<FieldHyperlink> tocHyperLinks = new ArrayList<>();

for (Field field : doc.getRange().getFields()) {
    if (field.getType() == FieldType.FIELD_HYPERLINK) {
        FieldHyperlink hyperlink = (FieldHyperlink) field;
        if (hyperlink.getFieldCode().startsWith("#_Toc")) {
            tocHyperLinks.add(hyperlink);
        }
    }
}

for (FieldHyperlink link : tocHyperLinks)
    link.setScreenTip(link.getDisplayResult());

PdfSaveOptions opt = new PdfSaveOptions();
opt.setCompliance(PdfCompliance.PDF_UA_1);
opt.setDisplayDocTitle(true);
opt.setExportDocumentStructure(true);
opt.getOutlineOptions().setHeadingsOutlineLevels(3);
opt.getOutlineOptions().setCreateMissingOutlineLevels(true);

String outFile = fileName.substring(0,fileName.lastIndexOf('.')) + "_aw.pdf";
doc.save(outFile, opt);
{{< /highlight >}}

### رتب

|  مستويات الامتثال القياسية في إطار إدارة الدعم الميداني Aspose.Words |  وجود شرط |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-2a |                           |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

ويجب أن يكون لدى الجداول في وثائق PDF/UA-1 رؤساء - عمود أو صف أو كليهما. PDF/A only requires standard table markup, which has no additional restrictions. ملاحظة Aspose.Words يولّد علامات الجدول القياسية تلقائياً.

{{% alert color="secondary" %}}
<details>
    <summary>وتخبرنا المواصفات بما يلي (موسعة لمعرفة التفاصيل):</summary>
    <p></p>
    <p>الطاولات يجب أن تشمل رؤساء يمكن أن تحتوي الجداول على رؤساء الأعمدة أو رؤساء الصفوف أو كليهما.</p>
    <p>ISO-14289-1, 7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>In this block, you can see examples: how to set the table header (expand to see details).</summary>
    <p></p>
    <p>يمكن إنشاء رأس الطاولة إما المصدر Microsoft Word الوثيقة:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-mw.png" alt="table-headers-mw" style="width:800px"/>
    <p>أو الناتج PDF:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-acrobat-header-cell.png" alt="table-headers-acrobat-header-cell" style="width:800px"/>
    <p></p>
        <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-acrobat-scope1.png" alt="table-headers-acrobat-scope1" style="width:800px"/>
    <p></p>
        <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-acrobat-scope2.png" alt="table-headers-acrobat-scope2" style="width:800px"/>
</details>
{{% /alert %}}

### النص

|  مستويات الامتثال القياسية في إطار إدارة الدعم الميداني Aspose.Words |  وجود شرط |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

{{% alert color="secondary" %}}
<details>
    <summary>وتخبرنا المواصفات بما يلي (موسعة لمعرفة التفاصيل):</summary>
    <p></p>
    <p>المواصفات تقول لنا:</p>
    <p>ينبغي أن تقدم جميع عناصر الهيكل النصي الممثلة بطريقة غير معيارية، مثل السمات الجمركية أو الرسوم البيانية الداخلية، نصاً بديلاً باستخدام `ActualText` الدخول في القاموس</p>
    <p>ISO-19005-2, 6.7</p>
</details>
{{% /alert %}}

Microsoft Word ولا تسمح الوثيقة للمستعملين بوضع نص بديل. ولذلك يتعين التحقق من ذلك وتحديده في الناتج PDF:

<img src="/words/java/working-with-pdfa-or-pdfua/acrobat-replacement-text.png" alt="AcrobatReplacementText" style="width:800px"/>

### المختصرات ووفورات المختصرات

|  مستويات الامتثال القياسية في إطار إدارة الدعم الميداني Aspose.Words |  وجود شرط |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

{{% alert color="secondary" %}}
<details>
    <summary>وتخبرنا المواصفات بما يلي (موسعة لمعرفة التفاصيل):</summary>
    <p></p>
    <p>وينبغي أن توضع جميع حالات المختصرات والاختبارات في المحتوى النصي في تسلسل ملحوظ مع علامة Span التي توفر ملكيتها E التوسع النصي في المختصر أو المختصر...</p>
<p>ISO-19005-2, 6.7</p>
</details>
{{% /alert %}}

Microsoft Word ولا تسمح الوثيقة للمستعملين بوضع اختصارات وتوسيع نطاق المختصرات. ولذلك يتعين التحقق من ذلك وتثبيته في الناتج PDF:

<img src="/words/java/working-with-pdfa-or-pdfua/acrobat-split-add-expansion-text.png" alt="AcrobatSplitAddExpansionText" style="width:800px"/>

## العنوان

|  مستويات الامتثال القياسية في إطار إدارة الدعم الميداني Aspose.Words |  وجود شرط |
|  --------------------------------------------------  |  ------------------------------------------------------------  |
|  PDF/A-1a |                                                                |
|  PDF/A-2a |                                                                |
|  PDF/A-4 |                                                                |
|  PDF/UA-1 |  {{< emoticons/tick >}}<br/>وينبغي أن يكون لوثيقة PDF/UA-1 عنوان |

{{% alert color="secondary" %}}
<details>
    <summary>وتخبرنا المواصفات بما يلي (موسعة لمعرفة التفاصيل):</summary>
    <p></p>
    <p>المواصفات تقول لنا:</p>
    <p>وسيتضمن تيار الميداتا في دفتر المكتال في الوثيقة دفتر: مدخل للترجمة، حيث يكون الرقم القياسي الموصى به لتشيما دوبلين كوري للبيانات الفوقية...</p>
    <p>ISO-14289-1, 7.1</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>وفي هذا المجال، يمكن أن ترون أمثلة على ذلك: كيفية تحديد عنوان الوثيقة (يشمل الاطلاع على التفاصيل).</summary>
    <p></p>
    <p>ويمكن إنشاء عنوان الوثيقة إما المصدر. Microsoft Word الوثيقة:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/document-title-mw.png" alt="document-title-mw" style="width:800px"/>
    <p>أو الناتج PDF:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/document-title-acrobat.png" alt="document-title-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

## الاحتياجات من الأموال

|  مستويات الامتثال القياسية في إطار إدارة الدعم الميداني Aspose.Words |  وجود شرط |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-1b |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

وهناك أيضا عدد من المعاني من العمل مع الفوانتات عند تحويلها إلى PDF/A-1، و PDF/A-2، و PDF/A-4، أو PDF/UA-1، باستخدام صيغ Aspose.Words. يجب أن تؤخذ في الاعتبار إذا كنت تريد تجنب المشاكل المحتملة مع وثيقة الناتج.

وتصف الفروع الواردة أدناه هذه المعاني والخيارات لحلها.

### الشروط القانونية الواجبة

|  مستويات الامتثال القياسية في إطار إدارة الدعم الميداني Aspose.Words |  وجود شرط |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-1b |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Aspose.Words ولا يتأكد من القيود القانونية المفروضة على العناوين المستعملة - بل على المستعملين. وبعبارة أخرى، لا ينبغي للمستعمل أن يقدم رسوما غير ملائمة لتحويل قوات الدفاع الشعبي باستخدام Aspose.Words.

{{% alert color="secondary" %}}
<details>
    <summary>وتخبرنا المواصفات بما يلي (موسعة لمعرفة التفاصيل):</summary>
    <p></p>
    <p>ولا تُستخدم سوى البرامج النافعة التي تكون متجذرة قانوناً في ملف لإضفاء طابع عالمي غير محدود.</p>
    <p>ISO-19005-2, 6.2.11.4.1; ISO- 14289-1, 7.21.4.1 (exactly the same quotes in two specs)</p>
</details>
{{% /alert %}}

### .غير محدد Glyph

|  مستويات الامتثال القياسية في إطار إدارة الدعم الميداني Aspose.Words |  وجود شرط |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-1b |                           |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

استخدام `.notdef` glyph محظور The `.notdef` glyph وسيظهر ما إذا كانت الوثيقة تتضمن سمات غير موجودة في خانة مختارة ولا يمكن حلها أيضا عن طريق آلية فولنت فالباك.

{{% alert color="secondary" %}}
<details>
    <summary>وتخبرنا المواصفات بما يلي (موسعة لمعرفة التفاصيل):</summary>
    <p></p>
    <p>لا تتضمن الوثيقة المطابقة إشارة إلى glyph ومن أي نص يبين المشغلين، بغض النظر عن طريقة إصدار النصوص، في أي من مسارات المحتوى.</p>
    <p>ISO-19005-2, 6.2.11.8; ISO- 14289-1, 7.21.8 (exactly the same quotes in two specs)</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>In this block, you can see examples: how to remove or replace these characters (expand to see details).</summary>
    <p></p>
    <p>وينبغي للمستعملين أن يزيلوا أو يحلوا محل هذه الشخصيات إما في وثيقة المصدر وورد:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-notdef-glyph.png" alt="MWNotdefGlyph" style="width:800px"/>
    <p>أو وثيقة الناتج PDF باستخدام أداة "Edit PDF"</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-remove-notdef-glyph-edit-pdf-tool.png" alt="AcrobatRemoveNotdefGlyph-EditPdfTool" style="width:800px"/>
</details>
{{% /alert %}}

### منطقة الاستخدام الخاص

|  مستويات الامتثال القياسية في إطار إدارة الدعم الميداني Aspose.Words |  وجود شرط |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-1b |                           |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

شخصية منطقة الاستخدام الخاص تظهر في معظمها Windows شعارات رمزية مثل "سيمبول" و "واينغز" و "ويبنغز" و الآخرين Microsoft Word ولا توفر الأشكال خيارا لتخزين النص الفعلي للخصائص.

{{% alert color="secondary" %}}
<details>
    <summary>وتخبرنا المواصفات بما يلي (موسعة لمعرفة التفاصيل):</summary>
    <p></p>
    <p>الرتبة ولا يوجد أي تطابق إلا بالنسبة لأي شخص ... يتم رسمه على شفرة أو رموز في منطقة الاستخدام الخاص الموحدة، أي دخول فعلي ... لهذا الطابع أو تسلسل من الشخصيات يكون هذا الطابع جزءا منها.</p>
    <p>ISO-19005-2, 6.2.11.7.3</p>
</details>
{{% /alert %}}

"Segoe UI Symbol" هو Windows ملصق وحيد يمكن استخدامه كبديل للعلامات الرمزية

{{% alert color="secondary" %}}
<details>
    <summary>وفي هذا الحي، يمكن أن ترى أمثلة: ما الذي ينبغي للمستعمل أن يفعله لحل المشكلة بالعلامات الرمزية (يشمل الاطلاع على التفاصيل).</summary>
    <p></p>
    <p>يستعاض عن العنوان الرمزي برقم واحد في وثيقة المصدر وورد:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-insert-symbol.png" alt="MWInsertSymbol" style="width:800px"/>
    <p>(أ) أو يضيف بنداً فعلياً إلى الطابعات المثيرة للمشاكل الواردة في وثيقة الناتج PDF:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-span-tag-actual-text.png" alt="AcrobatSpanTagActualText" style="width:800px"/>
</details>
{{% /alert %}}
