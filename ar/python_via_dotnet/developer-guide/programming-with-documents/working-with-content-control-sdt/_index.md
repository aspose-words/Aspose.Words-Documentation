---
title: العمل مع التحكم في المحتوى SDT
second_title: Aspose.Words لـ Python via .NET
articleTitle: العمل مع التحكم في المحتوى SDT
linktitle: العمل مع التحكم في المحتوى SDT
description: "باستخدام لغة بايثون، يمكنك تضمين دلالات محددة من قبل العميل بالإضافة إلى سلوكها ومظهرها في المستند."
type: docs
weight: 390
url: /ar/python-net/working-with-content-control-sdt/
---

في Microsoft Word، يمكنك إنشاء نموذج من خلال البدء بالقالب وإضافة عناصر التحكم في المحتوى، بما في ذلك مربعات الاختيار ومربعات النص ومنتقيات التاريخ والقوائم المنسدلة. في Aspose.Words، يتم استيراد علامة المستند المنظمة أو عنصر تحكم المحتوى من أي مستند تم تحميله إلى Aspose.Words كعقدة [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/). تسمح علامات المستندات المنظمة (SDT أو التحكم في المحتوى) بتضمين دلالات محددة من قبل العميل بالإضافة إلى سلوكها ومظهرها في المستند. يمكن أن يظهر [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) في مستند في الأماكن التالية:

- مستوى الكتلة - بين الفقرات والجداول، كفرع لعقدة [Body](https://reference.aspose.com/words/python-net/aspose.words/body/) أو [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/) أو [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) أو [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/) أو [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)
- مستوى الصف - بين صفوف الجدول، كفرع لعقدة [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/)
- مستوى الخلية - بين الخلايا الموجودة في صف الجدول، كفرع لعقدة [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/)
- المستوى المضمن - من بين المحتوى المضمن بالداخل، كطفل لـ [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/)
- متداخل داخل [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) آخر

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

يوضح مثال التعليمات البرمجية التالي كيفية إنشاء عنصر تحكم المحتوى في خانة اختيار النوع.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-CheckBoxTypeContentControl.py" >}}

يوضح مثال التعليمات البرمجية التالي كيفية إنشاء عنصر تحكم المحتوى لمربع النص المنسق للنوع.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-RichTextBoxContentControl.py" >}}

يوضح مثال التعليمات البرمجية التالي كيفية إنشاء عنصر تحكم محتوى مربع التحرير والسرد النوع.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-ComboBoxContentControl.py" >}}

## كيفية تحديث عناصر التحكم في المحتوى

يشرح هذا القسم كيفية تحديث قيم SDT أو التحكم في المحتوى برمجياً

يوضح مثال التعليمات البرمجية التالي كيفية تعيين الحالة الحالية لخانة الاختيار:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-SetCurrentStateOfCheckBox.py" >}}

يوضح مثال التعليمات البرمجية التالي كيفية تعديل عناصر التحكم في المحتوى من نوع مربع نص عادي وقائمة منسدلة وصورة:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-ModifyContentControls.py" >}}

{{% alert color="primary" %}}

يمكنك تنزيل الملف النموذجي لهذه الأمثلة من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Structured%20document%20tags.docx).

{{% /alert %}}

## ربط التحكم في المحتوى بأجزاء XML المخصصة

يمكنك ربط عناصر التحكم في المحتوى ببيانات XML (*جزء XML مخصص*) في مستندات Word.

يوضح مثال التعليمات البرمجية التالي كيفية ربط التحكم في المحتوى بأجزاء XML المخصصة:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-BindSDTtoCustomXmlPart.py" >}}

## XMLMapping لنطاق علامات المستند المنظم

يمكنك الحصول على تعيين نطاق علامات المستند المنظم هذا إلى بيانات XML في جزء XML مخصص من المستند الحالي باستخدام خاصية [StructuredDocumentTagRangeStart.xml_mapping](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttagrangestart/xml_mapping/). ومع ذلك، يمكن استخدام أسلوب [set_mapping](https://reference.aspose.com/words/python-net/aspose.words.markup/xmlmapping/set_mapping/) لتعيين نطاق علامات مستند منظم إلى بيانات XML.

يوضح مثال التعليمات البرمجية التالي كيفية تعيين تعيين XML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-StructuredDocumentTagRangeStartXmlMapping.py" >}}

## مسح محتويات عنصر التحكم في المحتوى

يمكنك مسح محتويات عنصر تحكم المحتوى من خلال عرض عنصر نائب. تقوم طريقة [StructuredDocumentTag.clear](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/clear/) بمسح محتويات علامة المستند المنظمة هذه وتعرض عنصرًا نائبًا إذا تم تعريفه. ومع ذلك، ليس من الممكن مسح محتويات عنصر تحكم المحتوى إذا كان يحتوي على مراجعات. إذا لم يكن عنصر التحكم في المحتوى يحتوي على عنصر نائب، فسيتم إدراج خمس مسافات كما هو الحال في MS Word (باستثناء الأقسام المتكررة، وعناصر القسم المتكررة، والمجموعات، وخانات الاختيار، والاستشهادات). إذا تم تعيين عنصر تحكم المحتوى إلى XML مخصص، فسيتم مسح عقدة XML المشار إليها.

يوضح مثال التعليمات البرمجية التالي كيفية مسح محتوى التحكم في المحتوى:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-ClearContentsControl.py" >}}

## تغيير ألوان الخلفية والحدود للتحكم في المحتوى

تتيح لك خاصية [StructuredDocumentTag.color](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/color/) الحصول على لون التحكم في المحتوى أو تعيينه. يؤثر اللون على التحكم في المحتوى في حالتين:

1. يقوم برنامج MS Word بتمييز خلفية عنصر التحكم في المحتوى عندما يتحرك الماوس فوق عنصر التحكم في المحتوى. وهذا يساعد على تحديد التحكم في المحتوى. لون التمييز "أكثر نعومة" قليلاً من *color*. على سبيل المثال، يقوم MS Word بتمييز الخلفية باللون الوردي، عندما يكون *color* باللون الأحمر.
2. عندما تتفاعل (التحرير، الانتقاء، إلخ) مع التحكم في المحتوى، يتم تلوين حدود التحكم في المحتوى باستخدام *color*.

يوضح مثال التعليمات البرمجية التالي كيفية تغيير لون التحكم في المحتوى:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-SetContentControlColor.py" >}}

## كيفية تعيين النمط لتنسيق النص المكتوب في عنصر التحكم في المحتوى

إذا كنت تريد تعيين نمط التحكم في المحتوى، فيمكنك استخدام خصائص [StructuredDocumentTag.style](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/style/) أو [StructuredDocumentTag.style_name](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/style_name/). عند كتابة النص في عنصر تحكم المحتوى في مستند الإخراج، سيكون للنص المكتوب النمط "اقتباس".

{{% alert color="primary" %}}

لاحظ أنه يمكن تطبيق الأنماط المرتبطة وأنماط الأحرف فقط على التحكم في المحتوى. يتم طرح استثناء ("لا يمكن تطبيق هذا النمط على SDT") عند تطبيق نمط موجود ولكنه غير مرتبط أو نمط أحرف.

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالي كيفية تعيين نمط التحكم في المحتوى:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-SetContentControlStyle.py" >}}

## العمل مع تكرار التحكم في محتوى القسم

يسمح التحكم في محتوى القسم المكرر بتكرار المحتوى الموجود بداخله. باستخدام Aspose.Words، يمكن إنشاء عقد علامة المستند المنظمة للقسم المتكرر وأنواع عناصر القسم المتكرر ولهذا الغرض، يوفر نوع التعداد [SdtType](https://reference.aspose.com/words/python-net/aspose.words.markup/sdttype/) خاصية [REPEATING_SECTION_ITEM](https://reference.aspose.com/words/python-net/aspose.words.markup/sdttype/#repeating_section_item).

يوضح مثال التعليمات البرمجية التالي كيفية ربط عنصر تحكم محتوى مقطع متكرر بجدول:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-CreatingTableRepeatingSectionMappedToCustomXmlPart.py" >}}
