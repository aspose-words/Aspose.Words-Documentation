---
title: العمل مع Markdown المعالم Java
second_title: Aspose.Words for Java
articleTitle: العمل مع Markdown المعالم
linktitle: العمل مع Markdown المعالم
description: "كيفية التنفيذ Markdown المعالم Java. وتُمثَّل جميع السمات على أنها أساليب مقابلة أو شكل مباشر."
type: docs
weight: 420
url: /ar/java/working-with-markdown-features/
timestamp: 2024-01-31-14-23-37
---

يناقش هذا الموضوع كيفية تنفيذ Markdown المعالم Aspose.Words. Markdown هي طريقة بسيطة لتشكيل نص سهل يمكن تحويله بسهولة إلى HTML. Aspose.Words تؤيد ما يلي: Markdown السمات:

- العناوين
-المقتطفات
- القواعد الأفقية
- التركيز الكبير
- التركيز الايطالي

The Markdown التنفيذ الرئيسي يتبع في معظمه `CommonMark` المواصفات Aspose.Words API وجميع الملامح مُمثَّلة على أنها أساليب مقابلة أو شكل مباشر. مما يعني

- Bold and Italic are represented as `Font.Bold` و `Font.Italic`
-العناوين هي فقرات مع العنوان 1
-الذئبة هي فقرات مع "الكوت" في اسم الموضة
- هوريزونتال رول هو فقرة مع `HorizontalRule` شكل

{{% alert color="primary" %}}

هناك نقص في الترجمة Markdown إلى Aspose.Words Document Object Model )أ(DOM)، الوارد وصفه في المادة [التحويل Markdown إلى Document Object Model )أ(DOM)](/words/ar/java/translate-markdown-to-document-object-model/).

{{% /alert %}}


## Markdown الوثائق مع التركيزات

هذا القسم يُظهر لك كيف تُنتج markdown الوثيقة مع التركيزات على النحو المبين أدناه:

{{< highlight csharp >}}
Markdown treats asterisks (*) and underscores (_) as indicators of emphasis.
You can write **bold** or *italic* text. 
You can also write ***BoldItalic***text.
{{< /highlight >}}

يمكن استخدام الدمية الرمزية التالية لإنتاج الجاذبية المذكورة أعلاه markdown الوثيقة.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithEmphases.java" >}}


## Markdown الوثيقة مع العناوين

هذا القسم يُظهر لك كيف تُنتج markdown الوثيقة مع العناوين على النحو المبين أدناه:

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

يمكن استخدام الدمية الرمزية التالية لإنتاج ما سبق ذكره markdown الوثيقة.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithHeadings.java" >}}

## Markdown Document with Block Quotes

هذا القسم يُظهر لك كيف تُنتج markdown الوثيقة ذات الاقتباسات المجمدة على النحو المبين أدناه:

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

يمكن استخدام الدمية الرمزية التالية لإنتاج ما سبق ذكره markdown الوثيقة.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithBlockQuotes.java" >}}

## Markdown Document with Horizontal Rule

هذا القسم يُظهر لك كيف تُنتج markdown وثيقة مع هوريزونتال القاعدة على النحو المبين أدناه:

{{< highlight csharp >}}
We support Horizontal rules (Thematic breaks) in Markdown:
-----

{{< /highlight >}}

يمكن استخدام الدمية الرمزية التالية لإنتاج الجاذبية المذكورة أعلاه markdown الوثيقة.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithHorizontalRule.java" >}}

## قراءة Markdown الوثيقة

قناصة الشفرة التالية تظهر لك كيف تقرأ markdown الوثيقة.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-ReadMarkdownDocument.java" >}}

## التحديد Markdown الخيارات المتاحة

Aspose.Words API توفير [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) درجة لتحديد خيارات إضافية مع توفير وثيقة في الوقت نفسه Markdown شكل

وأظهر المثال الرمزي التالي كيفية تحديد مختلف Markdown وفر الخيارات

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-SaveAsMD.java" >}}

## How to Align Content Inside the Table while Exporting into Markdown

Aspose.Words API توفير [TableContentAlignment](https://reference.aspose.com/words/java/com.aspose.words/tablecontentalignment/) العد الذي يحدد اتجاهات المواءمة لمواءمة المحتويات في الجداول مع التصدير في الوقت نفسه Markdown الوثيقة. ويبين المثال الرمزي التالي كيفية مواءمة المحتوى داخل الجدول.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-ExportIntoMarkdownWithTableContentAlignment.java" >}}
