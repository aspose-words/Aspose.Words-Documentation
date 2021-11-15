---
title: Update Field
type: docs
weight: 20
url: /java/update-field/
---

## How to Update Fields

When a document is loaded, Aspose.Words mimics the behavior of Microsoft Word with the option to automatically update fields is switched off. The behavior can be summarized as follows:

- When you open/save a document the fields remain intact.
- You can explicitly update all fields in a document (e.g. rebuild TOC) when you need to.
- When you print/render to PDF or XPS the fields related to page-numbering in headers/footers are updated.
- When you execute mail merge all fields are updated automatically.

### Update Fields Programmatically

To explicitly update fields in the whole document, simply call [Document.updateFields()](https://apireference.aspose.com/words/java/com.aspose.words/Document). To update fields contained in part of a document, obtain a [Range](https://apireference.aspose.com/words/java/com.aspose.words/Range) object and call the [Range.updateFields()](https://apireference.aspose.com/words/java/com.aspose.words/range#updateFields()) method. In Aspose.Words, you can obtain a **Range** for any node in the document tree, such as [Section](https://apireference.aspose.com/words/java/com.aspose.words/Section), [HeaderFooter](https://apireference.aspose.com/words/java/com.aspose.words/HeaderFooter), [Paragraph](https://apireference.aspose.com/words/java/com.aspose.words/Paragraph) etc using the [Node.getRange()](https://apireference.aspose.com/words/java/com.aspose.words/Node) property. You can update the result of a single field by calling [Field.update()](https://apireference.aspose.com/words/java/com.aspose.words/Field).

### Automatic Update of Page-Related Fields during Rendering

When you execute conversion of a document to a fixed-page format e.g. to PDF or XPS, then Aspose.Words will automatically update page layout-related fields PAGE, PAGEREF found in headers/footers of the document. This behavior mimics the behavior of Microsoft Word when printing a document.

If you want to update all other fields in the document, then you need to call [Document.updateFields()](https://apireference.aspose.com/words/java/com.aspose.words/Document) before rendering the document.
The following example demonstrates how to update all fields before rendering a document.

**Java**

{{< highlight csharp >}}
Document doc = new Document(getMyDir() + "Rendering.doc");

// This updates all fields in the document.
doc.updateFields();
doc.save(getMyDir() + "Rendering.UpdateFields Out.pdf");
{{< /highlight >}}

### Automatic Field Update during Mail Merge

When you execute a mail merge, all fields in the document will be automatically updated. This is because the mail merge is a case of a field update. The program encounters a mail merge field and needs to update its result, which involves grabbing the value from the data source and inserting it into the field. The logic is, of course, more complicated, for example, when the end of the document/mail merge region is reached but there is still further data to be merged, then the region needs to be duplicated and the new set of fields updated.

## Differences in Field Update in Aspose.Words 10.0 and Above

Starting from Aspose.Words 10.0 the way that some fields are updated is slightly different, due to the internal reworking of the field evaluation engine. These changes to the field engine allow fields to be more accurately updated and brings field updating in Aspose.Words closer to how field update in Microsoft Word behaves.

With the implementation of this new engine, the general behavior of field update remains the same with the exceptions which mostly affect how the [Document.updateFields()](https://apireference.aspose.com/words/java/com.aspose.words/Document) and [Document.updatePageLayout()](https://apireference.aspose.com/words/java/com.aspose.words/Document) methods behave. These important changes are detailed below:

### Calling UpdateFields Now Updates All Field Types

In previous versions calling [Document.updateFields()](https://apireference.aspose.com/words/java/com.aspose.words/Document) or [Range.updateFields()](https://apireference.aspose.com/words/java/com.aspose.words/Range) would update only regular fields such as IF or DOCPROPERTY and not page-layout related fields such as PAGE or NUMPAGES. Newer versions will now update both the regular and page-layout related fields.

When [Document.updateFields()](https://apireference.aspose.com/words/java/com.aspose.words/Document) or [Range.updateFields()](https://apireference.aspose.com/words/java/com.aspose.words/Range) is called all fields are updated over the entire document/range. This may involve building the document layout if a page-layout related field like the PAGE field is encountered during the update. 

The following code example demonstrates how to update all fields in a document. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/com/aspose/words/examples/programming_documents/fields/UpdateDocFields/Rendering.doc).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UpdateDocFields-UpdateDocFields.java" >}}

A similar process occurs when a single field is updated using the [Field.update()](https://apireference.aspose.com/words/java/com.aspose.words/Field) method. If this field is a regular field then only this field is updated as normal. However, if this field is related to the page layout then the document layout is rebuilt and it is updated along with all other page related fields found in headers or footers.
These changes in field evaluation may potentially cause results that differ from previous versions on certain documents when executing the same field update code.

### Calling UpdatePageLayout Now Only Updates Page-Layout Related Fields in Headers and Footers

In previous versions, a call to [Document.updatePageLayout](https://apireference.aspose.com/words/java/com.aspose.words/document#updatePageLayout()) was required in order to update fields in the document like PAGE and PAGEREF. In the current version, this functionality is handled by [Document.updateFields](https://apireference.aspose.com/words/java/com.aspose.words/document#updateFields()) which updates all types of fields as discussed above.

[Document.updatePageLayout()](https://apireference.aspose.com/words/java/com.aspose.words/Document) is still used to build or rebuild the document layout when a document is to be rendered. When this method is called or a document is rendered (i.e. saved to PDF, XPS, printed etc.) the document layout is built. In previous versions, this process would update all page-layout related fields, however, in the current version these fields are automatically updated only in the headers and footers of the document.

These changes to how fields are updated upon document layout are required and match how Microsoft Word updates fields. This now enables a document to be rendered without any fields in the main body being updated which is how fields are evaluated in Microsoft Word. If the old functionality of updating page-related fields in the entire document when rendering is desired then an explicit call to [Document.updateFields()](https://apireference.aspose.com/words/java/com.aspose.words/Document) is required before saving the document.

### All Types of Fields Encountered during Mail Merge are Updated

Previously only non page-related fields encountered during mail merge would be updated. Now all fields inside a mail merge region (or in the whole body if not using mail merge regions) are updated, including page-related fields.

As with [Document.updateFields()](https://apireference.aspose.com/words/java/com.aspose.words/Document) this may invoke the document layout to be built if page-related fields are encountered. This behavior mimics how Microsoft Words handles field update during mail merge and ensures that after mail merge has been executed all fields are up to date with correct values.

### Rebuilding TOC Fields No Longer Requires UpdatePageLayout to be Called

As explained earlier, all fields are now updated using Document.UpdateFields. This now means a more concise and clearer way to update the fields in a document. This also means in situations such as updating a TOC field you no longer require any call to Document.updatePageLayout. All work is handled within the Document.updateFields call.

The following code examples shows how to completely rebuild TOC fields in the document by invoking field update.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UpdateDocFields-UpdateDocFields.java" >}}

## How to Rename Merge Fields

An example that demonstrates how to create your own **MergeField** class, that represents a single merge field in a Microsoft Word document and allows you to get or set its name. 

The following code example shows how to rename merge fields in a Word document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-RenameMergeFields-RenameMergeFields.java" >}}

## Field Display Result

Aspose.Words provides a property to obtain the field's result for fields that do not have a field separator node. We call this "fake result" or display result; MS Word displays it in the document by calculating the field's value on the fly, but there is no such value in the document model.

The following code example demonstrates the usage of Filed.DisplayResult property.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldDisplayResult-FieldDisplayResult.java" >}}
