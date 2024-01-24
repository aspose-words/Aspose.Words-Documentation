---
title: Update Fields in Java
second_title: Aspose.Words for Java
articleTitle: Update Fields
linktitle: Update Fields
description: "Learn how to update fields in Java. Update fields programmatically or use automatic field update using Java API"
type: docs
weight: 30
url: /java/update-field/
---

Typically, a field inserted into Microsoft Word already contains an up to date value. For example, if the field is a formula or a page number, it will contain the correct calculated value for the given version of the document. But if you have an application that generates or modifies a document with fields like merging two documents or populating it with data, then ideally all fields must be updated for the document to be useful.

## How to Update Fields

When a document is loaded, Aspose.Words mimics the behavior of Microsoft Word with the option to automatically update fields is switched off. The behavior can be summarized as follows:

- when you open/save a document the fields remain intact
- you can explicitly update all fields in a document, for example, rebuild TOC when you need to
- when you print/render to PDF or XPS the fields related to page-numbering in headers/footers are updated
- when you execute mail merge all fields are updated automatically

### Update Fields Programmatically

To explicitly update fields in the whole document, simply call the [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields) method. To update fields contained in part of a document, obtain a [Range](https://reference.aspose.com/words/java/com.aspose.words/range/) object and call the [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/range/#updateFields) method. In Aspose.Words, you can obtain a **Range** for any node in the document tree, such as [Section](https://reference.aspose.com/words/java/com.aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), etc. using the [GetRange](https://reference.aspose.com/words/java/com.aspose.words/node/#getRange) property. You can update the result of a single field by calling the [Update](https://reference.aspose.com/words/java/com.aspose.words/field/#update) method.

### Automatic Update of Page-Related Fields during Rendering

When you execute conversion of a document to a fixed-page format e.g. to PDF or XPS, then Aspose.Words will automatically update page layout-related fields PAGE, PAGEREF found in headers/footers of the document. This behavior mimics the behavior of Microsoft Word when printing a document.

If you want to update all other fields in the document, then you need to call [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields) before rendering the document.

The following example shows how to update all fields before rendering a document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UpdateFields-UpdateFields.java" >}}

### Automatic Field Update during Mail Merge

When you execute a mail merge, all fields in the document will be automatically updated. This is because the mail merge is a case of a field update. The program encounters a mail merge field and needs to update its result, which involves grabbing the value from the data source and inserting it into the field. The logic is, of course, more complicated, for example, when the end of the document/mail merge region is reached but there is still further data to be merged, then the region needs to be duplicated and the new set of fields updated.

## Update Fields having Dirty Attribute

The w:dirty is a field-level attribute that will refresh only the field you specify when the document is opened. It tells MS Word to only refresh this field the next time the document is opened. You can use LoadOptions.setUpdateDirtyFields() property to specify whether to update the fields with the dirty attribute. When the value of LoadOptions.setUpdateDirtyFields() is set to *true*, all fields having *true* value for `Field.IsDirty` or `FieldChar.IsDirty` property are updated on document load. 

The following code example shows how to update fields having the dirty attribute:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-LoadOptionsUpdateDirtyFields-LoadOptionsUpdateDirtyFields.java" >}}

## Update LastSavedTime Property Before Saving

You can use the [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateLastSavedTimeProperty) property whether to update the corresponding built-in document property [LastSavedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getLastSavedTime) when saving the document.

The following code example shows how to update this property:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UpdateLastSavedTimeProperty-UpdateLastSavedTimeProperty.java" >}}
