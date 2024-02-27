---
title: العمل مع ميزات Markdown في C#
second_title: Aspose.Words لـ .NET
articleTitle: العمل مع ميزات Markdown
linktitle: العمل مع ميزات Markdown
description: "كيفية تنفيذ ميزات Markdown باستخدام C#. يتم تمثيل جميع الميزات كأنماط مقابلة أو تنسيق مباشر."
type: docs
weight: 420
url: /ar/net/working-with-markdown-features/
---

يناقش هذا الموضوع كيفية تنفيذ ميزات Markdown باستخدام Aspose.Words. Markdown هي طريقة بسيطة لتنسيق نص عادي يمكن تحويله بسهولة إلى HTML. يدعم Aspose.Words ميزات Markdown التالية:

- العناوين
- كتلة الاقتباس
- القواعد الأفقية
- التأكيد الجريء
- التركيز المائل

يتبع تنفيذ ميزة Markdown في الغالب مواصفات `CommonMark` في Aspose.Words API ويتم تمثيل جميع الميزات كأنماط مقابلة أو تنسيق مباشر. مما يعنى

- يتم تمثيل الخط الغامق والمائل بـ `Font.Bold` و`Font.Italic`
- العناوين هي فقرات ذات عنوان 1 - عنوان 6 أنماط
- الاقتباسات عبارة عن فقرات تحتوي على كلمة "اقتباس" في اسم النمط
- HorizontalRule هي فقرة ذات شكل HorizontalRule.

{{% alert color="primary" %}}

هناك فروق دقيقة في ترجمة Markdown إلى Aspose.Words Document Object Model (DOM)، الموضحة في المقالة [ترجمة Markdown إلى Document Object Model (DOM)](/words/ar/net/translate-markdown-to-document-object-model/).

{{% /alert %}}

## وثيقة Markdown مع التأكيدات

يوضح لك هذا القسم كيفية إنشاء مستند markdown مع التأكيدات كما هو موضح أدناه:

{{< highlight csharp >}}
Markdown treats asterisks (*) and underscores (_) as indicators of emphasis.
You can write **bold** or *italic* text. 
You can also write ***BoldItalic*** text.
{{< /highlight >}}

يمكن استخدام مقتطف الكود التالي لإنتاج مستند markdown المذكور أعلاه.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithEmphases.cs" >}}

## وثيقة Markdown مع العناوين

يوضح لك هذا القسم كيفية إنشاء مستند markdown بالعناوين الموضحة أدناه:

{{< highlight csharp >}}
The following produces headings:
# Heading1
## Heading2
### Heading3
#### Heading4
##### Heading5
###### Heading6
# **Bold Heading1**
{{< /highlight >}}

يمكن استخدام مقتطف الكود التالي لإنتاج مستند markdown المذكور أعلاه.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithHeadings.cs" >}}

## وثيقة Markdown مع اقتباسات جماعية

يوضح لك هذا القسم كيفية إنشاء مستند markdown مع علامات اقتباس كما هو موضح أدناه:

{{< highlight csharp >}}
We support blockquotes in Markdown:
>*Lorem*
>*ipsum*
>The quotes can be of any level and can be nested:
>>>Quote level 3
>>>
>>>>Nested quote level 4
>
>*Back to first level*
>### Headings are allowed inside Quotes
>{{< /highlight >}}

يمكن استخدام مقتطف الكود التالي لإنتاج مستند markdown المذكور أعلاه.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithBlockQuotes.cs" >}}

## مستند Markdown بقاعدة أفقية

يوضح لك هذا القسم كيفية إنشاء مستند markdown باستخدام القاعدة الأفقية كما هو موضح أدناه:

{{< highlight csharp >}}
We support Horizontal rules (Thematic breaks) in Markdown:
-----

{{< /highlight >}}

يمكن استخدام مقتطف الكود التالي لإنتاج مستند markdown المذكور أعلاه.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderHorizontalRule-DocumentBuilderInsertHorizontalRule.cs" >}}

## قراءة مستند Markdown

يوضح لك مقتطف الكود التالي كيفية قراءة مستند markdown.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithMarkdownFeatures-ReadMarkdownDocument.cs" >}}

## حدد خيارات حفظ Markdown

يوفر Aspose.Words API فئة [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/) لتحديد خيارات إضافية أثناء حفظ المستند بتنسيق Markdown.

يوضح مثال التعليمات البرمجية التالي كيفية تحديد خيارات حفظ Markdown المتنوعة.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-SpecifyMarkdownSaveOptions-SaveAsMD.cs" >}}

## كيفية محاذاة المحتوى داخل الجدول أثناء التصدير إلى Markdown

يوفر Aspose.Words API تعداد [TableContentAlignment](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/tablecontentalignment/) الذي يحدد اتجاهات المحاذاة لمحاذاة المحتويات في الجداول أثناء التصدير إلى مستند Markdown. يوضح مثال التعليمات البرمجية التالي كيفية محاذاة المحتوى داخل الجدول.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-SpecifyMarkdownSaveOptions-ExportIntoMarkdownWithTableContentAlignment.cs" >}}
