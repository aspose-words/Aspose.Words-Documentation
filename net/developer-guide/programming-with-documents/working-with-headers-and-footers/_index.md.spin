---
title: Working with Headers and Footers
type: docs
weight: 70
url: /net/working-with-headers-and-footers/
---

## {How to Create|Create} Headers {or|and} Footers using DocumentBuilder {#create-headers-or-footers-using-documentbuilder}

{{% alert color="primary" %}} 

The following sample code {demonstrates|shows} how to create headers/footers using DocumentBuilder..

Special attention is given to the following issues:

- How to specify header/footer type.
- How to instruct the document to display different headers/footers for the first page and for odd/even pages.
- How to insert an absolutely positioned image into the header.
- How to set font and paragraph properties for the header/footer text.
- How to insert page numbers into the header/footer.
- How to use a table to make one part of the header/footer text align to the left edge and the other to the right edge.
- How to control whether headers/footers of a subsequent section of the document use headers/footers defined in the previous section.
- How to ensure proper header/footer appearance when using different page orientation and size for subsequent sections.

{{% /alert %}} 

Below example {shows|demonstrates} how to create headers footers using DocumentBuilder.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-CreateHeaderFooterUsingDocBuilder-CreateHeaderFooterUsingDocBuilder.cs" >}}

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-CreateHeaderFooterUsingDocBuilder-CopyHeadersFootersFromPreviousSection.cs" >}}

Each section in a document can have up to three headers and up to three footers (for first, even and odd pages). If you want to delete all footers in a document you need to loop through all sections and remove every footer node.

## {How to Remove|Remove} Footers {and|but} Leave {Headers Intact|Headers} {#remove-footers-and-leave-headers-intact}

Below example deletes all footers from all sections, but leaves headers intact. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Header%20and%20footer%20types.docx).

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-RemoveFooters-RemoveFooters.cs" >}}
