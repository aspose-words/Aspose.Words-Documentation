---
title: XXX
second_title: XXX
articleTitle: XXX
linktitle: XXX
description: "XXX"
type: docs
weight: 130
url: /java/working-with-fields/
---

## Finding the Field Code and Field Result

A field which is inserted using DocumentBuilder.insertField returns a Field object. This is a façade class which provides useful methods to quickly find such properties of a field. Note if you are only looking for the names of merge fields in the document then you can instead use the built-in method [MailMerge.getFieldNames](https://reference.aspose.com/words/java/com.aspose.words/mailmerge#getFieldNames()). Below example shows how to get names of all merge fields in a document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertNestedFields-InsertNestedFields.java" >}}

## Update Fields having Dirty Attribute

The w:dirty is a field-level attribute that will refresh only the field you specify when the document is opened. It tells MS Word to only refresh this field the next time the document is opened. You can use LoadOptions.setUpdateDirtyFields() property to specify whether to update the fields with the dirty attribute. When the value of LoadOptions.setUpdateDirtyFields() is set to *true*, all fields having *true* value for Field.IsDirty or FieldChar.IsDirty property are updated on document load. 

The following example shows how to update fields having the dirty attribute.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-LoadOptionsUpdateDirtyFields-LoadOptionsUpdateDirtyFields.java" >}}