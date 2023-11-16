---
title: Working with Headers and Footers in C#
second_title: Aspose.Words for .NET
articleTitle: Working with Headers and Footers
linktitle: Working with Headers and Footers
description: "How to manipulate headers and footers using C#. Create headers and footers C#. Remove headers or footers C#."
type: docs
weight: 70
url: /net/working-with-headers-and-footers/
---

Aspose.Words allows users to work with headers and footers in a document. A header is text that is placed at the top of a page, and a footer is text at the bottom of a page. Typically, these areas are used to insert information that should be repeated on all or some pages of the document, such as page numbers, creation date , company information, and so on.

## Create Headers or Footers using DocumentBuilder

If you want to add a document header or footer programmatically, the easiest way is to use the [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) class to do it.

The following code example shows how to add a header into a document:

EXAMPLE

## Specify Header or Footer Options

When you add a header or footer to a document, you can set some advanced properties. Aspose.Words provides users with the [HeaderFooter](https://reference.aspose.com/words/net/aspose.words/headerfooter/) and [HeaderFooterCollection](https://reference.aspose.com/words/net/aspose.words/headerfootercollection/) classes, as well as [HeaderFooterType](https://reference.aspose.com/words/net/aspose.words/headerfootertype/) enumeration that give you more control over the header and footer customization process.

### Specify Header or Footer Type

### Specify Whether to Display Different Headers or Footers for the First Page

### Specify Whether to Display Different Headers or Footers for Odd or Even Pages

### Insert an Absolutely Positioned Image into the Header

### Set Font and Paragraph Properties for Header or Footer Text

### Insert Page Numbers into the Header or Footer

### Align One Header or Footer Part to the Left and the Other Part to the Right

### Use Headers or Footers Defined in the Previous Section

### Ensure Header or Footer appearance when Using Different Page Orientations and Page Size


The following code example shows how to create headers and footers using DocumentBuilder:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-CreateHeaderFooterUsingDocBuilder-CreateHeaderFooterUsingDocBuilder.cs" >}}

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-CreateHeaderFooterUsingDocBuilder-CopyHeadersFootersFromPreviousSection.cs" >}}

## How to Remove Only Headers or Only Footers

Each section in a document can have up to three headers and up to three footers (for first, even, and odd pages). If you want to remove all headers or all footers in a document, you need to loop through all the sections and remove each corresponding header node or footer node.

The following code example shows how to remove all footers from all sections but leave headers intact. You can remove only headers in a similar way:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-RemoveFooters-RemoveFooters.cs" >}}

{{% alert color="primary" %}}

You can download the sample file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Header%20and%20footer%20types.docx).

{{% /alert %}}