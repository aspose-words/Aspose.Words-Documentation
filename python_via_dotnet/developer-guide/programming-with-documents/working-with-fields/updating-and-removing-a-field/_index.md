---
title: Updating and Removing a Field in Python
articleTitle: Updating and Removing a Field
linktitle: Updating and Removing a Field
description: "Aspose.Words for Python allows to update fields in a document in different ways and using different option. Learn more."
type: docs
weight: 30
url: /python-net/updating-and-removing-a-field/
aliases: [/python/updating-and-removing-a-field/]
---

## How to Update Fields

When a document is loaded, Aspose.Words mimics the behavior of Microsoft Word with the option to automatically update fields is switched off. The behavior can be summarized as follows:

- When you open/save a document the fields remain intact.
- You can explicitly update all fields in a document (e.g. rebuild TOC) when you need to.
- When you print/render to PDF or XPS the fields related to page-numbering in headers/footers are updated.
- When you execute mail merge all fields are updated automatically.

### Update Fields Programmatically

To explicitly update fields in the whole document, simply call **Document.update_fields**.To update fields contained in part of a document, obtain a **Range** object and call the **Range.update_fields** method. In Aspose.Words, you can obtain a **Range** for any node in the document tree, such as **Section**, **HeaderFooter**, **Paragraph** etc using the **Node.range** property.You can update the result of a single field by calling **Field.update**.

### Automatic Update of Page-Related Fields during Rendering

When you execute conversion of a document to a fixed-page format e.g. to PDF or XPS, then Aspose.Words will automatically update page layout-related fields PAGE, PAGEREF found in headers/footers of the document. This behavior mimics the behavior of Microsoft Word when printing a document.If you want to update all other fields in the document, then you need to call **Document.update_fields** before rendering the document. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx)

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-UpdateDocFields.py" >}}

### Automatic Field Update during Mail Merge

When you execute a mail merge, all fields in the document will be automatically updated. This is because mail merge is a case of a field update. The program encounters a mail merge field and needs to update its result, which involves grabbing the value from the data source and inserting it into the field. The logic is of course more complicated, for example, when the end of the document/mail merge region is reached but there is still further data to be merged, then the region needs to be duplicated and the new set of fields updated.

## Update Fields having Dirty Attribute

The w:dirty is a field-level attribute that will refresh only the field you specify when the document is opened. It tells MS Word to only refresh this field the next time the document is opened. You can use LoadOptions.UpdateDirtyFields property to specify whether to update the fields with the dirty attribute. When the value of **LoadOptions.update_dirty_fields** is set to *True*, all fields having *True* value for **Field.is_dirty** or **FieldChar.is_dirty** property are updated on document load. Following example shows how to update fields having dirty attribute. 

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-UpdateDirtyFields.py" >}}

## Update LastSavedTime Property Before Saving

You can use **SaveOptions.update_last_saved_time_property** property whether to update the corresponding built-in document property (**BuiltInDocumentProperties.last_saved_time**) on document save. Following example shows how to update this property. 

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_ooxml_save_options-UpdateLastSavedTimeProperty.py" >}}

## Differences in Field Update in Aspose.Words 9.6 and Above

Starting from Aspose.Words 9.6 the way that some fields are updated is slightly different, due to internal reworking of the field evaluation engine. These changes to the field engine allow fields to be more accurately updated and brings field updating in Aspose.Words closer to how field update in Microsoft Word behaves.

With the implementation of this new engine the general behavior of field update remains the same with the exceptions which mostly affect how the **Document.update_fields** and **Document.update_page_layout** methods behave. These important changes are detailed below:

### Calling update_fields Now Updates All Field Types

In previous versions calling **Document.update_fields** or **Range.update_fields** would update only regular fields such as IF or DOCPROPERTY and not page-layout related fields such as PAGE or NUMPAGES. Newer versions will now update both the regular and page-layout related fields.

When **Document.update_fields** or **Range.update_fields** is called all fields are updated over the entire document/range. This may involve building the document layout if a page-layout related field like the PAGE field is encountered during the update. Below example shows how to update all fields in a document. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-UpdateDocFields.py" >}}

{{% alert color="primary" %}} 

A similar process occurs when a single field is updated using the Field.Update method. If this field is a regular field then only this field is updated as normal. However if this field is related to the page layout then the document layout is rebuilt and it is updated along with all other page related fields found in headers or footers.

These changes in field evaluation may potentially cause results that differ from previous versions on certain documents when executing the same field update code.

{{% /alert %}} 

### Calling update_page_layout Now Only Updates Page-Layout Related Fields in Headers and Footers

In previous versions a call to **Document.update_page_layout was required in order to update fields in the document like PAGE and PAGEREF. In the current version this functionality is handled by Document.UpdateFields which updates all types of fields as discussed above.

**Document.update_page_layout** is still used to build or rebuild the document layout when a document is to be rendered. When this method is called or a document is rendered (i.e. saved to PDF, XPS, printed etc.) the document layout is built. In previous versions this process would update all page-layout related fields, however in the current version these fields are automatically updated only in the headers and footers of the document.

These changes to how fields are updated upon document layout are required and match how Microsoft Word updates fields. This now allows a document to be rendered without any fields in the main body being updated which is how fields are evaluated in Microsoft Word.

If the old functionality of updating page-related fields in the entire document when rendering is desired then an explicit call to **Document.update_fields** is required before saving the document.

### All Types of Fields Encountered during Mail Merge are Updated

Previously only non page-related fields encountered during mail merge would be updated. Now all fields inside a mail merge region (or in the whole body if not using mail merge regions) are updated, including page-related fields.

As with **Document.update_fields** this may invoke the document layout to be built if page-related fields are encountered. This behavior mimics how Microsoft Words handles field update during mail merge and ensures that after mail merge has been executed all fields are up to date with correct values.

### Rebuilding TOC Fields No Longer Requires update_page_layout to be Called

As explained earlier, all fields are now updated using **Document.update_fields**. This now means a more concise and clearer way to update the fields in a document. This also means in situations such as updating a TOC field you no longer require any call to **Document.update_page_layout**. All work is handled within the **Document.update_fields** call.

## Removing a Field

Sometimes it is necessary to remove a field from the document. This may occur when it is to be replaced with a different field type or when the field is no longer needed in the document. For example a TOC field when saving to HTML. A field inserted into the document using **DocumentBuilder.insert_field** returns a Field object which provides a convenience method to easily remove the field from the document. Below example removes a field from the document. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Various%20fields.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-RemoveField.py" >}}

## Replacing Fields with Static Text

This is often required when you wish to save your document as a static copy, for example for when sending as an attachment in an e-mail. The conversion of fields such as a DATE or TIME field to static text will enable them to display the same date as when you sent them. In some situations you may need to remove conditional IF fields from your document and replace them with the most recent text result instead. For example, converting the result of an IF field to static text so it will no longer dynamically change its value if the fields in the document are updated.

For example, the diagram below shows how an “IF” field is stored in a document. The text is encompassed by the special field nodes **FieldStart** and **FieldEnd**. The **FieldSeparator** node separates the text inside the field into the field code and field result. The field code is what defines the general behavior of the field while the field result stores the most recent result when this field is updated by either by Microsoft Word or Aspose.Words. The field result is what is stored in the field and displayed in the document when viewed. 

![update-remove-a-field-aspose-words](updating-and-removing-a-field-1.png)

The structure can also be seen below in hierarchical form using the [demo project *“DocumentExplorer”*](https://github.com/aspose-words/Aspose.Words-for-.NET)*.*

![update-remove-a-field-aspose-words-2](updating-and-removing-a-field-2.png)

Please note that this technique cannot be used properly on some fields in the header or footer. For example attempting to convert a PAGE field in a header or footer to static text will cause the same value to appear across all pages. This is because headers and footers are repeated across multiple pages and when they remain as fields they are handled especially so they display the correct result for each page. However upon conversion, the field in the header is transformed into a static run of text. This run of text will be evaluated as if it is the last page in the section which will cause any of PAGE field in the header to display the last page over all pages.

Below example shows how to convert all fields of a specified type in a document to static text. You can download template file of below examples from [here](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Linked%20fields.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ConvertFieldsInDocument.py" >}}

Below example shows how to convert all fields of a specified type in a body of a document to static text.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ConvertFieldsInBody.py" >}}

Below example shows how to convert all fields of a specified type in a paragraph to static text.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ConvertFieldsInParagraph.py" >}}

