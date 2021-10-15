---
title: Specify Layout Options
description: "Aspose.Words for .NET provides the ability to specify Layout Options for various document layouts."
type: docs
weight: 10
url: /net/specify-layout-options/
---

Aspose.Words enables you to create output documents with various layouts, depending on the parameters specified in properties of the [LayoutOptions](https://apireference.aspose.com/words/net/aspose.words.layout/layoutoptions) class. Some of these properties resemble some of the Microsoft Word user interface menu options – they will be described in this article.

For a complete list of parameters such as [ContinuousSectionPageNumberingRestart](https://apireference.aspose.com/words/net/aspose.words.layout/layoutoptions/properties/continuoussectionpagenumberingrestart) to calculate page numbers in a continuous section that restarts page numbering, or [IgnorePrinterMetrics](https://apireference.aspose.com/words/net/aspose.words.layout/layoutoptions/properties/ignoreprintermetrics) to ignore the "Use printer metrics to lay out document" compatibility option, see the [LayoutOptions](https://apireference.aspose.com/words/net/aspose.words.layout/layoutoptions) class page.

## Formatting Marks

Aspose.Words enables to manage formatting marks using the following properties:

- [ShowHiddenText](https://apireference.aspose.com/words/net/aspose.words.layout/layoutoptions/properties/showhiddentext) – a Boolean value, which specifies whether the hidden text is rendered.
- [ShowParagraphMarks](https://apireference.aspose.com/words/net/aspose.words.layout/layoutoptions/properties/showparagraphmarks) – a Boolean value, which specifies whether paragraph mark characters are rendered.

The page depicted in the example below contains three paragraphs. The second one is hidden. A user can change the **ShowHiddenText** option to display this hidden text on the page. Also, each paragraph has a paragraph mark at the end. The paragraph mark usually is not visible unless the **ShowParagraphMarks** property is set to render it.

![specify-layout-options_1](specify-layout-options_1.png)

In Microsoft Word, these parameters are set using the "File → Options → Display" dialog box as follows:

![specify-layout-options_2](specify-layout-options_2.jpg)

## Comments and Revisions

With Aspose.Words, you can render document comments that will look the same as in Microsoft Word. To specify whether comments are rendered, use the [ShowComments](https://apireference.aspose.com/words/net/aspose.words.layout/layoutoptions/properties/showcomments) property.

In Microsoft Word, this parameter is set using the "Track Changes Options" dialog box, as shown below:

![specify-layout-options_3](specify-layout-options_3.jpg)

Also, Aspose.Words enables you to display revisions in a document. Use the [RevisionOptions](https://apireference.aspose.com/words/net/aspose.words.layout/layoutoptions/properties/revisionoptions) property of the **LayoutOptions** class to define whether the document revisions are displayed. To control their appearance (revision highlighting color, revision bar color, etc.), use the [RevisonOptions](https://apireference.aspose.com/words/net/aspose.words.layout/revisionoptions) class.

You can also have revisions displayed as comments to the content. For this purpose, use the [CommentDisplayMode](https://apireference.aspose.com/words/net/aspose.words.layout/layoutoptions/properties/commentdisplaymode) property and [ShowInBalloons](https://apireference.aspose.com/words/net/aspose.words.layout/commentdisplaymode) value.

The following code example demonstrates how to customize revisions display:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Revisions-ShowRevisionsInBalloons.cs" >}}

The image below demonstrates how Aspose.Words renders comments and the Delete revisions:

<img src="specify-layout-options_4.png" alt="comments_and_revisions_example_aspose_words_net" style="width:800px"/>

## Text Shaper for Advanced Typography Rendering

The [TextShaperFactory](https://apireference.aspose.com/words/net/aspose.words.layout/layoutoptions/properties/textshaperfactory) property enables you to set the text shaping functionality, as well as the OpenType features support.

Use text shaping for document processing in the following main cases:

- A document uses Kerning, Numeral Shaping, Numeral Forms, or Ligatures.
- A document uses Complex Scripts, such as Arabic, Khmer, Thai, etc.

{{% alert color="primary" %}} 

Text shaping will be enabled only when exporting a document to PDF or XPS.

{{% /alert %}}
