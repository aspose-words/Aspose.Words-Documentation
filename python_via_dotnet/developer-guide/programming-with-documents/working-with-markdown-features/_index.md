---
title: Working with Markdown Features
second_title: Aspose.Words for Python via .NET
articleTitle: Working with Markdown Features
linktitle: Working with Markdown Features
description: "How to implement Markdown features using Python. All the features are represented as corresponding styles or direct formatting."
type: docs
weight: 420
url: /python-net/working-with-markdown-features/
aliases: [/python/working-with-markdown-features/]
---

This topic discusses how to implement Markdown features using Aspose.Words. Markdown is a simple way to format plain text that can easily be converted to HTML. Aspose.Words supports the following Markdown features:

- Headings
- Blockquotes
- Horizontal rules
- Bold emphasis
- Italic emphasis

The Markdown feature implementation mostly follows the `CommonMark` specification in Aspose.Words API and all the features are represented as corresponding styles or direct formatting. Which means that

- Bold and Italic are represented as [Font.bold](https://reference.aspose.com/words/python-net/aspose.words/font/bold/) and [Font.Italic](https://reference.aspose.com/words/python-net/aspose.words/font/italic/). 
- Headings are paragraphs with Heading 1 - Heading 6 styles. 
- Quotes are paragraphs with "Quote" in the style name. 
- HorizontalRule is a paragraph with HorizontalRule shape.

{{% alert color="primary" %}}

There are nuances of translating Markdown to the Aspose.Words Document Object Model (DOM), described in the article ["Translate Markdown to Document Object Model (DOM)"](/words/python-net/translate-markdown-to-document-object-model/).

{{% /alert %}}

## Markdown Document with Emphases

This section demonstrates you how to produce a markdown document with emphases as given below:

{{< highlight csharp >}}
Markdown treats asterisks (*) and underscores (_) as indicators of emphasis.
You can write **bold** or *italic* text. 
You can also write ***BoldItalic*** text.
{{< /highlight >}}

The following code snippet can be used to produce the above given markdown document.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-Emphases.py" >}}

## Markdown Document with Headings

This section demonstrates you how to produce a markdown document with headings as given below:

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

The following code snippet can be used to produce the above given markdown document.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-Headings.py" >}}

## Markdown Document with Block Quotes

This section demonstrates you how to produce a markdown document with block quotes as given below:

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

The following code snippet can be used to produce the above given markdown document.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-BlockQuotes.py" >}}

## Markdown Document with Horizontal Rule

This section demonstrates you how to produce a markdown document with Horizontal Rule as given below:

{{< highlight csharp >}}
We support Horizontal rules (Thematic breaks) in Markdown:
-----

{{< /highlight >}}

The following code snippet can be used to produce the above given markdown document.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-HorizontalRule.py" >}}

## Reading a Markdown Document

The following code snippet shows you how to read a markdown document.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-ReadMarkdownDocument.py" >}}

## Specify Markdown Save Options

Aspose.Words API provides [MarkdownSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/) class to specify additional options while saving a document into the Markdown format.

The following code example demonstrated how to specify various Markdown save options.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-SaveToMarkdownDocument.py" >}}

## How to Align Content Inside the Table while Exporting into Markdown

Aspose.Words API provides [TableContentAlignment](https://reference.aspose.com/words/python-net/aspose.words.saving/tablecontentalignment/) enumeration which defines alignment directions to align contents in tables while exporting into the Markdown document. The following code example demonstrates how to align content inside the table.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_markdown_save_options-ExportIntoMarkdownWithTableContentAlignment.py" >}}
