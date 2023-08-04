---
title: Working with Headers and Footers in C++
second_title: Aspose.Words for C++
articleTitle: Working with Headers and Footers
linktitle: Working with Headers and Footers
description: "How to manipulate headers and footers using C++."
type: docs
aliases:
 - /cpp/how-to-remove-footers-but-leave-headers-intact/
 - /cpp/how-to-create-headers-footers-using-documentbuilder/
weight: 33
url: /cpp/working-with-headers-and-footers/
---

Aspose.Words allows users to work with headers and footers in a document. In this article, we will consider several options for working with headers and footers as an example.

## How to Create Headers or Footers using DocumentBuilder

When creating headers and footers, special attention is paid to the following issues:

- How to specify the header/footer type.
- How to instruct the document to display different headers/footers for the first page and for odd/even pages.
- How to insert an absolutely positioned image into the header.
- How to set font and paragraph properties for the header/footer text.
- How to insert page numbers into the header/footer.
- How to use a table to make one part of the header/footer text-align to the left edge and the other to the right edge.
- How to control whether headers/footers of a subsequent section of the document use headers/footers defined in the previous section.
- How to ensure proper header/footer appearance when using different page orientation and size for subsequent sections.

The following code example shows how to create headers and footers using DocumentBuilder:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-CreateHeaderFooterUsingDocBuilder-CreateHeaderFooterUsingDocBuilder.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-CreateHeaderFooterUsingDocBuilder-CopyHeadersFootersFromPreviousSection.cpp" >}}

## How to Remove Only Footers

Each section in a document can have up to three headers and up to three footers (for first, even and odd pages). If you want to delete all footers in a document you need to loop through all sections and remove every footer node.

The following code example shows how to delete all footers from all sections, but leaves headers intact:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-RemoveFooters-RemoveFooters.cpp" >}}

{{% alert color="primary" %}}

You can download the sample file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}