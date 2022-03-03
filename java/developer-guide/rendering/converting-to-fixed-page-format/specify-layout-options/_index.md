---
title: Specify Layout Options in Java
second_title: Aspose.Words for Java
articleTitle: Specify Layout Options
linktitle: Specify Layout Options
description: "Create output documents with various layouts, depending on the parameters specified in the Document using Java."
type: docs
weight: 10
url: /java/specify-layout-options/
---

Aspose.Words enables you to create output documents with various layouts, depending on the parameters specified in the [LayoutOptions](https://apireference.aspose.com/words/java/com.aspose.words/LayoutOptions) property of the **Document**. This property resembles some of the Microsoft Word user interface menu options described in this article.

For a complete list of parameters such as [ContinuousSectionPageNumberingRestart](https://apireference.aspose.com/words/java/com.aspose.words/layoutoptions#ContinuousSectionPageNumberingRestart) to calculate page numbers in a continuous section that restarts page numbering, or [IgnorePrinterMetrics](https://apireference.aspose.com/words/java/com.aspose.words/layoutoptions#IgnorePrinterMetrics) to ignore the "Use printer metrics to lay out document" compatibility option, see the [LayoutOptions](https://apireference.aspose.com/words/java/com.aspose.words/LayoutOptions) class page.

## Formatting Marks

Aspose.Words allows to manage formatting marks using the following properties:

- [ShowHiddenText](https://apireference.aspose.com/words/java/com.aspose.words/layoutoptions#ShowHiddenText) – a Boolean value, which specifies whether the hidden text is rendered.
- [ShowParagraphMarks](https://apireference.aspose.com/words/java/com.aspose.words/layoutoptions#ShowParagraphMarks) – a Boolean value, which specifies whether paragraph mark characters are rendered.

The page depicted in the example below contains three paragraphs. The second one is hidden. A user can change the **ShowHiddenText** option to display this hidden text on the page. Also, each paragraph has a paragraph mark at the end. The paragraph mark usually is not visible unless the **ShowParagraphMarks** property is set to render it.

![formatting_marks_example_aspose_words_java](specify-layout-options-1.png)

In Microsoft Word, these parameters are set using the "File → Options → Display" dialog box as follows:

![formatting_marks_ms_word_aspose_words_java](specify-layout-options-3.png)

## Comments and Revisions

With Aspose.Words, you can render document comments that will look the same as in Microsoft Word. To specify whether comments are rendered, use the [ShowComments](https://apireference.aspose.com/words/java/com.aspose.words/layoutoptions#ShowComments) property.

In Microsoft Word, this parameter is set using the "Track Changes Options" dialog box, as shown below:

![comments_and_revisions_ms_word_aspose_words_java](specify-layout-options-4.png)

Also, Aspose.Words allows you to display revisions in a document. Use the [RevisionOptions](https://apireference.aspose.com/words/java/com.aspose.words/layoutoptions#RevisionOptions) property of the **LayoutOptions** class to define whether the document revisions are displayed. To control their appearance (revision highlighting color, revision bar color, etc.), use the [RevisonOptions](https://apireference.aspose.com/words/java/com.aspose.words/RevisionOptions) class.

You can also have revisions displayed as comments to the content. For this purpose, use the [CommentDisplayMode](https://apireference.aspose.com/words/java/com.aspose.words/layoutoptions#CommentDisplayMode) property and [ShowInBalloons](https://apireference.aspose.com/words/java/com.aspose.words/CommentDisplayMode) value.

The following code example shows how to customize revisions display:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-SetShowInBalloons.java" >}}

The image below shows how Aspose.Words renders comments and the Delete revisions:

<img src="specify-layout-options-2.png" alt="comments_and_revisions_example_aspose_words_java" style="width:800px"/>

## Text Shaper for Advanced Typography Rendering

The [TextShaperFactory](https://apireference.aspose.com/words/java/com.aspose.words/ITextShaperFactory) property enables you to set the text shaping functionality, as well as the OpenType features support.

Use text shaping for document processing in the following main cases:

- A document uses Kerning, Numeral Shaping, Numeral Forms, or Ligatures.
- A document uses Complex Scripts, such as Arabic, Khmer, Thai, etc.

{{% alert color="primary" %}}

Text shaping will be enabled only when exporting a document to PDF or XPS.

{{% /alert %}}
