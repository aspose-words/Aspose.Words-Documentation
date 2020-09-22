---
title: Working with Headers and Footers
type: docs
weight: 40
url: /java/working-with-headers-and-footers/
---

## **Create Headers Footers using DocumentBuilder**

The following sample code demonstrates how to create headers/footers using DocumentBuilder. Special attention is given to the following issues:

- How to specify header/footer type.
- How to instruct the document to display different headers/footers for the first page and for odd/even pages.
- How to insert an absolutely positioned image into the header.
- How to set font and paragraph properties for the header/footer text.
- How to insert page numbers into the header/footer.
- How to use a table to make one part of the header/footer text align to the left edge and the other to the right edge.
- How to control whether headers/footers of a subsequent section of the document use headers/footers defined in the previous section.
- How to ensure proper header/footer appearance when using different page orientation and size for subsequent sections.

Below example may be a bit complicated, but demonstrates many things that can be done with headers/footers.

{{< gist "" "b37032675133885c4c91814fb3d51a25" "Examples-src-main-java-com-aspose-words-examples-programming_documents-HeadersAndFooters-CreateHeadersFootersUsingDocumentBuilder-.java" >}}

## **Remove Footers but Leave Headers Intact**

Each section in a document can have up to three headers and up to three footers (for first, even and odd pages). If you want to delete all footers in a document you need to loop through all sections and remove every footer node.Below example deletes all footers from all sections, but leaves headers intact.

{{< gist "" "b37032675133885c4c91814fb3d51a25" "Examples-src-main-java-com-aspose-words-examples-programming_documents-HeadersAndFooters-RemoveFootersButLeaveHeadersIntact-.java" >}}
