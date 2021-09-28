---
title: How to Remove Page and Section Breaks
type: docs
weight: 210
url: /cpp/how-to-remove-page-and-section-breaks/
---

A document often consists of many sections, for example section breaks to provide different page settings for different parts of the document. Likewise, a document can have explicit page breaks to separate content on different pages.

In most cases it is convenient to have a structured document, but sometimes multiple sections and user-defined page breaks are redundant and it may become necessary to remove them. For example, after appending a few documents together you may want to remove the separate section and combine them into one. You may also want to remove redundant page breaks after mail merge.

An explicit page break can be caused by multiple different things in a document:

- A page breaks character. This is represented in a document by the page break character ControlChar.PageBreakChar.
- A Section which is set to begin on a new page (by the section’s PageSetup.SectionStart to SectionStart.NewPage).
- A Paragraph with ParagraphFormat.PageBreakBefore set. This forces a page break before the paragraph.

This sample demonstrates how to remove page and section breaks from the document using Aspose.Words.

To remove page and section breaks from a document you should follow the steps below:

1. Load a document into the Document class by passing a file path or stream to the appropriate **Document** constructor.
1. To remove page breaks:
   1. Retrieve the collection of **Paragraph** nodes of the document.
   1. Check if each **Paragraph** has the **ParagraphFormat.PageBreakBefore** property set and set it to *false* it if it does.
   1. Scan each run of the paragraph for the **ControlChar.PageBreakChar** character and remove this character.
1. The work involved to remove section breaks is a bit more involved. To remove section breaks you should combine all sections in the document into one section:
   1. Iterate over all sections and move content into the last section.
   1. Remove all sections except for the last section in the document.

It contains one-page break and one section break. The section break separates the document into two different sections. The first section contains content in one column, while the second is formatted in a two-column layout.

## Removing Page Breaks

Firstly the code to remove the page breaks is discussed. Generally a single Run contains only a page break character by itself. There are cases in which a run can contain text and a page break character and in some cases even numerous page break characters. Therefore the code is made robust and all instances of the page break character found are removed.

The code example given below removes all page breaks from the document.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-RemoveBreaks-RemovePageBreaks.cpp" >}}

Firstly all paragraphs in the document are gathered using the Document.GetChildNodes method. (The second parameter of the Document.GetChildNodes method is set to true, this instructs the method to select all child nodes recursively, and otherwise only immediate children will be selected.)

During the enumeration if a paragraph has the page break before setting enabled then the setting is removed. Each run of the paragraph is then checked for the presence of a **ControlChar.PageBreakChar** character. If a run contains one or more of these characters they are removed by replacing them with an empty string.

Note that in a Word Document the same character is used to represent a page break and section break. The **ControlChar.PageBreakChar** and ControlChar.SectionBreakChar are identical. You will only ever encounter a page break represented by this character in a document using Aspose.Words. This is explained further in the section below.

## Removing Section Breaks

Removing section breaks from a document is more complicated than page breaks. In the Aspose.Words document object model, sections are represented as separate instances of the Section class. The content found within these sections is added as children of the **Section** object, for example as Body or **Paragraph** nodes. To remove section breaks all content of the sections should be combined into one and the other sections removed. This will achieve the same result as deleting each section break in Microsoft Word.

Depending on how you want to modify your document you may find in this situation that simply changing each section to appear continually one after the other is the better option instead of combining them all. This would allow different section formatting to still be retained. This can be achieved by iterating through all sections in the document and setting **PageSetup.SectionStart** property of the section’s PageSetup class to SectionStart.Continuous.

In Microsoft Word when you delete a break between two the newly combined section inherits all properties from the second section. Thus if all sections are combined in the same way the resulting formatting should be inherited from the last section in the document. To match the same behavior programmatically the code is set up to transfer all content from the first sections into the last section of the document:

The code example given below combines all sections in the document into one.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-RemoveBreaks-RemoveSectionBreaks.cpp" >}}

Starting from the last section the content of each previous section is copied over to the beginning of the last section using the Section.PrependContent method. Then the Section.Remove method is used to remove the empty section.
