---
title: Working with Content Control SDT
second_title: Aspose.Words for C++
articleTitle: Working with Content Control SDT
linktitle: Working with Content Control SDT
type: docs
description: "Advanced document content management, how to create and manipulate content controls (Structured Document Tags) using C++."
weight: 390
url: /cpp/structured-document-tags-or-content-control/
aliases: [/cpp/working-with-content-control-sdt/]
---

In Microsoft Word, you can create a form by starting with a template and adding content controls, including check boxes, text boxes, date pickers, and drop-down lists. In Aspose.Words, a Structured Document Tag or content control from any document loaded into Aspose.Words is imported as a StructuredDocumentTag node. Structured document tags (SDT or content control) allow to embed customer-defined semantics as well as its behavior and appearance into a document. StructuredDocumentTag can occur in a document in the following places:

- Block-level - Among paragraphs and tables, as a child of a Body, HeaderFooter, Comment, Footnote or a Shape node
- Row-level - Among rows in a table, as a child of a Table node
- Cell-level - Among cells in a table row, as a child of a Row node
- Inline-level - Among inline content inside, as a child of a Paragraph
- Nested inside another StructuredDocumentTag

## How to Set Style to Format Text Typed into the Content Control

If you want to set the style of content control, you can use `StructuredDocumentTag.Style` or `StructuredDocumentTag.StyleName` properties. When you type the text into content control in the output document, the typed text will have style "Quote".

{{% alert color="primary" %}}

Note that only Linked and Character styles can be applied to content control. An InvalidOperationException ("Cannot apply this style to the SDT") is thrown when a style that exists but is not Linked or Character style is being applied.

{{% /alert %}}

The following code example shows how to set the style of content control:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-SetContentControlStyle.cpp" >}}

## Working with Repeating Section Content Control

The repeating section content control allows repeating the content contained within it. Using Aspose.Words, the structured document tag nodes of the repeating section and repeating section item types can be created and for this purpose, SdtType enumeration type provides **RepeatingSectionItem** property.

The following code example shows how to bind a repeating section content control to a table:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-CreatingTableRepeatingSectionMappedToCustomXmlPart.cpp" >}}
