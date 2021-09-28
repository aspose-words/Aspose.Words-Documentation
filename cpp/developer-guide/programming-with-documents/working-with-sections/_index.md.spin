---
title: Working with Sections
type: docs
weight: 30
url: /cpp/working-with-sections/
---

This topic discusses how to work programmatically with document sections using Aspose.Words. Working with sections is very useful when it comes to document generation. You can combine documents, build up an output document from {several|multiple|a few|many|numerous} sections copied from {multiple|several|a few|many|numerous} template documents or remove unneeded sections depending on some application logic, effectively filtering a common template document to a specific scenario.

A Word document can contain one or more sections. At the end of the section, there is a section break that separates one section from the next in a document. Each section has its own set of properties that specify page size, orientation, margins, the number of text columns, headers and footers and so on.

## Sections in Microsoft Word

In Microsoft Word, you can easily split the document into sections by adding a section break in the place where you want to start a new section. To join a section in the document with the next one, you need to delete a section break between them.

### Inserting a Section Break in Microsoft Word

A Section break is a mark you insert to show the end of a section. A section break stores the section formatting elements, such as the margins, page orientation, headers and footers, and sequence of page numbers. Just insert section breaks to divide the document into sections, and then format each section the way you want. For example, format a section as a single column for the introduction of a report, and then format the following section as two columns for the report’s body text. To insert a section break, do the following:

1. Click where you want to insert a section break.
1. On the Insert menu, click **Break**.
1. Under **Section break types** , click the option that describes where you want the new section to begin.

The following types of section breaks can be inserted:

- **Next page** inserts a section break and starts the new section on the next page.
- **Continuous** inserts a section break and starts the new section on the same page.
- **Odd page** or **Even page** inserts a section break and starts the new section on the next odd-numbered or even-numbered page.

### Deleting a Section Break in Microsoft Word

When you delete a section break, you also delete the section formatting for the text above it. That text becomes part of the following section, and it assumes the formatting of that section.

1. Select the section break you want to delete. If you are in print layout view or outline view and do not see the section break, display hidden text by clicking **Show/Hide** on the **Standard** toolbar.
1. Press DELETE.

## Sections in Aspose.Words

Sections of the document are represented by the Section and SectionCollection classes. Section objects are immediate children of the Document node and can be accessed via the Document.Sections property.

### Obtaining a Section

Each section is represented by a Section object that can be obtained from the Document.Sections collection by the index. Default page margins, header/footer distance and column spacing depend on current culture to mimic MS Word behavior. For example, now all page margins are 1’’ for English (United States) and English (United Kingdom). Left, right, top margins are 2.5 cm; the bottom margin is 2 cm for German. The new defaults are used for a new document and for a loaded document if an explicit value is not set for the mention parameters.

{{% alert color="primary" %}} 

It is possible to change the culture for the current thread that will cause changing default page margins, header/footer distance and column spacing.

{{% /alert %}} 

The code sample below shows how to access a section at the specified index. You can download the template file of this example from here.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Sections-SectionsAccessByIndex-SectionsAccessByIndex.cpp" >}}

### Adding a Section

The Document object provides the section collection that can be accessed by using Document.Sections. This returns a SectionCollection object containing the document’s sections. You can then use the SectionCollection.Add method on this object to add a section to the end of the document. The code sample below shows how to add a section to the end of the document.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Sections-AddDeleteSection-AddSection.cpp" >}}

### Deleting a Section

In the same way as discussed above, the document’s sections are retrieved by using Document.Sections. You can then use SectionCollection.Remove to remove a specified section or SectionCollection.RemoveAt to remove a section at the specified index. The code sample below shows how to remove a section at the specified index.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Sections-AddDeleteSection-DeleteSection.cpp" >}}

The code sample below shows how to remove all sections from a document.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Sections-AddDeleteSection-DeleteAllSections.cpp" >}}

In addition, you can use SectionCollection.Clear to remove all the sections from the document.

### Adding Section Content

If you want to copy and insert just the main text of a section excluding the section separator and section properties, use Section.PrependContent or Section.AppendContent passing a Section object for the content being copied. No new section is created; headers and footers are not copied. The former method inserts a copy of the content at the beginning of the section, while the latter inserts a copy of the content at the end of the section. The code sample below shows how to append content of an existing section. The number of sections in the document remains the same. You can download the template file of this example from here.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Sections-AppendSectionContent-AppendSectionContent.cpp" >}}

### Deleting Section Content

To delete the main text of a section, use Section.ClearContent. Below example shows how to delete main content of a section. You can download the template file of this example from here.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Sections-DeleteSectionContent-DeleteSectionContent.cpp" >}}

To delete the headers and footers in a section, call Section.ClearHeadersFooters.

### Cloning a Section

Use the Section.Clone method to create a duplicate of a particular section. Below example shows how to create a duplicate of a particular section. You can download the template file of this example from here.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Sections-CloneSection-CloneSection.cpp" >}}

### Copying Sections between Documents

Fully or partially copying one document into another is a very popular task. Here is a "pattern" to implement this. Before any node from another document can be inserted, it must be imported using Document.ImportNode method. The **Document.ImportNode** method makes a copy of the original node and updates all internal document-specific attributes such as lists and styles to make them valid in the destination document.The code example below shows how to copy sections between documents. You can download the template file of this example from here.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Sections-CopySection-CopySection.cpp" >}}

{{% alert color="primary" %}} 

Sometimes it is necessary to avoid section breaks in the destination document. In this case, you can use Section.AppendContent instead of SectionCollection.Add.

{{% /alert %}}
