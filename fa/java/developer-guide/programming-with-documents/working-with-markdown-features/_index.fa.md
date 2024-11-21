---
title: کار با Markdown ویژگی ها در Java
second_title: Aspose.Words برای Java
articleTitle: کار با Markdown ویژگی های
linktitle: کار با Markdown ویژگی های
description: "چگونه پیاده سازی کنیم Markdown ویژگی های استفاده از Java... تمام ویژگی ها به عنوان سبک های مربوطه یا قالب بندی مستقیم نشان داده می شوند."
type: docs
weight: 420
url: /fa/java/working-with-markdown-features/
timestamp: 2024-01-31-14-23-37
---

این موضوع در مورد چگونگی پیاده سازی Markdown ویژگی های استفاده از Aspose.Words... Markdown یک راه ساده برای فرمت متن ساده است که به راحتی می تواند به HTML تبدیل شود. Aspose.Words پشتیبانی از موارد زیر Markdown ویژگی ها:

- – Heading
- Blockquotes
- قوانین افقی
- تاکید بر Bold
- تاکیدی

The The The The The The Markdown قابلیت پیاده سازی عمدتاً به دنبال `CommonMark` مشخصات در Aspose.Words API و تمام ویژگی ها به عنوان سبک های مربوطه یا قالب بندی مستقیم نشان داده می شوند. این بدان معنی است که

- Bold و Italic به عنوان `Font.Bold` و `Font.Italic`..
- سرفصل ها پاراگراف هایی با سر 1 هستند - شش سبک را رهبری می کنند
- نقل قول ها پاراگراف هایی با "Quote" در نام سبک هستند
- افقی یک پاراگراف با یک `HorizontalRule` شکل

{{% alert color="primary" %}}

تفاوت های ترجمه وجود دارد Markdown سوگند به Aspose.Words Document Object Model ()DOM• شرح داده شده در مقاله [ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه ترجمه Markdown برای Document Object Model ()DOM))](/words/fa/java/translate-markdown-to-document-object-model/)...

{{% /alert %}}


## Markdown مستند با Emlits

این بخش نشان می دهد که چگونه می توانید یک markdown برچسب ها:

{{< highlight csharp >}}
Markdown treats asterisks (*) and underscores (_) as indicators of emphasis.
You can write **bold** or *italic* text. 
You can also write ***BoldItalic***text.
{{< /highlight >}}

قطعه کد زیر را می توان برای تولید نسخه بالا استفاده کرد markdown سند

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithEmphases.java" >}}


## Markdown مستند با Headings

این بخش نشان می دهد که چگونه می توانید یک markdown برچسب ها:

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

قطعه کد زیر را می توان برای تولید بالا استفاده کرد markdown سند

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithHeadings.java" >}}

## Markdown برچسب ها: Block Citations

این بخش نشان می دهد که چگونه می توانید یک markdown برچسب ها:

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

قطعه کد زیر را می توان برای تولید بالا استفاده کرد markdown سند

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithBlockQuotes.java" >}}

## Markdown مستند با قانون افقی

این بخش نشان می دهد که چگونه می توانید یک markdown مستند با افقی قانون در زیر:

{{< highlight csharp >}}
We support Horizontal rules (Thematic breaks) in Markdown:
-----

{{< /highlight >}}

قطعه کد زیر را می توان برای تولید نسخه بالا استفاده کرد markdown سند

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithHorizontalRule.java" >}}

## خواندن Markdown مستند مستند

قطعه کد زیر به شما نشان می دهد که چگونه یک مطالعه کنید markdown سند

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-ReadMarkdownDocument.java" >}}

## Specify Markdown گزینه Save Options

Aspose.Words API فراهم می کند [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) کلاس برای مشخص کردن گزینه های اضافی در حالی که صرفه جویی در یک سند در Markdown فرمت

مثال کد زیر نشان داد که چگونه می توان انواع مختلف را مشخص کرد Markdown گزینه ها را ذخیره کنید.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-SaveAsMD.java" >}}

## چگونه محتوا را در داخل جدول قرار دهیم در حالی که صادرات Markdown

Aspose.Words API فراهم می کند [TableContentAlignment](https://reference.aspose.com/words/java/com.aspose.words/tablecontentalignment/) تکرار که دستورالعمل های تراز را برای تراز کردن محتوا در جداول تعریف می کند در حالی که صادرات به جدول Markdown سند مثال کد زیر نشان می دهد که چگونه محتوا را در داخل جدول قرار دهید.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-ExportIntoMarkdownWithTableContentAlignment.java" >}}
