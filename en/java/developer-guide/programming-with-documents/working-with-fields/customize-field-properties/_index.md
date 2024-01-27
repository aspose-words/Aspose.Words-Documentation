---
title: Customize Field Properties
second_title: Aspose.Words for Java
articleTitle: Customize Field Properties
linktitle: Customize Field Properties
description: "Learn how to customize field properties in Java. Rename merge fields or obtain results for fields without separator node in Java."
type: docs
weight: 27
url: /java/customize-field-properties/
---

Aspose.Words provides the ability to programmatically interact with various field properties. In this article, we will look at a couple of examples so that you understand the basic principle of working with field properties. You can see the full list of properties for each field type in the corresponding class.

## Field Property Update

Sometimes users need to change the value of a field property. For example, update the [AuthorName](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/#getAuthorName) property of the `AUTHOR` field or change the [FieldName](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/#getFieldName) property of the `MERGEFIELD` field.

The following code example shows how to rename merge fields in a Word document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-RenameMergeFields-RenameMergeFields.java" >}}

## Field Display Result

Aspose.Words provides a property to obtain the field's result for fields that do not have a field separator node. We call this "fake result" or display result; MS Word displays it in the document by calculating the field's value on the fly, but there is no such value in the document model.

The following code example shows the usage of [DisplayResult](https://reference.aspose.com/words/java/com.aspose.words/field/#getDisplayResult) property:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldDisplayResult-FieldDisplayResult.java" >}}
