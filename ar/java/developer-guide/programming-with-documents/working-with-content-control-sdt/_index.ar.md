---
title: العمل مع التحكم في المحتوى SDT في Java
second_title: Aspose.Words ل Java
articleTitle: العمل مع التحكم في المحتوى SDT
linktitle: العمل مع التحكم في المحتوى SDT
type: docs
description: "إدارة محتوى المستندات المتقدمة، وكيفية إنشاء عناصر تحكم المحتوى ومعالجتها (علامات المستندات المنظمة) باستخدام Java."
weight: 390
url: /ar/java/working-with-content-control-sdt/
timestamp: 2024-01-31-14-23-37
---

في Microsoft Word، يمكنك إنشاء نموذج عن طريق البدء بقالب وإضافة عناصر تحكم في المحتوى، بما في ذلك checkboxإس ومربعات النص وجامعي التاريخ والقوائم المنسدلة. في Aspose.Words، يتم استيراد علامة مستند منظم أو عنصر تحكم في المحتوى من أي مستند تم تحميله في Aspose.Words كعقدة StructuredDocumentTag. تسمح علامات المستندات المنظمة (SDT أو التحكم في المحتوى) بتضمين الدلالات المحددة من قبل العميل بالإضافة إلى سلوكها ومظهرها في مستند.

StructuredDocumentTag يمكن أن يحدث في مستند في الأماكن التالية:

- مستوى الكتلة-بين الفقرات والجداول، كطفل لجسم، HeaderFooter، تعليق، حاشية سفلية أو عقدة شكل.
- مستوى الصف-بين الصفوف في الجدول، كطفل لعقدة الجدول.
- مستوى الخلية - بين الخلايا في صف جدول، كطفل لعقدة صف.
- المستوى المضمن-بين المحتوى المضمن في الداخل، كطفل لفقرة.
- متداخلة داخل آخر StructuredDocumentTag.

## إدراج عناصر تحكم المحتوى في مستند

في هذا الإصدار من Aspose.Words، يمكن إنشاء الأنواع التالية من SDT أو التحكم في المحتوى:

- Checkbox
- DropDownList
- ComboBox
- التاريخ
- BuildingBlockGallery
- المجموعة
- `Picture`
- RichText
- PlainText

يوضح مثال التعليمات البرمجية التالية كيفية إنشاء عنصر تحكم المحتوى من النوع checkbox:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CheckBoxTypeContentControl-CheckBoxTypeContentControl.java" >}}

يوضح مثال التعليمات البرمجية التالية كيفية إنشاء عنصر تحكم المحتوى من نوع مربع النص المنسق:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-RichTextBoxContentControl-RichTextBoxContentControl.java" >}}

يوضح مثال التعليمات البرمجية التالية كيفية إنشاء عنصر تحكم المحتوى من نوع مربع التحرير والسرد:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ComboBoxContentControl-ComboBoxContentControl.java" >}}

## كيفية تحديث عناصر التحكم في المحتوى

يشرح هذا القسم كيفية تحديث قيم SDT أو التحكم في المحتوى برمجيا.

يوضح مثال الكود التالي كيفية تعيين الحالة الحالية لـ checkbox:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SetCurrentStateOfCheckBox-SetCurrentStateOfCheckBox.java" >}}

يوضح مثال التعليمات البرمجية التالية كيفية تعديل عناصر التحكم في المحتوى من نوع مربع نص عادي والقائمة المنسدلة والصورة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ModifyContentControls-ModifyContentControls.java" >}}

{{% alert color="primary" %}}

يمكنك تنزيل نموذج ملف هذه الأمثلة من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Structured%20document%20tags.docx).

{{% /alert %}}

## ربط التحكم في المحتوى إلى أجزاء XML مخصصة

يمكنك ربط عناصر التحكم في المحتوى ببيانات XML (*custom XML part*) في مستندات ورد.

يوضح مثال التعليمات البرمجية التالية كيفية ربط عنصر تحكم المحتوى إلى أجزاء XML مخصصة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-BindingContentControlwithXML-BindingContentControlwithXML.java" >}}

## مسح محتويات عنصر تحكم المحتوى

يمكنك مسح محتويات عنصر تحكم المحتوى مع عرض عنصر نائب. تقوم طريقة **StructuredDocumentTag.clear()** بمسح محتويات علامة المستند المهيكلة هذه وعرض عنصر نائب إذا تم تعريفه. ومع ذلك، لا يمكن مسح محتويات عنصر تحكم المحتوى إذا كان يحتوي على مراجعات. إذا لم يكن عنصر تحكم المحتوى يحتوي على عنصر نائب، فسيتم إدراج خمس مسافات كما هو الحال في MS كلمة (باستثناء الأقسام المتكررة، وعناصر القسم المتكررة، والمجموعات، وخانات الاختيار، والاستشهادات). إذا تم تعيين عنصر تحكم المحتوى إلى مخصص XML، يتم مسح العقدة XML المشار إليها.

يوضح مثال الكود التالي كيفية مسح محتوى التحكم في المحتوى:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ClearContentsControl-ClearContentsControl.java" >}}

## تغيير خلفية التحكم في المحتوى وألوان الحدود

تتيح لك خاصية `StructuredDocumentTag.Color` الحصول على لون التحكم في المحتوى أو تعيينه. يؤثر اللون على التحكم في المحتوى في حالتين:

1. MS كلمة يسلط الضوء على خلفية عنصر تحكم المحتوى عندما يتحرك الماوس فوق عنصر تحكم المحتوى. هذا يساعد على تحديد التحكم في المحتوى. لون تسليط الضوء هو "ليونة" قليلا من *Color*. على سبيل المثال، MS كلمة يسلط الضوء على الخلفية مع اللون الوردي، عندما *Color* أحمر.
2. عندما تتفاعل (التحرير، الانتقاء، إلخ) مع عنصر التحكم في المحتوى، يتم تلوين حدود عنصر التحكم في المحتوى بـ *Color*.

يوضح مثال التعليمات البرمجية التالية كيفية تغيير لون عنصر تحكم المحتوى:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-SetContentControlColor.java" >}}

## كيفية تعيين نمط لتنسيق النص المكتوب في عنصر تحكم المحتوى

إذا كنت تريد تعيين نمط التحكم في المحتوى، فيمكنك استخدام خصائص `StructuredDocumentTag.Style` أو `StructuredDocumentTag.StyleName`. عند كتابة النص في عنصر تحكم المحتوى في مستند الإخراج، سيكون للنص المكتوب النمط"اقتباس".

{{% alert color="primary" %}}

لاحظ أنه يمكن تطبيق أنماط الأحرف المرتبطة فقط على التحكم في المحتوى. يتم طرح InvalidOperationException ("لا يمكن تطبيق هذا النمط على SDT") عند تطبيق نمط موجود ولكنه غير مرتبط أو يتم تطبيق نمط الحرف.

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالية كيفية تعيين نمط التحكم في المحتوى:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-setContentControlStyle.java" >}}

## العمل مع التحكم في محتوى القسم المتكرر

يسمح التحكم في محتوى قسم التكرار بتكرار المحتوى الموجود بداخله. باستخدام Aspose.Words، يمكن إنشاء عقد علامة المستند المهيكلة لقسم التكرار وأنواع عناصر القسم المتكرر ولهذا الغرض، يوفر [SdtType نوع التعداد](https://reference.aspose.com/words/java/com.aspose.words/sdttype/) REPEATING_SECTION_ITEM عضوا.

يوضح مثال التعليمات البرمجية التالية كيفية ربط عنصر تحكم محتوى مقطع مكرر بجدول:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-CreatingTableRepeatingSectionMappedToCustomXmlPart.java" >}}

