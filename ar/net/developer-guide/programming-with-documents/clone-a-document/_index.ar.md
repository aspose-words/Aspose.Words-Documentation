---
title: استنساخ مستند في C#
second_title: Aspose.Words لـ .NET
articleTitle: استنساخ مستند
linktitle: استنساخ مستند
type: docs
description: "استنساخ مستند للحصول على نسخته المطابقة باستخدام C#. عند إنشاء نسخة، يتم استنساخ العقد وخصائص المستند الأصلي."
weight: 70
url: /ar/net/clone-a-document/
timestamp: 2024-01-27-14-07-04
---

إن استنساخ مستند هو عملية إنشاء نسخة مطابقة من المستند الأصلي، مما قد يؤدي إلى تحسين الأداء وإنقاذك من تسرب الذاكرة المحتمل.

تشرح هذه المقالة حالات الاستخدام الرئيسية لاستنساخ مستند وكيفية إنشاء نسخة مستند باستخدام Aspose.Words.

## العمليات مع وثائق الاستنساخ

تتيح لك عملية الاستنساخ جعل عملية إنشاء المستندات أسرع حيث لن تحتاج إلى تحميل مستند من ملف وتحليله في كل مرة.

بعد إنشاء نسخة من مستندك، ستتمكن من تحريره وإجراء عمليات مختلفة عليه، على سبيل المثال، مقارنته بالمستند الأصلي أو إلحاقه أو إدراجه في مستند آخر. يمكنك أيضًا تعديل العناصر المستنسخة أو محتواها قبل إدراجها في مستند آخر.

## إنشاء استنساخ المستند

يتيح لك Aspose.Words استنساخ مستند باستخدام طريقة [Clone](https://reference.aspose.com/words/ar/net/aspose.words/document/clone/) التي تقوم بإجراء نسخة عميقة من المستند وإعادته. بمعنى آخر، سيحصل على نسخة كاملة من DOM. تعمل طريقة `Clone` على تسريع عملية إنشاء المستندات، وتحتاج فقط إلى سطر واحد من التعليمات البرمجية للحصول على نسخة من مستندك.

ينتج عن الاستنساخ مستندًا جديدًا بنفس محتويات المستند الأصلي، ولكن مع نسخة فريدة من كل مستند [nodes](https://reference.aspose.com/words/ar/net/aspose.words/node/) للمستند الأصلي. يمكنك أيضًا تطبيق عملية النسخ على عقدة مستند باستخدام طريقة العقدة [Clone](https://reference.aspose.com/words/ar/net/aspose.words/node/clone/)، والتي تسمح لك بتكرار عقد الوثيقة المركبة مع العقد الفرعية الخاصة بها وبدونها.

{{% alert color="primary" %}}

لاحظ أنه عند تطبيق طريقة الاستنساخ، سيتم استنساخ كافة خصائص المستند.

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالي كيفية استنساخ مستند وإنشاء نسخة مكررة من قسم في هذا المستند:

{{< highlight csharp >}}
// Create a document.
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
builder.Writeln("This is the original document before applying the clone method"); 

// Clone the document.
Document clone = doc.Clone();

// Edit the cloned document.
DocumentBuilder builder = new DocumentBuilder(clone);
builder.Write("Section 1");
builder.InsertBreak(BreakType.SectionBreakNewPage);
builder.Write("Section 2");

// This shows what is in the document originally. The document has two sections.
Assert.AreEqual("Section 1\x000cSection 2", clone.GetText().Trim());

// Duplicate the last section and append the copy to the end of the document.
int lastSectionIdx = clone.Sections.Count - 1;
Section newSection = clone.Sections[lastSectionIdx].Clone();
clone.Sections.Add(newSection);

// Check what the document contains after we changed it.
Assert.AreEqual("Section 1\x000cSection 2", clone.GetText().Trim());
{{< /highlight >}}
