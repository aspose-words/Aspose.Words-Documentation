---
title: How to Create Headers Footers using DocumentBuilder
type: docs
weight: 230
url: /cpp/how-to-create-headers-footers-using-documentbuilder/
---

{{% alert color="primary" %}} 

The following sample code demonstrates how to create headers/footers using DocumentBuilder..

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

## **Example**

Below example shows how to create headers footers using DocumentBuilder.

{{< gist "aspose-words" "38845012a35610163a07b547a36d6563" "cpp-Programming-Documents-Document-CreateHeaderFooterUsingDocBuilder-CreateHeaderFooterUsingDocBuilder.cpp" >}}

{{< gist "aspose-words" "38845012a35610163a07b547a36d6563" "cpp-Programming-Documents-Document-CreateHeaderFooterUsingDocBuilder-CopyHeadersFootersFromPreviousSection.cpp" >}}
