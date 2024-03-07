---
title: استنساخ مستند في Python
second_title: Aspose.Words لـ Python via .NET
articleTitle: استنساخ مستند
linktitle: استنساخ مستند
type: docs
description: "استنساخ مستند للحصول على نسخته المطابقة باستخدام Python. عند إنشاء نسخة، يتم استنساخ العقد وخصائص المستند الأصلي."
weight: 70
url: /ar/python-net/clone-a-document/
---

إن استنساخ مستند هو عملية إنشاء نسخة مطابقة من المستند الأصلي، مما قد يؤدي إلى تحسين الأداء وإنقاذك من تسرب الذاكرة المحتمل.

تشرح هذه المقالة حالات الاستخدام الرئيسية لاستنساخ مستند وكيفية إنشاء نسخة مستند باستخدام Aspose.Words.

## العمليات مع وثائق الاستنساخ

تتيح لك عملية الاستنساخ جعل عملية إنشاء المستندات أسرع حيث لن تحتاج إلى تحميل مستند من ملف وتحليله في كل مرة.

بعد إنشاء نسخة من مستندك، ستتمكن من تحريره وإجراء عمليات مختلفة عليه، على سبيل المثال، مقارنته بالمستند الأصلي أو إلحاقه أو إدراجه في مستند آخر. يمكنك أيضًا تعديل العناصر المستنسخة أو محتواها قبل إدراجها في مستند آخر.

## إنشاء استنساخ المستند

يتيح لك Aspose.Words استنساخ مستند باستخدام طريقة [clone](https://reference.aspose.com/words/python-net/aspose.words/document/clone/) التي تقوم بإجراء نسخة عميقة من المستند وإعادته. بمعنى آخر، سيحصل على نسخة كاملة من DOM. تعمل طريقة [clone](https://reference.aspose.com/words/python-net/aspose.words/document/clone/) على تسريع عملية إنشاء المستندات، وتحتاج فقط إلى سطر واحد من التعليمات البرمجية للحصول على نسخة من مستندك.

ينتج عن الاستنساخ مستندًا جديدًا بنفس محتويات المستند الأصلي، ولكن مع نسخة فريدة من كل عقد من عقد المستند الأصلي. يمكنك أيضًا تطبيق عملية النسخ على عقدة مستند باستخدام طريقة العقدة [clone](https://reference.aspose.com/words/python-net/aspose.words/document/clone/)، والتي تسمح لك بتكرار عقد الوثيقة المركبة مع العقد الفرعية الخاصة بها وبدونها.

{{% alert color="primary" %}}

لاحظ أنه عند تطبيق طريقة الاستنساخ، سيتم استنساخ كافة خصائص المستند.

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالي كيفية استنساخ مستند وإنشاء نسخة مكررة من قسم في هذا المستند:

{{< highlight python >}}
# Create a document.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.writeln("This is the original document before applying the clone method")

# Clone the document.
clone = doc.clone().as_document()

# Edit the cloned document.
builder = aw.DocumentBuilder(clone)
builder.write("Section 1")
builder.insert_break(aw.BreakType.SECTION_BREAK_NEW_PAGE)
builder.write("Section 2")

# This shows what is in the document originally. The document has two sections.
self.assertEqual(clone.sections.count, 2)

# Duplicate the last section and append the copy to the end of the document.
lastSectionIdx = clone.sections.count - 1
newSection = clone.sections[lastSectionIdx].clone()
clone.sections.add(newSection)

# Check what the document contains after we changed it.
self.assertEqual(clone.sections.count, 3)
{{< /highlight >}}
