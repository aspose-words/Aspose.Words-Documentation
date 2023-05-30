---
title: Working with Sections in Python
second_title: Aspose.Words for Python via .NET
articleTitle: Working with Sections
linktitle: Working with Sections
description: "Create and manage sections and section breaks in a document using Python. Insert section into a document Python. Remove section Python. Copy sections between Documents."
type: docs
weight: 60
url: /python-net/working-with-sections/
aliases: [/python/working-with-sections/]
---

Sometimes you want a document that does not have the same formatting across all pages. For example, you may need to modify page number formats, have different page size and orientation, or have the first document page as a cover page without any numbering. You can achieve that with sections.

Sections are level nodes that control headers and footers, orientation, columns, margins, page number formatting, and others.

Aspose.Words allows you to manage sections, divide a document into sections, and make formatting changes that apply only to a specific section. Aspose.Words stores information about section formatting such as headers and footers, page setup, and column settings in the section break.

This article explains how to work with sections and section breaks.

## What Section and Section Break Is

Document sections are represented by the [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) and [SectionCollection](https://reference.aspose.com/words/python-net/aspose.words/sectioncollection/) classes. Section objects are immediate children of the [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) node and can be accessed via the [Sections](https://reference.aspose.com/words/python-net/aspose.words/document/sections/) property. You can manage those nodes by using some methods such as [Remove](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/remove/#node), [Add](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/add/#node), [IndexOf](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/index_of/#node), and others.

Section break is an option that divides document pages into sections with customizable layouts.

## Types of a Section Break

Aspose.Words allows you to split and format documents using different section breaks of the [BreakType](https://reference.aspose.com/words/python-net/aspose.words/breaktype/) enumeration:

- SectionBreakContinuous
- SectionBreakNewColumn
- SectionBreakNewPage
- SectionBreakEvenPage
- SectionBreakOddPage

You can also use the [SectionStart](https://reference.aspose.com/words/python-net/aspose.words/sectionstart/) enumeration to choose a break type that applies only for the first section such as NewColumn, NewPage, EvenPage, and OddPage.

## Manage a Section

Since a section is a normal composite node, the entire node manipulation API can be used to manipulate sections: to add, remove, and other operations on sections. You can read more about nodes in the article ["Aspose.Words Document Object Model (DOM)"](/words/python-net/aspose-words-document-object-model/).

On the other hand, you can also use the DocumentBuilder API to work with sections. In this article, we will focus on this particular way of working with sections.

## Insert or Remove a Section Break

Aspose.Words allows you to insert a section break into text using the [InsertBreak](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_break/#breaktype) method.

The following code example shows how to insert a section break into a document:

EXAMPLE //InsertSectionBreaks

Use the [Remove](https://reference.aspose.com/words/python-net/aspose.words/node/remove/#default) method to delete a section break. If you do not need to remove a specific section break and instead delete the content of that section, you can use the [ClearContent](https://reference.aspose.com/words/python-net/aspose.words/section/clear_content/#default) method.

The following code example shows how to remove sections breaks: 

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-remove_content-RemoveSectionBreaks.py" >}} //RemoveSectionBreaks

{{% alert color="primary" %}}

Note that a section break has information about the section that goes before it, not the section that goes after it. So if you remove a section break, the text before the removed break will get the properties of the section break following it. This can cause the entire document to becoming landscape, or headers and footers to change or fully disappear.

{{% /alert %}}

## Move a Section

If you want to move a section from one position to another in your document, you need to get the index of that section. Aspose.Words allows you to get a section position from a [SectionCollection](https://reference.aspose.com/words/python-net/aspose.words/sectioncollection/). You can use the [Sections](https://reference.aspose.com/words/python-net/aspose.words/document/sections/) property to get all sections in your document. But if you want to get only the first section, you can use the [FirstSection](https://reference.aspose.com/words/python-net/aspose.words/document/first_section/) property.

The following code example shows how to access the first section and iterate through the children of a composite node:

EXAMPLE //SectionChildNodes

## Specify a Section Layout

Sometimes you want your document to look better by making creative layouts for different document sections. If you want to specify the type of the current section grid, you can choose a section layout mode using the [SectionLayoutMode](https://reference.aspose.com/words/python-net/aspose.words/sectionlayoutmode/) enumeration:

- Default
- Grid
- LineGrid
- SnapToChars

The following code example shows how to limit the number of lines that each page may have:

EXAMPLE //LineGridSectionLayoutMode

## Edit a Section

When you add a new section to your document, there will be no body or paragraph that you can edit. Aspose.Words allows you to guarantee that a section contains a body with at least one paragraph using the [EnsureMinimum](https://reference.aspose.com/words/python-net/aspose.words/section/ensure_minimum/#default) method – it will automatically add a Body (or HeaderFooter) node to the document and then add a Paragraph to it.

The following code example shows how to prepare a new section node using **EnsureMinimum**:

EXAMPLE //EnsureMinimum

### Append or Prepend Content

If you want to draw some shape or add text or image at the beginning/end of a section, you can use the [AppendContent](https://reference.aspose.com/words/python-net/aspose.words/section/append_content/#section) and [PrependContent](https://reference.aspose.com/words/python-net/aspose.words/section/prepend_content/#section) methods of the [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) class.

The following code example shows how to append content of an existing section:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_section-AppendSectionContent.py" >}} //AppendSectionContent

### Clone a Section

Aspose.Words allows you to duplicate a section by creating a full copy of it using the [Clone](https://reference.aspose.com/words/python-net/aspose.words/section/clone/#default) method.

The following code example shows how to clone the first section in your document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_section-CloneSection.py" >}} //CloneSection

### Copy Sections between Documents

In some cases, you may have large documents with many sections and you want to copy the content of a section from one document to another.

Aspose.Words allows you to copy sections between documents using the [ImportNode](https://reference.aspose.com/words/python-net/aspose.words/nodeimporter/import_node/#node_bool) method.

The following code example shows how to copy sections between documents:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_section-CopySection.py" >}} //CopySection

### Work with Section Header and Footer

The basic rules for displaying a header or footer for each section are quite simple:

1. If the section does not have its own headers/footers of a certain type, then it is taken from the previous section.
2. The type of header/footer displayed on the page is controlled by the "Different First Page" and "Different Odd & Even pages" section settings – if they are disabled, then the section's own titles are ignored.

The following code example shows how to create 2 sections with different headers:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Section-DifferentFirstPageHeaderFooter.cs" >}} //DifferentFirstPageHeaderFooter

If you want to remove the text of headers and footers without removing [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/) objects in your document, you can use the [ClearHeadersFooters](https://reference.aspose.com/words/python-net/aspose.words/section/clear_headers_footers/#default) method. In addition, you can use the [DeleteHeaderFooterShapes](https://reference.aspose.com/words/python-net/aspose.words/section/delete_header_footer_shapes/#default) method to remove all shapes from headers and footers in your document.

The following code example shows how to clear content of all headers and footers in a section:

EXAMPLE //DeleteHeaderFooterContent

The following code example how to remove all shapes from all headers footers in a section:

EXAMPLE //DeleteHeaderFooterShapes

## Customize Page Properties in a Section

Before printing a page or a document you may want to customize and modify the size and layout of a single page or the whole document. With page setup, you can change the settings of document pages such as margins, orientation, and size for printing different first pages or odd pages.

Aspose.Words allows you to customize page and section properties using the [PageSetup](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/) class.

The following code example shows how to set such properties as page size and orientation for the current section:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-DocumentBuilderSetPageSetupAndSectionFormatting.py" >}} //PageSetupAndSectionFormatting

The following code example shows how to modify the page properties in all sections:

EXAMPLE //ModifyPageSetupInAllSections

## See Also

- [“Logical Levels of Nodes in a Document”](https://docs.aspose.com/words/python-net/logical-levels-of-nodes-in-a-document/#document-and-section-logical-level)
- [”Insert and Append Documents”](https://docs.aspose.com/words/python-net/insert-and-append-documents/)
