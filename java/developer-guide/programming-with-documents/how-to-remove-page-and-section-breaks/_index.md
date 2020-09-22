---
title: How to  Remove Page and Section Breaks
type: docs
weight: 120
url: /java/how-to-remove-page-and-section-breaks/
---

## **How to Remove Page and Section Breaks**

A document often consists of several sections, for example section breaks to provide different page settings for different parts of the document. Likewise, a document can have explicit page breaks to separate content on different pages.

In most cases it is convenient to have a structured document, but sometimes multiple sections and user-defined page breaks are redundant and it may become necessary to remove them. For example after appending multiple documents together you may want to remove the separate section and combine them into one. You may also want to remove redundant page breaks after mail merge.

An explicit page break can be caused by many different things in a document:

- A page break character. This is represented in a document by the page break character ControlChar.PageBreakChar.
- A Section which is set to begin on a new page (by the section’s PageSetup.SectionStart to SectionStart.NewPage).
- A Paragraph with ParagraphFormat.PageBreakBefore set. This forces a page break before the paragraph.

This sample shows how to remove page and section breaks from the document using Aspose.Words.

### **Solution**

To remove page and section breaks from a document you should follow the steps below:

1. Load a document into the [Document](http://www.aspose.com/api/java/words/com.aspose.words/classes/Document) class by passing a file path or stream to the appropriate [Document](http://www.aspose.com/api/java/words/com.aspose.words/classes/Document) constructor.
1. To remove page breaks:
   1. Retrieve the collection of [Paragraph](http://www.aspose.com/api/java/words/com.aspose.words/classes/Paragraph) nodes of document.
   1. Check if each **Paragraph** has the [ParagraphFormat.PageBreakBefore](http://www.aspose.com/api/java/words/com.aspose.words/classes/paragraphformat/properties/getPageBreakBefore\(\)/) property set and set it to false it if it does.
   1. Scan each run of the paragraph for the [ControlChar.PageBreakChar](http://www.aspose.com/api/java/words/com.aspose.words/classes/ControlChar) character and remove this character.
1. The work involved to remove section breaks is a bit more involved. To remove section breaks you should combine all sections in document into one section:
   1. Iterate over all sections and move content into the last section.
   1. Remove all sections except for the last section in the document.

The following Word document is used in this sample:

|![todo:image_alt_text](http://i.imgur.com/ECtaukb.png)|
| :- |
|![todo:image_alt_text](http://i.imgur.com/Whn34k2.png)|
It contains one page break and one section break. The section break separates the document into two different sections. The first section contains content in one column, while the second is formatted in a two-column layout.

### **The Code**

#### **Removing Page Breaks**

Firstly the code to remove the page breaks is discussed. Generally a single [Run](http://www.aspose.com/api/java/words/com.aspose.words/classes/Run) contains only a page break character by itself. There are cases in which a run can contain text and a page break character and in some cases even multiple page break characters. Therefore the code is made robust and all instances of the page break character found are removed. Below example removes all page breaks from the document.

{{< gist "" "b37032675133885c4c91814fb3d51a25" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-RemovePageAndSectionBreaks-RemovePageBreaks.java" >}}

Firstly all paragraphs in the document are gathered using the [Document.getChildNodes()](http://www.aspose.com/api/java/words/com.aspose.words/classes/document/methods/getChildNodes\(\)/) method. (The second parameter of the [Document.getChildNodes()](http://www.aspose.com/api/java/words/com.aspose.words/classes/document/methods/getChildNodes\(\)/) method is set to true, this instructs the method to select all child nodes recursively, otherwise only immediate children will be selected.)

During the enumeration if a paragraph has the page break before setting enabled then the setting is removed. Each run of the paragraph is then checked for the presence of a [ControlChar.PageBreakChar](http://www.aspose.com/api/java/words/com.aspose.words/classes/ControlChar) character. If a run contains one or more of these characters they are removed by replacing them with an empty string.

Note that in a Word Document the same character is used to represent a page break and section break. The [ControlChar.PageBreakChar](http://www.aspose.com/api/java/words/com.aspose.words/classes/ControlChar) and [ControlChar.SectionBreakChar](http://www.aspose.com/api/java/words/com.aspose.words/classes/ControlChar) are identical. You will only ever encounter a page break represented by this character in a document using Aspose.Words. This is explained further in the section below.

#### **Removing Section Breaks**

Removing section breaks from a document is more complicated than page breaks. In the Aspose.Words document object model, sections are represented as separate instances of the [Section](http://www.aspose.com/api/java/words/com.aspose.words/classes/Section) class. The content found within these sections is added as children of the [Section](http://www.aspose.com/api/java/words/com.aspose.words/classes/Section) object, for example as [Body](http://www.aspose.com/api/java/words/com.aspose.words/classes/Body) or [Paragraph](http://www.aspose.com/api/java/words/com.aspose.words/classes/Paragraph) nodes. To remove section breaks all content of the sections should be combined into one and the other sections removed. This will achieve the same result as deleting each section break in Microsoft Word.

Depending on how you want to modify your document you may find in this situation that simply changing each section to appear continually one after the other is the better option instead of combining them all. This would allow different section formatting to still be retained. This can be achieved by iterating through all sections in the document and setting [PageSetup.SectionStart](http://www.aspose.com/api/java/words/com.aspose.words/classes/pagesetup/methods/getSectionStart\(\)/) property of the section’s [PageSetup](http://www.aspose.com/api/java/words/com.aspose.words/classes/PageSetup) class to SectionStart.Continuous.

In Microsoft Word when you delete a break between two the newly combined section inherits all properties from the second section. Thus if all sections are combined in the same way the resulting formatting should be inherited from the last section in the document. To match the same behavior programmatically the code is set up to transfer all content from the first sections into the last section of the document: Combines all sections in the document into one.

{{< gist "" "b37032675133885c4c91814fb3d51a25" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-RemovePageAndSectionBreaks-RemoveSectionBreaks.java" >}}

Starting from the last section the content of each previous section is copied over to the beginning of the last section using the [Section.PrependContent](http://www.aspose.com/api/java/words/com.aspose.words/classes/section/methods/prependContent\(com.aspose.words.Section\)/) method. Then the [Section.Remove](http://www.aspose.com/api/java/words/com.aspose.words/classes/section/methods/remove\(\)/) method is used to remove the empty section.

#### **End Result**

The resulting document is shown below. All page breaks are removed and all sections combined. This results in the text appearing together instead of split across different pages.

|![todo:image_alt_text](http://i.imgur.com/KnRR4ih.png)|
| :- |


|![todo:image_alt_text](http://i.imgur.com/cHtaxeW.png)|
| :- |

