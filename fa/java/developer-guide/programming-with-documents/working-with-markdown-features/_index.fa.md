---
title: کار با ویژگی های Markdown در Java
second_title: Aspose.Words برای Java
articleTitle: کار با ویژگی های Markdown
linktitle: کار با ویژگی های Markdown
description: "چگونه ویژگی های Markdown را با استفاده از Java پیاده سازی کنیم. تمام ویژگی ها به عنوان سبک های مربوطه یا قالب بندی مستقیم نشان داده می شوند."
type: docs
weight: 420
url: /fa/java/working-with-markdown-features/
timestamp: 2024-01-31-14-23-37
---

این موضوع در مورد چگونگی پیاده سازی ویژگی های Markdown با استفاده از Aspose.Words بحث می کند. Markdown یک روش ساده برای قالب بندی متن ساده است که به راحتی می تواند به HTML تبدیل شود. Aspose.Words از ویژگی های زیر Markdown پشتیبانی می کند:

- عناوین
- نقل قول های بلوکی
- قوانین افقی
- تاکید جسورانه
- تأکید کج

پیاده سازی ویژگی Markdown عمدتا از مشخصات `CommonMark` در Aspose.Words API پیروی می کند و تمام ویژگی ها به عنوان سبک های مربوطه یا قالب بندی مستقیم نشان داده می شوند. که به این معنی است که

- با خط چاق و خط کش به شکل `Font.Bold` و `Font.Italic` نشان داده شده است.
- عنوان ها پاراگراف هایی با سبک های Heading 1 - Heading 6 هستند.
- نقل قول ها پاراگراف هایی با "نقل قول" در نام سبک هستند.
- HorizontalRule یک پاراگراف با شکل `HorizontalRule` است.

{{% alert color="primary" %}}

تفاوت های ظریف ترجمه Markdown به مدل شیء سند Aspose.Words (DOM) وجود دارد که در مقاله شرح داده شده است [ترجمه Markdown به مستند سازی مدل شی (DOM)](/words/java/translate-markdown-to-document-object-model/).

{{% /alert %}}


## Markdown سند با تاکید

این بخش به شما نشان می دهد که چگونه یک سند markdown با تاکید به عنوان زیر داده شده است:

{{< highlight csharp >}}
Markdown treats asterisks (*) and underscores (_) as indicators of emphasis.
You can write **bold** or *italic* text. 
You can also write ***BoldItalic***text.
{{< /highlight >}}

برای تولید سند markdown داده شده در بالا می توان از قطعه کد زیر استفاده کرد.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithEmphases.java" >}}


## Markdown سند با عناوین

این بخش به شما نشان می دهد که چگونه یک سند markdown با عناوین زیر تولید کنید:

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

از قطعه کد زیر می توان برای تولید سند markdown بالا استفاده کرد.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithHeadings.java" >}}

## Markdown سند با نقل قول بلوک

این بخش به شما نشان می دهد که چگونه یک سند markdown با نقل قول های بلوک را به عنوان زیر ارائه دهید:

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

از قطعه کد زیر می توان برای تولید سند markdown بالا استفاده کرد.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithBlockQuotes.java" >}}

## Markdown سند با قانون افقی

این بخش به شما نشان می دهد که چگونه یک سند markdown با قانون افقی را به عنوان زیر ارائه دهید:

{{< highlight csharp >}}
We support Horizontal rules (Thematic breaks) in Markdown:
-----

{{< /highlight >}}

برای تولید سند markdown داده شده در بالا می توان از قطعه کد زیر استفاده کرد.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithHorizontalRule.java" >}}

## خواندن یک سند Markdown

قطعه کد زیر به شما نشان می دهد که چگونه یک سند markdown را بخوانید.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-ReadMarkdownDocument.java" >}}

## گزینه های ذخیره Markdown را مشخص کنید

Aspose.Words API کلاس [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) را برای مشخص کردن گزینه های اضافی در حالی که یک سند را در فرمت Markdown ذخیره می کند، فراهم می کند.

مثال کد زیر نشان داد که چگونه گزینه های مختلف Markdown save را مشخص کنیم.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-SaveAsMD.java" >}}

## چگونه محتوای داخل جدول را در حالی که به Markdownصادر می شود، تراز کنیم

Aspose.Words API [TableContentAlignment](https://reference.aspose.com/words/java/com.aspose.words/tablecontentalignment/) شمارش را فراهم می کند که جهت های تراز را برای تراز کردن محتویات در جداول در حالی که به سند Markdown صادر می شود، تعریف می کند. مثال کد زیر نشان می دهد که چگونه محتوای داخل جدول را تراز کنیم.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-ExportIntoMarkdownWithTableContentAlignment.java" >}}
