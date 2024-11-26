---
title: العمل مع ميزات Markdown
second_title: Aspose.Words لـ Python via .NET
articleTitle: العمل مع ميزات Markdown
linktitle: العمل مع ميزات Markdown
description: "كيفية تنفيذ ميزات Markdown باستخدام Python. يتم تمثيل جميع الميزات كأنماط مقابلة أو تنسيق مباشر."
type: docs
weight: 420
url: /ar/python-net/working-with-markdown-features/
timestamp: 2024-01-31-14-23-37
---

يناقش هذا الموضوع كيفية تنفيذ ميزات Markdown باستخدام Aspose.Words. Markdown هي طريقة بسيطة لتنسيق نص عادي يمكن تحويله بسهولة إلى HTML. يدعم Aspose.Words ميزات Markdown التالية:

- العناوين
- كتلة الاقتباس
- القواعد الأفقية
- التأكيد الجريء
- التركيز المائل

يتبع تنفيذ ميزة Markdown في الغالب مواصفات `CommonMark` في Aspose.Words API ويتم تمثيل جميع الميزات كأنماط مقابلة أو تنسيق مباشر. مما يعنى

- يتم تمثيل الخط الغامق والمائل بـ [Font.bold](https://reference.aspose.com/words/python-net/aspose.words/font/bold/) و[Font.Italic](https://reference.aspose.com/words/python-net/aspose.words/font/italic/)
- العناوين هي فقرات ذات عنوان 1 - عنوان 6 أنماط
- الاقتباسات عبارة عن فقرات تحتوي على كلمة "اقتباس" في اسم النمط
- HorizontalRule هي فقرة ذات شكل HorizontalRule.

{{% alert color="primary" %}}

هناك فروق دقيقة في ترجمة Markdown إلى Aspose.Words Document Object Model (DOM)، الموضحة في المقالة [ترجمة Markdown إلى Document Object Model (DOM)](/words/ar/python-net/translate-markdown-to-document-object-model/).

{{% /alert %}}

## وثيقة Markdown مع التأكيدات

يوضح لك هذا القسم كيفية إنشاء مستند markdown مع التأكيدات كما هو موضح أدناه:

{{< highlight csharp >}}
Markdown treats asterisks (*) and underscores (_) as indicators of emphasis.
You can write **bold** or *italic* text. 
You can also write ***BoldItalic*** text.
{{< /highlight >}}

يمكن استخدام مقتطف الكود التالي لإنتاج مستند markdown المذكور أعلاه.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-Emphases.py" >}}

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

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-Headings.py" >}}

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

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-BlockQuotes.py" >}}

## مستند Markdown بقاعدة أفقية

يوضح لك هذا القسم كيفية إنشاء مستند markdown باستخدام القاعدة الأفقية كما هو موضح أدناه:

{{< highlight csharp >}}
We support Horizontal rules (Thematic breaks) in Markdown:
-----

{{< /highlight >}}

يمكن استخدام مقتطف الكود التالي لإنتاج مستند markdown المذكور أعلاه.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-HorizontalRule.py" >}}

## قراءة مستند Markdown

يوضح لك مقتطف الكود التالي كيفية قراءة مستند markdown.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-ReadMarkdownDocument.py" >}}

## حدد خيارات حفظ Markdown

يوفر Aspose.Words API فئة [MarkdownSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/) لتحديد خيارات إضافية أثناء حفظ المستند بتنسيق Markdown.

يوضح مثال التعليمات البرمجية التالي كيفية تحديد خيارات حفظ Markdown المتنوعة.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-SaveToMarkdownDocument.py" >}}

## كيفية محاذاة المحتوى داخل الجدول أثناء التصدير إلى Markdown

يوفر Aspose.Words API تعداد [TableContentAlignment](https://reference.aspose.com/words/python-net/aspose.words.saving/tablecontentalignment/) الذي يحدد اتجاهات المحاذاة لمحاذاة المحتويات في الجداول أثناء التصدير إلى مستند Markdown. يوضح مثال التعليمات البرمجية التالي كيفية محاذاة المحتوى داخل الجدول.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_markdown_save_options-ExportIntoMarkdownWithTableContentAlignment.py" >}}
