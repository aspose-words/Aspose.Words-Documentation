---
title: Specify Layout Options
description: "Aspose.Words for .NET provides the ability to specify Layout Options for various document layouts."
type: docs
weight: 10
url: /net/specify-layout-options/
---

Aspose.Words enables you to create output documents with various layouts, depending on the parameters specified in the [LayoutOptions](https://apireference.aspose.com/net/words/aspose.words.layout/layoutoptions) property of the **Document**. This property resembles some of the Microsoft Word user interface menu options described in this article.

## Formatting Marks

Aspose.Words allows to manage formatting marks using the following properties:

- [ShowHiddenText](https://apireference.aspose.com/net/words/aspose.words.layout/layoutoptions/properties/showhiddentext) – a Boolean value, which specifies whether the hidden text is rendered.
- [ShowParagraphMarks](https://apireference.aspose.com/net/words/aspose.words.layout/layoutoptions/properties/showparagraphmarks) – a Boolean value, which specifies whether paragraph mark characters are rendered.

The page depicted in the example below contains three paragraphs. The second one is hidden. A user can change the **ShowHiddenText** option to display this hidden text on the page. Also, each paragraph has a paragraph mark at the end. The paragraph mark usually is not visible unless the **ShowParagraphMarks** property is set to render it.

![specify-layout-options_1](specify-layout-options_1.png)

In Microsoft Word, these parameters are set using the "File → Options → Display" dialog box as follows:

![specify-layout-options_2](specify-layout-options_2.jpg)

## Comments and Revisions

With Aspose.Words, you can render document comments that will look the same as in Microsoft Word. To specify whether comments are rendered, use the [ShowComments](https://apireference.aspose.com/net/words/aspose.words.layout/layoutoptions/properties/showcomments) property.

In Microsoft Word, this parameter is set using the "Track Changes Options" dialog box, as shown below:

![specify-layout-options_3](specify-layout-options_3.jpg)

Also, Aspose.Words allows you to display revisions in a document. Use the [RevisionOptions](https://apireference.aspose.com/net/words/aspose.words.layout/layoutoptions/properties/revisionoptions) property of the **LayoutOptions** class to define whether the document revisions are displayed. To control their appearance (revision highlighting color, revision bar color, etc.), use the [RevisonOptions](https://apireference.aspose.com/net/words/aspose.words.layout/revisionoptions) class.

You can also have revisions displayed as comments to the content. For this purpose, use the [ShowInBalloons](https://apireference.aspose.com/net/words/aspose.words.layout/revisionoptions/properties/showinballoons) option, as shown in the following code example:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithRevisions-SetShowInBalloons.cs" >}}

The image below shows how Aspose.Words renders comments and the Delete revisions:

![specify-layout-options_3](specify-layout-options_4.png)

## Text Shaper for Advanced Typography Rendering

The [TextShaperFactory](https://apireference.aspose.com/net/words/aspose.words.layout/layoutoptions/properties/textshaperfactory) property enables you to set the text shaping functionality, as well as the OpenType features support.

Use text shaping for document processing in the following main cases:

- A document uses Kerning, Numeral Shaping, Numeral Forms, or Ligatures.
- A document uses Complex Scripts, such as Arabic, Khmer, Thai, etc.

{{% alert color="primary" %}} 

Text shaping will be enabled only when exporting a document to PDF or XPS.

{{% /alert %}}
