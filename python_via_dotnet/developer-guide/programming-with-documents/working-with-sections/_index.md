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

EXAMPLE

Use the [Remove](https://reference.aspose.com/words/python-net/aspose.words/node/remove/#default) method to delete a section break. If you do not need to remove a specific section break and instead delete the content of that section, you can use the [ClearContent](https://reference.aspose.com/words/python-net/aspose.words/section/clear_content/#default) method.

The following code example shows how to remove sections breaks: 

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-remove_content-RemoveSectionBreaks.py" >}}

{{% alert color="primary" %}}

Note that a section break has information about the section that goes before it, not the section that goes after it. So if you remove a section break, the text before the removed break will get the properties of the section break following it. This can cause the entire document to becoming landscape, or headers and footers to change or fully disappear.

{{% /alert %}}

## Move a Section

If you want to move a section from one position to another in your document, you need to get the index of that section. Aspose.Words allows you to get a section position from a [SectionCollection](https://reference.aspose.com/words/python-net/aspose.words/sectioncollection/). You can use the [Sections](https://reference.aspose.com/words/python-net/aspose.words/document/sections/) property to get all sections in your document. But if you want to get only the first section, you can use the [FirstSection](https://reference.aspose.com/words/python-net/aspose.words/document/first_section/) property.

The following code example shows how to access the first section and iterate through the children of a composite node:

EXAMPLE

## Specify a Section Layout

Sometimes you want your document to look better by making creative layouts for different document sections. If you want to specify the type of the current section grid, you can choose a section layout mode using the [SectionLayoutMode](https://reference.aspose.com/words/python-net/aspose.words/sectionlayoutmode/) enumeration:

- Default
- Grid
- LineGrid
- SnapToChars

The following code example shows how to limit the number of lines that each page may have:

EXAMPLE

## Edit a Section

When you add a new section to your document, there will be no body or paragraph that you can edit. Aspose.Words allows you to guarantee that a section contains a body with at least one paragraph using the [EnsureMinimum](https://reference.aspose.com/words/python-net/aspose.words/section/ensure_minimum/#default) method – it will automatically add a Body (or HeaderFooter) node to the document and then add a Paragraph to it.

The following code example shows how to prepare a new section node using **EnsureMinimum**:

EXAMPLE

### Append or Prepend Content

If you want to draw some shape or add text or image at the beginning/end of a section, you can use the [AppendContent](https://reference.aspose.com/words/python-net/aspose.words/section/append_content/#section) and [PrependContent](https://reference.aspose.com/words/python-net/aspose.words/section/prepend_content/#section) methods of the [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) class.

The following code example shows how to append content of an existing section:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_section-AppendSectionContent.py" >}}

### Clone a Section

Aspose.Words allows you to duplicate a section by creating a full copy of it using the [Clone](https://reference.aspose.com/words/python-net/aspose.words/section/clone/#default) method.

The following code example shows how to clone the first section in your document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_section-CloneSection.py" >}}

### Copy Sections between Documents

In some cases, you may have large documents with many sections and you want to copy the content of a section from one document to another.

Aspose.Words allows you to copy sections between documents using the [ImportNode](https://reference.aspose.com/words/python-net/aspose.words/nodeimporter/import_node/#node_bool) method.

The following code example shows how to copy sections between documents:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_section-CopySection.py" >}}

### Work with Section Header and Footer

The basic rules for displaying a header or footer for each section are quite simple:

1. If the section does not have its own headers/footers of a certain type, then it is taken from the previous section.
2. The type of header/footer displayed on the page is controlled by the "Different First Page" and "Different Odd & Even pages" section settings – if they are disabled, then the section's own titles are ignored.

The following code example shows how to create 2 sections with different headers:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Section-DifferentFirstPageHeaderFooter.cs" >}}

If you want to remove the text of headers and footers without removing [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/) objects in your document, you can use the [ClearHeadersFooters](https://reference.aspose.com/words/python-net/aspose.words/section/clear_headers_footers/#default) method. In addition, you can use the [DeleteHeaderFooterShapes](https://reference.aspose.com/words/python-net/aspose.words/section/delete_header_footer_shapes/#default) method to remove all shapes from headers and footers in your document.

The following code example shows how to clear content of all headers and footers in a section:

EXAMPLE

The following code example how to remove all shapes from all headers footers in a section:

EXAMPLE

## Customize Page Properties in a Section

Before printing a page or a document you may want to customize and modify the size and layout of a single page or the whole document. With page setup, you can change the settings of document pages such as margins, orientation, and size for printing different first pages or odd pages.

Aspose.Words allows you to customize page and section properties using the [PageSetup](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/) class.

The following code example shows how to set such properties as page size and orientation for the current section:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-DocumentBuilderSetPageSetupAndSectionFormatting.py" >}}

The following code example shows how to modify the page properties in all sections:

EXAMPLE

## See Also

- [“Logical Levels of Nodes in a Document”](https://docs.aspose.com/words/python-net/logical-levels-of-nodes-in-a-document/#document-and-section-logical-level)
- [”Insert and Append Documents”](ttps://docs.aspose.com/words/python-net/insert-and-append-documents/)









## Sections in Aspose.Words

Sections of the document are represented by the [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) and [SectionCollection](https://reference.aspose.com/words/python-net/aspose.words/sectioncollection/) classes. Section objects are immediate children of the Document node and can be accessed via the [Document.sections](https://reference.aspose.com/words/python-net/aspose.words/document/sections/) property.

### Obtaining a Section

Each section is represented by a [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) object that can be obtained from the [Document.sections](https://reference.aspose.com/words/python-net/aspose.words/document/sections/) collection by the index. Default page margins, header/footer distance and column spacing depend on current culture to mimic MS Word behavior. For example, now all page margins are 1’’ for English (United States) and English (United Kingdom). Left, right, top margins are 2.5 cm; bottom margin is 2 cm for German. The new defaults are used for a new document and for a loaded document if an explicit value is not set for the mention parameters.

{{% alert color="primary" %}}

It is possible to change culture for current thread that will cause changing default page margins, header/footer distance and column spacing.

{{% /alert %}}

The code sample below shows how to access a section at the specified index. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_section-SectionsAccessByIndex.py" >}}

### Adding a Section

The [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) object provides the section collection that can be accessed by using [Document.sections](https://reference.aspose.com/words/python-net/aspose.words/document/sections/). This returns a [SectionCollection](https://reference.aspose.com/words/python-net/aspose.words/sectioncollection/) object containing the document’s sections. You can then use the [SectionCollection.add](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/add/) method on this object to add a section to the end of the document. The code sample below shows how to add a section to the end of the document.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_section-AddSection.py" >}}

### Deleting a Section

In the same way as discussed above, the document’s sections are retrieved by using [Document.sections](https://reference.aspose.com/words/python-net/aspose.words/document/sections/). You can then use [SectionCollection.remove](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/remove/) to remove a specified section or [SectionCollection.remove_at](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/remove_at/) to remove a section at the specified index. The code sample below shows how to remove a section at the specified index.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_section-DeleteSection.py" >}}

The code sample below shows how to remove all sections from a document.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_section-DeleteAllSections.py" >}}

In addition, you can use [SectionCollection.clear](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/clear/) to remove all the sections from the document.

### Adding Section Content

If you want to copy and insert just the main text of a section excluding the section separator and section properties, use [Section.prepend_content](https://reference.aspose.com/words/python-net/aspose.words/section/prepend_content/) or [Section.append_content](https://reference.aspose.com/words/python-net/aspose.words/section/append_content/) passing a [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) object for the content being copied. No new section is created; headers and footers are not copied. The former method inserts a copy of the content at the beginning of the section, while the latter inserts a copy of the content at the end of the section. The code sample below shows how to append content of an existing section. The number of sections in the document remains the same.



### Deleting Section Content

To delete the main text of a section, use [Section.clear_content](https://reference.aspose.com/words/python-net/aspose.words/section/clear_content/). Below example shows how to delete main content of a section. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_section-DeleteSectionContent.py" >}}

To delete the headers and footers in a section, call [Section.clear_headers_footers](https://reference.aspose.com/words/python-net/aspose.words/section/clear_headers_footers/).

### Cloning a Section

Use the [Section.clone](https://reference.aspose.com/words/python-net/aspose.words/section/clone/) method to create a duplicate of a particular section. Below example shows how to create a duplicate of a particular section. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).



### Copying Sections between Documents

Fully or partially copying one document into another is a very popular task. Here is a "pattern" to implement this. Before any node from another document can be inserted, it must be imported using [Document.import_node](https://reference.aspose.com/words/python-net/aspose.words/documentbase/import_node/) method. The [Document.import_node](https://reference.aspose.com/words/python-net/aspose.words/documentbase/import_node/) method makes a copy of the original node and updates all internal document-specific attributes such as lists and styles to make them valid in the destination document. Below example shows how to copy sections between documents. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).



{{% alert color="primary" %}}

Sometimes it is necessary to avoid section breaks in the destination document. In this case, you can use [Section.append_content](https://reference.aspose.com/words/python-net/aspose.words/section/append_content/) instead of [SectionCollection.add](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/add/).

{{% /alert %}}

## Inserting a Break

If you want to explicitly start a new line, paragraph, column, section, or page, call [DocumentBuilder.insert_break](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_break/). Pass to this method the type of the break you need to insert that is represented by the [BreakType](https://reference.aspose.com/words/python-net/aspose.words/breaktype/) enumeration. Below example shows how to insert page breaks into a document.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertBreak.py" >}}

## How to Remove Page and Section Breaks

A document often consists of several sections, for example section breaks to provide different page settings for different parts of the document. Likewise, a document can have explicit page breaks to separate content on different pages.

In most cases it is convenient to have a structured document, but sometimes multiple sections and user-defined page breaks are redundant and it may become necessary to remove them. For example after appending multiple documents together you may want to remove the separate section and combine them into one. You may also want to remove redundant page breaks after mail merge.

An explicit page break can be caused by many different things in a document:

- A page breaks character. This is represented in a document by the page break character [ControlChar.PAGE_BREAK_CHAR](https://reference.aspose.com/words/python-net/aspose.words/controlchar/#page_break_char).
- A [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) which is set to begin on a new page (by the section’s [PageSetup.section_start](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/section_start/) to [SectionStart.NEW_PAGE](https://reference.aspose.com/words/python-net/aspose.words/sectionstart/#new_page)).
- A [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) with [ParagraphFormat.page_break_before](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/page_break_before/) set. This forces a page break before the paragraph.

This sample shows how to remove page and section breaks from the document using Aspose.Words.

### Solution

To remove page and section breaks from a document you should follow the steps below:

1. Load a document into the [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) class by passing a file path or stream to the appropriate [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) constructor.
1. To remove page breaks:
   1. Retrieve the collection of [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) nodes of document.
   1. Check if each [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) has the [ParagraphFormat.page_break_before](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/page_break_before/) property set and set it to `False` it if it does.
   1. Scan each run of the paragraph for the [ControlChar.PAGE_BREAK_CHAR](https://reference.aspose.com/words/python-net/aspose.words/controlchar/#page_break_char) character and remove this character.
1. The work involved to remove section breaks is a bit more involved. To remove section breaks you should combine all sections in document into one section:
   1. Iterate over all sections and move content into the last section.
   1. Remove all sections except for the last section in the document.

It contains one page break and one section break. The section break separates the document into two different sections. The first section contains content in one column, while the second is formatted in a two-column layout.

### Removing Page Breaks

Firstly the code to remove the page breaks is discussed. Generally a single [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) contains only a page break character by itself. There are cases in which a run can contain text and a page break character and in some cases even multiple page break characters. Therefore the code is made robust and all instances of the page break character found are removed.

Below example removes all page breaks from the document.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-remove_content-RemovePageBreaks.py" >}}

Firstly all paragraphs in the document are gathered using the [Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) method. (The second parameter of the [Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) method is set to true, this instructs the method to select all child nodes recursively, and otherwise only immediate children will be selected.)

During the enumeration if a paragraph has the page break before setting enabled then the setting is removed. Each run of the paragraph is then checked for the presence of a [ControlChar.PAGE_BREAK_CHAR](https://reference.aspose.com/words/python-net/aspose.words/controlchar/#page_break_char) character. If a run contains one or more of these characters they are removed by replacing them with an empty string.

Note that in a Word Document the same character is used to represent a page break and section break. The [ControlChar.PAGE_BREAK_CHAR](https://reference.aspose.com/words/python-net/aspose.words/controlchar/#page_break_char) and [ControlChar.SECTION_BREAK_CHAR](https://reference.aspose.com/words/python-net/aspose.words/controlchar/#section_break_char) are identical. You will only ever encounter a page break represented by this character in a document using Aspose.Words. This is explained further in the section below.

### Removing Section Breaks

Removing section breaks from a document is more complicated than page breaks. In the Aspose.Words document object model, sections are represented as separate instances of the [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) class. The content found within these sections is added as children of the [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) object, for example as [Body](https://reference.aspose.com/words/python-net/aspose.words/body/) or [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) nodes. To remove section breaks all content of the sections should be combined into one and the other sections removed. This will achieve the same result as deleting each section break in Microsoft Word.

Depending on how you want to modify your document you may find in this situation that simply changing each section to appear continually one after the other is the better option instead of combining them all. This would allow different section formatting to still be retained. This can be achieved by iterating through all sections in the document and setting [PageSetup.section_start](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/section_start/) property of the section’s [PageSetup](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/) class to [SectionStart.CONTINUOUS](https://reference.aspose.com/words/python-net/aspose.words/sectionstart/#continuous).

In Microsoft Word when you delete a break between two the newly combined section inherits all properties from the second section. Thus if all sections are combined in the same way the resulting formatting should be inherited from the last section in the document. To match the same behavior programmatically the code is set up to transfer all content from the first sections into the last section of the document:

Below example combines all sections in the document into one.



Starting from the last section the content of each previous section is copied over to the beginning of the last section using the [Section.prepend_content](https://reference.aspose.com/words/python-net/aspose.words/section/prepend_content/) method. Then the [Section.remove](https://reference.aspose.com/words/python-net/aspose.words/node/remove/) method is used to remove the empty section.

## Page Setup and Section Formatting

Page setup and section properties are encapsulated in the [PageSetup](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/) object that is returned by the [DocumentBuilder.page_setup](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/page_setup/) property. The object contains all the page setup attributes of a section (left margin, bottom margin, paper size, and so on) as properties. Below example shows how to set such properties as page size and orientation for the current section.


