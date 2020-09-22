---
title: Working with Sections
type: docs
weight: 30
url: /java/working-with-sections/
---

## **Sections Overview**

This topic discusses how to work programmatically with document sections using Aspose.Words. Working with sections is very useful when it comes to document generation. You can combine documents, build up an output document from several sections copied from multiple template documents or remove unneeded sections depending on some application logic, effectively filtering a common template document to a specific scenario.

A Word document can contain one or more sections. At the end of the section, there is a section break that separates one section from the next in a document. Each section has its own set of properties that specify page size, orientation, margins, the number of text columns, headers and footers and so on.

## **Sections in Microsoft Word**

In Microsoft Word, you can easily split the document into sections by adding a section break in the place where you want to start a new section. To join a section in the document with the next one, you need to delete a section break between them.

### **Inserting a Section Break in Microsoft Word**

A Section break is a mark you insert to show the end of a section. A section break stores the section formatting elements, such as the margins, page orientation, headers and footers, and sequence of page numbers. Just insert section breaks to divide the document into sections, and then format each section the way you want. For example, format a section as a single column for the introduction of a report, and then format the following section as two columns for the report’s body text.

To insert a section break, do the following:

1. Click where you want to insert a section break.
1. On the Insert menu, click **Break**.

|Insert section break.|
| :- |
|![todo:image_alt_text](http://i.imgur.com/uKcWrwo.png)|
1. Under **Section break types** , click the option that describes where you want the new section to begin.

|Insert section break.|
| :- |
|![todo:image_alt_text](http://i.imgur.com/RI1gOHk.png)|
The following types of section breaks can be inserted:

- **Next page** inserts a section break and starts the new section on the next page.
- **Continuous** inserts a section break and starts the new section on the same page.
- **Odd page** or **Even page** inserts a section break and starts the new section on the next odd-numbered or even-numbered page.

### **Deleting a Section Break in Microsoft Word**

When you delete a section break, you also delete the section formatting for the text above it. That text becomes part of the following section, and it assumes the formatting of that section.

1. Select the section break you want to delete. If you are in print layout view or outline view and do not see the section break, display hidden text by clicking **Show/Hide** on the **Standard** toolbar.
1. Press DELETE.

## **Sections in Aspose.Words**

Sections of the document are represented by the [Section](http://www.aspose.com/api/java/words/com.aspose.words/classes/Section) and [SectionCollection](http://www.aspose.com/api/java/words/com.aspose.words/classes/SectionCollection) classes. Section objects are immediate children of the Document node and can be accessed via the [Document.getSections](http://www.aspose.com/api/java/words/com.aspose.words/classes/document/methods/getSections\(\)/) property.

### **Obtaining a Section**

Each section is represented by a [Section](http://www.aspose.com/api/java/words/com.aspose.words/classes/Section) object that can be obtained from the [Document.getSections](http://www.aspose.com/api/java/words/com.aspose.words/classes/document/methods/getSections\(\)/) collection by the index. Default page margins, header/footer distance and column spacing depend on current culture to mimic MS Word behavior. For example, now all page margins are 1’’ for English (United States) and English (United Kingdom). Left, right, top margins are 2.5 cm; bottom margin is 2 cm for German. The new defaults are used for a new document and for a loaded document if an explicit value is not set for the mention parameters. The following code can be used to restore the previous behavior.

The code sample below shows how to access a section at the specified index. You can download the template file of this example from
[here](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/com/aspose/words/examples/programming_documents/sections/SectionsAccessByIndex/Document.doc).

{{< gist "aspose-words" "b37032675133885c4c91814fb3d51a25" "Examples-src-main-java-com-aspose-words-examples-programming_documents-sections-SectionsAccessByIndex-SectionsAccessByIndex.java" >}}

### **Adding a Section**

The Document object provides the section collection that can be accessed by using Document.getSections. This returns a SectionCollection object containing the document’s sections. You can then use the [SectionCollection.add](http://www.aspose.com/api/java/words/com.aspose.words/classes/document/methods/getSections\(\)/) method on this object to add a section to the end of the document. The code sample below shows how to add a section to the end of the document.

{{< gist "aspose-words" "b37032675133885c4c91814fb3d51a25" "Examples-src-main-java-com-aspose-words-examples-programming_documents-sections-AddSection-AddSection.java" >}}

### **Deleting a Section**

In the same way as discussed above, the document’s sections are retrieved by using Document.getSections. You can then use [SectionCollection.remove](http://www.aspose.com/api/java/words/com.aspose.words/classes/sectioncollection/methods/remove\(com.aspose.words.Node\)/) to remove a specified section or [SectionCollection.RemoveAt](http://www.aspose.com/api/java/words/com.aspose.words/classes/document/methods/getSections\(\)/) to remove a section at the specified index. The code sample below shows how to remove a section at the specified index.

{{< gist "aspose-words" "b37032675133885c4c91814fb3d51a25" "Examples-src-main-java-com-aspose-words-examples-programming_documents-sections-DeleteSection-DeleteSection.java" >}}

The code sample below shows how to remove all sections from a document.

{{< gist "aspose-words" "b37032675133885c4c91814fb3d51a25" "Examples-src-main-java-com-aspose-words-examples-programming_documents-sections-DeleteAllSections-1.java" >}}

{{% alert color="primary" %}} 

In addition, you can use SectionCollection.clear to remove all the sections from the document.

{{% /alert %}} 

### **Adding Section Content**

If you want to copy and insert just the main text of a section excluding the section separator and section properties,use[Section.appendContent](http://www.aspose.com/api/java/words/com.aspose.words/classes/section/methods/appendContent\(com.aspose.words.Section\)/) passing a Section object for the content being copied. No new section is created; headers and footers are not copied. The former method inserts a copy of the content at the beginning of the section, while the latter inserts a copy of the content at the end of the section.
The code sample below shows how to append content of an existing section. The number of sections in the document remains the same. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/com/aspose/words/examples/programming_documents/sections/SectionsAccessByIndex/Document.doc).

{{< gist "aspose-words" "b37032675133885c4c91814fb3d51a25" "Examples-src-main-java-com-aspose-words-examples-programming_documents-sections-AppendSectionContent-AppendSectionContent.java" >}}

### **Deleting Section Content**

To delete the main text of a section, use [Section.clearContent](http://www.aspose.com/api/java/words/com.aspose.words/classes/section/methods/clearContent\(\)/). Below example shows how to delete main content of a section. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/com/aspose/words/examples/programming_documents/sections/SectionsAccessByIndex/Document.doc).

{{< gist "aspose-words" "b37032675133885c4c91814fb3d51a25" "Examples-src-main-java-com-aspose-words-examples-programming_documents-sections-DeleteSectionContent-DeleteSectionContent.java" >}}

To delete the headers and footers in a section, call [Section.clearHeadersFooters](http://www.aspose.com/api/java/words/com.aspose.words/classes/section/methods/clearHeadersFooters\(\)/).

### **Cloning a Section**

Use the [Section.deepClone](http://www.aspose.com/api/java/words/com.aspose.words/classes/section/methods/deepClone\(\)/) method to create a duplicate of a particular section. Below example shows how to create a duplicate of a particular section. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/com/aspose/words/examples/programming_documents/sections/SectionsAccessByIndex/Document.doc).

{{< gist "aspose-words" "b37032675133885c4c91814fb3d51a25" "Examples-src-main-java-com-aspose-words-examples-programming_documents-sections-CloneSection-CloneSection.java" >}}

### **Copying Sections between Documents**

Fully or partially copying one document into another is a very popular task. Here is a "pattern" to implement this. Before any node from another document can be inserted, it must be imported using [Document.importNode](http://www.aspose.com/api/java/words/com.aspose.words/classes/document/methods/importNode\(com.aspose.words.Node,boolean\)/) method. The [Document.importNode](http://www.aspose.com/api/java/words/com.aspose.words/classes/document/methods/importNode\(com.aspose.words.Node,boolean\)/) method makes a copy of the original node and updates all internal document-specific attributes such as lists and styles to make them valid in the destination document. Below example shows how to copy sections between documents. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/com/aspose/words/examples/programming_documents/sections/SectionsAccessByIndex/Document.doc).

{{< gist "aspose-words" "b37032675133885c4c91814fb3d51a25" "Examples-src-main-java-com-aspose-words-examples-programming_documents-sections-CopySection-CopySection.java" >}}

Sometimes it is necessary to avoid section breaks in the destination document. In this case, you can use Section.appendContent instead of SectionCollection.add.
