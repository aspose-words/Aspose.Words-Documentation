---
title: کار با ویژگی های Markdown در C#
second_title: Aspose.Words برای .NET
articleTitle: کار با ویژگی های Markdown
linktitle: کار با ویژگی های Markdown
description: "نحوه پیاده سازی ویژگی های Markdown با استفاده از C#. همه ویژگی ها به عنوان سبک های مربوطه یا قالب بندی مستقیم نشان داده می شوند."
type: docs
weight: 420
url: /fa/net/working-with-markdown-features/
timestamp: 2024-01-31-14-23-37
---

این مبحث نحوه پیاده سازی ویژگی های Markdown با استفاده از Aspose.Words را مورد بحث قرار می دهد. Markdown یک راه ساده برای قالب بندی متن ساده است که به راحتی می توان آن را به HTML تبدیل کرد. Aspose.Words از ویژگی های Markdown زیر پشتیبانی می کند:

- سرفصل ها
- نقل قول های بلوکی
- قوانین افقی
- تاکید جسورانه
- تاکید کج

پیاده سازی ویژگی Markdown عمدتاً از مشخصات `CommonMark` در Aspose.Words API پیروی می کند و همه ویژگی ها به عنوان سبک های مربوطه یا قالب بندی مستقیم نشان داده می شوند. که به این معنی است

- Bold و Italic به صورت `Font.Bold` و `Font.Italic` نشان داده می شوند
- سرفصل ها پاراگراف هایی با سبک سرفصل 1 - سرفصل 6 هستند
- نقل قول ها پاراگراف هایی با "نقل قول" در نام سبک هستند
- HorizontalRule یک پاراگراف با شکل HorizontalRule است.

{{% alert color="primary" %}}

تفاوت های ظریفی برای ترجمه Markdown به Aspose.Words Document Object Model (DOM) وجود دارد که در مقاله [ترجمه Markdown به Document Object Model (DOM)](/words/fa/net/translate-markdown-to-document-object-model/) توضیح داده شده است.

{{% /alert %}}

## سند Markdown با تاکید

این بخش به شما نشان می دهد که چگونه یک سند markdown را با تاکیدات زیر تولید کنید:

{{< highlight csharp >}}
Markdown treats asterisks (*) and underscores (_) as indicators of emphasis.
You can write **bold** or *italic* text. 
You can also write ***BoldItalic*** text.
{{< /highlight >}}

قطعه کد زیر را می توان برای تولید سند markdown داده شده در بالا استفاده کرد.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithEmphases.cs" >}}

## سند Markdown با سرفصل ها

این بخش به شما نشان می دهد که چگونه یک سند markdown را با عناوین زیر تولید کنید:

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

قطعه کد زیر را می توان برای تولید سند markdown داده شده در بالا استفاده کرد.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithHeadings.cs" >}}

## سند Markdown با نقل قول بلوک

این بخش به شما نشان می دهد که چگونه یک سند markdown با نقل قول های بلوکی تولید کنید که در زیر آورده شده است:

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

قطعه کد زیر را می توان برای تولید سند markdown داده شده در بالا استفاده کرد.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithBlockQuotes.cs" >}}

## سند Markdown با قانون افقی

این بخش به شما نشان می دهد که چگونه یک سند markdown را با قانون افقی به شرح زیر تولید کنید:

{{< highlight csharp >}}
We support Horizontal rules (Thematic breaks) in Markdown:
-----

{{< /highlight >}}

قطعه کد زیر را می توان برای تولید سند markdown داده شده در بالا استفاده کرد.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderHorizontalRule-DocumentBuilderInsertHorizontalRule.cs" >}}

## خواندن یک سند Markdown

قطعه کد زیر نحوه خواندن یک سند markdown را به شما نشان می دهد.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithMarkdownFeatures-ReadMarkdownDocument.cs" >}}

## گزینه های ذخیره Markdown را مشخص کنید

Aspose.Words API کلاس [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/) را برای تعیین گزینه های اضافی در حین ذخیره یک سند در قالب Markdown فراهم می کند.

مثال کد زیر نحوه تعیین گزینه های ذخیره سازی مختلف Markdown را نشان می دهد.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-SpecifyMarkdownSaveOptions-SaveAsMD.cs" >}}

## نحوه تراز کردن محتوا در داخل جدول هنگام صادرات به Markdown

Aspose.Words API شمارش [TableContentAlignment](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/tablecontentalignment/) را ارائه می دهد که جهت تراز را برای تراز کردن محتویات در جداول در حین صادرات به سند Markdown تعریف می کند. مثال کد زیر نحوه تراز کردن محتوا در جدول را نشان می دهد.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-SpecifyMarkdownSaveOptions-ExportIntoMarkdownWithTableContentAlignment.cs" >}}
