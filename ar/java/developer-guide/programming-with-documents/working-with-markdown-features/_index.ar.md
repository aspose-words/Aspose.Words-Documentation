---
title: العمل مع Markdown الميزات في Java
second_title: Aspose.Words ل Java
articleTitle: العمل مع Markdown الميزات
linktitle: العمل مع Markdown الميزات
description: "كيفية تنفيذ Markdown الميزات باستخدام Java. يتم تمثيل جميع الميزات كأنماط مقابلة أو تنسيق مباشر."
type: docs
weight: 420
url: /ar/java/working-with-markdown-features/
timestamp: 2024-01-31-14-23-37
---

يناقش هذا الموضوع كيفية تنفيذ ميزات Markdown باستخدام Aspose.Words. Markdown هي طريقة بسيطة لتنسيق نص عادي يمكن تحويله بسهولة إلى HTML. Aspose.Words يدعم الميزات التالية Markdown:

- العناوين
- بلوككوتس
- القواعد الأفقية
- التركيز الجريء
- التركيز المائل

يتبع تنفيذ ميزة Markdown في الغالب مواصفات `CommonMark` في Aspose.Words API ويتم تمثيل جميع الميزات كأنماط مقابلة أو تنسيق مباشر. مما يعني أن

- يتم تمثيل الغامق والمائل على أنهما `Font.Bold` و `Font.Italic`.
- العناوين هي فقرات ذات أنماط Heading 1 - Heading 6.
- الاقتباسات هي فقرات تحتوي على "اقتباس" في اسم النمط.
- HorizontalRule هي فقرة ذات شكل `HorizontalRule`.

{{% alert color="primary" %}}

هناك فروق دقيقة في ترجمة Markdown إلى نموذج كائن المستند Aspose.Words (DOM)، الموضح في المقالة [ترجمة Markdown لتوثيق نموذج الكائن (DOM)](/words/java/translate-markdown-to-document-object-model/).

{{% /alert %}}


## Markdown وثيقة مع التركيز

يوضح لك هذا القسم كيفية إنتاج مستند markdown مع تأكيدات كما هو موضح أدناه:

{{< highlight csharp >}}
Markdown treats asterisks (*) and underscores (_) as indicators of emphasis.
You can write **bold** or *italic* text. 
You can also write ***BoldItalic***text.
{{< /highlight >}}

يمكن استخدام مقتطف الشفرة التالي لإنتاج المستند markdown المذكور أعلاه.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithEmphases.java" >}}


## Markdown وثيقة مع العناوين

يوضح لك هذا القسم كيفية إنتاج مستند markdown بعناوين كما هو موضح أدناه:

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

يمكن استخدام مقتطف الشفرة التالي لإنتاج المستند markdown المذكور أعلاه.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithHeadings.java" >}}

## Markdown وثيقة مع اقتباسات كتلة

يوضح لك هذا القسم كيفية إنتاج مستند markdown مع علامات اقتباس كتلة كما هو موضح أدناه:

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

يمكن استخدام مقتطف الشفرة التالي لإنتاج المستند markdown المذكور أعلاه.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithBlockQuotes.java" >}}

## Markdown وثيقة مع القاعدة الأفقية

يوضح لك هذا القسم كيفية إنتاج مستند markdown بقاعدة أفقية كما هو موضح أدناه:

{{< highlight csharp >}}
We support Horizontal rules (Thematic breaks) in Markdown:
-----

{{< /highlight >}}

يمكن استخدام مقتطف الشفرة التالي لإنتاج المستند markdown المذكور أعلاه.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithHorizontalRule.java" >}}

## قراءة Markdown وثيقة

يوضح لك مقتطف الشفرة التالي كيفية قراءة مستند markdown.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-ReadMarkdownDocument.java" >}}

## حدد Markdown حفظ الخيارات

Aspose.Words API يوفر [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) فئة لتحديد خيارات إضافية أثناء حفظ مستند في تنسيق Markdown.

يوضح مثال الكود التالي كيفية تحديد خيارات حفظ Markdown المختلفة.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-SaveAsMD.java" >}}

## كيفية محاذاة المحتوى داخل الجدول أثناء التصدير إلى Markdown

Aspose.Words API يوفر [TableContentAlignment](https://reference.aspose.com/words/java/com.aspose.words/tablecontentalignment/) التعداد الذي يحدد اتجاهات المحاذاة لمحاذاة المحتويات في الجداول أثناء التصدير إلى المستند Markdown. يوضح مثال التعليمات البرمجية التالية كيفية محاذاة المحتوى داخل الجدول.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-ExportIntoMarkdownWithTableContentAlignment.java" >}}
