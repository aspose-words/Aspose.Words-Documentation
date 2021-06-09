---
title: Specify Layout Options
description: "Aspose.Words for C++ provides the ability to specify Layout Options for various document layouts."
type: docs
weight: 20
url: /cpp/specify-layout-options/
---

Aspose.Words enables you to create output documents with various layouts, depending on the parameters specified in the [LayoutOptions](https://apireference.aspose.com/words/cpp/class/aspose.words.layout.layout_options) property of the **Document**. This property resembles some of the Microsoft Word user interface menu options described in this article.

## Formatting Marks

Aspose.Words allows to manage formatting marks using the following properties:

- [ShowHiddenText](https://apireference.aspose.com/words/cpp/class/aspose.words.layout.layout_options/#a84518439d86438a2dfe0f4140d3db50e) – a Boolean value, which specifies whether the hidden text is rendered.
- [ShowParagraphMarks](https://apireference.aspose.com/words/cpp/class/aspose.words.layout.layout_options/#af1d6a9304691de76cb8247aa10194f35) – a Boolean value, which specifies whether paragraph mark characters are rendered.

The page depicted in the example below contains three paragraphs. The second one is hidden. A user can change the **ShowHiddenText** option to display this hidden text on the page. Also, each paragraph has a paragraph mark at the end. The paragraph mark usually is not visible unless the **ShowParagraphMarks** property is set to render it.

![specify-layout-options-aspose-words-cpp-1](specify-layout-options_1.png)

In Microsoft Word, these parameters are set using the "File → Options → Display" dialog box as follows:

![specify-layout-options-aspose-words-cpp-2](specify-layout-options_3.png)

## Comments and Revisions

With Aspose.Words, you can render document comments that will look the same as in Microsoft Word. To specify whether comments are rendered, use the [ShowComments](https://apireference.aspose.com/words/cpp/class/aspose.words.layout.layout_options/#a6aaf25d9ece89cf47d95f44de2e67fef) property.

In Microsoft Word, this parameter is set using the "Track Changes Options" dialog box, as shown below:

![specify-layout-options-aspose-words-cpp-3](specify-layout-options_4.png)

Also, Aspose.Words allows you to display revisions in a document. Use the [RevisionOptions](https://apireference.aspose.com/words/cpp/class/aspose.words.layout.layout_options/#a215ac992ec983b4a7260283493fc737d) property of the **LayoutOptions** class to define whether the document revisions are displayed. To control their appearance (revision highlighting color, revision bar color, etc.), use the [RevisonOptions](https://apireference.aspose.com/words/cpp/class/aspose.words.layout.revision_options/) class.

You can also have revisions displayed as comments to the content. For this purpose, use the [ShowInBalloons](https://apireference.aspose.com/words/cpp/class/aspose.words.layout.revision_options/#aaa6f9d22f7a8749c9d43f19c68b2ff31) option, as shown in the following code example:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRevisions-SetShowInBalloons.cpp" >}}

The image below shows how Aspose.Words renders comments and the Delete revisions:

<img src="specify-layout-options_2.png" alt="comments_and_revisions_example_aspose_words_cpp" style="width:800px"/>

## Text Shaper for Advanced Typography Rendering

The [TextShaperFactory](https://apireference.aspose.com/words/cpp/class/aspose.words.layout.layout_options/#a73bf6b5c10e1e6208e10110bbd6fed2e) property enables you to set the text shaping functionality, as well as the OpenType features support.

Use text shaping for document processing in the following main cases:

- A document uses Kerning, Numeral Shaping, Numeral Forms, or Ligatures.
- A document uses Complex Scripts, such as Arabic, Khmer, Thai, etc.

{{% alert color="primary" %}} 

Text shaping will be enabled only when exporting a document to PDF or XPS.

{{% /alert %}}
