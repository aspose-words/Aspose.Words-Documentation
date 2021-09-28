---
title: Working with Sections
type: docs
weight: 30
url: /java/working-with-sections/
aliases: [/java/how-to-remove-page-and-section-breaks/]
---

This topic discusses how to work programmatically with document sections using Aspose.Words. Working with sections is very useful when it comes to document generation. You can combine documents, build up an output document from {several|multiple|a few|many|numerous} sections copied from {multiple|several|a few|many|numerous} template documents or remove unneeded sections depending on some application logic, effectively filtering a common template document to a specific scenario.

A Word document can contain one or more sections. At the end of the section, there is a section break that separates one section from the next in a document. Each section has its own set of properties that specify page size, orientation, margins, the number of text columns, headers and footers and so on.

## Sections in Microsoft Word

In Microsoft Word, you can easily split the document into sections by adding a section break in the place where you want to start a new section. To join a section in the document with the next one, you need to delete a section break between them.

### Inserting a Section Break in Microsoft Word

A Section break is a mark you insert to show the end of a section. A section break stores the section formatting elements, such as the margins, page orientation, headers and footers, and sequence of page numbers. Just insert section breaks to divide the document into sections, and then format each section the way you want. For example, format a section as a single column for the introduction of a report, and then format the following section as two columns for the report’s body text. To insert a section break, do the following:
1. Click where you want to insert a section break.
1. On the Insert menu, click **Break**.<br>
![working-with-sections-aspose-words-java-1](working-with-sections_1.png)
1. Under **Section break types** , click the option that describes where you want the new section to begin.<br>
![working-with-sections-aspose-words-java-2](working-with-sections_2.png)

The following types of section breaks can be inserted:

- **Next page** inserts a section break and starts the new section on the next page.
- **Continuous** inserts a section break and starts the new section on the same page.
- **Odd page** or **Even page** inserts a section break and starts the new section on the next odd-numbered or even-numbered page.

### Deleting a Section Break in Microsoft Word

When you delete a section break, you also delete the section formatting for the text above it. That text becomes part of the following section, and it assumes the formatting of that section.

1. Select the section break you want to delete. If you are in print layout view or outline view and do not see the section break, display hidden text by clicking **Show/Hide** on the **Standard** toolbar.
1. Press DELETE.

## Sections in Aspose.Words

Sections of the document are represented by the [Section](https://apireference.aspose.com/words/java/com.aspose.words/section) and [SectionCollection](https://apireference.aspose.com/words/java/com.aspose.words/SectionCollection) classes. Section objects are immediate children of the Document node and can be accessed via the [Document.Sections](https://apireference.aspose.com/words/java/com.aspose.words/document#Sections) property.

### Obtaining a Section

Each section is represented by a [Section](https://apireference.aspose.com/words/java/com.aspose.words/section) object that can be obtained from the [Document.Sections](https://apireference.aspose.com/words/java/com.aspose.words/document#Sections) collection by the index. Default page margins, header/footer distance and column spacing depend on current culture to mimic MS Word behavior. For example, now all page margins are 1’’ for English (United States) and English (United Kingdom). Left, right, top margins are 2.5 cm; the bottom margin is 2 cm for German. The new defaults are used for a new document and for a loaded document if an explicit value is not set for the mention parameters.

{{% alert color="primary" %}} 

It is possible to change the culture for the current thread that will cause changing default page margins, header/footer distance and column spacing.

{{% /alert %}} 

The code sample below {shows|demonstrates} how to access a section at the specified index. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/Document/Document.doc).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-sections-SectionsAccessByIndex-SectionsAccessByIndex.java" >}}

### Adding a Section

The Document object provides the section collection that can be accessed by using Document.Sections. This returns a SectionCollection object containing the document’s sections. You can then use the SectionCollection.Add method on this object to add a section to the end of the document. The code sample below {shows|demonstrates} how to add a section to the end of the document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-sections-AddSection-AddSection.java" >}}

### Deleting a Section

In the same way as discussed above, the document’s sections are retrieved by using Document.Sections. You can then use SectionCollection.Remove to remove a specified section or SectionCollection.RemoveAt to remove a section at the specified index. The code sample below {shows|demonstrates} how to remove a section at the specified index.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-sections-DeleteSection-DeleteSection.java" >}}

The code sample below {shows|demonstrates} how to remove all sections from a document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-sections-DeleteAllSections-DeleteAllSections.java" >}}

In addition, you can use SectionCollection.Clear to remove all the sections from the document.

### Adding Section Content

If you want to copy and insert just the main text of a section excluding the section separator and section properties, use Section.PrependContent or Section.AppendContent passing a Section object for the content being copied. No new section is created; headers and footers are not copied. The former method inserts a copy of the content at the beginning of the section, while the latter inserts a copy of the content at the end of the section. The code sample below {shows|demonstrates} how to append the content of an existing section. The number of sections in the document remains the same. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/com/aspose/words/examples/programming_documents/sections/SectionsAccessByIndex/Section.AppendContent.doc).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-sections-AppendSectionContent-AppendSectionContent.java" >}}

### Deleting Section Content

To delete the main text of a section, use Section.ClearContent. The code example given below {shows|demonstrates} how to delete main content of a section. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/com/aspose/words/examples/programming_documents/sections/SectionsAccessByIndex/Document.doc).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-sections-DeleteSectionContent-DeleteSectionContent.java" >}}

To delete the headers and footers in a section, call Section.ClearHeadersFooters.

### Cloning a Section

Use the Section.Clone method to create a duplicate of a particular section. The code example given below {shows|demonstrates} how to create a duplicate of a particular section. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/com/aspose/words/examples/programming_documents/sections/SectionsAccessByIndex/Document.doc).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-sections-CloneSection-CloneSection.java" >}}

### Copying Sections between Documents

Fully or partially copying one document into another is a very popular task. Here is a "pattern" to implement this. Before any node from another document can be inserted, it must be imported using [Document.ImportNode](https://apireference.aspose.com/words/java/com.aspose.words/documentbase#importNode(com.aspose.words.Node,boolean)) method. The **Document.ImportNode** method makes a copy of the original node and updates all internal document-specific attributes such as lists and styles to make them valid in the destination document. The code example given below {shows|demonstrates} how to copy sections between documents. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/com/aspose/words/examples/programming_documents/sections/SectionsAccessByIndex/Document.doc).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-sections-CopySection-CopySection.java" >}}

{{% alert color="primary" %}} 

Sometimes it is necessary to avoid section breaks in the destination document. In this case, you can use Section.AppendContent instead of SectionCollection.Add.

{{% /alert %}} 

## Inserting a Break

If you want to explicitly start a new line, paragraph, column, section, or page, call DocumentBuilder.InsertBreak. Pass to this method the type of the break you need to insert that is represented by the BreakType enumeration. The code example given below {shows|demonstrates} how to insert page breaks into a document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertBreak-DocumentBuilderInsertBreak.java" >}}

## How to Remove Page and Section Breaks

A document often consists of {several|multiple|a few|many|numerous} sections, for example section breaks to provide different page settings for different parts of the document. Likewise, a document can have explicit page breaks to separate content on different pages.

In most cases it is convenient to have a structured document, but sometimes {multiple|several|a few|many|numerous} sections and user-defined page breaks are redundant and it may become necessary to remove them. For example after appending {multiple|several|a few|many|numerous} documents together you may want to remove the separate section and combine them into one. You may also want to remove redundant page breaks after mail merge.

An explicit page break can be caused by {many|multiple|several|a few|numerous} different things in a document:

- A page breaks character. This is represented in a document by the page break character ControlChar.PageBreakChar.
- A Section which is set to begin on a new page (by the section’s PageSetup.SectionStart to SectionStart.NewPage).
- A Paragraph with ParagraphFormat.PageBreakBefore set. This forces a page break before the paragraph.

This sample {shows|demonstrates} how to remove page and section breaks from the document using Aspose.Words.

### Solution

To remove page and section breaks from a document you should follow the steps below:

1. Load a document into the [Document](https://apireference.aspose.com/words/java/com.aspose.words/document) class by passing a file path or stream to the appropriate **Document** constructor.
1. To remove page breaks:
   1. Retrieve the collection of **Paragraph** nodes of the document.
   1. Check if each **Paragraph** has the **ParagraphFormat.PageBreakBefore** property set and set it to *false* it if it does.
   1. Scan each run of the paragraph for the **ControlChar.PageBreakChar** character and remove this character.
1. The work involved to remove section breaks is a bit more involved. To remove section breaks you should combine all sections in the document into one section:
   1. Iterate over all sections and move content into the last section.
   1. Remove all sections except for the last section in the document.

It contains one-page break and one section break. The section break separates the document into two different sections. The first section contains content in one column, while the second is formatted in a two-column layout.

### Removing Page Breaks

Firstly the code to remove the page breaks is discussed. Generally a single [Run](https://apireference.aspose.com/words/java/com.aspose.words/run) contains only a page break character by itself. There are cases in which a run can contain text and a page break character and in some cases even {multiple|several|a few|many|numerous} page break characters. Therefore the code is made robust and all instances of the page break character found are removed.

The code example given below removes all page breaks from the document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-RemovePageAndSectionBreaks-removePageBreaks.java" >}}

Firstly all paragraphs in the document are gathered using the Document.GetChildNodes method. (The second parameter of the Document.GetChildNodes method is set to true, this instructs the method to select all child nodes recursively, and otherwise only immediate children will be selected.)

During the enumeration if a paragraph has the page break before setting enabled then the setting is removed. Each run of the paragraph is then checked for the presence of a **ControlChar.PageBreakChar** character. If a run contains one or more of these characters they are removed by replacing them with an empty string.

Note that in a Word Document the same character is used to represent a page break and section break. The **ControlChar.PageBreakChar** and [ControlChar.SectionBreakChar](https://apireference.aspose.com/words/java/com.aspose.words/controlchar#SECTION_BREAK) are identical. You will only ever encounter a page break represented by this character in a document using Aspose.Words. This is explained further in the section below.

### Removing Section Breaks

Removing section breaks from a document is more complicated than page breaks. In the Aspose.Words document object model, sections are represented as separate instances of the [Section](https://apireference.aspose.com/words/java/com.aspose.words/section) class. The content found within these sections is added as children of the **Section** object, for example as [Body](https://apireference.aspose.com/words/java/com.aspose.words/body) or **Paragraph** nodes. To remove section breaks all content of the sections should be combined into one and the other sections removed. This will achieve the same result as deleting each section break in Microsoft Word.

Depending on how you want to modify your document you may find in this situation that simply changing each section to appear continually one after the other is the better option instead of combining them all. This would allow different section formatting to still be retained. This can be achieved by iterating through all sections in the document and setting **PageSetup.SectionStart** property of the section’s [PageSetup](https://apireference.aspose.com/words/java/com.aspose.words/pagesetup) class to [SectionStart.Continuous](https://apireference.aspose.com/words/java/com.aspose.words/sectionstart).

In Microsoft Word when you delete a break between two the newly combined section inherits all properties from the second section. Thus if all sections are combined in the same way the resulting formatting should be inherited from the last section in the document. To match the same behavior programmatically the code is set up to transfer all content from the first sections into the last section of the document:

The code example given below combines all sections in the document into one.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-RemovePageAndSectionBreaks-removeSectionBreaks.java" >}}

Starting from the last section the content of each previous section is copied over to the beginning of the last section using the Section.PrependContent method. Then the Section.Remove method is used to remove the empty section.

## Page Setup and Section Formatting

Page setup and section properties are encapsulated in the PageSetup object that is returned by the DocumentBuilder.PageSetup property. The object contains all the page setup attributes of a section (left margin, bottom margin, paper size, and so on) as properties. The code example given below {shows|demonstrates} how to set such properties as page size and orientation for the current section.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetPageSetupAndSectionFormatting-DocumentBuilderSetPageSetupAndSectionFormatting.java" >}}
