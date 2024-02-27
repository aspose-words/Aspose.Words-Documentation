---
title: العمل مع التحكم في المحتوى SDT
second_title: Aspose.Words لـ .NET
articleTitle: العمل مع التحكم في المحتوى SDT
linktitle: العمل مع التحكم في المحتوى SDT
description: "الإدارة المتقدمة لمحتوى المستند، وكيفية إنشاء عناصر التحكم في المحتوى ومعالجتها (علامات المستندات المنظمة) باستخدام C#."
type: docs
weight: 390
url: /ar/net/working-with-content-control-sdt/
---

في Microsoft Word، يمكنك إنشاء نموذج من خلال البدء بالقالب وإضافة عناصر التحكم في المحتوى، بما في ذلك مربعات الاختيار ومربعات النص ومنتقيات التاريخ والقوائم المنسدلة. في Aspose.Words، يتم استيراد علامة المستند المنظمة أو عنصر تحكم المحتوى من أي مستند تم تحميله في Aspose.Words كعقدة StructuredDocumentTag. تسمح علامات المستندات المنظمة (SDT أو التحكم في المحتوى) بتضمين دلالات محددة من قبل العميل بالإضافة إلى سلوكها ومظهرها في المستند.

يمكن أن تظهر StructuredDocumentTag في مستند في الأماكن التالية:

- مستوى الكتلة - بين الفقرات والجداول، كعنصر فرعي للنص الأساسي أو رأس التذييل أو التعليق أو الحاشية السفلية أو عقدة الشكل
- مستوى الصف - بين الصفوف في الجدول، كفرع لعقدة الجدول
- مستوى الخلية - بين الخلايا الموجودة في صف الجدول، كفرع لعقدة الصف
- المستوى المضمن - بين المحتوى المضمن بالداخل، كطفل للفقرة
- متداخلة داخل StructuredDocumentTag أخرى

## إدراج عناصر التحكم في المحتوى في المستند

في هذا الإصدار من Aspose.Words، يمكن إنشاء الأنواع التالية من SDT أو التحكم في المحتوى:

- Checkbox
- DropDownList
- ComboBox
- Date
- BuildingBlockGallery
- Group
- `Picture`
- RichText
- PlainText

يوضح مثال التعليمات البرمجية التالي كيفية إنشاء عنصر تحكم في المحتوى لمربع اختيار النوع:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-CheckBoxTypeContentControl-CheckBoxTypeContentControl.cs" >}}

يوضح مثال التعليمات البرمجية التالي كيفية إنشاء عنصر تحكم محتوى لمربع نص منسق للنوع:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-RichTextBoxContentControl-RichTextBoxContentControl.cs" >}}

يوضح مثال التعليمات البرمجية التالي كيفية إنشاء عنصر تحكم المحتوى في مربع التحرير والسرد النوع:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-ComboBoxContentControl-ComboBoxContentControl.cs" >}}

## كيفية تحديث عناصر التحكم في المحتوى

يشرح هذا القسم كيفية تحديث قيم SDT أو التحكم في المحتوى برمجياً.

يوضح مثال التعليمات البرمجية التالي كيفية تعيين الحالة الحالية لخانة الاختيار:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-UpdateContentControls-SetCurrentStateOfCheckBox.cs" >}}

يوضح مثال التعليمات البرمجية التالي كيفية تعديل عناصر التحكم في المحتوى من نوع مربع نص عادي وقائمة منسدلة وصورة:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-UpdateContentControls-ModifyContentControls.cs" >}}

## ربط التحكم في المحتوى بأجزاء XML المخصصة

يمكنك ربط عناصر التحكم في المحتوى ببيانات XML (*جزء XML مخصص*) في مستندات Word.

يوضح مثال التعليمات البرمجية التالي كيفية ربط التحكم في المحتوى بأجزاء XML المخصصة:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-BindSDTtoCustomXmlPart.cs" >}}

## XMLMapping لنطاق علامات المستند المنظم

يمكنك الحصول على تعيين نطاق علامات المستند المنظم هذا إلى بيانات XML في جزء XML مخصص من المستند الحالي باستخدام **خاصية StructuredDocumentTagRangeStart.XmlMapping**. ومع ذلك، يمكن استخدام أسلوب [SetMapping](https://reference.aspose.com/words/net/aspose.words.markup/xmlmapping/setmapping/) لتعيين نطاق علامات مستند منظم إلى بيانات XML.

يوضح مثال التعليمات البرمجية التالي كيفية تعيين تعيين XML:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-StructuredDocumentTagRangeStartXmlMapping.cs" >}}

## مسح محتويات عنصر التحكم في المحتوى

يمكنك مسح محتويات عنصر تحكم المحتوى من خلال عرض عنصر نائب. تقوم طريقة **StructuredDocumentTag.Clear** بمسح محتويات علامة المستند المنظمة هذه وتعرض عنصرًا نائبًا إذا تم تعريفه. ومع ذلك، ليس من الممكن مسح محتويات عنصر تحكم المحتوى إذا كان يحتوي على مراجعات. إذا لم يكن عنصر تحكم المحتوى يحتوي على عنصر نائب، فسيتم إدراج خمس مسافات كما هو الحال في Microsoft Word (باستثناء الأقسام المتكررة، وعناصر القسم المتكررة، والمجموعات، وخانات الاختيار، والاستشهادات). إذا تم تعيين عنصر تحكم المحتوى إلى XML مخصص، فسيتم مسح عقدة XML المشار إليها.

يوضح مثال التعليمات البرمجية التالي كيفية مسح محتوى التحكم في المحتوى:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-ClearContentsControl.cs" >}}

## تغيير ألوان الخلفية والحدود للتحكم في المحتوى

تتيح لك خاصية `StructuredDocumentTag.Color` الحصول على لون التحكم في المحتوى أو تعيينه. يؤثر اللون على التحكم في المحتوى في حالتين:

1. يقوم برنامج MS Word بتمييز خلفية عنصر التحكم في المحتوى عندما يتحرك الماوس فوق عنصر التحكم في المحتوى. وهذا يساعد على تحديد التحكم في المحتوى. لون التمييز "أكثر نعومة" قليلاً من *Color*. على سبيل المثال، يقوم MS Word بتمييز الخلفية باللون الوردي، عندما يكون *Color* باللون الأحمر.
2. عندما تتفاعل (التحرير، الانتقاء، إلخ) مع التحكم في المحتوى، يتم تلوين حدود التحكم في المحتوى باستخدام *Color*.

يوضح مثال التعليمات البرمجية التالي كيفية تغيير لون التحكم في المحتوى:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-SetContentControlColor.cs" >}}

## كيفية تعيين النمط لتنسيق النص المكتوب في عنصر التحكم في المحتوى

إذا كنت تريد تعيين نمط التحكم في المحتوى، فيمكنك استخدام خصائص `StructuredDocumentTag.Style` أو `StructuredDocumentTag.StyleName`. عند كتابة النص في عنصر تحكم المحتوى في مستند الإخراج، سيكون للنص المكتوب النمط "اقتباس".

{{% alert color="primary" %}}

لاحظ أنه يمكن تطبيق الأنماط المرتبطة وأنماط الأحرف فقط على التحكم في المحتوى. يتم طرح InvalidOperationException ("لا يمكن تطبيق هذا النمط على SDT") عند تطبيق نمط موجود ولكنه غير مرتبط أو يتم تطبيق نمط الأحرف.

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالي كيفية تعيين نمط التحكم في المحتوى:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-SetContentControlStyle.cs" >}}

## العمل مع تكرار التحكم في محتوى القسم

يسمح التحكم في محتوى القسم المكرر بتكرار المحتوى الموجود بداخله. باستخدام Aspose.Words، يمكن إنشاء عقد علامة المستند المنظمة للقسم المتكرر وأنواع عناصر القسم المتكرر ولهذا الغرض، توفر [نوع التعداد SdtType](https://reference.aspose.com/words/net/aspose.words.markup/sdttype/) خاصية **RepeatingSectionItem**.

يوضح مثال التعليمات البرمجية التالي كيفية ربط عنصر تحكم محتوى مقطع متكرر بجدول.

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-CreatingTableRepeatingSectionMappedToCustomXmlPart.cs" >}}
