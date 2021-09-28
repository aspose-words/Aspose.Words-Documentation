---
title: Working with Headers and Footers
type: docs
weight: 40
url: /java/working-with-headers-and-footers/
---

## How to Create Headers Footers using DocumentBuilder

{{% alert color="primary" %}} 

The following sample code {demonstrates|shows} how to create headers/footers using DocumentBuilder.

Special attention is given to the following issues:

- How to specify the header/footer type.
- How to instruct the document to display different headers/footers for the first page and for odd/even pages.
- How to insert an absolutely positioned image into the header.
- How to set font and paragraph properties for the header/footer text.
- How to insert page numbers into the header/footer.
- How to use a table to make one part of the header/footer text-align to the left edge and the other to the right edge.
- How to control whether headers/footers of a subsequent section of the document use headers/footers defined in the previous section.
- How to ensure proper header/footer appearance when using different page orientation and size for subsequent sections.

{{% /alert %}} 

The code example given below {shows|demonstrates} how to create headers footers using DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-HeadersAndFooters-CreateHeadersFootersUsingDocumentBuilder-CreateHeadersFootersUsingDocumentBuilder.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-HeadersAndFooters-CreateHeadersFootersUsingDocumentBuilder-copyHeadersFootersFromPreviousSection.java" >}}

Each section in a document can have up to three headers and up to three footers (for first, even and odd pages). If you want to delete all footers in a document you need to loop through all sections and remove every footer node.

## How to Remove Footers but Leave Headers Intact

The code example given below deletes all footers from all sections, but leaves headers intact. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/HeadersAndFooters/HeaderFooter.RemoveFooters.doc).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-HeadersAndFooters-RemoveFootersButLeaveHeadersIntact-RemoveFootersButLeaveHeadersIntact.java" >}}
